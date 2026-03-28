library ieee;
use ieee.std_logic_1164.all;

entity MyXor2 is port(
	A : in std_logic;
	B : in std_logic;
	Q : out std_logic);
end MyXor2;

architecture StructuralMyXor2 of MyXor2 is

component MyNot is port(
	A : in std_logic;
	Q : out std_logic);
end component;

component MyAnd2 is port(
	A : in std_logic;
	B : in std_logic;
	Q : out std_logic);
end component;

component MyOr2 is port(
	A : in std_logic;
	B : in std_logic;
	Q : out std_logic);
end component;

signal s1,s2, s3, s4 :std_logic;
begin

v0 : MyNot port map(A, s1);
v1 : MyNot port map(B, s2);
v2 : MyAnd2 port map(A, s2, s3);
v3 : MyAnd2 port map(s1, B, s4);
v4 : Myor2 port map (s3, s4, Q);
end StructuralMyXor2;