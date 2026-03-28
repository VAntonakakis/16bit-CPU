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

-- DATE "03/25/2026 19:23:22"

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

ENTITY 	MyFullAdder16bit IS
    PORT (
	A : IN std_logic_vector(15 DOWNTO 0);
	B : IN std_logic_vector(15 DOWNTO 0);
	Cin : IN std_logic;
	Sum : BUFFER std_logic_vector(15 DOWNTO 0);
	Cout : BUFFER std_logic
	);
END MyFullAdder16bit;

-- Design Ports Information
-- Sum[0]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[1]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[2]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[3]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[4]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[5]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[6]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[7]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[8]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[9]	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[10]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[11]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[12]	=>  Location: PIN_U17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[13]	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[14]	=>  Location: PIN_V19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[15]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cout	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cin	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[8]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[9]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[10]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[10]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[11]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[11]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[12]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[12]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[13]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[13]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[14]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[14]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[15]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[15]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF MyFullAdder16bit IS
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
SIGNAL ww_B : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_Cin : std_logic;
SIGNAL ww_Sum : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_Cout : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \Cin~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \v0|v3|v4|Q~0_combout\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \v1|v3|v4|Q~0_combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \v1|v5|Q~combout\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \v2|v3|v4|Q~0_combout\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \v3|v3|v4|Q~0_combout\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \v4|v1|v4|Q~0_combout\ : std_logic;
SIGNAL \v4|v3|v4|Q~0_combout\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \v4|v3|v3|Q~0_combout\ : std_logic;
SIGNAL \v4|v1|v3|Q~0_combout\ : std_logic;
SIGNAL \v5|v3|v4|Q~0_combout\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \v6|v3|v4|Q~0_combout\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \v6|v5|Q~combout\ : std_logic;
SIGNAL \v7|v3|v4|Q~0_combout\ : std_logic;
SIGNAL \B[8]~input_o\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \v8|v3|v4|Q~0_combout\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \B[9]~input_o\ : std_logic;
SIGNAL \v9|v1|v4|Q~0_combout\ : std_logic;
SIGNAL \v9|v3|v4|Q~0_combout\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \v9|v1|v3|Q~0_combout\ : std_logic;
SIGNAL \v9|v3|v3|Q~0_combout\ : std_logic;
SIGNAL \B[10]~input_o\ : std_logic;
SIGNAL \v10|v3|v4|Q~0_combout\ : std_logic;
SIGNAL \B[11]~input_o\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \v11|v3|v4|Q~0_combout\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
SIGNAL \B[12]~input_o\ : std_logic;
SIGNAL \v11|v5|Q~combout\ : std_logic;
SIGNAL \v12|v3|v4|Q~0_combout\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \B[13]~input_o\ : std_logic;
SIGNAL \v13|v3|v4|Q~0_combout\ : std_logic;
SIGNAL \B[14]~input_o\ : std_logic;
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \v14|v1|v4|Q~0_combout\ : std_logic;
SIGNAL \v14|v3|v4|Q~0_combout\ : std_logic;
SIGNAL \B[15]~input_o\ : std_logic;
SIGNAL \v13|v5|Q~combout\ : std_logic;
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \v15|v3|v4|Q~0_combout\ : std_logic;
SIGNAL \v15|v5|Q~combout\ : std_logic;
SIGNAL \ALT_INV_B[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_Cin~input_o\ : std_logic;
SIGNAL \v13|v5|ALT_INV_Q~combout\ : std_logic;
SIGNAL \v14|v1|v4|ALT_INV_Q~0_combout\ : std_logic;
SIGNAL \v11|v5|ALT_INV_Q~combout\ : std_logic;
SIGNAL \v9|v3|v3|ALT_INV_Q~0_combout\ : std_logic;
SIGNAL \v9|v1|v3|ALT_INV_Q~0_combout\ : std_logic;
SIGNAL \v9|v1|v4|ALT_INV_Q~0_combout\ : std_logic;
SIGNAL \v6|v5|ALT_INV_Q~combout\ : std_logic;
SIGNAL \v4|v3|v3|ALT_INV_Q~0_combout\ : std_logic;
SIGNAL \v4|v1|v3|ALT_INV_Q~0_combout\ : std_logic;
SIGNAL \v4|v1|v4|ALT_INV_Q~0_combout\ : std_logic;
SIGNAL \v1|v5|ALT_INV_Q~combout\ : std_logic;

BEGIN

ww_A <= A;
ww_B <= B;
ww_Cin <= Cin;
Sum <= ww_Sum;
Cout <= ww_Cout;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_B[15]~input_o\ <= NOT \B[15]~input_o\;
\ALT_INV_A[15]~input_o\ <= NOT \A[15]~input_o\;
\ALT_INV_B[14]~input_o\ <= NOT \B[14]~input_o\;
\ALT_INV_A[14]~input_o\ <= NOT \A[14]~input_o\;
\ALT_INV_B[13]~input_o\ <= NOT \B[13]~input_o\;
\ALT_INV_A[13]~input_o\ <= NOT \A[13]~input_o\;
\ALT_INV_B[12]~input_o\ <= NOT \B[12]~input_o\;
\ALT_INV_A[12]~input_o\ <= NOT \A[12]~input_o\;
\ALT_INV_B[11]~input_o\ <= NOT \B[11]~input_o\;
\ALT_INV_A[11]~input_o\ <= NOT \A[11]~input_o\;
\ALT_INV_B[10]~input_o\ <= NOT \B[10]~input_o\;
\ALT_INV_A[10]~input_o\ <= NOT \A[10]~input_o\;
\ALT_INV_B[9]~input_o\ <= NOT \B[9]~input_o\;
\ALT_INV_A[9]~input_o\ <= NOT \A[9]~input_o\;
\ALT_INV_B[8]~input_o\ <= NOT \B[8]~input_o\;
\ALT_INV_A[8]~input_o\ <= NOT \A[8]~input_o\;
\ALT_INV_B[7]~input_o\ <= NOT \B[7]~input_o\;
\ALT_INV_A[7]~input_o\ <= NOT \A[7]~input_o\;
\ALT_INV_B[6]~input_o\ <= NOT \B[6]~input_o\;
\ALT_INV_A[6]~input_o\ <= NOT \A[6]~input_o\;
\ALT_INV_B[5]~input_o\ <= NOT \B[5]~input_o\;
\ALT_INV_A[5]~input_o\ <= NOT \A[5]~input_o\;
\ALT_INV_B[4]~input_o\ <= NOT \B[4]~input_o\;
\ALT_INV_A[4]~input_o\ <= NOT \A[4]~input_o\;
\ALT_INV_B[3]~input_o\ <= NOT \B[3]~input_o\;
\ALT_INV_A[3]~input_o\ <= NOT \A[3]~input_o\;
\ALT_INV_B[2]~input_o\ <= NOT \B[2]~input_o\;
\ALT_INV_A[2]~input_o\ <= NOT \A[2]~input_o\;
\ALT_INV_B[1]~input_o\ <= NOT \B[1]~input_o\;
\ALT_INV_A[1]~input_o\ <= NOT \A[1]~input_o\;
\ALT_INV_B[0]~input_o\ <= NOT \B[0]~input_o\;
\ALT_INV_A[0]~input_o\ <= NOT \A[0]~input_o\;
\ALT_INV_Cin~input_o\ <= NOT \Cin~input_o\;
\v13|v5|ALT_INV_Q~combout\ <= NOT \v13|v5|Q~combout\;
\v14|v1|v4|ALT_INV_Q~0_combout\ <= NOT \v14|v1|v4|Q~0_combout\;
\v11|v5|ALT_INV_Q~combout\ <= NOT \v11|v5|Q~combout\;
\v9|v3|v3|ALT_INV_Q~0_combout\ <= NOT \v9|v3|v3|Q~0_combout\;
\v9|v1|v3|ALT_INV_Q~0_combout\ <= NOT \v9|v1|v3|Q~0_combout\;
\v9|v1|v4|ALT_INV_Q~0_combout\ <= NOT \v9|v1|v4|Q~0_combout\;
\v6|v5|ALT_INV_Q~combout\ <= NOT \v6|v5|Q~combout\;
\v4|v3|v3|ALT_INV_Q~0_combout\ <= NOT \v4|v3|v3|Q~0_combout\;
\v4|v1|v3|ALT_INV_Q~0_combout\ <= NOT \v4|v1|v3|Q~0_combout\;
\v4|v1|v4|ALT_INV_Q~0_combout\ <= NOT \v4|v1|v4|Q~0_combout\;
\v1|v5|ALT_INV_Q~combout\ <= NOT \v1|v5|Q~combout\;

-- Location: IOOBUF_X40_Y0_N36
\Sum[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \v0|v3|v4|Q~0_combout\,
	devoe => ww_devoe,
	o => ww_Sum(0));

-- Location: IOOBUF_X52_Y0_N2
\Sum[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \v1|v3|v4|Q~0_combout\,
	devoe => ww_devoe,
	o => ww_Sum(1));

-- Location: IOOBUF_X56_Y0_N19
\Sum[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \v2|v3|v4|Q~0_combout\,
	devoe => ww_devoe,
	o => ww_Sum(2));

-- Location: IOOBUF_X58_Y0_N42
\Sum[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \v3|v3|v4|Q~0_combout\,
	devoe => ww_devoe,
	o => ww_Sum(3));

-- Location: IOOBUF_X58_Y0_N93
\Sum[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \v4|v3|v4|Q~0_combout\,
	devoe => ww_devoe,
	o => ww_Sum(4));

-- Location: IOOBUF_X50_Y0_N42
\Sum[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \v5|v3|v4|Q~0_combout\,
	devoe => ww_devoe,
	o => ww_Sum(5));

-- Location: IOOBUF_X50_Y0_N76
\Sum[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \v6|v3|v4|Q~0_combout\,
	devoe => ww_devoe,
	o => ww_Sum(6));

-- Location: IOOBUF_X72_Y0_N36
\Sum[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \v7|v3|v4|Q~0_combout\,
	devoe => ww_devoe,
	o => ww_Sum(7));

-- Location: IOOBUF_X72_Y0_N53
\Sum[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \v8|v3|v4|Q~0_combout\,
	devoe => ww_devoe,
	o => ww_Sum(8));

-- Location: IOOBUF_X62_Y0_N19
\Sum[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \v9|v3|v4|Q~0_combout\,
	devoe => ww_devoe,
	o => ww_Sum(9));

-- Location: IOOBUF_X64_Y0_N2
\Sum[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \v10|v3|v4|Q~0_combout\,
	devoe => ww_devoe,
	o => ww_Sum(10));

-- Location: IOOBUF_X64_Y0_N19
\Sum[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \v11|v3|v4|Q~0_combout\,
	devoe => ww_devoe,
	o => ww_Sum(11));

-- Location: IOOBUF_X72_Y0_N2
\Sum[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \v12|v3|v4|Q~0_combout\,
	devoe => ww_devoe,
	o => ww_Sum(12));

-- Location: IOOBUF_X72_Y0_N19
\Sum[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \v13|v3|v4|Q~0_combout\,
	devoe => ww_devoe,
	o => ww_Sum(13));

-- Location: IOOBUF_X70_Y0_N19
\Sum[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \v14|v3|v4|Q~0_combout\,
	devoe => ww_devoe,
	o => ww_Sum(14));

-- Location: IOOBUF_X60_Y0_N19
\Sum[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \v15|v3|v4|Q~0_combout\,
	devoe => ww_devoe,
	o => ww_Sum(15));

-- Location: IOOBUF_X60_Y0_N36
\Cout~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \v15|v5|Q~combout\,
	devoe => ww_devoe,
	o => ww_Cout);

-- Location: IOIBUF_X52_Y0_N18
\B[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X50_Y0_N58
\Cin~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cin,
	o => \Cin~input_o\);

-- Location: IOIBUF_X56_Y0_N52
\A[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: LABCELL_X53_Y1_N0
\v0|v3|v4|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \v0|v3|v4|Q~0_combout\ = ( \A[0]~input_o\ & ( !\B[0]~input_o\ $ (\Cin~input_o\) ) ) # ( !\A[0]~input_o\ & ( !\B[0]~input_o\ $ (!\Cin~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010010110100101101010100101101001011010010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_Cin~input_o\,
	dataf => \ALT_INV_A[0]~input_o\,
	combout => \v0|v3|v4|Q~0_combout\);

-- Location: IOIBUF_X52_Y0_N35
\A[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: IOIBUF_X58_Y0_N75
\B[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: LABCELL_X53_Y1_N39
\v1|v3|v4|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \v1|v3|v4|Q~0_combout\ = ( \A[1]~input_o\ & ( \B[1]~input_o\ & ( (!\Cin~input_o\ & (\A[0]~input_o\ & \B[0]~input_o\)) # (\Cin~input_o\ & ((\B[0]~input_o\) # (\A[0]~input_o\))) ) ) ) # ( !\A[1]~input_o\ & ( \B[1]~input_o\ & ( (!\Cin~input_o\ & 
-- ((!\A[0]~input_o\) # (!\B[0]~input_o\))) # (\Cin~input_o\ & (!\A[0]~input_o\ & !\B[0]~input_o\)) ) ) ) # ( \A[1]~input_o\ & ( !\B[1]~input_o\ & ( (!\Cin~input_o\ & ((!\A[0]~input_o\) # (!\B[0]~input_o\))) # (\Cin~input_o\ & (!\A[0]~input_o\ & 
-- !\B[0]~input_o\)) ) ) ) # ( !\A[1]~input_o\ & ( !\B[1]~input_o\ & ( (!\Cin~input_o\ & (\A[0]~input_o\ & \B[0]~input_o\)) # (\Cin~input_o\ & ((\B[0]~input_o\) # (\A[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101011111111110101010000011111010101000000000010101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Cin~input_o\,
	datac => \ALT_INV_A[0]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	datae => \ALT_INV_A[1]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \v1|v3|v4|Q~0_combout\);

-- Location: IOIBUF_X52_Y0_N52
\A[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: LABCELL_X53_Y1_N42
\v1|v5|Q\ : cyclonev_lcell_comb
-- Equation(s):
-- \v1|v5|Q~combout\ = ( \A[1]~input_o\ & ( \B[1]~input_o\ ) ) # ( !\A[1]~input_o\ & ( \B[1]~input_o\ & ( (!\B[0]~input_o\ & (\A[0]~input_o\ & \Cin~input_o\)) # (\B[0]~input_o\ & ((\Cin~input_o\) # (\A[0]~input_o\))) ) ) ) # ( \A[1]~input_o\ & ( 
-- !\B[1]~input_o\ & ( (!\B[0]~input_o\ & (\A[0]~input_o\ & \Cin~input_o\)) # (\B[0]~input_o\ & ((\Cin~input_o\) # (\A[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000101110001011100010111000101111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_A[0]~input_o\,
	datac => \ALT_INV_Cin~input_o\,
	datae => \ALT_INV_A[1]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \v1|v5|Q~combout\);

-- Location: IOIBUF_X56_Y0_N35
\B[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: LABCELL_X53_Y1_N21
\v2|v3|v4|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \v2|v3|v4|Q~0_combout\ = ( \B[2]~input_o\ & ( !\A[2]~input_o\ $ (\v1|v5|Q~combout\) ) ) # ( !\B[2]~input_o\ & ( !\A[2]~input_o\ $ (!\v1|v5|Q~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010101001011010010101011010010110101010010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[2]~input_o\,
	datac => \v1|v5|ALT_INV_Q~combout\,
	datae => \ALT_INV_B[2]~input_o\,
	combout => \v2|v3|v4|Q~0_combout\);

-- Location: IOIBUF_X58_Y0_N58
\B[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: IOIBUF_X54_Y0_N52
\A[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: LABCELL_X53_Y1_N54
\v3|v3|v4|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \v3|v3|v4|Q~0_combout\ = ( \v1|v5|Q~combout\ & ( !\B[3]~input_o\ $ (!\A[3]~input_o\ $ (((\B[2]~input_o\) # (\A[2]~input_o\)))) ) ) # ( !\v1|v5|Q~combout\ & ( !\B[3]~input_o\ $ (!\A[3]~input_o\ $ (((\A[2]~input_o\ & \B[2]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111011100001000111101110000101111000100001110111100010000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[2]~input_o\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \ALT_INV_A[3]~input_o\,
	dataf => \v1|v5|ALT_INV_Q~combout\,
	combout => \v3|v3|v4|Q~0_combout\);

-- Location: IOIBUF_X54_Y0_N1
\A[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: IOIBUF_X56_Y0_N1
\B[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: LABCELL_X53_Y1_N57
\v4|v1|v4|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \v4|v1|v4|Q~0_combout\ = ( \B[4]~input_o\ & ( !\A[4]~input_o\ ) ) # ( !\B[4]~input_o\ & ( \A[4]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_A[4]~input_o\,
	dataf => \ALT_INV_B[4]~input_o\,
	combout => \v4|v1|v4|Q~0_combout\);

-- Location: LABCELL_X53_Y1_N30
\v4|v3|v4|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \v4|v3|v4|Q~0_combout\ = ( \v4|v1|v4|Q~0_combout\ & ( \B[3]~input_o\ & ( (!\A[3]~input_o\ & ((!\v1|v5|Q~combout\ & ((!\A[2]~input_o\) # (!\B[2]~input_o\))) # (\v1|v5|Q~combout\ & (!\A[2]~input_o\ & !\B[2]~input_o\)))) ) ) ) # ( !\v4|v1|v4|Q~0_combout\ & ( 
-- \B[3]~input_o\ & ( ((!\v1|v5|Q~combout\ & (\A[2]~input_o\ & \B[2]~input_o\)) # (\v1|v5|Q~combout\ & ((\B[2]~input_o\) # (\A[2]~input_o\)))) # (\A[3]~input_o\) ) ) ) # ( \v4|v1|v4|Q~0_combout\ & ( !\B[3]~input_o\ & ( (!\A[3]~input_o\) # 
-- ((!\v1|v5|Q~combout\ & ((!\A[2]~input_o\) # (!\B[2]~input_o\))) # (\v1|v5|Q~combout\ & (!\A[2]~input_o\ & !\B[2]~input_o\))) ) ) ) # ( !\v4|v1|v4|Q~0_combout\ & ( !\B[3]~input_o\ & ( (\A[3]~input_o\ & ((!\v1|v5|Q~combout\ & (\A[2]~input_o\ & 
-- \B[2]~input_o\)) # (\v1|v5|Q~combout\ & ((\B[2]~input_o\) # (\A[2]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100010101111111101110101001010111011111111010100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[3]~input_o\,
	datab => \v1|v5|ALT_INV_Q~combout\,
	datac => \ALT_INV_A[2]~input_o\,
	datad => \ALT_INV_B[2]~input_o\,
	datae => \v4|v1|v4|ALT_INV_Q~0_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \v4|v3|v4|Q~0_combout\);

-- Location: IOIBUF_X54_Y0_N18
\B[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: IOIBUF_X54_Y0_N35
\A[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: LABCELL_X53_Y1_N12
\v4|v3|v3|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \v4|v3|v3|Q~0_combout\ = ( \v4|v1|v4|Q~0_combout\ & ( \B[3]~input_o\ & ( ((!\v1|v5|Q~combout\ & (\A[2]~input_o\ & \B[2]~input_o\)) # (\v1|v5|Q~combout\ & ((\B[2]~input_o\) # (\A[2]~input_o\)))) # (\A[3]~input_o\) ) ) ) # ( \v4|v1|v4|Q~0_combout\ & ( 
-- !\B[3]~input_o\ & ( (\A[3]~input_o\ & ((!\v1|v5|Q~combout\ & (\A[2]~input_o\ & \B[2]~input_o\)) # (\v1|v5|Q~combout\ & ((\B[2]~input_o\) # (\A[2]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010001010100000000000000000101011101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[3]~input_o\,
	datab => \v1|v5|ALT_INV_Q~combout\,
	datac => \ALT_INV_A[2]~input_o\,
	datad => \ALT_INV_B[2]~input_o\,
	datae => \v4|v1|v4|ALT_INV_Q~0_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \v4|v3|v3|Q~0_combout\);

-- Location: LABCELL_X53_Y1_N6
\v4|v1|v3|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \v4|v1|v3|Q~0_combout\ = ( \B[4]~input_o\ & ( \A[4]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[4]~input_o\,
	dataf => \ALT_INV_B[4]~input_o\,
	combout => \v4|v1|v3|Q~0_combout\);

-- Location: LABCELL_X53_Y1_N9
\v5|v3|v4|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \v5|v3|v4|Q~0_combout\ = ( \v4|v1|v3|Q~0_combout\ & ( !\B[5]~input_o\ $ (\A[5]~input_o\) ) ) # ( !\v4|v1|v3|Q~0_combout\ & ( !\B[5]~input_o\ $ (!\A[5]~input_o\ $ (\v4|v3|v3|Q~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101101001011010010110100110011001100110011001100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[5]~input_o\,
	datab => \ALT_INV_A[5]~input_o\,
	datac => \v4|v3|v3|ALT_INV_Q~0_combout\,
	dataf => \v4|v1|v3|ALT_INV_Q~0_combout\,
	combout => \v5|v3|v4|Q~0_combout\);

-- Location: IOIBUF_X40_Y0_N52
\A[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: IOIBUF_X50_Y0_N92
\B[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: LABCELL_X53_Y1_N48
\v6|v3|v4|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \v6|v3|v4|Q~0_combout\ = ( \B[6]~input_o\ & ( \A[5]~input_o\ & ( !\A[6]~input_o\ $ ((((\v4|v3|v3|Q~0_combout\) # (\v4|v1|v3|Q~0_combout\)) # (\B[5]~input_o\))) ) ) ) # ( !\B[6]~input_o\ & ( \A[5]~input_o\ & ( !\A[6]~input_o\ $ (((!\B[5]~input_o\ & 
-- (!\v4|v1|v3|Q~0_combout\ & !\v4|v3|v3|Q~0_combout\)))) ) ) ) # ( \B[6]~input_o\ & ( !\A[5]~input_o\ & ( !\A[6]~input_o\ $ (((\B[5]~input_o\ & ((\v4|v3|v3|Q~0_combout\) # (\v4|v1|v3|Q~0_combout\))))) ) ) ) # ( !\B[6]~input_o\ & ( !\A[5]~input_o\ & ( 
-- !\A[6]~input_o\ $ (((!\B[5]~input_o\) # ((!\v4|v1|v3|Q~0_combout\ & !\v4|v3|v3|Q~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111001011010111000011010010101111000111100001000011100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[5]~input_o\,
	datab => \v4|v1|v3|ALT_INV_Q~0_combout\,
	datac => \ALT_INV_A[6]~input_o\,
	datad => \v4|v3|v3|ALT_INV_Q~0_combout\,
	datae => \ALT_INV_B[6]~input_o\,
	dataf => \ALT_INV_A[5]~input_o\,
	combout => \v6|v3|v4|Q~0_combout\);

-- Location: IOIBUF_X68_Y0_N35
\A[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: IOIBUF_X66_Y0_N75
\B[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: LABCELL_X53_Y1_N24
\v6|v5|Q\ : cyclonev_lcell_comb
-- Equation(s):
-- \v6|v5|Q~combout\ = ( \B[6]~input_o\ & ( \A[5]~input_o\ & ( (!\B[5]~input_o\ & (!\v4|v1|v3|Q~0_combout\ & (!\A[6]~input_o\ & !\v4|v3|v3|Q~0_combout\))) ) ) ) # ( !\B[6]~input_o\ & ( \A[5]~input_o\ & ( (!\A[6]~input_o\) # ((!\B[5]~input_o\ & 
-- (!\v4|v1|v3|Q~0_combout\ & !\v4|v3|v3|Q~0_combout\))) ) ) ) # ( \B[6]~input_o\ & ( !\A[5]~input_o\ & ( (!\A[6]~input_o\ & ((!\B[5]~input_o\) # ((!\v4|v1|v3|Q~0_combout\ & !\v4|v3|v3|Q~0_combout\)))) ) ) ) # ( !\B[6]~input_o\ & ( !\A[5]~input_o\ & ( 
-- (!\B[5]~input_o\) # ((!\A[6]~input_o\) # ((!\v4|v1|v3|Q~0_combout\ & !\v4|v3|v3|Q~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111011111010111000001010000011111000111100001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[5]~input_o\,
	datab => \v4|v1|v3|ALT_INV_Q~0_combout\,
	datac => \ALT_INV_A[6]~input_o\,
	datad => \v4|v3|v3|ALT_INV_Q~0_combout\,
	datae => \ALT_INV_B[6]~input_o\,
	dataf => \ALT_INV_A[5]~input_o\,
	combout => \v6|v5|Q~combout\);

-- Location: LABCELL_X67_Y1_N3
\v7|v3|v4|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \v7|v3|v4|Q~0_combout\ = ( \v6|v5|Q~combout\ & ( !\A[7]~input_o\ $ (!\B[7]~input_o\) ) ) # ( !\v6|v5|Q~combout\ & ( !\A[7]~input_o\ $ (\B[7]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001111000011001111000011110011000011110000110011110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[7]~input_o\,
	datac => \ALT_INV_B[7]~input_o\,
	datae => \v6|v5|ALT_INV_Q~combout\,
	combout => \v7|v3|v4|Q~0_combout\);

-- Location: IOIBUF_X70_Y0_N1
\B[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

-- Location: IOIBUF_X70_Y0_N35
\A[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

-- Location: LABCELL_X67_Y1_N36
\v8|v3|v4|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \v8|v3|v4|Q~0_combout\ = ( \v6|v5|Q~combout\ & ( \A[8]~input_o\ & ( !\B[8]~input_o\ $ (((\B[7]~input_o\ & \A[7]~input_o\))) ) ) ) # ( !\v6|v5|Q~combout\ & ( \A[8]~input_o\ & ( !\B[8]~input_o\ $ (((\A[7]~input_o\) # (\B[7]~input_o\))) ) ) ) # ( 
-- \v6|v5|Q~combout\ & ( !\A[8]~input_o\ & ( !\B[8]~input_o\ $ (((!\B[7]~input_o\) # (!\A[7]~input_o\))) ) ) ) # ( !\v6|v5|Q~combout\ & ( !\A[8]~input_o\ & ( !\B[8]~input_o\ $ (((!\B[7]~input_o\ & !\A[7]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011110000000011110011110011000011000011111111000011000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[7]~input_o\,
	datac => \ALT_INV_B[8]~input_o\,
	datad => \ALT_INV_A[7]~input_o\,
	datae => \v6|v5|ALT_INV_Q~combout\,
	dataf => \ALT_INV_A[8]~input_o\,
	combout => \v8|v3|v4|Q~0_combout\);

-- Location: IOIBUF_X64_Y0_N52
\A[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

-- Location: IOIBUF_X64_Y0_N35
\B[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(9),
	o => \B[9]~input_o\);

-- Location: LABCELL_X67_Y1_N12
\v9|v1|v4|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \v9|v1|v4|Q~0_combout\ = !\A[9]~input_o\ $ (!\B[9]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[9]~input_o\,
	datab => \ALT_INV_B[9]~input_o\,
	combout => \v9|v1|v4|Q~0_combout\);

-- Location: LABCELL_X67_Y1_N48
\v9|v3|v4|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \v9|v3|v4|Q~0_combout\ = ( \v6|v5|Q~combout\ & ( \A[8]~input_o\ & ( !\v9|v1|v4|Q~0_combout\ $ (((!\B[8]~input_o\ & ((!\A[7]~input_o\) # (!\B[7]~input_o\))))) ) ) ) # ( !\v6|v5|Q~combout\ & ( \A[8]~input_o\ & ( !\v9|v1|v4|Q~0_combout\ $ (((!\A[7]~input_o\ 
-- & (!\B[7]~input_o\ & !\B[8]~input_o\)))) ) ) ) # ( \v6|v5|Q~combout\ & ( !\A[8]~input_o\ & ( !\v9|v1|v4|Q~0_combout\ $ (((!\A[7]~input_o\) # ((!\B[7]~input_o\) # (!\B[8]~input_o\)))) ) ) ) # ( !\v6|v5|Q~combout\ & ( !\A[8]~input_o\ & ( 
-- !\v9|v1|v4|Q~0_combout\ $ (((!\B[8]~input_o\) # ((!\A[7]~input_o\ & !\B[7]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011111111000000000011111111001111111100000000001111111100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[7]~input_o\,
	datab => \ALT_INV_B[7]~input_o\,
	datac => \ALT_INV_B[8]~input_o\,
	datad => \v9|v1|v4|ALT_INV_Q~0_combout\,
	datae => \v6|v5|ALT_INV_Q~combout\,
	dataf => \ALT_INV_A[8]~input_o\,
	combout => \v9|v3|v4|Q~0_combout\);

-- Location: IOIBUF_X66_Y0_N92
\A[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

-- Location: LABCELL_X67_Y1_N15
\v9|v1|v3|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \v9|v1|v3|Q~0_combout\ = (\A[9]~input_o\ & \B[9]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[9]~input_o\,
	datab => \ALT_INV_B[9]~input_o\,
	combout => \v9|v1|v3|Q~0_combout\);

-- Location: LABCELL_X67_Y1_N24
\v9|v3|v3|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \v9|v3|v3|Q~0_combout\ = ( \v6|v5|Q~combout\ & ( \A[8]~input_o\ & ( (\v9|v1|v4|Q~0_combout\ & (((\A[7]~input_o\ & \B[7]~input_o\)) # (\B[8]~input_o\))) ) ) ) # ( !\v6|v5|Q~combout\ & ( \A[8]~input_o\ & ( (\v9|v1|v4|Q~0_combout\ & (((\B[8]~input_o\) # 
-- (\B[7]~input_o\)) # (\A[7]~input_o\))) ) ) ) # ( \v6|v5|Q~combout\ & ( !\A[8]~input_o\ & ( (\A[7]~input_o\ & (\B[7]~input_o\ & (\B[8]~input_o\ & \v9|v1|v4|Q~0_combout\))) ) ) ) # ( !\v6|v5|Q~combout\ & ( !\A[8]~input_o\ & ( (\B[8]~input_o\ & 
-- (\v9|v1|v4|Q~0_combout\ & ((\B[7]~input_o\) # (\A[7]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000111000000000000000100000000011111110000000000011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[7]~input_o\,
	datab => \ALT_INV_B[7]~input_o\,
	datac => \ALT_INV_B[8]~input_o\,
	datad => \v9|v1|v4|ALT_INV_Q~0_combout\,
	datae => \v6|v5|ALT_INV_Q~combout\,
	dataf => \ALT_INV_A[8]~input_o\,
	combout => \v9|v3|v3|Q~0_combout\);

-- Location: IOIBUF_X70_Y0_N52
\B[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(10),
	o => \B[10]~input_o\);

-- Location: LABCELL_X67_Y1_N30
\v10|v3|v4|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \v10|v3|v4|Q~0_combout\ = ( \B[10]~input_o\ & ( !\A[10]~input_o\ $ (((\v9|v3|v3|Q~0_combout\) # (\v9|v1|v3|Q~0_combout\))) ) ) # ( !\B[10]~input_o\ & ( !\A[10]~input_o\ $ (((!\v9|v1|v3|Q~0_combout\ & !\v9|v3|v3|Q~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110101001101010011010100110101010010101100101011001010110010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[10]~input_o\,
	datab => \v9|v1|v3|ALT_INV_Q~0_combout\,
	datac => \v9|v3|v3|ALT_INV_Q~0_combout\,
	dataf => \ALT_INV_B[10]~input_o\,
	combout => \v10|v3|v4|Q~0_combout\);

-- Location: IOIBUF_X68_Y0_N52
\B[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(11),
	o => \B[11]~input_o\);

-- Location: IOIBUF_X66_Y0_N58
\A[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(11),
	o => \A[11]~input_o\);

-- Location: LABCELL_X67_Y1_N6
\v11|v3|v4|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \v11|v3|v4|Q~0_combout\ = ( \A[11]~input_o\ & ( \B[10]~input_o\ & ( !\B[11]~input_o\ $ ((((\A[10]~input_o\) # (\v9|v1|v3|Q~0_combout\)) # (\v9|v3|v3|Q~0_combout\))) ) ) ) # ( !\A[11]~input_o\ & ( \B[10]~input_o\ & ( !\B[11]~input_o\ $ 
-- (((!\v9|v3|v3|Q~0_combout\ & (!\v9|v1|v3|Q~0_combout\ & !\A[10]~input_o\)))) ) ) ) # ( \A[11]~input_o\ & ( !\B[10]~input_o\ & ( !\B[11]~input_o\ $ (((\A[10]~input_o\ & ((\v9|v1|v3|Q~0_combout\) # (\v9|v3|v3|Q~0_combout\))))) ) ) ) # ( !\A[11]~input_o\ & ( 
-- !\B[10]~input_o\ & ( !\B[11]~input_o\ $ (((!\A[10]~input_o\) # ((!\v9|v3|v3|Q~0_combout\ & !\v9|v1|v3|Q~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011111111000111110000000011101111111100000001000000001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v9|v3|v3|ALT_INV_Q~0_combout\,
	datab => \v9|v1|v3|ALT_INV_Q~0_combout\,
	datac => \ALT_INV_A[10]~input_o\,
	datad => \ALT_INV_B[11]~input_o\,
	datae => \ALT_INV_A[11]~input_o\,
	dataf => \ALT_INV_B[10]~input_o\,
	combout => \v11|v3|v4|Q~0_combout\);

-- Location: IOIBUF_X62_Y0_N1
\A[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(12),
	o => \A[12]~input_o\);

-- Location: IOIBUF_X66_Y0_N41
\B[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(12),
	o => \B[12]~input_o\);

-- Location: LABCELL_X67_Y1_N42
\v11|v5|Q\ : cyclonev_lcell_comb
-- Equation(s):
-- \v11|v5|Q~combout\ = ( \A[11]~input_o\ & ( \B[10]~input_o\ & ( (!\v9|v3|v3|Q~0_combout\ & (!\v9|v1|v3|Q~0_combout\ & (!\A[10]~input_o\ & !\B[11]~input_o\))) ) ) ) # ( !\A[11]~input_o\ & ( \B[10]~input_o\ & ( (!\B[11]~input_o\) # ((!\v9|v3|v3|Q~0_combout\ 
-- & (!\v9|v1|v3|Q~0_combout\ & !\A[10]~input_o\))) ) ) ) # ( \A[11]~input_o\ & ( !\B[10]~input_o\ & ( (!\B[11]~input_o\ & ((!\A[10]~input_o\) # ((!\v9|v3|v3|Q~0_combout\ & !\v9|v1|v3|Q~0_combout\)))) ) ) ) # ( !\A[11]~input_o\ & ( !\B[10]~input_o\ & ( 
-- (!\A[10]~input_o\) # ((!\B[11]~input_o\) # ((!\v9|v3|v3|Q~0_combout\ & !\v9|v1|v3|Q~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111000111110000000000011111111100000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v9|v3|v3|ALT_INV_Q~0_combout\,
	datab => \v9|v1|v3|ALT_INV_Q~0_combout\,
	datac => \ALT_INV_A[10]~input_o\,
	datad => \ALT_INV_B[11]~input_o\,
	datae => \ALT_INV_A[11]~input_o\,
	dataf => \ALT_INV_B[10]~input_o\,
	combout => \v11|v5|Q~combout\);

-- Location: LABCELL_X67_Y1_N33
\v12|v3|v4|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \v12|v3|v4|Q~0_combout\ = ( \v11|v5|Q~combout\ & ( !\A[12]~input_o\ $ (!\B[12]~input_o\) ) ) # ( !\v11|v5|Q~combout\ & ( !\A[12]~input_o\ $ (\B[12]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000001111111100000000111100001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[12]~input_o\,
	datad => \ALT_INV_B[12]~input_o\,
	dataf => \v11|v5|ALT_INV_Q~combout\,
	combout => \v12|v3|v4|Q~0_combout\);

-- Location: IOIBUF_X68_Y0_N1
\A[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(13),
	o => \A[13]~input_o\);

-- Location: IOIBUF_X68_Y0_N18
\B[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(13),
	o => \B[13]~input_o\);

-- Location: LABCELL_X67_Y1_N18
\v13|v3|v4|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \v13|v3|v4|Q~0_combout\ = ( \B[13]~input_o\ & ( !\A[13]~input_o\ $ (((!\v11|v5|Q~combout\ & ((\A[12]~input_o\) # (\B[12]~input_o\))) # (\v11|v5|Q~combout\ & (\B[12]~input_o\ & \A[12]~input_o\)))) ) ) # ( !\B[13]~input_o\ & ( !\A[13]~input_o\ $ 
-- (((!\v11|v5|Q~combout\ & (!\B[12]~input_o\ & !\A[12]~input_o\)) # (\v11|v5|Q~combout\ & ((!\B[12]~input_o\) # (!\A[12]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101100110011010010110011001101010100110011001011010011001100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[13]~input_o\,
	datab => \v11|v5|ALT_INV_Q~combout\,
	datac => \ALT_INV_B[12]~input_o\,
	datad => \ALT_INV_A[12]~input_o\,
	dataf => \ALT_INV_B[13]~input_o\,
	combout => \v13|v3|v4|Q~0_combout\);

-- Location: IOIBUF_X60_Y0_N52
\B[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(14),
	o => \B[14]~input_o\);

-- Location: IOIBUF_X62_Y0_N52
\A[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(14),
	o => \A[14]~input_o\);

-- Location: LABCELL_X61_Y1_N0
\v14|v1|v4|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \v14|v1|v4|Q~0_combout\ = ( \A[14]~input_o\ & ( !\B[14]~input_o\ ) ) # ( !\A[14]~input_o\ & ( \B[14]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[14]~input_o\,
	dataf => \ALT_INV_A[14]~input_o\,
	combout => \v14|v1|v4|Q~0_combout\);

-- Location: LABCELL_X67_Y1_N54
\v14|v3|v4|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \v14|v3|v4|Q~0_combout\ = ( \A[12]~input_o\ & ( \B[13]~input_o\ & ( !\v14|v1|v4|Q~0_combout\ $ (((!\A[13]~input_o\ & (!\B[12]~input_o\ & \v11|v5|Q~combout\)))) ) ) ) # ( !\A[12]~input_o\ & ( \B[13]~input_o\ & ( !\v14|v1|v4|Q~0_combout\ $ 
-- (((!\A[13]~input_o\ & ((!\B[12]~input_o\) # (\v11|v5|Q~combout\))))) ) ) ) # ( \A[12]~input_o\ & ( !\B[13]~input_o\ & ( !\v14|v1|v4|Q~0_combout\ $ (((!\A[13]~input_o\) # ((!\B[12]~input_o\ & \v11|v5|Q~combout\)))) ) ) ) # ( !\A[12]~input_o\ & ( 
-- !\B[13]~input_o\ & ( !\v14|v1|v4|Q~0_combout\ $ (((!\A[13]~input_o\) # ((!\B[12]~input_o\) # (\v11|v5|Q~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011000110011011001100011011001101100011001101100110001101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[13]~input_o\,
	datab => \v14|v1|v4|ALT_INV_Q~0_combout\,
	datac => \ALT_INV_B[12]~input_o\,
	datad => \v11|v5|ALT_INV_Q~combout\,
	datae => \ALT_INV_A[12]~input_o\,
	dataf => \ALT_INV_B[13]~input_o\,
	combout => \v14|v3|v4|Q~0_combout\);

-- Location: IOIBUF_X60_Y0_N1
\B[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(15),
	o => \B[15]~input_o\);

-- Location: LABCELL_X67_Y1_N21
\v13|v5|Q\ : cyclonev_lcell_comb
-- Equation(s):
-- \v13|v5|Q~combout\ = ( \B[13]~input_o\ & ( ((!\v11|v5|Q~combout\ & ((\A[12]~input_o\) # (\B[12]~input_o\))) # (\v11|v5|Q~combout\ & (\B[12]~input_o\ & \A[12]~input_o\))) # (\A[13]~input_o\) ) ) # ( !\B[13]~input_o\ & ( (\A[13]~input_o\ & 
-- ((!\v11|v5|Q~combout\ & ((\A[12]~input_o\) # (\B[12]~input_o\))) # (\v11|v5|Q~combout\ & (\B[12]~input_o\ & \A[12]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010001000101000001000100010101011101110111110101110111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[13]~input_o\,
	datab => \v11|v5|ALT_INV_Q~combout\,
	datac => \ALT_INV_B[12]~input_o\,
	datad => \ALT_INV_A[12]~input_o\,
	dataf => \ALT_INV_B[13]~input_o\,
	combout => \v13|v5|Q~combout\);

-- Location: IOIBUF_X62_Y0_N35
\A[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(15),
	o => \A[15]~input_o\);

-- Location: LABCELL_X61_Y1_N9
\v15|v3|v4|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \v15|v3|v4|Q~0_combout\ = ( \A[15]~input_o\ & ( \A[14]~input_o\ & ( !\B[15]~input_o\ $ (((\B[14]~input_o\) # (\v13|v5|Q~combout\))) ) ) ) # ( !\A[15]~input_o\ & ( \A[14]~input_o\ & ( !\B[15]~input_o\ $ (((!\v13|v5|Q~combout\ & !\B[14]~input_o\))) ) ) ) # 
-- ( \A[15]~input_o\ & ( !\A[14]~input_o\ & ( !\B[15]~input_o\ $ (((\v13|v5|Q~combout\ & \B[14]~input_o\))) ) ) ) # ( !\A[15]~input_o\ & ( !\A[14]~input_o\ & ( !\B[15]~input_o\ $ (((!\v13|v5|Q~combout\) # (!\B[14]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101011010101010101010010101011010101010101010010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[15]~input_o\,
	datac => \v13|v5|ALT_INV_Q~combout\,
	datad => \ALT_INV_B[14]~input_o\,
	datae => \ALT_INV_A[15]~input_o\,
	dataf => \ALT_INV_A[14]~input_o\,
	combout => \v15|v3|v4|Q~0_combout\);

-- Location: LABCELL_X61_Y1_N42
\v15|v5|Q\ : cyclonev_lcell_comb
-- Equation(s):
-- \v15|v5|Q~combout\ = ( \A[15]~input_o\ & ( \A[14]~input_o\ & ( ((\B[15]~input_o\) # (\v13|v5|Q~combout\)) # (\B[14]~input_o\) ) ) ) # ( !\A[15]~input_o\ & ( \A[14]~input_o\ & ( (\B[15]~input_o\ & ((\v13|v5|Q~combout\) # (\B[14]~input_o\))) ) ) ) # ( 
-- \A[15]~input_o\ & ( !\A[14]~input_o\ & ( ((\B[14]~input_o\ & \v13|v5|Q~combout\)) # (\B[15]~input_o\) ) ) ) # ( !\A[15]~input_o\ & ( !\A[14]~input_o\ & ( (\B[14]~input_o\ & (\v13|v5|Q~combout\ & \B[15]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000111110001111100000111000001110111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[14]~input_o\,
	datab => \v13|v5|ALT_INV_Q~combout\,
	datac => \ALT_INV_B[15]~input_o\,
	datae => \ALT_INV_A[15]~input_o\,
	dataf => \ALT_INV_A[14]~input_o\,
	combout => \v15|v5|Q~combout\);

-- Location: MLABCELL_X59_Y32_N0
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


