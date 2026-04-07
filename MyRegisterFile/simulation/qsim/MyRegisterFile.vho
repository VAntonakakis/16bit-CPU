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

-- DATE "04/05/2026 01:34:47"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	MyRegisterFile IS
    PORT (
	Clock : IN std_logic;
	Read1AD : IN std_logic_vector(2 DOWNTO 0);
	Read2AD : IN std_logic_vector(2 DOWNTO 0);
	Write1AD : IN std_logic_vector(2 DOWNTO 0);
	Write1 : IN std_logic_vector(15 DOWNTO 0);
	Read1 : BUFFER std_logic_vector(15 DOWNTO 0);
	Read2 : BUFFER std_logic_vector(15 DOWNTO 0);
	OUTall : BUFFER std_logic_vector(127 DOWNTO 0)
	);
END MyRegisterFile;

-- Design Ports Information
-- Read1[0]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Read1[1]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Read1[2]	=>  Location: PIN_K19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Read1[3]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Read1[4]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Read1[5]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Read1[6]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Read1[7]	=>  Location: PIN_J8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Read1[8]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Read1[9]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Read1[10]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Read1[11]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Read1[12]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Read1[13]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Read1[14]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Read1[15]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Read2[0]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Read2[1]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Read2[2]	=>  Location: PIN_A22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Read2[3]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Read2[4]	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Read2[5]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Read2[6]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Read2[7]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Read2[8]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Read2[9]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Read2[10]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Read2[11]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Read2[12]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Read2[13]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Read2[14]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Read2[15]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[0]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[1]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[2]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[3]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[4]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[5]	=>  Location: PIN_E20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[6]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[7]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[8]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[9]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[10]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[11]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[12]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[13]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[14]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[15]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[16]	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[17]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[18]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[19]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[20]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[21]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[22]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[23]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[24]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[25]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[26]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[27]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[28]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[29]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[30]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[31]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[32]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[33]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[34]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[35]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[36]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[37]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[38]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[39]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[40]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[41]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[42]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[43]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[44]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[45]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[46]	=>  Location: PIN_K20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[47]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[48]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[49]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[50]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[51]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[52]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[53]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[54]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[55]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[56]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[57]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[58]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[59]	=>  Location: PIN_L17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[60]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[61]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[62]	=>  Location: PIN_U17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[63]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[64]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[65]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[66]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[67]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[68]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[69]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[70]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[71]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[72]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[73]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[74]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[75]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[76]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[77]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[78]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[79]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[80]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[81]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[82]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[83]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[84]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[85]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[86]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[87]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[88]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[89]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[90]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[91]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[92]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[93]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[94]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[95]	=>  Location: PIN_P17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[96]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[97]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[98]	=>  Location: PIN_V19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[99]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[100]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[101]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[102]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[103]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[104]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[105]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[106]	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[107]	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[108]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[109]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[110]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[111]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[112]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[113]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[114]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[115]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[116]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[117]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[118]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[119]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[120]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[121]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[122]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[123]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[124]	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[125]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[126]	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTall[127]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Read1AD[0]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Read1AD[1]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Read1AD[2]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Read2AD[0]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Read2AD[1]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Read2AD[2]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Write1[0]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clock	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Write1AD[1]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Write1AD[0]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Write1AD[2]	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Write1[1]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Write1[2]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Write1[3]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Write1[4]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Write1[5]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Write1[6]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Write1[7]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Write1[8]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Write1[9]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Write1[10]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Write1[11]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Write1[12]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Write1[13]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Write1[14]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Write1[15]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \Clock~input_o\ : std_logic;
SIGNAL \Clock~inputCLKENA0_outclk\ : std_logic;
SIGNAL \Write1[0]~input_o\ : std_logic;
SIGNAL \Write1AD[1]~input_o\ : std_logic;
SIGNAL \Write1AD[0]~input_o\ : std_logic;
SIGNAL \Write1AD[2]~input_o\ : std_logic;
SIGNAL \v0|v8|Q~0_combout\ : std_logic;
SIGNAL \reg2|gen_register:0:vff|O~q\ : std_logic;
SIGNAL \v0|v10|Q~0_combout\ : std_logic;
SIGNAL \reg3|gen_register:0:vff|O~q\ : std_logic;
SIGNAL \Read1AD[0]~input_o\ : std_logic;
SIGNAL \v0|v12|Q~0_combout\ : std_logic;
SIGNAL \reg4|gen_register:0:vff|O~q\ : std_logic;
SIGNAL \v0|v14|Q~0_combout\ : std_logic;
SIGNAL \reg5|gen_register:0:vff|O~q\ : std_logic;
SIGNAL \v0|v16|Q~0_combout\ : std_logic;
SIGNAL \reg6|gen_register:0:vff|O~q\ : std_logic;
SIGNAL \Read1AD[1]~input_o\ : std_logic;
SIGNAL \v0|v18|Q~0_combout\ : std_logic;
SIGNAL \reg7|gen_register:0:vff|O~q\ : std_logic;
SIGNAL \read_mux1|v6|v3|v0|Q~0_combout\ : std_logic;
SIGNAL \Read1AD[2]~input_o\ : std_logic;
SIGNAL \reg1|gen_register:0:vff|O~feeder_combout\ : std_logic;
SIGNAL \v0|v6|Q~combout\ : std_logic;
SIGNAL \reg1|gen_register:0:vff|O~q\ : std_logic;
SIGNAL \read_mux1|v6|v3|v0|Q~1_combout\ : std_logic;
SIGNAL \Write1[1]~input_o\ : std_logic;
SIGNAL \reg7|gen_register:1:vff|O~q\ : std_logic;
SIGNAL \reg5|gen_register:1:vff|O~q\ : std_logic;
SIGNAL \reg4|gen_register:1:vff|O~q\ : std_logic;
SIGNAL \reg6|gen_register:1:vff|O~feeder_combout\ : std_logic;
SIGNAL \reg6|gen_register:1:vff|O~q\ : std_logic;
SIGNAL \read_mux1|v6|v3|v1|Q~0_combout\ : std_logic;
SIGNAL \reg3|gen_register:1:vff|O~q\ : std_logic;
SIGNAL \reg2|gen_register:1:vff|O~q\ : std_logic;
SIGNAL \reg1|gen_register:1:vff|O~feeder_combout\ : std_logic;
SIGNAL \reg1|gen_register:1:vff|O~q\ : std_logic;
SIGNAL \read_mux1|v6|v3|v1|Q~1_combout\ : std_logic;
SIGNAL \Write1[2]~input_o\ : std_logic;
SIGNAL \reg4|gen_register:2:vff|O~feeder_combout\ : std_logic;
SIGNAL \reg4|gen_register:2:vff|O~q\ : std_logic;
SIGNAL \reg6|gen_register:2:vff|O~q\ : std_logic;
SIGNAL \reg5|gen_register:2:vff|O~feeder_combout\ : std_logic;
SIGNAL \reg5|gen_register:2:vff|O~q\ : std_logic;
SIGNAL \reg7|gen_register:2:vff|O~q\ : std_logic;
SIGNAL \read_mux1|v6|v3|v2|Q~0_combout\ : std_logic;
SIGNAL \reg2|gen_register:2:vff|O~q\ : std_logic;
SIGNAL \reg3|gen_register:2:vff|O~q\ : std_logic;
SIGNAL \reg1|gen_register:2:vff|O~feeder_combout\ : std_logic;
SIGNAL \reg1|gen_register:2:vff|O~q\ : std_logic;
SIGNAL \read_mux1|v6|v3|v2|Q~1_combout\ : std_logic;
SIGNAL \Write1[3]~input_o\ : std_logic;
SIGNAL \reg2|gen_register:3:vff|O~q\ : std_logic;
SIGNAL \reg4|gen_register:3:vff|O~feeder_combout\ : std_logic;
SIGNAL \reg4|gen_register:3:vff|O~q\ : std_logic;
SIGNAL \reg7|gen_register:3:vff|O~q\ : std_logic;
SIGNAL \reg6|gen_register:3:vff|O~q\ : std_logic;
SIGNAL \reg5|gen_register:3:vff|O~q\ : std_logic;
SIGNAL \read_mux1|v6|v3|v3|Q~0_combout\ : std_logic;
SIGNAL \reg3|gen_register:3:vff|O~q\ : std_logic;
SIGNAL \reg1|gen_register:3:vff|O~feeder_combout\ : std_logic;
SIGNAL \reg1|gen_register:3:vff|O~q\ : std_logic;
SIGNAL \read_mux1|v6|v3|v3|Q~1_combout\ : std_logic;
SIGNAL \Write1[4]~input_o\ : std_logic;
SIGNAL \reg5|gen_register:4:vff|O~feeder_combout\ : std_logic;
SIGNAL \reg5|gen_register:4:vff|O~q\ : std_logic;
SIGNAL \reg7|gen_register:4:vff|O~q\ : std_logic;
SIGNAL \reg6|gen_register:4:vff|O~feeder_combout\ : std_logic;
SIGNAL \reg6|gen_register:4:vff|O~q\ : std_logic;
SIGNAL \reg4|gen_register:4:vff|O~feeder_combout\ : std_logic;
SIGNAL \reg4|gen_register:4:vff|O~q\ : std_logic;
SIGNAL \read_mux1|v6|v3|v4|Q~0_combout\ : std_logic;
SIGNAL \reg2|gen_register:4:vff|O~q\ : std_logic;
SIGNAL \reg3|gen_register:4:vff|O~q\ : std_logic;
SIGNAL \reg1|gen_register:4:vff|O~feeder_combout\ : std_logic;
SIGNAL \reg1|gen_register:4:vff|O~q\ : std_logic;
SIGNAL \read_mux1|v6|v3|v4|Q~1_combout\ : std_logic;
SIGNAL \Write1[5]~input_o\ : std_logic;
SIGNAL \reg2|gen_register:5:vff|O~q\ : std_logic;
SIGNAL \reg3|gen_register:5:vff|O~q\ : std_logic;
SIGNAL \reg4|gen_register:5:vff|O~q\ : std_logic;
SIGNAL \reg7|gen_register:5:vff|O~q\ : std_logic;
SIGNAL \reg5|gen_register:5:vff|O~q\ : std_logic;
SIGNAL \reg6|gen_register:5:vff|O~q\ : std_logic;
SIGNAL \read_mux1|v6|v3|v5|Q~0_combout\ : std_logic;
SIGNAL \reg1|gen_register:5:vff|O~q\ : std_logic;
SIGNAL \read_mux1|v6|v3|v5|Q~1_combout\ : std_logic;
SIGNAL \Write1[6]~input_o\ : std_logic;
SIGNAL \reg4|gen_register:6:vff|O~feeder_combout\ : std_logic;
SIGNAL \reg4|gen_register:6:vff|O~q\ : std_logic;
SIGNAL \reg5|gen_register:6:vff|O~feeder_combout\ : std_logic;
SIGNAL \reg5|gen_register:6:vff|O~q\ : std_logic;
SIGNAL \reg7|gen_register:6:vff|O~q\ : std_logic;
SIGNAL \reg6|gen_register:6:vff|O~q\ : std_logic;
SIGNAL \read_mux1|v6|v3|v6|Q~0_combout\ : std_logic;
SIGNAL \reg2|gen_register:6:vff|O~q\ : std_logic;
SIGNAL \reg3|gen_register:6:vff|O~q\ : std_logic;
SIGNAL \reg1|gen_register:6:vff|O~q\ : std_logic;
SIGNAL \read_mux1|v6|v3|v6|Q~1_combout\ : std_logic;
SIGNAL \Write1[7]~input_o\ : std_logic;
SIGNAL \reg3|gen_register:7:vff|O~q\ : std_logic;
SIGNAL \reg2|gen_register:7:vff|O~feeder_combout\ : std_logic;
SIGNAL \reg2|gen_register:7:vff|O~q\ : std_logic;
SIGNAL \reg7|gen_register:7:vff|O~feeder_combout\ : std_logic;
SIGNAL \reg7|gen_register:7:vff|O~q\ : std_logic;
SIGNAL \reg5|gen_register:7:vff|O~q\ : std_logic;
SIGNAL \reg4|gen_register:7:vff|O~q\ : std_logic;
SIGNAL \reg6|gen_register:7:vff|O~feeder_combout\ : std_logic;
SIGNAL \reg6|gen_register:7:vff|O~q\ : std_logic;
SIGNAL \read_mux1|v6|v3|v7|Q~0_combout\ : std_logic;
SIGNAL \reg1|gen_register:7:vff|O~feeder_combout\ : std_logic;
SIGNAL \reg1|gen_register:7:vff|O~q\ : std_logic;
SIGNAL \read_mux1|v6|v3|v7|Q~1_combout\ : std_logic;
SIGNAL \Write1[8]~input_o\ : std_logic;
SIGNAL \reg2|gen_register:8:vff|O~q\ : std_logic;
SIGNAL \reg6|gen_register:8:vff|O~q\ : std_logic;
SIGNAL \reg5|gen_register:8:vff|O~feeder_combout\ : std_logic;
SIGNAL \reg5|gen_register:8:vff|O~q\ : std_logic;
SIGNAL \reg7|gen_register:8:vff|O~feeder_combout\ : std_logic;
SIGNAL \reg7|gen_register:8:vff|O~q\ : std_logic;
SIGNAL \reg4|gen_register:8:vff|O~feeder_combout\ : std_logic;
SIGNAL \reg4|gen_register:8:vff|O~q\ : std_logic;
SIGNAL \read_mux1|v6|v3|v8|Q~0_combout\ : std_logic;
SIGNAL \reg3|gen_register:8:vff|O~q\ : std_logic;
SIGNAL \reg1|gen_register:8:vff|O~q\ : std_logic;
SIGNAL \read_mux1|v6|v3|v8|Q~1_combout\ : std_logic;
SIGNAL \Write1[9]~input_o\ : std_logic;
SIGNAL \reg3|gen_register:9:vff|O~q\ : std_logic;
SIGNAL \reg6|gen_register:9:vff|O~feeder_combout\ : std_logic;
SIGNAL \reg6|gen_register:9:vff|O~q\ : std_logic;
SIGNAL \reg5|gen_register:9:vff|O~feeder_combout\ : std_logic;
SIGNAL \reg5|gen_register:9:vff|O~q\ : std_logic;
SIGNAL \reg7|gen_register:9:vff|O~feeder_combout\ : std_logic;
SIGNAL \reg7|gen_register:9:vff|O~q\ : std_logic;
SIGNAL \reg4|gen_register:9:vff|O~feeder_combout\ : std_logic;
SIGNAL \reg4|gen_register:9:vff|O~q\ : std_logic;
SIGNAL \read_mux1|v6|v3|v9|Q~0_combout\ : std_logic;
SIGNAL \reg2|gen_register:9:vff|O~q\ : std_logic;
SIGNAL \reg1|gen_register:9:vff|O~feeder_combout\ : std_logic;
SIGNAL \reg1|gen_register:9:vff|O~q\ : std_logic;
SIGNAL \read_mux1|v6|v3|v9|Q~1_combout\ : std_logic;
SIGNAL \Write1[10]~input_o\ : std_logic;
SIGNAL \reg3|gen_register:10:vff|O~q\ : std_logic;
SIGNAL \reg2|gen_register:10:vff|O~q\ : std_logic;
SIGNAL \reg6|gen_register:10:vff|O~feeder_combout\ : std_logic;
SIGNAL \reg6|gen_register:10:vff|O~q\ : std_logic;
SIGNAL \reg7|gen_register:10:vff|O~q\ : std_logic;
SIGNAL \reg5|gen_register:10:vff|O~q\ : std_logic;
SIGNAL \reg4|gen_register:10:vff|O~q\ : std_logic;
SIGNAL \read_mux1|v6|v3|v10|Q~0_combout\ : std_logic;
SIGNAL \reg1|gen_register:10:vff|O~feeder_combout\ : std_logic;
SIGNAL \reg1|gen_register:10:vff|O~q\ : std_logic;
SIGNAL \read_mux1|v6|v3|v10|Q~1_combout\ : std_logic;
SIGNAL \Write1[11]~input_o\ : std_logic;
SIGNAL \reg2|gen_register:11:vff|O~q\ : std_logic;
SIGNAL \reg4|gen_register:11:vff|O~q\ : std_logic;
SIGNAL \reg6|gen_register:11:vff|O~q\ : std_logic;
SIGNAL \reg5|gen_register:11:vff|O~q\ : std_logic;
SIGNAL \reg7|gen_register:11:vff|O~feeder_combout\ : std_logic;
SIGNAL \reg7|gen_register:11:vff|O~q\ : std_logic;
SIGNAL \read_mux1|v6|v3|v11|Q~0_combout\ : std_logic;
SIGNAL \reg3|gen_register:11:vff|O~feeder_combout\ : std_logic;
SIGNAL \reg3|gen_register:11:vff|O~q\ : std_logic;
SIGNAL \reg1|gen_register:11:vff|O~q\ : std_logic;
SIGNAL \read_mux1|v6|v3|v11|Q~1_combout\ : std_logic;
SIGNAL \Write1[12]~input_o\ : std_logic;
SIGNAL \reg2|gen_register:12:vff|O~q\ : std_logic;
SIGNAL \reg5|gen_register:12:vff|O~feeder_combout\ : std_logic;
SIGNAL \reg5|gen_register:12:vff|O~q\ : std_logic;
SIGNAL \reg6|gen_register:12:vff|O~feeder_combout\ : std_logic;
SIGNAL \reg6|gen_register:12:vff|O~q\ : std_logic;
SIGNAL \reg7|gen_register:12:vff|O~feeder_combout\ : std_logic;
SIGNAL \reg7|gen_register:12:vff|O~q\ : std_logic;
SIGNAL \reg4|gen_register:12:vff|O~feeder_combout\ : std_logic;
SIGNAL \reg4|gen_register:12:vff|O~q\ : std_logic;
SIGNAL \read_mux1|v6|v3|v12|Q~0_combout\ : std_logic;
SIGNAL \reg3|gen_register:12:vff|O~q\ : std_logic;
SIGNAL \reg1|gen_register:12:vff|O~feeder_combout\ : std_logic;
SIGNAL \reg1|gen_register:12:vff|O~q\ : std_logic;
SIGNAL \read_mux1|v6|v3|v12|Q~1_combout\ : std_logic;
SIGNAL \Write1[13]~input_o\ : std_logic;
SIGNAL \reg7|gen_register:13:vff|O~q\ : std_logic;
SIGNAL \reg6|gen_register:13:vff|O~q\ : std_logic;
SIGNAL \reg5|gen_register:13:vff|O~q\ : std_logic;
SIGNAL \reg4|gen_register:13:vff|O~q\ : std_logic;
SIGNAL \read_mux1|v6|v3|v13|Q~0_combout\ : std_logic;
SIGNAL \reg2|gen_register:13:vff|O~q\ : std_logic;
SIGNAL \reg3|gen_register:13:vff|O~q\ : std_logic;
SIGNAL \reg1|gen_register:13:vff|O~q\ : std_logic;
SIGNAL \read_mux1|v6|v3|v13|Q~1_combout\ : std_logic;
SIGNAL \Write1[14]~input_o\ : std_logic;
SIGNAL \reg6|gen_register:14:vff|O~feeder_combout\ : std_logic;
SIGNAL \reg6|gen_register:14:vff|O~q\ : std_logic;
SIGNAL \reg4|gen_register:14:vff|O~q\ : std_logic;
SIGNAL \reg5|gen_register:14:vff|O~q\ : std_logic;
SIGNAL \reg7|gen_register:14:vff|O~q\ : std_logic;
SIGNAL \read_mux1|v6|v3|v14|Q~0_combout\ : std_logic;
SIGNAL \reg2|gen_register:14:vff|O~q\ : std_logic;
SIGNAL \reg3|gen_register:14:vff|O~q\ : std_logic;
SIGNAL \reg1|gen_register:14:vff|O~feeder_combout\ : std_logic;
SIGNAL \reg1|gen_register:14:vff|O~q\ : std_logic;
SIGNAL \read_mux1|v6|v3|v14|Q~1_combout\ : std_logic;
SIGNAL \Write1[15]~input_o\ : std_logic;
SIGNAL \reg3|gen_register:15:vff|O~feeder_combout\ : std_logic;
SIGNAL \reg3|gen_register:15:vff|O~q\ : std_logic;
SIGNAL \reg4|gen_register:15:vff|O~feeder_combout\ : std_logic;
SIGNAL \reg4|gen_register:15:vff|O~q\ : std_logic;
SIGNAL \reg7|gen_register:15:vff|O~feeder_combout\ : std_logic;
SIGNAL \reg7|gen_register:15:vff|O~q\ : std_logic;
SIGNAL \reg5|gen_register:15:vff|O~feeder_combout\ : std_logic;
SIGNAL \reg5|gen_register:15:vff|O~q\ : std_logic;
SIGNAL \reg6|gen_register:15:vff|O~feeder_combout\ : std_logic;
SIGNAL \reg6|gen_register:15:vff|O~q\ : std_logic;
SIGNAL \read_mux1|v6|v3|v15|Q~0_combout\ : std_logic;
SIGNAL \reg2|gen_register:15:vff|O~q\ : std_logic;
SIGNAL \reg1|gen_register:15:vff|O~feeder_combout\ : std_logic;
SIGNAL \reg1|gen_register:15:vff|O~q\ : std_logic;
SIGNAL \read_mux1|v6|v3|v15|Q~1_combout\ : std_logic;
SIGNAL \Read2AD[1]~input_o\ : std_logic;
SIGNAL \Read2AD[0]~input_o\ : std_logic;
SIGNAL \read_mux2|v6|v3|v0|Q~0_combout\ : std_logic;
SIGNAL \Read2AD[2]~input_o\ : std_logic;
SIGNAL \read_mux2|v6|v3|v0|Q~1_combout\ : std_logic;
SIGNAL \read_mux2|v6|v3|v1|Q~0_combout\ : std_logic;
SIGNAL \read_mux2|v6|v3|v1|Q~1_combout\ : std_logic;
SIGNAL \read_mux2|v6|v3|v2|Q~0_combout\ : std_logic;
SIGNAL \read_mux2|v6|v3|v2|Q~1_combout\ : std_logic;
SIGNAL \read_mux2|v6|v3|v3|Q~0_combout\ : std_logic;
SIGNAL \read_mux2|v6|v3|v3|Q~1_combout\ : std_logic;
SIGNAL \read_mux2|v6|v3|v4|Q~0_combout\ : std_logic;
SIGNAL \read_mux2|v6|v3|v4|Q~1_combout\ : std_logic;
SIGNAL \read_mux2|v6|v3|v5|Q~0_combout\ : std_logic;
SIGNAL \read_mux2|v6|v3|v5|Q~1_combout\ : std_logic;
SIGNAL \read_mux2|v6|v3|v6|Q~0_combout\ : std_logic;
SIGNAL \read_mux2|v6|v3|v6|Q~1_combout\ : std_logic;
SIGNAL \read_mux2|v6|v3|v7|Q~0_combout\ : std_logic;
SIGNAL \read_mux2|v6|v3|v7|Q~1_combout\ : std_logic;
SIGNAL \read_mux2|v6|v3|v8|Q~0_combout\ : std_logic;
SIGNAL \read_mux2|v6|v3|v8|Q~1_combout\ : std_logic;
SIGNAL \read_mux2|v6|v3|v9|Q~0_combout\ : std_logic;
SIGNAL \read_mux2|v6|v3|v9|Q~1_combout\ : std_logic;
SIGNAL \read_mux2|v6|v3|v10|Q~0_combout\ : std_logic;
SIGNAL \read_mux2|v6|v3|v10|Q~1_combout\ : std_logic;
SIGNAL \read_mux2|v6|v3|v11|Q~0_combout\ : std_logic;
SIGNAL \read_mux2|v6|v3|v11|Q~1_combout\ : std_logic;
SIGNAL \read_mux2|v6|v3|v12|Q~0_combout\ : std_logic;
SIGNAL \read_mux2|v6|v3|v12|Q~1_combout\ : std_logic;
SIGNAL \read_mux2|v6|v3|v13|Q~0_combout\ : std_logic;
SIGNAL \read_mux2|v6|v3|v13|Q~1_combout\ : std_logic;
SIGNAL \read_mux2|v6|v3|v14|Q~0_combout\ : std_logic;
SIGNAL \read_mux2|v6|v3|v14|Q~1_combout\ : std_logic;
SIGNAL \read_mux2|v6|v3|v15|Q~0_combout\ : std_logic;
SIGNAL \read_mux2|v6|v3|v15|Q~1_combout\ : std_logic;
SIGNAL \reg3|gen_register:1:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \reg2|gen_register:1:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \reg1|gen_register:1:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \read_mux1|v6|v3|v1|ALT_INV_Q~0_combout\ : std_logic;
SIGNAL \reg7|gen_register:1:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \reg6|gen_register:1:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \reg5|gen_register:1:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \reg4|gen_register:1:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \reg3|gen_register:0:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \reg2|gen_register:0:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \reg1|gen_register:0:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \read_mux1|v6|v3|v0|ALT_INV_Q~0_combout\ : std_logic;
SIGNAL \reg7|gen_register:0:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \reg6|gen_register:0:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \reg5|gen_register:0:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \reg4|gen_register:0:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \read_mux2|v6|v3|v14|ALT_INV_Q~0_combout\ : std_logic;
SIGNAL \read_mux2|v6|v3|v13|ALT_INV_Q~0_combout\ : std_logic;
SIGNAL \read_mux2|v6|v3|v12|ALT_INV_Q~0_combout\ : std_logic;
SIGNAL \read_mux2|v6|v3|v11|ALT_INV_Q~0_combout\ : std_logic;
SIGNAL \read_mux2|v6|v3|v10|ALT_INV_Q~0_combout\ : std_logic;
SIGNAL \read_mux2|v6|v3|v9|ALT_INV_Q~0_combout\ : std_logic;
SIGNAL \read_mux2|v6|v3|v8|ALT_INV_Q~0_combout\ : std_logic;
SIGNAL \read_mux2|v6|v3|v7|ALT_INV_Q~0_combout\ : std_logic;
SIGNAL \read_mux2|v6|v3|v6|ALT_INV_Q~0_combout\ : std_logic;
SIGNAL \read_mux2|v6|v3|v5|ALT_INV_Q~0_combout\ : std_logic;
SIGNAL \read_mux2|v6|v3|v4|ALT_INV_Q~0_combout\ : std_logic;
SIGNAL \read_mux2|v6|v3|v3|ALT_INV_Q~0_combout\ : std_logic;
SIGNAL \read_mux2|v6|v3|v2|ALT_INV_Q~0_combout\ : std_logic;
SIGNAL \read_mux2|v6|v3|v1|ALT_INV_Q~0_combout\ : std_logic;
SIGNAL \read_mux2|v6|v3|v0|ALT_INV_Q~0_combout\ : std_logic;
SIGNAL \reg3|gen_register:15:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \reg2|gen_register:15:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \reg1|gen_register:15:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \read_mux1|v6|v3|v15|ALT_INV_Q~0_combout\ : std_logic;
SIGNAL \reg7|gen_register:15:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \reg6|gen_register:15:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \reg5|gen_register:15:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \reg4|gen_register:15:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \reg3|gen_register:14:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \reg2|gen_register:14:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \reg1|gen_register:14:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \read_mux1|v6|v3|v14|ALT_INV_Q~0_combout\ : std_logic;
SIGNAL \reg7|gen_register:14:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \reg6|gen_register:14:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \reg5|gen_register:14:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \reg4|gen_register:14:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \reg3|gen_register:13:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \reg2|gen_register:13:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \reg1|gen_register:13:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \read_mux1|v6|v3|v13|ALT_INV_Q~0_combout\ : std_logic;
SIGNAL \reg7|gen_register:13:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \reg6|gen_register:13:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \reg5|gen_register:13:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \reg4|gen_register:13:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \reg3|gen_register:12:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \reg2|gen_register:12:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \reg1|gen_register:12:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \read_mux1|v6|v3|v12|ALT_INV_Q~0_combout\ : std_logic;
SIGNAL \reg7|gen_register:12:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \reg6|gen_register:12:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \reg5|gen_register:12:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \reg4|gen_register:12:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \reg3|gen_register:11:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \reg2|gen_register:11:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \reg1|gen_register:11:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \read_mux1|v6|v3|v11|ALT_INV_Q~0_combout\ : std_logic;
SIGNAL \reg7|gen_register:11:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \reg6|gen_register:11:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \reg5|gen_register:11:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \reg4|gen_register:11:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \reg3|gen_register:10:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \reg2|gen_register:10:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \reg1|gen_register:10:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \read_mux1|v6|v3|v10|ALT_INV_Q~0_combout\ : std_logic;
SIGNAL \reg7|gen_register:10:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \reg6|gen_register:10:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \reg5|gen_register:10:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \reg4|gen_register:10:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \reg3|gen_register:9:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \reg2|gen_register:9:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \reg1|gen_register:9:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \read_mux1|v6|v3|v9|ALT_INV_Q~0_combout\ : std_logic;
SIGNAL \reg7|gen_register:9:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \reg6|gen_register:9:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \reg5|gen_register:9:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \reg4|gen_register:9:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \reg3|gen_register:8:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \reg2|gen_register:8:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \reg1|gen_register:8:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \read_mux1|v6|v3|v8|ALT_INV_Q~0_combout\ : std_logic;
SIGNAL \reg7|gen_register:8:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \reg6|gen_register:8:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \reg5|gen_register:8:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \reg4|gen_register:8:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \reg3|gen_register:7:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \reg2|gen_register:7:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \reg1|gen_register:7:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \read_mux1|v6|v3|v7|ALT_INV_Q~0_combout\ : std_logic;
SIGNAL \reg7|gen_register:7:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \reg6|gen_register:7:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \reg5|gen_register:7:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \reg4|gen_register:7:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \reg3|gen_register:6:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \reg2|gen_register:6:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \reg1|gen_register:6:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \read_mux1|v6|v3|v6|ALT_INV_Q~0_combout\ : std_logic;
SIGNAL \reg7|gen_register:6:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \reg6|gen_register:6:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \reg5|gen_register:6:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \reg4|gen_register:6:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \reg3|gen_register:5:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \reg2|gen_register:5:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \reg1|gen_register:5:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \read_mux1|v6|v3|v5|ALT_INV_Q~0_combout\ : std_logic;
SIGNAL \reg7|gen_register:5:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \reg6|gen_register:5:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \reg5|gen_register:5:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \reg4|gen_register:5:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \reg3|gen_register:4:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \reg2|gen_register:4:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \reg1|gen_register:4:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \read_mux1|v6|v3|v4|ALT_INV_Q~0_combout\ : std_logic;
SIGNAL \reg7|gen_register:4:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \reg6|gen_register:4:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \reg5|gen_register:4:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \reg4|gen_register:4:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \reg3|gen_register:3:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \reg2|gen_register:3:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \reg1|gen_register:3:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \read_mux1|v6|v3|v3|ALT_INV_Q~0_combout\ : std_logic;
SIGNAL \reg7|gen_register:3:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \reg6|gen_register:3:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \reg5|gen_register:3:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \reg4|gen_register:3:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \reg3|gen_register:2:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \reg2|gen_register:2:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \reg1|gen_register:2:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \read_mux1|v6|v3|v2|ALT_INV_Q~0_combout\ : std_logic;
SIGNAL \reg7|gen_register:2:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \reg6|gen_register:2:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \reg5|gen_register:2:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \reg4|gen_register:2:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \ALT_INV_Write1[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_Write1[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_Write1[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_Write1[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_Write1[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_Write1[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_Write1[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_Write1[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_Write1[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_Write1[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_Write1[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_Write1[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_Write1[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_Write1AD[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_Write1AD[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_Write1AD[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_Write1[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_Read2AD[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_Read2AD[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_Read2AD[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_Read1AD[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_Read1AD[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_Read1AD[0]~input_o\ : std_logic;
SIGNAL \read_mux2|v6|v3|v15|ALT_INV_Q~0_combout\ : std_logic;

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
\reg3|gen_register:1:vff|ALT_INV_O~q\ <= NOT \reg3|gen_register:1:vff|O~q\;
\reg2|gen_register:1:vff|ALT_INV_O~q\ <= NOT \reg2|gen_register:1:vff|O~q\;
\reg1|gen_register:1:vff|ALT_INV_O~q\ <= NOT \reg1|gen_register:1:vff|O~q\;
\read_mux1|v6|v3|v1|ALT_INV_Q~0_combout\ <= NOT \read_mux1|v6|v3|v1|Q~0_combout\;
\reg7|gen_register:1:vff|ALT_INV_O~q\ <= NOT \reg7|gen_register:1:vff|O~q\;
\reg6|gen_register:1:vff|ALT_INV_O~q\ <= NOT \reg6|gen_register:1:vff|O~q\;
\reg5|gen_register:1:vff|ALT_INV_O~q\ <= NOT \reg5|gen_register:1:vff|O~q\;
\reg4|gen_register:1:vff|ALT_INV_O~q\ <= NOT \reg4|gen_register:1:vff|O~q\;
\reg3|gen_register:0:vff|ALT_INV_O~q\ <= NOT \reg3|gen_register:0:vff|O~q\;
\reg2|gen_register:0:vff|ALT_INV_O~q\ <= NOT \reg2|gen_register:0:vff|O~q\;
\reg1|gen_register:0:vff|ALT_INV_O~q\ <= NOT \reg1|gen_register:0:vff|O~q\;
\read_mux1|v6|v3|v0|ALT_INV_Q~0_combout\ <= NOT \read_mux1|v6|v3|v0|Q~0_combout\;
\reg7|gen_register:0:vff|ALT_INV_O~q\ <= NOT \reg7|gen_register:0:vff|O~q\;
\reg6|gen_register:0:vff|ALT_INV_O~q\ <= NOT \reg6|gen_register:0:vff|O~q\;
\reg5|gen_register:0:vff|ALT_INV_O~q\ <= NOT \reg5|gen_register:0:vff|O~q\;
\reg4|gen_register:0:vff|ALT_INV_O~q\ <= NOT \reg4|gen_register:0:vff|O~q\;
\read_mux2|v6|v3|v14|ALT_INV_Q~0_combout\ <= NOT \read_mux2|v6|v3|v14|Q~0_combout\;
\read_mux2|v6|v3|v13|ALT_INV_Q~0_combout\ <= NOT \read_mux2|v6|v3|v13|Q~0_combout\;
\read_mux2|v6|v3|v12|ALT_INV_Q~0_combout\ <= NOT \read_mux2|v6|v3|v12|Q~0_combout\;
\read_mux2|v6|v3|v11|ALT_INV_Q~0_combout\ <= NOT \read_mux2|v6|v3|v11|Q~0_combout\;
\read_mux2|v6|v3|v10|ALT_INV_Q~0_combout\ <= NOT \read_mux2|v6|v3|v10|Q~0_combout\;
\read_mux2|v6|v3|v9|ALT_INV_Q~0_combout\ <= NOT \read_mux2|v6|v3|v9|Q~0_combout\;
\read_mux2|v6|v3|v8|ALT_INV_Q~0_combout\ <= NOT \read_mux2|v6|v3|v8|Q~0_combout\;
\read_mux2|v6|v3|v7|ALT_INV_Q~0_combout\ <= NOT \read_mux2|v6|v3|v7|Q~0_combout\;
\read_mux2|v6|v3|v6|ALT_INV_Q~0_combout\ <= NOT \read_mux2|v6|v3|v6|Q~0_combout\;
\read_mux2|v6|v3|v5|ALT_INV_Q~0_combout\ <= NOT \read_mux2|v6|v3|v5|Q~0_combout\;
\read_mux2|v6|v3|v4|ALT_INV_Q~0_combout\ <= NOT \read_mux2|v6|v3|v4|Q~0_combout\;
\read_mux2|v6|v3|v3|ALT_INV_Q~0_combout\ <= NOT \read_mux2|v6|v3|v3|Q~0_combout\;
\read_mux2|v6|v3|v2|ALT_INV_Q~0_combout\ <= NOT \read_mux2|v6|v3|v2|Q~0_combout\;
\read_mux2|v6|v3|v1|ALT_INV_Q~0_combout\ <= NOT \read_mux2|v6|v3|v1|Q~0_combout\;
\read_mux2|v6|v3|v0|ALT_INV_Q~0_combout\ <= NOT \read_mux2|v6|v3|v0|Q~0_combout\;
\reg3|gen_register:15:vff|ALT_INV_O~q\ <= NOT \reg3|gen_register:15:vff|O~q\;
\reg2|gen_register:15:vff|ALT_INV_O~q\ <= NOT \reg2|gen_register:15:vff|O~q\;
\reg1|gen_register:15:vff|ALT_INV_O~q\ <= NOT \reg1|gen_register:15:vff|O~q\;
\read_mux1|v6|v3|v15|ALT_INV_Q~0_combout\ <= NOT \read_mux1|v6|v3|v15|Q~0_combout\;
\reg7|gen_register:15:vff|ALT_INV_O~q\ <= NOT \reg7|gen_register:15:vff|O~q\;
\reg6|gen_register:15:vff|ALT_INV_O~q\ <= NOT \reg6|gen_register:15:vff|O~q\;
\reg5|gen_register:15:vff|ALT_INV_O~q\ <= NOT \reg5|gen_register:15:vff|O~q\;
\reg4|gen_register:15:vff|ALT_INV_O~q\ <= NOT \reg4|gen_register:15:vff|O~q\;
\reg3|gen_register:14:vff|ALT_INV_O~q\ <= NOT \reg3|gen_register:14:vff|O~q\;
\reg2|gen_register:14:vff|ALT_INV_O~q\ <= NOT \reg2|gen_register:14:vff|O~q\;
\reg1|gen_register:14:vff|ALT_INV_O~q\ <= NOT \reg1|gen_register:14:vff|O~q\;
\read_mux1|v6|v3|v14|ALT_INV_Q~0_combout\ <= NOT \read_mux1|v6|v3|v14|Q~0_combout\;
\reg7|gen_register:14:vff|ALT_INV_O~q\ <= NOT \reg7|gen_register:14:vff|O~q\;
\reg6|gen_register:14:vff|ALT_INV_O~q\ <= NOT \reg6|gen_register:14:vff|O~q\;
\reg5|gen_register:14:vff|ALT_INV_O~q\ <= NOT \reg5|gen_register:14:vff|O~q\;
\reg4|gen_register:14:vff|ALT_INV_O~q\ <= NOT \reg4|gen_register:14:vff|O~q\;
\reg3|gen_register:13:vff|ALT_INV_O~q\ <= NOT \reg3|gen_register:13:vff|O~q\;
\reg2|gen_register:13:vff|ALT_INV_O~q\ <= NOT \reg2|gen_register:13:vff|O~q\;
\reg1|gen_register:13:vff|ALT_INV_O~q\ <= NOT \reg1|gen_register:13:vff|O~q\;
\read_mux1|v6|v3|v13|ALT_INV_Q~0_combout\ <= NOT \read_mux1|v6|v3|v13|Q~0_combout\;
\reg7|gen_register:13:vff|ALT_INV_O~q\ <= NOT \reg7|gen_register:13:vff|O~q\;
\reg6|gen_register:13:vff|ALT_INV_O~q\ <= NOT \reg6|gen_register:13:vff|O~q\;
\reg5|gen_register:13:vff|ALT_INV_O~q\ <= NOT \reg5|gen_register:13:vff|O~q\;
\reg4|gen_register:13:vff|ALT_INV_O~q\ <= NOT \reg4|gen_register:13:vff|O~q\;
\reg3|gen_register:12:vff|ALT_INV_O~q\ <= NOT \reg3|gen_register:12:vff|O~q\;
\reg2|gen_register:12:vff|ALT_INV_O~q\ <= NOT \reg2|gen_register:12:vff|O~q\;
\reg1|gen_register:12:vff|ALT_INV_O~q\ <= NOT \reg1|gen_register:12:vff|O~q\;
\read_mux1|v6|v3|v12|ALT_INV_Q~0_combout\ <= NOT \read_mux1|v6|v3|v12|Q~0_combout\;
\reg7|gen_register:12:vff|ALT_INV_O~q\ <= NOT \reg7|gen_register:12:vff|O~q\;
\reg6|gen_register:12:vff|ALT_INV_O~q\ <= NOT \reg6|gen_register:12:vff|O~q\;
\reg5|gen_register:12:vff|ALT_INV_O~q\ <= NOT \reg5|gen_register:12:vff|O~q\;
\reg4|gen_register:12:vff|ALT_INV_O~q\ <= NOT \reg4|gen_register:12:vff|O~q\;
\reg3|gen_register:11:vff|ALT_INV_O~q\ <= NOT \reg3|gen_register:11:vff|O~q\;
\reg2|gen_register:11:vff|ALT_INV_O~q\ <= NOT \reg2|gen_register:11:vff|O~q\;
\reg1|gen_register:11:vff|ALT_INV_O~q\ <= NOT \reg1|gen_register:11:vff|O~q\;
\read_mux1|v6|v3|v11|ALT_INV_Q~0_combout\ <= NOT \read_mux1|v6|v3|v11|Q~0_combout\;
\reg7|gen_register:11:vff|ALT_INV_O~q\ <= NOT \reg7|gen_register:11:vff|O~q\;
\reg6|gen_register:11:vff|ALT_INV_O~q\ <= NOT \reg6|gen_register:11:vff|O~q\;
\reg5|gen_register:11:vff|ALT_INV_O~q\ <= NOT \reg5|gen_register:11:vff|O~q\;
\reg4|gen_register:11:vff|ALT_INV_O~q\ <= NOT \reg4|gen_register:11:vff|O~q\;
\reg3|gen_register:10:vff|ALT_INV_O~q\ <= NOT \reg3|gen_register:10:vff|O~q\;
\reg2|gen_register:10:vff|ALT_INV_O~q\ <= NOT \reg2|gen_register:10:vff|O~q\;
\reg1|gen_register:10:vff|ALT_INV_O~q\ <= NOT \reg1|gen_register:10:vff|O~q\;
\read_mux1|v6|v3|v10|ALT_INV_Q~0_combout\ <= NOT \read_mux1|v6|v3|v10|Q~0_combout\;
\reg7|gen_register:10:vff|ALT_INV_O~q\ <= NOT \reg7|gen_register:10:vff|O~q\;
\reg6|gen_register:10:vff|ALT_INV_O~q\ <= NOT \reg6|gen_register:10:vff|O~q\;
\reg5|gen_register:10:vff|ALT_INV_O~q\ <= NOT \reg5|gen_register:10:vff|O~q\;
\reg4|gen_register:10:vff|ALT_INV_O~q\ <= NOT \reg4|gen_register:10:vff|O~q\;
\reg3|gen_register:9:vff|ALT_INV_O~q\ <= NOT \reg3|gen_register:9:vff|O~q\;
\reg2|gen_register:9:vff|ALT_INV_O~q\ <= NOT \reg2|gen_register:9:vff|O~q\;
\reg1|gen_register:9:vff|ALT_INV_O~q\ <= NOT \reg1|gen_register:9:vff|O~q\;
\read_mux1|v6|v3|v9|ALT_INV_Q~0_combout\ <= NOT \read_mux1|v6|v3|v9|Q~0_combout\;
\reg7|gen_register:9:vff|ALT_INV_O~q\ <= NOT \reg7|gen_register:9:vff|O~q\;
\reg6|gen_register:9:vff|ALT_INV_O~q\ <= NOT \reg6|gen_register:9:vff|O~q\;
\reg5|gen_register:9:vff|ALT_INV_O~q\ <= NOT \reg5|gen_register:9:vff|O~q\;
\reg4|gen_register:9:vff|ALT_INV_O~q\ <= NOT \reg4|gen_register:9:vff|O~q\;
\reg3|gen_register:8:vff|ALT_INV_O~q\ <= NOT \reg3|gen_register:8:vff|O~q\;
\reg2|gen_register:8:vff|ALT_INV_O~q\ <= NOT \reg2|gen_register:8:vff|O~q\;
\reg1|gen_register:8:vff|ALT_INV_O~q\ <= NOT \reg1|gen_register:8:vff|O~q\;
\read_mux1|v6|v3|v8|ALT_INV_Q~0_combout\ <= NOT \read_mux1|v6|v3|v8|Q~0_combout\;
\reg7|gen_register:8:vff|ALT_INV_O~q\ <= NOT \reg7|gen_register:8:vff|O~q\;
\reg6|gen_register:8:vff|ALT_INV_O~q\ <= NOT \reg6|gen_register:8:vff|O~q\;
\reg5|gen_register:8:vff|ALT_INV_O~q\ <= NOT \reg5|gen_register:8:vff|O~q\;
\reg4|gen_register:8:vff|ALT_INV_O~q\ <= NOT \reg4|gen_register:8:vff|O~q\;
\reg3|gen_register:7:vff|ALT_INV_O~q\ <= NOT \reg3|gen_register:7:vff|O~q\;
\reg2|gen_register:7:vff|ALT_INV_O~q\ <= NOT \reg2|gen_register:7:vff|O~q\;
\reg1|gen_register:7:vff|ALT_INV_O~q\ <= NOT \reg1|gen_register:7:vff|O~q\;
\read_mux1|v6|v3|v7|ALT_INV_Q~0_combout\ <= NOT \read_mux1|v6|v3|v7|Q~0_combout\;
\reg7|gen_register:7:vff|ALT_INV_O~q\ <= NOT \reg7|gen_register:7:vff|O~q\;
\reg6|gen_register:7:vff|ALT_INV_O~q\ <= NOT \reg6|gen_register:7:vff|O~q\;
\reg5|gen_register:7:vff|ALT_INV_O~q\ <= NOT \reg5|gen_register:7:vff|O~q\;
\reg4|gen_register:7:vff|ALT_INV_O~q\ <= NOT \reg4|gen_register:7:vff|O~q\;
\reg3|gen_register:6:vff|ALT_INV_O~q\ <= NOT \reg3|gen_register:6:vff|O~q\;
\reg2|gen_register:6:vff|ALT_INV_O~q\ <= NOT \reg2|gen_register:6:vff|O~q\;
\reg1|gen_register:6:vff|ALT_INV_O~q\ <= NOT \reg1|gen_register:6:vff|O~q\;
\read_mux1|v6|v3|v6|ALT_INV_Q~0_combout\ <= NOT \read_mux1|v6|v3|v6|Q~0_combout\;
\reg7|gen_register:6:vff|ALT_INV_O~q\ <= NOT \reg7|gen_register:6:vff|O~q\;
\reg6|gen_register:6:vff|ALT_INV_O~q\ <= NOT \reg6|gen_register:6:vff|O~q\;
\reg5|gen_register:6:vff|ALT_INV_O~q\ <= NOT \reg5|gen_register:6:vff|O~q\;
\reg4|gen_register:6:vff|ALT_INV_O~q\ <= NOT \reg4|gen_register:6:vff|O~q\;
\reg3|gen_register:5:vff|ALT_INV_O~q\ <= NOT \reg3|gen_register:5:vff|O~q\;
\reg2|gen_register:5:vff|ALT_INV_O~q\ <= NOT \reg2|gen_register:5:vff|O~q\;
\reg1|gen_register:5:vff|ALT_INV_O~q\ <= NOT \reg1|gen_register:5:vff|O~q\;
\read_mux1|v6|v3|v5|ALT_INV_Q~0_combout\ <= NOT \read_mux1|v6|v3|v5|Q~0_combout\;
\reg7|gen_register:5:vff|ALT_INV_O~q\ <= NOT \reg7|gen_register:5:vff|O~q\;
\reg6|gen_register:5:vff|ALT_INV_O~q\ <= NOT \reg6|gen_register:5:vff|O~q\;
\reg5|gen_register:5:vff|ALT_INV_O~q\ <= NOT \reg5|gen_register:5:vff|O~q\;
\reg4|gen_register:5:vff|ALT_INV_O~q\ <= NOT \reg4|gen_register:5:vff|O~q\;
\reg3|gen_register:4:vff|ALT_INV_O~q\ <= NOT \reg3|gen_register:4:vff|O~q\;
\reg2|gen_register:4:vff|ALT_INV_O~q\ <= NOT \reg2|gen_register:4:vff|O~q\;
\reg1|gen_register:4:vff|ALT_INV_O~q\ <= NOT \reg1|gen_register:4:vff|O~q\;
\read_mux1|v6|v3|v4|ALT_INV_Q~0_combout\ <= NOT \read_mux1|v6|v3|v4|Q~0_combout\;
\reg7|gen_register:4:vff|ALT_INV_O~q\ <= NOT \reg7|gen_register:4:vff|O~q\;
\reg6|gen_register:4:vff|ALT_INV_O~q\ <= NOT \reg6|gen_register:4:vff|O~q\;
\reg5|gen_register:4:vff|ALT_INV_O~q\ <= NOT \reg5|gen_register:4:vff|O~q\;
\reg4|gen_register:4:vff|ALT_INV_O~q\ <= NOT \reg4|gen_register:4:vff|O~q\;
\reg3|gen_register:3:vff|ALT_INV_O~q\ <= NOT \reg3|gen_register:3:vff|O~q\;
\reg2|gen_register:3:vff|ALT_INV_O~q\ <= NOT \reg2|gen_register:3:vff|O~q\;
\reg1|gen_register:3:vff|ALT_INV_O~q\ <= NOT \reg1|gen_register:3:vff|O~q\;
\read_mux1|v6|v3|v3|ALT_INV_Q~0_combout\ <= NOT \read_mux1|v6|v3|v3|Q~0_combout\;
\reg7|gen_register:3:vff|ALT_INV_O~q\ <= NOT \reg7|gen_register:3:vff|O~q\;
\reg6|gen_register:3:vff|ALT_INV_O~q\ <= NOT \reg6|gen_register:3:vff|O~q\;
\reg5|gen_register:3:vff|ALT_INV_O~q\ <= NOT \reg5|gen_register:3:vff|O~q\;
\reg4|gen_register:3:vff|ALT_INV_O~q\ <= NOT \reg4|gen_register:3:vff|O~q\;
\reg3|gen_register:2:vff|ALT_INV_O~q\ <= NOT \reg3|gen_register:2:vff|O~q\;
\reg2|gen_register:2:vff|ALT_INV_O~q\ <= NOT \reg2|gen_register:2:vff|O~q\;
\reg1|gen_register:2:vff|ALT_INV_O~q\ <= NOT \reg1|gen_register:2:vff|O~q\;
\read_mux1|v6|v3|v2|ALT_INV_Q~0_combout\ <= NOT \read_mux1|v6|v3|v2|Q~0_combout\;
\reg7|gen_register:2:vff|ALT_INV_O~q\ <= NOT \reg7|gen_register:2:vff|O~q\;
\reg6|gen_register:2:vff|ALT_INV_O~q\ <= NOT \reg6|gen_register:2:vff|O~q\;
\reg5|gen_register:2:vff|ALT_INV_O~q\ <= NOT \reg5|gen_register:2:vff|O~q\;
\reg4|gen_register:2:vff|ALT_INV_O~q\ <= NOT \reg4|gen_register:2:vff|O~q\;
\ALT_INV_Write1[15]~input_o\ <= NOT \Write1[15]~input_o\;
\ALT_INV_Write1[14]~input_o\ <= NOT \Write1[14]~input_o\;
\ALT_INV_Write1[12]~input_o\ <= NOT \Write1[12]~input_o\;
\ALT_INV_Write1[11]~input_o\ <= NOT \Write1[11]~input_o\;
\ALT_INV_Write1[10]~input_o\ <= NOT \Write1[10]~input_o\;
\ALT_INV_Write1[9]~input_o\ <= NOT \Write1[9]~input_o\;
\ALT_INV_Write1[8]~input_o\ <= NOT \Write1[8]~input_o\;
\ALT_INV_Write1[7]~input_o\ <= NOT \Write1[7]~input_o\;
\ALT_INV_Write1[6]~input_o\ <= NOT \Write1[6]~input_o\;
\ALT_INV_Write1[4]~input_o\ <= NOT \Write1[4]~input_o\;
\ALT_INV_Write1[3]~input_o\ <= NOT \Write1[3]~input_o\;
\ALT_INV_Write1[2]~input_o\ <= NOT \Write1[2]~input_o\;
\ALT_INV_Write1[1]~input_o\ <= NOT \Write1[1]~input_o\;
\ALT_INV_Write1AD[2]~input_o\ <= NOT \Write1AD[2]~input_o\;
\ALT_INV_Write1AD[0]~input_o\ <= NOT \Write1AD[0]~input_o\;
\ALT_INV_Write1AD[1]~input_o\ <= NOT \Write1AD[1]~input_o\;
\ALT_INV_Write1[0]~input_o\ <= NOT \Write1[0]~input_o\;
\ALT_INV_Read2AD[2]~input_o\ <= NOT \Read2AD[2]~input_o\;
\ALT_INV_Read2AD[1]~input_o\ <= NOT \Read2AD[1]~input_o\;
\ALT_INV_Read2AD[0]~input_o\ <= NOT \Read2AD[0]~input_o\;
\ALT_INV_Read1AD[2]~input_o\ <= NOT \Read1AD[2]~input_o\;
\ALT_INV_Read1AD[1]~input_o\ <= NOT \Read1AD[1]~input_o\;
\ALT_INV_Read1AD[0]~input_o\ <= NOT \Read1AD[0]~input_o\;
\read_mux2|v6|v3|v15|ALT_INV_Q~0_combout\ <= NOT \read_mux2|v6|v3|v15|Q~0_combout\;

-- Location: IOOBUF_X28_Y0_N53
\Read1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \read_mux1|v6|v3|v0|Q~1_combout\,
	devoe => ww_devoe,
	o => ww_Read1(0));

-- Location: IOOBUF_X26_Y0_N76
\Read1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \read_mux1|v6|v3|v1|Q~1_combout\,
	devoe => ww_devoe,
	o => ww_Read1(1));

-- Location: IOOBUF_X72_Y81_N19
\Read1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \read_mux1|v6|v3|v2|Q~1_combout\,
	devoe => ww_devoe,
	o => ww_Read1(2));

-- Location: IOOBUF_X54_Y81_N19
\Read1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \read_mux1|v6|v3|v3|Q~1_combout\,
	devoe => ww_devoe,
	o => ww_Read1(3));

-- Location: IOOBUF_X89_Y8_N56
\Read1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \read_mux1|v6|v3|v4|Q~1_combout\,
	devoe => ww_devoe,
	o => ww_Read1(4));

-- Location: IOOBUF_X34_Y81_N42
\Read1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \read_mux1|v6|v3|v5|Q~1_combout\,
	devoe => ww_devoe,
	o => ww_Read1(5));

-- Location: IOOBUF_X60_Y81_N53
\Read1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \read_mux1|v6|v3|v6|Q~1_combout\,
	devoe => ww_devoe,
	o => ww_Read1(6));

-- Location: IOOBUF_X38_Y81_N19
\Read1[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \read_mux1|v6|v3|v7|Q~1_combout\,
	devoe => ww_devoe,
	o => ww_Read1(7));

-- Location: IOOBUF_X32_Y0_N19
\Read1[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \read_mux1|v6|v3|v8|Q~1_combout\,
	devoe => ww_devoe,
	o => ww_Read1(8));

-- Location: IOOBUF_X50_Y81_N93
\Read1[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \read_mux1|v6|v3|v9|Q~1_combout\,
	devoe => ww_devoe,
	o => ww_Read1(9));

-- Location: IOOBUF_X40_Y81_N19
\Read1[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \read_mux1|v6|v3|v10|Q~1_combout\,
	devoe => ww_devoe,
	o => ww_Read1(10));

-- Location: IOOBUF_X70_Y81_N19
\Read1[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \read_mux1|v6|v3|v11|Q~1_combout\,
	devoe => ww_devoe,
	o => ww_Read1(11));

-- Location: IOOBUF_X64_Y0_N36
\Read1[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \read_mux1|v6|v3|v12|Q~1_combout\,
	devoe => ww_devoe,
	o => ww_Read1(12));

-- Location: IOOBUF_X89_Y37_N5
\Read1[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \read_mux1|v6|v3|v13|Q~1_combout\,
	devoe => ww_devoe,
	o => ww_Read1(13));

-- Location: IOOBUF_X72_Y81_N36
\Read1[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \read_mux1|v6|v3|v14|Q~1_combout\,
	devoe => ww_devoe,
	o => ww_Read1(14));

-- Location: IOOBUF_X72_Y81_N53
\Read1[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \read_mux1|v6|v3|v15|Q~1_combout\,
	devoe => ww_devoe,
	o => ww_Read1(15));

-- Location: IOOBUF_X26_Y0_N42
\Read2[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \read_mux2|v6|v3|v0|Q~1_combout\,
	devoe => ww_devoe,
	o => ww_Read2(0));

-- Location: IOOBUF_X32_Y0_N2
\Read2[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \read_mux2|v6|v3|v1|Q~1_combout\,
	devoe => ww_devoe,
	o => ww_Read2(1));

-- Location: IOOBUF_X78_Y81_N53
\Read2[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \read_mux2|v6|v3|v2|Q~1_combout\,
	devoe => ww_devoe,
	o => ww_Read2(2));

-- Location: IOOBUF_X52_Y81_N53
\Read2[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \read_mux2|v6|v3|v3|Q~1_combout\,
	devoe => ww_devoe,
	o => ww_Read2(3));

-- Location: IOOBUF_X76_Y81_N53
\Read2[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \read_mux2|v6|v3|v4|Q~1_combout\,
	devoe => ww_devoe,
	o => ww_Read2(4));

-- Location: IOOBUF_X4_Y0_N19
\Read2[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \read_mux2|v6|v3|v5|Q~1_combout\,
	devoe => ww_devoe,
	o => ww_Read2(5));

-- Location: IOOBUF_X64_Y81_N53
\Read2[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \read_mux2|v6|v3|v6|Q~1_combout\,
	devoe => ww_devoe,
	o => ww_Read2(6));

-- Location: IOOBUF_X40_Y81_N53
\Read2[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \read_mux2|v6|v3|v7|Q~1_combout\,
	devoe => ww_devoe,
	o => ww_Read2(7));

-- Location: IOOBUF_X26_Y0_N59
\Read2[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \read_mux2|v6|v3|v8|Q~1_combout\,
	devoe => ww_devoe,
	o => ww_Read2(8));

-- Location: IOOBUF_X52_Y81_N19
\Read2[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \read_mux2|v6|v3|v9|Q~1_combout\,
	devoe => ww_devoe,
	o => ww_Read2(9));

-- Location: IOOBUF_X8_Y0_N2
\Read2[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \read_mux2|v6|v3|v10|Q~1_combout\,
	devoe => ww_devoe,
	o => ww_Read2(10));

-- Location: IOOBUF_X74_Y81_N42
\Read2[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \read_mux2|v6|v3|v11|Q~1_combout\,
	devoe => ww_devoe,
	o => ww_Read2(11));

-- Location: IOOBUF_X64_Y81_N19
\Read2[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \read_mux2|v6|v3|v12|Q~1_combout\,
	devoe => ww_devoe,
	o => ww_Read2(12));

-- Location: IOOBUF_X89_Y36_N22
\Read2[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \read_mux2|v6|v3|v13|Q~1_combout\,
	devoe => ww_devoe,
	o => ww_Read2(13));

-- Location: IOOBUF_X89_Y36_N56
\Read2[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \read_mux2|v6|v3|v14|Q~1_combout\,
	devoe => ww_devoe,
	o => ww_Read2(14));

-- Location: IOOBUF_X70_Y81_N53
\Read2[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \read_mux2|v6|v3|v15|Q~1_combout\,
	devoe => ww_devoe,
	o => ww_Read2(15));

-- Location: IOOBUF_X28_Y81_N53
\OUTall[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_OUTall(0));

-- Location: IOOBUF_X52_Y81_N2
\OUTall[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_OUTall(1));

-- Location: IOOBUF_X56_Y81_N19
\OUTall[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_OUTall(2));

-- Location: IOOBUF_X30_Y81_N2
\OUTall[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_OUTall(3));

-- Location: IOOBUF_X80_Y81_N36
\OUTall[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_OUTall(4));

-- Location: IOOBUF_X76_Y81_N36
\OUTall[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_OUTall(5));

-- Location: IOOBUF_X60_Y81_N19
\OUTall[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_OUTall(6));

-- Location: IOOBUF_X86_Y81_N2
\OUTall[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_OUTall(7));

-- Location: IOOBUF_X54_Y81_N36
\OUTall[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_OUTall(8));

-- Location: IOOBUF_X76_Y81_N2
\OUTall[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_OUTall(9));

-- Location: IOOBUF_X40_Y81_N36
\OUTall[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_OUTall(10));

-- Location: IOOBUF_X66_Y81_N76
\OUTall[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_OUTall(11));

-- Location: IOOBUF_X66_Y81_N59
\OUTall[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_OUTall(12));

-- Location: IOOBUF_X78_Y81_N2
\OUTall[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_OUTall(13));

-- Location: IOOBUF_X28_Y81_N36
\OUTall[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_OUTall(14));

-- Location: IOOBUF_X30_Y81_N19
\OUTall[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_OUTall(15));

-- Location: IOOBUF_X4_Y0_N36
\OUTall[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg1|gen_register:0:vff|O~q\,
	devoe => ww_devoe,
	o => ww_OUTall(16));

-- Location: IOOBUF_X34_Y81_N76
\OUTall[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg1|gen_register:1:vff|O~q\,
	devoe => ww_devoe,
	o => ww_OUTall(17));

-- Location: IOOBUF_X89_Y38_N56
\OUTall[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg1|gen_register:2:vff|O~q\,
	devoe => ww_devoe,
	o => ww_OUTall(18));

-- Location: IOOBUF_X52_Y0_N36
\OUTall[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg1|gen_register:3:vff|O~q\,
	devoe => ww_devoe,
	o => ww_OUTall(19));

-- Location: IOOBUF_X72_Y0_N53
\OUTall[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg1|gen_register:4:vff|O~q\,
	devoe => ww_devoe,
	o => ww_OUTall(20));

-- Location: IOOBUF_X34_Y81_N59
\OUTall[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg1|gen_register:5:vff|O~q\,
	devoe => ww_devoe,
	o => ww_OUTall(21));

-- Location: IOOBUF_X70_Y0_N2
\OUTall[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg1|gen_register:6:vff|O~q\,
	devoe => ww_devoe,
	o => ww_OUTall(22));

-- Location: IOOBUF_X8_Y0_N53
\OUTall[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg1|gen_register:7:vff|O~q\,
	devoe => ww_devoe,
	o => ww_OUTall(23));

-- Location: IOOBUF_X6_Y0_N53
\OUTall[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg1|gen_register:8:vff|O~q\,
	devoe => ww_devoe,
	o => ww_OUTall(24));

-- Location: IOOBUF_X56_Y0_N53
\OUTall[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg1|gen_register:9:vff|O~q\,
	devoe => ww_devoe,
	o => ww_OUTall(25));

-- Location: IOOBUF_X6_Y0_N36
\OUTall[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg1|gen_register:10:vff|O~q\,
	devoe => ww_devoe,
	o => ww_OUTall(26));

-- Location: IOOBUF_X89_Y6_N56
\OUTall[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg1|gen_register:11:vff|O~q\,
	devoe => ww_devoe,
	o => ww_OUTall(27));

-- Location: IOOBUF_X89_Y35_N96
\OUTall[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg1|gen_register:12:vff|O~q\,
	devoe => ww_devoe,
	o => ww_OUTall(28));

-- Location: IOOBUF_X64_Y0_N19
\OUTall[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg1|gen_register:13:vff|O~q\,
	devoe => ww_devoe,
	o => ww_OUTall(29));

-- Location: IOOBUF_X89_Y8_N5
\OUTall[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg1|gen_register:14:vff|O~q\,
	devoe => ww_devoe,
	o => ww_OUTall(30));

-- Location: IOOBUF_X68_Y81_N36
\OUTall[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg1|gen_register:15:vff|O~q\,
	devoe => ww_devoe,
	o => ww_OUTall(31));

-- Location: IOOBUF_X32_Y0_N53
\OUTall[32]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg2|gen_register:0:vff|O~q\,
	devoe => ww_devoe,
	o => ww_OUTall(32));

-- Location: IOOBUF_X28_Y0_N19
\OUTall[33]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg2|gen_register:1:vff|O~q\,
	devoe => ww_devoe,
	o => ww_OUTall(33));

-- Location: IOOBUF_X89_Y38_N22
\OUTall[34]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg2|gen_register:2:vff|O~q\,
	devoe => ww_devoe,
	o => ww_OUTall(34));

-- Location: IOOBUF_X54_Y81_N2
\OUTall[35]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg2|gen_register:3:vff|O~q\,
	devoe => ww_devoe,
	o => ww_OUTall(35));

-- Location: IOOBUF_X89_Y35_N79
\OUTall[36]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg2|gen_register:4:vff|O~q\,
	devoe => ww_devoe,
	o => ww_OUTall(36));

-- Location: IOOBUF_X28_Y81_N2
\OUTall[37]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg2|gen_register:5:vff|O~q\,
	devoe => ww_devoe,
	o => ww_OUTall(37));

-- Location: IOOBUF_X62_Y81_N19
\OUTall[38]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg2|gen_register:6:vff|O~q\,
	devoe => ww_devoe,
	o => ww_OUTall(38));

-- Location: IOOBUF_X2_Y0_N93
\OUTall[39]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg2|gen_register:7:vff|O~q\,
	devoe => ww_devoe,
	o => ww_OUTall(39));

-- Location: IOOBUF_X6_Y0_N2
\OUTall[40]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg2|gen_register:8:vff|O~q\,
	devoe => ww_devoe,
	o => ww_OUTall(40));

-- Location: IOOBUF_X52_Y81_N36
\OUTall[41]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg2|gen_register:9:vff|O~q\,
	devoe => ww_devoe,
	o => ww_OUTall(41));

-- Location: IOOBUF_X38_Y81_N2
\OUTall[42]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg2|gen_register:10:vff|O~q\,
	devoe => ww_devoe,
	o => ww_OUTall(42));

-- Location: IOOBUF_X70_Y81_N2
\OUTall[43]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg2|gen_register:11:vff|O~q\,
	devoe => ww_devoe,
	o => ww_OUTall(43));

-- Location: IOOBUF_X60_Y0_N2
\OUTall[44]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg2|gen_register:12:vff|O~q\,
	devoe => ww_devoe,
	o => ww_OUTall(44));

-- Location: IOOBUF_X64_Y81_N2
\OUTall[45]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg2|gen_register:13:vff|O~q\,
	devoe => ww_devoe,
	o => ww_OUTall(45));

-- Location: IOOBUF_X72_Y81_N2
\OUTall[46]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg2|gen_register:14:vff|O~q\,
	devoe => ww_devoe,
	o => ww_OUTall(46));

-- Location: IOOBUF_X89_Y37_N56
\OUTall[47]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg2|gen_register:15:vff|O~q\,
	devoe => ww_devoe,
	o => ww_OUTall(47));

-- Location: IOOBUF_X6_Y0_N19
\OUTall[48]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg3|gen_register:0:vff|O~q\,
	devoe => ww_devoe,
	o => ww_OUTall(48));

-- Location: IOOBUF_X28_Y0_N2
\OUTall[49]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg3|gen_register:1:vff|O~q\,
	devoe => ww_devoe,
	o => ww_OUTall(49));

-- Location: IOOBUF_X89_Y38_N39
\OUTall[50]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg3|gen_register:2:vff|O~q\,
	devoe => ww_devoe,
	o => ww_OUTall(50));

-- Location: IOOBUF_X50_Y81_N76
\OUTall[51]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg3|gen_register:3:vff|O~q\,
	devoe => ww_devoe,
	o => ww_OUTall(51));

-- Location: IOOBUF_X89_Y37_N39
\OUTall[52]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg3|gen_register:4:vff|O~q\,
	devoe => ww_devoe,
	o => ww_OUTall(52));

-- Location: IOOBUF_X32_Y81_N2
\OUTall[53]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg3|gen_register:5:vff|O~q\,
	devoe => ww_devoe,
	o => ww_OUTall(53));

-- Location: IOOBUF_X66_Y81_N42
\OUTall[54]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg3|gen_register:6:vff|O~q\,
	devoe => ww_devoe,
	o => ww_OUTall(54));

-- Location: IOOBUF_X38_Y81_N36
\OUTall[55]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg3|gen_register:7:vff|O~q\,
	devoe => ww_devoe,
	o => ww_OUTall(55));

-- Location: IOOBUF_X32_Y81_N53
\OUTall[56]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg3|gen_register:8:vff|O~q\,
	devoe => ww_devoe,
	o => ww_OUTall(56));

-- Location: IOOBUF_X50_Y81_N42
\OUTall[57]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg3|gen_register:9:vff|O~q\,
	devoe => ww_devoe,
	o => ww_OUTall(57));

-- Location: IOOBUF_X40_Y81_N2
\OUTall[58]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg3|gen_register:10:vff|O~q\,
	devoe => ww_devoe,
	o => ww_OUTall(58));

-- Location: IOOBUF_X89_Y37_N22
\OUTall[59]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg3|gen_register:11:vff|O~q\,
	devoe => ww_devoe,
	o => ww_OUTall(59));

-- Location: IOOBUF_X62_Y81_N2
\OUTall[60]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg3|gen_register:12:vff|O~q\,
	devoe => ww_devoe,
	o => ww_OUTall(60));

-- Location: IOOBUF_X64_Y81_N36
\OUTall[61]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg3|gen_register:13:vff|O~q\,
	devoe => ww_devoe,
	o => ww_OUTall(61));

-- Location: IOOBUF_X72_Y0_N2
\OUTall[62]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg3|gen_register:14:vff|O~q\,
	devoe => ww_devoe,
	o => ww_OUTall(62));

-- Location: IOOBUF_X70_Y81_N36
\OUTall[63]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg3|gen_register:15:vff|O~q\,
	devoe => ww_devoe,
	o => ww_OUTall(63));

-- Location: IOOBUF_X4_Y0_N53
\OUTall[64]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg4|gen_register:0:vff|O~q\,
	devoe => ww_devoe,
	o => ww_OUTall(64));

-- Location: IOOBUF_X8_Y0_N36
\OUTall[65]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg4|gen_register:1:vff|O~q\,
	devoe => ww_devoe,
	o => ww_OUTall(65));

-- Location: IOOBUF_X68_Y0_N19
\OUTall[66]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg4|gen_register:2:vff|O~q\,
	devoe => ww_devoe,
	o => ww_OUTall(66));

-- Location: IOOBUF_X56_Y0_N19
\OUTall[67]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg4|gen_register:3:vff|O~q\,
	devoe => ww_devoe,
	o => ww_OUTall(67));

-- Location: IOOBUF_X89_Y4_N79
\OUTall[68]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg4|gen_register:4:vff|O~q\,
	devoe => ww_devoe,
	o => ww_OUTall(68));

-- Location: IOOBUF_X30_Y0_N36
\OUTall[69]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg4|gen_register:5:vff|O~q\,
	devoe => ww_devoe,
	o => ww_OUTall(69));

-- Location: IOOBUF_X66_Y0_N76
\OUTall[70]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg4|gen_register:6:vff|O~q\,
	devoe => ww_devoe,
	o => ww_OUTall(70));

-- Location: IOOBUF_X38_Y0_N2
\OUTall[71]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg4|gen_register:7:vff|O~q\,
	devoe => ww_devoe,
	o => ww_OUTall(71));

-- Location: IOOBUF_X50_Y0_N93
\OUTall[72]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg4|gen_register:8:vff|O~q\,
	devoe => ww_devoe,
	o => ww_OUTall(72));

-- Location: IOOBUF_X56_Y0_N2
\OUTall[73]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg4|gen_register:9:vff|O~q\,
	devoe => ww_devoe,
	o => ww_OUTall(73));

-- Location: IOOBUF_X36_Y0_N53
\OUTall[74]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg4|gen_register:10:vff|O~q\,
	devoe => ww_devoe,
	o => ww_OUTall(74));

-- Location: IOOBUF_X89_Y6_N22
\OUTall[75]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg4|gen_register:11:vff|O~q\,
	devoe => ww_devoe,
	o => ww_OUTall(75));

-- Location: IOOBUF_X64_Y0_N53
\OUTall[76]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg4|gen_register:12:vff|O~q\,
	devoe => ww_devoe,
	o => ww_OUTall(76));

-- Location: IOOBUF_X62_Y0_N2
\OUTall[77]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg4|gen_register:13:vff|O~q\,
	devoe => ww_devoe,
	o => ww_OUTall(77));

-- Location: IOOBUF_X68_Y0_N2
\OUTall[78]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg4|gen_register:14:vff|O~q\,
	devoe => ww_devoe,
	o => ww_OUTall(78));

-- Location: IOOBUF_X89_Y9_N5
\OUTall[79]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg4|gen_register:15:vff|O~q\,
	devoe => ww_devoe,
	o => ww_OUTall(79));

-- Location: IOOBUF_X40_Y0_N19
\OUTall[80]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg5|gen_register:0:vff|O~q\,
	devoe => ww_devoe,
	o => ww_OUTall(80));

-- Location: IOOBUF_X2_Y0_N76
\OUTall[81]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg5|gen_register:1:vff|O~q\,
	devoe => ww_devoe,
	o => ww_OUTall(81));

-- Location: IOOBUF_X72_Y0_N36
\OUTall[82]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg5|gen_register:2:vff|O~q\,
	devoe => ww_devoe,
	o => ww_OUTall(82));

-- Location: IOOBUF_X50_Y0_N59
\OUTall[83]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg5|gen_register:3:vff|O~q\,
	devoe => ww_devoe,
	o => ww_OUTall(83));

-- Location: IOOBUF_X89_Y4_N96
\OUTall[84]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg5|gen_register:4:vff|O~q\,
	devoe => ww_devoe,
	o => ww_OUTall(84));

-- Location: IOOBUF_X30_Y0_N53
\OUTall[85]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg5|gen_register:5:vff|O~q\,
	devoe => ww_devoe,
	o => ww_OUTall(85));

-- Location: IOOBUF_X66_Y0_N93
\OUTall[86]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg5|gen_register:6:vff|O~q\,
	devoe => ww_devoe,
	o => ww_OUTall(86));

-- Location: IOOBUF_X4_Y0_N2
\OUTall[87]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg5|gen_register:7:vff|O~q\,
	devoe => ww_devoe,
	o => ww_OUTall(87));

-- Location: IOOBUF_X54_Y0_N53
\OUTall[88]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg5|gen_register:8:vff|O~q\,
	devoe => ww_devoe,
	o => ww_OUTall(88));

-- Location: IOOBUF_X54_Y0_N19
\OUTall[89]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg5|gen_register:9:vff|O~q\,
	devoe => ww_devoe,
	o => ww_OUTall(89));

-- Location: IOOBUF_X38_Y0_N36
\OUTall[90]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg5|gen_register:10:vff|O~q\,
	devoe => ww_devoe,
	o => ww_OUTall(90));

-- Location: IOOBUF_X89_Y6_N39
\OUTall[91]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg5|gen_register:11:vff|O~q\,
	devoe => ww_devoe,
	o => ww_OUTall(91));

-- Location: IOOBUF_X62_Y0_N53
\OUTall[92]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg5|gen_register:12:vff|O~q\,
	devoe => ww_devoe,
	o => ww_OUTall(92));

-- Location: IOOBUF_X62_Y0_N36
\OUTall[93]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg5|gen_register:13:vff|O~q\,
	devoe => ww_devoe,
	o => ww_OUTall(93));

-- Location: IOOBUF_X70_Y0_N36
\OUTall[94]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg5|gen_register:14:vff|O~q\,
	devoe => ww_devoe,
	o => ww_OUTall(94));

-- Location: IOOBUF_X89_Y9_N22
\OUTall[95]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg5|gen_register:15:vff|O~q\,
	devoe => ww_devoe,
	o => ww_OUTall(95));

-- Location: IOOBUF_X40_Y0_N36
\OUTall[96]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg6|gen_register:0:vff|O~q\,
	devoe => ww_devoe,
	o => ww_OUTall(96));

-- Location: IOOBUF_X38_Y0_N19
\OUTall[97]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg6|gen_register:1:vff|O~q\,
	devoe => ww_devoe,
	o => ww_OUTall(97));

-- Location: IOOBUF_X70_Y0_N19
\OUTall[98]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg6|gen_register:2:vff|O~q\,
	devoe => ww_devoe,
	o => ww_OUTall(98));

-- Location: IOOBUF_X50_Y0_N76
\OUTall[99]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg6|gen_register:3:vff|O~q\,
	devoe => ww_devoe,
	o => ww_OUTall(99));

-- Location: IOOBUF_X68_Y0_N36
\OUTall[100]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg6|gen_register:4:vff|O~q\,
	devoe => ww_devoe,
	o => ww_OUTall(100));

-- Location: IOOBUF_X32_Y0_N36
\OUTall[101]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg6|gen_register:5:vff|O~q\,
	devoe => ww_devoe,
	o => ww_OUTall(101));

-- Location: IOOBUF_X66_Y81_N93
\OUTall[102]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg6|gen_register:6:vff|O~q\,
	devoe => ww_devoe,
	o => ww_OUTall(102));

-- Location: IOOBUF_X34_Y0_N93
\OUTall[103]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg6|gen_register:7:vff|O~q\,
	devoe => ww_devoe,
	o => ww_OUTall(103));

-- Location: IOOBUF_X50_Y0_N42
\OUTall[104]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg6|gen_register:8:vff|O~q\,
	devoe => ww_devoe,
	o => ww_OUTall(104));

-- Location: IOOBUF_X40_Y0_N2
\OUTall[105]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg6|gen_register:9:vff|O~q\,
	devoe => ww_devoe,
	o => ww_OUTall(105));

-- Location: IOOBUF_X34_Y0_N76
\OUTall[106]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg6|gen_register:10:vff|O~q\,
	devoe => ww_devoe,
	o => ww_OUTall(106));

-- Location: IOOBUF_X89_Y9_N39
\OUTall[107]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg6|gen_register:11:vff|O~q\,
	devoe => ww_devoe,
	o => ww_OUTall(107));

-- Location: IOOBUF_X89_Y35_N45
\OUTall[108]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg6|gen_register:12:vff|O~q\,
	devoe => ww_devoe,
	o => ww_OUTall(108));

-- Location: IOOBUF_X60_Y0_N53
\OUTall[109]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg6|gen_register:13:vff|O~q\,
	devoe => ww_devoe,
	o => ww_OUTall(109));

-- Location: IOOBUF_X89_Y8_N39
\OUTall[110]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg6|gen_register:14:vff|O~q\,
	devoe => ww_devoe,
	o => ww_OUTall(110));

-- Location: IOOBUF_X89_Y36_N39
\OUTall[111]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg6|gen_register:15:vff|O~q\,
	devoe => ww_devoe,
	o => ww_OUTall(111));

-- Location: IOOBUF_X40_Y0_N53
\OUTall[112]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg7|gen_register:0:vff|O~q\,
	devoe => ww_devoe,
	o => ww_OUTall(112));

-- Location: IOOBUF_X28_Y0_N36
\OUTall[113]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg7|gen_register:1:vff|O~q\,
	devoe => ww_devoe,
	o => ww_OUTall(113));

-- Location: IOOBUF_X89_Y38_N5
\OUTall[114]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg7|gen_register:2:vff|O~q\,
	devoe => ww_devoe,
	o => ww_OUTall(114));

-- Location: IOOBUF_X50_Y81_N59
\OUTall[115]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg7|gen_register:3:vff|O~q\,
	devoe => ww_devoe,
	o => ww_OUTall(115));

-- Location: IOOBUF_X68_Y0_N53
\OUTall[116]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg7|gen_register:4:vff|O~q\,
	devoe => ww_devoe,
	o => ww_OUTall(116));

-- Location: IOOBUF_X34_Y0_N42
\OUTall[117]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg7|gen_register:5:vff|O~q\,
	devoe => ww_devoe,
	o => ww_OUTall(117));

-- Location: IOOBUF_X64_Y0_N2
\OUTall[118]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg7|gen_register:6:vff|O~q\,
	devoe => ww_devoe,
	o => ww_OUTall(118));

-- Location: IOOBUF_X34_Y0_N59
\OUTall[119]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg7|gen_register:7:vff|O~q\,
	devoe => ww_devoe,
	o => ww_OUTall(119));

-- Location: IOOBUF_X54_Y0_N2
\OUTall[120]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg7|gen_register:8:vff|O~q\,
	devoe => ww_devoe,
	o => ww_OUTall(120));

-- Location: IOOBUF_X52_Y0_N53
\OUTall[121]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg7|gen_register:9:vff|O~q\,
	devoe => ww_devoe,
	o => ww_OUTall(121));

-- Location: IOOBUF_X36_Y0_N2
\OUTall[122]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg7|gen_register:10:vff|O~q\,
	devoe => ww_devoe,
	o => ww_OUTall(122));

-- Location: IOOBUF_X89_Y9_N56
\OUTall[123]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg7|gen_register:11:vff|O~q\,
	devoe => ww_devoe,
	o => ww_OUTall(123));

-- Location: IOOBUF_X62_Y0_N19
\OUTall[124]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg7|gen_register:12:vff|O~q\,
	devoe => ww_devoe,
	o => ww_OUTall(124));

-- Location: IOOBUF_X60_Y0_N19
\OUTall[125]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg7|gen_register:13:vff|O~q\,
	devoe => ww_devoe,
	o => ww_OUTall(125));

-- Location: IOOBUF_X72_Y0_N19
\OUTall[126]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg7|gen_register:14:vff|O~q\,
	devoe => ww_devoe,
	o => ww_OUTall(126));

-- Location: IOOBUF_X89_Y36_N5
\OUTall[127]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \reg7|gen_register:15:vff|O~q\,
	devoe => ww_devoe,
	o => ww_OUTall(127));

-- Location: IOIBUF_X89_Y35_N61
\Clock~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clock,
	o => \Clock~input_o\);

-- Location: CLKCTRL_G10
\Clock~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \Clock~input_o\,
	outclk => \Clock~inputCLKENA0_outclk\);

-- Location: IOIBUF_X30_Y0_N1
\Write1[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Write1(0),
	o => \Write1[0]~input_o\);

-- Location: IOIBUF_X30_Y0_N18
\Write1AD[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Write1AD(1),
	o => \Write1AD[1]~input_o\);

-- Location: IOIBUF_X36_Y81_N52
\Write1AD[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Write1AD(0),
	o => \Write1AD[0]~input_o\);

-- Location: IOIBUF_X38_Y81_N52
\Write1AD[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Write1AD(2),
	o => \Write1AD[2]~input_o\);

-- Location: LABCELL_X40_Y5_N24
\v0|v8|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \v0|v8|Q~0_combout\ = ( !\Write1AD[2]~input_o\ & ( (\Write1AD[1]~input_o\ & !\Write1AD[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Write1AD[1]~input_o\,
	datab => \ALT_INV_Write1AD[0]~input_o\,
	dataf => \ALT_INV_Write1AD[2]~input_o\,
	combout => \v0|v8|Q~0_combout\);

-- Location: FF_X37_Y4_N50
\reg2|gen_register:0:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Write1[0]~input_o\,
	sload => VCC,
	ena => \v0|v8|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg2|gen_register:0:vff|O~q\);

-- Location: LABCELL_X40_Y5_N27
\v0|v10|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \v0|v10|Q~0_combout\ = ( !\Write1AD[2]~input_o\ & ( (\Write1AD[1]~input_o\ & \Write1AD[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Write1AD[1]~input_o\,
	datab => \ALT_INV_Write1AD[0]~input_o\,
	dataf => \ALT_INV_Write1AD[2]~input_o\,
	combout => \v0|v10|Q~0_combout\);

-- Location: FF_X37_Y4_N14
\reg3|gen_register:0:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Write1[0]~input_o\,
	sload => VCC,
	ena => \v0|v10|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|gen_register:0:vff|O~q\);

-- Location: IOIBUF_X58_Y0_N41
\Read1AD[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Read1AD(0),
	o => \Read1AD[0]~input_o\);

-- Location: LABCELL_X40_Y4_N15
\v0|v12|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \v0|v12|Q~0_combout\ = ( !\Write1AD[1]~input_o\ & ( (\Write1AD[2]~input_o\ & !\Write1AD[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000000000000000000001010000010100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Write1AD[2]~input_o\,
	datac => \ALT_INV_Write1AD[0]~input_o\,
	datae => \ALT_INV_Write1AD[1]~input_o\,
	combout => \v0|v12|Q~0_combout\);

-- Location: FF_X40_Y4_N32
\reg4|gen_register:0:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Write1[0]~input_o\,
	sload => VCC,
	ena => \v0|v12|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|gen_register:0:vff|O~q\);

-- Location: LABCELL_X40_Y4_N21
\v0|v14|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \v0|v14|Q~0_combout\ = ( !\Write1AD[1]~input_o\ & ( (\Write1AD[2]~input_o\ & \Write1AD[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000000000000000000000101000001010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Write1AD[2]~input_o\,
	datac => \ALT_INV_Write1AD[0]~input_o\,
	datae => \ALT_INV_Write1AD[1]~input_o\,
	combout => \v0|v14|Q~0_combout\);

-- Location: FF_X40_Y4_N8
\reg5|gen_register:0:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Write1[0]~input_o\,
	sload => VCC,
	ena => \v0|v14|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg5|gen_register:0:vff|O~q\);

-- Location: LABCELL_X40_Y5_N51
\v0|v16|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \v0|v16|Q~0_combout\ = ( \Write1AD[2]~input_o\ & ( (\Write1AD[1]~input_o\ & !\Write1AD[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Write1AD[1]~input_o\,
	datab => \ALT_INV_Write1AD[0]~input_o\,
	dataf => \ALT_INV_Write1AD[2]~input_o\,
	combout => \v0|v16|Q~0_combout\);

-- Location: FF_X47_Y4_N56
\reg6|gen_register:0:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Write1[0]~input_o\,
	sload => VCC,
	ena => \v0|v16|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg6|gen_register:0:vff|O~q\);

-- Location: IOIBUF_X58_Y0_N58
\Read1AD[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Read1AD(1),
	o => \Read1AD[1]~input_o\);

-- Location: LABCELL_X40_Y5_N48
\v0|v18|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \v0|v18|Q~0_combout\ = ( \Write1AD[2]~input_o\ & ( (\Write1AD[1]~input_o\ & \Write1AD[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Write1AD[1]~input_o\,
	datab => \ALT_INV_Write1AD[0]~input_o\,
	dataf => \ALT_INV_Write1AD[2]~input_o\,
	combout => \v0|v18|Q~0_combout\);

-- Location: FF_X40_Y4_N44
\reg7|gen_register:0:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Write1[0]~input_o\,
	sload => VCC,
	ena => \v0|v18|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg7|gen_register:0:vff|O~q\);

-- Location: MLABCELL_X47_Y4_N33
\read_mux1|v6|v3|v0|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \read_mux1|v6|v3|v0|Q~0_combout\ = ( \Read1AD[1]~input_o\ & ( \reg7|gen_register:0:vff|O~q\ & ( (\reg6|gen_register:0:vff|O~q\) # (\Read1AD[0]~input_o\) ) ) ) # ( !\Read1AD[1]~input_o\ & ( \reg7|gen_register:0:vff|O~q\ & ( (!\Read1AD[0]~input_o\ & 
-- (\reg4|gen_register:0:vff|O~q\)) # (\Read1AD[0]~input_o\ & ((\reg5|gen_register:0:vff|O~q\))) ) ) ) # ( \Read1AD[1]~input_o\ & ( !\reg7|gen_register:0:vff|O~q\ & ( (!\Read1AD[0]~input_o\ & \reg6|gen_register:0:vff|O~q\) ) ) ) # ( !\Read1AD[1]~input_o\ & ( 
-- !\reg7|gen_register:0:vff|O~q\ & ( (!\Read1AD[0]~input_o\ & (\reg4|gen_register:0:vff|O~q\)) # (\Read1AD[0]~input_o\ & ((\reg5|gen_register:0:vff|O~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111000000001010101000100111001001110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Read1AD[0]~input_o\,
	datab => \reg4|gen_register:0:vff|ALT_INV_O~q\,
	datac => \reg5|gen_register:0:vff|ALT_INV_O~q\,
	datad => \reg6|gen_register:0:vff|ALT_INV_O~q\,
	datae => \ALT_INV_Read1AD[1]~input_o\,
	dataf => \reg7|gen_register:0:vff|ALT_INV_O~q\,
	combout => \read_mux1|v6|v3|v0|Q~0_combout\);

-- Location: IOIBUF_X60_Y0_N35
\Read1AD[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Read1AD(2),
	o => \Read1AD[2]~input_o\);

-- Location: LABCELL_X37_Y4_N21
\reg1|gen_register:0:vff|O~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg1|gen_register:0:vff|O~feeder_combout\ = ( \Write1[0]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Write1[0]~input_o\,
	combout => \reg1|gen_register:0:vff|O~feeder_combout\);

-- Location: LABCELL_X40_Y5_N12
\v0|v6|Q\ : cyclonev_lcell_comb
-- Equation(s):
-- \v0|v6|Q~combout\ = ( \Write1AD[0]~input_o\ & ( !\Write1AD[2]~input_o\ & ( !\Write1AD[1]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Write1AD[1]~input_o\,
	datae => \ALT_INV_Write1AD[0]~input_o\,
	dataf => \ALT_INV_Write1AD[2]~input_o\,
	combout => \v0|v6|Q~combout\);

-- Location: FF_X37_Y4_N23
\reg1|gen_register:0:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \reg1|gen_register:0:vff|O~feeder_combout\,
	ena => \v0|v6|Q~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|gen_register:0:vff|O~q\);

-- Location: LABCELL_X37_Y4_N12
\read_mux1|v6|v3|v0|Q~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \read_mux1|v6|v3|v0|Q~1_combout\ = ( !\Read1AD[2]~input_o\ & ( (!\Read1AD[0]~input_o\ & (\reg2|gen_register:0:vff|O~q\ & (((\Read1AD[1]~input_o\))))) # (\Read1AD[0]~input_o\ & (((!\Read1AD[1]~input_o\ & ((\reg1|gen_register:0:vff|O~q\))) # 
-- (\Read1AD[1]~input_o\ & (\reg3|gen_register:0:vff|O~q\))))) ) ) # ( \Read1AD[2]~input_o\ & ( (((\read_mux1|v6|v3|v0|Q~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111000011110000111101010101001100110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg2|gen_register:0:vff|ALT_INV_O~q\,
	datab => \reg3|gen_register:0:vff|ALT_INV_O~q\,
	datac => \read_mux1|v6|v3|v0|ALT_INV_Q~0_combout\,
	datad => \ALT_INV_Read1AD[0]~input_o\,
	datae => \ALT_INV_Read1AD[2]~input_o\,
	dataf => \ALT_INV_Read1AD[1]~input_o\,
	datag => \reg1|gen_register:0:vff|ALT_INV_O~q\,
	combout => \read_mux1|v6|v3|v0|Q~1_combout\);

-- Location: IOIBUF_X36_Y0_N18
\Write1[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Write1(1),
	o => \Write1[1]~input_o\);

-- Location: FF_X40_Y4_N53
\reg7|gen_register:1:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Write1[1]~input_o\,
	sload => VCC,
	ena => \v0|v18|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg7|gen_register:1:vff|O~q\);

-- Location: FF_X40_Y4_N11
\reg5|gen_register:1:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Write1[1]~input_o\,
	sload => VCC,
	ena => \v0|v14|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg5|gen_register:1:vff|O~q\);

-- Location: FF_X40_Y4_N35
\reg4|gen_register:1:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Write1[1]~input_o\,
	sload => VCC,
	ena => \v0|v12|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|gen_register:1:vff|O~q\);

-- Location: MLABCELL_X39_Y4_N30
\reg6|gen_register:1:vff|O~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg6|gen_register:1:vff|O~feeder_combout\ = ( \Write1[1]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Write1[1]~input_o\,
	combout => \reg6|gen_register:1:vff|O~feeder_combout\);

-- Location: FF_X39_Y4_N32
\reg6|gen_register:1:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \reg6|gen_register:1:vff|O~feeder_combout\,
	ena => \v0|v16|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg6|gen_register:1:vff|O~q\);

-- Location: LABCELL_X40_Y4_N27
\read_mux1|v6|v3|v1|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \read_mux1|v6|v3|v1|Q~0_combout\ = ( \Read1AD[1]~input_o\ & ( \reg6|gen_register:1:vff|O~q\ & ( (!\Read1AD[0]~input_o\) # (\reg7|gen_register:1:vff|O~q\) ) ) ) # ( !\Read1AD[1]~input_o\ & ( \reg6|gen_register:1:vff|O~q\ & ( (!\Read1AD[0]~input_o\ & 
-- ((\reg4|gen_register:1:vff|O~q\))) # (\Read1AD[0]~input_o\ & (\reg5|gen_register:1:vff|O~q\)) ) ) ) # ( \Read1AD[1]~input_o\ & ( !\reg6|gen_register:1:vff|O~q\ & ( (\reg7|gen_register:1:vff|O~q\ & \Read1AD[0]~input_o\) ) ) ) # ( !\Read1AD[1]~input_o\ & ( 
-- !\reg6|gen_register:1:vff|O~q\ & ( (!\Read1AD[0]~input_o\ & ((\reg4|gen_register:1:vff|O~q\))) # (\Read1AD[0]~input_o\ & (\reg5|gen_register:1:vff|O~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111000100010001000100000011110011111101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg7|gen_register:1:vff|ALT_INV_O~q\,
	datab => \ALT_INV_Read1AD[0]~input_o\,
	datac => \reg5|gen_register:1:vff|ALT_INV_O~q\,
	datad => \reg4|gen_register:1:vff|ALT_INV_O~q\,
	datae => \ALT_INV_Read1AD[1]~input_o\,
	dataf => \reg6|gen_register:1:vff|ALT_INV_O~q\,
	combout => \read_mux1|v6|v3|v1|Q~0_combout\);

-- Location: FF_X37_Y4_N8
\reg3|gen_register:1:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Write1[1]~input_o\,
	sload => VCC,
	ena => \v0|v10|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|gen_register:1:vff|O~q\);

-- Location: FF_X37_Y4_N44
\reg2|gen_register:1:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Write1[1]~input_o\,
	sload => VCC,
	ena => \v0|v8|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg2|gen_register:1:vff|O~q\);

-- Location: LABCELL_X37_Y4_N57
\reg1|gen_register:1:vff|O~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg1|gen_register:1:vff|O~feeder_combout\ = \Write1[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Write1[1]~input_o\,
	combout => \reg1|gen_register:1:vff|O~feeder_combout\);

-- Location: FF_X37_Y4_N59
\reg1|gen_register:1:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \reg1|gen_register:1:vff|O~feeder_combout\,
	ena => \v0|v6|Q~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|gen_register:1:vff|O~q\);

-- Location: LABCELL_X37_Y4_N6
\read_mux1|v6|v3|v1|Q~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \read_mux1|v6|v3|v1|Q~1_combout\ = ( !\Read1AD[2]~input_o\ & ( (!\Read1AD[1]~input_o\ & (\Read1AD[0]~input_o\ & (\reg1|gen_register:1:vff|O~q\))) # (\Read1AD[1]~input_o\ & ((!\Read1AD[0]~input_o\ & (((\reg2|gen_register:1:vff|O~q\)))) # 
-- (\Read1AD[0]~input_o\ & (((\reg3|gen_register:1:vff|O~q\)))))) ) ) # ( \Read1AD[2]~input_o\ & ( (((\read_mux1|v6|v3|v1|Q~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001000010011000011110000111101000110010101110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Read1AD[1]~input_o\,
	datab => \ALT_INV_Read1AD[0]~input_o\,
	datac => \read_mux1|v6|v3|v1|ALT_INV_Q~0_combout\,
	datad => \reg3|gen_register:1:vff|ALT_INV_O~q\,
	datae => \ALT_INV_Read1AD[2]~input_o\,
	dataf => \reg2|gen_register:1:vff|ALT_INV_O~q\,
	datag => \reg1|gen_register:1:vff|ALT_INV_O~q\,
	combout => \read_mux1|v6|v3|v1|Q~1_combout\);

-- Location: IOIBUF_X89_Y4_N44
\Write1[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Write1(2),
	o => \Write1[2]~input_o\);

-- Location: LABCELL_X66_Y4_N30
\reg4|gen_register:2:vff|O~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg4|gen_register:2:vff|O~feeder_combout\ = ( \Write1[2]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Write1[2]~input_o\,
	combout => \reg4|gen_register:2:vff|O~feeder_combout\);

-- Location: FF_X66_Y4_N32
\reg4|gen_register:2:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \reg4|gen_register:2:vff|O~feeder_combout\,
	ena => \v0|v12|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|gen_register:2:vff|O~q\);

-- Location: FF_X66_Y4_N44
\reg6|gen_register:2:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Write1[2]~input_o\,
	sload => VCC,
	ena => \v0|v16|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg6|gen_register:2:vff|O~q\);

-- Location: LABCELL_X66_Y4_N36
\reg5|gen_register:2:vff|O~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg5|gen_register:2:vff|O~feeder_combout\ = ( \Write1[2]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Write1[2]~input_o\,
	combout => \reg5|gen_register:2:vff|O~feeder_combout\);

-- Location: FF_X66_Y4_N38
\reg5|gen_register:2:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \reg5|gen_register:2:vff|O~feeder_combout\,
	ena => \v0|v14|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg5|gen_register:2:vff|O~q\);

-- Location: FF_X70_Y4_N8
\reg7|gen_register:2:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Write1[2]~input_o\,
	sload => VCC,
	ena => \v0|v18|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg7|gen_register:2:vff|O~q\);

-- Location: LABCELL_X70_Y4_N12
\read_mux1|v6|v3|v2|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \read_mux1|v6|v3|v2|Q~0_combout\ = ( \Read1AD[1]~input_o\ & ( \reg7|gen_register:2:vff|O~q\ & ( (\reg6|gen_register:2:vff|O~q\) # (\Read1AD[0]~input_o\) ) ) ) # ( !\Read1AD[1]~input_o\ & ( \reg7|gen_register:2:vff|O~q\ & ( (!\Read1AD[0]~input_o\ & 
-- (\reg4|gen_register:2:vff|O~q\)) # (\Read1AD[0]~input_o\ & ((\reg5|gen_register:2:vff|O~q\))) ) ) ) # ( \Read1AD[1]~input_o\ & ( !\reg7|gen_register:2:vff|O~q\ & ( (!\Read1AD[0]~input_o\ & \reg6|gen_register:2:vff|O~q\) ) ) ) # ( !\Read1AD[1]~input_o\ & ( 
-- !\reg7|gen_register:2:vff|O~q\ & ( (!\Read1AD[0]~input_o\ & (\reg4|gen_register:2:vff|O~q\)) # (\Read1AD[0]~input_o\ & ((\reg5|gen_register:2:vff|O~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001001110111000010100000101000100010011101110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Read1AD[0]~input_o\,
	datab => \reg4|gen_register:2:vff|ALT_INV_O~q\,
	datac => \reg6|gen_register:2:vff|ALT_INV_O~q\,
	datad => \reg5|gen_register:2:vff|ALT_INV_O~q\,
	datae => \ALT_INV_Read1AD[1]~input_o\,
	dataf => \reg7|gen_register:2:vff|ALT_INV_O~q\,
	combout => \read_mux1|v6|v3|v2|Q~0_combout\);

-- Location: FF_X70_Y4_N44
\reg2|gen_register:2:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Write1[2]~input_o\,
	sload => VCC,
	ena => \v0|v8|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg2|gen_register:2:vff|O~q\);

-- Location: FF_X70_Y4_N2
\reg3|gen_register:2:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Write1[2]~input_o\,
	sload => VCC,
	ena => \v0|v10|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|gen_register:2:vff|O~q\);

-- Location: LABCELL_X67_Y4_N33
\reg1|gen_register:2:vff|O~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg1|gen_register:2:vff|O~feeder_combout\ = ( \Write1[2]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Write1[2]~input_o\,
	combout => \reg1|gen_register:2:vff|O~feeder_combout\);

-- Location: FF_X67_Y4_N35
\reg1|gen_register:2:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \reg1|gen_register:2:vff|O~feeder_combout\,
	ena => \v0|v6|Q~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|gen_register:2:vff|O~q\);

-- Location: LABCELL_X70_Y4_N0
\read_mux1|v6|v3|v2|Q~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \read_mux1|v6|v3|v2|Q~1_combout\ = ( !\Read1AD[2]~input_o\ & ( (!\Read1AD[0]~input_o\ & (\Read1AD[1]~input_o\ & (((\reg2|gen_register:2:vff|O~q\))))) # (\Read1AD[0]~input_o\ & ((!\Read1AD[1]~input_o\ & (\reg1|gen_register:2:vff|O~q\)) # 
-- (\Read1AD[1]~input_o\ & (((\reg3|gen_register:2:vff|O~q\)))))) ) ) # ( \Read1AD[2]~input_o\ & ( (((\read_mux1|v6|v3|v2|Q~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000010000100110000011110000111100010101001101110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Read1AD[0]~input_o\,
	datab => \ALT_INV_Read1AD[1]~input_o\,
	datac => \read_mux1|v6|v3|v2|ALT_INV_Q~0_combout\,
	datad => \reg2|gen_register:2:vff|ALT_INV_O~q\,
	datae => \ALT_INV_Read1AD[2]~input_o\,
	dataf => \reg3|gen_register:2:vff|ALT_INV_O~q\,
	datag => \reg1|gen_register:2:vff|ALT_INV_O~q\,
	combout => \read_mux1|v6|v3|v2|Q~1_combout\);

-- Location: IOIBUF_X52_Y0_N18
\Write1[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Write1(3),
	o => \Write1[3]~input_o\);

-- Location: FF_X47_Y4_N44
\reg2|gen_register:3:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Write1[3]~input_o\,
	sload => VCC,
	ena => \v0|v8|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg2|gen_register:3:vff|O~q\);

-- Location: LABCELL_X48_Y4_N0
\reg4|gen_register:3:vff|O~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg4|gen_register:3:vff|O~feeder_combout\ = ( \Write1[3]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Write1[3]~input_o\,
	combout => \reg4|gen_register:3:vff|O~feeder_combout\);

-- Location: FF_X48_Y4_N2
\reg4|gen_register:3:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \reg4|gen_register:3:vff|O~feeder_combout\,
	ena => \v0|v12|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|gen_register:3:vff|O~q\);

-- Location: FF_X48_Y4_N14
\reg7|gen_register:3:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Write1[3]~input_o\,
	sload => VCC,
	ena => \v0|v18|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg7|gen_register:3:vff|O~q\);

-- Location: FF_X47_Y4_N8
\reg6|gen_register:3:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Write1[3]~input_o\,
	sload => VCC,
	ena => \v0|v16|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg6|gen_register:3:vff|O~q\);

-- Location: FF_X48_Y4_N8
\reg5|gen_register:3:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Write1[3]~input_o\,
	sload => VCC,
	ena => \v0|v14|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg5|gen_register:3:vff|O~q\);

-- Location: MLABCELL_X47_Y4_N45
\read_mux1|v6|v3|v3|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \read_mux1|v6|v3|v3|Q~0_combout\ = ( \Read1AD[1]~input_o\ & ( \Read1AD[0]~input_o\ & ( \reg7|gen_register:3:vff|O~q\ ) ) ) # ( !\Read1AD[1]~input_o\ & ( \Read1AD[0]~input_o\ & ( \reg5|gen_register:3:vff|O~q\ ) ) ) # ( \Read1AD[1]~input_o\ & ( 
-- !\Read1AD[0]~input_o\ & ( \reg6|gen_register:3:vff|O~q\ ) ) ) # ( !\Read1AD[1]~input_o\ & ( !\Read1AD[0]~input_o\ & ( \reg4|gen_register:3:vff|O~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000011110000111100000000111111110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg4|gen_register:3:vff|ALT_INV_O~q\,
	datab => \reg7|gen_register:3:vff|ALT_INV_O~q\,
	datac => \reg6|gen_register:3:vff|ALT_INV_O~q\,
	datad => \reg5|gen_register:3:vff|ALT_INV_O~q\,
	datae => \ALT_INV_Read1AD[1]~input_o\,
	dataf => \ALT_INV_Read1AD[0]~input_o\,
	combout => \read_mux1|v6|v3|v3|Q~0_combout\);

-- Location: FF_X47_Y4_N20
\reg3|gen_register:3:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Write1[3]~input_o\,
	sload => VCC,
	ena => \v0|v10|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|gen_register:3:vff|O~q\);

-- Location: MLABCELL_X52_Y4_N33
\reg1|gen_register:3:vff|O~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg1|gen_register:3:vff|O~feeder_combout\ = ( \Write1[3]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Write1[3]~input_o\,
	combout => \reg1|gen_register:3:vff|O~feeder_combout\);

-- Location: FF_X52_Y4_N35
\reg1|gen_register:3:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \reg1|gen_register:3:vff|O~feeder_combout\,
	ena => \v0|v6|Q~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|gen_register:3:vff|O~q\);

-- Location: MLABCELL_X47_Y4_N18
\read_mux1|v6|v3|v3|Q~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \read_mux1|v6|v3|v3|Q~1_combout\ = ( !\Read1AD[2]~input_o\ & ( (!\Read1AD[1]~input_o\ & (((\reg1|gen_register:3:vff|O~q\ & ((\Read1AD[0]~input_o\)))))) # (\Read1AD[1]~input_o\ & (((!\Read1AD[0]~input_o\ & (\reg2|gen_register:3:vff|O~q\)) # 
-- (\Read1AD[0]~input_o\ & ((\reg3|gen_register:3:vff|O~q\)))))) ) ) # ( \Read1AD[2]~input_o\ & ( (((\read_mux1|v6|v3|v3|Q~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001000100010001000011110000111100001010010111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Read1AD[1]~input_o\,
	datab => \reg2|gen_register:3:vff|ALT_INV_O~q\,
	datac => \read_mux1|v6|v3|v3|ALT_INV_Q~0_combout\,
	datad => \reg3|gen_register:3:vff|ALT_INV_O~q\,
	datae => \ALT_INV_Read1AD[2]~input_o\,
	dataf => \ALT_INV_Read1AD[0]~input_o\,
	datag => \reg1|gen_register:3:vff|ALT_INV_O~q\,
	combout => \read_mux1|v6|v3|v3|Q~1_combout\);

-- Location: IOIBUF_X70_Y0_N52
\Write1[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Write1(4),
	o => \Write1[4]~input_o\);

-- Location: LABCELL_X66_Y4_N27
\reg5|gen_register:4:vff|O~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg5|gen_register:4:vff|O~feeder_combout\ = ( \Write1[4]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Write1[4]~input_o\,
	combout => \reg5|gen_register:4:vff|O~feeder_combout\);

-- Location: FF_X66_Y4_N29
\reg5|gen_register:4:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \reg5|gen_register:4:vff|O~feeder_combout\,
	ena => \v0|v14|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg5|gen_register:4:vff|O~q\);

-- Location: FF_X70_Y4_N23
\reg7|gen_register:4:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Write1[4]~input_o\,
	sload => VCC,
	ena => \v0|v18|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg7|gen_register:4:vff|O~q\);

-- Location: LABCELL_X66_Y4_N3
\reg6|gen_register:4:vff|O~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg6|gen_register:4:vff|O~feeder_combout\ = ( \Write1[4]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Write1[4]~input_o\,
	combout => \reg6|gen_register:4:vff|O~feeder_combout\);

-- Location: FF_X66_Y4_N5
\reg6|gen_register:4:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \reg6|gen_register:4:vff|O~feeder_combout\,
	ena => \v0|v16|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg6|gen_register:4:vff|O~q\);

-- Location: LABCELL_X66_Y4_N21
\reg4|gen_register:4:vff|O~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg4|gen_register:4:vff|O~feeder_combout\ = ( \Write1[4]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Write1[4]~input_o\,
	combout => \reg4|gen_register:4:vff|O~feeder_combout\);

-- Location: FF_X66_Y4_N23
\reg4|gen_register:4:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \reg4|gen_register:4:vff|O~feeder_combout\,
	ena => \v0|v12|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|gen_register:4:vff|O~q\);

-- Location: LABCELL_X66_Y4_N45
\read_mux1|v6|v3|v4|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \read_mux1|v6|v3|v4|Q~0_combout\ = ( \reg4|gen_register:4:vff|O~q\ & ( \Read1AD[0]~input_o\ & ( (!\Read1AD[1]~input_o\ & (\reg5|gen_register:4:vff|O~q\)) # (\Read1AD[1]~input_o\ & ((\reg7|gen_register:4:vff|O~q\))) ) ) ) # ( !\reg4|gen_register:4:vff|O~q\ 
-- & ( \Read1AD[0]~input_o\ & ( (!\Read1AD[1]~input_o\ & (\reg5|gen_register:4:vff|O~q\)) # (\Read1AD[1]~input_o\ & ((\reg7|gen_register:4:vff|O~q\))) ) ) ) # ( \reg4|gen_register:4:vff|O~q\ & ( !\Read1AD[0]~input_o\ & ( (!\Read1AD[1]~input_o\) # 
-- (\reg6|gen_register:4:vff|O~q\) ) ) ) # ( !\reg4|gen_register:4:vff|O~q\ & ( !\Read1AD[0]~input_o\ & ( (\Read1AD[1]~input_o\ & \reg6|gen_register:4:vff|O~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111111100001111111101010011010100110101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg5|gen_register:4:vff|ALT_INV_O~q\,
	datab => \reg7|gen_register:4:vff|ALT_INV_O~q\,
	datac => \ALT_INV_Read1AD[1]~input_o\,
	datad => \reg6|gen_register:4:vff|ALT_INV_O~q\,
	datae => \reg4|gen_register:4:vff|ALT_INV_O~q\,
	dataf => \ALT_INV_Read1AD[0]~input_o\,
	combout => \read_mux1|v6|v3|v4|Q~0_combout\);

-- Location: FF_X70_Y4_N17
\reg2|gen_register:4:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Write1[4]~input_o\,
	sload => VCC,
	ena => \v0|v8|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg2|gen_register:4:vff|O~q\);

-- Location: FF_X70_Y4_N26
\reg3|gen_register:4:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Write1[4]~input_o\,
	sload => VCC,
	ena => \v0|v10|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|gen_register:4:vff|O~q\);

-- Location: LABCELL_X67_Y4_N36
\reg1|gen_register:4:vff|O~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg1|gen_register:4:vff|O~feeder_combout\ = ( \Write1[4]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Write1[4]~input_o\,
	combout => \reg1|gen_register:4:vff|O~feeder_combout\);

-- Location: FF_X67_Y4_N38
\reg1|gen_register:4:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \reg1|gen_register:4:vff|O~feeder_combout\,
	ena => \v0|v6|Q~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|gen_register:4:vff|O~q\);

-- Location: LABCELL_X70_Y4_N24
\read_mux1|v6|v3|v4|Q~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \read_mux1|v6|v3|v4|Q~1_combout\ = ( !\Read1AD[2]~input_o\ & ( (!\Read1AD[0]~input_o\ & (\Read1AD[1]~input_o\ & (((\reg2|gen_register:4:vff|O~q\))))) # (\Read1AD[0]~input_o\ & ((!\Read1AD[1]~input_o\ & (\reg1|gen_register:4:vff|O~q\)) # 
-- (\Read1AD[1]~input_o\ & (((\reg3|gen_register:4:vff|O~q\)))))) ) ) # ( \Read1AD[2]~input_o\ & ( (((\read_mux1|v6|v3|v4|Q~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000010000100110000011110000111100010101001101110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Read1AD[0]~input_o\,
	datab => \ALT_INV_Read1AD[1]~input_o\,
	datac => \read_mux1|v6|v3|v4|ALT_INV_Q~0_combout\,
	datad => \reg2|gen_register:4:vff|ALT_INV_O~q\,
	datae => \ALT_INV_Read1AD[2]~input_o\,
	dataf => \reg3|gen_register:4:vff|ALT_INV_O~q\,
	datag => \reg1|gen_register:4:vff|ALT_INV_O~q\,
	combout => \read_mux1|v6|v3|v4|Q~1_combout\);

-- Location: IOIBUF_X26_Y0_N92
\Write1[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Write1(5),
	o => \Write1[5]~input_o\);

-- Location: FF_X37_Y4_N38
\reg2|gen_register:5:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Write1[5]~input_o\,
	sload => VCC,
	ena => \v0|v8|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg2|gen_register:5:vff|O~q\);

-- Location: FF_X37_Y4_N32
\reg3|gen_register:5:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Write1[5]~input_o\,
	sload => VCC,
	ena => \v0|v10|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|gen_register:5:vff|O~q\);

-- Location: FF_X40_Y4_N29
\reg4|gen_register:5:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Write1[5]~input_o\,
	sload => VCC,
	ena => \v0|v12|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|gen_register:5:vff|O~q\);

-- Location: FF_X40_Y4_N41
\reg7|gen_register:5:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Write1[5]~input_o\,
	sload => VCC,
	ena => \v0|v18|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg7|gen_register:5:vff|O~q\);

-- Location: FF_X40_Y4_N5
\reg5|gen_register:5:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Write1[5]~input_o\,
	sload => VCC,
	ena => \v0|v14|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg5|gen_register:5:vff|O~q\);

-- Location: FF_X39_Y4_N38
\reg6|gen_register:5:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Write1[5]~input_o\,
	sload => VCC,
	ena => \v0|v16|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg6|gen_register:5:vff|O~q\);

-- Location: LABCELL_X40_Y4_N9
\read_mux1|v6|v3|v5|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \read_mux1|v6|v3|v5|Q~0_combout\ = ( \Read1AD[1]~input_o\ & ( \reg6|gen_register:5:vff|O~q\ & ( (!\Read1AD[0]~input_o\) # (\reg7|gen_register:5:vff|O~q\) ) ) ) # ( !\Read1AD[1]~input_o\ & ( \reg6|gen_register:5:vff|O~q\ & ( (!\Read1AD[0]~input_o\ & 
-- (\reg4|gen_register:5:vff|O~q\)) # (\Read1AD[0]~input_o\ & ((\reg5|gen_register:5:vff|O~q\))) ) ) ) # ( \Read1AD[1]~input_o\ & ( !\reg6|gen_register:5:vff|O~q\ & ( (\Read1AD[0]~input_o\ & \reg7|gen_register:5:vff|O~q\) ) ) ) # ( !\Read1AD[1]~input_o\ & ( 
-- !\reg6|gen_register:5:vff|O~q\ & ( (!\Read1AD[0]~input_o\ & (\reg4|gen_register:5:vff|O~q\)) # (\Read1AD[0]~input_o\ & ((\reg5|gen_register:5:vff|O~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001110111000000110000001101000100011101111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg4|gen_register:5:vff|ALT_INV_O~q\,
	datab => \ALT_INV_Read1AD[0]~input_o\,
	datac => \reg7|gen_register:5:vff|ALT_INV_O~q\,
	datad => \reg5|gen_register:5:vff|ALT_INV_O~q\,
	datae => \ALT_INV_Read1AD[1]~input_o\,
	dataf => \reg6|gen_register:5:vff|ALT_INV_O~q\,
	combout => \read_mux1|v6|v3|v5|Q~0_combout\);

-- Location: FF_X37_Y4_N56
\reg1|gen_register:5:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Write1[5]~input_o\,
	sload => VCC,
	ena => \v0|v6|Q~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|gen_register:5:vff|O~q\);

-- Location: LABCELL_X37_Y4_N30
\read_mux1|v6|v3|v5|Q~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \read_mux1|v6|v3|v5|Q~1_combout\ = ( !\Read1AD[2]~input_o\ & ( (!\Read1AD[0]~input_o\ & (\reg2|gen_register:5:vff|O~q\ & (((\Read1AD[1]~input_o\))))) # (\Read1AD[0]~input_o\ & (((!\Read1AD[1]~input_o\ & ((\reg1|gen_register:5:vff|O~q\))) # 
-- (\Read1AD[1]~input_o\ & (\reg3|gen_register:5:vff|O~q\))))) ) ) # ( \Read1AD[2]~input_o\ & ( (((\read_mux1|v6|v3|v5|Q~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111000011110000111101010101001100110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg2|gen_register:5:vff|ALT_INV_O~q\,
	datab => \reg3|gen_register:5:vff|ALT_INV_O~q\,
	datac => \read_mux1|v6|v3|v5|ALT_INV_Q~0_combout\,
	datad => \ALT_INV_Read1AD[0]~input_o\,
	datae => \ALT_INV_Read1AD[2]~input_o\,
	dataf => \ALT_INV_Read1AD[1]~input_o\,
	datag => \reg1|gen_register:5:vff|ALT_INV_O~q\,
	combout => \read_mux1|v6|v3|v5|Q~1_combout\);

-- Location: IOIBUF_X66_Y0_N58
\Write1[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Write1(6),
	o => \Write1[6]~input_o\);

-- Location: LABCELL_X66_Y4_N33
\reg4|gen_register:6:vff|O~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg4|gen_register:6:vff|O~feeder_combout\ = ( \Write1[6]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Write1[6]~input_o\,
	combout => \reg4|gen_register:6:vff|O~feeder_combout\);

-- Location: FF_X66_Y4_N35
\reg4|gen_register:6:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \reg4|gen_register:6:vff|O~feeder_combout\,
	ena => \v0|v12|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|gen_register:6:vff|O~q\);

-- Location: LABCELL_X66_Y4_N39
\reg5|gen_register:6:vff|O~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg5|gen_register:6:vff|O~feeder_combout\ = ( \Write1[6]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Write1[6]~input_o\,
	combout => \reg5|gen_register:6:vff|O~feeder_combout\);

-- Location: FF_X66_Y4_N41
\reg5|gen_register:6:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \reg5|gen_register:6:vff|O~feeder_combout\,
	ena => \v0|v14|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg5|gen_register:6:vff|O~q\);

-- Location: FF_X64_Y4_N8
\reg7|gen_register:6:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Write1[6]~input_o\,
	sload => VCC,
	ena => \v0|v18|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg7|gen_register:6:vff|O~q\);

-- Location: FF_X66_Y4_N11
\reg6|gen_register:6:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Write1[6]~input_o\,
	sload => VCC,
	ena => \v0|v16|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg6|gen_register:6:vff|O~q\);

-- Location: LABCELL_X64_Y4_N12
\read_mux1|v6|v3|v6|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \read_mux1|v6|v3|v6|Q~0_combout\ = ( \Read1AD[0]~input_o\ & ( \reg6|gen_register:6:vff|O~q\ & ( (!\Read1AD[1]~input_o\ & (\reg5|gen_register:6:vff|O~q\)) # (\Read1AD[1]~input_o\ & ((\reg7|gen_register:6:vff|O~q\))) ) ) ) # ( !\Read1AD[0]~input_o\ & ( 
-- \reg6|gen_register:6:vff|O~q\ & ( (\Read1AD[1]~input_o\) # (\reg4|gen_register:6:vff|O~q\) ) ) ) # ( \Read1AD[0]~input_o\ & ( !\reg6|gen_register:6:vff|O~q\ & ( (!\Read1AD[1]~input_o\ & (\reg5|gen_register:6:vff|O~q\)) # (\Read1AD[1]~input_o\ & 
-- ((\reg7|gen_register:6:vff|O~q\))) ) ) ) # ( !\Read1AD[0]~input_o\ & ( !\reg6|gen_register:6:vff|O~q\ & ( (\reg4|gen_register:6:vff|O~q\ & !\Read1AD[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000001100000011111101011111010111110011000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg4|gen_register:6:vff|ALT_INV_O~q\,
	datab => \reg5|gen_register:6:vff|ALT_INV_O~q\,
	datac => \ALT_INV_Read1AD[1]~input_o\,
	datad => \reg7|gen_register:6:vff|ALT_INV_O~q\,
	datae => \ALT_INV_Read1AD[0]~input_o\,
	dataf => \reg6|gen_register:6:vff|ALT_INV_O~q\,
	combout => \read_mux1|v6|v3|v6|Q~0_combout\);

-- Location: FF_X64_Y4_N44
\reg2|gen_register:6:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Write1[6]~input_o\,
	sload => VCC,
	ena => \v0|v8|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg2|gen_register:6:vff|O~q\);

-- Location: FF_X64_Y4_N32
\reg3|gen_register:6:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Write1[6]~input_o\,
	sload => VCC,
	ena => \v0|v10|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|gen_register:6:vff|O~q\);

-- Location: FF_X67_Y4_N17
\reg1|gen_register:6:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Write1[6]~input_o\,
	sload => VCC,
	ena => \v0|v6|Q~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|gen_register:6:vff|O~q\);

-- Location: LABCELL_X64_Y4_N30
\read_mux1|v6|v3|v6|Q~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \read_mux1|v6|v3|v6|Q~1_combout\ = ( !\Read1AD[2]~input_o\ & ( (!\Read1AD[1]~input_o\ & (\Read1AD[0]~input_o\ & (\reg1|gen_register:6:vff|O~q\))) # (\Read1AD[1]~input_o\ & ((!\Read1AD[0]~input_o\ & (((\reg2|gen_register:6:vff|O~q\)))) # 
-- (\Read1AD[0]~input_o\ & (((\reg3|gen_register:6:vff|O~q\)))))) ) ) # ( \Read1AD[2]~input_o\ & ( (((\read_mux1|v6|v3|v6|Q~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001001000110000011110000111100010011010101110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Read1AD[1]~input_o\,
	datab => \ALT_INV_Read1AD[0]~input_o\,
	datac => \read_mux1|v6|v3|v6|ALT_INV_Q~0_combout\,
	datad => \reg2|gen_register:6:vff|ALT_INV_O~q\,
	datae => \ALT_INV_Read1AD[2]~input_o\,
	dataf => \reg3|gen_register:6:vff|ALT_INV_O~q\,
	datag => \reg1|gen_register:6:vff|ALT_INV_O~q\,
	combout => \read_mux1|v6|v3|v6|Q~1_combout\);

-- Location: IOIBUF_X36_Y0_N35
\Write1[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Write1(7),
	o => \Write1[7]~input_o\);

-- Location: FF_X40_Y5_N20
\reg3|gen_register:7:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Write1[7]~input_o\,
	sload => VCC,
	ena => \v0|v10|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|gen_register:7:vff|O~q\);

-- Location: LABCELL_X40_Y5_N30
\reg2|gen_register:7:vff|O~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg2|gen_register:7:vff|O~feeder_combout\ = ( \Write1[7]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Write1[7]~input_o\,
	combout => \reg2|gen_register:7:vff|O~feeder_combout\);

-- Location: FF_X40_Y5_N32
\reg2|gen_register:7:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \reg2|gen_register:7:vff|O~feeder_combout\,
	ena => \v0|v8|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg2|gen_register:7:vff|O~q\);

-- Location: LABCELL_X40_Y5_N54
\reg7|gen_register:7:vff|O~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg7|gen_register:7:vff|O~feeder_combout\ = ( \Write1[7]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Write1[7]~input_o\,
	combout => \reg7|gen_register:7:vff|O~feeder_combout\);

-- Location: FF_X40_Y5_N56
\reg7|gen_register:7:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \reg7|gen_register:7:vff|O~feeder_combout\,
	ena => \v0|v18|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg7|gen_register:7:vff|O~q\);

-- Location: FF_X40_Y4_N20
\reg5|gen_register:7:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Write1[7]~input_o\,
	sload => VCC,
	ena => \v0|v14|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg5|gen_register:7:vff|O~q\);

-- Location: FF_X40_Y4_N14
\reg4|gen_register:7:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Write1[7]~input_o\,
	sload => VCC,
	ena => \v0|v12|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|gen_register:7:vff|O~q\);

-- Location: MLABCELL_X39_Y4_N12
\reg6|gen_register:7:vff|O~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg6|gen_register:7:vff|O~feeder_combout\ = ( \Write1[7]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Write1[7]~input_o\,
	combout => \reg6|gen_register:7:vff|O~feeder_combout\);

-- Location: FF_X39_Y4_N14
\reg6|gen_register:7:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \reg6|gen_register:7:vff|O~feeder_combout\,
	ena => \v0|v16|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg6|gen_register:7:vff|O~q\);

-- Location: MLABCELL_X39_Y4_N51
\read_mux1|v6|v3|v7|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \read_mux1|v6|v3|v7|Q~0_combout\ = ( \reg6|gen_register:7:vff|O~q\ & ( \Read1AD[1]~input_o\ & ( (!\Read1AD[0]~input_o\) # (\reg7|gen_register:7:vff|O~q\) ) ) ) # ( !\reg6|gen_register:7:vff|O~q\ & ( \Read1AD[1]~input_o\ & ( (\reg7|gen_register:7:vff|O~q\ 
-- & \Read1AD[0]~input_o\) ) ) ) # ( \reg6|gen_register:7:vff|O~q\ & ( !\Read1AD[1]~input_o\ & ( (!\Read1AD[0]~input_o\ & ((\reg4|gen_register:7:vff|O~q\))) # (\Read1AD[0]~input_o\ & (\reg5|gen_register:7:vff|O~q\)) ) ) ) # ( !\reg6|gen_register:7:vff|O~q\ & 
-- ( !\Read1AD[1]~input_o\ & ( (!\Read1AD[0]~input_o\ & ((\reg4|gen_register:7:vff|O~q\))) # (\Read1AD[0]~input_o\ & (\reg5|gen_register:7:vff|O~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100110011000011110011001100000000010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg7|gen_register:7:vff|ALT_INV_O~q\,
	datab => \reg5|gen_register:7:vff|ALT_INV_O~q\,
	datac => \reg4|gen_register:7:vff|ALT_INV_O~q\,
	datad => \ALT_INV_Read1AD[0]~input_o\,
	datae => \reg6|gen_register:7:vff|ALT_INV_O~q\,
	dataf => \ALT_INV_Read1AD[1]~input_o\,
	combout => \read_mux1|v6|v3|v7|Q~0_combout\);

-- Location: LABCELL_X37_Y4_N54
\reg1|gen_register:7:vff|O~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg1|gen_register:7:vff|O~feeder_combout\ = ( \Write1[7]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Write1[7]~input_o\,
	combout => \reg1|gen_register:7:vff|O~feeder_combout\);

-- Location: FF_X37_Y4_N55
\reg1|gen_register:7:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \reg1|gen_register:7:vff|O~feeder_combout\,
	ena => \v0|v6|Q~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|gen_register:7:vff|O~q\);

-- Location: LABCELL_X40_Y5_N18
\read_mux1|v6|v3|v7|Q~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \read_mux1|v6|v3|v7|Q~1_combout\ = ( !\Read1AD[2]~input_o\ & ( (!\Read1AD[0]~input_o\ & (((\reg2|gen_register:7:vff|O~q\ & ((\Read1AD[1]~input_o\)))))) # (\Read1AD[0]~input_o\ & (((!\Read1AD[1]~input_o\ & ((\reg1|gen_register:7:vff|O~q\))) # 
-- (\Read1AD[1]~input_o\ & (\reg3|gen_register:7:vff|O~q\))))) ) ) # ( \Read1AD[2]~input_o\ & ( (((\read_mux1|v6|v3|v7|Q~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111000011110000111100110011010101010000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg3|gen_register:7:vff|ALT_INV_O~q\,
	datab => \reg2|gen_register:7:vff|ALT_INV_O~q\,
	datac => \read_mux1|v6|v3|v7|ALT_INV_Q~0_combout\,
	datad => \ALT_INV_Read1AD[0]~input_o\,
	datae => \ALT_INV_Read1AD[2]~input_o\,
	dataf => \ALT_INV_Read1AD[1]~input_o\,
	datag => \reg1|gen_register:7:vff|ALT_INV_O~q\,
	combout => \read_mux1|v6|v3|v7|Q~1_combout\);

-- Location: IOIBUF_X8_Y0_N18
\Write1[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Write1(8),
	o => \Write1[8]~input_o\);

-- Location: FF_X37_Y4_N2
\reg2|gen_register:8:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Write1[8]~input_o\,
	sload => VCC,
	ena => \v0|v8|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg2|gen_register:8:vff|O~q\);

-- Location: FF_X47_Y4_N50
\reg6|gen_register:8:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Write1[8]~input_o\,
	sload => VCC,
	ena => \v0|v16|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg6|gen_register:8:vff|O~q\);

-- Location: LABCELL_X48_Y4_N57
\reg5|gen_register:8:vff|O~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg5|gen_register:8:vff|O~feeder_combout\ = ( \Write1[8]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Write1[8]~input_o\,
	combout => \reg5|gen_register:8:vff|O~feeder_combout\);

-- Location: FF_X48_Y4_N59
\reg5|gen_register:8:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \reg5|gen_register:8:vff|O~feeder_combout\,
	ena => \v0|v14|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg5|gen_register:8:vff|O~q\);

-- Location: LABCELL_X48_Y4_N30
\reg7|gen_register:8:vff|O~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg7|gen_register:8:vff|O~feeder_combout\ = ( \Write1[8]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Write1[8]~input_o\,
	combout => \reg7|gen_register:8:vff|O~feeder_combout\);

-- Location: FF_X48_Y4_N32
\reg7|gen_register:8:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \reg7|gen_register:8:vff|O~feeder_combout\,
	ena => \v0|v18|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg7|gen_register:8:vff|O~q\);

-- Location: LABCELL_X48_Y4_N21
\reg4|gen_register:8:vff|O~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg4|gen_register:8:vff|O~feeder_combout\ = ( \Write1[8]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Write1[8]~input_o\,
	combout => \reg4|gen_register:8:vff|O~feeder_combout\);

-- Location: FF_X48_Y4_N23
\reg4|gen_register:8:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \reg4|gen_register:8:vff|O~feeder_combout\,
	ena => \v0|v12|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|gen_register:8:vff|O~q\);

-- Location: MLABCELL_X47_Y4_N57
\read_mux1|v6|v3|v8|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \read_mux1|v6|v3|v8|Q~0_combout\ = ( \Read1AD[1]~input_o\ & ( \Read1AD[0]~input_o\ & ( \reg7|gen_register:8:vff|O~q\ ) ) ) # ( !\Read1AD[1]~input_o\ & ( \Read1AD[0]~input_o\ & ( \reg5|gen_register:8:vff|O~q\ ) ) ) # ( \Read1AD[1]~input_o\ & ( 
-- !\Read1AD[0]~input_o\ & ( \reg6|gen_register:8:vff|O~q\ ) ) ) # ( !\Read1AD[1]~input_o\ & ( !\Read1AD[0]~input_o\ & ( \reg4|gen_register:8:vff|O~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111010101010101010100110011001100110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg6|gen_register:8:vff|ALT_INV_O~q\,
	datab => \reg5|gen_register:8:vff|ALT_INV_O~q\,
	datac => \reg7|gen_register:8:vff|ALT_INV_O~q\,
	datad => \reg4|gen_register:8:vff|ALT_INV_O~q\,
	datae => \ALT_INV_Read1AD[1]~input_o\,
	dataf => \ALT_INV_Read1AD[0]~input_o\,
	combout => \read_mux1|v6|v3|v8|Q~0_combout\);

-- Location: FF_X37_Y4_N26
\reg3|gen_register:8:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Write1[8]~input_o\,
	sload => VCC,
	ena => \v0|v10|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|gen_register:8:vff|O~q\);

-- Location: FF_X37_Y4_N20
\reg1|gen_register:8:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Write1[8]~input_o\,
	sload => VCC,
	ena => \v0|v6|Q~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|gen_register:8:vff|O~q\);

-- Location: LABCELL_X37_Y4_N24
\read_mux1|v6|v3|v8|Q~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \read_mux1|v6|v3|v8|Q~1_combout\ = ( !\Read1AD[2]~input_o\ & ( (!\Read1AD[0]~input_o\ & (\reg2|gen_register:8:vff|O~q\ & (((\Read1AD[1]~input_o\))))) # (\Read1AD[0]~input_o\ & (((!\Read1AD[1]~input_o\ & (\reg1|gen_register:8:vff|O~q\)) # 
-- (\Read1AD[1]~input_o\ & ((\reg3|gen_register:8:vff|O~q\)))))) ) ) # ( \Read1AD[2]~input_o\ & ( (((\read_mux1|v6|v3|v8|Q~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001101000100000011110000111100000011011101110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg2|gen_register:8:vff|ALT_INV_O~q\,
	datab => \ALT_INV_Read1AD[0]~input_o\,
	datac => \read_mux1|v6|v3|v8|ALT_INV_Q~0_combout\,
	datad => \ALT_INV_Read1AD[1]~input_o\,
	datae => \ALT_INV_Read1AD[2]~input_o\,
	dataf => \reg3|gen_register:8:vff|ALT_INV_O~q\,
	datag => \reg1|gen_register:8:vff|ALT_INV_O~q\,
	combout => \read_mux1|v6|v3|v8|Q~1_combout\);

-- Location: IOIBUF_X52_Y0_N1
\Write1[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Write1(9),
	o => \Write1[9]~input_o\);

-- Location: FF_X47_Y4_N14
\reg3|gen_register:9:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Write1[9]~input_o\,
	sload => VCC,
	ena => \v0|v10|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|gen_register:9:vff|O~q\);

-- Location: MLABCELL_X47_Y4_N24
\reg6|gen_register:9:vff|O~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg6|gen_register:9:vff|O~feeder_combout\ = ( \Write1[9]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Write1[9]~input_o\,
	combout => \reg6|gen_register:9:vff|O~feeder_combout\);

-- Location: FF_X47_Y4_N26
\reg6|gen_register:9:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \reg6|gen_register:9:vff|O~feeder_combout\,
	ena => \v0|v16|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg6|gen_register:9:vff|O~q\);

-- Location: LABCELL_X48_Y4_N42
\reg5|gen_register:9:vff|O~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg5|gen_register:9:vff|O~feeder_combout\ = ( \Write1[9]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Write1[9]~input_o\,
	combout => \reg5|gen_register:9:vff|O~feeder_combout\);

-- Location: FF_X48_Y4_N44
\reg5|gen_register:9:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \reg5|gen_register:9:vff|O~feeder_combout\,
	ena => \v0|v14|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg5|gen_register:9:vff|O~q\);

-- Location: LABCELL_X48_Y4_N48
\reg7|gen_register:9:vff|O~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg7|gen_register:9:vff|O~feeder_combout\ = ( \Write1[9]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Write1[9]~input_o\,
	combout => \reg7|gen_register:9:vff|O~feeder_combout\);

-- Location: FF_X48_Y4_N50
\reg7|gen_register:9:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \reg7|gen_register:9:vff|O~feeder_combout\,
	ena => \v0|v18|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg7|gen_register:9:vff|O~q\);

-- Location: LABCELL_X48_Y4_N36
\reg4|gen_register:9:vff|O~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg4|gen_register:9:vff|O~feeder_combout\ = ( \Write1[9]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Write1[9]~input_o\,
	combout => \reg4|gen_register:9:vff|O~feeder_combout\);

-- Location: FF_X48_Y4_N38
\reg4|gen_register:9:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \reg4|gen_register:9:vff|O~feeder_combout\,
	ena => \v0|v12|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|gen_register:9:vff|O~q\);

-- Location: LABCELL_X48_Y4_N9
\read_mux1|v6|v3|v9|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \read_mux1|v6|v3|v9|Q~0_combout\ = ( \Read1AD[1]~input_o\ & ( \reg4|gen_register:9:vff|O~q\ & ( (!\Read1AD[0]~input_o\ & (\reg6|gen_register:9:vff|O~q\)) # (\Read1AD[0]~input_o\ & ((\reg7|gen_register:9:vff|O~q\))) ) ) ) # ( !\Read1AD[1]~input_o\ & ( 
-- \reg4|gen_register:9:vff|O~q\ & ( (!\Read1AD[0]~input_o\) # (\reg5|gen_register:9:vff|O~q\) ) ) ) # ( \Read1AD[1]~input_o\ & ( !\reg4|gen_register:9:vff|O~q\ & ( (!\Read1AD[0]~input_o\ & (\reg6|gen_register:9:vff|O~q\)) # (\Read1AD[0]~input_o\ & 
-- ((\reg7|gen_register:9:vff|O~q\))) ) ) ) # ( !\Read1AD[1]~input_o\ & ( !\reg4|gen_register:9:vff|O~q\ & ( (\Read1AD[0]~input_o\ & \reg5|gen_register:9:vff|O~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011010001000111011111001111110011110100010001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg6|gen_register:9:vff|ALT_INV_O~q\,
	datab => \ALT_INV_Read1AD[0]~input_o\,
	datac => \reg5|gen_register:9:vff|ALT_INV_O~q\,
	datad => \reg7|gen_register:9:vff|ALT_INV_O~q\,
	datae => \ALT_INV_Read1AD[1]~input_o\,
	dataf => \reg4|gen_register:9:vff|ALT_INV_O~q\,
	combout => \read_mux1|v6|v3|v9|Q~0_combout\);

-- Location: FF_X47_Y4_N32
\reg2|gen_register:9:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Write1[9]~input_o\,
	sload => VCC,
	ena => \v0|v8|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg2|gen_register:9:vff|O~q\);

-- Location: MLABCELL_X52_Y4_N6
\reg1|gen_register:9:vff|O~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg1|gen_register:9:vff|O~feeder_combout\ = ( \Write1[9]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Write1[9]~input_o\,
	combout => \reg1|gen_register:9:vff|O~feeder_combout\);

-- Location: FF_X52_Y4_N8
\reg1|gen_register:9:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \reg1|gen_register:9:vff|O~feeder_combout\,
	ena => \v0|v6|Q~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|gen_register:9:vff|O~q\);

-- Location: MLABCELL_X47_Y4_N12
\read_mux1|v6|v3|v9|Q~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \read_mux1|v6|v3|v9|Q~1_combout\ = ( !\Read1AD[2]~input_o\ & ( (!\Read1AD[1]~input_o\ & (((\reg1|gen_register:9:vff|O~q\ & ((\Read1AD[0]~input_o\)))))) # (\Read1AD[1]~input_o\ & (((!\Read1AD[0]~input_o\ & ((\reg2|gen_register:9:vff|O~q\))) # 
-- (\Read1AD[0]~input_o\ & (\reg3|gen_register:9:vff|O~q\))))) ) ) # ( \Read1AD[2]~input_o\ & ( (((\read_mux1|v6|v3|v9|Q~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000001010101000011110000111100011011000110110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Read1AD[1]~input_o\,
	datab => \reg3|gen_register:9:vff|ALT_INV_O~q\,
	datac => \read_mux1|v6|v3|v9|ALT_INV_Q~0_combout\,
	datad => \reg2|gen_register:9:vff|ALT_INV_O~q\,
	datae => \ALT_INV_Read1AD[2]~input_o\,
	dataf => \ALT_INV_Read1AD[0]~input_o\,
	datag => \reg1|gen_register:9:vff|ALT_INV_O~q\,
	combout => \read_mux1|v6|v3|v9|Q~1_combout\);

-- Location: IOIBUF_X38_Y0_N52
\Write1[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Write1(10),
	o => \Write1[10]~input_o\);

-- Location: FF_X40_Y5_N17
\reg3|gen_register:10:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Write1[10]~input_o\,
	sload => VCC,
	ena => \v0|v10|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|gen_register:10:vff|O~q\);

-- Location: FF_X40_Y5_N8
\reg2|gen_register:10:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Write1[10]~input_o\,
	sload => VCC,
	ena => \v0|v8|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg2|gen_register:10:vff|O~q\);

-- Location: MLABCELL_X39_Y4_N24
\reg6|gen_register:10:vff|O~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg6|gen_register:10:vff|O~feeder_combout\ = ( \Write1[10]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Write1[10]~input_o\,
	combout => \reg6|gen_register:10:vff|O~feeder_combout\);

-- Location: FF_X39_Y4_N26
\reg6|gen_register:10:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \reg6|gen_register:10:vff|O~feeder_combout\,
	ena => \v0|v16|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg6|gen_register:10:vff|O~q\);

-- Location: FF_X40_Y4_N59
\reg7|gen_register:10:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Write1[10]~input_o\,
	sload => VCC,
	ena => \v0|v18|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg7|gen_register:10:vff|O~q\);

-- Location: FF_X40_Y4_N2
\reg5|gen_register:10:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Write1[10]~input_o\,
	sload => VCC,
	ena => \v0|v14|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg5|gen_register:10:vff|O~q\);

-- Location: FF_X40_Y4_N26
\reg4|gen_register:10:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Write1[10]~input_o\,
	sload => VCC,
	ena => \v0|v12|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|gen_register:10:vff|O~q\);

-- Location: MLABCELL_X39_Y4_N3
\read_mux1|v6|v3|v10|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \read_mux1|v6|v3|v10|Q~0_combout\ = ( \reg4|gen_register:10:vff|O~q\ & ( \Read1AD[0]~input_o\ & ( (!\Read1AD[1]~input_o\ & ((\reg5|gen_register:10:vff|O~q\))) # (\Read1AD[1]~input_o\ & (\reg7|gen_register:10:vff|O~q\)) ) ) ) # ( 
-- !\reg4|gen_register:10:vff|O~q\ & ( \Read1AD[0]~input_o\ & ( (!\Read1AD[1]~input_o\ & ((\reg5|gen_register:10:vff|O~q\))) # (\Read1AD[1]~input_o\ & (\reg7|gen_register:10:vff|O~q\)) ) ) ) # ( \reg4|gen_register:10:vff|O~q\ & ( !\Read1AD[0]~input_o\ & ( 
-- (!\Read1AD[1]~input_o\) # (\reg6|gen_register:10:vff|O~q\) ) ) ) # ( !\reg4|gen_register:10:vff|O~q\ & ( !\Read1AD[0]~input_o\ & ( (\reg6|gen_register:10:vff|O~q\ & \Read1AD[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001110111011101110100000011110011110000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg6|gen_register:10:vff|ALT_INV_O~q\,
	datab => \ALT_INV_Read1AD[1]~input_o\,
	datac => \reg7|gen_register:10:vff|ALT_INV_O~q\,
	datad => \reg5|gen_register:10:vff|ALT_INV_O~q\,
	datae => \reg4|gen_register:10:vff|ALT_INV_O~q\,
	dataf => \ALT_INV_Read1AD[0]~input_o\,
	combout => \read_mux1|v6|v3|v10|Q~0_combout\);

-- Location: LABCELL_X37_Y4_N18
\reg1|gen_register:10:vff|O~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg1|gen_register:10:vff|O~feeder_combout\ = ( \Write1[10]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Write1[10]~input_o\,
	combout => \reg1|gen_register:10:vff|O~feeder_combout\);

-- Location: FF_X37_Y4_N19
\reg1|gen_register:10:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \reg1|gen_register:10:vff|O~feeder_combout\,
	ena => \v0|v6|Q~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|gen_register:10:vff|O~q\);

-- Location: LABCELL_X40_Y5_N42
\read_mux1|v6|v3|v10|Q~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \read_mux1|v6|v3|v10|Q~1_combout\ = ( !\Read1AD[2]~input_o\ & ( (!\Read1AD[0]~input_o\ & (((\reg2|gen_register:10:vff|O~q\ & ((\Read1AD[1]~input_o\)))))) # (\Read1AD[0]~input_o\ & (((!\Read1AD[1]~input_o\ & ((\reg1|gen_register:10:vff|O~q\))) # 
-- (\Read1AD[1]~input_o\ & (\reg3|gen_register:10:vff|O~q\))))) ) ) # ( \Read1AD[2]~input_o\ & ( (((\read_mux1|v6|v3|v10|Q~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111000011110000111100110011010101010000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg3|gen_register:10:vff|ALT_INV_O~q\,
	datab => \reg2|gen_register:10:vff|ALT_INV_O~q\,
	datac => \read_mux1|v6|v3|v10|ALT_INV_Q~0_combout\,
	datad => \ALT_INV_Read1AD[0]~input_o\,
	datae => \ALT_INV_Read1AD[2]~input_o\,
	dataf => \ALT_INV_Read1AD[1]~input_o\,
	datag => \reg1|gen_register:10:vff|ALT_INV_O~q\,
	combout => \read_mux1|v6|v3|v10|Q~1_combout\);

-- Location: IOIBUF_X89_Y6_N4
\Write1[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Write1(11),
	o => \Write1[11]~input_o\);

-- Location: FF_X70_Y5_N2
\reg2|gen_register:11:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Write1[11]~input_o\,
	sload => VCC,
	ena => \v0|v8|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg2|gen_register:11:vff|O~q\);

-- Location: FF_X67_Y5_N5
\reg4|gen_register:11:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Write1[11]~input_o\,
	sload => VCC,
	ena => \v0|v12|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|gen_register:11:vff|O~q\);

-- Location: FF_X68_Y5_N32
\reg6|gen_register:11:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Write1[11]~input_o\,
	sload => VCC,
	ena => \v0|v16|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg6|gen_register:11:vff|O~q\);

-- Location: FF_X67_Y5_N41
\reg5|gen_register:11:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Write1[11]~input_o\,
	sload => VCC,
	ena => \v0|v14|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg5|gen_register:11:vff|O~q\);

-- Location: LABCELL_X70_Y5_N24
\reg7|gen_register:11:vff|O~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg7|gen_register:11:vff|O~feeder_combout\ = ( \Write1[11]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Write1[11]~input_o\,
	combout => \reg7|gen_register:11:vff|O~feeder_combout\);

-- Location: FF_X70_Y5_N26
\reg7|gen_register:11:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \reg7|gen_register:11:vff|O~feeder_combout\,
	ena => \v0|v18|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg7|gen_register:11:vff|O~q\);

-- Location: LABCELL_X68_Y5_N39
\read_mux1|v6|v3|v11|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \read_mux1|v6|v3|v11|Q~0_combout\ = ( \reg5|gen_register:11:vff|O~q\ & ( \reg7|gen_register:11:vff|O~q\ & ( ((!\Read1AD[1]~input_o\ & (\reg4|gen_register:11:vff|O~q\)) # (\Read1AD[1]~input_o\ & ((\reg6|gen_register:11:vff|O~q\)))) # (\Read1AD[0]~input_o\) 
-- ) ) ) # ( !\reg5|gen_register:11:vff|O~q\ & ( \reg7|gen_register:11:vff|O~q\ & ( (!\Read1AD[1]~input_o\ & (\reg4|gen_register:11:vff|O~q\ & ((!\Read1AD[0]~input_o\)))) # (\Read1AD[1]~input_o\ & (((\Read1AD[0]~input_o\) # 
-- (\reg6|gen_register:11:vff|O~q\)))) ) ) ) # ( \reg5|gen_register:11:vff|O~q\ & ( !\reg7|gen_register:11:vff|O~q\ & ( (!\Read1AD[1]~input_o\ & (((\Read1AD[0]~input_o\)) # (\reg4|gen_register:11:vff|O~q\))) # (\Read1AD[1]~input_o\ & 
-- (((\reg6|gen_register:11:vff|O~q\ & !\Read1AD[0]~input_o\)))) ) ) ) # ( !\reg5|gen_register:11:vff|O~q\ & ( !\reg7|gen_register:11:vff|O~q\ & ( (!\Read1AD[0]~input_o\ & ((!\Read1AD[1]~input_o\ & (\reg4|gen_register:11:vff|O~q\)) # (\Read1AD[1]~input_o\ & 
-- ((\reg6|gen_register:11:vff|O~q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001100000000010100111111000001010011000011110101001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg4|gen_register:11:vff|ALT_INV_O~q\,
	datab => \reg6|gen_register:11:vff|ALT_INV_O~q\,
	datac => \ALT_INV_Read1AD[1]~input_o\,
	datad => \ALT_INV_Read1AD[0]~input_o\,
	datae => \reg5|gen_register:11:vff|ALT_INV_O~q\,
	dataf => \reg7|gen_register:11:vff|ALT_INV_O~q\,
	combout => \read_mux1|v6|v3|v11|Q~0_combout\);

-- Location: LABCELL_X70_Y5_N6
\reg3|gen_register:11:vff|O~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg3|gen_register:11:vff|O~feeder_combout\ = ( \Write1[11]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Write1[11]~input_o\,
	combout => \reg3|gen_register:11:vff|O~feeder_combout\);

-- Location: FF_X70_Y5_N8
\reg3|gen_register:11:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \reg3|gen_register:11:vff|O~feeder_combout\,
	ena => \v0|v10|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|gen_register:11:vff|O~q\);

-- Location: FF_X67_Y5_N47
\reg1|gen_register:11:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Write1[11]~input_o\,
	sload => VCC,
	ena => \v0|v6|Q~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|gen_register:11:vff|O~q\);

-- Location: LABCELL_X70_Y5_N48
\read_mux1|v6|v3|v11|Q~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \read_mux1|v6|v3|v11|Q~1_combout\ = ( !\Read1AD[2]~input_o\ & ( (!\Read1AD[1]~input_o\ & (((\reg1|gen_register:11:vff|O~q\ & ((\Read1AD[0]~input_o\)))))) # (\Read1AD[1]~input_o\ & (((!\Read1AD[0]~input_o\ & (\reg2|gen_register:11:vff|O~q\)) # 
-- (\Read1AD[0]~input_o\ & ((\reg3|gen_register:11:vff|O~q\)))))) ) ) # ( \Read1AD[2]~input_o\ & ( (((\read_mux1|v6|v3|v11|Q~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001000100010001000011110000111100001100001111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg2|gen_register:11:vff|ALT_INV_O~q\,
	datab => \ALT_INV_Read1AD[1]~input_o\,
	datac => \read_mux1|v6|v3|v11|ALT_INV_Q~0_combout\,
	datad => \reg3|gen_register:11:vff|ALT_INV_O~q\,
	datae => \ALT_INV_Read1AD[2]~input_o\,
	dataf => \ALT_INV_Read1AD[0]~input_o\,
	datag => \reg1|gen_register:11:vff|ALT_INV_O~q\,
	combout => \read_mux1|v6|v3|v11|Q~1_combout\);

-- Location: IOIBUF_X66_Y0_N41
\Write1[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Write1(12),
	o => \Write1[12]~input_o\);

-- Location: FF_X64_Y4_N17
\reg2|gen_register:12:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Write1[12]~input_o\,
	sload => VCC,
	ena => \v0|v8|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg2|gen_register:12:vff|O~q\);

-- Location: LABCELL_X66_Y4_N24
\reg5|gen_register:12:vff|O~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg5|gen_register:12:vff|O~feeder_combout\ = ( \Write1[12]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Write1[12]~input_o\,
	combout => \reg5|gen_register:12:vff|O~feeder_combout\);

-- Location: FF_X66_Y4_N26
\reg5|gen_register:12:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \reg5|gen_register:12:vff|O~feeder_combout\,
	ena => \v0|v14|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg5|gen_register:12:vff|O~q\);

-- Location: LABCELL_X66_Y4_N15
\reg6|gen_register:12:vff|O~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg6|gen_register:12:vff|O~feeder_combout\ = ( \Write1[12]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Write1[12]~input_o\,
	combout => \reg6|gen_register:12:vff|O~feeder_combout\);

-- Location: FF_X66_Y4_N17
\reg6|gen_register:12:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \reg6|gen_register:12:vff|O~feeder_combout\,
	ena => \v0|v16|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg6|gen_register:12:vff|O~q\);

-- Location: LABCELL_X64_Y4_N51
\reg7|gen_register:12:vff|O~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg7|gen_register:12:vff|O~feeder_combout\ = ( \Write1[12]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Write1[12]~input_o\,
	combout => \reg7|gen_register:12:vff|O~feeder_combout\);

-- Location: FF_X64_Y4_N53
\reg7|gen_register:12:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \reg7|gen_register:12:vff|O~feeder_combout\,
	ena => \v0|v18|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg7|gen_register:12:vff|O~q\);

-- Location: LABCELL_X66_Y4_N18
\reg4|gen_register:12:vff|O~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg4|gen_register:12:vff|O~feeder_combout\ = ( \Write1[12]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Write1[12]~input_o\,
	combout => \reg4|gen_register:12:vff|O~feeder_combout\);

-- Location: FF_X66_Y4_N20
\reg4|gen_register:12:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \reg4|gen_register:12:vff|O~feeder_combout\,
	ena => \v0|v12|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|gen_register:12:vff|O~q\);

-- Location: LABCELL_X66_Y4_N6
\read_mux1|v6|v3|v12|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \read_mux1|v6|v3|v12|Q~0_combout\ = ( \reg7|gen_register:12:vff|O~q\ & ( \reg4|gen_register:12:vff|O~q\ & ( (!\Read1AD[1]~input_o\ & (((!\Read1AD[0]~input_o\)) # (\reg5|gen_register:12:vff|O~q\))) # (\Read1AD[1]~input_o\ & 
-- (((\reg6|gen_register:12:vff|O~q\) # (\Read1AD[0]~input_o\)))) ) ) ) # ( !\reg7|gen_register:12:vff|O~q\ & ( \reg4|gen_register:12:vff|O~q\ & ( (!\Read1AD[1]~input_o\ & (((!\Read1AD[0]~input_o\)) # (\reg5|gen_register:12:vff|O~q\))) # 
-- (\Read1AD[1]~input_o\ & (((!\Read1AD[0]~input_o\ & \reg6|gen_register:12:vff|O~q\)))) ) ) ) # ( \reg7|gen_register:12:vff|O~q\ & ( !\reg4|gen_register:12:vff|O~q\ & ( (!\Read1AD[1]~input_o\ & (\reg5|gen_register:12:vff|O~q\ & (\Read1AD[0]~input_o\))) # 
-- (\Read1AD[1]~input_o\ & (((\reg6|gen_register:12:vff|O~q\) # (\Read1AD[0]~input_o\)))) ) ) ) # ( !\reg7|gen_register:12:vff|O~q\ & ( !\reg4|gen_register:12:vff|O~q\ & ( (!\Read1AD[1]~input_o\ & (\reg5|gen_register:12:vff|O~q\ & (\Read1AD[0]~input_o\))) # 
-- (\Read1AD[1]~input_o\ & (((!\Read1AD[0]~input_o\ & \reg6|gen_register:12:vff|O~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000110100000001110011011111000100111101001100011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg5|gen_register:12:vff|ALT_INV_O~q\,
	datab => \ALT_INV_Read1AD[1]~input_o\,
	datac => \ALT_INV_Read1AD[0]~input_o\,
	datad => \reg6|gen_register:12:vff|ALT_INV_O~q\,
	datae => \reg7|gen_register:12:vff|ALT_INV_O~q\,
	dataf => \reg4|gen_register:12:vff|ALT_INV_O~q\,
	combout => \read_mux1|v6|v3|v12|Q~0_combout\);

-- Location: FF_X64_Y4_N26
\reg3|gen_register:12:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Write1[12]~input_o\,
	sload => VCC,
	ena => \v0|v10|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|gen_register:12:vff|O~q\);

-- Location: LABCELL_X67_Y4_N18
\reg1|gen_register:12:vff|O~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg1|gen_register:12:vff|O~feeder_combout\ = ( \Write1[12]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Write1[12]~input_o\,
	combout => \reg1|gen_register:12:vff|O~feeder_combout\);

-- Location: FF_X67_Y4_N20
\reg1|gen_register:12:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \reg1|gen_register:12:vff|O~feeder_combout\,
	ena => \v0|v6|Q~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|gen_register:12:vff|O~q\);

-- Location: LABCELL_X64_Y4_N24
\read_mux1|v6|v3|v12|Q~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \read_mux1|v6|v3|v12|Q~1_combout\ = ( !\Read1AD[2]~input_o\ & ( (!\Read1AD[1]~input_o\ & (((\reg1|gen_register:12:vff|O~q\ & (\Read1AD[0]~input_o\))))) # (\Read1AD[1]~input_o\ & (((!\Read1AD[0]~input_o\ & (\reg2|gen_register:12:vff|O~q\)) # 
-- (\Read1AD[0]~input_o\ & ((\reg3|gen_register:12:vff|O~q\)))))) ) ) # ( \Read1AD[2]~input_o\ & ( (((\read_mux1|v6|v3|v12|Q~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001000100001010000011110000111100010001010111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Read1AD[1]~input_o\,
	datab => \reg2|gen_register:12:vff|ALT_INV_O~q\,
	datac => \read_mux1|v6|v3|v12|ALT_INV_Q~0_combout\,
	datad => \ALT_INV_Read1AD[0]~input_o\,
	datae => \ALT_INV_Read1AD[2]~input_o\,
	dataf => \reg3|gen_register:12:vff|ALT_INV_O~q\,
	datag => \reg1|gen_register:12:vff|ALT_INV_O~q\,
	combout => \read_mux1|v6|v3|v12|Q~1_combout\);

-- Location: IOIBUF_X56_Y0_N35
\Write1[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Write1(13),
	o => \Write1[13]~input_o\);

-- Location: FF_X64_Y4_N59
\reg7|gen_register:13:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Write1[13]~input_o\,
	sload => VCC,
	ena => \v0|v18|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg7|gen_register:13:vff|O~q\);

-- Location: FF_X63_Y4_N32
\reg6|gen_register:13:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Write1[13]~input_o\,
	sload => VCC,
	ena => \v0|v16|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg6|gen_register:13:vff|O~q\);

-- Location: FF_X66_Y4_N59
\reg5|gen_register:13:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Write1[13]~input_o\,
	sload => VCC,
	ena => \v0|v14|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg5|gen_register:13:vff|O~q\);

-- Location: FF_X66_Y4_N53
\reg4|gen_register:13:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Write1[13]~input_o\,
	sload => VCC,
	ena => \v0|v12|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|gen_register:13:vff|O~q\);

-- Location: LABCELL_X63_Y4_N39
\read_mux1|v6|v3|v13|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \read_mux1|v6|v3|v13|Q~0_combout\ = ( \reg5|gen_register:13:vff|O~q\ & ( \reg4|gen_register:13:vff|O~q\ & ( (!\Read1AD[1]~input_o\) # ((!\Read1AD[0]~input_o\ & ((\reg6|gen_register:13:vff|O~q\))) # (\Read1AD[0]~input_o\ & 
-- (\reg7|gen_register:13:vff|O~q\))) ) ) ) # ( !\reg5|gen_register:13:vff|O~q\ & ( \reg4|gen_register:13:vff|O~q\ & ( (!\Read1AD[0]~input_o\ & (((!\Read1AD[1]~input_o\) # (\reg6|gen_register:13:vff|O~q\)))) # (\Read1AD[0]~input_o\ & 
-- (\reg7|gen_register:13:vff|O~q\ & ((\Read1AD[1]~input_o\)))) ) ) ) # ( \reg5|gen_register:13:vff|O~q\ & ( !\reg4|gen_register:13:vff|O~q\ & ( (!\Read1AD[0]~input_o\ & (((\reg6|gen_register:13:vff|O~q\ & \Read1AD[1]~input_o\)))) # (\Read1AD[0]~input_o\ & 
-- (((!\Read1AD[1]~input_o\)) # (\reg7|gen_register:13:vff|O~q\))) ) ) ) # ( !\reg5|gen_register:13:vff|O~q\ & ( !\reg4|gen_register:13:vff|O~q\ & ( (\Read1AD[1]~input_o\ & ((!\Read1AD[0]~input_o\ & ((\reg6|gen_register:13:vff|O~q\))) # (\Read1AD[0]~input_o\ 
-- & (\reg7|gen_register:13:vff|O~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110101000011110011010111110000001101011111111100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg7|gen_register:13:vff|ALT_INV_O~q\,
	datab => \reg6|gen_register:13:vff|ALT_INV_O~q\,
	datac => \ALT_INV_Read1AD[0]~input_o\,
	datad => \ALT_INV_Read1AD[1]~input_o\,
	datae => \reg5|gen_register:13:vff|ALT_INV_O~q\,
	dataf => \reg4|gen_register:13:vff|ALT_INV_O~q\,
	combout => \read_mux1|v6|v3|v13|Q~0_combout\);

-- Location: FF_X64_Y4_N14
\reg2|gen_register:13:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Write1[13]~input_o\,
	sload => VCC,
	ena => \v0|v8|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg2|gen_register:13:vff|O~q\);

-- Location: FF_X64_Y4_N20
\reg3|gen_register:13:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Write1[13]~input_o\,
	sload => VCC,
	ena => \v0|v10|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|gen_register:13:vff|O~q\);

-- Location: FF_X63_Y4_N17
\reg1|gen_register:13:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Write1[13]~input_o\,
	sload => VCC,
	ena => \v0|v6|Q~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|gen_register:13:vff|O~q\);

-- Location: LABCELL_X64_Y4_N18
\read_mux1|v6|v3|v13|Q~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \read_mux1|v6|v3|v13|Q~1_combout\ = ( !\Read1AD[2]~input_o\ & ( (!\Read1AD[1]~input_o\ & (\Read1AD[0]~input_o\ & (\reg1|gen_register:13:vff|O~q\))) # (\Read1AD[1]~input_o\ & ((!\Read1AD[0]~input_o\ & (((\reg2|gen_register:13:vff|O~q\)))) # 
-- (\Read1AD[0]~input_o\ & (((\reg3|gen_register:13:vff|O~q\)))))) ) ) # ( \Read1AD[2]~input_o\ & ( (((\read_mux1|v6|v3|v13|Q~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001001000110000011110000111100010011010101110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Read1AD[1]~input_o\,
	datab => \ALT_INV_Read1AD[0]~input_o\,
	datac => \read_mux1|v6|v3|v13|ALT_INV_Q~0_combout\,
	datad => \reg2|gen_register:13:vff|ALT_INV_O~q\,
	datae => \ALT_INV_Read1AD[2]~input_o\,
	dataf => \reg3|gen_register:13:vff|ALT_INV_O~q\,
	datag => \reg1|gen_register:13:vff|ALT_INV_O~q\,
	combout => \read_mux1|v6|v3|v13|Q~1_combout\);

-- Location: IOIBUF_X89_Y4_N61
\Write1[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Write1(14),
	o => \Write1[14]~input_o\);

-- Location: LABCELL_X67_Y4_N24
\reg6|gen_register:14:vff|O~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg6|gen_register:14:vff|O~feeder_combout\ = ( \Write1[14]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Write1[14]~input_o\,
	combout => \reg6|gen_register:14:vff|O~feeder_combout\);

-- Location: FF_X67_Y4_N26
\reg6|gen_register:14:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \reg6|gen_register:14:vff|O~feeder_combout\,
	ena => \v0|v16|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg6|gen_register:14:vff|O~q\);

-- Location: FF_X66_Y4_N50
\reg4|gen_register:14:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Write1[14]~input_o\,
	sload => VCC,
	ena => \v0|v12|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|gen_register:14:vff|O~q\);

-- Location: FF_X66_Y4_N56
\reg5|gen_register:14:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Write1[14]~input_o\,
	sload => VCC,
	ena => \v0|v14|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg5|gen_register:14:vff|O~q\);

-- Location: FF_X70_Y4_N59
\reg7|gen_register:14:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Write1[14]~input_o\,
	sload => VCC,
	ena => \v0|v18|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg7|gen_register:14:vff|O~q\);

-- Location: LABCELL_X67_Y4_N0
\read_mux1|v6|v3|v14|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \read_mux1|v6|v3|v14|Q~0_combout\ = ( \Read1AD[1]~input_o\ & ( \reg7|gen_register:14:vff|O~q\ & ( (\Read1AD[0]~input_o\) # (\reg6|gen_register:14:vff|O~q\) ) ) ) # ( !\Read1AD[1]~input_o\ & ( \reg7|gen_register:14:vff|O~q\ & ( (!\Read1AD[0]~input_o\ & 
-- (\reg4|gen_register:14:vff|O~q\)) # (\Read1AD[0]~input_o\ & ((\reg5|gen_register:14:vff|O~q\))) ) ) ) # ( \Read1AD[1]~input_o\ & ( !\reg7|gen_register:14:vff|O~q\ & ( (\reg6|gen_register:14:vff|O~q\ & !\Read1AD[0]~input_o\) ) ) ) # ( !\Read1AD[1]~input_o\ 
-- & ( !\reg7|gen_register:14:vff|O~q\ & ( (!\Read1AD[0]~input_o\ & (\reg4|gen_register:14:vff|O~q\)) # (\Read1AD[0]~input_o\ & ((\reg5|gen_register:14:vff|O~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111111010001000100010000001100001111110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg6|gen_register:14:vff|ALT_INV_O~q\,
	datab => \ALT_INV_Read1AD[0]~input_o\,
	datac => \reg4|gen_register:14:vff|ALT_INV_O~q\,
	datad => \reg5|gen_register:14:vff|ALT_INV_O~q\,
	datae => \ALT_INV_Read1AD[1]~input_o\,
	dataf => \reg7|gen_register:14:vff|ALT_INV_O~q\,
	combout => \read_mux1|v6|v3|v14|Q~0_combout\);

-- Location: FF_X70_Y4_N14
\reg2|gen_register:14:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Write1[14]~input_o\,
	sload => VCC,
	ena => \v0|v8|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg2|gen_register:14:vff|O~q\);

-- Location: FF_X70_Y4_N50
\reg3|gen_register:14:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Write1[14]~input_o\,
	sload => VCC,
	ena => \v0|v10|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|gen_register:14:vff|O~q\);

-- Location: LABCELL_X67_Y4_N6
\reg1|gen_register:14:vff|O~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg1|gen_register:14:vff|O~feeder_combout\ = ( \Write1[14]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Write1[14]~input_o\,
	combout => \reg1|gen_register:14:vff|O~feeder_combout\);

-- Location: FF_X67_Y4_N8
\reg1|gen_register:14:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \reg1|gen_register:14:vff|O~feeder_combout\,
	ena => \v0|v6|Q~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|gen_register:14:vff|O~q\);

-- Location: LABCELL_X70_Y4_N48
\read_mux1|v6|v3|v14|Q~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \read_mux1|v6|v3|v14|Q~1_combout\ = ( !\Read1AD[2]~input_o\ & ( (!\Read1AD[0]~input_o\ & (\Read1AD[1]~input_o\ & (((\reg2|gen_register:14:vff|O~q\))))) # (\Read1AD[0]~input_o\ & ((!\Read1AD[1]~input_o\ & (\reg1|gen_register:14:vff|O~q\)) # 
-- (\Read1AD[1]~input_o\ & (((\reg3|gen_register:14:vff|O~q\)))))) ) ) # ( \Read1AD[2]~input_o\ & ( (((\read_mux1|v6|v3|v14|Q~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000010000100110000011110000111100010101001101110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Read1AD[0]~input_o\,
	datab => \ALT_INV_Read1AD[1]~input_o\,
	datac => \read_mux1|v6|v3|v14|ALT_INV_Q~0_combout\,
	datad => \reg2|gen_register:14:vff|ALT_INV_O~q\,
	datae => \ALT_INV_Read1AD[2]~input_o\,
	dataf => \reg3|gen_register:14:vff|ALT_INV_O~q\,
	datag => \reg1|gen_register:14:vff|ALT_INV_O~q\,
	combout => \read_mux1|v6|v3|v14|Q~1_combout\);

-- Location: IOIBUF_X89_Y8_N21
\Write1[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Write1(15),
	o => \Write1[15]~input_o\);

-- Location: LABCELL_X70_Y5_N54
\reg3|gen_register:15:vff|O~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg3|gen_register:15:vff|O~feeder_combout\ = ( \Write1[15]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Write1[15]~input_o\,
	combout => \reg3|gen_register:15:vff|O~feeder_combout\);

-- Location: FF_X70_Y5_N56
\reg3|gen_register:15:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \reg3|gen_register:15:vff|O~feeder_combout\,
	ena => \v0|v10|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|gen_register:15:vff|O~q\);

-- Location: LABCELL_X67_Y5_N48
\reg4|gen_register:15:vff|O~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg4|gen_register:15:vff|O~feeder_combout\ = ( \Write1[15]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Write1[15]~input_o\,
	combout => \reg4|gen_register:15:vff|O~feeder_combout\);

-- Location: FF_X67_Y5_N50
\reg4|gen_register:15:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \reg4|gen_register:15:vff|O~feeder_combout\,
	ena => \v0|v12|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|gen_register:15:vff|O~q\);

-- Location: LABCELL_X70_Y5_N12
\reg7|gen_register:15:vff|O~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg7|gen_register:15:vff|O~feeder_combout\ = ( \Write1[15]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Write1[15]~input_o\,
	combout => \reg7|gen_register:15:vff|O~feeder_combout\);

-- Location: FF_X70_Y5_N14
\reg7|gen_register:15:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \reg7|gen_register:15:vff|O~feeder_combout\,
	ena => \v0|v18|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg7|gen_register:15:vff|O~q\);

-- Location: LABCELL_X67_Y5_N24
\reg5|gen_register:15:vff|O~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg5|gen_register:15:vff|O~feeder_combout\ = ( \Write1[15]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Write1[15]~input_o\,
	combout => \reg5|gen_register:15:vff|O~feeder_combout\);

-- Location: FF_X67_Y5_N26
\reg5|gen_register:15:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \reg5|gen_register:15:vff|O~feeder_combout\,
	ena => \v0|v14|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg5|gen_register:15:vff|O~q\);

-- Location: LABCELL_X71_Y5_N30
\reg6|gen_register:15:vff|O~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg6|gen_register:15:vff|O~feeder_combout\ = ( \Write1[15]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Write1[15]~input_o\,
	combout => \reg6|gen_register:15:vff|O~feeder_combout\);

-- Location: FF_X71_Y5_N32
\reg6|gen_register:15:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \reg6|gen_register:15:vff|O~feeder_combout\,
	ena => \v0|v16|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg6|gen_register:15:vff|O~q\);

-- Location: LABCELL_X71_Y5_N9
\read_mux1|v6|v3|v15|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \read_mux1|v6|v3|v15|Q~0_combout\ = ( \reg5|gen_register:15:vff|O~q\ & ( \reg6|gen_register:15:vff|O~q\ & ( (!\Read1AD[0]~input_o\ & (((\Read1AD[1]~input_o\)) # (\reg4|gen_register:15:vff|O~q\))) # (\Read1AD[0]~input_o\ & (((!\Read1AD[1]~input_o\) # 
-- (\reg7|gen_register:15:vff|O~q\)))) ) ) ) # ( !\reg5|gen_register:15:vff|O~q\ & ( \reg6|gen_register:15:vff|O~q\ & ( (!\Read1AD[0]~input_o\ & (((\Read1AD[1]~input_o\)) # (\reg4|gen_register:15:vff|O~q\))) # (\Read1AD[0]~input_o\ & (((\Read1AD[1]~input_o\ 
-- & \reg7|gen_register:15:vff|O~q\)))) ) ) ) # ( \reg5|gen_register:15:vff|O~q\ & ( !\reg6|gen_register:15:vff|O~q\ & ( (!\Read1AD[0]~input_o\ & (\reg4|gen_register:15:vff|O~q\ & (!\Read1AD[1]~input_o\))) # (\Read1AD[0]~input_o\ & (((!\Read1AD[1]~input_o\) 
-- # (\reg7|gen_register:15:vff|O~q\)))) ) ) ) # ( !\reg5|gen_register:15:vff|O~q\ & ( !\reg6|gen_register:15:vff|O~q\ & ( (!\Read1AD[0]~input_o\ & (\reg4|gen_register:15:vff|O~q\ & (!\Read1AD[1]~input_o\))) # (\Read1AD[0]~input_o\ & (((\Read1AD[1]~input_o\ 
-- & \reg7|gen_register:15:vff|O~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100101011100000111010100101010001011110111101001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Read1AD[0]~input_o\,
	datab => \reg4|gen_register:15:vff|ALT_INV_O~q\,
	datac => \ALT_INV_Read1AD[1]~input_o\,
	datad => \reg7|gen_register:15:vff|ALT_INV_O~q\,
	datae => \reg5|gen_register:15:vff|ALT_INV_O~q\,
	dataf => \reg6|gen_register:15:vff|ALT_INV_O~q\,
	combout => \read_mux1|v6|v3|v15|Q~0_combout\);

-- Location: FF_X70_Y5_N20
\reg2|gen_register:15:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Write1[15]~input_o\,
	sload => VCC,
	ena => \v0|v8|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg2|gen_register:15:vff|O~q\);

-- Location: LABCELL_X67_Y5_N30
\reg1|gen_register:15:vff|O~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg1|gen_register:15:vff|O~feeder_combout\ = ( \Write1[15]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Write1[15]~input_o\,
	combout => \reg1|gen_register:15:vff|O~feeder_combout\);

-- Location: FF_X67_Y5_N32
\reg1|gen_register:15:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \reg1|gen_register:15:vff|O~feeder_combout\,
	ena => \v0|v6|Q~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|gen_register:15:vff|O~q\);

-- Location: LABCELL_X70_Y5_N42
\read_mux1|v6|v3|v15|Q~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \read_mux1|v6|v3|v15|Q~1_combout\ = ( !\Read1AD[2]~input_o\ & ( (!\Read1AD[1]~input_o\ & (((\reg1|gen_register:15:vff|O~q\ & (\Read1AD[0]~input_o\))))) # (\Read1AD[1]~input_o\ & (((!\Read1AD[0]~input_o\ & ((\reg2|gen_register:15:vff|O~q\))) # 
-- (\Read1AD[0]~input_o\ & (\reg3|gen_register:15:vff|O~q\))))) ) ) # ( \Read1AD[2]~input_o\ & ( (((\read_mux1|v6|v3|v15|Q~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000011101000011110000111100110011000111010000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg3|gen_register:15:vff|ALT_INV_O~q\,
	datab => \ALT_INV_Read1AD[1]~input_o\,
	datac => \read_mux1|v6|v3|v15|ALT_INV_Q~0_combout\,
	datad => \ALT_INV_Read1AD[0]~input_o\,
	datae => \ALT_INV_Read1AD[2]~input_o\,
	dataf => \reg2|gen_register:15:vff|ALT_INV_O~q\,
	datag => \reg1|gen_register:15:vff|ALT_INV_O~q\,
	combout => \read_mux1|v6|v3|v15|Q~1_combout\);

-- Location: IOIBUF_X54_Y0_N35
\Read2AD[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Read2AD(1),
	o => \Read2AD[1]~input_o\);

-- Location: IOIBUF_X58_Y0_N92
\Read2AD[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Read2AD(0),
	o => \Read2AD[0]~input_o\);

-- Location: LABCELL_X40_Y4_N54
\read_mux2|v6|v3|v0|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \read_mux2|v6|v3|v0|Q~0_combout\ = ( \reg5|gen_register:0:vff|O~q\ & ( \Read2AD[1]~input_o\ & ( (!\Read2AD[0]~input_o\ & (\reg6|gen_register:0:vff|O~q\)) # (\Read2AD[0]~input_o\ & ((\reg7|gen_register:0:vff|O~q\))) ) ) ) # ( !\reg5|gen_register:0:vff|O~q\ 
-- & ( \Read2AD[1]~input_o\ & ( (!\Read2AD[0]~input_o\ & (\reg6|gen_register:0:vff|O~q\)) # (\Read2AD[0]~input_o\ & ((\reg7|gen_register:0:vff|O~q\))) ) ) ) # ( \reg5|gen_register:0:vff|O~q\ & ( !\Read2AD[1]~input_o\ & ( (\reg4|gen_register:0:vff|O~q\) # 
-- (\Read2AD[0]~input_o\) ) ) ) # ( !\reg5|gen_register:0:vff|O~q\ & ( !\Read2AD[1]~input_o\ & ( (!\Read2AD[0]~input_o\ & \reg4|gen_register:0:vff|O~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010011101110111011100001010010111110000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Read2AD[0]~input_o\,
	datab => \reg4|gen_register:0:vff|ALT_INV_O~q\,
	datac => \reg6|gen_register:0:vff|ALT_INV_O~q\,
	datad => \reg7|gen_register:0:vff|ALT_INV_O~q\,
	datae => \reg5|gen_register:0:vff|ALT_INV_O~q\,
	dataf => \ALT_INV_Read2AD[1]~input_o\,
	combout => \read_mux2|v6|v3|v0|Q~0_combout\);

-- Location: IOIBUF_X58_Y0_N75
\Read2AD[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Read2AD(2),
	o => \Read2AD[2]~input_o\);

-- Location: LABCELL_X37_Y4_N48
\read_mux2|v6|v3|v0|Q~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \read_mux2|v6|v3|v0|Q~1_combout\ = ( !\Read2AD[2]~input_o\ & ( (!\Read2AD[1]~input_o\ & (((\reg1|gen_register:0:vff|O~q\ & ((\Read2AD[0]~input_o\)))))) # (\Read2AD[1]~input_o\ & (((!\Read2AD[0]~input_o\ & ((\reg2|gen_register:0:vff|O~q\))) # 
-- (\Read2AD[0]~input_o\ & (\reg3|gen_register:0:vff|O~q\))))) ) ) # ( \Read2AD[2]~input_o\ & ( (((\read_mux2|v6|v3|v0|Q~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000001010101000011110000111100011011000110110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Read2AD[1]~input_o\,
	datab => \reg3|gen_register:0:vff|ALT_INV_O~q\,
	datac => \read_mux2|v6|v3|v0|ALT_INV_Q~0_combout\,
	datad => \reg2|gen_register:0:vff|ALT_INV_O~q\,
	datae => \ALT_INV_Read2AD[2]~input_o\,
	dataf => \ALT_INV_Read2AD[0]~input_o\,
	datag => \reg1|gen_register:0:vff|ALT_INV_O~q\,
	combout => \read_mux2|v6|v3|v0|Q~1_combout\);

-- Location: LABCELL_X40_Y4_N45
\read_mux2|v6|v3|v1|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \read_mux2|v6|v3|v1|Q~0_combout\ = ( \reg7|gen_register:1:vff|O~q\ & ( \Read2AD[0]~input_o\ & ( (\reg5|gen_register:1:vff|O~q\) # (\Read2AD[1]~input_o\) ) ) ) # ( !\reg7|gen_register:1:vff|O~q\ & ( \Read2AD[0]~input_o\ & ( (!\Read2AD[1]~input_o\ & 
-- \reg5|gen_register:1:vff|O~q\) ) ) ) # ( \reg7|gen_register:1:vff|O~q\ & ( !\Read2AD[0]~input_o\ & ( (!\Read2AD[1]~input_o\ & ((\reg4|gen_register:1:vff|O~q\))) # (\Read2AD[1]~input_o\ & (\reg6|gen_register:1:vff|O~q\)) ) ) ) # ( 
-- !\reg7|gen_register:1:vff|O~q\ & ( !\Read2AD[0]~input_o\ & ( (!\Read2AD[1]~input_o\ & ((\reg4|gen_register:1:vff|O~q\))) # (\Read2AD[1]~input_o\ & (\reg6|gen_register:1:vff|O~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111011101000100011101110100001100000011000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg6|gen_register:1:vff|ALT_INV_O~q\,
	datab => \ALT_INV_Read2AD[1]~input_o\,
	datac => \reg5|gen_register:1:vff|ALT_INV_O~q\,
	datad => \reg4|gen_register:1:vff|ALT_INV_O~q\,
	datae => \reg7|gen_register:1:vff|ALT_INV_O~q\,
	dataf => \ALT_INV_Read2AD[0]~input_o\,
	combout => \read_mux2|v6|v3|v1|Q~0_combout\);

-- Location: LABCELL_X37_Y4_N42
\read_mux2|v6|v3|v1|Q~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \read_mux2|v6|v3|v1|Q~1_combout\ = ( !\Read2AD[2]~input_o\ & ( (!\Read2AD[1]~input_o\ & (((\reg1|gen_register:1:vff|O~q\ & ((\Read2AD[0]~input_o\)))))) # (\Read2AD[1]~input_o\ & (((!\Read2AD[0]~input_o\ & (\reg2|gen_register:1:vff|O~q\)) # 
-- (\Read2AD[0]~input_o\ & ((\reg3|gen_register:1:vff|O~q\)))))) ) ) # ( \Read2AD[2]~input_o\ & ( (((\read_mux2|v6|v3|v1|Q~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001000100010001000011110000111100001010010111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Read2AD[1]~input_o\,
	datab => \reg2|gen_register:1:vff|ALT_INV_O~q\,
	datac => \read_mux2|v6|v3|v1|ALT_INV_Q~0_combout\,
	datad => \reg3|gen_register:1:vff|ALT_INV_O~q\,
	datae => \ALT_INV_Read2AD[2]~input_o\,
	dataf => \ALT_INV_Read2AD[0]~input_o\,
	datag => \reg1|gen_register:1:vff|ALT_INV_O~q\,
	combout => \read_mux2|v6|v3|v1|Q~1_combout\);

-- Location: LABCELL_X70_Y4_N54
\read_mux2|v6|v3|v2|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \read_mux2|v6|v3|v2|Q~0_combout\ = ( \reg5|gen_register:2:vff|O~q\ & ( \Read2AD[1]~input_o\ & ( (!\Read2AD[0]~input_o\ & (\reg6|gen_register:2:vff|O~q\)) # (\Read2AD[0]~input_o\ & ((\reg7|gen_register:2:vff|O~q\))) ) ) ) # ( !\reg5|gen_register:2:vff|O~q\ 
-- & ( \Read2AD[1]~input_o\ & ( (!\Read2AD[0]~input_o\ & (\reg6|gen_register:2:vff|O~q\)) # (\Read2AD[0]~input_o\ & ((\reg7|gen_register:2:vff|O~q\))) ) ) ) # ( \reg5|gen_register:2:vff|O~q\ & ( !\Read2AD[1]~input_o\ & ( (\reg4|gen_register:2:vff|O~q\) # 
-- (\Read2AD[0]~input_o\) ) ) ) # ( !\reg5|gen_register:2:vff|O~q\ & ( !\Read2AD[1]~input_o\ & ( (!\Read2AD[0]~input_o\ & \reg4|gen_register:2:vff|O~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010011101110111011100001010010111110000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Read2AD[0]~input_o\,
	datab => \reg4|gen_register:2:vff|ALT_INV_O~q\,
	datac => \reg6|gen_register:2:vff|ALT_INV_O~q\,
	datad => \reg7|gen_register:2:vff|ALT_INV_O~q\,
	datae => \reg5|gen_register:2:vff|ALT_INV_O~q\,
	dataf => \ALT_INV_Read2AD[1]~input_o\,
	combout => \read_mux2|v6|v3|v2|Q~0_combout\);

-- Location: LABCELL_X70_Y4_N42
\read_mux2|v6|v3|v2|Q~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \read_mux2|v6|v3|v2|Q~1_combout\ = ( !\Read2AD[2]~input_o\ & ( (!\Read2AD[0]~input_o\ & (\reg2|gen_register:2:vff|O~q\ & (((\Read2AD[1]~input_o\))))) # (\Read2AD[0]~input_o\ & (((!\Read2AD[1]~input_o\ & (\reg1|gen_register:2:vff|O~q\)) # 
-- (\Read2AD[1]~input_o\ & ((\reg3|gen_register:2:vff|O~q\)))))) ) ) # ( \Read2AD[2]~input_o\ & ( (((\read_mux2|v6|v3|v2|Q~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000010100000101000011110000111100100010011101110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Read2AD[0]~input_o\,
	datab => \reg2|gen_register:2:vff|ALT_INV_O~q\,
	datac => \read_mux2|v6|v3|v2|ALT_INV_Q~0_combout\,
	datad => \reg3|gen_register:2:vff|ALT_INV_O~q\,
	datae => \ALT_INV_Read2AD[2]~input_o\,
	dataf => \ALT_INV_Read2AD[1]~input_o\,
	datag => \reg1|gen_register:2:vff|ALT_INV_O~q\,
	combout => \read_mux2|v6|v3|v2|Q~1_combout\);

-- Location: LABCELL_X48_Y4_N27
\read_mux2|v6|v3|v3|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \read_mux2|v6|v3|v3|Q~0_combout\ = ( \Read2AD[0]~input_o\ & ( \reg6|gen_register:3:vff|O~q\ & ( (!\Read2AD[1]~input_o\ & (\reg5|gen_register:3:vff|O~q\)) # (\Read2AD[1]~input_o\ & ((\reg7|gen_register:3:vff|O~q\))) ) ) ) # ( !\Read2AD[0]~input_o\ & ( 
-- \reg6|gen_register:3:vff|O~q\ & ( (\reg4|gen_register:3:vff|O~q\) # (\Read2AD[1]~input_o\) ) ) ) # ( \Read2AD[0]~input_o\ & ( !\reg6|gen_register:3:vff|O~q\ & ( (!\Read2AD[1]~input_o\ & (\reg5|gen_register:3:vff|O~q\)) # (\Read2AD[1]~input_o\ & 
-- ((\reg7|gen_register:3:vff|O~q\))) ) ) ) # ( !\Read2AD[0]~input_o\ & ( !\reg6|gen_register:3:vff|O~q\ & ( (!\Read2AD[1]~input_o\ & \reg4|gen_register:3:vff|O~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010001001110010011101010101111111110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Read2AD[1]~input_o\,
	datab => \reg5|gen_register:3:vff|ALT_INV_O~q\,
	datac => \reg7|gen_register:3:vff|ALT_INV_O~q\,
	datad => \reg4|gen_register:3:vff|ALT_INV_O~q\,
	datae => \ALT_INV_Read2AD[0]~input_o\,
	dataf => \reg6|gen_register:3:vff|ALT_INV_O~q\,
	combout => \read_mux2|v6|v3|v3|Q~0_combout\);

-- Location: MLABCELL_X47_Y4_N36
\read_mux2|v6|v3|v3|Q~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \read_mux2|v6|v3|v3|Q~1_combout\ = ( !\Read2AD[2]~input_o\ & ( (!\Read2AD[1]~input_o\ & ((((\reg1|gen_register:3:vff|O~q\ & \Read2AD[0]~input_o\))))) # (\Read2AD[1]~input_o\ & (((!\Read2AD[0]~input_o\ & ((\reg2|gen_register:3:vff|O~q\))) # 
-- (\Read2AD[0]~input_o\ & (\reg3|gen_register:3:vff|O~q\))))) ) ) # ( \Read2AD[2]~input_o\ & ( (((\read_mux2|v6|v3|v3|Q~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000110011000011110000111100001111010101010000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg3|gen_register:3:vff|ALT_INV_O~q\,
	datab => \reg2|gen_register:3:vff|ALT_INV_O~q\,
	datac => \read_mux2|v6|v3|v3|ALT_INV_Q~0_combout\,
	datad => \ALT_INV_Read2AD[1]~input_o\,
	datae => \ALT_INV_Read2AD[2]~input_o\,
	dataf => \ALT_INV_Read2AD[0]~input_o\,
	datag => \reg1|gen_register:3:vff|ALT_INV_O~q\,
	combout => \read_mux2|v6|v3|v3|Q~1_combout\);

-- Location: LABCELL_X70_Y4_N9
\read_mux2|v6|v3|v4|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \read_mux2|v6|v3|v4|Q~0_combout\ = ( \reg7|gen_register:4:vff|O~q\ & ( \reg4|gen_register:4:vff|O~q\ & ( (!\Read2AD[1]~input_o\ & (((!\Read2AD[0]~input_o\)) # (\reg5|gen_register:4:vff|O~q\))) # (\Read2AD[1]~input_o\ & (((\Read2AD[0]~input_o\) # 
-- (\reg6|gen_register:4:vff|O~q\)))) ) ) ) # ( !\reg7|gen_register:4:vff|O~q\ & ( \reg4|gen_register:4:vff|O~q\ & ( (!\Read2AD[1]~input_o\ & (((!\Read2AD[0]~input_o\)) # (\reg5|gen_register:4:vff|O~q\))) # (\Read2AD[1]~input_o\ & 
-- (((\reg6|gen_register:4:vff|O~q\ & !\Read2AD[0]~input_o\)))) ) ) ) # ( \reg7|gen_register:4:vff|O~q\ & ( !\reg4|gen_register:4:vff|O~q\ & ( (!\Read2AD[1]~input_o\ & (\reg5|gen_register:4:vff|O~q\ & ((\Read2AD[0]~input_o\)))) # (\Read2AD[1]~input_o\ & 
-- (((\Read2AD[0]~input_o\) # (\reg6|gen_register:4:vff|O~q\)))) ) ) ) # ( !\reg7|gen_register:4:vff|O~q\ & ( !\reg4|gen_register:4:vff|O~q\ & ( (!\Read2AD[1]~input_o\ & (\reg5|gen_register:4:vff|O~q\ & ((\Read2AD[0]~input_o\)))) # (\Read2AD[1]~input_o\ & 
-- (((\reg6|gen_register:4:vff|O~q\ & !\Read2AD[0]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100100010000001010111011110101111001000101010111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Read2AD[1]~input_o\,
	datab => \reg5|gen_register:4:vff|ALT_INV_O~q\,
	datac => \reg6|gen_register:4:vff|ALT_INV_O~q\,
	datad => \ALT_INV_Read2AD[0]~input_o\,
	datae => \reg7|gen_register:4:vff|ALT_INV_O~q\,
	dataf => \reg4|gen_register:4:vff|ALT_INV_O~q\,
	combout => \read_mux2|v6|v3|v4|Q~0_combout\);

-- Location: LABCELL_X70_Y4_N36
\read_mux2|v6|v3|v4|Q~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \read_mux2|v6|v3|v4|Q~1_combout\ = ( !\Read2AD[2]~input_o\ & ( (!\Read2AD[1]~input_o\ & (((\reg1|gen_register:4:vff|O~q\ & (\Read2AD[0]~input_o\))))) # (\Read2AD[1]~input_o\ & (((!\Read2AD[0]~input_o\ & (\reg2|gen_register:4:vff|O~q\)) # 
-- (\Read2AD[0]~input_o\ & ((\reg3|gen_register:4:vff|O~q\)))))) ) ) # ( \Read2AD[2]~input_o\ & ( (((\read_mux2|v6|v3|v4|Q~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001000100001010000011110000111100010001010111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Read2AD[1]~input_o\,
	datab => \reg2|gen_register:4:vff|ALT_INV_O~q\,
	datac => \read_mux2|v6|v3|v4|ALT_INV_Q~0_combout\,
	datad => \ALT_INV_Read2AD[0]~input_o\,
	datae => \ALT_INV_Read2AD[2]~input_o\,
	dataf => \reg3|gen_register:4:vff|ALT_INV_O~q\,
	datag => \reg1|gen_register:4:vff|ALT_INV_O~q\,
	combout => \read_mux2|v6|v3|v4|Q~1_combout\);

-- Location: LABCELL_X40_Y4_N48
\read_mux2|v6|v3|v5|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \read_mux2|v6|v3|v5|Q~0_combout\ = ( \reg4|gen_register:5:vff|O~q\ & ( \Read2AD[0]~input_o\ & ( (!\Read2AD[1]~input_o\ & (\reg5|gen_register:5:vff|O~q\)) # (\Read2AD[1]~input_o\ & ((\reg7|gen_register:5:vff|O~q\))) ) ) ) # ( !\reg4|gen_register:5:vff|O~q\ 
-- & ( \Read2AD[0]~input_o\ & ( (!\Read2AD[1]~input_o\ & (\reg5|gen_register:5:vff|O~q\)) # (\Read2AD[1]~input_o\ & ((\reg7|gen_register:5:vff|O~q\))) ) ) ) # ( \reg4|gen_register:5:vff|O~q\ & ( !\Read2AD[0]~input_o\ & ( (!\Read2AD[1]~input_o\) # 
-- (\reg6|gen_register:5:vff|O~q\) ) ) ) # ( !\reg4|gen_register:5:vff|O~q\ & ( !\Read2AD[0]~input_o\ & ( (\reg6|gen_register:5:vff|O~q\ & \Read2AD[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111111111110000111101010101001100110101010100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg5|gen_register:5:vff|ALT_INV_O~q\,
	datab => \reg7|gen_register:5:vff|ALT_INV_O~q\,
	datac => \reg6|gen_register:5:vff|ALT_INV_O~q\,
	datad => \ALT_INV_Read2AD[1]~input_o\,
	datae => \reg4|gen_register:5:vff|ALT_INV_O~q\,
	dataf => \ALT_INV_Read2AD[0]~input_o\,
	combout => \read_mux2|v6|v3|v5|Q~0_combout\);

-- Location: LABCELL_X37_Y4_N36
\read_mux2|v6|v3|v5|Q~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \read_mux2|v6|v3|v5|Q~1_combout\ = ( !\Read2AD[2]~input_o\ & ( (!\Read2AD[1]~input_o\ & (((\reg1|gen_register:5:vff|O~q\ & ((\Read2AD[0]~input_o\)))))) # (\Read2AD[1]~input_o\ & (((!\Read2AD[0]~input_o\ & ((\reg2|gen_register:5:vff|O~q\))) # 
-- (\Read2AD[0]~input_o\ & (\reg3|gen_register:5:vff|O~q\))))) ) ) # ( \Read2AD[2]~input_o\ & ( (((\read_mux2|v6|v3|v5|Q~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000001010101000011110000111100011011000110110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Read2AD[1]~input_o\,
	datab => \reg3|gen_register:5:vff|ALT_INV_O~q\,
	datac => \read_mux2|v6|v3|v5|ALT_INV_Q~0_combout\,
	datad => \reg2|gen_register:5:vff|ALT_INV_O~q\,
	datae => \ALT_INV_Read2AD[2]~input_o\,
	dataf => \ALT_INV_Read2AD[0]~input_o\,
	datag => \reg1|gen_register:5:vff|ALT_INV_O~q\,
	combout => \read_mux2|v6|v3|v5|Q~1_combout\);

-- Location: LABCELL_X64_Y4_N54
\read_mux2|v6|v3|v6|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \read_mux2|v6|v3|v6|Q~0_combout\ = ( \Read2AD[1]~input_o\ & ( \reg6|gen_register:6:vff|O~q\ & ( (!\Read2AD[0]~input_o\) # (\reg7|gen_register:6:vff|O~q\) ) ) ) # ( !\Read2AD[1]~input_o\ & ( \reg6|gen_register:6:vff|O~q\ & ( (!\Read2AD[0]~input_o\ & 
-- (\reg4|gen_register:6:vff|O~q\)) # (\Read2AD[0]~input_o\ & ((\reg5|gen_register:6:vff|O~q\))) ) ) ) # ( \Read2AD[1]~input_o\ & ( !\reg6|gen_register:6:vff|O~q\ & ( (\reg7|gen_register:6:vff|O~q\ & \Read2AD[0]~input_o\) ) ) ) # ( !\Read2AD[1]~input_o\ & ( 
-- !\reg6|gen_register:6:vff|O~q\ & ( (!\Read2AD[0]~input_o\ & (\reg4|gen_register:6:vff|O~q\)) # (\Read2AD[0]~input_o\ & ((\reg5|gen_register:6:vff|O~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111000000110000001101010000010111111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg4|gen_register:6:vff|ALT_INV_O~q\,
	datab => \reg7|gen_register:6:vff|ALT_INV_O~q\,
	datac => \ALT_INV_Read2AD[0]~input_o\,
	datad => \reg5|gen_register:6:vff|ALT_INV_O~q\,
	datae => \ALT_INV_Read2AD[1]~input_o\,
	dataf => \reg6|gen_register:6:vff|ALT_INV_O~q\,
	combout => \read_mux2|v6|v3|v6|Q~0_combout\);

-- Location: LABCELL_X64_Y4_N42
\read_mux2|v6|v3|v6|Q~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \read_mux2|v6|v3|v6|Q~1_combout\ = ( !\Read2AD[2]~input_o\ & ( (!\Read2AD[0]~input_o\ & (\Read2AD[1]~input_o\ & (((\reg2|gen_register:6:vff|O~q\))))) # (\Read2AD[0]~input_o\ & ((!\Read2AD[1]~input_o\ & (\reg1|gen_register:6:vff|O~q\)) # 
-- (\Read2AD[1]~input_o\ & (((\reg3|gen_register:6:vff|O~q\)))))) ) ) # ( \Read2AD[2]~input_o\ & ( (((\read_mux2|v6|v3|v6|Q~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000010000100110000011110000111100010101001101110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Read2AD[0]~input_o\,
	datab => \ALT_INV_Read2AD[1]~input_o\,
	datac => \read_mux2|v6|v3|v6|ALT_INV_Q~0_combout\,
	datad => \reg2|gen_register:6:vff|ALT_INV_O~q\,
	datae => \ALT_INV_Read2AD[2]~input_o\,
	dataf => \reg3|gen_register:6:vff|ALT_INV_O~q\,
	datag => \reg1|gen_register:6:vff|ALT_INV_O~q\,
	combout => \read_mux2|v6|v3|v6|Q~1_combout\);

-- Location: LABCELL_X40_Y5_N9
\read_mux2|v6|v3|v7|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \read_mux2|v6|v3|v7|Q~0_combout\ = ( \Read2AD[1]~input_o\ & ( \Read2AD[0]~input_o\ & ( \reg7|gen_register:7:vff|O~q\ ) ) ) # ( !\Read2AD[1]~input_o\ & ( \Read2AD[0]~input_o\ & ( \reg5|gen_register:7:vff|O~q\ ) ) ) # ( \Read2AD[1]~input_o\ & ( 
-- !\Read2AD[0]~input_o\ & ( \reg6|gen_register:7:vff|O~q\ ) ) ) # ( !\Read2AD[1]~input_o\ & ( !\Read2AD[0]~input_o\ & ( \reg4|gen_register:7:vff|O~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000011110000111101010101010101010000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg5|gen_register:7:vff|ALT_INV_O~q\,
	datab => \reg4|gen_register:7:vff|ALT_INV_O~q\,
	datac => \reg6|gen_register:7:vff|ALT_INV_O~q\,
	datad => \reg7|gen_register:7:vff|ALT_INV_O~q\,
	datae => \ALT_INV_Read2AD[1]~input_o\,
	dataf => \ALT_INV_Read2AD[0]~input_o\,
	combout => \read_mux2|v6|v3|v7|Q~0_combout\);

-- Location: LABCELL_X40_Y5_N36
\read_mux2|v6|v3|v7|Q~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \read_mux2|v6|v3|v7|Q~1_combout\ = ( !\Read2AD[2]~input_o\ & ( (!\Read2AD[1]~input_o\ & ((((\reg1|gen_register:7:vff|O~q\ & \Read2AD[0]~input_o\))))) # (\Read2AD[1]~input_o\ & (((!\Read2AD[0]~input_o\ & ((\reg2|gen_register:7:vff|O~q\))) # 
-- (\Read2AD[0]~input_o\ & (\reg3|gen_register:7:vff|O~q\))))) ) ) # ( \Read2AD[2]~input_o\ & ( (((\read_mux2|v6|v3|v7|Q~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000110011000011110000111100001111010101010000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg3|gen_register:7:vff|ALT_INV_O~q\,
	datab => \reg2|gen_register:7:vff|ALT_INV_O~q\,
	datac => \read_mux2|v6|v3|v7|ALT_INV_Q~0_combout\,
	datad => \ALT_INV_Read2AD[1]~input_o\,
	datae => \ALT_INV_Read2AD[2]~input_o\,
	dataf => \ALT_INV_Read2AD[0]~input_o\,
	datag => \reg1|gen_register:7:vff|ALT_INV_O~q\,
	combout => \read_mux2|v6|v3|v7|Q~1_combout\);

-- Location: MLABCELL_X47_Y4_N9
\read_mux2|v6|v3|v8|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \read_mux2|v6|v3|v8|Q~0_combout\ = ( \reg4|gen_register:8:vff|O~q\ & ( \reg6|gen_register:8:vff|O~q\ & ( (!\Read2AD[0]~input_o\) # ((!\Read2AD[1]~input_o\ & ((\reg5|gen_register:8:vff|O~q\))) # (\Read2AD[1]~input_o\ & (\reg7|gen_register:8:vff|O~q\))) ) ) 
-- ) # ( !\reg4|gen_register:8:vff|O~q\ & ( \reg6|gen_register:8:vff|O~q\ & ( (!\Read2AD[0]~input_o\ & (\Read2AD[1]~input_o\)) # (\Read2AD[0]~input_o\ & ((!\Read2AD[1]~input_o\ & ((\reg5|gen_register:8:vff|O~q\))) # (\Read2AD[1]~input_o\ & 
-- (\reg7|gen_register:8:vff|O~q\)))) ) ) ) # ( \reg4|gen_register:8:vff|O~q\ & ( !\reg6|gen_register:8:vff|O~q\ & ( (!\Read2AD[0]~input_o\ & (!\Read2AD[1]~input_o\)) # (\Read2AD[0]~input_o\ & ((!\Read2AD[1]~input_o\ & ((\reg5|gen_register:8:vff|O~q\))) # 
-- (\Read2AD[1]~input_o\ & (\reg7|gen_register:8:vff|O~q\)))) ) ) ) # ( !\reg4|gen_register:8:vff|O~q\ & ( !\reg6|gen_register:8:vff|O~q\ & ( (\Read2AD[0]~input_o\ & ((!\Read2AD[1]~input_o\ & ((\reg5|gen_register:8:vff|O~q\))) # (\Read2AD[1]~input_o\ & 
-- (\reg7|gen_register:8:vff|O~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101100010011100110100100011011001111010101111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Read2AD[0]~input_o\,
	datab => \ALT_INV_Read2AD[1]~input_o\,
	datac => \reg7|gen_register:8:vff|ALT_INV_O~q\,
	datad => \reg5|gen_register:8:vff|ALT_INV_O~q\,
	datae => \reg4|gen_register:8:vff|ALT_INV_O~q\,
	dataf => \reg6|gen_register:8:vff|ALT_INV_O~q\,
	combout => \read_mux2|v6|v3|v8|Q~0_combout\);

-- Location: LABCELL_X37_Y4_N0
\read_mux2|v6|v3|v8|Q~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \read_mux2|v6|v3|v8|Q~1_combout\ = ( !\Read2AD[2]~input_o\ & ( (!\Read2AD[1]~input_o\ & ((((\reg1|gen_register:8:vff|O~q\ & \Read2AD[0]~input_o\))))) # (\Read2AD[1]~input_o\ & (((!\Read2AD[0]~input_o\ & (\reg2|gen_register:8:vff|O~q\)) # 
-- (\Read2AD[0]~input_o\ & ((\reg3|gen_register:8:vff|O~q\)))))) ) ) # ( \Read2AD[2]~input_o\ & ( (((\read_mux2|v6|v3|v8|Q~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000001010101000011110000111100001111001100110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg2|gen_register:8:vff|ALT_INV_O~q\,
	datab => \reg3|gen_register:8:vff|ALT_INV_O~q\,
	datac => \read_mux2|v6|v3|v8|ALT_INV_Q~0_combout\,
	datad => \ALT_INV_Read2AD[1]~input_o\,
	datae => \ALT_INV_Read2AD[2]~input_o\,
	dataf => \ALT_INV_Read2AD[0]~input_o\,
	datag => \reg1|gen_register:8:vff|ALT_INV_O~q\,
	combout => \read_mux2|v6|v3|v8|Q~1_combout\);

-- Location: LABCELL_X48_Y4_N15
\read_mux2|v6|v3|v9|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \read_mux2|v6|v3|v9|Q~0_combout\ = ( \Read2AD[1]~input_o\ & ( \reg4|gen_register:9:vff|O~q\ & ( (!\Read2AD[0]~input_o\ & (\reg6|gen_register:9:vff|O~q\)) # (\Read2AD[0]~input_o\ & ((\reg7|gen_register:9:vff|O~q\))) ) ) ) # ( !\Read2AD[1]~input_o\ & ( 
-- \reg4|gen_register:9:vff|O~q\ & ( (!\Read2AD[0]~input_o\) # (\reg5|gen_register:9:vff|O~q\) ) ) ) # ( \Read2AD[1]~input_o\ & ( !\reg4|gen_register:9:vff|O~q\ & ( (!\Read2AD[0]~input_o\ & (\reg6|gen_register:9:vff|O~q\)) # (\Read2AD[0]~input_o\ & 
-- ((\reg7|gen_register:9:vff|O~q\))) ) ) ) # ( !\Read2AD[1]~input_o\ & ( !\reg4|gen_register:9:vff|O~q\ & ( (\Read2AD[0]~input_o\ & \reg5|gen_register:9:vff|O~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011010001000111011111001111110011110100010001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg6|gen_register:9:vff|ALT_INV_O~q\,
	datab => \ALT_INV_Read2AD[0]~input_o\,
	datac => \reg5|gen_register:9:vff|ALT_INV_O~q\,
	datad => \reg7|gen_register:9:vff|ALT_INV_O~q\,
	datae => \ALT_INV_Read2AD[1]~input_o\,
	dataf => \reg4|gen_register:9:vff|ALT_INV_O~q\,
	combout => \read_mux2|v6|v3|v9|Q~0_combout\);

-- Location: MLABCELL_X47_Y4_N0
\read_mux2|v6|v3|v9|Q~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \read_mux2|v6|v3|v9|Q~1_combout\ = ( !\Read2AD[2]~input_o\ & ( (!\Read2AD[1]~input_o\ & (((\reg1|gen_register:9:vff|O~q\ & ((\Read2AD[0]~input_o\)))))) # (\Read2AD[1]~input_o\ & (((!\Read2AD[0]~input_o\ & ((\reg2|gen_register:9:vff|O~q\))) # 
-- (\Read2AD[0]~input_o\ & (\reg3|gen_register:9:vff|O~q\))))) ) ) # ( \Read2AD[2]~input_o\ & ( (((\read_mux2|v6|v3|v9|Q~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000001010101000011110000111100011011000110110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Read2AD[1]~input_o\,
	datab => \reg3|gen_register:9:vff|ALT_INV_O~q\,
	datac => \read_mux2|v6|v3|v9|ALT_INV_Q~0_combout\,
	datad => \reg2|gen_register:9:vff|ALT_INV_O~q\,
	datae => \ALT_INV_Read2AD[2]~input_o\,
	dataf => \ALT_INV_Read2AD[0]~input_o\,
	datag => \reg1|gen_register:9:vff|ALT_INV_O~q\,
	combout => \read_mux2|v6|v3|v9|Q~1_combout\);

-- Location: LABCELL_X40_Y4_N36
\read_mux2|v6|v3|v10|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \read_mux2|v6|v3|v10|Q~0_combout\ = ( \reg5|gen_register:10:vff|O~q\ & ( \Read2AD[0]~input_o\ & ( (!\Read2AD[1]~input_o\) # (\reg7|gen_register:10:vff|O~q\) ) ) ) # ( !\reg5|gen_register:10:vff|O~q\ & ( \Read2AD[0]~input_o\ & ( 
-- (\reg7|gen_register:10:vff|O~q\ & \Read2AD[1]~input_o\) ) ) ) # ( \reg5|gen_register:10:vff|O~q\ & ( !\Read2AD[0]~input_o\ & ( (!\Read2AD[1]~input_o\ & (\reg4|gen_register:10:vff|O~q\)) # (\Read2AD[1]~input_o\ & ((\reg6|gen_register:10:vff|O~q\))) ) ) ) # 
-- ( !\reg5|gen_register:10:vff|O~q\ & ( !\Read2AD[0]~input_o\ & ( (!\Read2AD[1]~input_o\ & (\reg4|gen_register:10:vff|O~q\)) # (\Read2AD[1]~input_o\ & ((\reg6|gen_register:10:vff|O~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111010101010000111100000000001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg4|gen_register:10:vff|ALT_INV_O~q\,
	datab => \reg7|gen_register:10:vff|ALT_INV_O~q\,
	datac => \reg6|gen_register:10:vff|ALT_INV_O~q\,
	datad => \ALT_INV_Read2AD[1]~input_o\,
	datae => \reg5|gen_register:10:vff|ALT_INV_O~q\,
	dataf => \ALT_INV_Read2AD[0]~input_o\,
	combout => \read_mux2|v6|v3|v10|Q~0_combout\);

-- Location: LABCELL_X40_Y5_N0
\read_mux2|v6|v3|v10|Q~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \read_mux2|v6|v3|v10|Q~1_combout\ = ( !\Read2AD[2]~input_o\ & ( (!\Read2AD[0]~input_o\ & ((((\Read2AD[1]~input_o\ & \reg2|gen_register:10:vff|O~q\))))) # (\Read2AD[0]~input_o\ & ((!\Read2AD[1]~input_o\ & (((\reg1|gen_register:10:vff|O~q\)))) # 
-- (\Read2AD[1]~input_o\ & (\reg3|gen_register:10:vff|O~q\)))) ) ) # ( \Read2AD[2]~input_o\ & ( (((\read_mux2|v6|v3|v10|Q~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000010100010001000011110000111100000101101110110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Read2AD[0]~input_o\,
	datab => \reg3|gen_register:10:vff|ALT_INV_O~q\,
	datac => \read_mux2|v6|v3|v10|ALT_INV_Q~0_combout\,
	datad => \ALT_INV_Read2AD[1]~input_o\,
	datae => \ALT_INV_Read2AD[2]~input_o\,
	dataf => \reg2|gen_register:10:vff|ALT_INV_O~q\,
	datag => \reg1|gen_register:10:vff|ALT_INV_O~q\,
	combout => \read_mux2|v6|v3|v10|Q~1_combout\);

-- Location: LABCELL_X70_Y5_N21
\read_mux2|v6|v3|v11|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \read_mux2|v6|v3|v11|Q~0_combout\ = ( \reg5|gen_register:11:vff|O~q\ & ( \reg7|gen_register:11:vff|O~q\ & ( ((!\Read2AD[1]~input_o\ & ((\reg4|gen_register:11:vff|O~q\))) # (\Read2AD[1]~input_o\ & (\reg6|gen_register:11:vff|O~q\))) # (\Read2AD[0]~input_o\) 
-- ) ) ) # ( !\reg5|gen_register:11:vff|O~q\ & ( \reg7|gen_register:11:vff|O~q\ & ( (!\Read2AD[1]~input_o\ & (((\reg4|gen_register:11:vff|O~q\ & !\Read2AD[0]~input_o\)))) # (\Read2AD[1]~input_o\ & (((\Read2AD[0]~input_o\)) # 
-- (\reg6|gen_register:11:vff|O~q\))) ) ) ) # ( \reg5|gen_register:11:vff|O~q\ & ( !\reg7|gen_register:11:vff|O~q\ & ( (!\Read2AD[1]~input_o\ & (((\Read2AD[0]~input_o\) # (\reg4|gen_register:11:vff|O~q\)))) # (\Read2AD[1]~input_o\ & 
-- (\reg6|gen_register:11:vff|O~q\ & ((!\Read2AD[0]~input_o\)))) ) ) ) # ( !\reg5|gen_register:11:vff|O~q\ & ( !\reg7|gen_register:11:vff|O~q\ & ( (!\Read2AD[0]~input_o\ & ((!\Read2AD[1]~input_o\ & ((\reg4|gen_register:11:vff|O~q\))) # (\Read2AD[1]~input_o\ 
-- & (\reg6|gen_register:11:vff|O~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100000000000111011100110000011101001100110001110111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg6|gen_register:11:vff|ALT_INV_O~q\,
	datab => \ALT_INV_Read2AD[1]~input_o\,
	datac => \reg4|gen_register:11:vff|ALT_INV_O~q\,
	datad => \ALT_INV_Read2AD[0]~input_o\,
	datae => \reg5|gen_register:11:vff|ALT_INV_O~q\,
	dataf => \reg7|gen_register:11:vff|ALT_INV_O~q\,
	combout => \read_mux2|v6|v3|v11|Q~0_combout\);

-- Location: LABCELL_X70_Y5_N36
\read_mux2|v6|v3|v11|Q~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \read_mux2|v6|v3|v11|Q~1_combout\ = ( !\Read2AD[2]~input_o\ & ( (!\Read2AD[1]~input_o\ & ((((\reg1|gen_register:11:vff|O~q\ & \Read2AD[0]~input_o\))))) # (\Read2AD[1]~input_o\ & (((!\Read2AD[0]~input_o\ & (\reg2|gen_register:11:vff|O~q\)) # 
-- (\Read2AD[0]~input_o\ & ((\reg3|gen_register:11:vff|O~q\)))))) ) ) # ( \Read2AD[2]~input_o\ & ( (((\read_mux2|v6|v3|v11|Q~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000001010101000011110000111100001111001100110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg2|gen_register:11:vff|ALT_INV_O~q\,
	datab => \reg3|gen_register:11:vff|ALT_INV_O~q\,
	datac => \read_mux2|v6|v3|v11|ALT_INV_Q~0_combout\,
	datad => \ALT_INV_Read2AD[1]~input_o\,
	datae => \ALT_INV_Read2AD[2]~input_o\,
	dataf => \ALT_INV_Read2AD[0]~input_o\,
	datag => \reg1|gen_register:11:vff|ALT_INV_O~q\,
	combout => \read_mux2|v6|v3|v11|Q~1_combout\);

-- Location: LABCELL_X64_Y4_N9
\read_mux2|v6|v3|v12|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \read_mux2|v6|v3|v12|Q~0_combout\ = ( \Read2AD[1]~input_o\ & ( \reg6|gen_register:12:vff|O~q\ & ( (!\Read2AD[0]~input_o\) # (\reg7|gen_register:12:vff|O~q\) ) ) ) # ( !\Read2AD[1]~input_o\ & ( \reg6|gen_register:12:vff|O~q\ & ( (!\Read2AD[0]~input_o\ & 
-- (\reg4|gen_register:12:vff|O~q\)) # (\Read2AD[0]~input_o\ & ((\reg5|gen_register:12:vff|O~q\))) ) ) ) # ( \Read2AD[1]~input_o\ & ( !\reg6|gen_register:12:vff|O~q\ & ( (\Read2AD[0]~input_o\ & \reg7|gen_register:12:vff|O~q\) ) ) ) # ( !\Read2AD[1]~input_o\ 
-- & ( !\reg6|gen_register:12:vff|O~q\ & ( (!\Read2AD[0]~input_o\ & (\reg4|gen_register:12:vff|O~q\)) # (\Read2AD[0]~input_o\ & ((\reg5|gen_register:12:vff|O~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111000000000101010100100111001001111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Read2AD[0]~input_o\,
	datab => \reg4|gen_register:12:vff|ALT_INV_O~q\,
	datac => \reg5|gen_register:12:vff|ALT_INV_O~q\,
	datad => \reg7|gen_register:12:vff|ALT_INV_O~q\,
	datae => \ALT_INV_Read2AD[1]~input_o\,
	dataf => \reg6|gen_register:12:vff|ALT_INV_O~q\,
	combout => \read_mux2|v6|v3|v12|Q~0_combout\);

-- Location: LABCELL_X64_Y4_N36
\read_mux2|v6|v3|v12|Q~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \read_mux2|v6|v3|v12|Q~1_combout\ = ( !\Read2AD[2]~input_o\ & ( (!\Read2AD[0]~input_o\ & (\Read2AD[1]~input_o\ & (((\reg2|gen_register:12:vff|O~q\))))) # (\Read2AD[0]~input_o\ & ((!\Read2AD[1]~input_o\ & (\reg1|gen_register:12:vff|O~q\)) # 
-- (\Read2AD[1]~input_o\ & (((\reg3|gen_register:12:vff|O~q\)))))) ) ) # ( \Read2AD[2]~input_o\ & ( (((\read_mux2|v6|v3|v12|Q~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000010000100110000011110000111100010101001101110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Read2AD[0]~input_o\,
	datab => \ALT_INV_Read2AD[1]~input_o\,
	datac => \read_mux2|v6|v3|v12|ALT_INV_Q~0_combout\,
	datad => \reg2|gen_register:12:vff|ALT_INV_O~q\,
	datae => \ALT_INV_Read2AD[2]~input_o\,
	dataf => \reg3|gen_register:12:vff|ALT_INV_O~q\,
	datag => \reg1|gen_register:12:vff|ALT_INV_O~q\,
	combout => \read_mux2|v6|v3|v12|Q~1_combout\);

-- Location: LABCELL_X63_Y4_N51
\read_mux2|v6|v3|v13|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \read_mux2|v6|v3|v13|Q~0_combout\ = ( \Read2AD[1]~input_o\ & ( \reg4|gen_register:13:vff|O~q\ & ( (!\Read2AD[0]~input_o\ & (\reg6|gen_register:13:vff|O~q\)) # (\Read2AD[0]~input_o\ & ((\reg7|gen_register:13:vff|O~q\))) ) ) ) # ( !\Read2AD[1]~input_o\ & ( 
-- \reg4|gen_register:13:vff|O~q\ & ( (!\Read2AD[0]~input_o\) # (\reg5|gen_register:13:vff|O~q\) ) ) ) # ( \Read2AD[1]~input_o\ & ( !\reg4|gen_register:13:vff|O~q\ & ( (!\Read2AD[0]~input_o\ & (\reg6|gen_register:13:vff|O~q\)) # (\Read2AD[0]~input_o\ & 
-- ((\reg7|gen_register:13:vff|O~q\))) ) ) ) # ( !\Read2AD[1]~input_o\ & ( !\reg4|gen_register:13:vff|O~q\ & ( (\Read2AD[0]~input_o\ & \reg5|gen_register:13:vff|O~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000010100101111110111011101110110000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Read2AD[0]~input_o\,
	datab => \reg5|gen_register:13:vff|ALT_INV_O~q\,
	datac => \reg6|gen_register:13:vff|ALT_INV_O~q\,
	datad => \reg7|gen_register:13:vff|ALT_INV_O~q\,
	datae => \ALT_INV_Read2AD[1]~input_o\,
	dataf => \reg4|gen_register:13:vff|ALT_INV_O~q\,
	combout => \read_mux2|v6|v3|v13|Q~0_combout\);

-- Location: LABCELL_X64_Y4_N0
\read_mux2|v6|v3|v13|Q~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \read_mux2|v6|v3|v13|Q~1_combout\ = ( !\Read2AD[2]~input_o\ & ( (!\Read2AD[0]~input_o\ & (\Read2AD[1]~input_o\ & (((\reg2|gen_register:13:vff|O~q\))))) # (\Read2AD[0]~input_o\ & ((!\Read2AD[1]~input_o\ & (\reg1|gen_register:13:vff|O~q\)) # 
-- (\Read2AD[1]~input_o\ & (((\reg3|gen_register:13:vff|O~q\)))))) ) ) # ( \Read2AD[2]~input_o\ & ( (((\read_mux2|v6|v3|v13|Q~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000010000100110000011110000111100010101001101110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Read2AD[0]~input_o\,
	datab => \ALT_INV_Read2AD[1]~input_o\,
	datac => \read_mux2|v6|v3|v13|ALT_INV_Q~0_combout\,
	datad => \reg2|gen_register:13:vff|ALT_INV_O~q\,
	datae => \ALT_INV_Read2AD[2]~input_o\,
	dataf => \reg3|gen_register:13:vff|ALT_INV_O~q\,
	datag => \reg1|gen_register:13:vff|ALT_INV_O~q\,
	combout => \read_mux2|v6|v3|v13|Q~1_combout\);

-- Location: LABCELL_X67_Y4_N45
\read_mux2|v6|v3|v14|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \read_mux2|v6|v3|v14|Q~0_combout\ = ( \Read2AD[0]~input_o\ & ( \reg7|gen_register:14:vff|O~q\ & ( (\reg5|gen_register:14:vff|O~q\) # (\Read2AD[1]~input_o\) ) ) ) # ( !\Read2AD[0]~input_o\ & ( \reg7|gen_register:14:vff|O~q\ & ( (!\Read2AD[1]~input_o\ & 
-- ((\reg4|gen_register:14:vff|O~q\))) # (\Read2AD[1]~input_o\ & (\reg6|gen_register:14:vff|O~q\)) ) ) ) # ( \Read2AD[0]~input_o\ & ( !\reg7|gen_register:14:vff|O~q\ & ( (!\Read2AD[1]~input_o\ & \reg5|gen_register:14:vff|O~q\) ) ) ) # ( !\Read2AD[0]~input_o\ 
-- & ( !\reg7|gen_register:14:vff|O~q\ & ( (!\Read2AD[1]~input_o\ & ((\reg4|gen_register:14:vff|O~q\))) # (\Read2AD[1]~input_o\ & (\reg6|gen_register:14:vff|O~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000110111011000010100000101000010001101110110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Read2AD[1]~input_o\,
	datab => \reg6|gen_register:14:vff|ALT_INV_O~q\,
	datac => \reg5|gen_register:14:vff|ALT_INV_O~q\,
	datad => \reg4|gen_register:14:vff|ALT_INV_O~q\,
	datae => \ALT_INV_Read2AD[0]~input_o\,
	dataf => \reg7|gen_register:14:vff|ALT_INV_O~q\,
	combout => \read_mux2|v6|v3|v14|Q~0_combout\);

-- Location: LABCELL_X70_Y4_N30
\read_mux2|v6|v3|v14|Q~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \read_mux2|v6|v3|v14|Q~1_combout\ = ( !\Read2AD[2]~input_o\ & ( (!\Read2AD[1]~input_o\ & (((\reg1|gen_register:14:vff|O~q\ & (\Read2AD[0]~input_o\))))) # (\Read2AD[1]~input_o\ & (((!\Read2AD[0]~input_o\ & (\reg2|gen_register:14:vff|O~q\)) # 
-- (\Read2AD[0]~input_o\ & ((\reg3|gen_register:14:vff|O~q\)))))) ) ) # ( \Read2AD[2]~input_o\ & ( (((\read_mux2|v6|v3|v14|Q~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001000100001010000011110000111100010001010111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Read2AD[1]~input_o\,
	datab => \reg2|gen_register:14:vff|ALT_INV_O~q\,
	datac => \read_mux2|v6|v3|v14|ALT_INV_Q~0_combout\,
	datad => \ALT_INV_Read2AD[0]~input_o\,
	datae => \ALT_INV_Read2AD[2]~input_o\,
	dataf => \reg3|gen_register:14:vff|ALT_INV_O~q\,
	datag => \reg1|gen_register:14:vff|ALT_INV_O~q\,
	combout => \read_mux2|v6|v3|v14|Q~1_combout\);

-- Location: LABCELL_X70_Y5_N3
\read_mux2|v6|v3|v15|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \read_mux2|v6|v3|v15|Q~0_combout\ = ( \reg4|gen_register:15:vff|O~q\ & ( \Read2AD[1]~input_o\ & ( (!\Read2AD[0]~input_o\ & (\reg6|gen_register:15:vff|O~q\)) # (\Read2AD[0]~input_o\ & ((\reg7|gen_register:15:vff|O~q\))) ) ) ) # ( 
-- !\reg4|gen_register:15:vff|O~q\ & ( \Read2AD[1]~input_o\ & ( (!\Read2AD[0]~input_o\ & (\reg6|gen_register:15:vff|O~q\)) # (\Read2AD[0]~input_o\ & ((\reg7|gen_register:15:vff|O~q\))) ) ) ) # ( \reg4|gen_register:15:vff|O~q\ & ( !\Read2AD[1]~input_o\ & ( 
-- (!\Read2AD[0]~input_o\) # (\reg5|gen_register:15:vff|O~q\) ) ) ) # ( !\reg4|gen_register:15:vff|O~q\ & ( !\Read2AD[1]~input_o\ & ( (\reg5|gen_register:15:vff|O~q\ & \Read2AD[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111111111110000111101010101001100110101010100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg6|gen_register:15:vff|ALT_INV_O~q\,
	datab => \reg7|gen_register:15:vff|ALT_INV_O~q\,
	datac => \reg5|gen_register:15:vff|ALT_INV_O~q\,
	datad => \ALT_INV_Read2AD[0]~input_o\,
	datae => \reg4|gen_register:15:vff|ALT_INV_O~q\,
	dataf => \ALT_INV_Read2AD[1]~input_o\,
	combout => \read_mux2|v6|v3|v15|Q~0_combout\);

-- Location: LABCELL_X70_Y5_N30
\read_mux2|v6|v3|v15|Q~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \read_mux2|v6|v3|v15|Q~1_combout\ = ( !\Read2AD[2]~input_o\ & ( (!\Read2AD[1]~input_o\ & (((\reg1|gen_register:15:vff|O~q\ & (\Read2AD[0]~input_o\))))) # (\Read2AD[1]~input_o\ & (((!\Read2AD[0]~input_o\ & ((\reg2|gen_register:15:vff|O~q\))) # 
-- (\Read2AD[0]~input_o\ & (\reg3|gen_register:15:vff|O~q\))))) ) ) # ( \Read2AD[2]~input_o\ & ( (((\read_mux2|v6|v3|v15|Q~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000011101000011110000111100110011000111010000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg3|gen_register:15:vff|ALT_INV_O~q\,
	datab => \ALT_INV_Read2AD[1]~input_o\,
	datac => \read_mux2|v6|v3|v15|ALT_INV_Q~0_combout\,
	datad => \ALT_INV_Read2AD[0]~input_o\,
	datae => \ALT_INV_Read2AD[2]~input_o\,
	dataf => \reg2|gen_register:15:vff|ALT_INV_O~q\,
	datag => \reg1|gen_register:15:vff|ALT_INV_O~q\,
	combout => \read_mux2|v6|v3|v15|Q~1_combout\);

-- Location: LABCELL_X10_Y1_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


