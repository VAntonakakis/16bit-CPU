library ieee;
use ieee.std_logic_1164.all;

entity MyRegister16bit is
    generic (
        N : integer := 16
    );
    port (
        Input   : in  std_logic_vector(N-1 downto 0);
        Clock   : in  std_logic;
        Enable  : in  std_logic;
        Reset_n : in  std_logic;
        Output  : out std_logic_vector(N-1 downto 0)
    );
end MyRegister16bit;

architecture Structural of MyRegister16bit is

    component flipflopR_1 is
        port (
            R : in  std_logic;
            I : in  std_logic;
            C : in  std_logic;
            E : in  std_logic;
            O : out std_logic
        );
    end component;

begin
	 gen_register : for i in 0 to N-1 generate
    begin
        vff : flipflopR_1
            port map (
                R => Reset_n,
                I => Input(i),
                C => Clock,
                E => Enable,
                O => Output(i)
            );
    end generate;

end Structural;