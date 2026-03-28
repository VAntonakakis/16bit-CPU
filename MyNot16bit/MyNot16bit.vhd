library ieee;
use ieee.std_logic_1164.all;

entity MyNot16bit is port (
	A : in std_logic_vector (15 downto 0);
	Q : out std_logic_vector (15 downto 0));
end MyNot16bit;

architecture StructMyNot16bit of MyNot16bit is
component MyNot is port(
	A : in std_logic;
	Q : out std_logic);
end component;

begin
v0: MyNot port map (A(0), Q(0));
v1: MyNot port map (A(1), Q(1));
v2: MyNot port map (A(2), Q(2));
v3: MyNot port map (A(3), Q(3));
v4: MyNot port map (A(4), Q(4));
v5: MyNot port map (A(5), Q(5));
v6: MyNot port map (A(6), Q(6));
v7: MyNot port map (A(7), Q(7));
v8: MyNot port map (A(8), Q(8));
v9: MyNot port map (A(9), Q(9));
v10: MyNot port map (A(10), Q(10));
v11: MyNot port map (A(11), Q(11));
v12: MyNot port map (A(12), Q(12));
v13: MyNot port map (A(13), Q(13));
v14: MyNot port map (A(14), Q(14));
v15: MyNot port map (A(15), Q(15));

end StructMyNot16bit;