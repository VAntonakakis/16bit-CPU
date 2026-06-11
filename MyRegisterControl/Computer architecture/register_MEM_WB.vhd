library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity register_MEM_WB is
    generic (
        n : INTEGER := 16;
        addressSize : INTEGER := 3
    );
    port (
        clock : in std_logic;

        Result : in std_logic_vector(n-1 downto 0);
        RegAD  : in std_logic_vector(addressSize-1 downto 0);

        writeData : out std_logic_vector(n-1 downto 0);
        writeAD   : out std_logic_vector(addressSize-1 downto 0)
    );
end register_MEM_WB;

architecture behavior of register_MEM_WB is
begin

pc: process(clock)
begin
    if clock = '1' then
        writeData <= Result;
        writeAD <= RegAD;
    end if;
end process pc;

end architecture behavior;