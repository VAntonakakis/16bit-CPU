library IEEE;
use IEEE.std_logic_1164.all;

entity trapUnit is
    port (
        OpCode       : in  std_logic_vector(3 downto 0);
        endOfRunning : out std_logic
    );
end entity trapUnit;

architecture behavior of trapUnit is
begin

    process(OpCode)
    begin
        if OpCode = "1110" then
            endOfRunning <= '1';
        else
            endOfRunning <= '0';
        end if;
    end process;

end architecture behavior;