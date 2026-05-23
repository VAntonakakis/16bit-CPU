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
    signal writeAD_sig       : std_logic_vector(2 downto 0);
    signal writeData_sig     : std_logic_vector(15 downto 0);

    signal regRead1_sig      : std_logic_vector(15 downto 0);
    signal regRead2_sig      : std_logic_vector(15 downto 0);
    signal regOUT128_sig     : std_logic_vector(127 downto 0);

    signal immediate16_sig   : std_logic_vector(15 downto 0);

begin

    --------------------------------------------------------------------
    -- Temporary / basic connections
    --------------------------------------------------------------------

    -- Jump address from J-type instruction:
    -- instr format: opcode(15..12) + jumpAddr(11..0)
    jumpAD <= "0000" & ifid_instr_out(11 downto 0);

    -- Branch address προσωρινά μηδέν.
    -- Αργότερα θα το συνδέσουμε με ALU / branch calculation.
    branchAD <= (others => '0');

    -- Προσωρινά κανονική ροή PC.
    -- Αργότερα θα έρθει από Hazard Unit.
    --JROpcode_sig <= "00";

    -- Το Trap Unit παγώνει το PC όταν βρει end of running.
    pc_enable_sig <= not endOfRunning_sig;

    -- Το IF_ID register επίσης σταματάει όταν έχουμε end of running.
    IF_ID_Enable_sig <= not endOfRunning_sig;

    -- Προσωρινά δεν κάνουμε flush.
    -- Αργότερα θα συνδεθεί με Hazard Unit + Trap Unit.
    --IF_ID_Flush_sig <= '0';
	 
	 -- Προσωρινά μέχρι να συνδεθεί το ID_EX / ALU branch result
    mustBranch_sig <= '0';
    wasJump_sig    <= '0';

    -- Register addresses από το ISA
    -- R-type: rd = 11..9, rs = 8..6, rt = 5..3
    read1AD_sig <= ifid_instr_out(8 downto 6);
    read2AD_sig <= ifid_instr_out(5 downto 3);

    -- Προσωρινά writeback μηδέν μέχρι να συνδέσουμε MEM/WB
    writeAD_sig   <= (others => '0');
    writeData_sig <= (others => '0');

    --------------------------------------------------------------------
    -- Trap Unit
    --------------------------------------------------------------------

    Trap: entity work.trapUnit
        port map (
            OpCode       => instr(15 downto 12),
            endOfRunning => endOfRunning_sig
        );

    --------------------------------------------------------------------
    -- JR Selector
    -- Επιλέγει ποια τιμή θα πάει στο PC.
    --------------------------------------------------------------------

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

    -- Top-level output
    instructionAD <= pc_current;

    --------------------------------------------------------------------
    -- IF/ID Register
    --------------------------------------------------------------------

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
		  
	 --------------------------------------------------------------------
    -- Register Control / Controller
    --------------------------------------------------------------------

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

	 --------------------------------------------------------------------
    -- Hazard Unit
    --------------------------------------------------------------------

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
		  
	 --------------------------------------------------------------------
    -- Register File
    --------------------------------------------------------------------

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
		  
	 --------------------------------------------------------------------
    -- Immediate Extension
    --------------------------------------------------------------------

    SignExtend: entity work.MyImmExtension
        port map (
            I => ifid_instr_out(5 downto 0),
            O => immediate16_sig
        );

    --------------------------------------------------------------------
    -- Temporary output defaults
    -- Τα κρατάμε προσωρινά για να μην μείνουν outputs ασύνδετα.
    -- Αργότερα θα αντικατασταθούν με πραγματικές συνδέσεις.
    --------------------------------------------------------------------

    printEnable   <= '0';
    keyEnable     <= '0';
    DataWriteFlag <= '0';

    dataAD        <= (others => '0');
    toData        <= (others => '0');
    printCode     <= (others => '0');
    printData     <= (others => '0');

    regOUT <= "0000000000000000" & regOUT128_sig;

end structural;