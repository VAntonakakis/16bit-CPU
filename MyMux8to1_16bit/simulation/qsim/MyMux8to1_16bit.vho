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

-- DATE "04/29/2026 15:03:58"

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

ENTITY 	MyMux8to1_16bit IS
    PORT (
	S : IN std_logic_vector(2 DOWNTO 0);
	A : IN std_logic_vector(15 DOWNTO 0);
	B : IN std_logic_vector(15 DOWNTO 0);
	C : IN std_logic_vector(15 DOWNTO 0);
	D : IN std_logic_vector(15 DOWNTO 0);
	E : IN std_logic_vector(15 DOWNTO 0);
	F : IN std_logic_vector(15 DOWNTO 0);
	G : IN std_logic_vector(15 DOWNTO 0);
	H : IN std_logic_vector(15 DOWNTO 0);
	Q : BUFFER std_logic_vector(15 DOWNTO 0)
	);
END MyMux8to1_16bit;

-- Design Ports Information
-- Q[0]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[1]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[2]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[3]	=>  Location: PIN_U17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[4]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[5]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[6]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[7]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[8]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[9]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[10]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[11]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[12]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[13]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[14]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[15]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[2]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- E[0]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[0]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G[0]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- H[0]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[0]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[1]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[0]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[0]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- E[1]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[1]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G[1]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- H[1]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[1]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[1]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- E[2]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[2]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G[2]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- H[2]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[2]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[2]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- E[3]	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[3]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G[3]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- H[3]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[3]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[3]	=>  Location: PIN_V19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- E[4]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[4]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G[4]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- H[4]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[4]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[4]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- E[5]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[5]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G[5]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- H[5]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[5]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[5]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- E[6]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[6]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G[6]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- H[6]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[6]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[6]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- E[7]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[7]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G[7]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- H[7]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[7]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[7]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- E[8]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[8]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G[8]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- H[8]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[8]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[8]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[8]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- E[9]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[9]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G[9]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- H[9]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[9]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[9]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[9]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- E[10]	=>  Location: PIN_P17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[10]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G[10]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- H[10]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[10]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[10]	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[10]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[10]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- E[11]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[11]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G[11]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- H[11]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[11]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[11]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[11]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[11]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- E[12]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[12]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G[12]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- H[12]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[12]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[12]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[12]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[12]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- E[13]	=>  Location: PIN_G6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[13]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G[13]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- H[13]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[13]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[13]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[13]	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[13]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- E[14]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[14]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G[14]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- H[14]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[14]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[14]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[14]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[14]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- E[15]	=>  Location: PIN_L17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[15]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G[15]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- H[15]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[15]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[15]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[15]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[15]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF MyMux8to1_16bit IS
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
SIGNAL ww_C : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_D : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_E : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_F : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_G : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_H : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_Q : std_logic_vector(15 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \S[0]~input_o\ : std_logic;
SIGNAL \C[0]~input_o\ : std_logic;
SIGNAL \D[0]~input_o\ : std_logic;
SIGNAL \S[1]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \v6|v3|v0|Q~1_combout\ : std_logic;
SIGNAL \S[2]~input_o\ : std_logic;
SIGNAL \H[0]~input_o\ : std_logic;
SIGNAL \E[0]~input_o\ : std_logic;
SIGNAL \G[0]~input_o\ : std_logic;
SIGNAL \F[0]~input_o\ : std_logic;
SIGNAL \v6|v3|v0|Q~0_combout\ : std_logic;
SIGNAL \v6|v3|v0|Q~2_combout\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \D[1]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \C[1]~input_o\ : std_logic;
SIGNAL \v6|v3|v1|Q~1_combout\ : std_logic;
SIGNAL \E[1]~input_o\ : std_logic;
SIGNAL \G[1]~input_o\ : std_logic;
SIGNAL \H[1]~input_o\ : std_logic;
SIGNAL \F[1]~input_o\ : std_logic;
SIGNAL \v6|v3|v1|Q~0_combout\ : std_logic;
SIGNAL \v6|v3|v1|Q~2_combout\ : std_logic;
SIGNAL \E[2]~input_o\ : std_logic;
SIGNAL \H[2]~input_o\ : std_logic;
SIGNAL \F[2]~input_o\ : std_logic;
SIGNAL \G[2]~input_o\ : std_logic;
SIGNAL \v6|v3|v2|Q~0_combout\ : std_logic;
SIGNAL \D[2]~input_o\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \C[2]~input_o\ : std_logic;
SIGNAL \v6|v3|v2|Q~1_combout\ : std_logic;
SIGNAL \v6|v3|v2|Q~2_combout\ : std_logic;
SIGNAL \C[3]~input_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \D[3]~input_o\ : std_logic;
SIGNAL \v6|v3|v3|Q~1_combout\ : std_logic;
SIGNAL \G[3]~input_o\ : std_logic;
SIGNAL \F[3]~input_o\ : std_logic;
SIGNAL \H[3]~input_o\ : std_logic;
SIGNAL \E[3]~input_o\ : std_logic;
SIGNAL \v6|v3|v3|Q~0_combout\ : std_logic;
SIGNAL \v6|v3|v3|Q~2_combout\ : std_logic;
SIGNAL \H[4]~input_o\ : std_logic;
SIGNAL \G[4]~input_o\ : std_logic;
SIGNAL \E[4]~input_o\ : std_logic;
SIGNAL \F[4]~input_o\ : std_logic;
SIGNAL \v6|v3|v4|Q~0_combout\ : std_logic;
SIGNAL \C[4]~input_o\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \D[4]~input_o\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \v6|v3|v4|Q~1_combout\ : std_logic;
SIGNAL \v6|v3|v4|Q~2_combout\ : std_logic;
SIGNAL \H[5]~input_o\ : std_logic;
SIGNAL \E[5]~input_o\ : std_logic;
SIGNAL \G[5]~input_o\ : std_logic;
SIGNAL \F[5]~input_o\ : std_logic;
SIGNAL \v6|v3|v5|Q~0_combout\ : std_logic;
SIGNAL \D[5]~input_o\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \C[5]~input_o\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \v6|v3|v5|Q~1_combout\ : std_logic;
SIGNAL \v6|v3|v5|Q~2_combout\ : std_logic;
SIGNAL \C[6]~input_o\ : std_logic;
SIGNAL \D[6]~input_o\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \v6|v3|v6|Q~1_combout\ : std_logic;
SIGNAL \E[6]~input_o\ : std_logic;
SIGNAL \F[6]~input_o\ : std_logic;
SIGNAL \H[6]~input_o\ : std_logic;
SIGNAL \G[6]~input_o\ : std_logic;
SIGNAL \v6|v3|v6|Q~0_combout\ : std_logic;
SIGNAL \v6|v3|v6|Q~2_combout\ : std_logic;
SIGNAL \D[7]~input_o\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \C[7]~input_o\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \v6|v3|v7|Q~1_combout\ : std_logic;
SIGNAL \F[7]~input_o\ : std_logic;
SIGNAL \H[7]~input_o\ : std_logic;
SIGNAL \G[7]~input_o\ : std_logic;
SIGNAL \E[7]~input_o\ : std_logic;
SIGNAL \v6|v3|v7|Q~0_combout\ : std_logic;
SIGNAL \v6|v3|v7|Q~2_combout\ : std_logic;
SIGNAL \F[8]~input_o\ : std_logic;
SIGNAL \E[8]~input_o\ : std_logic;
SIGNAL \G[8]~input_o\ : std_logic;
SIGNAL \H[8]~input_o\ : std_logic;
SIGNAL \v6|v3|v8|Q~0_combout\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \B[8]~input_o\ : std_logic;
SIGNAL \C[8]~input_o\ : std_logic;
SIGNAL \D[8]~input_o\ : std_logic;
SIGNAL \v6|v3|v8|Q~1_combout\ : std_logic;
SIGNAL \v6|v3|v8|Q~2_combout\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \B[9]~input_o\ : std_logic;
SIGNAL \D[9]~input_o\ : std_logic;
SIGNAL \C[9]~input_o\ : std_logic;
SIGNAL \v6|v3|v9|Q~1_combout\ : std_logic;
SIGNAL \H[9]~input_o\ : std_logic;
SIGNAL \F[9]~input_o\ : std_logic;
SIGNAL \G[9]~input_o\ : std_logic;
SIGNAL \E[9]~input_o\ : std_logic;
SIGNAL \v6|v3|v9|Q~0_combout\ : std_logic;
SIGNAL \v6|v3|v9|Q~2_combout\ : std_logic;
SIGNAL \C[10]~input_o\ : std_logic;
SIGNAL \B[10]~input_o\ : std_logic;
SIGNAL \D[10]~input_o\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \v6|v3|v10|Q~1_combout\ : std_logic;
SIGNAL \F[10]~input_o\ : std_logic;
SIGNAL \G[10]~input_o\ : std_logic;
SIGNAL \H[10]~input_o\ : std_logic;
SIGNAL \E[10]~input_o\ : std_logic;
SIGNAL \v6|v3|v10|Q~0_combout\ : std_logic;
SIGNAL \v6|v3|v10|Q~2_combout\ : std_logic;
SIGNAL \B[11]~input_o\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \C[11]~input_o\ : std_logic;
SIGNAL \D[11]~input_o\ : std_logic;
SIGNAL \v6|v3|v11|Q~1_combout\ : std_logic;
SIGNAL \G[11]~input_o\ : std_logic;
SIGNAL \E[11]~input_o\ : std_logic;
SIGNAL \H[11]~input_o\ : std_logic;
SIGNAL \F[11]~input_o\ : std_logic;
SIGNAL \v6|v3|v11|Q~0_combout\ : std_logic;
SIGNAL \v6|v3|v11|Q~2_combout\ : std_logic;
SIGNAL \G[12]~input_o\ : std_logic;
SIGNAL \E[12]~input_o\ : std_logic;
SIGNAL \F[12]~input_o\ : std_logic;
SIGNAL \H[12]~input_o\ : std_logic;
SIGNAL \v6|v3|v12|Q~0_combout\ : std_logic;
SIGNAL \C[12]~input_o\ : std_logic;
SIGNAL \B[12]~input_o\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
SIGNAL \D[12]~input_o\ : std_logic;
SIGNAL \v6|v3|v12|Q~1_combout\ : std_logic;
SIGNAL \v6|v3|v12|Q~2_combout\ : std_logic;
SIGNAL \H[13]~input_o\ : std_logic;
SIGNAL \E[13]~input_o\ : std_logic;
SIGNAL \G[13]~input_o\ : std_logic;
SIGNAL \F[13]~input_o\ : std_logic;
SIGNAL \v6|v3|v13|Q~0_combout\ : std_logic;
SIGNAL \D[13]~input_o\ : std_logic;
SIGNAL \C[13]~input_o\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \B[13]~input_o\ : std_logic;
SIGNAL \v6|v3|v13|Q~1_combout\ : std_logic;
SIGNAL \v6|v3|v13|Q~2_combout\ : std_logic;
SIGNAL \G[14]~input_o\ : std_logic;
SIGNAL \H[14]~input_o\ : std_logic;
SIGNAL \E[14]~input_o\ : std_logic;
SIGNAL \F[14]~input_o\ : std_logic;
SIGNAL \v6|v3|v14|Q~0_combout\ : std_logic;
SIGNAL \D[14]~input_o\ : std_logic;
SIGNAL \C[14]~input_o\ : std_logic;
SIGNAL \B[14]~input_o\ : std_logic;
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \v6|v3|v14|Q~1_combout\ : std_logic;
SIGNAL \v6|v3|v14|Q~2_combout\ : std_logic;
SIGNAL \C[15]~input_o\ : std_logic;
SIGNAL \B[15]~input_o\ : std_logic;
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \D[15]~input_o\ : std_logic;
SIGNAL \v6|v3|v15|Q~1_combout\ : std_logic;
SIGNAL \H[15]~input_o\ : std_logic;
SIGNAL \F[15]~input_o\ : std_logic;
SIGNAL \G[15]~input_o\ : std_logic;
SIGNAL \E[15]~input_o\ : std_logic;
SIGNAL \v6|v3|v15|Q~0_combout\ : std_logic;
SIGNAL \v6|v3|v15|Q~2_combout\ : std_logic;
SIGNAL \v6|v3|v15|ALT_INV_Q~1_combout\ : std_logic;
SIGNAL \v6|v3|v15|ALT_INV_Q~0_combout\ : std_logic;
SIGNAL \v6|v3|v14|ALT_INV_Q~1_combout\ : std_logic;
SIGNAL \v6|v3|v14|ALT_INV_Q~0_combout\ : std_logic;
SIGNAL \v6|v3|v13|ALT_INV_Q~1_combout\ : std_logic;
SIGNAL \v6|v3|v13|ALT_INV_Q~0_combout\ : std_logic;
SIGNAL \v6|v3|v12|ALT_INV_Q~1_combout\ : std_logic;
SIGNAL \v6|v3|v12|ALT_INV_Q~0_combout\ : std_logic;
SIGNAL \v6|v3|v11|ALT_INV_Q~1_combout\ : std_logic;
SIGNAL \v6|v3|v11|ALT_INV_Q~0_combout\ : std_logic;
SIGNAL \v6|v3|v10|ALT_INV_Q~1_combout\ : std_logic;
SIGNAL \v6|v3|v10|ALT_INV_Q~0_combout\ : std_logic;
SIGNAL \v6|v3|v9|ALT_INV_Q~1_combout\ : std_logic;
SIGNAL \v6|v3|v9|ALT_INV_Q~0_combout\ : std_logic;
SIGNAL \v6|v3|v8|ALT_INV_Q~1_combout\ : std_logic;
SIGNAL \v6|v3|v8|ALT_INV_Q~0_combout\ : std_logic;
SIGNAL \v6|v3|v7|ALT_INV_Q~1_combout\ : std_logic;
SIGNAL \v6|v3|v7|ALT_INV_Q~0_combout\ : std_logic;
SIGNAL \v6|v3|v6|ALT_INV_Q~1_combout\ : std_logic;
SIGNAL \v6|v3|v6|ALT_INV_Q~0_combout\ : std_logic;
SIGNAL \v6|v3|v5|ALT_INV_Q~1_combout\ : std_logic;
SIGNAL \v6|v3|v5|ALT_INV_Q~0_combout\ : std_logic;
SIGNAL \v6|v3|v4|ALT_INV_Q~1_combout\ : std_logic;
SIGNAL \v6|v3|v4|ALT_INV_Q~0_combout\ : std_logic;
SIGNAL \v6|v3|v3|ALT_INV_Q~1_combout\ : std_logic;
SIGNAL \v6|v3|v3|ALT_INV_Q~0_combout\ : std_logic;
SIGNAL \v6|v3|v2|ALT_INV_Q~1_combout\ : std_logic;
SIGNAL \v6|v3|v2|ALT_INV_Q~0_combout\ : std_logic;
SIGNAL \v6|v3|v1|ALT_INV_Q~1_combout\ : std_logic;
SIGNAL \v6|v3|v1|ALT_INV_Q~0_combout\ : std_logic;
SIGNAL \v6|v3|v0|ALT_INV_Q~1_combout\ : std_logic;
SIGNAL \v6|v3|v0|ALT_INV_Q~0_combout\ : std_logic;
SIGNAL \ALT_INV_H[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_G[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_F[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_E[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_D[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_C[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_H[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_G[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_F[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_E[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_D[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_C[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_H[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_G[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_F[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_E[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_D[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_C[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_H[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_G[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_F[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_E[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_D[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_C[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_H[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_G[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_F[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_E[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_D[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_C[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_H[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_G[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_F[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_E[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_D[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_C[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_H[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_G[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_F[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_E[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_D[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_C[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_H[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_G[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_F[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_E[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_D[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_C[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_H[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_G[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_F[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_E[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_D[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_C[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_H[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_G[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_F[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_E[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_D[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_C[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_H[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_G[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_F[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_E[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_D[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_C[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_H[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_G[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_F[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_E[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_D[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_C[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_H[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_G[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_F[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_E[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_D[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_C[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_H[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_G[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_F[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_E[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_D[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_C[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_H[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_G[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_F[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_E[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_D[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_C[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_S[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_S[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_H[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_G[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_F[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_E[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_S[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_D[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_C[15]~input_o\ : std_logic;

BEGIN

ww_S <= S;
ww_A <= A;
ww_B <= B;
ww_C <= C;
ww_D <= D;
ww_E <= E;
ww_F <= F;
ww_G <= G;
ww_H <= H;
Q <= ww_Q;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\v6|v3|v15|ALT_INV_Q~1_combout\ <= NOT \v6|v3|v15|Q~1_combout\;
\v6|v3|v15|ALT_INV_Q~0_combout\ <= NOT \v6|v3|v15|Q~0_combout\;
\v6|v3|v14|ALT_INV_Q~1_combout\ <= NOT \v6|v3|v14|Q~1_combout\;
\v6|v3|v14|ALT_INV_Q~0_combout\ <= NOT \v6|v3|v14|Q~0_combout\;
\v6|v3|v13|ALT_INV_Q~1_combout\ <= NOT \v6|v3|v13|Q~1_combout\;
\v6|v3|v13|ALT_INV_Q~0_combout\ <= NOT \v6|v3|v13|Q~0_combout\;
\v6|v3|v12|ALT_INV_Q~1_combout\ <= NOT \v6|v3|v12|Q~1_combout\;
\v6|v3|v12|ALT_INV_Q~0_combout\ <= NOT \v6|v3|v12|Q~0_combout\;
\v6|v3|v11|ALT_INV_Q~1_combout\ <= NOT \v6|v3|v11|Q~1_combout\;
\v6|v3|v11|ALT_INV_Q~0_combout\ <= NOT \v6|v3|v11|Q~0_combout\;
\v6|v3|v10|ALT_INV_Q~1_combout\ <= NOT \v6|v3|v10|Q~1_combout\;
\v6|v3|v10|ALT_INV_Q~0_combout\ <= NOT \v6|v3|v10|Q~0_combout\;
\v6|v3|v9|ALT_INV_Q~1_combout\ <= NOT \v6|v3|v9|Q~1_combout\;
\v6|v3|v9|ALT_INV_Q~0_combout\ <= NOT \v6|v3|v9|Q~0_combout\;
\v6|v3|v8|ALT_INV_Q~1_combout\ <= NOT \v6|v3|v8|Q~1_combout\;
\v6|v3|v8|ALT_INV_Q~0_combout\ <= NOT \v6|v3|v8|Q~0_combout\;
\v6|v3|v7|ALT_INV_Q~1_combout\ <= NOT \v6|v3|v7|Q~1_combout\;
\v6|v3|v7|ALT_INV_Q~0_combout\ <= NOT \v6|v3|v7|Q~0_combout\;
\v6|v3|v6|ALT_INV_Q~1_combout\ <= NOT \v6|v3|v6|Q~1_combout\;
\v6|v3|v6|ALT_INV_Q~0_combout\ <= NOT \v6|v3|v6|Q~0_combout\;
\v6|v3|v5|ALT_INV_Q~1_combout\ <= NOT \v6|v3|v5|Q~1_combout\;
\v6|v3|v5|ALT_INV_Q~0_combout\ <= NOT \v6|v3|v5|Q~0_combout\;
\v6|v3|v4|ALT_INV_Q~1_combout\ <= NOT \v6|v3|v4|Q~1_combout\;
\v6|v3|v4|ALT_INV_Q~0_combout\ <= NOT \v6|v3|v4|Q~0_combout\;
\v6|v3|v3|ALT_INV_Q~1_combout\ <= NOT \v6|v3|v3|Q~1_combout\;
\v6|v3|v3|ALT_INV_Q~0_combout\ <= NOT \v6|v3|v3|Q~0_combout\;
\v6|v3|v2|ALT_INV_Q~1_combout\ <= NOT \v6|v3|v2|Q~1_combout\;
\v6|v3|v2|ALT_INV_Q~0_combout\ <= NOT \v6|v3|v2|Q~0_combout\;
\v6|v3|v1|ALT_INV_Q~1_combout\ <= NOT \v6|v3|v1|Q~1_combout\;
\v6|v3|v1|ALT_INV_Q~0_combout\ <= NOT \v6|v3|v1|Q~0_combout\;
\v6|v3|v0|ALT_INV_Q~1_combout\ <= NOT \v6|v3|v0|Q~1_combout\;
\v6|v3|v0|ALT_INV_Q~0_combout\ <= NOT \v6|v3|v0|Q~0_combout\;
\ALT_INV_H[15]~input_o\ <= NOT \H[15]~input_o\;
\ALT_INV_G[15]~input_o\ <= NOT \G[15]~input_o\;
\ALT_INV_F[15]~input_o\ <= NOT \F[15]~input_o\;
\ALT_INV_E[15]~input_o\ <= NOT \E[15]~input_o\;
\ALT_INV_A[14]~input_o\ <= NOT \A[14]~input_o\;
\ALT_INV_B[14]~input_o\ <= NOT \B[14]~input_o\;
\ALT_INV_D[14]~input_o\ <= NOT \D[14]~input_o\;
\ALT_INV_C[14]~input_o\ <= NOT \C[14]~input_o\;
\ALT_INV_H[14]~input_o\ <= NOT \H[14]~input_o\;
\ALT_INV_G[14]~input_o\ <= NOT \G[14]~input_o\;
\ALT_INV_F[14]~input_o\ <= NOT \F[14]~input_o\;
\ALT_INV_E[14]~input_o\ <= NOT \E[14]~input_o\;
\ALT_INV_A[13]~input_o\ <= NOT \A[13]~input_o\;
\ALT_INV_B[13]~input_o\ <= NOT \B[13]~input_o\;
\ALT_INV_D[13]~input_o\ <= NOT \D[13]~input_o\;
\ALT_INV_C[13]~input_o\ <= NOT \C[13]~input_o\;
\ALT_INV_H[13]~input_o\ <= NOT \H[13]~input_o\;
\ALT_INV_G[13]~input_o\ <= NOT \G[13]~input_o\;
\ALT_INV_F[13]~input_o\ <= NOT \F[13]~input_o\;
\ALT_INV_E[13]~input_o\ <= NOT \E[13]~input_o\;
\ALT_INV_A[12]~input_o\ <= NOT \A[12]~input_o\;
\ALT_INV_B[12]~input_o\ <= NOT \B[12]~input_o\;
\ALT_INV_D[12]~input_o\ <= NOT \D[12]~input_o\;
\ALT_INV_C[12]~input_o\ <= NOT \C[12]~input_o\;
\ALT_INV_H[12]~input_o\ <= NOT \H[12]~input_o\;
\ALT_INV_G[12]~input_o\ <= NOT \G[12]~input_o\;
\ALT_INV_F[12]~input_o\ <= NOT \F[12]~input_o\;
\ALT_INV_E[12]~input_o\ <= NOT \E[12]~input_o\;
\ALT_INV_A[11]~input_o\ <= NOT \A[11]~input_o\;
\ALT_INV_B[11]~input_o\ <= NOT \B[11]~input_o\;
\ALT_INV_D[11]~input_o\ <= NOT \D[11]~input_o\;
\ALT_INV_C[11]~input_o\ <= NOT \C[11]~input_o\;
\ALT_INV_H[11]~input_o\ <= NOT \H[11]~input_o\;
\ALT_INV_G[11]~input_o\ <= NOT \G[11]~input_o\;
\ALT_INV_F[11]~input_o\ <= NOT \F[11]~input_o\;
\ALT_INV_E[11]~input_o\ <= NOT \E[11]~input_o\;
\ALT_INV_A[10]~input_o\ <= NOT \A[10]~input_o\;
\ALT_INV_B[10]~input_o\ <= NOT \B[10]~input_o\;
\ALT_INV_D[10]~input_o\ <= NOT \D[10]~input_o\;
\ALT_INV_C[10]~input_o\ <= NOT \C[10]~input_o\;
\ALT_INV_H[10]~input_o\ <= NOT \H[10]~input_o\;
\ALT_INV_G[10]~input_o\ <= NOT \G[10]~input_o\;
\ALT_INV_F[10]~input_o\ <= NOT \F[10]~input_o\;
\ALT_INV_E[10]~input_o\ <= NOT \E[10]~input_o\;
\ALT_INV_A[9]~input_o\ <= NOT \A[9]~input_o\;
\ALT_INV_B[9]~input_o\ <= NOT \B[9]~input_o\;
\ALT_INV_D[9]~input_o\ <= NOT \D[9]~input_o\;
\ALT_INV_C[9]~input_o\ <= NOT \C[9]~input_o\;
\ALT_INV_H[9]~input_o\ <= NOT \H[9]~input_o\;
\ALT_INV_G[9]~input_o\ <= NOT \G[9]~input_o\;
\ALT_INV_F[9]~input_o\ <= NOT \F[9]~input_o\;
\ALT_INV_E[9]~input_o\ <= NOT \E[9]~input_o\;
\ALT_INV_A[8]~input_o\ <= NOT \A[8]~input_o\;
\ALT_INV_B[8]~input_o\ <= NOT \B[8]~input_o\;
\ALT_INV_D[8]~input_o\ <= NOT \D[8]~input_o\;
\ALT_INV_C[8]~input_o\ <= NOT \C[8]~input_o\;
\ALT_INV_H[8]~input_o\ <= NOT \H[8]~input_o\;
\ALT_INV_G[8]~input_o\ <= NOT \G[8]~input_o\;
\ALT_INV_F[8]~input_o\ <= NOT \F[8]~input_o\;
\ALT_INV_E[8]~input_o\ <= NOT \E[8]~input_o\;
\ALT_INV_A[7]~input_o\ <= NOT \A[7]~input_o\;
\ALT_INV_B[7]~input_o\ <= NOT \B[7]~input_o\;
\ALT_INV_D[7]~input_o\ <= NOT \D[7]~input_o\;
\ALT_INV_C[7]~input_o\ <= NOT \C[7]~input_o\;
\ALT_INV_H[7]~input_o\ <= NOT \H[7]~input_o\;
\ALT_INV_G[7]~input_o\ <= NOT \G[7]~input_o\;
\ALT_INV_F[7]~input_o\ <= NOT \F[7]~input_o\;
\ALT_INV_E[7]~input_o\ <= NOT \E[7]~input_o\;
\ALT_INV_A[6]~input_o\ <= NOT \A[6]~input_o\;
\ALT_INV_B[6]~input_o\ <= NOT \B[6]~input_o\;
\ALT_INV_D[6]~input_o\ <= NOT \D[6]~input_o\;
\ALT_INV_C[6]~input_o\ <= NOT \C[6]~input_o\;
\ALT_INV_H[6]~input_o\ <= NOT \H[6]~input_o\;
\ALT_INV_G[6]~input_o\ <= NOT \G[6]~input_o\;
\ALT_INV_F[6]~input_o\ <= NOT \F[6]~input_o\;
\ALT_INV_E[6]~input_o\ <= NOT \E[6]~input_o\;
\ALT_INV_A[5]~input_o\ <= NOT \A[5]~input_o\;
\ALT_INV_B[5]~input_o\ <= NOT \B[5]~input_o\;
\ALT_INV_D[5]~input_o\ <= NOT \D[5]~input_o\;
\ALT_INV_C[5]~input_o\ <= NOT \C[5]~input_o\;
\ALT_INV_H[5]~input_o\ <= NOT \H[5]~input_o\;
\ALT_INV_G[5]~input_o\ <= NOT \G[5]~input_o\;
\ALT_INV_F[5]~input_o\ <= NOT \F[5]~input_o\;
\ALT_INV_E[5]~input_o\ <= NOT \E[5]~input_o\;
\ALT_INV_A[4]~input_o\ <= NOT \A[4]~input_o\;
\ALT_INV_B[4]~input_o\ <= NOT \B[4]~input_o\;
\ALT_INV_D[4]~input_o\ <= NOT \D[4]~input_o\;
\ALT_INV_C[4]~input_o\ <= NOT \C[4]~input_o\;
\ALT_INV_H[4]~input_o\ <= NOT \H[4]~input_o\;
\ALT_INV_G[4]~input_o\ <= NOT \G[4]~input_o\;
\ALT_INV_F[4]~input_o\ <= NOT \F[4]~input_o\;
\ALT_INV_E[4]~input_o\ <= NOT \E[4]~input_o\;
\ALT_INV_A[3]~input_o\ <= NOT \A[3]~input_o\;
\ALT_INV_B[3]~input_o\ <= NOT \B[3]~input_o\;
\ALT_INV_D[3]~input_o\ <= NOT \D[3]~input_o\;
\ALT_INV_C[3]~input_o\ <= NOT \C[3]~input_o\;
\ALT_INV_H[3]~input_o\ <= NOT \H[3]~input_o\;
\ALT_INV_G[3]~input_o\ <= NOT \G[3]~input_o\;
\ALT_INV_F[3]~input_o\ <= NOT \F[3]~input_o\;
\ALT_INV_E[3]~input_o\ <= NOT \E[3]~input_o\;
\ALT_INV_A[2]~input_o\ <= NOT \A[2]~input_o\;
\ALT_INV_B[2]~input_o\ <= NOT \B[2]~input_o\;
\ALT_INV_D[2]~input_o\ <= NOT \D[2]~input_o\;
\ALT_INV_C[2]~input_o\ <= NOT \C[2]~input_o\;
\ALT_INV_H[2]~input_o\ <= NOT \H[2]~input_o\;
\ALT_INV_G[2]~input_o\ <= NOT \G[2]~input_o\;
\ALT_INV_F[2]~input_o\ <= NOT \F[2]~input_o\;
\ALT_INV_E[2]~input_o\ <= NOT \E[2]~input_o\;
\ALT_INV_A[1]~input_o\ <= NOT \A[1]~input_o\;
\ALT_INV_B[1]~input_o\ <= NOT \B[1]~input_o\;
\ALT_INV_D[1]~input_o\ <= NOT \D[1]~input_o\;
\ALT_INV_C[1]~input_o\ <= NOT \C[1]~input_o\;
\ALT_INV_H[1]~input_o\ <= NOT \H[1]~input_o\;
\ALT_INV_G[1]~input_o\ <= NOT \G[1]~input_o\;
\ALT_INV_F[1]~input_o\ <= NOT \F[1]~input_o\;
\ALT_INV_E[1]~input_o\ <= NOT \E[1]~input_o\;
\ALT_INV_A[0]~input_o\ <= NOT \A[0]~input_o\;
\ALT_INV_B[0]~input_o\ <= NOT \B[0]~input_o\;
\ALT_INV_D[0]~input_o\ <= NOT \D[0]~input_o\;
\ALT_INV_C[0]~input_o\ <= NOT \C[0]~input_o\;
\ALT_INV_S[1]~input_o\ <= NOT \S[1]~input_o\;
\ALT_INV_S[0]~input_o\ <= NOT \S[0]~input_o\;
\ALT_INV_H[0]~input_o\ <= NOT \H[0]~input_o\;
\ALT_INV_G[0]~input_o\ <= NOT \G[0]~input_o\;
\ALT_INV_F[0]~input_o\ <= NOT \F[0]~input_o\;
\ALT_INV_E[0]~input_o\ <= NOT \E[0]~input_o\;
\ALT_INV_S[2]~input_o\ <= NOT \S[2]~input_o\;
\ALT_INV_A[15]~input_o\ <= NOT \A[15]~input_o\;
\ALT_INV_B[15]~input_o\ <= NOT \B[15]~input_o\;
\ALT_INV_D[15]~input_o\ <= NOT \D[15]~input_o\;
\ALT_INV_C[15]~input_o\ <= NOT \C[15]~input_o\;

-- Location: IOOBUF_X86_Y81_N36
\Q[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \v6|v3|v0|Q~2_combout\,
	devoe => ww_devoe,
	o => ww_Q(0));

-- Location: IOOBUF_X89_Y6_N39
\Q[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \v6|v3|v1|Q~2_combout\,
	devoe => ww_devoe,
	o => ww_Q(1));

-- Location: IOOBUF_X40_Y0_N53
\Q[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \v6|v3|v2|Q~2_combout\,
	devoe => ww_devoe,
	o => ww_Q(2));

-- Location: IOOBUF_X72_Y0_N2
\Q[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \v6|v3|v3|Q~2_combout\,
	devoe => ww_devoe,
	o => ww_Q(3));

-- Location: IOOBUF_X64_Y0_N19
\Q[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \v6|v3|v4|Q~2_combout\,
	devoe => ww_devoe,
	o => ww_Q(4));

-- Location: IOOBUF_X36_Y0_N36
\Q[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \v6|v3|v5|Q~2_combout\,
	devoe => ww_devoe,
	o => ww_Q(5));

-- Location: IOOBUF_X62_Y0_N2
\Q[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \v6|v3|v6|Q~2_combout\,
	devoe => ww_devoe,
	o => ww_Q(6));

-- Location: IOOBUF_X32_Y0_N53
\Q[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \v6|v3|v7|Q~2_combout\,
	devoe => ww_devoe,
	o => ww_Q(7));

-- Location: IOOBUF_X26_Y0_N93
\Q[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \v6|v3|v8|Q~2_combout\,
	devoe => ww_devoe,
	o => ww_Q(8));

-- Location: IOOBUF_X54_Y0_N2
\Q[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \v6|v3|v9|Q~2_combout\,
	devoe => ww_devoe,
	o => ww_Q(9));

-- Location: IOOBUF_X89_Y9_N56
\Q[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \v6|v3|v10|Q~2_combout\,
	devoe => ww_devoe,
	o => ww_Q(10));

-- Location: IOOBUF_X84_Y81_N19
\Q[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \v6|v3|v11|Q~2_combout\,
	devoe => ww_devoe,
	o => ww_Q(11));

-- Location: IOOBUF_X2_Y0_N59
\Q[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \v6|v3|v12|Q~2_combout\,
	devoe => ww_devoe,
	o => ww_Q(12));

-- Location: IOOBUF_X26_Y81_N93
\Q[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \v6|v3|v13|Q~2_combout\,
	devoe => ww_devoe,
	o => ww_Q(13));

-- Location: IOOBUF_X28_Y81_N19
\Q[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \v6|v3|v14|Q~2_combout\,
	devoe => ww_devoe,
	o => ww_Q(14));

-- Location: IOOBUF_X72_Y81_N36
\Q[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \v6|v3|v15|Q~2_combout\,
	devoe => ww_devoe,
	o => ww_Q(15));

-- Location: IOIBUF_X89_Y36_N38
\B[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X50_Y0_N75
\S[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S(0),
	o => \S[0]~input_o\);

-- Location: IOIBUF_X89_Y36_N4
\C[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(0),
	o => \C[0]~input_o\);

-- Location: IOIBUF_X89_Y37_N4
\D[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(0),
	o => \D[0]~input_o\);

-- Location: IOIBUF_X50_Y0_N41
\S[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S(1),
	o => \S[1]~input_o\);

-- Location: IOIBUF_X89_Y38_N38
\A[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: LABCELL_X85_Y36_N6
\v6|v3|v0|Q~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \v6|v3|v0|Q~1_combout\ = ( \S[1]~input_o\ & ( \A[0]~input_o\ & ( (!\S[0]~input_o\ & (\C[0]~input_o\)) # (\S[0]~input_o\ & ((\D[0]~input_o\))) ) ) ) # ( !\S[1]~input_o\ & ( \A[0]~input_o\ & ( (!\S[0]~input_o\) # (\B[0]~input_o\) ) ) ) # ( \S[1]~input_o\ & 
-- ( !\A[0]~input_o\ & ( (!\S[0]~input_o\ & (\C[0]~input_o\)) # (\S[0]~input_o\ & ((\D[0]~input_o\))) ) ) ) # ( !\S[1]~input_o\ & ( !\A[0]~input_o\ & ( (\B[0]~input_o\ & \S[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000011000011111111011101110111010000110000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_S[0]~input_o\,
	datac => \ALT_INV_C[0]~input_o\,
	datad => \ALT_INV_D[0]~input_o\,
	datae => \ALT_INV_S[1]~input_o\,
	dataf => \ALT_INV_A[0]~input_o\,
	combout => \v6|v3|v0|Q~1_combout\);

-- Location: IOIBUF_X58_Y0_N75
\S[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S(2),
	o => \S[2]~input_o\);

-- Location: IOIBUF_X89_Y36_N55
\H[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_H(0),
	o => \H[0]~input_o\);

-- Location: IOIBUF_X89_Y36_N21
\E[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_E(0),
	o => \E[0]~input_o\);

-- Location: IOIBUF_X89_Y38_N21
\G[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_G(0),
	o => \G[0]~input_o\);

-- Location: IOIBUF_X89_Y38_N55
\F[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_F(0),
	o => \F[0]~input_o\);

-- Location: LABCELL_X85_Y36_N30
\v6|v3|v0|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \v6|v3|v0|Q~0_combout\ = ( \S[1]~input_o\ & ( \F[0]~input_o\ & ( (!\S[0]~input_o\ & ((\G[0]~input_o\))) # (\S[0]~input_o\ & (\H[0]~input_o\)) ) ) ) # ( !\S[1]~input_o\ & ( \F[0]~input_o\ & ( (\E[0]~input_o\) # (\S[0]~input_o\) ) ) ) # ( \S[1]~input_o\ & ( 
-- !\F[0]~input_o\ & ( (!\S[0]~input_o\ & ((\G[0]~input_o\))) # (\S[0]~input_o\ & (\H[0]~input_o\)) ) ) ) # ( !\S[1]~input_o\ & ( !\F[0]~input_o\ & ( (!\S[0]~input_o\ & \E[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000100011101110100111111001111110001000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_H[0]~input_o\,
	datab => \ALT_INV_S[0]~input_o\,
	datac => \ALT_INV_E[0]~input_o\,
	datad => \ALT_INV_G[0]~input_o\,
	datae => \ALT_INV_S[1]~input_o\,
	dataf => \ALT_INV_F[0]~input_o\,
	combout => \v6|v3|v0|Q~0_combout\);

-- Location: LABCELL_X85_Y36_N12
\v6|v3|v0|Q~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \v6|v3|v0|Q~2_combout\ = ( \v6|v3|v0|Q~0_combout\ & ( (\S[2]~input_o\) # (\v6|v3|v0|Q~1_combout\) ) ) # ( !\v6|v3|v0|Q~0_combout\ & ( (\v6|v3|v0|Q~1_combout\ & !\S[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \v6|v3|v0|ALT_INV_Q~1_combout\,
	datac => \ALT_INV_S[2]~input_o\,
	dataf => \v6|v3|v0|ALT_INV_Q~0_combout\,
	combout => \v6|v3|v0|Q~2_combout\);

-- Location: IOIBUF_X72_Y0_N35
\A[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: IOIBUF_X72_Y0_N52
\D[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(1),
	o => \D[1]~input_o\);

-- Location: IOIBUF_X89_Y4_N61
\B[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: IOIBUF_X89_Y6_N21
\C[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(1),
	o => \C[1]~input_o\);

-- Location: LABCELL_X88_Y4_N6
\v6|v3|v1|Q~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \v6|v3|v1|Q~1_combout\ = ( \S[1]~input_o\ & ( \C[1]~input_o\ & ( (!\S[0]~input_o\) # (\D[1]~input_o\) ) ) ) # ( !\S[1]~input_o\ & ( \C[1]~input_o\ & ( (!\S[0]~input_o\ & (\A[1]~input_o\)) # (\S[0]~input_o\ & ((\B[1]~input_o\))) ) ) ) # ( \S[1]~input_o\ & 
-- ( !\C[1]~input_o\ & ( (\D[1]~input_o\ & \S[0]~input_o\) ) ) ) # ( !\S[1]~input_o\ & ( !\C[1]~input_o\ & ( (!\S[0]~input_o\ & (\A[1]~input_o\)) # (\S[0]~input_o\ & ((\B[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111000000110000001101010000010111111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[1]~input_o\,
	datab => \ALT_INV_D[1]~input_o\,
	datac => \ALT_INV_S[0]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \ALT_INV_S[1]~input_o\,
	dataf => \ALT_INV_C[1]~input_o\,
	combout => \v6|v3|v1|Q~1_combout\);

-- Location: IOIBUF_X89_Y4_N78
\E[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_E(1),
	o => \E[1]~input_o\);

-- Location: IOIBUF_X89_Y6_N4
\G[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_G(1),
	o => \G[1]~input_o\);

-- Location: IOIBUF_X89_Y4_N95
\H[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_H(1),
	o => \H[1]~input_o\);

-- Location: IOIBUF_X89_Y4_N44
\F[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_F(1),
	o => \F[1]~input_o\);

-- Location: LABCELL_X88_Y4_N30
\v6|v3|v1|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \v6|v3|v1|Q~0_combout\ = ( \H[1]~input_o\ & ( \F[1]~input_o\ & ( ((!\S[1]~input_o\ & (\E[1]~input_o\)) # (\S[1]~input_o\ & ((\G[1]~input_o\)))) # (\S[0]~input_o\) ) ) ) # ( !\H[1]~input_o\ & ( \F[1]~input_o\ & ( (!\S[1]~input_o\ & (((\S[0]~input_o\)) # 
-- (\E[1]~input_o\))) # (\S[1]~input_o\ & (((\G[1]~input_o\ & !\S[0]~input_o\)))) ) ) ) # ( \H[1]~input_o\ & ( !\F[1]~input_o\ & ( (!\S[1]~input_o\ & (\E[1]~input_o\ & ((!\S[0]~input_o\)))) # (\S[1]~input_o\ & (((\S[0]~input_o\) # (\G[1]~input_o\)))) ) ) ) # 
-- ( !\H[1]~input_o\ & ( !\F[1]~input_o\ & ( (!\S[0]~input_o\ & ((!\S[1]~input_o\ & (\E[1]~input_o\)) # (\S[1]~input_o\ & ((\G[1]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100000000001001110101010100100111101010100010011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_S[1]~input_o\,
	datab => \ALT_INV_E[1]~input_o\,
	datac => \ALT_INV_G[1]~input_o\,
	datad => \ALT_INV_S[0]~input_o\,
	datae => \ALT_INV_H[1]~input_o\,
	dataf => \ALT_INV_F[1]~input_o\,
	combout => \v6|v3|v1|Q~0_combout\);

-- Location: LABCELL_X88_Y4_N12
\v6|v3|v1|Q~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \v6|v3|v1|Q~2_combout\ = ( \S[2]~input_o\ & ( \v6|v3|v1|Q~0_combout\ ) ) # ( !\S[2]~input_o\ & ( \v6|v3|v1|Q~0_combout\ & ( \v6|v3|v1|Q~1_combout\ ) ) ) # ( !\S[2]~input_o\ & ( !\v6|v3|v1|Q~0_combout\ & ( \v6|v3|v1|Q~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000000000000000110011001100111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \v6|v3|v1|ALT_INV_Q~1_combout\,
	datae => \ALT_INV_S[2]~input_o\,
	dataf => \v6|v3|v1|ALT_INV_Q~0_combout\,
	combout => \v6|v3|v1|Q~2_combout\);

-- Location: IOIBUF_X40_Y0_N1
\E[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_E(2),
	o => \E[2]~input_o\);

-- Location: IOIBUF_X40_Y0_N35
\H[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_H(2),
	o => \H[2]~input_o\);

-- Location: IOIBUF_X40_Y0_N18
\F[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_F(2),
	o => \F[2]~input_o\);

-- Location: IOIBUF_X50_Y0_N58
\G[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_G(2),
	o => \G[2]~input_o\);

-- Location: LABCELL_X40_Y1_N30
\v6|v3|v2|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \v6|v3|v2|Q~0_combout\ = ( \G[2]~input_o\ & ( \S[0]~input_o\ & ( (!\S[1]~input_o\ & ((\F[2]~input_o\))) # (\S[1]~input_o\ & (\H[2]~input_o\)) ) ) ) # ( !\G[2]~input_o\ & ( \S[0]~input_o\ & ( (!\S[1]~input_o\ & ((\F[2]~input_o\))) # (\S[1]~input_o\ & 
-- (\H[2]~input_o\)) ) ) ) # ( \G[2]~input_o\ & ( !\S[0]~input_o\ & ( (\E[2]~input_o\) # (\S[1]~input_o\) ) ) ) # ( !\G[2]~input_o\ & ( !\S[0]~input_o\ & ( (!\S[1]~input_o\ & \E[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010011101110111011100000101101011110000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_S[1]~input_o\,
	datab => \ALT_INV_E[2]~input_o\,
	datac => \ALT_INV_H[2]~input_o\,
	datad => \ALT_INV_F[2]~input_o\,
	datae => \ALT_INV_G[2]~input_o\,
	dataf => \ALT_INV_S[0]~input_o\,
	combout => \v6|v3|v2|Q~0_combout\);

-- Location: IOIBUF_X38_Y0_N35
\D[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(2),
	o => \D[2]~input_o\);

-- Location: IOIBUF_X38_Y0_N18
\A[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: IOIBUF_X38_Y0_N52
\B[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: IOIBUF_X50_Y0_N92
\C[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(2),
	o => \C[2]~input_o\);

-- Location: LABCELL_X40_Y1_N6
\v6|v3|v2|Q~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \v6|v3|v2|Q~1_combout\ = ( \S[0]~input_o\ & ( \C[2]~input_o\ & ( (!\S[1]~input_o\ & ((\B[2]~input_o\))) # (\S[1]~input_o\ & (\D[2]~input_o\)) ) ) ) # ( !\S[0]~input_o\ & ( \C[2]~input_o\ & ( (\A[2]~input_o\) # (\S[1]~input_o\) ) ) ) # ( \S[0]~input_o\ & ( 
-- !\C[2]~input_o\ & ( (!\S[1]~input_o\ & ((\B[2]~input_o\))) # (\S[1]~input_o\ & (\D[2]~input_o\)) ) ) ) # ( !\S[0]~input_o\ & ( !\C[2]~input_o\ & ( (!\S[1]~input_o\ & \A[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000100011011101101011111010111110001000110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_S[1]~input_o\,
	datab => \ALT_INV_D[2]~input_o\,
	datac => \ALT_INV_A[2]~input_o\,
	datad => \ALT_INV_B[2]~input_o\,
	datae => \ALT_INV_S[0]~input_o\,
	dataf => \ALT_INV_C[2]~input_o\,
	combout => \v6|v3|v2|Q~1_combout\);

-- Location: LABCELL_X40_Y1_N42
\v6|v3|v2|Q~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \v6|v3|v2|Q~2_combout\ = ( \S[2]~input_o\ & ( \v6|v3|v2|Q~0_combout\ ) ) # ( !\S[2]~input_o\ & ( \v6|v3|v2|Q~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111001100110011001100000000111111110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \v6|v3|v2|ALT_INV_Q~0_combout\,
	datad => \v6|v3|v2|ALT_INV_Q~1_combout\,
	datae => \ALT_INV_S[2]~input_o\,
	combout => \v6|v3|v2|Q~2_combout\);

-- Location: IOIBUF_X70_Y0_N35
\C[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(3),
	o => \C[3]~input_o\);

-- Location: IOIBUF_X68_Y0_N35
\B[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: IOIBUF_X70_Y0_N1
\A[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: IOIBUF_X70_Y0_N18
\D[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(3),
	o => \D[3]~input_o\);

-- Location: LABCELL_X70_Y1_N6
\v6|v3|v3|Q~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \v6|v3|v3|Q~1_combout\ = ( \S[1]~input_o\ & ( \D[3]~input_o\ & ( (\S[0]~input_o\) # (\C[3]~input_o\) ) ) ) # ( !\S[1]~input_o\ & ( \D[3]~input_o\ & ( (!\S[0]~input_o\ & ((\A[3]~input_o\))) # (\S[0]~input_o\ & (\B[3]~input_o\)) ) ) ) # ( \S[1]~input_o\ & ( 
-- !\D[3]~input_o\ & ( (\C[3]~input_o\ & !\S[0]~input_o\) ) ) ) # ( !\S[1]~input_o\ & ( !\D[3]~input_o\ & ( (!\S[0]~input_o\ & ((\A[3]~input_o\))) # (\S[0]~input_o\ & (\B[3]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011010100000101000000000011111100110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_C[3]~input_o\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \ALT_INV_S[0]~input_o\,
	datad => \ALT_INV_A[3]~input_o\,
	datae => \ALT_INV_S[1]~input_o\,
	dataf => \ALT_INV_D[3]~input_o\,
	combout => \v6|v3|v3|Q~1_combout\);

-- Location: IOIBUF_X68_Y0_N1
\G[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_G(3),
	o => \G[3]~input_o\);

-- Location: IOIBUF_X68_Y0_N52
\F[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_F(3),
	o => \F[3]~input_o\);

-- Location: IOIBUF_X70_Y0_N52
\H[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_H(3),
	o => \H[3]~input_o\);

-- Location: IOIBUF_X72_Y0_N18
\E[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_E(3),
	o => \E[3]~input_o\);

-- Location: LABCELL_X70_Y1_N30
\v6|v3|v3|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \v6|v3|v3|Q~0_combout\ = ( \S[1]~input_o\ & ( \E[3]~input_o\ & ( (!\S[0]~input_o\ & (\G[3]~input_o\)) # (\S[0]~input_o\ & ((\H[3]~input_o\))) ) ) ) # ( !\S[1]~input_o\ & ( \E[3]~input_o\ & ( (!\S[0]~input_o\) # (\F[3]~input_o\) ) ) ) # ( \S[1]~input_o\ & 
-- ( !\E[3]~input_o\ & ( (!\S[0]~input_o\ & (\G[3]~input_o\)) # (\S[0]~input_o\ & ((\H[3]~input_o\))) ) ) ) # ( !\S[1]~input_o\ & ( !\E[3]~input_o\ & ( (\F[3]~input_o\ & \S[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011010100000101111111110011111100110101000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G[3]~input_o\,
	datab => \ALT_INV_F[3]~input_o\,
	datac => \ALT_INV_S[0]~input_o\,
	datad => \ALT_INV_H[3]~input_o\,
	datae => \ALT_INV_S[1]~input_o\,
	dataf => \ALT_INV_E[3]~input_o\,
	combout => \v6|v3|v3|Q~0_combout\);

-- Location: LABCELL_X70_Y1_N42
\v6|v3|v3|Q~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \v6|v3|v3|Q~2_combout\ = ( \S[2]~input_o\ & ( \v6|v3|v3|Q~0_combout\ ) ) # ( !\S[2]~input_o\ & ( \v6|v3|v3|Q~0_combout\ & ( \v6|v3|v3|Q~1_combout\ ) ) ) # ( !\S[2]~input_o\ & ( !\v6|v3|v3|Q~0_combout\ & ( \v6|v3|v3|Q~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000000000000000110011001100111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \v6|v3|v3|ALT_INV_Q~1_combout\,
	datae => \ALT_INV_S[2]~input_o\,
	dataf => \v6|v3|v3|ALT_INV_Q~0_combout\,
	combout => \v6|v3|v3|Q~2_combout\);

-- Location: IOIBUF_X66_Y0_N75
\H[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_H(4),
	o => \H[4]~input_o\);

-- Location: IOIBUF_X64_Y0_N1
\G[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_G(4),
	o => \G[4]~input_o\);

-- Location: IOIBUF_X66_Y0_N92
\E[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_E(4),
	o => \E[4]~input_o\);

-- Location: IOIBUF_X68_Y0_N18
\F[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_F(4),
	o => \F[4]~input_o\);

-- Location: LABCELL_X64_Y1_N30
\v6|v3|v4|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \v6|v3|v4|Q~0_combout\ = ( \E[4]~input_o\ & ( \F[4]~input_o\ & ( (!\S[1]~input_o\) # ((!\S[0]~input_o\ & ((\G[4]~input_o\))) # (\S[0]~input_o\ & (\H[4]~input_o\))) ) ) ) # ( !\E[4]~input_o\ & ( \F[4]~input_o\ & ( (!\S[1]~input_o\ & (((\S[0]~input_o\)))) # 
-- (\S[1]~input_o\ & ((!\S[0]~input_o\ & ((\G[4]~input_o\))) # (\S[0]~input_o\ & (\H[4]~input_o\)))) ) ) ) # ( \E[4]~input_o\ & ( !\F[4]~input_o\ & ( (!\S[1]~input_o\ & (((!\S[0]~input_o\)))) # (\S[1]~input_o\ & ((!\S[0]~input_o\ & ((\G[4]~input_o\))) # 
-- (\S[0]~input_o\ & (\H[4]~input_o\)))) ) ) ) # ( !\E[4]~input_o\ & ( !\F[4]~input_o\ & ( (\S[1]~input_o\ & ((!\S[0]~input_o\ & ((\G[4]~input_o\))) # (\S[0]~input_o\ & (\H[4]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100010001110011110001000100000011110111011100111111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_H[4]~input_o\,
	datab => \ALT_INV_S[1]~input_o\,
	datac => \ALT_INV_G[4]~input_o\,
	datad => \ALT_INV_S[0]~input_o\,
	datae => \ALT_INV_E[4]~input_o\,
	dataf => \ALT_INV_F[4]~input_o\,
	combout => \v6|v3|v4|Q~0_combout\);

-- Location: IOIBUF_X62_Y0_N52
\C[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(4),
	o => \C[4]~input_o\);

-- Location: IOIBUF_X62_Y0_N18
\A[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: IOIBUF_X64_Y0_N52
\D[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(4),
	o => \D[4]~input_o\);

-- Location: IOIBUF_X66_Y0_N58
\B[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: LABCELL_X64_Y1_N6
\v6|v3|v4|Q~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \v6|v3|v4|Q~1_combout\ = ( \S[0]~input_o\ & ( \B[4]~input_o\ & ( (!\S[1]~input_o\) # (\D[4]~input_o\) ) ) ) # ( !\S[0]~input_o\ & ( \B[4]~input_o\ & ( (!\S[1]~input_o\ & ((\A[4]~input_o\))) # (\S[1]~input_o\ & (\C[4]~input_o\)) ) ) ) # ( \S[0]~input_o\ & 
-- ( !\B[4]~input_o\ & ( (\S[1]~input_o\ & \D[4]~input_o\) ) ) ) # ( !\S[0]~input_o\ & ( !\B[4]~input_o\ & ( (!\S[1]~input_o\ & ((\A[4]~input_o\))) # (\S[1]~input_o\ & (\C[4]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000000000011001100011101000111011100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_C[4]~input_o\,
	datab => \ALT_INV_S[1]~input_o\,
	datac => \ALT_INV_A[4]~input_o\,
	datad => \ALT_INV_D[4]~input_o\,
	datae => \ALT_INV_S[0]~input_o\,
	dataf => \ALT_INV_B[4]~input_o\,
	combout => \v6|v3|v4|Q~1_combout\);

-- Location: LABCELL_X64_Y1_N12
\v6|v3|v4|Q~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \v6|v3|v4|Q~2_combout\ = ( \v6|v3|v4|Q~1_combout\ & ( (!\S[2]~input_o\) # (\v6|v3|v4|Q~0_combout\) ) ) # ( !\v6|v3|v4|Q~1_combout\ & ( (\S[2]~input_o\ & \v6|v3|v4|Q~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111001100111111111100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_S[2]~input_o\,
	datad => \v6|v3|v4|ALT_INV_Q~0_combout\,
	dataf => \v6|v3|v4|ALT_INV_Q~1_combout\,
	combout => \v6|v3|v4|Q~2_combout\);

-- Location: IOIBUF_X36_Y0_N52
\H[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_H(5),
	o => \H[5]~input_o\);

-- Location: IOIBUF_X36_Y0_N18
\E[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_E(5),
	o => \E[5]~input_o\);

-- Location: IOIBUF_X36_Y0_N1
\G[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_G(5),
	o => \G[5]~input_o\);

-- Location: IOIBUF_X38_Y0_N1
\F[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_F(5),
	o => \F[5]~input_o\);

-- Location: LABCELL_X36_Y1_N30
\v6|v3|v5|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \v6|v3|v5|Q~0_combout\ = ( \F[5]~input_o\ & ( \S[0]~input_o\ & ( (!\S[1]~input_o\) # (\H[5]~input_o\) ) ) ) # ( !\F[5]~input_o\ & ( \S[0]~input_o\ & ( (\H[5]~input_o\ & \S[1]~input_o\) ) ) ) # ( \F[5]~input_o\ & ( !\S[0]~input_o\ & ( (!\S[1]~input_o\ & 
-- (\E[5]~input_o\)) # (\S[1]~input_o\ & ((\G[5]~input_o\))) ) ) ) # ( !\F[5]~input_o\ & ( !\S[0]~input_o\ & ( (!\S[1]~input_o\ & (\E[5]~input_o\)) # (\S[1]~input_o\ & ((\G[5]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001111001100110000111100000000010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_H[5]~input_o\,
	datab => \ALT_INV_E[5]~input_o\,
	datac => \ALT_INV_G[5]~input_o\,
	datad => \ALT_INV_S[1]~input_o\,
	datae => \ALT_INV_F[5]~input_o\,
	dataf => \ALT_INV_S[0]~input_o\,
	combout => \v6|v3|v5|Q~0_combout\);

-- Location: IOIBUF_X56_Y0_N1
\D[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(5),
	o => \D[5]~input_o\);

-- Location: IOIBUF_X56_Y0_N35
\A[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: IOIBUF_X56_Y0_N18
\C[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(5),
	o => \C[5]~input_o\);

-- Location: IOIBUF_X56_Y81_N52
\B[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: LABCELL_X56_Y1_N30
\v6|v3|v5|Q~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \v6|v3|v5|Q~1_combout\ = ( \C[5]~input_o\ & ( \B[5]~input_o\ & ( (!\S[0]~input_o\ & (((\A[5]~input_o\) # (\S[1]~input_o\)))) # (\S[0]~input_o\ & (((!\S[1]~input_o\)) # (\D[5]~input_o\))) ) ) ) # ( !\C[5]~input_o\ & ( \B[5]~input_o\ & ( (!\S[0]~input_o\ & 
-- (((!\S[1]~input_o\ & \A[5]~input_o\)))) # (\S[0]~input_o\ & (((!\S[1]~input_o\)) # (\D[5]~input_o\))) ) ) ) # ( \C[5]~input_o\ & ( !\B[5]~input_o\ & ( (!\S[0]~input_o\ & (((\A[5]~input_o\) # (\S[1]~input_o\)))) # (\S[0]~input_o\ & (\D[5]~input_o\ & 
-- (\S[1]~input_o\))) ) ) ) # ( !\C[5]~input_o\ & ( !\B[5]~input_o\ & ( (!\S[0]~input_o\ & (((!\S[1]~input_o\ & \A[5]~input_o\)))) # (\S[0]~input_o\ & (\D[5]~input_o\ & (\S[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111000001000011011100110100110001111100010011110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D[5]~input_o\,
	datab => \ALT_INV_S[0]~input_o\,
	datac => \ALT_INV_S[1]~input_o\,
	datad => \ALT_INV_A[5]~input_o\,
	datae => \ALT_INV_C[5]~input_o\,
	dataf => \ALT_INV_B[5]~input_o\,
	combout => \v6|v3|v5|Q~1_combout\);

-- Location: LABCELL_X36_Y1_N6
\v6|v3|v5|Q~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \v6|v3|v5|Q~2_combout\ = ( \S[2]~input_o\ & ( \v6|v3|v5|Q~0_combout\ ) ) # ( !\S[2]~input_o\ & ( \v6|v3|v5|Q~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \v6|v3|v5|ALT_INV_Q~0_combout\,
	datac => \v6|v3|v5|ALT_INV_Q~1_combout\,
	dataf => \ALT_INV_S[2]~input_o\,
	combout => \v6|v3|v5|Q~2_combout\);

-- Location: IOIBUF_X58_Y0_N41
\C[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(6),
	o => \C[6]~input_o\);

-- Location: IOIBUF_X58_Y0_N92
\D[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(6),
	o => \D[6]~input_o\);

-- Location: IOIBUF_X60_Y0_N1
\B[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: IOIBUF_X60_Y0_N18
\A[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: LABCELL_X60_Y1_N6
\v6|v3|v6|Q~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \v6|v3|v6|Q~1_combout\ = ( \S[1]~input_o\ & ( \A[6]~input_o\ & ( (!\S[0]~input_o\ & (\C[6]~input_o\)) # (\S[0]~input_o\ & ((\D[6]~input_o\))) ) ) ) # ( !\S[1]~input_o\ & ( \A[6]~input_o\ & ( (!\S[0]~input_o\) # (\B[6]~input_o\) ) ) ) # ( \S[1]~input_o\ & 
-- ( !\A[6]~input_o\ & ( (!\S[0]~input_o\ & (\C[6]~input_o\)) # (\S[0]~input_o\ & ((\D[6]~input_o\))) ) ) ) # ( !\S[1]~input_o\ & ( !\A[6]~input_o\ & ( (\S[0]~input_o\ & \B[6]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111010100110101001111110000111111110101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_C[6]~input_o\,
	datab => \ALT_INV_D[6]~input_o\,
	datac => \ALT_INV_S[0]~input_o\,
	datad => \ALT_INV_B[6]~input_o\,
	datae => \ALT_INV_S[1]~input_o\,
	dataf => \ALT_INV_A[6]~input_o\,
	combout => \v6|v3|v6|Q~1_combout\);

-- Location: IOIBUF_X60_Y0_N35
\E[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_E(6),
	o => \E[6]~input_o\);

-- Location: IOIBUF_X58_Y0_N58
\F[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_F(6),
	o => \F[6]~input_o\);

-- Location: IOIBUF_X62_Y0_N35
\H[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_H(6),
	o => \H[6]~input_o\);

-- Location: IOIBUF_X60_Y0_N52
\G[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_G(6),
	o => \G[6]~input_o\);

-- Location: LABCELL_X60_Y1_N30
\v6|v3|v6|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \v6|v3|v6|Q~0_combout\ = ( \S[1]~input_o\ & ( \G[6]~input_o\ & ( (!\S[0]~input_o\) # (\H[6]~input_o\) ) ) ) # ( !\S[1]~input_o\ & ( \G[6]~input_o\ & ( (!\S[0]~input_o\ & (\E[6]~input_o\)) # (\S[0]~input_o\ & ((\F[6]~input_o\))) ) ) ) # ( \S[1]~input_o\ & 
-- ( !\G[6]~input_o\ & ( (\S[0]~input_o\ & \H[6]~input_o\) ) ) ) # ( !\S[1]~input_o\ & ( !\G[6]~input_o\ & ( (!\S[0]~input_o\ & (\E[6]~input_o\)) # (\S[0]~input_o\ & ((\F[6]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011000000000000111101010011010100111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_E[6]~input_o\,
	datab => \ALT_INV_F[6]~input_o\,
	datac => \ALT_INV_S[0]~input_o\,
	datad => \ALT_INV_H[6]~input_o\,
	datae => \ALT_INV_S[1]~input_o\,
	dataf => \ALT_INV_G[6]~input_o\,
	combout => \v6|v3|v6|Q~0_combout\);

-- Location: LABCELL_X60_Y1_N42
\v6|v3|v6|Q~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \v6|v3|v6|Q~2_combout\ = ( \v6|v3|v6|Q~0_combout\ & ( (\v6|v3|v6|Q~1_combout\) # (\S[2]~input_o\) ) ) # ( !\v6|v3|v6|Q~0_combout\ & ( (!\S[2]~input_o\ & \v6|v3|v6|Q~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_S[2]~input_o\,
	datad => \v6|v3|v6|ALT_INV_Q~1_combout\,
	dataf => \v6|v3|v6|ALT_INV_Q~0_combout\,
	combout => \v6|v3|v6|Q~2_combout\);

-- Location: IOIBUF_X34_Y0_N58
\D[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(7),
	o => \D[7]~input_o\);

-- Location: IOIBUF_X34_Y0_N75
\A[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: IOIBUF_X34_Y0_N41
\C[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(7),
	o => \C[7]~input_o\);

-- Location: IOIBUF_X32_Y0_N1
\B[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: LABCELL_X33_Y1_N6
\v6|v3|v7|Q~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \v6|v3|v7|Q~1_combout\ = ( \B[7]~input_o\ & ( \S[1]~input_o\ & ( (!\S[0]~input_o\ & ((\C[7]~input_o\))) # (\S[0]~input_o\ & (\D[7]~input_o\)) ) ) ) # ( !\B[7]~input_o\ & ( \S[1]~input_o\ & ( (!\S[0]~input_o\ & ((\C[7]~input_o\))) # (\S[0]~input_o\ & 
-- (\D[7]~input_o\)) ) ) ) # ( \B[7]~input_o\ & ( !\S[1]~input_o\ & ( (\S[0]~input_o\) # (\A[7]~input_o\) ) ) ) # ( !\B[7]~input_o\ & ( !\S[1]~input_o\ & ( (\A[7]~input_o\ & !\S[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100111111111100001111010101010000111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D[7]~input_o\,
	datab => \ALT_INV_A[7]~input_o\,
	datac => \ALT_INV_C[7]~input_o\,
	datad => \ALT_INV_S[0]~input_o\,
	datae => \ALT_INV_B[7]~input_o\,
	dataf => \ALT_INV_S[1]~input_o\,
	combout => \v6|v3|v7|Q~1_combout\);

-- Location: IOIBUF_X30_Y0_N52
\F[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_F(7),
	o => \F[7]~input_o\);

-- Location: IOIBUF_X32_Y0_N18
\H[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_H(7),
	o => \H[7]~input_o\);

-- Location: IOIBUF_X32_Y0_N35
\G[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_G(7),
	o => \G[7]~input_o\);

-- Location: IOIBUF_X34_Y0_N92
\E[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_E(7),
	o => \E[7]~input_o\);

-- Location: LABCELL_X33_Y1_N30
\v6|v3|v7|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \v6|v3|v7|Q~0_combout\ = ( \E[7]~input_o\ & ( \S[0]~input_o\ & ( (!\S[1]~input_o\ & (\F[7]~input_o\)) # (\S[1]~input_o\ & ((\H[7]~input_o\))) ) ) ) # ( !\E[7]~input_o\ & ( \S[0]~input_o\ & ( (!\S[1]~input_o\ & (\F[7]~input_o\)) # (\S[1]~input_o\ & 
-- ((\H[7]~input_o\))) ) ) ) # ( \E[7]~input_o\ & ( !\S[0]~input_o\ & ( (!\S[1]~input_o\) # (\G[7]~input_o\) ) ) ) # ( !\E[7]~input_o\ & ( !\S[0]~input_o\ & ( (\S[1]~input_o\ & \G[7]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101101010101111111100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_S[1]~input_o\,
	datab => \ALT_INV_F[7]~input_o\,
	datac => \ALT_INV_H[7]~input_o\,
	datad => \ALT_INV_G[7]~input_o\,
	datae => \ALT_INV_E[7]~input_o\,
	dataf => \ALT_INV_S[0]~input_o\,
	combout => \v6|v3|v7|Q~0_combout\);

-- Location: LABCELL_X33_Y1_N42
\v6|v3|v7|Q~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \v6|v3|v7|Q~2_combout\ = ( \S[2]~input_o\ & ( \v6|v3|v7|Q~0_combout\ ) ) # ( !\S[2]~input_o\ & ( \v6|v3|v7|Q~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \v6|v3|v7|ALT_INV_Q~1_combout\,
	datad => \v6|v3|v7|ALT_INV_Q~0_combout\,
	dataf => \ALT_INV_S[2]~input_o\,
	combout => \v6|v3|v7|Q~2_combout\);

-- Location: IOIBUF_X28_Y0_N52
\F[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_F(8),
	o => \F[8]~input_o\);

-- Location: IOIBUF_X30_Y0_N18
\E[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_E(8),
	o => \E[8]~input_o\);

-- Location: IOIBUF_X28_Y0_N18
\G[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_G(8),
	o => \G[8]~input_o\);

-- Location: IOIBUF_X26_Y0_N75
\H[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_H(8),
	o => \H[8]~input_o\);

-- Location: LABCELL_X27_Y1_N30
\v6|v3|v8|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \v6|v3|v8|Q~0_combout\ = ( \H[8]~input_o\ & ( \S[0]~input_o\ & ( (\S[1]~input_o\) # (\F[8]~input_o\) ) ) ) # ( !\H[8]~input_o\ & ( \S[0]~input_o\ & ( (\F[8]~input_o\ & !\S[1]~input_o\) ) ) ) # ( \H[8]~input_o\ & ( !\S[0]~input_o\ & ( (!\S[1]~input_o\ & 
-- (\E[8]~input_o\)) # (\S[1]~input_o\ & ((\G[8]~input_o\))) ) ) ) # ( !\H[8]~input_o\ & ( !\S[0]~input_o\ & ( (!\S[1]~input_o\ & (\E[8]~input_o\)) # (\S[1]~input_o\ & ((\G[8]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001111001100110000111101010101000000000101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_F[8]~input_o\,
	datab => \ALT_INV_E[8]~input_o\,
	datac => \ALT_INV_G[8]~input_o\,
	datad => \ALT_INV_S[1]~input_o\,
	datae => \ALT_INV_H[8]~input_o\,
	dataf => \ALT_INV_S[0]~input_o\,
	combout => \v6|v3|v8|Q~0_combout\);

-- Location: IOIBUF_X30_Y0_N1
\A[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

-- Location: IOIBUF_X30_Y0_N35
\B[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

-- Location: IOIBUF_X28_Y0_N35
\C[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(8),
	o => \C[8]~input_o\);

-- Location: IOIBUF_X26_Y0_N41
\D[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(8),
	o => \D[8]~input_o\);

-- Location: LABCELL_X27_Y1_N6
\v6|v3|v8|Q~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \v6|v3|v8|Q~1_combout\ = ( \D[8]~input_o\ & ( \S[0]~input_o\ & ( (\S[1]~input_o\) # (\B[8]~input_o\) ) ) ) # ( !\D[8]~input_o\ & ( \S[0]~input_o\ & ( (\B[8]~input_o\ & !\S[1]~input_o\) ) ) ) # ( \D[8]~input_o\ & ( !\S[0]~input_o\ & ( (!\S[1]~input_o\ & 
-- (\A[8]~input_o\)) # (\S[1]~input_o\ & ((\C[8]~input_o\))) ) ) ) # ( !\D[8]~input_o\ & ( !\S[0]~input_o\ & ( (!\S[1]~input_o\ & (\A[8]~input_o\)) # (\S[1]~input_o\ & ((\C[8]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111010101010000111100110011000000000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[8]~input_o\,
	datab => \ALT_INV_B[8]~input_o\,
	datac => \ALT_INV_C[8]~input_o\,
	datad => \ALT_INV_S[1]~input_o\,
	datae => \ALT_INV_D[8]~input_o\,
	dataf => \ALT_INV_S[0]~input_o\,
	combout => \v6|v3|v8|Q~1_combout\);

-- Location: LABCELL_X27_Y1_N42
\v6|v3|v8|Q~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \v6|v3|v8|Q~2_combout\ = ( \S[2]~input_o\ & ( \v6|v3|v8|Q~0_combout\ ) ) # ( !\S[2]~input_o\ & ( \v6|v3|v8|Q~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \v6|v3|v8|ALT_INV_Q~0_combout\,
	datad => \v6|v3|v8|ALT_INV_Q~1_combout\,
	dataf => \ALT_INV_S[2]~input_o\,
	combout => \v6|v3|v8|Q~2_combout\);

-- Location: IOIBUF_X52_Y0_N35
\A[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

-- Location: IOIBUF_X52_Y0_N1
\B[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(9),
	o => \B[9]~input_o\);

-- Location: IOIBUF_X54_Y0_N35
\D[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(9),
	o => \D[9]~input_o\);

-- Location: IOIBUF_X54_Y0_N18
\C[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(9),
	o => \C[9]~input_o\);

-- Location: LABCELL_X53_Y1_N6
\v6|v3|v9|Q~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \v6|v3|v9|Q~1_combout\ = ( \S[0]~input_o\ & ( \C[9]~input_o\ & ( (!\S[1]~input_o\ & (\B[9]~input_o\)) # (\S[1]~input_o\ & ((\D[9]~input_o\))) ) ) ) # ( !\S[0]~input_o\ & ( \C[9]~input_o\ & ( (\S[1]~input_o\) # (\A[9]~input_o\) ) ) ) # ( \S[0]~input_o\ & ( 
-- !\C[9]~input_o\ & ( (!\S[1]~input_o\ & (\B[9]~input_o\)) # (\S[1]~input_o\ & ((\D[9]~input_o\))) ) ) ) # ( !\S[0]~input_o\ & ( !\C[9]~input_o\ & ( (\A[9]~input_o\ & !\S[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000001100000011111101011111010111110011000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[9]~input_o\,
	datab => \ALT_INV_B[9]~input_o\,
	datac => \ALT_INV_S[1]~input_o\,
	datad => \ALT_INV_D[9]~input_o\,
	datae => \ALT_INV_S[0]~input_o\,
	dataf => \ALT_INV_C[9]~input_o\,
	combout => \v6|v3|v9|Q~1_combout\);

-- Location: IOIBUF_X52_Y0_N18
\H[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_H(9),
	o => \H[9]~input_o\);

-- Location: IOIBUF_X52_Y0_N52
\F[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_F(9),
	o => \F[9]~input_o\);

-- Location: IOIBUF_X54_Y0_N52
\G[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_G(9),
	o => \G[9]~input_o\);

-- Location: IOIBUF_X56_Y0_N52
\E[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_E(9),
	o => \E[9]~input_o\);

-- Location: LABCELL_X53_Y1_N30
\v6|v3|v9|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \v6|v3|v9|Q~0_combout\ = ( \G[9]~input_o\ & ( \E[9]~input_o\ & ( (!\S[0]~input_o\) # ((!\S[1]~input_o\ & ((\F[9]~input_o\))) # (\S[1]~input_o\ & (\H[9]~input_o\))) ) ) ) # ( !\G[9]~input_o\ & ( \E[9]~input_o\ & ( (!\S[1]~input_o\ & (((!\S[0]~input_o\) # 
-- (\F[9]~input_o\)))) # (\S[1]~input_o\ & (\H[9]~input_o\ & ((\S[0]~input_o\)))) ) ) ) # ( \G[9]~input_o\ & ( !\E[9]~input_o\ & ( (!\S[1]~input_o\ & (((\F[9]~input_o\ & \S[0]~input_o\)))) # (\S[1]~input_o\ & (((!\S[0]~input_o\)) # (\H[9]~input_o\))) ) ) ) # 
-- ( !\G[9]~input_o\ & ( !\E[9]~input_o\ & ( (\S[0]~input_o\ & ((!\S[1]~input_o\ & ((\F[9]~input_o\))) # (\S[1]~input_o\ & (\H[9]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110101000011110011010111110000001101011111111100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_H[9]~input_o\,
	datab => \ALT_INV_F[9]~input_o\,
	datac => \ALT_INV_S[1]~input_o\,
	datad => \ALT_INV_S[0]~input_o\,
	datae => \ALT_INV_G[9]~input_o\,
	dataf => \ALT_INV_E[9]~input_o\,
	combout => \v6|v3|v9|Q~0_combout\);

-- Location: LABCELL_X53_Y1_N42
\v6|v3|v9|Q~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \v6|v3|v9|Q~2_combout\ = ( \S[2]~input_o\ & ( \v6|v3|v9|Q~0_combout\ ) ) # ( !\S[2]~input_o\ & ( \v6|v3|v9|Q~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \v6|v3|v9|ALT_INV_Q~1_combout\,
	datad => \v6|v3|v9|ALT_INV_Q~0_combout\,
	dataf => \ALT_INV_S[2]~input_o\,
	combout => \v6|v3|v9|Q~2_combout\);

-- Location: IOIBUF_X89_Y8_N55
\C[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(10),
	o => \C[10]~input_o\);

-- Location: IOIBUF_X89_Y8_N38
\B[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(10),
	o => \B[10]~input_o\);

-- Location: IOIBUF_X89_Y9_N38
\D[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(10),
	o => \D[10]~input_o\);

-- Location: IOIBUF_X89_Y9_N4
\A[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

-- Location: LABCELL_X88_Y8_N6
\v6|v3|v10|Q~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \v6|v3|v10|Q~1_combout\ = ( \S[1]~input_o\ & ( \A[10]~input_o\ & ( (!\S[0]~input_o\ & (\C[10]~input_o\)) # (\S[0]~input_o\ & ((\D[10]~input_o\))) ) ) ) # ( !\S[1]~input_o\ & ( \A[10]~input_o\ & ( (!\S[0]~input_o\) # (\B[10]~input_o\) ) ) ) # ( 
-- \S[1]~input_o\ & ( !\A[10]~input_o\ & ( (!\S[0]~input_o\ & (\C[10]~input_o\)) # (\S[0]~input_o\ & ((\D[10]~input_o\))) ) ) ) # ( !\S[1]~input_o\ & ( !\A[10]~input_o\ & ( (\S[0]~input_o\ & \B[10]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011010001000111011111001111110011110100010001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_C[10]~input_o\,
	datab => \ALT_INV_S[0]~input_o\,
	datac => \ALT_INV_B[10]~input_o\,
	datad => \ALT_INV_D[10]~input_o\,
	datae => \ALT_INV_S[1]~input_o\,
	dataf => \ALT_INV_A[10]~input_o\,
	combout => \v6|v3|v10|Q~1_combout\);

-- Location: IOIBUF_X89_Y8_N4
\F[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_F(10),
	o => \F[10]~input_o\);

-- Location: IOIBUF_X89_Y6_N55
\G[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_G(10),
	o => \G[10]~input_o\);

-- Location: IOIBUF_X89_Y8_N21
\H[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_H(10),
	o => \H[10]~input_o\);

-- Location: IOIBUF_X89_Y9_N21
\E[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_E(10),
	o => \E[10]~input_o\);

-- Location: LABCELL_X88_Y8_N30
\v6|v3|v10|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \v6|v3|v10|Q~0_combout\ = ( \S[1]~input_o\ & ( \E[10]~input_o\ & ( (!\S[0]~input_o\ & (\G[10]~input_o\)) # (\S[0]~input_o\ & ((\H[10]~input_o\))) ) ) ) # ( !\S[1]~input_o\ & ( \E[10]~input_o\ & ( (!\S[0]~input_o\) # (\F[10]~input_o\) ) ) ) # ( 
-- \S[1]~input_o\ & ( !\E[10]~input_o\ & ( (!\S[0]~input_o\ & (\G[10]~input_o\)) # (\S[0]~input_o\ & ((\H[10]~input_o\))) ) ) ) # ( !\S[1]~input_o\ & ( !\E[10]~input_o\ & ( (\F[10]~input_o\ & \S[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000011000011111111011101110111010000110000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_F[10]~input_o\,
	datab => \ALT_INV_S[0]~input_o\,
	datac => \ALT_INV_G[10]~input_o\,
	datad => \ALT_INV_H[10]~input_o\,
	datae => \ALT_INV_S[1]~input_o\,
	dataf => \ALT_INV_E[10]~input_o\,
	combout => \v6|v3|v10|Q~0_combout\);

-- Location: LABCELL_X88_Y8_N12
\v6|v3|v10|Q~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \v6|v3|v10|Q~2_combout\ = ( \S[2]~input_o\ & ( \v6|v3|v10|Q~0_combout\ ) ) # ( !\S[2]~input_o\ & ( \v6|v3|v10|Q~0_combout\ & ( \v6|v3|v10|Q~1_combout\ ) ) ) # ( !\S[2]~input_o\ & ( !\v6|v3|v10|Q~0_combout\ & ( \v6|v3|v10|Q~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000000000000000110011001100111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \v6|v3|v10|ALT_INV_Q~1_combout\,
	datae => \ALT_INV_S[2]~input_o\,
	dataf => \v6|v3|v10|ALT_INV_Q~0_combout\,
	combout => \v6|v3|v10|Q~2_combout\);

-- Location: IOIBUF_X89_Y35_N78
\B[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(11),
	o => \B[11]~input_o\);

-- Location: IOIBUF_X88_Y81_N2
\A[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(11),
	o => \A[11]~input_o\);

-- Location: IOIBUF_X89_Y37_N55
\C[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(11),
	o => \C[11]~input_o\);

-- Location: IOIBUF_X89_Y38_N4
\D[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(11),
	o => \D[11]~input_o\);

-- Location: LABCELL_X88_Y35_N6
\v6|v3|v11|Q~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \v6|v3|v11|Q~1_combout\ = ( \C[11]~input_o\ & ( \D[11]~input_o\ & ( ((!\S[0]~input_o\ & ((\A[11]~input_o\))) # (\S[0]~input_o\ & (\B[11]~input_o\))) # (\S[1]~input_o\) ) ) ) # ( !\C[11]~input_o\ & ( \D[11]~input_o\ & ( (!\S[1]~input_o\ & ((!\S[0]~input_o\ 
-- & ((\A[11]~input_o\))) # (\S[0]~input_o\ & (\B[11]~input_o\)))) # (\S[1]~input_o\ & (((\S[0]~input_o\)))) ) ) ) # ( \C[11]~input_o\ & ( !\D[11]~input_o\ & ( (!\S[1]~input_o\ & ((!\S[0]~input_o\ & ((\A[11]~input_o\))) # (\S[0]~input_o\ & 
-- (\B[11]~input_o\)))) # (\S[1]~input_o\ & (((!\S[0]~input_o\)))) ) ) ) # ( !\C[11]~input_o\ & ( !\D[11]~input_o\ & ( (!\S[1]~input_o\ & ((!\S[0]~input_o\ & ((\A[11]~input_o\))) # (\S[0]~input_o\ & (\B[11]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110001000100001111110100010000001100011101110011111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[11]~input_o\,
	datab => \ALT_INV_S[1]~input_o\,
	datac => \ALT_INV_A[11]~input_o\,
	datad => \ALT_INV_S[0]~input_o\,
	datae => \ALT_INV_C[11]~input_o\,
	dataf => \ALT_INV_D[11]~input_o\,
	combout => \v6|v3|v11|Q~1_combout\);

-- Location: IOIBUF_X89_Y35_N44
\G[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_G(11),
	o => \G[11]~input_o\);

-- Location: IOIBUF_X89_Y35_N61
\E[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_E(11),
	o => \E[11]~input_o\);

-- Location: IOIBUF_X89_Y35_N95
\H[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_H(11),
	o => \H[11]~input_o\);

-- Location: IOIBUF_X89_Y37_N38
\F[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_F(11),
	o => \F[11]~input_o\);

-- Location: LABCELL_X88_Y35_N30
\v6|v3|v11|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \v6|v3|v11|Q~0_combout\ = ( \H[11]~input_o\ & ( \F[11]~input_o\ & ( ((!\S[1]~input_o\ & ((\E[11]~input_o\))) # (\S[1]~input_o\ & (\G[11]~input_o\))) # (\S[0]~input_o\) ) ) ) # ( !\H[11]~input_o\ & ( \F[11]~input_o\ & ( (!\S[1]~input_o\ & 
-- (((\E[11]~input_o\) # (\S[0]~input_o\)))) # (\S[1]~input_o\ & (\G[11]~input_o\ & (!\S[0]~input_o\))) ) ) ) # ( \H[11]~input_o\ & ( !\F[11]~input_o\ & ( (!\S[1]~input_o\ & (((!\S[0]~input_o\ & \E[11]~input_o\)))) # (\S[1]~input_o\ & (((\S[0]~input_o\)) # 
-- (\G[11]~input_o\))) ) ) ) # ( !\H[11]~input_o\ & ( !\F[11]~input_o\ & ( (!\S[0]~input_o\ & ((!\S[1]~input_o\ & ((\E[11]~input_o\))) # (\S[1]~input_o\ & (\G[11]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000011010000000100111101001100011100110111000001111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G[11]~input_o\,
	datab => \ALT_INV_S[1]~input_o\,
	datac => \ALT_INV_S[0]~input_o\,
	datad => \ALT_INV_E[11]~input_o\,
	datae => \ALT_INV_H[11]~input_o\,
	dataf => \ALT_INV_F[11]~input_o\,
	combout => \v6|v3|v11|Q~0_combout\);

-- Location: LABCELL_X88_Y35_N12
\v6|v3|v11|Q~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \v6|v3|v11|Q~2_combout\ = ( \v6|v3|v11|Q~0_combout\ & ( (\v6|v3|v11|Q~1_combout\) # (\S[2]~input_o\) ) ) # ( !\v6|v3|v11|Q~0_combout\ & ( (!\S[2]~input_o\ & \v6|v3|v11|Q~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_S[2]~input_o\,
	datad => \v6|v3|v11|ALT_INV_Q~1_combout\,
	dataf => \v6|v3|v11|ALT_INV_Q~0_combout\,
	combout => \v6|v3|v11|Q~2_combout\);

-- Location: IOIBUF_X4_Y0_N18
\G[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_G(12),
	o => \G[12]~input_o\);

-- Location: IOIBUF_X4_Y0_N52
\E[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_E(12),
	o => \E[12]~input_o\);

-- Location: IOIBUF_X2_Y0_N92
\F[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_F(12),
	o => \F[12]~input_o\);

-- Location: IOIBUF_X2_Y0_N75
\H[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_H(12),
	o => \H[12]~input_o\);

-- Location: MLABCELL_X8_Y2_N30
\v6|v3|v12|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \v6|v3|v12|Q~0_combout\ = ( \H[12]~input_o\ & ( \S[0]~input_o\ & ( (\S[1]~input_o\) # (\F[12]~input_o\) ) ) ) # ( !\H[12]~input_o\ & ( \S[0]~input_o\ & ( (\F[12]~input_o\ & !\S[1]~input_o\) ) ) ) # ( \H[12]~input_o\ & ( !\S[0]~input_o\ & ( 
-- (!\S[1]~input_o\ & ((\E[12]~input_o\))) # (\S[1]~input_o\ & (\G[12]~input_o\)) ) ) ) # ( !\H[12]~input_o\ & ( !\S[0]~input_o\ & ( (!\S[1]~input_o\ & ((\E[12]~input_o\))) # (\S[1]~input_o\ & (\G[12]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101010101001100110101010100001111000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G[12]~input_o\,
	datab => \ALT_INV_E[12]~input_o\,
	datac => \ALT_INV_F[12]~input_o\,
	datad => \ALT_INV_S[1]~input_o\,
	datae => \ALT_INV_H[12]~input_o\,
	dataf => \ALT_INV_S[0]~input_o\,
	combout => \v6|v3|v12|Q~0_combout\);

-- Location: IOIBUF_X6_Y0_N35
\C[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(12),
	o => \C[12]~input_o\);

-- Location: IOIBUF_X8_Y0_N35
\B[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(12),
	o => \B[12]~input_o\);

-- Location: IOIBUF_X6_Y0_N1
\A[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(12),
	o => \A[12]~input_o\);

-- Location: IOIBUF_X6_Y0_N18
\D[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(12),
	o => \D[12]~input_o\);

-- Location: MLABCELL_X8_Y2_N6
\v6|v3|v12|Q~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \v6|v3|v12|Q~1_combout\ = ( \D[12]~input_o\ & ( \S[0]~input_o\ & ( (\S[1]~input_o\) # (\B[12]~input_o\) ) ) ) # ( !\D[12]~input_o\ & ( \S[0]~input_o\ & ( (\B[12]~input_o\ & !\S[1]~input_o\) ) ) ) # ( \D[12]~input_o\ & ( !\S[0]~input_o\ & ( 
-- (!\S[1]~input_o\ & ((\A[12]~input_o\))) # (\S[1]~input_o\ & (\C[12]~input_o\)) ) ) ) # ( !\D[12]~input_o\ & ( !\S[0]~input_o\ & ( (!\S[1]~input_o\ & ((\A[12]~input_o\))) # (\S[1]~input_o\ & (\C[12]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000011110101010100110011000000000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_C[12]~input_o\,
	datab => \ALT_INV_B[12]~input_o\,
	datac => \ALT_INV_A[12]~input_o\,
	datad => \ALT_INV_S[1]~input_o\,
	datae => \ALT_INV_D[12]~input_o\,
	dataf => \ALT_INV_S[0]~input_o\,
	combout => \v6|v3|v12|Q~1_combout\);

-- Location: MLABCELL_X8_Y2_N12
\v6|v3|v12|Q~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \v6|v3|v12|Q~2_combout\ = ( \S[2]~input_o\ & ( \v6|v3|v12|Q~0_combout\ ) ) # ( !\S[2]~input_o\ & ( \v6|v3|v12|Q~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \v6|v3|v12|ALT_INV_Q~0_combout\,
	datad => \v6|v3|v12|ALT_INV_Q~1_combout\,
	dataf => \ALT_INV_S[2]~input_o\,
	combout => \v6|v3|v12|Q~2_combout\);

-- Location: IOIBUF_X8_Y0_N18
\H[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_H(13),
	o => \H[13]~input_o\);

-- Location: IOIBUF_X26_Y81_N41
\E[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_E(13),
	o => \E[13]~input_o\);

-- Location: IOIBUF_X2_Y0_N41
\G[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_G(13),
	o => \G[13]~input_o\);

-- Location: IOIBUF_X4_Y0_N1
\F[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_F(13),
	o => \F[13]~input_o\);

-- Location: MLABCELL_X8_Y1_N30
\v6|v3|v13|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \v6|v3|v13|Q~0_combout\ = ( \F[13]~input_o\ & ( \S[0]~input_o\ & ( (!\S[1]~input_o\) # (\H[13]~input_o\) ) ) ) # ( !\F[13]~input_o\ & ( \S[0]~input_o\ & ( (\H[13]~input_o\ & \S[1]~input_o\) ) ) ) # ( \F[13]~input_o\ & ( !\S[0]~input_o\ & ( 
-- (!\S[1]~input_o\ & (\E[13]~input_o\)) # (\S[1]~input_o\ & ((\G[13]~input_o\))) ) ) ) # ( !\F[13]~input_o\ & ( !\S[0]~input_o\ & ( (!\S[1]~input_o\ & (\E[13]~input_o\)) # (\S[1]~input_o\ & ((\G[13]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001111001100110000111100000000010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_H[13]~input_o\,
	datab => \ALT_INV_E[13]~input_o\,
	datac => \ALT_INV_G[13]~input_o\,
	datad => \ALT_INV_S[1]~input_o\,
	datae => \ALT_INV_F[13]~input_o\,
	dataf => \ALT_INV_S[0]~input_o\,
	combout => \v6|v3|v13|Q~0_combout\);

-- Location: IOIBUF_X8_Y0_N52
\D[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(13),
	o => \D[13]~input_o\);

-- Location: IOIBUF_X8_Y0_N1
\C[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(13),
	o => \C[13]~input_o\);

-- Location: IOIBUF_X6_Y0_N52
\A[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(13),
	o => \A[13]~input_o\);

-- Location: IOIBUF_X4_Y0_N35
\B[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(13),
	o => \B[13]~input_o\);

-- Location: MLABCELL_X8_Y1_N6
\v6|v3|v13|Q~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \v6|v3|v13|Q~1_combout\ = ( \B[13]~input_o\ & ( \S[0]~input_o\ & ( (!\S[1]~input_o\) # (\D[13]~input_o\) ) ) ) # ( !\B[13]~input_o\ & ( \S[0]~input_o\ & ( (\D[13]~input_o\ & \S[1]~input_o\) ) ) ) # ( \B[13]~input_o\ & ( !\S[0]~input_o\ & ( 
-- (!\S[1]~input_o\ & ((\A[13]~input_o\))) # (\S[1]~input_o\ & (\C[13]~input_o\)) ) ) ) # ( !\B[13]~input_o\ & ( !\S[0]~input_o\ & ( (!\S[1]~input_o\ & ((\A[13]~input_o\))) # (\S[1]~input_o\ & (\C[13]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100110011000011110011001100000000010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D[13]~input_o\,
	datab => \ALT_INV_C[13]~input_o\,
	datac => \ALT_INV_A[13]~input_o\,
	datad => \ALT_INV_S[1]~input_o\,
	datae => \ALT_INV_B[13]~input_o\,
	dataf => \ALT_INV_S[0]~input_o\,
	combout => \v6|v3|v13|Q~1_combout\);

-- Location: MLABCELL_X8_Y1_N12
\v6|v3|v13|Q~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \v6|v3|v13|Q~2_combout\ = ( \S[2]~input_o\ & ( \v6|v3|v13|Q~0_combout\ ) ) # ( !\S[2]~input_o\ & ( \v6|v3|v13|Q~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \v6|v3|v13|ALT_INV_Q~0_combout\,
	datad => \v6|v3|v13|ALT_INV_Q~1_combout\,
	dataf => \ALT_INV_S[2]~input_o\,
	combout => \v6|v3|v13|Q~2_combout\);

-- Location: IOIBUF_X30_Y81_N1
\G[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_G(14),
	o => \G[14]~input_o\);

-- Location: IOIBUF_X26_Y81_N58
\H[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_H(14),
	o => \H[14]~input_o\);

-- Location: IOIBUF_X28_Y0_N1
\E[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_E(14),
	o => \E[14]~input_o\);

-- Location: IOIBUF_X28_Y81_N1
\F[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_F(14),
	o => \F[14]~input_o\);

-- Location: LABCELL_X27_Y35_N30
\v6|v3|v14|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \v6|v3|v14|Q~0_combout\ = ( \F[14]~input_o\ & ( \S[0]~input_o\ & ( (!\S[1]~input_o\) # (\H[14]~input_o\) ) ) ) # ( !\F[14]~input_o\ & ( \S[0]~input_o\ & ( (\H[14]~input_o\ & \S[1]~input_o\) ) ) ) # ( \F[14]~input_o\ & ( !\S[0]~input_o\ & ( 
-- (!\S[1]~input_o\ & ((\E[14]~input_o\))) # (\S[1]~input_o\ & (\G[14]~input_o\)) ) ) ) # ( !\F[14]~input_o\ & ( !\S[0]~input_o\ & ( (!\S[1]~input_o\ & ((\E[14]~input_o\))) # (\S[1]~input_o\ & (\G[14]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000001011111010100000011000000111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G[14]~input_o\,
	datab => \ALT_INV_H[14]~input_o\,
	datac => \ALT_INV_S[1]~input_o\,
	datad => \ALT_INV_E[14]~input_o\,
	datae => \ALT_INV_F[14]~input_o\,
	dataf => \ALT_INV_S[0]~input_o\,
	combout => \v6|v3|v14|Q~0_combout\);

-- Location: IOIBUF_X28_Y81_N52
\D[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(14),
	o => \D[14]~input_o\);

-- Location: IOIBUF_X30_Y81_N35
\C[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(14),
	o => \C[14]~input_o\);

-- Location: IOIBUF_X26_Y0_N58
\B[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(14),
	o => \B[14]~input_o\);

-- Location: IOIBUF_X28_Y81_N35
\A[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(14),
	o => \A[14]~input_o\);

-- Location: LABCELL_X27_Y35_N6
\v6|v3|v14|Q~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \v6|v3|v14|Q~1_combout\ = ( \A[14]~input_o\ & ( \S[0]~input_o\ & ( (!\S[1]~input_o\ & ((\B[14]~input_o\))) # (\S[1]~input_o\ & (\D[14]~input_o\)) ) ) ) # ( !\A[14]~input_o\ & ( \S[0]~input_o\ & ( (!\S[1]~input_o\ & ((\B[14]~input_o\))) # (\S[1]~input_o\ & 
-- (\D[14]~input_o\)) ) ) ) # ( \A[14]~input_o\ & ( !\S[0]~input_o\ & ( (!\S[1]~input_o\) # (\C[14]~input_o\) ) ) ) # ( !\A[14]~input_o\ & ( !\S[0]~input_o\ & ( (\C[14]~input_o\ & \S[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011111100111111001100000101111101010000010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D[14]~input_o\,
	datab => \ALT_INV_C[14]~input_o\,
	datac => \ALT_INV_S[1]~input_o\,
	datad => \ALT_INV_B[14]~input_o\,
	datae => \ALT_INV_A[14]~input_o\,
	dataf => \ALT_INV_S[0]~input_o\,
	combout => \v6|v3|v14|Q~1_combout\);

-- Location: LABCELL_X27_Y35_N12
\v6|v3|v14|Q~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \v6|v3|v14|Q~2_combout\ = ( \S[2]~input_o\ & ( \v6|v3|v14|Q~0_combout\ ) ) # ( !\S[2]~input_o\ & ( \v6|v3|v14|Q~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \v6|v3|v14|ALT_INV_Q~0_combout\,
	datad => \v6|v3|v14|ALT_INV_Q~1_combout\,
	dataf => \ALT_INV_S[2]~input_o\,
	combout => \v6|v3|v14|Q~2_combout\);

-- Location: IOIBUF_X64_Y0_N35
\C[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(15),
	o => \C[15]~input_o\);

-- Location: IOIBUF_X64_Y81_N52
\B[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(15),
	o => \B[15]~input_o\);

-- Location: IOIBUF_X64_Y81_N1
\A[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(15),
	o => \A[15]~input_o\);

-- Location: IOIBUF_X66_Y0_N41
\D[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(15),
	o => \D[15]~input_o\);

-- Location: LABCELL_X64_Y35_N30
\v6|v3|v15|Q~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \v6|v3|v15|Q~1_combout\ = ( \A[15]~input_o\ & ( \D[15]~input_o\ & ( (!\S[1]~input_o\ & (((!\S[0]~input_o\) # (\B[15]~input_o\)))) # (\S[1]~input_o\ & (((\S[0]~input_o\)) # (\C[15]~input_o\))) ) ) ) # ( !\A[15]~input_o\ & ( \D[15]~input_o\ & ( 
-- (!\S[1]~input_o\ & (((\S[0]~input_o\ & \B[15]~input_o\)))) # (\S[1]~input_o\ & (((\S[0]~input_o\)) # (\C[15]~input_o\))) ) ) ) # ( \A[15]~input_o\ & ( !\D[15]~input_o\ & ( (!\S[1]~input_o\ & (((!\S[0]~input_o\) # (\B[15]~input_o\)))) # (\S[1]~input_o\ & 
-- (\C[15]~input_o\ & (!\S[0]~input_o\))) ) ) ) # ( !\A[15]~input_o\ & ( !\D[15]~input_o\ & ( (!\S[1]~input_o\ & (((\S[0]~input_o\ & \B[15]~input_o\)))) # (\S[1]~input_o\ & (\C[15]~input_o\ & (!\S[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000011100110100001101110000010011000111111101001111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_C[15]~input_o\,
	datab => \ALT_INV_S[1]~input_o\,
	datac => \ALT_INV_S[0]~input_o\,
	datad => \ALT_INV_B[15]~input_o\,
	datae => \ALT_INV_A[15]~input_o\,
	dataf => \ALT_INV_D[15]~input_o\,
	combout => \v6|v3|v15|Q~1_combout\);

-- Location: IOIBUF_X74_Y81_N92
\H[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_H(15),
	o => \H[15]~input_o\);

-- Location: IOIBUF_X82_Y81_N75
\F[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_F(15),
	o => \F[15]~input_o\);

-- Location: IOIBUF_X72_Y81_N52
\G[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_G(15),
	o => \G[15]~input_o\);

-- Location: IOIBUF_X89_Y37_N21
\E[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_E(15),
	o => \E[15]~input_o\);

-- Location: MLABCELL_X72_Y35_N30
\v6|v3|v15|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \v6|v3|v15|Q~0_combout\ = ( \G[15]~input_o\ & ( \E[15]~input_o\ & ( (!\S[0]~input_o\) # ((!\S[1]~input_o\ & ((\F[15]~input_o\))) # (\S[1]~input_o\ & (\H[15]~input_o\))) ) ) ) # ( !\G[15]~input_o\ & ( \E[15]~input_o\ & ( (!\S[1]~input_o\ & 
-- (((!\S[0]~input_o\) # (\F[15]~input_o\)))) # (\S[1]~input_o\ & (\H[15]~input_o\ & (\S[0]~input_o\))) ) ) ) # ( \G[15]~input_o\ & ( !\E[15]~input_o\ & ( (!\S[1]~input_o\ & (((\S[0]~input_o\ & \F[15]~input_o\)))) # (\S[1]~input_o\ & (((!\S[0]~input_o\)) # 
-- (\H[15]~input_o\))) ) ) ) # ( !\G[15]~input_o\ & ( !\E[15]~input_o\ & ( (\S[0]~input_o\ & ((!\S[1]~input_o\ & ((\F[15]~input_o\))) # (\S[1]~input_o\ & (\H[15]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100001101001100010011110111000001110011011111000111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_H[15]~input_o\,
	datab => \ALT_INV_S[1]~input_o\,
	datac => \ALT_INV_S[0]~input_o\,
	datad => \ALT_INV_F[15]~input_o\,
	datae => \ALT_INV_G[15]~input_o\,
	dataf => \ALT_INV_E[15]~input_o\,
	combout => \v6|v3|v15|Q~0_combout\);

-- Location: MLABCELL_X72_Y35_N6
\v6|v3|v15|Q~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \v6|v3|v15|Q~2_combout\ = ( \v6|v3|v15|Q~1_combout\ & ( \v6|v3|v15|Q~0_combout\ ) ) # ( !\v6|v3|v15|Q~1_combout\ & ( \v6|v3|v15|Q~0_combout\ & ( \S[2]~input_o\ ) ) ) # ( \v6|v3|v15|Q~1_combout\ & ( !\v6|v3|v15|Q~0_combout\ & ( !\S[2]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000110011001100111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_S[2]~input_o\,
	datae => \v6|v3|v15|ALT_INV_Q~1_combout\,
	dataf => \v6|v3|v15|ALT_INV_Q~0_combout\,
	combout => \v6|v3|v15|Q~2_combout\);

-- Location: MLABCELL_X84_Y36_N0
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


