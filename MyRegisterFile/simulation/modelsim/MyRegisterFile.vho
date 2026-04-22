-- Copyright (C) 2019  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 19.1.0 Build 670 09/22/2019 SJ Lite Edition"

-- DATE "04/22/2026 14:54:07"

-- 
-- Device: Altera 10M08DAF484C8G Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	MyRegisterFile IS
    PORT (
	Clock : IN std_logic;
	Read1AD : IN std_logic_vector(2 DOWNTO 0);
	Read2AD : IN std_logic_vector(2 DOWNTO 0);
	Write1AD : IN std_logic_vector(2 DOWNTO 0);
	Write1 : IN std_logic_vector(15 DOWNTO 0);
	Read1 : OUT std_logic_vector(15 DOWNTO 0);
	Read2 : OUT std_logic_vector(15 DOWNTO 0);
	OUTall : OUT std_logic_vector(127 DOWNTO 0)
	);
END MyRegisterFile;

-- Design Ports Information
-- Read1[0]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Read1[1]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Read1[2]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Read1[3]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Read1[4]	=>  Location: PIN_W12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Read1[5]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Read1[6]	=>  Location: PIN_N22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Read1[7]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Read1[8]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Read1[9]	=>  Location: PIN_L20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Read1[10]	=>  Location: PIN_L14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Read1[11]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Read1[12]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Read1[13]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Read1[14]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Read1[15]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Read2[0]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Read2[1]	=>  Location: PIN_P13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Read2[2]	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Read2[3]	=>  Location: PIN_W4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Read2[4]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Read2[5]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Read2[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Read2[7]	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Read2[8]	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Read2[9]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Read2[10]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Read2[11]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Read2[12]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Read2[13]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Read2[14]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Read2[15]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[0]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[1]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[2]	=>  Location: PIN_R20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[3]	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[4]	=>  Location: PIN_J9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[5]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[6]	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[7]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[8]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[9]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[10]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[11]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[12]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[13]	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[14]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[15]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[16]	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[17]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[18]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[19]	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[20]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[21]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[22]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[23]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[24]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[25]	=>  Location: PIN_K14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[26]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[27]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[28]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[29]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[30]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[31]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[32]	=>  Location: PIN_P10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[33]	=>  Location: PIN_P15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[34]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[35]	=>  Location: PIN_AA3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[36]	=>  Location: PIN_W14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[37]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[38]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[39]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[40]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[41]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[42]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[43]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[44]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[45]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[46]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[47]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[48]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[49]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[50]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[51]	=>  Location: PIN_AA5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[52]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[53]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[54]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[55]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[56]	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[57]	=>  Location: PIN_J21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[58]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[59]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[60]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[61]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[62]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[63]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[64]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[65]	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[66]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[67]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[68]	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[69]	=>  Location: PIN_K6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[70]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[71]	=>  Location: PIN_K5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[72]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[73]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[74]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[75]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[76]	=>  Location: PIN_M14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[77]	=>  Location: PIN_H3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[78]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[79]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[80]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[81]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[82]	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[83]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[84]	=>  Location: PIN_K4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[85]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[86]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[87]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[88]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[89]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[90]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[91]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[92]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[93]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[94]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[95]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[96]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[97]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[98]	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[99]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[100]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[101]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[102]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[103]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[104]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[105]	=>  Location: PIN_M15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[106]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[107]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[108]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[109]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[110]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[111]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[112]	=>  Location: PIN_W7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[113]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[114]	=>  Location: PIN_W3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[115]	=>  Location: PIN_AA6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[116]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[117]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[118]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[119]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[120]	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[121]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[122]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[123]	=>  Location: PIN_R18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[124]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[125]	=>  Location: PIN_J8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[126]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[127]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Read1AD[1]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Read1AD[0]	=>  Location: PIN_N14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Read1AD[2]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Read2AD[1]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Read2AD[0]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Read2AD[2]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Write1[0]	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clock	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Write1AD[2]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Write1AD[1]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Write1AD[0]	=>  Location: PIN_H4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Write1[1]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Write1[2]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Write1[3]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Write1[4]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Write1[5]	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Write1[6]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Write1[7]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Write1[8]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Write1[9]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Write1[10]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Write1[11]	=>  Location: PIN_P20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Write1[12]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Write1[13]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Write1[14]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Write1[15]	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF MyRegisterFile IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Clock : std_logic;
SIGNAL ww_Read1AD : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_Read2AD : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_Write1AD : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_Write1 : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_Read1 : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_Read2 : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_OUTall : std_logic_vector(127 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \Clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \Read1[0]~output_o\ : std_logic;
SIGNAL \Read1[1]~output_o\ : std_logic;
SIGNAL \Read1[2]~output_o\ : std_logic;
SIGNAL \Read1[3]~output_o\ : std_logic;
SIGNAL \Read1[4]~output_o\ : std_logic;
SIGNAL \Read1[5]~output_o\ : std_logic;
SIGNAL \Read1[6]~output_o\ : std_logic;
SIGNAL \Read1[7]~output_o\ : std_logic;
SIGNAL \Read1[8]~output_o\ : std_logic;
SIGNAL \Read1[9]~output_o\ : std_logic;
SIGNAL \Read1[10]~output_o\ : std_logic;
SIGNAL \Read1[11]~output_o\ : std_logic;
SIGNAL \Read1[12]~output_o\ : std_logic;
SIGNAL \Read1[13]~output_o\ : std_logic;
SIGNAL \Read1[14]~output_o\ : std_logic;
SIGNAL \Read1[15]~output_o\ : std_logic;
SIGNAL \Read2[0]~output_o\ : std_logic;
SIGNAL \Read2[1]~output_o\ : std_logic;
SIGNAL \Read2[2]~output_o\ : std_logic;
SIGNAL \Read2[3]~output_o\ : std_logic;
SIGNAL \Read2[4]~output_o\ : std_logic;
SIGNAL \Read2[5]~output_o\ : std_logic;
SIGNAL \Read2[6]~output_o\ : std_logic;
SIGNAL \Read2[7]~output_o\ : std_logic;
SIGNAL \Read2[8]~output_o\ : std_logic;
SIGNAL \Read2[9]~output_o\ : std_logic;
SIGNAL \Read2[10]~output_o\ : std_logic;
SIGNAL \Read2[11]~output_o\ : std_logic;
SIGNAL \Read2[12]~output_o\ : std_logic;
SIGNAL \Read2[13]~output_o\ : std_logic;
SIGNAL \Read2[14]~output_o\ : std_logic;
SIGNAL \Read2[15]~output_o\ : std_logic;
SIGNAL \OUTall[0]~output_o\ : std_logic;
SIGNAL \OUTall[1]~output_o\ : std_logic;
SIGNAL \OUTall[2]~output_o\ : std_logic;
SIGNAL \OUTall[3]~output_o\ : std_logic;
SIGNAL \OUTall[4]~output_o\ : std_logic;
SIGNAL \OUTall[5]~output_o\ : std_logic;
SIGNAL \OUTall[6]~output_o\ : std_logic;
SIGNAL \OUTall[7]~output_o\ : std_logic;
SIGNAL \OUTall[8]~output_o\ : std_logic;
SIGNAL \OUTall[9]~output_o\ : std_logic;
SIGNAL \OUTall[10]~output_o\ : std_logic;
SIGNAL \OUTall[11]~output_o\ : std_logic;
SIGNAL \OUTall[12]~output_o\ : std_logic;
SIGNAL \OUTall[13]~output_o\ : std_logic;
SIGNAL \OUTall[14]~output_o\ : std_logic;
SIGNAL \OUTall[15]~output_o\ : std_logic;
SIGNAL \OUTall[16]~output_o\ : std_logic;
SIGNAL \OUTall[17]~output_o\ : std_logic;
SIGNAL \OUTall[18]~output_o\ : std_logic;
SIGNAL \OUTall[19]~output_o\ : std_logic;
SIGNAL \OUTall[20]~output_o\ : std_logic;
SIGNAL \OUTall[21]~output_o\ : std_logic;
SIGNAL \OUTall[22]~output_o\ : std_logic;
SIGNAL \OUTall[23]~output_o\ : std_logic;
SIGNAL \OUTall[24]~output_o\ : std_logic;
SIGNAL \OUTall[25]~output_o\ : std_logic;
SIGNAL \OUTall[26]~output_o\ : std_logic;
SIGNAL \OUTall[27]~output_o\ : std_logic;
SIGNAL \OUTall[28]~output_o\ : std_logic;
SIGNAL \OUTall[29]~output_o\ : std_logic;
SIGNAL \OUTall[30]~output_o\ : std_logic;
SIGNAL \OUTall[31]~output_o\ : std_logic;
SIGNAL \OUTall[32]~output_o\ : std_logic;
SIGNAL \OUTall[33]~output_o\ : std_logic;
SIGNAL \OUTall[34]~output_o\ : std_logic;
SIGNAL \OUTall[35]~output_o\ : std_logic;
SIGNAL \OUTall[36]~output_o\ : std_logic;
SIGNAL \OUTall[37]~output_o\ : std_logic;
SIGNAL \OUTall[38]~output_o\ : std_logic;
SIGNAL \OUTall[39]~output_o\ : std_logic;
SIGNAL \OUTall[40]~output_o\ : std_logic;
SIGNAL \OUTall[41]~output_o\ : std_logic;
SIGNAL \OUTall[42]~output_o\ : std_logic;
SIGNAL \OUTall[43]~output_o\ : std_logic;
SIGNAL \OUTall[44]~output_o\ : std_logic;
SIGNAL \OUTall[45]~output_o\ : std_logic;
SIGNAL \OUTall[46]~output_o\ : std_logic;
SIGNAL \OUTall[47]~output_o\ : std_logic;
SIGNAL \OUTall[48]~output_o\ : std_logic;
SIGNAL \OUTall[49]~output_o\ : std_logic;
SIGNAL \OUTall[50]~output_o\ : std_logic;
SIGNAL \OUTall[51]~output_o\ : std_logic;
SIGNAL \OUTall[52]~output_o\ : std_logic;
SIGNAL \OUTall[53]~output_o\ : std_logic;
SIGNAL \OUTall[54]~output_o\ : std_logic;
SIGNAL \OUTall[55]~output_o\ : std_logic;
SIGNAL \OUTall[56]~output_o\ : std_logic;
SIGNAL \OUTall[57]~output_o\ : std_logic;
SIGNAL \OUTall[58]~output_o\ : std_logic;
SIGNAL \OUTall[59]~output_o\ : std_logic;
SIGNAL \OUTall[60]~output_o\ : std_logic;
SIGNAL \OUTall[61]~output_o\ : std_logic;
SIGNAL \OUTall[62]~output_o\ : std_logic;
SIGNAL \OUTall[63]~output_o\ : std_logic;
SIGNAL \OUTall[64]~output_o\ : std_logic;
SIGNAL \OUTall[65]~output_o\ : std_logic;
SIGNAL \OUTall[66]~output_o\ : std_logic;
SIGNAL \OUTall[67]~output_o\ : std_logic;
SIGNAL \OUTall[68]~output_o\ : std_logic;
SIGNAL \OUTall[69]~output_o\ : std_logic;
SIGNAL \OUTall[70]~output_o\ : std_logic;
SIGNAL \OUTall[71]~output_o\ : std_logic;
SIGNAL \OUTall[72]~output_o\ : std_logic;
SIGNAL \OUTall[73]~output_o\ : std_logic;
SIGNAL \OUTall[74]~output_o\ : std_logic;
SIGNAL \OUTall[75]~output_o\ : std_logic;
SIGNAL \OUTall[76]~output_o\ : std_logic;
SIGNAL \OUTall[77]~output_o\ : std_logic;
SIGNAL \OUTall[78]~output_o\ : std_logic;
SIGNAL \OUTall[79]~output_o\ : std_logic;
SIGNAL \OUTall[80]~output_o\ : std_logic;
SIGNAL \OUTall[81]~output_o\ : std_logic;
SIGNAL \OUTall[82]~output_o\ : std_logic;
SIGNAL \OUTall[83]~output_o\ : std_logic;
SIGNAL \OUTall[84]~output_o\ : std_logic;
SIGNAL \OUTall[85]~output_o\ : std_logic;
SIGNAL \OUTall[86]~output_o\ : std_logic;
SIGNAL \OUTall[87]~output_o\ : std_logic;
SIGNAL \OUTall[88]~output_o\ : std_logic;
SIGNAL \OUTall[89]~output_o\ : std_logic;
SIGNAL \OUTall[90]~output_o\ : std_logic;
SIGNAL \OUTall[91]~output_o\ : std_logic;
SIGNAL \OUTall[92]~output_o\ : std_logic;
SIGNAL \OUTall[93]~output_o\ : std_logic;
SIGNAL \OUTall[94]~output_o\ : std_logic;
SIGNAL \OUTall[95]~output_o\ : std_logic;
SIGNAL \OUTall[96]~output_o\ : std_logic;
SIGNAL \OUTall[97]~output_o\ : std_logic;
SIGNAL \OUTall[98]~output_o\ : std_logic;
SIGNAL \OUTall[99]~output_o\ : std_logic;
SIGNAL \OUTall[100]~output_o\ : std_logic;
SIGNAL \OUTall[101]~output_o\ : std_logic;
SIGNAL \OUTall[102]~output_o\ : std_logic;
SIGNAL \OUTall[103]~output_o\ : std_logic;
SIGNAL \OUTall[104]~output_o\ : std_logic;
SIGNAL \OUTall[105]~output_o\ : std_logic;
SIGNAL \OUTall[106]~output_o\ : std_logic;
SIGNAL \OUTall[107]~output_o\ : std_logic;
SIGNAL \OUTall[108]~output_o\ : std_logic;
SIGNAL \OUTall[109]~output_o\ : std_logic;
SIGNAL \OUTall[110]~output_o\ : std_logic;
SIGNAL \OUTall[111]~output_o\ : std_logic;
SIGNAL \OUTall[112]~output_o\ : std_logic;
SIGNAL \OUTall[113]~output_o\ : std_logic;
SIGNAL \OUTall[114]~output_o\ : std_logic;
SIGNAL \OUTall[115]~output_o\ : std_logic;
SIGNAL \OUTall[116]~output_o\ : std_logic;
SIGNAL \OUTall[117]~output_o\ : std_logic;
SIGNAL \OUTall[118]~output_o\ : std_logic;
SIGNAL \OUTall[119]~output_o\ : std_logic;
SIGNAL \OUTall[120]~output_o\ : std_logic;
SIGNAL \OUTall[121]~output_o\ : std_logic;
SIGNAL \OUTall[122]~output_o\ : std_logic;
SIGNAL \OUTall[123]~output_o\ : std_logic;
SIGNAL \OUTall[124]~output_o\ : std_logic;
SIGNAL \OUTall[125]~output_o\ : std_logic;
SIGNAL \OUTall[126]~output_o\ : std_logic;
SIGNAL \OUTall[127]~output_o\ : std_logic;
SIGNAL \Read1AD[2]~input_o\ : std_logic;
SIGNAL \Read1AD[1]~input_o\ : std_logic;
SIGNAL \Read1AD[0]~input_o\ : std_logic;
SIGNAL \read_mux1|v6|v3|v0|Q~2_combout\ : std_logic;
SIGNAL \Clock~input_o\ : std_logic;
SIGNAL \Clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \Write1[0]~input_o\ : std_logic;
SIGNAL \Write1AD[0]~input_o\ : std_logic;
SIGNAL \Write1AD[1]~input_o\ : std_logic;
SIGNAL \Write1AD[2]~input_o\ : std_logic;
SIGNAL \v0|v8|Q~0_combout\ : std_logic;
SIGNAL \reg2|gen_register:0:vff|O~q\ : std_logic;
SIGNAL \read_mux1|v6|v3|v0|Q~3_combout\ : std_logic;
SIGNAL \v0|v6|Q~combout\ : std_logic;
SIGNAL \reg1|gen_register:0:vff|O~q\ : std_logic;
SIGNAL \read_mux1|V0|v2|v0|Q~combout\ : std_logic;
SIGNAL \read_mux1|v6|v3|v0|Q~4_combout\ : std_logic;
SIGNAL \v0|v10|Q~0_combout\ : std_logic;
SIGNAL \reg3|gen_register:0:vff|O~q\ : std_logic;
SIGNAL \v0|v18|Q~0_combout\ : std_logic;
SIGNAL \reg7|gen_register:0:vff|O~q\ : std_logic;
SIGNAL \v0|v16|Q~0_combout\ : std_logic;
SIGNAL \reg6|gen_register:0:vff|O~q\ : std_logic;
SIGNAL \v0|v12|Q~0_combout\ : std_logic;
SIGNAL \reg4|gen_register:0:vff|O~q\ : std_logic;
SIGNAL \v0|v14|Q~0_combout\ : std_logic;
SIGNAL \reg5|gen_register:0:vff|O~q\ : std_logic;
SIGNAL \read_mux1|v6|v3|v0|Q~0_combout\ : std_logic;
SIGNAL \read_mux1|v6|v3|v0|Q~1_combout\ : std_logic;
SIGNAL \read_mux1|v6|v3|v0|Q~5_combout\ : std_logic;
SIGNAL \Write1[1]~input_o\ : std_logic;
SIGNAL \reg3|gen_register:1:vff|O~q\ : std_logic;
SIGNAL \reg1|gen_register:1:vff|O~q\ : std_logic;
SIGNAL \read_mux1|V0|v2|v1|Q~combout\ : std_logic;
SIGNAL \reg4|gen_register:1:vff|O~q\ : std_logic;
SIGNAL \reg5|gen_register:1:vff|O~q\ : std_logic;
SIGNAL \read_mux1|v6|v3|v1|Q~0_combout\ : std_logic;
SIGNAL \reg6|gen_register:1:vff|O~q\ : std_logic;
SIGNAL \reg7|gen_register:1:vff|O~q\ : std_logic;
SIGNAL \read_mux1|v6|v3|v1|Q~1_combout\ : std_logic;
SIGNAL \read_mux1|v6|v3|v1|Q~2_combout\ : std_logic;
SIGNAL \reg2|gen_register:1:vff|O~q\ : std_logic;
SIGNAL \read_mux1|v6|v3|v1|Q~3_combout\ : std_logic;
SIGNAL \Write1[2]~input_o\ : std_logic;
SIGNAL \reg1|gen_register:2:vff|O~q\ : std_logic;
SIGNAL \read_mux1|V0|v2|v2|Q~combout\ : std_logic;
SIGNAL \reg2|gen_register:2:vff|O~q\ : std_logic;
SIGNAL \read_mux1|v6|v3|v2|Q~2_combout\ : std_logic;
SIGNAL \reg4|gen_register:2:vff|O~q\ : std_logic;
SIGNAL \reg5|gen_register:2:vff|O~q\ : std_logic;
SIGNAL \read_mux1|v6|v3|v2|Q~0_combout\ : std_logic;
SIGNAL \reg6|gen_register:2:vff|O~q\ : std_logic;
SIGNAL \reg7|gen_register:2:vff|O~q\ : std_logic;
SIGNAL \read_mux1|v6|v3|v2|Q~1_combout\ : std_logic;
SIGNAL \reg3|gen_register:2:vff|O~q\ : std_logic;
SIGNAL \read_mux1|v6|v3|v2|Q~3_combout\ : std_logic;
SIGNAL \Write1[3]~input_o\ : std_logic;
SIGNAL \reg7|gen_register:3:vff|O~q\ : std_logic;
SIGNAL \reg6|gen_register:3:vff|O~q\ : std_logic;
SIGNAL \reg4|gen_register:3:vff|O~q\ : std_logic;
SIGNAL \reg5|gen_register:3:vff|O~q\ : std_logic;
SIGNAL \read_mux1|v6|v3|v3|Q~0_combout\ : std_logic;
SIGNAL \read_mux1|v6|v3|v3|Q~1_combout\ : std_logic;
SIGNAL \reg1|gen_register:3:vff|O~q\ : std_logic;
SIGNAL \read_mux1|V0|v2|v3|Q~combout\ : std_logic;
SIGNAL \read_mux1|v6|v3|v3|Q~2_combout\ : std_logic;
SIGNAL \reg2|gen_register:3:vff|O~q\ : std_logic;
SIGNAL \reg3|gen_register:3:vff|O~q\ : std_logic;
SIGNAL \read_mux1|v6|v3|v3|Q~3_combout\ : std_logic;
SIGNAL \Write1[4]~input_o\ : std_logic;
SIGNAL \reg7|gen_register:4:vff|O~q\ : std_logic;
SIGNAL \reg6|gen_register:4:vff|O~q\ : std_logic;
SIGNAL \reg4|gen_register:4:vff|O~q\ : std_logic;
SIGNAL \reg5|gen_register:4:vff|O~q\ : std_logic;
SIGNAL \read_mux1|v6|v3|v4|Q~0_combout\ : std_logic;
SIGNAL \read_mux1|v6|v3|v4|Q~1_combout\ : std_logic;
SIGNAL \reg2|gen_register:4:vff|O~q\ : std_logic;
SIGNAL \reg1|gen_register:4:vff|O~q\ : std_logic;
SIGNAL \read_mux1|V0|v2|v4|Q~combout\ : std_logic;
SIGNAL \read_mux1|v6|v3|v4|Q~2_combout\ : std_logic;
SIGNAL \reg3|gen_register:4:vff|O~q\ : std_logic;
SIGNAL \read_mux1|v6|v3|v4|Q~3_combout\ : std_logic;
SIGNAL \Write1[5]~input_o\ : std_logic;
SIGNAL \reg7|gen_register:5:vff|O~q\ : std_logic;
SIGNAL \reg6|gen_register:5:vff|O~q\ : std_logic;
SIGNAL \reg4|gen_register:5:vff|O~q\ : std_logic;
SIGNAL \reg5|gen_register:5:vff|O~q\ : std_logic;
SIGNAL \read_mux1|v6|v3|v5|Q~0_combout\ : std_logic;
SIGNAL \read_mux1|v6|v3|v5|Q~1_combout\ : std_logic;
SIGNAL \reg1|gen_register:5:vff|O~q\ : std_logic;
SIGNAL \read_mux1|V0|v2|v5|Q~combout\ : std_logic;
SIGNAL \read_mux1|v6|v3|v5|Q~2_combout\ : std_logic;
SIGNAL \reg3|gen_register:5:vff|O~q\ : std_logic;
SIGNAL \reg2|gen_register:5:vff|O~q\ : std_logic;
SIGNAL \read_mux1|v6|v3|v5|Q~3_combout\ : std_logic;
SIGNAL \Write1[6]~input_o\ : std_logic;
SIGNAL \reg4|gen_register:6:vff|O~q\ : std_logic;
SIGNAL \reg5|gen_register:6:vff|O~feeder_combout\ : std_logic;
SIGNAL \reg5|gen_register:6:vff|O~q\ : std_logic;
SIGNAL \read_mux1|v6|v3|v6|Q~0_combout\ : std_logic;
SIGNAL \reg7|gen_register:6:vff|O~q\ : std_logic;
SIGNAL \reg6|gen_register:6:vff|O~q\ : std_logic;
SIGNAL \read_mux1|v6|v3|v6|Q~1_combout\ : std_logic;
SIGNAL \reg3|gen_register:6:vff|O~q\ : std_logic;
SIGNAL \reg1|gen_register:6:vff|O~q\ : std_logic;
SIGNAL \read_mux1|V0|v2|v6|Q~combout\ : std_logic;
SIGNAL \reg2|gen_register:6:vff|O~q\ : std_logic;
SIGNAL \read_mux1|v6|v3|v6|Q~2_combout\ : std_logic;
SIGNAL \read_mux1|v6|v3|v6|Q~3_combout\ : std_logic;
SIGNAL \Write1[7]~input_o\ : std_logic;
SIGNAL \reg3|gen_register:7:vff|O~q\ : std_logic;
SIGNAL \reg2|gen_register:7:vff|O~q\ : std_logic;
SIGNAL \reg1|gen_register:7:vff|O~q\ : std_logic;
SIGNAL \read_mux1|V0|v2|v7|Q~combout\ : std_logic;
SIGNAL \reg7|gen_register:7:vff|O~q\ : std_logic;
SIGNAL \reg6|gen_register:7:vff|O~q\ : std_logic;
SIGNAL \reg4|gen_register:7:vff|O~q\ : std_logic;
SIGNAL \reg5|gen_register:7:vff|O~q\ : std_logic;
SIGNAL \read_mux1|v6|v3|v7|Q~0_combout\ : std_logic;
SIGNAL \read_mux1|v6|v3|v7|Q~1_combout\ : std_logic;
SIGNAL \read_mux1|v6|v3|v7|Q~2_combout\ : std_logic;
SIGNAL \read_mux1|v6|v3|v7|Q~3_combout\ : std_logic;
SIGNAL \Write1[8]~input_o\ : std_logic;
SIGNAL \reg2|gen_register:8:vff|O~q\ : std_logic;
SIGNAL \reg1|gen_register:8:vff|O~q\ : std_logic;
SIGNAL \read_mux1|V0|v2|v8|Q~combout\ : std_logic;
SIGNAL \read_mux1|v6|v3|v8|Q~2_combout\ : std_logic;
SIGNAL \reg7|gen_register:8:vff|O~q\ : std_logic;
SIGNAL \reg6|gen_register:8:vff|O~q\ : std_logic;
SIGNAL \reg5|gen_register:8:vff|O~q\ : std_logic;
SIGNAL \reg4|gen_register:8:vff|O~q\ : std_logic;
SIGNAL \read_mux1|v6|v3|v8|Q~0_combout\ : std_logic;
SIGNAL \read_mux1|v6|v3|v8|Q~1_combout\ : std_logic;
SIGNAL \reg3|gen_register:8:vff|O~q\ : std_logic;
SIGNAL \read_mux1|v6|v3|v8|Q~3_combout\ : std_logic;
SIGNAL \Write1[9]~input_o\ : std_logic;
SIGNAL \reg3|gen_register:9:vff|O~q\ : std_logic;
SIGNAL \reg2|gen_register:9:vff|O~q\ : std_logic;
SIGNAL \reg1|gen_register:9:vff|O~q\ : std_logic;
SIGNAL \read_mux1|V0|v2|v9|Q~combout\ : std_logic;
SIGNAL \reg7|gen_register:9:vff|O~q\ : std_logic;
SIGNAL \reg6|gen_register:9:vff|O~q\ : std_logic;
SIGNAL \reg5|gen_register:9:vff|O~q\ : std_logic;
SIGNAL \reg4|gen_register:9:vff|O~q\ : std_logic;
SIGNAL \read_mux1|v6|v3|v9|Q~0_combout\ : std_logic;
SIGNAL \read_mux1|v6|v3|v9|Q~1_combout\ : std_logic;
SIGNAL \read_mux1|v6|v3|v9|Q~2_combout\ : std_logic;
SIGNAL \read_mux1|v6|v3|v9|Q~3_combout\ : std_logic;
SIGNAL \Write1[10]~input_o\ : std_logic;
SIGNAL \reg7|gen_register:10:vff|O~q\ : std_logic;
SIGNAL \reg6|gen_register:10:vff|O~q\ : std_logic;
SIGNAL \reg5|gen_register:10:vff|O~q\ : std_logic;
SIGNAL \reg4|gen_register:10:vff|O~q\ : std_logic;
SIGNAL \read_mux1|v6|v3|v10|Q~0_combout\ : std_logic;
SIGNAL \read_mux1|v6|v3|v10|Q~1_combout\ : std_logic;
SIGNAL \reg2|gen_register:10:vff|O~q\ : std_logic;
SIGNAL \reg1|gen_register:10:vff|O~q\ : std_logic;
SIGNAL \read_mux1|V0|v2|v10|Q~combout\ : std_logic;
SIGNAL \read_mux1|v6|v3|v10|Q~2_combout\ : std_logic;
SIGNAL \reg3|gen_register:10:vff|O~q\ : std_logic;
SIGNAL \read_mux1|v6|v3|v10|Q~3_combout\ : std_logic;
SIGNAL \Write1[11]~input_o\ : std_logic;
SIGNAL \reg3|gen_register:11:vff|O~q\ : std_logic;
SIGNAL \reg2|gen_register:11:vff|O~q\ : std_logic;
SIGNAL \reg1|gen_register:11:vff|O~q\ : std_logic;
SIGNAL \read_mux1|V0|v2|v11|Q~combout\ : std_logic;
SIGNAL \reg7|gen_register:11:vff|O~q\ : std_logic;
SIGNAL \reg6|gen_register:11:vff|O~q\ : std_logic;
SIGNAL \reg5|gen_register:11:vff|O~q\ : std_logic;
SIGNAL \reg4|gen_register:11:vff|O~q\ : std_logic;
SIGNAL \read_mux1|v6|v3|v11|Q~0_combout\ : std_logic;
SIGNAL \read_mux1|v6|v3|v11|Q~1_combout\ : std_logic;
SIGNAL \read_mux1|v6|v3|v11|Q~2_combout\ : std_logic;
SIGNAL \read_mux1|v6|v3|v11|Q~3_combout\ : std_logic;
SIGNAL \Write1[12]~input_o\ : std_logic;
SIGNAL \reg3|gen_register:12:vff|O~q\ : std_logic;
SIGNAL \reg4|gen_register:12:vff|O~q\ : std_logic;
SIGNAL \reg5|gen_register:12:vff|O~q\ : std_logic;
SIGNAL \read_mux1|v6|v3|v12|Q~0_combout\ : std_logic;
SIGNAL \reg6|gen_register:12:vff|O~q\ : std_logic;
SIGNAL \reg7|gen_register:12:vff|O~q\ : std_logic;
SIGNAL \read_mux1|v6|v3|v12|Q~1_combout\ : std_logic;
SIGNAL \reg1|gen_register:12:vff|O~q\ : std_logic;
SIGNAL \read_mux1|V0|v2|v12|Q~combout\ : std_logic;
SIGNAL \reg2|gen_register:12:vff|O~q\ : std_logic;
SIGNAL \read_mux1|v6|v3|v12|Q~2_combout\ : std_logic;
SIGNAL \read_mux1|v6|v3|v12|Q~3_combout\ : std_logic;
SIGNAL \Write1[13]~input_o\ : std_logic;
SIGNAL \reg4|gen_register:13:vff|O~q\ : std_logic;
SIGNAL \reg5|gen_register:13:vff|O~q\ : std_logic;
SIGNAL \read_mux1|v6|v3|v13|Q~0_combout\ : std_logic;
SIGNAL \reg7|gen_register:13:vff|O~q\ : std_logic;
SIGNAL \reg6|gen_register:13:vff|O~q\ : std_logic;
SIGNAL \read_mux1|v6|v3|v13|Q~1_combout\ : std_logic;
SIGNAL \reg1|gen_register:13:vff|O~q\ : std_logic;
SIGNAL \read_mux1|V0|v2|v13|Q~combout\ : std_logic;
SIGNAL \read_mux1|v6|v3|v13|Q~2_combout\ : std_logic;
SIGNAL \reg2|gen_register:13:vff|O~q\ : std_logic;
SIGNAL \reg3|gen_register:13:vff|O~q\ : std_logic;
SIGNAL \read_mux1|v6|v3|v13|Q~3_combout\ : std_logic;
SIGNAL \Write1[14]~input_o\ : std_logic;
SIGNAL \reg4|gen_register:14:vff|O~q\ : std_logic;
SIGNAL \reg5|gen_register:14:vff|O~q\ : std_logic;
SIGNAL \read_mux1|v6|v3|v14|Q~0_combout\ : std_logic;
SIGNAL \reg6|gen_register:14:vff|O~q\ : std_logic;
SIGNAL \reg7|gen_register:14:vff|O~q\ : std_logic;
SIGNAL \read_mux1|v6|v3|v14|Q~1_combout\ : std_logic;
SIGNAL \reg2|gen_register:14:vff|O~q\ : std_logic;
SIGNAL \reg1|gen_register:14:vff|O~q\ : std_logic;
SIGNAL \read_mux1|V0|v2|v14|Q~combout\ : std_logic;
SIGNAL \read_mux1|v6|v3|v14|Q~2_combout\ : std_logic;
SIGNAL \reg3|gen_register:14:vff|O~q\ : std_logic;
SIGNAL \read_mux1|v6|v3|v14|Q~3_combout\ : std_logic;
SIGNAL \Write1[15]~input_o\ : std_logic;
SIGNAL \reg1|gen_register:15:vff|O~q\ : std_logic;
SIGNAL \read_mux1|V0|v2|v15|Q~combout\ : std_logic;
SIGNAL \reg7|gen_register:15:vff|O~q\ : std_logic;
SIGNAL \reg4|gen_register:15:vff|O~q\ : std_logic;
SIGNAL \reg5|gen_register:15:vff|O~q\ : std_logic;
SIGNAL \read_mux1|v6|v3|v15|Q~0_combout\ : std_logic;
SIGNAL \reg6|gen_register:15:vff|O~q\ : std_logic;
SIGNAL \read_mux1|v6|v3|v15|Q~1_combout\ : std_logic;
SIGNAL \read_mux1|v6|v3|v15|Q~2_combout\ : std_logic;
SIGNAL \reg2|gen_register:15:vff|O~q\ : std_logic;
SIGNAL \reg3|gen_register:15:vff|O~feeder_combout\ : std_logic;
SIGNAL \reg3|gen_register:15:vff|O~q\ : std_logic;
SIGNAL \read_mux1|v6|v3|v15|Q~3_combout\ : std_logic;
SIGNAL \Read2AD[1]~input_o\ : std_logic;
SIGNAL \Read2AD[2]~input_o\ : std_logic;
SIGNAL \Read2AD[0]~input_o\ : std_logic;
SIGNAL \read_mux2|v6|v3|v0|Q~2_combout\ : std_logic;
SIGNAL \read_mux2|v6|v3|v0|Q~3_combout\ : std_logic;
SIGNAL \read_mux2|V0|v2|v0|Q~combout\ : std_logic;
SIGNAL \read_mux2|v6|v3|v0|Q~4_combout\ : std_logic;
SIGNAL \read_mux2|v6|v3|v0|Q~0_combout\ : std_logic;
SIGNAL \read_mux2|v6|v3|v0|Q~1_combout\ : std_logic;
SIGNAL \read_mux2|v6|v3|v0|Q~5_combout\ : std_logic;
SIGNAL \read_mux2|V0|v2|v1|Q~combout\ : std_logic;
SIGNAL \read_mux2|v6|v3|v1|Q~0_combout\ : std_logic;
SIGNAL \read_mux2|v6|v3|v1|Q~1_combout\ : std_logic;
SIGNAL \read_mux2|v6|v3|v1|Q~2_combout\ : std_logic;
SIGNAL \read_mux2|v6|v3|v1|Q~3_combout\ : std_logic;
SIGNAL \read_mux2|V0|v2|v2|Q~combout\ : std_logic;
SIGNAL \read_mux2|v6|v3|v2|Q~2_combout\ : std_logic;
SIGNAL \read_mux2|v6|v3|v2|Q~0_combout\ : std_logic;
SIGNAL \read_mux2|v6|v3|v2|Q~1_combout\ : std_logic;
SIGNAL \read_mux2|v6|v3|v2|Q~3_combout\ : std_logic;
SIGNAL \read_mux2|v6|v3|v3|Q~0_combout\ : std_logic;
SIGNAL \read_mux2|v6|v3|v3|Q~1_combout\ : std_logic;
SIGNAL \read_mux2|V0|v2|v3|Q~combout\ : std_logic;
SIGNAL \read_mux2|v6|v3|v3|Q~2_combout\ : std_logic;
SIGNAL \read_mux2|v6|v3|v3|Q~3_combout\ : std_logic;
SIGNAL \read_mux2|v6|v3|v4|Q~0_combout\ : std_logic;
SIGNAL \read_mux2|v6|v3|v4|Q~1_combout\ : std_logic;
SIGNAL \read_mux2|V0|v2|v4|Q~combout\ : std_logic;
SIGNAL \read_mux2|v6|v3|v4|Q~2_combout\ : std_logic;
SIGNAL \read_mux2|v6|v3|v4|Q~3_combout\ : std_logic;
SIGNAL \read_mux2|v6|v3|v5|Q~0_combout\ : std_logic;
SIGNAL \read_mux2|v6|v3|v5|Q~1_combout\ : std_logic;
SIGNAL \read_mux2|V0|v2|v5|Q~combout\ : std_logic;
SIGNAL \read_mux2|v6|v3|v5|Q~2_combout\ : std_logic;
SIGNAL \read_mux2|v6|v3|v5|Q~3_combout\ : std_logic;
SIGNAL \read_mux2|V0|v2|v6|Q~combout\ : std_logic;
SIGNAL \read_mux2|v6|v3|v6|Q~2_combout\ : std_logic;
SIGNAL \read_mux2|v6|v3|v6|Q~0_combout\ : std_logic;
SIGNAL \read_mux2|v6|v3|v6|Q~1_combout\ : std_logic;
SIGNAL \read_mux2|v6|v3|v6|Q~3_combout\ : std_logic;
SIGNAL \read_mux2|v6|v3|v7|Q~0_combout\ : std_logic;
SIGNAL \read_mux2|v6|v3|v7|Q~1_combout\ : std_logic;
SIGNAL \read_mux2|V0|v2|v7|Q~combout\ : std_logic;
SIGNAL \read_mux2|v6|v3|v7|Q~2_combout\ : std_logic;
SIGNAL \read_mux2|v6|v3|v7|Q~3_combout\ : std_logic;
SIGNAL \read_mux2|V0|v2|v8|Q~combout\ : std_logic;
SIGNAL \read_mux2|v6|v3|v8|Q~2_combout\ : std_logic;
SIGNAL \read_mux2|v6|v3|v8|Q~0_combout\ : std_logic;
SIGNAL \read_mux2|v6|v3|v8|Q~1_combout\ : std_logic;
SIGNAL \read_mux2|v6|v3|v8|Q~3_combout\ : std_logic;
SIGNAL \read_mux2|v6|v3|v9|Q~0_combout\ : std_logic;
SIGNAL \read_mux2|v6|v3|v9|Q~1_combout\ : std_logic;
SIGNAL \read_mux2|V0|v2|v9|Q~combout\ : std_logic;
SIGNAL \read_mux2|v6|v3|v9|Q~2_combout\ : std_logic;
SIGNAL \read_mux2|v6|v3|v9|Q~3_combout\ : std_logic;
SIGNAL \read_mux2|v6|v3|v10|Q~0_combout\ : std_logic;
SIGNAL \read_mux2|v6|v3|v10|Q~1_combout\ : std_logic;
SIGNAL \read_mux2|V0|v2|v10|Q~combout\ : std_logic;
SIGNAL \read_mux2|v6|v3|v10|Q~2_combout\ : std_logic;
SIGNAL \read_mux2|v6|v3|v10|Q~3_combout\ : std_logic;
SIGNAL \read_mux2|v6|v3|v11|Q~0_combout\ : std_logic;
SIGNAL \read_mux2|v6|v3|v11|Q~1_combout\ : std_logic;
SIGNAL \read_mux2|V0|v2|v11|Q~combout\ : std_logic;
SIGNAL \read_mux2|v6|v3|v11|Q~2_combout\ : std_logic;
SIGNAL \read_mux2|v6|v3|v11|Q~3_combout\ : std_logic;
SIGNAL \read_mux2|V0|v2|v12|Q~combout\ : std_logic;
SIGNAL \read_mux2|v6|v3|v12|Q~2_combout\ : std_logic;
SIGNAL \read_mux2|v6|v3|v12|Q~0_combout\ : std_logic;
SIGNAL \read_mux2|v6|v3|v12|Q~1_combout\ : std_logic;
SIGNAL \read_mux2|v6|v3|v12|Q~3_combout\ : std_logic;
SIGNAL \read_mux2|v6|v3|v13|Q~0_combout\ : std_logic;
SIGNAL \read_mux2|v6|v3|v13|Q~1_combout\ : std_logic;
SIGNAL \read_mux2|V0|v2|v13|Q~combout\ : std_logic;
SIGNAL \read_mux2|v6|v3|v13|Q~2_combout\ : std_logic;
SIGNAL \read_mux2|v6|v3|v13|Q~3_combout\ : std_logic;
SIGNAL \read_mux2|v6|v3|v14|Q~0_combout\ : std_logic;
SIGNAL \read_mux2|v6|v3|v14|Q~1_combout\ : std_logic;
SIGNAL \read_mux2|V0|v2|v14|Q~combout\ : std_logic;
SIGNAL \read_mux2|v6|v3|v14|Q~2_combout\ : std_logic;
SIGNAL \read_mux2|v6|v3|v14|Q~3_combout\ : std_logic;
SIGNAL \read_mux2|V0|v2|v15|Q~combout\ : std_logic;
SIGNAL \read_mux2|v6|v3|v15|Q~0_combout\ : std_logic;
SIGNAL \read_mux2|v6|v3|v15|Q~1_combout\ : std_logic;
SIGNAL \read_mux2|v6|v3|v15|Q~2_combout\ : std_logic;
SIGNAL \read_mux2|v6|v3|v15|Q~3_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_Clock <= Clock;
ww_Read1AD <= Read1AD;
ww_Read2AD <= Read2AD;
ww_Write1AD <= Write1AD;
ww_Write1 <= Write1;
Read1 <= ww_Read1;
Read2 <= ww_Read2;
OUTall <= ww_OUTall;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\Clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Clock~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X11_Y20_N24
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X1_Y10_N30
\Read1[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_mux1|v6|v3|v0|Q~5_combout\,
	devoe => ww_devoe,
	o => \Read1[0]~output_o\);

-- Location: IOOBUF_X15_Y0_N16
\Read1[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_mux1|v6|v3|v1|Q~3_combout\,
	devoe => ww_devoe,
	o => \Read1[1]~output_o\);

-- Location: IOOBUF_X0_Y6_N23
\Read1[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_mux1|v6|v3|v2|Q~3_combout\,
	devoe => ww_devoe,
	o => \Read1[2]~output_o\);

-- Location: IOOBUF_X19_Y0_N30
\Read1[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_mux1|v6|v3|v3|Q~3_combout\,
	devoe => ww_devoe,
	o => \Read1[3]~output_o\);

-- Location: IOOBUF_X19_Y0_N23
\Read1[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_mux1|v6|v3|v4|Q~3_combout\,
	devoe => ww_devoe,
	o => \Read1[4]~output_o\);

-- Location: IOOBUF_X3_Y10_N2
\Read1[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_mux1|v6|v3|v5|Q~3_combout\,
	devoe => ww_devoe,
	o => \Read1[5]~output_o\);

-- Location: IOOBUF_X31_Y5_N2
\Read1[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_mux1|v6|v3|v6|Q~3_combout\,
	devoe => ww_devoe,
	o => \Read1[6]~output_o\);

-- Location: IOOBUF_X27_Y0_N9
\Read1[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_mux1|v6|v3|v7|Q~3_combout\,
	devoe => ww_devoe,
	o => \Read1[7]~output_o\);

-- Location: IOOBUF_X31_Y20_N23
\Read1[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_mux1|v6|v3|v8|Q~3_combout\,
	devoe => ww_devoe,
	o => \Read1[8]~output_o\);

-- Location: IOOBUF_X31_Y19_N2
\Read1[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_mux1|v6|v3|v9|Q~3_combout\,
	devoe => ww_devoe,
	o => \Read1[9]~output_o\);

-- Location: IOOBUF_X31_Y17_N23
\Read1[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_mux1|v6|v3|v10|Q~3_combout\,
	devoe => ww_devoe,
	o => \Read1[10]~output_o\);

-- Location: IOOBUF_X31_Y4_N9
\Read1[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_mux1|v6|v3|v11|Q~3_combout\,
	devoe => ww_devoe,
	o => \Read1[11]~output_o\);

-- Location: IOOBUF_X31_Y2_N23
\Read1[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_mux1|v6|v3|v12|Q~3_combout\,
	devoe => ww_devoe,
	o => \Read1[12]~output_o\);

-- Location: IOOBUF_X31_Y15_N23
\Read1[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_mux1|v6|v3|v13|Q~3_combout\,
	devoe => ww_devoe,
	o => \Read1[13]~output_o\);

-- Location: IOOBUF_X31_Y11_N9
\Read1[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_mux1|v6|v3|v14|Q~3_combout\,
	devoe => ww_devoe,
	o => \Read1[14]~output_o\);

-- Location: IOOBUF_X24_Y25_N30
\Read1[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_mux1|v6|v3|v15|Q~3_combout\,
	devoe => ww_devoe,
	o => \Read1[15]~output_o\);

-- Location: IOOBUF_X11_Y0_N9
\Read2[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_mux2|v6|v3|v0|Q~5_combout\,
	devoe => ww_devoe,
	o => \Read2[0]~output_o\);

-- Location: IOOBUF_X22_Y0_N9
\Read2[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_mux2|v6|v3|v1|Q~3_combout\,
	devoe => ww_devoe,
	o => \Read2[1]~output_o\);

-- Location: IOOBUF_X31_Y5_N9
\Read2[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_mux2|v6|v3|v2|Q~3_combout\,
	devoe => ww_devoe,
	o => \Read2[2]~output_o\);

-- Location: IOOBUF_X9_Y0_N30
\Read2[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_mux2|v6|v3|v3|Q~3_combout\,
	devoe => ww_devoe,
	o => \Read2[3]~output_o\);

-- Location: IOOBUF_X15_Y0_N9
\Read2[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_mux2|v6|v3|v4|Q~3_combout\,
	devoe => ww_devoe,
	o => \Read2[4]~output_o\);

-- Location: IOOBUF_X31_Y1_N9
\Read2[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_mux2|v6|v3|v5|Q~3_combout\,
	devoe => ww_devoe,
	o => \Read2[5]~output_o\);

-- Location: IOOBUF_X31_Y9_N9
\Read2[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_mux2|v6|v3|v6|Q~3_combout\,
	devoe => ww_devoe,
	o => \Read2[6]~output_o\);

-- Location: IOOBUF_X31_Y6_N9
\Read2[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_mux2|v6|v3|v7|Q~3_combout\,
	devoe => ww_devoe,
	o => \Read2[7]~output_o\);

-- Location: IOOBUF_X31_Y9_N16
\Read2[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_mux2|v6|v3|v8|Q~3_combout\,
	devoe => ww_devoe,
	o => \Read2[8]~output_o\);

-- Location: IOOBUF_X27_Y0_N2
\Read2[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_mux2|v6|v3|v9|Q~3_combout\,
	devoe => ww_devoe,
	o => \Read2[9]~output_o\);

-- Location: IOOBUF_X31_Y15_N2
\Read2[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_mux2|v6|v3|v10|Q~3_combout\,
	devoe => ww_devoe,
	o => \Read2[10]~output_o\);

-- Location: IOOBUF_X31_Y4_N23
\Read2[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_mux2|v6|v3|v11|Q~3_combout\,
	devoe => ww_devoe,
	o => \Read2[11]~output_o\);

-- Location: IOOBUF_X31_Y21_N9
\Read2[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_mux2|v6|v3|v12|Q~3_combout\,
	devoe => ww_devoe,
	o => \Read2[12]~output_o\);

-- Location: IOOBUF_X31_Y21_N16
\Read2[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_mux2|v6|v3|v13|Q~3_combout\,
	devoe => ww_devoe,
	o => \Read2[13]~output_o\);

-- Location: IOOBUF_X31_Y19_N9
\Read2[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_mux2|v6|v3|v14|Q~3_combout\,
	devoe => ww_devoe,
	o => \Read2[14]~output_o\);

-- Location: IOOBUF_X17_Y25_N16
\Read2[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_mux2|v6|v3|v15|Q~3_combout\,
	devoe => ww_devoe,
	o => \Read2[15]~output_o\);

-- Location: IOOBUF_X13_Y25_N9
\OUTall[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \OUTall[0]~output_o\);

-- Location: IOOBUF_X11_Y25_N16
\OUTall[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \OUTall[1]~output_o\);

-- Location: IOOBUF_X31_Y3_N2
\OUTall[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \OUTall[2]~output_o\);

-- Location: IOOBUF_X0_Y2_N16
\OUTall[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \OUTall[3]~output_o\);

-- Location: IOOBUF_X10_Y21_N23
\OUTall[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \OUTall[4]~output_o\);

-- Location: IOOBUF_X31_Y22_N16
\OUTall[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \OUTall[5]~output_o\);

-- Location: IOOBUF_X3_Y0_N2
\OUTall[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \OUTall[6]~output_o\);

-- Location: IOOBUF_X29_Y0_N30
\OUTall[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \OUTall[7]~output_o\);

-- Location: IOOBUF_X29_Y25_N23
\OUTall[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \OUTall[8]~output_o\);

-- Location: IOOBUF_X31_Y2_N16
\OUTall[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \OUTall[9]~output_o\);

-- Location: IOOBUF_X10_Y21_N9
\OUTall[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \OUTall[10]~output_o\);

-- Location: IOOBUF_X15_Y25_N23
\OUTall[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \OUTall[11]~output_o\);

-- Location: IOOBUF_X0_Y3_N9
\OUTall[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \OUTall[12]~output_o\);

-- Location: IOOBUF_X0_Y6_N2
\OUTall[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \OUTall[13]~output_o\);

-- Location: IOOBUF_X11_Y25_N23
\OUTall[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \OUTall[14]~output_o\);

-- Location: IOOBUF_X13_Y25_N30
\OUTall[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \OUTall[15]~output_o\);

-- Location: IOOBUF_X27_Y0_N23
\OUTall[16]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg1|gen_register:0:vff|O~q\,
	devoe => ww_devoe,
	o => \OUTall[16]~output_o\);

-- Location: IOOBUF_X24_Y0_N23
\OUTall[17]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg1|gen_register:1:vff|O~q\,
	devoe => ww_devoe,
	o => \OUTall[17]~output_o\);

-- Location: IOOBUF_X22_Y0_N16
\OUTall[18]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg1|gen_register:2:vff|O~q\,
	devoe => ww_devoe,
	o => \OUTall[18]~output_o\);

-- Location: IOOBUF_X19_Y0_N16
\OUTall[19]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg1|gen_register:3:vff|O~q\,
	devoe => ww_devoe,
	o => \OUTall[19]~output_o\);

-- Location: IOOBUF_X24_Y0_N30
\OUTall[20]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg1|gen_register:4:vff|O~q\,
	devoe => ww_devoe,
	o => \OUTall[20]~output_o\);

-- Location: IOOBUF_X19_Y0_N9
\OUTall[21]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg1|gen_register:5:vff|O~q\,
	devoe => ww_devoe,
	o => \OUTall[21]~output_o\);

-- Location: IOOBUF_X22_Y0_N2
\OUTall[22]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg1|gen_register:6:vff|O~q\,
	devoe => ww_devoe,
	o => \OUTall[22]~output_o\);

-- Location: IOOBUF_X31_Y17_N16
\OUTall[23]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg1|gen_register:7:vff|O~q\,
	devoe => ww_devoe,
	o => \OUTall[23]~output_o\);

-- Location: IOOBUF_X31_Y11_N23
\OUTall[24]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg1|gen_register:8:vff|O~q\,
	devoe => ww_devoe,
	o => \OUTall[24]~output_o\);

-- Location: IOOBUF_X31_Y21_N23
\OUTall[25]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg1|gen_register:9:vff|O~q\,
	devoe => ww_devoe,
	o => \OUTall[25]~output_o\);

-- Location: IOOBUF_X31_Y15_N9
\OUTall[26]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg1|gen_register:10:vff|O~q\,
	devoe => ww_devoe,
	o => \OUTall[26]~output_o\);

-- Location: IOOBUF_X31_Y17_N9
\OUTall[27]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg1|gen_register:11:vff|O~q\,
	devoe => ww_devoe,
	o => \OUTall[27]~output_o\);

-- Location: IOOBUF_X27_Y0_N30
\OUTall[28]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg1|gen_register:12:vff|O~q\,
	devoe => ww_devoe,
	o => \OUTall[28]~output_o\);

-- Location: IOOBUF_X31_Y12_N16
\OUTall[29]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg1|gen_register:13:vff|O~q\,
	devoe => ww_devoe,
	o => \OUTall[29]~output_o\);

-- Location: IOOBUF_X24_Y25_N2
\OUTall[30]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg1|gen_register:14:vff|O~q\,
	devoe => ww_devoe,
	o => \OUTall[30]~output_o\);

-- Location: IOOBUF_X31_Y3_N23
\OUTall[31]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg1|gen_register:15:vff|O~q\,
	devoe => ww_devoe,
	o => \OUTall[31]~output_o\);

-- Location: IOOBUF_X11_Y0_N2
\OUTall[32]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg2|gen_register:0:vff|O~q\,
	devoe => ww_devoe,
	o => \OUTall[32]~output_o\);

-- Location: IOOBUF_X31_Y5_N23
\OUTall[33]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg2|gen_register:1:vff|O~q\,
	devoe => ww_devoe,
	o => \OUTall[33]~output_o\);

-- Location: IOOBUF_X0_Y8_N23
\OUTall[34]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg2|gen_register:2:vff|O~q\,
	devoe => ww_devoe,
	o => \OUTall[34]~output_o\);

-- Location: IOOBUF_X11_Y0_N23
\OUTall[35]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg2|gen_register:3:vff|O~q\,
	devoe => ww_devoe,
	o => \OUTall[35]~output_o\);

-- Location: IOOBUF_X19_Y0_N2
\OUTall[36]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg2|gen_register:4:vff|O~q\,
	devoe => ww_devoe,
	o => \OUTall[36]~output_o\);

-- Location: IOOBUF_X31_Y3_N16
\OUTall[37]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg2|gen_register:5:vff|O~q\,
	devoe => ww_devoe,
	o => \OUTall[37]~output_o\);

-- Location: IOOBUF_X31_Y1_N2
\OUTall[38]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg2|gen_register:6:vff|O~q\,
	devoe => ww_devoe,
	o => \OUTall[38]~output_o\);

-- Location: IOOBUF_X24_Y0_N9
\OUTall[39]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg2|gen_register:7:vff|O~q\,
	devoe => ww_devoe,
	o => \OUTall[39]~output_o\);

-- Location: IOOBUF_X31_Y3_N9
\OUTall[40]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg2|gen_register:8:vff|O~q\,
	devoe => ww_devoe,
	o => \OUTall[40]~output_o\);

-- Location: IOOBUF_X31_Y11_N16
\OUTall[41]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg2|gen_register:9:vff|O~q\,
	devoe => ww_devoe,
	o => \OUTall[41]~output_o\);

-- Location: IOOBUF_X31_Y13_N2
\OUTall[42]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg2|gen_register:10:vff|O~q\,
	devoe => ww_devoe,
	o => \OUTall[42]~output_o\);

-- Location: IOOBUF_X31_Y5_N16
\OUTall[43]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg2|gen_register:11:vff|O~q\,
	devoe => ww_devoe,
	o => \OUTall[43]~output_o\);

-- Location: IOOBUF_X31_Y12_N23
\OUTall[44]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg2|gen_register:12:vff|O~q\,
	devoe => ww_devoe,
	o => \OUTall[44]~output_o\);

-- Location: IOOBUF_X31_Y20_N16
\OUTall[45]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg2|gen_register:13:vff|O~q\,
	devoe => ww_devoe,
	o => \OUTall[45]~output_o\);

-- Location: IOOBUF_X31_Y17_N2
\OUTall[46]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg2|gen_register:14:vff|O~q\,
	devoe => ww_devoe,
	o => \OUTall[46]~output_o\);

-- Location: IOOBUF_X17_Y25_N30
\OUTall[47]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg2|gen_register:15:vff|O~q\,
	devoe => ww_devoe,
	o => \OUTall[47]~output_o\);

-- Location: IOOBUF_X1_Y10_N23
\OUTall[48]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg3|gen_register:0:vff|O~q\,
	devoe => ww_devoe,
	o => \OUTall[48]~output_o\);

-- Location: IOOBUF_X6_Y10_N2
\OUTall[49]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg3|gen_register:1:vff|O~q\,
	devoe => ww_devoe,
	o => \OUTall[49]~output_o\);

-- Location: IOOBUF_X6_Y10_N16
\OUTall[50]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg3|gen_register:2:vff|O~q\,
	devoe => ww_devoe,
	o => \OUTall[50]~output_o\);

-- Location: IOOBUF_X13_Y0_N30
\OUTall[51]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg3|gen_register:3:vff|O~q\,
	devoe => ww_devoe,
	o => \OUTall[51]~output_o\);

-- Location: IOOBUF_X22_Y0_N30
\OUTall[52]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg3|gen_register:4:vff|O~q\,
	devoe => ww_devoe,
	o => \OUTall[52]~output_o\);

-- Location: IOOBUF_X31_Y9_N2
\OUTall[53]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg3|gen_register:5:vff|O~q\,
	devoe => ww_devoe,
	o => \OUTall[53]~output_o\);

-- Location: IOOBUF_X24_Y0_N16
\OUTall[54]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg3|gen_register:6:vff|O~q\,
	devoe => ww_devoe,
	o => \OUTall[54]~output_o\);

-- Location: IOOBUF_X31_Y6_N16
\OUTall[55]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg3|gen_register:7:vff|O~q\,
	devoe => ww_devoe,
	o => \OUTall[55]~output_o\);

-- Location: IOOBUF_X29_Y0_N2
\OUTall[56]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg3|gen_register:8:vff|O~q\,
	devoe => ww_devoe,
	o => \OUTall[56]~output_o\);

-- Location: IOOBUF_X31_Y11_N2
\OUTall[57]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg3|gen_register:9:vff|O~q\,
	devoe => ww_devoe,
	o => \OUTall[57]~output_o\);

-- Location: IOOBUF_X31_Y12_N2
\OUTall[58]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg3|gen_register:10:vff|O~q\,
	devoe => ww_devoe,
	o => \OUTall[58]~output_o\);

-- Location: IOOBUF_X27_Y0_N16
\OUTall[59]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg3|gen_register:11:vff|O~q\,
	devoe => ww_devoe,
	o => \OUTall[59]~output_o\);

-- Location: IOOBUF_X31_Y21_N2
\OUTall[60]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg3|gen_register:12:vff|O~q\,
	devoe => ww_devoe,
	o => \OUTall[60]~output_o\);

-- Location: IOOBUF_X31_Y14_N9
\OUTall[61]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg3|gen_register:13:vff|O~q\,
	devoe => ww_devoe,
	o => \OUTall[61]~output_o\);

-- Location: IOOBUF_X24_Y25_N9
\OUTall[62]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg3|gen_register:14:vff|O~q\,
	devoe => ww_devoe,
	o => \OUTall[62]~output_o\);

-- Location: IOOBUF_X31_Y22_N2
\OUTall[63]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg3|gen_register:15:vff|O~q\,
	devoe => ww_devoe,
	o => \OUTall[63]~output_o\);

-- Location: IOOBUF_X1_Y10_N9
\OUTall[64]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg4|gen_register:0:vff|O~q\,
	devoe => ww_devoe,
	o => \OUTall[64]~output_o\);

-- Location: IOOBUF_X11_Y0_N16
\OUTall[65]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg4|gen_register:1:vff|O~q\,
	devoe => ww_devoe,
	o => \OUTall[65]~output_o\);

-- Location: IOOBUF_X15_Y0_N2
\OUTall[66]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg4|gen_register:2:vff|O~q\,
	devoe => ww_devoe,
	o => \OUTall[66]~output_o\);

-- Location: IOOBUF_X19_Y25_N23
\OUTall[67]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg4|gen_register:3:vff|O~q\,
	devoe => ww_devoe,
	o => \OUTall[67]~output_o\);

-- Location: IOOBUF_X10_Y18_N2
\OUTall[68]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg4|gen_register:4:vff|O~q\,
	devoe => ww_devoe,
	o => \OUTall[68]~output_o\);

-- Location: IOOBUF_X10_Y19_N23
\OUTall[69]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg4|gen_register:5:vff|O~q\,
	devoe => ww_devoe,
	o => \OUTall[69]~output_o\);

-- Location: IOOBUF_X19_Y25_N30
\OUTall[70]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg4|gen_register:6:vff|O~q\,
	devoe => ww_devoe,
	o => \OUTall[70]~output_o\);

-- Location: IOOBUF_X10_Y19_N16
\OUTall[71]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg4|gen_register:7:vff|O~q\,
	devoe => ww_devoe,
	o => \OUTall[71]~output_o\);

-- Location: IOOBUF_X31_Y22_N23
\OUTall[72]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg4|gen_register:8:vff|O~q\,
	devoe => ww_devoe,
	o => \OUTall[72]~output_o\);

-- Location: IOOBUF_X31_Y13_N9
\OUTall[73]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg4|gen_register:9:vff|O~q\,
	devoe => ww_devoe,
	o => \OUTall[73]~output_o\);

-- Location: IOOBUF_X22_Y25_N2
\OUTall[74]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg4|gen_register:10:vff|O~q\,
	devoe => ww_devoe,
	o => \OUTall[74]~output_o\);

-- Location: IOOBUF_X31_Y19_N23
\OUTall[75]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg4|gen_register:11:vff|O~q\,
	devoe => ww_devoe,
	o => \OUTall[75]~output_o\);

-- Location: IOOBUF_X31_Y13_N16
\OUTall[76]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg4|gen_register:12:vff|O~q\,
	devoe => ww_devoe,
	o => \OUTall[76]~output_o\);

-- Location: IOOBUF_X10_Y20_N23
\OUTall[77]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg4|gen_register:13:vff|O~q\,
	devoe => ww_devoe,
	o => \OUTall[77]~output_o\);

-- Location: IOOBUF_X10_Y20_N9
\OUTall[78]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg4|gen_register:14:vff|O~q\,
	devoe => ww_devoe,
	o => \OUTall[78]~output_o\);

-- Location: IOOBUF_X15_Y25_N30
\OUTall[79]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg4|gen_register:15:vff|O~q\,
	devoe => ww_devoe,
	o => \OUTall[79]~output_o\);

-- Location: IOOBUF_X10_Y16_N9
\OUTall[80]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg5|gen_register:0:vff|O~q\,
	devoe => ww_devoe,
	o => \OUTall[80]~output_o\);

-- Location: IOOBUF_X13_Y0_N23
\OUTall[81]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg5|gen_register:1:vff|O~q\,
	devoe => ww_devoe,
	o => \OUTall[81]~output_o\);

-- Location: IOOBUF_X6_Y0_N30
\OUTall[82]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg5|gen_register:2:vff|O~q\,
	devoe => ww_devoe,
	o => \OUTall[82]~output_o\);

-- Location: IOOBUF_X10_Y15_N16
\OUTall[83]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg5|gen_register:3:vff|O~q\,
	devoe => ww_devoe,
	o => \OUTall[83]~output_o\);

-- Location: IOOBUF_X10_Y19_N2
\OUTall[84]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg5|gen_register:4:vff|O~q\,
	devoe => ww_devoe,
	o => \OUTall[84]~output_o\);

-- Location: IOOBUF_X15_Y25_N9
\OUTall[85]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg5|gen_register:5:vff|O~q\,
	devoe => ww_devoe,
	o => \OUTall[85]~output_o\);

-- Location: IOOBUF_X10_Y17_N2
\OUTall[86]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg5|gen_register:6:vff|O~q\,
	devoe => ww_devoe,
	o => \OUTall[86]~output_o\);

-- Location: IOOBUF_X10_Y18_N16
\OUTall[87]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg5|gen_register:7:vff|O~q\,
	devoe => ww_devoe,
	o => \OUTall[87]~output_o\);

-- Location: IOOBUF_X31_Y19_N16
\OUTall[88]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg5|gen_register:8:vff|O~q\,
	devoe => ww_devoe,
	o => \OUTall[88]~output_o\);

-- Location: IOOBUF_X24_Y25_N16
\OUTall[89]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg5|gen_register:9:vff|O~q\,
	devoe => ww_devoe,
	o => \OUTall[89]~output_o\);

-- Location: IOOBUF_X31_Y14_N16
\OUTall[90]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg5|gen_register:10:vff|O~q\,
	devoe => ww_devoe,
	o => \OUTall[90]~output_o\);

-- Location: IOOBUF_X31_Y22_N9
\OUTall[91]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg5|gen_register:11:vff|O~q\,
	devoe => ww_devoe,
	o => \OUTall[91]~output_o\);

-- Location: IOOBUF_X19_Y25_N9
\OUTall[92]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg5|gen_register:12:vff|O~q\,
	devoe => ww_devoe,
	o => \OUTall[92]~output_o\);

-- Location: IOOBUF_X6_Y10_N23
\OUTall[93]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg5|gen_register:13:vff|O~q\,
	devoe => ww_devoe,
	o => \OUTall[93]~output_o\);

-- Location: IOOBUF_X10_Y16_N2
\OUTall[94]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg5|gen_register:14:vff|O~q\,
	devoe => ww_devoe,
	o => \OUTall[94]~output_o\);

-- Location: IOOBUF_X15_Y25_N2
\OUTall[95]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg5|gen_register:15:vff|O~q\,
	devoe => ww_devoe,
	o => \OUTall[95]~output_o\);

-- Location: IOOBUF_X3_Y10_N9
\OUTall[96]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg6|gen_register:0:vff|O~q\,
	devoe => ww_devoe,
	o => \OUTall[96]~output_o\);

-- Location: IOOBUF_X17_Y0_N9
\OUTall[97]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg6|gen_register:1:vff|O~q\,
	devoe => ww_devoe,
	o => \OUTall[97]~output_o\);

-- Location: IOOBUF_X0_Y8_N16
\OUTall[98]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg6|gen_register:2:vff|O~q\,
	devoe => ww_devoe,
	o => \OUTall[98]~output_o\);

-- Location: IOOBUF_X11_Y0_N30
\OUTall[99]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg6|gen_register:3:vff|O~q\,
	devoe => ww_devoe,
	o => \OUTall[99]~output_o\);

-- Location: IOOBUF_X1_Y10_N2
\OUTall[100]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg6|gen_register:4:vff|O~q\,
	devoe => ww_devoe,
	o => \OUTall[100]~output_o\);

-- Location: IOOBUF_X17_Y0_N16
\OUTall[101]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg6|gen_register:5:vff|O~q\,
	devoe => ww_devoe,
	o => \OUTall[101]~output_o\);

-- Location: IOOBUF_X9_Y0_N16
\OUTall[102]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg6|gen_register:6:vff|O~q\,
	devoe => ww_devoe,
	o => \OUTall[102]~output_o\);

-- Location: IOOBUF_X19_Y25_N2
\OUTall[103]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg6|gen_register:7:vff|O~q\,
	devoe => ww_devoe,
	o => \OUTall[103]~output_o\);

-- Location: IOOBUF_X24_Y25_N23
\OUTall[104]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg6|gen_register:8:vff|O~q\,
	devoe => ww_devoe,
	o => \OUTall[104]~output_o\);

-- Location: IOOBUF_X31_Y13_N23
\OUTall[105]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg6|gen_register:9:vff|O~q\,
	devoe => ww_devoe,
	o => \OUTall[105]~output_o\);

-- Location: IOOBUF_X22_Y25_N9
\OUTall[106]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg6|gen_register:10:vff|O~q\,
	devoe => ww_devoe,
	o => \OUTall[106]~output_o\);

-- Location: IOOBUF_X19_Y25_N16
\OUTall[107]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg6|gen_register:11:vff|O~q\,
	devoe => ww_devoe,
	o => \OUTall[107]~output_o\);

-- Location: IOOBUF_X31_Y14_N2
\OUTall[108]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg6|gen_register:12:vff|O~q\,
	devoe => ww_devoe,
	o => \OUTall[108]~output_o\);

-- Location: IOOBUF_X17_Y25_N2
\OUTall[109]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg6|gen_register:13:vff|O~q\,
	devoe => ww_devoe,
	o => \OUTall[109]~output_o\);

-- Location: IOOBUF_X10_Y19_N9
\OUTall[110]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg6|gen_register:14:vff|O~q\,
	devoe => ww_devoe,
	o => \OUTall[110]~output_o\);

-- Location: IOOBUF_X10_Y15_N23
\OUTall[111]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg6|gen_register:15:vff|O~q\,
	devoe => ww_devoe,
	o => \OUTall[111]~output_o\);

-- Location: IOOBUF_X9_Y0_N2
\OUTall[112]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg7|gen_register:0:vff|O~q\,
	devoe => ww_devoe,
	o => \OUTall[112]~output_o\);

-- Location: IOOBUF_X6_Y10_N9
\OUTall[113]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg7|gen_register:1:vff|O~q\,
	devoe => ww_devoe,
	o => \OUTall[113]~output_o\);

-- Location: IOOBUF_X9_Y0_N23
\OUTall[114]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg7|gen_register:2:vff|O~q\,
	devoe => ww_devoe,
	o => \OUTall[114]~output_o\);

-- Location: IOOBUF_X13_Y0_N16
\OUTall[115]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg7|gen_register:3:vff|O~q\,
	devoe => ww_devoe,
	o => \OUTall[115]~output_o\);

-- Location: IOOBUF_X15_Y0_N30
\OUTall[116]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg7|gen_register:4:vff|O~q\,
	devoe => ww_devoe,
	o => \OUTall[116]~output_o\);

-- Location: IOOBUF_X9_Y0_N9
\OUTall[117]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg7|gen_register:5:vff|O~q\,
	devoe => ww_devoe,
	o => \OUTall[117]~output_o\);

-- Location: IOOBUF_X13_Y0_N2
\OUTall[118]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg7|gen_register:6:vff|O~q\,
	devoe => ww_devoe,
	o => \OUTall[118]~output_o\);

-- Location: IOOBUF_X1_Y10_N16
\OUTall[119]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg7|gen_register:7:vff|O~q\,
	devoe => ww_devoe,
	o => \OUTall[119]~output_o\);

-- Location: IOOBUF_X31_Y15_N16
\OUTall[120]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg7|gen_register:8:vff|O~q\,
	devoe => ww_devoe,
	o => \OUTall[120]~output_o\);

-- Location: IOOBUF_X22_Y25_N30
\OUTall[121]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg7|gen_register:9:vff|O~q\,
	devoe => ww_devoe,
	o => \OUTall[121]~output_o\);

-- Location: IOOBUF_X22_Y25_N23
\OUTall[122]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg7|gen_register:10:vff|O~q\,
	devoe => ww_devoe,
	o => \OUTall[122]~output_o\);

-- Location: IOOBUF_X31_Y6_N23
\OUTall[123]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg7|gen_register:11:vff|O~q\,
	devoe => ww_devoe,
	o => \OUTall[123]~output_o\);

-- Location: IOOBUF_X22_Y25_N16
\OUTall[124]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg7|gen_register:12:vff|O~q\,
	devoe => ww_devoe,
	o => \OUTall[124]~output_o\);

-- Location: IOOBUF_X10_Y21_N16
\OUTall[125]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg7|gen_register:13:vff|O~q\,
	devoe => ww_devoe,
	o => \OUTall[125]~output_o\);

-- Location: IOOBUF_X10_Y20_N16
\OUTall[126]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg7|gen_register:14:vff|O~q\,
	devoe => ww_devoe,
	o => \OUTall[126]~output_o\);

-- Location: IOOBUF_X10_Y21_N2
\OUTall[127]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg7|gen_register:15:vff|O~q\,
	devoe => ww_devoe,
	o => \OUTall[127]~output_o\);

-- Location: IOIBUF_X17_Y0_N29
\Read1AD[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Read1AD(2),
	o => \Read1AD[2]~input_o\);

-- Location: IOIBUF_X10_Y15_N1
\Read1AD[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Read1AD(1),
	o => \Read1AD[1]~input_o\);

-- Location: IOIBUF_X31_Y9_N22
\Read1AD[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Read1AD(0),
	o => \Read1AD[0]~input_o\);

-- Location: LCCOMB_X17_Y9_N20
\read_mux1|v6|v3|v0|Q~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_mux1|v6|v3|v0|Q~2_combout\ = (\Read1AD[2]~input_o\) # ((\Read1AD[1]~input_o\ & \Read1AD[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Read1AD[2]~input_o\,
	datac => \Read1AD[1]~input_o\,
	datad => \Read1AD[0]~input_o\,
	combout => \read_mux1|v6|v3|v0|Q~2_combout\);

-- Location: IOIBUF_X0_Y6_N15
\Clock~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clock,
	o => \Clock~input_o\);

-- Location: CLKCTRL_G3
\Clock~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Clock~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Clock~inputclkctrl_outclk\);

-- Location: IOIBUF_X17_Y0_N22
\Write1[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Write1(0),
	o => \Write1[0]~input_o\);

-- Location: IOIBUF_X10_Y20_N1
\Write1AD[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Write1AD(0),
	o => \Write1AD[0]~input_o\);

-- Location: IOIBUF_X10_Y17_N8
\Write1AD[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Write1AD(1),
	o => \Write1AD[1]~input_o\);

-- Location: IOIBUF_X10_Y18_N22
\Write1AD[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Write1AD(2),
	o => \Write1AD[2]~input_o\);

-- Location: LCCOMB_X16_Y13_N18
\v0|v8|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \v0|v8|Q~0_combout\ = (!\Write1AD[0]~input_o\ & (\Write1AD[1]~input_o\ & !\Write1AD[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Write1AD[0]~input_o\,
	datab => \Write1AD[1]~input_o\,
	datad => \Write1AD[2]~input_o\,
	combout => \v0|v8|Q~0_combout\);

-- Location: FF_X19_Y9_N25
\reg2|gen_register:0:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \Write1[0]~input_o\,
	sload => VCC,
	ena => \v0|v8|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg2|gen_register:0:vff|O~q\);

-- Location: LCCOMB_X17_Y9_N22
\read_mux1|v6|v3|v0|Q~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_mux1|v6|v3|v0|Q~3_combout\ = (\Read1AD[1]~input_o\ & !\Read1AD[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Read1AD[1]~input_o\,
	datad => \Read1AD[2]~input_o\,
	combout => \read_mux1|v6|v3|v0|Q~3_combout\);

-- Location: LCCOMB_X16_Y13_N4
\v0|v6|Q\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \v0|v6|Q~combout\ = (\Write1AD[0]~input_o\ & (!\Write1AD[1]~input_o\ & !\Write1AD[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Write1AD[0]~input_o\,
	datab => \Write1AD[1]~input_o\,
	datad => \Write1AD[2]~input_o\,
	combout => \v0|v6|Q~combout\);

-- Location: FF_X20_Y9_N25
\reg1|gen_register:0:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \Write1[0]~input_o\,
	sload => VCC,
	ena => \v0|v6|Q~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|gen_register:0:vff|O~q\);

-- Location: LCCOMB_X20_Y9_N26
\read_mux1|V0|v2|v0|Q\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_mux1|V0|v2|v0|Q~combout\ = (\reg1|gen_register:0:vff|O~q\ & \Read1AD[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg1|gen_register:0:vff|O~q\,
	datad => \Read1AD[0]~input_o\,
	combout => \read_mux1|V0|v2|v0|Q~combout\);

-- Location: LCCOMB_X17_Y9_N0
\read_mux1|v6|v3|v0|Q~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_mux1|v6|v3|v0|Q~4_combout\ = (\read_mux1|v6|v3|v0|Q~2_combout\ & (((\read_mux1|v6|v3|v0|Q~3_combout\)))) # (!\read_mux1|v6|v3|v0|Q~2_combout\ & ((\read_mux1|v6|v3|v0|Q~3_combout\ & (\reg2|gen_register:0:vff|O~q\)) # 
-- (!\read_mux1|v6|v3|v0|Q~3_combout\ & ((\read_mux1|V0|v2|v0|Q~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \read_mux1|v6|v3|v0|Q~2_combout\,
	datab => \reg2|gen_register:0:vff|O~q\,
	datac => \read_mux1|v6|v3|v0|Q~3_combout\,
	datad => \read_mux1|V0|v2|v0|Q~combout\,
	combout => \read_mux1|v6|v3|v0|Q~4_combout\);

-- Location: LCCOMB_X16_Y13_N22
\v0|v10|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \v0|v10|Q~0_combout\ = (\Write1AD[0]~input_o\ & (\Write1AD[1]~input_o\ & !\Write1AD[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Write1AD[0]~input_o\,
	datab => \Write1AD[1]~input_o\,
	datad => \Write1AD[2]~input_o\,
	combout => \v0|v10|Q~0_combout\);

-- Location: FF_X19_Y9_N27
\reg3|gen_register:0:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \Write1[0]~input_o\,
	sload => VCC,
	ena => \v0|v10|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|gen_register:0:vff|O~q\);

-- Location: LCCOMB_X16_Y13_N0
\v0|v18|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \v0|v18|Q~0_combout\ = (\Write1AD[0]~input_o\ & (\Write1AD[1]~input_o\ & \Write1AD[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Write1AD[0]~input_o\,
	datab => \Write1AD[1]~input_o\,
	datad => \Write1AD[2]~input_o\,
	combout => \v0|v18|Q~0_combout\);

-- Location: FF_X18_Y9_N3
\reg7|gen_register:0:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \Write1[0]~input_o\,
	sload => VCC,
	ena => \v0|v18|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg7|gen_register:0:vff|O~q\);

-- Location: LCCOMB_X16_Y13_N10
\v0|v16|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \v0|v16|Q~0_combout\ = (!\Write1AD[0]~input_o\ & (\Write1AD[1]~input_o\ & \Write1AD[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Write1AD[0]~input_o\,
	datab => \Write1AD[1]~input_o\,
	datad => \Write1AD[2]~input_o\,
	combout => \v0|v16|Q~0_combout\);

-- Location: FF_X18_Y9_N17
\reg6|gen_register:0:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \Write1[0]~input_o\,
	sload => VCC,
	ena => \v0|v16|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg6|gen_register:0:vff|O~q\);

-- Location: LCCOMB_X16_Y13_N6
\v0|v12|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \v0|v12|Q~0_combout\ = (!\Write1AD[0]~input_o\ & (!\Write1AD[1]~input_o\ & \Write1AD[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Write1AD[0]~input_o\,
	datab => \Write1AD[1]~input_o\,
	datad => \Write1AD[2]~input_o\,
	combout => \v0|v12|Q~0_combout\);

-- Location: FF_X17_Y9_N3
\reg4|gen_register:0:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \Write1[0]~input_o\,
	sload => VCC,
	ena => \v0|v12|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|gen_register:0:vff|O~q\);

-- Location: LCCOMB_X16_Y13_N20
\v0|v14|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \v0|v14|Q~0_combout\ = (\Write1AD[0]~input_o\ & (!\Write1AD[1]~input_o\ & \Write1AD[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Write1AD[0]~input_o\,
	datab => \Write1AD[1]~input_o\,
	datad => \Write1AD[2]~input_o\,
	combout => \v0|v14|Q~0_combout\);

-- Location: FF_X17_Y9_N25
\reg5|gen_register:0:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \Write1[0]~input_o\,
	sload => VCC,
	ena => \v0|v14|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg5|gen_register:0:vff|O~q\);

-- Location: LCCOMB_X17_Y9_N24
\read_mux1|v6|v3|v0|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_mux1|v6|v3|v0|Q~0_combout\ = (\Read1AD[1]~input_o\ & (((\Read1AD[0]~input_o\)))) # (!\Read1AD[1]~input_o\ & ((\Read1AD[0]~input_o\ & ((\reg5|gen_register:0:vff|O~q\))) # (!\Read1AD[0]~input_o\ & (\reg4|gen_register:0:vff|O~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg4|gen_register:0:vff|O~q\,
	datab => \Read1AD[1]~input_o\,
	datac => \reg5|gen_register:0:vff|O~q\,
	datad => \Read1AD[0]~input_o\,
	combout => \read_mux1|v6|v3|v0|Q~0_combout\);

-- Location: LCCOMB_X18_Y9_N16
\read_mux1|v6|v3|v0|Q~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_mux1|v6|v3|v0|Q~1_combout\ = (\Read1AD[1]~input_o\ & ((\read_mux1|v6|v3|v0|Q~0_combout\ & (\reg7|gen_register:0:vff|O~q\)) # (!\read_mux1|v6|v3|v0|Q~0_combout\ & ((\reg6|gen_register:0:vff|O~q\))))) # (!\Read1AD[1]~input_o\ & 
-- (((\read_mux1|v6|v3|v0|Q~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Read1AD[1]~input_o\,
	datab => \reg7|gen_register:0:vff|O~q\,
	datac => \reg6|gen_register:0:vff|O~q\,
	datad => \read_mux1|v6|v3|v0|Q~0_combout\,
	combout => \read_mux1|v6|v3|v0|Q~1_combout\);

-- Location: LCCOMB_X17_Y9_N18
\read_mux1|v6|v3|v0|Q~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_mux1|v6|v3|v0|Q~5_combout\ = (\read_mux1|v6|v3|v0|Q~2_combout\ & ((\read_mux1|v6|v3|v0|Q~4_combout\ & (\reg3|gen_register:0:vff|O~q\)) # (!\read_mux1|v6|v3|v0|Q~4_combout\ & ((\read_mux1|v6|v3|v0|Q~1_combout\))))) # 
-- (!\read_mux1|v6|v3|v0|Q~2_combout\ & (\read_mux1|v6|v3|v0|Q~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \read_mux1|v6|v3|v0|Q~2_combout\,
	datab => \read_mux1|v6|v3|v0|Q~4_combout\,
	datac => \reg3|gen_register:0:vff|O~q\,
	datad => \read_mux1|v6|v3|v0|Q~1_combout\,
	combout => \read_mux1|v6|v3|v0|Q~5_combout\);

-- Location: IOIBUF_X15_Y0_N22
\Write1[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Write1(1),
	o => \Write1[1]~input_o\);

-- Location: FF_X19_Y9_N23
\reg3|gen_register:1:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \Write1[1]~input_o\,
	sload => VCC,
	ena => \v0|v10|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|gen_register:1:vff|O~q\);

-- Location: FF_X20_Y9_N13
\reg1|gen_register:1:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \Write1[1]~input_o\,
	sload => VCC,
	ena => \v0|v6|Q~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|gen_register:1:vff|O~q\);

-- Location: LCCOMB_X20_Y9_N30
\read_mux1|V0|v2|v1|Q\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_mux1|V0|v2|v1|Q~combout\ = (\reg1|gen_register:1:vff|O~q\ & \Read1AD[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg1|gen_register:1:vff|O~q\,
	datad => \Read1AD[0]~input_o\,
	combout => \read_mux1|V0|v2|v1|Q~combout\);

-- Location: FF_X17_Y9_N15
\reg4|gen_register:1:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \Write1[1]~input_o\,
	sload => VCC,
	ena => \v0|v12|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|gen_register:1:vff|O~q\);

-- Location: FF_X17_Y9_N13
\reg5|gen_register:1:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \Write1[1]~input_o\,
	sload => VCC,
	ena => \v0|v14|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg5|gen_register:1:vff|O~q\);

-- Location: LCCOMB_X17_Y9_N12
\read_mux1|v6|v3|v1|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_mux1|v6|v3|v1|Q~0_combout\ = (\Read1AD[1]~input_o\ & (((\Read1AD[0]~input_o\)))) # (!\Read1AD[1]~input_o\ & ((\Read1AD[0]~input_o\ & ((\reg5|gen_register:1:vff|O~q\))) # (!\Read1AD[0]~input_o\ & (\reg4|gen_register:1:vff|O~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg4|gen_register:1:vff|O~q\,
	datab => \Read1AD[1]~input_o\,
	datac => \reg5|gen_register:1:vff|O~q\,
	datad => \Read1AD[0]~input_o\,
	combout => \read_mux1|v6|v3|v1|Q~0_combout\);

-- Location: FF_X18_Y9_N5
\reg6|gen_register:1:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \Write1[1]~input_o\,
	sload => VCC,
	ena => \v0|v16|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg6|gen_register:1:vff|O~q\);

-- Location: FF_X18_Y9_N7
\reg7|gen_register:1:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \Write1[1]~input_o\,
	sload => VCC,
	ena => \v0|v18|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg7|gen_register:1:vff|O~q\);

-- Location: LCCOMB_X18_Y9_N4
\read_mux1|v6|v3|v1|Q~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_mux1|v6|v3|v1|Q~1_combout\ = (\read_mux1|v6|v3|v1|Q~0_combout\ & (((\reg7|gen_register:1:vff|O~q\)) # (!\Read1AD[1]~input_o\))) # (!\read_mux1|v6|v3|v1|Q~0_combout\ & (\Read1AD[1]~input_o\ & (\reg6|gen_register:1:vff|O~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \read_mux1|v6|v3|v1|Q~0_combout\,
	datab => \Read1AD[1]~input_o\,
	datac => \reg6|gen_register:1:vff|O~q\,
	datad => \reg7|gen_register:1:vff|O~q\,
	combout => \read_mux1|v6|v3|v1|Q~1_combout\);

-- Location: LCCOMB_X17_Y9_N8
\read_mux1|v6|v3|v1|Q~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_mux1|v6|v3|v1|Q~2_combout\ = (\read_mux1|v6|v3|v0|Q~2_combout\ & (((\read_mux1|v6|v3|v0|Q~3_combout\) # (\read_mux1|v6|v3|v1|Q~1_combout\)))) # (!\read_mux1|v6|v3|v0|Q~2_combout\ & (\read_mux1|V0|v2|v1|Q~combout\ & 
-- (!\read_mux1|v6|v3|v0|Q~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \read_mux1|v6|v3|v0|Q~2_combout\,
	datab => \read_mux1|V0|v2|v1|Q~combout\,
	datac => \read_mux1|v6|v3|v0|Q~3_combout\,
	datad => \read_mux1|v6|v3|v1|Q~1_combout\,
	combout => \read_mux1|v6|v3|v1|Q~2_combout\);

-- Location: FF_X19_Y9_N29
\reg2|gen_register:1:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \Write1[1]~input_o\,
	sload => VCC,
	ena => \v0|v8|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg2|gen_register:1:vff|O~q\);

-- Location: LCCOMB_X19_Y9_N28
\read_mux1|v6|v3|v1|Q~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_mux1|v6|v3|v1|Q~3_combout\ = (\read_mux1|v6|v3|v1|Q~2_combout\ & ((\reg3|gen_register:1:vff|O~q\) # ((!\read_mux1|v6|v3|v0|Q~3_combout\)))) # (!\read_mux1|v6|v3|v1|Q~2_combout\ & (((\reg2|gen_register:1:vff|O~q\ & 
-- \read_mux1|v6|v3|v0|Q~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg3|gen_register:1:vff|O~q\,
	datab => \read_mux1|v6|v3|v1|Q~2_combout\,
	datac => \reg2|gen_register:1:vff|O~q\,
	datad => \read_mux1|v6|v3|v0|Q~3_combout\,
	combout => \read_mux1|v6|v3|v1|Q~3_combout\);

-- Location: IOIBUF_X17_Y0_N1
\Write1[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Write1(2),
	o => \Write1[2]~input_o\);

-- Location: FF_X20_Y9_N1
\reg1|gen_register:2:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \Write1[2]~input_o\,
	sload => VCC,
	ena => \v0|v6|Q~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|gen_register:2:vff|O~q\);

-- Location: LCCOMB_X20_Y9_N2
\read_mux1|V0|v2|v2|Q\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_mux1|V0|v2|v2|Q~combout\ = (\reg1|gen_register:2:vff|O~q\ & \Read1AD[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg1|gen_register:2:vff|O~q\,
	datad => \Read1AD[0]~input_o\,
	combout => \read_mux1|V0|v2|v2|Q~combout\);

-- Location: FF_X19_Y9_N1
\reg2|gen_register:2:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \Write1[2]~input_o\,
	sload => VCC,
	ena => \v0|v8|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg2|gen_register:2:vff|O~q\);

-- Location: LCCOMB_X17_Y9_N30
\read_mux1|v6|v3|v2|Q~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_mux1|v6|v3|v2|Q~2_combout\ = (\read_mux1|v6|v3|v0|Q~3_combout\ & ((\read_mux1|v6|v3|v0|Q~2_combout\) # ((\reg2|gen_register:2:vff|O~q\)))) # (!\read_mux1|v6|v3|v0|Q~3_combout\ & (!\read_mux1|v6|v3|v0|Q~2_combout\ & (\read_mux1|V0|v2|v2|Q~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \read_mux1|v6|v3|v0|Q~3_combout\,
	datab => \read_mux1|v6|v3|v0|Q~2_combout\,
	datac => \read_mux1|V0|v2|v2|Q~combout\,
	datad => \reg2|gen_register:2:vff|O~q\,
	combout => \read_mux1|v6|v3|v2|Q~2_combout\);

-- Location: FF_X17_Y9_N5
\reg4|gen_register:2:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \Write1[2]~input_o\,
	sload => VCC,
	ena => \v0|v12|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|gen_register:2:vff|O~q\);

-- Location: FF_X17_Y9_N11
\reg5|gen_register:2:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \Write1[2]~input_o\,
	sload => VCC,
	ena => \v0|v14|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg5|gen_register:2:vff|O~q\);

-- Location: LCCOMB_X17_Y9_N10
\read_mux1|v6|v3|v2|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_mux1|v6|v3|v2|Q~0_combout\ = (\Read1AD[1]~input_o\ & (((\Read1AD[0]~input_o\)))) # (!\Read1AD[1]~input_o\ & ((\Read1AD[0]~input_o\ & ((\reg5|gen_register:2:vff|O~q\))) # (!\Read1AD[0]~input_o\ & (\reg4|gen_register:2:vff|O~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Read1AD[1]~input_o\,
	datab => \reg4|gen_register:2:vff|O~q\,
	datac => \reg5|gen_register:2:vff|O~q\,
	datad => \Read1AD[0]~input_o\,
	combout => \read_mux1|v6|v3|v2|Q~0_combout\);

-- Location: FF_X18_Y9_N25
\reg6|gen_register:2:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \Write1[2]~input_o\,
	sload => VCC,
	ena => \v0|v16|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg6|gen_register:2:vff|O~q\);

-- Location: FF_X18_Y9_N11
\reg7|gen_register:2:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \Write1[2]~input_o\,
	sload => VCC,
	ena => \v0|v18|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg7|gen_register:2:vff|O~q\);

-- Location: LCCOMB_X18_Y9_N24
\read_mux1|v6|v3|v2|Q~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_mux1|v6|v3|v2|Q~1_combout\ = (\read_mux1|v6|v3|v2|Q~0_combout\ & (((\reg7|gen_register:2:vff|O~q\)) # (!\Read1AD[1]~input_o\))) # (!\read_mux1|v6|v3|v2|Q~0_combout\ & (\Read1AD[1]~input_o\ & (\reg6|gen_register:2:vff|O~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \read_mux1|v6|v3|v2|Q~0_combout\,
	datab => \Read1AD[1]~input_o\,
	datac => \reg6|gen_register:2:vff|O~q\,
	datad => \reg7|gen_register:2:vff|O~q\,
	combout => \read_mux1|v6|v3|v2|Q~1_combout\);

-- Location: FF_X19_Y9_N11
\reg3|gen_register:2:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \Write1[2]~input_o\,
	sload => VCC,
	ena => \v0|v10|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|gen_register:2:vff|O~q\);

-- Location: LCCOMB_X17_Y9_N16
\read_mux1|v6|v3|v2|Q~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_mux1|v6|v3|v2|Q~3_combout\ = (\read_mux1|v6|v3|v2|Q~2_combout\ & (((\reg3|gen_register:2:vff|O~q\) # (!\read_mux1|v6|v3|v0|Q~2_combout\)))) # (!\read_mux1|v6|v3|v2|Q~2_combout\ & (\read_mux1|v6|v3|v2|Q~1_combout\ & 
-- (\read_mux1|v6|v3|v0|Q~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \read_mux1|v6|v3|v2|Q~2_combout\,
	datab => \read_mux1|v6|v3|v2|Q~1_combout\,
	datac => \read_mux1|v6|v3|v0|Q~2_combout\,
	datad => \reg3|gen_register:2:vff|O~q\,
	combout => \read_mux1|v6|v3|v2|Q~3_combout\);

-- Location: IOIBUF_X22_Y0_N22
\Write1[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Write1(3),
	o => \Write1[3]~input_o\);

-- Location: FF_X18_Y9_N23
\reg7|gen_register:3:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \Write1[3]~input_o\,
	sload => VCC,
	ena => \v0|v18|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg7|gen_register:3:vff|O~q\);

-- Location: FF_X18_Y9_N29
\reg6|gen_register:3:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \Write1[3]~input_o\,
	sload => VCC,
	ena => \v0|v16|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg6|gen_register:3:vff|O~q\);

-- Location: FF_X22_Y13_N17
\reg4|gen_register:3:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \Write1[3]~input_o\,
	sload => VCC,
	ena => \v0|v12|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|gen_register:3:vff|O~q\);

-- Location: FF_X18_Y13_N25
\reg5|gen_register:3:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \Write1[3]~input_o\,
	sload => VCC,
	ena => \v0|v14|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg5|gen_register:3:vff|O~q\);

-- Location: LCCOMB_X18_Y13_N26
\read_mux1|v6|v3|v3|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_mux1|v6|v3|v3|Q~0_combout\ = (\Read1AD[0]~input_o\ & (((\reg5|gen_register:3:vff|O~q\) # (\Read1AD[1]~input_o\)))) # (!\Read1AD[0]~input_o\ & (\reg4|gen_register:3:vff|O~q\ & ((!\Read1AD[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg4|gen_register:3:vff|O~q\,
	datab => \reg5|gen_register:3:vff|O~q\,
	datac => \Read1AD[0]~input_o\,
	datad => \Read1AD[1]~input_o\,
	combout => \read_mux1|v6|v3|v3|Q~0_combout\);

-- Location: LCCOMB_X18_Y9_N28
\read_mux1|v6|v3|v3|Q~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_mux1|v6|v3|v3|Q~1_combout\ = (\Read1AD[1]~input_o\ & ((\read_mux1|v6|v3|v3|Q~0_combout\ & (\reg7|gen_register:3:vff|O~q\)) # (!\read_mux1|v6|v3|v3|Q~0_combout\ & ((\reg6|gen_register:3:vff|O~q\))))) # (!\Read1AD[1]~input_o\ & 
-- (((\read_mux1|v6|v3|v3|Q~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg7|gen_register:3:vff|O~q\,
	datab => \Read1AD[1]~input_o\,
	datac => \reg6|gen_register:3:vff|O~q\,
	datad => \read_mux1|v6|v3|v3|Q~0_combout\,
	combout => \read_mux1|v6|v3|v3|Q~1_combout\);

-- Location: FF_X20_Y9_N21
\reg1|gen_register:3:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \Write1[3]~input_o\,
	sload => VCC,
	ena => \v0|v6|Q~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|gen_register:3:vff|O~q\);

-- Location: LCCOMB_X20_Y9_N22
\read_mux1|V0|v2|v3|Q\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_mux1|V0|v2|v3|Q~combout\ = (\reg1|gen_register:3:vff|O~q\ & \Read1AD[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg1|gen_register:3:vff|O~q\,
	datad => \Read1AD[0]~input_o\,
	combout => \read_mux1|V0|v2|v3|Q~combout\);

-- Location: LCCOMB_X19_Y9_N14
\read_mux1|v6|v3|v3|Q~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_mux1|v6|v3|v3|Q~2_combout\ = (\read_mux1|v6|v3|v0|Q~2_combout\ & ((\read_mux1|v6|v3|v3|Q~1_combout\) # ((\read_mux1|v6|v3|v0|Q~3_combout\)))) # (!\read_mux1|v6|v3|v0|Q~2_combout\ & (((!\read_mux1|v6|v3|v0|Q~3_combout\ & 
-- \read_mux1|V0|v2|v3|Q~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \read_mux1|v6|v3|v0|Q~2_combout\,
	datab => \read_mux1|v6|v3|v3|Q~1_combout\,
	datac => \read_mux1|v6|v3|v0|Q~3_combout\,
	datad => \read_mux1|V0|v2|v3|Q~combout\,
	combout => \read_mux1|v6|v3|v3|Q~2_combout\);

-- Location: FF_X19_Y9_N5
\reg2|gen_register:3:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \Write1[3]~input_o\,
	sload => VCC,
	ena => \v0|v8|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg2|gen_register:3:vff|O~q\);

-- Location: FF_X19_Y9_N17
\reg3|gen_register:3:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \Write1[3]~input_o\,
	sload => VCC,
	ena => \v0|v10|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|gen_register:3:vff|O~q\);

-- Location: LCCOMB_X19_Y9_N4
\read_mux1|v6|v3|v3|Q~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_mux1|v6|v3|v3|Q~3_combout\ = (\read_mux1|v6|v3|v0|Q~3_combout\ & ((\read_mux1|v6|v3|v3|Q~2_combout\ & ((\reg3|gen_register:3:vff|O~q\))) # (!\read_mux1|v6|v3|v3|Q~2_combout\ & (\reg2|gen_register:3:vff|O~q\)))) # (!\read_mux1|v6|v3|v0|Q~3_combout\ & 
-- (\read_mux1|v6|v3|v3|Q~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \read_mux1|v6|v3|v0|Q~3_combout\,
	datab => \read_mux1|v6|v3|v3|Q~2_combout\,
	datac => \reg2|gen_register:3:vff|O~q\,
	datad => \reg3|gen_register:3:vff|O~q\,
	combout => \read_mux1|v6|v3|v3|Q~3_combout\);

-- Location: IOIBUF_X24_Y0_N1
\Write1[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Write1(4),
	o => \Write1[4]~input_o\);

-- Location: FF_X18_Y9_N27
\reg7|gen_register:4:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \Write1[4]~input_o\,
	sload => VCC,
	ena => \v0|v18|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg7|gen_register:4:vff|O~q\);

-- Location: FF_X18_Y9_N9
\reg6|gen_register:4:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \Write1[4]~input_o\,
	sload => VCC,
	ena => \v0|v16|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg6|gen_register:4:vff|O~q\);

-- Location: FF_X22_Y13_N11
\reg4|gen_register:4:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \Write1[4]~input_o\,
	sload => VCC,
	ena => \v0|v12|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|gen_register:4:vff|O~q\);

-- Location: FF_X16_Y13_N25
\reg5|gen_register:4:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \Write1[4]~input_o\,
	sload => VCC,
	ena => \v0|v14|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg5|gen_register:4:vff|O~q\);

-- Location: LCCOMB_X16_Y13_N24
\read_mux1|v6|v3|v4|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_mux1|v6|v3|v4|Q~0_combout\ = (\Read1AD[1]~input_o\ & (((\Read1AD[0]~input_o\)))) # (!\Read1AD[1]~input_o\ & ((\Read1AD[0]~input_o\ & ((\reg5|gen_register:4:vff|O~q\))) # (!\Read1AD[0]~input_o\ & (\reg4|gen_register:4:vff|O~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Read1AD[1]~input_o\,
	datab => \reg4|gen_register:4:vff|O~q\,
	datac => \reg5|gen_register:4:vff|O~q\,
	datad => \Read1AD[0]~input_o\,
	combout => \read_mux1|v6|v3|v4|Q~0_combout\);

-- Location: LCCOMB_X18_Y9_N8
\read_mux1|v6|v3|v4|Q~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_mux1|v6|v3|v4|Q~1_combout\ = (\Read1AD[1]~input_o\ & ((\read_mux1|v6|v3|v4|Q~0_combout\ & (\reg7|gen_register:4:vff|O~q\)) # (!\read_mux1|v6|v3|v4|Q~0_combout\ & ((\reg6|gen_register:4:vff|O~q\))))) # (!\Read1AD[1]~input_o\ & 
-- (((\read_mux1|v6|v3|v4|Q~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg7|gen_register:4:vff|O~q\,
	datab => \Read1AD[1]~input_o\,
	datac => \reg6|gen_register:4:vff|O~q\,
	datad => \read_mux1|v6|v3|v4|Q~0_combout\,
	combout => \read_mux1|v6|v3|v4|Q~1_combout\);

-- Location: FF_X19_Y9_N19
\reg2|gen_register:4:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \Write1[4]~input_o\,
	sload => VCC,
	ena => \v0|v8|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg2|gen_register:4:vff|O~q\);

-- Location: FF_X20_Y9_N17
\reg1|gen_register:4:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \Write1[4]~input_o\,
	sload => VCC,
	ena => \v0|v6|Q~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|gen_register:4:vff|O~q\);

-- Location: LCCOMB_X20_Y9_N18
\read_mux1|V0|v2|v4|Q\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_mux1|V0|v2|v4|Q~combout\ = (\reg1|gen_register:4:vff|O~q\ & \Read1AD[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg1|gen_register:4:vff|O~q\,
	datad => \Read1AD[0]~input_o\,
	combout => \read_mux1|V0|v2|v4|Q~combout\);

-- Location: LCCOMB_X19_Y9_N20
\read_mux1|v6|v3|v4|Q~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_mux1|v6|v3|v4|Q~2_combout\ = (\read_mux1|v6|v3|v0|Q~2_combout\ & (\read_mux1|v6|v3|v0|Q~3_combout\)) # (!\read_mux1|v6|v3|v0|Q~2_combout\ & ((\read_mux1|v6|v3|v0|Q~3_combout\ & (\reg2|gen_register:4:vff|O~q\)) # (!\read_mux1|v6|v3|v0|Q~3_combout\ & 
-- ((\read_mux1|V0|v2|v4|Q~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \read_mux1|v6|v3|v0|Q~2_combout\,
	datab => \read_mux1|v6|v3|v0|Q~3_combout\,
	datac => \reg2|gen_register:4:vff|O~q\,
	datad => \read_mux1|V0|v2|v4|Q~combout\,
	combout => \read_mux1|v6|v3|v4|Q~2_combout\);

-- Location: FF_X19_Y9_N31
\reg3|gen_register:4:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \Write1[4]~input_o\,
	sload => VCC,
	ena => \v0|v10|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|gen_register:4:vff|O~q\);

-- Location: LCCOMB_X19_Y9_N8
\read_mux1|v6|v3|v4|Q~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_mux1|v6|v3|v4|Q~3_combout\ = (\read_mux1|v6|v3|v4|Q~2_combout\ & (((\reg3|gen_register:4:vff|O~q\) # (!\read_mux1|v6|v3|v0|Q~2_combout\)))) # (!\read_mux1|v6|v3|v4|Q~2_combout\ & (\read_mux1|v6|v3|v4|Q~1_combout\ & 
-- ((\read_mux1|v6|v3|v0|Q~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \read_mux1|v6|v3|v4|Q~1_combout\,
	datab => \read_mux1|v6|v3|v4|Q~2_combout\,
	datac => \reg3|gen_register:4:vff|O~q\,
	datad => \read_mux1|v6|v3|v0|Q~2_combout\,
	combout => \read_mux1|v6|v3|v4|Q~3_combout\);

-- Location: IOIBUF_X3_Y10_N29
\Write1[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Write1(5),
	o => \Write1[5]~input_o\);

-- Location: FF_X18_Y9_N15
\reg7|gen_register:5:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \Write1[5]~input_o\,
	sload => VCC,
	ena => \v0|v18|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg7|gen_register:5:vff|O~q\);

-- Location: FF_X18_Y9_N13
\reg6|gen_register:5:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \Write1[5]~input_o\,
	sload => VCC,
	ena => \v0|v16|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg6|gen_register:5:vff|O~q\);

-- Location: FF_X22_Y13_N21
\reg4|gen_register:5:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \Write1[5]~input_o\,
	sload => VCC,
	ena => \v0|v12|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|gen_register:5:vff|O~q\);

-- Location: FF_X16_Y13_N27
\reg5|gen_register:5:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \Write1[5]~input_o\,
	sload => VCC,
	ena => \v0|v14|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg5|gen_register:5:vff|O~q\);

-- Location: LCCOMB_X16_Y13_N26
\read_mux1|v6|v3|v5|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_mux1|v6|v3|v5|Q~0_combout\ = (\Read1AD[1]~input_o\ & (((\Read1AD[0]~input_o\)))) # (!\Read1AD[1]~input_o\ & ((\Read1AD[0]~input_o\ & ((\reg5|gen_register:5:vff|O~q\))) # (!\Read1AD[0]~input_o\ & (\reg4|gen_register:5:vff|O~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Read1AD[1]~input_o\,
	datab => \reg4|gen_register:5:vff|O~q\,
	datac => \reg5|gen_register:5:vff|O~q\,
	datad => \Read1AD[0]~input_o\,
	combout => \read_mux1|v6|v3|v5|Q~0_combout\);

-- Location: LCCOMB_X18_Y9_N12
\read_mux1|v6|v3|v5|Q~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_mux1|v6|v3|v5|Q~1_combout\ = (\Read1AD[1]~input_o\ & ((\read_mux1|v6|v3|v5|Q~0_combout\ & (\reg7|gen_register:5:vff|O~q\)) # (!\read_mux1|v6|v3|v5|Q~0_combout\ & ((\reg6|gen_register:5:vff|O~q\))))) # (!\Read1AD[1]~input_o\ & 
-- (((\read_mux1|v6|v3|v5|Q~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg7|gen_register:5:vff|O~q\,
	datab => \Read1AD[1]~input_o\,
	datac => \reg6|gen_register:5:vff|O~q\,
	datad => \read_mux1|v6|v3|v5|Q~0_combout\,
	combout => \read_mux1|v6|v3|v5|Q~1_combout\);

-- Location: FF_X20_Y9_N5
\reg1|gen_register:5:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \Write1[5]~input_o\,
	sload => VCC,
	ena => \v0|v6|Q~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|gen_register:5:vff|O~q\);

-- Location: LCCOMB_X20_Y9_N14
\read_mux1|V0|v2|v5|Q\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_mux1|V0|v2|v5|Q~combout\ = (\reg1|gen_register:5:vff|O~q\ & \Read1AD[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reg1|gen_register:5:vff|O~q\,
	datad => \Read1AD[0]~input_o\,
	combout => \read_mux1|V0|v2|v5|Q~combout\);

-- Location: LCCOMB_X19_Y9_N12
\read_mux1|v6|v3|v5|Q~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_mux1|v6|v3|v5|Q~2_combout\ = (\read_mux1|v6|v3|v0|Q~3_combout\ & (((\read_mux1|v6|v3|v0|Q~2_combout\)))) # (!\read_mux1|v6|v3|v0|Q~3_combout\ & ((\read_mux1|v6|v3|v0|Q~2_combout\ & (\read_mux1|v6|v3|v5|Q~1_combout\)) # 
-- (!\read_mux1|v6|v3|v0|Q~2_combout\ & ((\read_mux1|V0|v2|v5|Q~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \read_mux1|v6|v3|v5|Q~1_combout\,
	datab => \read_mux1|v6|v3|v0|Q~3_combout\,
	datac => \read_mux1|V0|v2|v5|Q~combout\,
	datad => \read_mux1|v6|v3|v0|Q~2_combout\,
	combout => \read_mux1|v6|v3|v5|Q~2_combout\);

-- Location: FF_X24_Y9_N9
\reg3|gen_register:5:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \Write1[5]~input_o\,
	sload => VCC,
	ena => \v0|v10|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|gen_register:5:vff|O~q\);

-- Location: FF_X19_Y9_N3
\reg2|gen_register:5:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \Write1[5]~input_o\,
	sload => VCC,
	ena => \v0|v8|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg2|gen_register:5:vff|O~q\);

-- Location: LCCOMB_X19_Y9_N2
\read_mux1|v6|v3|v5|Q~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_mux1|v6|v3|v5|Q~3_combout\ = (\read_mux1|v6|v3|v5|Q~2_combout\ & ((\reg3|gen_register:5:vff|O~q\) # ((!\read_mux1|v6|v3|v0|Q~3_combout\)))) # (!\read_mux1|v6|v3|v5|Q~2_combout\ & (((\reg2|gen_register:5:vff|O~q\ & 
-- \read_mux1|v6|v3|v0|Q~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \read_mux1|v6|v3|v5|Q~2_combout\,
	datab => \reg3|gen_register:5:vff|O~q\,
	datac => \reg2|gen_register:5:vff|O~q\,
	datad => \read_mux1|v6|v3|v0|Q~3_combout\,
	combout => \read_mux1|v6|v3|v5|Q~3_combout\);

-- Location: IOIBUF_X31_Y7_N1
\Write1[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Write1(6),
	o => \Write1[6]~input_o\);

-- Location: FF_X22_Y13_N7
\reg4|gen_register:6:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \Write1[6]~input_o\,
	sload => VCC,
	ena => \v0|v12|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|gen_register:6:vff|O~q\);

-- Location: LCCOMB_X18_Y13_N28
\reg5|gen_register:6:vff|O~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg5|gen_register:6:vff|O~feeder_combout\ = \Write1[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Write1[6]~input_o\,
	combout => \reg5|gen_register:6:vff|O~feeder_combout\);

-- Location: FF_X18_Y13_N29
\reg5|gen_register:6:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \reg5|gen_register:6:vff|O~feeder_combout\,
	ena => \v0|v14|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg5|gen_register:6:vff|O~q\);

-- Location: LCCOMB_X18_Y13_N6
\read_mux1|v6|v3|v6|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_mux1|v6|v3|v6|Q~0_combout\ = (\Read1AD[0]~input_o\ & (((\reg5|gen_register:6:vff|O~q\) # (\Read1AD[1]~input_o\)))) # (!\Read1AD[0]~input_o\ & (\reg4|gen_register:6:vff|O~q\ & ((!\Read1AD[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg4|gen_register:6:vff|O~q\,
	datab => \reg5|gen_register:6:vff|O~q\,
	datac => \Read1AD[0]~input_o\,
	datad => \Read1AD[1]~input_o\,
	combout => \read_mux1|v6|v3|v6|Q~0_combout\);

-- Location: FF_X18_Y9_N19
\reg7|gen_register:6:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \Write1[6]~input_o\,
	sload => VCC,
	ena => \v0|v18|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg7|gen_register:6:vff|O~q\);

-- Location: FF_X18_Y9_N1
\reg6|gen_register:6:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \Write1[6]~input_o\,
	sload => VCC,
	ena => \v0|v16|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg6|gen_register:6:vff|O~q\);

-- Location: LCCOMB_X18_Y9_N0
\read_mux1|v6|v3|v6|Q~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_mux1|v6|v3|v6|Q~1_combout\ = (\read_mux1|v6|v3|v6|Q~0_combout\ & ((\reg7|gen_register:6:vff|O~q\) # ((!\Read1AD[1]~input_o\)))) # (!\read_mux1|v6|v3|v6|Q~0_combout\ & (((\reg6|gen_register:6:vff|O~q\ & \Read1AD[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \read_mux1|v6|v3|v6|Q~0_combout\,
	datab => \reg7|gen_register:6:vff|O~q\,
	datac => \reg6|gen_register:6:vff|O~q\,
	datad => \Read1AD[1]~input_o\,
	combout => \read_mux1|v6|v3|v6|Q~1_combout\);

-- Location: FF_X24_Y9_N15
\reg3|gen_register:6:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \Write1[6]~input_o\,
	sload => VCC,
	ena => \v0|v10|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|gen_register:6:vff|O~q\);

-- Location: FF_X20_Y9_N9
\reg1|gen_register:6:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \Write1[6]~input_o\,
	sload => VCC,
	ena => \v0|v6|Q~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|gen_register:6:vff|O~q\);

-- Location: LCCOMB_X20_Y9_N10
\read_mux1|V0|v2|v6|Q\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_mux1|V0|v2|v6|Q~combout\ = (\reg1|gen_register:6:vff|O~q\ & \Read1AD[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reg1|gen_register:6:vff|O~q\,
	datad => \Read1AD[0]~input_o\,
	combout => \read_mux1|V0|v2|v6|Q~combout\);

-- Location: FF_X24_Y9_N3
\reg2|gen_register:6:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \Write1[6]~input_o\,
	sload => VCC,
	ena => \v0|v8|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg2|gen_register:6:vff|O~q\);

-- Location: LCCOMB_X24_Y9_N20
\read_mux1|v6|v3|v6|Q~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_mux1|v6|v3|v6|Q~2_combout\ = (\read_mux1|v6|v3|v0|Q~2_combout\ & (((\read_mux1|v6|v3|v0|Q~3_combout\)))) # (!\read_mux1|v6|v3|v0|Q~2_combout\ & ((\read_mux1|v6|v3|v0|Q~3_combout\ & ((\reg2|gen_register:6:vff|O~q\))) # 
-- (!\read_mux1|v6|v3|v0|Q~3_combout\ & (\read_mux1|V0|v2|v6|Q~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \read_mux1|V0|v2|v6|Q~combout\,
	datab => \read_mux1|v6|v3|v0|Q~2_combout\,
	datac => \read_mux1|v6|v3|v0|Q~3_combout\,
	datad => \reg2|gen_register:6:vff|O~q\,
	combout => \read_mux1|v6|v3|v6|Q~2_combout\);

-- Location: LCCOMB_X24_Y9_N16
\read_mux1|v6|v3|v6|Q~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_mux1|v6|v3|v6|Q~3_combout\ = (\read_mux1|v6|v3|v0|Q~2_combout\ & ((\read_mux1|v6|v3|v6|Q~2_combout\ & ((\reg3|gen_register:6:vff|O~q\))) # (!\read_mux1|v6|v3|v6|Q~2_combout\ & (\read_mux1|v6|v3|v6|Q~1_combout\)))) # 
-- (!\read_mux1|v6|v3|v0|Q~2_combout\ & (((\read_mux1|v6|v3|v6|Q~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \read_mux1|v6|v3|v6|Q~1_combout\,
	datab => \read_mux1|v6|v3|v0|Q~2_combout\,
	datac => \reg3|gen_register:6:vff|O~q\,
	datad => \read_mux1|v6|v3|v6|Q~2_combout\,
	combout => \read_mux1|v6|v3|v6|Q~3_combout\);

-- Location: IOIBUF_X31_Y7_N15
\Write1[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Write1(7),
	o => \Write1[7]~input_o\);

-- Location: FF_X24_Y9_N23
\reg3|gen_register:7:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \Write1[7]~input_o\,
	sload => VCC,
	ena => \v0|v10|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|gen_register:7:vff|O~q\);

-- Location: FF_X24_Y9_N19
\reg2|gen_register:7:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \Write1[7]~input_o\,
	sload => VCC,
	ena => \v0|v8|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg2|gen_register:7:vff|O~q\);

-- Location: FF_X25_Y13_N9
\reg1|gen_register:7:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \Write1[7]~input_o\,
	sload => VCC,
	ena => \v0|v6|Q~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|gen_register:7:vff|O~q\);

-- Location: LCCOMB_X25_Y13_N26
\read_mux1|V0|v2|v7|Q\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_mux1|V0|v2|v7|Q~combout\ = (\Read1AD[0]~input_o\ & \reg1|gen_register:7:vff|O~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Read1AD[0]~input_o\,
	datad => \reg1|gen_register:7:vff|O~q\,
	combout => \read_mux1|V0|v2|v7|Q~combout\);

-- Location: FF_X22_Y13_N3
\reg7|gen_register:7:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \Write1[7]~input_o\,
	sload => VCC,
	ena => \v0|v18|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg7|gen_register:7:vff|O~q\);

-- Location: FF_X18_Y9_N21
\reg6|gen_register:7:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \Write1[7]~input_o\,
	sload => VCC,
	ena => \v0|v16|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg6|gen_register:7:vff|O~q\);

-- Location: FF_X22_Y13_N25
\reg4|gen_register:7:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \Write1[7]~input_o\,
	sload => VCC,
	ena => \v0|v12|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|gen_register:7:vff|O~q\);

-- Location: FF_X16_Y13_N29
\reg5|gen_register:7:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \Write1[7]~input_o\,
	sload => VCC,
	ena => \v0|v14|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg5|gen_register:7:vff|O~q\);

-- Location: LCCOMB_X16_Y13_N28
\read_mux1|v6|v3|v7|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_mux1|v6|v3|v7|Q~0_combout\ = (\Read1AD[1]~input_o\ & (((\Read1AD[0]~input_o\)))) # (!\Read1AD[1]~input_o\ & ((\Read1AD[0]~input_o\ & ((\reg5|gen_register:7:vff|O~q\))) # (!\Read1AD[0]~input_o\ & (\reg4|gen_register:7:vff|O~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Read1AD[1]~input_o\,
	datab => \reg4|gen_register:7:vff|O~q\,
	datac => \reg5|gen_register:7:vff|O~q\,
	datad => \Read1AD[0]~input_o\,
	combout => \read_mux1|v6|v3|v7|Q~0_combout\);

-- Location: LCCOMB_X18_Y9_N20
\read_mux1|v6|v3|v7|Q~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_mux1|v6|v3|v7|Q~1_combout\ = (\Read1AD[1]~input_o\ & ((\read_mux1|v6|v3|v7|Q~0_combout\ & (\reg7|gen_register:7:vff|O~q\)) # (!\read_mux1|v6|v3|v7|Q~0_combout\ & ((\reg6|gen_register:7:vff|O~q\))))) # (!\Read1AD[1]~input_o\ & 
-- (((\read_mux1|v6|v3|v7|Q~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg7|gen_register:7:vff|O~q\,
	datab => \Read1AD[1]~input_o\,
	datac => \reg6|gen_register:7:vff|O~q\,
	datad => \read_mux1|v6|v3|v7|Q~0_combout\,
	combout => \read_mux1|v6|v3|v7|Q~1_combout\);

-- Location: LCCOMB_X24_Y9_N12
\read_mux1|v6|v3|v7|Q~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_mux1|v6|v3|v7|Q~2_combout\ = (\read_mux1|v6|v3|v0|Q~3_combout\ & (\read_mux1|v6|v3|v0|Q~2_combout\)) # (!\read_mux1|v6|v3|v0|Q~3_combout\ & ((\read_mux1|v6|v3|v0|Q~2_combout\ & ((\read_mux1|v6|v3|v7|Q~1_combout\))) # 
-- (!\read_mux1|v6|v3|v0|Q~2_combout\ & (\read_mux1|V0|v2|v7|Q~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \read_mux1|v6|v3|v0|Q~3_combout\,
	datab => \read_mux1|v6|v3|v0|Q~2_combout\,
	datac => \read_mux1|V0|v2|v7|Q~combout\,
	datad => \read_mux1|v6|v3|v7|Q~1_combout\,
	combout => \read_mux1|v6|v3|v7|Q~2_combout\);

-- Location: LCCOMB_X24_Y9_N18
\read_mux1|v6|v3|v7|Q~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_mux1|v6|v3|v7|Q~3_combout\ = (\read_mux1|v6|v3|v0|Q~3_combout\ & ((\read_mux1|v6|v3|v7|Q~2_combout\ & (\reg3|gen_register:7:vff|O~q\)) # (!\read_mux1|v6|v3|v7|Q~2_combout\ & ((\reg2|gen_register:7:vff|O~q\))))) # (!\read_mux1|v6|v3|v0|Q~3_combout\ & 
-- (((\read_mux1|v6|v3|v7|Q~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \read_mux1|v6|v3|v0|Q~3_combout\,
	datab => \reg3|gen_register:7:vff|O~q\,
	datac => \reg2|gen_register:7:vff|O~q\,
	datad => \read_mux1|v6|v3|v7|Q~2_combout\,
	combout => \read_mux1|v6|v3|v7|Q~3_combout\);

-- Location: IOIBUF_X31_Y7_N22
\Write1[8]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Write1(8),
	o => \Write1[8]~input_o\);

-- Location: FF_X24_Y9_N1
\reg2|gen_register:8:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \Write1[8]~input_o\,
	sload => VCC,
	ena => \v0|v8|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg2|gen_register:8:vff|O~q\);

-- Location: FF_X25_Y13_N21
\reg1|gen_register:8:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \Write1[8]~input_o\,
	sload => VCC,
	ena => \v0|v6|Q~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|gen_register:8:vff|O~q\);

-- Location: LCCOMB_X25_Y13_N6
\read_mux1|V0|v2|v8|Q\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_mux1|V0|v2|v8|Q~combout\ = (\Read1AD[0]~input_o\ & \reg1|gen_register:8:vff|O~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Read1AD[0]~input_o\,
	datad => \reg1|gen_register:8:vff|O~q\,
	combout => \read_mux1|V0|v2|v8|Q~combout\);

-- Location: LCCOMB_X23_Y13_N20
\read_mux1|v6|v3|v8|Q~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_mux1|v6|v3|v8|Q~2_combout\ = (\read_mux1|v6|v3|v0|Q~2_combout\ & (\read_mux1|v6|v3|v0|Q~3_combout\)) # (!\read_mux1|v6|v3|v0|Q~2_combout\ & ((\read_mux1|v6|v3|v0|Q~3_combout\ & (\reg2|gen_register:8:vff|O~q\)) # (!\read_mux1|v6|v3|v0|Q~3_combout\ & 
-- ((\read_mux1|V0|v2|v8|Q~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \read_mux1|v6|v3|v0|Q~2_combout\,
	datab => \read_mux1|v6|v3|v0|Q~3_combout\,
	datac => \reg2|gen_register:8:vff|O~q\,
	datad => \read_mux1|V0|v2|v8|Q~combout\,
	combout => \read_mux1|v6|v3|v8|Q~2_combout\);

-- Location: FF_X22_Y13_N31
\reg7|gen_register:8:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \Write1[8]~input_o\,
	sload => VCC,
	ena => \v0|v18|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg7|gen_register:8:vff|O~q\);

-- Location: FF_X23_Y13_N9
\reg6|gen_register:8:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \Write1[8]~input_o\,
	sload => VCC,
	ena => \v0|v16|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg6|gen_register:8:vff|O~q\);

-- Location: FF_X23_Y13_N19
\reg5|gen_register:8:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \Write1[8]~input_o\,
	sload => VCC,
	ena => \v0|v14|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg5|gen_register:8:vff|O~q\);

-- Location: FF_X22_Y13_N29
\reg4|gen_register:8:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \Write1[8]~input_o\,
	sload => VCC,
	ena => \v0|v12|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|gen_register:8:vff|O~q\);

-- Location: LCCOMB_X23_Y13_N18
\read_mux1|v6|v3|v8|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_mux1|v6|v3|v8|Q~0_combout\ = (\Read1AD[0]~input_o\ & ((\Read1AD[1]~input_o\) # ((\reg5|gen_register:8:vff|O~q\)))) # (!\Read1AD[0]~input_o\ & (!\Read1AD[1]~input_o\ & ((\reg4|gen_register:8:vff|O~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Read1AD[0]~input_o\,
	datab => \Read1AD[1]~input_o\,
	datac => \reg5|gen_register:8:vff|O~q\,
	datad => \reg4|gen_register:8:vff|O~q\,
	combout => \read_mux1|v6|v3|v8|Q~0_combout\);

-- Location: LCCOMB_X23_Y13_N8
\read_mux1|v6|v3|v8|Q~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_mux1|v6|v3|v8|Q~1_combout\ = (\Read1AD[1]~input_o\ & ((\read_mux1|v6|v3|v8|Q~0_combout\ & (\reg7|gen_register:8:vff|O~q\)) # (!\read_mux1|v6|v3|v8|Q~0_combout\ & ((\reg6|gen_register:8:vff|O~q\))))) # (!\Read1AD[1]~input_o\ & 
-- (((\read_mux1|v6|v3|v8|Q~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg7|gen_register:8:vff|O~q\,
	datab => \Read1AD[1]~input_o\,
	datac => \reg6|gen_register:8:vff|O~q\,
	datad => \read_mux1|v6|v3|v8|Q~0_combout\,
	combout => \read_mux1|v6|v3|v8|Q~1_combout\);

-- Location: FF_X24_Y9_N27
\reg3|gen_register:8:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \Write1[8]~input_o\,
	sload => VCC,
	ena => \v0|v10|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|gen_register:8:vff|O~q\);

-- Location: LCCOMB_X23_Y13_N30
\read_mux1|v6|v3|v8|Q~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_mux1|v6|v3|v8|Q~3_combout\ = (\read_mux1|v6|v3|v0|Q~2_combout\ & ((\read_mux1|v6|v3|v8|Q~2_combout\ & ((\reg3|gen_register:8:vff|O~q\))) # (!\read_mux1|v6|v3|v8|Q~2_combout\ & (\read_mux1|v6|v3|v8|Q~1_combout\)))) # 
-- (!\read_mux1|v6|v3|v0|Q~2_combout\ & (\read_mux1|v6|v3|v8|Q~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \read_mux1|v6|v3|v0|Q~2_combout\,
	datab => \read_mux1|v6|v3|v8|Q~2_combout\,
	datac => \read_mux1|v6|v3|v8|Q~1_combout\,
	datad => \reg3|gen_register:8:vff|O~q\,
	combout => \read_mux1|v6|v3|v8|Q~3_combout\);

-- Location: IOIBUF_X31_Y7_N8
\Write1[9]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Write1(9),
	o => \Write1[9]~input_o\);

-- Location: FF_X24_Y9_N5
\reg3|gen_register:9:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \Write1[9]~input_o\,
	sload => VCC,
	ena => \v0|v10|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|gen_register:9:vff|O~q\);

-- Location: FF_X24_Y13_N1
\reg2|gen_register:9:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \Write1[9]~input_o\,
	sload => VCC,
	ena => \v0|v8|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg2|gen_register:9:vff|O~q\);

-- Location: FF_X25_Y13_N1
\reg1|gen_register:9:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \Write1[9]~input_o\,
	sload => VCC,
	ena => \v0|v6|Q~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|gen_register:9:vff|O~q\);

-- Location: LCCOMB_X25_Y13_N2
\read_mux1|V0|v2|v9|Q\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_mux1|V0|v2|v9|Q~combout\ = (\Read1AD[0]~input_o\ & \reg1|gen_register:9:vff|O~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Read1AD[0]~input_o\,
	datad => \reg1|gen_register:9:vff|O~q\,
	combout => \read_mux1|V0|v2|v9|Q~combout\);

-- Location: FF_X22_Y13_N19
\reg7|gen_register:9:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \Write1[9]~input_o\,
	sload => VCC,
	ena => \v0|v18|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg7|gen_register:9:vff|O~q\);

-- Location: FF_X23_Y13_N25
\reg6|gen_register:9:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \Write1[9]~input_o\,
	sload => VCC,
	ena => \v0|v16|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg6|gen_register:9:vff|O~q\);

-- Location: FF_X23_Y13_N3
\reg5|gen_register:9:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \Write1[9]~input_o\,
	sload => VCC,
	ena => \v0|v14|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg5|gen_register:9:vff|O~q\);

-- Location: FF_X22_Y13_N9
\reg4|gen_register:9:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \Write1[9]~input_o\,
	sload => VCC,
	ena => \v0|v12|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|gen_register:9:vff|O~q\);

-- Location: LCCOMB_X23_Y13_N2
\read_mux1|v6|v3|v9|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_mux1|v6|v3|v9|Q~0_combout\ = (\Read1AD[0]~input_o\ & ((\Read1AD[1]~input_o\) # ((\reg5|gen_register:9:vff|O~q\)))) # (!\Read1AD[0]~input_o\ & (!\Read1AD[1]~input_o\ & ((\reg4|gen_register:9:vff|O~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Read1AD[0]~input_o\,
	datab => \Read1AD[1]~input_o\,
	datac => \reg5|gen_register:9:vff|O~q\,
	datad => \reg4|gen_register:9:vff|O~q\,
	combout => \read_mux1|v6|v3|v9|Q~0_combout\);

-- Location: LCCOMB_X23_Y13_N24
\read_mux1|v6|v3|v9|Q~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_mux1|v6|v3|v9|Q~1_combout\ = (\Read1AD[1]~input_o\ & ((\read_mux1|v6|v3|v9|Q~0_combout\ & (\reg7|gen_register:9:vff|O~q\)) # (!\read_mux1|v6|v3|v9|Q~0_combout\ & ((\reg6|gen_register:9:vff|O~q\))))) # (!\Read1AD[1]~input_o\ & 
-- (((\read_mux1|v6|v3|v9|Q~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg7|gen_register:9:vff|O~q\,
	datab => \Read1AD[1]~input_o\,
	datac => \reg6|gen_register:9:vff|O~q\,
	datad => \read_mux1|v6|v3|v9|Q~0_combout\,
	combout => \read_mux1|v6|v3|v9|Q~1_combout\);

-- Location: LCCOMB_X23_Y13_N12
\read_mux1|v6|v3|v9|Q~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_mux1|v6|v3|v9|Q~2_combout\ = (\read_mux1|v6|v3|v0|Q~3_combout\ & (((\read_mux1|v6|v3|v0|Q~2_combout\)))) # (!\read_mux1|v6|v3|v0|Q~3_combout\ & ((\read_mux1|v6|v3|v0|Q~2_combout\ & ((\read_mux1|v6|v3|v9|Q~1_combout\))) # 
-- (!\read_mux1|v6|v3|v0|Q~2_combout\ & (\read_mux1|V0|v2|v9|Q~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \read_mux1|V0|v2|v9|Q~combout\,
	datab => \read_mux1|v6|v3|v0|Q~3_combout\,
	datac => \read_mux1|v6|v3|v0|Q~2_combout\,
	datad => \read_mux1|v6|v3|v9|Q~1_combout\,
	combout => \read_mux1|v6|v3|v9|Q~2_combout\);

-- Location: LCCOMB_X24_Y13_N0
\read_mux1|v6|v3|v9|Q~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_mux1|v6|v3|v9|Q~3_combout\ = (\read_mux1|v6|v3|v0|Q~3_combout\ & ((\read_mux1|v6|v3|v9|Q~2_combout\ & (\reg3|gen_register:9:vff|O~q\)) # (!\read_mux1|v6|v3|v9|Q~2_combout\ & ((\reg2|gen_register:9:vff|O~q\))))) # (!\read_mux1|v6|v3|v0|Q~3_combout\ & 
-- (((\read_mux1|v6|v3|v9|Q~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \read_mux1|v6|v3|v0|Q~3_combout\,
	datab => \reg3|gen_register:9:vff|O~q\,
	datac => \reg2|gen_register:9:vff|O~q\,
	datad => \read_mux1|v6|v3|v9|Q~2_combout\,
	combout => \read_mux1|v6|v3|v9|Q~3_combout\);

-- Location: IOIBUF_X31_Y12_N8
\Write1[10]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Write1(10),
	o => \Write1[10]~input_o\);

-- Location: FF_X22_Y13_N15
\reg7|gen_register:10:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \Write1[10]~input_o\,
	sload => VCC,
	ena => \v0|v18|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg7|gen_register:10:vff|O~q\);

-- Location: FF_X23_Y13_N7
\reg6|gen_register:10:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \Write1[10]~input_o\,
	sload => VCC,
	ena => \v0|v16|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg6|gen_register:10:vff|O~q\);

-- Location: FF_X23_Y13_N1
\reg5|gen_register:10:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \Write1[10]~input_o\,
	sload => VCC,
	ena => \v0|v14|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg5|gen_register:10:vff|O~q\);

-- Location: FF_X22_Y13_N13
\reg4|gen_register:10:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \Write1[10]~input_o\,
	sload => VCC,
	ena => \v0|v12|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|gen_register:10:vff|O~q\);

-- Location: LCCOMB_X23_Y13_N0
\read_mux1|v6|v3|v10|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_mux1|v6|v3|v10|Q~0_combout\ = (\Read1AD[0]~input_o\ & ((\Read1AD[1]~input_o\) # ((\reg5|gen_register:10:vff|O~q\)))) # (!\Read1AD[0]~input_o\ & (!\Read1AD[1]~input_o\ & ((\reg4|gen_register:10:vff|O~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Read1AD[0]~input_o\,
	datab => \Read1AD[1]~input_o\,
	datac => \reg5|gen_register:10:vff|O~q\,
	datad => \reg4|gen_register:10:vff|O~q\,
	combout => \read_mux1|v6|v3|v10|Q~0_combout\);

-- Location: LCCOMB_X23_Y13_N6
\read_mux1|v6|v3|v10|Q~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_mux1|v6|v3|v10|Q~1_combout\ = (\Read1AD[1]~input_o\ & ((\read_mux1|v6|v3|v10|Q~0_combout\ & (\reg7|gen_register:10:vff|O~q\)) # (!\read_mux1|v6|v3|v10|Q~0_combout\ & ((\reg6|gen_register:10:vff|O~q\))))) # (!\Read1AD[1]~input_o\ & 
-- (((\read_mux1|v6|v3|v10|Q~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg7|gen_register:10:vff|O~q\,
	datab => \Read1AD[1]~input_o\,
	datac => \reg6|gen_register:10:vff|O~q\,
	datad => \read_mux1|v6|v3|v10|Q~0_combout\,
	combout => \read_mux1|v6|v3|v10|Q~1_combout\);

-- Location: FF_X24_Y13_N3
\reg2|gen_register:10:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \Write1[10]~input_o\,
	sload => VCC,
	ena => \v0|v8|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg2|gen_register:10:vff|O~q\);

-- Location: FF_X25_Y13_N13
\reg1|gen_register:10:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \Write1[10]~input_o\,
	sload => VCC,
	ena => \v0|v6|Q~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|gen_register:10:vff|O~q\);

-- Location: LCCOMB_X25_Y13_N14
\read_mux1|V0|v2|v10|Q\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_mux1|V0|v2|v10|Q~combout\ = (\reg1|gen_register:10:vff|O~q\ & \Read1AD[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg1|gen_register:10:vff|O~q\,
	datad => \Read1AD[0]~input_o\,
	combout => \read_mux1|V0|v2|v10|Q~combout\);

-- Location: LCCOMB_X23_Y13_N26
\read_mux1|v6|v3|v10|Q~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_mux1|v6|v3|v10|Q~2_combout\ = (\read_mux1|v6|v3|v0|Q~3_combout\ & ((\reg2|gen_register:10:vff|O~q\) # ((\read_mux1|v6|v3|v0|Q~2_combout\)))) # (!\read_mux1|v6|v3|v0|Q~3_combout\ & (((!\read_mux1|v6|v3|v0|Q~2_combout\ & 
-- \read_mux1|V0|v2|v10|Q~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg2|gen_register:10:vff|O~q\,
	datab => \read_mux1|v6|v3|v0|Q~3_combout\,
	datac => \read_mux1|v6|v3|v0|Q~2_combout\,
	datad => \read_mux1|V0|v2|v10|Q~combout\,
	combout => \read_mux1|v6|v3|v10|Q~2_combout\);

-- Location: FF_X24_Y13_N29
\reg3|gen_register:10:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \Write1[10]~input_o\,
	sload => VCC,
	ena => \v0|v10|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|gen_register:10:vff|O~q\);

-- Location: LCCOMB_X23_Y13_N28
\read_mux1|v6|v3|v10|Q~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_mux1|v6|v3|v10|Q~3_combout\ = (\read_mux1|v6|v3|v0|Q~2_combout\ & ((\read_mux1|v6|v3|v10|Q~2_combout\ & ((\reg3|gen_register:10:vff|O~q\))) # (!\read_mux1|v6|v3|v10|Q~2_combout\ & (\read_mux1|v6|v3|v10|Q~1_combout\)))) # 
-- (!\read_mux1|v6|v3|v0|Q~2_combout\ & (((\read_mux1|v6|v3|v10|Q~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \read_mux1|v6|v3|v10|Q~1_combout\,
	datab => \read_mux1|v6|v3|v0|Q~2_combout\,
	datac => \read_mux1|v6|v3|v10|Q~2_combout\,
	datad => \reg3|gen_register:10:vff|O~q\,
	combout => \read_mux1|v6|v3|v10|Q~3_combout\);

-- Location: IOIBUF_X31_Y6_N1
\Write1[11]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Write1(11),
	o => \Write1[11]~input_o\);

-- Location: FF_X24_Y9_N25
\reg3|gen_register:11:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \Write1[11]~input_o\,
	sload => VCC,
	ena => \v0|v10|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|gen_register:11:vff|O~q\);

-- Location: FF_X24_Y9_N31
\reg2|gen_register:11:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \Write1[11]~input_o\,
	sload => VCC,
	ena => \v0|v8|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg2|gen_register:11:vff|O~q\);

-- Location: FF_X25_Y13_N17
\reg1|gen_register:11:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \Write1[11]~input_o\,
	sload => VCC,
	ena => \v0|v6|Q~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|gen_register:11:vff|O~q\);

-- Location: LCCOMB_X25_Y13_N10
\read_mux1|V0|v2|v11|Q\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_mux1|V0|v2|v11|Q~combout\ = (\reg1|gen_register:11:vff|O~q\ & \Read1AD[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg1|gen_register:11:vff|O~q\,
	datad => \Read1AD[0]~input_o\,
	combout => \read_mux1|V0|v2|v11|Q~combout\);

-- Location: FF_X22_Y13_N27
\reg7|gen_register:11:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \Write1[11]~input_o\,
	sload => VCC,
	ena => \v0|v18|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg7|gen_register:11:vff|O~q\);

-- Location: FF_X23_Y13_N15
\reg6|gen_register:11:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \Write1[11]~input_o\,
	sload => VCC,
	ena => \v0|v16|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg6|gen_register:11:vff|O~q\);

-- Location: FF_X23_Y13_N17
\reg5|gen_register:11:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \Write1[11]~input_o\,
	sload => VCC,
	ena => \v0|v14|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg5|gen_register:11:vff|O~q\);

-- Location: FF_X22_Y13_N1
\reg4|gen_register:11:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \Write1[11]~input_o\,
	sload => VCC,
	ena => \v0|v12|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|gen_register:11:vff|O~q\);

-- Location: LCCOMB_X23_Y13_N16
\read_mux1|v6|v3|v11|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_mux1|v6|v3|v11|Q~0_combout\ = (\Read1AD[0]~input_o\ & ((\Read1AD[1]~input_o\) # ((\reg5|gen_register:11:vff|O~q\)))) # (!\Read1AD[0]~input_o\ & (!\Read1AD[1]~input_o\ & ((\reg4|gen_register:11:vff|O~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Read1AD[0]~input_o\,
	datab => \Read1AD[1]~input_o\,
	datac => \reg5|gen_register:11:vff|O~q\,
	datad => \reg4|gen_register:11:vff|O~q\,
	combout => \read_mux1|v6|v3|v11|Q~0_combout\);

-- Location: LCCOMB_X23_Y13_N14
\read_mux1|v6|v3|v11|Q~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_mux1|v6|v3|v11|Q~1_combout\ = (\Read1AD[1]~input_o\ & ((\read_mux1|v6|v3|v11|Q~0_combout\ & (\reg7|gen_register:11:vff|O~q\)) # (!\read_mux1|v6|v3|v11|Q~0_combout\ & ((\reg6|gen_register:11:vff|O~q\))))) # (!\Read1AD[1]~input_o\ & 
-- (((\read_mux1|v6|v3|v11|Q~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg7|gen_register:11:vff|O~q\,
	datab => \Read1AD[1]~input_o\,
	datac => \reg6|gen_register:11:vff|O~q\,
	datad => \read_mux1|v6|v3|v11|Q~0_combout\,
	combout => \read_mux1|v6|v3|v11|Q~1_combout\);

-- Location: LCCOMB_X23_Y13_N10
\read_mux1|v6|v3|v11|Q~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_mux1|v6|v3|v11|Q~2_combout\ = (\read_mux1|v6|v3|v0|Q~2_combout\ & (((\read_mux1|v6|v3|v11|Q~1_combout\) # (\read_mux1|v6|v3|v0|Q~3_combout\)))) # (!\read_mux1|v6|v3|v0|Q~2_combout\ & (\read_mux1|V0|v2|v11|Q~combout\ & 
-- ((!\read_mux1|v6|v3|v0|Q~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \read_mux1|V0|v2|v11|Q~combout\,
	datab => \read_mux1|v6|v3|v0|Q~2_combout\,
	datac => \read_mux1|v6|v3|v11|Q~1_combout\,
	datad => \read_mux1|v6|v3|v0|Q~3_combout\,
	combout => \read_mux1|v6|v3|v11|Q~2_combout\);

-- Location: LCCOMB_X24_Y9_N30
\read_mux1|v6|v3|v11|Q~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_mux1|v6|v3|v11|Q~3_combout\ = (\read_mux1|v6|v3|v0|Q~3_combout\ & ((\read_mux1|v6|v3|v11|Q~2_combout\ & (\reg3|gen_register:11:vff|O~q\)) # (!\read_mux1|v6|v3|v11|Q~2_combout\ & ((\reg2|gen_register:11:vff|O~q\))))) # 
-- (!\read_mux1|v6|v3|v0|Q~3_combout\ & (((\read_mux1|v6|v3|v11|Q~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \read_mux1|v6|v3|v0|Q~3_combout\,
	datab => \reg3|gen_register:11:vff|O~q\,
	datac => \reg2|gen_register:11:vff|O~q\,
	datad => \read_mux1|v6|v3|v11|Q~2_combout\,
	combout => \read_mux1|v6|v3|v11|Q~3_combout\);

-- Location: IOIBUF_X31_Y4_N1
\Write1[12]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Write1(12),
	o => \Write1[12]~input_o\);

-- Location: FF_X24_Y13_N11
\reg3|gen_register:12:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \Write1[12]~input_o\,
	sload => VCC,
	ena => \v0|v10|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|gen_register:12:vff|O~q\);

-- Location: FF_X22_Y13_N5
\reg4|gen_register:12:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \Write1[12]~input_o\,
	sload => VCC,
	ena => \v0|v12|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|gen_register:12:vff|O~q\);

-- Location: FF_X23_Y13_N23
\reg5|gen_register:12:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \Write1[12]~input_o\,
	sload => VCC,
	ena => \v0|v14|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg5|gen_register:12:vff|O~q\);

-- Location: LCCOMB_X23_Y13_N22
\read_mux1|v6|v3|v12|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_mux1|v6|v3|v12|Q~0_combout\ = (\Read1AD[0]~input_o\ & (((\reg5|gen_register:12:vff|O~q\) # (\Read1AD[1]~input_o\)))) # (!\Read1AD[0]~input_o\ & (\reg4|gen_register:12:vff|O~q\ & ((!\Read1AD[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Read1AD[0]~input_o\,
	datab => \reg4|gen_register:12:vff|O~q\,
	datac => \reg5|gen_register:12:vff|O~q\,
	datad => \Read1AD[1]~input_o\,
	combout => \read_mux1|v6|v3|v12|Q~0_combout\);

-- Location: FF_X23_Y13_N5
\reg6|gen_register:12:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \Write1[12]~input_o\,
	sload => VCC,
	ena => \v0|v16|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg6|gen_register:12:vff|O~q\);

-- Location: FF_X22_Y13_N23
\reg7|gen_register:12:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \Write1[12]~input_o\,
	sload => VCC,
	ena => \v0|v18|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg7|gen_register:12:vff|O~q\);

-- Location: LCCOMB_X23_Y13_N4
\read_mux1|v6|v3|v12|Q~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_mux1|v6|v3|v12|Q~1_combout\ = (\read_mux1|v6|v3|v12|Q~0_combout\ & (((\reg7|gen_register:12:vff|O~q\)) # (!\Read1AD[1]~input_o\))) # (!\read_mux1|v6|v3|v12|Q~0_combout\ & (\Read1AD[1]~input_o\ & (\reg6|gen_register:12:vff|O~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \read_mux1|v6|v3|v12|Q~0_combout\,
	datab => \Read1AD[1]~input_o\,
	datac => \reg6|gen_register:12:vff|O~q\,
	datad => \reg7|gen_register:12:vff|O~q\,
	combout => \read_mux1|v6|v3|v12|Q~1_combout\);

-- Location: FF_X20_Y9_N29
\reg1|gen_register:12:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \Write1[12]~input_o\,
	sload => VCC,
	ena => \v0|v6|Q~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|gen_register:12:vff|O~q\);

-- Location: LCCOMB_X20_Y9_N6
\read_mux1|V0|v2|v12|Q\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_mux1|V0|v2|v12|Q~combout\ = (\reg1|gen_register:12:vff|O~q\ & \Read1AD[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg1|gen_register:12:vff|O~q\,
	datad => \Read1AD[0]~input_o\,
	combout => \read_mux1|V0|v2|v12|Q~combout\);

-- Location: FF_X24_Y13_N23
\reg2|gen_register:12:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \Write1[12]~input_o\,
	sload => VCC,
	ena => \v0|v8|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg2|gen_register:12:vff|O~q\);

-- Location: LCCOMB_X24_Y13_N8
\read_mux1|v6|v3|v12|Q~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_mux1|v6|v3|v12|Q~2_combout\ = (\read_mux1|v6|v3|v0|Q~3_combout\ & (((\reg2|gen_register:12:vff|O~q\) # (\read_mux1|v6|v3|v0|Q~2_combout\)))) # (!\read_mux1|v6|v3|v0|Q~3_combout\ & (\read_mux1|V0|v2|v12|Q~combout\ & 
-- ((!\read_mux1|v6|v3|v0|Q~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \read_mux1|v6|v3|v0|Q~3_combout\,
	datab => \read_mux1|V0|v2|v12|Q~combout\,
	datac => \reg2|gen_register:12:vff|O~q\,
	datad => \read_mux1|v6|v3|v0|Q~2_combout\,
	combout => \read_mux1|v6|v3|v12|Q~2_combout\);

-- Location: LCCOMB_X24_Y13_N20
\read_mux1|v6|v3|v12|Q~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_mux1|v6|v3|v12|Q~3_combout\ = (\read_mux1|v6|v3|v12|Q~2_combout\ & ((\reg3|gen_register:12:vff|O~q\) # ((!\read_mux1|v6|v3|v0|Q~2_combout\)))) # (!\read_mux1|v6|v3|v12|Q~2_combout\ & (((\read_mux1|v6|v3|v12|Q~1_combout\ & 
-- \read_mux1|v6|v3|v0|Q~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg3|gen_register:12:vff|O~q\,
	datab => \read_mux1|v6|v3|v12|Q~1_combout\,
	datac => \read_mux1|v6|v3|v12|Q~2_combout\,
	datad => \read_mux1|v6|v3|v0|Q~2_combout\,
	combout => \read_mux1|v6|v3|v12|Q~3_combout\);

-- Location: IOIBUF_X10_Y15_N8
\Write1[13]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Write1(13),
	o => \Write1[13]~input_o\);

-- Location: FF_X16_Y13_N9
\reg4|gen_register:13:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \Write1[13]~input_o\,
	sload => VCC,
	ena => \v0|v12|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|gen_register:13:vff|O~q\);

-- Location: FF_X16_Y13_N15
\reg5|gen_register:13:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \Write1[13]~input_o\,
	sload => VCC,
	ena => \v0|v14|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg5|gen_register:13:vff|O~q\);

-- Location: LCCOMB_X16_Y13_N14
\read_mux1|v6|v3|v13|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_mux1|v6|v3|v13|Q~0_combout\ = (\Read1AD[1]~input_o\ & (((\Read1AD[0]~input_o\)))) # (!\Read1AD[1]~input_o\ & ((\Read1AD[0]~input_o\ & ((\reg5|gen_register:13:vff|O~q\))) # (!\Read1AD[0]~input_o\ & (\reg4|gen_register:13:vff|O~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Read1AD[1]~input_o\,
	datab => \reg4|gen_register:13:vff|O~q\,
	datac => \reg5|gen_register:13:vff|O~q\,
	datad => \Read1AD[0]~input_o\,
	combout => \read_mux1|v6|v3|v13|Q~0_combout\);

-- Location: FF_X17_Y13_N19
\reg7|gen_register:13:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \Write1[13]~input_o\,
	sload => VCC,
	ena => \v0|v18|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg7|gen_register:13:vff|O~q\);

-- Location: FF_X17_Y13_N17
\reg6|gen_register:13:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \Write1[13]~input_o\,
	sload => VCC,
	ena => \v0|v16|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg6|gen_register:13:vff|O~q\);

-- Location: LCCOMB_X17_Y13_N20
\read_mux1|v6|v3|v13|Q~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_mux1|v6|v3|v13|Q~1_combout\ = (\read_mux1|v6|v3|v13|Q~0_combout\ & ((\reg7|gen_register:13:vff|O~q\) # ((!\Read1AD[1]~input_o\)))) # (!\read_mux1|v6|v3|v13|Q~0_combout\ & (((\Read1AD[1]~input_o\ & \reg6|gen_register:13:vff|O~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \read_mux1|v6|v3|v13|Q~0_combout\,
	datab => \reg7|gen_register:13:vff|O~q\,
	datac => \Read1AD[1]~input_o\,
	datad => \reg6|gen_register:13:vff|O~q\,
	combout => \read_mux1|v6|v3|v13|Q~1_combout\);

-- Location: FF_X25_Y13_N5
\reg1|gen_register:13:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \Write1[13]~input_o\,
	sload => VCC,
	ena => \v0|v6|Q~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|gen_register:13:vff|O~q\);

-- Location: LCCOMB_X25_Y13_N22
\read_mux1|V0|v2|v13|Q\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_mux1|V0|v2|v13|Q~combout\ = (\Read1AD[0]~input_o\ & \reg1|gen_register:13:vff|O~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Read1AD[0]~input_o\,
	datad => \reg1|gen_register:13:vff|O~q\,
	combout => \read_mux1|V0|v2|v13|Q~combout\);

-- Location: LCCOMB_X24_Y13_N24
\read_mux1|v6|v3|v13|Q~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_mux1|v6|v3|v13|Q~2_combout\ = (\read_mux1|v6|v3|v0|Q~3_combout\ & (((\read_mux1|v6|v3|v0|Q~2_combout\)))) # (!\read_mux1|v6|v3|v0|Q~3_combout\ & ((\read_mux1|v6|v3|v0|Q~2_combout\ & (\read_mux1|v6|v3|v13|Q~1_combout\)) # 
-- (!\read_mux1|v6|v3|v0|Q~2_combout\ & ((\read_mux1|V0|v2|v13|Q~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \read_mux1|v6|v3|v13|Q~1_combout\,
	datab => \read_mux1|V0|v2|v13|Q~combout\,
	datac => \read_mux1|v6|v3|v0|Q~3_combout\,
	datad => \read_mux1|v6|v3|v0|Q~2_combout\,
	combout => \read_mux1|v6|v3|v13|Q~2_combout\);

-- Location: FF_X24_Y13_N7
\reg2|gen_register:13:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \Write1[13]~input_o\,
	sload => VCC,
	ena => \v0|v8|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg2|gen_register:13:vff|O~q\);

-- Location: FF_X24_Y13_N27
\reg3|gen_register:13:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \Write1[13]~input_o\,
	sload => VCC,
	ena => \v0|v10|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|gen_register:13:vff|O~q\);

-- Location: LCCOMB_X24_Y13_N6
\read_mux1|v6|v3|v13|Q~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_mux1|v6|v3|v13|Q~3_combout\ = (\read_mux1|v6|v3|v0|Q~3_combout\ & ((\read_mux1|v6|v3|v13|Q~2_combout\ & ((\reg3|gen_register:13:vff|O~q\))) # (!\read_mux1|v6|v3|v13|Q~2_combout\ & (\reg2|gen_register:13:vff|O~q\)))) # 
-- (!\read_mux1|v6|v3|v0|Q~3_combout\ & (\read_mux1|v6|v3|v13|Q~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \read_mux1|v6|v3|v0|Q~3_combout\,
	datab => \read_mux1|v6|v3|v13|Q~2_combout\,
	datac => \reg2|gen_register:13:vff|O~q\,
	datad => \reg3|gen_register:13:vff|O~q\,
	combout => \read_mux1|v6|v3|v13|Q~3_combout\);

-- Location: IOIBUF_X10_Y18_N8
\Write1[14]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Write1(14),
	o => \Write1[14]~input_o\);

-- Location: FF_X16_Y13_N13
\reg4|gen_register:14:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \Write1[14]~input_o\,
	sload => VCC,
	ena => \v0|v12|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|gen_register:14:vff|O~q\);

-- Location: FF_X16_Y13_N3
\reg5|gen_register:14:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \Write1[14]~input_o\,
	sload => VCC,
	ena => \v0|v14|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg5|gen_register:14:vff|O~q\);

-- Location: LCCOMB_X16_Y13_N2
\read_mux1|v6|v3|v14|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_mux1|v6|v3|v14|Q~0_combout\ = (\Read1AD[1]~input_o\ & (((\Read1AD[0]~input_o\)))) # (!\Read1AD[1]~input_o\ & ((\Read1AD[0]~input_o\ & ((\reg5|gen_register:14:vff|O~q\))) # (!\Read1AD[0]~input_o\ & (\reg4|gen_register:14:vff|O~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Read1AD[1]~input_o\,
	datab => \reg4|gen_register:14:vff|O~q\,
	datac => \reg5|gen_register:14:vff|O~q\,
	datad => \Read1AD[0]~input_o\,
	combout => \read_mux1|v6|v3|v14|Q~0_combout\);

-- Location: FF_X17_Y13_N31
\reg6|gen_register:14:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \Write1[14]~input_o\,
	sload => VCC,
	ena => \v0|v16|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg6|gen_register:14:vff|O~q\);

-- Location: FF_X17_Y13_N1
\reg7|gen_register:14:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \Write1[14]~input_o\,
	sload => VCC,
	ena => \v0|v18|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg7|gen_register:14:vff|O~q\);

-- Location: LCCOMB_X17_Y13_N26
\read_mux1|v6|v3|v14|Q~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_mux1|v6|v3|v14|Q~1_combout\ = (\read_mux1|v6|v3|v14|Q~0_combout\ & (((\reg7|gen_register:14:vff|O~q\)) # (!\Read1AD[1]~input_o\))) # (!\read_mux1|v6|v3|v14|Q~0_combout\ & (\Read1AD[1]~input_o\ & (\reg6|gen_register:14:vff|O~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \read_mux1|v6|v3|v14|Q~0_combout\,
	datab => \Read1AD[1]~input_o\,
	datac => \reg6|gen_register:14:vff|O~q\,
	datad => \reg7|gen_register:14:vff|O~q\,
	combout => \read_mux1|v6|v3|v14|Q~1_combout\);

-- Location: FF_X24_Y13_N13
\reg2|gen_register:14:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \Write1[14]~input_o\,
	sload => VCC,
	ena => \v0|v8|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg2|gen_register:14:vff|O~q\);

-- Location: FF_X25_Y13_N25
\reg1|gen_register:14:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \Write1[14]~input_o\,
	sload => VCC,
	ena => \v0|v6|Q~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|gen_register:14:vff|O~q\);

-- Location: LCCOMB_X25_Y13_N18
\read_mux1|V0|v2|v14|Q\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_mux1|V0|v2|v14|Q~combout\ = (\Read1AD[0]~input_o\ & \reg1|gen_register:14:vff|O~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Read1AD[0]~input_o\,
	datad => \reg1|gen_register:14:vff|O~q\,
	combout => \read_mux1|V0|v2|v14|Q~combout\);

-- Location: LCCOMB_X24_Y13_N30
\read_mux1|v6|v3|v14|Q~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_mux1|v6|v3|v14|Q~2_combout\ = (\read_mux1|v6|v3|v0|Q~3_combout\ & ((\reg2|gen_register:14:vff|O~q\) # ((\read_mux1|v6|v3|v0|Q~2_combout\)))) # (!\read_mux1|v6|v3|v0|Q~3_combout\ & (((\read_mux1|V0|v2|v14|Q~combout\ & 
-- !\read_mux1|v6|v3|v0|Q~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg2|gen_register:14:vff|O~q\,
	datab => \read_mux1|V0|v2|v14|Q~combout\,
	datac => \read_mux1|v6|v3|v0|Q~3_combout\,
	datad => \read_mux1|v6|v3|v0|Q~2_combout\,
	combout => \read_mux1|v6|v3|v14|Q~2_combout\);

-- Location: FF_X24_Y13_N17
\reg3|gen_register:14:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \Write1[14]~input_o\,
	sload => VCC,
	ena => \v0|v10|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|gen_register:14:vff|O~q\);

-- Location: LCCOMB_X24_Y13_N18
\read_mux1|v6|v3|v14|Q~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_mux1|v6|v3|v14|Q~3_combout\ = (\read_mux1|v6|v3|v0|Q~2_combout\ & ((\read_mux1|v6|v3|v14|Q~2_combout\ & ((\reg3|gen_register:14:vff|O~q\))) # (!\read_mux1|v6|v3|v14|Q~2_combout\ & (\read_mux1|v6|v3|v14|Q~1_combout\)))) # 
-- (!\read_mux1|v6|v3|v0|Q~2_combout\ & (((\read_mux1|v6|v3|v14|Q~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \read_mux1|v6|v3|v0|Q~2_combout\,
	datab => \read_mux1|v6|v3|v14|Q~1_combout\,
	datac => \read_mux1|v6|v3|v14|Q~2_combout\,
	datad => \reg3|gen_register:14:vff|O~q\,
	combout => \read_mux1|v6|v3|v14|Q~3_combout\);

-- Location: IOIBUF_X31_Y14_N22
\Write1[15]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Write1(15),
	o => \Write1[15]~input_o\);

-- Location: FF_X25_Y13_N29
\reg1|gen_register:15:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \Write1[15]~input_o\,
	sload => VCC,
	ena => \v0|v6|Q~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|gen_register:15:vff|O~q\);

-- Location: LCCOMB_X25_Y13_N30
\read_mux1|V0|v2|v15|Q\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_mux1|V0|v2|v15|Q~combout\ = (\reg1|gen_register:15:vff|O~q\ & \Read1AD[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg1|gen_register:15:vff|O~q\,
	datad => \Read1AD[0]~input_o\,
	combout => \read_mux1|V0|v2|v15|Q~combout\);

-- Location: FF_X17_Y13_N7
\reg7|gen_register:15:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \Write1[15]~input_o\,
	sload => VCC,
	ena => \v0|v18|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg7|gen_register:15:vff|O~q\);

-- Location: FF_X16_Y13_N17
\reg4|gen_register:15:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \Write1[15]~input_o\,
	sload => VCC,
	ena => \v0|v12|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|gen_register:15:vff|O~q\);

-- Location: FF_X16_Y13_N31
\reg5|gen_register:15:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \Write1[15]~input_o\,
	sload => VCC,
	ena => \v0|v14|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg5|gen_register:15:vff|O~q\);

-- Location: LCCOMB_X16_Y13_N30
\read_mux1|v6|v3|v15|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_mux1|v6|v3|v15|Q~0_combout\ = (\Read1AD[1]~input_o\ & (((\Read1AD[0]~input_o\)))) # (!\Read1AD[1]~input_o\ & ((\Read1AD[0]~input_o\ & ((\reg5|gen_register:15:vff|O~q\))) # (!\Read1AD[0]~input_o\ & (\reg4|gen_register:15:vff|O~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Read1AD[1]~input_o\,
	datab => \reg4|gen_register:15:vff|O~q\,
	datac => \reg5|gen_register:15:vff|O~q\,
	datad => \Read1AD[0]~input_o\,
	combout => \read_mux1|v6|v3|v15|Q~0_combout\);

-- Location: FF_X17_Y13_N29
\reg6|gen_register:15:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \Write1[15]~input_o\,
	sload => VCC,
	ena => \v0|v16|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg6|gen_register:15:vff|O~q\);

-- Location: LCCOMB_X17_Y13_N24
\read_mux1|v6|v3|v15|Q~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_mux1|v6|v3|v15|Q~1_combout\ = (\read_mux1|v6|v3|v15|Q~0_combout\ & ((\reg7|gen_register:15:vff|O~q\) # ((!\Read1AD[1]~input_o\)))) # (!\read_mux1|v6|v3|v15|Q~0_combout\ & (((\Read1AD[1]~input_o\ & \reg6|gen_register:15:vff|O~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg7|gen_register:15:vff|O~q\,
	datab => \read_mux1|v6|v3|v15|Q~0_combout\,
	datac => \Read1AD[1]~input_o\,
	datad => \reg6|gen_register:15:vff|O~q\,
	combout => \read_mux1|v6|v3|v15|Q~1_combout\);

-- Location: LCCOMB_X17_Y13_N2
\read_mux1|v6|v3|v15|Q~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_mux1|v6|v3|v15|Q~2_combout\ = (\read_mux1|v6|v3|v0|Q~2_combout\ & (((\read_mux1|v6|v3|v0|Q~3_combout\) # (\read_mux1|v6|v3|v15|Q~1_combout\)))) # (!\read_mux1|v6|v3|v0|Q~2_combout\ & (\read_mux1|V0|v2|v15|Q~combout\ & 
-- (!\read_mux1|v6|v3|v0|Q~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \read_mux1|V0|v2|v15|Q~combout\,
	datab => \read_mux1|v6|v3|v0|Q~2_combout\,
	datac => \read_mux1|v6|v3|v0|Q~3_combout\,
	datad => \read_mux1|v6|v3|v15|Q~1_combout\,
	combout => \read_mux1|v6|v3|v15|Q~2_combout\);

-- Location: FF_X24_Y13_N5
\reg2|gen_register:15:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \Write1[15]~input_o\,
	sload => VCC,
	ena => \v0|v8|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg2|gen_register:15:vff|O~q\);

-- Location: LCCOMB_X18_Y13_N0
\reg3|gen_register:15:vff|O~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg3|gen_register:15:vff|O~feeder_combout\ = \Write1[15]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Write1[15]~input_o\,
	combout => \reg3|gen_register:15:vff|O~feeder_combout\);

-- Location: FF_X18_Y13_N1
\reg3|gen_register:15:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \reg3|gen_register:15:vff|O~feeder_combout\,
	ena => \v0|v10|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|gen_register:15:vff|O~q\);

-- Location: LCCOMB_X24_Y13_N4
\read_mux1|v6|v3|v15|Q~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_mux1|v6|v3|v15|Q~3_combout\ = (\read_mux1|v6|v3|v0|Q~3_combout\ & ((\read_mux1|v6|v3|v15|Q~2_combout\ & ((\reg3|gen_register:15:vff|O~q\))) # (!\read_mux1|v6|v3|v15|Q~2_combout\ & (\reg2|gen_register:15:vff|O~q\)))) # 
-- (!\read_mux1|v6|v3|v0|Q~3_combout\ & (\read_mux1|v6|v3|v15|Q~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \read_mux1|v6|v3|v0|Q~3_combout\,
	datab => \read_mux1|v6|v3|v15|Q~2_combout\,
	datac => \reg2|gen_register:15:vff|O~q\,
	datad => \reg3|gen_register:15:vff|O~q\,
	combout => \read_mux1|v6|v3|v15|Q~3_combout\);

-- Location: IOIBUF_X6_Y10_N29
\Read2AD[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Read2AD(1),
	o => \Read2AD[1]~input_o\);

-- Location: IOIBUF_X13_Y0_N8
\Read2AD[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Read2AD(2),
	o => \Read2AD[2]~input_o\);

-- Location: IOIBUF_X31_Y4_N15
\Read2AD[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Read2AD(0),
	o => \Read2AD[0]~input_o\);

-- Location: LCCOMB_X17_Y9_N26
\read_mux2|v6|v3|v0|Q~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_mux2|v6|v3|v0|Q~2_combout\ = (\Read2AD[2]~input_o\) # ((\Read2AD[1]~input_o\ & \Read2AD[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Read2AD[1]~input_o\,
	datab => \Read2AD[2]~input_o\,
	datac => \Read2AD[0]~input_o\,
	combout => \read_mux2|v6|v3|v0|Q~2_combout\);

-- Location: LCCOMB_X17_Y9_N28
\read_mux2|v6|v3|v0|Q~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_mux2|v6|v3|v0|Q~3_combout\ = (\Read2AD[1]~input_o\ & !\Read2AD[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Read2AD[1]~input_o\,
	datad => \Read2AD[2]~input_o\,
	combout => \read_mux2|v6|v3|v0|Q~3_combout\);

-- Location: LCCOMB_X20_Y9_N24
\read_mux2|V0|v2|v0|Q\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_mux2|V0|v2|v0|Q~combout\ = (\reg1|gen_register:0:vff|O~q\ & \Read2AD[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reg1|gen_register:0:vff|O~q\,
	datad => \Read2AD[0]~input_o\,
	combout => \read_mux2|V0|v2|v0|Q~combout\);

-- Location: LCCOMB_X19_Y9_N24
\read_mux2|v6|v3|v0|Q~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_mux2|v6|v3|v0|Q~4_combout\ = (\read_mux2|v6|v3|v0|Q~2_combout\ & (\read_mux2|v6|v3|v0|Q~3_combout\)) # (!\read_mux2|v6|v3|v0|Q~2_combout\ & ((\read_mux2|v6|v3|v0|Q~3_combout\ & (\reg2|gen_register:0:vff|O~q\)) # (!\read_mux2|v6|v3|v0|Q~3_combout\ & 
-- ((\read_mux2|V0|v2|v0|Q~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \read_mux2|v6|v3|v0|Q~2_combout\,
	datab => \read_mux2|v6|v3|v0|Q~3_combout\,
	datac => \reg2|gen_register:0:vff|O~q\,
	datad => \read_mux2|V0|v2|v0|Q~combout\,
	combout => \read_mux2|v6|v3|v0|Q~4_combout\);

-- Location: LCCOMB_X17_Y9_N2
\read_mux2|v6|v3|v0|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_mux2|v6|v3|v0|Q~0_combout\ = (\Read2AD[1]~input_o\ & (\Read2AD[0]~input_o\)) # (!\Read2AD[1]~input_o\ & ((\Read2AD[0]~input_o\ & ((\reg5|gen_register:0:vff|O~q\))) # (!\Read2AD[0]~input_o\ & (\reg4|gen_register:0:vff|O~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Read2AD[1]~input_o\,
	datab => \Read2AD[0]~input_o\,
	datac => \reg4|gen_register:0:vff|O~q\,
	datad => \reg5|gen_register:0:vff|O~q\,
	combout => \read_mux2|v6|v3|v0|Q~0_combout\);

-- Location: LCCOMB_X18_Y9_N2
\read_mux2|v6|v3|v0|Q~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_mux2|v6|v3|v0|Q~1_combout\ = (\read_mux2|v6|v3|v0|Q~0_combout\ & (((\reg7|gen_register:0:vff|O~q\)) # (!\Read2AD[1]~input_o\))) # (!\read_mux2|v6|v3|v0|Q~0_combout\ & (\Read2AD[1]~input_o\ & ((\reg6|gen_register:0:vff|O~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \read_mux2|v6|v3|v0|Q~0_combout\,
	datab => \Read2AD[1]~input_o\,
	datac => \reg7|gen_register:0:vff|O~q\,
	datad => \reg6|gen_register:0:vff|O~q\,
	combout => \read_mux2|v6|v3|v0|Q~1_combout\);

-- Location: LCCOMB_X19_Y9_N26
\read_mux2|v6|v3|v0|Q~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_mux2|v6|v3|v0|Q~5_combout\ = (\read_mux2|v6|v3|v0|Q~2_combout\ & ((\read_mux2|v6|v3|v0|Q~4_combout\ & (\reg3|gen_register:0:vff|O~q\)) # (!\read_mux2|v6|v3|v0|Q~4_combout\ & ((\read_mux2|v6|v3|v0|Q~1_combout\))))) # 
-- (!\read_mux2|v6|v3|v0|Q~2_combout\ & (\read_mux2|v6|v3|v0|Q~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \read_mux2|v6|v3|v0|Q~2_combout\,
	datab => \read_mux2|v6|v3|v0|Q~4_combout\,
	datac => \reg3|gen_register:0:vff|O~q\,
	datad => \read_mux2|v6|v3|v0|Q~1_combout\,
	combout => \read_mux2|v6|v3|v0|Q~5_combout\);

-- Location: LCCOMB_X20_Y9_N12
\read_mux2|V0|v2|v1|Q\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_mux2|V0|v2|v1|Q~combout\ = (\reg1|gen_register:1:vff|O~q\ & \Read2AD[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reg1|gen_register:1:vff|O~q\,
	datad => \Read2AD[0]~input_o\,
	combout => \read_mux2|V0|v2|v1|Q~combout\);

-- Location: LCCOMB_X17_Y9_N14
\read_mux2|v6|v3|v1|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_mux2|v6|v3|v1|Q~0_combout\ = (\Read2AD[1]~input_o\ & (\Read2AD[0]~input_o\)) # (!\Read2AD[1]~input_o\ & ((\Read2AD[0]~input_o\ & ((\reg5|gen_register:1:vff|O~q\))) # (!\Read2AD[0]~input_o\ & (\reg4|gen_register:1:vff|O~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Read2AD[1]~input_o\,
	datab => \Read2AD[0]~input_o\,
	datac => \reg4|gen_register:1:vff|O~q\,
	datad => \reg5|gen_register:1:vff|O~q\,
	combout => \read_mux2|v6|v3|v1|Q~0_combout\);

-- Location: LCCOMB_X18_Y9_N6
\read_mux2|v6|v3|v1|Q~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_mux2|v6|v3|v1|Q~1_combout\ = (\read_mux2|v6|v3|v1|Q~0_combout\ & (((\reg7|gen_register:1:vff|O~q\) # (!\Read2AD[1]~input_o\)))) # (!\read_mux2|v6|v3|v1|Q~0_combout\ & (\reg6|gen_register:1:vff|O~q\ & ((\Read2AD[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \read_mux2|v6|v3|v1|Q~0_combout\,
	datab => \reg6|gen_register:1:vff|O~q\,
	datac => \reg7|gen_register:1:vff|O~q\,
	datad => \Read2AD[1]~input_o\,
	combout => \read_mux2|v6|v3|v1|Q~1_combout\);

-- Location: LCCOMB_X17_Y9_N6
\read_mux2|v6|v3|v1|Q~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_mux2|v6|v3|v1|Q~2_combout\ = (\read_mux2|v6|v3|v0|Q~2_combout\ & ((\read_mux2|v6|v3|v0|Q~3_combout\) # ((\read_mux2|v6|v3|v1|Q~1_combout\)))) # (!\read_mux2|v6|v3|v0|Q~2_combout\ & (!\read_mux2|v6|v3|v0|Q~3_combout\ & 
-- (\read_mux2|V0|v2|v1|Q~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \read_mux2|v6|v3|v0|Q~2_combout\,
	datab => \read_mux2|v6|v3|v0|Q~3_combout\,
	datac => \read_mux2|V0|v2|v1|Q~combout\,
	datad => \read_mux2|v6|v3|v1|Q~1_combout\,
	combout => \read_mux2|v6|v3|v1|Q~2_combout\);

-- Location: LCCOMB_X19_Y9_N22
\read_mux2|v6|v3|v1|Q~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_mux2|v6|v3|v1|Q~3_combout\ = (\read_mux2|v6|v3|v1|Q~2_combout\ & (((\reg3|gen_register:1:vff|O~q\)) # (!\read_mux2|v6|v3|v0|Q~3_combout\))) # (!\read_mux2|v6|v3|v1|Q~2_combout\ & (\read_mux2|v6|v3|v0|Q~3_combout\ & 
-- ((\reg2|gen_register:1:vff|O~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \read_mux2|v6|v3|v1|Q~2_combout\,
	datab => \read_mux2|v6|v3|v0|Q~3_combout\,
	datac => \reg3|gen_register:1:vff|O~q\,
	datad => \reg2|gen_register:1:vff|O~q\,
	combout => \read_mux2|v6|v3|v1|Q~3_combout\);

-- Location: LCCOMB_X20_Y9_N0
\read_mux2|V0|v2|v2|Q\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_mux2|V0|v2|v2|Q~combout\ = (\reg1|gen_register:2:vff|O~q\ & \Read2AD[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reg1|gen_register:2:vff|O~q\,
	datad => \Read2AD[0]~input_o\,
	combout => \read_mux2|V0|v2|v2|Q~combout\);

-- Location: LCCOMB_X19_Y9_N0
\read_mux2|v6|v3|v2|Q~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_mux2|v6|v3|v2|Q~2_combout\ = (\read_mux2|v6|v3|v0|Q~2_combout\ & (((\read_mux2|v6|v3|v0|Q~3_combout\)))) # (!\read_mux2|v6|v3|v0|Q~2_combout\ & ((\read_mux2|v6|v3|v0|Q~3_combout\ & ((\reg2|gen_register:2:vff|O~q\))) # 
-- (!\read_mux2|v6|v3|v0|Q~3_combout\ & (\read_mux2|V0|v2|v2|Q~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \read_mux2|v6|v3|v0|Q~2_combout\,
	datab => \read_mux2|V0|v2|v2|Q~combout\,
	datac => \reg2|gen_register:2:vff|O~q\,
	datad => \read_mux2|v6|v3|v0|Q~3_combout\,
	combout => \read_mux2|v6|v3|v2|Q~2_combout\);

-- Location: LCCOMB_X17_Y9_N4
\read_mux2|v6|v3|v2|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_mux2|v6|v3|v2|Q~0_combout\ = (\Read2AD[1]~input_o\ & (\Read2AD[0]~input_o\)) # (!\Read2AD[1]~input_o\ & ((\Read2AD[0]~input_o\ & ((\reg5|gen_register:2:vff|O~q\))) # (!\Read2AD[0]~input_o\ & (\reg4|gen_register:2:vff|O~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Read2AD[1]~input_o\,
	datab => \Read2AD[0]~input_o\,
	datac => \reg4|gen_register:2:vff|O~q\,
	datad => \reg5|gen_register:2:vff|O~q\,
	combout => \read_mux2|v6|v3|v2|Q~0_combout\);

-- Location: LCCOMB_X18_Y9_N10
\read_mux2|v6|v3|v2|Q~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_mux2|v6|v3|v2|Q~1_combout\ = (\Read2AD[1]~input_o\ & ((\read_mux2|v6|v3|v2|Q~0_combout\ & (\reg7|gen_register:2:vff|O~q\)) # (!\read_mux2|v6|v3|v2|Q~0_combout\ & ((\reg6|gen_register:2:vff|O~q\))))) # (!\Read2AD[1]~input_o\ & 
-- (\read_mux2|v6|v3|v2|Q~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Read2AD[1]~input_o\,
	datab => \read_mux2|v6|v3|v2|Q~0_combout\,
	datac => \reg7|gen_register:2:vff|O~q\,
	datad => \reg6|gen_register:2:vff|O~q\,
	combout => \read_mux2|v6|v3|v2|Q~1_combout\);

-- Location: LCCOMB_X19_Y9_N10
\read_mux2|v6|v3|v2|Q~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_mux2|v6|v3|v2|Q~3_combout\ = (\read_mux2|v6|v3|v0|Q~2_combout\ & ((\read_mux2|v6|v3|v2|Q~2_combout\ & (\reg3|gen_register:2:vff|O~q\)) # (!\read_mux2|v6|v3|v2|Q~2_combout\ & ((\read_mux2|v6|v3|v2|Q~1_combout\))))) # 
-- (!\read_mux2|v6|v3|v0|Q~2_combout\ & (\read_mux2|v6|v3|v2|Q~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \read_mux2|v6|v3|v0|Q~2_combout\,
	datab => \read_mux2|v6|v3|v2|Q~2_combout\,
	datac => \reg3|gen_register:2:vff|O~q\,
	datad => \read_mux2|v6|v3|v2|Q~1_combout\,
	combout => \read_mux2|v6|v3|v2|Q~3_combout\);

-- Location: LCCOMB_X22_Y13_N16
\read_mux2|v6|v3|v3|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_mux2|v6|v3|v3|Q~0_combout\ = (\Read2AD[1]~input_o\ & (((\Read2AD[0]~input_o\)))) # (!\Read2AD[1]~input_o\ & ((\Read2AD[0]~input_o\ & (\reg5|gen_register:3:vff|O~q\)) # (!\Read2AD[0]~input_o\ & ((\reg4|gen_register:3:vff|O~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Read2AD[1]~input_o\,
	datab => \reg5|gen_register:3:vff|O~q\,
	datac => \reg4|gen_register:3:vff|O~q\,
	datad => \Read2AD[0]~input_o\,
	combout => \read_mux2|v6|v3|v3|Q~0_combout\);

-- Location: LCCOMB_X18_Y9_N22
\read_mux2|v6|v3|v3|Q~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_mux2|v6|v3|v3|Q~1_combout\ = (\read_mux2|v6|v3|v3|Q~0_combout\ & (((\reg7|gen_register:3:vff|O~q\) # (!\Read2AD[1]~input_o\)))) # (!\read_mux2|v6|v3|v3|Q~0_combout\ & (\reg6|gen_register:3:vff|O~q\ & ((\Read2AD[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \read_mux2|v6|v3|v3|Q~0_combout\,
	datab => \reg6|gen_register:3:vff|O~q\,
	datac => \reg7|gen_register:3:vff|O~q\,
	datad => \Read2AD[1]~input_o\,
	combout => \read_mux2|v6|v3|v3|Q~1_combout\);

-- Location: LCCOMB_X20_Y9_N20
\read_mux2|V0|v2|v3|Q\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_mux2|V0|v2|v3|Q~combout\ = (\reg1|gen_register:3:vff|O~q\ & \Read2AD[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reg1|gen_register:3:vff|O~q\,
	datad => \Read2AD[0]~input_o\,
	combout => \read_mux2|V0|v2|v3|Q~combout\);

-- Location: LCCOMB_X19_Y9_N6
\read_mux2|v6|v3|v3|Q~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_mux2|v6|v3|v3|Q~2_combout\ = (\read_mux2|v6|v3|v0|Q~2_combout\ & ((\read_mux2|v6|v3|v3|Q~1_combout\) # ((\read_mux2|v6|v3|v0|Q~3_combout\)))) # (!\read_mux2|v6|v3|v0|Q~2_combout\ & (((\read_mux2|V0|v2|v3|Q~combout\ & 
-- !\read_mux2|v6|v3|v0|Q~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \read_mux2|v6|v3|v0|Q~2_combout\,
	datab => \read_mux2|v6|v3|v3|Q~1_combout\,
	datac => \read_mux2|V0|v2|v3|Q~combout\,
	datad => \read_mux2|v6|v3|v0|Q~3_combout\,
	combout => \read_mux2|v6|v3|v3|Q~2_combout\);

-- Location: LCCOMB_X19_Y9_N16
\read_mux2|v6|v3|v3|Q~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_mux2|v6|v3|v3|Q~3_combout\ = (\read_mux2|v6|v3|v3|Q~2_combout\ & (((\reg3|gen_register:3:vff|O~q\) # (!\read_mux2|v6|v3|v0|Q~3_combout\)))) # (!\read_mux2|v6|v3|v3|Q~2_combout\ & (\reg2|gen_register:3:vff|O~q\ & 
-- ((\read_mux2|v6|v3|v0|Q~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \read_mux2|v6|v3|v3|Q~2_combout\,
	datab => \reg2|gen_register:3:vff|O~q\,
	datac => \reg3|gen_register:3:vff|O~q\,
	datad => \read_mux2|v6|v3|v0|Q~3_combout\,
	combout => \read_mux2|v6|v3|v3|Q~3_combout\);

-- Location: LCCOMB_X22_Y13_N10
\read_mux2|v6|v3|v4|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_mux2|v6|v3|v4|Q~0_combout\ = (\Read2AD[1]~input_o\ & (((\Read2AD[0]~input_o\)))) # (!\Read2AD[1]~input_o\ & ((\Read2AD[0]~input_o\ & (\reg5|gen_register:4:vff|O~q\)) # (!\Read2AD[0]~input_o\ & ((\reg4|gen_register:4:vff|O~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Read2AD[1]~input_o\,
	datab => \reg5|gen_register:4:vff|O~q\,
	datac => \reg4|gen_register:4:vff|O~q\,
	datad => \Read2AD[0]~input_o\,
	combout => \read_mux2|v6|v3|v4|Q~0_combout\);

-- Location: LCCOMB_X18_Y9_N26
\read_mux2|v6|v3|v4|Q~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_mux2|v6|v3|v4|Q~1_combout\ = (\read_mux2|v6|v3|v4|Q~0_combout\ & (((\reg7|gen_register:4:vff|O~q\) # (!\Read2AD[1]~input_o\)))) # (!\read_mux2|v6|v3|v4|Q~0_combout\ & (\reg6|gen_register:4:vff|O~q\ & ((\Read2AD[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg6|gen_register:4:vff|O~q\,
	datab => \read_mux2|v6|v3|v4|Q~0_combout\,
	datac => \reg7|gen_register:4:vff|O~q\,
	datad => \Read2AD[1]~input_o\,
	combout => \read_mux2|v6|v3|v4|Q~1_combout\);

-- Location: LCCOMB_X20_Y9_N16
\read_mux2|V0|v2|v4|Q\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_mux2|V0|v2|v4|Q~combout\ = (\reg1|gen_register:4:vff|O~q\ & \Read2AD[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reg1|gen_register:4:vff|O~q\,
	datad => \Read2AD[0]~input_o\,
	combout => \read_mux2|V0|v2|v4|Q~combout\);

-- Location: LCCOMB_X19_Y9_N18
\read_mux2|v6|v3|v4|Q~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_mux2|v6|v3|v4|Q~2_combout\ = (\read_mux2|v6|v3|v0|Q~2_combout\ & (\read_mux2|v6|v3|v0|Q~3_combout\)) # (!\read_mux2|v6|v3|v0|Q~2_combout\ & ((\read_mux2|v6|v3|v0|Q~3_combout\ & (\reg2|gen_register:4:vff|O~q\)) # (!\read_mux2|v6|v3|v0|Q~3_combout\ & 
-- ((\read_mux2|V0|v2|v4|Q~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \read_mux2|v6|v3|v0|Q~2_combout\,
	datab => \read_mux2|v6|v3|v0|Q~3_combout\,
	datac => \reg2|gen_register:4:vff|O~q\,
	datad => \read_mux2|V0|v2|v4|Q~combout\,
	combout => \read_mux2|v6|v3|v4|Q~2_combout\);

-- Location: LCCOMB_X19_Y9_N30
\read_mux2|v6|v3|v4|Q~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_mux2|v6|v3|v4|Q~3_combout\ = (\read_mux2|v6|v3|v0|Q~2_combout\ & ((\read_mux2|v6|v3|v4|Q~2_combout\ & ((\reg3|gen_register:4:vff|O~q\))) # (!\read_mux2|v6|v3|v4|Q~2_combout\ & (\read_mux2|v6|v3|v4|Q~1_combout\)))) # 
-- (!\read_mux2|v6|v3|v0|Q~2_combout\ & (((\read_mux2|v6|v3|v4|Q~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \read_mux2|v6|v3|v4|Q~1_combout\,
	datab => \read_mux2|v6|v3|v0|Q~2_combout\,
	datac => \reg3|gen_register:4:vff|O~q\,
	datad => \read_mux2|v6|v3|v4|Q~2_combout\,
	combout => \read_mux2|v6|v3|v4|Q~3_combout\);

-- Location: LCCOMB_X22_Y13_N20
\read_mux2|v6|v3|v5|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_mux2|v6|v3|v5|Q~0_combout\ = (\Read2AD[1]~input_o\ & (((\Read2AD[0]~input_o\)))) # (!\Read2AD[1]~input_o\ & ((\Read2AD[0]~input_o\ & (\reg5|gen_register:5:vff|O~q\)) # (!\Read2AD[0]~input_o\ & ((\reg4|gen_register:5:vff|O~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Read2AD[1]~input_o\,
	datab => \reg5|gen_register:5:vff|O~q\,
	datac => \reg4|gen_register:5:vff|O~q\,
	datad => \Read2AD[0]~input_o\,
	combout => \read_mux2|v6|v3|v5|Q~0_combout\);

-- Location: LCCOMB_X18_Y9_N14
\read_mux2|v6|v3|v5|Q~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_mux2|v6|v3|v5|Q~1_combout\ = (\Read2AD[1]~input_o\ & ((\read_mux2|v6|v3|v5|Q~0_combout\ & ((\reg7|gen_register:5:vff|O~q\))) # (!\read_mux2|v6|v3|v5|Q~0_combout\ & (\reg6|gen_register:5:vff|O~q\)))) # (!\Read2AD[1]~input_o\ & 
-- (((\read_mux2|v6|v3|v5|Q~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg6|gen_register:5:vff|O~q\,
	datab => \Read2AD[1]~input_o\,
	datac => \reg7|gen_register:5:vff|O~q\,
	datad => \read_mux2|v6|v3|v5|Q~0_combout\,
	combout => \read_mux2|v6|v3|v5|Q~1_combout\);

-- Location: LCCOMB_X20_Y9_N4
\read_mux2|V0|v2|v5|Q\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_mux2|V0|v2|v5|Q~combout\ = (\reg1|gen_register:5:vff|O~q\ & \Read2AD[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reg1|gen_register:5:vff|O~q\,
	datad => \Read2AD[0]~input_o\,
	combout => \read_mux2|V0|v2|v5|Q~combout\);

-- Location: LCCOMB_X18_Y9_N30
\read_mux2|v6|v3|v5|Q~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_mux2|v6|v3|v5|Q~2_combout\ = (\read_mux2|v6|v3|v0|Q~2_combout\ & ((\read_mux2|v6|v3|v5|Q~1_combout\) # ((\read_mux2|v6|v3|v0|Q~3_combout\)))) # (!\read_mux2|v6|v3|v0|Q~2_combout\ & (((\read_mux2|V0|v2|v5|Q~combout\ & 
-- !\read_mux2|v6|v3|v0|Q~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \read_mux2|v6|v3|v0|Q~2_combout\,
	datab => \read_mux2|v6|v3|v5|Q~1_combout\,
	datac => \read_mux2|V0|v2|v5|Q~combout\,
	datad => \read_mux2|v6|v3|v0|Q~3_combout\,
	combout => \read_mux2|v6|v3|v5|Q~2_combout\);

-- Location: LCCOMB_X24_Y9_N8
\read_mux2|v6|v3|v5|Q~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_mux2|v6|v3|v5|Q~3_combout\ = (\read_mux2|v6|v3|v0|Q~3_combout\ & ((\read_mux2|v6|v3|v5|Q~2_combout\ & (\reg3|gen_register:5:vff|O~q\)) # (!\read_mux2|v6|v3|v5|Q~2_combout\ & ((\reg2|gen_register:5:vff|O~q\))))) # (!\read_mux2|v6|v3|v0|Q~3_combout\ & 
-- (\read_mux2|v6|v3|v5|Q~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \read_mux2|v6|v3|v0|Q~3_combout\,
	datab => \read_mux2|v6|v3|v5|Q~2_combout\,
	datac => \reg3|gen_register:5:vff|O~q\,
	datad => \reg2|gen_register:5:vff|O~q\,
	combout => \read_mux2|v6|v3|v5|Q~3_combout\);

-- Location: LCCOMB_X20_Y9_N8
\read_mux2|V0|v2|v6|Q\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_mux2|V0|v2|v6|Q~combout\ = (\reg1|gen_register:6:vff|O~q\ & \Read2AD[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reg1|gen_register:6:vff|O~q\,
	datad => \Read2AD[0]~input_o\,
	combout => \read_mux2|V0|v2|v6|Q~combout\);

-- Location: LCCOMB_X24_Y9_N2
\read_mux2|v6|v3|v6|Q~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_mux2|v6|v3|v6|Q~2_combout\ = (\read_mux2|v6|v3|v0|Q~3_combout\ & (((\reg2|gen_register:6:vff|O~q\) # (\read_mux2|v6|v3|v0|Q~2_combout\)))) # (!\read_mux2|v6|v3|v0|Q~3_combout\ & (\read_mux2|V0|v2|v6|Q~combout\ & 
-- ((!\read_mux2|v6|v3|v0|Q~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \read_mux2|v6|v3|v0|Q~3_combout\,
	datab => \read_mux2|V0|v2|v6|Q~combout\,
	datac => \reg2|gen_register:6:vff|O~q\,
	datad => \read_mux2|v6|v3|v0|Q~2_combout\,
	combout => \read_mux2|v6|v3|v6|Q~2_combout\);

-- Location: LCCOMB_X22_Y13_N6
\read_mux2|v6|v3|v6|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_mux2|v6|v3|v6|Q~0_combout\ = (\Read2AD[1]~input_o\ & (((\Read2AD[0]~input_o\)))) # (!\Read2AD[1]~input_o\ & ((\Read2AD[0]~input_o\ & (\reg5|gen_register:6:vff|O~q\)) # (!\Read2AD[0]~input_o\ & ((\reg4|gen_register:6:vff|O~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Read2AD[1]~input_o\,
	datab => \reg5|gen_register:6:vff|O~q\,
	datac => \reg4|gen_register:6:vff|O~q\,
	datad => \Read2AD[0]~input_o\,
	combout => \read_mux2|v6|v3|v6|Q~0_combout\);

-- Location: LCCOMB_X18_Y9_N18
\read_mux2|v6|v3|v6|Q~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_mux2|v6|v3|v6|Q~1_combout\ = (\read_mux2|v6|v3|v6|Q~0_combout\ & (((\reg7|gen_register:6:vff|O~q\)) # (!\Read2AD[1]~input_o\))) # (!\read_mux2|v6|v3|v6|Q~0_combout\ & (\Read2AD[1]~input_o\ & ((\reg6|gen_register:6:vff|O~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \read_mux2|v6|v3|v6|Q~0_combout\,
	datab => \Read2AD[1]~input_o\,
	datac => \reg7|gen_register:6:vff|O~q\,
	datad => \reg6|gen_register:6:vff|O~q\,
	combout => \read_mux2|v6|v3|v6|Q~1_combout\);

-- Location: LCCOMB_X24_Y9_N14
\read_mux2|v6|v3|v6|Q~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_mux2|v6|v3|v6|Q~3_combout\ = (\read_mux2|v6|v3|v0|Q~2_combout\ & ((\read_mux2|v6|v3|v6|Q~2_combout\ & (\reg3|gen_register:6:vff|O~q\)) # (!\read_mux2|v6|v3|v6|Q~2_combout\ & ((\read_mux2|v6|v3|v6|Q~1_combout\))))) # 
-- (!\read_mux2|v6|v3|v0|Q~2_combout\ & (\read_mux2|v6|v3|v6|Q~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \read_mux2|v6|v3|v0|Q~2_combout\,
	datab => \read_mux2|v6|v3|v6|Q~2_combout\,
	datac => \reg3|gen_register:6:vff|O~q\,
	datad => \read_mux2|v6|v3|v6|Q~1_combout\,
	combout => \read_mux2|v6|v3|v6|Q~3_combout\);

-- Location: LCCOMB_X22_Y13_N24
\read_mux2|v6|v3|v7|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_mux2|v6|v3|v7|Q~0_combout\ = (\Read2AD[1]~input_o\ & (((\Read2AD[0]~input_o\)))) # (!\Read2AD[1]~input_o\ & ((\Read2AD[0]~input_o\ & (\reg5|gen_register:7:vff|O~q\)) # (!\Read2AD[0]~input_o\ & ((\reg4|gen_register:7:vff|O~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Read2AD[1]~input_o\,
	datab => \reg5|gen_register:7:vff|O~q\,
	datac => \reg4|gen_register:7:vff|O~q\,
	datad => \Read2AD[0]~input_o\,
	combout => \read_mux2|v6|v3|v7|Q~0_combout\);

-- Location: LCCOMB_X22_Y13_N2
\read_mux2|v6|v3|v7|Q~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_mux2|v6|v3|v7|Q~1_combout\ = (\Read2AD[1]~input_o\ & ((\read_mux2|v6|v3|v7|Q~0_combout\ & ((\reg7|gen_register:7:vff|O~q\))) # (!\read_mux2|v6|v3|v7|Q~0_combout\ & (\reg6|gen_register:7:vff|O~q\)))) # (!\Read2AD[1]~input_o\ & 
-- (((\read_mux2|v6|v3|v7|Q~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Read2AD[1]~input_o\,
	datab => \reg6|gen_register:7:vff|O~q\,
	datac => \reg7|gen_register:7:vff|O~q\,
	datad => \read_mux2|v6|v3|v7|Q~0_combout\,
	combout => \read_mux2|v6|v3|v7|Q~1_combout\);

-- Location: LCCOMB_X25_Y13_N8
\read_mux2|V0|v2|v7|Q\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_mux2|V0|v2|v7|Q~combout\ = (\reg1|gen_register:7:vff|O~q\ & \Read2AD[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reg1|gen_register:7:vff|O~q\,
	datad => \Read2AD[0]~input_o\,
	combout => \read_mux2|V0|v2|v7|Q~combout\);

-- Location: LCCOMB_X24_Y9_N10
\read_mux2|v6|v3|v7|Q~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_mux2|v6|v3|v7|Q~2_combout\ = (\read_mux2|v6|v3|v0|Q~2_combout\ & ((\read_mux2|v6|v3|v7|Q~1_combout\) # ((\read_mux2|v6|v3|v0|Q~3_combout\)))) # (!\read_mux2|v6|v3|v0|Q~2_combout\ & (((!\read_mux2|v6|v3|v0|Q~3_combout\ & 
-- \read_mux2|V0|v2|v7|Q~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \read_mux2|v6|v3|v0|Q~2_combout\,
	datab => \read_mux2|v6|v3|v7|Q~1_combout\,
	datac => \read_mux2|v6|v3|v0|Q~3_combout\,
	datad => \read_mux2|V0|v2|v7|Q~combout\,
	combout => \read_mux2|v6|v3|v7|Q~2_combout\);

-- Location: LCCOMB_X24_Y9_N22
\read_mux2|v6|v3|v7|Q~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_mux2|v6|v3|v7|Q~3_combout\ = (\read_mux2|v6|v3|v0|Q~3_combout\ & ((\read_mux2|v6|v3|v7|Q~2_combout\ & ((\reg3|gen_register:7:vff|O~q\))) # (!\read_mux2|v6|v3|v7|Q~2_combout\ & (\reg2|gen_register:7:vff|O~q\)))) # (!\read_mux2|v6|v3|v0|Q~3_combout\ & 
-- (((\read_mux2|v6|v3|v7|Q~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \read_mux2|v6|v3|v0|Q~3_combout\,
	datab => \reg2|gen_register:7:vff|O~q\,
	datac => \reg3|gen_register:7:vff|O~q\,
	datad => \read_mux2|v6|v3|v7|Q~2_combout\,
	combout => \read_mux2|v6|v3|v7|Q~3_combout\);

-- Location: LCCOMB_X25_Y13_N20
\read_mux2|V0|v2|v8|Q\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_mux2|V0|v2|v8|Q~combout\ = (\reg1|gen_register:8:vff|O~q\ & \Read2AD[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reg1|gen_register:8:vff|O~q\,
	datad => \Read2AD[0]~input_o\,
	combout => \read_mux2|V0|v2|v8|Q~combout\);

-- Location: LCCOMB_X24_Y9_N0
\read_mux2|v6|v3|v8|Q~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_mux2|v6|v3|v8|Q~2_combout\ = (\read_mux2|v6|v3|v0|Q~3_combout\ & ((\read_mux2|v6|v3|v0|Q~2_combout\) # ((\reg2|gen_register:8:vff|O~q\)))) # (!\read_mux2|v6|v3|v0|Q~3_combout\ & (!\read_mux2|v6|v3|v0|Q~2_combout\ & 
-- ((\read_mux2|V0|v2|v8|Q~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \read_mux2|v6|v3|v0|Q~3_combout\,
	datab => \read_mux2|v6|v3|v0|Q~2_combout\,
	datac => \reg2|gen_register:8:vff|O~q\,
	datad => \read_mux2|V0|v2|v8|Q~combout\,
	combout => \read_mux2|v6|v3|v8|Q~2_combout\);

-- Location: LCCOMB_X22_Y13_N28
\read_mux2|v6|v3|v8|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_mux2|v6|v3|v8|Q~0_combout\ = (\Read2AD[1]~input_o\ & (((\Read2AD[0]~input_o\)))) # (!\Read2AD[1]~input_o\ & ((\Read2AD[0]~input_o\ & (\reg5|gen_register:8:vff|O~q\)) # (!\Read2AD[0]~input_o\ & ((\reg4|gen_register:8:vff|O~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Read2AD[1]~input_o\,
	datab => \reg5|gen_register:8:vff|O~q\,
	datac => \reg4|gen_register:8:vff|O~q\,
	datad => \Read2AD[0]~input_o\,
	combout => \read_mux2|v6|v3|v8|Q~0_combout\);

-- Location: LCCOMB_X22_Y13_N30
\read_mux2|v6|v3|v8|Q~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_mux2|v6|v3|v8|Q~1_combout\ = (\Read2AD[1]~input_o\ & ((\read_mux2|v6|v3|v8|Q~0_combout\ & (\reg7|gen_register:8:vff|O~q\)) # (!\read_mux2|v6|v3|v8|Q~0_combout\ & ((\reg6|gen_register:8:vff|O~q\))))) # (!\Read2AD[1]~input_o\ & 
-- (\read_mux2|v6|v3|v8|Q~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Read2AD[1]~input_o\,
	datab => \read_mux2|v6|v3|v8|Q~0_combout\,
	datac => \reg7|gen_register:8:vff|O~q\,
	datad => \reg6|gen_register:8:vff|O~q\,
	combout => \read_mux2|v6|v3|v8|Q~1_combout\);

-- Location: LCCOMB_X24_Y9_N26
\read_mux2|v6|v3|v8|Q~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_mux2|v6|v3|v8|Q~3_combout\ = (\read_mux2|v6|v3|v0|Q~2_combout\ & ((\read_mux2|v6|v3|v8|Q~2_combout\ & (\reg3|gen_register:8:vff|O~q\)) # (!\read_mux2|v6|v3|v8|Q~2_combout\ & ((\read_mux2|v6|v3|v8|Q~1_combout\))))) # 
-- (!\read_mux2|v6|v3|v0|Q~2_combout\ & (\read_mux2|v6|v3|v8|Q~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \read_mux2|v6|v3|v0|Q~2_combout\,
	datab => \read_mux2|v6|v3|v8|Q~2_combout\,
	datac => \reg3|gen_register:8:vff|O~q\,
	datad => \read_mux2|v6|v3|v8|Q~1_combout\,
	combout => \read_mux2|v6|v3|v8|Q~3_combout\);

-- Location: LCCOMB_X22_Y13_N8
\read_mux2|v6|v3|v9|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_mux2|v6|v3|v9|Q~0_combout\ = (\Read2AD[1]~input_o\ & (\Read2AD[0]~input_o\)) # (!\Read2AD[1]~input_o\ & ((\Read2AD[0]~input_o\ & ((\reg5|gen_register:9:vff|O~q\))) # (!\Read2AD[0]~input_o\ & (\reg4|gen_register:9:vff|O~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Read2AD[1]~input_o\,
	datab => \Read2AD[0]~input_o\,
	datac => \reg4|gen_register:9:vff|O~q\,
	datad => \reg5|gen_register:9:vff|O~q\,
	combout => \read_mux2|v6|v3|v9|Q~0_combout\);

-- Location: LCCOMB_X22_Y13_N18
\read_mux2|v6|v3|v9|Q~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_mux2|v6|v3|v9|Q~1_combout\ = (\Read2AD[1]~input_o\ & ((\read_mux2|v6|v3|v9|Q~0_combout\ & (\reg7|gen_register:9:vff|O~q\)) # (!\read_mux2|v6|v3|v9|Q~0_combout\ & ((\reg6|gen_register:9:vff|O~q\))))) # (!\Read2AD[1]~input_o\ & 
-- (\read_mux2|v6|v3|v9|Q~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Read2AD[1]~input_o\,
	datab => \read_mux2|v6|v3|v9|Q~0_combout\,
	datac => \reg7|gen_register:9:vff|O~q\,
	datad => \reg6|gen_register:9:vff|O~q\,
	combout => \read_mux2|v6|v3|v9|Q~1_combout\);

-- Location: LCCOMB_X25_Y13_N0
\read_mux2|V0|v2|v9|Q\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_mux2|V0|v2|v9|Q~combout\ = (\reg1|gen_register:9:vff|O~q\ & \Read2AD[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reg1|gen_register:9:vff|O~q\,
	datad => \Read2AD[0]~input_o\,
	combout => \read_mux2|V0|v2|v9|Q~combout\);

-- Location: LCCOMB_X24_Y9_N28
\read_mux2|v6|v3|v9|Q~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_mux2|v6|v3|v9|Q~2_combout\ = (\read_mux2|v6|v3|v0|Q~3_combout\ & (((\read_mux2|v6|v3|v0|Q~2_combout\)))) # (!\read_mux2|v6|v3|v0|Q~3_combout\ & ((\read_mux2|v6|v3|v0|Q~2_combout\ & (\read_mux2|v6|v3|v9|Q~1_combout\)) # 
-- (!\read_mux2|v6|v3|v0|Q~2_combout\ & ((\read_mux2|V0|v2|v9|Q~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \read_mux2|v6|v3|v0|Q~3_combout\,
	datab => \read_mux2|v6|v3|v9|Q~1_combout\,
	datac => \read_mux2|V0|v2|v9|Q~combout\,
	datad => \read_mux2|v6|v3|v0|Q~2_combout\,
	combout => \read_mux2|v6|v3|v9|Q~2_combout\);

-- Location: LCCOMB_X24_Y9_N4
\read_mux2|v6|v3|v9|Q~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_mux2|v6|v3|v9|Q~3_combout\ = (\read_mux2|v6|v3|v0|Q~3_combout\ & ((\read_mux2|v6|v3|v9|Q~2_combout\ & (\reg3|gen_register:9:vff|O~q\)) # (!\read_mux2|v6|v3|v9|Q~2_combout\ & ((\reg2|gen_register:9:vff|O~q\))))) # (!\read_mux2|v6|v3|v0|Q~3_combout\ & 
-- (\read_mux2|v6|v3|v9|Q~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \read_mux2|v6|v3|v0|Q~3_combout\,
	datab => \read_mux2|v6|v3|v9|Q~2_combout\,
	datac => \reg3|gen_register:9:vff|O~q\,
	datad => \reg2|gen_register:9:vff|O~q\,
	combout => \read_mux2|v6|v3|v9|Q~3_combout\);

-- Location: LCCOMB_X22_Y13_N12
\read_mux2|v6|v3|v10|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_mux2|v6|v3|v10|Q~0_combout\ = (\Read2AD[1]~input_o\ & (((\Read2AD[0]~input_o\)))) # (!\Read2AD[1]~input_o\ & ((\Read2AD[0]~input_o\ & (\reg5|gen_register:10:vff|O~q\)) # (!\Read2AD[0]~input_o\ & ((\reg4|gen_register:10:vff|O~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Read2AD[1]~input_o\,
	datab => \reg5|gen_register:10:vff|O~q\,
	datac => \reg4|gen_register:10:vff|O~q\,
	datad => \Read2AD[0]~input_o\,
	combout => \read_mux2|v6|v3|v10|Q~0_combout\);

-- Location: LCCOMB_X22_Y13_N14
\read_mux2|v6|v3|v10|Q~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_mux2|v6|v3|v10|Q~1_combout\ = (\Read2AD[1]~input_o\ & ((\read_mux2|v6|v3|v10|Q~0_combout\ & (\reg7|gen_register:10:vff|O~q\)) # (!\read_mux2|v6|v3|v10|Q~0_combout\ & ((\reg6|gen_register:10:vff|O~q\))))) # (!\Read2AD[1]~input_o\ & 
-- (\read_mux2|v6|v3|v10|Q~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Read2AD[1]~input_o\,
	datab => \read_mux2|v6|v3|v10|Q~0_combout\,
	datac => \reg7|gen_register:10:vff|O~q\,
	datad => \reg6|gen_register:10:vff|O~q\,
	combout => \read_mux2|v6|v3|v10|Q~1_combout\);

-- Location: LCCOMB_X25_Y13_N12
\read_mux2|V0|v2|v10|Q\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_mux2|V0|v2|v10|Q~combout\ = (\reg1|gen_register:10:vff|O~q\ & \Read2AD[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reg1|gen_register:10:vff|O~q\,
	datad => \Read2AD[0]~input_o\,
	combout => \read_mux2|V0|v2|v10|Q~combout\);

-- Location: LCCOMB_X24_Y13_N2
\read_mux2|v6|v3|v10|Q~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_mux2|v6|v3|v10|Q~2_combout\ = (\read_mux2|v6|v3|v0|Q~2_combout\ & (((\read_mux2|v6|v3|v0|Q~3_combout\)))) # (!\read_mux2|v6|v3|v0|Q~2_combout\ & ((\read_mux2|v6|v3|v0|Q~3_combout\ & ((\reg2|gen_register:10:vff|O~q\))) # 
-- (!\read_mux2|v6|v3|v0|Q~3_combout\ & (\read_mux2|V0|v2|v10|Q~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \read_mux2|v6|v3|v0|Q~2_combout\,
	datab => \read_mux2|V0|v2|v10|Q~combout\,
	datac => \reg2|gen_register:10:vff|O~q\,
	datad => \read_mux2|v6|v3|v0|Q~3_combout\,
	combout => \read_mux2|v6|v3|v10|Q~2_combout\);

-- Location: LCCOMB_X24_Y13_N28
\read_mux2|v6|v3|v10|Q~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_mux2|v6|v3|v10|Q~3_combout\ = (\read_mux2|v6|v3|v0|Q~2_combout\ & ((\read_mux2|v6|v3|v10|Q~2_combout\ & ((\reg3|gen_register:10:vff|O~q\))) # (!\read_mux2|v6|v3|v10|Q~2_combout\ & (\read_mux2|v6|v3|v10|Q~1_combout\)))) # 
-- (!\read_mux2|v6|v3|v0|Q~2_combout\ & (((\read_mux2|v6|v3|v10|Q~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \read_mux2|v6|v3|v0|Q~2_combout\,
	datab => \read_mux2|v6|v3|v10|Q~1_combout\,
	datac => \reg3|gen_register:10:vff|O~q\,
	datad => \read_mux2|v6|v3|v10|Q~2_combout\,
	combout => \read_mux2|v6|v3|v10|Q~3_combout\);

-- Location: LCCOMB_X22_Y13_N0
\read_mux2|v6|v3|v11|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_mux2|v6|v3|v11|Q~0_combout\ = (\Read2AD[1]~input_o\ & (((\Read2AD[0]~input_o\)))) # (!\Read2AD[1]~input_o\ & ((\Read2AD[0]~input_o\ & (\reg5|gen_register:11:vff|O~q\)) # (!\Read2AD[0]~input_o\ & ((\reg4|gen_register:11:vff|O~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Read2AD[1]~input_o\,
	datab => \reg5|gen_register:11:vff|O~q\,
	datac => \reg4|gen_register:11:vff|O~q\,
	datad => \Read2AD[0]~input_o\,
	combout => \read_mux2|v6|v3|v11|Q~0_combout\);

-- Location: LCCOMB_X22_Y13_N26
\read_mux2|v6|v3|v11|Q~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_mux2|v6|v3|v11|Q~1_combout\ = (\Read2AD[1]~input_o\ & ((\read_mux2|v6|v3|v11|Q~0_combout\ & (\reg7|gen_register:11:vff|O~q\)) # (!\read_mux2|v6|v3|v11|Q~0_combout\ & ((\reg6|gen_register:11:vff|O~q\))))) # (!\Read2AD[1]~input_o\ & 
-- (\read_mux2|v6|v3|v11|Q~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Read2AD[1]~input_o\,
	datab => \read_mux2|v6|v3|v11|Q~0_combout\,
	datac => \reg7|gen_register:11:vff|O~q\,
	datad => \reg6|gen_register:11:vff|O~q\,
	combout => \read_mux2|v6|v3|v11|Q~1_combout\);

-- Location: LCCOMB_X25_Y13_N16
\read_mux2|V0|v2|v11|Q\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_mux2|V0|v2|v11|Q~combout\ = (\reg1|gen_register:11:vff|O~q\ & \Read2AD[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reg1|gen_register:11:vff|O~q\,
	datad => \Read2AD[0]~input_o\,
	combout => \read_mux2|V0|v2|v11|Q~combout\);

-- Location: LCCOMB_X24_Y9_N6
\read_mux2|v6|v3|v11|Q~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_mux2|v6|v3|v11|Q~2_combout\ = (\read_mux2|v6|v3|v0|Q~2_combout\ & ((\read_mux2|v6|v3|v11|Q~1_combout\) # ((\read_mux2|v6|v3|v0|Q~3_combout\)))) # (!\read_mux2|v6|v3|v0|Q~2_combout\ & (((!\read_mux2|v6|v3|v0|Q~3_combout\ & 
-- \read_mux2|V0|v2|v11|Q~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \read_mux2|v6|v3|v0|Q~2_combout\,
	datab => \read_mux2|v6|v3|v11|Q~1_combout\,
	datac => \read_mux2|v6|v3|v0|Q~3_combout\,
	datad => \read_mux2|V0|v2|v11|Q~combout\,
	combout => \read_mux2|v6|v3|v11|Q~2_combout\);

-- Location: LCCOMB_X24_Y9_N24
\read_mux2|v6|v3|v11|Q~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_mux2|v6|v3|v11|Q~3_combout\ = (\read_mux2|v6|v3|v0|Q~3_combout\ & ((\read_mux2|v6|v3|v11|Q~2_combout\ & (\reg3|gen_register:11:vff|O~q\)) # (!\read_mux2|v6|v3|v11|Q~2_combout\ & ((\reg2|gen_register:11:vff|O~q\))))) # 
-- (!\read_mux2|v6|v3|v0|Q~3_combout\ & (\read_mux2|v6|v3|v11|Q~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \read_mux2|v6|v3|v0|Q~3_combout\,
	datab => \read_mux2|v6|v3|v11|Q~2_combout\,
	datac => \reg3|gen_register:11:vff|O~q\,
	datad => \reg2|gen_register:11:vff|O~q\,
	combout => \read_mux2|v6|v3|v11|Q~3_combout\);

-- Location: LCCOMB_X20_Y9_N28
\read_mux2|V0|v2|v12|Q\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_mux2|V0|v2|v12|Q~combout\ = (\reg1|gen_register:12:vff|O~q\ & \Read2AD[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reg1|gen_register:12:vff|O~q\,
	datad => \Read2AD[0]~input_o\,
	combout => \read_mux2|V0|v2|v12|Q~combout\);

-- Location: LCCOMB_X24_Y13_N22
\read_mux2|v6|v3|v12|Q~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_mux2|v6|v3|v12|Q~2_combout\ = (\read_mux2|v6|v3|v0|Q~2_combout\ & (\read_mux2|v6|v3|v0|Q~3_combout\)) # (!\read_mux2|v6|v3|v0|Q~2_combout\ & ((\read_mux2|v6|v3|v0|Q~3_combout\ & (\reg2|gen_register:12:vff|O~q\)) # (!\read_mux2|v6|v3|v0|Q~3_combout\ 
-- & ((\read_mux2|V0|v2|v12|Q~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \read_mux2|v6|v3|v0|Q~2_combout\,
	datab => \read_mux2|v6|v3|v0|Q~3_combout\,
	datac => \reg2|gen_register:12:vff|O~q\,
	datad => \read_mux2|V0|v2|v12|Q~combout\,
	combout => \read_mux2|v6|v3|v12|Q~2_combout\);

-- Location: LCCOMB_X22_Y13_N4
\read_mux2|v6|v3|v12|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_mux2|v6|v3|v12|Q~0_combout\ = (\Read2AD[1]~input_o\ & (((\Read2AD[0]~input_o\)))) # (!\Read2AD[1]~input_o\ & ((\Read2AD[0]~input_o\ & (\reg5|gen_register:12:vff|O~q\)) # (!\Read2AD[0]~input_o\ & ((\reg4|gen_register:12:vff|O~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Read2AD[1]~input_o\,
	datab => \reg5|gen_register:12:vff|O~q\,
	datac => \reg4|gen_register:12:vff|O~q\,
	datad => \Read2AD[0]~input_o\,
	combout => \read_mux2|v6|v3|v12|Q~0_combout\);

-- Location: LCCOMB_X22_Y13_N22
\read_mux2|v6|v3|v12|Q~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_mux2|v6|v3|v12|Q~1_combout\ = (\Read2AD[1]~input_o\ & ((\read_mux2|v6|v3|v12|Q~0_combout\ & (\reg7|gen_register:12:vff|O~q\)) # (!\read_mux2|v6|v3|v12|Q~0_combout\ & ((\reg6|gen_register:12:vff|O~q\))))) # (!\Read2AD[1]~input_o\ & 
-- (\read_mux2|v6|v3|v12|Q~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Read2AD[1]~input_o\,
	datab => \read_mux2|v6|v3|v12|Q~0_combout\,
	datac => \reg7|gen_register:12:vff|O~q\,
	datad => \reg6|gen_register:12:vff|O~q\,
	combout => \read_mux2|v6|v3|v12|Q~1_combout\);

-- Location: LCCOMB_X24_Y13_N10
\read_mux2|v6|v3|v12|Q~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_mux2|v6|v3|v12|Q~3_combout\ = (\read_mux2|v6|v3|v0|Q~2_combout\ & ((\read_mux2|v6|v3|v12|Q~2_combout\ & (\reg3|gen_register:12:vff|O~q\)) # (!\read_mux2|v6|v3|v12|Q~2_combout\ & ((\read_mux2|v6|v3|v12|Q~1_combout\))))) # 
-- (!\read_mux2|v6|v3|v0|Q~2_combout\ & (\read_mux2|v6|v3|v12|Q~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \read_mux2|v6|v3|v0|Q~2_combout\,
	datab => \read_mux2|v6|v3|v12|Q~2_combout\,
	datac => \reg3|gen_register:12:vff|O~q\,
	datad => \read_mux2|v6|v3|v12|Q~1_combout\,
	combout => \read_mux2|v6|v3|v12|Q~3_combout\);

-- Location: LCCOMB_X16_Y13_N8
\read_mux2|v6|v3|v13|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_mux2|v6|v3|v13|Q~0_combout\ = (\Read2AD[1]~input_o\ & (((\Read2AD[0]~input_o\)))) # (!\Read2AD[1]~input_o\ & ((\Read2AD[0]~input_o\ & (\reg5|gen_register:13:vff|O~q\)) # (!\Read2AD[0]~input_o\ & ((\reg4|gen_register:13:vff|O~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg5|gen_register:13:vff|O~q\,
	datab => \Read2AD[1]~input_o\,
	datac => \reg4|gen_register:13:vff|O~q\,
	datad => \Read2AD[0]~input_o\,
	combout => \read_mux2|v6|v3|v13|Q~0_combout\);

-- Location: LCCOMB_X17_Y13_N12
\read_mux2|v6|v3|v13|Q~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_mux2|v6|v3|v13|Q~1_combout\ = (\read_mux2|v6|v3|v13|Q~0_combout\ & (((\reg7|gen_register:13:vff|O~q\)) # (!\Read2AD[1]~input_o\))) # (!\read_mux2|v6|v3|v13|Q~0_combout\ & (\Read2AD[1]~input_o\ & ((\reg6|gen_register:13:vff|O~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \read_mux2|v6|v3|v13|Q~0_combout\,
	datab => \Read2AD[1]~input_o\,
	datac => \reg7|gen_register:13:vff|O~q\,
	datad => \reg6|gen_register:13:vff|O~q\,
	combout => \read_mux2|v6|v3|v13|Q~1_combout\);

-- Location: LCCOMB_X25_Y13_N4
\read_mux2|V0|v2|v13|Q\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_mux2|V0|v2|v13|Q~combout\ = (\reg1|gen_register:13:vff|O~q\ & \Read2AD[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reg1|gen_register:13:vff|O~q\,
	datad => \Read2AD[0]~input_o\,
	combout => \read_mux2|V0|v2|v13|Q~combout\);

-- Location: LCCOMB_X24_Y13_N14
\read_mux2|v6|v3|v13|Q~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_mux2|v6|v3|v13|Q~2_combout\ = (\read_mux2|v6|v3|v0|Q~3_combout\ & (((\read_mux2|v6|v3|v0|Q~2_combout\)))) # (!\read_mux2|v6|v3|v0|Q~3_combout\ & ((\read_mux2|v6|v3|v0|Q~2_combout\ & (\read_mux2|v6|v3|v13|Q~1_combout\)) # 
-- (!\read_mux2|v6|v3|v0|Q~2_combout\ & ((\read_mux2|V0|v2|v13|Q~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \read_mux2|v6|v3|v13|Q~1_combout\,
	datab => \read_mux2|v6|v3|v0|Q~3_combout\,
	datac => \read_mux2|v6|v3|v0|Q~2_combout\,
	datad => \read_mux2|V0|v2|v13|Q~combout\,
	combout => \read_mux2|v6|v3|v13|Q~2_combout\);

-- Location: LCCOMB_X24_Y13_N26
\read_mux2|v6|v3|v13|Q~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_mux2|v6|v3|v13|Q~3_combout\ = (\read_mux2|v6|v3|v13|Q~2_combout\ & (((\reg3|gen_register:13:vff|O~q\) # (!\read_mux2|v6|v3|v0|Q~3_combout\)))) # (!\read_mux2|v6|v3|v13|Q~2_combout\ & (\reg2|gen_register:13:vff|O~q\ & 
-- ((\read_mux2|v6|v3|v0|Q~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg2|gen_register:13:vff|O~q\,
	datab => \read_mux2|v6|v3|v13|Q~2_combout\,
	datac => \reg3|gen_register:13:vff|O~q\,
	datad => \read_mux2|v6|v3|v0|Q~3_combout\,
	combout => \read_mux2|v6|v3|v13|Q~3_combout\);

-- Location: LCCOMB_X16_Y13_N12
\read_mux2|v6|v3|v14|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_mux2|v6|v3|v14|Q~0_combout\ = (\Read2AD[1]~input_o\ & (((\Read2AD[0]~input_o\)))) # (!\Read2AD[1]~input_o\ & ((\Read2AD[0]~input_o\ & (\reg5|gen_register:14:vff|O~q\)) # (!\Read2AD[0]~input_o\ & ((\reg4|gen_register:14:vff|O~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg5|gen_register:14:vff|O~q\,
	datab => \Read2AD[1]~input_o\,
	datac => \reg4|gen_register:14:vff|O~q\,
	datad => \Read2AD[0]~input_o\,
	combout => \read_mux2|v6|v3|v14|Q~0_combout\);

-- Location: LCCOMB_X17_Y13_N14
\read_mux2|v6|v3|v14|Q~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_mux2|v6|v3|v14|Q~1_combout\ = (\Read2AD[1]~input_o\ & ((\read_mux2|v6|v3|v14|Q~0_combout\ & ((\reg7|gen_register:14:vff|O~q\))) # (!\read_mux2|v6|v3|v14|Q~0_combout\ & (\reg6|gen_register:14:vff|O~q\)))) # (!\Read2AD[1]~input_o\ & 
-- (\read_mux2|v6|v3|v14|Q~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Read2AD[1]~input_o\,
	datab => \read_mux2|v6|v3|v14|Q~0_combout\,
	datac => \reg6|gen_register:14:vff|O~q\,
	datad => \reg7|gen_register:14:vff|O~q\,
	combout => \read_mux2|v6|v3|v14|Q~1_combout\);

-- Location: LCCOMB_X25_Y13_N24
\read_mux2|V0|v2|v14|Q\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_mux2|V0|v2|v14|Q~combout\ = (\reg1|gen_register:14:vff|O~q\ & \Read2AD[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reg1|gen_register:14:vff|O~q\,
	datad => \Read2AD[0]~input_o\,
	combout => \read_mux2|V0|v2|v14|Q~combout\);

-- Location: LCCOMB_X24_Y13_N12
\read_mux2|v6|v3|v14|Q~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_mux2|v6|v3|v14|Q~2_combout\ = (\read_mux2|v6|v3|v0|Q~2_combout\ & (\read_mux2|v6|v3|v0|Q~3_combout\)) # (!\read_mux2|v6|v3|v0|Q~2_combout\ & ((\read_mux2|v6|v3|v0|Q~3_combout\ & (\reg2|gen_register:14:vff|O~q\)) # (!\read_mux2|v6|v3|v0|Q~3_combout\ 
-- & ((\read_mux2|V0|v2|v14|Q~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \read_mux2|v6|v3|v0|Q~2_combout\,
	datab => \read_mux2|v6|v3|v0|Q~3_combout\,
	datac => \reg2|gen_register:14:vff|O~q\,
	datad => \read_mux2|V0|v2|v14|Q~combout\,
	combout => \read_mux2|v6|v3|v14|Q~2_combout\);

-- Location: LCCOMB_X24_Y13_N16
\read_mux2|v6|v3|v14|Q~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_mux2|v6|v3|v14|Q~3_combout\ = (\read_mux2|v6|v3|v0|Q~2_combout\ & ((\read_mux2|v6|v3|v14|Q~2_combout\ & ((\reg3|gen_register:14:vff|O~q\))) # (!\read_mux2|v6|v3|v14|Q~2_combout\ & (\read_mux2|v6|v3|v14|Q~1_combout\)))) # 
-- (!\read_mux2|v6|v3|v0|Q~2_combout\ & (((\read_mux2|v6|v3|v14|Q~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \read_mux2|v6|v3|v0|Q~2_combout\,
	datab => \read_mux2|v6|v3|v14|Q~1_combout\,
	datac => \reg3|gen_register:14:vff|O~q\,
	datad => \read_mux2|v6|v3|v14|Q~2_combout\,
	combout => \read_mux2|v6|v3|v14|Q~3_combout\);

-- Location: LCCOMB_X25_Y13_N28
\read_mux2|V0|v2|v15|Q\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_mux2|V0|v2|v15|Q~combout\ = (\reg1|gen_register:15:vff|O~q\ & \Read2AD[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reg1|gen_register:15:vff|O~q\,
	datad => \Read2AD[0]~input_o\,
	combout => \read_mux2|V0|v2|v15|Q~combout\);

-- Location: LCCOMB_X16_Y13_N16
\read_mux2|v6|v3|v15|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_mux2|v6|v3|v15|Q~0_combout\ = (\Read2AD[1]~input_o\ & (((\Read2AD[0]~input_o\)))) # (!\Read2AD[1]~input_o\ & ((\Read2AD[0]~input_o\ & (\reg5|gen_register:15:vff|O~q\)) # (!\Read2AD[0]~input_o\ & ((\reg4|gen_register:15:vff|O~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg5|gen_register:15:vff|O~q\,
	datab => \Read2AD[1]~input_o\,
	datac => \reg4|gen_register:15:vff|O~q\,
	datad => \Read2AD[0]~input_o\,
	combout => \read_mux2|v6|v3|v15|Q~0_combout\);

-- Location: LCCOMB_X17_Y13_N8
\read_mux2|v6|v3|v15|Q~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_mux2|v6|v3|v15|Q~1_combout\ = (\Read2AD[1]~input_o\ & ((\read_mux2|v6|v3|v15|Q~0_combout\ & (\reg7|gen_register:15:vff|O~q\)) # (!\read_mux2|v6|v3|v15|Q~0_combout\ & ((\reg6|gen_register:15:vff|O~q\))))) # (!\Read2AD[1]~input_o\ & 
-- (((\read_mux2|v6|v3|v15|Q~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg7|gen_register:15:vff|O~q\,
	datab => \Read2AD[1]~input_o\,
	datac => \read_mux2|v6|v3|v15|Q~0_combout\,
	datad => \reg6|gen_register:15:vff|O~q\,
	combout => \read_mux2|v6|v3|v15|Q~1_combout\);

-- Location: LCCOMB_X18_Y13_N10
\read_mux2|v6|v3|v15|Q~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_mux2|v6|v3|v15|Q~2_combout\ = (\read_mux2|v6|v3|v0|Q~2_combout\ & ((\read_mux2|v6|v3|v0|Q~3_combout\) # ((\read_mux2|v6|v3|v15|Q~1_combout\)))) # (!\read_mux2|v6|v3|v0|Q~2_combout\ & (!\read_mux2|v6|v3|v0|Q~3_combout\ & 
-- (\read_mux2|V0|v2|v15|Q~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \read_mux2|v6|v3|v0|Q~2_combout\,
	datab => \read_mux2|v6|v3|v0|Q~3_combout\,
	datac => \read_mux2|V0|v2|v15|Q~combout\,
	datad => \read_mux2|v6|v3|v15|Q~1_combout\,
	combout => \read_mux2|v6|v3|v15|Q~2_combout\);

-- Location: LCCOMB_X18_Y13_N4
\read_mux2|v6|v3|v15|Q~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \read_mux2|v6|v3|v15|Q~3_combout\ = (\read_mux2|v6|v3|v15|Q~2_combout\ & (((\reg3|gen_register:15:vff|O~q\)) # (!\read_mux2|v6|v3|v0|Q~3_combout\))) # (!\read_mux2|v6|v3|v15|Q~2_combout\ & (\read_mux2|v6|v3|v0|Q~3_combout\ & 
-- (\reg2|gen_register:15:vff|O~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \read_mux2|v6|v3|v15|Q~2_combout\,
	datab => \read_mux2|v6|v3|v0|Q~3_combout\,
	datac => \reg2|gen_register:15:vff|O~q\,
	datad => \reg3|gen_register:15:vff|O~q\,
	combout => \read_mux2|v6|v3|v15|Q~3_combout\);

-- Location: UNVM_X0_Y11_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_end_addr => -1,
	addr_range2_offset => -1,
	addr_range3_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X10_Y24_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

ww_Read1(0) <= \Read1[0]~output_o\;

ww_Read1(1) <= \Read1[1]~output_o\;

ww_Read1(2) <= \Read1[2]~output_o\;

ww_Read1(3) <= \Read1[3]~output_o\;

ww_Read1(4) <= \Read1[4]~output_o\;

ww_Read1(5) <= \Read1[5]~output_o\;

ww_Read1(6) <= \Read1[6]~output_o\;

ww_Read1(7) <= \Read1[7]~output_o\;

ww_Read1(8) <= \Read1[8]~output_o\;

ww_Read1(9) <= \Read1[9]~output_o\;

ww_Read1(10) <= \Read1[10]~output_o\;

ww_Read1(11) <= \Read1[11]~output_o\;

ww_Read1(12) <= \Read1[12]~output_o\;

ww_Read1(13) <= \Read1[13]~output_o\;

ww_Read1(14) <= \Read1[14]~output_o\;

ww_Read1(15) <= \Read1[15]~output_o\;

ww_Read2(0) <= \Read2[0]~output_o\;

ww_Read2(1) <= \Read2[1]~output_o\;

ww_Read2(2) <= \Read2[2]~output_o\;

ww_Read2(3) <= \Read2[3]~output_o\;

ww_Read2(4) <= \Read2[4]~output_o\;

ww_Read2(5) <= \Read2[5]~output_o\;

ww_Read2(6) <= \Read2[6]~output_o\;

ww_Read2(7) <= \Read2[7]~output_o\;

ww_Read2(8) <= \Read2[8]~output_o\;

ww_Read2(9) <= \Read2[9]~output_o\;

ww_Read2(10) <= \Read2[10]~output_o\;

ww_Read2(11) <= \Read2[11]~output_o\;

ww_Read2(12) <= \Read2[12]~output_o\;

ww_Read2(13) <= \Read2[13]~output_o\;

ww_Read2(14) <= \Read2[14]~output_o\;

ww_Read2(15) <= \Read2[15]~output_o\;

ww_OUTall(0) <= \OUTall[0]~output_o\;

ww_OUTall(1) <= \OUTall[1]~output_o\;

ww_OUTall(2) <= \OUTall[2]~output_o\;

ww_OUTall(3) <= \OUTall[3]~output_o\;

ww_OUTall(4) <= \OUTall[4]~output_o\;

ww_OUTall(5) <= \OUTall[5]~output_o\;

ww_OUTall(6) <= \OUTall[6]~output_o\;

ww_OUTall(7) <= \OUTall[7]~output_o\;

ww_OUTall(8) <= \OUTall[8]~output_o\;

ww_OUTall(9) <= \OUTall[9]~output_o\;

ww_OUTall(10) <= \OUTall[10]~output_o\;

ww_OUTall(11) <= \OUTall[11]~output_o\;

ww_OUTall(12) <= \OUTall[12]~output_o\;

ww_OUTall(13) <= \OUTall[13]~output_o\;

ww_OUTall(14) <= \OUTall[14]~output_o\;

ww_OUTall(15) <= \OUTall[15]~output_o\;

ww_OUTall(16) <= \OUTall[16]~output_o\;

ww_OUTall(17) <= \OUTall[17]~output_o\;

ww_OUTall(18) <= \OUTall[18]~output_o\;

ww_OUTall(19) <= \OUTall[19]~output_o\;

ww_OUTall(20) <= \OUTall[20]~output_o\;

ww_OUTall(21) <= \OUTall[21]~output_o\;

ww_OUTall(22) <= \OUTall[22]~output_o\;

ww_OUTall(23) <= \OUTall[23]~output_o\;

ww_OUTall(24) <= \OUTall[24]~output_o\;

ww_OUTall(25) <= \OUTall[25]~output_o\;

ww_OUTall(26) <= \OUTall[26]~output_o\;

ww_OUTall(27) <= \OUTall[27]~output_o\;

ww_OUTall(28) <= \OUTall[28]~output_o\;

ww_OUTall(29) <= \OUTall[29]~output_o\;

ww_OUTall(30) <= \OUTall[30]~output_o\;

ww_OUTall(31) <= \OUTall[31]~output_o\;

ww_OUTall(32) <= \OUTall[32]~output_o\;

ww_OUTall(33) <= \OUTall[33]~output_o\;

ww_OUTall(34) <= \OUTall[34]~output_o\;

ww_OUTall(35) <= \OUTall[35]~output_o\;

ww_OUTall(36) <= \OUTall[36]~output_o\;

ww_OUTall(37) <= \OUTall[37]~output_o\;

ww_OUTall(38) <= \OUTall[38]~output_o\;

ww_OUTall(39) <= \OUTall[39]~output_o\;

ww_OUTall(40) <= \OUTall[40]~output_o\;

ww_OUTall(41) <= \OUTall[41]~output_o\;

ww_OUTall(42) <= \OUTall[42]~output_o\;

ww_OUTall(43) <= \OUTall[43]~output_o\;

ww_OUTall(44) <= \OUTall[44]~output_o\;

ww_OUTall(45) <= \OUTall[45]~output_o\;

ww_OUTall(46) <= \OUTall[46]~output_o\;

ww_OUTall(47) <= \OUTall[47]~output_o\;

ww_OUTall(48) <= \OUTall[48]~output_o\;

ww_OUTall(49) <= \OUTall[49]~output_o\;

ww_OUTall(50) <= \OUTall[50]~output_o\;

ww_OUTall(51) <= \OUTall[51]~output_o\;

ww_OUTall(52) <= \OUTall[52]~output_o\;

ww_OUTall(53) <= \OUTall[53]~output_o\;

ww_OUTall(54) <= \OUTall[54]~output_o\;

ww_OUTall(55) <= \OUTall[55]~output_o\;

ww_OUTall(56) <= \OUTall[56]~output_o\;

ww_OUTall(57) <= \OUTall[57]~output_o\;

ww_OUTall(58) <= \OUTall[58]~output_o\;

ww_OUTall(59) <= \OUTall[59]~output_o\;

ww_OUTall(60) <= \OUTall[60]~output_o\;

ww_OUTall(61) <= \OUTall[61]~output_o\;

ww_OUTall(62) <= \OUTall[62]~output_o\;

ww_OUTall(63) <= \OUTall[63]~output_o\;

ww_OUTall(64) <= \OUTall[64]~output_o\;

ww_OUTall(65) <= \OUTall[65]~output_o\;

ww_OUTall(66) <= \OUTall[66]~output_o\;

ww_OUTall(67) <= \OUTall[67]~output_o\;

ww_OUTall(68) <= \OUTall[68]~output_o\;

ww_OUTall(69) <= \OUTall[69]~output_o\;

ww_OUTall(70) <= \OUTall[70]~output_o\;

ww_OUTall(71) <= \OUTall[71]~output_o\;

ww_OUTall(72) <= \OUTall[72]~output_o\;

ww_OUTall(73) <= \OUTall[73]~output_o\;

ww_OUTall(74) <= \OUTall[74]~output_o\;

ww_OUTall(75) <= \OUTall[75]~output_o\;

ww_OUTall(76) <= \OUTall[76]~output_o\;

ww_OUTall(77) <= \OUTall[77]~output_o\;

ww_OUTall(78) <= \OUTall[78]~output_o\;

ww_OUTall(79) <= \OUTall[79]~output_o\;

ww_OUTall(80) <= \OUTall[80]~output_o\;

ww_OUTall(81) <= \OUTall[81]~output_o\;

ww_OUTall(82) <= \OUTall[82]~output_o\;

ww_OUTall(83) <= \OUTall[83]~output_o\;

ww_OUTall(84) <= \OUTall[84]~output_o\;

ww_OUTall(85) <= \OUTall[85]~output_o\;

ww_OUTall(86) <= \OUTall[86]~output_o\;

ww_OUTall(87) <= \OUTall[87]~output_o\;

ww_OUTall(88) <= \OUTall[88]~output_o\;

ww_OUTall(89) <= \OUTall[89]~output_o\;

ww_OUTall(90) <= \OUTall[90]~output_o\;

ww_OUTall(91) <= \OUTall[91]~output_o\;

ww_OUTall(92) <= \OUTall[92]~output_o\;

ww_OUTall(93) <= \OUTall[93]~output_o\;

ww_OUTall(94) <= \OUTall[94]~output_o\;

ww_OUTall(95) <= \OUTall[95]~output_o\;

ww_OUTall(96) <= \OUTall[96]~output_o\;

ww_OUTall(97) <= \OUTall[97]~output_o\;

ww_OUTall(98) <= \OUTall[98]~output_o\;

ww_OUTall(99) <= \OUTall[99]~output_o\;

ww_OUTall(100) <= \OUTall[100]~output_o\;

ww_OUTall(101) <= \OUTall[101]~output_o\;

ww_OUTall(102) <= \OUTall[102]~output_o\;

ww_OUTall(103) <= \OUTall[103]~output_o\;

ww_OUTall(104) <= \OUTall[104]~output_o\;

ww_OUTall(105) <= \OUTall[105]~output_o\;

ww_OUTall(106) <= \OUTall[106]~output_o\;

ww_OUTall(107) <= \OUTall[107]~output_o\;

ww_OUTall(108) <= \OUTall[108]~output_o\;

ww_OUTall(109) <= \OUTall[109]~output_o\;

ww_OUTall(110) <= \OUTall[110]~output_o\;

ww_OUTall(111) <= \OUTall[111]~output_o\;

ww_OUTall(112) <= \OUTall[112]~output_o\;

ww_OUTall(113) <= \OUTall[113]~output_o\;

ww_OUTall(114) <= \OUTall[114]~output_o\;

ww_OUTall(115) <= \OUTall[115]~output_o\;

ww_OUTall(116) <= \OUTall[116]~output_o\;

ww_OUTall(117) <= \OUTall[117]~output_o\;

ww_OUTall(118) <= \OUTall[118]~output_o\;

ww_OUTall(119) <= \OUTall[119]~output_o\;

ww_OUTall(120) <= \OUTall[120]~output_o\;

ww_OUTall(121) <= \OUTall[121]~output_o\;

ww_OUTall(122) <= \OUTall[122]~output_o\;

ww_OUTall(123) <= \OUTall[123]~output_o\;

ww_OUTall(124) <= \OUTall[124]~output_o\;

ww_OUTall(125) <= \OUTall[125]~output_o\;

ww_OUTall(126) <= \OUTall[126]~output_o\;

ww_OUTall(127) <= \OUTall[127]~output_o\;
END structure;


