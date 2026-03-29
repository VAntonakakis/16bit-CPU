library ieee;
use ieee.std_logic_1164.all;

entity MyMux8to1_16bit is port(
	S : in std_logic_vector (2 downto 0);
	A : in std_logic_vector (15 downto 0);
	B : in std_logic_vector (15 downto 0);
	C : in std_logic_vector (15 downto 0);
	D : in std_logic_vector (15 downto 0);
	E : in std_logic_vector (15 downto 0);
	F : in std_logic_vector (15 downto 0);
	G : in std_logic_vector (15 downto 0);
	H : in std_logic_vector (15 downto 0);
	Q : out std_logic_vector (15 downto 0));
end MyMux8to1_16bit;

architecture StructuralMyMux8to1_16bit of MyMux8to1_16bit is
component MyMux2to1_16bit is port(
	S : in std_logic;
	A : in std_logic_vector (15 downto 0);
	B : in std_logic_vector (15 downto 0);
	Q : out std_logic_vector (15 downto 0));
end component;

Signal P1, P2, P3, P4, P5, P6 : std_logic_vector (15 downto 0);

begin

V0 : MyMux2to1_16bit port map(S(0), A, B, P1);
V1 : MyMux2to1_16bit port map(S(0), C, D, P2);
V2 : MyMux2to1_16bit port map(S(0), E, F, P3);
V3 : MyMux2to1_16bit port map(S(0), G, H, P4);
V4 : MyMux2to1_16bit port map(S(1), p1, p2, p5);
V5 : MyMux2to1_16bit port map(S(1), p3, p4, p6);
v6 : MyMux2to1_16bit port map(S(2), p5, p6, Q);

end StructuralMyMux8to1_16bit;