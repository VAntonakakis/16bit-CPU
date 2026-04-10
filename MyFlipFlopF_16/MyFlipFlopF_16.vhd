library ieee;
use ieee.std_logic_1164.all;

entity MyFlipFlopF_16 is port(
	R : in std_logic;
	I : in std_logic_vector(15 downto 0);
	C : in std_logic;
	E : in std_logic;
	O : out std_logic_vector(15 downto 0));
end MyFlipFlopF_16;

architecture behavioral of MyFlipFlopF_16 is
begin
	process(C)
	begin
		if falling_edge(C) then
			if R = '0' then
				O(15) <= '0';
            O(14) <= '0';
            O(13) <= '0';
            O(12) <= '0';
            O(11) <= '0';
            O(10) <= '0';
            O(9)  <= '0';
            O(8)  <= '0';
            O(7)  <= '0';
            O(6)  <= '0';
            O(5)  <= '0';
            O(4)  <= '0';
            O(3)  <= '0';
            O(2)  <= '0';
            O(1)  <= '0';
            O(0)  <= '0';
			 elsif E = '1' then
				O <= I;
			end if;
		end if;
	end process;
end behavioral;
				