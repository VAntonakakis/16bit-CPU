library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MyRegisterControl is
    Port (
        OpCode         : in  STD_LOGIC_VECTOR(3 downto 0);
        Funct          : in  STD_LOGIC_VECTOR(2 downto 0);
        IF_ID_Flush    : in  STD_LOGIC;

        isBranch       : out STD_LOGIC;
        isJReg         : out STD_LOGIC;
        isJType        : out STD_LOGIC;
        isLdWord       : out STD_LOGIC;
        isMFPC         : out STD_LOGIC;
        idRType        : out STD_LOGIC;
        isReadDig      : out STD_LOGIC;
        isStWord       : out STD_LOGIC;
        isWriteDig     : out STD_LOGIC
    );
end MyRegisterControl;

architecture Behavioral of MyRegisterControl is

begin

    process(OpCode, Funct, IF_ID_Flush)

    begin

        -- default values
        isBranch   <= '0';
        isJReg     <= '0';
        isJType    <= '0';
        isLdWord   <= '0';
        isMFPC     <= '0';
        idRType    <= '0';
        isReadDig  <= '0';
        isStWord   <= '0';
        isWriteDig <= '0';

        -- flush => όλα 0
        if IF_ID_Flush = '1' then

            isBranch   <= '0';
            isJReg     <= '0';
            isJType    <= '0';
            isLdWord   <= '0';
            isMFPC     <= '0';
            idRType    <= '0';
            isReadDig  <= '0';
            isStWord   <= '0';
            isWriteDig <= '0';

        else

            case OpCode is

                -- R TYPE
                when "0000" =>
                    idRType <= '1';
						  
						  --  MFPC
						  if Funct = "111" then
								isMFPC <= '1';
						  end if;

                -- LOAD WORD
                when "0001" =>
                    isLdWord <= '1';

                -- STORE WORD
                when "0010" =>
                    isStWord <= '1';

                -- BRANCH
                when "0100" =>
                    isBranch <= '1';
						  
					 -- READ DIGIT
                when "0110" =>
                    isReadDig <= '1';

                -- WRITE DIGIT
                when "0111" =>
                    isWriteDig <= '1';

					 -- J REGISTER
                when "1101" =>
                    isJReg <= '1';
						  
                -- J TYPE
                when "1111" =>
                    isJType <= '1';

                when others =>
                    null;

            end case;

        end if;

    end process;

end Behavioral;