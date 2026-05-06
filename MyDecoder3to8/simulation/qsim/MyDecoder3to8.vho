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

-- DATE "04/29/2026 15:07:13"

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

ENTITY 	MyDecoder3to8 IS
    PORT (
	S : IN std_logic_vector(2 DOWNTO 0);
	Q : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END MyDecoder3to8;

-- Design Ports Information
-- Q[0]	=>  Location: PIN_L17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[1]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[2]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[3]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[4]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[5]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[6]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[7]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[2]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[0]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[1]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF MyDecoder3to8 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_S : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_Q : std_logic_vector(7 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \S[2]~input_o\ : std_logic;
SIGNAL \S[1]~input_o\ : std_logic;
SIGNAL \S[0]~input_o\ : std_logic;
SIGNAL \v4|Q~combout\ : std_logic;
SIGNAL \v6|Q~0_combout\ : std_logic;
SIGNAL \v8|Q~0_combout\ : std_logic;
SIGNAL \v10|Q~0_combout\ : std_logic;
SIGNAL \v12|Q~0_combout\ : std_logic;
SIGNAL \v14|Q~0_combout\ : std_logic;
SIGNAL \v16|Q~0_combout\ : std_logic;
SIGNAL \v18|Q~0_combout\ : std_logic;
SIGNAL \v4|ALT_INV_Q~combout\ : std_logic;
SIGNAL \ALT_INV_S[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_S[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_S[1]~input_o\ : std_logic;

BEGIN

ww_S <= S;
Q <= ww_Q;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\v4|ALT_INV_Q~combout\ <= NOT \v4|Q~combout\;
\ALT_INV_S[2]~input_o\ <= NOT \S[2]~input_o\;
\ALT_INV_S[0]~input_o\ <= NOT \S[0]~input_o\;
\ALT_INV_S[1]~input_o\ <= NOT \S[1]~input_o\;

-- Location: IOOBUF_X89_Y37_N22
\Q[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \v4|ALT_INV_Q~combout\,
	devoe => ww_devoe,
	o => ww_Q(0));

-- Location: IOOBUF_X89_Y35_N62
\Q[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \v6|Q~0_combout\,
	devoe => ww_devoe,
	o => ww_Q(1));

-- Location: IOOBUF_X89_Y37_N5
\Q[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \v8|Q~0_combout\,
	devoe => ww_devoe,
	o => ww_Q(2));

-- Location: IOOBUF_X89_Y36_N5
\Q[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \v10|Q~0_combout\,
	devoe => ww_devoe,
	o => ww_Q(3));

-- Location: IOOBUF_X89_Y38_N39
\Q[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \v12|Q~0_combout\,
	devoe => ww_devoe,
	o => ww_Q(4));

-- Location: IOOBUF_X89_Y36_N22
\Q[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \v14|Q~0_combout\,
	devoe => ww_devoe,
	o => ww_Q(5));

-- Location: IOOBUF_X89_Y37_N39
\Q[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \v16|Q~0_combout\,
	devoe => ww_devoe,
	o => ww_Q(6));

-- Location: IOOBUF_X89_Y37_N56
\Q[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \v18|Q~0_combout\,
	devoe => ww_devoe,
	o => ww_Q(7));

-- Location: IOIBUF_X89_Y38_N21
\S[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S(2),
	o => \S[2]~input_o\);

-- Location: IOIBUF_X89_Y35_N95
\S[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S(1),
	o => \S[1]~input_o\);

-- Location: IOIBUF_X89_Y38_N55
\S[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S(0),
	o => \S[0]~input_o\);

-- Location: LABCELL_X88_Y37_N0
\v4|Q\ : cyclonev_lcell_comb
-- Equation(s):
-- \v4|Q~combout\ = ( \S[1]~input_o\ & ( \S[0]~input_o\ ) ) # ( !\S[1]~input_o\ & ( \S[0]~input_o\ ) ) # ( \S[1]~input_o\ & ( !\S[0]~input_o\ ) ) # ( !\S[1]~input_o\ & ( !\S[0]~input_o\ & ( \S[2]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_S[2]~input_o\,
	datae => \ALT_INV_S[1]~input_o\,
	dataf => \ALT_INV_S[0]~input_o\,
	combout => \v4|Q~combout\);

-- Location: LABCELL_X88_Y37_N9
\v6|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \v6|Q~0_combout\ = ( !\S[1]~input_o\ & ( \S[0]~input_o\ & ( !\S[2]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_S[2]~input_o\,
	datae => \ALT_INV_S[1]~input_o\,
	dataf => \ALT_INV_S[0]~input_o\,
	combout => \v6|Q~0_combout\);

-- Location: LABCELL_X88_Y37_N42
\v8|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \v8|Q~0_combout\ = ( \S[1]~input_o\ & ( !\S[0]~input_o\ & ( !\S[2]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_S[2]~input_o\,
	datae => \ALT_INV_S[1]~input_o\,
	dataf => \ALT_INV_S[0]~input_o\,
	combout => \v8|Q~0_combout\);

-- Location: LABCELL_X88_Y37_N51
\v10|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \v10|Q~0_combout\ = ( \S[1]~input_o\ & ( \S[0]~input_o\ & ( !\S[2]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_S[2]~input_o\,
	datae => \ALT_INV_S[1]~input_o\,
	dataf => \ALT_INV_S[0]~input_o\,
	combout => \v10|Q~0_combout\);

-- Location: LABCELL_X88_Y37_N54
\v12|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \v12|Q~0_combout\ = ( !\S[1]~input_o\ & ( !\S[0]~input_o\ & ( \S[2]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_S[2]~input_o\,
	datae => \ALT_INV_S[1]~input_o\,
	dataf => \ALT_INV_S[0]~input_o\,
	combout => \v12|Q~0_combout\);

-- Location: LABCELL_X88_Y37_N33
\v14|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \v14|Q~0_combout\ = ( !\S[1]~input_o\ & ( \S[0]~input_o\ & ( \S[2]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_S[2]~input_o\,
	datae => \ALT_INV_S[1]~input_o\,
	dataf => \ALT_INV_S[0]~input_o\,
	combout => \v14|Q~0_combout\);

-- Location: LABCELL_X88_Y37_N36
\v16|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \v16|Q~0_combout\ = ( \S[1]~input_o\ & ( !\S[0]~input_o\ & ( \S[2]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_S[2]~input_o\,
	datae => \ALT_INV_S[1]~input_o\,
	dataf => \ALT_INV_S[0]~input_o\,
	combout => \v16|Q~0_combout\);

-- Location: LABCELL_X88_Y37_N15
\v18|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \v18|Q~0_combout\ = ( \S[1]~input_o\ & ( \S[0]~input_o\ & ( \S[2]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_S[2]~input_o\,
	datae => \ALT_INV_S[1]~input_o\,
	dataf => \ALT_INV_S[0]~input_o\,
	combout => \v18|Q~0_combout\);

-- Location: MLABCELL_X47_Y36_N3
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


