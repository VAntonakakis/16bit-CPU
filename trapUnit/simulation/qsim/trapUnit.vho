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

-- DATE "05/19/2026 20:05:16"

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

ENTITY 	trapUnit IS
    PORT (
	OpCode : IN std_logic_vector(3 DOWNTO 0);
	endOfRunning : OUT std_logic
	);
END trapUnit;

-- Design Ports Information
-- endOfRunning	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OpCode[0]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OpCode[1]	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OpCode[2]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OpCode[3]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF trapUnit IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_OpCode : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_endOfRunning : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \OpCode[1]~input_o\ : std_logic;
SIGNAL \OpCode[2]~input_o\ : std_logic;
SIGNAL \OpCode[3]~input_o\ : std_logic;
SIGNAL \OpCode[0]~input_o\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \ALT_INV_OpCode[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_OpCode[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_OpCode[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_OpCode[0]~input_o\ : std_logic;

BEGIN

ww_OpCode <= OpCode;
endOfRunning <= ww_endOfRunning;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_OpCode[3]~input_o\ <= NOT \OpCode[3]~input_o\;
\ALT_INV_OpCode[2]~input_o\ <= NOT \OpCode[2]~input_o\;
\ALT_INV_OpCode[1]~input_o\ <= NOT \OpCode[1]~input_o\;
\ALT_INV_OpCode[0]~input_o\ <= NOT \OpCode[0]~input_o\;

-- Location: IOOBUF_X4_Y0_N19
\endOfRunning~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal0~0_combout\,
	devoe => ww_devoe,
	o => ww_endOfRunning);

-- Location: IOIBUF_X4_Y0_N35
\OpCode[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OpCode(1),
	o => \OpCode[1]~input_o\);

-- Location: IOIBUF_X4_Y0_N1
\OpCode[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OpCode(2),
	o => \OpCode[2]~input_o\);

-- Location: IOIBUF_X4_Y0_N52
\OpCode[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OpCode(3),
	o => \OpCode[3]~input_o\);

-- Location: IOIBUF_X6_Y0_N1
\OpCode[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OpCode(0),
	o => \OpCode[0]~input_o\);

-- Location: LABCELL_X4_Y1_N33
\Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = ( \OpCode[3]~input_o\ & ( !\OpCode[0]~input_o\ & ( (\OpCode[1]~input_o\ & \OpCode[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010000010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OpCode[1]~input_o\,
	datac => \ALT_INV_OpCode[2]~input_o\,
	datae => \ALT_INV_OpCode[3]~input_o\,
	dataf => \ALT_INV_OpCode[0]~input_o\,
	combout => \Equal0~0_combout\);

-- Location: LABCELL_X51_Y24_N0
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


