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

-- DATE "04/21/2026 19:17:49"

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

ENTITY 	MyShiftRegister4bit IS
    PORT (
	Input : IN std_logic;
	Clock : IN std_logic;
	Enable : IN std_logic;
	Reset_n : IN std_logic;
	Output : OUT std_logic_vector(3 DOWNTO 0)
	);
END MyShiftRegister4bit;

-- Design Ports Information
-- Output[0]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[1]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[2]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[3]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clock	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reset_n	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Enable	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF MyShiftRegister4bit IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Input : std_logic;
SIGNAL ww_Clock : std_logic;
SIGNAL ww_Enable : std_logic;
SIGNAL ww_Reset_n : std_logic;
SIGNAL ww_Output : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \Clock~input_o\ : std_logic;
SIGNAL \Clock~inputCLKENA0_outclk\ : std_logic;
SIGNAL \Input~input_o\ : std_logic;
SIGNAL \v0|O~feeder_combout\ : std_logic;
SIGNAL \Reset_n~input_o\ : std_logic;
SIGNAL \Enable~input_o\ : std_logic;
SIGNAL \v0|O~q\ : std_logic;
SIGNAL \v1|O~feeder_combout\ : std_logic;
SIGNAL \v1|O~q\ : std_logic;
SIGNAL \v2|O~feeder_combout\ : std_logic;
SIGNAL \v2|O~q\ : std_logic;
SIGNAL \v3|O~feeder_combout\ : std_logic;
SIGNAL \v3|O~q\ : std_logic;
SIGNAL \ALT_INV_Input~input_o\ : std_logic;
SIGNAL \v2|ALT_INV_O~q\ : std_logic;
SIGNAL \v1|ALT_INV_O~q\ : std_logic;
SIGNAL \v0|ALT_INV_O~q\ : std_logic;

BEGIN

ww_Input <= Input;
ww_Clock <= Clock;
ww_Enable <= Enable;
ww_Reset_n <= Reset_n;
Output <= ww_Output;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_Input~input_o\ <= NOT \Input~input_o\;
\v2|ALT_INV_O~q\ <= NOT \v2|O~q\;
\v1|ALT_INV_O~q\ <= NOT \v1|O~q\;
\v0|ALT_INV_O~q\ <= NOT \v0|O~q\;

-- Location: IOOBUF_X89_Y6_N22
\Output[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \v3|O~q\,
	devoe => ww_devoe,
	o => ww_Output(0));

-- Location: IOOBUF_X89_Y8_N39
\Output[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \v2|O~q\,
	devoe => ww_devoe,
	o => ww_Output(1));

-- Location: IOOBUF_X89_Y8_N56
\Output[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \v1|O~q\,
	devoe => ww_devoe,
	o => ww_Output(2));

-- Location: IOOBUF_X89_Y6_N5
\Output[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \v0|O~q\,
	devoe => ww_devoe,
	o => ww_Output(3));

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

-- Location: IOIBUF_X89_Y9_N55
\Input~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input,
	o => \Input~input_o\);

-- Location: LABCELL_X88_Y8_N15
\v0|O~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \v0|O~feeder_combout\ = ( \Input~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Input~input_o\,
	combout => \v0|O~feeder_combout\);

-- Location: IOIBUF_X89_Y8_N4
\Reset_n~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Reset_n,
	o => \Reset_n~input_o\);

-- Location: IOIBUF_X89_Y8_N21
\Enable~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Enable,
	o => \Enable~input_o\);

-- Location: FF_X88_Y8_N17
\v0|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \v0|O~feeder_combout\,
	clrn => \Reset_n~input_o\,
	ena => \Enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \v0|O~q\);

-- Location: LABCELL_X88_Y8_N30
\v1|O~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \v1|O~feeder_combout\ = ( \v0|O~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \v0|ALT_INV_O~q\,
	combout => \v1|O~feeder_combout\);

-- Location: FF_X88_Y8_N32
\v1|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \v1|O~feeder_combout\,
	clrn => \Reset_n~input_o\,
	ena => \Enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \v1|O~q\);

-- Location: LABCELL_X88_Y8_N9
\v2|O~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \v2|O~feeder_combout\ = ( \v1|O~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \v1|ALT_INV_O~q\,
	combout => \v2|O~feeder_combout\);

-- Location: FF_X88_Y8_N11
\v2|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \v2|O~feeder_combout\,
	clrn => \Reset_n~input_o\,
	ena => \Enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \v2|O~q\);

-- Location: LABCELL_X88_Y8_N6
\v3|O~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \v3|O~feeder_combout\ = ( \v2|O~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \v2|ALT_INV_O~q\,
	combout => \v3|O~feeder_combout\);

-- Location: FF_X88_Y8_N7
\v3|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \v3|O~feeder_combout\,
	clrn => \Reset_n~input_o\,
	ena => \Enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \v3|O~q\);

-- Location: LABCELL_X37_Y69_N3
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


