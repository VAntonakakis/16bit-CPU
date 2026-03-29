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

-- DATE "03/29/2026 14:38:28"

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

ENTITY 	MyALU16bit IS
    PORT (
	S : IN std_logic_vector(2 DOWNTO 0);
	A : IN std_logic_vector(15 DOWNTO 0);
	B : IN std_logic_vector(15 DOWNTO 0);
	Q : OUT std_logic_vector(15 DOWNTO 0);
	Overflow : OUT std_logic
	);
END MyALU16bit;

-- Design Ports Information
-- Q[0]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[1]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[2]	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[3]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[4]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[5]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[6]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[7]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[8]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[9]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[10]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[11]	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[12]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[13]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[14]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[15]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Overflow	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[2]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[0]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[1]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[15]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[8]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[9]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[10]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[10]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[11]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[11]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[12]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[12]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[13]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[13]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[14]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[14]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[15]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF MyALU16bit IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_S : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_A : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_Q : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_Overflow : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \S[2]~input_o\ : std_logic;
SIGNAL \S[1]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \S[0]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \v9|V4|v3|v0|Q~0_combout\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \v9|V4|v3|v1|Q~0_combout\ : std_logic;
SIGNAL \v9|v6|v3|v1|Q~0_combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \v2|v1|v5|Q~0_combout\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \v0|v1|v5|Q~combout\ : std_logic;
SIGNAL \v9|v6|v3|v2|Q~0_combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \v2|v2|v5|Q~combout\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \v0|v2|v5|Q~combout\ : std_logic;
SIGNAL \v9|v6|v3|v3|Q~0_combout\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \v2|v3|v5|Q~combout\ : std_logic;
SIGNAL \v0|v3|v5|Q~combout\ : std_logic;
SIGNAL \v9|v6|v3|v4|Q~0_combout\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \v2|v4|v5|Q~combout\ : std_logic;
SIGNAL \v0|v4|v5|Q~combout\ : std_logic;
SIGNAL \v9|v6|v3|v5|Q~0_combout\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \v4|v5|Q~0_combout\ : std_logic;
SIGNAL \v0|v5|v1|v3|Q~0_combout\ : std_logic;
SIGNAL \v2|v5|v4|Q~combout\ : std_logic;
SIGNAL \v2|v5|v5|Q~combout\ : std_logic;
SIGNAL \v4|v5|Q~1_combout\ : std_logic;
SIGNAL \v0|v5|v4|Q~combout\ : std_logic;
SIGNAL \v0|v5|v5|Q~combout\ : std_logic;
SIGNAL \v9|v6|v3|v6|Q~0_combout\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \v2|v6|v5|Q~combout\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \v0|v6|v5|Q~combout\ : std_logic;
SIGNAL \v9|v6|v3|v7|Q~0_combout\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \v2|v7|v5|Q~combout\ : std_logic;
SIGNAL \B[8]~input_o\ : std_logic;
SIGNAL \v0|v7|v5|Q~combout\ : std_logic;
SIGNAL \v9|v6|v3|v8|Q~0_combout\ : std_logic;
SIGNAL \B[9]~input_o\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \v2|v8|v5|Q~combout\ : std_logic;
SIGNAL \v0|v8|v5|Q~combout\ : std_logic;
SIGNAL \v9|v6|v3|v9|Q~0_combout\ : std_logic;
SIGNAL \B[10]~input_o\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \v2|v9|v5|Q~combout\ : std_logic;
SIGNAL \v0|v9|v5|Q~combout\ : std_logic;
SIGNAL \v9|v6|v3|v10|Q~0_combout\ : std_logic;
SIGNAL \B[11]~input_o\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \v0|v10|v1|v1|Q~0_combout\ : std_logic;
SIGNAL \v0|v10|v1|v3|Q~0_combout\ : std_logic;
SIGNAL \v2|v10|v4|Q~combout\ : std_logic;
SIGNAL \v2|v10|v5|Q~combout\ : std_logic;
SIGNAL \v0|v10|v4|Q~combout\ : std_logic;
SIGNAL \v0|v10|v1|v1|Q~1_combout\ : std_logic;
SIGNAL \v0|v10|v5|Q~combout\ : std_logic;
SIGNAL \v9|v6|v3|v11|Q~0_combout\ : std_logic;
SIGNAL \v2|v11|v5|Q~combout\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
SIGNAL \B[12]~input_o\ : std_logic;
SIGNAL \v0|v11|v5|Q~combout\ : std_logic;
SIGNAL \v9|v6|v3|v12|Q~0_combout\ : std_logic;
SIGNAL \v2|v12|v5|Q~combout\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \B[13]~input_o\ : std_logic;
SIGNAL \v0|v12|v5|Q~combout\ : std_logic;
SIGNAL \v9|v6|v3|v13|Q~0_combout\ : std_logic;
SIGNAL \B[14]~input_o\ : std_logic;
SIGNAL \v2|v13|v5|Q~combout\ : std_logic;
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \v0|v13|v5|Q~combout\ : std_logic;
SIGNAL \v9|v6|v3|v14|Q~0_combout\ : std_logic;
SIGNAL \v2|v14|v5|Q~combout\ : std_logic;
SIGNAL \B[15]~input_o\ : std_logic;
SIGNAL \v0|v14|v5|Q~combout\ : std_logic;
SIGNAL \v9|v6|v3|v15|Q~0_combout\ : std_logic;
SIGNAL \Overflow~0_combout\ : std_logic;
SIGNAL \ALT_INV_B[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_S[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_S[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_S[2]~input_o\ : std_logic;
SIGNAL \v0|v14|v5|ALT_INV_Q~combout\ : std_logic;
SIGNAL \v2|v14|v5|ALT_INV_Q~combout\ : std_logic;
SIGNAL \v0|v13|v5|ALT_INV_Q~combout\ : std_logic;
SIGNAL \v2|v13|v5|ALT_INV_Q~combout\ : std_logic;
SIGNAL \v0|v12|v5|ALT_INV_Q~combout\ : std_logic;
SIGNAL \v2|v12|v5|ALT_INV_Q~combout\ : std_logic;
SIGNAL \v0|v11|v5|ALT_INV_Q~combout\ : std_logic;
SIGNAL \v2|v11|v5|ALT_INV_Q~combout\ : std_logic;
SIGNAL \v0|v10|v5|ALT_INV_Q~combout\ : std_logic;
SIGNAL \v0|v10|v1|v1|ALT_INV_Q~1_combout\ : std_logic;
SIGNAL \v0|v10|v4|ALT_INV_Q~combout\ : std_logic;
SIGNAL \v2|v10|v5|ALT_INV_Q~combout\ : std_logic;
SIGNAL \v0|v10|v1|v1|ALT_INV_Q~0_combout\ : std_logic;
SIGNAL \v2|v10|v4|ALT_INV_Q~combout\ : std_logic;
SIGNAL \v0|v10|v1|v3|ALT_INV_Q~0_combout\ : std_logic;
SIGNAL \v0|v9|v5|ALT_INV_Q~combout\ : std_logic;
SIGNAL \v2|v9|v5|ALT_INV_Q~combout\ : std_logic;
SIGNAL \v0|v8|v5|ALT_INV_Q~combout\ : std_logic;
SIGNAL \v2|v8|v5|ALT_INV_Q~combout\ : std_logic;
SIGNAL \v0|v7|v5|ALT_INV_Q~combout\ : std_logic;
SIGNAL \v2|v7|v5|ALT_INV_Q~combout\ : std_logic;
SIGNAL \v0|v6|v5|ALT_INV_Q~combout\ : std_logic;
SIGNAL \v2|v6|v5|ALT_INV_Q~combout\ : std_logic;
SIGNAL \v0|v5|v5|ALT_INV_Q~combout\ : std_logic;
SIGNAL \v4|v5|ALT_INV_Q~1_combout\ : std_logic;
SIGNAL \v0|v5|v4|ALT_INV_Q~combout\ : std_logic;
SIGNAL \v2|v5|v5|ALT_INV_Q~combout\ : std_logic;
SIGNAL \v4|v5|ALT_INV_Q~0_combout\ : std_logic;
SIGNAL \v2|v5|v4|ALT_INV_Q~combout\ : std_logic;
SIGNAL \v0|v5|v1|v3|ALT_INV_Q~0_combout\ : std_logic;
SIGNAL \v0|v4|v5|ALT_INV_Q~combout\ : std_logic;
SIGNAL \v2|v4|v5|ALT_INV_Q~combout\ : std_logic;
SIGNAL \v0|v3|v5|ALT_INV_Q~combout\ : std_logic;
SIGNAL \v2|v3|v5|ALT_INV_Q~combout\ : std_logic;
SIGNAL \v0|v2|v5|ALT_INV_Q~combout\ : std_logic;
SIGNAL \v2|v2|v5|ALT_INV_Q~combout\ : std_logic;
SIGNAL \v0|v1|v5|ALT_INV_Q~combout\ : std_logic;
SIGNAL \v2|v1|v5|ALT_INV_Q~0_combout\ : std_logic;
SIGNAL \v9|V4|v3|v1|ALT_INV_Q~0_combout\ : std_logic;

BEGIN

ww_S <= S;
ww_A <= A;
ww_B <= B;
Q <= ww_Q;
Overflow <= ww_Overflow;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_B[15]~input_o\ <= NOT \B[15]~input_o\;
\ALT_INV_A[14]~input_o\ <= NOT \A[14]~input_o\;
\ALT_INV_B[14]~input_o\ <= NOT \B[14]~input_o\;
\ALT_INV_A[13]~input_o\ <= NOT \A[13]~input_o\;
\ALT_INV_B[13]~input_o\ <= NOT \B[13]~input_o\;
\ALT_INV_A[12]~input_o\ <= NOT \A[12]~input_o\;
\ALT_INV_B[12]~input_o\ <= NOT \B[12]~input_o\;
\ALT_INV_A[11]~input_o\ <= NOT \A[11]~input_o\;
\ALT_INV_B[11]~input_o\ <= NOT \B[11]~input_o\;
\ALT_INV_A[10]~input_o\ <= NOT \A[10]~input_o\;
\ALT_INV_B[10]~input_o\ <= NOT \B[10]~input_o\;
\ALT_INV_A[9]~input_o\ <= NOT \A[9]~input_o\;
\ALT_INV_B[9]~input_o\ <= NOT \B[9]~input_o\;
\ALT_INV_A[8]~input_o\ <= NOT \A[8]~input_o\;
\ALT_INV_B[8]~input_o\ <= NOT \B[8]~input_o\;
\ALT_INV_A[7]~input_o\ <= NOT \A[7]~input_o\;
\ALT_INV_B[7]~input_o\ <= NOT \B[7]~input_o\;
\ALT_INV_A[6]~input_o\ <= NOT \A[6]~input_o\;
\ALT_INV_B[6]~input_o\ <= NOT \B[6]~input_o\;
\ALT_INV_A[5]~input_o\ <= NOT \A[5]~input_o\;
\ALT_INV_B[5]~input_o\ <= NOT \B[5]~input_o\;
\ALT_INV_A[4]~input_o\ <= NOT \A[4]~input_o\;
\ALT_INV_B[4]~input_o\ <= NOT \B[4]~input_o\;
\ALT_INV_A[3]~input_o\ <= NOT \A[3]~input_o\;
\ALT_INV_B[3]~input_o\ <= NOT \B[3]~input_o\;
\ALT_INV_A[2]~input_o\ <= NOT \A[2]~input_o\;
\ALT_INV_B[2]~input_o\ <= NOT \B[2]~input_o\;
\ALT_INV_A[1]~input_o\ <= NOT \A[1]~input_o\;
\ALT_INV_B[1]~input_o\ <= NOT \B[1]~input_o\;
\ALT_INV_A[15]~input_o\ <= NOT \A[15]~input_o\;
\ALT_INV_B[0]~input_o\ <= NOT \B[0]~input_o\;
\ALT_INV_S[1]~input_o\ <= NOT \S[1]~input_o\;
\ALT_INV_A[0]~input_o\ <= NOT \A[0]~input_o\;
\ALT_INV_S[0]~input_o\ <= NOT \S[0]~input_o\;
\ALT_INV_S[2]~input_o\ <= NOT \S[2]~input_o\;
\v0|v14|v5|ALT_INV_Q~combout\ <= NOT \v0|v14|v5|Q~combout\;
\v2|v14|v5|ALT_INV_Q~combout\ <= NOT \v2|v14|v5|Q~combout\;
\v0|v13|v5|ALT_INV_Q~combout\ <= NOT \v0|v13|v5|Q~combout\;
\v2|v13|v5|ALT_INV_Q~combout\ <= NOT \v2|v13|v5|Q~combout\;
\v0|v12|v5|ALT_INV_Q~combout\ <= NOT \v0|v12|v5|Q~combout\;
\v2|v12|v5|ALT_INV_Q~combout\ <= NOT \v2|v12|v5|Q~combout\;
\v0|v11|v5|ALT_INV_Q~combout\ <= NOT \v0|v11|v5|Q~combout\;
\v2|v11|v5|ALT_INV_Q~combout\ <= NOT \v2|v11|v5|Q~combout\;
\v0|v10|v5|ALT_INV_Q~combout\ <= NOT \v0|v10|v5|Q~combout\;
\v0|v10|v1|v1|ALT_INV_Q~1_combout\ <= NOT \v0|v10|v1|v1|Q~1_combout\;
\v0|v10|v4|ALT_INV_Q~combout\ <= NOT \v0|v10|v4|Q~combout\;
\v2|v10|v5|ALT_INV_Q~combout\ <= NOT \v2|v10|v5|Q~combout\;
\v0|v10|v1|v1|ALT_INV_Q~0_combout\ <= NOT \v0|v10|v1|v1|Q~0_combout\;
\v2|v10|v4|ALT_INV_Q~combout\ <= NOT \v2|v10|v4|Q~combout\;
\v0|v10|v1|v3|ALT_INV_Q~0_combout\ <= NOT \v0|v10|v1|v3|Q~0_combout\;
\v0|v9|v5|ALT_INV_Q~combout\ <= NOT \v0|v9|v5|Q~combout\;
\v2|v9|v5|ALT_INV_Q~combout\ <= NOT \v2|v9|v5|Q~combout\;
\v0|v8|v5|ALT_INV_Q~combout\ <= NOT \v0|v8|v5|Q~combout\;
\v2|v8|v5|ALT_INV_Q~combout\ <= NOT \v2|v8|v5|Q~combout\;
\v0|v7|v5|ALT_INV_Q~combout\ <= NOT \v0|v7|v5|Q~combout\;
\v2|v7|v5|ALT_INV_Q~combout\ <= NOT \v2|v7|v5|Q~combout\;
\v0|v6|v5|ALT_INV_Q~combout\ <= NOT \v0|v6|v5|Q~combout\;
\v2|v6|v5|ALT_INV_Q~combout\ <= NOT \v2|v6|v5|Q~combout\;
\v0|v5|v5|ALT_INV_Q~combout\ <= NOT \v0|v5|v5|Q~combout\;
\v4|v5|ALT_INV_Q~1_combout\ <= NOT \v4|v5|Q~1_combout\;
\v0|v5|v4|ALT_INV_Q~combout\ <= NOT \v0|v5|v4|Q~combout\;
\v2|v5|v5|ALT_INV_Q~combout\ <= NOT \v2|v5|v5|Q~combout\;
\v4|v5|ALT_INV_Q~0_combout\ <= NOT \v4|v5|Q~0_combout\;
\v2|v5|v4|ALT_INV_Q~combout\ <= NOT \v2|v5|v4|Q~combout\;
\v0|v5|v1|v3|ALT_INV_Q~0_combout\ <= NOT \v0|v5|v1|v3|Q~0_combout\;
\v0|v4|v5|ALT_INV_Q~combout\ <= NOT \v0|v4|v5|Q~combout\;
\v2|v4|v5|ALT_INV_Q~combout\ <= NOT \v2|v4|v5|Q~combout\;
\v0|v3|v5|ALT_INV_Q~combout\ <= NOT \v0|v3|v5|Q~combout\;
\v2|v3|v5|ALT_INV_Q~combout\ <= NOT \v2|v3|v5|Q~combout\;
\v0|v2|v5|ALT_INV_Q~combout\ <= NOT \v0|v2|v5|Q~combout\;
\v2|v2|v5|ALT_INV_Q~combout\ <= NOT \v2|v2|v5|Q~combout\;
\v0|v1|v5|ALT_INV_Q~combout\ <= NOT \v0|v1|v5|Q~combout\;
\v2|v1|v5|ALT_INV_Q~0_combout\ <= NOT \v2|v1|v5|Q~0_combout\;
\v9|V4|v3|v1|ALT_INV_Q~0_combout\ <= NOT \v9|V4|v3|v1|Q~0_combout\;

-- Location: IOOBUF_X50_Y0_N93
\Q[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \v9|V4|v3|v0|Q~0_combout\,
	devoe => ww_devoe,
	o => ww_Q(0));

-- Location: IOOBUF_X38_Y0_N53
\Q[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \v9|v6|v3|v1|Q~0_combout\,
	devoe => ww_devoe,
	o => ww_Q(1));

-- Location: IOOBUF_X4_Y0_N36
\Q[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \v9|v6|v3|v2|Q~0_combout\,
	devoe => ww_devoe,
	o => ww_Q(2));

-- Location: IOOBUF_X6_Y0_N53
\Q[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \v9|v6|v3|v3|Q~0_combout\,
	devoe => ww_devoe,
	o => ww_Q(3));

-- Location: IOOBUF_X6_Y0_N19
\Q[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \v9|v6|v3|v4|Q~0_combout\,
	devoe => ww_devoe,
	o => ww_Q(4));

-- Location: IOOBUF_X2_Y0_N59
\Q[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \v9|v6|v3|v5|Q~0_combout\,
	devoe => ww_devoe,
	o => ww_Q(5));

-- Location: IOOBUF_X8_Y0_N19
\Q[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \v9|v6|v3|v6|Q~0_combout\,
	devoe => ww_devoe,
	o => ww_Q(6));

-- Location: IOOBUF_X8_Y0_N2
\Q[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \v9|v6|v3|v7|Q~0_combout\,
	devoe => ww_devoe,
	o => ww_Q(7));

-- Location: IOOBUF_X28_Y0_N2
\Q[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \v9|v6|v3|v8|Q~0_combout\,
	devoe => ww_devoe,
	o => ww_Q(8));

-- Location: IOOBUF_X4_Y0_N2
\Q[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \v9|v6|v3|v9|Q~0_combout\,
	devoe => ww_devoe,
	o => ww_Q(9));

-- Location: IOOBUF_X30_Y0_N53
\Q[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \v9|v6|v3|v10|Q~0_combout\,
	devoe => ww_devoe,
	o => ww_Q(10));

-- Location: IOOBUF_X34_Y0_N76
\Q[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \v9|v6|v3|v11|Q~0_combout\,
	devoe => ww_devoe,
	o => ww_Q(11));

-- Location: IOOBUF_X36_Y0_N36
\Q[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \v9|v6|v3|v12|Q~0_combout\,
	devoe => ww_devoe,
	o => ww_Q(12));

-- Location: IOOBUF_X50_Y0_N42
\Q[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \v9|v6|v3|v13|Q~0_combout\,
	devoe => ww_devoe,
	o => ww_Q(13));

-- Location: IOOBUF_X50_Y0_N76
\Q[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \v9|v6|v3|v14|Q~0_combout\,
	devoe => ww_devoe,
	o => ww_Q(14));

-- Location: IOOBUF_X38_Y0_N19
\Q[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \v9|v6|v3|v15|Q~0_combout\,
	devoe => ww_devoe,
	o => ww_Q(15));

-- Location: IOOBUF_X36_Y0_N2
\Overflow~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Overflow~0_combout\,
	devoe => ww_devoe,
	o => ww_Overflow);

-- Location: IOIBUF_X36_Y0_N18
\A[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(15),
	o => \A[15]~input_o\);

-- Location: IOIBUF_X30_Y0_N35
\S[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S(2),
	o => \S[2]~input_o\);

-- Location: IOIBUF_X30_Y0_N1
\S[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S(1),
	o => \S[1]~input_o\);

-- Location: IOIBUF_X32_Y0_N1
\B[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X30_Y0_N18
\S[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S(0),
	o => \S[0]~input_o\);

-- Location: IOIBUF_X38_Y0_N1
\A[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: LABCELL_X33_Y1_N18
\v9|V4|v3|v0|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \v9|V4|v3|v0|Q~0_combout\ = ( \S[0]~input_o\ & ( \A[0]~input_o\ & ( (!\S[2]~input_o\ & ((!\B[0]~input_o\) # (\S[1]~input_o\))) ) ) ) # ( !\S[0]~input_o\ & ( \A[0]~input_o\ & ( (!\S[2]~input_o\ & ((!\S[1]~input_o\ $ (\B[0]~input_o\)))) # (\S[2]~input_o\ & 
-- ((!\S[1]~input_o\ & (!\A[15]~input_o\)) # (\S[1]~input_o\ & ((!\B[0]~input_o\))))) ) ) ) # ( \S[0]~input_o\ & ( !\A[0]~input_o\ & ( (!\S[2]~input_o\ & ((\B[0]~input_o\))) # (\S[2]~input_o\ & ((!\S[1]~input_o\) # (!\B[0]~input_o\))) ) ) ) # ( 
-- !\S[0]~input_o\ & ( !\A[0]~input_o\ & ( (!\S[2]~input_o\ & (((!\S[1]~input_o\ & \B[0]~input_o\)))) # (\S[2]~input_o\ & ((!\S[1]~input_o\ & (!\A[15]~input_o\)) # (\S[1]~input_o\ & ((\B[0]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000011100011001100111111110011100011001011001100110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[15]~input_o\,
	datab => \ALT_INV_S[2]~input_o\,
	datac => \ALT_INV_S[1]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	datae => \ALT_INV_S[0]~input_o\,
	dataf => \ALT_INV_A[0]~input_o\,
	combout => \v9|V4|v3|v0|Q~0_combout\);

-- Location: IOIBUF_X32_Y0_N35
\A[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: IOIBUF_X36_Y0_N52
\B[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: LABCELL_X33_Y1_N24
\v9|V4|v3|v1|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \v9|V4|v3|v1|Q~0_combout\ = ( \S[0]~input_o\ & ( \A[0]~input_o\ & ( (!\A[1]~input_o\ & ((\B[1]~input_o\))) # (\A[1]~input_o\ & ((!\B[1]~input_o\) # (\S[1]~input_o\))) ) ) ) # ( !\S[0]~input_o\ & ( \A[0]~input_o\ & ( (!\S[1]~input_o\ & (!\A[1]~input_o\ $ 
-- (!\B[0]~input_o\ $ (\B[1]~input_o\)))) # (\S[1]~input_o\ & (\A[1]~input_o\ & ((\B[1]~input_o\)))) ) ) ) # ( \S[0]~input_o\ & ( !\A[0]~input_o\ & ( (!\S[1]~input_o\ & (!\A[1]~input_o\ $ (!\B[0]~input_o\ $ (\B[1]~input_o\)))) # (\S[1]~input_o\ & 
-- (((\B[1]~input_o\)) # (\A[1]~input_o\))) ) ) ) # ( !\S[0]~input_o\ & ( !\A[0]~input_o\ & ( (!\A[1]~input_o\ & (!\S[1]~input_o\ & \B[1]~input_o\)) # (\A[1]~input_o\ & (!\S[1]~input_o\ $ (\B[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000010100101011001011001111101100000100101010101010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[1]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_S[1]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \ALT_INV_S[0]~input_o\,
	dataf => \ALT_INV_A[0]~input_o\,
	combout => \v9|V4|v3|v1|Q~0_combout\);

-- Location: LABCELL_X33_Y1_N0
\v9|v6|v3|v1|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \v9|v6|v3|v1|Q~0_combout\ = ( \S[0]~input_o\ & ( \v9|V4|v3|v1|Q~0_combout\ & ( (!\S[2]~input_o\) # ((!\A[1]~input_o\ & ((!\S[1]~input_o\) # (!\B[1]~input_o\)))) ) ) ) # ( !\S[0]~input_o\ & ( \v9|V4|v3|v1|Q~0_combout\ & ( (!\S[2]~input_o\) # 
-- ((\S[1]~input_o\ & (!\A[1]~input_o\ $ (!\B[1]~input_o\)))) ) ) ) # ( \S[0]~input_o\ & ( !\v9|V4|v3|v1|Q~0_combout\ & ( (!\A[1]~input_o\ & (\S[2]~input_o\ & ((!\S[1]~input_o\) # (!\B[1]~input_o\)))) ) ) ) # ( !\S[0]~input_o\ & ( !\v9|V4|v3|v1|Q~0_combout\ 
-- & ( (\S[2]~input_o\ & (\S[1]~input_o\ & (!\A[1]~input_o\ $ (!\B[1]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000010001000100010000011001101110011101110111011101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[1]~input_o\,
	datab => \ALT_INV_S[2]~input_o\,
	datac => \ALT_INV_S[1]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \ALT_INV_S[0]~input_o\,
	dataf => \v9|V4|v3|v1|ALT_INV_Q~0_combout\,
	combout => \v9|v6|v3|v1|Q~0_combout\);

-- Location: IOIBUF_X38_Y0_N35
\A[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: LABCELL_X33_Y1_N36
\v2|v1|v5|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \v2|v1|v5|Q~0_combout\ = ( \A[0]~input_o\ & ( (!\B[1]~input_o\) # (\A[1]~input_o\) ) ) # ( !\A[0]~input_o\ & ( (!\B[1]~input_o\ & ((!\B[0]~input_o\) # (\A[1]~input_o\))) # (\B[1]~input_o\ & (!\B[0]~input_o\ & \A[1]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000111010001110100011101000111010101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[1]~input_o\,
	dataf => \ALT_INV_A[0]~input_o\,
	combout => \v2|v1|v5|Q~0_combout\);

-- Location: IOIBUF_X32_Y0_N52
\B[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: LABCELL_X33_Y1_N39
\v0|v1|v5|Q\ : cyclonev_lcell_comb
-- Equation(s):
-- \v0|v1|v5|Q~combout\ = ( \A[0]~input_o\ & ( (!\B[1]~input_o\ & (\B[0]~input_o\ & \A[1]~input_o\)) # (\B[1]~input_o\ & ((\A[1]~input_o\) # (\B[0]~input_o\))) ) ) # ( !\A[0]~input_o\ & ( (\B[1]~input_o\ & \A[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100010001011101110001000101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_A[1]~input_o\,
	dataf => \ALT_INV_A[0]~input_o\,
	combout => \v0|v1|v5|Q~combout\);

-- Location: LABCELL_X33_Y1_N12
\v9|v6|v3|v2|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \v9|v6|v3|v2|Q~0_combout\ = ( !\S[0]~input_o\ & ( (!\S[1]~input_o\ & (!\S[2]~input_o\ & (!\A[2]~input_o\ $ (!\v0|v1|v5|Q~combout\ $ (\B[2]~input_o\))))) # (\S[1]~input_o\ & ((!\A[2]~input_o\ & (((\B[2]~input_o\ & \S[2]~input_o\)))) # (\A[2]~input_o\ & 
-- ((!\B[2]~input_o\ $ (!\S[2]~input_o\)))))) ) ) # ( \S[0]~input_o\ & ( (!\S[1]~input_o\ & (!\A[2]~input_o\ $ (((!\S[2]~input_o\ & (!\v2|v1|v5|Q~0_combout\ $ (!\B[2]~input_o\))))))) # (\S[1]~input_o\ & ((!\S[2]~input_o\ $ (((!\A[2]~input_o\ & 
-- !\B[2]~input_o\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0010100010010011100100110111110100010001010001001100110010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_S[1]~input_o\,
	datab => \ALT_INV_A[2]~input_o\,
	datac => \v2|v1|v5|ALT_INV_Q~0_combout\,
	datad => \ALT_INV_B[2]~input_o\,
	datae => \ALT_INV_S[0]~input_o\,
	dataf => \ALT_INV_S[2]~input_o\,
	datag => \v0|v1|v5|ALT_INV_Q~combout\,
	combout => \v9|v6|v3|v2|Q~0_combout\);

-- Location: IOIBUF_X2_Y0_N92
\A[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: LABCELL_X33_Y1_N42
\v2|v2|v5|Q\ : cyclonev_lcell_comb
-- Equation(s):
-- \v2|v2|v5|Q~combout\ = ( \B[0]~input_o\ & ( \A[0]~input_o\ & ( (!\B[2]~input_o\ & ((!\B[1]~input_o\) # ((\A[2]~input_o\) # (\A[1]~input_o\)))) # (\B[2]~input_o\ & (\A[2]~input_o\ & ((!\B[1]~input_o\) # (\A[1]~input_o\)))) ) ) ) # ( !\B[0]~input_o\ & ( 
-- \A[0]~input_o\ & ( (!\B[2]~input_o\ & ((!\B[1]~input_o\) # ((\A[2]~input_o\) # (\A[1]~input_o\)))) # (\B[2]~input_o\ & (\A[2]~input_o\ & ((!\B[1]~input_o\) # (\A[1]~input_o\)))) ) ) ) # ( \B[0]~input_o\ & ( !\A[0]~input_o\ & ( (!\B[2]~input_o\ & 
-- (((!\B[1]~input_o\ & \A[1]~input_o\)) # (\A[2]~input_o\))) # (\B[2]~input_o\ & (!\B[1]~input_o\ & (\A[1]~input_o\ & \A[2]~input_o\))) ) ) ) # ( !\B[0]~input_o\ & ( !\A[0]~input_o\ & ( (!\B[2]~input_o\ & ((!\B[1]~input_o\) # ((\A[2]~input_o\) # 
-- (\A[1]~input_o\)))) # (\B[2]~input_o\ & (\A[2]~input_o\ & ((!\B[1]~input_o\) # (\A[1]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000110011101111000010001100111010001100111011111000110011101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_A[1]~input_o\,
	datad => \ALT_INV_A[2]~input_o\,
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_A[0]~input_o\,
	combout => \v2|v2|v5|Q~combout\);

-- Location: IOIBUF_X2_Y0_N41
\B[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: LABCELL_X33_Y1_N48
\v0|v2|v5|Q\ : cyclonev_lcell_comb
-- Equation(s):
-- \v0|v2|v5|Q~combout\ = ( \B[0]~input_o\ & ( \A[0]~input_o\ & ( (!\B[2]~input_o\ & (\A[2]~input_o\ & ((\A[1]~input_o\) # (\B[1]~input_o\)))) # (\B[2]~input_o\ & (((\A[2]~input_o\) # (\A[1]~input_o\)) # (\B[1]~input_o\))) ) ) ) # ( !\B[0]~input_o\ & ( 
-- \A[0]~input_o\ & ( (!\B[2]~input_o\ & (\B[1]~input_o\ & (\A[1]~input_o\ & \A[2]~input_o\))) # (\B[2]~input_o\ & (((\B[1]~input_o\ & \A[1]~input_o\)) # (\A[2]~input_o\))) ) ) ) # ( \B[0]~input_o\ & ( !\A[0]~input_o\ & ( (!\B[2]~input_o\ & (\B[1]~input_o\ & 
-- (\A[1]~input_o\ & \A[2]~input_o\))) # (\B[2]~input_o\ & (((\B[1]~input_o\ & \A[1]~input_o\)) # (\A[2]~input_o\))) ) ) ) # ( !\B[0]~input_o\ & ( !\A[0]~input_o\ & ( (!\B[2]~input_o\ & (\B[1]~input_o\ & (\A[1]~input_o\ & \A[2]~input_o\))) # (\B[2]~input_o\ 
-- & (((\B[1]~input_o\ & \A[1]~input_o\)) # (\A[2]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100110111000000010011011100000001001101110001001101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_A[1]~input_o\,
	datad => \ALT_INV_A[2]~input_o\,
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_A[0]~input_o\,
	combout => \v0|v2|v5|Q~combout\);

-- Location: LABCELL_X24_Y1_N42
\v9|v6|v3|v3|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \v9|v6|v3|v3|Q~0_combout\ = ( !\S[0]~input_o\ & ( (!\S[2]~input_o\ & ((!\S[1]~input_o\ & (!\A[3]~input_o\ $ (!\v0|v2|v5|Q~combout\ $ (\B[3]~input_o\)))) # (\S[1]~input_o\ & (\A[3]~input_o\ & ((\B[3]~input_o\)))))) # (\S[2]~input_o\ & (((\S[1]~input_o\ & 
-- (!\A[3]~input_o\ $ (!\B[3]~input_o\)))))) ) ) # ( \S[0]~input_o\ & ( (!\S[1]~input_o\ & (!\A[3]~input_o\ $ (((!\S[2]~input_o\ & (!\v2|v2|v5|Q~combout\ $ (!\B[3]~input_o\))))))) # (\S[1]~input_o\ & (!\S[2]~input_o\ $ (((!\A[3]~input_o\ & 
-- ((!\B[3]~input_o\))))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0100100010000100101001100110101000010001011001100110011011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[3]~input_o\,
	datab => \ALT_INV_S[2]~input_o\,
	datac => \v2|v2|v5|ALT_INV_Q~combout\,
	datad => \ALT_INV_B[3]~input_o\,
	datae => \ALT_INV_S[0]~input_o\,
	dataf => \ALT_INV_S[1]~input_o\,
	datag => \v0|v2|v5|ALT_INV_Q~combout\,
	combout => \v9|v6|v3|v3|Q~0_combout\);

-- Location: IOIBUF_X2_Y0_N75
\A[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: IOIBUF_X4_Y0_N18
\B[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: LABCELL_X24_Y1_N51
\v2|v3|v5|Q\ : cyclonev_lcell_comb
-- Equation(s):
-- \v2|v3|v5|Q~combout\ = ( \v2|v2|v5|Q~combout\ & ( (!\B[3]~input_o\) # (\A[3]~input_o\) ) ) # ( !\v2|v2|v5|Q~combout\ & ( (!\B[3]~input_o\ & \A[3]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101010101010111111111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datad => \ALT_INV_A[3]~input_o\,
	dataf => \v2|v2|v5|ALT_INV_Q~combout\,
	combout => \v2|v3|v5|Q~combout\);

-- Location: LABCELL_X24_Y1_N54
\v0|v3|v5|Q\ : cyclonev_lcell_comb
-- Equation(s):
-- \v0|v3|v5|Q~combout\ = (!\A[3]~input_o\ & (\B[3]~input_o\ & \v0|v2|v5|Q~combout\)) # (\A[3]~input_o\ & ((\v0|v2|v5|Q~combout\) # (\B[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101011111000001010101111100000101010111110000010101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[3]~input_o\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \v0|v2|v5|ALT_INV_Q~combout\,
	combout => \v0|v3|v5|Q~combout\);

-- Location: LABCELL_X24_Y1_N6
\v9|v6|v3|v4|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \v9|v6|v3|v4|Q~0_combout\ = ( !\S[0]~input_o\ & ( (!\S[2]~input_o\ & ((!\S[1]~input_o\ & (!\A[4]~input_o\ $ (!\B[4]~input_o\ $ (\v0|v3|v5|Q~combout\)))) # (\S[1]~input_o\ & (\A[4]~input_o\ & (\B[4]~input_o\))))) # (\S[2]~input_o\ & (((\S[1]~input_o\ & 
-- (!\A[4]~input_o\ $ (!\B[4]~input_o\)))))) ) ) # ( \S[0]~input_o\ & ( (!\S[1]~input_o\ & (!\A[4]~input_o\ $ (((!\S[2]~input_o\ & (!\B[4]~input_o\ $ (!\v2|v3|v5|Q~combout\))))))) # (\S[1]~input_o\ & ((!\S[2]~input_o\ $ (((!\A[4]~input_o\ & 
-- !\B[4]~input_o\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0110100100000000100101101010101000010001011001100111011110001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[4]~input_o\,
	datab => \ALT_INV_B[4]~input_o\,
	datac => \v2|v3|v5|ALT_INV_Q~combout\,
	datad => \ALT_INV_S[2]~input_o\,
	datae => \ALT_INV_S[0]~input_o\,
	dataf => \ALT_INV_S[1]~input_o\,
	datag => \v0|v3|v5|ALT_INV_Q~combout\,
	combout => \v9|v6|v3|v4|Q~0_combout\);

-- Location: IOIBUF_X4_Y0_N52
\B[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: IOIBUF_X6_Y0_N1
\A[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: LABCELL_X24_Y1_N48
\v2|v4|v5|Q\ : cyclonev_lcell_comb
-- Equation(s):
-- \v2|v4|v5|Q~combout\ = ( \v2|v3|v5|Q~combout\ & ( (!\B[4]~input_o\) # (\A[4]~input_o\) ) ) # ( !\v2|v3|v5|Q~combout\ & ( (!\B[4]~input_o\ & \A[4]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110011001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[4]~input_o\,
	datac => \ALT_INV_A[4]~input_o\,
	dataf => \v2|v3|v5|ALT_INV_Q~combout\,
	combout => \v2|v4|v5|Q~combout\);

-- Location: LABCELL_X24_Y1_N3
\v0|v4|v5|Q\ : cyclonev_lcell_comb
-- Equation(s):
-- \v0|v4|v5|Q~combout\ = ( \A[4]~input_o\ & ( (\v0|v3|v5|Q~combout\) # (\B[4]~input_o\) ) ) # ( !\A[4]~input_o\ & ( (\B[4]~input_o\ & \v0|v3|v5|Q~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[4]~input_o\,
	datad => \v0|v3|v5|ALT_INV_Q~combout\,
	dataf => \ALT_INV_A[4]~input_o\,
	combout => \v0|v4|v5|Q~combout\);

-- Location: LABCELL_X24_Y1_N30
\v9|v6|v3|v5|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \v9|v6|v3|v5|Q~0_combout\ = ( !\S[0]~input_o\ & ( (!\S[2]~input_o\ & ((!\S[1]~input_o\ & (!\B[5]~input_o\ $ (!\A[5]~input_o\ $ (\v0|v4|v5|Q~combout\)))) # (\S[1]~input_o\ & (\B[5]~input_o\ & (\A[5]~input_o\))))) # (\S[2]~input_o\ & (((\S[1]~input_o\ & 
-- (!\B[5]~input_o\ $ (!\A[5]~input_o\)))))) ) ) # ( \S[0]~input_o\ & ( (!\S[1]~input_o\ & (!\A[5]~input_o\ $ (((!\S[2]~input_o\ & (!\B[5]~input_o\ $ (!\v2|v4|v5|Q~combout\))))))) # (\S[1]~input_o\ & ((!\S[2]~input_o\ $ (((!\B[5]~input_o\ & 
-- !\A[5]~input_o\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0110100100000000100101101100110000010001011001100111011110001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[5]~input_o\,
	datab => \ALT_INV_A[5]~input_o\,
	datac => \v2|v4|v5|ALT_INV_Q~combout\,
	datad => \ALT_INV_S[2]~input_o\,
	datae => \ALT_INV_S[0]~input_o\,
	dataf => \ALT_INV_S[1]~input_o\,
	datag => \v0|v4|v5|ALT_INV_Q~combout\,
	combout => \v9|v6|v3|v5|Q~0_combout\);

-- Location: IOIBUF_X26_Y0_N41
\B[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: IOIBUF_X8_Y0_N52
\A[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: LABCELL_X24_Y1_N0
\v4|v5|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \v4|v5|Q~0_combout\ = (\A[5]~input_o\ & !\B[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000110000001100000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[5]~input_o\,
	datac => \ALT_INV_B[5]~input_o\,
	combout => \v4|v5|Q~0_combout\);

-- Location: LABCELL_X24_Y1_N39
\v0|v5|v1|v3|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \v0|v5|v1|v3|Q~0_combout\ = !\B[5]~input_o\ $ (!\A[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[5]~input_o\,
	datab => \ALT_INV_A[5]~input_o\,
	combout => \v0|v5|v1|v3|Q~0_combout\);

-- Location: LABCELL_X24_Y1_N12
\v2|v5|v4|Q\ : cyclonev_lcell_comb
-- Equation(s):
-- \v2|v5|v4|Q~combout\ = ( \A[3]~input_o\ & ( \v2|v2|v5|Q~combout\ & ( (!\v0|v5|v1|v3|Q~0_combout\ & ((!\B[4]~input_o\) # (\A[4]~input_o\))) ) ) ) # ( !\A[3]~input_o\ & ( \v2|v2|v5|Q~combout\ & ( (!\v0|v5|v1|v3|Q~0_combout\ & ((!\A[4]~input_o\ & 
-- (!\B[4]~input_o\ & !\B[3]~input_o\)) # (\A[4]~input_o\ & ((!\B[4]~input_o\) # (!\B[3]~input_o\))))) ) ) ) # ( \A[3]~input_o\ & ( !\v2|v2|v5|Q~combout\ & ( (!\v0|v5|v1|v3|Q~0_combout\ & ((!\A[4]~input_o\ & (!\B[4]~input_o\ & !\B[3]~input_o\)) # 
-- (\A[4]~input_o\ & ((!\B[4]~input_o\) # (!\B[3]~input_o\))))) ) ) ) # ( !\A[3]~input_o\ & ( !\v2|v2|v5|Q~combout\ & ( (\A[4]~input_o\ & (!\B[4]~input_o\ & !\v0|v5|v1|v3|Q~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000000000110101000000000011010100000000001101110100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[4]~input_o\,
	datab => \ALT_INV_B[4]~input_o\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \v0|v5|v1|v3|ALT_INV_Q~0_combout\,
	datae => \ALT_INV_A[3]~input_o\,
	dataf => \v2|v2|v5|ALT_INV_Q~combout\,
	combout => \v2|v5|v4|Q~combout\);

-- Location: MLABCELL_X25_Y1_N45
\v2|v5|v5|Q\ : cyclonev_lcell_comb
-- Equation(s):
-- \v2|v5|v5|Q~combout\ = (\v2|v5|v4|Q~combout\) # (\v4|v5|Q~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010111111111010101011111111101010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|v5|ALT_INV_Q~0_combout\,
	datad => \v2|v5|v4|ALT_INV_Q~combout\,
	combout => \v2|v5|v5|Q~combout\);

-- Location: LABCELL_X24_Y1_N36
\v4|v5|Q~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \v4|v5|Q~1_combout\ = (\B[5]~input_o\ & \A[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[5]~input_o\,
	datab => \ALT_INV_A[5]~input_o\,
	combout => \v4|v5|Q~1_combout\);

-- Location: LABCELL_X24_Y1_N18
\v0|v5|v4|Q\ : cyclonev_lcell_comb
-- Equation(s):
-- \v0|v5|v4|Q~combout\ = ( \v0|v2|v5|Q~combout\ & ( \B[3]~input_o\ & ( (\v0|v5|v1|v3|Q~0_combout\ & ((\B[4]~input_o\) # (\A[4]~input_o\))) ) ) ) # ( !\v0|v2|v5|Q~combout\ & ( \B[3]~input_o\ & ( (\v0|v5|v1|v3|Q~0_combout\ & ((!\A[4]~input_o\ & 
-- (\B[4]~input_o\ & \A[3]~input_o\)) # (\A[4]~input_o\ & ((\A[3]~input_o\) # (\B[4]~input_o\))))) ) ) ) # ( \v0|v2|v5|Q~combout\ & ( !\B[3]~input_o\ & ( (\v0|v5|v1|v3|Q~0_combout\ & ((!\A[4]~input_o\ & (\B[4]~input_o\ & \A[3]~input_o\)) # (\A[4]~input_o\ & 
-- ((\A[3]~input_o\) # (\B[4]~input_o\))))) ) ) ) # ( !\v0|v2|v5|Q~combout\ & ( !\B[3]~input_o\ & ( (\A[4]~input_o\ & (\B[4]~input_o\ & \v0|v5|v1|v3|Q~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001011100000000000101110000000001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[4]~input_o\,
	datab => \ALT_INV_B[4]~input_o\,
	datac => \ALT_INV_A[3]~input_o\,
	datad => \v0|v5|v1|v3|ALT_INV_Q~0_combout\,
	datae => \v0|v2|v5|ALT_INV_Q~combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \v0|v5|v4|Q~combout\);

-- Location: LABCELL_X24_Y1_N57
\v0|v5|v5|Q\ : cyclonev_lcell_comb
-- Equation(s):
-- \v0|v5|v5|Q~combout\ = ( \v0|v5|v4|Q~combout\ ) # ( !\v0|v5|v4|Q~combout\ & ( \v4|v5|Q~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \v4|v5|ALT_INV_Q~1_combout\,
	dataf => \v0|v5|v4|ALT_INV_Q~combout\,
	combout => \v0|v5|v5|Q~combout\);

-- Location: MLABCELL_X25_Y1_N36
\v9|v6|v3|v6|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \v9|v6|v3|v6|Q~0_combout\ = ( !\S[0]~input_o\ & ( (!\S[2]~input_o\ & ((!\S[1]~input_o\ & (!\B[6]~input_o\ $ (!\A[6]~input_o\ $ (\v0|v5|v5|Q~combout\)))) # (\S[1]~input_o\ & (\B[6]~input_o\ & (\A[6]~input_o\))))) # (\S[2]~input_o\ & (((\S[1]~input_o\ & 
-- (!\B[6]~input_o\ $ (!\A[6]~input_o\)))))) ) ) # ( \S[0]~input_o\ & ( (!\S[1]~input_o\ & (!\A[6]~input_o\ $ (((!\S[2]~input_o\ & (!\B[6]~input_o\ $ (!\v2|v5|v5|Q~combout\))))))) # (\S[1]~input_o\ & ((!\S[2]~input_o\ $ (((!\B[6]~input_o\ & 
-- !\A[6]~input_o\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0110100100000000100101101100110000010001011001100111011110001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[6]~input_o\,
	datab => \ALT_INV_A[6]~input_o\,
	datac => \v2|v5|v5|ALT_INV_Q~combout\,
	datad => \ALT_INV_S[2]~input_o\,
	datae => \ALT_INV_S[0]~input_o\,
	dataf => \ALT_INV_S[1]~input_o\,
	datag => \v0|v5|v5|ALT_INV_Q~combout\,
	combout => \v9|v6|v3|v6|Q~0_combout\);

-- Location: IOIBUF_X8_Y0_N35
\A[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: MLABCELL_X25_Y1_N42
\v2|v6|v5|Q\ : cyclonev_lcell_comb
-- Equation(s):
-- \v2|v6|v5|Q~combout\ = (!\A[6]~input_o\ & (!\B[6]~input_o\ & \v2|v5|v5|Q~combout\)) # (\A[6]~input_o\ & ((!\B[6]~input_o\) # (\v2|v5|v5|Q~combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000011110011001100001111001100110000111100110011000011110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[6]~input_o\,
	datac => \ALT_INV_B[6]~input_o\,
	datad => \v2|v5|v5|ALT_INV_Q~combout\,
	combout => \v2|v6|v5|Q~combout\);

-- Location: IOIBUF_X6_Y0_N35
\B[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: MLABCELL_X25_Y1_N51
\v0|v6|v5|Q\ : cyclonev_lcell_comb
-- Equation(s):
-- \v0|v6|v5|Q~combout\ = ( \v0|v5|v5|Q~combout\ & ( \B[6]~input_o\ ) ) # ( !\v0|v5|v5|Q~combout\ & ( \B[6]~input_o\ & ( \A[6]~input_o\ ) ) ) # ( \v0|v5|v5|Q~combout\ & ( !\B[6]~input_o\ & ( \A[6]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[6]~input_o\,
	datae => \v0|v5|v5|ALT_INV_Q~combout\,
	dataf => \ALT_INV_B[6]~input_o\,
	combout => \v0|v6|v5|Q~combout\);

-- Location: MLABCELL_X25_Y1_N33
\v9|v6|v3|v7|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \v9|v6|v3|v7|Q~0_combout\ = ( !\S[0]~input_o\ & ( (!\S[1]~input_o\ & (!\S[2]~input_o\ & (!\A[7]~input_o\ $ (!\v0|v6|v5|Q~combout\ $ (\B[7]~input_o\))))) # (\S[1]~input_o\ & ((!\A[7]~input_o\ & (((\S[2]~input_o\ & \B[7]~input_o\)))) # (\A[7]~input_o\ & 
-- ((!\S[2]~input_o\ $ (!\B[7]~input_o\)))))) ) ) # ( \S[0]~input_o\ & ( (!\S[1]~input_o\ & (!\A[7]~input_o\ $ (((!\S[2]~input_o\ & (!\v2|v6|v5|Q~combout\ $ (!\B[7]~input_o\))))))) # (\S[1]~input_o\ & ((!\S[2]~input_o\ $ (((!\A[7]~input_o\ & 
-- !\B[7]~input_o\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0010100000010001100100111100110010010011010001000111110110001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_S[1]~input_o\,
	datab => \ALT_INV_A[7]~input_o\,
	datac => \v2|v6|v5|ALT_INV_Q~combout\,
	datad => \ALT_INV_S[2]~input_o\,
	datae => \ALT_INV_S[0]~input_o\,
	dataf => \ALT_INV_B[7]~input_o\,
	datag => \v0|v6|v5|ALT_INV_Q~combout\,
	combout => \v9|v6|v3|v7|Q~0_combout\);

-- Location: IOIBUF_X28_Y0_N35
\A[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

-- Location: MLABCELL_X25_Y1_N54
\v2|v7|v5|Q\ : cyclonev_lcell_comb
-- Equation(s):
-- \v2|v7|v5|Q~combout\ = ( \A[7]~input_o\ & ( \B[6]~input_o\ & ( (!\B[7]~input_o\) # ((\A[6]~input_o\ & ((\v4|v5|Q~0_combout\) # (\v2|v5|v4|Q~combout\)))) ) ) ) # ( !\A[7]~input_o\ & ( \B[6]~input_o\ & ( (!\B[7]~input_o\ & (\A[6]~input_o\ & 
-- ((\v4|v5|Q~0_combout\) # (\v2|v5|v4|Q~combout\)))) ) ) ) # ( \A[7]~input_o\ & ( !\B[6]~input_o\ & ( ((!\B[7]~input_o\) # ((\A[6]~input_o\) # (\v4|v5|Q~0_combout\))) # (\v2|v5|v4|Q~combout\) ) ) ) # ( !\A[7]~input_o\ & ( !\B[6]~input_o\ & ( 
-- (!\B[7]~input_o\ & (((\A[6]~input_o\) # (\v4|v5|Q~0_combout\)) # (\v2|v5|v4|Q~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110011001100110111111111111100000000010011001100110011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v2|v5|v4|ALT_INV_Q~combout\,
	datab => \ALT_INV_B[7]~input_o\,
	datac => \v4|v5|ALT_INV_Q~0_combout\,
	datad => \ALT_INV_A[6]~input_o\,
	datae => \ALT_INV_A[7]~input_o\,
	dataf => \ALT_INV_B[6]~input_o\,
	combout => \v2|v7|v5|Q~combout\);

-- Location: IOIBUF_X28_Y0_N52
\B[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

-- Location: LABCELL_X24_Y1_N24
\v0|v7|v5|Q\ : cyclonev_lcell_comb
-- Equation(s):
-- \v0|v7|v5|Q~combout\ = ( \v4|v5|Q~1_combout\ & ( \v0|v5|v4|Q~combout\ & ( (!\B[7]~input_o\ & (\A[7]~input_o\ & ((\B[6]~input_o\) # (\A[6]~input_o\)))) # (\B[7]~input_o\ & (((\B[6]~input_o\) # (\A[7]~input_o\)) # (\A[6]~input_o\))) ) ) ) # ( 
-- !\v4|v5|Q~1_combout\ & ( \v0|v5|v4|Q~combout\ & ( (!\B[7]~input_o\ & (\A[7]~input_o\ & ((\B[6]~input_o\) # (\A[6]~input_o\)))) # (\B[7]~input_o\ & (((\B[6]~input_o\) # (\A[7]~input_o\)) # (\A[6]~input_o\))) ) ) ) # ( \v4|v5|Q~1_combout\ & ( 
-- !\v0|v5|v4|Q~combout\ & ( (!\B[7]~input_o\ & (\A[7]~input_o\ & ((\B[6]~input_o\) # (\A[6]~input_o\)))) # (\B[7]~input_o\ & (((\B[6]~input_o\) # (\A[7]~input_o\)) # (\A[6]~input_o\))) ) ) ) # ( !\v4|v5|Q~1_combout\ & ( !\v0|v5|v4|Q~combout\ & ( 
-- (!\B[7]~input_o\ & (\A[6]~input_o\ & (\A[7]~input_o\ & \B[6]~input_o\))) # (\B[7]~input_o\ & (((\A[6]~input_o\ & \B[6]~input_o\)) # (\A[7]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100010111000101110011111100010111001111110001011100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[6]~input_o\,
	datab => \ALT_INV_B[7]~input_o\,
	datac => \ALT_INV_A[7]~input_o\,
	datad => \ALT_INV_B[6]~input_o\,
	datae => \v4|v5|ALT_INV_Q~1_combout\,
	dataf => \v0|v5|v4|ALT_INV_Q~combout\,
	combout => \v0|v7|v5|Q~combout\);

-- Location: MLABCELL_X28_Y1_N12
\v9|v6|v3|v8|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \v9|v6|v3|v8|Q~0_combout\ = ( !\S[0]~input_o\ & ( (!\S[1]~input_o\ & (!\S[2]~input_o\ & (!\A[8]~input_o\ $ (!\v0|v7|v5|Q~combout\ $ (\B[8]~input_o\))))) # (\S[1]~input_o\ & ((!\A[8]~input_o\ & (((\S[2]~input_o\ & \B[8]~input_o\)))) # (\A[8]~input_o\ & 
-- ((!\S[2]~input_o\ $ (!\B[8]~input_o\)))))) ) ) # ( \S[0]~input_o\ & ( (!\S[1]~input_o\ & (!\A[8]~input_o\ $ (((!\S[2]~input_o\ & (!\v2|v7|v5|Q~combout\ $ (!\B[8]~input_o\))))))) # (\S[1]~input_o\ & ((!\S[2]~input_o\ $ (((!\A[8]~input_o\ & 
-- !\B[8]~input_o\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0100100000010001100101011010101010010101001000100111101110001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[8]~input_o\,
	datab => \ALT_INV_S[1]~input_o\,
	datac => \v2|v7|v5|ALT_INV_Q~combout\,
	datad => \ALT_INV_S[2]~input_o\,
	datae => \ALT_INV_S[0]~input_o\,
	dataf => \ALT_INV_B[8]~input_o\,
	datag => \v0|v7|v5|ALT_INV_Q~combout\,
	combout => \v9|v6|v3|v8|Q~0_combout\);

-- Location: IOIBUF_X28_Y0_N18
\B[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(9),
	o => \B[9]~input_o\);

-- Location: IOIBUF_X26_Y0_N75
\A[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

-- Location: MLABCELL_X28_Y1_N18
\v2|v8|v5|Q\ : cyclonev_lcell_comb
-- Equation(s):
-- \v2|v8|v5|Q~combout\ = ( \B[8]~input_o\ & ( (\A[8]~input_o\ & \v2|v7|v5|Q~combout\) ) ) # ( !\B[8]~input_o\ & ( (\v2|v7|v5|Q~combout\) # (\A[8]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111010111110101111100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[8]~input_o\,
	datac => \v2|v7|v5|ALT_INV_Q~combout\,
	dataf => \ALT_INV_B[8]~input_o\,
	combout => \v2|v8|v5|Q~combout\);

-- Location: MLABCELL_X28_Y1_N21
\v0|v8|v5|Q\ : cyclonev_lcell_comb
-- Equation(s):
-- \v0|v8|v5|Q~combout\ = ( \B[8]~input_o\ & ( (\v0|v7|v5|Q~combout\) # (\A[8]~input_o\) ) ) # ( !\B[8]~input_o\ & ( (\A[8]~input_o\ & \v0|v7|v5|Q~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010101011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[8]~input_o\,
	datac => \v0|v7|v5|ALT_INV_Q~combout\,
	dataf => \ALT_INV_B[8]~input_o\,
	combout => \v0|v8|v5|Q~combout\);

-- Location: MLABCELL_X28_Y1_N36
\v9|v6|v3|v9|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \v9|v6|v3|v9|Q~0_combout\ = ( !\S[0]~input_o\ & ( (!\S[1]~input_o\ & (!\S[2]~input_o\ & (!\B[9]~input_o\ $ (!\A[9]~input_o\ $ (\v0|v8|v5|Q~combout\))))) # (\S[1]~input_o\ & ((!\B[9]~input_o\ & (\A[9]~input_o\ & ((\S[2]~input_o\)))) # (\B[9]~input_o\ & 
-- (!\A[9]~input_o\ $ (((!\S[2]~input_o\))))))) ) ) # ( \S[0]~input_o\ & ( (!\S[1]~input_o\ & (!\A[9]~input_o\ $ (((!\S[2]~input_o\ & (!\B[9]~input_o\ $ (!\v2|v8|v5|Q~combout\))))))) # (\S[1]~input_o\ & ((!\S[2]~input_o\ $ (((!\B[9]~input_o\ & 
-- !\A[9]~input_o\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0110100100010001100101100111011100000000011001101100110010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[9]~input_o\,
	datab => \ALT_INV_A[9]~input_o\,
	datac => \v2|v8|v5|ALT_INV_Q~combout\,
	datad => \ALT_INV_S[1]~input_o\,
	datae => \ALT_INV_S[0]~input_o\,
	dataf => \ALT_INV_S[2]~input_o\,
	datag => \v0|v8|v5|ALT_INV_Q~combout\,
	combout => \v9|v6|v3|v9|Q~0_combout\);

-- Location: IOIBUF_X26_Y0_N92
\B[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(10),
	o => \B[10]~input_o\);

-- Location: IOIBUF_X26_Y0_N58
\A[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

-- Location: MLABCELL_X28_Y1_N54
\v2|v9|v5|Q\ : cyclonev_lcell_comb
-- Equation(s):
-- \v2|v9|v5|Q~combout\ = ( \B[8]~input_o\ & ( (!\B[9]~input_o\ & (((\v2|v7|v5|Q~combout\ & \A[8]~input_o\)) # (\A[9]~input_o\))) # (\B[9]~input_o\ & (\A[9]~input_o\ & (\v2|v7|v5|Q~combout\ & \A[8]~input_o\))) ) ) # ( !\B[8]~input_o\ & ( (!\B[9]~input_o\ & 
-- (((\A[8]~input_o\) # (\v2|v7|v5|Q~combout\)) # (\A[9]~input_o\))) # (\B[9]~input_o\ & (\A[9]~input_o\ & ((\A[8]~input_o\) # (\v2|v7|v5|Q~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101110111011001010111011101100100010001010110010001000101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[9]~input_o\,
	datab => \ALT_INV_A[9]~input_o\,
	datac => \v2|v7|v5|ALT_INV_Q~combout\,
	datad => \ALT_INV_A[8]~input_o\,
	dataf => \ALT_INV_B[8]~input_o\,
	combout => \v2|v9|v5|Q~combout\);

-- Location: MLABCELL_X28_Y1_N57
\v0|v9|v5|Q\ : cyclonev_lcell_comb
-- Equation(s):
-- \v0|v9|v5|Q~combout\ = ( \B[8]~input_o\ & ( (!\B[9]~input_o\ & (\A[9]~input_o\ & ((\A[8]~input_o\) # (\v0|v7|v5|Q~combout\)))) # (\B[9]~input_o\ & (((\A[8]~input_o\) # (\v0|v7|v5|Q~combout\)) # (\A[9]~input_o\))) ) ) # ( !\B[8]~input_o\ & ( 
-- (!\B[9]~input_o\ & (\A[9]~input_o\ & (\v0|v7|v5|Q~combout\ & \A[8]~input_o\))) # (\B[9]~input_o\ & (((\v0|v7|v5|Q~combout\ & \A[8]~input_o\)) # (\A[9]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010111000100010001011100010111011101110001011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[9]~input_o\,
	datab => \ALT_INV_A[9]~input_o\,
	datac => \v0|v7|v5|ALT_INV_Q~combout\,
	datad => \ALT_INV_A[8]~input_o\,
	dataf => \ALT_INV_B[8]~input_o\,
	combout => \v0|v9|v5|Q~combout\);

-- Location: MLABCELL_X28_Y1_N30
\v9|v6|v3|v10|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \v9|v6|v3|v10|Q~0_combout\ = ( !\S[0]~input_o\ & ( (!\S[1]~input_o\ & (!\S[2]~input_o\ & (!\B[10]~input_o\ $ (!\A[10]~input_o\ $ (\v0|v9|v5|Q~combout\))))) # (\S[1]~input_o\ & ((!\B[10]~input_o\ & (\A[10]~input_o\ & ((\S[2]~input_o\)))) # (\B[10]~input_o\ 
-- & (!\A[10]~input_o\ $ (((!\S[2]~input_o\))))))) ) ) # ( \S[0]~input_o\ & ( (!\S[1]~input_o\ & (!\A[10]~input_o\ $ (((!\S[2]~input_o\ & (!\B[10]~input_o\ $ (!\v2|v9|v5|Q~combout\))))))) # (\S[1]~input_o\ & ((!\S[2]~input_o\ $ (((!\B[10]~input_o\ & 
-- !\A[10]~input_o\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0110100100010001100101100111011100000000011001101100110010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[10]~input_o\,
	datab => \ALT_INV_A[10]~input_o\,
	datac => \v2|v9|v5|ALT_INV_Q~combout\,
	datad => \ALT_INV_S[1]~input_o\,
	datae => \ALT_INV_S[0]~input_o\,
	dataf => \ALT_INV_S[2]~input_o\,
	datag => \v0|v9|v5|ALT_INV_Q~combout\,
	combout => \v9|v6|v3|v10|Q~0_combout\);

-- Location: IOIBUF_X34_Y0_N41
\B[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(11),
	o => \B[11]~input_o\);

-- Location: IOIBUF_X50_Y0_N58
\A[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(11),
	o => \A[11]~input_o\);

-- Location: MLABCELL_X28_Y1_N45
\v0|v10|v1|v1|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \v0|v10|v1|v1|Q~0_combout\ = ( \A[10]~input_o\ & ( !\B[10]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_A[10]~input_o\,
	dataf => \ALT_INV_B[10]~input_o\,
	combout => \v0|v10|v1|v1|Q~0_combout\);

-- Location: MLABCELL_X28_Y1_N0
\v0|v10|v1|v3|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \v0|v10|v1|v3|Q~0_combout\ = ( !\A[10]~input_o\ & ( \B[10]~input_o\ ) ) # ( \A[10]~input_o\ & ( !\B[10]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_A[10]~input_o\,
	dataf => \ALT_INV_B[10]~input_o\,
	combout => \v0|v10|v1|v3|Q~0_combout\);

-- Location: MLABCELL_X28_Y1_N6
\v2|v10|v4|Q\ : cyclonev_lcell_comb
-- Equation(s):
-- \v2|v10|v4|Q~combout\ = ( \A[8]~input_o\ & ( \B[8]~input_o\ & ( (!\v0|v10|v1|v3|Q~0_combout\ & ((!\B[9]~input_o\ & ((\A[9]~input_o\) # (\v2|v7|v5|Q~combout\))) # (\B[9]~input_o\ & (\v2|v7|v5|Q~combout\ & \A[9]~input_o\)))) ) ) ) # ( !\A[8]~input_o\ & ( 
-- \B[8]~input_o\ & ( (!\B[9]~input_o\ & (!\v0|v10|v1|v3|Q~0_combout\ & \A[9]~input_o\)) ) ) ) # ( \A[8]~input_o\ & ( !\B[8]~input_o\ & ( (!\v0|v10|v1|v3|Q~0_combout\ & ((!\B[9]~input_o\) # (\A[9]~input_o\))) ) ) ) # ( !\A[8]~input_o\ & ( !\B[8]~input_o\ & ( 
-- (!\v0|v10|v1|v3|Q~0_combout\ & ((!\B[9]~input_o\ & ((\A[9]~input_o\) # (\v2|v7|v5|Q~combout\))) # (\B[9]~input_o\ & (\v2|v7|v5|Q~combout\ & \A[9]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000010110000101000001111000000000000101000000010000010110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[9]~input_o\,
	datab => \v2|v7|v5|ALT_INV_Q~combout\,
	datac => \v0|v10|v1|v3|ALT_INV_Q~0_combout\,
	datad => \ALT_INV_A[9]~input_o\,
	datae => \ALT_INV_A[8]~input_o\,
	dataf => \ALT_INV_B[8]~input_o\,
	combout => \v2|v10|v4|Q~combout\);

-- Location: MLABCELL_X34_Y1_N24
\v2|v10|v5|Q\ : cyclonev_lcell_comb
-- Equation(s):
-- \v2|v10|v5|Q~combout\ = ( \v2|v10|v4|Q~combout\ ) # ( !\v2|v10|v4|Q~combout\ & ( \v0|v10|v1|v1|Q~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \v0|v10|v1|v1|ALT_INV_Q~0_combout\,
	dataf => \v2|v10|v4|ALT_INV_Q~combout\,
	combout => \v2|v10|v5|Q~combout\);

-- Location: MLABCELL_X28_Y1_N48
\v0|v10|v4|Q\ : cyclonev_lcell_comb
-- Equation(s):
-- \v0|v10|v4|Q~combout\ = ( \A[8]~input_o\ & ( \B[8]~input_o\ & ( (\v0|v10|v1|v3|Q~0_combout\ & ((\A[9]~input_o\) # (\B[9]~input_o\))) ) ) ) # ( !\A[8]~input_o\ & ( \B[8]~input_o\ & ( (\v0|v10|v1|v3|Q~0_combout\ & ((!\B[9]~input_o\ & (\v0|v7|v5|Q~combout\ & 
-- \A[9]~input_o\)) # (\B[9]~input_o\ & ((\A[9]~input_o\) # (\v0|v7|v5|Q~combout\))))) ) ) ) # ( \A[8]~input_o\ & ( !\B[8]~input_o\ & ( (\v0|v10|v1|v3|Q~0_combout\ & ((!\B[9]~input_o\ & (\v0|v7|v5|Q~combout\ & \A[9]~input_o\)) # (\B[9]~input_o\ & 
-- ((\A[9]~input_o\) # (\v0|v7|v5|Q~combout\))))) ) ) ) # ( !\A[8]~input_o\ & ( !\B[8]~input_o\ & ( (\B[9]~input_o\ & (\v0|v10|v1|v3|Q~0_combout\ & \A[9]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000010000011100000001000001110000010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[9]~input_o\,
	datab => \v0|v7|v5|ALT_INV_Q~combout\,
	datac => \v0|v10|v1|v3|ALT_INV_Q~0_combout\,
	datad => \ALT_INV_A[9]~input_o\,
	datae => \ALT_INV_A[8]~input_o\,
	dataf => \ALT_INV_B[8]~input_o\,
	combout => \v0|v10|v4|Q~combout\);

-- Location: LABCELL_X27_Y1_N30
\v0|v10|v1|v1|Q~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \v0|v10|v1|v1|Q~1_combout\ = ( \B[10]~input_o\ & ( \A[10]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[10]~input_o\,
	dataf => \ALT_INV_B[10]~input_o\,
	combout => \v0|v10|v1|v1|Q~1_combout\);

-- Location: MLABCELL_X34_Y1_N27
\v0|v10|v5|Q\ : cyclonev_lcell_comb
-- Equation(s):
-- \v0|v10|v5|Q~combout\ = (\v0|v10|v1|v1|Q~1_combout\) # (\v0|v10|v4|Q~combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111010111110101111101011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v0|v10|v4|ALT_INV_Q~combout\,
	datac => \v0|v10|v1|v1|ALT_INV_Q~1_combout\,
	combout => \v0|v10|v5|Q~combout\);

-- Location: MLABCELL_X34_Y1_N48
\v9|v6|v3|v11|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \v9|v6|v3|v11|Q~0_combout\ = ( !\S[0]~input_o\ & ( (!\S[2]~input_o\ & ((!\S[1]~input_o\ & (!\B[11]~input_o\ $ (!\A[11]~input_o\ $ (\v0|v10|v5|Q~combout\)))) # (\S[1]~input_o\ & (\B[11]~input_o\ & (\A[11]~input_o\))))) # (\S[2]~input_o\ & (((\S[1]~input_o\ 
-- & (!\B[11]~input_o\ $ (!\A[11]~input_o\)))))) ) ) # ( \S[0]~input_o\ & ( (!\S[1]~input_o\ & (!\A[11]~input_o\ $ (((!\S[2]~input_o\ & (!\B[11]~input_o\ $ (!\v2|v10|v5|Q~combout\))))))) # (\S[1]~input_o\ & ((!\S[2]~input_o\ $ (((!\B[11]~input_o\ & 
-- !\A[11]~input_o\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0110100100000000100101101100110000010001011001100111011110001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[11]~input_o\,
	datab => \ALT_INV_A[11]~input_o\,
	datac => \v2|v10|v5|ALT_INV_Q~combout\,
	datad => \ALT_INV_S[2]~input_o\,
	datae => \ALT_INV_S[0]~input_o\,
	dataf => \ALT_INV_S[1]~input_o\,
	datag => \v0|v10|v5|ALT_INV_Q~combout\,
	combout => \v9|v6|v3|v11|Q~0_combout\);

-- Location: MLABCELL_X34_Y1_N0
\v2|v11|v5|Q\ : cyclonev_lcell_comb
-- Equation(s):
-- \v2|v11|v5|Q~combout\ = ( \A[11]~input_o\ & ( (!\B[11]~input_o\) # ((\v0|v10|v1|v1|Q~0_combout\) # (\v2|v10|v4|Q~combout\)) ) ) # ( !\A[11]~input_o\ & ( (!\B[11]~input_o\ & ((\v0|v10|v1|v1|Q~0_combout\) # (\v2|v10|v4|Q~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001010101010001000101010101010111011111111111011101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[11]~input_o\,
	datab => \v2|v10|v4|ALT_INV_Q~combout\,
	datad => \v0|v10|v1|v1|ALT_INV_Q~0_combout\,
	dataf => \ALT_INV_A[11]~input_o\,
	combout => \v2|v11|v5|Q~combout\);

-- Location: IOIBUF_X34_Y0_N58
\A[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(12),
	o => \A[12]~input_o\);

-- Location: IOIBUF_X40_Y0_N1
\B[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(12),
	o => \B[12]~input_o\);

-- Location: MLABCELL_X34_Y1_N3
\v0|v11|v5|Q\ : cyclonev_lcell_comb
-- Equation(s):
-- \v0|v11|v5|Q~combout\ = ( \A[11]~input_o\ & ( ((\v0|v10|v4|Q~combout\) # (\v0|v10|v1|v1|Q~1_combout\)) # (\B[11]~input_o\) ) ) # ( !\A[11]~input_o\ & ( (\B[11]~input_o\ & ((\v0|v10|v4|Q~combout\) # (\v0|v10|v1|v1|Q~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101010101000001010101010101011111111111110101111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[11]~input_o\,
	datac => \v0|v10|v1|v1|ALT_INV_Q~1_combout\,
	datad => \v0|v10|v4|ALT_INV_Q~combout\,
	dataf => \ALT_INV_A[11]~input_o\,
	combout => \v0|v11|v5|Q~combout\);

-- Location: MLABCELL_X34_Y1_N42
\v9|v6|v3|v12|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \v9|v6|v3|v12|Q~0_combout\ = ( !\S[0]~input_o\ & ( (!\S[2]~input_o\ & ((!\S[1]~input_o\ & (!\v0|v11|v5|Q~combout\ $ (!\A[12]~input_o\ $ (\B[12]~input_o\)))) # (\S[1]~input_o\ & (((\A[12]~input_o\ & \B[12]~input_o\)))))) # (\S[2]~input_o\ & (\S[1]~input_o\ 
-- & ((!\A[12]~input_o\ $ (!\B[12]~input_o\))))) ) ) # ( \S[0]~input_o\ & ( (!\S[1]~input_o\ & (!\A[12]~input_o\ $ (((!\S[2]~input_o\ & (!\v2|v11|v5|Q~combout\ $ (!\B[12]~input_o\))))))) # (\S[1]~input_o\ & (!\S[2]~input_o\ $ ((((!\A[12]~input_o\ & 
-- !\B[12]~input_o\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000100010010001110101010010101010010001001010100110111010100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_S[2]~input_o\,
	datab => \ALT_INV_S[1]~input_o\,
	datac => \v2|v11|v5|ALT_INV_Q~combout\,
	datad => \ALT_INV_A[12]~input_o\,
	datae => \ALT_INV_S[0]~input_o\,
	dataf => \ALT_INV_B[12]~input_o\,
	datag => \v0|v11|v5|ALT_INV_Q~combout\,
	combout => \v9|v6|v3|v12|Q~0_combout\);

-- Location: MLABCELL_X34_Y1_N36
\v2|v12|v5|Q\ : cyclonev_lcell_comb
-- Equation(s):
-- \v2|v12|v5|Q~combout\ = ( \v0|v10|v1|v1|Q~0_combout\ & ( \B[12]~input_o\ & ( (\A[12]~input_o\ & ((!\B[11]~input_o\) # (\A[11]~input_o\))) ) ) ) # ( !\v0|v10|v1|v1|Q~0_combout\ & ( \B[12]~input_o\ & ( (\A[12]~input_o\ & ((!\A[11]~input_o\ & 
-- (\v2|v10|v4|Q~combout\ & !\B[11]~input_o\)) # (\A[11]~input_o\ & ((!\B[11]~input_o\) # (\v2|v10|v4|Q~combout\))))) ) ) ) # ( \v0|v10|v1|v1|Q~0_combout\ & ( !\B[12]~input_o\ & ( ((!\B[11]~input_o\) # (\A[12]~input_o\)) # (\A[11]~input_o\) ) ) ) # ( 
-- !\v0|v10|v1|v1|Q~0_combout\ & ( !\B[12]~input_o\ & ( ((!\A[11]~input_o\ & (\v2|v10|v4|Q~combout\ & !\B[11]~input_o\)) # (\A[11]~input_o\ & ((!\B[11]~input_o\) # (\v2|v10|v4|Q~combout\)))) # (\A[12]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000111111111111101011111111100000000011100010000000011110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[11]~input_o\,
	datab => \v2|v10|v4|ALT_INV_Q~combout\,
	datac => \ALT_INV_B[11]~input_o\,
	datad => \ALT_INV_A[12]~input_o\,
	datae => \v0|v10|v1|v1|ALT_INV_Q~0_combout\,
	dataf => \ALT_INV_B[12]~input_o\,
	combout => \v2|v12|v5|Q~combout\);

-- Location: IOIBUF_X34_Y0_N92
\A[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(13),
	o => \A[13]~input_o\);

-- Location: IOIBUF_X40_Y0_N35
\B[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(13),
	o => \B[13]~input_o\);

-- Location: MLABCELL_X34_Y1_N12
\v0|v12|v5|Q\ : cyclonev_lcell_comb
-- Equation(s):
-- \v0|v12|v5|Q~combout\ = ( \v0|v10|v1|v1|Q~1_combout\ & ( \A[11]~input_o\ & ( (\B[12]~input_o\) # (\A[12]~input_o\) ) ) ) # ( !\v0|v10|v1|v1|Q~1_combout\ & ( \A[11]~input_o\ & ( (!\A[12]~input_o\ & (\B[12]~input_o\ & ((\v0|v10|v4|Q~combout\) # 
-- (\B[11]~input_o\)))) # (\A[12]~input_o\ & (((\B[12]~input_o\) # (\v0|v10|v4|Q~combout\)) # (\B[11]~input_o\))) ) ) ) # ( \v0|v10|v1|v1|Q~1_combout\ & ( !\A[11]~input_o\ & ( (!\B[11]~input_o\ & (\A[12]~input_o\ & \B[12]~input_o\)) # (\B[11]~input_o\ & 
-- ((\B[12]~input_o\) # (\A[12]~input_o\))) ) ) ) # ( !\v0|v10|v1|v1|Q~1_combout\ & ( !\A[11]~input_o\ & ( (!\A[12]~input_o\ & (\B[11]~input_o\ & (\v0|v10|v4|Q~combout\ & \B[12]~input_o\))) # (\A[12]~input_o\ & (((\B[11]~input_o\ & \v0|v10|v4|Q~combout\)) # 
-- (\B[12]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100110111000100010111011100010011011111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[11]~input_o\,
	datab => \ALT_INV_A[12]~input_o\,
	datac => \v0|v10|v4|ALT_INV_Q~combout\,
	datad => \ALT_INV_B[12]~input_o\,
	datae => \v0|v10|v1|v1|ALT_INV_Q~1_combout\,
	dataf => \ALT_INV_A[11]~input_o\,
	combout => \v0|v12|v5|Q~combout\);

-- Location: MLABCELL_X34_Y1_N6
\v9|v6|v3|v13|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \v9|v6|v3|v13|Q~0_combout\ = ( !\S[0]~input_o\ & ( (!\S[2]~input_o\ & ((!\S[1]~input_o\ & (!\v0|v12|v5|Q~combout\ $ (!\A[13]~input_o\ $ (\B[13]~input_o\)))) # (\S[1]~input_o\ & (((\A[13]~input_o\ & \B[13]~input_o\)))))) # (\S[2]~input_o\ & (\S[1]~input_o\ 
-- & ((!\A[13]~input_o\ $ (!\B[13]~input_o\))))) ) ) # ( \S[0]~input_o\ & ( (!\S[1]~input_o\ & (!\A[13]~input_o\ $ (((!\S[2]~input_o\ & (!\v2|v12|v5|Q~combout\ $ (!\B[13]~input_o\))))))) # (\S[1]~input_o\ & (!\S[2]~input_o\ $ ((((!\A[13]~input_o\ & 
-- !\B[13]~input_o\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000100010010001110101010010101010010001001010100110111010100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_S[2]~input_o\,
	datab => \ALT_INV_S[1]~input_o\,
	datac => \v2|v12|v5|ALT_INV_Q~combout\,
	datad => \ALT_INV_A[13]~input_o\,
	datae => \ALT_INV_S[0]~input_o\,
	dataf => \ALT_INV_B[13]~input_o\,
	datag => \v0|v12|v5|ALT_INV_Q~combout\,
	combout => \v9|v6|v3|v13|Q~0_combout\);

-- Location: IOIBUF_X40_Y0_N52
\B[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(14),
	o => \B[14]~input_o\);

-- Location: MLABCELL_X34_Y1_N21
\v2|v13|v5|Q\ : cyclonev_lcell_comb
-- Equation(s):
-- \v2|v13|v5|Q~combout\ = (!\B[13]~input_o\ & ((\v2|v12|v5|Q~combout\) # (\A[13]~input_o\))) # (\B[13]~input_o\ & (\A[13]~input_o\ & \v2|v12|v5|Q~combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001010111011001000101011101100100010101110110010001010111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[13]~input_o\,
	datab => \ALT_INV_A[13]~input_o\,
	datad => \v2|v12|v5|ALT_INV_Q~combout\,
	combout => \v2|v13|v5|Q~combout\);

-- Location: IOIBUF_X40_Y0_N18
\A[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(14),
	o => \A[14]~input_o\);

-- Location: MLABCELL_X34_Y1_N18
\v0|v13|v5|Q\ : cyclonev_lcell_comb
-- Equation(s):
-- \v0|v13|v5|Q~combout\ = (!\B[13]~input_o\ & (\A[13]~input_o\ & \v0|v12|v5|Q~combout\)) # (\B[13]~input_o\ & ((\v0|v12|v5|Q~combout\) # (\A[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011100010111000101110001011100010111000101110001011100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[13]~input_o\,
	datab => \ALT_INV_A[13]~input_o\,
	datac => \v0|v12|v5|ALT_INV_Q~combout\,
	combout => \v0|v13|v5|Q~combout\);

-- Location: MLABCELL_X34_Y1_N30
\v9|v6|v3|v14|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \v9|v6|v3|v14|Q~0_combout\ = ( !\S[0]~input_o\ & ( (!\S[2]~input_o\ & ((!\S[1]~input_o\ & (!\B[14]~input_o\ $ (!\v0|v13|v5|Q~combout\ $ (\A[14]~input_o\)))) # (\S[1]~input_o\ & (\B[14]~input_o\ & ((\A[14]~input_o\)))))) # (\S[2]~input_o\ & 
-- (((\S[1]~input_o\ & (!\B[14]~input_o\ $ (!\A[14]~input_o\)))))) ) ) # ( \S[0]~input_o\ & ( (!\S[1]~input_o\ & (!\A[14]~input_o\ $ (((!\S[2]~input_o\ & (!\B[14]~input_o\ $ (!\v2|v13|v5|Q~combout\))))))) # (\S[1]~input_o\ & (!\S[2]~input_o\ $ 
-- (((!\B[14]~input_o\ & ((!\A[14]~input_o\))))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0010100000010001110101110110011010000010011001100010100010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_S[2]~input_o\,
	datab => \ALT_INV_B[14]~input_o\,
	datac => \v2|v13|v5|ALT_INV_Q~combout\,
	datad => \ALT_INV_S[1]~input_o\,
	datae => \ALT_INV_S[0]~input_o\,
	dataf => \ALT_INV_A[14]~input_o\,
	datag => \v0|v13|v5|ALT_INV_Q~combout\,
	combout => \v9|v6|v3|v14|Q~0_combout\);

-- Location: MLABCELL_X34_Y1_N54
\v2|v14|v5|Q\ : cyclonev_lcell_comb
-- Equation(s):
-- \v2|v14|v5|Q~combout\ = ( \A[14]~input_o\ & ( (!\B[14]~input_o\) # ((!\B[13]~input_o\ & ((\v2|v12|v5|Q~combout\) # (\A[13]~input_o\))) # (\B[13]~input_o\ & (\A[13]~input_o\ & \v2|v12|v5|Q~combout\))) ) ) # ( !\A[14]~input_o\ & ( (!\B[14]~input_o\ & 
-- ((!\B[13]~input_o\ & ((\v2|v12|v5|Q~combout\) # (\A[13]~input_o\))) # (\B[13]~input_o\ & (\A[13]~input_o\ & \v2|v12|v5|Q~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101100000000001010110000000011111111001010111111111100101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[13]~input_o\,
	datab => \ALT_INV_A[13]~input_o\,
	datac => \v2|v12|v5|ALT_INV_Q~combout\,
	datad => \ALT_INV_B[14]~input_o\,
	dataf => \ALT_INV_A[14]~input_o\,
	combout => \v2|v14|v5|Q~combout\);

-- Location: IOIBUF_X32_Y0_N18
\B[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(15),
	o => \B[15]~input_o\);

-- Location: MLABCELL_X34_Y1_N57
\v0|v14|v5|Q\ : cyclonev_lcell_comb
-- Equation(s):
-- \v0|v14|v5|Q~combout\ = ( \A[14]~input_o\ & ( ((!\B[13]~input_o\ & (\A[13]~input_o\ & \v0|v12|v5|Q~combout\)) # (\B[13]~input_o\ & ((\v0|v12|v5|Q~combout\) # (\A[13]~input_o\)))) # (\B[14]~input_o\) ) ) # ( !\A[14]~input_o\ & ( (\B[14]~input_o\ & 
-- ((!\B[13]~input_o\ & (\A[13]~input_o\ & \v0|v12|v5|Q~combout\)) # (\B[13]~input_o\ & ((\v0|v12|v5|Q~combout\) # (\A[13]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000111000000010000011100011111011111110001111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[13]~input_o\,
	datab => \ALT_INV_A[13]~input_o\,
	datac => \ALT_INV_B[14]~input_o\,
	datad => \v0|v12|v5|ALT_INV_Q~combout\,
	dataf => \ALT_INV_A[14]~input_o\,
	combout => \v0|v14|v5|Q~combout\);

-- Location: LABCELL_X33_Y1_N6
\v9|v6|v3|v15|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \v9|v6|v3|v15|Q~0_combout\ = ( !\S[0]~input_o\ & ( (!\S[1]~input_o\ & (!\S[2]~input_o\ & (!\v0|v14|v5|Q~combout\ $ (!\B[15]~input_o\ $ (\A[15]~input_o\))))) # (\S[1]~input_o\ & ((!\S[2]~input_o\ & (((\B[15]~input_o\ & \A[15]~input_o\)))) # (\S[2]~input_o\ 
-- & ((!\B[15]~input_o\ $ (!\A[15]~input_o\)))))) ) ) # ( \S[0]~input_o\ & ( (!\S[1]~input_o\ & (!\A[15]~input_o\ $ (((!\S[2]~input_o\ & (!\v2|v14|v5|Q~combout\ $ (!\B[15]~input_o\))))))) # (\S[1]~input_o\ & (!\S[2]~input_o\ $ ((((!\B[15]~input_o\ & 
-- !\A[15]~input_o\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000100010010001101100110110111010010001010011000100110011000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_S[1]~input_o\,
	datab => \ALT_INV_S[2]~input_o\,
	datac => \v2|v14|v5|ALT_INV_Q~combout\,
	datad => \ALT_INV_B[15]~input_o\,
	datae => \ALT_INV_S[0]~input_o\,
	dataf => \ALT_INV_A[15]~input_o\,
	datag => \v0|v14|v5|ALT_INV_Q~combout\,
	combout => \v9|v6|v3|v15|Q~0_combout\);

-- Location: LABCELL_X33_Y1_N30
\Overflow~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Overflow~0_combout\ = ( !\S[0]~input_o\ & ( (!\S[1]~input_o\ & (!\S[2]~input_o\ & ((!\v0|v14|v5|Q~combout\ & (\B[15]~input_o\ & \A[15]~input_o\)) # (\v0|v14|v5|Q~combout\ & ((\A[15]~input_o\) # (\B[15]~input_o\)))))) ) ) # ( \S[0]~input_o\ & ( 
-- (!\S[1]~input_o\ & (!\S[2]~input_o\ & ((!\v2|v14|v5|Q~combout\ & (!\B[15]~input_o\ & \A[15]~input_o\)) # (\v2|v14|v5|Q~combout\ & ((!\B[15]~input_o\) # (\A[15]~input_o\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001000000010000000000000001000100010001000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_S[1]~input_o\,
	datab => \ALT_INV_S[2]~input_o\,
	datac => \v2|v14|v5|ALT_INV_Q~combout\,
	datad => \ALT_INV_B[15]~input_o\,
	datae => \ALT_INV_S[0]~input_o\,
	dataf => \ALT_INV_A[15]~input_o\,
	datag => \v0|v14|v5|ALT_INV_Q~combout\,
	combout => \Overflow~0_combout\);

-- Location: LABCELL_X88_Y62_N0
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


