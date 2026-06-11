library ieee;
use ieee.std_logic_1164.all;

entity MyAnd2 is port(
A : in std_logic;
B : in std_logic;
Q : out std_logic);
end MyAnd2;

architecture behavioralOfMyAnd2 of MyAnd2 is
begin
Q <= A AND B;
end behavioralOfMyAnd2;