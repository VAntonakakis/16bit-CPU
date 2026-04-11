library ieee;
use ieee.std_logic_1164.all;

entity MyJumpAddress is
    port (
        jumpAD    : in  std_logic_vector(11 downto 0);
        instrP2AD : in  std_logic_vector(15 downto 0);
        EjumpAD   : out std_logic_vector(15 downto 0)
    );
end MyJumpAddress;

architecture Structural of MyJumpAddress is

    component MyExtend12to16 is
        port (
            Input  : in  std_logic_vector(11 downto 0);
            Output : out std_logic_vector(15 downto 0)
        );
    end component;

    component MyFullAdder16bit is
        port (
            A    : in  std_logic_vector(15 downto 0);
            B    : in  std_logic_vector(15 downto 0);
            Cin  : in  std_logic;
            Sum  : out std_logic_vector(15 downto 0);
            Cout : out std_logic
        );
    end component;

    signal extended  : std_logic_vector(15 downto 0);
    signal multed    : std_logic_vector(15 downto 0);
    signal dummyCout : std_logic;

begin

    v0 : MyExtend12to16
        port map (
            Input  => jumpAD,
            Output => extended
        );

    multed(0)  <= '0';
    multed(1)  <= extended(0);
    multed(2)  <= extended(1);
    multed(3)  <= extended(2);
    multed(4)  <= extended(3);
    multed(5)  <= extended(4);
    multed(6)  <= extended(5);
    multed(7)  <= extended(6);
    multed(8)  <= extended(7);
    multed(9)  <= extended(8);
    multed(10) <= extended(9);
    multed(11) <= extended(10);
    multed(12) <= extended(11);
    multed(13) <= extended(12);
    multed(14) <= extended(13);
    multed(15) <= extended(14);

    v1 : MyFullAdder16bit
        port map (
            A    => multed,
            B    => instrP2AD,
            Cin  => '0',
            Sum  => EjumpAD,
            Cout => dummyCout
        );

end Structural;