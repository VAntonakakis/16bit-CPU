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

-- DATE "05/19/2026 19:38:46"

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

ENTITY 	data_selector IS
    PORT (
	WriteExternal : IN std_logic;
	RegRD : IN std_logic_vector(2 DOWNTO 0);
	RegRS : IN std_logic_vector(2 DOWNTO 0);
	ALUResult : IN std_logic_vector(15 DOWNTO 0);
	Data : IN std_logic_vector(15 DOWNTO 0);
	regaddressout : OUT std_logic_vector(2 DOWNTO 0);
	out2 : OUT std_logic_vector(15 DOWNTO 0)
	);
END data_selector;

-- Design Ports Information
-- regaddressout[0]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regaddressout[1]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regaddressout[2]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out2[0]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out2[1]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out2[2]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out2[3]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out2[4]	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out2[5]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out2[6]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out2[7]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out2[8]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out2[9]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out2[10]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out2[11]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out2[12]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out2[13]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out2[14]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out2[15]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WriteExternal	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegRS[0]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegRD[0]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegRS[1]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegRD[1]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegRS[2]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegRD[2]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data[0]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUResult[0]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data[1]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUResult[1]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data[2]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUResult[2]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data[3]	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUResult[3]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data[4]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUResult[4]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data[5]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUResult[5]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data[6]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUResult[6]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data[7]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUResult[7]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data[8]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUResult[8]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data[9]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUResult[9]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data[10]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUResult[10]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data[11]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUResult[11]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data[12]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUResult[12]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data[13]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUResult[13]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data[14]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUResult[14]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data[15]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUResult[15]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF data_selector IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_WriteExternal : std_logic;
SIGNAL ww_RegRD : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_RegRS : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_ALUResult : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_Data : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_regaddressout : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_out2 : std_logic_vector(15 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \RegRD[0]~input_o\ : std_logic;
SIGNAL \RegRS[0]~input_o\ : std_logic;
SIGNAL \WriteExternal~input_o\ : std_logic;
SIGNAL \regaddressout~0_combout\ : std_logic;
SIGNAL \RegRS[1]~input_o\ : std_logic;
SIGNAL \RegRD[1]~input_o\ : std_logic;
SIGNAL \regaddressout~1_combout\ : std_logic;
SIGNAL \RegRS[2]~input_o\ : std_logic;
SIGNAL \RegRD[2]~input_o\ : std_logic;
SIGNAL \regaddressout~2_combout\ : std_logic;
SIGNAL \ALUResult[0]~input_o\ : std_logic;
SIGNAL \Data[0]~input_o\ : std_logic;
SIGNAL \out2~0_combout\ : std_logic;
SIGNAL \ALUResult[1]~input_o\ : std_logic;
SIGNAL \Data[1]~input_o\ : std_logic;
SIGNAL \out2~1_combout\ : std_logic;
SIGNAL \Data[2]~input_o\ : std_logic;
SIGNAL \ALUResult[2]~input_o\ : std_logic;
SIGNAL \out2~2_combout\ : std_logic;
SIGNAL \Data[3]~input_o\ : std_logic;
SIGNAL \ALUResult[3]~input_o\ : std_logic;
SIGNAL \out2~3_combout\ : std_logic;
SIGNAL \Data[4]~input_o\ : std_logic;
SIGNAL \ALUResult[4]~input_o\ : std_logic;
SIGNAL \out2~4_combout\ : std_logic;
SIGNAL \Data[5]~input_o\ : std_logic;
SIGNAL \ALUResult[5]~input_o\ : std_logic;
SIGNAL \out2~5_combout\ : std_logic;
SIGNAL \Data[6]~input_o\ : std_logic;
SIGNAL \ALUResult[6]~input_o\ : std_logic;
SIGNAL \out2~6_combout\ : std_logic;
SIGNAL \ALUResult[7]~input_o\ : std_logic;
SIGNAL \Data[7]~input_o\ : std_logic;
SIGNAL \out2~7_combout\ : std_logic;
SIGNAL \ALUResult[8]~input_o\ : std_logic;
SIGNAL \Data[8]~input_o\ : std_logic;
SIGNAL \out2~8_combout\ : std_logic;
SIGNAL \ALUResult[9]~input_o\ : std_logic;
SIGNAL \Data[9]~input_o\ : std_logic;
SIGNAL \out2~9_combout\ : std_logic;
SIGNAL \Data[10]~input_o\ : std_logic;
SIGNAL \ALUResult[10]~input_o\ : std_logic;
SIGNAL \out2~10_combout\ : std_logic;
SIGNAL \Data[11]~input_o\ : std_logic;
SIGNAL \ALUResult[11]~input_o\ : std_logic;
SIGNAL \out2~11_combout\ : std_logic;
SIGNAL \Data[12]~input_o\ : std_logic;
SIGNAL \ALUResult[12]~input_o\ : std_logic;
SIGNAL \out2~12_combout\ : std_logic;
SIGNAL \ALUResult[13]~input_o\ : std_logic;
SIGNAL \Data[13]~input_o\ : std_logic;
SIGNAL \out2~13_combout\ : std_logic;
SIGNAL \Data[14]~input_o\ : std_logic;
SIGNAL \ALUResult[14]~input_o\ : std_logic;
SIGNAL \out2~14_combout\ : std_logic;
SIGNAL \Data[15]~input_o\ : std_logic;
SIGNAL \ALUResult[15]~input_o\ : std_logic;
SIGNAL \out2~15_combout\ : std_logic;
SIGNAL \ALT_INV_ALUResult[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_Data[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_ALUResult[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_Data[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_ALUResult[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_Data[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_ALUResult[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_Data[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_ALUResult[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_Data[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_ALUResult[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_Data[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_ALUResult[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_Data[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_ALUResult[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_Data[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_ALUResult[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_Data[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_ALUResult[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_Data[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_ALUResult[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_Data[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_ALUResult[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_Data[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_ALUResult[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_Data[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_ALUResult[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_Data[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_ALUResult[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_Data[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_ALUResult[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_Data[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_RegRD[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_RegRS[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_RegRD[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_RegRS[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_RegRD[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_RegRS[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_WriteExternal~input_o\ : std_logic;

BEGIN

ww_WriteExternal <= WriteExternal;
ww_RegRD <= RegRD;
ww_RegRS <= RegRS;
ww_ALUResult <= ALUResult;
ww_Data <= Data;
regaddressout <= ww_regaddressout;
out2 <= ww_out2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_ALUResult[15]~input_o\ <= NOT \ALUResult[15]~input_o\;
\ALT_INV_Data[15]~input_o\ <= NOT \Data[15]~input_o\;
\ALT_INV_ALUResult[14]~input_o\ <= NOT \ALUResult[14]~input_o\;
\ALT_INV_Data[14]~input_o\ <= NOT \Data[14]~input_o\;
\ALT_INV_ALUResult[13]~input_o\ <= NOT \ALUResult[13]~input_o\;
\ALT_INV_Data[13]~input_o\ <= NOT \Data[13]~input_o\;
\ALT_INV_ALUResult[12]~input_o\ <= NOT \ALUResult[12]~input_o\;
\ALT_INV_Data[12]~input_o\ <= NOT \Data[12]~input_o\;
\ALT_INV_ALUResult[11]~input_o\ <= NOT \ALUResult[11]~input_o\;
\ALT_INV_Data[11]~input_o\ <= NOT \Data[11]~input_o\;
\ALT_INV_ALUResult[10]~input_o\ <= NOT \ALUResult[10]~input_o\;
\ALT_INV_Data[10]~input_o\ <= NOT \Data[10]~input_o\;
\ALT_INV_ALUResult[9]~input_o\ <= NOT \ALUResult[9]~input_o\;
\ALT_INV_Data[9]~input_o\ <= NOT \Data[9]~input_o\;
\ALT_INV_ALUResult[8]~input_o\ <= NOT \ALUResult[8]~input_o\;
\ALT_INV_Data[8]~input_o\ <= NOT \Data[8]~input_o\;
\ALT_INV_ALUResult[7]~input_o\ <= NOT \ALUResult[7]~input_o\;
\ALT_INV_Data[7]~input_o\ <= NOT \Data[7]~input_o\;
\ALT_INV_ALUResult[6]~input_o\ <= NOT \ALUResult[6]~input_o\;
\ALT_INV_Data[6]~input_o\ <= NOT \Data[6]~input_o\;
\ALT_INV_ALUResult[5]~input_o\ <= NOT \ALUResult[5]~input_o\;
\ALT_INV_Data[5]~input_o\ <= NOT \Data[5]~input_o\;
\ALT_INV_ALUResult[4]~input_o\ <= NOT \ALUResult[4]~input_o\;
\ALT_INV_Data[4]~input_o\ <= NOT \Data[4]~input_o\;
\ALT_INV_ALUResult[3]~input_o\ <= NOT \ALUResult[3]~input_o\;
\ALT_INV_Data[3]~input_o\ <= NOT \Data[3]~input_o\;
\ALT_INV_ALUResult[2]~input_o\ <= NOT \ALUResult[2]~input_o\;
\ALT_INV_Data[2]~input_o\ <= NOT \Data[2]~input_o\;
\ALT_INV_ALUResult[1]~input_o\ <= NOT \ALUResult[1]~input_o\;
\ALT_INV_Data[1]~input_o\ <= NOT \Data[1]~input_o\;
\ALT_INV_ALUResult[0]~input_o\ <= NOT \ALUResult[0]~input_o\;
\ALT_INV_Data[0]~input_o\ <= NOT \Data[0]~input_o\;
\ALT_INV_RegRD[2]~input_o\ <= NOT \RegRD[2]~input_o\;
\ALT_INV_RegRS[2]~input_o\ <= NOT \RegRS[2]~input_o\;
\ALT_INV_RegRD[1]~input_o\ <= NOT \RegRD[1]~input_o\;
\ALT_INV_RegRS[1]~input_o\ <= NOT \RegRS[1]~input_o\;
\ALT_INV_RegRD[0]~input_o\ <= NOT \RegRD[0]~input_o\;
\ALT_INV_RegRS[0]~input_o\ <= NOT \RegRS[0]~input_o\;
\ALT_INV_WriteExternal~input_o\ <= NOT \WriteExternal~input_o\;

-- Location: IOOBUF_X34_Y0_N93
\regaddressout[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \regaddressout~0_combout\,
	devoe => ww_devoe,
	o => ww_regaddressout(0));

-- Location: IOOBUF_X4_Y0_N53
\regaddressout[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \regaddressout~1_combout\,
	devoe => ww_devoe,
	o => ww_regaddressout(1));

-- Location: IOOBUF_X52_Y0_N36
\regaddressout[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \regaddressout~2_combout\,
	devoe => ww_devoe,
	o => ww_regaddressout(2));

-- Location: IOOBUF_X52_Y0_N19
\out2[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \out2~0_combout\,
	devoe => ww_devoe,
	o => ww_out2(0));

-- Location: IOOBUF_X30_Y0_N53
\out2[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \out2~1_combout\,
	devoe => ww_devoe,
	o => ww_out2(1));

-- Location: IOOBUF_X2_Y0_N42
\out2[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \out2~2_combout\,
	devoe => ww_devoe,
	o => ww_out2(2));

-- Location: IOOBUF_X8_Y0_N53
\out2[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \out2~3_combout\,
	devoe => ww_devoe,
	o => ww_out2(3));

-- Location: IOOBUF_X34_Y0_N76
\out2[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \out2~4_combout\,
	devoe => ww_devoe,
	o => ww_out2(4));

-- Location: IOOBUF_X54_Y0_N19
\out2[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \out2~5_combout\,
	devoe => ww_devoe,
	o => ww_out2(5));

-- Location: IOOBUF_X32_Y0_N53
\out2[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \out2~6_combout\,
	devoe => ww_devoe,
	o => ww_out2(6));

-- Location: IOOBUF_X6_Y0_N36
\out2[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \out2~7_combout\,
	devoe => ww_devoe,
	o => ww_out2(7));

-- Location: IOOBUF_X38_Y0_N36
\out2[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \out2~8_combout\,
	devoe => ww_devoe,
	o => ww_out2(8));

-- Location: IOOBUF_X32_Y0_N36
\out2[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \out2~9_combout\,
	devoe => ww_devoe,
	o => ww_out2(9));

-- Location: IOOBUF_X38_Y0_N2
\out2[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \out2~10_combout\,
	devoe => ww_devoe,
	o => ww_out2(10));

-- Location: IOOBUF_X6_Y0_N19
\out2[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \out2~11_combout\,
	devoe => ww_devoe,
	o => ww_out2(11));

-- Location: IOOBUF_X30_Y0_N2
\out2[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \out2~12_combout\,
	devoe => ww_devoe,
	o => ww_out2(12));

-- Location: IOOBUF_X38_Y0_N53
\out2[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \out2~13_combout\,
	devoe => ww_devoe,
	o => ww_out2(13));

-- Location: IOOBUF_X38_Y0_N19
\out2[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \out2~14_combout\,
	devoe => ww_devoe,
	o => ww_out2(14));

-- Location: IOOBUF_X36_Y0_N19
\out2[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \out2~15_combout\,
	devoe => ww_devoe,
	o => ww_out2(15));

-- Location: IOIBUF_X30_Y0_N18
\RegRD[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RegRD(0),
	o => \RegRD[0]~input_o\);

-- Location: IOIBUF_X26_Y0_N41
\RegRS[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RegRS(0),
	o => \RegRS[0]~input_o\);

-- Location: IOIBUF_X34_Y0_N41
\WriteExternal~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WriteExternal,
	o => \WriteExternal~input_o\);

-- Location: LABCELL_X27_Y1_N30
\regaddressout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \regaddressout~0_combout\ = ( \WriteExternal~input_o\ & ( \RegRS[0]~input_o\ ) ) # ( !\WriteExternal~input_o\ & ( \RegRD[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RegRD[0]~input_o\,
	datac => \ALT_INV_RegRS[0]~input_o\,
	dataf => \ALT_INV_WriteExternal~input_o\,
	combout => \regaddressout~0_combout\);

-- Location: IOIBUF_X28_Y0_N52
\RegRS[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RegRS(1),
	o => \RegRS[1]~input_o\);

-- Location: IOIBUF_X30_Y0_N35
\RegRD[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RegRD(1),
	o => \RegRD[1]~input_o\);

-- Location: LABCELL_X27_Y1_N9
\regaddressout~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \regaddressout~1_combout\ = ( \WriteExternal~input_o\ & ( \RegRS[1]~input_o\ ) ) # ( !\WriteExternal~input_o\ & ( \RegRD[1]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RegRS[1]~input_o\,
	datac => \ALT_INV_RegRD[1]~input_o\,
	dataf => \ALT_INV_WriteExternal~input_o\,
	combout => \regaddressout~1_combout\);

-- Location: IOIBUF_X52_Y0_N52
\RegRS[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RegRS(2),
	o => \RegRS[2]~input_o\);

-- Location: IOIBUF_X54_Y0_N52
\RegRD[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RegRD(2),
	o => \RegRD[2]~input_o\);

-- Location: LABCELL_X45_Y2_N33
\regaddressout~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \regaddressout~2_combout\ = ( \RegRD[2]~input_o\ & ( (!\WriteExternal~input_o\) # (\RegRS[2]~input_o\) ) ) # ( !\RegRD[2]~input_o\ & ( (\WriteExternal~input_o\ & \RegRS[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101101010101111111100000000010101011010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_WriteExternal~input_o\,
	datad => \ALT_INV_RegRS[2]~input_o\,
	datae => \ALT_INV_RegRD[2]~input_o\,
	combout => \regaddressout~2_combout\);

-- Location: IOIBUF_X40_Y0_N18
\ALUResult[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALUResult(0),
	o => \ALUResult[0]~input_o\);

-- Location: IOIBUF_X56_Y0_N1
\Data[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data(0),
	o => \Data[0]~input_o\);

-- Location: LABCELL_X45_Y2_N36
\out2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \out2~0_combout\ = ( \ALUResult[0]~input_o\ & ( \Data[0]~input_o\ ) ) # ( !\ALUResult[0]~input_o\ & ( \Data[0]~input_o\ & ( \WriteExternal~input_o\ ) ) ) # ( \ALUResult[0]~input_o\ & ( !\Data[0]~input_o\ & ( !\WriteExternal~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_WriteExternal~input_o\,
	datae => \ALT_INV_ALUResult[0]~input_o\,
	dataf => \ALT_INV_Data[0]~input_o\,
	combout => \out2~0_combout\);

-- Location: IOIBUF_X28_Y0_N35
\ALUResult[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALUResult(1),
	o => \ALUResult[1]~input_o\);

-- Location: IOIBUF_X26_Y0_N92
\Data[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data(1),
	o => \Data[1]~input_o\);

-- Location: LABCELL_X27_Y1_N45
\out2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \out2~1_combout\ = ( \Data[1]~input_o\ & ( \WriteExternal~input_o\ ) ) # ( \Data[1]~input_o\ & ( !\WriteExternal~input_o\ & ( \ALUResult[1]~input_o\ ) ) ) # ( !\Data[1]~input_o\ & ( !\WriteExternal~input_o\ & ( \ALUResult[1]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ALUResult[1]~input_o\,
	datae => \ALT_INV_Data[1]~input_o\,
	dataf => \ALT_INV_WriteExternal~input_o\,
	combout => \out2~1_combout\);

-- Location: IOIBUF_X26_Y0_N58
\Data[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data(2),
	o => \Data[2]~input_o\);

-- Location: IOIBUF_X26_Y0_N75
\ALUResult[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALUResult(2),
	o => \ALUResult[2]~input_o\);

-- Location: LABCELL_X27_Y1_N51
\out2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \out2~2_combout\ = ( \ALUResult[2]~input_o\ & ( \WriteExternal~input_o\ & ( \Data[2]~input_o\ ) ) ) # ( !\ALUResult[2]~input_o\ & ( \WriteExternal~input_o\ & ( \Data[2]~input_o\ ) ) ) # ( \ALUResult[2]~input_o\ & ( !\WriteExternal~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Data[2]~input_o\,
	datae => \ALT_INV_ALUResult[2]~input_o\,
	dataf => \ALT_INV_WriteExternal~input_o\,
	combout => \out2~2_combout\);

-- Location: IOIBUF_X4_Y0_N35
\Data[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data(3),
	o => \Data[3]~input_o\);

-- Location: IOIBUF_X8_Y0_N18
\ALUResult[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALUResult(3),
	o => \ALUResult[3]~input_o\);

-- Location: LABCELL_X17_Y1_N0
\out2~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \out2~3_combout\ = ( \WriteExternal~input_o\ & ( \Data[3]~input_o\ ) ) # ( !\WriteExternal~input_o\ & ( \ALUResult[3]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Data[3]~input_o\,
	datac => \ALT_INV_ALUResult[3]~input_o\,
	dataf => \ALT_INV_WriteExternal~input_o\,
	combout => \out2~3_combout\);

-- Location: IOIBUF_X40_Y0_N52
\Data[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data(4),
	o => \Data[4]~input_o\);

-- Location: IOIBUF_X54_Y0_N1
\ALUResult[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALUResult(4),
	o => \ALUResult[4]~input_o\);

-- Location: LABCELL_X45_Y2_N12
\out2~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \out2~4_combout\ = ( \ALUResult[4]~input_o\ & ( (!\WriteExternal~input_o\) # (\Data[4]~input_o\) ) ) # ( !\ALUResult[4]~input_o\ & ( (\Data[4]~input_o\ & \WriteExternal~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111110011111100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Data[4]~input_o\,
	datac => \ALT_INV_WriteExternal~input_o\,
	dataf => \ALT_INV_ALUResult[4]~input_o\,
	combout => \out2~4_combout\);

-- Location: IOIBUF_X50_Y0_N58
\Data[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data(5),
	o => \Data[5]~input_o\);

-- Location: IOIBUF_X54_Y0_N35
\ALUResult[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALUResult(5),
	o => \ALUResult[5]~input_o\);

-- Location: LABCELL_X45_Y2_N18
\out2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \out2~5_combout\ = ( \ALUResult[5]~input_o\ & ( (!\WriteExternal~input_o\) # (\Data[5]~input_o\) ) ) # ( !\ALUResult[5]~input_o\ & ( (\Data[5]~input_o\ & \WriteExternal~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010111110101111101011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Data[5]~input_o\,
	datac => \ALT_INV_WriteExternal~input_o\,
	dataf => \ALT_INV_ALUResult[5]~input_o\,
	combout => \out2~5_combout\);

-- Location: IOIBUF_X8_Y0_N35
\Data[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data(6),
	o => \Data[6]~input_o\);

-- Location: IOIBUF_X6_Y0_N1
\ALUResult[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALUResult(6),
	o => \ALUResult[6]~input_o\);

-- Location: LABCELL_X27_Y1_N54
\out2~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \out2~6_combout\ = ( \ALUResult[6]~input_o\ & ( \WriteExternal~input_o\ & ( \Data[6]~input_o\ ) ) ) # ( !\ALUResult[6]~input_o\ & ( \WriteExternal~input_o\ & ( \Data[6]~input_o\ ) ) ) # ( \ALUResult[6]~input_o\ & ( !\WriteExternal~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Data[6]~input_o\,
	datae => \ALT_INV_ALUResult[6]~input_o\,
	dataf => \ALT_INV_WriteExternal~input_o\,
	combout => \out2~6_combout\);

-- Location: IOIBUF_X32_Y0_N1
\ALUResult[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALUResult(7),
	o => \ALUResult[7]~input_o\);

-- Location: IOIBUF_X28_Y0_N1
\Data[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data(7),
	o => \Data[7]~input_o\);

-- Location: LABCELL_X27_Y1_N0
\out2~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \out2~7_combout\ = ( \WriteExternal~input_o\ & ( \Data[7]~input_o\ ) ) # ( !\WriteExternal~input_o\ & ( \ALUResult[7]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ALUResult[7]~input_o\,
	datac => \ALT_INV_Data[7]~input_o\,
	dataf => \ALT_INV_WriteExternal~input_o\,
	combout => \out2~7_combout\);

-- Location: IOIBUF_X36_Y0_N1
\ALUResult[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALUResult(8),
	o => \ALUResult[8]~input_o\);

-- Location: IOIBUF_X36_Y0_N52
\Data[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data(8),
	o => \Data[8]~input_o\);

-- Location: LABCELL_X36_Y1_N3
\out2~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \out2~8_combout\ = ( \Data[8]~input_o\ & ( (\ALUResult[8]~input_o\) # (\WriteExternal~input_o\) ) ) # ( !\Data[8]~input_o\ & ( (!\WriteExternal~input_o\ & \ALUResult[8]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_WriteExternal~input_o\,
	datad => \ALT_INV_ALUResult[8]~input_o\,
	dataf => \ALT_INV_Data[8]~input_o\,
	combout => \out2~8_combout\);

-- Location: IOIBUF_X32_Y0_N18
\ALUResult[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALUResult(9),
	o => \ALUResult[9]~input_o\);

-- Location: IOIBUF_X34_Y0_N58
\Data[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data(9),
	o => \Data[9]~input_o\);

-- Location: LABCELL_X33_Y1_N0
\out2~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \out2~9_combout\ = ( \WriteExternal~input_o\ & ( \Data[9]~input_o\ ) ) # ( !\WriteExternal~input_o\ & ( \Data[9]~input_o\ & ( \ALUResult[9]~input_o\ ) ) ) # ( !\WriteExternal~input_o\ & ( !\Data[9]~input_o\ & ( \ALUResult[9]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_ALUResult[9]~input_o\,
	datae => \ALT_INV_WriteExternal~input_o\,
	dataf => \ALT_INV_Data[9]~input_o\,
	combout => \out2~9_combout\);

-- Location: IOIBUF_X50_Y0_N92
\Data[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data(10),
	o => \Data[10]~input_o\);

-- Location: IOIBUF_X66_Y0_N58
\ALUResult[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALUResult(10),
	o => \ALUResult[10]~input_o\);

-- Location: LABCELL_X45_Y2_N24
\out2~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \out2~10_combout\ = ( \Data[10]~input_o\ & ( \ALUResult[10]~input_o\ ) ) # ( !\Data[10]~input_o\ & ( \ALUResult[10]~input_o\ & ( !\WriteExternal~input_o\ ) ) ) # ( \Data[10]~input_o\ & ( !\ALUResult[10]~input_o\ & ( \WriteExternal~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111111110000111100001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_WriteExternal~input_o\,
	datae => \ALT_INV_Data[10]~input_o\,
	dataf => \ALT_INV_ALUResult[10]~input_o\,
	combout => \out2~10_combout\);

-- Location: IOIBUF_X28_Y0_N18
\Data[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data(11),
	o => \Data[11]~input_o\);

-- Location: IOIBUF_X6_Y0_N52
\ALUResult[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALUResult(11),
	o => \ALUResult[11]~input_o\);

-- Location: LABCELL_X27_Y1_N36
\out2~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \out2~11_combout\ = ( \ALUResult[11]~input_o\ & ( \WriteExternal~input_o\ & ( \Data[11]~input_o\ ) ) ) # ( !\ALUResult[11]~input_o\ & ( \WriteExternal~input_o\ & ( \Data[11]~input_o\ ) ) ) # ( \ALUResult[11]~input_o\ & ( !\WriteExternal~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Data[11]~input_o\,
	datae => \ALT_INV_ALUResult[11]~input_o\,
	dataf => \ALT_INV_WriteExternal~input_o\,
	combout => \out2~11_combout\);

-- Location: IOIBUF_X4_Y0_N18
\Data[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data(12),
	o => \Data[12]~input_o\);

-- Location: IOIBUF_X8_Y0_N1
\ALUResult[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALUResult(12),
	o => \ALUResult[12]~input_o\);

-- Location: LABCELL_X27_Y1_N15
\out2~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \out2~12_combout\ = ( \ALUResult[12]~input_o\ & ( \WriteExternal~input_o\ & ( \Data[12]~input_o\ ) ) ) # ( !\ALUResult[12]~input_o\ & ( \WriteExternal~input_o\ & ( \Data[12]~input_o\ ) ) ) # ( \ALUResult[12]~input_o\ & ( !\WriteExternal~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Data[12]~input_o\,
	datae => \ALT_INV_ALUResult[12]~input_o\,
	dataf => \ALT_INV_WriteExternal~input_o\,
	combout => \out2~12_combout\);

-- Location: IOIBUF_X40_Y0_N1
\ALUResult[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALUResult(13),
	o => \ALUResult[13]~input_o\);

-- Location: IOIBUF_X52_Y0_N1
\Data[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data(13),
	o => \Data[13]~input_o\);

-- Location: LABCELL_X45_Y2_N3
\out2~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \out2~13_combout\ = ( \ALUResult[13]~input_o\ & ( \Data[13]~input_o\ ) ) # ( !\ALUResult[13]~input_o\ & ( \Data[13]~input_o\ & ( \WriteExternal~input_o\ ) ) ) # ( \ALUResult[13]~input_o\ & ( !\Data[13]~input_o\ & ( !\WriteExternal~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101001010101010101011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_WriteExternal~input_o\,
	datae => \ALT_INV_ALUResult[13]~input_o\,
	dataf => \ALT_INV_Data[13]~input_o\,
	combout => \out2~13_combout\);

-- Location: IOIBUF_X50_Y0_N41
\Data[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data(14),
	o => \Data[14]~input_o\);

-- Location: IOIBUF_X50_Y0_N75
\ALUResult[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALUResult(14),
	o => \ALUResult[14]~input_o\);

-- Location: LABCELL_X45_Y2_N9
\out2~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \out2~14_combout\ = ( \Data[14]~input_o\ & ( \ALUResult[14]~input_o\ ) ) # ( !\Data[14]~input_o\ & ( \ALUResult[14]~input_o\ & ( !\WriteExternal~input_o\ ) ) ) # ( \Data[14]~input_o\ & ( !\ALUResult[14]~input_o\ & ( \WriteExternal~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010110101010101010101111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_WriteExternal~input_o\,
	datae => \ALT_INV_Data[14]~input_o\,
	dataf => \ALT_INV_ALUResult[14]~input_o\,
	combout => \out2~14_combout\);

-- Location: IOIBUF_X36_Y0_N35
\Data[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data(15),
	o => \Data[15]~input_o\);

-- Location: IOIBUF_X40_Y0_N35
\ALUResult[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALUResult(15),
	o => \ALUResult[15]~input_o\);

-- Location: MLABCELL_X39_Y1_N33
\out2~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \out2~15_combout\ = ( \ALUResult[15]~input_o\ & ( (!\WriteExternal~input_o\) # (\Data[15]~input_o\) ) ) # ( !\ALUResult[15]~input_o\ & ( (\WriteExternal~input_o\ & \Data[15]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010110101010111111111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_WriteExternal~input_o\,
	datad => \ALT_INV_Data[15]~input_o\,
	dataf => \ALT_INV_ALUResult[15]~input_o\,
	combout => \out2~15_combout\);

-- Location: MLABCELL_X8_Y1_N3
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


