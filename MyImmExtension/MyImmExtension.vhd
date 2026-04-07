library ieee;
use ieee.std_logic_1164.all;

entity MyImmExtension is port(
	I : in std_logic_vector(5 downto 0);
	O : out std_logic_vector(15 downto 0));
end MyImmExtension;

architecture structural of MyImmExtension is
begin
	O <= I(5) & I(5) & I(5) & I(5) & I(5) & I(5) & I(5) & I(5) & I(5) & I(5) & I;
end structural;