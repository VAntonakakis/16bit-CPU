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

-- DATE "05/07/2026 11:04:28"

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

ENTITY 	forwarder IS
    PORT (
	R1AD : IN std_logic_vector(2 DOWNTO 0);
	R2AD : IN std_logic_vector(2 DOWNTO 0);
	RegAD_EXMEM : IN std_logic_vector(2 DOWNTO 0);
	RegAD_MEMWB : IN std_logic_vector(2 DOWNTO 0);
	ForwardA : OUT std_logic_vector(1 DOWNTO 0);
	ForwardB : OUT std_logic_vector(1 DOWNTO 0)
	);
END forwarder;

-- Design Ports Information
-- ForwardA[0]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ForwardA[1]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ForwardB[0]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ForwardB[1]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1AD[0]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegAD_EXMEM[0]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1AD[1]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegAD_EXMEM[1]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1AD[2]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegAD_EXMEM[2]	=>  Location: PIN_L17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegAD_MEMWB[0]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegAD_MEMWB[1]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegAD_MEMWB[2]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2AD[0]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2AD[1]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2AD[2]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF forwarder IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_R1AD : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_R2AD : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_RegAD_EXMEM : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_RegAD_MEMWB : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_ForwardA : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_ForwardB : std_logic_vector(1 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \RegAD_EXMEM[0]~input_o\ : std_logic;
SIGNAL \R1AD[2]~input_o\ : std_logic;
SIGNAL \RegAD_EXMEM[2]~input_o\ : std_logic;
SIGNAL \R1AD[1]~input_o\ : std_logic;
SIGNAL \R1AD[0]~input_o\ : std_logic;
SIGNAL \RegAD_EXMEM[1]~input_o\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \RegAD_MEMWB[0]~input_o\ : std_logic;
SIGNAL \RegAD_MEMWB[1]~input_o\ : std_logic;
SIGNAL \RegAD_MEMWB[2]~input_o\ : std_logic;
SIGNAL \ForwardA~0_combout\ : std_logic;
SIGNAL \ForwardA~1_combout\ : std_logic;
SIGNAL \R2AD[0]~input_o\ : std_logic;
SIGNAL \R2AD[2]~input_o\ : std_logic;
SIGNAL \R2AD[1]~input_o\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \ForwardB~0_combout\ : std_logic;
SIGNAL \ALT_INV_RegAD_MEMWB[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_RegAD_MEMWB[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \ALT_INV_ForwardA~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal2~0_combout\ : std_logic;
SIGNAL \ALT_INV_R1AD[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_R2AD[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_R2AD[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_RegAD_EXMEM[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_R1AD[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_RegAD_EXMEM[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_R1AD[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_RegAD_EXMEM[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_RegAD_MEMWB[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_R2AD[2]~input_o\ : std_logic;

BEGIN

ww_R1AD <= R1AD;
ww_R2AD <= R2AD;
ww_RegAD_EXMEM <= RegAD_EXMEM;
ww_RegAD_MEMWB <= RegAD_MEMWB;
ForwardA <= ww_ForwardA;
ForwardB <= ww_ForwardB;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_RegAD_MEMWB[1]~input_o\ <= NOT \RegAD_MEMWB[1]~input_o\;
\ALT_INV_RegAD_MEMWB[2]~input_o\ <= NOT \RegAD_MEMWB[2]~input_o\;
\ALT_INV_Equal0~0_combout\ <= NOT \Equal0~0_combout\;
\ALT_INV_ForwardA~0_combout\ <= NOT \ForwardA~0_combout\;
\ALT_INV_Equal2~0_combout\ <= NOT \Equal2~0_combout\;
\ALT_INV_R1AD[0]~input_o\ <= NOT \R1AD[0]~input_o\;
\ALT_INV_R2AD[0]~input_o\ <= NOT \R2AD[0]~input_o\;
\ALT_INV_R2AD[1]~input_o\ <= NOT \R2AD[1]~input_o\;
\ALT_INV_RegAD_EXMEM[0]~input_o\ <= NOT \RegAD_EXMEM[0]~input_o\;
\ALT_INV_R1AD[1]~input_o\ <= NOT \R1AD[1]~input_o\;
\ALT_INV_RegAD_EXMEM[1]~input_o\ <= NOT \RegAD_EXMEM[1]~input_o\;
\ALT_INV_R1AD[2]~input_o\ <= NOT \R1AD[2]~input_o\;
\ALT_INV_RegAD_EXMEM[2]~input_o\ <= NOT \RegAD_EXMEM[2]~input_o\;
\ALT_INV_RegAD_MEMWB[0]~input_o\ <= NOT \RegAD_MEMWB[0]~input_o\;
\ALT_INV_R2AD[2]~input_o\ <= NOT \R2AD[2]~input_o\;

-- Location: IOOBUF_X89_Y38_N22
\ForwardA[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal0~0_combout\,
	devoe => ww_devoe,
	o => ww_ForwardA(0));

-- Location: IOOBUF_X89_Y35_N96
\ForwardA[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ForwardA~1_combout\,
	devoe => ww_devoe,
	o => ww_ForwardA(1));

-- Location: IOOBUF_X89_Y35_N45
\ForwardB[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ForwardB~0_combout\,
	devoe => ww_devoe,
	o => ww_ForwardB(0));

-- Location: IOOBUF_X89_Y38_N56
\ForwardB[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal2~0_combout\,
	devoe => ww_devoe,
	o => ww_ForwardB(1));

-- Location: IOIBUF_X89_Y36_N21
\RegAD_EXMEM[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RegAD_EXMEM(0),
	o => \RegAD_EXMEM[0]~input_o\);

-- Location: IOIBUF_X89_Y37_N4
\R1AD[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_R1AD(2),
	o => \R1AD[2]~input_o\);

-- Location: IOIBUF_X89_Y37_N21
\RegAD_EXMEM[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RegAD_EXMEM(2),
	o => \RegAD_EXMEM[2]~input_o\);

-- Location: IOIBUF_X89_Y36_N4
\R1AD[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_R1AD(1),
	o => \R1AD[1]~input_o\);

-- Location: IOIBUF_X89_Y36_N38
\R1AD[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_R1AD(0),
	o => \R1AD[0]~input_o\);

-- Location: IOIBUF_X89_Y38_N38
\RegAD_EXMEM[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RegAD_EXMEM(1),
	o => \RegAD_EXMEM[1]~input_o\);

-- Location: LABCELL_X88_Y36_N30
\Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = ( \R1AD[0]~input_o\ & ( \RegAD_EXMEM[1]~input_o\ & ( (\RegAD_EXMEM[0]~input_o\ & (\R1AD[1]~input_o\ & (!\R1AD[2]~input_o\ $ (\RegAD_EXMEM[2]~input_o\)))) ) ) ) # ( !\R1AD[0]~input_o\ & ( \RegAD_EXMEM[1]~input_o\ & ( 
-- (!\RegAD_EXMEM[0]~input_o\ & (\R1AD[1]~input_o\ & (!\R1AD[2]~input_o\ $ (\RegAD_EXMEM[2]~input_o\)))) ) ) ) # ( \R1AD[0]~input_o\ & ( !\RegAD_EXMEM[1]~input_o\ & ( (\RegAD_EXMEM[0]~input_o\ & (!\R1AD[1]~input_o\ & (!\R1AD[2]~input_o\ $ 
-- (\RegAD_EXMEM[2]~input_o\)))) ) ) ) # ( !\R1AD[0]~input_o\ & ( !\RegAD_EXMEM[1]~input_o\ & ( (!\RegAD_EXMEM[0]~input_o\ & (!\R1AD[1]~input_o\ & (!\R1AD[2]~input_o\ $ (\RegAD_EXMEM[2]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000001000000000010000010000000000000000100000100000000001000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RegAD_EXMEM[0]~input_o\,
	datab => \ALT_INV_R1AD[2]~input_o\,
	datac => \ALT_INV_RegAD_EXMEM[2]~input_o\,
	datad => \ALT_INV_R1AD[1]~input_o\,
	datae => \ALT_INV_R1AD[0]~input_o\,
	dataf => \ALT_INV_RegAD_EXMEM[1]~input_o\,
	combout => \Equal0~0_combout\);

-- Location: IOIBUF_X89_Y37_N55
\RegAD_MEMWB[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RegAD_MEMWB(0),
	o => \RegAD_MEMWB[0]~input_o\);

-- Location: IOIBUF_X89_Y35_N61
\RegAD_MEMWB[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RegAD_MEMWB(1),
	o => \RegAD_MEMWB[1]~input_o\);

-- Location: IOIBUF_X89_Y38_N4
\RegAD_MEMWB[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RegAD_MEMWB(2),
	o => \RegAD_MEMWB[2]~input_o\);

-- Location: LABCELL_X88_Y36_N6
\ForwardA~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ForwardA~0_combout\ = ( \RegAD_MEMWB[1]~input_o\ & ( \RegAD_MEMWB[2]~input_o\ & ( (\R1AD[1]~input_o\ & (\R1AD[2]~input_o\ & (!\RegAD_MEMWB[0]~input_o\ $ (\R1AD[0]~input_o\)))) ) ) ) # ( !\RegAD_MEMWB[1]~input_o\ & ( \RegAD_MEMWB[2]~input_o\ & ( 
-- (!\R1AD[1]~input_o\ & (\R1AD[2]~input_o\ & (!\RegAD_MEMWB[0]~input_o\ $ (\R1AD[0]~input_o\)))) ) ) ) # ( \RegAD_MEMWB[1]~input_o\ & ( !\RegAD_MEMWB[2]~input_o\ & ( (\R1AD[1]~input_o\ & (!\R1AD[2]~input_o\ & (!\RegAD_MEMWB[0]~input_o\ $ 
-- (\R1AD[0]~input_o\)))) ) ) ) # ( !\RegAD_MEMWB[1]~input_o\ & ( !\RegAD_MEMWB[2]~input_o\ & ( (!\R1AD[1]~input_o\ & (!\R1AD[2]~input_o\ & (!\RegAD_MEMWB[0]~input_o\ $ (\R1AD[0]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000010000000000001000010000000000000000100001000000000000100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RegAD_MEMWB[0]~input_o\,
	datab => \ALT_INV_R1AD[1]~input_o\,
	datac => \ALT_INV_R1AD[0]~input_o\,
	datad => \ALT_INV_R1AD[2]~input_o\,
	datae => \ALT_INV_RegAD_MEMWB[1]~input_o\,
	dataf => \ALT_INV_RegAD_MEMWB[2]~input_o\,
	combout => \ForwardA~0_combout\);

-- Location: LABCELL_X88_Y36_N42
\ForwardA~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ForwardA~1_combout\ = ( !\Equal0~0_combout\ & ( \ForwardA~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ForwardA~0_combout\,
	dataf => \ALT_INV_Equal0~0_combout\,
	combout => \ForwardA~1_combout\);

-- Location: IOIBUF_X89_Y37_N38
\R2AD[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_R2AD(0),
	o => \R2AD[0]~input_o\);

-- Location: IOIBUF_X89_Y36_N55
\R2AD[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_R2AD(2),
	o => \R2AD[2]~input_o\);

-- Location: IOIBUF_X89_Y35_N78
\R2AD[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_R2AD(1),
	o => \R2AD[1]~input_o\);

-- Location: LABCELL_X88_Y36_N48
\Equal2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = ( \R2AD[1]~input_o\ & ( \RegAD_EXMEM[1]~input_o\ & ( (!\RegAD_EXMEM[0]~input_o\ & (!\R2AD[0]~input_o\ & (!\RegAD_EXMEM[2]~input_o\ $ (\R2AD[2]~input_o\)))) # (\RegAD_EXMEM[0]~input_o\ & (\R2AD[0]~input_o\ & (!\RegAD_EXMEM[2]~input_o\ 
-- $ (\R2AD[2]~input_o\)))) ) ) ) # ( !\R2AD[1]~input_o\ & ( !\RegAD_EXMEM[1]~input_o\ & ( (!\RegAD_EXMEM[0]~input_o\ & (!\R2AD[0]~input_o\ & (!\RegAD_EXMEM[2]~input_o\ $ (\R2AD[2]~input_o\)))) # (\RegAD_EXMEM[0]~input_o\ & (\R2AD[0]~input_o\ & 
-- (!\RegAD_EXMEM[2]~input_o\ $ (\R2AD[2]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001000000001001000000000000000000000000000000001001000000001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RegAD_EXMEM[0]~input_o\,
	datab => \ALT_INV_R2AD[0]~input_o\,
	datac => \ALT_INV_RegAD_EXMEM[2]~input_o\,
	datad => \ALT_INV_R2AD[2]~input_o\,
	datae => \ALT_INV_R2AD[1]~input_o\,
	dataf => \ALT_INV_RegAD_EXMEM[1]~input_o\,
	combout => \Equal2~0_combout\);

-- Location: LABCELL_X88_Y36_N45
\ForwardB~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ForwardB~0_combout\ = ( !\Equal2~0_combout\ & ( \ForwardA~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ForwardA~0_combout\,
	dataf => \ALT_INV_Equal2~0_combout\,
	combout => \ForwardB~0_combout\);

-- Location: LABCELL_X66_Y11_N0
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


