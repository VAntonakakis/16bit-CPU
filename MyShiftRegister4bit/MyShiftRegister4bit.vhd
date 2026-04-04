library ieee;
use ieee.std_logic_1164.all;

entity MyShiftRegister4bit is
    port (
        Input   : in  std_logic;
        Clock   : in  std_logic;
        Enable  : in  std_logic;
        Reset_n : in  std_logic;
        Output  : out std_logic_vector(3 downto 0)
    );
end MyShiftRegister4bit;

architecture Structural of MyShiftRegister4bit is

    component flipflopR_1 is
        port (
            R : in  std_logic;
            I : in  std_logic;
            C : in  std_logic;
            E : in  std_logic;
            O : out std_logic
        );
    end component;

    signal q1, q2, q3, q4 : std_logic;

begin

    v0 : flipflopR_1
        port map (
            R => Reset_n,
            I => Input,
            C => Clock,
            E => Enable,
            O => q1
        );

    v1 : flipflopR_1
        port map (
            R => Reset_n,
            I => q1,
            C => Clock,
            E => Enable,
            O => q2
        );

    v2 : flipflopR_1
        port map (
            R => Reset_n,
            I => q2,
            C => Clock,
            E => Enable,
            O => q3
        );

    v3 : flipflopR_1
        port map (
            R => Reset_n,
            I => q3,
            C => Clock,
            E => Enable,
            O => q4
        );
	 	  
	 Output(0) <= q1;
    Output(1) <= q2;
    Output(2) <= q3;
    Output(3) <= q4;

end Structural;