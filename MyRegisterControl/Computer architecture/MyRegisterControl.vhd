library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MyRegisterControl is
    Port (
        OpCode      : in  STD_LOGIC_VECTOR(3 downto 0);
        Funct       : in  STD_LOGIC_VECTOR(2 downto 0);
        IF_ID_Flush : in  STD_LOGIC;

        isBranch    : out STD_LOGIC;
        isJReg      : out STD_LOGIC;
        isJType     : out STD_LOGIC;
        isLdWord    : out STD_LOGIC;
        isMFPC      : out STD_LOGIC;
        isRType     : out STD_LOGIC;
        isReadDig   : out STD_LOGIC;
        isStWord    : out STD_LOGIC;
        isWriteDig  : out STD_LOGIC
    );
end MyRegisterControl;

architecture Behavioral of MyRegisterControl is
begin

    process(OpCode, Funct, IF_ID_Flush)
    begin
        -- Default values
        isBranch   <= '0';
        isJReg     <= '0';
        isJType    <= '0';
        isLdWord   <= '0';
        isMFPC     <= '0';
        isRType    <= '0';
        isReadDig  <= '0';
        isStWord   <= '0';
        isWriteDig <= '0';

        -- Flush case: all control signals become zero
        if IF_ID_Flush = '1' then
            isBranch   <= '0';
            isJReg     <= '0';
            isJType    <= '0';
            isLdWord   <= '0';
            isMFPC     <= '0';
            isRType    <= '0';
            isReadDig  <= '0';
            isStWord   <= '0';
            isWriteDig <= '0';

        else
            case OpCode is

                -- R-type instruction
                when "0000" =>
                    isRType <= '1';

                    -- MFPC instruction seems to be encoded as R-type with funct = 100
                    if Funct = "111" then
                        isMFPC <= '1';
                    end if;

                -- Load Word
                when "0001" =>
                    isLdWord <= '1';

                -- Store Word
                when "0010" =>
                    isStWord <= '1';

                -- Branch
                when "0100" =>
                    isBranch <= '1';

                -- Read Digit
                when "0110" =>
                    isReadDig <= '1';

                -- Write / Print Digit
                when "0111" =>
                    isWriteDig <= '1';

                -- Jump Register
                when "1101" =>
                    isJReg <= '1';

                -- Jump Type
                when "1111" =>
                    isJType <= '1';

                when others =>
                    null;

            end case;
        end if;

    end process;

end Behavioral;