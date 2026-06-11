library ieee;
use ieee.std_logic_1164.all;

entity MyGreaterEqual16bit is port (
	A : in std_logic_vector (15 downto 0);
	Q : out std_logic);
end MyGreaterEqual16bit;

architecture StructMyGreaterEqual16bit of MyGreaterEqual16bit is
component MyNot is port(
	A : in std_logic;
	Q : out std_logic);
end component;

begin

v0 : MyNot port map(A(15), Q);

end StructMyGreaterEqual16bit;