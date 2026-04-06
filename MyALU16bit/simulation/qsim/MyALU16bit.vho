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

-- DATE "04/06/2026 10:54:59"

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
	Q : BUFFER std_logic_vector(15 DOWNTO 0);
	Overflow : BUFFER std_logic
	);
END MyALU16bit;

-- Design Ports Information
-- Q[0]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[1]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[2]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[3]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[4]	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[5]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[6]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[7]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[8]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[9]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[10]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[11]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[12]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[13]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[14]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[15]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Overflow	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[0]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[2]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[1]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[8]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[9]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[10]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[10]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[11]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[11]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[12]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[12]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[13]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[13]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[14]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[14]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[15]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[15]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \S[1]~input_o\ : std_logic;
SIGNAL \S[2]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \S[0]~input_o\ : std_logic;
SIGNAL \V0|v9|v6|v3|Q~0_combout\ : std_logic;
SIGNAL \V0|v12|Q~0_combout\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \V1|v9|V4|v3|Q~0_combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \V1|v12|Q~1_combout\ : std_logic;
SIGNAL \V1|v12|Q~0_combout\ : std_logic;
SIGNAL \V1|v12|Q~2_combout\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \V2|v9|V4|v3|Q~0_combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \V14|v9|V4|v3|Q~0_combout\ : std_logic;
SIGNAL \V2|v12|Q~1_combout\ : std_logic;
SIGNAL \V2|v12|Q~0_combout\ : std_logic;
SIGNAL \V2|v12|Q~2_combout\ : std_logic;
SIGNAL \V3|v9|V4|v3|Q~0_combout\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \V3|v12|Q~0_combout\ : std_logic;
SIGNAL \V3|v12|Q~1_combout\ : std_logic;
SIGNAL \V3|v12|Q~2_combout\ : std_logic;
SIGNAL \V4|v9|V4|v3|Q~0_combout\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \V4|v12|Q~0_combout\ : std_logic;
SIGNAL \V4|v12|Q~1_combout\ : std_logic;
SIGNAL \V4|v12|Q~2_combout\ : std_logic;
SIGNAL \V5|v9|V4|v3|Q~0_combout\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \V5|v12|Q~0_combout\ : std_logic;
SIGNAL \V5|v12|Q~1_combout\ : std_logic;
SIGNAL \V5|v12|Q~2_combout\ : std_logic;
SIGNAL \V5|v12|Q~3_combout\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \V6|v9|V4|v3|Q~0_combout\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \V6|v12|Q~0_combout\ : std_logic;
SIGNAL \V6|v12|Q~1_combout\ : std_logic;
SIGNAL \V6|v12|Q~2_combout\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \V7|v9|V4|v3|Q~0_combout\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \V7|v12|Q~1_combout\ : std_logic;
SIGNAL \V7|v12|Q~0_combout\ : std_logic;
SIGNAL \V7|v12|Q~2_combout\ : std_logic;
SIGNAL \B[8]~input_o\ : std_logic;
SIGNAL \V8|v9|V4|v3|Q~0_combout\ : std_logic;
SIGNAL \V8|v12|Q~0_combout\ : std_logic;
SIGNAL \V8|v12|Q~1_combout\ : std_logic;
SIGNAL \V8|v12|Q~2_combout\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \B[9]~input_o\ : std_logic;
SIGNAL \V9|v9|V4|v3|Q~0_combout\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \B[10]~input_o\ : std_logic;
SIGNAL \V9|v12|Q~1_combout\ : std_logic;
SIGNAL \V9|v12|Q~0_combout\ : std_logic;
SIGNAL \V9|v12|Q~2_combout\ : std_logic;
SIGNAL \V10|v9|V4|v3|Q~0_combout\ : std_logic;
SIGNAL \B[11]~input_o\ : std_logic;
SIGNAL \V10|v12|Q~1_combout\ : std_logic;
SIGNAL \V10|v12|Q~0_combout\ : std_logic;
SIGNAL \V10|v12|Q~2_combout\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \V11|v9|V4|v3|Q~0_combout\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
SIGNAL \V11|v12|Q~0_combout\ : std_logic;
SIGNAL \V11|v12|Q~1_combout\ : std_logic;
SIGNAL \V11|v12|Q~2_combout\ : std_logic;
SIGNAL \B[12]~input_o\ : std_logic;
SIGNAL \V12|v9|V4|v3|Q~0_combout\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \V12|v12|Q~0_combout\ : std_logic;
SIGNAL \V12|v12|Q~1_combout\ : std_logic;
SIGNAL \V12|v12|Q~2_combout\ : std_logic;
SIGNAL \B[13]~input_o\ : std_logic;
SIGNAL \V13|v9|V4|v3|Q~0_combout\ : std_logic;
SIGNAL \B[14]~input_o\ : std_logic;
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \V13|v12|Q~1_combout\ : std_logic;
SIGNAL \V13|v12|Q~0_combout\ : std_logic;
SIGNAL \V13|v12|Q~2_combout\ : std_logic;
SIGNAL \V14|v9|V4|v3|Q~1_combout\ : std_logic;
SIGNAL \B[15]~input_o\ : std_logic;
SIGNAL \V14|v12|Q~0_combout\ : std_logic;
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \V15|v9|V4|v3|Q~0_combout\ : std_logic;
SIGNAL \V14|v2|v5|Q~combout\ : std_logic;
SIGNAL \V14|v0|v5|Q~combout\ : std_logic;
SIGNAL \V18|Q~0_combout\ : std_logic;
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
SIGNAL \ALT_INV_A[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_S[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_S[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_S[0]~input_o\ : std_logic;
SIGNAL \V18|ALT_INV_Q~0_combout\ : std_logic;
SIGNAL \V14|v0|v5|ALT_INV_Q~combout\ : std_logic;
SIGNAL \V14|v2|v5|ALT_INV_Q~combout\ : std_logic;
SIGNAL \V14|v12|ALT_INV_Q~0_combout\ : std_logic;
SIGNAL \V13|v12|ALT_INV_Q~2_combout\ : std_logic;
SIGNAL \V13|v12|ALT_INV_Q~1_combout\ : std_logic;
SIGNAL \V13|v12|ALT_INV_Q~0_combout\ : std_logic;
SIGNAL \V12|v12|ALT_INV_Q~2_combout\ : std_logic;
SIGNAL \V12|v12|ALT_INV_Q~1_combout\ : std_logic;
SIGNAL \V12|v12|ALT_INV_Q~0_combout\ : std_logic;
SIGNAL \V11|v12|ALT_INV_Q~2_combout\ : std_logic;
SIGNAL \V11|v12|ALT_INV_Q~1_combout\ : std_logic;
SIGNAL \V11|v12|ALT_INV_Q~0_combout\ : std_logic;
SIGNAL \V10|v12|ALT_INV_Q~2_combout\ : std_logic;
SIGNAL \V10|v12|ALT_INV_Q~1_combout\ : std_logic;
SIGNAL \V10|v12|ALT_INV_Q~0_combout\ : std_logic;
SIGNAL \V9|v12|ALT_INV_Q~2_combout\ : std_logic;
SIGNAL \V9|v12|ALT_INV_Q~1_combout\ : std_logic;
SIGNAL \V9|v12|ALT_INV_Q~0_combout\ : std_logic;
SIGNAL \V8|v12|ALT_INV_Q~2_combout\ : std_logic;
SIGNAL \V8|v12|ALT_INV_Q~1_combout\ : std_logic;
SIGNAL \V8|v12|ALT_INV_Q~0_combout\ : std_logic;
SIGNAL \V7|v12|ALT_INV_Q~2_combout\ : std_logic;
SIGNAL \V7|v12|ALT_INV_Q~1_combout\ : std_logic;
SIGNAL \V7|v12|ALT_INV_Q~0_combout\ : std_logic;
SIGNAL \V6|v12|ALT_INV_Q~2_combout\ : std_logic;
SIGNAL \V6|v12|ALT_INV_Q~1_combout\ : std_logic;
SIGNAL \V6|v12|ALT_INV_Q~0_combout\ : std_logic;
SIGNAL \V5|v12|ALT_INV_Q~3_combout\ : std_logic;
SIGNAL \V5|v12|ALT_INV_Q~2_combout\ : std_logic;
SIGNAL \V5|v12|ALT_INV_Q~1_combout\ : std_logic;
SIGNAL \V5|v12|ALT_INV_Q~0_combout\ : std_logic;
SIGNAL \V4|v12|ALT_INV_Q~2_combout\ : std_logic;
SIGNAL \V4|v12|ALT_INV_Q~1_combout\ : std_logic;
SIGNAL \V4|v12|ALT_INV_Q~0_combout\ : std_logic;
SIGNAL \V3|v12|ALT_INV_Q~2_combout\ : std_logic;
SIGNAL \V3|v12|ALT_INV_Q~1_combout\ : std_logic;
SIGNAL \V3|v12|ALT_INV_Q~0_combout\ : std_logic;
SIGNAL \V2|v12|ALT_INV_Q~2_combout\ : std_logic;
SIGNAL \V2|v12|ALT_INV_Q~1_combout\ : std_logic;
SIGNAL \V2|v12|ALT_INV_Q~0_combout\ : std_logic;
SIGNAL \V14|v9|V4|v3|ALT_INV_Q~0_combout\ : std_logic;
SIGNAL \V1|v12|ALT_INV_Q~2_combout\ : std_logic;
SIGNAL \V1|v12|ALT_INV_Q~1_combout\ : std_logic;
SIGNAL \V1|v12|ALT_INV_Q~0_combout\ : std_logic;
SIGNAL \V0|v12|ALT_INV_Q~0_combout\ : std_logic;

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
\ALT_INV_A[0]~input_o\ <= NOT \A[0]~input_o\;
\ALT_INV_S[1]~input_o\ <= NOT \S[1]~input_o\;
\ALT_INV_S[2]~input_o\ <= NOT \S[2]~input_o\;
\ALT_INV_B[0]~input_o\ <= NOT \B[0]~input_o\;
\ALT_INV_S[0]~input_o\ <= NOT \S[0]~input_o\;
\V18|ALT_INV_Q~0_combout\ <= NOT \V18|Q~0_combout\;
\V14|v0|v5|ALT_INV_Q~combout\ <= NOT \V14|v0|v5|Q~combout\;
\V14|v2|v5|ALT_INV_Q~combout\ <= NOT \V14|v2|v5|Q~combout\;
\V14|v12|ALT_INV_Q~0_combout\ <= NOT \V14|v12|Q~0_combout\;
\V13|v12|ALT_INV_Q~2_combout\ <= NOT \V13|v12|Q~2_combout\;
\V13|v12|ALT_INV_Q~1_combout\ <= NOT \V13|v12|Q~1_combout\;
\V13|v12|ALT_INV_Q~0_combout\ <= NOT \V13|v12|Q~0_combout\;
\V12|v12|ALT_INV_Q~2_combout\ <= NOT \V12|v12|Q~2_combout\;
\V12|v12|ALT_INV_Q~1_combout\ <= NOT \V12|v12|Q~1_combout\;
\V12|v12|ALT_INV_Q~0_combout\ <= NOT \V12|v12|Q~0_combout\;
\V11|v12|ALT_INV_Q~2_combout\ <= NOT \V11|v12|Q~2_combout\;
\V11|v12|ALT_INV_Q~1_combout\ <= NOT \V11|v12|Q~1_combout\;
\V11|v12|ALT_INV_Q~0_combout\ <= NOT \V11|v12|Q~0_combout\;
\V10|v12|ALT_INV_Q~2_combout\ <= NOT \V10|v12|Q~2_combout\;
\V10|v12|ALT_INV_Q~1_combout\ <= NOT \V10|v12|Q~1_combout\;
\V10|v12|ALT_INV_Q~0_combout\ <= NOT \V10|v12|Q~0_combout\;
\V9|v12|ALT_INV_Q~2_combout\ <= NOT \V9|v12|Q~2_combout\;
\V9|v12|ALT_INV_Q~1_combout\ <= NOT \V9|v12|Q~1_combout\;
\V9|v12|ALT_INV_Q~0_combout\ <= NOT \V9|v12|Q~0_combout\;
\V8|v12|ALT_INV_Q~2_combout\ <= NOT \V8|v12|Q~2_combout\;
\V8|v12|ALT_INV_Q~1_combout\ <= NOT \V8|v12|Q~1_combout\;
\V8|v12|ALT_INV_Q~0_combout\ <= NOT \V8|v12|Q~0_combout\;
\V7|v12|ALT_INV_Q~2_combout\ <= NOT \V7|v12|Q~2_combout\;
\V7|v12|ALT_INV_Q~1_combout\ <= NOT \V7|v12|Q~1_combout\;
\V7|v12|ALT_INV_Q~0_combout\ <= NOT \V7|v12|Q~0_combout\;
\V6|v12|ALT_INV_Q~2_combout\ <= NOT \V6|v12|Q~2_combout\;
\V6|v12|ALT_INV_Q~1_combout\ <= NOT \V6|v12|Q~1_combout\;
\V6|v12|ALT_INV_Q~0_combout\ <= NOT \V6|v12|Q~0_combout\;
\V5|v12|ALT_INV_Q~3_combout\ <= NOT \V5|v12|Q~3_combout\;
\V5|v12|ALT_INV_Q~2_combout\ <= NOT \V5|v12|Q~2_combout\;
\V5|v12|ALT_INV_Q~1_combout\ <= NOT \V5|v12|Q~1_combout\;
\V5|v12|ALT_INV_Q~0_combout\ <= NOT \V5|v12|Q~0_combout\;
\V4|v12|ALT_INV_Q~2_combout\ <= NOT \V4|v12|Q~2_combout\;
\V4|v12|ALT_INV_Q~1_combout\ <= NOT \V4|v12|Q~1_combout\;
\V4|v12|ALT_INV_Q~0_combout\ <= NOT \V4|v12|Q~0_combout\;
\V3|v12|ALT_INV_Q~2_combout\ <= NOT \V3|v12|Q~2_combout\;
\V3|v12|ALT_INV_Q~1_combout\ <= NOT \V3|v12|Q~1_combout\;
\V3|v12|ALT_INV_Q~0_combout\ <= NOT \V3|v12|Q~0_combout\;
\V2|v12|ALT_INV_Q~2_combout\ <= NOT \V2|v12|Q~2_combout\;
\V2|v12|ALT_INV_Q~1_combout\ <= NOT \V2|v12|Q~1_combout\;
\V2|v12|ALT_INV_Q~0_combout\ <= NOT \V2|v12|Q~0_combout\;
\V14|v9|V4|v3|ALT_INV_Q~0_combout\ <= NOT \V14|v9|V4|v3|Q~0_combout\;
\V1|v12|ALT_INV_Q~2_combout\ <= NOT \V1|v12|Q~2_combout\;
\V1|v12|ALT_INV_Q~1_combout\ <= NOT \V1|v12|Q~1_combout\;
\V1|v12|ALT_INV_Q~0_combout\ <= NOT \V1|v12|Q~0_combout\;
\V0|v12|ALT_INV_Q~0_combout\ <= NOT \V0|v12|Q~0_combout\;

-- Location: IOOBUF_X2_Y0_N93
\Q[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \V0|v9|v6|v3|Q~0_combout\,
	devoe => ww_devoe,
	o => ww_Q(0));

-- Location: IOOBUF_X2_Y0_N42
\Q[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \V1|v9|V4|v3|Q~0_combout\,
	devoe => ww_devoe,
	o => ww_Q(1));

-- Location: IOOBUF_X6_Y0_N2
\Q[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \V2|v9|V4|v3|Q~0_combout\,
	devoe => ww_devoe,
	o => ww_Q(2));

-- Location: IOOBUF_X4_Y0_N19
\Q[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \V3|v9|V4|v3|Q~0_combout\,
	devoe => ww_devoe,
	o => ww_Q(3));

-- Location: IOOBUF_X34_Y0_N76
\Q[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \V4|v9|V4|v3|Q~0_combout\,
	devoe => ww_devoe,
	o => ww_Q(4));

-- Location: IOOBUF_X40_Y0_N19
\Q[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \V5|v9|V4|v3|Q~0_combout\,
	devoe => ww_devoe,
	o => ww_Q(5));

-- Location: IOOBUF_X38_Y0_N2
\Q[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \V6|v9|V4|v3|Q~0_combout\,
	devoe => ww_devoe,
	o => ww_Q(6));

-- Location: IOOBUF_X30_Y0_N19
\Q[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \V7|v9|V4|v3|Q~0_combout\,
	devoe => ww_devoe,
	o => ww_Q(7));

-- Location: IOOBUF_X40_Y0_N2
\Q[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \V8|v9|V4|v3|Q~0_combout\,
	devoe => ww_devoe,
	o => ww_Q(8));

-- Location: IOOBUF_X40_Y0_N53
\Q[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \V9|v9|V4|v3|Q~0_combout\,
	devoe => ww_devoe,
	o => ww_Q(9));

-- Location: IOOBUF_X2_Y0_N76
\Q[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \V10|v9|V4|v3|Q~0_combout\,
	devoe => ww_devoe,
	o => ww_Q(10));

-- Location: IOOBUF_X26_Y0_N59
\Q[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \V11|v9|V4|v3|Q~0_combout\,
	devoe => ww_devoe,
	o => ww_Q(11));

-- Location: IOOBUF_X4_Y0_N53
\Q[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \V12|v9|V4|v3|Q~0_combout\,
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
	i => \V13|v9|V4|v3|Q~0_combout\,
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
	i => \V14|v9|V4|v3|Q~1_combout\,
	devoe => ww_devoe,
	o => ww_Q(14));

-- Location: IOOBUF_X40_Y0_N36
\Q[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \V15|v9|V4|v3|Q~0_combout\,
	devoe => ww_devoe,
	o => ww_Q(15));

-- Location: IOOBUF_X32_Y0_N2
\Overflow~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \V18|ALT_INV_Q~0_combout\,
	devoe => ww_devoe,
	o => ww_Overflow);

-- Location: IOIBUF_X2_Y0_N58
\B[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X28_Y0_N52
\S[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S(1),
	o => \S[1]~input_o\);

-- Location: IOIBUF_X28_Y0_N35
\S[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S(2),
	o => \S[2]~input_o\);

-- Location: IOIBUF_X6_Y0_N18
\A[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X28_Y0_N18
\S[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S(0),
	o => \S[0]~input_o\);

-- Location: LABCELL_X23_Y1_N0
\V0|v9|v6|v3|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \V0|v9|v6|v3|Q~0_combout\ = ( \S[0]~input_o\ & ( (!\B[0]~input_o\ & ((!\S[2]~input_o\ $ (!\A[0]~input_o\)))) # (\B[0]~input_o\ & ((!\S[1]~input_o\ & ((!\A[0]~input_o\))) # (\S[1]~input_o\ & (!\S[2]~input_o\)))) ) ) # ( !\S[0]~input_o\ & ( (!\B[0]~input_o\ 
-- & ((!\S[1]~input_o\ & (!\S[2]~input_o\ $ (!\A[0]~input_o\))) # (\S[1]~input_o\ & (\S[2]~input_o\ & \A[0]~input_o\)))) # (\B[0]~input_o\ & (!\A[0]~input_o\ $ (((\S[1]~input_o\ & !\S[2]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110110010010010011011001001001011110101100000101111010110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_S[1]~input_o\,
	datac => \ALT_INV_S[2]~input_o\,
	datad => \ALT_INV_A[0]~input_o\,
	dataf => \ALT_INV_S[0]~input_o\,
	combout => \V0|v9|v6|v3|Q~0_combout\);

-- Location: LABCELL_X23_Y1_N3
\V0|v12|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \V0|v12|Q~0_combout\ = ( !\S[2]~input_o\ & ( (!\S[1]~input_o\ & ((!\B[0]~input_o\ & ((\S[0]~input_o\))) # (\B[0]~input_o\ & (\A[0]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100000001001000110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_S[1]~input_o\,
	datac => \ALT_INV_A[0]~input_o\,
	datad => \ALT_INV_S[0]~input_o\,
	dataf => \ALT_INV_S[2]~input_o\,
	combout => \V0|v12|Q~0_combout\);

-- Location: IOIBUF_X4_Y0_N35
\A[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: IOIBUF_X8_Y0_N1
\B[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: LABCELL_X23_Y1_N6
\V1|v9|V4|v3|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \V1|v9|V4|v3|Q~0_combout\ = ( \B[1]~input_o\ & ( \S[2]~input_o\ & ( (!\A[1]~input_o\ & ((!\S[1]~input_o\) # (!\S[0]~input_o\))) ) ) ) # ( !\B[1]~input_o\ & ( \S[2]~input_o\ & ( !\A[1]~input_o\ $ (((\S[1]~input_o\ & !\S[0]~input_o\))) ) ) ) # ( 
-- \B[1]~input_o\ & ( !\S[2]~input_o\ & ( (!\S[1]~input_o\ & (!\V0|v12|Q~0_combout\ $ (!\S[0]~input_o\ $ (!\A[1]~input_o\)))) # (\S[1]~input_o\ & (((\A[1]~input_o\) # (\S[0]~input_o\)))) ) ) ) # ( !\B[1]~input_o\ & ( !\S[2]~input_o\ & ( (!\S[1]~input_o\ & 
-- (!\V0|v12|Q~0_combout\ $ (!\S[0]~input_o\ $ (\A[1]~input_o\)))) # (\S[1]~input_o\ & (((\S[0]~input_o\ & \A[1]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100010000111100001110111101111001111001100001111110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \V0|v12|ALT_INV_Q~0_combout\,
	datab => \ALT_INV_S[1]~input_o\,
	datac => \ALT_INV_S[0]~input_o\,
	datad => \ALT_INV_A[1]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_S[2]~input_o\,
	combout => \V1|v9|V4|v3|Q~0_combout\);

-- Location: IOIBUF_X8_Y0_N35
\A[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: LABCELL_X23_Y1_N15
\V1|v12|Q~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \V1|v12|Q~1_combout\ = ( \S[0]~input_o\ & ( (!\B[1]~input_o\ & \A[1]~input_o\) ) ) # ( !\S[0]~input_o\ & ( (\B[1]~input_o\ & \A[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_A[1]~input_o\,
	dataf => \ALT_INV_S[0]~input_o\,
	combout => \V1|v12|Q~1_combout\);

-- Location: LABCELL_X23_Y1_N12
\V1|v12|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \V1|v12|Q~0_combout\ = ( \S[0]~input_o\ & ( !\B[1]~input_o\ $ (\A[1]~input_o\) ) ) # ( !\S[0]~input_o\ & ( !\B[1]~input_o\ $ (!\A[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011010011001100110011001100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_A[1]~input_o\,
	dataf => \ALT_INV_S[0]~input_o\,
	combout => \V1|v12|Q~0_combout\);

-- Location: LABCELL_X23_Y1_N48
\V1|v12|Q~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \V1|v12|Q~2_combout\ = ( \V1|v12|Q~0_combout\ & ( (!\V0|v12|Q~0_combout\ & !\V1|v12|Q~1_combout\) ) ) # ( !\V1|v12|Q~0_combout\ & ( !\V1|v12|Q~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \V0|v12|ALT_INV_Q~0_combout\,
	datad => \V1|v12|ALT_INV_Q~1_combout\,
	dataf => \V1|v12|ALT_INV_Q~0_combout\,
	combout => \V1|v12|Q~2_combout\);

-- Location: IOIBUF_X8_Y0_N52
\B[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: LABCELL_X23_Y1_N54
\V2|v9|V4|v3|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \V2|v9|V4|v3|Q~0_combout\ = ( \B[2]~input_o\ & ( \S[2]~input_o\ & ( (!\A[2]~input_o\ & ((!\S[0]~input_o\) # (!\S[1]~input_o\))) ) ) ) # ( !\B[2]~input_o\ & ( \S[2]~input_o\ & ( !\A[2]~input_o\ $ (((!\S[0]~input_o\ & \S[1]~input_o\))) ) ) ) # ( 
-- \B[2]~input_o\ & ( !\S[2]~input_o\ & ( (!\S[1]~input_o\ & (!\S[0]~input_o\ $ (!\A[2]~input_o\ $ (\V1|v12|Q~2_combout\)))) # (\S[1]~input_o\ & (((\A[2]~input_o\)) # (\S[0]~input_o\))) ) ) ) # ( !\B[2]~input_o\ & ( !\S[2]~input_o\ & ( (!\S[1]~input_o\ & 
-- (!\S[0]~input_o\ $ (!\A[2]~input_o\ $ (!\V1|v12|Q~2_combout\)))) # (\S[1]~input_o\ & (\S[0]~input_o\ & (\A[2]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001011000010001011010010111011111001100011001101100110010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_S[0]~input_o\,
	datab => \ALT_INV_A[2]~input_o\,
	datac => \V1|v12|ALT_INV_Q~2_combout\,
	datad => \ALT_INV_S[1]~input_o\,
	datae => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_S[2]~input_o\,
	combout => \V2|v9|V4|v3|Q~0_combout\);

-- Location: IOIBUF_X6_Y0_N52
\A[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: IOIBUF_X4_Y0_N1
\B[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: LABCELL_X31_Y1_N30
\V14|v9|V4|v3|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \V14|v9|V4|v3|Q~0_combout\ = ( !\S[1]~input_o\ & ( !\S[2]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_S[2]~input_o\,
	dataf => \ALT_INV_S[1]~input_o\,
	combout => \V14|v9|V4|v3|Q~0_combout\);

-- Location: LABCELL_X23_Y1_N33
\V2|v12|Q~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \V2|v12|Q~1_combout\ = ( \A[2]~input_o\ & ( !\S[0]~input_o\ $ (!\B[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001011010010110100101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_S[0]~input_o\,
	datac => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_A[2]~input_o\,
	combout => \V2|v12|Q~1_combout\);

-- Location: LABCELL_X23_Y1_N30
\V2|v12|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \V2|v12|Q~0_combout\ = ( \A[2]~input_o\ & ( !\S[0]~input_o\ $ (\B[2]~input_o\) ) ) # ( !\A[2]~input_o\ & ( !\S[0]~input_o\ $ (!\B[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011010011001100110011001100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_S[0]~input_o\,
	datab => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_A[2]~input_o\,
	combout => \V2|v12|Q~0_combout\);

-- Location: LABCELL_X23_Y1_N36
\V2|v12|Q~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \V2|v12|Q~2_combout\ = ( \V0|v12|Q~0_combout\ & ( \V2|v12|Q~0_combout\ & ( (\V14|v9|V4|v3|Q~0_combout\ & (((\V1|v12|Q~0_combout\) # (\V2|v12|Q~1_combout\)) # (\V1|v12|Q~1_combout\))) ) ) ) # ( !\V0|v12|Q~0_combout\ & ( \V2|v12|Q~0_combout\ & ( 
-- (\V14|v9|V4|v3|Q~0_combout\ & ((\V2|v12|Q~1_combout\) # (\V1|v12|Q~1_combout\))) ) ) ) # ( \V0|v12|Q~0_combout\ & ( !\V2|v12|Q~0_combout\ & ( (\V14|v9|V4|v3|Q~0_combout\ & \V2|v12|Q~1_combout\) ) ) ) # ( !\V0|v12|Q~0_combout\ & ( !\V2|v12|Q~0_combout\ & ( 
-- (\V14|v9|V4|v3|Q~0_combout\ & \V2|v12|Q~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100010101000101010001010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \V14|v9|V4|v3|ALT_INV_Q~0_combout\,
	datab => \V1|v12|ALT_INV_Q~1_combout\,
	datac => \V2|v12|ALT_INV_Q~1_combout\,
	datad => \V1|v12|ALT_INV_Q~0_combout\,
	datae => \V0|v12|ALT_INV_Q~0_combout\,
	dataf => \V2|v12|ALT_INV_Q~0_combout\,
	combout => \V2|v12|Q~2_combout\);

-- Location: LABCELL_X23_Y1_N42
\V3|v9|V4|v3|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \V3|v9|V4|v3|Q~0_combout\ = ( \V2|v12|Q~2_combout\ & ( \S[2]~input_o\ & ( (!\S[0]~input_o\ & (!\A[3]~input_o\ $ (((!\B[3]~input_o\ & \S[1]~input_o\))))) # (\S[0]~input_o\ & (!\A[3]~input_o\ & ((!\B[3]~input_o\) # (!\S[1]~input_o\)))) ) ) ) # ( 
-- !\V2|v12|Q~2_combout\ & ( \S[2]~input_o\ & ( (!\S[0]~input_o\ & (!\A[3]~input_o\ $ (((!\B[3]~input_o\ & \S[1]~input_o\))))) # (\S[0]~input_o\ & (!\A[3]~input_o\ & ((!\B[3]~input_o\) # (!\S[1]~input_o\)))) ) ) ) # ( \V2|v12|Q~2_combout\ & ( !\S[2]~input_o\ 
-- & ( (!\S[0]~input_o\ & ((!\A[3]~input_o\ & (!\B[3]~input_o\ & !\S[1]~input_o\)) # (\A[3]~input_o\ & (\B[3]~input_o\)))) # (\S[0]~input_o\ & ((!\A[3]~input_o\ & (\B[3]~input_o\)) # (\A[3]~input_o\ & ((!\B[3]~input_o\) # (\S[1]~input_o\))))) ) ) ) # ( 
-- !\V2|v12|Q~2_combout\ & ( !\S[2]~input_o\ & ( (!\S[1]~input_o\ & (!\S[0]~input_o\ $ (!\A[3]~input_o\ $ (\B[3]~input_o\)))) # (\S[1]~input_o\ & ((!\S[0]~input_o\ & (\A[3]~input_o\ & \B[3]~input_o\)) # (\S[0]~input_o\ & ((\B[3]~input_o\) # 
-- (\A[3]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100100010111100101100001011111001100011010001100110001101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_S[0]~input_o\,
	datab => \ALT_INV_A[3]~input_o\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \ALT_INV_S[1]~input_o\,
	datae => \V2|v12|ALT_INV_Q~2_combout\,
	dataf => \ALT_INV_S[2]~input_o\,
	combout => \V3|v9|V4|v3|Q~0_combout\);

-- Location: IOIBUF_X30_Y0_N35
\A[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: IOIBUF_X34_Y0_N58
\B[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: LABCELL_X23_Y1_N51
\V3|v12|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \V3|v12|Q~0_combout\ = ( !\S[2]~input_o\ & ( (!\S[1]~input_o\ & (!\B[3]~input_o\ $ (!\A[3]~input_o\ $ (\S[0]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100100000000011010010000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_A[3]~input_o\,
	datac => \ALT_INV_S[0]~input_o\,
	datad => \ALT_INV_S[1]~input_o\,
	dataf => \ALT_INV_S[2]~input_o\,
	combout => \V3|v12|Q~0_combout\);

-- Location: LABCELL_X23_Y1_N18
\V3|v12|Q~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \V3|v12|Q~1_combout\ = ( \A[3]~input_o\ & ( (!\S[2]~input_o\ & (!\S[1]~input_o\ & (!\B[3]~input_o\ $ (!\S[0]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001000100000000000100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_S[2]~input_o\,
	datab => \ALT_INV_S[1]~input_o\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \ALT_INV_S[0]~input_o\,
	dataf => \ALT_INV_A[3]~input_o\,
	combout => \V3|v12|Q~1_combout\);

-- Location: LABCELL_X24_Y1_N33
\V3|v12|Q~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \V3|v12|Q~2_combout\ = ( !\V3|v12|Q~1_combout\ & ( (!\V2|v12|Q~2_combout\) # (!\V3|v12|Q~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111110101010111111111010101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \V2|v12|ALT_INV_Q~2_combout\,
	datad => \V3|v12|ALT_INV_Q~0_combout\,
	dataf => \V3|v12|ALT_INV_Q~1_combout\,
	combout => \V3|v12|Q~2_combout\);

-- Location: LABCELL_X30_Y1_N0
\V4|v9|V4|v3|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \V4|v9|V4|v3|Q~0_combout\ = ( \S[2]~input_o\ & ( \V3|v12|Q~2_combout\ & ( (!\S[0]~input_o\ & (!\A[4]~input_o\ $ (((\S[1]~input_o\ & !\B[4]~input_o\))))) # (\S[0]~input_o\ & (!\A[4]~input_o\ & ((!\S[1]~input_o\) # (!\B[4]~input_o\)))) ) ) ) # ( 
-- !\S[2]~input_o\ & ( \V3|v12|Q~2_combout\ & ( (!\S[1]~input_o\ & (!\S[0]~input_o\ $ (!\A[4]~input_o\ $ (\B[4]~input_o\)))) # (\S[1]~input_o\ & ((!\S[0]~input_o\ & (\A[4]~input_o\ & \B[4]~input_o\)) # (\S[0]~input_o\ & ((\B[4]~input_o\) # 
-- (\A[4]~input_o\))))) ) ) ) # ( \S[2]~input_o\ & ( !\V3|v12|Q~2_combout\ & ( (!\S[0]~input_o\ & (!\A[4]~input_o\ $ (((\S[1]~input_o\ & !\B[4]~input_o\))))) # (\S[0]~input_o\ & (!\A[4]~input_o\ & ((!\S[1]~input_o\) # (!\B[4]~input_o\)))) ) ) ) # ( 
-- !\S[2]~input_o\ & ( !\V3|v12|Q~2_combout\ & ( (!\S[0]~input_o\ & ((!\A[4]~input_o\ & (!\S[1]~input_o\ & !\B[4]~input_o\)) # (\A[4]~input_o\ & ((\B[4]~input_o\))))) # (\S[0]~input_o\ & ((!\A[4]~input_o\ & ((\B[4]~input_o\))) # (\A[4]~input_o\ & 
-- ((!\B[4]~input_o\) # (\S[1]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001000101100111110001101100100001100001100101111100011011001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_S[0]~input_o\,
	datab => \ALT_INV_A[4]~input_o\,
	datac => \ALT_INV_S[1]~input_o\,
	datad => \ALT_INV_B[4]~input_o\,
	datae => \ALT_INV_S[2]~input_o\,
	dataf => \V3|v12|ALT_INV_Q~2_combout\,
	combout => \V4|v9|V4|v3|Q~0_combout\);

-- Location: IOIBUF_X30_Y0_N1
\A[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: IOIBUF_X30_Y0_N52
\B[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: LABCELL_X30_Y1_N6
\V4|v12|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \V4|v12|Q~0_combout\ = ( \B[4]~input_o\ & ( (!\S[1]~input_o\ & (!\S[2]~input_o\ & (!\A[4]~input_o\ $ (\S[0]~input_o\)))) ) ) # ( !\B[4]~input_o\ & ( (!\S[1]~input_o\ & (!\S[2]~input_o\ & (!\A[4]~input_o\ $ (!\S[0]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010100000000000001010000000000010000010000000001000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_S[1]~input_o\,
	datab => \ALT_INV_A[4]~input_o\,
	datac => \ALT_INV_S[0]~input_o\,
	datad => \ALT_INV_S[2]~input_o\,
	dataf => \ALT_INV_B[4]~input_o\,
	combout => \V4|v12|Q~0_combout\);

-- Location: LABCELL_X30_Y1_N9
\V4|v12|Q~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \V4|v12|Q~1_combout\ = ( \B[4]~input_o\ & ( (!\S[1]~input_o\ & (\A[4]~input_o\ & (!\S[0]~input_o\ & !\S[2]~input_o\))) ) ) # ( !\B[4]~input_o\ & ( (!\S[1]~input_o\ & (\A[4]~input_o\ & (\S[0]~input_o\ & !\S[2]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000000000100000000000100000000000000010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_S[1]~input_o\,
	datab => \ALT_INV_A[4]~input_o\,
	datac => \ALT_INV_S[0]~input_o\,
	datad => \ALT_INV_S[2]~input_o\,
	dataf => \ALT_INV_B[4]~input_o\,
	combout => \V4|v12|Q~1_combout\);

-- Location: LABCELL_X30_Y1_N12
\V4|v12|Q~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \V4|v12|Q~2_combout\ = ( !\V4|v12|Q~1_combout\ & ( (!\V4|v12|Q~0_combout\) # (\V3|v12|Q~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100001111111111110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \V3|v12|ALT_INV_Q~2_combout\,
	datad => \V4|v12|ALT_INV_Q~0_combout\,
	dataf => \V4|v12|ALT_INV_Q~1_combout\,
	combout => \V4|v12|Q~2_combout\);

-- Location: LABCELL_X30_Y1_N48
\V5|v9|V4|v3|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \V5|v9|V4|v3|Q~0_combout\ = ( \S[2]~input_o\ & ( \V4|v12|Q~2_combout\ & ( (!\S[1]~input_o\ & (!\A[5]~input_o\)) # (\S[1]~input_o\ & ((!\A[5]~input_o\ & (!\S[0]~input_o\ $ (!\B[5]~input_o\))) # (\A[5]~input_o\ & (!\S[0]~input_o\ & !\B[5]~input_o\)))) ) ) ) 
-- # ( !\S[2]~input_o\ & ( \V4|v12|Q~2_combout\ & ( (!\S[1]~input_o\ & (!\A[5]~input_o\ $ (!\S[0]~input_o\ $ (\B[5]~input_o\)))) # (\S[1]~input_o\ & ((!\A[5]~input_o\ & (\S[0]~input_o\ & \B[5]~input_o\)) # (\A[5]~input_o\ & ((\B[5]~input_o\) # 
-- (\S[0]~input_o\))))) ) ) ) # ( \S[2]~input_o\ & ( !\V4|v12|Q~2_combout\ & ( (!\S[1]~input_o\ & (!\A[5]~input_o\)) # (\S[1]~input_o\ & ((!\A[5]~input_o\ & (!\S[0]~input_o\ $ (!\B[5]~input_o\))) # (\A[5]~input_o\ & (!\S[0]~input_o\ & !\B[5]~input_o\)))) ) ) 
-- ) # ( !\S[2]~input_o\ & ( !\V4|v12|Q~2_combout\ & ( (!\S[1]~input_o\ & (!\A[5]~input_o\ $ (!\S[0]~input_o\ $ (!\B[5]~input_o\)))) # (\S[1]~input_o\ & ((!\A[5]~input_o\ & (\S[0]~input_o\ & \B[5]~input_o\)) # (\A[5]~input_o\ & ((\B[5]~input_o\) # 
-- (\S[0]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000001100111101100111001100100000101001100101111001110011001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_S[1]~input_o\,
	datab => \ALT_INV_A[5]~input_o\,
	datac => \ALT_INV_S[0]~input_o\,
	datad => \ALT_INV_B[5]~input_o\,
	datae => \ALT_INV_S[2]~input_o\,
	dataf => \V4|v12|ALT_INV_Q~2_combout\,
	combout => \V5|v9|V4|v3|Q~0_combout\);

-- Location: IOIBUF_X32_Y0_N52
\A[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: LABCELL_X23_Y1_N21
\V5|v12|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \V5|v12|Q~0_combout\ = ( \B[5]~input_o\ & ( (!\S[2]~input_o\ & (!\S[1]~input_o\ & (!\S[0]~input_o\ $ (\A[5]~input_o\)))) ) ) # ( !\B[5]~input_o\ & ( (!\S[2]~input_o\ & (!\S[1]~input_o\ & (!\S[0]~input_o\ $ (!\A[5]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100010000000000010001000000010000000000010001000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_S[2]~input_o\,
	datab => \ALT_INV_S[1]~input_o\,
	datac => \ALT_INV_S[0]~input_o\,
	datad => \ALT_INV_A[5]~input_o\,
	dataf => \ALT_INV_B[5]~input_o\,
	combout => \V5|v12|Q~0_combout\);

-- Location: LABCELL_X24_Y1_N6
\V5|v12|Q~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \V5|v12|Q~1_combout\ = ( \V5|v12|Q~0_combout\ & ( \V4|v12|Q~1_combout\ ) ) # ( \V5|v12|Q~0_combout\ & ( !\V4|v12|Q~1_combout\ & ( (\V4|v12|Q~0_combout\ & (((\V3|v12|Q~0_combout\ & \V2|v12|Q~2_combout\)) # (\V3|v12|Q~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000011011100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \V3|v12|ALT_INV_Q~0_combout\,
	datab => \V3|v12|ALT_INV_Q~1_combout\,
	datac => \V2|v12|ALT_INV_Q~2_combout\,
	datad => \V4|v12|ALT_INV_Q~0_combout\,
	datae => \V5|v12|ALT_INV_Q~0_combout\,
	dataf => \V4|v12|ALT_INV_Q~1_combout\,
	combout => \V5|v12|Q~1_combout\);

-- Location: LABCELL_X30_Y1_N15
\V5|v12|Q~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \V5|v12|Q~2_combout\ = ( \A[5]~input_o\ & ( (!\S[1]~input_o\ & (!\S[2]~input_o\ & (!\S[0]~input_o\ $ (!\B[5]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100000100000000010000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_S[1]~input_o\,
	datab => \ALT_INV_S[0]~input_o\,
	datac => \ALT_INV_S[2]~input_o\,
	datad => \ALT_INV_B[5]~input_o\,
	dataf => \ALT_INV_A[5]~input_o\,
	combout => \V5|v12|Q~2_combout\);

-- Location: LABCELL_X30_Y1_N27
\V5|v12|Q~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \V5|v12|Q~3_combout\ = ( !\V5|v12|Q~2_combout\ & ( !\V5|v12|Q~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \V5|v12|ALT_INV_Q~1_combout\,
	dataf => \V5|v12|ALT_INV_Q~2_combout\,
	combout => \V5|v12|Q~3_combout\);

-- Location: IOIBUF_X36_Y0_N18
\B[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: LABCELL_X30_Y1_N30
\V6|v9|V4|v3|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \V6|v9|V4|v3|Q~0_combout\ = ( \V5|v12|Q~3_combout\ & ( \B[6]~input_o\ & ( (!\S[1]~input_o\ & (!\A[6]~input_o\ $ (((\S[0]~input_o\ & !\S[2]~input_o\))))) # (\S[1]~input_o\ & (!\S[2]~input_o\ $ (((!\A[6]~input_o\ & !\S[0]~input_o\))))) ) ) ) # ( 
-- !\V5|v12|Q~3_combout\ & ( \B[6]~input_o\ & ( (!\S[0]~input_o\ & ((!\A[6]~input_o\ $ (!\S[2]~input_o\)))) # (\S[0]~input_o\ & ((!\S[1]~input_o\ & (!\A[6]~input_o\)) # (\S[1]~input_o\ & ((!\S[2]~input_o\))))) ) ) ) # ( \V5|v12|Q~3_combout\ & ( 
-- !\B[6]~input_o\ & ( (!\S[1]~input_o\ & (!\A[6]~input_o\ $ (((!\S[0]~input_o\ & !\S[2]~input_o\))))) # (\S[1]~input_o\ & ((!\A[6]~input_o\ & (\S[0]~input_o\ & \S[2]~input_o\)) # (\A[6]~input_o\ & (!\S[0]~input_o\ $ (!\S[2]~input_o\))))) ) ) ) # ( 
-- !\V5|v12|Q~3_combout\ & ( !\B[6]~input_o\ & ( (!\S[0]~input_o\ & ((!\S[1]~input_o\ & (!\A[6]~input_o\)) # (\S[1]~input_o\ & (\A[6]~input_o\ & \S[2]~input_o\)))) # (\S[0]~input_o\ & ((!\A[6]~input_o\ $ (!\S[2]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000001110011100001010011001110000111101110010001001011111001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_S[1]~input_o\,
	datab => \ALT_INV_A[6]~input_o\,
	datac => \ALT_INV_S[0]~input_o\,
	datad => \ALT_INV_S[2]~input_o\,
	datae => \V5|v12|ALT_INV_Q~3_combout\,
	dataf => \ALT_INV_B[6]~input_o\,
	combout => \V6|v9|V4|v3|Q~0_combout\);

-- Location: IOIBUF_X38_Y0_N18
\A[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: LABCELL_X30_Y1_N36
\V6|v12|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \V6|v12|Q~0_combout\ = ( \A[6]~input_o\ & ( (!\S[1]~input_o\ & (!\S[2]~input_o\ & (!\B[6]~input_o\ $ (\S[0]~input_o\)))) ) ) # ( !\A[6]~input_o\ & ( (!\S[1]~input_o\ & (!\S[2]~input_o\ & (!\B[6]~input_o\ $ (!\S[0]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010100000000000001010000000000010000010000000001000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_S[1]~input_o\,
	datab => \ALT_INV_B[6]~input_o\,
	datac => \ALT_INV_S[0]~input_o\,
	datad => \ALT_INV_S[2]~input_o\,
	dataf => \ALT_INV_A[6]~input_o\,
	combout => \V6|v12|Q~0_combout\);

-- Location: LABCELL_X30_Y1_N39
\V6|v12|Q~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \V6|v12|Q~1_combout\ = ( \S[0]~input_o\ & ( (!\S[1]~input_o\ & (!\B[6]~input_o\ & (\A[6]~input_o\ & !\S[2]~input_o\))) ) ) # ( !\S[0]~input_o\ & ( (!\S[1]~input_o\ & (\B[6]~input_o\ & (\A[6]~input_o\ & !\S[2]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000000000100000000000001000000000000000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_S[1]~input_o\,
	datab => \ALT_INV_B[6]~input_o\,
	datac => \ALT_INV_A[6]~input_o\,
	datad => \ALT_INV_S[2]~input_o\,
	dataf => \ALT_INV_S[0]~input_o\,
	combout => \V6|v12|Q~1_combout\);

-- Location: LABCELL_X30_Y1_N24
\V6|v12|Q~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \V6|v12|Q~2_combout\ = (!\V6|v12|Q~1_combout\ & ((!\V6|v12|Q~0_combout\) # (\V5|v12|Q~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000110010001100100011001000110010001100100011001000110010001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \V6|v12|ALT_INV_Q~0_combout\,
	datab => \V6|v12|ALT_INV_Q~1_combout\,
	datac => \V5|v12|ALT_INV_Q~3_combout\,
	combout => \V6|v12|Q~2_combout\);

-- Location: IOIBUF_X36_Y0_N35
\B[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: LABCELL_X30_Y1_N42
\V7|v9|V4|v3|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \V7|v9|V4|v3|Q~0_combout\ = ( \S[2]~input_o\ & ( \B[7]~input_o\ & ( (!\A[7]~input_o\ & ((!\S[1]~input_o\) # (!\S[0]~input_o\))) ) ) ) # ( !\S[2]~input_o\ & ( \B[7]~input_o\ & ( (!\S[1]~input_o\ & (!\A[7]~input_o\ $ (!\V6|v12|Q~2_combout\ $ 
-- (\S[0]~input_o\)))) # (\S[1]~input_o\ & (((\S[0]~input_o\)) # (\A[7]~input_o\))) ) ) ) # ( \S[2]~input_o\ & ( !\B[7]~input_o\ & ( !\A[7]~input_o\ $ (((\S[1]~input_o\ & !\S[0]~input_o\))) ) ) ) # ( !\S[2]~input_o\ & ( !\B[7]~input_o\ & ( (!\S[1]~input_o\ & 
-- (!\A[7]~input_o\ $ (!\V6|v12|Q~2_combout\ $ (!\S[0]~input_o\)))) # (\S[1]~input_o\ & (\A[7]~input_o\ & ((\S[0]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000001000111001100110011100110000111001110101111100110010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_S[1]~input_o\,
	datab => \ALT_INV_A[7]~input_o\,
	datac => \V6|v12|ALT_INV_Q~2_combout\,
	datad => \ALT_INV_S[0]~input_o\,
	datae => \ALT_INV_S[2]~input_o\,
	dataf => \ALT_INV_B[7]~input_o\,
	combout => \V7|v9|V4|v3|Q~0_combout\);

-- Location: IOIBUF_X36_Y0_N1
\A[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

-- Location: LABCELL_X30_Y1_N18
\V7|v12|Q~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \V7|v12|Q~1_combout\ = ( \S[0]~input_o\ & ( (!\B[7]~input_o\ & \A[7]~input_o\) ) ) # ( !\S[0]~input_o\ & ( (\B[7]~input_o\ & \A[7]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[7]~input_o\,
	datab => \ALT_INV_A[7]~input_o\,
	dataf => \ALT_INV_S[0]~input_o\,
	combout => \V7|v12|Q~1_combout\);

-- Location: LABCELL_X30_Y1_N21
\V7|v12|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \V7|v12|Q~0_combout\ = ( \S[0]~input_o\ & ( !\B[7]~input_o\ $ (\A[7]~input_o\) ) ) # ( !\S[0]~input_o\ & ( !\B[7]~input_o\ $ (!\A[7]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011010011001100110011001100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[7]~input_o\,
	datab => \ALT_INV_A[7]~input_o\,
	dataf => \ALT_INV_S[0]~input_o\,
	combout => \V7|v12|Q~0_combout\);

-- Location: LABCELL_X30_Y1_N54
\V7|v12|Q~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \V7|v12|Q~2_combout\ = ( \V6|v12|Q~0_combout\ & ( \V5|v12|Q~2_combout\ & ( (!\V7|v12|Q~1_combout\ & !\V7|v12|Q~0_combout\) ) ) ) # ( !\V6|v12|Q~0_combout\ & ( \V5|v12|Q~2_combout\ & ( (!\V7|v12|Q~1_combout\ & ((!\V7|v12|Q~0_combout\) # 
-- (!\V6|v12|Q~1_combout\))) ) ) ) # ( \V6|v12|Q~0_combout\ & ( !\V5|v12|Q~2_combout\ & ( (!\V7|v12|Q~1_combout\ & ((!\V7|v12|Q~0_combout\) # ((!\V5|v12|Q~1_combout\ & !\V6|v12|Q~1_combout\)))) ) ) ) # ( !\V6|v12|Q~0_combout\ & ( !\V5|v12|Q~2_combout\ & ( 
-- (!\V7|v12|Q~1_combout\ & ((!\V7|v12|Q~0_combout\) # (!\V6|v12|Q~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010100000101010001010000010101010101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \V7|v12|ALT_INV_Q~1_combout\,
	datab => \V5|v12|ALT_INV_Q~1_combout\,
	datac => \V7|v12|ALT_INV_Q~0_combout\,
	datad => \V6|v12|ALT_INV_Q~1_combout\,
	datae => \V6|v12|ALT_INV_Q~0_combout\,
	dataf => \V5|v12|ALT_INV_Q~2_combout\,
	combout => \V7|v12|Q~2_combout\);

-- Location: IOIBUF_X36_Y0_N52
\B[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

-- Location: LABCELL_X31_Y1_N6
\V8|v9|V4|v3|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \V8|v9|V4|v3|Q~0_combout\ = ( \S[0]~input_o\ & ( \B[8]~input_o\ & ( (!\S[1]~input_o\ & (!\A[8]~input_o\ $ (((!\S[2]~input_o\ & \V7|v12|Q~2_combout\))))) # (\S[1]~input_o\ & (((!\S[2]~input_o\)))) ) ) ) # ( !\S[0]~input_o\ & ( \B[8]~input_o\ & ( 
-- !\A[8]~input_o\ $ (((!\S[2]~input_o\ & ((!\V7|v12|Q~2_combout\) # (\S[1]~input_o\))))) ) ) ) # ( \S[0]~input_o\ & ( !\B[8]~input_o\ & ( !\A[8]~input_o\ $ (((!\S[2]~input_o\ & ((!\V7|v12|Q~2_combout\) # (\S[1]~input_o\))))) ) ) ) # ( !\S[0]~input_o\ & ( 
-- !\B[8]~input_o\ & ( (!\S[2]~input_o\ & (!\S[1]~input_o\ & (!\A[8]~input_o\ $ (\V7|v12|Q~2_combout\)))) # (\S[2]~input_o\ & (!\A[8]~input_o\ $ (((\S[1]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010011000010001011010100110011001101010011001101010011011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[8]~input_o\,
	datab => \ALT_INV_S[2]~input_o\,
	datac => \V7|v12|ALT_INV_Q~2_combout\,
	datad => \ALT_INV_S[1]~input_o\,
	datae => \ALT_INV_S[0]~input_o\,
	dataf => \ALT_INV_B[8]~input_o\,
	combout => \V8|v9|V4|v3|Q~0_combout\);

-- Location: LABCELL_X31_Y1_N42
\V8|v12|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \V8|v12|Q~0_combout\ = ( \B[8]~input_o\ & ( !\A[8]~input_o\ $ (\S[0]~input_o\) ) ) # ( !\B[8]~input_o\ & ( !\A[8]~input_o\ $ (!\S[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011010011001100110011001100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[8]~input_o\,
	datab => \ALT_INV_S[0]~input_o\,
	dataf => \ALT_INV_B[8]~input_o\,
	combout => \V8|v12|Q~0_combout\);

-- Location: LABCELL_X31_Y1_N45
\V8|v12|Q~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \V8|v12|Q~1_combout\ = ( \B[8]~input_o\ & ( (\A[8]~input_o\ & !\S[0]~input_o\) ) ) # ( !\B[8]~input_o\ & ( (\A[8]~input_o\ & \S[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000101000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[8]~input_o\,
	datab => \ALT_INV_S[0]~input_o\,
	dataf => \ALT_INV_B[8]~input_o\,
	combout => \V8|v12|Q~1_combout\);

-- Location: MLABCELL_X25_Y1_N0
\V8|v12|Q~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \V8|v12|Q~2_combout\ = ( \V8|v12|Q~1_combout\ & ( \V14|v9|V4|v3|Q~0_combout\ ) ) # ( !\V8|v12|Q~1_combout\ & ( (\V8|v12|Q~0_combout\ & (!\V7|v12|Q~2_combout\ & \V14|v9|V4|v3|Q~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000100000000000100010000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \V8|v12|ALT_INV_Q~0_combout\,
	datab => \V7|v12|ALT_INV_Q~2_combout\,
	datad => \V14|v9|V4|v3|ALT_INV_Q~0_combout\,
	dataf => \V8|v12|ALT_INV_Q~1_combout\,
	combout => \V8|v12|Q~2_combout\);

-- Location: IOIBUF_X32_Y0_N18
\A[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

-- Location: IOIBUF_X38_Y0_N52
\B[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(9),
	o => \B[9]~input_o\);

-- Location: LABCELL_X31_Y1_N18
\V9|v9|V4|v3|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \V9|v9|V4|v3|Q~0_combout\ = ( \S[1]~input_o\ & ( \B[9]~input_o\ & ( !\S[2]~input_o\ $ (((!\S[0]~input_o\ & !\A[9]~input_o\))) ) ) ) # ( !\S[1]~input_o\ & ( \B[9]~input_o\ & ( !\A[9]~input_o\ $ (((!\S[2]~input_o\ & (!\V8|v12|Q~2_combout\ $ 
-- (!\S[0]~input_o\))))) ) ) ) # ( \S[1]~input_o\ & ( !\B[9]~input_o\ & ( (!\S[0]~input_o\ & (\A[9]~input_o\ & \S[2]~input_o\)) # (\S[0]~input_o\ & (!\A[9]~input_o\ $ (!\S[2]~input_o\))) ) ) ) # ( !\S[1]~input_o\ & ( !\B[9]~input_o\ & ( !\A[9]~input_o\ $ 
-- (((!\S[2]~input_o\ & (!\V8|v12|Q~2_combout\ $ (\S[0]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100111110000000000110011110010010110111100000011111111000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \V8|v12|ALT_INV_Q~2_combout\,
	datab => \ALT_INV_S[0]~input_o\,
	datac => \ALT_INV_A[9]~input_o\,
	datad => \ALT_INV_S[2]~input_o\,
	datae => \ALT_INV_S[1]~input_o\,
	dataf => \ALT_INV_B[9]~input_o\,
	combout => \V9|v9|V4|v3|Q~0_combout\);

-- Location: IOIBUF_X38_Y0_N35
\A[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

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

-- Location: LABCELL_X31_Y1_N57
\V9|v12|Q~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \V9|v12|Q~1_combout\ = ( \B[9]~input_o\ & ( (\A[9]~input_o\ & !\S[0]~input_o\) ) ) # ( !\B[9]~input_o\ & ( (\A[9]~input_o\ & \S[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000101000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[9]~input_o\,
	datab => \ALT_INV_S[0]~input_o\,
	dataf => \ALT_INV_B[9]~input_o\,
	combout => \V9|v12|Q~1_combout\);

-- Location: LABCELL_X31_Y1_N54
\V9|v12|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \V9|v12|Q~0_combout\ = ( \B[9]~input_o\ & ( !\A[9]~input_o\ $ (\S[0]~input_o\) ) ) # ( !\B[9]~input_o\ & ( !\A[9]~input_o\ $ (!\S[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011010011001100110011001100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[9]~input_o\,
	datab => \ALT_INV_S[0]~input_o\,
	dataf => \ALT_INV_B[9]~input_o\,
	combout => \V9|v12|Q~0_combout\);

-- Location: MLABCELL_X25_Y1_N6
\V9|v12|Q~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \V9|v12|Q~2_combout\ = ( \V9|v12|Q~1_combout\ & ( \V9|v12|Q~0_combout\ & ( \V14|v9|V4|v3|Q~0_combout\ ) ) ) # ( !\V9|v12|Q~1_combout\ & ( \V9|v12|Q~0_combout\ & ( (\V14|v9|V4|v3|Q~0_combout\ & (((\V8|v12|Q~0_combout\ & !\V7|v12|Q~2_combout\)) # 
-- (\V8|v12|Q~1_combout\))) ) ) ) # ( \V9|v12|Q~1_combout\ & ( !\V9|v12|Q~0_combout\ & ( \V14|v9|V4|v3|Q~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000010011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \V8|v12|ALT_INV_Q~0_combout\,
	datab => \V7|v12|ALT_INV_Q~2_combout\,
	datac => \V8|v12|ALT_INV_Q~1_combout\,
	datad => \V14|v9|V4|v3|ALT_INV_Q~0_combout\,
	datae => \V9|v12|ALT_INV_Q~1_combout\,
	dataf => \V9|v12|ALT_INV_Q~0_combout\,
	combout => \V9|v12|Q~2_combout\);

-- Location: MLABCELL_X25_Y1_N42
\V10|v9|V4|v3|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \V10|v9|V4|v3|Q~0_combout\ = ( \S[2]~input_o\ & ( \V9|v12|Q~2_combout\ & ( (!\A[10]~input_o\ & ((!\S[1]~input_o\) # (!\B[10]~input_o\ $ (!\S[0]~input_o\)))) # (\A[10]~input_o\ & (\S[1]~input_o\ & (!\B[10]~input_o\ & !\S[0]~input_o\))) ) ) ) # ( 
-- !\S[2]~input_o\ & ( \V9|v12|Q~2_combout\ & ( (!\A[10]~input_o\ & ((!\B[10]~input_o\ & (!\S[1]~input_o\ & !\S[0]~input_o\)) # (\B[10]~input_o\ & ((\S[0]~input_o\))))) # (\A[10]~input_o\ & ((!\B[10]~input_o\ & ((\S[0]~input_o\))) # (\B[10]~input_o\ & 
-- ((!\S[0]~input_o\) # (\S[1]~input_o\))))) ) ) ) # ( \S[2]~input_o\ & ( !\V9|v12|Q~2_combout\ & ( (!\A[10]~input_o\ & ((!\S[1]~input_o\) # (!\B[10]~input_o\ $ (!\S[0]~input_o\)))) # (\A[10]~input_o\ & (\S[1]~input_o\ & (!\B[10]~input_o\ & 
-- !\S[0]~input_o\))) ) ) ) # ( !\S[2]~input_o\ & ( !\V9|v12|Q~2_combout\ & ( (!\S[1]~input_o\ & (!\A[10]~input_o\ $ (!\B[10]~input_o\ $ (\S[0]~input_o\)))) # (\S[1]~input_o\ & ((!\A[10]~input_o\ & (\B[10]~input_o\ & \S[0]~input_o\)) # (\A[10]~input_o\ & 
-- ((\S[0]~input_o\) # (\B[10]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100110010111100110101010100010000101010110111001101010101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[10]~input_o\,
	datab => \ALT_INV_S[1]~input_o\,
	datac => \ALT_INV_B[10]~input_o\,
	datad => \ALT_INV_S[0]~input_o\,
	datae => \ALT_INV_S[2]~input_o\,
	dataf => \V9|v12|ALT_INV_Q~2_combout\,
	combout => \V10|v9|V4|v3|Q~0_combout\);

-- Location: IOIBUF_X26_Y0_N75
\B[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(11),
	o => \B[11]~input_o\);

-- Location: MLABCELL_X25_Y1_N18
\V10|v12|Q~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \V10|v12|Q~1_combout\ = ( \A[10]~input_o\ & ( !\S[0]~input_o\ $ (!\B[10]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011110011000011001111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_S[0]~input_o\,
	datad => \ALT_INV_B[10]~input_o\,
	dataf => \ALT_INV_A[10]~input_o\,
	combout => \V10|v12|Q~1_combout\);

-- Location: MLABCELL_X25_Y1_N3
\V10|v12|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \V10|v12|Q~0_combout\ = ( \A[10]~input_o\ & ( !\B[10]~input_o\ $ (\S[0]~input_o\) ) ) # ( !\A[10]~input_o\ & ( !\B[10]~input_o\ $ (!\S[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000011110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[10]~input_o\,
	datad => \ALT_INV_S[0]~input_o\,
	dataf => \ALT_INV_A[10]~input_o\,
	combout => \V10|v12|Q~0_combout\);

-- Location: MLABCELL_X25_Y1_N27
\V10|v12|Q~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \V10|v12|Q~2_combout\ = ( \V9|v12|Q~2_combout\ & ( (\V14|v9|V4|v3|Q~0_combout\ & ((\V10|v12|Q~0_combout\) # (\V10|v12|Q~1_combout\))) ) ) # ( !\V9|v12|Q~2_combout\ & ( (\V10|v12|Q~1_combout\ & \V14|v9|V4|v3|Q~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101000011110000010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \V10|v12|ALT_INV_Q~1_combout\,
	datac => \V14|v9|V4|v3|ALT_INV_Q~0_combout\,
	datad => \V10|v12|ALT_INV_Q~0_combout\,
	dataf => \V9|v12|ALT_INV_Q~2_combout\,
	combout => \V10|v12|Q~2_combout\);

-- Location: IOIBUF_X8_Y0_N18
\A[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(11),
	o => \A[11]~input_o\);

-- Location: MLABCELL_X25_Y1_N30
\V11|v9|V4|v3|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \V11|v9|V4|v3|Q~0_combout\ = ( \S[1]~input_o\ & ( \A[11]~input_o\ & ( !\S[2]~input_o\ $ (((!\B[11]~input_o\ & !\S[0]~input_o\))) ) ) ) # ( !\S[1]~input_o\ & ( \A[11]~input_o\ & ( (!\S[2]~input_o\ & (!\B[11]~input_o\ $ (!\S[0]~input_o\ $ 
-- (!\V10|v12|Q~2_combout\)))) ) ) ) # ( \S[1]~input_o\ & ( !\A[11]~input_o\ & ( (!\B[11]~input_o\ & (\S[0]~input_o\ & \S[2]~input_o\)) # (\B[11]~input_o\ & (!\S[0]~input_o\ $ (!\S[2]~input_o\))) ) ) ) # ( !\S[1]~input_o\ & ( !\A[11]~input_o\ & ( 
-- (!\B[11]~input_o\ $ (!\S[0]~input_o\ $ (\V10|v12|Q~2_combout\))) # (\S[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100111111111000100010110011010010110000000000111011110001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[11]~input_o\,
	datab => \ALT_INV_S[0]~input_o\,
	datac => \V10|v12|ALT_INV_Q~2_combout\,
	datad => \ALT_INV_S[2]~input_o\,
	datae => \ALT_INV_S[1]~input_o\,
	dataf => \ALT_INV_A[11]~input_o\,
	combout => \V11|v9|V4|v3|Q~0_combout\);

-- Location: IOIBUF_X26_Y0_N41
\A[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(12),
	o => \A[12]~input_o\);

-- Location: MLABCELL_X25_Y1_N21
\V11|v12|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \V11|v12|Q~0_combout\ = ( \B[11]~input_o\ & ( !\A[11]~input_o\ $ (\S[0]~input_o\) ) ) # ( !\B[11]~input_o\ & ( !\A[11]~input_o\ $ (!\S[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011010011001100110011001100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[11]~input_o\,
	datab => \ALT_INV_S[0]~input_o\,
	dataf => \ALT_INV_B[11]~input_o\,
	combout => \V11|v12|Q~0_combout\);

-- Location: MLABCELL_X25_Y1_N24
\V11|v12|Q~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \V11|v12|Q~1_combout\ = ( \B[11]~input_o\ & ( (!\S[0]~input_o\ & \A[11]~input_o\) ) ) # ( !\B[11]~input_o\ & ( (\S[0]~input_o\ & \A[11]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_S[0]~input_o\,
	datac => \ALT_INV_A[11]~input_o\,
	dataf => \ALT_INV_B[11]~input_o\,
	combout => \V11|v12|Q~1_combout\);

-- Location: MLABCELL_X25_Y1_N36
\V11|v12|Q~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \V11|v12|Q~2_combout\ = ( \V10|v12|Q~0_combout\ & ( \V11|v12|Q~1_combout\ & ( \V14|v9|V4|v3|Q~0_combout\ ) ) ) # ( !\V10|v12|Q~0_combout\ & ( \V11|v12|Q~1_combout\ & ( \V14|v9|V4|v3|Q~0_combout\ ) ) ) # ( \V10|v12|Q~0_combout\ & ( !\V11|v12|Q~1_combout\ & 
-- ( (\V11|v12|Q~0_combout\ & (\V14|v9|V4|v3|Q~0_combout\ & ((\V10|v12|Q~1_combout\) # (\V9|v12|Q~2_combout\)))) ) ) ) # ( !\V10|v12|Q~0_combout\ & ( !\V11|v12|Q~1_combout\ & ( (\V11|v12|Q~0_combout\ & (\V10|v12|Q~1_combout\ & \V14|v9|V4|v3|Q~0_combout\)) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000001010100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \V11|v12|ALT_INV_Q~0_combout\,
	datab => \V9|v12|ALT_INV_Q~2_combout\,
	datac => \V10|v12|ALT_INV_Q~1_combout\,
	datad => \V14|v9|V4|v3|ALT_INV_Q~0_combout\,
	datae => \V10|v12|ALT_INV_Q~0_combout\,
	dataf => \V11|v12|ALT_INV_Q~1_combout\,
	combout => \V11|v12|Q~2_combout\);

-- Location: IOIBUF_X6_Y0_N35
\B[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(12),
	o => \B[12]~input_o\);

-- Location: MLABCELL_X25_Y1_N12
\V12|v9|V4|v3|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \V12|v9|V4|v3|Q~0_combout\ = ( \B[12]~input_o\ & ( \S[1]~input_o\ & ( !\S[2]~input_o\ $ (((!\A[12]~input_o\ & !\S[0]~input_o\))) ) ) ) # ( !\B[12]~input_o\ & ( \S[1]~input_o\ & ( (!\A[12]~input_o\ & (\S[0]~input_o\ & \S[2]~input_o\)) # (\A[12]~input_o\ & 
-- (!\S[0]~input_o\ $ (!\S[2]~input_o\))) ) ) ) # ( \B[12]~input_o\ & ( !\S[1]~input_o\ & ( !\A[12]~input_o\ $ (((!\S[2]~input_o\ & (!\S[0]~input_o\ $ (!\V11|v12|Q~2_combout\))))) ) ) ) # ( !\B[12]~input_o\ & ( !\S[1]~input_o\ & ( !\A[12]~input_o\ $ 
-- (((!\S[2]~input_o\ & (!\S[0]~input_o\ $ (\V11|v12|Q~2_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100110101010100101101010101000010001011001100111011110001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[12]~input_o\,
	datab => \ALT_INV_S[0]~input_o\,
	datac => \V11|v12|ALT_INV_Q~2_combout\,
	datad => \ALT_INV_S[2]~input_o\,
	datae => \ALT_INV_B[12]~input_o\,
	dataf => \ALT_INV_S[1]~input_o\,
	combout => \V12|v9|V4|v3|Q~0_combout\);

-- Location: IOIBUF_X28_Y0_N1
\A[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(13),
	o => \A[13]~input_o\);

-- Location: LABCELL_X24_Y1_N12
\V12|v12|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \V12|v12|Q~0_combout\ = ( \A[12]~input_o\ & ( \S[0]~input_o\ & ( \B[12]~input_o\ ) ) ) # ( !\A[12]~input_o\ & ( \S[0]~input_o\ & ( !\B[12]~input_o\ ) ) ) # ( \A[12]~input_o\ & ( !\S[0]~input_o\ & ( !\B[12]~input_o\ ) ) ) # ( !\A[12]~input_o\ & ( 
-- !\S[0]~input_o\ & ( \B[12]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111100001111000011110000111100000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[12]~input_o\,
	datae => \ALT_INV_A[12]~input_o\,
	dataf => \ALT_INV_S[0]~input_o\,
	combout => \V12|v12|Q~0_combout\);

-- Location: MLABCELL_X25_Y1_N51
\V12|v12|Q~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \V12|v12|Q~1_combout\ = ( \A[12]~input_o\ & ( !\B[12]~input_o\ $ (!\S[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[12]~input_o\,
	datad => \ALT_INV_S[0]~input_o\,
	dataf => \ALT_INV_A[12]~input_o\,
	combout => \V12|v12|Q~1_combout\);

-- Location: MLABCELL_X25_Y1_N48
\V12|v12|Q~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \V12|v12|Q~2_combout\ = (\V14|v9|V4|v3|Q~0_combout\ & (((\V12|v12|Q~0_combout\ & \V11|v12|Q~2_combout\)) # (\V12|v12|Q~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100110011000000010011001100000001001100110000000100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \V12|v12|ALT_INV_Q~0_combout\,
	datab => \V14|v9|V4|v3|ALT_INV_Q~0_combout\,
	datac => \V11|v12|ALT_INV_Q~2_combout\,
	datad => \V12|v12|ALT_INV_Q~1_combout\,
	combout => \V12|v12|Q~2_combout\);

-- Location: IOIBUF_X32_Y0_N35
\B[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(13),
	o => \B[13]~input_o\);

-- Location: LABCELL_X31_Y1_N0
\V13|v9|V4|v3|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \V13|v9|V4|v3|Q~0_combout\ = ( \S[0]~input_o\ & ( \B[13]~input_o\ & ( (!\S[1]~input_o\ & (!\A[13]~input_o\ $ (((!\S[2]~input_o\ & !\V12|v12|Q~2_combout\))))) # (\S[1]~input_o\ & (((!\S[2]~input_o\)))) ) ) ) # ( !\S[0]~input_o\ & ( \B[13]~input_o\ & ( 
-- !\A[13]~input_o\ $ (((!\S[2]~input_o\ & ((\S[1]~input_o\) # (\V12|v12|Q~2_combout\))))) ) ) ) # ( \S[0]~input_o\ & ( !\B[13]~input_o\ & ( !\A[13]~input_o\ $ (((!\S[2]~input_o\ & ((\S[1]~input_o\) # (\V12|v12|Q~2_combout\))))) ) ) ) # ( !\S[0]~input_o\ & ( 
-- !\B[13]~input_o\ & ( (!\S[2]~input_o\ & (!\S[1]~input_o\ & (!\A[13]~input_o\ $ (!\V12|v12|Q~2_combout\)))) # (\S[2]~input_o\ & (!\A[13]~input_o\ $ (((\S[1]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110101000010001101001100110011010100110011001100110101011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[13]~input_o\,
	datab => \ALT_INV_S[2]~input_o\,
	datac => \V12|v12|ALT_INV_Q~2_combout\,
	datad => \ALT_INV_S[1]~input_o\,
	datae => \ALT_INV_S[0]~input_o\,
	dataf => \ALT_INV_B[13]~input_o\,
	combout => \V13|v9|V4|v3|Q~0_combout\);

-- Location: IOIBUF_X34_Y0_N92
\B[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(14),
	o => \B[14]~input_o\);

-- Location: IOIBUF_X34_Y0_N41
\A[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(14),
	o => \A[14]~input_o\);

-- Location: LABCELL_X24_Y1_N24
\V13|v12|Q~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \V13|v12|Q~1_combout\ = ( \A[13]~input_o\ & ( \B[13]~input_o\ & ( !\S[0]~input_o\ ) ) ) # ( \A[13]~input_o\ & ( !\B[13]~input_o\ & ( \S[0]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_S[0]~input_o\,
	datae => \ALT_INV_A[13]~input_o\,
	dataf => \ALT_INV_B[13]~input_o\,
	combout => \V13|v12|Q~1_combout\);

-- Location: LABCELL_X24_Y1_N51
\V13|v12|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \V13|v12|Q~0_combout\ = ( \A[13]~input_o\ & ( \B[13]~input_o\ & ( \S[0]~input_o\ ) ) ) # ( !\A[13]~input_o\ & ( \B[13]~input_o\ & ( !\S[0]~input_o\ ) ) ) # ( \A[13]~input_o\ & ( !\B[13]~input_o\ & ( !\S[0]~input_o\ ) ) ) # ( !\A[13]~input_o\ & ( 
-- !\B[13]~input_o\ & ( \S[0]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101101010101010101010101010101010100101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_S[0]~input_o\,
	datae => \ALT_INV_A[13]~input_o\,
	dataf => \ALT_INV_B[13]~input_o\,
	combout => \V13|v12|Q~0_combout\);

-- Location: MLABCELL_X25_Y1_N54
\V13|v12|Q~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \V13|v12|Q~2_combout\ = ( \V11|v12|Q~2_combout\ & ( \V13|v12|Q~0_combout\ & ( (\V14|v9|V4|v3|Q~0_combout\ & (((\V12|v12|Q~0_combout\) # (\V13|v12|Q~1_combout\)) # (\V12|v12|Q~1_combout\))) ) ) ) # ( !\V11|v12|Q~2_combout\ & ( \V13|v12|Q~0_combout\ & ( 
-- (\V14|v9|V4|v3|Q~0_combout\ & ((\V13|v12|Q~1_combout\) # (\V12|v12|Q~1_combout\))) ) ) ) # ( \V11|v12|Q~2_combout\ & ( !\V13|v12|Q~0_combout\ & ( (\V13|v12|Q~1_combout\ & \V14|v9|V4|v3|Q~0_combout\) ) ) ) # ( !\V11|v12|Q~2_combout\ & ( 
-- !\V13|v12|Q~0_combout\ & ( (\V13|v12|Q~1_combout\ & \V14|v9|V4|v3|Q~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100000000011101110000000001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \V12|v12|ALT_INV_Q~1_combout\,
	datab => \V13|v12|ALT_INV_Q~1_combout\,
	datac => \V12|v12|ALT_INV_Q~0_combout\,
	datad => \V14|v9|V4|v3|ALT_INV_Q~0_combout\,
	datae => \V11|v12|ALT_INV_Q~2_combout\,
	dataf => \V13|v12|ALT_INV_Q~0_combout\,
	combout => \V13|v12|Q~2_combout\);

-- Location: LABCELL_X31_Y1_N36
\V14|v9|V4|v3|Q~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \V14|v9|V4|v3|Q~1_combout\ = ( \S[1]~input_o\ & ( \V13|v12|Q~2_combout\ & ( (!\B[14]~input_o\ & ((!\S[0]~input_o\ & (\A[14]~input_o\ & \S[2]~input_o\)) # (\S[0]~input_o\ & (!\A[14]~input_o\ $ (!\S[2]~input_o\))))) # (\B[14]~input_o\ & (!\S[2]~input_o\ $ 
-- (((!\S[0]~input_o\ & !\A[14]~input_o\))))) ) ) ) # ( !\S[1]~input_o\ & ( \V13|v12|Q~2_combout\ & ( !\A[14]~input_o\ $ (((!\S[2]~input_o\ & (!\B[14]~input_o\ $ (!\S[0]~input_o\))))) ) ) ) # ( \S[1]~input_o\ & ( !\V13|v12|Q~2_combout\ & ( (!\B[14]~input_o\ 
-- & ((!\S[0]~input_o\ & (\A[14]~input_o\ & \S[2]~input_o\)) # (\S[0]~input_o\ & (!\A[14]~input_o\ $ (!\S[2]~input_o\))))) # (\B[14]~input_o\ & (!\S[2]~input_o\ $ (((!\S[0]~input_o\ & !\A[14]~input_o\))))) ) ) ) # ( !\S[1]~input_o\ & ( !\V13|v12|Q~2_combout\ 
-- & ( !\A[14]~input_o\ $ (((!\S[2]~input_o\ & (!\B[14]~input_o\ $ (\S[0]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100111110000000101110110100010010110111100000001011101101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[14]~input_o\,
	datab => \ALT_INV_S[0]~input_o\,
	datac => \ALT_INV_A[14]~input_o\,
	datad => \ALT_INV_S[2]~input_o\,
	datae => \ALT_INV_S[1]~input_o\,
	dataf => \V13|v12|ALT_INV_Q~2_combout\,
	combout => \V14|v9|V4|v3|Q~1_combout\);

-- Location: IOIBUF_X50_Y0_N58
\B[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(15),
	o => \B[15]~input_o\);

-- Location: LABCELL_X31_Y1_N33
\V14|v12|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \V14|v12|Q~0_combout\ = ( \B[14]~input_o\ & ( (\V14|v9|V4|v3|Q~0_combout\ & ((!\A[14]~input_o\ & (\V13|v12|Q~2_combout\ & !\S[0]~input_o\)) # (\A[14]~input_o\ & ((!\S[0]~input_o\) # (\V13|v12|Q~2_combout\))))) ) ) # ( !\B[14]~input_o\ & ( 
-- (\V14|v9|V4|v3|Q~0_combout\ & ((!\A[14]~input_o\ & (\V13|v12|Q~2_combout\ & \S[0]~input_o\)) # (\A[14]~input_o\ & ((\S[0]~input_o\) # (\V13|v12|Q~2_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000111000000010000011100000111000000010000011100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[14]~input_o\,
	datab => \V13|v12|ALT_INV_Q~2_combout\,
	datac => \V14|v9|V4|v3|ALT_INV_Q~0_combout\,
	datad => \ALT_INV_S[0]~input_o\,
	dataf => \ALT_INV_B[14]~input_o\,
	combout => \V14|v12|Q~0_combout\);

-- Location: IOIBUF_X50_Y0_N92
\A[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(15),
	o => \A[15]~input_o\);

-- Location: LABCELL_X31_Y1_N12
\V15|v9|V4|v3|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \V15|v9|V4|v3|Q~0_combout\ = ( \S[0]~input_o\ & ( \A[15]~input_o\ & ( (!\S[2]~input_o\ & ((!\B[15]~input_o\ $ (!\V14|v12|Q~0_combout\)) # (\S[1]~input_o\))) ) ) ) # ( !\S[0]~input_o\ & ( \A[15]~input_o\ & ( (!\S[2]~input_o\ & (!\B[15]~input_o\ $ 
-- (((\S[1]~input_o\) # (\V14|v12|Q~0_combout\))))) # (\S[2]~input_o\ & (!\B[15]~input_o\ & ((\S[1]~input_o\)))) ) ) ) # ( \S[0]~input_o\ & ( !\A[15]~input_o\ & ( (!\S[2]~input_o\ & (!\B[15]~input_o\ $ (((\S[1]~input_o\) # (\V14|v12|Q~0_combout\))))) # 
-- (\S[2]~input_o\ & ((!\B[15]~input_o\) # ((!\S[1]~input_o\)))) ) ) ) # ( !\S[0]~input_o\ & ( !\A[15]~input_o\ & ( (!\S[2]~input_o\ & (!\S[1]~input_o\ & (!\B[15]~input_o\ $ (!\V14|v12|Q~0_combout\)))) # (\S[2]~input_o\ & (((!\S[1]~input_o\)) # 
-- (\B[15]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111101100010001101101110110011010000100011001100100100011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[15]~input_o\,
	datab => \ALT_INV_S[2]~input_o\,
	datac => \V14|v12|ALT_INV_Q~0_combout\,
	datad => \ALT_INV_S[1]~input_o\,
	datae => \ALT_INV_S[0]~input_o\,
	dataf => \ALT_INV_A[15]~input_o\,
	combout => \V15|v9|V4|v3|Q~0_combout\);

-- Location: LABCELL_X31_Y1_N48
\V14|v2|v5|Q\ : cyclonev_lcell_comb
-- Equation(s):
-- \V14|v2|v5|Q~combout\ = ( \B[14]~input_o\ & ( (\A[14]~input_o\ & \V13|v12|Q~2_combout\) ) ) # ( !\B[14]~input_o\ & ( (\V13|v12|Q~2_combout\) # (\A[14]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111011101110111011100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[14]~input_o\,
	datab => \V13|v12|ALT_INV_Q~2_combout\,
	dataf => \ALT_INV_B[14]~input_o\,
	combout => \V14|v2|v5|Q~combout\);

-- Location: LABCELL_X31_Y1_N51
\V14|v0|v5|Q\ : cyclonev_lcell_comb
-- Equation(s):
-- \V14|v0|v5|Q~combout\ = ( \B[14]~input_o\ & ( (\V13|v12|Q~2_combout\) # (\A[14]~input_o\) ) ) # ( !\B[14]~input_o\ & ( (\A[14]~input_o\ & \V13|v12|Q~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000101110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[14]~input_o\,
	datab => \V13|v12|ALT_INV_Q~2_combout\,
	dataf => \ALT_INV_B[14]~input_o\,
	combout => \V14|v0|v5|Q~combout\);

-- Location: LABCELL_X31_Y1_N24
\V18|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \V18|Q~0_combout\ = ( \B[15]~input_o\ & ( \A[15]~input_o\ & ( (!\V14|v9|V4|v3|Q~0_combout\) # ((\S[0]~input_o\) # (\V14|v0|v5|Q~combout\)) ) ) ) # ( !\B[15]~input_o\ & ( \A[15]~input_o\ & ( ((!\V14|v9|V4|v3|Q~0_combout\) # (!\S[0]~input_o\)) # 
-- (\V14|v2|v5|Q~combout\) ) ) ) # ( \B[15]~input_o\ & ( !\A[15]~input_o\ & ( (!\V14|v2|v5|Q~combout\) # ((!\V14|v9|V4|v3|Q~0_combout\) # (!\S[0]~input_o\)) ) ) ) # ( !\B[15]~input_o\ & ( !\A[15]~input_o\ & ( (!\V14|v9|V4|v3|Q~0_combout\) # 
-- ((!\V14|v0|v5|Q~combout\) # (\S[0]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110011111111111111111110111011111111110111011100111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \V14|v2|v5|ALT_INV_Q~combout\,
	datab => \V14|v9|V4|v3|ALT_INV_Q~0_combout\,
	datac => \V14|v0|v5|ALT_INV_Q~combout\,
	datad => \ALT_INV_S[0]~input_o\,
	datae => \ALT_INV_B[15]~input_o\,
	dataf => \ALT_INV_A[15]~input_o\,
	combout => \V18|Q~0_combout\);

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


