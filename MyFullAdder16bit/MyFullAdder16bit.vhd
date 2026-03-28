library ieee;
use ieee.std_logic_1164.all;

entity MyFullAdder16bit is port (
	A : in std_logic_vector (15 downto 0);
	B : in std_logic_vector (15 downto 0);
	Cin : in std_logic;
	Sum : out std_logic_vector (15 downto 0);
	Cout : out std_logic);
end MyFullAdder16bit;

architecture StructuralMyFullAdder16bit of MyFullAdder16bit is 
component MyFullAdder1bit is port(
	A : in std_logic;
	B : in std_logic;
	Cin : in std_logic;
	sum : out std_logic;
	Cout : out std_logic);
end component;


signal C : std_logic_vector (15 downto 1);
begin

v0 : MyFullAdder1bit port map (A(0), B(0), Cin, sum(0), c(1));
v1 : MyFullAdder1bit port map (A(1), B(1), C(1), sum(1), c(2));
v2 : MyFullAdder1bit port map (A(2), B(2), C(2), sum(2), c(3));
v3 : MyFullAdder1bit port map (A(3), B(3), C(3), sum(3), c(4));
v4 : MyFullAdder1bit port map (A(4), B(4), C(4), sum(4), c(5));
v5 : MyFullAdder1bit port map (A(5), B(5), C(5), sum(5), c(6));
v6 : MyFullAdder1bit port map (A(6), B(6), C(6), sum(6), c(7));
v7 : MyFullAdder1bit port map (A(7), B(7), C(7), sum(7), c(8));
v8 : MyFullAdder1bit port map (A(8), B(8), C(8), sum(8), c(9));
v9 : MyFullAdder1bit port map (A(9), B(9), C(9), sum(9), c(10));
v10 : MyFullAdder1bit port map (A(10), B(10), C(10), sum(10), c(11));
v11 : MyFullAdder1bit port map (A(11), B(11), C(11), sum(11), c(12));
v12 : MyFullAdder1bit port map (A(12), B(12), C(12), sum(12), c(13));
v13 : MyFullAdder1bit port map (A(13), B(13), C(13), sum(13), c(14));
v14 : MyFullAdder1bit port map (A(14), B(14), C(14), sum(14), c(15));
v15 : MyFullAdder1bit port map (A(15), B(15), C(15), sum(15), Cout);

end StructuralMyFullAdder16bit;