library ieee;
use ieee.std_logic_1164.all;

entity MyMux2to1 is port(
    A : in std_logic;
    B : in std_logic;
    S : in std_logic;
    Q : out std_logic);
end MyMux2to1;

architecture StructuralMyMux2to1 of MyMux2to1 is
component MyAnd2 is port(
    A : in std_logic;
    B : in std_logic;
    Q : out std_logic);
end component;

component MyNot is port(
    A : in std_logic;
    Q : out std_logic);
end component;

component MyOr2 is port(
    A : in std_logic;
    B : in std_logic;
    Q : out std_logic);
end component;

signal SNot, P1, P2 : std_logic;

begin

v0 : MyNot port map(S, SNot);
v1 : MyAnd2 port map(A, SNot, P1);
v2 : MyAnd2 port map(B, S,  P2);
v3 : MyOr2  port map(P1, P2, Q);

end StructuralMyMux2to1;