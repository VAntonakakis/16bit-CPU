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

-- DATE "03/30/2026 22:38:16"

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

ENTITY 	MyDecoder1to2 IS
    PORT (
	S : IN std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic
	);
END MyDecoder1to2;

-- Design Ports Information
-- Q1	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q2	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF MyDecoder1to2 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_S : std_logic;
SIGNAL ww_Q1 : std_logic;
SIGNAL ww_Q2 : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \S~input_o\ : std_logic;
SIGNAL \ALT_INV_S~input_o\ : std_logic;

BEGIN

ww_S <= S;
Q1 <= ww_Q1;
Q2 <= ww_Q2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_S~input_o\ <= NOT \S~input_o\;

-- Location: IOOBUF_X68_Y0_N53
\Q1~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_S~input_o\,
	devoe => ww_devoe,
	o => ww_Q1);

-- Location: IOOBUF_X68_Y0_N2
\Q2~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \S~input_o\,
	devoe => ww_devoe,
	o => ww_Q2);

-- Location: IOIBUF_X68_Y0_N35
\S~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S,
	o => \S~input_o\);

-- Location: MLABCELL_X65_Y33_N0
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


