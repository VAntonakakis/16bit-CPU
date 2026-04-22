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

-- DATE "04/22/2026 14:16:52"

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

ENTITY 	MyRegister16bit IS
    PORT (
	Input : IN std_logic_vector(15 DOWNTO 0);
	Clock : IN std_logic;
	Enable : IN std_logic;
	Reset_n : IN std_logic;
	Output : OUT std_logic_vector(15 DOWNTO 0)
	);
END MyRegister16bit;

-- Design Ports Information
-- Output[0]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[1]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[2]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[3]	=>  Location: PIN_U17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[4]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[5]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[6]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[7]	=>  Location: PIN_P17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[8]	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[9]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[10]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[11]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[12]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[13]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[14]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[15]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[0]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clock	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reset_n	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Enable	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[1]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[2]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[3]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[4]	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[5]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[6]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[7]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[8]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[9]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[10]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[11]	=>  Location: PIN_V19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[12]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[13]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[14]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[15]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF MyRegister16bit IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Input : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_Clock : std_logic;
SIGNAL ww_Enable : std_logic;
SIGNAL ww_Reset_n : std_logic;
SIGNAL ww_Output : std_logic_vector(15 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \Clock~input_o\ : std_logic;
SIGNAL \Clock~inputCLKENA0_outclk\ : std_logic;
SIGNAL \Input[0]~input_o\ : std_logic;
SIGNAL \gen_register:0:vff|O~feeder_combout\ : std_logic;
SIGNAL \Reset_n~input_o\ : std_logic;
SIGNAL \Enable~input_o\ : std_logic;
SIGNAL \gen_register:0:vff|O~q\ : std_logic;
SIGNAL \Input[1]~input_o\ : std_logic;
SIGNAL \gen_register:1:vff|O~q\ : std_logic;
SIGNAL \Input[2]~input_o\ : std_logic;
SIGNAL \gen_register:2:vff|O~feeder_combout\ : std_logic;
SIGNAL \gen_register:2:vff|O~q\ : std_logic;
SIGNAL \Input[3]~input_o\ : std_logic;
SIGNAL \gen_register:3:vff|O~q\ : std_logic;
SIGNAL \Input[4]~input_o\ : std_logic;
SIGNAL \gen_register:4:vff|O~feeder_combout\ : std_logic;
SIGNAL \gen_register:4:vff|O~q\ : std_logic;
SIGNAL \Input[5]~input_o\ : std_logic;
SIGNAL \gen_register:5:vff|O~feeder_combout\ : std_logic;
SIGNAL \gen_register:5:vff|O~q\ : std_logic;
SIGNAL \Input[6]~input_o\ : std_logic;
SIGNAL \gen_register:6:vff|O~feeder_combout\ : std_logic;
SIGNAL \gen_register:6:vff|O~q\ : std_logic;
SIGNAL \Input[7]~input_o\ : std_logic;
SIGNAL \gen_register:7:vff|O~q\ : std_logic;
SIGNAL \Input[8]~input_o\ : std_logic;
SIGNAL \gen_register:8:vff|O~feeder_combout\ : std_logic;
SIGNAL \gen_register:8:vff|O~q\ : std_logic;
SIGNAL \Input[9]~input_o\ : std_logic;
SIGNAL \gen_register:9:vff|O~feeder_combout\ : std_logic;
SIGNAL \gen_register:9:vff|O~q\ : std_logic;
SIGNAL \Input[10]~input_o\ : std_logic;
SIGNAL \gen_register:10:vff|O~feeder_combout\ : std_logic;
SIGNAL \gen_register:10:vff|O~q\ : std_logic;
SIGNAL \Input[11]~input_o\ : std_logic;
SIGNAL \gen_register:11:vff|O~feeder_combout\ : std_logic;
SIGNAL \gen_register:11:vff|O~q\ : std_logic;
SIGNAL \Input[12]~input_o\ : std_logic;
SIGNAL \gen_register:12:vff|O~feeder_combout\ : std_logic;
SIGNAL \gen_register:12:vff|O~q\ : std_logic;
SIGNAL \Input[13]~input_o\ : std_logic;
SIGNAL \gen_register:13:vff|O~q\ : std_logic;
SIGNAL \Input[14]~input_o\ : std_logic;
SIGNAL \gen_register:14:vff|O~feeder_combout\ : std_logic;
SIGNAL \gen_register:14:vff|O~q\ : std_logic;
SIGNAL \Input[15]~input_o\ : std_logic;
SIGNAL \gen_register:15:vff|O~feeder_combout\ : std_logic;
SIGNAL \gen_register:15:vff|O~q\ : std_logic;
SIGNAL \ALT_INV_Input[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input[0]~input_o\ : std_logic;

BEGIN

ww_Input <= Input;
ww_Clock <= Clock;
ww_Enable <= Enable;
ww_Reset_n <= Reset_n;
Output <= ww_Output;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_Input[15]~input_o\ <= NOT \Input[15]~input_o\;
\ALT_INV_Input[14]~input_o\ <= NOT \Input[14]~input_o\;
\ALT_INV_Input[12]~input_o\ <= NOT \Input[12]~input_o\;
\ALT_INV_Input[11]~input_o\ <= NOT \Input[11]~input_o\;
\ALT_INV_Input[10]~input_o\ <= NOT \Input[10]~input_o\;
\ALT_INV_Input[9]~input_o\ <= NOT \Input[9]~input_o\;
\ALT_INV_Input[8]~input_o\ <= NOT \Input[8]~input_o\;
\ALT_INV_Input[6]~input_o\ <= NOT \Input[6]~input_o\;
\ALT_INV_Input[5]~input_o\ <= NOT \Input[5]~input_o\;
\ALT_INV_Input[4]~input_o\ <= NOT \Input[4]~input_o\;
\ALT_INV_Input[2]~input_o\ <= NOT \Input[2]~input_o\;
\ALT_INV_Input[0]~input_o\ <= NOT \Input[0]~input_o\;

-- Location: IOOBUF_X70_Y0_N2
\Output[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_register:0:vff|O~q\,
	devoe => ww_devoe,
	o => ww_Output(0));

-- Location: IOOBUF_X89_Y36_N22
\Output[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_register:1:vff|O~q\,
	devoe => ww_devoe,
	o => ww_Output(1));

-- Location: IOOBUF_X89_Y6_N56
\Output[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_register:2:vff|O~q\,
	devoe => ww_devoe,
	o => ww_Output(2));

-- Location: IOOBUF_X72_Y0_N2
\Output[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_register:3:vff|O~q\,
	devoe => ww_devoe,
	o => ww_Output(3));

-- Location: IOOBUF_X89_Y35_N79
\Output[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_register:4:vff|O~q\,
	devoe => ww_devoe,
	o => ww_Output(4));

-- Location: IOOBUF_X89_Y4_N79
\Output[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_register:5:vff|O~q\,
	devoe => ww_devoe,
	o => ww_Output(5));

-- Location: IOOBUF_X89_Y35_N45
\Output[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_register:6:vff|O~q\,
	devoe => ww_devoe,
	o => ww_Output(6));

-- Location: IOOBUF_X89_Y9_N22
\Output[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_register:7:vff|O~q\,
	devoe => ww_devoe,
	o => ww_Output(7));

-- Location: IOOBUF_X89_Y9_N39
\Output[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_register:8:vff|O~q\,
	devoe => ww_devoe,
	o => ww_Output(8));

-- Location: IOOBUF_X68_Y0_N53
\Output[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_register:9:vff|O~q\,
	devoe => ww_devoe,
	o => ww_Output(9));

-- Location: IOOBUF_X89_Y36_N5
\Output[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_register:10:vff|O~q\,
	devoe => ww_devoe,
	o => ww_Output(10));

-- Location: IOOBUF_X70_Y0_N36
\Output[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_register:11:vff|O~q\,
	devoe => ww_devoe,
	o => ww_Output(11));

-- Location: IOOBUF_X89_Y4_N45
\Output[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_register:12:vff|O~q\,
	devoe => ww_devoe,
	o => ww_Output(12));

-- Location: IOOBUF_X89_Y37_N56
\Output[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_register:13:vff|O~q\,
	devoe => ww_devoe,
	o => ww_Output(13));

-- Location: IOOBUF_X89_Y6_N22
\Output[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_register:14:vff|O~q\,
	devoe => ww_devoe,
	o => ww_Output(14));

-- Location: IOOBUF_X89_Y36_N56
\Output[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_register:15:vff|O~q\,
	devoe => ww_devoe,
	o => ww_Output(15));

-- Location: IOIBUF_X89_Y35_N61
\Clock~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clock,
	o => \Clock~input_o\);

-- Location: CLKCTRL_G10
\Clock~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \Clock~input_o\,
	outclk => \Clock~inputCLKENA0_outclk\);

-- Location: IOIBUF_X68_Y0_N1
\Input[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(0),
	o => \Input[0]~input_o\);

-- Location: LABCELL_X70_Y1_N3
\gen_register:0:vff|O~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \gen_register:0:vff|O~feeder_combout\ = ( \Input[0]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Input[0]~input_o\,
	combout => \gen_register:0:vff|O~feeder_combout\);

-- Location: IOIBUF_X89_Y4_N61
\Reset_n~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Reset_n,
	o => \Reset_n~input_o\);

-- Location: IOIBUF_X70_Y0_N52
\Enable~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Enable,
	o => \Enable~input_o\);

-- Location: FF_X70_Y1_N4
\gen_register:0:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \gen_register:0:vff|O~feeder_combout\,
	clrn => \Reset_n~input_o\,
	ena => \Enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_register:0:vff|O~q\);

-- Location: IOIBUF_X89_Y35_N95
\Input[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(1),
	o => \Input[1]~input_o\);

-- Location: FF_X88_Y8_N32
\gen_register:1:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Input[1]~input_o\,
	clrn => \Reset_n~input_o\,
	sload => VCC,
	ena => \Enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_register:1:vff|O~q\);

-- Location: IOIBUF_X89_Y9_N55
\Input[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(2),
	o => \Input[2]~input_o\);

-- Location: LABCELL_X88_Y8_N9
\gen_register:2:vff|O~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \gen_register:2:vff|O~feeder_combout\ = ( \Input[2]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Input[2]~input_o\,
	combout => \gen_register:2:vff|O~feeder_combout\);

-- Location: FF_X88_Y8_N10
\gen_register:2:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \gen_register:2:vff|O~feeder_combout\,
	clrn => \Reset_n~input_o\,
	ena => \Enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_register:2:vff|O~q\);

-- Location: IOIBUF_X89_Y4_N95
\Input[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(3),
	o => \Input[3]~input_o\);

-- Location: FF_X88_Y4_N31
\gen_register:3:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Input[3]~input_o\,
	clrn => \Reset_n~input_o\,
	sload => VCC,
	ena => \Enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_register:3:vff|O~q\);

-- Location: IOIBUF_X72_Y0_N18
\Input[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(4),
	o => \Input[4]~input_o\);

-- Location: LABCELL_X88_Y8_N12
\gen_register:4:vff|O~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \gen_register:4:vff|O~feeder_combout\ = ( \Input[4]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Input[4]~input_o\,
	combout => \gen_register:4:vff|O~feeder_combout\);

-- Location: FF_X88_Y8_N13
\gen_register:4:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \gen_register:4:vff|O~feeder_combout\,
	clrn => \Reset_n~input_o\,
	ena => \Enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_register:4:vff|O~q\);

-- Location: IOIBUF_X72_Y0_N35
\Input[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(5),
	o => \Input[5]~input_o\);

-- Location: LABCELL_X88_Y4_N36
\gen_register:5:vff|O~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \gen_register:5:vff|O~feeder_combout\ = ( \Input[5]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Input[5]~input_o\,
	combout => \gen_register:5:vff|O~feeder_combout\);

-- Location: FF_X88_Y4_N37
\gen_register:5:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \gen_register:5:vff|O~feeder_combout\,
	clrn => \Reset_n~input_o\,
	ena => \Enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_register:5:vff|O~q\);

-- Location: IOIBUF_X89_Y8_N4
\Input[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(6),
	o => \Input[6]~input_o\);

-- Location: LABCELL_X88_Y8_N51
\gen_register:6:vff|O~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \gen_register:6:vff|O~feeder_combout\ = ( \Input[6]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Input[6]~input_o\,
	combout => \gen_register:6:vff|O~feeder_combout\);

-- Location: FF_X88_Y8_N53
\gen_register:6:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \gen_register:6:vff|O~feeder_combout\,
	clrn => \Reset_n~input_o\,
	ena => \Enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_register:6:vff|O~q\);

-- Location: IOIBUF_X89_Y8_N55
\Input[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(7),
	o => \Input[7]~input_o\);

-- Location: FF_X88_Y8_N55
\gen_register:7:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Input[7]~input_o\,
	clrn => \Reset_n~input_o\,
	sload => VCC,
	ena => \Enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_register:7:vff|O~q\);

-- Location: IOIBUF_X89_Y8_N38
\Input[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(8),
	o => \Input[8]~input_o\);

-- Location: LABCELL_X88_Y8_N0
\gen_register:8:vff|O~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \gen_register:8:vff|O~feeder_combout\ = ( \Input[8]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Input[8]~input_o\,
	combout => \gen_register:8:vff|O~feeder_combout\);

-- Location: FF_X88_Y8_N1
\gen_register:8:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \gen_register:8:vff|O~feeder_combout\,
	clrn => \Reset_n~input_o\,
	ena => \Enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_register:8:vff|O~q\);

-- Location: IOIBUF_X68_Y0_N35
\Input[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(9),
	o => \Input[9]~input_o\);

-- Location: LABCELL_X71_Y1_N33
\gen_register:9:vff|O~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \gen_register:9:vff|O~feeder_combout\ = ( \Input[9]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Input[9]~input_o\,
	combout => \gen_register:9:vff|O~feeder_combout\);

-- Location: FF_X71_Y1_N35
\gen_register:9:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \gen_register:9:vff|O~feeder_combout\,
	clrn => \Reset_n~input_o\,
	ena => \Enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_register:9:vff|O~q\);

-- Location: IOIBUF_X89_Y6_N4
\Input[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(10),
	o => \Input[10]~input_o\);

-- Location: LABCELL_X88_Y8_N36
\gen_register:10:vff|O~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \gen_register:10:vff|O~feeder_combout\ = ( \Input[10]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Input[10]~input_o\,
	combout => \gen_register:10:vff|O~feeder_combout\);

-- Location: FF_X88_Y8_N37
\gen_register:10:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \gen_register:10:vff|O~feeder_combout\,
	clrn => \Reset_n~input_o\,
	ena => \Enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_register:10:vff|O~q\);

-- Location: IOIBUF_X70_Y0_N18
\Input[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(11),
	o => \Input[11]~input_o\);

-- Location: LABCELL_X70_Y1_N6
\gen_register:11:vff|O~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \gen_register:11:vff|O~feeder_combout\ = ( \Input[11]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Input[11]~input_o\,
	combout => \gen_register:11:vff|O~feeder_combout\);

-- Location: FF_X70_Y1_N8
\gen_register:11:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \gen_register:11:vff|O~feeder_combout\,
	clrn => \Reset_n~input_o\,
	ena => \Enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_register:11:vff|O~q\);

-- Location: IOIBUF_X72_Y0_N52
\Input[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(12),
	o => \Input[12]~input_o\);

-- Location: LABCELL_X85_Y2_N3
\gen_register:12:vff|O~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \gen_register:12:vff|O~feeder_combout\ = ( \Input[12]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Input[12]~input_o\,
	combout => \gen_register:12:vff|O~feeder_combout\);

-- Location: FF_X85_Y2_N4
\gen_register:12:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \gen_register:12:vff|O~feeder_combout\,
	clrn => \Reset_n~input_o\,
	ena => \Enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_register:12:vff|O~q\);

-- Location: IOIBUF_X89_Y6_N38
\Input[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(13),
	o => \Input[13]~input_o\);

-- Location: FF_X88_Y8_N4
\gen_register:13:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Input[13]~input_o\,
	clrn => \Reset_n~input_o\,
	sload => VCC,
	ena => \Enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_register:13:vff|O~q\);

-- Location: IOIBUF_X89_Y9_N4
\Input[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(14),
	o => \Input[14]~input_o\);

-- Location: LABCELL_X88_Y8_N42
\gen_register:14:vff|O~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \gen_register:14:vff|O~feeder_combout\ = ( \Input[14]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Input[14]~input_o\,
	combout => \gen_register:14:vff|O~feeder_combout\);

-- Location: FF_X88_Y8_N43
\gen_register:14:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \gen_register:14:vff|O~feeder_combout\,
	clrn => \Reset_n~input_o\,
	ena => \Enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_register:14:vff|O~q\);

-- Location: IOIBUF_X89_Y8_N21
\Input[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(15),
	o => \Input[15]~input_o\);

-- Location: LABCELL_X88_Y8_N45
\gen_register:15:vff|O~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \gen_register:15:vff|O~feeder_combout\ = ( \Input[15]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Input[15]~input_o\,
	combout => \gen_register:15:vff|O~feeder_combout\);

-- Location: FF_X88_Y8_N46
\gen_register:15:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \gen_register:15:vff|O~feeder_combout\,
	clrn => \Reset_n~input_o\,
	ena => \Enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_register:15:vff|O~q\);

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


