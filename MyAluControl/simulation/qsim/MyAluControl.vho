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

-- DATE "06/11/2026 12:34:28"

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

ENTITY 	MyAluControl IS
    PORT (
	opcode : IN std_logic_vector(3 DOWNTO 0);
	func : IN std_logic_vector(2 DOWNTO 0);
	alu_sel : BUFFER std_logic_vector(3 DOWNTO 0)
	);
END MyAluControl;

-- Design Ports Information
-- alu_sel[0]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_sel[1]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_sel[2]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_sel[3]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcode[0]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcode[1]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcode[2]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcode[3]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- func[0]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- func[1]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- func[2]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF MyAluControl IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_opcode : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_func : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_alu_sel : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \opcode[2]~input_o\ : std_logic;
SIGNAL \opcode[0]~input_o\ : std_logic;
SIGNAL \opcode[1]~input_o\ : std_logic;
SIGNAL \func[0]~input_o\ : std_logic;
SIGNAL \opcode[3]~input_o\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \func[1]~input_o\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \func[2]~input_o\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \ALT_INV_opcode[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_opcode[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_opcode[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_opcode[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_func[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_func[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_func[2]~input_o\ : std_logic;

BEGIN

ww_opcode <= opcode;
ww_func <= func;
alu_sel <= ww_alu_sel;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_opcode[0]~input_o\ <= NOT \opcode[0]~input_o\;
\ALT_INV_opcode[1]~input_o\ <= NOT \opcode[1]~input_o\;
\ALT_INV_opcode[2]~input_o\ <= NOT \opcode[2]~input_o\;
\ALT_INV_opcode[3]~input_o\ <= NOT \opcode[3]~input_o\;
\ALT_INV_func[0]~input_o\ <= NOT \func[0]~input_o\;
\ALT_INV_func[1]~input_o\ <= NOT \func[1]~input_o\;
\ALT_INV_func[2]~input_o\ <= NOT \func[2]~input_o\;

-- Location: IOOBUF_X89_Y8_N5
\alu_sel[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_alu_sel(0));

-- Location: IOOBUF_X89_Y8_N22
\alu_sel[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_alu_sel(1));

-- Location: IOOBUF_X89_Y4_N79
\alu_sel[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_alu_sel(2));

-- Location: IOOBUF_X89_Y8_N56
\alu_sel[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \opcode[3]~input_o\,
	devoe => ww_devoe,
	o => ww_alu_sel(3));

-- Location: IOIBUF_X89_Y6_N4
\opcode[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_opcode(2),
	o => \opcode[2]~input_o\);

-- Location: IOIBUF_X89_Y6_N38
\opcode[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_opcode(0),
	o => \opcode[0]~input_o\);

-- Location: IOIBUF_X89_Y4_N44
\opcode[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_opcode(1),
	o => \opcode[1]~input_o\);

-- Location: IOIBUF_X89_Y6_N21
\func[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_func(0),
	o => \func[0]~input_o\);

-- Location: IOIBUF_X89_Y8_N38
\opcode[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_opcode(3),
	o => \opcode[3]~input_o\);

-- Location: LABCELL_X88_Y6_N0
\Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = ( \func[0]~input_o\ & ( \opcode[3]~input_o\ & ( \opcode[0]~input_o\ ) ) ) # ( !\func[0]~input_o\ & ( \opcode[3]~input_o\ & ( \opcode[0]~input_o\ ) ) ) # ( \func[0]~input_o\ & ( !\opcode[3]~input_o\ & ( ((!\opcode[2]~input_o\ & 
-- !\opcode[1]~input_o\)) # (\opcode[0]~input_o\) ) ) ) # ( !\func[0]~input_o\ & ( !\opcode[3]~input_o\ & ( \opcode[0]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011101100111011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_opcode[2]~input_o\,
	datab => \ALT_INV_opcode[0]~input_o\,
	datac => \ALT_INV_opcode[1]~input_o\,
	datae => \ALT_INV_func[0]~input_o\,
	dataf => \ALT_INV_opcode[3]~input_o\,
	combout => \Mux3~0_combout\);

-- Location: IOIBUF_X89_Y4_N95
\func[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_func(1),
	o => \func[1]~input_o\);

-- Location: LABCELL_X88_Y6_N39
\Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = ( \func[1]~input_o\ & ( \opcode[3]~input_o\ & ( \opcode[1]~input_o\ ) ) ) # ( !\func[1]~input_o\ & ( \opcode[3]~input_o\ & ( \opcode[1]~input_o\ ) ) ) # ( \func[1]~input_o\ & ( !\opcode[3]~input_o\ & ( ((!\opcode[0]~input_o\ & 
-- !\opcode[2]~input_o\)) # (\opcode[1]~input_o\) ) ) ) # ( !\func[1]~input_o\ & ( !\opcode[3]~input_o\ & ( \opcode[1]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101111101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_opcode[1]~input_o\,
	datac => \ALT_INV_opcode[0]~input_o\,
	datad => \ALT_INV_opcode[2]~input_o\,
	datae => \ALT_INV_func[1]~input_o\,
	dataf => \ALT_INV_opcode[3]~input_o\,
	combout => \Mux2~0_combout\);

-- Location: IOIBUF_X89_Y6_N55
\func[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_func(2),
	o => \func[2]~input_o\);

-- Location: LABCELL_X88_Y6_N42
\Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = ( \func[2]~input_o\ & ( \opcode[3]~input_o\ & ( \opcode[2]~input_o\ ) ) ) # ( !\func[2]~input_o\ & ( \opcode[3]~input_o\ & ( \opcode[2]~input_o\ ) ) ) # ( \func[2]~input_o\ & ( !\opcode[3]~input_o\ & ( ((!\opcode[0]~input_o\ & 
-- !\opcode[1]~input_o\)) # (\opcode[2]~input_o\) ) ) ) # ( !\func[2]~input_o\ & ( !\opcode[3]~input_o\ & ( \opcode[2]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101110101011101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_opcode[2]~input_o\,
	datab => \ALT_INV_opcode[0]~input_o\,
	datac => \ALT_INV_opcode[1]~input_o\,
	datae => \ALT_INV_func[2]~input_o\,
	dataf => \ALT_INV_opcode[3]~input_o\,
	combout => \Mux1~0_combout\);

-- Location: LABCELL_X63_Y16_N3
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


