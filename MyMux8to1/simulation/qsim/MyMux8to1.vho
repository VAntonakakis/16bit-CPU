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

-- DATE "03/29/2026 12:53:15"

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

ENTITY 	MyMux8to1 IS
    PORT (
	S : IN std_logic_vector(2 DOWNTO 0);
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	D : IN std_logic;
	E : IN std_logic;
	F : IN std_logic;
	G : IN std_logic;
	H : IN std_logic;
	Q : OUT std_logic
	);
END MyMux8to1;

-- Design Ports Information
-- Q	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- H	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- E	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[2]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[1]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[0]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF MyMux8to1 IS
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
SIGNAL ww_A : std_logic;
SIGNAL ww_B : std_logic;
SIGNAL ww_C : std_logic;
SIGNAL ww_D : std_logic;
SIGNAL ww_E : std_logic;
SIGNAL ww_F : std_logic;
SIGNAL ww_G : std_logic;
SIGNAL ww_H : std_logic;
SIGNAL ww_Q : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \S[2]~input_o\ : std_logic;
SIGNAL \B~input_o\ : std_logic;
SIGNAL \C~input_o\ : std_logic;
SIGNAL \S[0]~input_o\ : std_logic;
SIGNAL \S[1]~input_o\ : std_logic;
SIGNAL \D~input_o\ : std_logic;
SIGNAL \A~input_o\ : std_logic;
SIGNAL \V4|v3|Q~4_combout\ : std_logic;
SIGNAL \G~input_o\ : std_logic;
SIGNAL \H~input_o\ : std_logic;
SIGNAL \F~input_o\ : std_logic;
SIGNAL \E~input_o\ : std_logic;
SIGNAL \V4|v3|Q~0_combout\ : std_logic;
SIGNAL \ALT_INV_C~input_o\ : std_logic;
SIGNAL \ALT_INV_S[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_A~input_o\ : std_logic;
SIGNAL \ALT_INV_D~input_o\ : std_logic;
SIGNAL \ALT_INV_B~input_o\ : std_logic;
SIGNAL \ALT_INV_G~input_o\ : std_logic;
SIGNAL \ALT_INV_S[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_S[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_E~input_o\ : std_logic;
SIGNAL \ALT_INV_H~input_o\ : std_logic;
SIGNAL \ALT_INV_F~input_o\ : std_logic;
SIGNAL \V4|v3|ALT_INV_Q~4_combout\ : std_logic;

BEGIN

ww_S <= S;
ww_A <= A;
ww_B <= B;
ww_C <= C;
ww_D <= D;
ww_E <= E;
ww_F <= F;
ww_G <= G;
ww_H <= H;
Q <= ww_Q;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_C~input_o\ <= NOT \C~input_o\;
\ALT_INV_S[0]~input_o\ <= NOT \S[0]~input_o\;
\ALT_INV_A~input_o\ <= NOT \A~input_o\;
\ALT_INV_D~input_o\ <= NOT \D~input_o\;
\ALT_INV_B~input_o\ <= NOT \B~input_o\;
\ALT_INV_G~input_o\ <= NOT \G~input_o\;
\ALT_INV_S[1]~input_o\ <= NOT \S[1]~input_o\;
\ALT_INV_S[2]~input_o\ <= NOT \S[2]~input_o\;
\ALT_INV_E~input_o\ <= NOT \E~input_o\;
\ALT_INV_H~input_o\ <= NOT \H~input_o\;
\ALT_INV_F~input_o\ <= NOT \F~input_o\;
\V4|v3|ALT_INV_Q~4_combout\ <= NOT \V4|v3|Q~4_combout\;

-- Location: IOOBUF_X89_Y38_N39
\Q~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \V4|v3|Q~0_combout\,
	devoe => ww_devoe,
	o => ww_Q);

-- Location: IOIBUF_X89_Y35_N61
\S[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S(2),
	o => \S[2]~input_o\);

-- Location: IOIBUF_X89_Y37_N4
\B~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B,
	o => \B~input_o\);

-- Location: IOIBUF_X89_Y37_N55
\C~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C,
	o => \C~input_o\);

-- Location: IOIBUF_X89_Y36_N55
\S[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S(0),
	o => \S[0]~input_o\);

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

-- Location: IOIBUF_X89_Y37_N38
\D~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D,
	o => \D~input_o\);

-- Location: IOIBUF_X89_Y36_N21
\A~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A,
	o => \A~input_o\);

-- Location: LABCELL_X88_Y36_N6
\V4|v3|Q~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \V4|v3|Q~4_combout\ = ( !\S[1]~input_o\ & ( (!\S[2]~input_o\ & ((!\S[0]~input_o\ & (((\A~input_o\)))) # (\S[0]~input_o\ & (\B~input_o\)))) # (\S[2]~input_o\ & ((((\S[0]~input_o\))))) ) ) # ( \S[1]~input_o\ & ( (!\S[2]~input_o\ & (((!\S[0]~input_o\ & 
-- (\C~input_o\)) # (\S[0]~input_o\ & ((\D~input_o\)))))) # (\S[2]~input_o\ & ((((\S[0]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000101001110111000010100101010100001010011101110000101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_S[2]~input_o\,
	datab => \ALT_INV_B~input_o\,
	datac => \ALT_INV_C~input_o\,
	datad => \ALT_INV_S[0]~input_o\,
	datae => \ALT_INV_S[1]~input_o\,
	dataf => \ALT_INV_D~input_o\,
	datag => \ALT_INV_A~input_o\,
	combout => \V4|v3|Q~4_combout\);

-- Location: IOIBUF_X89_Y36_N38
\G~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_G,
	o => \G~input_o\);

-- Location: IOIBUF_X89_Y38_N21
\H~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_H,
	o => \H~input_o\);

-- Location: IOIBUF_X89_Y35_N78
\F~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_F,
	o => \F~input_o\);

-- Location: IOIBUF_X89_Y36_N4
\E~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_E,
	o => \E~input_o\);

-- Location: LABCELL_X88_Y36_N30
\V4|v3|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \V4|v3|Q~0_combout\ = ( !\S[1]~input_o\ & ( (!\S[2]~input_o\ & (\V4|v3|Q~4_combout\)) # (\S[2]~input_o\ & ((!\V4|v3|Q~4_combout\ & (\E~input_o\)) # (\V4|v3|Q~4_combout\ & (((\F~input_o\)))))) ) ) # ( \S[1]~input_o\ & ( (!\S[2]~input_o\ & 
-- (\V4|v3|Q~4_combout\)) # (\S[2]~input_o\ & ((!\V4|v3|Q~4_combout\ & (\G~input_o\)) # (\V4|v3|Q~4_combout\ & (((\H~input_o\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0010011000100110001001100011011100110111001101110010011000110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_S[2]~input_o\,
	datab => \V4|v3|ALT_INV_Q~4_combout\,
	datac => \ALT_INV_G~input_o\,
	datad => \ALT_INV_H~input_o\,
	datae => \ALT_INV_S[1]~input_o\,
	dataf => \ALT_INV_F~input_o\,
	datag => \ALT_INV_E~input_o\,
	combout => \V4|v3|Q~0_combout\);

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


