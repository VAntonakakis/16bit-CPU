library ieee;
use ieee.std_logic_1164.all;

entity MyMux8to1 is port(
	S : in std_logic_vector (2 downto 0);
	A : in std_logic;
	B : in std_logic;
	C : in std_logic;
	D : in std_logic;
	E : in std_logic;
	F : in std_logic;
	G : in std_logic;
	H : in std_logic;
	Q : out std_logic);
end MyMux8to1;

architecture StructuralMyMux8to1 of MyMux8to1 is
component MyMux2to1 is port(
	S : in std_logic;
	A : in std_logic;
	B : in std_logic;
	Q : out std_logic);
end component;

Signal P1, P2, P3, P4, P5, P6 : std_logic;

begin

V0 : MyMux2to1 port map(S(0), A, B, P1);
V1 : MyMux2to1 port map(S(0), C, D, P2);
V2 : MyMux2to1 port map(S(0), E, F, P3);
V3 : MyMux2to1 port map(S(0), G, H, P4);
V4 : MyMux2to1 port map(S(1), p1, p2, p5);
V5 : MyMux2to1 port map(S(1), p3, p4, p6);
v6 : MyMux2to1 port map(S(2), p5, p6, Q);

end StructuralMyMux8to1;


