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

-- DATE "04/09/2026 12:53:34"

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

ENTITY 	MyJumpAddress IS
    PORT (
	jumpAD : IN std_logic_vector(11 DOWNTO 0);
	instrP2AD : IN std_logic_vector(15 DOWNTO 0);
	EjumpAD : OUT std_logic_vector(15 DOWNTO 0)
	);
END MyJumpAddress;

-- Design Ports Information
-- EjumpAD[0]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EjumpAD[1]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EjumpAD[2]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EjumpAD[3]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EjumpAD[4]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EjumpAD[5]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EjumpAD[6]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EjumpAD[7]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EjumpAD[8]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EjumpAD[9]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EjumpAD[10]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EjumpAD[11]	=>  Location: PIN_V19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EjumpAD[12]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EjumpAD[13]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EjumpAD[14]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EjumpAD[15]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrP2AD[0]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jumpAD[0]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrP2AD[1]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jumpAD[1]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrP2AD[2]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jumpAD[2]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrP2AD[3]	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jumpAD[3]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrP2AD[4]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jumpAD[4]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrP2AD[5]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jumpAD[5]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrP2AD[6]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jumpAD[6]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrP2AD[7]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jumpAD[7]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrP2AD[8]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jumpAD[8]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrP2AD[9]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jumpAD[9]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrP2AD[10]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jumpAD[10]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrP2AD[11]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jumpAD[11]	=>  Location: PIN_U17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrP2AD[12]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrP2AD[13]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrP2AD[14]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrP2AD[15]	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF MyJumpAddress IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_jumpAD : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_instrP2AD : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_EjumpAD : std_logic_vector(15 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \instrP2AD[0]~input_o\ : std_logic;
SIGNAL \instrP2AD[1]~input_o\ : std_logic;
SIGNAL \jumpAD[0]~input_o\ : std_logic;
SIGNAL \v1|v1|v1|v3|Q~0_combout\ : std_logic;
SIGNAL \instrP2AD[2]~input_o\ : std_logic;
SIGNAL \jumpAD[1]~input_o\ : std_logic;
SIGNAL \v1|v2|v3|v3|Q~0_combout\ : std_logic;
SIGNAL \instrP2AD[3]~input_o\ : std_logic;
SIGNAL \jumpAD[2]~input_o\ : std_logic;
SIGNAL \v1|v3|v3|v3|Q~0_combout\ : std_logic;
SIGNAL \instrP2AD[4]~input_o\ : std_logic;
SIGNAL \jumpAD[3]~input_o\ : std_logic;
SIGNAL \v1|v3|v5|Q~combout\ : std_logic;
SIGNAL \v1|v4|v3|v3|Q~0_combout\ : std_logic;
SIGNAL \jumpAD[4]~input_o\ : std_logic;
SIGNAL \instrP2AD[5]~input_o\ : std_logic;
SIGNAL \v1|v4|v5|Q~combout\ : std_logic;
SIGNAL \v1|v5|v3|v3|Q~0_combout\ : std_logic;
SIGNAL \instrP2AD[6]~input_o\ : std_logic;
SIGNAL \jumpAD[5]~input_o\ : std_logic;
SIGNAL \v1|v6|v1|v3|Q~0_combout\ : std_logic;
SIGNAL \v1|v6|v3|v3|Q~0_combout\ : std_logic;
SIGNAL \instrP2AD[7]~input_o\ : std_logic;
SIGNAL \jumpAD[6]~input_o\ : std_logic;
SIGNAL \v1|v6|v4|Q~combout\ : std_logic;
SIGNAL \v1|v6|v2|Q~combout\ : std_logic;
SIGNAL \v1|v6|v5|Q~combout\ : std_logic;
SIGNAL \v1|v7|v3|v3|Q~0_combout\ : std_logic;
SIGNAL \jumpAD[7]~input_o\ : std_logic;
SIGNAL \instrP2AD[8]~input_o\ : std_logic;
SIGNAL \v1|v8|v3|v3|Q~0_combout\ : std_logic;
SIGNAL \v1|v8|v5|Q~combout\ : std_logic;
SIGNAL \jumpAD[8]~input_o\ : std_logic;
SIGNAL \instrP2AD[9]~input_o\ : std_logic;
SIGNAL \v1|v9|v3|v3|Q~0_combout\ : std_logic;
SIGNAL \instrP2AD[10]~input_o\ : std_logic;
SIGNAL \jumpAD[9]~input_o\ : std_logic;
SIGNAL \v1|v10|v3|v3|Q~0_combout\ : std_logic;
SIGNAL \instrP2AD[11]~input_o\ : std_logic;
SIGNAL \jumpAD[10]~input_o\ : std_logic;
SIGNAL \v1|v11|v1|v3|Q~0_combout\ : std_logic;
SIGNAL \v1|v11|v3|v3|Q~0_combout\ : std_logic;
SIGNAL \instrP2AD[12]~input_o\ : std_logic;
SIGNAL \jumpAD[11]~input_o\ : std_logic;
SIGNAL \v1|v11|v4|Q~combout\ : std_logic;
SIGNAL \v1|v11|v2|Q~combout\ : std_logic;
SIGNAL \v1|v12|v3|v3|Q~0_combout\ : std_logic;
SIGNAL \instrP2AD[13]~input_o\ : std_logic;
SIGNAL \v1|v13|v3|v3|Q~0_combout\ : std_logic;
SIGNAL \instrP2AD[14]~input_o\ : std_logic;
SIGNAL \v1|v14|v3|v3|Q~0_combout\ : std_logic;
SIGNAL \v1|v12|v5|Q~combout\ : std_logic;
SIGNAL \instrP2AD[15]~input_o\ : std_logic;
SIGNAL \v1|v15|v3|v3|Q~0_combout\ : std_logic;
SIGNAL \ALT_INV_instrP2AD[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_instrP2AD[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_instrP2AD[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_instrP2AD[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_jumpAD[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_instrP2AD[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_jumpAD[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_instrP2AD[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_jumpAD[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_instrP2AD[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_jumpAD[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_instrP2AD[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_jumpAD[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_instrP2AD[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_jumpAD[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_instrP2AD[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_jumpAD[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_instrP2AD[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_jumpAD[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_instrP2AD[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_jumpAD[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_instrP2AD[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_jumpAD[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_instrP2AD[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_jumpAD[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_instrP2AD[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_jumpAD[0]~input_o\ : std_logic;
SIGNAL \v1|v12|v5|ALT_INV_Q~combout\ : std_logic;
SIGNAL \v1|v11|v4|ALT_INV_Q~combout\ : std_logic;
SIGNAL \v1|v11|v2|ALT_INV_Q~combout\ : std_logic;
SIGNAL \v1|v11|v1|v3|ALT_INV_Q~0_combout\ : std_logic;
SIGNAL \v1|v8|v5|ALT_INV_Q~combout\ : std_logic;
SIGNAL \v1|v6|v5|ALT_INV_Q~combout\ : std_logic;
SIGNAL \v1|v6|v4|ALT_INV_Q~combout\ : std_logic;
SIGNAL \v1|v6|v2|ALT_INV_Q~combout\ : std_logic;
SIGNAL \v1|v6|v1|v3|ALT_INV_Q~0_combout\ : std_logic;
SIGNAL \v1|v4|v5|ALT_INV_Q~combout\ : std_logic;
SIGNAL \v1|v3|v5|ALT_INV_Q~combout\ : std_logic;

BEGIN

ww_jumpAD <= jumpAD;
ww_instrP2AD <= instrP2AD;
EjumpAD <= ww_EjumpAD;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_instrP2AD[15]~input_o\ <= NOT \instrP2AD[15]~input_o\;
\ALT_INV_instrP2AD[14]~input_o\ <= NOT \instrP2AD[14]~input_o\;
\ALT_INV_instrP2AD[13]~input_o\ <= NOT \instrP2AD[13]~input_o\;
\ALT_INV_instrP2AD[12]~input_o\ <= NOT \instrP2AD[12]~input_o\;
\ALT_INV_jumpAD[11]~input_o\ <= NOT \jumpAD[11]~input_o\;
\ALT_INV_instrP2AD[11]~input_o\ <= NOT \instrP2AD[11]~input_o\;
\ALT_INV_jumpAD[10]~input_o\ <= NOT \jumpAD[10]~input_o\;
\ALT_INV_instrP2AD[10]~input_o\ <= NOT \instrP2AD[10]~input_o\;
\ALT_INV_jumpAD[9]~input_o\ <= NOT \jumpAD[9]~input_o\;
\ALT_INV_instrP2AD[9]~input_o\ <= NOT \instrP2AD[9]~input_o\;
\ALT_INV_jumpAD[8]~input_o\ <= NOT \jumpAD[8]~input_o\;
\ALT_INV_instrP2AD[8]~input_o\ <= NOT \instrP2AD[8]~input_o\;
\ALT_INV_jumpAD[7]~input_o\ <= NOT \jumpAD[7]~input_o\;
\ALT_INV_instrP2AD[7]~input_o\ <= NOT \instrP2AD[7]~input_o\;
\ALT_INV_jumpAD[6]~input_o\ <= NOT \jumpAD[6]~input_o\;
\ALT_INV_instrP2AD[6]~input_o\ <= NOT \instrP2AD[6]~input_o\;
\ALT_INV_jumpAD[5]~input_o\ <= NOT \jumpAD[5]~input_o\;
\ALT_INV_instrP2AD[5]~input_o\ <= NOT \instrP2AD[5]~input_o\;
\ALT_INV_jumpAD[4]~input_o\ <= NOT \jumpAD[4]~input_o\;
\ALT_INV_instrP2AD[4]~input_o\ <= NOT \instrP2AD[4]~input_o\;
\ALT_INV_jumpAD[3]~input_o\ <= NOT \jumpAD[3]~input_o\;
\ALT_INV_instrP2AD[3]~input_o\ <= NOT \instrP2AD[3]~input_o\;
\ALT_INV_jumpAD[2]~input_o\ <= NOT \jumpAD[2]~input_o\;
\ALT_INV_instrP2AD[2]~input_o\ <= NOT \instrP2AD[2]~input_o\;
\ALT_INV_jumpAD[1]~input_o\ <= NOT \jumpAD[1]~input_o\;
\ALT_INV_instrP2AD[1]~input_o\ <= NOT \instrP2AD[1]~input_o\;
\ALT_INV_jumpAD[0]~input_o\ <= NOT \jumpAD[0]~input_o\;
\v1|v12|v5|ALT_INV_Q~combout\ <= NOT \v1|v12|v5|Q~combout\;
\v1|v11|v4|ALT_INV_Q~combout\ <= NOT \v1|v11|v4|Q~combout\;
\v1|v11|v2|ALT_INV_Q~combout\ <= NOT \v1|v11|v2|Q~combout\;
\v1|v11|v1|v3|ALT_INV_Q~0_combout\ <= NOT \v1|v11|v1|v3|Q~0_combout\;
\v1|v8|v5|ALT_INV_Q~combout\ <= NOT \v1|v8|v5|Q~combout\;
\v1|v6|v5|ALT_INV_Q~combout\ <= NOT \v1|v6|v5|Q~combout\;
\v1|v6|v4|ALT_INV_Q~combout\ <= NOT \v1|v6|v4|Q~combout\;
\v1|v6|v2|ALT_INV_Q~combout\ <= NOT \v1|v6|v2|Q~combout\;
\v1|v6|v1|v3|ALT_INV_Q~0_combout\ <= NOT \v1|v6|v1|v3|Q~0_combout\;
\v1|v4|v5|ALT_INV_Q~combout\ <= NOT \v1|v4|v5|Q~combout\;
\v1|v3|v5|ALT_INV_Q~combout\ <= NOT \v1|v3|v5|Q~combout\;

-- Location: IOOBUF_X52_Y0_N19
\EjumpAD[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \instrP2AD[0]~input_o\,
	devoe => ww_devoe,
	o => ww_EjumpAD(0));

-- Location: IOOBUF_X64_Y0_N2
\EjumpAD[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \v1|v1|v1|v3|Q~0_combout\,
	devoe => ww_devoe,
	o => ww_EjumpAD(1));

-- Location: IOOBUF_X52_Y0_N36
\EjumpAD[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \v1|v2|v3|v3|Q~0_combout\,
	devoe => ww_devoe,
	o => ww_EjumpAD(2));

-- Location: IOOBUF_X64_Y0_N36
\EjumpAD[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \v1|v3|v3|v3|Q~0_combout\,
	devoe => ww_devoe,
	o => ww_EjumpAD(3));

-- Location: IOOBUF_X62_Y0_N2
\EjumpAD[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \v1|v4|v3|v3|Q~0_combout\,
	devoe => ww_devoe,
	o => ww_EjumpAD(4));

-- Location: IOOBUF_X54_Y0_N2
\EjumpAD[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \v1|v5|v3|v3|Q~0_combout\,
	devoe => ww_devoe,
	o => ww_EjumpAD(5));

-- Location: IOOBUF_X54_Y0_N19
\EjumpAD[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \v1|v6|v3|v3|Q~0_combout\,
	devoe => ww_devoe,
	o => ww_EjumpAD(6));

-- Location: IOOBUF_X62_Y0_N36
\EjumpAD[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \v1|v7|v3|v3|Q~0_combout\,
	devoe => ww_devoe,
	o => ww_EjumpAD(7));

-- Location: IOOBUF_X56_Y0_N2
\EjumpAD[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \v1|v8|v3|v3|Q~0_combout\,
	devoe => ww_devoe,
	o => ww_EjumpAD(8));

-- Location: IOOBUF_X54_Y0_N36
\EjumpAD[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \v1|v9|v3|v3|Q~0_combout\,
	devoe => ww_devoe,
	o => ww_EjumpAD(9));

-- Location: IOOBUF_X72_Y0_N36
\EjumpAD[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \v1|v10|v3|v3|Q~0_combout\,
	devoe => ww_devoe,
	o => ww_EjumpAD(10));

-- Location: IOOBUF_X70_Y0_N19
\EjumpAD[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \v1|v11|v3|v3|Q~0_combout\,
	devoe => ww_devoe,
	o => ww_EjumpAD(11));

-- Location: IOOBUF_X68_Y0_N53
\EjumpAD[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \v1|v12|v3|v3|Q~0_combout\,
	devoe => ww_devoe,
	o => ww_EjumpAD(12));

-- Location: IOOBUF_X72_Y0_N53
\EjumpAD[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \v1|v13|v3|v3|Q~0_combout\,
	devoe => ww_devoe,
	o => ww_EjumpAD(13));

-- Location: IOOBUF_X66_Y0_N59
\EjumpAD[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \v1|v14|v3|v3|Q~0_combout\,
	devoe => ww_devoe,
	o => ww_EjumpAD(14));

-- Location: IOOBUF_X70_Y0_N2
\EjumpAD[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \v1|v15|v3|v3|Q~0_combout\,
	devoe => ww_devoe,
	o => ww_EjumpAD(15));

-- Location: IOIBUF_X52_Y0_N52
\instrP2AD[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instrP2AD(0),
	o => \instrP2AD[0]~input_o\);

-- Location: IOIBUF_X60_Y0_N1
\instrP2AD[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instrP2AD(1),
	o => \instrP2AD[1]~input_o\);

-- Location: IOIBUF_X62_Y0_N52
\jumpAD[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jumpAD(0),
	o => \jumpAD[0]~input_o\);

-- Location: MLABCELL_X59_Y1_N0
\v1|v1|v1|v3|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \v1|v1|v1|v3|Q~0_combout\ = ( \jumpAD[0]~input_o\ & ( !\instrP2AD[1]~input_o\ ) ) # ( !\jumpAD[0]~input_o\ & ( \instrP2AD[1]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010110101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_instrP2AD[1]~input_o\,
	dataf => \ALT_INV_jumpAD[0]~input_o\,
	combout => \v1|v1|v1|v3|Q~0_combout\);

-- Location: IOIBUF_X60_Y0_N35
\instrP2AD[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instrP2AD(2),
	o => \instrP2AD[2]~input_o\);

-- Location: IOIBUF_X52_Y0_N1
\jumpAD[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jumpAD(1),
	o => \jumpAD[1]~input_o\);

-- Location: MLABCELL_X59_Y1_N3
\v1|v2|v3|v3|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \v1|v2|v3|v3|Q~0_combout\ = ( \jumpAD[0]~input_o\ & ( !\instrP2AD[1]~input_o\ $ (!\instrP2AD[2]~input_o\ $ (\jumpAD[1]~input_o\)) ) ) # ( !\jumpAD[0]~input_o\ & ( !\instrP2AD[2]~input_o\ $ (!\jumpAD[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000001011010101001010101101010100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_instrP2AD[1]~input_o\,
	datac => \ALT_INV_instrP2AD[2]~input_o\,
	datad => \ALT_INV_jumpAD[1]~input_o\,
	dataf => \ALT_INV_jumpAD[0]~input_o\,
	combout => \v1|v2|v3|v3|Q~0_combout\);

-- Location: IOIBUF_X62_Y0_N18
\instrP2AD[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instrP2AD(3),
	o => \instrP2AD[3]~input_o\);

-- Location: IOIBUF_X64_Y0_N18
\jumpAD[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jumpAD(2),
	o => \jumpAD[2]~input_o\);

-- Location: MLABCELL_X59_Y1_N36
\v1|v3|v3|v3|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \v1|v3|v3|v3|Q~0_combout\ = ( \jumpAD[1]~input_o\ & ( \jumpAD[2]~input_o\ & ( !\instrP2AD[3]~input_o\ $ ((((\jumpAD[0]~input_o\ & \instrP2AD[1]~input_o\)) # (\instrP2AD[2]~input_o\))) ) ) ) # ( !\jumpAD[1]~input_o\ & ( \jumpAD[2]~input_o\ & ( 
-- !\instrP2AD[3]~input_o\ $ (((\jumpAD[0]~input_o\ & (\instrP2AD[2]~input_o\ & \instrP2AD[1]~input_o\)))) ) ) ) # ( \jumpAD[1]~input_o\ & ( !\jumpAD[2]~input_o\ & ( !\instrP2AD[3]~input_o\ $ (((!\instrP2AD[2]~input_o\ & ((!\jumpAD[0]~input_o\) # 
-- (!\instrP2AD[1]~input_o\))))) ) ) ) # ( !\jumpAD[1]~input_o\ & ( !\jumpAD[2]~input_o\ & ( !\instrP2AD[3]~input_o\ $ (((!\jumpAD[0]~input_o\) # ((!\instrP2AD[2]~input_o\) # (!\instrP2AD[1]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111111110001101111100100011111110000000011100100000110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_jumpAD[0]~input_o\,
	datab => \ALT_INV_instrP2AD[2]~input_o\,
	datac => \ALT_INV_instrP2AD[1]~input_o\,
	datad => \ALT_INV_instrP2AD[3]~input_o\,
	datae => \ALT_INV_jumpAD[1]~input_o\,
	dataf => \ALT_INV_jumpAD[2]~input_o\,
	combout => \v1|v3|v3|v3|Q~0_combout\);

-- Location: IOIBUF_X58_Y0_N75
\instrP2AD[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instrP2AD(4),
	o => \instrP2AD[4]~input_o\);

-- Location: IOIBUF_X56_Y0_N18
\jumpAD[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jumpAD(3),
	o => \jumpAD[3]~input_o\);

-- Location: MLABCELL_X59_Y1_N42
\v1|v3|v5|Q\ : cyclonev_lcell_comb
-- Equation(s):
-- \v1|v3|v5|Q~combout\ = ( \jumpAD[1]~input_o\ & ( \jumpAD[2]~input_o\ & ( (((\jumpAD[0]~input_o\ & \instrP2AD[1]~input_o\)) # (\instrP2AD[3]~input_o\)) # (\instrP2AD[2]~input_o\) ) ) ) # ( !\jumpAD[1]~input_o\ & ( \jumpAD[2]~input_o\ & ( 
-- ((\jumpAD[0]~input_o\ & (\instrP2AD[2]~input_o\ & \instrP2AD[1]~input_o\))) # (\instrP2AD[3]~input_o\) ) ) ) # ( \jumpAD[1]~input_o\ & ( !\jumpAD[2]~input_o\ & ( (\instrP2AD[3]~input_o\ & (((\jumpAD[0]~input_o\ & \instrP2AD[1]~input_o\)) # 
-- (\instrP2AD[2]~input_o\))) ) ) ) # ( !\jumpAD[1]~input_o\ & ( !\jumpAD[2]~input_o\ & ( (\jumpAD[0]~input_o\ & (\instrP2AD[2]~input_o\ & (\instrP2AD[1]~input_o\ & \instrP2AD[3]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000011011100000001111111110011011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_jumpAD[0]~input_o\,
	datab => \ALT_INV_instrP2AD[2]~input_o\,
	datac => \ALT_INV_instrP2AD[1]~input_o\,
	datad => \ALT_INV_instrP2AD[3]~input_o\,
	datae => \ALT_INV_jumpAD[1]~input_o\,
	dataf => \ALT_INV_jumpAD[2]~input_o\,
	combout => \v1|v3|v5|Q~combout\);

-- Location: MLABCELL_X59_Y1_N48
\v1|v4|v3|v3|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \v1|v4|v3|v3|Q~0_combout\ = ( \v1|v3|v5|Q~combout\ & ( !\instrP2AD[4]~input_o\ $ (\jumpAD[3]~input_o\) ) ) # ( !\v1|v3|v5|Q~combout\ & ( !\instrP2AD[4]~input_o\ $ (!\jumpAD[3]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011010011001100110011001100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_instrP2AD[4]~input_o\,
	datab => \ALT_INV_jumpAD[3]~input_o\,
	dataf => \v1|v3|v5|ALT_INV_Q~combout\,
	combout => \v1|v4|v3|v3|Q~0_combout\);

-- Location: IOIBUF_X58_Y0_N92
\jumpAD[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jumpAD(4),
	o => \jumpAD[4]~input_o\);

-- Location: IOIBUF_X56_Y0_N52
\instrP2AD[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instrP2AD(5),
	o => \instrP2AD[5]~input_o\);

-- Location: MLABCELL_X59_Y1_N51
\v1|v4|v5|Q\ : cyclonev_lcell_comb
-- Equation(s):
-- \v1|v4|v5|Q~combout\ = ( \v1|v3|v5|Q~combout\ & ( (\jumpAD[3]~input_o\) # (\instrP2AD[4]~input_o\) ) ) # ( !\v1|v3|v5|Q~combout\ & ( (\instrP2AD[4]~input_o\ & \jumpAD[3]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000101110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_instrP2AD[4]~input_o\,
	datab => \ALT_INV_jumpAD[3]~input_o\,
	dataf => \v1|v3|v5|ALT_INV_Q~combout\,
	combout => \v1|v4|v5|Q~combout\);

-- Location: MLABCELL_X59_Y1_N57
\v1|v5|v3|v3|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \v1|v5|v3|v3|Q~0_combout\ = ( \v1|v4|v5|Q~combout\ & ( !\jumpAD[4]~input_o\ $ (\instrP2AD[5]~input_o\) ) ) # ( !\v1|v4|v5|Q~combout\ & ( !\jumpAD[4]~input_o\ $ (!\instrP2AD[5]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011010011001100110011001100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_jumpAD[4]~input_o\,
	datab => \ALT_INV_instrP2AD[5]~input_o\,
	dataf => \v1|v4|v5|ALT_INV_Q~combout\,
	combout => \v1|v5|v3|v3|Q~0_combout\);

-- Location: IOIBUF_X60_Y0_N52
\instrP2AD[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instrP2AD(6),
	o => \instrP2AD[6]~input_o\);

-- Location: IOIBUF_X58_Y0_N58
\jumpAD[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jumpAD(5),
	o => \jumpAD[5]~input_o\);

-- Location: MLABCELL_X59_Y1_N30
\v1|v6|v1|v3|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \v1|v6|v1|v3|Q~0_combout\ = !\instrP2AD[6]~input_o\ $ (!\jumpAD[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_instrP2AD[6]~input_o\,
	datab => \ALT_INV_jumpAD[5]~input_o\,
	combout => \v1|v6|v1|v3|Q~0_combout\);

-- Location: MLABCELL_X59_Y1_N54
\v1|v6|v3|v3|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \v1|v6|v3|v3|Q~0_combout\ = ( \v1|v6|v1|v3|Q~0_combout\ & ( (!\jumpAD[4]~input_o\ & ((!\instrP2AD[5]~input_o\) # (!\v1|v4|v5|Q~combout\))) # (\jumpAD[4]~input_o\ & (!\instrP2AD[5]~input_o\ & !\v1|v4|v5|Q~combout\)) ) ) # ( !\v1|v6|v1|v3|Q~0_combout\ & ( 
-- (!\jumpAD[4]~input_o\ & (\instrP2AD[5]~input_o\ & \v1|v4|v5|Q~combout\)) # (\jumpAD[4]~input_o\ & ((\v1|v4|v5|Q~combout\) # (\instrP2AD[5]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011100010111000101110001011111101000111010001110100011101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_jumpAD[4]~input_o\,
	datab => \ALT_INV_instrP2AD[5]~input_o\,
	datac => \v1|v4|v5|ALT_INV_Q~combout\,
	dataf => \v1|v6|v1|v3|ALT_INV_Q~0_combout\,
	combout => \v1|v6|v3|v3|Q~0_combout\);

-- Location: IOIBUF_X58_Y0_N41
\instrP2AD[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instrP2AD(7),
	o => \instrP2AD[7]~input_o\);

-- Location: IOIBUF_X56_Y0_N35
\jumpAD[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jumpAD(6),
	o => \jumpAD[6]~input_o\);

-- Location: MLABCELL_X59_Y1_N6
\v1|v6|v4|Q\ : cyclonev_lcell_comb
-- Equation(s):
-- \v1|v6|v4|Q~combout\ = ( \instrP2AD[5]~input_o\ & ( \v1|v3|v5|Q~combout\ & ( (\v1|v6|v1|v3|Q~0_combout\ & (((\instrP2AD[4]~input_o\) # (\jumpAD[3]~input_o\)) # (\jumpAD[4]~input_o\))) ) ) ) # ( !\instrP2AD[5]~input_o\ & ( \v1|v3|v5|Q~combout\ & ( 
-- (\jumpAD[4]~input_o\ & (\v1|v6|v1|v3|Q~0_combout\ & ((\instrP2AD[4]~input_o\) # (\jumpAD[3]~input_o\)))) ) ) ) # ( \instrP2AD[5]~input_o\ & ( !\v1|v3|v5|Q~combout\ & ( (\v1|v6|v1|v3|Q~0_combout\ & (((\jumpAD[3]~input_o\ & \instrP2AD[4]~input_o\)) # 
-- (\jumpAD[4]~input_o\))) ) ) ) # ( !\instrP2AD[5]~input_o\ & ( !\v1|v3|v5|Q~combout\ & ( (\jumpAD[4]~input_o\ & (\jumpAD[3]~input_o\ & (\instrP2AD[4]~input_o\ & \v1|v6|v1|v3|Q~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000101011100000000000101010000000001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_jumpAD[4]~input_o\,
	datab => \ALT_INV_jumpAD[3]~input_o\,
	datac => \ALT_INV_instrP2AD[4]~input_o\,
	datad => \v1|v6|v1|v3|ALT_INV_Q~0_combout\,
	datae => \ALT_INV_instrP2AD[5]~input_o\,
	dataf => \v1|v3|v5|ALT_INV_Q~combout\,
	combout => \v1|v6|v4|Q~combout\);

-- Location: MLABCELL_X59_Y1_N33
\v1|v6|v2|Q\ : cyclonev_lcell_comb
-- Equation(s):
-- \v1|v6|v2|Q~combout\ = (\instrP2AD[6]~input_o\ & \jumpAD[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_instrP2AD[6]~input_o\,
	datab => \ALT_INV_jumpAD[5]~input_o\,
	combout => \v1|v6|v2|Q~combout\);

-- Location: MLABCELL_X59_Y1_N15
\v1|v6|v5|Q\ : cyclonev_lcell_comb
-- Equation(s):
-- \v1|v6|v5|Q~combout\ = ( !\v1|v6|v2|Q~combout\ & ( !\v1|v6|v4|Q~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \v1|v6|v4|ALT_INV_Q~combout\,
	dataf => \v1|v6|v2|ALT_INV_Q~combout\,
	combout => \v1|v6|v5|Q~combout\);

-- Location: MLABCELL_X59_Y1_N18
\v1|v7|v3|v3|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \v1|v7|v3|v3|Q~0_combout\ = ( \v1|v6|v5|Q~combout\ & ( !\instrP2AD[7]~input_o\ $ (!\jumpAD[6]~input_o\) ) ) # ( !\v1|v6|v5|Q~combout\ & ( !\instrP2AD[7]~input_o\ $ (\jumpAD[6]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001111000011110000111100001100111100001111000011110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_instrP2AD[7]~input_o\,
	datac => \ALT_INV_jumpAD[6]~input_o\,
	dataf => \v1|v6|v5|ALT_INV_Q~combout\,
	combout => \v1|v7|v3|v3|Q~0_combout\);

-- Location: IOIBUF_X54_Y0_N52
\jumpAD[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jumpAD(7),
	o => \jumpAD[7]~input_o\);

-- Location: IOIBUF_X60_Y0_N18
\instrP2AD[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instrP2AD(8),
	o => \instrP2AD[8]~input_o\);

-- Location: MLABCELL_X59_Y1_N12
\v1|v8|v3|v3|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \v1|v8|v3|v3|Q~0_combout\ = ( \instrP2AD[8]~input_o\ & ( !\jumpAD[7]~input_o\ $ (((!\jumpAD[6]~input_o\ & (!\v1|v6|v5|Q~combout\ & \instrP2AD[7]~input_o\)) # (\jumpAD[6]~input_o\ & ((!\v1|v6|v5|Q~combout\) # (\instrP2AD[7]~input_o\))))) ) ) # ( 
-- !\instrP2AD[8]~input_o\ & ( !\jumpAD[7]~input_o\ $ (((!\jumpAD[6]~input_o\ & ((!\instrP2AD[7]~input_o\) # (\v1|v6|v5|Q~combout\))) # (\jumpAD[6]~input_o\ & (\v1|v6|v5|Q~combout\ & !\instrP2AD[7]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100101111010010010010111101001010110100001011011011010000101101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_jumpAD[6]~input_o\,
	datab => \v1|v6|v5|ALT_INV_Q~combout\,
	datac => \ALT_INV_jumpAD[7]~input_o\,
	datad => \ALT_INV_instrP2AD[7]~input_o\,
	dataf => \ALT_INV_instrP2AD[8]~input_o\,
	combout => \v1|v8|v3|v3|Q~0_combout\);

-- Location: MLABCELL_X59_Y1_N24
\v1|v8|v5|Q\ : cyclonev_lcell_comb
-- Equation(s):
-- \v1|v8|v5|Q~combout\ = ( !\jumpAD[7]~input_o\ & ( \instrP2AD[8]~input_o\ & ( (!\jumpAD[6]~input_o\ & ((!\instrP2AD[7]~input_o\) # ((!\v1|v6|v2|Q~combout\ & !\v1|v6|v4|Q~combout\)))) # (\jumpAD[6]~input_o\ & (!\instrP2AD[7]~input_o\ & 
-- (!\v1|v6|v2|Q~combout\ & !\v1|v6|v4|Q~combout\))) ) ) ) # ( \jumpAD[7]~input_o\ & ( !\instrP2AD[8]~input_o\ & ( (!\jumpAD[6]~input_o\ & ((!\instrP2AD[7]~input_o\) # ((!\v1|v6|v2|Q~combout\ & !\v1|v6|v4|Q~combout\)))) # (\jumpAD[6]~input_o\ & 
-- (!\instrP2AD[7]~input_o\ & (!\v1|v6|v2|Q~combout\ & !\v1|v6|v4|Q~combout\))) ) ) ) # ( !\jumpAD[7]~input_o\ & ( !\instrP2AD[8]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111010001000100011101000100010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_jumpAD[6]~input_o\,
	datab => \ALT_INV_instrP2AD[7]~input_o\,
	datac => \v1|v6|v2|ALT_INV_Q~combout\,
	datad => \v1|v6|v4|ALT_INV_Q~combout\,
	datae => \ALT_INV_jumpAD[7]~input_o\,
	dataf => \ALT_INV_instrP2AD[8]~input_o\,
	combout => \v1|v8|v5|Q~combout\);

-- Location: IOIBUF_X64_Y0_N52
\jumpAD[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jumpAD(8),
	o => \jumpAD[8]~input_o\);

-- Location: IOIBUF_X66_Y0_N92
\instrP2AD[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instrP2AD(9),
	o => \instrP2AD[9]~input_o\);

-- Location: MLABCELL_X59_Y1_N21
\v1|v9|v3|v3|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \v1|v9|v3|v3|Q~0_combout\ = ( \instrP2AD[9]~input_o\ & ( !\v1|v8|v5|Q~combout\ $ (!\jumpAD[8]~input_o\) ) ) # ( !\instrP2AD[9]~input_o\ & ( !\v1|v8|v5|Q~combout\ $ (\jumpAD[8]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010010110100101101001011010010101011010010110100101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v1|v8|v5|ALT_INV_Q~combout\,
	datac => \ALT_INV_jumpAD[8]~input_o\,
	dataf => \ALT_INV_instrP2AD[9]~input_o\,
	combout => \v1|v9|v3|v3|Q~0_combout\);

-- Location: IOIBUF_X66_Y0_N75
\instrP2AD[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instrP2AD(10),
	o => \instrP2AD[10]~input_o\);

-- Location: IOIBUF_X70_Y0_N35
\jumpAD[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jumpAD(9),
	o => \jumpAD[9]~input_o\);

-- Location: LABCELL_X67_Y1_N0
\v1|v10|v3|v3|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \v1|v10|v3|v3|Q~0_combout\ = ( \jumpAD[8]~input_o\ & ( \jumpAD[9]~input_o\ & ( !\instrP2AD[10]~input_o\ $ (((!\v1|v8|v5|Q~combout\) # (\instrP2AD[9]~input_o\))) ) ) ) # ( !\jumpAD[8]~input_o\ & ( \jumpAD[9]~input_o\ & ( !\instrP2AD[10]~input_o\ $ 
-- (((\instrP2AD[9]~input_o\ & !\v1|v8|v5|Q~combout\))) ) ) ) # ( \jumpAD[8]~input_o\ & ( !\jumpAD[9]~input_o\ & ( !\instrP2AD[10]~input_o\ $ (((!\instrP2AD[9]~input_o\ & \v1|v8|v5|Q~combout\))) ) ) ) # ( !\jumpAD[8]~input_o\ & ( !\jumpAD[9]~input_o\ & ( 
-- !\instrP2AD[10]~input_o\ $ (((!\instrP2AD[9]~input_o\) # (\v1|v8|v5|Q~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100101101001011110100101101001010110100101101000010110100101101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_instrP2AD[9]~input_o\,
	datab => \v1|v8|v5|ALT_INV_Q~combout\,
	datac => \ALT_INV_instrP2AD[10]~input_o\,
	datae => \ALT_INV_jumpAD[8]~input_o\,
	dataf => \ALT_INV_jumpAD[9]~input_o\,
	combout => \v1|v10|v3|v3|Q~0_combout\);

-- Location: IOIBUF_X68_Y0_N1
\instrP2AD[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instrP2AD(11),
	o => \instrP2AD[11]~input_o\);

-- Location: IOIBUF_X68_Y0_N35
\jumpAD[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jumpAD(10),
	o => \jumpAD[10]~input_o\);

-- Location: LABCELL_X67_Y1_N9
\v1|v11|v1|v3|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \v1|v11|v1|v3|Q~0_combout\ = ( \jumpAD[10]~input_o\ & ( !\instrP2AD[11]~input_o\ ) ) # ( !\jumpAD[10]~input_o\ & ( \instrP2AD[11]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101101010101010101001010101010101011010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_instrP2AD[11]~input_o\,
	datae => \ALT_INV_jumpAD[10]~input_o\,
	combout => \v1|v11|v1|v3|Q~0_combout\);

-- Location: LABCELL_X67_Y1_N12
\v1|v11|v3|v3|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \v1|v11|v3|v3|Q~0_combout\ = ( \jumpAD[8]~input_o\ & ( \jumpAD[9]~input_o\ & ( !\v1|v11|v1|v3|Q~0_combout\ $ (((!\instrP2AD[9]~input_o\ & (\v1|v8|v5|Q~combout\ & !\instrP2AD[10]~input_o\)))) ) ) ) # ( !\jumpAD[8]~input_o\ & ( \jumpAD[9]~input_o\ & ( 
-- !\v1|v11|v1|v3|Q~0_combout\ $ (((!\instrP2AD[10]~input_o\ & ((!\instrP2AD[9]~input_o\) # (\v1|v8|v5|Q~combout\))))) ) ) ) # ( \jumpAD[8]~input_o\ & ( !\jumpAD[9]~input_o\ & ( !\v1|v11|v1|v3|Q~0_combout\ $ (((!\instrP2AD[10]~input_o\) # 
-- ((!\instrP2AD[9]~input_o\ & \v1|v8|v5|Q~combout\)))) ) ) ) # ( !\jumpAD[8]~input_o\ & ( !\jumpAD[9]~input_o\ & ( !\v1|v11|v1|v3|Q~0_combout\ $ (((!\instrP2AD[9]~input_o\) # ((!\instrP2AD[10]~input_o\) # (\v1|v8|v5|Q~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010011111011000011011111001001001111101100001101111100100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_instrP2AD[9]~input_o\,
	datab => \v1|v8|v5|ALT_INV_Q~combout\,
	datac => \ALT_INV_instrP2AD[10]~input_o\,
	datad => \v1|v11|v1|v3|ALT_INV_Q~0_combout\,
	datae => \ALT_INV_jumpAD[8]~input_o\,
	dataf => \ALT_INV_jumpAD[9]~input_o\,
	combout => \v1|v11|v3|v3|Q~0_combout\);

-- Location: IOIBUF_X66_Y0_N41
\instrP2AD[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instrP2AD(12),
	o => \instrP2AD[12]~input_o\);

-- Location: IOIBUF_X72_Y0_N1
\jumpAD[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jumpAD(11),
	o => \jumpAD[11]~input_o\);

-- Location: LABCELL_X67_Y1_N24
\v1|v11|v4|Q\ : cyclonev_lcell_comb
-- Equation(s):
-- \v1|v11|v4|Q~combout\ = ( \jumpAD[8]~input_o\ & ( \jumpAD[9]~input_o\ & ( (\v1|v11|v1|v3|Q~0_combout\ & (((!\v1|v8|v5|Q~combout\) # (\instrP2AD[10]~input_o\)) # (\instrP2AD[9]~input_o\))) ) ) ) # ( !\jumpAD[8]~input_o\ & ( \jumpAD[9]~input_o\ & ( 
-- (\v1|v11|v1|v3|Q~0_combout\ & (((\instrP2AD[9]~input_o\ & !\v1|v8|v5|Q~combout\)) # (\instrP2AD[10]~input_o\))) ) ) ) # ( \jumpAD[8]~input_o\ & ( !\jumpAD[9]~input_o\ & ( (\instrP2AD[10]~input_o\ & (\v1|v11|v1|v3|Q~0_combout\ & ((!\v1|v8|v5|Q~combout\) # 
-- (\instrP2AD[9]~input_o\)))) ) ) ) # ( !\jumpAD[8]~input_o\ & ( !\jumpAD[9]~input_o\ & ( (\instrP2AD[9]~input_o\ & (!\v1|v8|v5|Q~combout\ & (\instrP2AD[10]~input_o\ & \v1|v11|v1|v3|Q~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000110100000000010011110000000011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_instrP2AD[9]~input_o\,
	datab => \v1|v8|v5|ALT_INV_Q~combout\,
	datac => \ALT_INV_instrP2AD[10]~input_o\,
	datad => \v1|v11|v1|v3|ALT_INV_Q~0_combout\,
	datae => \ALT_INV_jumpAD[8]~input_o\,
	dataf => \ALT_INV_jumpAD[9]~input_o\,
	combout => \v1|v11|v4|Q~combout\);

-- Location: LABCELL_X67_Y1_N48
\v1|v11|v2|Q\ : cyclonev_lcell_comb
-- Equation(s):
-- \v1|v11|v2|Q~combout\ = ( \jumpAD[10]~input_o\ & ( \instrP2AD[11]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_instrP2AD[11]~input_o\,
	datae => \ALT_INV_jumpAD[10]~input_o\,
	combout => \v1|v11|v2|Q~combout\);

-- Location: LABCELL_X67_Y1_N33
\v1|v12|v3|v3|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \v1|v12|v3|v3|Q~0_combout\ = ( \v1|v11|v2|Q~combout\ & ( !\instrP2AD[12]~input_o\ $ (\jumpAD[11]~input_o\) ) ) # ( !\v1|v11|v2|Q~combout\ & ( !\instrP2AD[12]~input_o\ $ (!\jumpAD[11]~input_o\ $ (\v1|v11|v4|Q~combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101010100101010110101010010110100101101001011010010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_instrP2AD[12]~input_o\,
	datac => \ALT_INV_jumpAD[11]~input_o\,
	datad => \v1|v11|v4|ALT_INV_Q~combout\,
	dataf => \v1|v11|v2|ALT_INV_Q~combout\,
	combout => \v1|v12|v3|v3|Q~0_combout\);

-- Location: IOIBUF_X70_Y0_N52
\instrP2AD[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instrP2AD(13),
	o => \instrP2AD[13]~input_o\);

-- Location: LABCELL_X67_Y1_N36
\v1|v13|v3|v3|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \v1|v13|v3|v3|Q~0_combout\ = ( \instrP2AD[12]~input_o\ & ( !\instrP2AD[13]~input_o\ $ ((((!\v1|v11|v4|Q~combout\ & !\v1|v11|v2|Q~combout\)) # (\jumpAD[11]~input_o\))) ) ) # ( !\instrP2AD[12]~input_o\ & ( !\instrP2AD[13]~input_o\ $ 
-- ((((!\jumpAD[11]~input_o\) # (\v1|v11|v2|Q~combout\)) # (\v1|v11|v4|Q~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001110010011001100111001001101101100001100110110110000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v1|v11|v4|ALT_INV_Q~combout\,
	datab => \ALT_INV_instrP2AD[13]~input_o\,
	datac => \v1|v11|v2|ALT_INV_Q~combout\,
	datad => \ALT_INV_jumpAD[11]~input_o\,
	dataf => \ALT_INV_instrP2AD[12]~input_o\,
	combout => \v1|v13|v3|v3|Q~0_combout\);

-- Location: IOIBUF_X68_Y0_N18
\instrP2AD[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instrP2AD(14),
	o => \instrP2AD[14]~input_o\);

-- Location: LABCELL_X67_Y1_N42
\v1|v14|v3|v3|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \v1|v14|v3|v3|Q~0_combout\ = ( \instrP2AD[14]~input_o\ & ( \instrP2AD[12]~input_o\ & ( (!\instrP2AD[13]~input_o\) # (((!\v1|v11|v4|Q~combout\ & !\v1|v11|v2|Q~combout\)) # (\jumpAD[11]~input_o\)) ) ) ) # ( !\instrP2AD[14]~input_o\ & ( 
-- \instrP2AD[12]~input_o\ & ( (\instrP2AD[13]~input_o\ & (!\jumpAD[11]~input_o\ & ((\v1|v11|v2|Q~combout\) # (\v1|v11|v4|Q~combout\)))) ) ) ) # ( \instrP2AD[14]~input_o\ & ( !\instrP2AD[12]~input_o\ & ( (((!\jumpAD[11]~input_o\) # (\v1|v11|v2|Q~combout\)) # 
-- (\instrP2AD[13]~input_o\)) # (\v1|v11|v4|Q~combout\) ) ) ) # ( !\instrP2AD[14]~input_o\ & ( !\instrP2AD[12]~input_o\ & ( (!\v1|v11|v4|Q~combout\ & (!\instrP2AD[13]~input_o\ & (!\v1|v11|v2|Q~combout\ & \jumpAD[11]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000111111110111111100010011000000001110110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v1|v11|v4|ALT_INV_Q~combout\,
	datab => \ALT_INV_instrP2AD[13]~input_o\,
	datac => \v1|v11|v2|ALT_INV_Q~combout\,
	datad => \ALT_INV_jumpAD[11]~input_o\,
	datae => \ALT_INV_instrP2AD[14]~input_o\,
	dataf => \ALT_INV_instrP2AD[12]~input_o\,
	combout => \v1|v14|v3|v3|Q~0_combout\);

-- Location: LABCELL_X67_Y1_N21
\v1|v12|v5|Q\ : cyclonev_lcell_comb
-- Equation(s):
-- \v1|v12|v5|Q~combout\ = ( \v1|v11|v4|Q~combout\ & ( (!\jumpAD[11]~input_o\ & !\instrP2AD[12]~input_o\) ) ) # ( !\v1|v11|v4|Q~combout\ & ( (!\jumpAD[11]~input_o\ & ((!\v1|v11|v2|Q~combout\) # (!\instrP2AD[12]~input_o\))) # (\jumpAD[11]~input_o\ & 
-- (!\v1|v11|v2|Q~combout\ & !\instrP2AD[12]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110011000000111111001100000011001100000000001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_jumpAD[11]~input_o\,
	datac => \v1|v11|v2|ALT_INV_Q~combout\,
	datad => \ALT_INV_instrP2AD[12]~input_o\,
	dataf => \v1|v11|v4|ALT_INV_Q~combout\,
	combout => \v1|v12|v5|Q~combout\);

-- Location: IOIBUF_X72_Y0_N18
\instrP2AD[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instrP2AD(15),
	o => \instrP2AD[15]~input_o\);

-- Location: LABCELL_X67_Y1_N18
\v1|v15|v3|v3|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \v1|v15|v3|v3|Q~0_combout\ = ( \instrP2AD[15]~input_o\ & ( (!\instrP2AD[14]~input_o\ & ((!\jumpAD[11]~input_o\) # ((!\v1|v12|v5|Q~combout\) # (\instrP2AD[13]~input_o\)))) # (\instrP2AD[14]~input_o\ & (((!\instrP2AD[13]~input_o\) # (\v1|v12|v5|Q~combout\)) 
-- # (\jumpAD[11]~input_o\))) ) ) # ( !\instrP2AD[15]~input_o\ & ( (!\instrP2AD[14]~input_o\ & (\jumpAD[11]~input_o\ & (!\instrP2AD[13]~input_o\ & \v1|v12|v5|Q~combout\))) # (\instrP2AD[14]~input_o\ & (!\jumpAD[11]~input_o\ & (\instrP2AD[13]~input_o\ & 
-- !\v1|v12|v5|Q~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000100000000001000010000011111011110111111111101111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_instrP2AD[14]~input_o\,
	datab => \ALT_INV_jumpAD[11]~input_o\,
	datac => \ALT_INV_instrP2AD[13]~input_o\,
	datad => \v1|v12|v5|ALT_INV_Q~combout\,
	dataf => \ALT_INV_instrP2AD[15]~input_o\,
	combout => \v1|v15|v3|v3|Q~0_combout\);

-- Location: LABCELL_X81_Y35_N0
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


