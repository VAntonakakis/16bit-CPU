library ieee;
use ieee.std_logic_1164.all;

entity MyNot is port(
	A : in std_logic;
	Q : out std_logic);
end MyNot;

architecture BehavioralMyNot of MyNot is begin
Q <= Not A;
end BehavioralMyNot;