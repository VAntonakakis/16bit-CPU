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

-- DATE "06/11/2026 12:24:28"

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

ENTITY 	MyProgramCounter IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	enable : IN std_logic;
	nextPC : IN std_logic_vector(15 DOWNTO 0);
	instructionAD : BUFFER std_logic_vector(15 DOWNTO 0)
	);
END MyProgramCounter;

-- Design Ports Information
-- instructionAD[0]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instructionAD[1]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instructionAD[2]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instructionAD[3]	=>  Location: PIN_U17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instructionAD[4]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instructionAD[5]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instructionAD[6]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instructionAD[7]	=>  Location: PIN_P17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instructionAD[8]	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instructionAD[9]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instructionAD[10]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instructionAD[11]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instructionAD[12]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instructionAD[13]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instructionAD[14]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instructionAD[15]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nextPC[0]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enable	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nextPC[1]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nextPC[2]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nextPC[3]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nextPC[4]	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nextPC[5]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nextPC[6]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nextPC[7]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nextPC[8]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nextPC[9]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nextPC[10]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nextPC[11]	=>  Location: PIN_V19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nextPC[12]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nextPC[13]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nextPC[14]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nextPC[15]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF MyProgramCounter IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_enable : std_logic;
SIGNAL ww_nextPC : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_instructionAD : std_logic_vector(15 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \nextPC[0]~input_o\ : std_logic;
SIGNAL \pc_reg[0]~feeder_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \enable~input_o\ : std_logic;
SIGNAL \nextPC[1]~input_o\ : std_logic;
SIGNAL \nextPC[2]~input_o\ : std_logic;
SIGNAL \pc_reg[2]~feeder_combout\ : std_logic;
SIGNAL \nextPC[3]~input_o\ : std_logic;
SIGNAL \nextPC[4]~input_o\ : std_logic;
SIGNAL \pc_reg[4]~feeder_combout\ : std_logic;
SIGNAL \nextPC[5]~input_o\ : std_logic;
SIGNAL \pc_reg[5]~feeder_combout\ : std_logic;
SIGNAL \nextPC[6]~input_o\ : std_logic;
SIGNAL \pc_reg[6]~feeder_combout\ : std_logic;
SIGNAL \nextPC[7]~input_o\ : std_logic;
SIGNAL \nextPC[8]~input_o\ : std_logic;
SIGNAL \pc_reg[8]~feeder_combout\ : std_logic;
SIGNAL \nextPC[9]~input_o\ : std_logic;
SIGNAL \pc_reg[9]~feeder_combout\ : std_logic;
SIGNAL \nextPC[10]~input_o\ : std_logic;
SIGNAL \pc_reg[10]~feeder_combout\ : std_logic;
SIGNAL \nextPC[11]~input_o\ : std_logic;
SIGNAL \pc_reg[11]~feeder_combout\ : std_logic;
SIGNAL \nextPC[12]~input_o\ : std_logic;
SIGNAL \pc_reg[12]~feeder_combout\ : std_logic;
SIGNAL \nextPC[13]~input_o\ : std_logic;
SIGNAL \nextPC[14]~input_o\ : std_logic;
SIGNAL \pc_reg[14]~feeder_combout\ : std_logic;
SIGNAL \nextPC[15]~input_o\ : std_logic;
SIGNAL \pc_reg[15]~feeder_combout\ : std_logic;
SIGNAL pc_reg : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_nextPC[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_nextPC[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_nextPC[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_nextPC[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_nextPC[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_nextPC[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_nextPC[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_nextPC[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_nextPC[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_nextPC[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_nextPC[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL \ALT_INV_nextPC[0]~input_o\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_enable <= enable;
ww_nextPC <= nextPC;
instructionAD <= ww_instructionAD;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_nextPC[15]~input_o\ <= NOT \nextPC[15]~input_o\;
\ALT_INV_nextPC[14]~input_o\ <= NOT \nextPC[14]~input_o\;
\ALT_INV_nextPC[12]~input_o\ <= NOT \nextPC[12]~input_o\;
\ALT_INV_nextPC[11]~input_o\ <= NOT \nextPC[11]~input_o\;
\ALT_INV_nextPC[10]~input_o\ <= NOT \nextPC[10]~input_o\;
\ALT_INV_nextPC[9]~input_o\ <= NOT \nextPC[9]~input_o\;
\ALT_INV_nextPC[8]~input_o\ <= NOT \nextPC[8]~input_o\;
\ALT_INV_nextPC[6]~input_o\ <= NOT \nextPC[6]~input_o\;
\ALT_INV_nextPC[5]~input_o\ <= NOT \nextPC[5]~input_o\;
\ALT_INV_nextPC[4]~input_o\ <= NOT \nextPC[4]~input_o\;
\ALT_INV_nextPC[2]~input_o\ <= NOT \nextPC[2]~input_o\;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
\ALT_INV_nextPC[0]~input_o\ <= NOT \nextPC[0]~input_o\;

-- Location: IOOBUF_X70_Y0_N2
\instructionAD[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => pc_reg(0),
	devoe => ww_devoe,
	o => ww_instructionAD(0));

-- Location: IOOBUF_X89_Y36_N22
\instructionAD[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => pc_reg(1),
	devoe => ww_devoe,
	o => ww_instructionAD(1));

-- Location: IOOBUF_X89_Y6_N56
\instructionAD[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => pc_reg(2),
	devoe => ww_devoe,
	o => ww_instructionAD(2));

-- Location: IOOBUF_X72_Y0_N2
\instructionAD[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => pc_reg(3),
	devoe => ww_devoe,
	o => ww_instructionAD(3));

-- Location: IOOBUF_X89_Y35_N79
\instructionAD[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => pc_reg(4),
	devoe => ww_devoe,
	o => ww_instructionAD(4));

-- Location: IOOBUF_X89_Y4_N79
\instructionAD[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => pc_reg(5),
	devoe => ww_devoe,
	o => ww_instructionAD(5));

-- Location: IOOBUF_X89_Y35_N45
\instructionAD[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => pc_reg(6),
	devoe => ww_devoe,
	o => ww_instructionAD(6));

-- Location: IOOBUF_X89_Y9_N22
\instructionAD[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => pc_reg(7),
	devoe => ww_devoe,
	o => ww_instructionAD(7));

-- Location: IOOBUF_X89_Y9_N39
\instructionAD[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => pc_reg(8),
	devoe => ww_devoe,
	o => ww_instructionAD(8));

-- Location: IOOBUF_X68_Y0_N53
\instructionAD[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => pc_reg(9),
	devoe => ww_devoe,
	o => ww_instructionAD(9));

-- Location: IOOBUF_X89_Y36_N5
\instructionAD[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => pc_reg(10),
	devoe => ww_devoe,
	o => ww_instructionAD(10));

-- Location: IOOBUF_X70_Y0_N36
\instructionAD[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => pc_reg(11),
	devoe => ww_devoe,
	o => ww_instructionAD(11));

-- Location: IOOBUF_X89_Y4_N45
\instructionAD[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => pc_reg(12),
	devoe => ww_devoe,
	o => ww_instructionAD(12));

-- Location: IOOBUF_X89_Y37_N56
\instructionAD[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => pc_reg(13),
	devoe => ww_devoe,
	o => ww_instructionAD(13));

-- Location: IOOBUF_X89_Y6_N22
\instructionAD[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => pc_reg(14),
	devoe => ww_devoe,
	o => ww_instructionAD(14));

-- Location: IOOBUF_X89_Y36_N56
\instructionAD[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => pc_reg(15),
	devoe => ww_devoe,
	o => ww_instructionAD(15));

-- Location: IOIBUF_X89_Y35_N61
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G10
\clk~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clk~input_o\,
	outclk => \clk~inputCLKENA0_outclk\);

-- Location: IOIBUF_X68_Y0_N1
\nextPC[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_nextPC(0),
	o => \nextPC[0]~input_o\);

-- Location: LABCELL_X70_Y1_N3
\pc_reg[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pc_reg[0]~feeder_combout\ = ( \nextPC[0]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_nextPC[0]~input_o\,
	combout => \pc_reg[0]~feeder_combout\);

-- Location: IOIBUF_X89_Y4_N61
\reset~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: IOIBUF_X70_Y0_N52
\enable~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enable,
	o => \enable~input_o\);

-- Location: FF_X70_Y1_N4
\pc_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pc_reg[0]~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pc_reg(0));

-- Location: IOIBUF_X89_Y35_N95
\nextPC[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_nextPC(1),
	o => \nextPC[1]~input_o\);

-- Location: FF_X88_Y8_N32
\pc_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \nextPC[1]~input_o\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pc_reg(1));

-- Location: IOIBUF_X89_Y9_N55
\nextPC[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_nextPC(2),
	o => \nextPC[2]~input_o\);

-- Location: LABCELL_X88_Y8_N9
\pc_reg[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pc_reg[2]~feeder_combout\ = ( \nextPC[2]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_nextPC[2]~input_o\,
	combout => \pc_reg[2]~feeder_combout\);

-- Location: FF_X88_Y8_N10
\pc_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pc_reg[2]~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pc_reg(2));

-- Location: IOIBUF_X89_Y4_N95
\nextPC[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_nextPC(3),
	o => \nextPC[3]~input_o\);

-- Location: FF_X88_Y4_N31
\pc_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \nextPC[3]~input_o\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pc_reg(3));

-- Location: IOIBUF_X72_Y0_N18
\nextPC[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_nextPC(4),
	o => \nextPC[4]~input_o\);

-- Location: LABCELL_X88_Y8_N12
\pc_reg[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pc_reg[4]~feeder_combout\ = ( \nextPC[4]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_nextPC[4]~input_o\,
	combout => \pc_reg[4]~feeder_combout\);

-- Location: FF_X88_Y8_N13
\pc_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pc_reg[4]~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pc_reg(4));

-- Location: IOIBUF_X72_Y0_N35
\nextPC[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_nextPC(5),
	o => \nextPC[5]~input_o\);

-- Location: LABCELL_X88_Y4_N36
\pc_reg[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pc_reg[5]~feeder_combout\ = ( \nextPC[5]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_nextPC[5]~input_o\,
	combout => \pc_reg[5]~feeder_combout\);

-- Location: FF_X88_Y4_N37
\pc_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pc_reg[5]~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pc_reg(5));

-- Location: IOIBUF_X89_Y8_N4
\nextPC[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_nextPC(6),
	o => \nextPC[6]~input_o\);

-- Location: LABCELL_X88_Y8_N51
\pc_reg[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pc_reg[6]~feeder_combout\ = ( \nextPC[6]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_nextPC[6]~input_o\,
	combout => \pc_reg[6]~feeder_combout\);

-- Location: FF_X88_Y8_N53
\pc_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pc_reg[6]~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pc_reg(6));

-- Location: IOIBUF_X89_Y8_N55
\nextPC[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_nextPC(7),
	o => \nextPC[7]~input_o\);

-- Location: FF_X88_Y8_N55
\pc_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \nextPC[7]~input_o\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pc_reg(7));

-- Location: IOIBUF_X89_Y8_N38
\nextPC[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_nextPC(8),
	o => \nextPC[8]~input_o\);

-- Location: LABCELL_X88_Y8_N0
\pc_reg[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pc_reg[8]~feeder_combout\ = ( \nextPC[8]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_nextPC[8]~input_o\,
	combout => \pc_reg[8]~feeder_combout\);

-- Location: FF_X88_Y8_N1
\pc_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pc_reg[8]~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pc_reg(8));

-- Location: IOIBUF_X68_Y0_N35
\nextPC[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_nextPC(9),
	o => \nextPC[9]~input_o\);

-- Location: LABCELL_X71_Y1_N33
\pc_reg[9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pc_reg[9]~feeder_combout\ = ( \nextPC[9]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_nextPC[9]~input_o\,
	combout => \pc_reg[9]~feeder_combout\);

-- Location: FF_X71_Y1_N35
\pc_reg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pc_reg[9]~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pc_reg(9));

-- Location: IOIBUF_X89_Y6_N4
\nextPC[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_nextPC(10),
	o => \nextPC[10]~input_o\);

-- Location: LABCELL_X88_Y8_N36
\pc_reg[10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pc_reg[10]~feeder_combout\ = ( \nextPC[10]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_nextPC[10]~input_o\,
	combout => \pc_reg[10]~feeder_combout\);

-- Location: FF_X88_Y8_N37
\pc_reg[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pc_reg[10]~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pc_reg(10));

-- Location: IOIBUF_X70_Y0_N18
\nextPC[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_nextPC(11),
	o => \nextPC[11]~input_o\);

-- Location: LABCELL_X70_Y1_N6
\pc_reg[11]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pc_reg[11]~feeder_combout\ = ( \nextPC[11]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_nextPC[11]~input_o\,
	combout => \pc_reg[11]~feeder_combout\);

-- Location: FF_X70_Y1_N8
\pc_reg[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pc_reg[11]~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pc_reg(11));

-- Location: IOIBUF_X72_Y0_N52
\nextPC[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_nextPC(12),
	o => \nextPC[12]~input_o\);

-- Location: LABCELL_X85_Y2_N3
\pc_reg[12]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pc_reg[12]~feeder_combout\ = ( \nextPC[12]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_nextPC[12]~input_o\,
	combout => \pc_reg[12]~feeder_combout\);

-- Location: FF_X85_Y2_N4
\pc_reg[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pc_reg[12]~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pc_reg(12));

-- Location: IOIBUF_X89_Y6_N38
\nextPC[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_nextPC(13),
	o => \nextPC[13]~input_o\);

-- Location: FF_X88_Y8_N4
\pc_reg[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \nextPC[13]~input_o\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pc_reg(13));

-- Location: IOIBUF_X89_Y9_N4
\nextPC[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_nextPC(14),
	o => \nextPC[14]~input_o\);

-- Location: LABCELL_X88_Y8_N42
\pc_reg[14]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pc_reg[14]~feeder_combout\ = ( \nextPC[14]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_nextPC[14]~input_o\,
	combout => \pc_reg[14]~feeder_combout\);

-- Location: FF_X88_Y8_N43
\pc_reg[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pc_reg[14]~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pc_reg(14));

-- Location: IOIBUF_X89_Y8_N21
\nextPC[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_nextPC(15),
	o => \nextPC[15]~input_o\);

-- Location: LABCELL_X88_Y8_N45
\pc_reg[15]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pc_reg[15]~feeder_combout\ = ( \nextPC[15]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_nextPC[15]~input_o\,
	combout => \pc_reg[15]~feeder_combout\);

-- Location: FF_X88_Y8_N46
\pc_reg[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pc_reg[15]~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pc_reg(15));

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


