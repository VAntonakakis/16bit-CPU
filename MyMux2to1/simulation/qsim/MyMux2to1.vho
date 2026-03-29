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

-- DATE "03/29/2026 11:55:34"

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

ENTITY 	MyMux2to1 IS
    PORT (
	A : IN std_logic;
	B : IN std_logic;
	S : IN std_logic;
	Q : OUT std_logic
	);
END MyMux2to1;

-- Design Ports Information
-- Q	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF MyMux2to1 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic;
SIGNAL ww_B : std_logic;
SIGNAL ww_S : std_logic;
SIGNAL ww_Q : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \S~input_o\ : std_logic;
SIGNAL \B~input_o\ : std_logic;
SIGNAL \A~input_o\ : std_logic;
SIGNAL \v3|Q~0_combout\ : std_logic;
SIGNAL \ALT_INV_A~input_o\ : std_logic;
SIGNAL \ALT_INV_S~input_o\ : std_logic;
SIGNAL \ALT_INV_B~input_o\ : std_logic;

BEGIN

ww_A <= A;
ww_B <= B;
ww_S <= S;
Q <= ww_Q;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_A~input_o\ <= NOT \A~input_o\;
\ALT_INV_S~input_o\ <= NOT \S~input_o\;
\ALT_INV_B~input_o\ <= NOT \B~input_o\;

-- Location: IOOBUF_X6_Y0_N19
\Q~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \v3|Q~0_combout\,
	devoe => ww_devoe,
	o => ww_Q);

-- Location: IOIBUF_X6_Y0_N35
\S~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S,
	o => \S~input_o\);

-- Location: IOIBUF_X6_Y0_N1
\B~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B,
	o => \B~input_o\);

-- Location: IOIBUF_X6_Y0_N52
\A~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A,
	o => \A~input_o\);

-- Location: MLABCELL_X6_Y1_N0
\v3|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \v3|Q~0_combout\ = ( \A~input_o\ & ( (!\S~input_o\) # (\B~input_o\) ) ) # ( !\A~input_o\ & ( (\S~input_o\ & \B~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_S~input_o\,
	datac => \ALT_INV_B~input_o\,
	dataf => \ALT_INV_A~input_o\,
	combout => \v3|Q~0_combout\);

-- Location: LABCELL_X80_Y37_N0
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


