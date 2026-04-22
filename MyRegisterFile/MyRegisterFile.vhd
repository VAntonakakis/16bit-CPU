library ieee;
use ieee.std_logic_1164.all;

entity MyRegisterFile is port (
    Clock    : in  std_logic;
    Read1AD  : in  std_logic_vector(2 downto 0);
    Read2AD  : in  std_logic_vector(2 downto 0);
    Write1AD : in  std_logic_vector(2 downto 0);
    Write1   : in  std_logic_vector(15 downto 0);
    Read1    : out std_logic_vector(15 downto 0);
    Read2    : out std_logic_vector(15 downto 0);
    OUTall   : out std_logic_vector(127 downto 0)
);
end MyRegisterFile;

architecture Structural of MyRegisterFile is

component MyRegister16bit is generic (N : integer := 16); port (
   Input   : in  std_logic_vector(N-1 downto 0);
   Clock   : in  std_logic;
   Enable  : in  std_logic;
   Reset_n : in  std_logic;
   Output  : out std_logic_vector(N-1 downto 0));
end component;

component MyPseudoRegisterZero is port (
   Input   : in  std_logic_vector(15 downto 0);
   Clock   : in  std_logic;
   Enable  : in  std_logic;
   Reset_n : in  std_logic;
   Output  : out std_logic_vector(15 downto 0));
end component;

component MyDecoder3to8 is port (
   S : in  std_logic_vector(2 downto 0);
   Q : out std_logic_vector(7 downto 0));
end component;

component MyMux8to1_16bit is port (
   S : in  std_logic_vector(2 downto 0);
   A : in  std_logic_vector(15 downto 0);
   B : in  std_logic_vector(15 downto 0);
   C : in  std_logic_vector(15 downto 0);
   D : in  std_logic_vector(15 downto 0);
   E : in  std_logic_vector(15 downto 0);
   F : in  std_logic_vector(15 downto 0);
   G : in  std_logic_vector(15 downto 0);
   H : in  std_logic_vector(15 downto 0);
   Q : out std_logic_vector(15 downto 0));
end component;

signal decOut : std_logic_vector(7 downto 0);

signal reg0_out, reg1_out, reg2_out, reg3_out : std_logic_vector(15 downto 0);
signal reg4_out, reg5_out, reg6_out, reg7_out : std_logic_vector(15 downto 0);

begin
	v0 : MyDecoder3to8 port map (Write1AD, decOut);
	
   reg0 : MyPseudoRegisterZero port map (Write1, Clock, decOut(0), '1', reg0_out);
   reg1 : MyRegister16bit generic map (N => 16) port map (Write1, Clock, decOut(1), '1', reg1_out);
	reg2 : MyRegister16bit generic map (N => 16) port map (Write1, Clock, decOut(2), '1', reg2_out);
   reg3 : MyRegister16bit generic map (N => 16) port map (Write1, Clock, decOut(3), '1', reg3_out);
   reg4 : MyRegister16bit generic map (N => 16) port map (Write1, Clock, decOut(4), '1', reg4_out);
	reg5 : MyRegister16bit generic map (N => 16) port map (Write1, Clock, decOut(5), '1', reg5_out);
   reg6 : MyRegister16bit generic map (N => 16) port map (Write1, Clock, decOut(6), '1', reg6_out);
   reg7 : MyRegister16bit generic map (N => 16) port map (Write1, Clock, decOut(7), '1', reg7_out);

   read_mux1 : MyMux8to1_16bit port map (Read1AD,reg0_out,reg1_out,reg2_out,reg3_out,reg4_out,reg5_out,reg6_out,reg7_out,Read1);
   read_mux2 : MyMux8to1_16bit port map (Read2AD,reg0_out,reg1_out,reg2_out,reg3_out,reg4_out,reg5_out, reg6_out,reg7_out,Read2);

   OUTall(15 downto 0)    <= reg0_out;
   OUTall(31 downto 16)   <= reg1_out;
   OUTall(47 downto 32)   <= reg2_out;
   OUTall(63 downto 48)   <= reg3_out;
   OUTall(79 downto 64)   <= reg4_out;
   OUTall(95 downto 80)   <= reg5_out;
   OUTall(111 downto 96)  <= reg6_out;
   OUTall(127 downto 112) <= reg7_out;
end Structural;