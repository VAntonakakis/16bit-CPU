library ieee;
use ieee.std_logic_1164.all;

entity MyDecoder3to8 is port(
    S : in std_logic_vector(2 downto 0);
    Q : out std_logic_vector(7 downto 0));
end MyDecoder3to8;

architecture StructuralMyDecoder3to8 of MyDecoder3to8 is

component MyDecoder1to2 is port(
    S : in std_logic;
    Q1 : out std_logic;
    Q2 : out std_logic);
end component;

component MyAnd2 is port(
    A : in std_logic;
    B : in std_logic;
    Q : out std_logic);
end component;

-- decoded bits
signal S2_0, S2_1 : std_logic;
signal S1_0, S1_1 : std_logic;
signal S0_0, S0_1 : std_logic;

-- intermediate signals
signal t0, t1, t2, t3, t4, t5, t6, t7 : std_logic;

begin

-- 1→2 decoders
v0: MyDecoder1to2 port map(S(2), S2_0, S2_1);
v1: MyDecoder1to2 port map(S(1), S1_0, S1_1);
v2: MyDecoder1to2 port map(S(0), S0_0, S0_1);

--000
v3: MyAnd2 port map(S2_0, S1_0, t0);
v4: MyAnd2 port map(t0, S0_0, Q(0));

--001
v5: MyAnd2 port map(S2_0, S1_0, t1);
v6: MyAnd2 port map(t1, S0_1, Q(1));

--010
v7: MyAnd2 port map(S2_0, S1_1, t2);
v8: MyAnd2 port map(t2, S0_0, Q(2));

--011
v9: MyAnd2 port map(S2_0, S1_1, t3);
v10: MyAnd2 port map(t3, S0_1, Q(3));

--100
v11: MyAnd2 port map(S2_1, S1_0, t4);
v12: MyAnd2 port map(t4, S0_0, Q(4));

--101
v13: MyAnd2 port map(S2_1, S1_0, t5);
v14: MyAnd2 port map(t5, S0_1, Q(5));

--110
v15: MyAnd2 port map(S2_1, S1_1, t6);
v16: MyAnd2 port map(t6, S0_0, Q(6));

--111
v17: MyAnd2 port map(S2_1, S1_1, t7);
v18: MyAnd2 port map(t7, S0_1, Q(7));

end StructuralMyDecoder3to8;