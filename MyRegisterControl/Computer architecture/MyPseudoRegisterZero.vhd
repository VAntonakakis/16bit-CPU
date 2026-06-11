library ieee;
use ieee.std_logic_1164.all;

entity MyPseudoRegisterZero is port (
   Input   : in  std_logic_vector(15 downto 0);
   Clock   : in  std_logic;
   Enable  : in  std_logic;
   Reset_n : in  std_logic;
   Output  : out std_logic_vector(15 downto 0)
);
end MyPseudoRegisterZero;

architecture Structural of MyPseudoRegisterZero is 
component MyAnd16bit is port (
   A : in  std_logic_vector(15 downto 0);
	B : in  std_logic_vector(15 downto 0);
	Q : out std_logic_vector(15 downto 0));
end component;

signal ZeroVector : std_logic_vector(15 downto 0);

begin
ZeroVector <= "0000000000000000";
v0 : MyAnd16bit port map (Input, ZeroVector, Output);
end Structural;