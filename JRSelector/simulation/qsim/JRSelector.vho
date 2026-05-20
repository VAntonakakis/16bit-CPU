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

-- DATE "05/19/2026 20:31:08"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	JRSelector IS
    PORT (
	JROpcode : IN std_logic_vector(1 DOWNTO 0);
	PCP2AD : IN std_logic_vector(15 DOWNTO 0);
	JumpAD : IN std_logic_vector(15 DOWNTO 0);
	BranchAD : IN std_logic_vector(15 DOWNTO 0);
	PCout : OUT std_logic_vector(15 DOWNTO 0)
	);
END JRSelector;

-- Design Ports Information
-- PCout[0]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCout[1]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCout[2]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCout[3]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCout[4]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCout[5]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCout[6]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCout[7]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCout[8]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCout[9]	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCout[10]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCout[11]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCout[12]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCout[13]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCout[14]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCout[15]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCP2AD[0]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JROpcode[0]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JROpcode[1]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JumpAD[0]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BranchAD[0]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCP2AD[1]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JumpAD[1]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BranchAD[1]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCP2AD[2]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JumpAD[2]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BranchAD[2]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCP2AD[3]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JumpAD[3]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BranchAD[3]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCP2AD[4]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JumpAD[4]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BranchAD[4]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCP2AD[5]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JumpAD[5]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BranchAD[5]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCP2AD[6]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JumpAD[6]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BranchAD[6]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCP2AD[7]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JumpAD[7]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BranchAD[7]	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCP2AD[8]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JumpAD[8]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BranchAD[8]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCP2AD[9]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JumpAD[9]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BranchAD[9]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCP2AD[10]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JumpAD[10]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BranchAD[10]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCP2AD[11]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JumpAD[11]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BranchAD[11]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCP2AD[12]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JumpAD[12]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BranchAD[12]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCP2AD[13]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JumpAD[13]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BranchAD[13]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCP2AD[14]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JumpAD[14]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BranchAD[14]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCP2AD[15]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JumpAD[15]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BranchAD[15]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF JRSelector IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_JROpcode : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_PCP2AD : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_JumpAD : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_BranchAD : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_PCout : std_logic_vector(15 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \PCP2AD[0]~input_o\ : std_logic;
SIGNAL \BranchAD[0]~input_o\ : std_logic;
SIGNAL \JROpcode[0]~input_o\ : std_logic;
SIGNAL \JumpAD[0]~input_o\ : std_logic;
SIGNAL \JROpcode[1]~input_o\ : std_logic;
SIGNAL \PCout~0_combout\ : std_logic;
SIGNAL \JumpAD[1]~input_o\ : std_logic;
SIGNAL \PCP2AD[1]~input_o\ : std_logic;
SIGNAL \BranchAD[1]~input_o\ : std_logic;
SIGNAL \PCout~1_combout\ : std_logic;
SIGNAL \JumpAD[2]~input_o\ : std_logic;
SIGNAL \BranchAD[2]~input_o\ : std_logic;
SIGNAL \PCP2AD[2]~input_o\ : std_logic;
SIGNAL \PCout~2_combout\ : std_logic;
SIGNAL \BranchAD[3]~input_o\ : std_logic;
SIGNAL \JumpAD[3]~input_o\ : std_logic;
SIGNAL \PCP2AD[3]~input_o\ : std_logic;
SIGNAL \PCout~3_combout\ : std_logic;
SIGNAL \BranchAD[4]~input_o\ : std_logic;
SIGNAL \PCP2AD[4]~input_o\ : std_logic;
SIGNAL \JumpAD[4]~input_o\ : std_logic;
SIGNAL \PCout~4_combout\ : std_logic;
SIGNAL \BranchAD[5]~input_o\ : std_logic;
SIGNAL \JumpAD[5]~input_o\ : std_logic;
SIGNAL \PCP2AD[5]~input_o\ : std_logic;
SIGNAL \PCout~5_combout\ : std_logic;
SIGNAL \BranchAD[6]~input_o\ : std_logic;
SIGNAL \PCP2AD[6]~input_o\ : std_logic;
SIGNAL \JumpAD[6]~input_o\ : std_logic;
SIGNAL \PCout~6_combout\ : std_logic;
SIGNAL \JumpAD[7]~input_o\ : std_logic;
SIGNAL \BranchAD[7]~input_o\ : std_logic;
SIGNAL \PCP2AD[7]~input_o\ : std_logic;
SIGNAL \PCout~7_combout\ : std_logic;
SIGNAL \JumpAD[8]~input_o\ : std_logic;
SIGNAL \BranchAD[8]~input_o\ : std_logic;
SIGNAL \PCP2AD[8]~input_o\ : std_logic;
SIGNAL \PCout~8_combout\ : std_logic;
SIGNAL \BranchAD[9]~input_o\ : std_logic;
SIGNAL \PCP2AD[9]~input_o\ : std_logic;
SIGNAL \JumpAD[9]~input_o\ : std_logic;
SIGNAL \PCout~9_combout\ : std_logic;
SIGNAL \BranchAD[10]~input_o\ : std_logic;
SIGNAL \PCP2AD[10]~input_o\ : std_logic;
SIGNAL \JumpAD[10]~input_o\ : std_logic;
SIGNAL \PCout~10_combout\ : std_logic;
SIGNAL \BranchAD[11]~input_o\ : std_logic;
SIGNAL \PCP2AD[11]~input_o\ : std_logic;
SIGNAL \JumpAD[11]~input_o\ : std_logic;
SIGNAL \PCout~11_combout\ : std_logic;
SIGNAL \PCP2AD[12]~input_o\ : std_logic;
SIGNAL \BranchAD[12]~input_o\ : std_logic;
SIGNAL \JumpAD[12]~input_o\ : std_logic;
SIGNAL \PCout~12_combout\ : std_logic;
SIGNAL \PCP2AD[13]~input_o\ : std_logic;
SIGNAL \BranchAD[13]~input_o\ : std_logic;
SIGNAL \JumpAD[13]~input_o\ : std_logic;
SIGNAL \PCout~13_combout\ : std_logic;
SIGNAL \PCP2AD[14]~input_o\ : std_logic;
SIGNAL \JumpAD[14]~input_o\ : std_logic;
SIGNAL \BranchAD[14]~input_o\ : std_logic;
SIGNAL \PCout~14_combout\ : std_logic;
SIGNAL \PCP2AD[15]~input_o\ : std_logic;
SIGNAL \JumpAD[15]~input_o\ : std_logic;
SIGNAL \BranchAD[15]~input_o\ : std_logic;
SIGNAL \PCout~15_combout\ : std_logic;
SIGNAL \ALT_INV_JumpAD[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_PCP2AD[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_BranchAD[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_JumpAD[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_PCP2AD[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_BranchAD[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_JumpAD[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_PCP2AD[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_BranchAD[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_JumpAD[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_PCP2AD[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_BranchAD[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_JumpAD[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_PCP2AD[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_BranchAD[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_JumpAD[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_JROpcode[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_JROpcode[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_PCP2AD[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_BranchAD[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_JumpAD[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_PCP2AD[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_BranchAD[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_JumpAD[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_PCP2AD[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_BranchAD[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_JumpAD[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_PCP2AD[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_BranchAD[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_JumpAD[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_PCP2AD[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_BranchAD[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_JumpAD[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_PCP2AD[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_BranchAD[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_JumpAD[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_PCP2AD[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_BranchAD[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_JumpAD[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_PCP2AD[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_BranchAD[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_JumpAD[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_PCP2AD[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_BranchAD[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_JumpAD[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_PCP2AD[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_BranchAD[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_JumpAD[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_PCP2AD[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_BranchAD[5]~input_o\ : std_logic;

BEGIN

ww_JROpcode <= JROpcode;
ww_PCP2AD <= PCP2AD;
ww_JumpAD <= JumpAD;
ww_BranchAD <= BranchAD;
PCout <= ww_PCout;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_JumpAD[5]~input_o\ <= NOT \JumpAD[5]~input_o\;
\ALT_INV_PCP2AD[5]~input_o\ <= NOT \PCP2AD[5]~input_o\;
\ALT_INV_BranchAD[4]~input_o\ <= NOT \BranchAD[4]~input_o\;
\ALT_INV_JumpAD[4]~input_o\ <= NOT \JumpAD[4]~input_o\;
\ALT_INV_PCP2AD[4]~input_o\ <= NOT \PCP2AD[4]~input_o\;
\ALT_INV_BranchAD[3]~input_o\ <= NOT \BranchAD[3]~input_o\;
\ALT_INV_JumpAD[3]~input_o\ <= NOT \JumpAD[3]~input_o\;
\ALT_INV_PCP2AD[3]~input_o\ <= NOT \PCP2AD[3]~input_o\;
\ALT_INV_BranchAD[2]~input_o\ <= NOT \BranchAD[2]~input_o\;
\ALT_INV_JumpAD[2]~input_o\ <= NOT \JumpAD[2]~input_o\;
\ALT_INV_PCP2AD[2]~input_o\ <= NOT \PCP2AD[2]~input_o\;
\ALT_INV_BranchAD[1]~input_o\ <= NOT \BranchAD[1]~input_o\;
\ALT_INV_JumpAD[1]~input_o\ <= NOT \JumpAD[1]~input_o\;
\ALT_INV_PCP2AD[1]~input_o\ <= NOT \PCP2AD[1]~input_o\;
\ALT_INV_BranchAD[0]~input_o\ <= NOT \BranchAD[0]~input_o\;
\ALT_INV_JumpAD[0]~input_o\ <= NOT \JumpAD[0]~input_o\;
\ALT_INV_JROpcode[1]~input_o\ <= NOT \JROpcode[1]~input_o\;
\ALT_INV_JROpcode[0]~input_o\ <= NOT \JROpcode[0]~input_o\;
\ALT_INV_PCP2AD[0]~input_o\ <= NOT \PCP2AD[0]~input_o\;
\ALT_INV_BranchAD[15]~input_o\ <= NOT \BranchAD[15]~input_o\;
\ALT_INV_JumpAD[15]~input_o\ <= NOT \JumpAD[15]~input_o\;
\ALT_INV_PCP2AD[15]~input_o\ <= NOT \PCP2AD[15]~input_o\;
\ALT_INV_BranchAD[14]~input_o\ <= NOT \BranchAD[14]~input_o\;
\ALT_INV_JumpAD[14]~input_o\ <= NOT \JumpAD[14]~input_o\;
\ALT_INV_PCP2AD[14]~input_o\ <= NOT \PCP2AD[14]~input_o\;
\ALT_INV_BranchAD[13]~input_o\ <= NOT \BranchAD[13]~input_o\;
\ALT_INV_JumpAD[13]~input_o\ <= NOT \JumpAD[13]~input_o\;
\ALT_INV_PCP2AD[13]~input_o\ <= NOT \PCP2AD[13]~input_o\;
\ALT_INV_BranchAD[12]~input_o\ <= NOT \BranchAD[12]~input_o\;
\ALT_INV_JumpAD[12]~input_o\ <= NOT \JumpAD[12]~input_o\;
\ALT_INV_PCP2AD[12]~input_o\ <= NOT \PCP2AD[12]~input_o\;
\ALT_INV_BranchAD[11]~input_o\ <= NOT \BranchAD[11]~input_o\;
\ALT_INV_JumpAD[11]~input_o\ <= NOT \JumpAD[11]~input_o\;
\ALT_INV_PCP2AD[11]~input_o\ <= NOT \PCP2AD[11]~input_o\;
\ALT_INV_BranchAD[10]~input_o\ <= NOT \BranchAD[10]~input_o\;
\ALT_INV_JumpAD[10]~input_o\ <= NOT \JumpAD[10]~input_o\;
\ALT_INV_PCP2AD[10]~input_o\ <= NOT \PCP2AD[10]~input_o\;
\ALT_INV_BranchAD[9]~input_o\ <= NOT \BranchAD[9]~input_o\;
\ALT_INV_JumpAD[9]~input_o\ <= NOT \JumpAD[9]~input_o\;
\ALT_INV_PCP2AD[9]~input_o\ <= NOT \PCP2AD[9]~input_o\;
\ALT_INV_BranchAD[8]~input_o\ <= NOT \BranchAD[8]~input_o\;
\ALT_INV_JumpAD[8]~input_o\ <= NOT \JumpAD[8]~input_o\;
\ALT_INV_PCP2AD[8]~input_o\ <= NOT \PCP2AD[8]~input_o\;
\ALT_INV_BranchAD[7]~input_o\ <= NOT \BranchAD[7]~input_o\;
\ALT_INV_JumpAD[7]~input_o\ <= NOT \JumpAD[7]~input_o\;
\ALT_INV_PCP2AD[7]~input_o\ <= NOT \PCP2AD[7]~input_o\;
\ALT_INV_BranchAD[6]~input_o\ <= NOT \BranchAD[6]~input_o\;
\ALT_INV_JumpAD[6]~input_o\ <= NOT \JumpAD[6]~input_o\;
\ALT_INV_PCP2AD[6]~input_o\ <= NOT \PCP2AD[6]~input_o\;
\ALT_INV_BranchAD[5]~input_o\ <= NOT \BranchAD[5]~input_o\;

-- Location: IOOBUF_X40_Y0_N36
\PCout[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PCout~0_combout\,
	devoe => ww_devoe,
	o => ww_PCout(0));

-- Location: IOOBUF_X2_Y0_N93
\PCout[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PCout~1_combout\,
	devoe => ww_devoe,
	o => ww_PCout(1));

-- Location: IOOBUF_X28_Y0_N2
\PCout[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PCout~2_combout\,
	devoe => ww_devoe,
	o => ww_PCout(2));

-- Location: IOOBUF_X52_Y0_N19
\PCout[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PCout~3_combout\,
	devoe => ww_devoe,
	o => ww_PCout(3));

-- Location: IOOBUF_X56_Y0_N53
\PCout[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PCout~4_combout\,
	devoe => ww_devoe,
	o => ww_PCout(4));

-- Location: IOOBUF_X38_Y0_N53
\PCout[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PCout~5_combout\,
	devoe => ww_devoe,
	o => ww_PCout(5));

-- Location: IOOBUF_X50_Y0_N59
\PCout[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PCout~6_combout\,
	devoe => ww_devoe,
	o => ww_PCout(6));

-- Location: IOOBUF_X38_Y0_N2
\PCout[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PCout~7_combout\,
	devoe => ww_devoe,
	o => ww_PCout(7));

-- Location: IOOBUF_X6_Y0_N53
\PCout[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PCout~8_combout\,
	devoe => ww_devoe,
	o => ww_PCout(8));

-- Location: IOOBUF_X4_Y0_N36
\PCout[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PCout~9_combout\,
	devoe => ww_devoe,
	o => ww_PCout(9));

-- Location: IOOBUF_X40_Y0_N19
\PCout[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PCout~10_combout\,
	devoe => ww_devoe,
	o => ww_PCout(10));

-- Location: IOOBUF_X38_Y0_N19
\PCout[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PCout~11_combout\,
	devoe => ww_devoe,
	o => ww_PCout(11));

-- Location: IOOBUF_X54_Y0_N53
\PCout[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PCout~12_combout\,
	devoe => ww_devoe,
	o => ww_PCout(12));

-- Location: IOOBUF_X2_Y0_N59
\PCout[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PCout~13_combout\,
	devoe => ww_devoe,
	o => ww_PCout(13));

-- Location: IOOBUF_X36_Y0_N53
\PCout[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PCout~14_combout\,
	devoe => ww_devoe,
	o => ww_PCout(14));

-- Location: IOOBUF_X56_Y0_N2
\PCout[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PCout~15_combout\,
	devoe => ww_devoe,
	o => ww_PCout(15));

-- Location: IOIBUF_X8_Y0_N18
\PCP2AD[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PCP2AD(0),
	o => \PCP2AD[0]~input_o\);

-- Location: IOIBUF_X4_Y0_N52
\BranchAD[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BranchAD(0),
	o => \BranchAD[0]~input_o\);

-- Location: IOIBUF_X50_Y0_N75
\JROpcode[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_JROpcode(0),
	o => \JROpcode[0]~input_o\);

-- Location: IOIBUF_X2_Y0_N75
\JumpAD[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_JumpAD(0),
	o => \JumpAD[0]~input_o\);

-- Location: IOIBUF_X50_Y0_N92
\JROpcode[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_JROpcode(1),
	o => \JROpcode[1]~input_o\);

-- Location: LABCELL_X31_Y1_N30
\PCout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \PCout~0_combout\ = ( \JumpAD[0]~input_o\ & ( \JROpcode[1]~input_o\ & ( (!\JROpcode[0]~input_o\ & ((\BranchAD[0]~input_o\))) # (\JROpcode[0]~input_o\ & (\PCP2AD[0]~input_o\)) ) ) ) # ( !\JumpAD[0]~input_o\ & ( \JROpcode[1]~input_o\ & ( 
-- (!\JROpcode[0]~input_o\ & ((\BranchAD[0]~input_o\))) # (\JROpcode[0]~input_o\ & (\PCP2AD[0]~input_o\)) ) ) ) # ( \JumpAD[0]~input_o\ & ( !\JROpcode[1]~input_o\ & ( (\JROpcode[0]~input_o\) # (\PCP2AD[0]~input_o\) ) ) ) # ( !\JumpAD[0]~input_o\ & ( 
-- !\JROpcode[1]~input_o\ & ( (\PCP2AD[0]~input_o\ & !\JROpcode[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100111111111100001111001100110000111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_PCP2AD[0]~input_o\,
	datac => \ALT_INV_BranchAD[0]~input_o\,
	datad => \ALT_INV_JROpcode[0]~input_o\,
	datae => \ALT_INV_JumpAD[0]~input_o\,
	dataf => \ALT_INV_JROpcode[1]~input_o\,
	combout => \PCout~0_combout\);

-- Location: IOIBUF_X38_Y0_N35
\JumpAD[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_JumpAD(1),
	o => \JumpAD[1]~input_o\);

-- Location: IOIBUF_X8_Y0_N52
\PCP2AD[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PCP2AD(1),
	o => \PCP2AD[1]~input_o\);

-- Location: IOIBUF_X30_Y0_N1
\BranchAD[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BranchAD(1),
	o => \BranchAD[1]~input_o\);

-- Location: LABCELL_X31_Y1_N9
\PCout~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \PCout~1_combout\ = ( \BranchAD[1]~input_o\ & ( \JROpcode[1]~input_o\ & ( (!\JROpcode[0]~input_o\) # (\PCP2AD[1]~input_o\) ) ) ) # ( !\BranchAD[1]~input_o\ & ( \JROpcode[1]~input_o\ & ( (\JROpcode[0]~input_o\ & \PCP2AD[1]~input_o\) ) ) ) # ( 
-- \BranchAD[1]~input_o\ & ( !\JROpcode[1]~input_o\ & ( (!\JROpcode[0]~input_o\ & ((\PCP2AD[1]~input_o\))) # (\JROpcode[0]~input_o\ & (\JumpAD[1]~input_o\)) ) ) ) # ( !\BranchAD[1]~input_o\ & ( !\JROpcode[1]~input_o\ & ( (!\JROpcode[0]~input_o\ & 
-- ((\PCP2AD[1]~input_o\))) # (\JROpcode[0]~input_o\ & (\JumpAD[1]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100000011000000111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_JumpAD[1]~input_o\,
	datab => \ALT_INV_JROpcode[0]~input_o\,
	datac => \ALT_INV_PCP2AD[1]~input_o\,
	datae => \ALT_INV_BranchAD[1]~input_o\,
	dataf => \ALT_INV_JROpcode[1]~input_o\,
	combout => \PCout~1_combout\);

-- Location: IOIBUF_X28_Y0_N18
\JumpAD[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_JumpAD(2),
	o => \JumpAD[2]~input_o\);

-- Location: IOIBUF_X34_Y0_N58
\BranchAD[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BranchAD(2),
	o => \BranchAD[2]~input_o\);

-- Location: IOIBUF_X28_Y0_N52
\PCP2AD[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PCP2AD(2),
	o => \PCP2AD[2]~input_o\);

-- Location: LABCELL_X31_Y1_N45
\PCout~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \PCout~2_combout\ = ( \PCP2AD[2]~input_o\ & ( \JROpcode[1]~input_o\ & ( (\BranchAD[2]~input_o\) # (\JROpcode[0]~input_o\) ) ) ) # ( !\PCP2AD[2]~input_o\ & ( \JROpcode[1]~input_o\ & ( (!\JROpcode[0]~input_o\ & \BranchAD[2]~input_o\) ) ) ) # ( 
-- \PCP2AD[2]~input_o\ & ( !\JROpcode[1]~input_o\ & ( (!\JROpcode[0]~input_o\) # (\JumpAD[2]~input_o\) ) ) ) # ( !\PCP2AD[2]~input_o\ & ( !\JROpcode[1]~input_o\ & ( (\JumpAD[2]~input_o\ & \JROpcode[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101111101011111010100000000111100000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_JumpAD[2]~input_o\,
	datac => \ALT_INV_JROpcode[0]~input_o\,
	datad => \ALT_INV_BranchAD[2]~input_o\,
	datae => \ALT_INV_PCP2AD[2]~input_o\,
	dataf => \ALT_INV_JROpcode[1]~input_o\,
	combout => \PCout~2_combout\);

-- Location: IOIBUF_X58_Y0_N75
\BranchAD[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BranchAD(3),
	o => \BranchAD[3]~input_o\);

-- Location: IOIBUF_X52_Y0_N35
\JumpAD[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_JumpAD(3),
	o => \JumpAD[3]~input_o\);

-- Location: IOIBUF_X58_Y0_N92
\PCP2AD[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PCP2AD(3),
	o => \PCP2AD[3]~input_o\);

-- Location: LABCELL_X53_Y1_N30
\PCout~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \PCout~3_combout\ = ( \JROpcode[0]~input_o\ & ( (!\JROpcode[1]~input_o\ & (\JumpAD[3]~input_o\)) # (\JROpcode[1]~input_o\ & ((\PCP2AD[3]~input_o\))) ) ) # ( !\JROpcode[0]~input_o\ & ( (!\JROpcode[1]~input_o\ & ((\PCP2AD[3]~input_o\))) # 
-- (\JROpcode[1]~input_o\ & (\BranchAD[3]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111011101000011000011111100010001110111010000110000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BranchAD[3]~input_o\,
	datab => \ALT_INV_JROpcode[1]~input_o\,
	datac => \ALT_INV_JumpAD[3]~input_o\,
	datad => \ALT_INV_PCP2AD[3]~input_o\,
	datae => \ALT_INV_JROpcode[0]~input_o\,
	combout => \PCout~3_combout\);

-- Location: IOIBUF_X52_Y0_N52
\BranchAD[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BranchAD(4),
	o => \BranchAD[4]~input_o\);

-- Location: IOIBUF_X54_Y0_N1
\PCP2AD[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PCP2AD(4),
	o => \PCP2AD[4]~input_o\);

-- Location: IOIBUF_X56_Y0_N18
\JumpAD[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_JumpAD(4),
	o => \JumpAD[4]~input_o\);

-- Location: LABCELL_X53_Y1_N9
\PCout~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \PCout~4_combout\ = ( \JROpcode[0]~input_o\ & ( (!\JROpcode[1]~input_o\ & ((\JumpAD[4]~input_o\))) # (\JROpcode[1]~input_o\ & (\PCP2AD[4]~input_o\)) ) ) # ( !\JROpcode[0]~input_o\ & ( (!\JROpcode[1]~input_o\ & ((\PCP2AD[4]~input_o\))) # 
-- (\JROpcode[1]~input_o\ & (\BranchAD[4]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101000000111111001100110101001101010000001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BranchAD[4]~input_o\,
	datab => \ALT_INV_PCP2AD[4]~input_o\,
	datac => \ALT_INV_JROpcode[1]~input_o\,
	datad => \ALT_INV_JumpAD[4]~input_o\,
	datae => \ALT_INV_JROpcode[0]~input_o\,
	combout => \PCout~4_combout\);

-- Location: IOIBUF_X36_Y0_N35
\BranchAD[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BranchAD(5),
	o => \BranchAD[5]~input_o\);

-- Location: IOIBUF_X32_Y0_N1
\JumpAD[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_JumpAD(5),
	o => \JumpAD[5]~input_o\);

-- Location: IOIBUF_X6_Y0_N35
\PCP2AD[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PCP2AD(5),
	o => \PCP2AD[5]~input_o\);

-- Location: LABCELL_X31_Y1_N51
\PCout~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \PCout~5_combout\ = ( \PCP2AD[5]~input_o\ & ( \JROpcode[1]~input_o\ & ( (\JROpcode[0]~input_o\) # (\BranchAD[5]~input_o\) ) ) ) # ( !\PCP2AD[5]~input_o\ & ( \JROpcode[1]~input_o\ & ( (\BranchAD[5]~input_o\ & !\JROpcode[0]~input_o\) ) ) ) # ( 
-- \PCP2AD[5]~input_o\ & ( !\JROpcode[1]~input_o\ & ( (!\JROpcode[0]~input_o\) # (\JumpAD[5]~input_o\) ) ) ) # ( !\PCP2AD[5]~input_o\ & ( !\JROpcode[1]~input_o\ & ( (\JROpcode[0]~input_o\ & \JumpAD[5]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011110011111100111101000100010001000111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BranchAD[5]~input_o\,
	datab => \ALT_INV_JROpcode[0]~input_o\,
	datac => \ALT_INV_JumpAD[5]~input_o\,
	datae => \ALT_INV_PCP2AD[5]~input_o\,
	dataf => \ALT_INV_JROpcode[1]~input_o\,
	combout => \PCout~5_combout\);

-- Location: IOIBUF_X28_Y0_N35
\BranchAD[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BranchAD(6),
	o => \BranchAD[6]~input_o\);

-- Location: IOIBUF_X30_Y0_N52
\PCP2AD[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PCP2AD(6),
	o => \PCP2AD[6]~input_o\);

-- Location: IOIBUF_X26_Y0_N41
\JumpAD[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_JumpAD(6),
	o => \JumpAD[6]~input_o\);

-- Location: LABCELL_X31_Y1_N24
\PCout~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \PCout~6_combout\ = ( \JumpAD[6]~input_o\ & ( \JROpcode[1]~input_o\ & ( (!\JROpcode[0]~input_o\ & (\BranchAD[6]~input_o\)) # (\JROpcode[0]~input_o\ & ((\PCP2AD[6]~input_o\))) ) ) ) # ( !\JumpAD[6]~input_o\ & ( \JROpcode[1]~input_o\ & ( 
-- (!\JROpcode[0]~input_o\ & (\BranchAD[6]~input_o\)) # (\JROpcode[0]~input_o\ & ((\PCP2AD[6]~input_o\))) ) ) ) # ( \JumpAD[6]~input_o\ & ( !\JROpcode[1]~input_o\ & ( (\PCP2AD[6]~input_o\) # (\JROpcode[0]~input_o\) ) ) ) # ( !\JumpAD[6]~input_o\ & ( 
-- !\JROpcode[1]~input_o\ & ( (!\JROpcode[0]~input_o\ & \PCP2AD[6]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000011111111111100110000001111110011000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_BranchAD[6]~input_o\,
	datac => \ALT_INV_JROpcode[0]~input_o\,
	datad => \ALT_INV_PCP2AD[6]~input_o\,
	datae => \ALT_INV_JumpAD[6]~input_o\,
	dataf => \ALT_INV_JROpcode[1]~input_o\,
	combout => \PCout~6_combout\);

-- Location: IOIBUF_X40_Y0_N1
\JumpAD[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_JumpAD(7),
	o => \JumpAD[7]~input_o\);

-- Location: IOIBUF_X34_Y0_N75
\BranchAD[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BranchAD(7),
	o => \BranchAD[7]~input_o\);

-- Location: IOIBUF_X6_Y0_N18
\PCP2AD[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PCP2AD(7),
	o => \PCP2AD[7]~input_o\);

-- Location: LABCELL_X31_Y1_N3
\PCout~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \PCout~7_combout\ = ( \PCP2AD[7]~input_o\ & ( \JROpcode[1]~input_o\ & ( (\BranchAD[7]~input_o\) # (\JROpcode[0]~input_o\) ) ) ) # ( !\PCP2AD[7]~input_o\ & ( \JROpcode[1]~input_o\ & ( (!\JROpcode[0]~input_o\ & \BranchAD[7]~input_o\) ) ) ) # ( 
-- \PCP2AD[7]~input_o\ & ( !\JROpcode[1]~input_o\ & ( (!\JROpcode[0]~input_o\) # (\JumpAD[7]~input_o\) ) ) ) # ( !\PCP2AD[7]~input_o\ & ( !\JROpcode[1]~input_o\ & ( (\JumpAD[7]~input_o\ & \JROpcode[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001110111011101110100001100000011000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_JumpAD[7]~input_o\,
	datab => \ALT_INV_JROpcode[0]~input_o\,
	datac => \ALT_INV_BranchAD[7]~input_o\,
	datae => \ALT_INV_PCP2AD[7]~input_o\,
	dataf => \ALT_INV_JROpcode[1]~input_o\,
	combout => \PCout~7_combout\);

-- Location: IOIBUF_X26_Y0_N58
\JumpAD[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_JumpAD(8),
	o => \JumpAD[8]~input_o\);

-- Location: IOIBUF_X32_Y0_N52
\BranchAD[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BranchAD(8),
	o => \BranchAD[8]~input_o\);

-- Location: IOIBUF_X34_Y0_N92
\PCP2AD[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PCP2AD(8),
	o => \PCP2AD[8]~input_o\);

-- Location: LABCELL_X31_Y1_N36
\PCout~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \PCout~8_combout\ = ( \PCP2AD[8]~input_o\ & ( (!\JROpcode[1]~input_o\ & ((!\JROpcode[0]~input_o\) # ((\JumpAD[8]~input_o\)))) # (\JROpcode[1]~input_o\ & (((\BranchAD[8]~input_o\)) # (\JROpcode[0]~input_o\))) ) ) # ( !\PCP2AD[8]~input_o\ & ( 
-- (!\JROpcode[1]~input_o\ & (\JROpcode[0]~input_o\ & (\JumpAD[8]~input_o\))) # (\JROpcode[1]~input_o\ & (!\JROpcode[0]~input_o\ & ((\BranchAD[8]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001000110000000100100011010011011110111111001101111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_JROpcode[1]~input_o\,
	datab => \ALT_INV_JROpcode[0]~input_o\,
	datac => \ALT_INV_JumpAD[8]~input_o\,
	datad => \ALT_INV_BranchAD[8]~input_o\,
	dataf => \ALT_INV_PCP2AD[8]~input_o\,
	combout => \PCout~8_combout\);

-- Location: IOIBUF_X4_Y0_N18
\BranchAD[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BranchAD(9),
	o => \BranchAD[9]~input_o\);

-- Location: IOIBUF_X32_Y0_N35
\PCP2AD[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PCP2AD(9),
	o => \PCP2AD[9]~input_o\);

-- Location: IOIBUF_X34_Y0_N41
\JumpAD[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_JumpAD(9),
	o => \JumpAD[9]~input_o\);

-- Location: LABCELL_X31_Y1_N39
\PCout~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \PCout~9_combout\ = ( \JumpAD[9]~input_o\ & ( (!\JROpcode[1]~input_o\ & (((\PCP2AD[9]~input_o\)) # (\JROpcode[0]~input_o\))) # (\JROpcode[1]~input_o\ & ((!\JROpcode[0]~input_o\ & (\BranchAD[9]~input_o\)) # (\JROpcode[0]~input_o\ & 
-- ((\PCP2AD[9]~input_o\))))) ) ) # ( !\JumpAD[9]~input_o\ & ( (!\JROpcode[1]~input_o\ & (!\JROpcode[0]~input_o\ & ((\PCP2AD[9]~input_o\)))) # (\JROpcode[1]~input_o\ & ((!\JROpcode[0]~input_o\ & (\BranchAD[9]~input_o\)) # (\JROpcode[0]~input_o\ & 
-- ((\PCP2AD[9]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010011101000001001001110100100110101111110010011010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_JROpcode[1]~input_o\,
	datab => \ALT_INV_JROpcode[0]~input_o\,
	datac => \ALT_INV_BranchAD[9]~input_o\,
	datad => \ALT_INV_PCP2AD[9]~input_o\,
	dataf => \ALT_INV_JumpAD[9]~input_o\,
	combout => \PCout~9_combout\);

-- Location: IOIBUF_X26_Y0_N75
\BranchAD[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BranchAD(10),
	o => \BranchAD[10]~input_o\);

-- Location: IOIBUF_X36_Y0_N18
\PCP2AD[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PCP2AD(10),
	o => \PCP2AD[10]~input_o\);

-- Location: IOIBUF_X30_Y0_N35
\JumpAD[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_JumpAD(10),
	o => \JumpAD[10]~input_o\);

-- Location: LABCELL_X31_Y1_N12
\PCout~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \PCout~10_combout\ = ( \JumpAD[10]~input_o\ & ( \JROpcode[1]~input_o\ & ( (!\JROpcode[0]~input_o\ & (\BranchAD[10]~input_o\)) # (\JROpcode[0]~input_o\ & ((\PCP2AD[10]~input_o\))) ) ) ) # ( !\JumpAD[10]~input_o\ & ( \JROpcode[1]~input_o\ & ( 
-- (!\JROpcode[0]~input_o\ & (\BranchAD[10]~input_o\)) # (\JROpcode[0]~input_o\ & ((\PCP2AD[10]~input_o\))) ) ) ) # ( \JumpAD[10]~input_o\ & ( !\JROpcode[1]~input_o\ & ( (\PCP2AD[10]~input_o\) # (\JROpcode[0]~input_o\) ) ) ) # ( !\JumpAD[10]~input_o\ & ( 
-- !\JROpcode[1]~input_o\ & ( (!\JROpcode[0]~input_o\ & \PCP2AD[10]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000011111111111100110000001111110011000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_BranchAD[10]~input_o\,
	datac => \ALT_INV_JROpcode[0]~input_o\,
	datad => \ALT_INV_PCP2AD[10]~input_o\,
	datae => \ALT_INV_JumpAD[10]~input_o\,
	dataf => \ALT_INV_JROpcode[1]~input_o\,
	combout => \PCout~10_combout\);

-- Location: IOIBUF_X32_Y0_N18
\BranchAD[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BranchAD(11),
	o => \BranchAD[11]~input_o\);

-- Location: IOIBUF_X40_Y0_N52
\PCP2AD[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PCP2AD(11),
	o => \PCP2AD[11]~input_o\);

-- Location: IOIBUF_X36_Y0_N1
\JumpAD[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_JumpAD(11),
	o => \JumpAD[11]~input_o\);

-- Location: LABCELL_X31_Y1_N18
\PCout~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \PCout~11_combout\ = ( \JumpAD[11]~input_o\ & ( (!\JROpcode[1]~input_o\ & (((\PCP2AD[11]~input_o\)) # (\JROpcode[0]~input_o\))) # (\JROpcode[1]~input_o\ & ((!\JROpcode[0]~input_o\ & (\BranchAD[11]~input_o\)) # (\JROpcode[0]~input_o\ & 
-- ((\PCP2AD[11]~input_o\))))) ) ) # ( !\JumpAD[11]~input_o\ & ( (!\JROpcode[1]~input_o\ & (!\JROpcode[0]~input_o\ & ((\PCP2AD[11]~input_o\)))) # (\JROpcode[1]~input_o\ & ((!\JROpcode[0]~input_o\ & (\BranchAD[11]~input_o\)) # (\JROpcode[0]~input_o\ & 
-- ((\PCP2AD[11]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010011101000001001001110100100110101111110010011010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_JROpcode[1]~input_o\,
	datab => \ALT_INV_JROpcode[0]~input_o\,
	datac => \ALT_INV_BranchAD[11]~input_o\,
	datad => \ALT_INV_PCP2AD[11]~input_o\,
	dataf => \ALT_INV_JumpAD[11]~input_o\,
	combout => \PCout~11_combout\);

-- Location: IOIBUF_X50_Y0_N41
\PCP2AD[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PCP2AD(12),
	o => \PCP2AD[12]~input_o\);

-- Location: IOIBUF_X52_Y0_N1
\BranchAD[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BranchAD(12),
	o => \BranchAD[12]~input_o\);

-- Location: IOIBUF_X54_Y0_N18
\JumpAD[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_JumpAD(12),
	o => \JumpAD[12]~input_o\);

-- Location: LABCELL_X53_Y1_N45
\PCout~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \PCout~12_combout\ = ( \JROpcode[0]~input_o\ & ( \JumpAD[12]~input_o\ & ( (!\JROpcode[1]~input_o\) # (\PCP2AD[12]~input_o\) ) ) ) # ( !\JROpcode[0]~input_o\ & ( \JumpAD[12]~input_o\ & ( (!\JROpcode[1]~input_o\ & (\PCP2AD[12]~input_o\)) # 
-- (\JROpcode[1]~input_o\ & ((\BranchAD[12]~input_o\))) ) ) ) # ( \JROpcode[0]~input_o\ & ( !\JumpAD[12]~input_o\ & ( (\PCP2AD[12]~input_o\ & \JROpcode[1]~input_o\) ) ) ) # ( !\JROpcode[0]~input_o\ & ( !\JumpAD[12]~input_o\ & ( (!\JROpcode[1]~input_o\ & 
-- (\PCP2AD[12]~input_o\)) # (\JROpcode[1]~input_o\ & ((\BranchAD[12]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011000001010000010101010011010100111111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_PCP2AD[12]~input_o\,
	datab => \ALT_INV_BranchAD[12]~input_o\,
	datac => \ALT_INV_JROpcode[1]~input_o\,
	datae => \ALT_INV_JROpcode[0]~input_o\,
	dataf => \ALT_INV_JumpAD[12]~input_o\,
	combout => \PCout~12_combout\);

-- Location: IOIBUF_X8_Y0_N1
\PCP2AD[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PCP2AD(13),
	o => \PCP2AD[13]~input_o\);

-- Location: IOIBUF_X26_Y0_N92
\BranchAD[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BranchAD(13),
	o => \BranchAD[13]~input_o\);

-- Location: IOIBUF_X30_Y0_N18
\JumpAD[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_JumpAD(13),
	o => \JumpAD[13]~input_o\);

-- Location: LABCELL_X31_Y1_N21
\PCout~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \PCout~13_combout\ = ( \JumpAD[13]~input_o\ & ( (!\JROpcode[1]~input_o\ & (((\PCP2AD[13]~input_o\)) # (\JROpcode[0]~input_o\))) # (\JROpcode[1]~input_o\ & ((!\JROpcode[0]~input_o\ & ((\BranchAD[13]~input_o\))) # (\JROpcode[0]~input_o\ & 
-- (\PCP2AD[13]~input_o\)))) ) ) # ( !\JumpAD[13]~input_o\ & ( (!\JROpcode[1]~input_o\ & (!\JROpcode[0]~input_o\ & (\PCP2AD[13]~input_o\))) # (\JROpcode[1]~input_o\ & ((!\JROpcode[0]~input_o\ & ((\BranchAD[13]~input_o\))) # (\JROpcode[0]~input_o\ & 
-- (\PCP2AD[13]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100101001101000010010100110100101011011011110010101101101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_JROpcode[1]~input_o\,
	datab => \ALT_INV_JROpcode[0]~input_o\,
	datac => \ALT_INV_PCP2AD[13]~input_o\,
	datad => \ALT_INV_BranchAD[13]~input_o\,
	dataf => \ALT_INV_JumpAD[13]~input_o\,
	combout => \PCout~13_combout\);

-- Location: IOIBUF_X4_Y0_N1
\PCP2AD[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PCP2AD(14),
	o => \PCP2AD[14]~input_o\);

-- Location: IOIBUF_X6_Y0_N1
\JumpAD[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_JumpAD(14),
	o => \JumpAD[14]~input_o\);

-- Location: IOIBUF_X8_Y0_N35
\BranchAD[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BranchAD(14),
	o => \BranchAD[14]~input_o\);

-- Location: LABCELL_X31_Y1_N54
\PCout~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \PCout~14_combout\ = ( \JROpcode[1]~input_o\ & ( (!\JROpcode[0]~input_o\ & ((\BranchAD[14]~input_o\))) # (\JROpcode[0]~input_o\ & (\PCP2AD[14]~input_o\)) ) ) # ( !\JROpcode[1]~input_o\ & ( (!\JROpcode[0]~input_o\ & (\PCP2AD[14]~input_o\)) # 
-- (\JROpcode[0]~input_o\ & ((\JumpAD[14]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110011010101010011001100001111010101010000111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_PCP2AD[14]~input_o\,
	datab => \ALT_INV_JumpAD[14]~input_o\,
	datac => \ALT_INV_BranchAD[14]~input_o\,
	datad => \ALT_INV_JROpcode[0]~input_o\,
	dataf => \ALT_INV_JROpcode[1]~input_o\,
	combout => \PCout~14_combout\);

-- Location: IOIBUF_X56_Y0_N35
\PCP2AD[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PCP2AD(15),
	o => \PCP2AD[15]~input_o\);

-- Location: IOIBUF_X54_Y0_N35
\JumpAD[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_JumpAD(15),
	o => \JumpAD[15]~input_o\);

-- Location: IOIBUF_X58_Y0_N58
\BranchAD[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BranchAD(15),
	o => \BranchAD[15]~input_o\);

-- Location: LABCELL_X53_Y1_N18
\PCout~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \PCout~15_combout\ = ( \JROpcode[0]~input_o\ & ( \BranchAD[15]~input_o\ & ( (!\JROpcode[1]~input_o\ & ((\JumpAD[15]~input_o\))) # (\JROpcode[1]~input_o\ & (\PCP2AD[15]~input_o\)) ) ) ) # ( !\JROpcode[0]~input_o\ & ( \BranchAD[15]~input_o\ & ( 
-- (\JROpcode[1]~input_o\) # (\PCP2AD[15]~input_o\) ) ) ) # ( \JROpcode[0]~input_o\ & ( !\BranchAD[15]~input_o\ & ( (!\JROpcode[1]~input_o\ & ((\JumpAD[15]~input_o\))) # (\JROpcode[1]~input_o\ & (\PCP2AD[15]~input_o\)) ) ) ) # ( !\JROpcode[0]~input_o\ & ( 
-- !\BranchAD[15]~input_o\ & ( (\PCP2AD[15]~input_o\ & !\JROpcode[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100000111010001110101110111011101110001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_PCP2AD[15]~input_o\,
	datab => \ALT_INV_JROpcode[1]~input_o\,
	datac => \ALT_INV_JumpAD[15]~input_o\,
	datae => \ALT_INV_JROpcode[0]~input_o\,
	dataf => \ALT_INV_BranchAD[15]~input_o\,
	combout => \PCout~15_combout\);

-- Location: LABCELL_X71_Y67_N0
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


