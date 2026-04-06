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

-- DATE "04/06/2026 13:44:59"

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
-- Q[0]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[1]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[2]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[3]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[4]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[5]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[6]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[7]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[8]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[9]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[10]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[11]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[12]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[13]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[14]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[15]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Overflow	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[15]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[1]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[0]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[2]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[8]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[9]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[10]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[10]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[11]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[11]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[12]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[12]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[13]	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[13]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[14]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[14]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL \S[0]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \S[2]~input_o\ : std_logic;
SIGNAL \S[1]~input_o\ : std_logic;
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \V21|v3|v0|Q~0_combout\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \V0|v12|Q~0_combout\ : std_logic;
SIGNAL \V21|v1|v1|Q~combout\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \V1|v12|Q~1_combout\ : std_logic;
SIGNAL \V1|v12|Q~0_combout\ : std_logic;
SIGNAL \V1|v12|Q~2_combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \V21|v1|v2|Q~combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \V2|v12|Q~1_combout\ : std_logic;
SIGNAL \V14|v9|V4|v3|Q~0_combout\ : std_logic;
SIGNAL \V2|v12|Q~0_combout\ : std_logic;
SIGNAL \V2|v12|Q~2_combout\ : std_logic;
SIGNAL \V21|v1|v3|Q~combout\ : std_logic;
SIGNAL \V3|v12|Q~0_combout\ : std_logic;
SIGNAL \V3|v12|Q~1_combout\ : std_logic;
SIGNAL \V3|v12|Q~2_combout\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \V21|v1|v4|Q~combout\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \V4|v12|Q~0_combout\ : std_logic;
SIGNAL \V4|v12|Q~1_combout\ : std_logic;
SIGNAL \V4|v12|Q~2_combout\ : std_logic;
SIGNAL \V21|v1|v5|Q~combout\ : std_logic;
SIGNAL \V5|v12|Q~2_combout\ : std_logic;
SIGNAL \V5|v12|Q~0_combout\ : std_logic;
SIGNAL \V5|v12|Q~1_combout\ : std_logic;
SIGNAL \V5|v12|Q~3_combout\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \V21|v1|v6|Q~combout\ : std_logic;
SIGNAL \V6|v12|Q~1_combout\ : std_logic;
SIGNAL \V6|v12|Q~0_combout\ : std_logic;
SIGNAL \V6|v12|Q~2_combout\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \V21|v1|v7|Q~combout\ : std_logic;
SIGNAL \B[8]~input_o\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \V7|v12|Q~0_combout\ : std_logic;
SIGNAL \V7|v12|Q~1_combout\ : std_logic;
SIGNAL \V7|v12|Q~2_combout\ : std_logic;
SIGNAL \V21|v1|v8|Q~combout\ : std_logic;
SIGNAL \V8|v12|Q~0_combout\ : std_logic;
SIGNAL \V8|v12|Q~1_combout\ : std_logic;
SIGNAL \V8|v12|Q~2_combout\ : std_logic;
SIGNAL \B[9]~input_o\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \V21|v1|v9|Q~combout\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \B[10]~input_o\ : std_logic;
SIGNAL \V9|v12|Q~1_combout\ : std_logic;
SIGNAL \V9|v12|Q~0_combout\ : std_logic;
SIGNAL \V9|v12|Q~2_combout\ : std_logic;
SIGNAL \V21|v1|v10|Q~combout\ : std_logic;
SIGNAL \B[11]~input_o\ : std_logic;
SIGNAL \V10|v12|Q~1_combout\ : std_logic;
SIGNAL \V10|v12|Q~0_combout\ : std_logic;
SIGNAL \V10|v12|Q~2_combout\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \V21|v1|v11|Q~combout\ : std_logic;
SIGNAL \V11|v12|Q~0_combout\ : std_logic;
SIGNAL \V11|v12|Q~1_combout\ : std_logic;
SIGNAL \V11|v12|Q~2_combout\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
SIGNAL \B[12]~input_o\ : std_logic;
SIGNAL \V21|v1|v12|Q~combout\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \V12|v12|Q~0_combout\ : std_logic;
SIGNAL \V12|v12|Q~1_combout\ : std_logic;
SIGNAL \V12|v12|Q~2_combout\ : std_logic;
SIGNAL \B[13]~input_o\ : std_logic;
SIGNAL \V21|v1|v13|Q~combout\ : std_logic;
SIGNAL \V13|v12|Q~1_combout\ : std_logic;
SIGNAL \V13|v12|Q~0_combout\ : std_logic;
SIGNAL \V13|v12|Q~2_combout\ : std_logic;
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \B[14]~input_o\ : std_logic;
SIGNAL \V21|v1|v14|Q~combout\ : std_logic;
SIGNAL \V14|v12|Q~0_combout\ : std_logic;
SIGNAL \B[15]~input_o\ : std_logic;
SIGNAL \V21|v1|v15|Q~combout\ : std_logic;
SIGNAL \V14|v0|v5|Q~combout\ : std_logic;
SIGNAL \V14|v2|v5|Q~combout\ : std_logic;
SIGNAL \v22|v3|Q~0_combout\ : std_logic;
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
SIGNAL \ALT_INV_B[15]~input_o\ : std_logic;
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
SIGNAL \ALT_INV_B[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_S[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_S[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_S[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[15]~input_o\ : std_logic;
SIGNAL \v22|v3|ALT_INV_Q~0_combout\ : std_logic;
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

BEGIN

ww_S <= S;
ww_A <= A;
ww_B <= B;
Q <= ww_Q;
Overflow <= ww_Overflow;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
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
\ALT_INV_B[15]~input_o\ <= NOT \B[15]~input_o\;
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
\ALT_INV_B[0]~input_o\ <= NOT \B[0]~input_o\;
\ALT_INV_S[2]~input_o\ <= NOT \S[2]~input_o\;
\ALT_INV_S[0]~input_o\ <= NOT \S[0]~input_o\;
\ALT_INV_S[1]~input_o\ <= NOT \S[1]~input_o\;
\ALT_INV_A[15]~input_o\ <= NOT \A[15]~input_o\;
\v22|v3|ALT_INV_Q~0_combout\ <= NOT \v22|v3|Q~0_combout\;
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

-- Location: IOOBUF_X28_Y0_N2
\Q[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \V21|v3|v0|Q~0_combout\,
	devoe => ww_devoe,
	o => ww_Q(0));

-- Location: IOOBUF_X36_Y0_N36
\Q[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \V21|v1|v1|Q~combout\,
	devoe => ww_devoe,
	o => ww_Q(1));

-- Location: IOOBUF_X40_Y0_N19
\Q[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \V21|v1|v2|Q~combout\,
	devoe => ww_devoe,
	o => ww_Q(2));

-- Location: IOOBUF_X4_Y0_N2
\Q[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \V21|v1|v3|Q~combout\,
	devoe => ww_devoe,
	o => ww_Q(3));

-- Location: IOOBUF_X6_Y0_N36
\Q[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \V21|v1|v4|Q~combout\,
	devoe => ww_devoe,
	o => ww_Q(4));

-- Location: IOOBUF_X4_Y0_N19
\Q[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \V21|v1|v5|Q~combout\,
	devoe => ww_devoe,
	o => ww_Q(5));

-- Location: IOOBUF_X4_Y0_N53
\Q[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \V21|v1|v6|Q~combout\,
	devoe => ww_devoe,
	o => ww_Q(6));

-- Location: IOOBUF_X30_Y0_N53
\Q[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \V21|v1|v7|Q~combout\,
	devoe => ww_devoe,
	o => ww_Q(7));

-- Location: IOOBUF_X6_Y0_N2
\Q[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \V21|v1|v8|Q~combout\,
	devoe => ww_devoe,
	o => ww_Q(8));

-- Location: IOOBUF_X26_Y0_N42
\Q[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \V21|v1|v9|Q~combout\,
	devoe => ww_devoe,
	o => ww_Q(9));

-- Location: IOOBUF_X30_Y0_N2
\Q[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \V21|v1|v10|Q~combout\,
	devoe => ww_devoe,
	o => ww_Q(10));

-- Location: IOOBUF_X50_Y0_N93
\Q[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \V21|v1|v11|Q~combout\,
	devoe => ww_devoe,
	o => ww_Q(11));

-- Location: IOOBUF_X38_Y0_N53
\Q[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \V21|v1|v12|Q~combout\,
	devoe => ww_devoe,
	o => ww_Q(12));

-- Location: IOOBUF_X34_Y0_N93
\Q[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \V21|v1|v13|Q~combout\,
	devoe => ww_devoe,
	o => ww_Q(13));

-- Location: IOOBUF_X36_Y0_N19
\Q[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \V21|v1|v14|Q~combout\,
	devoe => ww_devoe,
	o => ww_Q(14));

-- Location: IOOBUF_X40_Y0_N2
\Q[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \V21|v1|v15|Q~combout\,
	devoe => ww_devoe,
	o => ww_Q(15));

-- Location: IOOBUF_X52_Y0_N36
\Overflow~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \v22|v3|ALT_INV_Q~0_combout\,
	devoe => ww_devoe,
	o => ww_Overflow);

-- Location: IOIBUF_X40_Y0_N35
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

-- Location: IOIBUF_X34_Y0_N58
\A[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X36_Y0_N1
\S[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S(2),
	o => \S[2]~input_o\);

-- Location: IOIBUF_X32_Y0_N1
\S[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S(1),
	o => \S[1]~input_o\);

-- Location: IOIBUF_X40_Y0_N52
\A[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(15),
	o => \A[15]~input_o\);

-- Location: MLABCELL_X34_Y2_N0
\V21|v3|v0|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \V21|v3|v0|Q~0_combout\ = ( \S[1]~input_o\ & ( \A[15]~input_o\ & ( (!\B[0]~input_o\ & ((!\S[0]~input_o\ & (\A[0]~input_o\ & \S[2]~input_o\)) # (\S[0]~input_o\ & (!\A[0]~input_o\ $ (!\S[2]~input_o\))))) # (\B[0]~input_o\ & (!\S[2]~input_o\ $ 
-- (((!\S[0]~input_o\ & !\A[0]~input_o\))))) ) ) ) # ( !\S[1]~input_o\ & ( \A[15]~input_o\ & ( (!\S[2]~input_o\ & (!\B[0]~input_o\ $ (((!\A[0]~input_o\))))) # (\S[2]~input_o\ & (((\S[0]~input_o\ & !\A[0]~input_o\)))) ) ) ) # ( \S[1]~input_o\ & ( 
-- !\A[15]~input_o\ & ( (!\B[0]~input_o\ & ((!\S[0]~input_o\ & (\A[0]~input_o\ & \S[2]~input_o\)) # (\S[0]~input_o\ & (!\A[0]~input_o\ $ (!\S[2]~input_o\))))) # (\B[0]~input_o\ & (!\S[2]~input_o\ $ (((!\S[0]~input_o\ & !\A[0]~input_o\))))) ) ) ) # ( 
-- !\S[1]~input_o\ & ( !\A[15]~input_o\ & ( (!\S[2]~input_o\ & (!\B[0]~input_o\ $ (((!\A[0]~input_o\))))) # (\S[2]~input_o\ & (((!\S[0]~input_o\) # (!\A[0]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101011111100000101110110100001011010001100000001011101101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_S[0]~input_o\,
	datac => \ALT_INV_A[0]~input_o\,
	datad => \ALT_INV_S[2]~input_o\,
	datae => \ALT_INV_S[1]~input_o\,
	dataf => \ALT_INV_A[15]~input_o\,
	combout => \V21|v3|v0|Q~0_combout\);

-- Location: IOIBUF_X34_Y0_N41
\B[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

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

-- Location: MLABCELL_X34_Y2_N6
\V0|v12|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \V0|v12|Q~0_combout\ = ( !\S[1]~input_o\ & ( \B[0]~input_o\ & ( (\A[0]~input_o\ & !\S[2]~input_o\) ) ) ) # ( !\S[1]~input_o\ & ( !\B[0]~input_o\ & ( (\S[0]~input_o\ & !\S[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000000000000000000000001111000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_S[0]~input_o\,
	datac => \ALT_INV_A[0]~input_o\,
	datad => \ALT_INV_S[2]~input_o\,
	datae => \ALT_INV_S[1]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \V0|v12|Q~0_combout\);

-- Location: MLABCELL_X34_Y2_N42
\V21|v1|v1|Q\ : cyclonev_lcell_comb
-- Equation(s):
-- \V21|v1|v1|Q~combout\ = ( \S[1]~input_o\ & ( \S[2]~input_o\ & ( (!\B[1]~input_o\ & (!\S[0]~input_o\ $ (!\A[1]~input_o\))) # (\B[1]~input_o\ & (!\S[0]~input_o\ & !\A[1]~input_o\)) ) ) ) # ( !\S[1]~input_o\ & ( \S[2]~input_o\ & ( (\S[0]~input_o\ & 
-- !\A[1]~input_o\) ) ) ) # ( \S[1]~input_o\ & ( !\S[2]~input_o\ & ( (!\B[1]~input_o\ & (\S[0]~input_o\ & \A[1]~input_o\)) # (\B[1]~input_o\ & ((\A[1]~input_o\) # (\S[0]~input_o\))) ) ) ) # ( !\S[1]~input_o\ & ( !\S[2]~input_o\ & ( !\B[1]~input_o\ $ 
-- (!\S[0]~input_o\ $ (!\A[1]~input_o\ $ (!\V0|v12|Q~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100110010110000101110001011100110000001100000110100001101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_S[0]~input_o\,
	datac => \ALT_INV_A[1]~input_o\,
	datad => \V0|v12|ALT_INV_Q~0_combout\,
	datae => \ALT_INV_S[1]~input_o\,
	dataf => \ALT_INV_S[2]~input_o\,
	combout => \V21|v1|v1|Q~combout\);

-- Location: IOIBUF_X52_Y0_N1
\B[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: MLABCELL_X34_Y2_N24
\V1|v12|Q~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \V1|v12|Q~1_combout\ = ( \B[1]~input_o\ & ( (!\S[0]~input_o\ & \A[1]~input_o\) ) ) # ( !\B[1]~input_o\ & ( (\S[0]~input_o\ & \A[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_S[0]~input_o\,
	datac => \ALT_INV_A[1]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \V1|v12|Q~1_combout\);

-- Location: MLABCELL_X34_Y2_N51
\V1|v12|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \V1|v12|Q~0_combout\ = ( \A[1]~input_o\ & ( \B[1]~input_o\ & ( \S[0]~input_o\ ) ) ) # ( !\A[1]~input_o\ & ( \B[1]~input_o\ & ( !\S[0]~input_o\ ) ) ) # ( \A[1]~input_o\ & ( !\B[1]~input_o\ & ( !\S[0]~input_o\ ) ) ) # ( !\A[1]~input_o\ & ( !\B[1]~input_o\ & 
-- ( \S[0]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111100001111000011110000111100000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_S[0]~input_o\,
	datae => \ALT_INV_A[1]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \V1|v12|Q~0_combout\);

-- Location: MLABCELL_X34_Y2_N33
\V1|v12|Q~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \V1|v12|Q~2_combout\ = ( \V1|v12|Q~0_combout\ & ( (!\V1|v12|Q~1_combout\ & !\V0|v12|Q~0_combout\) ) ) # ( !\V1|v12|Q~0_combout\ & ( !\V1|v12|Q~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \V1|v12|ALT_INV_Q~1_combout\,
	datac => \V0|v12|ALT_INV_Q~0_combout\,
	dataf => \V1|v12|ALT_INV_Q~0_combout\,
	combout => \V1|v12|Q~2_combout\);

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

-- Location: MLABCELL_X34_Y2_N36
\V21|v1|v2|Q\ : cyclonev_lcell_comb
-- Equation(s):
-- \V21|v1|v2|Q~combout\ = ( \S[1]~input_o\ & ( \A[2]~input_o\ & ( !\S[2]~input_o\ $ (((!\B[2]~input_o\ & !\S[0]~input_o\))) ) ) ) # ( !\S[1]~input_o\ & ( \A[2]~input_o\ & ( (!\S[2]~input_o\ & (!\B[2]~input_o\ $ (!\S[0]~input_o\ $ (\V1|v12|Q~2_combout\)))) ) 
-- ) ) # ( \S[1]~input_o\ & ( !\A[2]~input_o\ & ( (!\B[2]~input_o\ & (\S[0]~input_o\ & \S[2]~input_o\)) # (\B[2]~input_o\ & (!\S[0]~input_o\ $ (!\S[2]~input_o\))) ) ) ) # ( !\S[1]~input_o\ & ( !\A[2]~input_o\ & ( !\S[0]~input_o\ $ (((!\B[2]~input_o\ $ 
-- (!\V1|v12|Q~2_combout\)) # (\S[2]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001011000110011000100010110011001101001000000000111011110001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \ALT_INV_S[0]~input_o\,
	datac => \V1|v12|ALT_INV_Q~2_combout\,
	datad => \ALT_INV_S[2]~input_o\,
	datae => \ALT_INV_S[1]~input_o\,
	dataf => \ALT_INV_A[2]~input_o\,
	combout => \V21|v1|v2|Q~combout\);

-- Location: IOIBUF_X8_Y0_N35
\A[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: IOIBUF_X6_Y0_N18
\B[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: MLABCELL_X34_Y2_N30
\V2|v12|Q~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \V2|v12|Q~1_combout\ = ( \A[2]~input_o\ & ( !\S[0]~input_o\ $ (!\B[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000111100001111000011110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_S[0]~input_o\,
	datac => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_A[2]~input_o\,
	combout => \V2|v12|Q~1_combout\);

-- Location: LABCELL_X27_Y2_N30
\V14|v9|V4|v3|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \V14|v9|V4|v3|Q~0_combout\ = ( !\S[2]~input_o\ & ( !\S[1]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_S[1]~input_o\,
	dataf => \ALT_INV_S[2]~input_o\,
	combout => \V14|v9|V4|v3|Q~0_combout\);

-- Location: MLABCELL_X34_Y2_N27
\V2|v12|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \V2|v12|Q~0_combout\ = ( \A[2]~input_o\ & ( !\B[2]~input_o\ $ (\S[0]~input_o\) ) ) # ( !\A[2]~input_o\ & ( !\B[2]~input_o\ $ (!\S[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011010011001100110011001100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \ALT_INV_S[0]~input_o\,
	dataf => \ALT_INV_A[2]~input_o\,
	combout => \V2|v12|Q~0_combout\);

-- Location: MLABCELL_X34_Y2_N12
\V2|v12|Q~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \V2|v12|Q~2_combout\ = ( \V2|v12|Q~0_combout\ & ( \V1|v12|Q~0_combout\ & ( (\V14|v9|V4|v3|Q~0_combout\ & (((\V0|v12|Q~0_combout\) # (\V2|v12|Q~1_combout\)) # (\V1|v12|Q~1_combout\))) ) ) ) # ( !\V2|v12|Q~0_combout\ & ( \V1|v12|Q~0_combout\ & ( 
-- (\V2|v12|Q~1_combout\ & \V14|v9|V4|v3|Q~0_combout\) ) ) ) # ( \V2|v12|Q~0_combout\ & ( !\V1|v12|Q~0_combout\ & ( (\V14|v9|V4|v3|Q~0_combout\ & ((\V2|v12|Q~1_combout\) # (\V1|v12|Q~1_combout\))) ) ) ) # ( !\V2|v12|Q~0_combout\ & ( !\V1|v12|Q~0_combout\ & ( 
-- (\V2|v12|Q~1_combout\ & \V14|v9|V4|v3|Q~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000001110000011100000011000000110000011100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \V1|v12|ALT_INV_Q~1_combout\,
	datab => \V2|v12|ALT_INV_Q~1_combout\,
	datac => \V14|v9|V4|v3|ALT_INV_Q~0_combout\,
	datad => \V0|v12|ALT_INV_Q~0_combout\,
	datae => \V2|v12|ALT_INV_Q~0_combout\,
	dataf => \V1|v12|ALT_INV_Q~0_combout\,
	combout => \V2|v12|Q~2_combout\);

-- Location: LABCELL_X27_Y2_N36
\V21|v1|v3|Q\ : cyclonev_lcell_comb
-- Equation(s):
-- \V21|v1|v3|Q~combout\ = ( \V2|v12|Q~2_combout\ & ( \S[2]~input_o\ & ( (!\S[0]~input_o\ & (\S[1]~input_o\ & (!\A[3]~input_o\ $ (!\B[3]~input_o\)))) # (\S[0]~input_o\ & (!\A[3]~input_o\ & ((!\S[1]~input_o\) # (!\B[3]~input_o\)))) ) ) ) # ( 
-- !\V2|v12|Q~2_combout\ & ( \S[2]~input_o\ & ( (!\S[0]~input_o\ & (\S[1]~input_o\ & (!\A[3]~input_o\ $ (!\B[3]~input_o\)))) # (\S[0]~input_o\ & (!\A[3]~input_o\ & ((!\S[1]~input_o\) # (!\B[3]~input_o\)))) ) ) ) # ( \V2|v12|Q~2_combout\ & ( !\S[2]~input_o\ & 
-- ( (!\S[0]~input_o\ & ((!\A[3]~input_o\ & (!\S[1]~input_o\ & !\B[3]~input_o\)) # (\A[3]~input_o\ & ((\B[3]~input_o\))))) # (\S[0]~input_o\ & ((!\A[3]~input_o\ & ((\B[3]~input_o\))) # (\A[3]~input_o\ & ((!\B[3]~input_o\) # (\S[1]~input_o\))))) ) ) ) # ( 
-- !\V2|v12|Q~2_combout\ & ( !\S[2]~input_o\ & ( (!\S[1]~input_o\ & (!\S[0]~input_o\ $ (!\A[3]~input_o\ $ (\B[3]~input_o\)))) # (\S[1]~input_o\ & ((!\S[0]~input_o\ & (\A[3]~input_o\ & \B[3]~input_o\)) # (\S[0]~input_o\ & ((\B[3]~input_o\) # 
-- (\A[3]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100110010111100001010101101101010010011000000101001001100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_S[0]~input_o\,
	datab => \ALT_INV_S[1]~input_o\,
	datac => \ALT_INV_A[3]~input_o\,
	datad => \ALT_INV_B[3]~input_o\,
	datae => \V2|v12|ALT_INV_Q~2_combout\,
	dataf => \ALT_INV_S[2]~input_o\,
	combout => \V21|v1|v3|Q~combout\);

-- Location: LABCELL_X27_Y2_N33
\V3|v12|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \V3|v12|Q~0_combout\ = ( !\S[2]~input_o\ & ( (!\S[1]~input_o\ & (!\S[0]~input_o\ $ (!\B[3]~input_o\ $ (\A[3]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100010000100010010001000010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_S[0]~input_o\,
	datab => \ALT_INV_S[1]~input_o\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \ALT_INV_A[3]~input_o\,
	dataf => \ALT_INV_S[2]~input_o\,
	combout => \V3|v12|Q~0_combout\);

-- Location: LABCELL_X27_Y2_N42
\V3|v12|Q~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \V3|v12|Q~1_combout\ = ( !\S[2]~input_o\ & ( (!\S[1]~input_o\ & (\A[3]~input_o\ & (!\S[0]~input_o\ $ (!\B[3]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000001000000001000000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_S[0]~input_o\,
	datab => \ALT_INV_S[1]~input_o\,
	datac => \ALT_INV_A[3]~input_o\,
	datad => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_S[2]~input_o\,
	combout => \V3|v12|Q~1_combout\);

-- Location: LABCELL_X27_Y2_N48
\V3|v12|Q~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \V3|v12|Q~2_combout\ = ( !\V3|v12|Q~1_combout\ & ( (!\V3|v12|Q~0_combout\) # (!\V2|v12|Q~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110000111111111111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \V3|v12|ALT_INV_Q~0_combout\,
	datad => \V2|v12|ALT_INV_Q~2_combout\,
	dataf => \V3|v12|ALT_INV_Q~1_combout\,
	combout => \V3|v12|Q~2_combout\);

-- Location: IOIBUF_X8_Y0_N52
\B[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: IOIBUF_X26_Y0_N58
\A[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: LABCELL_X27_Y2_N24
\V21|v1|v4|Q\ : cyclonev_lcell_comb
-- Equation(s):
-- \V21|v1|v4|Q~combout\ = ( \S[0]~input_o\ & ( \S[2]~input_o\ & ( (!\A[4]~input_o\ & ((!\S[1]~input_o\) # (!\B[4]~input_o\))) ) ) ) # ( !\S[0]~input_o\ & ( \S[2]~input_o\ & ( (\S[1]~input_o\ & (!\B[4]~input_o\ $ (!\A[4]~input_o\))) ) ) ) # ( \S[0]~input_o\ 
-- & ( !\S[2]~input_o\ & ( (!\S[1]~input_o\ & (!\V3|v12|Q~2_combout\ $ (!\B[4]~input_o\ $ (\A[4]~input_o\)))) # (\S[1]~input_o\ & (((\A[4]~input_o\) # (\B[4]~input_o\)))) ) ) ) # ( !\S[0]~input_o\ & ( !\S[2]~input_o\ & ( (!\S[1]~input_o\ & 
-- (!\V3|v12|Q~2_combout\ $ (!\B[4]~input_o\ $ (!\A[4]~input_o\)))) # (\S[1]~input_o\ & (((\B[4]~input_o\ & \A[4]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000010001001011010010111011011100000011001100001111110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \V3|v12|ALT_INV_Q~2_combout\,
	datab => \ALT_INV_S[1]~input_o\,
	datac => \ALT_INV_B[4]~input_o\,
	datad => \ALT_INV_A[4]~input_o\,
	datae => \ALT_INV_S[0]~input_o\,
	dataf => \ALT_INV_S[2]~input_o\,
	combout => \V21|v1|v4|Q~combout\);

-- Location: IOIBUF_X8_Y0_N18
\A[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: IOIBUF_X2_Y0_N58
\B[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: LABCELL_X27_Y2_N0
\V4|v12|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \V4|v12|Q~0_combout\ = ( !\S[2]~input_o\ & ( (!\S[1]~input_o\ & (!\B[4]~input_o\ $ (!\S[0]~input_o\ $ (\A[4]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100010000100010010001000010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \ALT_INV_S[1]~input_o\,
	datac => \ALT_INV_S[0]~input_o\,
	datad => \ALT_INV_A[4]~input_o\,
	dataf => \ALT_INV_S[2]~input_o\,
	combout => \V4|v12|Q~0_combout\);

-- Location: LABCELL_X27_Y2_N9
\V4|v12|Q~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \V4|v12|Q~1_combout\ = ( !\S[2]~input_o\ & ( (!\S[1]~input_o\ & (\A[4]~input_o\ & (!\B[4]~input_o\ $ (!\S[0]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000001000000001000000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \ALT_INV_S[1]~input_o\,
	datac => \ALT_INV_A[4]~input_o\,
	datad => \ALT_INV_S[0]~input_o\,
	dataf => \ALT_INV_S[2]~input_o\,
	combout => \V4|v12|Q~1_combout\);

-- Location: LABCELL_X27_Y2_N6
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

-- Location: LABCELL_X27_Y2_N12
\V21|v1|v5|Q\ : cyclonev_lcell_comb
-- Equation(s):
-- \V21|v1|v5|Q~combout\ = ( \S[1]~input_o\ & ( \S[2]~input_o\ & ( (!\A[5]~input_o\ & (!\B[5]~input_o\ $ (!\S[0]~input_o\))) # (\A[5]~input_o\ & (!\B[5]~input_o\ & !\S[0]~input_o\)) ) ) ) # ( !\S[1]~input_o\ & ( \S[2]~input_o\ & ( (!\A[5]~input_o\ & 
-- \S[0]~input_o\) ) ) ) # ( \S[1]~input_o\ & ( !\S[2]~input_o\ & ( (!\A[5]~input_o\ & (\B[5]~input_o\ & \S[0]~input_o\)) # (\A[5]~input_o\ & ((\S[0]~input_o\) # (\B[5]~input_o\))) ) ) ) # ( !\S[1]~input_o\ & ( !\S[2]~input_o\ & ( !\A[5]~input_o\ $ 
-- (!\B[5]~input_o\ $ (!\S[0]~input_o\ $ (\V4|v12|Q~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001011001101001000101110001011100001010000010100110100001101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[5]~input_o\,
	datab => \ALT_INV_B[5]~input_o\,
	datac => \ALT_INV_S[0]~input_o\,
	datad => \V4|v12|ALT_INV_Q~2_combout\,
	datae => \ALT_INV_S[1]~input_o\,
	dataf => \ALT_INV_S[2]~input_o\,
	combout => \V21|v1|v5|Q~combout\);

-- Location: LABCELL_X27_Y2_N51
\V5|v12|Q~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \V5|v12|Q~2_combout\ = ( !\S[2]~input_o\ & ( (\A[5]~input_o\ & (!\S[1]~input_o\ & (!\B[5]~input_o\ $ (!\S[0]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000001000000000100000100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[5]~input_o\,
	datab => \ALT_INV_B[5]~input_o\,
	datac => \ALT_INV_S[1]~input_o\,
	datad => \ALT_INV_S[0]~input_o\,
	dataf => \ALT_INV_S[2]~input_o\,
	combout => \V5|v12|Q~2_combout\);

-- Location: LABCELL_X27_Y2_N45
\V5|v12|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \V5|v12|Q~0_combout\ = ( !\S[2]~input_o\ & ( (!\S[1]~input_o\ & (!\S[0]~input_o\ $ (!\B[5]~input_o\ $ (\A[5]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100010000100010010001000010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_S[0]~input_o\,
	datab => \ALT_INV_S[1]~input_o\,
	datac => \ALT_INV_B[5]~input_o\,
	datad => \ALT_INV_A[5]~input_o\,
	dataf => \ALT_INV_S[2]~input_o\,
	combout => \V5|v12|Q~0_combout\);

-- Location: LABCELL_X27_Y2_N18
\V5|v12|Q~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \V5|v12|Q~1_combout\ = ( \V3|v12|Q~0_combout\ & ( \V4|v12|Q~1_combout\ & ( \V5|v12|Q~0_combout\ ) ) ) # ( !\V3|v12|Q~0_combout\ & ( \V4|v12|Q~1_combout\ & ( \V5|v12|Q~0_combout\ ) ) ) # ( \V3|v12|Q~0_combout\ & ( !\V4|v12|Q~1_combout\ & ( 
-- (\V4|v12|Q~0_combout\ & (\V5|v12|Q~0_combout\ & ((\V3|v12|Q~1_combout\) # (\V2|v12|Q~2_combout\)))) ) ) ) # ( !\V3|v12|Q~0_combout\ & ( !\V4|v12|Q~1_combout\ & ( (\V3|v12|Q~1_combout\ & (\V4|v12|Q~0_combout\ & \V5|v12|Q~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000011100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \V2|v12|ALT_INV_Q~2_combout\,
	datab => \V3|v12|ALT_INV_Q~1_combout\,
	datac => \V4|v12|ALT_INV_Q~0_combout\,
	datad => \V5|v12|ALT_INV_Q~0_combout\,
	datae => \V3|v12|ALT_INV_Q~0_combout\,
	dataf => \V4|v12|ALT_INV_Q~1_combout\,
	combout => \V5|v12|Q~1_combout\);

-- Location: LABCELL_X27_Y2_N3
\V5|v12|Q~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \V5|v12|Q~3_combout\ = ( !\V5|v12|Q~1_combout\ & ( !\V5|v12|Q~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \V5|v12|ALT_INV_Q~2_combout\,
	dataf => \V5|v12|ALT_INV_Q~1_combout\,
	combout => \V5|v12|Q~3_combout\);

-- Location: IOIBUF_X4_Y0_N35
\A[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: IOIBUF_X26_Y0_N75
\B[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: LABCELL_X27_Y2_N54
\V21|v1|v6|Q\ : cyclonev_lcell_comb
-- Equation(s):
-- \V21|v1|v6|Q~combout\ = ( \S[0]~input_o\ & ( \S[2]~input_o\ & ( (!\A[6]~input_o\ & ((!\B[6]~input_o\) # (!\S[1]~input_o\))) ) ) ) # ( !\S[0]~input_o\ & ( \S[2]~input_o\ & ( (\S[1]~input_o\ & (!\A[6]~input_o\ $ (!\B[6]~input_o\))) ) ) ) # ( \S[0]~input_o\ 
-- & ( !\S[2]~input_o\ & ( (!\S[1]~input_o\ & (!\V5|v12|Q~3_combout\ $ (!\A[6]~input_o\ $ (\B[6]~input_o\)))) # (\S[1]~input_o\ & (((\B[6]~input_o\) # (\A[6]~input_o\)))) ) ) ) # ( !\S[0]~input_o\ & ( !\S[2]~input_o\ & ( (!\S[1]~input_o\ & 
-- (!\V5|v12|Q~3_combout\ $ (!\A[6]~input_o\ $ (!\B[6]~input_o\)))) # (\S[1]~input_o\ & (((\A[6]~input_o\ & \B[6]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001011000000011011010010011111100000000001111001100110011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \V5|v12|ALT_INV_Q~3_combout\,
	datab => \ALT_INV_A[6]~input_o\,
	datac => \ALT_INV_B[6]~input_o\,
	datad => \ALT_INV_S[1]~input_o\,
	datae => \ALT_INV_S[0]~input_o\,
	dataf => \ALT_INV_S[2]~input_o\,
	combout => \V21|v1|v6|Q~combout\);

-- Location: MLABCELL_X28_Y2_N6
\V6|v12|Q~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \V6|v12|Q~1_combout\ = ( !\S[2]~input_o\ & ( (\A[6]~input_o\ & (!\S[1]~input_o\ & (!\S[0]~input_o\ $ (!\B[6]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001000000000000100100000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_S[0]~input_o\,
	datab => \ALT_INV_A[6]~input_o\,
	datac => \ALT_INV_B[6]~input_o\,
	datad => \ALT_INV_S[1]~input_o\,
	dataf => \ALT_INV_S[2]~input_o\,
	combout => \V6|v12|Q~1_combout\);

-- Location: MLABCELL_X28_Y2_N0
\V6|v12|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \V6|v12|Q~0_combout\ = ( !\S[2]~input_o\ & ( (!\S[1]~input_o\ & (!\B[6]~input_o\ $ (!\A[6]~input_o\ $ (\S[0]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100100000000011010010000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[6]~input_o\,
	datab => \ALT_INV_A[6]~input_o\,
	datac => \ALT_INV_S[0]~input_o\,
	datad => \ALT_INV_S[1]~input_o\,
	dataf => \ALT_INV_S[2]~input_o\,
	combout => \V6|v12|Q~0_combout\);

-- Location: MLABCELL_X28_Y2_N3
\V6|v12|Q~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \V6|v12|Q~2_combout\ = ( \V5|v12|Q~3_combout\ & ( !\V6|v12|Q~1_combout\ ) ) # ( !\V5|v12|Q~3_combout\ & ( (!\V6|v12|Q~1_combout\ & !\V6|v12|Q~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \V6|v12|ALT_INV_Q~1_combout\,
	datad => \V6|v12|ALT_INV_Q~0_combout\,
	dataf => \V5|v12|ALT_INV_Q~3_combout\,
	combout => \V6|v12|Q~2_combout\);

-- Location: IOIBUF_X28_Y0_N52
\A[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: IOIBUF_X28_Y0_N18
\B[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: MLABCELL_X28_Y2_N42
\V21|v1|v7|Q\ : cyclonev_lcell_comb
-- Equation(s):
-- \V21|v1|v7|Q~combout\ = ( \S[0]~input_o\ & ( \S[2]~input_o\ & ( (!\A[7]~input_o\ & ((!\S[1]~input_o\) # (!\B[7]~input_o\))) ) ) ) # ( !\S[0]~input_o\ & ( \S[2]~input_o\ & ( (\S[1]~input_o\ & (!\A[7]~input_o\ $ (!\B[7]~input_o\))) ) ) ) # ( \S[0]~input_o\ 
-- & ( !\S[2]~input_o\ & ( (!\S[1]~input_o\ & (!\V6|v12|Q~2_combout\ $ (!\A[7]~input_o\ $ (\B[7]~input_o\)))) # (\S[1]~input_o\ & (((\B[7]~input_o\) # (\A[7]~input_o\)))) ) ) ) # ( !\S[0]~input_o\ & ( !\S[2]~input_o\ & ( (!\S[1]~input_o\ & 
-- (!\V6|v12|Q~2_combout\ $ (!\A[7]~input_o\ $ (!\B[7]~input_o\)))) # (\S[1]~input_o\ & (((\A[7]~input_o\ & \B[7]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000010001001011010010111011011100000011001100001111000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \V6|v12|ALT_INV_Q~2_combout\,
	datab => \ALT_INV_S[1]~input_o\,
	datac => \ALT_INV_A[7]~input_o\,
	datad => \ALT_INV_B[7]~input_o\,
	datae => \ALT_INV_S[0]~input_o\,
	dataf => \ALT_INV_S[2]~input_o\,
	combout => \V21|v1|v7|Q~combout\);

-- Location: IOIBUF_X28_Y0_N35
\B[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

-- Location: IOIBUF_X26_Y0_N92
\A[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

-- Location: MLABCELL_X28_Y2_N9
\V7|v12|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \V7|v12|Q~0_combout\ = !\S[0]~input_o\ $ (!\B[7]~input_o\ $ (\A[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101010100101010110101010010101011010101001010101101010100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_S[0]~input_o\,
	datac => \ALT_INV_B[7]~input_o\,
	datad => \ALT_INV_A[7]~input_o\,
	combout => \V7|v12|Q~0_combout\);

-- Location: MLABCELL_X28_Y2_N18
\V7|v12|Q~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \V7|v12|Q~1_combout\ = (\A[7]~input_o\ & (!\S[0]~input_o\ $ (!\B[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100001010000001010000101000000101000010100000010100001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_S[0]~input_o\,
	datac => \ALT_INV_A[7]~input_o\,
	datad => \ALT_INV_B[7]~input_o\,
	combout => \V7|v12|Q~1_combout\);

-- Location: MLABCELL_X28_Y2_N54
\V7|v12|Q~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \V7|v12|Q~2_combout\ = ( \V6|v12|Q~1_combout\ & ( !\V7|v12|Q~1_combout\ & ( !\V7|v12|Q~0_combout\ ) ) ) # ( !\V6|v12|Q~1_combout\ & ( !\V7|v12|Q~1_combout\ & ( (!\V6|v12|Q~0_combout\) # ((!\V7|v12|Q~0_combout\) # ((!\V5|v12|Q~1_combout\ & 
-- !\V5|v12|Q~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111101010111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \V6|v12|ALT_INV_Q~0_combout\,
	datab => \V5|v12|ALT_INV_Q~1_combout\,
	datac => \V5|v12|ALT_INV_Q~2_combout\,
	datad => \V7|v12|ALT_INV_Q~0_combout\,
	datae => \V6|v12|ALT_INV_Q~1_combout\,
	dataf => \V7|v12|ALT_INV_Q~1_combout\,
	combout => \V7|v12|Q~2_combout\);

-- Location: MLABCELL_X28_Y2_N30
\V21|v1|v8|Q\ : cyclonev_lcell_comb
-- Equation(s):
-- \V21|v1|v8|Q~combout\ = ( \V7|v12|Q~2_combout\ & ( \S[2]~input_o\ & ( (!\S[0]~input_o\ & (\S[1]~input_o\ & (!\B[8]~input_o\ $ (!\A[8]~input_o\)))) # (\S[0]~input_o\ & (!\A[8]~input_o\ & ((!\B[8]~input_o\) # (!\S[1]~input_o\)))) ) ) ) # ( 
-- !\V7|v12|Q~2_combout\ & ( \S[2]~input_o\ & ( (!\S[0]~input_o\ & (\S[1]~input_o\ & (!\B[8]~input_o\ $ (!\A[8]~input_o\)))) # (\S[0]~input_o\ & (!\A[8]~input_o\ & ((!\B[8]~input_o\) # (!\S[1]~input_o\)))) ) ) ) # ( \V7|v12|Q~2_combout\ & ( !\S[2]~input_o\ & 
-- ( (!\S[1]~input_o\ & (!\S[0]~input_o\ $ (!\B[8]~input_o\ $ (\A[8]~input_o\)))) # (\S[1]~input_o\ & ((!\S[0]~input_o\ & (\B[8]~input_o\ & \A[8]~input_o\)) # (\S[0]~input_o\ & ((\A[8]~input_o\) # (\B[8]~input_o\))))) ) ) ) # ( !\V7|v12|Q~2_combout\ & ( 
-- !\S[2]~input_o\ & ( (!\S[0]~input_o\ & ((!\B[8]~input_o\ & (!\A[8]~input_o\ & !\S[1]~input_o\)) # (\B[8]~input_o\ & (\A[8]~input_o\)))) # (\S[0]~input_o\ & ((!\B[8]~input_o\ & (\A[8]~input_o\)) # (\B[8]~input_o\ & ((!\A[8]~input_o\) # (\S[1]~input_o\))))) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001011000010111011010010001011101010000011010000101000001101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_S[0]~input_o\,
	datab => \ALT_INV_B[8]~input_o\,
	datac => \ALT_INV_A[8]~input_o\,
	datad => \ALT_INV_S[1]~input_o\,
	datae => \V7|v12|ALT_INV_Q~2_combout\,
	dataf => \ALT_INV_S[2]~input_o\,
	combout => \V21|v1|v8|Q~combout\);

-- Location: MLABCELL_X28_Y2_N21
\V8|v12|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \V8|v12|Q~0_combout\ = ( \A[8]~input_o\ & ( !\S[0]~input_o\ $ (\B[8]~input_o\) ) ) # ( !\A[8]~input_o\ & ( !\S[0]~input_o\ $ (!\B[8]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010010110100101101010100101101001011010010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_S[0]~input_o\,
	datac => \ALT_INV_B[8]~input_o\,
	dataf => \ALT_INV_A[8]~input_o\,
	combout => \V8|v12|Q~0_combout\);

-- Location: MLABCELL_X28_Y2_N36
\V8|v12|Q~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \V8|v12|Q~1_combout\ = ( \B[8]~input_o\ & ( (!\S[0]~input_o\ & \A[8]~input_o\) ) ) # ( !\B[8]~input_o\ & ( (\S[0]~input_o\ & \A[8]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_S[0]~input_o\,
	datac => \ALT_INV_A[8]~input_o\,
	dataf => \ALT_INV_B[8]~input_o\,
	combout => \V8|v12|Q~1_combout\);

-- Location: MLABCELL_X28_Y2_N15
\V8|v12|Q~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \V8|v12|Q~2_combout\ = ( \V14|v9|V4|v3|Q~0_combout\ & ( ((\V8|v12|Q~0_combout\ & !\V7|v12|Q~2_combout\)) # (\V8|v12|Q~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001011111000011110101111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \V8|v12|ALT_INV_Q~0_combout\,
	datac => \V8|v12|ALT_INV_Q~1_combout\,
	datad => \V7|v12|ALT_INV_Q~2_combout\,
	dataf => \V14|v9|V4|v3|ALT_INV_Q~0_combout\,
	combout => \V8|v12|Q~2_combout\);

-- Location: IOIBUF_X8_Y0_N1
\B[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(9),
	o => \B[9]~input_o\);

-- Location: IOIBUF_X6_Y0_N52
\A[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

-- Location: MLABCELL_X28_Y2_N48
\V21|v1|v9|Q\ : cyclonev_lcell_comb
-- Equation(s):
-- \V21|v1|v9|Q~combout\ = ( \A[9]~input_o\ & ( \S[2]~input_o\ & ( (!\S[0]~input_o\ & (!\B[9]~input_o\ & \S[1]~input_o\)) ) ) ) # ( !\A[9]~input_o\ & ( \S[2]~input_o\ & ( !\S[0]~input_o\ $ (((!\B[9]~input_o\) # (!\S[1]~input_o\))) ) ) ) # ( \A[9]~input_o\ & 
-- ( !\S[2]~input_o\ & ( (!\S[1]~input_o\ & (!\S[0]~input_o\ $ (!\V8|v12|Q~2_combout\ $ (!\B[9]~input_o\)))) # (\S[1]~input_o\ & (((\B[9]~input_o\)) # (\S[0]~input_o\))) ) ) ) # ( !\A[9]~input_o\ & ( !\S[2]~input_o\ & ( (!\S[1]~input_o\ & (!\S[0]~input_o\ $ 
-- (!\V8|v12|Q~2_combout\ $ (\B[9]~input_o\)))) # (\S[1]~input_o\ & (\S[0]~input_o\ & ((\B[9]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100100000101100101100101111101010101010110100000000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_S[0]~input_o\,
	datab => \V8|v12|ALT_INV_Q~2_combout\,
	datac => \ALT_INV_B[9]~input_o\,
	datad => \ALT_INV_S[1]~input_o\,
	datae => \ALT_INV_A[9]~input_o\,
	dataf => \ALT_INV_S[2]~input_o\,
	combout => \V21|v1|v9|Q~combout\);

-- Location: IOIBUF_X30_Y0_N35
\A[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

-- Location: IOIBUF_X38_Y0_N1
\B[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(10),
	o => \B[10]~input_o\);

-- Location: MLABCELL_X28_Y2_N12
\V9|v12|Q~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \V9|v12|Q~1_combout\ = (\A[9]~input_o\ & (!\B[9]~input_o\ $ (!\S[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100110000000000110011000000000011001100000000001100110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[9]~input_o\,
	datac => \ALT_INV_B[9]~input_o\,
	datad => \ALT_INV_S[0]~input_o\,
	combout => \V9|v12|Q~1_combout\);

-- Location: MLABCELL_X28_Y2_N39
\V9|v12|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \V9|v12|Q~0_combout\ = ( \B[9]~input_o\ & ( !\S[0]~input_o\ $ (\A[9]~input_o\) ) ) # ( !\B[9]~input_o\ & ( !\S[0]~input_o\ $ (!\A[9]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010010110100101101010100101101001011010010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_S[0]~input_o\,
	datac => \ALT_INV_A[9]~input_o\,
	dataf => \ALT_INV_B[9]~input_o\,
	combout => \V9|v12|Q~0_combout\);

-- Location: MLABCELL_X28_Y2_N24
\V9|v12|Q~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \V9|v12|Q~2_combout\ = ( \V7|v12|Q~2_combout\ & ( \V8|v12|Q~1_combout\ & ( (\V14|v9|V4|v3|Q~0_combout\ & ((\V9|v12|Q~0_combout\) # (\V9|v12|Q~1_combout\))) ) ) ) # ( !\V7|v12|Q~2_combout\ & ( \V8|v12|Q~1_combout\ & ( (\V14|v9|V4|v3|Q~0_combout\ & 
-- ((\V9|v12|Q~0_combout\) # (\V9|v12|Q~1_combout\))) ) ) ) # ( \V7|v12|Q~2_combout\ & ( !\V8|v12|Q~1_combout\ & ( (\V9|v12|Q~1_combout\ & \V14|v9|V4|v3|Q~0_combout\) ) ) ) # ( !\V7|v12|Q~2_combout\ & ( !\V8|v12|Q~1_combout\ & ( (\V14|v9|V4|v3|Q~0_combout\ & 
-- (((\V8|v12|Q~0_combout\ & \V9|v12|Q~0_combout\)) # (\V9|v12|Q~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000111000000110000001100000011000011110000001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \V8|v12|ALT_INV_Q~0_combout\,
	datab => \V9|v12|ALT_INV_Q~1_combout\,
	datac => \V14|v9|V4|v3|ALT_INV_Q~0_combout\,
	datad => \V9|v12|ALT_INV_Q~0_combout\,
	datae => \V7|v12|ALT_INV_Q~2_combout\,
	dataf => \V8|v12|ALT_INV_Q~1_combout\,
	combout => \V9|v12|Q~2_combout\);

-- Location: LABCELL_X33_Y2_N30
\V21|v1|v10|Q\ : cyclonev_lcell_comb
-- Equation(s):
-- \V21|v1|v10|Q~combout\ = ( \S[1]~input_o\ & ( \V9|v12|Q~2_combout\ & ( (!\A[10]~input_o\ & ((!\S[2]~input_o\ & (\S[0]~input_o\ & \B[10]~input_o\)) # (\S[2]~input_o\ & (!\S[0]~input_o\ $ (!\B[10]~input_o\))))) # (\A[10]~input_o\ & (!\S[2]~input_o\ $ 
-- (((!\S[0]~input_o\ & !\B[10]~input_o\))))) ) ) ) # ( !\S[1]~input_o\ & ( \V9|v12|Q~2_combout\ & ( (!\S[2]~input_o\ & (!\A[10]~input_o\ $ (!\S[0]~input_o\ $ (!\B[10]~input_o\)))) # (\S[2]~input_o\ & (!\A[10]~input_o\ & (\S[0]~input_o\))) ) ) ) # ( 
-- \S[1]~input_o\ & ( !\V9|v12|Q~2_combout\ & ( (!\A[10]~input_o\ & ((!\S[2]~input_o\ & (\S[0]~input_o\ & \B[10]~input_o\)) # (\S[2]~input_o\ & (!\S[0]~input_o\ $ (!\B[10]~input_o\))))) # (\A[10]~input_o\ & (!\S[2]~input_o\ $ (((!\S[0]~input_o\ & 
-- !\B[10]~input_o\))))) ) ) ) # ( !\S[1]~input_o\ & ( !\V9|v12|Q~2_combout\ & ( (!\S[2]~input_o\ & (!\A[10]~input_o\ $ (!\S[0]~input_o\ $ (\B[10]~input_o\)))) # (\S[2]~input_o\ & (!\A[10]~input_o\ & (\S[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100101010000110000101100110110010000110010010100001011001101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[10]~input_o\,
	datab => \ALT_INV_S[2]~input_o\,
	datac => \ALT_INV_S[0]~input_o\,
	datad => \ALT_INV_B[10]~input_o\,
	datae => \ALT_INV_S[1]~input_o\,
	dataf => \V9|v12|ALT_INV_Q~2_combout\,
	combout => \V21|v1|v10|Q~combout\);

-- Location: IOIBUF_X32_Y0_N18
\B[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(11),
	o => \B[11]~input_o\);

-- Location: LABCELL_X33_Y2_N9
\V10|v12|Q~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \V10|v12|Q~1_combout\ = (\A[10]~input_o\ & (!\B[10]~input_o\ $ (!\S[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000101000100000100010100010000010001010001000001000101000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[10]~input_o\,
	datab => \ALT_INV_B[10]~input_o\,
	datad => \ALT_INV_S[0]~input_o\,
	combout => \V10|v12|Q~1_combout\);

-- Location: LABCELL_X33_Y2_N6
\V10|v12|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \V10|v12|Q~0_combout\ = !\A[10]~input_o\ $ (!\B[10]~input_o\ $ (\S[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101101001011010010110100101101001011010010110100101101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[10]~input_o\,
	datab => \ALT_INV_B[10]~input_o\,
	datac => \ALT_INV_S[0]~input_o\,
	combout => \V10|v12|Q~0_combout\);

-- Location: LABCELL_X33_Y2_N12
\V10|v12|Q~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \V10|v12|Q~2_combout\ = ( \V10|v12|Q~0_combout\ & ( (\V14|v9|V4|v3|Q~0_combout\ & ((\V9|v12|Q~2_combout\) # (\V10|v12|Q~1_combout\))) ) ) # ( !\V10|v12|Q~0_combout\ & ( (\V10|v12|Q~1_combout\ & \V14|v9|V4|v3|Q~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100000000001111110000000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \V10|v12|ALT_INV_Q~1_combout\,
	datac => \V9|v12|ALT_INV_Q~2_combout\,
	datad => \V14|v9|V4|v3|ALT_INV_Q~0_combout\,
	dataf => \V10|v12|ALT_INV_Q~0_combout\,
	combout => \V10|v12|Q~2_combout\);

-- Location: IOIBUF_X38_Y0_N35
\A[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(11),
	o => \A[11]~input_o\);

-- Location: LABCELL_X33_Y2_N18
\V21|v1|v11|Q\ : cyclonev_lcell_comb
-- Equation(s):
-- \V21|v1|v11|Q~combout\ = ( \S[0]~input_o\ & ( \A[11]~input_o\ & ( (!\S[2]~input_o\ & ((!\B[11]~input_o\ $ (!\V10|v12|Q~2_combout\)) # (\S[1]~input_o\))) ) ) ) # ( !\S[0]~input_o\ & ( \A[11]~input_o\ & ( (!\S[1]~input_o\ & (!\S[2]~input_o\ & 
-- (!\B[11]~input_o\ $ (\V10|v12|Q~2_combout\)))) # (\S[1]~input_o\ & (!\B[11]~input_o\ $ (((!\S[2]~input_o\))))) ) ) ) # ( \S[0]~input_o\ & ( !\A[11]~input_o\ & ( (!\S[1]~input_o\ & ((!\B[11]~input_o\ $ (\V10|v12|Q~2_combout\)) # (\S[2]~input_o\))) # 
-- (\S[1]~input_o\ & (!\B[11]~input_o\ $ (((!\S[2]~input_o\))))) ) ) ) # ( !\S[0]~input_o\ & ( !\A[11]~input_o\ & ( (!\S[1]~input_o\ & (!\S[2]~input_o\ & (!\B[11]~input_o\ $ (!\V10|v12|Q~2_combout\)))) # (\S[1]~input_o\ & (\B[11]~input_o\ & 
-- ((\S[2]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000000000101100101011111101010010101000010100110111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[11]~input_o\,
	datab => \V10|v12|ALT_INV_Q~2_combout\,
	datac => \ALT_INV_S[1]~input_o\,
	datad => \ALT_INV_S[2]~input_o\,
	datae => \ALT_INV_S[0]~input_o\,
	dataf => \ALT_INV_A[11]~input_o\,
	combout => \V21|v1|v11|Q~combout\);

-- Location: LABCELL_X33_Y2_N15
\V11|v12|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \V11|v12|Q~0_combout\ = ( \A[11]~input_o\ & ( !\B[11]~input_o\ $ (\S[0]~input_o\) ) ) # ( !\A[11]~input_o\ & ( !\B[11]~input_o\ $ (!\S[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010110101010010101011010101010101010010101011010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[11]~input_o\,
	datad => \ALT_INV_S[0]~input_o\,
	dataf => \ALT_INV_A[11]~input_o\,
	combout => \V11|v12|Q~0_combout\);

-- Location: LABCELL_X33_Y2_N54
\V11|v12|Q~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \V11|v12|Q~1_combout\ = ( \A[11]~input_o\ & ( !\S[0]~input_o\ $ (!\B[11]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001011010010110100101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_S[0]~input_o\,
	datac => \ALT_INV_B[11]~input_o\,
	dataf => \ALT_INV_A[11]~input_o\,
	combout => \V11|v12|Q~1_combout\);

-- Location: LABCELL_X33_Y2_N0
\V11|v12|Q~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \V11|v12|Q~2_combout\ = ( \V11|v12|Q~1_combout\ & ( \V10|v12|Q~0_combout\ & ( \V14|v9|V4|v3|Q~0_combout\ ) ) ) # ( !\V11|v12|Q~1_combout\ & ( \V10|v12|Q~0_combout\ & ( (\V11|v12|Q~0_combout\ & (\V14|v9|V4|v3|Q~0_combout\ & ((\V10|v12|Q~1_combout\) # 
-- (\V9|v12|Q~2_combout\)))) ) ) ) # ( \V11|v12|Q~1_combout\ & ( !\V10|v12|Q~0_combout\ & ( \V14|v9|V4|v3|Q~0_combout\ ) ) ) # ( !\V11|v12|Q~1_combout\ & ( !\V10|v12|Q~0_combout\ & ( (\V11|v12|Q~0_combout\ & (\V14|v9|V4|v3|Q~0_combout\ & 
-- \V10|v12|Q~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000011110000111100000001000000110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \V9|v12|ALT_INV_Q~2_combout\,
	datab => \V11|v12|ALT_INV_Q~0_combout\,
	datac => \V14|v9|V4|v3|ALT_INV_Q~0_combout\,
	datad => \V10|v12|ALT_INV_Q~1_combout\,
	datae => \V11|v12|ALT_INV_Q~1_combout\,
	dataf => \V10|v12|ALT_INV_Q~0_combout\,
	combout => \V11|v12|Q~2_combout\);

-- Location: IOIBUF_X36_Y0_N52
\A[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(12),
	o => \A[12]~input_o\);

-- Location: IOIBUF_X50_Y0_N41
\B[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(12),
	o => \B[12]~input_o\);

-- Location: LABCELL_X33_Y2_N36
\V21|v1|v12|Q\ : cyclonev_lcell_comb
-- Equation(s):
-- \V21|v1|v12|Q~combout\ = ( \S[0]~input_o\ & ( \B[12]~input_o\ & ( (!\S[1]~input_o\ & (!\A[12]~input_o\ $ (((!\V11|v12|Q~2_combout\ & !\S[2]~input_o\))))) # (\S[1]~input_o\ & (((!\S[2]~input_o\)))) ) ) ) # ( !\S[0]~input_o\ & ( \B[12]~input_o\ & ( 
-- (!\S[2]~input_o\ & (!\A[12]~input_o\ $ (((\S[1]~input_o\) # (\V11|v12|Q~2_combout\))))) # (\S[2]~input_o\ & (((\S[1]~input_o\ & !\A[12]~input_o\)))) ) ) ) # ( \S[0]~input_o\ & ( !\B[12]~input_o\ & ( !\A[12]~input_o\ $ (((!\S[2]~input_o\ & 
-- ((\S[1]~input_o\) # (\V11|v12|Q~2_combout\))))) ) ) ) # ( !\S[0]~input_o\ & ( !\B[12]~input_o\ & ( (!\S[2]~input_o\ & (!\S[1]~input_o\ & (!\V11|v12|Q~2_combout\ $ (!\A[12]~input_o\)))) # (\S[2]~input_o\ & (((\S[1]~input_o\ & \A[12]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000010000011101100110100110010000011010011000111110010001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \V11|v12|ALT_INV_Q~2_combout\,
	datab => \ALT_INV_S[2]~input_o\,
	datac => \ALT_INV_S[1]~input_o\,
	datad => \ALT_INV_A[12]~input_o\,
	datae => \ALT_INV_S[0]~input_o\,
	dataf => \ALT_INV_B[12]~input_o\,
	combout => \V21|v1|v12|Q~combout\);

-- Location: IOIBUF_X34_Y0_N75
\A[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(13),
	o => \A[13]~input_o\);

-- Location: LABCELL_X33_Y2_N57
\V12|v12|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \V12|v12|Q~0_combout\ = ( \B[12]~input_o\ & ( !\S[0]~input_o\ $ (\A[12]~input_o\) ) ) # ( !\B[12]~input_o\ & ( !\S[0]~input_o\ $ (!\A[12]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010010110100101101010100101101001011010010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_S[0]~input_o\,
	datac => \ALT_INV_A[12]~input_o\,
	dataf => \ALT_INV_B[12]~input_o\,
	combout => \V12|v12|Q~0_combout\);

-- Location: LABCELL_X33_Y2_N42
\V12|v12|Q~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \V12|v12|Q~1_combout\ = ( \B[12]~input_o\ & ( (!\S[0]~input_o\ & \A[12]~input_o\) ) ) # ( !\B[12]~input_o\ & ( (\S[0]~input_o\ & \A[12]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_S[0]~input_o\,
	datad => \ALT_INV_A[12]~input_o\,
	dataf => \ALT_INV_B[12]~input_o\,
	combout => \V12|v12|Q~1_combout\);

-- Location: LABCELL_X33_Y2_N45
\V12|v12|Q~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \V12|v12|Q~2_combout\ = ( \V14|v9|V4|v3|Q~0_combout\ & ( ((\V12|v12|Q~0_combout\ & \V11|v12|Q~2_combout\)) # (\V12|v12|Q~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111001111110000111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \V12|v12|ALT_INV_Q~0_combout\,
	datac => \V12|v12|ALT_INV_Q~1_combout\,
	datad => \V11|v12|ALT_INV_Q~2_combout\,
	dataf => \V14|v9|V4|v3|ALT_INV_Q~0_combout\,
	combout => \V12|v12|Q~2_combout\);

-- Location: IOIBUF_X32_Y0_N52
\B[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(13),
	o => \B[13]~input_o\);

-- Location: MLABCELL_X34_Y2_N18
\V21|v1|v13|Q\ : cyclonev_lcell_comb
-- Equation(s):
-- \V21|v1|v13|Q~combout\ = ( \S[1]~input_o\ & ( \S[2]~input_o\ & ( (!\A[13]~input_o\ & (!\S[0]~input_o\ $ (!\B[13]~input_o\))) # (\A[13]~input_o\ & (!\S[0]~input_o\ & !\B[13]~input_o\)) ) ) ) # ( !\S[1]~input_o\ & ( \S[2]~input_o\ & ( (!\A[13]~input_o\ & 
-- \S[0]~input_o\) ) ) ) # ( \S[1]~input_o\ & ( !\S[2]~input_o\ & ( (!\A[13]~input_o\ & (\S[0]~input_o\ & \B[13]~input_o\)) # (\A[13]~input_o\ & ((\B[13]~input_o\) # (\S[0]~input_o\))) ) ) ) # ( !\S[1]~input_o\ & ( !\S[2]~input_o\ & ( !\A[13]~input_o\ $ 
-- (!\S[0]~input_o\ $ (!\V12|v12|Q~2_combout\ $ (!\B[13]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100110010110000100010111011100100010001000100110011010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[13]~input_o\,
	datab => \ALT_INV_S[0]~input_o\,
	datac => \V12|v12|ALT_INV_Q~2_combout\,
	datad => \ALT_INV_B[13]~input_o\,
	datae => \ALT_INV_S[1]~input_o\,
	dataf => \ALT_INV_S[2]~input_o\,
	combout => \V21|v1|v13|Q~combout\);

-- Location: LABCELL_X33_Y2_N48
\V13|v12|Q~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \V13|v12|Q~1_combout\ = ( \A[13]~input_o\ & ( !\S[0]~input_o\ $ (!\B[13]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_S[0]~input_o\,
	datab => \ALT_INV_B[13]~input_o\,
	dataf => \ALT_INV_A[13]~input_o\,
	combout => \V13|v12|Q~1_combout\);

-- Location: LABCELL_X33_Y2_N51
\V13|v12|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \V13|v12|Q~0_combout\ = ( \A[13]~input_o\ & ( !\S[0]~input_o\ $ (\B[13]~input_o\) ) ) # ( !\A[13]~input_o\ & ( !\S[0]~input_o\ $ (!\B[13]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011010011001100110011001100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_S[0]~input_o\,
	datab => \ALT_INV_B[13]~input_o\,
	dataf => \ALT_INV_A[13]~input_o\,
	combout => \V13|v12|Q~0_combout\);

-- Location: LABCELL_X33_Y2_N24
\V13|v12|Q~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \V13|v12|Q~2_combout\ = ( \V11|v12|Q~2_combout\ & ( \V14|v9|V4|v3|Q~0_combout\ & ( ((\V13|v12|Q~0_combout\ & ((\V12|v12|Q~0_combout\) # (\V12|v12|Q~1_combout\)))) # (\V13|v12|Q~1_combout\) ) ) ) # ( !\V11|v12|Q~2_combout\ & ( \V14|v9|V4|v3|Q~0_combout\ & 
-- ( ((\V12|v12|Q~1_combout\ & \V13|v12|Q~0_combout\)) # (\V13|v12|Q~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010111010101110101011101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \V13|v12|ALT_INV_Q~1_combout\,
	datab => \V12|v12|ALT_INV_Q~1_combout\,
	datac => \V13|v12|ALT_INV_Q~0_combout\,
	datad => \V12|v12|ALT_INV_Q~0_combout\,
	datae => \V11|v12|ALT_INV_Q~2_combout\,
	dataf => \V14|v9|V4|v3|ALT_INV_Q~0_combout\,
	combout => \V13|v12|Q~2_combout\);

-- Location: IOIBUF_X38_Y0_N18
\A[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(14),
	o => \A[14]~input_o\);

-- Location: IOIBUF_X50_Y0_N75
\B[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(14),
	o => \B[14]~input_o\);

-- Location: LABCELL_X36_Y2_N30
\V21|v1|v14|Q\ : cyclonev_lcell_comb
-- Equation(s):
-- \V21|v1|v14|Q~combout\ = ( \S[1]~input_o\ & ( \B[14]~input_o\ & ( !\S[2]~input_o\ $ (((!\S[0]~input_o\ & !\A[14]~input_o\))) ) ) ) # ( !\S[1]~input_o\ & ( \B[14]~input_o\ & ( (!\S[2]~input_o\ & (!\S[0]~input_o\ $ (!\V13|v12|Q~2_combout\ $ 
-- (!\A[14]~input_o\)))) # (\S[2]~input_o\ & (\S[0]~input_o\ & ((!\A[14]~input_o\)))) ) ) ) # ( \S[1]~input_o\ & ( !\B[14]~input_o\ & ( (!\S[2]~input_o\ & (\S[0]~input_o\ & \A[14]~input_o\)) # (\S[2]~input_o\ & (!\S[0]~input_o\ $ (!\A[14]~input_o\))) ) ) ) # 
-- ( !\S[1]~input_o\ & ( !\B[14]~input_o\ & ( (!\S[2]~input_o\ & (!\S[0]~input_o\ $ (!\V13|v12|Q~2_combout\ $ (\A[14]~input_o\)))) # (\S[2]~input_o\ & (\S[0]~input_o\ & ((!\A[14]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011100110000010000100010110011010010011001010000110011010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_S[2]~input_o\,
	datab => \ALT_INV_S[0]~input_o\,
	datac => \V13|v12|ALT_INV_Q~2_combout\,
	datad => \ALT_INV_A[14]~input_o\,
	datae => \ALT_INV_S[1]~input_o\,
	dataf => \ALT_INV_B[14]~input_o\,
	combout => \V21|v1|v14|Q~combout\);

-- Location: LABCELL_X36_Y2_N6
\V14|v12|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \V14|v12|Q~0_combout\ = ( \A[14]~input_o\ & ( \B[14]~input_o\ & ( (\V14|v9|V4|v3|Q~0_combout\ & ((!\S[0]~input_o\) # (\V13|v12|Q~2_combout\))) ) ) ) # ( !\A[14]~input_o\ & ( \B[14]~input_o\ & ( (\V13|v12|Q~2_combout\ & (!\S[0]~input_o\ & 
-- \V14|v9|V4|v3|Q~0_combout\)) ) ) ) # ( \A[14]~input_o\ & ( !\B[14]~input_o\ & ( (\V14|v9|V4|v3|Q~0_combout\ & ((\S[0]~input_o\) # (\V13|v12|Q~2_combout\))) ) ) ) # ( !\A[14]~input_o\ & ( !\B[14]~input_o\ & ( (\V13|v12|Q~2_combout\ & (\S[0]~input_o\ & 
-- \V14|v9|V4|v3|Q~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000001110000011100000100000001000000110100001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \V13|v12|ALT_INV_Q~2_combout\,
	datab => \ALT_INV_S[0]~input_o\,
	datac => \V14|v9|V4|v3|ALT_INV_Q~0_combout\,
	datae => \ALT_INV_A[14]~input_o\,
	dataf => \ALT_INV_B[14]~input_o\,
	combout => \V14|v12|Q~0_combout\);

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

-- Location: LABCELL_X36_Y2_N42
\V21|v1|v15|Q\ : cyclonev_lcell_comb
-- Equation(s):
-- \V21|v1|v15|Q~combout\ = ( \A[15]~input_o\ & ( \B[15]~input_o\ & ( (!\S[2]~input_o\ & ((!\S[0]~input_o\ $ (!\V14|v12|Q~0_combout\)) # (\S[1]~input_o\))) ) ) ) # ( !\A[15]~input_o\ & ( \B[15]~input_o\ & ( !\S[0]~input_o\ $ (((!\S[1]~input_o\ & 
-- ((\V14|v12|Q~0_combout\) # (\S[2]~input_o\))) # (\S[1]~input_o\ & (!\S[2]~input_o\)))) ) ) ) # ( \A[15]~input_o\ & ( !\B[15]~input_o\ & ( (!\S[1]~input_o\ & (!\S[2]~input_o\ & (!\S[0]~input_o\ $ (\V14|v12|Q~0_combout\)))) # (\S[1]~input_o\ & 
-- (!\S[0]~input_o\ $ ((!\S[2]~input_o\)))) ) ) ) # ( !\A[15]~input_o\ & ( !\B[15]~input_o\ & ( (!\S[2]~input_o\ & (!\S[1]~input_o\ & (!\S[0]~input_o\ $ (!\V14|v12|Q~0_combout\)))) # (\S[2]~input_o\ & (((\S[0]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001110000011100101000011010010010110001101100111000011010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_S[1]~input_o\,
	datab => \ALT_INV_S[0]~input_o\,
	datac => \ALT_INV_S[2]~input_o\,
	datad => \V14|v12|ALT_INV_Q~0_combout\,
	datae => \ALT_INV_A[15]~input_o\,
	dataf => \ALT_INV_B[15]~input_o\,
	combout => \V21|v1|v15|Q~combout\);

-- Location: LABCELL_X36_Y2_N51
\V14|v0|v5|Q\ : cyclonev_lcell_comb
-- Equation(s):
-- \V14|v0|v5|Q~combout\ = ( \B[14]~input_o\ & ( (\A[14]~input_o\) # (\V13|v12|Q~2_combout\) ) ) # ( !\B[14]~input_o\ & ( (\V13|v12|Q~2_combout\ & \A[14]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000101110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \V13|v12|ALT_INV_Q~2_combout\,
	datab => \ALT_INV_A[14]~input_o\,
	dataf => \ALT_INV_B[14]~input_o\,
	combout => \V14|v0|v5|Q~combout\);

-- Location: LABCELL_X36_Y2_N48
\V14|v2|v5|Q\ : cyclonev_lcell_comb
-- Equation(s):
-- \V14|v2|v5|Q~combout\ = ( \B[14]~input_o\ & ( (\V13|v12|Q~2_combout\ & \A[14]~input_o\) ) ) # ( !\B[14]~input_o\ & ( (\A[14]~input_o\) # (\V13|v12|Q~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111011101110111011100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \V13|v12|ALT_INV_Q~2_combout\,
	datab => \ALT_INV_A[14]~input_o\,
	dataf => \ALT_INV_B[14]~input_o\,
	combout => \V14|v2|v5|Q~combout\);

-- Location: LABCELL_X36_Y2_N54
\v22|v3|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \v22|v3|Q~0_combout\ = ( \A[15]~input_o\ & ( \V14|v9|V4|v3|Q~0_combout\ & ( (!\S[0]~input_o\ & (((!\B[15]~input_o\)) # (\V14|v0|v5|Q~combout\))) # (\S[0]~input_o\ & (((\B[15]~input_o\) # (\V14|v2|v5|Q~combout\)))) ) ) ) # ( !\A[15]~input_o\ & ( 
-- \V14|v9|V4|v3|Q~0_combout\ & ( (!\S[0]~input_o\ & ((!\V14|v0|v5|Q~combout\) # ((\B[15]~input_o\)))) # (\S[0]~input_o\ & (((!\V14|v2|v5|Q~combout\) # (!\B[15]~input_o\)))) ) ) ) # ( \A[15]~input_o\ & ( !\V14|v9|V4|v3|Q~0_combout\ ) ) # ( !\A[15]~input_o\ & 
-- ( !\V14|v9|V4|v3|Q~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111110111011111111001100111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \V14|v0|v5|ALT_INV_Q~combout\,
	datab => \ALT_INV_S[0]~input_o\,
	datac => \V14|v2|v5|ALT_INV_Q~combout\,
	datad => \ALT_INV_B[15]~input_o\,
	datae => \ALT_INV_A[15]~input_o\,
	dataf => \V14|v9|V4|v3|ALT_INV_Q~0_combout\,
	combout => \v22|v3|Q~0_combout\);

-- Location: LABCELL_X36_Y2_N3
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


