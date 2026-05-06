library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity register_ID_EX is
    generic (
        n : INTEGER := 16;
        addressSize : INTEGER := 3
    );
    port (
        clock, isEOR, wasJumpOut, isJump, isJR, isBranch, isR, isMFPC,
        isLW, isSW, isReadDigit, isPrintDigit : in std_logic;

        ALUFunc : in std_logic_vector(3 downto 0);

        R1Reg, R2Reg, immediate16 : in std_logic_vector(n-1 downto 0);

        R2AD, R1AD : in std_logic_vector(addressSize-1 downto 0);

        jumpShortAddr : in std_logic_vector(11 downto 0);

        ---------------------------------------------------------

        isEOR_IDEX, wasJumpOut_IDEX, isJump_IDEX, isJR_IDEX,
        isBranch_IDEX, isR_IDEX, isMFPC_IDEX, isLW_IDEX,
        isSW_IDEX, isReadDigit_IDEX, isPrintDigit_IDEX : out std_logic;

        ALUFunc_IDEX : out std_logic_vector(3 downto 0);

        R1Reg_IDEX, R2Reg_IDEX, immediate16_IDEX : out std_logic_vector(n-1 downto 0);

        R2AD_IDEX, R1AD_IDEX : out std_logic_vector(addressSize-1 downto 0);

        jumpShortAddr_IDEX : out std_logic_vector(11 downto 0)
    );
end register_ID_EX;

architecture behavior of register_ID_EX is
begin

pc: process(clock)
begin
    if clock = '1' then
        -- Map the inputs with the corresponding outputs

        isEOR_IDEX <= isEOR;
        wasJumpOut_IDEX <= wasJumpOut;
        isJump_IDEX <= isJump;
        isJR_IDEX <= isJR;
        isBranch_IDEX <= isBranch;
        isR_IDEX <= isR;
        isMFPC_IDEX <= isMFPC;
        isLW_IDEX <= isLW;
        isSW_IDEX <= isSW;
        isReadDigit_IDEX <= isReadDigit;
        isPrintDigit_IDEX <= isPrintDigit;

        ALUFunc_IDEX <= ALUFunc;

        R1Reg_IDEX <= R1Reg;
        R2Reg_IDEX <= R2Reg;
        immediate16_IDEX <= immediate16;

        R2AD_IDEX <= R2AD;
        R1AD_IDEX <= R1AD;

        jumpShortAddr_IDEX <= jumpShortAddr;
    end if;
end process pc;

end architecture behavior;