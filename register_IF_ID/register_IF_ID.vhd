library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity register_IF_ID is
    generic (
        n : INTEGER := 16
    );
    port (
        inPC, inInstruction : IN std_logic_vector(n-1 downto 0);
        clock, IF_Flush, IF_ID_ENABLE : IN std_logic;

        outPC, outInstruction : OUT std_logic_vector(n-1 downto 0)
    );
end register_IF_ID;

architecture behavior of register_IF_ID is
begin

pc: process(clock)
begin
    if clock='1' and IF_ID_ENABLE='1' then
        -- Increase the program counter by 2
        outPC <= std_logic_vector(unsigned(inPC) + 2);

        -- Output the instruction
        outInstruction <= inInstruction;

    elsif clock='1' and IF_Flush='1' then
        -- Flush the program counter
        outPC <= (others => '0');

        -- Flush the instruction
        outInstruction <= (others => '0');

    end if;
end process pc;

end architecture behavior;