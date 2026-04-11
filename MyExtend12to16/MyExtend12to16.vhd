library ieee;
use ieee.std_logic_1164.all;

entity MyExtend12to16 is
    port (
        Input  : in  std_logic_vector(11 downto 0);
        Output : out std_logic_vector(15 downto 0)
    );
end MyExtend12to16;

architecture Structural of MyExtend12to16 is
begin
    Output(0)  <= Input(0);
    Output(1)  <= Input(1);
    Output(2)  <= Input(2);
    Output(3)  <= Input(3);
    Output(4)  <= Input(4);
    Output(5)  <= Input(5);
    Output(6)  <= Input(6);
    Output(7)  <= Input(7);
    Output(8)  <= Input(8);
    Output(9)  <= Input(9);
    Output(10) <= Input(10);
    Output(11) <= Input(11);

    Output(12) <= Input(11);
    Output(13) <= Input(11);
    Output(14) <= Input(11);
    Output(15) <= Input(11);
end Structural;