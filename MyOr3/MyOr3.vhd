library ieee;
use ieee.std_logic_1164.all;

entity MyOr3 is port(
	A : in std_logic;
	B : in std_logic;
	C : in std_logic;
	Q : out std_logic);
end MyOr3;

architecture BehavioralMyOr3 of MyOr3 is begin
Q <= A OR B OR C;
end BehavioralMyOr3;
