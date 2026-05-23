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

-- DATE "05/22/2026 13:33:16"

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

ENTITY 	MyRegisterControl IS
    PORT (
	OpCode : IN std_logic_vector(3 DOWNTO 0);
	Funct : IN std_logic_vector(2 DOWNTO 0);
	IF_ID_Flush : IN std_logic;
	isBranch : OUT std_logic;
	isJReg : OUT std_logic;
	isJType : OUT std_logic;
	isLdWord : OUT std_logic;
	isMFPC : OUT std_logic;
	isRType : OUT std_logic;
	isReadDig : OUT std_logic;
	isStWord : OUT std_logic;
	isWriteDig : OUT std_logic
	);
END MyRegisterControl;

-- Design Ports Information
-- isBranch	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- isJReg	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- isJType	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- isLdWord	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- isMFPC	=>  Location: PIN_P17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- isRType	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- isReadDig	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- isStWord	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- isWriteDig	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OpCode[1]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OpCode[2]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OpCode[0]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OpCode[3]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IF_ID_Flush	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Funct[0]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Funct[1]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Funct[2]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF MyRegisterControl IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_OpCode : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Funct : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_IF_ID_Flush : std_logic;
SIGNAL ww_isBranch : std_logic;
SIGNAL ww_isJReg : std_logic;
SIGNAL ww_isJType : std_logic;
SIGNAL ww_isLdWord : std_logic;
SIGNAL ww_isMFPC : std_logic;
SIGNAL ww_isRType : std_logic;
SIGNAL ww_isReadDig : std_logic;
SIGNAL ww_isStWord : std_logic;
SIGNAL ww_isWriteDig : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \OpCode[3]~input_o\ : std_logic;
SIGNAL \IF_ID_Flush~input_o\ : std_logic;
SIGNAL \OpCode[2]~input_o\ : std_logic;
SIGNAL \OpCode[0]~input_o\ : std_logic;
SIGNAL \OpCode[1]~input_o\ : std_logic;
SIGNAL \isBranch~0_combout\ : std_logic;
SIGNAL \isJReg~0_combout\ : std_logic;
SIGNAL \isJType~0_combout\ : std_logic;
SIGNAL \isLdWord~0_combout\ : std_logic;
SIGNAL \Funct[1]~input_o\ : std_logic;
SIGNAL \isRType~0_combout\ : std_logic;
SIGNAL \Funct[0]~input_o\ : std_logic;
SIGNAL \Funct[2]~input_o\ : std_logic;
SIGNAL \isMFPC~0_combout\ : std_logic;
SIGNAL \isReadDig~0_combout\ : std_logic;
SIGNAL \isStWord~0_combout\ : std_logic;
SIGNAL \isWriteDig~0_combout\ : std_logic;
SIGNAL \ALT_INV_Funct[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_Funct[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_Funct[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_IF_ID_Flush~input_o\ : std_logic;
SIGNAL \ALT_INV_OpCode[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_OpCode[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_OpCode[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_OpCode[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_isRType~0_combout\ : std_logic;

BEGIN

ww_OpCode <= OpCode;
ww_Funct <= Funct;
ww_IF_ID_Flush <= IF_ID_Flush;
isBranch <= ww_isBranch;
isJReg <= ww_isJReg;
isJType <= ww_isJType;
isLdWord <= ww_isLdWord;
isMFPC <= ww_isMFPC;
isRType <= ww_isRType;
isReadDig <= ww_isReadDig;
isStWord <= ww_isStWord;
isWriteDig <= ww_isWriteDig;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_Funct[2]~input_o\ <= NOT \Funct[2]~input_o\;
\ALT_INV_Funct[1]~input_o\ <= NOT \Funct[1]~input_o\;
\ALT_INV_Funct[0]~input_o\ <= NOT \Funct[0]~input_o\;
\ALT_INV_IF_ID_Flush~input_o\ <= NOT \IF_ID_Flush~input_o\;
\ALT_INV_OpCode[3]~input_o\ <= NOT \OpCode[3]~input_o\;
\ALT_INV_OpCode[0]~input_o\ <= NOT \OpCode[0]~input_o\;
\ALT_INV_OpCode[2]~input_o\ <= NOT \OpCode[2]~input_o\;
\ALT_INV_OpCode[1]~input_o\ <= NOT \OpCode[1]~input_o\;
\ALT_INV_isRType~0_combout\ <= NOT \isRType~0_combout\;

-- Location: IOOBUF_X89_Y6_N5
\isBranch~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \isBranch~0_combout\,
	devoe => ww_devoe,
	o => ww_isBranch);

-- Location: IOOBUF_X89_Y9_N39
\isJReg~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \isJReg~0_combout\,
	devoe => ww_devoe,
	o => ww_isJReg);

-- Location: IOOBUF_X89_Y6_N39
\isJType~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \isJType~0_combout\,
	devoe => ww_devoe,
	o => ww_isJType);

-- Location: IOOBUF_X89_Y9_N56
\isLdWord~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \isLdWord~0_combout\,
	devoe => ww_devoe,
	o => ww_isLdWord);

-- Location: IOOBUF_X89_Y9_N22
\isMFPC~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \isMFPC~0_combout\,
	devoe => ww_devoe,
	o => ww_isMFPC);

-- Location: IOOBUF_X89_Y4_N62
\isRType~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \isRType~0_combout\,
	devoe => ww_devoe,
	o => ww_isRType);

-- Location: IOOBUF_X89_Y6_N56
\isReadDig~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \isReadDig~0_combout\,
	devoe => ww_devoe,
	o => ww_isReadDig);

-- Location: IOOBUF_X89_Y9_N5
\isStWord~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \isStWord~0_combout\,
	devoe => ww_devoe,
	o => ww_isStWord);

-- Location: IOOBUF_X89_Y4_N96
\isWriteDig~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \isWriteDig~0_combout\,
	devoe => ww_devoe,
	o => ww_isWriteDig);

-- Location: IOIBUF_X89_Y8_N4
\OpCode[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OpCode(3),
	o => \OpCode[3]~input_o\);

-- Location: IOIBUF_X89_Y4_N78
\IF_ID_Flush~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IF_ID_Flush,
	o => \IF_ID_Flush~input_o\);

-- Location: IOIBUF_X89_Y6_N21
\OpCode[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OpCode(2),
	o => \OpCode[2]~input_o\);

-- Location: IOIBUF_X89_Y4_N44
\OpCode[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OpCode(0),
	o => \OpCode[0]~input_o\);

-- Location: IOIBUF_X89_Y8_N55
\OpCode[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OpCode(1),
	o => \OpCode[1]~input_o\);

-- Location: LABCELL_X88_Y8_N0
\isBranch~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \isBranch~0_combout\ = ( !\OpCode[1]~input_o\ & ( (!\OpCode[3]~input_o\ & (!\IF_ID_Flush~input_o\ & (\OpCode[2]~input_o\ & !\OpCode[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000000000000000000001000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OpCode[3]~input_o\,
	datab => \ALT_INV_IF_ID_Flush~input_o\,
	datac => \ALT_INV_OpCode[2]~input_o\,
	datad => \ALT_INV_OpCode[0]~input_o\,
	datae => \ALT_INV_OpCode[1]~input_o\,
	combout => \isBranch~0_combout\);

-- Location: LABCELL_X88_Y8_N39
\isJReg~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \isJReg~0_combout\ = ( !\OpCode[1]~input_o\ & ( (\OpCode[2]~input_o\ & (\OpCode[0]~input_o\ & (!\IF_ID_Flush~input_o\ & \OpCode[3]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000000000000000000000100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OpCode[2]~input_o\,
	datab => \ALT_INV_OpCode[0]~input_o\,
	datac => \ALT_INV_IF_ID_Flush~input_o\,
	datad => \ALT_INV_OpCode[3]~input_o\,
	datae => \ALT_INV_OpCode[1]~input_o\,
	combout => \isJReg~0_combout\);

-- Location: LABCELL_X88_Y8_N42
\isJType~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \isJType~0_combout\ = ( \OpCode[1]~input_o\ & ( (\OpCode[3]~input_o\ & (!\IF_ID_Flush~input_o\ & (\OpCode[2]~input_o\ & \OpCode[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000010000000000000000000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OpCode[3]~input_o\,
	datab => \ALT_INV_IF_ID_Flush~input_o\,
	datac => \ALT_INV_OpCode[2]~input_o\,
	datad => \ALT_INV_OpCode[0]~input_o\,
	datae => \ALT_INV_OpCode[1]~input_o\,
	combout => \isJType~0_combout\);

-- Location: LABCELL_X88_Y8_N51
\isLdWord~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \isLdWord~0_combout\ = ( !\OpCode[1]~input_o\ & ( (!\OpCode[2]~input_o\ & (\OpCode[0]~input_o\ & (!\IF_ID_Flush~input_o\ & !\OpCode[3]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000000000000000000000100000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OpCode[2]~input_o\,
	datab => \ALT_INV_OpCode[0]~input_o\,
	datac => \ALT_INV_IF_ID_Flush~input_o\,
	datad => \ALT_INV_OpCode[3]~input_o\,
	datae => \ALT_INV_OpCode[1]~input_o\,
	combout => \isLdWord~0_combout\);

-- Location: IOIBUF_X89_Y8_N21
\Funct[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Funct(1),
	o => \Funct[1]~input_o\);

-- Location: LABCELL_X88_Y8_N24
\isRType~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \isRType~0_combout\ = ( !\OpCode[1]~input_o\ & ( (!\OpCode[3]~input_o\ & (!\IF_ID_Flush~input_o\ & (!\OpCode[2]~input_o\ & !\OpCode[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OpCode[3]~input_o\,
	datab => \ALT_INV_IF_ID_Flush~input_o\,
	datac => \ALT_INV_OpCode[2]~input_o\,
	datad => \ALT_INV_OpCode[0]~input_o\,
	datae => \ALT_INV_OpCode[1]~input_o\,
	combout => \isRType~0_combout\);

-- Location: IOIBUF_X72_Y0_N35
\Funct[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Funct(0),
	o => \Funct[0]~input_o\);

-- Location: IOIBUF_X89_Y8_N38
\Funct[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Funct(2),
	o => \Funct[2]~input_o\);

-- Location: LABCELL_X88_Y8_N30
\isMFPC~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \isMFPC~0_combout\ = ( \Funct[0]~input_o\ & ( \Funct[2]~input_o\ & ( (\Funct[1]~input_o\ & \isRType~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Funct[1]~input_o\,
	datac => \ALT_INV_isRType~0_combout\,
	datae => \ALT_INV_Funct[0]~input_o\,
	dataf => \ALT_INV_Funct[2]~input_o\,
	combout => \isMFPC~0_combout\);

-- Location: LABCELL_X88_Y8_N9
\isReadDig~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \isReadDig~0_combout\ = ( \OpCode[1]~input_o\ & ( (\OpCode[2]~input_o\ & (!\OpCode[0]~input_o\ & (!\IF_ID_Flush~input_o\ & !\OpCode[3]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010000000000000000000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OpCode[2]~input_o\,
	datab => \ALT_INV_OpCode[0]~input_o\,
	datac => \ALT_INV_IF_ID_Flush~input_o\,
	datad => \ALT_INV_OpCode[3]~input_o\,
	datae => \ALT_INV_OpCode[1]~input_o\,
	combout => \isReadDig~0_combout\);

-- Location: LABCELL_X88_Y8_N12
\isStWord~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \isStWord~0_combout\ = ( \OpCode[1]~input_o\ & ( (!\OpCode[3]~input_o\ & (!\IF_ID_Flush~input_o\ & (!\OpCode[2]~input_o\ & !\OpCode[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000000000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OpCode[3]~input_o\,
	datab => \ALT_INV_IF_ID_Flush~input_o\,
	datac => \ALT_INV_OpCode[2]~input_o\,
	datad => \ALT_INV_OpCode[0]~input_o\,
	datae => \ALT_INV_OpCode[1]~input_o\,
	combout => \isStWord~0_combout\);

-- Location: LABCELL_X88_Y8_N21
\isWriteDig~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \isWriteDig~0_combout\ = ( \OpCode[1]~input_o\ & ( (\OpCode[2]~input_o\ & (\OpCode[0]~input_o\ & (!\IF_ID_Flush~input_o\ & !\OpCode[3]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100000000000000000000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OpCode[2]~input_o\,
	datab => \ALT_INV_OpCode[0]~input_o\,
	datac => \ALT_INV_IF_ID_Flush~input_o\,
	datad => \ALT_INV_OpCode[3]~input_o\,
	datae => \ALT_INV_OpCode[1]~input_o\,
	combout => \isWriteDig~0_combout\);

-- Location: MLABCELL_X15_Y33_N0
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


