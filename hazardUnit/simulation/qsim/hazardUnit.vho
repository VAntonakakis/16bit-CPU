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

-- DATE "05/20/2026 14:15:45"

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

ENTITY 	hazardUnit IS
    PORT (
	isJR : IN std_logic;
	isJump : IN std_logic;
	wasJump : IN std_logic;
	mustBranch : IN std_logic;
	flush : OUT std_logic;
	wasJumpOut : OUT std_logic;
	JRopcode : OUT std_logic_vector(1 DOWNTO 0)
	);
END hazardUnit;

-- Design Ports Information
-- flush	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wasJumpOut	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JRopcode[0]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JRopcode[1]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- isJR	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- isJump	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wasJump	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mustBranch	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF hazardUnit IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_isJR : std_logic;
SIGNAL ww_isJump : std_logic;
SIGNAL ww_wasJump : std_logic;
SIGNAL ww_mustBranch : std_logic;
SIGNAL ww_flush : std_logic;
SIGNAL ww_wasJumpOut : std_logic;
SIGNAL ww_JRopcode : std_logic_vector(1 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \isJR~input_o\ : std_logic;
SIGNAL \wasJump~input_o\ : std_logic;
SIGNAL \isJump~input_o\ : std_logic;
SIGNAL \mustBranch~input_o\ : std_logic;
SIGNAL \process_0~0_combout\ : std_logic;
SIGNAL \JRopcode~0_combout\ : std_logic;
SIGNAL \ALT_INV_isJR~input_o\ : std_logic;
SIGNAL \ALT_INV_isJump~input_o\ : std_logic;
SIGNAL \ALT_INV_mustBranch~input_o\ : std_logic;
SIGNAL \ALT_INV_wasJump~input_o\ : std_logic;

BEGIN

ww_isJR <= isJR;
ww_isJump <= isJump;
ww_wasJump <= wasJump;
ww_mustBranch <= mustBranch;
flush <= ww_flush;
wasJumpOut <= ww_wasJumpOut;
JRopcode <= ww_JRopcode;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_isJR~input_o\ <= NOT \isJR~input_o\;
\ALT_INV_isJump~input_o\ <= NOT \isJump~input_o\;
\ALT_INV_mustBranch~input_o\ <= NOT \mustBranch~input_o\;
\ALT_INV_wasJump~input_o\ <= NOT \wasJump~input_o\;

-- Location: IOOBUF_X89_Y36_N5
\flush~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \process_0~0_combout\,
	devoe => ww_devoe,
	o => ww_flush);

-- Location: IOOBUF_X89_Y35_N96
\wasJumpOut~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \isJump~input_o\,
	devoe => ww_devoe,
	o => ww_wasJumpOut);

-- Location: IOOBUF_X89_Y35_N62
\JRopcode[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \isJump~input_o\,
	devoe => ww_devoe,
	o => ww_JRopcode(0));

-- Location: IOOBUF_X89_Y36_N22
\JRopcode[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \JRopcode~0_combout\,
	devoe => ww_devoe,
	o => ww_JRopcode(1));

-- Location: IOIBUF_X89_Y36_N38
\isJR~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_isJR,
	o => \isJR~input_o\);

-- Location: IOIBUF_X89_Y36_N55
\wasJump~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wasJump,
	o => \wasJump~input_o\);

-- Location: IOIBUF_X89_Y35_N78
\isJump~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_isJump,
	o => \isJump~input_o\);

-- Location: IOIBUF_X89_Y37_N38
\mustBranch~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mustBranch,
	o => \mustBranch~input_o\);

-- Location: LABCELL_X88_Y36_N0
\process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_0~0_combout\ = ( \isJump~input_o\ & ( \mustBranch~input_o\ ) ) # ( !\isJump~input_o\ & ( \mustBranch~input_o\ ) ) # ( \isJump~input_o\ & ( !\mustBranch~input_o\ ) ) # ( !\isJump~input_o\ & ( !\mustBranch~input_o\ & ( (\wasJump~input_o\) # 
-- (\isJR~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_isJR~input_o\,
	datac => \ALT_INV_wasJump~input_o\,
	datae => \ALT_INV_isJump~input_o\,
	dataf => \ALT_INV_mustBranch~input_o\,
	combout => \process_0~0_combout\);

-- Location: LABCELL_X88_Y36_N9
\JRopcode~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \JRopcode~0_combout\ = ( !\isJump~input_o\ & ( \mustBranch~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_isJump~input_o\,
	dataf => \ALT_INV_mustBranch~input_o\,
	combout => \JRopcode~0_combout\);

-- Location: LABCELL_X42_Y42_N0
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


