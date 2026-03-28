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

-- DATE "03/28/2026 18:15:11"

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

ENTITY 	TwoComplement16bit IS
    PORT (
	A : IN std_logic_vector(15 DOWNTO 0);
	Q : OUT std_logic_vector(15 DOWNTO 0);
	Overflow : OUT std_logic
	);
END TwoComplement16bit;

-- Design Ports Information
-- Q[0]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[1]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[2]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[3]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[4]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[5]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[6]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[7]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[8]	=>  Location: PIN_L17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[9]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[10]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[11]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[12]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[13]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[14]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[15]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Overflow	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_P17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[10]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[11]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[12]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[13]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[14]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[15]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF TwoComplement16bit IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_Q : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_Overflow : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \v16|v1|v3|v4|Q~0_combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \v16|v2|v3|v4|Q~0_combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \v16|v3|v3|v4|Q~0_combout\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \v16|v4|v3|v4|Q~0_combout\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \v16|v5|v3|v4|Q~0_combout\ : std_logic;
SIGNAL \v16|v5|v4|Q~combout\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \v16|v6|v3|v4|Q~0_combout\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \v16|v7|v3|v4|Q~0_combout\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \v16|v8|v3|v4|Q~0_combout\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \v16|v9|v3|v4|Q~0_combout\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \v16|v10|v3|v4|Q~0_combout\ : std_logic;
SIGNAL \v16|v10|v4|Q~combout\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \v16|v11|v3|v4|Q~0_combout\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
SIGNAL \v16|v12|v3|v4|Q~0_combout\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \v16|v13|v3|v4|Q~0_combout\ : std_logic;
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \v16|v14|v3|v4|Q~0_combout\ : std_logic;
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \v16|v15|v3|v4|Q~0_combout\ : std_logic;
SIGNAL \v16|v15|v4|Q~combout\ : std_logic;
SIGNAL \ALT_INV_A[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[0]~input_o\ : std_logic;
SIGNAL \v16|v15|v4|ALT_INV_Q~combout\ : std_logic;
SIGNAL \v16|v10|v4|ALT_INV_Q~combout\ : std_logic;
SIGNAL \v16|v5|v4|ALT_INV_Q~combout\ : std_logic;

BEGIN

ww_A <= A;
Q <= ww_Q;
Overflow <= ww_Overflow;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_A[15]~input_o\ <= NOT \A[15]~input_o\;
\ALT_INV_A[14]~input_o\ <= NOT \A[14]~input_o\;
\ALT_INV_A[13]~input_o\ <= NOT \A[13]~input_o\;
\ALT_INV_A[12]~input_o\ <= NOT \A[12]~input_o\;
\ALT_INV_A[11]~input_o\ <= NOT \A[11]~input_o\;
\ALT_INV_A[10]~input_o\ <= NOT \A[10]~input_o\;
\ALT_INV_A[9]~input_o\ <= NOT \A[9]~input_o\;
\ALT_INV_A[8]~input_o\ <= NOT \A[8]~input_o\;
\ALT_INV_A[7]~input_o\ <= NOT \A[7]~input_o\;
\ALT_INV_A[6]~input_o\ <= NOT \A[6]~input_o\;
\ALT_INV_A[5]~input_o\ <= NOT \A[5]~input_o\;
\ALT_INV_A[4]~input_o\ <= NOT \A[4]~input_o\;
\ALT_INV_A[3]~input_o\ <= NOT \A[3]~input_o\;
\ALT_INV_A[2]~input_o\ <= NOT \A[2]~input_o\;
\ALT_INV_A[1]~input_o\ <= NOT \A[1]~input_o\;
\ALT_INV_A[0]~input_o\ <= NOT \A[0]~input_o\;
\v16|v15|v4|ALT_INV_Q~combout\ <= NOT \v16|v15|v4|Q~combout\;
\v16|v10|v4|ALT_INV_Q~combout\ <= NOT \v16|v10|v4|Q~combout\;
\v16|v5|v4|ALT_INV_Q~combout\ <= NOT \v16|v5|v4|Q~combout\;

-- Location: IOOBUF_X89_Y36_N39
\Q[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \A[0]~input_o\,
	devoe => ww_devoe,
	o => ww_Q(0));

-- Location: IOOBUF_X89_Y38_N22
\Q[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \v16|v1|v3|v4|Q~0_combout\,
	devoe => ww_devoe,
	o => ww_Q(1));

-- Location: IOOBUF_X89_Y36_N56
\Q[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \v16|v2|v3|v4|Q~0_combout\,
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
	i => \v16|v3|v3|v4|Q~0_combout\,
	devoe => ww_devoe,
	o => ww_Q(3));

-- Location: IOOBUF_X89_Y8_N5
\Q[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \v16|v4|v3|v4|Q~0_combout\,
	devoe => ww_devoe,
	o => ww_Q(4));

-- Location: IOOBUF_X89_Y35_N79
\Q[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \v16|v5|v3|v4|Q~0_combout\,
	devoe => ww_devoe,
	o => ww_Q(5));

-- Location: IOOBUF_X89_Y37_N5
\Q[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \v16|v6|v3|v4|Q~0_combout\,
	devoe => ww_devoe,
	o => ww_Q(6));

-- Location: IOOBUF_X89_Y35_N96
\Q[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \v16|v7|v3|v4|Q~0_combout\,
	devoe => ww_devoe,
	o => ww_Q(7));

-- Location: IOOBUF_X89_Y37_N22
\Q[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \v16|v8|v3|v4|Q~0_combout\,
	devoe => ww_devoe,
	o => ww_Q(8));

-- Location: IOOBUF_X89_Y37_N56
\Q[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \v16|v9|v3|v4|Q~0_combout\,
	devoe => ww_devoe,
	o => ww_Q(9));

-- Location: IOOBUF_X89_Y37_N39
\Q[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \v16|v10|v3|v4|Q~0_combout\,
	devoe => ww_devoe,
	o => ww_Q(10));

-- Location: IOOBUF_X89_Y6_N22
\Q[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \v16|v11|v3|v4|Q~0_combout\,
	devoe => ww_devoe,
	o => ww_Q(11));

-- Location: IOOBUF_X89_Y6_N39
\Q[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \v16|v12|v3|v4|Q~0_combout\,
	devoe => ww_devoe,
	o => ww_Q(12));

-- Location: IOOBUF_X89_Y4_N62
\Q[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \v16|v13|v3|v4|Q~0_combout\,
	devoe => ww_devoe,
	o => ww_Q(13));

-- Location: IOOBUF_X89_Y4_N96
\Q[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \v16|v14|v3|v4|Q~0_combout\,
	devoe => ww_devoe,
	o => ww_Q(14));

-- Location: IOOBUF_X89_Y8_N22
\Q[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \v16|v15|v3|v4|Q~0_combout\,
	devoe => ww_devoe,
	o => ww_Q(15));

-- Location: IOOBUF_X89_Y8_N56
\Overflow~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \v16|v15|v4|ALT_INV_Q~combout\,
	devoe => ww_devoe,
	o => ww_Overflow);

-- Location: IOIBUF_X89_Y36_N21
\A[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X89_Y38_N38
\A[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: LABCELL_X88_Y38_N33
\v16|v1|v3|v4|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \v16|v1|v3|v4|Q~0_combout\ = ( \A[1]~input_o\ & ( !\A[0]~input_o\ ) ) # ( !\A[1]~input_o\ & ( \A[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010110101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[0]~input_o\,
	dataf => \ALT_INV_A[1]~input_o\,
	combout => \v16|v1|v3|v4|Q~0_combout\);

-- Location: IOIBUF_X89_Y35_N44
\A[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: LABCELL_X88_Y35_N33
\v16|v2|v3|v4|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \v16|v2|v3|v4|Q~0_combout\ = ( !\A[2]~input_o\ & ( \A[1]~input_o\ ) ) # ( \A[2]~input_o\ & ( !\A[1]~input_o\ & ( !\A[0]~input_o\ ) ) ) # ( !\A[2]~input_o\ & ( !\A[1]~input_o\ & ( \A[0]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111100001111000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[0]~input_o\,
	datae => \ALT_INV_A[2]~input_o\,
	dataf => \ALT_INV_A[1]~input_o\,
	combout => \v16|v2|v3|v4|Q~0_combout\);

-- Location: IOIBUF_X89_Y9_N4
\A[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: LABCELL_X88_Y35_N6
\v16|v3|v3|v4|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \v16|v3|v3|v4|Q~0_combout\ = ( !\A[3]~input_o\ & ( \A[1]~input_o\ ) ) # ( \A[3]~input_o\ & ( !\A[1]~input_o\ & ( (!\A[2]~input_o\ & !\A[0]~input_o\) ) ) ) # ( !\A[3]~input_o\ & ( !\A[1]~input_o\ & ( (\A[0]~input_o\) # (\A[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111111111110011000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[2]~input_o\,
	datad => \ALT_INV_A[0]~input_o\,
	datae => \ALT_INV_A[3]~input_o\,
	dataf => \ALT_INV_A[1]~input_o\,
	combout => \v16|v3|v3|v4|Q~0_combout\);

-- Location: IOIBUF_X89_Y9_N55
\A[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: LABCELL_X88_Y35_N15
\v16|v4|v3|v4|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \v16|v4|v3|v4|Q~0_combout\ = ( \A[3]~input_o\ & ( \A[1]~input_o\ & ( !\A[4]~input_o\ ) ) ) # ( !\A[3]~input_o\ & ( \A[1]~input_o\ & ( !\A[4]~input_o\ ) ) ) # ( \A[3]~input_o\ & ( !\A[1]~input_o\ & ( !\A[4]~input_o\ ) ) ) # ( !\A[3]~input_o\ & ( 
-- !\A[1]~input_o\ & ( !\A[4]~input_o\ $ (((!\A[0]~input_o\ & !\A[2]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110101001101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[4]~input_o\,
	datab => \ALT_INV_A[0]~input_o\,
	datac => \ALT_INV_A[2]~input_o\,
	datae => \ALT_INV_A[3]~input_o\,
	dataf => \ALT_INV_A[1]~input_o\,
	combout => \v16|v4|v3|v4|Q~0_combout\);

-- Location: IOIBUF_X89_Y38_N4
\A[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: LABCELL_X88_Y35_N18
\v16|v5|v3|v4|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \v16|v5|v3|v4|Q~0_combout\ = ( \A[3]~input_o\ & ( \A[1]~input_o\ & ( !\A[5]~input_o\ ) ) ) # ( !\A[3]~input_o\ & ( \A[1]~input_o\ & ( !\A[5]~input_o\ ) ) ) # ( \A[3]~input_o\ & ( !\A[1]~input_o\ & ( !\A[5]~input_o\ ) ) ) # ( !\A[3]~input_o\ & ( 
-- !\A[1]~input_o\ & ( !\A[5]~input_o\ $ (((!\A[2]~input_o\ & (!\A[4]~input_o\ & !\A[0]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[5]~input_o\,
	datab => \ALT_INV_A[2]~input_o\,
	datac => \ALT_INV_A[4]~input_o\,
	datad => \ALT_INV_A[0]~input_o\,
	datae => \ALT_INV_A[3]~input_o\,
	dataf => \ALT_INV_A[1]~input_o\,
	combout => \v16|v5|v3|v4|Q~0_combout\);

-- Location: LABCELL_X88_Y35_N24
\v16|v5|v4|Q\ : cyclonev_lcell_comb
-- Equation(s):
-- \v16|v5|v4|Q~combout\ = ( !\A[3]~input_o\ & ( !\A[1]~input_o\ & ( (!\A[5]~input_o\ & (!\A[2]~input_o\ & (!\A[4]~input_o\ & !\A[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[5]~input_o\,
	datab => \ALT_INV_A[2]~input_o\,
	datac => \ALT_INV_A[4]~input_o\,
	datad => \ALT_INV_A[0]~input_o\,
	datae => \ALT_INV_A[3]~input_o\,
	dataf => \ALT_INV_A[1]~input_o\,
	combout => \v16|v5|v4|Q~combout\);

-- Location: IOIBUF_X89_Y35_N61
\A[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: LABCELL_X88_Y35_N3
\v16|v6|v3|v4|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \v16|v6|v3|v4|Q~0_combout\ = ( \A[6]~input_o\ & ( \v16|v5|v4|Q~combout\ ) ) # ( !\A[6]~input_o\ & ( !\v16|v5|v4|Q~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \v16|v5|v4|ALT_INV_Q~combout\,
	dataf => \ALT_INV_A[6]~input_o\,
	combout => \v16|v6|v3|v4|Q~0_combout\);

-- Location: IOIBUF_X89_Y9_N38
\A[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: LABCELL_X88_Y35_N36
\v16|v7|v3|v4|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \v16|v7|v3|v4|Q~0_combout\ = ( \A[6]~input_o\ & ( !\A[7]~input_o\ ) ) # ( !\A[6]~input_o\ & ( !\A[7]~input_o\ $ (\v16|v5|v4|Q~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001111000011110000111100001111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[7]~input_o\,
	datac => \v16|v5|v4|ALT_INV_Q~combout\,
	dataf => \ALT_INV_A[6]~input_o\,
	combout => \v16|v7|v3|v4|Q~0_combout\);

-- Location: IOIBUF_X89_Y9_N21
\A[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

-- Location: LABCELL_X88_Y35_N39
\v16|v8|v3|v4|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \v16|v8|v3|v4|Q~0_combout\ = ( \A[8]~input_o\ & ( (!\A[6]~input_o\ & (!\A[7]~input_o\ & \v16|v5|v4|Q~combout\)) ) ) # ( !\A[8]~input_o\ & ( ((!\v16|v5|v4|Q~combout\) # (\A[7]~input_o\)) # (\A[6]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111011111110111111101111111011100001000000010000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[6]~input_o\,
	datab => \ALT_INV_A[7]~input_o\,
	datac => \v16|v5|v4|ALT_INV_Q~combout\,
	dataf => \ALT_INV_A[8]~input_o\,
	combout => \v16|v8|v3|v4|Q~0_combout\);

-- Location: IOIBUF_X89_Y38_N55
\A[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

-- Location: LABCELL_X88_Y35_N0
\v16|v9|v3|v4|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \v16|v9|v3|v4|Q~0_combout\ = ( \A[7]~input_o\ & ( !\A[9]~input_o\ ) ) # ( !\A[7]~input_o\ & ( !\A[9]~input_o\ $ (((!\A[6]~input_o\ & (\v16|v5|v4|Q~combout\ & !\A[8]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101111100100000110111110010000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[6]~input_o\,
	datab => \v16|v5|v4|ALT_INV_Q~combout\,
	datac => \ALT_INV_A[8]~input_o\,
	datad => \ALT_INV_A[9]~input_o\,
	dataf => \ALT_INV_A[7]~input_o\,
	combout => \v16|v9|v3|v4|Q~0_combout\);

-- Location: IOIBUF_X89_Y8_N38
\A[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

-- Location: LABCELL_X88_Y35_N42
\v16|v10|v3|v4|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \v16|v10|v3|v4|Q~0_combout\ = ( !\A[10]~input_o\ & ( \A[9]~input_o\ ) ) # ( \A[10]~input_o\ & ( !\A[9]~input_o\ & ( (!\A[8]~input_o\ & (!\A[7]~input_o\ & (!\A[6]~input_o\ & \v16|v5|v4|Q~combout\))) ) ) ) # ( !\A[10]~input_o\ & ( !\A[9]~input_o\ & ( 
-- (((!\v16|v5|v4|Q~combout\) # (\A[6]~input_o\)) # (\A[7]~input_o\)) # (\A[8]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111101111111000000001000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[8]~input_o\,
	datab => \ALT_INV_A[7]~input_o\,
	datac => \ALT_INV_A[6]~input_o\,
	datad => \v16|v5|v4|ALT_INV_Q~combout\,
	datae => \ALT_INV_A[10]~input_o\,
	dataf => \ALT_INV_A[9]~input_o\,
	combout => \v16|v10|v3|v4|Q~0_combout\);

-- Location: LABCELL_X88_Y35_N48
\v16|v10|v4|Q\ : cyclonev_lcell_comb
-- Equation(s):
-- \v16|v10|v4|Q~combout\ = ( !\A[10]~input_o\ & ( !\A[9]~input_o\ & ( (!\A[8]~input_o\ & (!\A[7]~input_o\ & (!\A[6]~input_o\ & \v16|v5|v4|Q~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[8]~input_o\,
	datab => \ALT_INV_A[7]~input_o\,
	datac => \ALT_INV_A[6]~input_o\,
	datad => \v16|v5|v4|ALT_INV_Q~combout\,
	datae => \ALT_INV_A[10]~input_o\,
	dataf => \ALT_INV_A[9]~input_o\,
	combout => \v16|v10|v4|Q~combout\);

-- Location: IOIBUF_X89_Y4_N44
\A[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(11),
	o => \A[11]~input_o\);

-- Location: LABCELL_X88_Y6_N0
\v16|v11|v3|v4|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \v16|v11|v3|v4|Q~0_combout\ = ( \v16|v10|v4|Q~combout\ & ( \A[11]~input_o\ ) ) # ( !\v16|v10|v4|Q~combout\ & ( !\A[11]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \v16|v10|v4|ALT_INV_Q~combout\,
	dataf => \ALT_INV_A[11]~input_o\,
	combout => \v16|v11|v3|v4|Q~0_combout\);

-- Location: IOIBUF_X89_Y4_N78
\A[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(12),
	o => \A[12]~input_o\);

-- Location: LABCELL_X88_Y6_N39
\v16|v12|v3|v4|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \v16|v12|v3|v4|Q~0_combout\ = ( \v16|v10|v4|Q~combout\ & ( !\A[11]~input_o\ $ (!\A[12]~input_o\) ) ) # ( !\v16|v10|v4|Q~combout\ & ( !\A[12]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000010110100101101011110000111100000101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[11]~input_o\,
	datac => \ALT_INV_A[12]~input_o\,
	datae => \v16|v10|v4|ALT_INV_Q~combout\,
	combout => \v16|v12|v3|v4|Q~0_combout\);

-- Location: IOIBUF_X89_Y6_N4
\A[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(13),
	o => \A[13]~input_o\);

-- Location: LABCELL_X88_Y6_N42
\v16|v13|v3|v4|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \v16|v13|v3|v4|Q~0_combout\ = ( \v16|v10|v4|Q~combout\ & ( !\A[13]~input_o\ $ (((!\A[12]~input_o\ & !\A[11]~input_o\))) ) ) # ( !\v16|v10|v4|Q~combout\ & ( !\A[13]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000001111111100000011111111000000000011111111000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[12]~input_o\,
	datac => \ALT_INV_A[11]~input_o\,
	datad => \ALT_INV_A[13]~input_o\,
	datae => \v16|v10|v4|ALT_INV_Q~combout\,
	combout => \v16|v13|v3|v4|Q~0_combout\);

-- Location: IOIBUF_X72_Y0_N35
\A[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(14),
	o => \A[14]~input_o\);

-- Location: LABCELL_X88_Y6_N48
\v16|v14|v3|v4|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \v16|v14|v3|v4|Q~0_combout\ = ( \v16|v10|v4|Q~combout\ & ( !\A[14]~input_o\ $ (((!\A[11]~input_o\ & (!\A[12]~input_o\ & !\A[13]~input_o\)))) ) ) # ( !\v16|v10|v4|Q~combout\ & ( !\A[14]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000011110001111000011110000111100000111100011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[11]~input_o\,
	datab => \ALT_INV_A[12]~input_o\,
	datac => \ALT_INV_A[14]~input_o\,
	datad => \ALT_INV_A[13]~input_o\,
	datae => \v16|v10|v4|ALT_INV_Q~combout\,
	combout => \v16|v14|v3|v4|Q~0_combout\);

-- Location: IOIBUF_X89_Y6_N55
\A[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(15),
	o => \A[15]~input_o\);

-- Location: LABCELL_X88_Y6_N54
\v16|v15|v3|v4|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \v16|v15|v3|v4|Q~0_combout\ = ( \v16|v10|v4|Q~combout\ & ( \A[14]~input_o\ & ( !\A[15]~input_o\ ) ) ) # ( !\v16|v10|v4|Q~combout\ & ( \A[14]~input_o\ & ( !\A[15]~input_o\ ) ) ) # ( \v16|v10|v4|Q~combout\ & ( !\A[14]~input_o\ & ( !\A[15]~input_o\ $ 
-- (((!\A[11]~input_o\ & (!\A[12]~input_o\ & !\A[13]~input_o\)))) ) ) ) # ( !\v16|v10|v4|Q~combout\ & ( !\A[14]~input_o\ & ( !\A[15]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000011110001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[11]~input_o\,
	datab => \ALT_INV_A[12]~input_o\,
	datac => \ALT_INV_A[15]~input_o\,
	datad => \ALT_INV_A[13]~input_o\,
	datae => \v16|v10|v4|ALT_INV_Q~combout\,
	dataf => \ALT_INV_A[14]~input_o\,
	combout => \v16|v15|v3|v4|Q~0_combout\);

-- Location: LABCELL_X88_Y6_N30
\v16|v15|v4|Q\ : cyclonev_lcell_comb
-- Equation(s):
-- \v16|v15|v4|Q~combout\ = ( \v16|v10|v4|Q~combout\ & ( \A[14]~input_o\ ) ) # ( !\v16|v10|v4|Q~combout\ & ( \A[14]~input_o\ ) ) # ( \v16|v10|v4|Q~combout\ & ( !\A[14]~input_o\ & ( (((\A[13]~input_o\) # (\A[15]~input_o\)) # (\A[12]~input_o\)) # 
-- (\A[11]~input_o\) ) ) ) # ( !\v16|v10|v4|Q~combout\ & ( !\A[14]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111011111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[11]~input_o\,
	datab => \ALT_INV_A[12]~input_o\,
	datac => \ALT_INV_A[15]~input_o\,
	datad => \ALT_INV_A[13]~input_o\,
	datae => \v16|v10|v4|ALT_INV_Q~combout\,
	dataf => \ALT_INV_A[14]~input_o\,
	combout => \v16|v15|v4|Q~combout\);

-- Location: LABCELL_X66_Y1_N0
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


