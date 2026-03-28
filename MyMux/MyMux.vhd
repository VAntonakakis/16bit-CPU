library ieee;
use ieee.std_logic_1164.all;

entity MyMux is port(
	s : in std_logic;
	A : in std_logic;
	B : in std_logic;
	Q : out std_logic);
end MyMux;

architecture StructuralMyMux of MyMux is 

component MyAnd2 is port(
	A : in std_logic;
	B : in std_logic;
	Q : out std_logic);
end component;

component MyNot is port(
	A : in std_logic;
	Q : out std_logic);
end component;

component MyOr2 is port(
	A : in std_logic;
	B : in std_logic;
	Q : out std_logic);
end component;

signal sn, p1, p2 : std_logic;
begin 

v0 : MyNot port map(s, sn);
V1 : MyAnd2 port map(sn, A, p1);
v2 : MyAnd2 port map(s, B, p2);
v3 : MyOr2 port map(p1, p2, Q);
end StructuralMyMux;