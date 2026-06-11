library ieee;
use ieee.std_logic_1164.all;

entity MyMux2to1_16bit is port(
    A : in std_logic_vector (15 downto 0);
    B : in std_logic_vector (15 downto 0);
    S : in std_logic;
    Q : out std_logic_vector (15 downto 0));
end MyMux2to1_16bit;

architecture StructuralMyMux2to1_16bit of MyMux2to1_16bit is
component MyAnd16bit is port(
	A : in std_logic_vector (15 downto 0);
   B : in std_logic_vector (15 downto 0);
   Q : out std_logic_vector (15 downto 0));
end component;

component MyOr16bit is port(
	A : in std_logic_vector (15 downto 0);
   B : in std_logic_vector (15 downto 0);
   Q : out std_logic_vector (15 downto 0));
end component;

component MyNot is port(
	A : in std_logic;
   Q : out std_logic);
end component;

signal P1, P2, SVector, SNotVector : std_logic_vector (15 downto 0);
signal SNot : std_logic;

begin

SVector <=(others => S);
SNotVector <= (others => Snot);

v0 : MyNot port map(S, SNot);
v1 : MyAnd16bit port map(A, SNotVector, P1);
v2 : MyAnd16bit port map(B, SVector,  P2);
v3 : MyOr16bit  port map(P1, P2, Q);

end StructuralMyMux2to1_16bit;