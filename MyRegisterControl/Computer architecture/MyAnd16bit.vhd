library ieee;
use ieee.std_logic_1164.all;

entity MyAnd16bit is port (
	A : in std_logic_vector (15 downto 0);
	B : in std_logic_vector (15 downto 0);
	Q : out std_logic_vector (15 downto 0));
end MyAnd16bit;

architecture StructMyAnd16bit of MyAnd16bit is
component MyAnd2 is port(
	A : in std_logic;
	B : in std_logic;
	Q : out std_logic);
end component;

begin
v0: MyAnd2 port map (A(0), B(0), Q(0));
v1: MyAnd2 port map (A(1), B(1), Q(1));
v2: MyAnd2 port map (A(2), B(2), Q(2));
v3: MyAnd2 port map (A(3), B(3), Q(3));
v4: MyAnd2 port map (A(4), B(4), Q(4));
v5: MyAnd2 port map (A(5), B(5), Q(5));
v6: MyAnd2 port map (A(6), B(6), Q(6));
v7: MyAnd2 port map (A(7), B(7), Q(7));
v8: MyAnd2 port map (A(8), B(8), Q(8));
v9: MyAnd2 port map (A(9), B(9), Q(9));
v10: MyAnd2 port map (A(10), B(10), Q(10));
v11: MyAnd2 port map (A(11), B(11), Q(11));
v12: MyAnd2 port map (A(12), B(12), Q(12));
v13: MyAnd2 port map (A(13), B(13), Q(13));
v14: MyAnd2 port map (A(14), B(14), Q(14));
v15: MyAnd2 port map (A(15), B(15), Q(15));

end StructMyAnd16bit;