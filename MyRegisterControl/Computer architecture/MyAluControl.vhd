library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MyAluControl is
    Port (
        opcode  : in  STD_LOGIC_VECTOR(3 downto 0);
        func    : in  STD_LOGIC_VECTOR(2 downto 0);
        alu_sel : out STD_LOGIC_VECTOR(3 downto 0)
    );
end MyAluControl;

architecture Behavioral of MyAluControl is
begin

    process(opcode, func)
    begin
        case opcode is
            when "0000" =>
                alu_sel(3) <= '0';
                alu_sel(2 downto 0) <= func;

            when others =>
                alu_sel <= opcode;
        end case;
    end process;

end Behavioral;