library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MyAluControl is
    Port (
        opcode      : in  STD_LOGIC_VECTOR(3 downto 0);
        func        : in  STD_LOGIC_VECTOR(2 downto 0);
        alu_sel     : out STD_LOGIC_VECTOR(2 downto 0)
    );
end MyAluControl;

architecture Behavioral of MyAluControl is
begin

    process(opcode, func)
    begin

        case opcode is

            -- R TYPE
            when "0000" =>
                alu_sel <= func;

            -- ADDI / LW / SW
            when "0001" =>
                alu_sel <= "000";

            -- SUBI
            when "0010" =>
                alu_sel <= "001";

            -- ANDI
            when "0011" =>
                alu_sel <= "010";

            -- ORI
            when "0100" =>
                alu_sel <= "011";

            -- GEQ
            when "0101" =>
                alu_sel <= "100";

            -- NOT
            when "0110" =>
                alu_sel <= "101";

            -- XOR
            when "0111" =>
                alu_sel <= "110";

            -- NOR
            when "1000" =>
                alu_sel <= "111";

            when others =>
                alu_sel <= "000";

        end case;

    end process;

end Behavioral;