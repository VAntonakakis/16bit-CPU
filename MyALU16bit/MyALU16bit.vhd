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
component MyFullAdder16bit is port(
	A : in std_logic_vector (15 downto 0);
	B : in std_logic_vector (15 downto 0);
	Cin : in std_logic;
	Sum : out std_logic_vector (15 downto 0);
	Cout : out std_logic);
end component;

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

component MyGreaterEqual16bit is port(
	A : in std_logic_vector (15 downto 0);
	Q : out std_logic);
end component;

component MyNot16bit is port(
	A : in std_logic_vector (15 downto 0);
	Q : out std_logic_vector (15 downto 0));
end component;

component MyXor16bit is port(
	A : in std_logic_vector (15 downto 0);
	B : in std_logic_vector (15 downto 0);
	Q : out std_logic_vector (15 downto 0));
end component;

component MyNor16bit is port(
	A : in std_logic_vector (15 downto 0);
	B : in std_logic_vector (15 downto 0);
	Q : out std_logic_vector (15 downto 0));
end component;

component MyMux8to1_16bit is port(
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
end component;

component MyMux2to1 is port(
	S : in std_logic;
	A : in std_logic;
	B : in std_logic;
	Q : out std_logic);
end component;


signal p1, p2, p3, p4, p5, p6, p7, p8, BNot : std_logic_vector (15 downto 0);
signal o1, o2, p5_1bit : std_logic;

begin

--add
v0 : MyFullAdder16bit port map(A, B, '0', p1, o1);

--sub
V1 : MyNot16bit port map(B, BNot);
v2 : MyFullAdder16bit port map(A, BNot, '1', p2, o2);

--and
v3 : MyAnd16bit port map(A, B, p3);

--or
v4 : MyOr16bit port map(A, B, p4);

--geq
v5 : MyGreaterEqual16bit port map(A, p5_1bit);
p5(15 downto 1) <= (others => '0');
p5(0) <= p5_1bit;

--not
v6 : MyNot16bit port map(A, p6);

--xor
v7 : MyXor16bit port map(A, B, p7);

--nor
v8 : MyNor16bit port map(A, B, p8);

--mux 8 to 1
v9 : MyMux8to1_16bit port map(S, p1, p2, p3, p4, p5, p6, p7, p8, Q);

--overflow
Overflow <= o1 when S = "000" else
				o2 when S = "001" else
				'0';
end StructuralMyALU16bit;