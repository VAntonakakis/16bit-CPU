library ieee;
use ieee.std_logic_1164.all;

entity MyOr2 is port(
	A : in std_logic;
	B : in std_logic;
	Q : out std_logic);
end MyOr2;

architecture BehavioralMyOr2 of MyOr2 is begin
Q <= A OR B;
end BehavioralMyOr2;
