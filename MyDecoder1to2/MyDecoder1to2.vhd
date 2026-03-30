library ieee;
use ieee.std_logic_1164.all;

entity MyDecoder1to2 is port(
    S : in std_logic;
    Q1 : out std_logic;
    Q2 : out std_logic);
end MyDecoder1to2;

architecture StructuralMyDecoder1to2 of MyDecoder1to2 is

component MyNot is port(
	A : in std_logic;
	Q : out std_logic);
end component;

signal Sn : std_logic;

begin

V0: MyNot port map(S, Sn);

Q1 <= Sn;
Q2 <= S;

end StructuralMyDecoder1to2;