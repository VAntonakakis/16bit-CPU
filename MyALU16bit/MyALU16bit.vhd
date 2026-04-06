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
	
signal carry : std_logic_vector (15 downto 0);
signal Qo : std_logic_vector (7 downto 0);
signal cout1, cout2, Cout3, Cin0 : std_logic;

begin
Cin0 <= '1' when S = "001" else '0';
V0 : MyALU1bit port map(A(0), B(0), S, Cin0, Q(0), carry(0));
V1 : MyALU1bit port map(A(1), B(1), S, carry(0), Q(1), carry(1));
V2 : MyALU1bit port map(A(2), B(2), S, carry(1), Q(2), carry(2));
V3 : MyALU1bit port map(A(3), B(3), S, carry(2), Q(3), carry(3));
V4 : MyALU1bit port map(A(4), B(4), S, carry(3), Q(4), carry(4));
V5 : MyALU1bit port map(A(5), B(5), S, carry(4), Q(5), carry(5));
V6 : MyALU1bit port map(A(6), B(6), S, carry(5), Q(6), carry(6));
V7 : MyALU1bit port map(A(7), B(7), S, carry(6), Q(7), carry(7));
V8 : MyALU1bit port map(A(8), B(8), S, carry(7), Q(8), carry(8));
V9 : MyALU1bit port map(A(9), B(9), S, carry(8), Q(9), carry(9));
V10 : MyALU1bit port map(A(10), B(10), S, carry(9), Q(10), carry(10));
V11 : MyALU1bit port map(A(11), B(11), S, carry(10), Q(11), carry(11));
V12 : MyALU1bit port map(A(12), B(12), S, carry(11), Q(12), carry(12));
V13 : MyALU1bit port map(A(13), B(13), S, carry(12), Q(13), carry(13));
V14 : MyALU1bit port map(A(14), B(14), S, carry(13), Q(14), carry(14));
V15 : MyALU1bit port map(A(15), B(15), S, carry(14), Q(15), carry(15));

--overflow
dec: MyDecoder3to8 port map(S, Qo);
--v16: MyAnd2 port map(Qo(0), Carry(15), Cout1);
--v17: MyAnd2 port map(Qo(1), Carry(15), Cout2);
--v18: MyOr2  port map(Cout1, Cout2, Overflow);
V16 : MyOr2 port map(Qo(0), Qo(1), Cout2);
V17 : MyXor2 port map(carry(14), carry(15), Cout3);
V18 : MyAnd2 port map(Cout2, Cout3, Overflow);

end StructuralMyALU16bit;