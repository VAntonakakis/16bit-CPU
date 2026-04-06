library ieee;
use ieee.std_logic_1164.all;

entity MyALU1bit is port(
	A : in std_logic;
	B : in std_logic;
	S : in std_logic_vector (2 downto 0);
	Cin : in std_logic;
	Q : out std_logic;
	Overflow : out std_logic);
end MyALU1bit;

architecture StructuralMyALU1bit of MyALU1bit is
component MyFullAdder1bit is port(
	A : in std_logic;
	B : in std_logic;
	Cin : in std_logic;
	Sum : out std_logic;
	Cout : out std_logic);
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

component MyNor2 is port(
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

component MyMux8to1 is port(
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
end component;

component MyDecoder3to8 is port(
	S : in std_logic_vector(2 downto 0);
	Q : out std_logic_vector(7 downto 0));
end component;

component MyGreaterEqual1bit is port(
	A : in std_logic;
	Q : out std_logic);
end component;

signal Qo : std_logic_vector (7 downto 0);
signal Q1, Q2, Q3, Q4, Q5, Q6, Q7, Q8, ANot, BNot, Qgeq, geq : std_logic;
signal Cout1, Cout2, Cout3, Cout4 : std_logic;

begin

--add
v0 : MyFullAdder1bit port map(A, B, Cin, Q1, Cout1);

--sub
V1 : MyNot port map(B, BNot);
v2 : MyFullAdder1bit port map(A, BNot, Cin, Q2, Cout2);

--and
v3 : MyAnd2 port map(A, B, Q3);

--or
v4 : MyOr2 port map(A, B, Q4);

--geq
process(S, A)
begin
	if S = "100" then 
		if A = '0' then
			Q5 <= '1';
		else
			Q5 <= '0';
		end if;
	else
		Q5 <= '0';
	end if;
end process;

--not
v6 : MyNot port map(A, Q6);

--xor
v7 : MyXor2 port map(A, B, Q7);

--nor
v8 : MyNor2 port map(A, B, Q8);

--mux 8 to 1
v9 : MyMux8to1 port map(S, Q1, Q2, Q3, Q4, Q5, Q6, Q7, Q8, Q);

--overflow
dec: MyDecoder3to8 port map(S, Qo);
v10: MyAnd2 port map(Qo(0), Cout1, Cout3);
v11: MyAnd2 port map(Qo(1), Cout2, Cout4);
v12: MyOr2  port map(Cout3, Cout4, Overflow);


end StructuralMyALU1bit;
