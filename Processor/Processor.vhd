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

		  Result         : out std_logic_vector(15 downto 0);
        regOUT         : out std_logic_vector(143 downto 0);
        instructionAD  : out std_logic_vector(15 downto 0)
    );
end Processor;

architecture structural of Processor is

    signal useImmediate_sig : std_logic;
    signal clock_n          : std_logic;
    signal writeReg_dest_sig : std_logic_vector(2 downto 0);

    -- PC / IF stage signals

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
	 
	 
    -- Control / Decode signals

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

    signal regRead1_sig      : std_logic_vector(15 downto 0);
    signal regRead2_sig      : std_logic_vector(15 downto 0);
    signal regOUT128_sig     : std_logic_vector(127 downto 0);

    signal immediate16_sig   : std_logic_vector(15 downto 0);

	 
    -- ID/EX pipeline signals

    signal isEOR_sig             : std_logic;

    signal ALUFunc_sig           : std_logic_vector(3 downto 0);

    signal isEOR_IDEX_sig        : std_logic;
    signal wasJumpOut_IDEX_sig   : std_logic;
    signal isJump_IDEX_sig       : std_logic;
    signal isJR_IDEX_sig         : std_logic;
    signal isBranch_IDEX_sig     : std_logic;
    signal isR_IDEX_sig          : std_logic;
    signal isMFPC_IDEX_sig       : std_logic;
    signal isLW_IDEX_sig         : std_logic;
    signal isSW_IDEX_sig         : std_logic;
    signal isReadDigit_IDEX_sig  : std_logic;
    signal isPrintDigit_IDEX_sig : std_logic;

    signal ALUFunc_IDEX_sig      : std_logic_vector(3 downto 0);

    signal R1Reg_IDEX_sig        : std_logic_vector(15 downto 0);
    signal R2Reg_IDEX_sig        : std_logic_vector(15 downto 0);
    signal immediate16_IDEX_sig  : std_logic_vector(15 downto 0);

    signal R1AD_IDEX_sig         : std_logic_vector(2 downto 0);
    signal R2AD_IDEX_sig         : std_logic_vector(2 downto 0);

    signal jumpShortAddr_IDEX_sig : std_logic_vector(11 downto 0);
	 

	
    -- Forwarding / ALU path signals

    signal ForwardA_sig          : std_logic_vector(1 downto 0);
    signal ForwardB_sig          : std_logic_vector(1 downto 0);
	 
	 --Χρηση μονο μεσα στο processor για να μην εχουμε forwarding σε/απο register 000.
    signal ForwardA_toSelector_sig : std_logic_vector(1 downto 0);
    signal ForwardB_toSelector_sig : std_logic_vector(1 downto 0);


    signal selector1_out_sig     : std_logic_vector(15 downto 0);
    signal selector2_out_sig     : std_logic_vector(15 downto 0);

    signal ALUInput1_sig         : std_logic_vector(15 downto 0);
    signal ALUInput2_sig         : std_logic_vector(15 downto 0);
	 signal isMFPC_toMux_sig      : std_logic;

    signal ALUResult_sig         : std_logic_vector(15 downto 0);
    signal ALUOverflow_sig       : std_logic;

    -- EX/MEM pipeline signals

    signal WriteEnable_IDEX_sig        : std_logic;

    signal isLW_EXMEM_sig              : std_logic;
    signal WriteEnable_EXMEM_sig       : std_logic;
    signal ReadDigit_EXMEM_sig         : std_logic;
    signal PrintDigit_EXMEM_sig        : std_logic;

    signal R2Reg_EXMEM_sig             : std_logic_vector(15 downto 0);
    signal Result_EXMEM_sig            : std_logic_vector(15 downto 0);
    signal RegAD_EXMEM_sig             : std_logic_vector(2 downto 0);
	 signal isSW_EXMEM_sig : std_logic;
	 

    -- MEM/WB signals

    signal MEMWB_inputData_sig   : std_logic_vector(15 downto 0);
    signal writeData_MEMWB_sig   : std_logic_vector(15 downto 0);
    signal writeAD_MEMWB_sig     : std_logic_vector(2 downto 0);

begin


    --Basic connections

	 
	 useImmediate_sig <= isLW_IDEX_sig or isSW_IDEX_sig or isBranch_IDEX_sig;


    clock_n <= not clock;

    -- Διεύθυνση register προορισμού για write-back:
    writeReg_dest_sig <= jumpShortAddr_IDEX_sig(2 downto 0) when isLW_IDEX_sig = '1'
                         else jumpShortAddr_IDEX_sig(5 downto 3);

    -- Jump address from J-type instruction:
    -- instr format: opcode(15..12) + jumpAddr(11..0)
    jumpAD <= "0000" & ifid_instr_out(11 downto 0);

    -- Αργότερα θα το συνδέσουμε με ALU / branch calculation.
    branchAD <= (others => '0');

    -- Το Trap Unit παγώνει το PC όταν βρει end of running.
    pc_enable_sig <= not endOfRunning_sig;

    -- Το IF_ID register επίσης σταματάει όταν έχουμε end of running.
    IF_ID_Enable_sig <= not endOfRunning_sig;

	 
    mustBranch_sig <= '0';
    wasJump_sig    <= '0';


    read1AD_sig <= ifid_instr_out(11 downto 9);  -- RS (source 1)
    read2AD_sig <= ifid_instr_out(8 downto 6);   -- RT (source 2)

	 -- End Of Running από Trap Unit
    isEOR_sig <= endOfRunning_sig;


    -- MEM/WB input data selection
    MEMWB_inputData_sig <= keyData when ReadDigit_EXMEM_sig = '1' else
                           fromData when isLW_EXMEM_sig = '1' else
                           Result_EXMEM_sig;

    -- Write Enable logic
    WriteEnable_IDEX_sig <= isR_IDEX_sig or isLW_IDEX_sig or isMFPC_IDEX_sig or isReadDigit_IDEX_sig;
	 
	 


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

    --------------------------------------------------------------------
    -- Program Counter
    -- Στο RTL του καθηγητή φαίνεται ως reg16b:PC,
    -- άρα χρησιμοποιούμε το MyRegister16bit ως PC.
    --------------------------------------------------------------------

    PC: entity work.MyRegister16bit
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


    -- IF/ID Register

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
		  
		  
    -- Register Control / Controller

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
		  
	 
    -- Hazard Unit

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
            Clock    => clock_n,
            Read1AD  => read1AD_sig,
            Read2AD  => read2AD_sig,
            Write1AD => writeAD_MEMWB_sig,
            Write1   => writeData_MEMWB_sig,
            Read1    => regRead1_sig,
            Read2    => regRead2_sig,
            OUTall   => regOUT128_sig
        );
		  
	 
    -- Immediate Extension

    SignExtend: entity work.MyImmExtension
        port map (
            I => ifid_instr_out(5 downto 0),
            O => immediate16_sig
        );
		  
	 
    -- ALU Control

    ALUController: entity work.MyAluControl
        port map (
            opcode  => ifid_instr_out(15 downto 12),
            func    => ifid_instr_out(2 downto 0),
            alu_sel => ALUFunc_sig
        );
		 
	 
    -- ID/EX Register

    IDEXREG: entity work.register_ID_EX
        generic map (
            n => 16,
            addressSize => 3
        )
        port map (
            clock        => clock,

            isEOR        => isEOR_sig,
            wasJumpOut   => wasJumpOut_sig,
            isJump       => isJump_sig,
            isJR         => isJR_sig,
            isBranch     => isBranch_sig,
            isR          => isR_sig,
            isMFPC       => isMFPC_sig,
            isLW         => isLW_sig,
            isSW         => isSW_sig,
            isReadDigit  => isReadDigit_sig,
            isPrintDigit => isPrintDigit_sig,

            ALUFunc      => ALUFunc_sig,

            R1Reg        => regRead1_sig,
            R2Reg        => regRead2_sig,
            immediate16  => immediate16_sig,

            R2AD         => read2AD_sig,
            R1AD         => read1AD_sig,

            jumpShortAddr => ifid_instr_out(11 downto 0),

            isEOR_IDEX        => isEOR_IDEX_sig,
            wasJumpOut_IDEX   => wasJumpOut_IDEX_sig,
            isJump_IDEX       => isJump_IDEX_sig,
            isJR_IDEX         => isJR_IDEX_sig,
            isBranch_IDEX     => isBranch_IDEX_sig,
            isR_IDEX          => isR_IDEX_sig,
            isMFPC_IDEX       => isMFPC_IDEX_sig,
            isLW_IDEX         => isLW_IDEX_sig,
            isSW_IDEX         => isSW_IDEX_sig,
            isReadDigit_IDEX  => isReadDigit_IDEX_sig,
            isPrintDigit_IDEX => isPrintDigit_IDEX_sig,

            ALUFunc_IDEX      => ALUFunc_IDEX_sig,

            R1Reg_IDEX        => R1Reg_IDEX_sig,
            R2Reg_IDEX        => R2Reg_IDEX_sig,
            immediate16_IDEX  => immediate16_IDEX_sig,

            R2AD_IDEX         => R2AD_IDEX_sig,
            R1AD_IDEX         => R1AD_IDEX_sig,

            jumpShortAddr_IDEX => jumpShortAddr_IDEX_sig
        );
		  
	 
    -- Forwarding Unit

    ForwardUnit: entity work.forwarder
        generic map (
            addr_size => 3
        )
        port map (
            R1AD        => R1AD_IDEX_sig,
            R2AD        => R2AD_IDEX_sig,
            RegAD_EXMEM => RegAD_EXMEM_sig,
            RegAD_MEMWB => writeAD_MEMWB_sig,
            ForwardA    => ForwardA_sig,
            ForwardB    => ForwardB_sig
        );
		  
        ForwardA_toSelector_sig <= "00" when R1AD_IDEX_sig = "000" else ForwardA_sig;
        ForwardB_toSelector_sig <= "00" when R2AD_IDEX_sig = "000" else ForwardB_sig;
	 
	 
    -- Forwarding Selector 1
    -- Selects first ALU operand before MFPC mux

    Selector1: entity work.Forwarding_Selector
        generic map (
            n => 16
        )
        port map (
            operation  => ForwardA_toSelector_sig,
            regAddress => R1Reg_IDEX_sig,
            regAD_MEM  => Result_EXMEM_sig,
            regAD_WB   => writeData_MEMWB_sig,
            Output     => selector1_out_sig
        );

    
    -- Forwarding Selector 2
    -- Selects second ALU operand before immediate mux

    Selector2: entity work.Forwarding_Selector
        generic map (
            n => 16
        )
        port map (
            operation  => ForwardB_toSelector_sig,
            regAddress => R2Reg_IDEX_sig,
            regAD_MEM  => Result_EXMEM_sig,
            regAD_WB   => writeData_MEMWB_sig,
            Output     => selector2_out_sig
        );
	
    isMFPC_toMux_sig <= '0' when (isR_IDEX_sig = '1' and ALUFunc_IDEX_sig(2 downto 0) = "111")
                    else isMFPC_IDEX_sig;
	 
	 
    -- ALU Input 1 Mux

    ALUInput1Mux: entity work.MyMux2to1_16bit
        port map (
            A => selector1_out_sig,
            B => ifid_pc_out,
            S => isMFPC_toMux_sig,
            Q => ALUInput1_sig
        );
		  
	 
    -- ALU Input 2 Mux
    -- For LW/SW/Branch use immediate, otherwise forwarded R2 value

    ALUInput2Mux: entity work.MyMux2to1_16bit
        port map (
            A => selector2_out_sig,
            B => immediate16_IDEX_sig,
            S => useImmediate_sig,
            Q => ALUInput2_sig
        );
		  
	 
    -- ALU

    ALU16: entity work.MyALU16bit
        port map (
            S        => ALUFunc_IDEX_sig(2 downto 0),
            A        => ALUInput1_sig,
            B        => ALUInput2_sig,
            Q        => ALUResult_sig,
            Overflow => ALUOverflow_sig
        );
		  
	 
    -- EX/MEM Register

    EXMEMREG: entity work.register_EX_MEM
    generic map (
        n => 16,
        addressSize => 3
    )
    port map (
        clock       => clock,

        isLW        => isLW_IDEX_sig,
        isSW        => isSW_IDEX_sig,
        WriteEnable => WriteEnable_IDEX_sig,
        ReadDigit   => isReadDigit_IDEX_sig,
        PrintDigit  => isPrintDigit_IDEX_sig,

        R2Reg       => R2Reg_IDEX_sig,
        Result      => ALUResult_sig,
        RegAD       => writeReg_dest_sig,

        isLW_EXMEM        => isLW_EXMEM_sig,
        isSW_EXMEM        => isSW_EXMEM_sig,
        WriteEnable_EXMEM => WriteEnable_EXMEM_sig,
        ReadDigit_EXMEM   => ReadDigit_EXMEM_sig,
        PrintDigit_EXMEM  => PrintDigit_EXMEM_sig,

        R2Reg_EXMEM       => R2Reg_EXMEM_sig,
        Result_EXMEM      => Result_EXMEM_sig,
        RegAD_EXMEM       => RegAD_EXMEM_sig
    );
	 
	 
    -- MEM/WB Register

    MEMWBREG: entity work.register_MEM_WB
        generic map (
            n => 16,
            addressSize => 3
        )
        port map (
            clock     => clock,

            Result    => MEMWB_inputData_sig,
            RegAD     => RegAD_EXMEM_sig,

            writeData => writeData_MEMWB_sig,
            writeAD   => writeAD_MEMWB_sig
        );



    -- Top-level outputs

    -- Store Word προς Data Memory
    DataWriteFlag <= isSW_EXMEM_sig;
    dataAD        <= Result_EXMEM_sig;
    toData        <= R2Reg_EXMEM_sig;

    -- Print Digit προς output/screen
    printEnable   <= PrintDigit_EXMEM_sig;
    printData     <= R2Reg_EXMEM_sig;
    printCode     <= Result_EXMEM_sig;

    -- Read Digit / Keyboard enable
    keyEnable     <= ReadDigit_EXMEM_sig;

    -- Register 
    regOUT <= "0000000000000000" & regOUT128_sig;
	 
	 Result <= ALUResult_sig;
	 
	 instructionAD <= pc_current;
	 
end structural;
