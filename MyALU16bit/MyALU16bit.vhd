library ieee;
use ieee.std_logic_1164.all;

entity MyALU16bit is port(
	S : in std_logic_vector (2 downto 0);
	A : in std_logic_vector (15 downto 0);
	B : in std_logic_vector (15 downto 0);
	Q : out std_logic_vector (15 downto 0);
	Overflow : out std_logic);
end MyALU16bit;

architecture StructuralMyALU16bit of MyALU16bit is
component MyALU1bit is port(
	A : in std_logic;
	B : in std_logic;
	S : in std_logic_vector (2 downto 0);
	Cin : in std_logic;
	Q : out std_logic;
	Overflow : out std_logic);
end component;

component MyDecoder3to8 is port(
	S : in std_logic_vector(2 downto 0);
	Q : out std_logic_vector(7 downto 0));
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

component MyXor2 is port(
	A : in std_logic;
	B : in std_logic;
	Q : out std_logic);
end component;

component MyNot is port(
	A : in std_logic;
	Q : out std_logic);
end component;

component MyMux2to1_16bit is port(
    A : in std_logic_vector (15 downto 0);
    B : in std_logic_vector (15 downto 0);
    S : in std_logic;
    Q : out std_logic_vector (15 downto 0));
end component;

component MyMux2to1 is port(
    A : in std_logic;
    B : in std_logic;
    S : in std_logic;
    Q : out std_logic);
end component;

	
signal carry, Q1, Q2, Qi : std_logic_vector (15 downto 0);
signal Qo : std_logic_vector (7 downto 0);
signal cout1, cout2, Cout3, geq, Cin0, Q3, Q4 : std_logic;
signal s0Not, s1Not, s01Not, s2Not, SAndNot, S01AndNot, geqSignal, subSignal : std_logic;

begin

v01 : MyNot port map(s(1), s01Not);
v02 : MyNot port map(s(2), s2Not);
v03 : MyAnd2 port map(s01Not, s2Not, S01AndNot);
v04 : MyAnd2 port map(S01AndNot, s(0), subSignal);
Q3 <= '0';
Q4 <= '1';
V05 : Mymux2to1 port map(Q3, Q4, subSignal, Cin0);

V0 : MyALU1bit port map(A(0), B(0), S, Cin0, Qi(0), carry(0));
V1 : MyALU1bit port map(A(1), B(1), S, carry(0), Qi(1), carry(1));
V2 : MyALU1bit port map(A(2), B(2), S, carry(1), Qi(2), carry(2));
V3 : MyALU1bit port map(A(3), B(3), S, carry(2), Qi(3), carry(3));
V4 : MyALU1bit port map(A(4), B(4), S, carry(3), Qi(4), carry(4));
V5 : MyALU1bit port map(A(5), B(5), S, carry(4), Qi(5), carry(5));
V6 : MyALU1bit port map(A(6), B(6), S, carry(5), Qi(6), carry(6));
V7 : MyALU1bit port map(A(7), B(7), S, carry(6), Qi(7), carry(7));
V8 : MyALU1bit port map(A(8), B(8), S, carry(7), Qi(8), carry(8));
V9 : MyALU1bit port map(A(9), B(9), S, carry(8), Qi(9), carry(9));
V10 : MyALU1bit port map(A(10), B(10), S, carry(9), Qi(10), carry(10));
V11 : MyALU1bit port map(A(11), B(11), S, carry(10), Qi(11), carry(11));
V12 : MyALU1bit port map(A(12), B(12), S, carry(11), Qi(12), carry(12));
V13 : MyALU1bit port map(A(13), B(13), S, carry(12), Qi(13), carry(13));
V14 : MyALU1bit port map(A(14), B(14), S, carry(13), Qi(14), carry(14));
V15 : MyALU1bit port map(A(15), B(15), S, carry(14), Qi(15), carry(15));

-- GEQ (A ≥ 0)
V16 : MyNot port map(A(15), geq);
v17 : MyNot port map(s(0), s0Not);
v18 : MyNot port map(s(1), s1Not);
v19 : MyAnd2 port map(s0Not, s1Not, SAndNot);
v20 : MyAnd2 port map(SAndNot, s(2), geqSignal);
Q2 <= (15 downto 1 => '0') & geq;
Q1 <= qi;
V21 : Mymux2to1_16bit port map(Q1, Q2, geqSignal, Q);

--overflow
v22 : MyXor2 port map(carry(14), carry(15), Overflow);
end StructuralMyALU16bit;