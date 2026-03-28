library ieee;
use ieee.std_logic_1164.all;

entity TwoComplement16bit is port(
	R : in std_logic_vector (15 downto 0);
	N : out Std_logic_vector (15 downto 0);
	Overflow : out std_logic);
end TwoComplement16bit;

architecture StructTwoComplement16bit of TwoComplement16bit is
component MyNot is port(
	A : in std_logic;
	Q : out std_logic);
end component;

component MyFullAdder16bit is port(
	A : in std_logic_vector (15 downto 0);
	B : in std_logic_vector (15 downto 0);
	Cin : in std_logic;
	Sum : out std_logic_vector (15 downto 0);
	Cout : out std_logic);
end component;

signal C, B, A : std_logic_vector (15 downto 0);
signal Cin : std_logic;
begin

B <= (others => '0');
Cin <= '1';
v0 : MyNot port map(A => R(0), Q => A(0));
v1 : MyNot port map(A => R(1), Q => A(1));
v2 : MyNot port map(A => R(2), Q => A(2));
v3 : MyNot port map(A => R(3), Q => A(3));
v4 : MyNot port map(A => R(4), Q => A(4));
v5 : MyNot port map(A => R(5), Q => A(5));
v6 : MyNot port map(A => R(6), Q => A(6));
v7 : MyNot port map(A => R(7), Q => A(7));
v8 : MyNot port map(A => R(8), Q => A(8));
v9 : MyNot port map(A => R(9), Q => A(9));
v10 : MyNot port map(A => R(10), Q => A(10));
v11 : MyNot port map(A => R(11), Q => A(11));
v12 : MyNot port map(A => R(12), Q => A(12));
v13 : MyNot port map(A => R(13), Q => A(13));
v14 : MyNot port map(A => R(14), Q => A(14));
v15 : MyNot port map(A => R(15), Q => A(15));
v16 : MyFullAdder16bit port map(A => A, B => B, Cin => Cin, Sum => N, Cout => Overflow);
end StructTwoComplement16bit;
