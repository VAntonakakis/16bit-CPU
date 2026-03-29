library ieee;
use ieee.std_logic_1164.all;

entity MyMux4to1 is port(
	S : in std_logic_vector (0 to 1);
	A : in std_logic;
	B : in std_logic;
	C : in std_logic;
	D : in std_logic;
	Q : out std_logic);
end MyMux4to1;

architecture StructuralMyMux4to1 of MyMux4to1 is 

component MyMux2to1 is port(
	S : in std_logic;
	A : in std_logic;
	B : in std_logic;
	Q : out std_logic);
end component;
	

signal P1, P2 : std_logic;
begin 

V0 : MyMux2to1 port map(S(1), A, B, P1);
V1 : MyMux2to1 port map(S(1), C, D, P2);
v3 : MyMux2to1 port map(S(0), P1, P2, Q);


end StructuralMyMux4to1;