library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Processor is
    port (
        keyData        : in  std_logic_vector(15 downto 0);
        clock          : in  std_logic;
        fromData       : in  std_logic_vector(15 downto 0);
        instr          : in  std_logic_vector(15 downto 0);
        clock2         : in  std_logic;
          
        printEnable    : out std_logic;
        keyEnable      : out std_logic;
        DataWriteFlag  : out std_logic;
        dataAD         : out std_logic_vector(15 downto 0);
        toData         : out std_logic_vector(15 downto 0);
        printCode      : out std_logic_vector(15 downto 0);
        printData      : out std_logic_vector(15 downto 0);
        regOUT         : out std_logic_vector(143 downto 0);
        instructionAD  : out std_logic_vector(15 downto 0)
    );
end Processor;

architecture structural of Processor is

    --------------------------------------------------------------------
    -- PC / IF stage signals
    --------------------------------------------------------------------
    signal pc_current        : std_logic_vector(15 downto 0);
    signal pc_next           : std_logic_vector(15 downto 0);

    signal ifid_pc_out       : std_logic_vector(15 downto 0);
    signal ifid_instr_out    : std_logic_vector(15 downto 0);

    signal jumpAD            : std_logic_vector(15 downto 0);
    signal branchAD          : std_logic_vector(15 downto 0);

    signal JROpcode_sig      : std_logic_vector(1 downto 0);

    signal IF_ID_Flush_sig   : std_logic;
    signal IF_ID_Enable_sig  : std_logic;

    signal endOfRunning_sig  : std_logic;
    signal pc_enable_sig     : std_logic;
     
    --------------------------------------------------------------------
    -- Control / Decode signals
    --------------------------------------------------------------------
    signal isBranch_sig      : std_logic;
    signal isJR_sig          : std_logic;
    signal isJump_sig        : std_logic;
    signal isLW_sig          : std_logic;
    signal isMFPC_sig        : std_logic;
    signal isPrintDigit_sig  : std_logic;
    signal isR_sig           : std_logic;
    signal isReadDigit_sig   : std_logic;
    signal isSW_sig          : std_logic;

    signal wasJumpOut_sig    : std_logic;
    signal wasJump_sig       : std_logic;
    signal mustBranch_sig    : std_logic;

    signal read1AD_sig       : std_logic_vector(2 downto 0);
    signal read2AD_sig       : std_logic_vector(2 downto 0);
    signal writeAD_id_mux    : std_logic_vector(2 downto 0);
    signal writeAD_sig       : std_logic_vector(2 downto 0);
    signal writeData_sig     : std_logic_vector(15 downto 0);

    signal regRead1_sig      : std_logic_vector(15 downto 0);
    signal regRead2_sig      : std_logic_vector(15 downto 0);
    signal regOUT128_sig     : std_logic_vector(127 downto 0);

    signal immediate16_sig   : std_logic_vector(15 downto 0);

    --------------------------------------------------------------------
    -- ID/EX Pipeline Register Signals
    --------------------------------------------------------------------
    signal idex_pc_out           : std_logic_vector(15 downto 0);
    signal idex_reg1_out         : std_logic_vector(15 downto 0);
    signal idex_reg2_out         : std_logic_vector(15 downto 0);
    signal idex_imm_out          : std_logic_vector(15 downto 0);
    signal idex_instr_out        : std_logic_vector(15 downto 0);
    
    signal idex_isR_out          : std_logic;
    signal idex_isLW_out         : std_logic;
    signal idex_isSW_out         : std_logic;
    signal idex_isBranch_out     : std_logic;
    signal idex_isMFPC_out       : std_logic;
    signal idex_isReadDig_out    : std_logic;
    signal idex_isWriteDig_out   : std_logic;
    signal idex_writeAD_out      : std_logic_vector(2 downto 0);

    --------------------------------------------------------------------
    -- EX Stage / ALU / Forwarding Signals
    --------------------------------------------------------------------
    signal alu_inA               : std_logic_vector(15 downto 0);
    signal alu_inB               : std_logic_vector(15 downto 0);
    signal alu_out               : std_logic_vector(15 downto 0);
    
    signal forwardA_sig          : std_logic_vector(1 downto 0);
    signal forwardB_sig          : std_logic_vector(1 downto 0);
    
    signal rs_ex_sig             : std_logic_vector(2 downto 0);
    signal rt_ex_sig             : std_logic_vector(2 downto 0);

    --------------------------------------------------------------------
    -- EX/MEM Pipeline Register Signals
    --------------------------------------------------------------------
    signal exmem_alu_out         : std_logic_vector(15 downto 0);
    signal exmem_reg2_out        : std_logic_vector(15 downto 0);
    signal exmem_writeAD_out     : std_logic_vector(2 downto 0);
    signal exmem_isLW_out        : std_logic;
    signal exmem_isSW_out        : std_logic;
    signal exmem_isReadDig_out   : std_logic;
    signal exmem_isWriteDig_out  : std_logic;

    --------------------------------------------------------------------
    -- MEM/WB Pipeline Register Signals
    --------------------------------------------------------------------
    signal mem_stage_mux_out     : std_logic_vector(15 downto 0);

begin

    --------------------------------------------------------------------
    -- Combinational Assignments (IF & ID Stages)
    --------------------------------------------------------------------

    -- Jump Address: opcode(15..12) + jumpAddr(11..0)
    jumpAD <= "0000" & ifid_instr_out(11 downto 0);

    -- Ενημέρωση της μονάδας Hazard αν έχουμε Jump εντολή στο ID stage
    wasJump_sig <= isJump_sig or isJR_sig;

    -- Παγίδευση (Freeze) του PC και του IF/ID όταν το Trap Unit ανιχνεύσει τερματισμό
    pc_enable_sig    <= not endOfRunning_sig;
    IF_ID_Enable_sig <= not endOfRunning_sig;

    -- Καθορισμός διευθύνσεων ανάγνωσης βάσει του Σχήματος:
    read1AD_sig <= ifid_instr_out(11 downto 9); -- RS (bits 11..9)
    read2AD_sig <= ifid_instr_out(8 downto 6);  -- RT (bits 8..6)

    -- MUX για την επιλογή του Write Register στο ID stage:
    writeAD_id_mux <= ifid_instr_out(5 downto 3) when isR_sig = '1' else 
                      ifid_instr_out(2 downto 0);

    --------------------------------------------------------------------
    -- Component Instantiations
    --------------------------------------------------------------------

    -- Trap Unit
    Trap: entity work.trapUnit
        port map (
            OpCode       => instr(15 downto 12),
            endOfRunning => endOfRunning_sig
        );

    -- JR Selector
    JR: entity work.JRSelector
        generic map (
            n => 16
        )
        port map (
            JROpcode => JROpcode_sig,
            PCP2AD   => ifid_pc_out,
            JumpAD   => jumpAD,
            BranchAD => branchAD,
            PCout    => pc_next
        );

    -- Program Counter Register
    PC_Reg: entity work.MyRegister16bit
        generic map (
            N => 16
        )
        port map (
            Input   => pc_next,
            Clock   => clock,
            Enable  => pc_enable_sig,
            Reset_n => '1',
            Output  => pc_current
        );

    instructionAD <= pc_current;

    -- IF/ID Pipeline Register
    IFIDREG: entity work.register_IF_ID
        generic map (
            n => 16
        )
        port map (
            inPC           => pc_current,
            inInstruction  => instr,
            clock          => clock,
            IF_Flush       => IF_ID_Flush_sig,
            IF_ID_ENABLE   => IF_ID_Enable_sig,
            outPC          => ifid_pc_out,
            outInstruction => ifid_instr_out
        );
          
    -- Control Unit / Register Control
    Controller: entity work.MyRegisterControl
        port map (
            OpCode      => ifid_instr_out(15 downto 12),
            Funct       => ifid_instr_out(2 downto 0),
            IF_ID_Flush => IF_ID_Flush_sig,

            isBranch    => isBranch_sig,
            isJReg      => isJR_sig,
            isJType     => isJump_sig,
            isLdWord    => isLW_sig,
            isMFPC      => isMFPC_sig,
            isRType     => isR_sig,
            isReadDig   => isReadDigit_sig,
            isStWord    => isSW_sig,
            isWriteDig  => isPrintDigit_sig
        );

    -- Hazard Detection Unit
    Hazard: entity work.hazardUnit
        port map (
            isJR       => isJR_sig,
            isJump     => isJump_sig,
            wasJump    => wasJump_sig,
            mustBranch => mustBranch_sig,

            flush      => IF_ID_Flush_sig,
            wasJumpOut => wasJumpOut_sig,
            JRopcode   => JROpcode_sig
        );
          
    -- Register File
    RegisterFile: entity work.MyRegisterFile
        port map (
            Clock    => clock2,
            Read1AD  => read1AD_sig,
            Read2AD  => read2AD_sig,
            Write1AD => writeAD_sig,
            Write1   => writeData_sig,
            Read1    => regRead1_sig,
            Read2    => regRead2_sig,
            OUTall   => regOUT128_sig
        );
          
    -- Sign Extension Unit (6-bit to 16-bit)
    SignExtend: entity work.MyImmExtension
        port map (
            I => ifid_instr_out(8 downto 3), 
            O => immediate16_sig
        );

    --------------------------------------------------------------------
    -- ID/EX Pipeline Register
    --------------------------------------------------------------------
    IDEXREG: entity work.register_ID_EX
        generic map (
            n           => 16,
            addressSize => 3
        )
        port map (
            clock              => clock,
            isEOR              => endOfRunning_sig,   
            wasJumpOut         => wasJumpOut_sig,     
            isJump             => isJump_sig,
            isJR               => isJR_sig,
            isBranch           => isBranch_sig,
            isR                => isR_sig,
            isMFPC             => isMFPC_sig,
            isLW               => isLW_sig,
            isSW               => isSW_sig,
            isReadDigit        => isReadDigit_sig,
            isPrintDigit       => isPrintDigit_sig,

            ALUFunc            => "0" & ifid_instr_out(2 downto 0),

            R1Reg              => regRead1_sig,
            R2Reg              => regRead2_sig,
            immediate16        => immediate16_sig,

            R1AD               => read1AD_sig,        
            R2AD               => read2AD_sig,        

            jumpShortAddr      => ifid_instr_out(11 downto 0),

            isEOR_IDEX         => open, 
            wasJumpOut_IDEX    => open, 
            isJump_IDEX        => open,
            isJR_IDEX          => open,
            isBranch_IDEX      => idex_isBranch_out,
            isR_IDEX           => idex_isR_out,
            isMFPC_IDEX        => idex_isMFPC_out,
            isLW_IDEX          => idex_isLW_out,
            isSW_IDEX          => idex_isSW_out,
            isReadDigit_IDEX   => idex_isReadDig_out,
            isPrintDigit_IDEX  => idex_isWriteDig_out,

            ALUFunc_IDEX       => open, 

            R1Reg_IDEX         => idex_reg1_out,
            R2Reg_IDEX         => idex_reg2_out,
            immediate16_IDEX   => idex_imm_out,

            R1AD_IDEX          => rs_ex_sig,          -- Γράφει αυτόματα στο σήμα rs_ex_sig
            R2AD_IDEX          => rt_ex_sig,          -- Γράφει αυτόματα στο σήμα rt_ex_sig

            jumpShortAddr_IDEX => open
        );

    -- ΠΡΟΣΟΧΗ: Αφαιρέθηκαν οι χειροκίνητες αναθέσεις των rs_ex_sig/rt_ex_sig από εδώ καθώς προκαλούσαν Multiple Drivers!

    --------------------------------------------------------------------
    -- Forwarding Unit
    --------------------------------------------------------------------
    Forwarding: entity work.forwarder
        generic map (
            addr_size => 3
        )
        port map (
            R1AD          => rs_ex_sig,          
            R2AD          => rt_ex_sig,          
            RegAD_EXMEM   => exmem_writeAD_out,  
            RegAD_MEMWB   => writeAD_sig,        -- Η τρέχουσα διεύθυνση εγγραφής στο WB στάδιο
            ForwardA      => forwardA_sig,       
            ForwardB      => forwardB_sig        
        );

    -- ALU Input A MUX
    alu_inA <= idex_reg1_out when forwardA_sig = "00" else
               exmem_alu_out when forwardA_sig = "10" else
               writeData_sig;

    -- ALU Input B MUX
    alu_inB <= idex_reg2_out when (forwardB_sig = "00" and idex_isR_out = '1') else
               exmem_alu_out when (forwardB_sig = "10" and idex_isR_out = '1') else
               writeData_sig when (forwardB_sig = "01" and idex_isR_out = '1') else
               idex_imm_out;

    --------------------------------------------------------------------
    -- Execution (EX) Stage Components
    --------------------------------------------------------------------
    
    -- Υπολογισμός διεύθυνσης Branch στο EX Stage (PC + SignExtendedOffset)
    branchAD <= std_logic_vector(unsigned(idex_pc_out) + unsigned(idex_imm_out));

    -- Arithmetic Logic Unit (ALU)
    ALU_Comp: entity work.MyALU16bit
        port map (
            S        => idex_instr_out(2 downto 0), 
            A        => alu_inA,                    
            B        => alu_inB,                    
            Q        => alu_out,                    
            Overflow => open                        
        );

    -- Έλεγχος συνθήκης Branch
    mustBranch_sig <= idex_isBranch_out when (alu_out = x"0001") else '0';

    --------------------------------------------------------------------
    -- EX/MEM Pipeline Register
    --------------------------------------------------------------------
    EXMEMREG: entity work.register_EX_MEM
        generic map (
            n           => 16,
            addressSize => 3
        )
        port map (
            clock             => clock,
            isLW              => idex_isLW_out,
            WriteEnable       => idex_isSW_out,       
            ReadDigit         => idex_isReadDig_out,  
            PrintDigit        => idex_isWriteDig_out, 

            R2Reg             => idex_reg2_out,       
            Result            => alu_out,             

            RegAD             => idex_writeAD_out,    

            isLW_EXMEM        => exmem_isLW_out,
            WriteEnable_EXMEM => exmem_isSW_out,
            ReadDigit_EXMEM   => exmem_isReadDig_out,
            PrintDigit_EXMEM  => exmem_isWriteDig_out,

            R2Reg_EXMEM       => exmem_reg2_out,
            Result_EXMEM      => exmem_alu_out,

            RegAD_EXMEM       => exmem_writeAD_out
        );

    --------------------------------------------------------------------
    -- MEM Stage MUX
    --------------------------------------------------------------------
    mem_stage_mux_out <= fromData when (exmem_isLW_out = '1' or exmem_isReadDig_out = '1') else 
                         exmem_alu_out;

    --------------------------------------------------------------------
    -- MEM/WB Pipeline Register
    --------------------------------------------------------------------
    MEMWBREG: entity work.register_MEM_WB
        generic map (
            n           => 16,
            addressSize => 3
        )
        port map (
            clock     => clock,
            Result    => mem_stage_mux_out,   
            RegAD     => exmem_writeAD_out,   

            writeData => writeData_sig,       -- Συνδέεται απευθείας στα σήματα του Register File
            writeAD   => writeAD_sig          -- Συνδέεται απευθείας στα σήματα του Register File
        );

    --------------------------------------------------------------------
    -- Processor External Outputs
    --------------------------------------------------------------------
    
    -- Έλεγχος διεπαφής εξωτερικής μνήμης δεδομένων RAM (από EX/MEM Stage)
    DataWriteFlag <= exmem_isSW_out;
    dataAD        <= exmem_alu_out;   
    toData        <= exmem_reg2_out;  

    -- Σήματα I/O (Read / Print Ψηφίων)
    keyEnable     <= exmem_isReadDig_out;
    printEnable   <= exmem_isWriteDig_out;
    
    printCode     <= (others => '0'); -- Επειδή ο EX/MEM δεν κρατάει πλέον την instruction, μπορείς να το γειώσεις ή να το βγάλεις open
    printData     <= exmem_reg2_out;

    -- Κατασκευή του τελικού διανύσματος κατάστασης καταχωρητών (16 bits μηδενικά + 128 bits δεδομένων)
    regOUT <= "0000000000000000" & regOUT128_sig;

end structural;
