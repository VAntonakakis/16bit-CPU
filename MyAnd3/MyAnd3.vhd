library ieee;
use ieee.std_logic_1164.all;

entity MyAnd3 is port(
	A : in std_logic;
	B : in std_logic;
	C : in std_logic;
	Q : out std_logic);
end MyAnd3;

architecture behavioralOfMyAnd3 of MyAnd3 is
begin
Q <= A AND B AND C;
end behavioralOfMyAnd3;