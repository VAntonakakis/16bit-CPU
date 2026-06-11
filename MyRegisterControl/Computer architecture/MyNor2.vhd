library ieee;
use ieee.std_logic_1164.all;

entity MyNor2 is port(
	A : in std_logic;
	B : in std_logic;
	Q : out std_logic);
end MyNor2;

architecture StructuralMyNor2 of MyNor2 is
component MyNot is port(
	A : in std_logic;
	Q : out std_logic);
end component;

component MyOr2 is port(
	A : in std_logic;
	B : in std_logic;
	Q : out std_logic);
end component;

signal s1 : std_logic;

begin

v0 : MyOr2 port map(A, B, s1);
v1 : MyNot port map(s1, Q);

end StructuralMyNor2;