library ieee;
use ieee.std_logic_1164.all;

entity immExtension is port(
	I : in std_logic_vector(5 downto 0);
	O : out std_logic_vector(15 downto 0));
end immExtension;

architecture behavioral of immExtension is
begin
	process(I)
		begin
			if (I(5) = '1') then
				O <= "1111111111" & I;
			else
				O <= "0000000000" & I;
			end if;
	end process;
end behavioral;