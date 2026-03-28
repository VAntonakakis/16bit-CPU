library ieee;
use ieee.std_logic_1164.all;

entity TwoComplement16bit is port(
	A : in std_logic_vector (15 downto 0);
	Q : out Std_logic_vector (15 downto 0);
	Overflow : out std_logic);
end TwoComplement16bit;

architecture StructTwoComplement16bit of TwoComplement16bit is

component MyNot16bit is port(
	A : in std_logic_vector (15 downto 0);
	Q : out std_logic_vector (15 downto 0));
end component;

component MyFullAdder16bit is port(
	A : in std_logic_vector (15 downto 0);
	B : in std_logic_vector (15 downto 0);
	Cin : in std_logic;
	Sum : out std_logic_vector (15 downto 0);
	Cout : out std_logic);
end component;

signal nota, B : std_logic_vector (15 downto 0);
signal Cin : std_logic;
begin

B <= (others => '0');
Cin <= '1';
v0 : MyNot16bit port map(A, nota);
v16 : MyFullAdder16bit port map(nota, B, Cin, Q, Overflow);

end StructTwoComplement16bit;
