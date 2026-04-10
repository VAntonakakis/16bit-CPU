library ieee;
use ieee.std_logic_1164.all;

entity MyFFMux2to1 is port(
    R : in std_logic;
    I : in std_logic_vector (15 downto 0);
    C : in std_logic;
	 E : in std_logic;
	 S : in std_logic;
    O : out std_logic_vector (15 downto 0));
end MyFFMux2to1;

architecture structural of MyFFMux2to1 is

component MyFlipFlopF_16 is port(
	R : in std_logic;
	I : in std_logic_vector(15 downto 0);
	C : in std_logic;
	E : in std_logic;
	O : out std_logic_vector(15 downto 0));
end component;

component MyFlipFlopR_16 is port(
	R : in std_logic;
	I : in std_logic_vector(15 downto 0);
	C : in std_logic;
	E : in std_logic;
	O : out std_logic_vector(15 downto 0));
end component;

component MyMux2to1_16bit is port(
    A : in std_logic_vector (15 downto 0);
    B : in std_logic_vector (15 downto 0);
    S : in std_logic;
    Q : out std_logic_vector (15 downto 0));
end component;

-- RFFS = rising flip-flop signal, F gia falling
signal RFFS, FFFS : std_logic_vector(15 downto 0);

begin
	RFF : MyFlipFlopR_16 port map (R => R, I => I, C => C, E => E, O => RFFS);
	FFF : MyFlipFlopF_16 port map (R => R, I => I, C => C, E => E, O => FFFS);
	MUX : MyMux2to1_16bit port map (A => RFFS, B => FFFS, S => S, Q => O);
	
end structural;