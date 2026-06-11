library ieee;
use ieee.std_logic_1164.all;

entity MyOr4 is port(
	A : in std_logic;
	B : in std_logic;
	C : in std_logic;
	D : in std_logic;
	Q : out std_logic);
end MyOr4;

architecture BehavioralMyOr4 of MyOr4 is begin
Q <= A OR B OR C OR D;
end BehavioralMyOr4;
