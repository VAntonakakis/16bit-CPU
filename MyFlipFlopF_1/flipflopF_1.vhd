library ieee;
use ieee.std_logic_1164.all;

entity flipflopF_1 is port(
	R : in std_logic;
	I : in std_logic;
	C : in std_logic;
	E : in std_logic;
	O : out std_logic);
end flipflopF_1;

architecture behavioral of flipflopF_1 is
begin
	process(c, R)
	begin
		if (R = '0') then
			O <= '0';
		elsif (c'event and c='0')  then
			if (E = '1') then
				O <= I;
			end if;
		end if;
	end process;
end behavioral;