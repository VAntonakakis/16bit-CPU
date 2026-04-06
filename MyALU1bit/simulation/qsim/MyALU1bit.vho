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

-- DATE "04/05/2026 10:03:19"

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

ENTITY 	MyALU1bit IS
    PORT (
	A : IN std_logic;
	B : IN std_logic;
	S : IN std_logic_vector(2 DOWNTO 0);
	Cin : IN std_logic;
	Q : OUT std_logic;
	Overflow : OUT std_logic
	);
END MyALU1bit;

-- Design Ports Information
-- Q	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Overflow	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[2]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[1]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[0]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cin	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF MyALU1bit IS
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
SIGNAL ww_S : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_Cin : std_logic;
SIGNAL ww_Q : std_logic;
SIGNAL ww_Overflow : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \B~input_o\ : std_logic;
SIGNAL \S[1]~input_o\ : std_logic;
SIGNAL \S[2]~input_o\ : std_logic;
SIGNAL \A~input_o\ : std_logic;
SIGNAL \Cin~input_o\ : std_logic;
SIGNAL \S[0]~input_o\ : std_logic;
SIGNAL \v9|v6|v3|Q~0_combout\ : std_logic;
SIGNAL \v12|Q~0_combout\ : std_logic;
SIGNAL \ALT_INV_S[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_B~input_o\ : std_logic;
SIGNAL \ALT_INV_A~input_o\ : std_logic;
SIGNAL \ALT_INV_S[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_S[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_Cin~input_o\ : std_logic;

BEGIN

ww_A <= A;
ww_B <= B;
ww_S <= S;
ww_Cin <= Cin;
Q <= ww_Q;
Overflow <= ww_Overflow;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_S[2]~input_o\ <= NOT \S[2]~input_o\;
\ALT_INV_B~input_o\ <= NOT \B~input_o\;
\ALT_INV_A~input_o\ <= NOT \A~input_o\;
\ALT_INV_S[0]~input_o\ <= NOT \S[0]~input_o\;
\ALT_INV_S[1]~input_o\ <= NOT \S[1]~input_o\;
\ALT_INV_Cin~input_o\ <= NOT \Cin~input_o\;

-- Location: IOOBUF_X4_Y0_N36
\Q~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \v9|v6|v3|Q~0_combout\,
	devoe => ww_devoe,
	o => ww_Q);

-- Location: IOOBUF_X4_Y0_N53
\Overflow~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \v12|Q~0_combout\,
	devoe => ww_devoe,
	o => ww_Overflow);

-- Location: IOIBUF_X2_Y0_N58
\B~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B,
	o => \B~input_o\);

-- Location: IOIBUF_X2_Y0_N75
\S[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S(1),
	o => \S[1]~input_o\);

-- Location: IOIBUF_X2_Y0_N41
\S[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S(2),
	o => \S[2]~input_o\);

-- Location: IOIBUF_X4_Y0_N1
\A~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A,
	o => \A~input_o\);

-- Location: IOIBUF_X2_Y0_N92
\Cin~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cin,
	o => \Cin~input_o\);

-- Location: IOIBUF_X4_Y0_N18
\S[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S(0),
	o => \S[0]~input_o\);

-- Location: MLABCELL_X3_Y1_N6
\v9|v6|v3|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \v9|v6|v3|Q~0_combout\ = ( \Cin~input_o\ & ( \S[0]~input_o\ & ( (!\B~input_o\ & ((!\S[2]~input_o\ $ (!\A~input_o\)))) # (\B~input_o\ & ((!\S[1]~input_o\ & ((!\A~input_o\))) # (\S[1]~input_o\ & (!\S[2]~input_o\)))) ) ) ) # ( !\Cin~input_o\ & ( 
-- \S[0]~input_o\ & ( (!\B~input_o\ & ((!\S[2]~input_o\ $ (!\A~input_o\)))) # (\B~input_o\ & ((!\S[1]~input_o\ & ((!\A~input_o\))) # (\S[1]~input_o\ & (!\S[2]~input_o\)))) ) ) ) # ( \Cin~input_o\ & ( !\S[0]~input_o\ & ( (!\B~input_o\ & ((!\S[1]~input_o\ & 
-- ((!\A~input_o\))) # (\S[1]~input_o\ & (\S[2]~input_o\ & \A~input_o\)))) # (\B~input_o\ & ((!\S[2]~input_o\ $ (!\A~input_o\)))) ) ) ) # ( !\Cin~input_o\ & ( !\S[0]~input_o\ & ( (!\B~input_o\ & ((!\S[1]~input_o\ & (!\S[2]~input_o\ $ (!\A~input_o\))) # 
-- (\S[1]~input_o\ & (\S[2]~input_o\ & \A~input_o\)))) # (\B~input_o\ & (!\A~input_o\ $ (((\S[1]~input_o\ & !\S[2]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110110010010100011010101001001011110101100000101111010110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B~input_o\,
	datab => \ALT_INV_S[1]~input_o\,
	datac => \ALT_INV_S[2]~input_o\,
	datad => \ALT_INV_A~input_o\,
	datae => \ALT_INV_Cin~input_o\,
	dataf => \ALT_INV_S[0]~input_o\,
	combout => \v9|v6|v3|Q~0_combout\);

-- Location: MLABCELL_X3_Y1_N0
\v12|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \v12|Q~0_combout\ = ( \Cin~input_o\ & ( \S[0]~input_o\ & ( (!\S[1]~input_o\ & (!\S[2]~input_o\ & ((!\B~input_o\) # (\A~input_o\)))) ) ) ) # ( !\Cin~input_o\ & ( \S[0]~input_o\ & ( (!\S[1]~input_o\ & (!\S[2]~input_o\ & ((!\B~input_o\) # (\A~input_o\)))) ) 
-- ) ) # ( \Cin~input_o\ & ( !\S[0]~input_o\ & ( (!\S[1]~input_o\ & (!\S[2]~input_o\ & ((\A~input_o\) # (\B~input_o\)))) ) ) ) # ( !\Cin~input_o\ & ( !\S[0]~input_o\ & ( (\B~input_o\ & (!\S[1]~input_o\ & (!\S[2]~input_o\ & \A~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000010000001100000010000000110000001000000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B~input_o\,
	datab => \ALT_INV_S[1]~input_o\,
	datac => \ALT_INV_S[2]~input_o\,
	datad => \ALT_INV_A~input_o\,
	datae => \ALT_INV_Cin~input_o\,
	dataf => \ALT_INV_S[0]~input_o\,
	combout => \v12|Q~0_combout\);

-- Location: MLABCELL_X84_Y9_N0
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


