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

-- DATE "05/07/2026 13:55:13"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	register_MEM_WB IS
    PORT (
	clock : IN std_logic;
	Result : IN std_logic_vector(15 DOWNTO 0);
	RegAD : IN std_logic_vector(2 DOWNTO 0);
	writeData : OUT std_logic_vector(15 DOWNTO 0);
	writeAD : OUT std_logic_vector(2 DOWNTO 0)
	);
END register_MEM_WB;

-- Design Ports Information
-- writeData[0]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writeData[1]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writeData[2]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writeData[3]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writeData[4]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writeData[5]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writeData[6]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writeData[7]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writeData[8]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writeData[9]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writeData[10]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writeData[11]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writeData[12]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writeData[13]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writeData[14]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writeData[15]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writeAD[0]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writeAD[1]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writeAD[2]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[0]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[1]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[2]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[3]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[4]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[5]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[6]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[7]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[8]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[9]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[10]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[11]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[12]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[13]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[14]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[15]	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegAD[0]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegAD[1]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegAD[2]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF register_MEM_WB IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_Result : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_RegAD : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_writeData : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_writeAD : std_logic_vector(2 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputCLKENA0_outclk\ : std_logic;
SIGNAL \Result[0]~input_o\ : std_logic;
SIGNAL \writeData[0]~reg0feeder_combout\ : std_logic;
SIGNAL \writeData[0]~reg0_q\ : std_logic;
SIGNAL \Result[1]~input_o\ : std_logic;
SIGNAL \writeData[1]~reg0feeder_combout\ : std_logic;
SIGNAL \writeData[1]~reg0_q\ : std_logic;
SIGNAL \Result[2]~input_o\ : std_logic;
SIGNAL \writeData[2]~reg0feeder_combout\ : std_logic;
SIGNAL \writeData[2]~reg0_q\ : std_logic;
SIGNAL \Result[3]~input_o\ : std_logic;
SIGNAL \writeData[3]~reg0_q\ : std_logic;
SIGNAL \Result[4]~input_o\ : std_logic;
SIGNAL \writeData[4]~reg0feeder_combout\ : std_logic;
SIGNAL \writeData[4]~reg0_q\ : std_logic;
SIGNAL \Result[5]~input_o\ : std_logic;
SIGNAL \writeData[5]~reg0feeder_combout\ : std_logic;
SIGNAL \writeData[5]~reg0_q\ : std_logic;
SIGNAL \Result[6]~input_o\ : std_logic;
SIGNAL \writeData[6]~reg0feeder_combout\ : std_logic;
SIGNAL \writeData[6]~reg0_q\ : std_logic;
SIGNAL \Result[7]~input_o\ : std_logic;
SIGNAL \writeData[7]~reg0_q\ : std_logic;
SIGNAL \Result[8]~input_o\ : std_logic;
SIGNAL \writeData[8]~reg0feeder_combout\ : std_logic;
SIGNAL \writeData[8]~reg0_q\ : std_logic;
SIGNAL \Result[9]~input_o\ : std_logic;
SIGNAL \writeData[9]~reg0feeder_combout\ : std_logic;
SIGNAL \writeData[9]~reg0_q\ : std_logic;
SIGNAL \Result[10]~input_o\ : std_logic;
SIGNAL \writeData[10]~reg0feeder_combout\ : std_logic;
SIGNAL \writeData[10]~reg0_q\ : std_logic;
SIGNAL \Result[11]~input_o\ : std_logic;
SIGNAL \writeData[11]~reg0feeder_combout\ : std_logic;
SIGNAL \writeData[11]~reg0_q\ : std_logic;
SIGNAL \Result[12]~input_o\ : std_logic;
SIGNAL \writeData[12]~reg0feeder_combout\ : std_logic;
SIGNAL \writeData[12]~reg0_q\ : std_logic;
SIGNAL \Result[13]~input_o\ : std_logic;
SIGNAL \writeData[13]~reg0feeder_combout\ : std_logic;
SIGNAL \writeData[13]~reg0_q\ : std_logic;
SIGNAL \Result[14]~input_o\ : std_logic;
SIGNAL \writeData[14]~reg0_q\ : std_logic;
SIGNAL \Result[15]~input_o\ : std_logic;
SIGNAL \writeData[15]~reg0feeder_combout\ : std_logic;
SIGNAL \writeData[15]~reg0_q\ : std_logic;
SIGNAL \RegAD[0]~input_o\ : std_logic;
SIGNAL \writeAD[0]~reg0feeder_combout\ : std_logic;
SIGNAL \writeAD[0]~reg0_q\ : std_logic;
SIGNAL \RegAD[1]~input_o\ : std_logic;
SIGNAL \writeAD[1]~reg0_q\ : std_logic;
SIGNAL \RegAD[2]~input_o\ : std_logic;
SIGNAL \writeAD[2]~reg0feeder_combout\ : std_logic;
SIGNAL \writeAD[2]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_RegAD[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_RegAD[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_Result[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_Result[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_Result[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_Result[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_Result[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_Result[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_Result[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_Result[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_Result[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_Result[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_Result[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_Result[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_Result[0]~input_o\ : std_logic;

BEGIN

ww_clock <= clock;
ww_Result <= Result;
ww_RegAD <= RegAD;
writeData <= ww_writeData;
writeAD <= ww_writeAD;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_RegAD[2]~input_o\ <= NOT \RegAD[2]~input_o\;
\ALT_INV_RegAD[0]~input_o\ <= NOT \RegAD[0]~input_o\;
\ALT_INV_Result[15]~input_o\ <= NOT \Result[15]~input_o\;
\ALT_INV_Result[13]~input_o\ <= NOT \Result[13]~input_o\;
\ALT_INV_Result[12]~input_o\ <= NOT \Result[12]~input_o\;
\ALT_INV_Result[11]~input_o\ <= NOT \Result[11]~input_o\;
\ALT_INV_Result[10]~input_o\ <= NOT \Result[10]~input_o\;
\ALT_INV_Result[9]~input_o\ <= NOT \Result[9]~input_o\;
\ALT_INV_Result[8]~input_o\ <= NOT \Result[8]~input_o\;
\ALT_INV_Result[6]~input_o\ <= NOT \Result[6]~input_o\;
\ALT_INV_Result[5]~input_o\ <= NOT \Result[5]~input_o\;
\ALT_INV_Result[4]~input_o\ <= NOT \Result[4]~input_o\;
\ALT_INV_Result[2]~input_o\ <= NOT \Result[2]~input_o\;
\ALT_INV_Result[1]~input_o\ <= NOT \Result[1]~input_o\;
\ALT_INV_Result[0]~input_o\ <= NOT \Result[0]~input_o\;

-- Location: IOOBUF_X56_Y0_N53
\writeData[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \writeData[0]~reg0_q\,
	devoe => ww_devoe,
	o => ww_writeData(0));

-- Location: IOOBUF_X36_Y0_N2
\writeData[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \writeData[1]~reg0_q\,
	devoe => ww_devoe,
	o => ww_writeData(1));

-- Location: IOOBUF_X34_Y0_N93
\writeData[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \writeData[2]~reg0_q\,
	devoe => ww_devoe,
	o => ww_writeData(2));

-- Location: IOOBUF_X56_Y0_N36
\writeData[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \writeData[3]~reg0_q\,
	devoe => ww_devoe,
	o => ww_writeData(3));

-- Location: IOOBUF_X36_Y0_N36
\writeData[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \writeData[4]~reg0_q\,
	devoe => ww_devoe,
	o => ww_writeData(4));

-- Location: IOOBUF_X32_Y0_N53
\writeData[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \writeData[5]~reg0_q\,
	devoe => ww_devoe,
	o => ww_writeData(5));

-- Location: IOOBUF_X40_Y0_N19
\writeData[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \writeData[6]~reg0_q\,
	devoe => ww_devoe,
	o => ww_writeData(6));

-- Location: IOOBUF_X28_Y0_N53
\writeData[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \writeData[7]~reg0_q\,
	devoe => ww_devoe,
	o => ww_writeData(7));

-- Location: IOOBUF_X6_Y0_N19
\writeData[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \writeData[8]~reg0_q\,
	devoe => ww_devoe,
	o => ww_writeData(8));

-- Location: IOOBUF_X40_Y0_N2
\writeData[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \writeData[9]~reg0_q\,
	devoe => ww_devoe,
	o => ww_writeData(9));

-- Location: IOOBUF_X62_Y0_N2
\writeData[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \writeData[10]~reg0_q\,
	devoe => ww_devoe,
	o => ww_writeData(10));

-- Location: IOOBUF_X2_Y0_N42
\writeData[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \writeData[11]~reg0_q\,
	devoe => ww_devoe,
	o => ww_writeData(11));

-- Location: IOOBUF_X8_Y0_N36
\writeData[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \writeData[12]~reg0_q\,
	devoe => ww_devoe,
	o => ww_writeData(12));

-- Location: IOOBUF_X4_Y0_N53
\writeData[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \writeData[13]~reg0_q\,
	devoe => ww_devoe,
	o => ww_writeData(13));

-- Location: IOOBUF_X8_Y0_N53
\writeData[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \writeData[14]~reg0_q\,
	devoe => ww_devoe,
	o => ww_writeData(14));

-- Location: IOOBUF_X4_Y0_N19
\writeData[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \writeData[15]~reg0_q\,
	devoe => ww_devoe,
	o => ww_writeData(15));

-- Location: IOOBUF_X28_Y0_N2
\writeAD[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \writeAD[0]~reg0_q\,
	devoe => ww_devoe,
	o => ww_writeAD(0));

-- Location: IOOBUF_X2_Y0_N93
\writeAD[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \writeAD[1]~reg0_q\,
	devoe => ww_devoe,
	o => ww_writeAD(1));

-- Location: IOOBUF_X8_Y0_N2
\writeAD[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \writeAD[2]~reg0_q\,
	devoe => ww_devoe,
	o => ww_writeAD(2));

-- Location: IOIBUF_X89_Y35_N61
\clock~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: CLKCTRL_G10
\clock~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clock~input_o\,
	outclk => \clock~inputCLKENA0_outclk\);

-- Location: IOIBUF_X56_Y0_N1
\Result[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Result(0),
	o => \Result[0]~input_o\);

-- Location: LABCELL_X56_Y1_N30
\writeData[0]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \writeData[0]~reg0feeder_combout\ = ( \Result[0]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Result[0]~input_o\,
	combout => \writeData[0]~reg0feeder_combout\);

-- Location: FF_X56_Y1_N32
\writeData[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \writeData[0]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \writeData[0]~reg0_q\);

-- Location: IOIBUF_X36_Y0_N52
\Result[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Result(1),
	o => \Result[1]~input_o\);

-- Location: LABCELL_X36_Y1_N0
\writeData[1]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \writeData[1]~reg0feeder_combout\ = ( \Result[1]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Result[1]~input_o\,
	combout => \writeData[1]~reg0feeder_combout\);

-- Location: FF_X36_Y1_N1
\writeData[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \writeData[1]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \writeData[1]~reg0_q\);

-- Location: IOIBUF_X34_Y0_N58
\Result[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Result(2),
	o => \Result[2]~input_o\);

-- Location: MLABCELL_X34_Y1_N30
\writeData[2]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \writeData[2]~reg0feeder_combout\ = ( \Result[2]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Result[2]~input_o\,
	combout => \writeData[2]~reg0feeder_combout\);

-- Location: FF_X34_Y1_N32
\writeData[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \writeData[2]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \writeData[2]~reg0_q\);

-- Location: IOIBUF_X56_Y0_N18
\Result[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Result(3),
	o => \Result[3]~input_o\);

-- Location: FF_X56_Y1_N8
\writeData[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Result[3]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \writeData[3]~reg0_q\);

-- Location: IOIBUF_X36_Y0_N18
\Result[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Result(4),
	o => \Result[4]~input_o\);

-- Location: LABCELL_X36_Y1_N9
\writeData[4]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \writeData[4]~reg0feeder_combout\ = ( \Result[4]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Result[4]~input_o\,
	combout => \writeData[4]~reg0feeder_combout\);

-- Location: FF_X36_Y1_N11
\writeData[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \writeData[4]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \writeData[4]~reg0_q\);

-- Location: IOIBUF_X32_Y0_N1
\Result[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Result(5),
	o => \Result[5]~input_o\);

-- Location: LABCELL_X31_Y1_N3
\writeData[5]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \writeData[5]~reg0feeder_combout\ = ( \Result[5]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Result[5]~input_o\,
	combout => \writeData[5]~reg0feeder_combout\);

-- Location: FF_X31_Y1_N4
\writeData[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \writeData[5]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \writeData[5]~reg0_q\);

-- Location: IOIBUF_X40_Y0_N35
\Result[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Result(6),
	o => \Result[6]~input_o\);

-- Location: LABCELL_X40_Y1_N33
\writeData[6]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \writeData[6]~reg0feeder_combout\ = ( \Result[6]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Result[6]~input_o\,
	combout => \writeData[6]~reg0feeder_combout\);

-- Location: FF_X40_Y1_N35
\writeData[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \writeData[6]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \writeData[6]~reg0_q\);

-- Location: IOIBUF_X28_Y0_N35
\Result[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Result(7),
	o => \Result[7]~input_o\);

-- Location: FF_X28_Y1_N2
\writeData[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Result[7]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \writeData[7]~reg0_q\);

-- Location: IOIBUF_X6_Y0_N52
\Result[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Result(8),
	o => \Result[8]~input_o\);

-- Location: MLABCELL_X6_Y1_N3
\writeData[8]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \writeData[8]~reg0feeder_combout\ = ( \Result[8]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Result[8]~input_o\,
	combout => \writeData[8]~reg0feeder_combout\);

-- Location: FF_X6_Y1_N4
\writeData[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \writeData[8]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \writeData[8]~reg0_q\);

-- Location: IOIBUF_X38_Y0_N52
\Result[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Result(9),
	o => \Result[9]~input_o\);

-- Location: LABCELL_X40_Y1_N6
\writeData[9]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \writeData[9]~reg0feeder_combout\ = ( \Result[9]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Result[9]~input_o\,
	combout => \writeData[9]~reg0feeder_combout\);

-- Location: FF_X40_Y1_N8
\writeData[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \writeData[9]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \writeData[9]~reg0_q\);

-- Location: IOIBUF_X62_Y0_N35
\Result[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Result(10),
	o => \Result[10]~input_o\);

-- Location: LABCELL_X62_Y1_N3
\writeData[10]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \writeData[10]~reg0feeder_combout\ = ( \Result[10]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Result[10]~input_o\,
	combout => \writeData[10]~reg0feeder_combout\);

-- Location: FF_X62_Y1_N5
\writeData[10]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \writeData[10]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \writeData[10]~reg0_q\);

-- Location: IOIBUF_X2_Y0_N58
\Result[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Result(11),
	o => \Result[11]~input_o\);

-- Location: LABCELL_X2_Y1_N33
\writeData[11]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \writeData[11]~reg0feeder_combout\ = ( \Result[11]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Result[11]~input_o\,
	combout => \writeData[11]~reg0feeder_combout\);

-- Location: FF_X2_Y1_N34
\writeData[11]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \writeData[11]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \writeData[11]~reg0_q\);

-- Location: IOIBUF_X8_Y0_N18
\Result[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Result(12),
	o => \Result[12]~input_o\);

-- Location: MLABCELL_X8_Y1_N30
\writeData[12]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \writeData[12]~reg0feeder_combout\ = ( \Result[12]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Result[12]~input_o\,
	combout => \writeData[12]~reg0feeder_combout\);

-- Location: FF_X8_Y1_N32
\writeData[12]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \writeData[12]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \writeData[12]~reg0_q\);

-- Location: IOIBUF_X4_Y0_N1
\Result[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Result(13),
	o => \Result[13]~input_o\);

-- Location: LABCELL_X4_Y1_N30
\writeData[13]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \writeData[13]~reg0feeder_combout\ = ( \Result[13]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Result[13]~input_o\,
	combout => \writeData[13]~reg0feeder_combout\);

-- Location: FF_X4_Y1_N31
\writeData[13]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \writeData[13]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \writeData[13]~reg0_q\);

-- Location: IOIBUF_X26_Y0_N75
\Result[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Result(14),
	o => \Result[14]~input_o\);

-- Location: FF_X19_Y1_N34
\writeData[14]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Result[14]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \writeData[14]~reg0_q\);

-- Location: IOIBUF_X4_Y0_N35
\Result[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Result(15),
	o => \Result[15]~input_o\);

-- Location: LABCELL_X4_Y1_N6
\writeData[15]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \writeData[15]~reg0feeder_combout\ = ( \Result[15]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Result[15]~input_o\,
	combout => \writeData[15]~reg0feeder_combout\);

-- Location: FF_X4_Y1_N7
\writeData[15]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \writeData[15]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \writeData[15]~reg0_q\);

-- Location: IOIBUF_X28_Y0_N18
\RegAD[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RegAD(0),
	o => \RegAD[0]~input_o\);

-- Location: MLABCELL_X28_Y1_N9
\writeAD[0]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \writeAD[0]~reg0feeder_combout\ = ( \RegAD[0]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_RegAD[0]~input_o\,
	combout => \writeAD[0]~reg0feeder_combout\);

-- Location: FF_X28_Y1_N10
\writeAD[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \writeAD[0]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \writeAD[0]~reg0_q\);

-- Location: IOIBUF_X2_Y0_N75
\RegAD[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RegAD(1),
	o => \RegAD[1]~input_o\);

-- Location: FF_X2_Y1_N7
\writeAD[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \RegAD[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \writeAD[1]~reg0_q\);

-- Location: IOIBUF_X26_Y0_N41
\RegAD[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RegAD(2),
	o => \RegAD[2]~input_o\);

-- Location: LABCELL_X19_Y1_N36
\writeAD[2]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \writeAD[2]~reg0feeder_combout\ = ( \RegAD[2]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_RegAD[2]~input_o\,
	combout => \writeAD[2]~reg0feeder_combout\);

-- Location: FF_X19_Y1_N38
\writeAD[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \writeAD[2]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \writeAD[2]~reg0_q\);

-- Location: MLABCELL_X8_Y4_N3
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


