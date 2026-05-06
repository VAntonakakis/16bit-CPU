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

-- DATE "05/06/2026 10:40:03"

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

ENTITY 	register_IF_ID IS
    PORT (
	inPC : IN std_logic_vector(15 DOWNTO 0);
	inInstruction : IN std_logic_vector(15 DOWNTO 0);
	clock : IN std_logic;
	IF_Flush : IN std_logic;
	IF_ID_ENABLE : IN std_logic;
	outPC : OUT std_logic_vector(15 DOWNTO 0);
	outInstruction : OUT std_logic_vector(15 DOWNTO 0)
	);
END register_IF_ID;

-- Design Ports Information
-- outPC[0]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outPC[1]	=>  Location: PIN_G6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outPC[2]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outPC[3]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outPC[4]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outPC[5]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outPC[6]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outPC[7]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outPC[8]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outPC[9]	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outPC[10]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outPC[11]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outPC[12]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outPC[13]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outPC[14]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outPC[15]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outInstruction[0]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outInstruction[1]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outInstruction[2]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outInstruction[3]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outInstruction[4]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outInstruction[5]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outInstruction[6]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outInstruction[7]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outInstruction[8]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outInstruction[9]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outInstruction[10]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outInstruction[11]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outInstruction[12]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outInstruction[13]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outInstruction[14]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outInstruction[15]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IF_ID_ENABLE	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inPC[0]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IF_Flush	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inInstruction[0]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inInstruction[1]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inInstruction[2]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inInstruction[3]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inInstruction[4]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inInstruction[5]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inInstruction[6]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inInstruction[7]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inInstruction[8]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inInstruction[9]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inInstruction[10]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inInstruction[11]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inInstruction[12]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inInstruction[13]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inInstruction[14]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inInstruction[15]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inPC[1]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inPC[2]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inPC[3]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inPC[4]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inPC[5]	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inPC[6]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inPC[7]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inPC[8]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inPC[9]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inPC[10]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inPC[11]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inPC[12]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inPC[13]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inPC[14]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inPC[15]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF register_IF_ID IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_inPC : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_inInstruction : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_clock : std_logic;
SIGNAL ww_IF_Flush : std_logic;
SIGNAL ww_IF_ID_ENABLE : std_logic;
SIGNAL ww_outPC : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_outInstruction : std_logic_vector(15 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \IF_ID_ENABLE~input_o\ : std_logic;
SIGNAL \inPC[0]~input_o\ : std_logic;
SIGNAL \outPC[0]~0_combout\ : std_logic;
SIGNAL \IF_Flush~input_o\ : std_logic;
SIGNAL \outPC[15]~1_combout\ : std_logic;
SIGNAL \outPC[0]$latch~combout\ : std_logic;
SIGNAL \inPC[1]~input_o\ : std_logic;
SIGNAL \Add0~1_sumout\ : std_logic;
SIGNAL \outPC[1]~2_combout\ : std_logic;
SIGNAL \outPC[1]$latch~combout\ : std_logic;
SIGNAL \inPC[2]~input_o\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \outPC[2]~3_combout\ : std_logic;
SIGNAL \outPC[2]$latch~combout\ : std_logic;
SIGNAL \inPC[3]~input_o\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \outPC[3]~4_combout\ : std_logic;
SIGNAL \outPC[3]$latch~combout\ : std_logic;
SIGNAL \inPC[4]~input_o\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL \outPC[4]~5_combout\ : std_logic;
SIGNAL \outPC[4]$latch~combout\ : std_logic;
SIGNAL \inPC[5]~input_o\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~17_sumout\ : std_logic;
SIGNAL \outPC[5]~6_combout\ : std_logic;
SIGNAL \outPC[5]$latch~combout\ : std_logic;
SIGNAL \inPC[6]~input_o\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~21_sumout\ : std_logic;
SIGNAL \outPC[6]~7_combout\ : std_logic;
SIGNAL \outPC[6]$latch~combout\ : std_logic;
SIGNAL \inPC[7]~input_o\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~25_sumout\ : std_logic;
SIGNAL \outPC[7]~8_combout\ : std_logic;
SIGNAL \outPC[7]$latch~combout\ : std_logic;
SIGNAL \inPC[8]~input_o\ : std_logic;
SIGNAL \Add0~26\ : std_logic;
SIGNAL \Add0~29_sumout\ : std_logic;
SIGNAL \outPC[8]~9_combout\ : std_logic;
SIGNAL \outPC[8]$latch~combout\ : std_logic;
SIGNAL \inPC[9]~input_o\ : std_logic;
SIGNAL \Add0~30\ : std_logic;
SIGNAL \Add0~33_sumout\ : std_logic;
SIGNAL \outPC[9]~10_combout\ : std_logic;
SIGNAL \outPC[9]$latch~combout\ : std_logic;
SIGNAL \inPC[10]~input_o\ : std_logic;
SIGNAL \Add0~34\ : std_logic;
SIGNAL \Add0~37_sumout\ : std_logic;
SIGNAL \outPC[10]~11_combout\ : std_logic;
SIGNAL \outPC[10]$latch~combout\ : std_logic;
SIGNAL \inPC[11]~input_o\ : std_logic;
SIGNAL \Add0~38\ : std_logic;
SIGNAL \Add0~41_sumout\ : std_logic;
SIGNAL \outPC[11]~12_combout\ : std_logic;
SIGNAL \outPC[11]$latch~combout\ : std_logic;
SIGNAL \inPC[12]~input_o\ : std_logic;
SIGNAL \Add0~42\ : std_logic;
SIGNAL \Add0~45_sumout\ : std_logic;
SIGNAL \outPC[12]~13_combout\ : std_logic;
SIGNAL \outPC[12]$latch~combout\ : std_logic;
SIGNAL \inPC[13]~input_o\ : std_logic;
SIGNAL \Add0~46\ : std_logic;
SIGNAL \Add0~49_sumout\ : std_logic;
SIGNAL \outPC[13]~14_combout\ : std_logic;
SIGNAL \outPC[13]$latch~combout\ : std_logic;
SIGNAL \inPC[14]~input_o\ : std_logic;
SIGNAL \Add0~50\ : std_logic;
SIGNAL \Add0~53_sumout\ : std_logic;
SIGNAL \outPC[14]~15_combout\ : std_logic;
SIGNAL \outPC[14]$latch~combout\ : std_logic;
SIGNAL \inPC[15]~input_o\ : std_logic;
SIGNAL \Add0~54\ : std_logic;
SIGNAL \Add0~57_sumout\ : std_logic;
SIGNAL \outPC[15]~16_combout\ : std_logic;
SIGNAL \outPC[15]$latch~combout\ : std_logic;
SIGNAL \inInstruction[0]~input_o\ : std_logic;
SIGNAL \outInstruction[0]~0_combout\ : std_logic;
SIGNAL \outInstruction[0]$latch~combout\ : std_logic;
SIGNAL \inInstruction[1]~input_o\ : std_logic;
SIGNAL \outInstruction[1]~1_combout\ : std_logic;
SIGNAL \outInstruction[1]$latch~combout\ : std_logic;
SIGNAL \inInstruction[2]~input_o\ : std_logic;
SIGNAL \outInstruction[2]~2_combout\ : std_logic;
SIGNAL \outInstruction[2]$latch~combout\ : std_logic;
SIGNAL \inInstruction[3]~input_o\ : std_logic;
SIGNAL \outInstruction[3]~3_combout\ : std_logic;
SIGNAL \outInstruction[3]$latch~combout\ : std_logic;
SIGNAL \inInstruction[4]~input_o\ : std_logic;
SIGNAL \outInstruction[4]~4_combout\ : std_logic;
SIGNAL \outInstruction[4]$latch~combout\ : std_logic;
SIGNAL \inInstruction[5]~input_o\ : std_logic;
SIGNAL \outInstruction[5]~5_combout\ : std_logic;
SIGNAL \outInstruction[5]$latch~combout\ : std_logic;
SIGNAL \inInstruction[6]~input_o\ : std_logic;
SIGNAL \outInstruction[6]~6_combout\ : std_logic;
SIGNAL \outInstruction[6]$latch~combout\ : std_logic;
SIGNAL \inInstruction[7]~input_o\ : std_logic;
SIGNAL \outInstruction[7]~7_combout\ : std_logic;
SIGNAL \outInstruction[7]$latch~combout\ : std_logic;
SIGNAL \inInstruction[8]~input_o\ : std_logic;
SIGNAL \outInstruction[8]~8_combout\ : std_logic;
SIGNAL \outInstruction[8]$latch~combout\ : std_logic;
SIGNAL \inInstruction[9]~input_o\ : std_logic;
SIGNAL \outInstruction[9]~9_combout\ : std_logic;
SIGNAL \outInstruction[9]$latch~combout\ : std_logic;
SIGNAL \inInstruction[10]~input_o\ : std_logic;
SIGNAL \outInstruction[10]~10_combout\ : std_logic;
SIGNAL \outInstruction[10]$latch~combout\ : std_logic;
SIGNAL \inInstruction[11]~input_o\ : std_logic;
SIGNAL \outInstruction[11]~11_combout\ : std_logic;
SIGNAL \outInstruction[11]$latch~combout\ : std_logic;
SIGNAL \inInstruction[12]~input_o\ : std_logic;
SIGNAL \outInstruction[12]~12_combout\ : std_logic;
SIGNAL \outInstruction[12]$latch~combout\ : std_logic;
SIGNAL \inInstruction[13]~input_o\ : std_logic;
SIGNAL \outInstruction[13]~13_combout\ : std_logic;
SIGNAL \outInstruction[13]$latch~combout\ : std_logic;
SIGNAL \inInstruction[14]~input_o\ : std_logic;
SIGNAL \outInstruction[14]~14_combout\ : std_logic;
SIGNAL \outInstruction[14]$latch~combout\ : std_logic;
SIGNAL \inInstruction[15]~input_o\ : std_logic;
SIGNAL \outInstruction[15]~15_combout\ : std_logic;
SIGNAL \outInstruction[15]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_outPC[8]~9_combout\ : std_logic;
SIGNAL \ALT_INV_outPC[7]~8_combout\ : std_logic;
SIGNAL \ALT_INV_outPC[6]~7_combout\ : std_logic;
SIGNAL \ALT_INV_outPC[5]~6_combout\ : std_logic;
SIGNAL \ALT_INV_outPC[4]~5_combout\ : std_logic;
SIGNAL \ALT_INV_outPC[3]~4_combout\ : std_logic;
SIGNAL \ALT_INV_outPC[2]~3_combout\ : std_logic;
SIGNAL \ALT_INV_outPC[1]~2_combout\ : std_logic;
SIGNAL \ALT_INV_outPC[15]~1_combout\ : std_logic;
SIGNAL \ALT_INV_outPC[0]~0_combout\ : std_logic;
SIGNAL \ALT_INV_Add0~57_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~53_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~49_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~45_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~41_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~37_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \ALT_INV_inPC[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_inPC[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_inPC[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_inPC[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_inPC[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_inPC[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_inPC[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_inPC[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_inPC[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_inPC[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_inPC[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_inPC[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_inPC[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_inPC[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_inPC[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_inInstruction[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_inInstruction[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_inInstruction[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_inInstruction[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_inInstruction[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_inInstruction[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_inInstruction[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_inInstruction[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_inInstruction[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_inInstruction[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_inInstruction[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_inInstruction[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_inInstruction[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_inInstruction[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_inInstruction[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_inInstruction[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_IF_Flush~input_o\ : std_logic;
SIGNAL \ALT_INV_inPC[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_IF_ID_ENABLE~input_o\ : std_logic;
SIGNAL \ALT_INV_clock~input_o\ : std_logic;
SIGNAL \ALT_INV_outInstruction[15]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_outInstruction[14]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_outInstruction[13]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_outInstruction[12]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_outInstruction[11]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_outInstruction[10]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_outInstruction[9]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_outInstruction[8]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_outInstruction[7]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_outInstruction[6]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_outInstruction[5]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_outInstruction[4]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_outInstruction[3]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_outInstruction[2]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_outInstruction[1]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_outInstruction[0]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_outPC[15]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_outPC[14]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_outPC[13]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_outPC[12]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_outPC[11]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_outPC[10]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_outPC[9]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_outPC[8]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_outPC[7]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_outPC[6]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_outPC[5]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_outPC[4]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_outPC[3]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_outPC[2]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_outPC[1]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_outPC[0]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_outInstruction[15]~15_combout\ : std_logic;
SIGNAL \ALT_INV_outInstruction[14]~14_combout\ : std_logic;
SIGNAL \ALT_INV_outInstruction[13]~13_combout\ : std_logic;
SIGNAL \ALT_INV_outInstruction[12]~12_combout\ : std_logic;
SIGNAL \ALT_INV_outInstruction[11]~11_combout\ : std_logic;
SIGNAL \ALT_INV_outInstruction[10]~10_combout\ : std_logic;
SIGNAL \ALT_INV_outInstruction[9]~9_combout\ : std_logic;
SIGNAL \ALT_INV_outInstruction[8]~8_combout\ : std_logic;
SIGNAL \ALT_INV_outInstruction[7]~7_combout\ : std_logic;
SIGNAL \ALT_INV_outInstruction[6]~6_combout\ : std_logic;
SIGNAL \ALT_INV_outInstruction[5]~5_combout\ : std_logic;
SIGNAL \ALT_INV_outInstruction[4]~4_combout\ : std_logic;
SIGNAL \ALT_INV_outInstruction[3]~3_combout\ : std_logic;
SIGNAL \ALT_INV_outInstruction[2]~2_combout\ : std_logic;
SIGNAL \ALT_INV_outInstruction[1]~1_combout\ : std_logic;
SIGNAL \ALT_INV_outInstruction[0]~0_combout\ : std_logic;
SIGNAL \ALT_INV_outPC[15]~16_combout\ : std_logic;
SIGNAL \ALT_INV_outPC[14]~15_combout\ : std_logic;
SIGNAL \ALT_INV_outPC[13]~14_combout\ : std_logic;
SIGNAL \ALT_INV_outPC[12]~13_combout\ : std_logic;
SIGNAL \ALT_INV_outPC[11]~12_combout\ : std_logic;
SIGNAL \ALT_INV_outPC[10]~11_combout\ : std_logic;
SIGNAL \ALT_INV_outPC[9]~10_combout\ : std_logic;

BEGIN

ww_inPC <= inPC;
ww_inInstruction <= inInstruction;
ww_clock <= clock;
ww_IF_Flush <= IF_Flush;
ww_IF_ID_ENABLE <= IF_ID_ENABLE;
outPC <= ww_outPC;
outInstruction <= ww_outInstruction;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_outPC[8]~9_combout\ <= NOT \outPC[8]~9_combout\;
\ALT_INV_outPC[7]~8_combout\ <= NOT \outPC[7]~8_combout\;
\ALT_INV_outPC[6]~7_combout\ <= NOT \outPC[6]~7_combout\;
\ALT_INV_outPC[5]~6_combout\ <= NOT \outPC[5]~6_combout\;
\ALT_INV_outPC[4]~5_combout\ <= NOT \outPC[4]~5_combout\;
\ALT_INV_outPC[3]~4_combout\ <= NOT \outPC[3]~4_combout\;
\ALT_INV_outPC[2]~3_combout\ <= NOT \outPC[2]~3_combout\;
\ALT_INV_outPC[1]~2_combout\ <= NOT \outPC[1]~2_combout\;
\ALT_INV_outPC[15]~1_combout\ <= NOT \outPC[15]~1_combout\;
\ALT_INV_outPC[0]~0_combout\ <= NOT \outPC[0]~0_combout\;
\ALT_INV_Add0~57_sumout\ <= NOT \Add0~57_sumout\;
\ALT_INV_Add0~53_sumout\ <= NOT \Add0~53_sumout\;
\ALT_INV_Add0~49_sumout\ <= NOT \Add0~49_sumout\;
\ALT_INV_Add0~45_sumout\ <= NOT \Add0~45_sumout\;
\ALT_INV_Add0~41_sumout\ <= NOT \Add0~41_sumout\;
\ALT_INV_Add0~37_sumout\ <= NOT \Add0~37_sumout\;
\ALT_INV_Add0~33_sumout\ <= NOT \Add0~33_sumout\;
\ALT_INV_Add0~29_sumout\ <= NOT \Add0~29_sumout\;
\ALT_INV_Add0~25_sumout\ <= NOT \Add0~25_sumout\;
\ALT_INV_Add0~21_sumout\ <= NOT \Add0~21_sumout\;
\ALT_INV_Add0~17_sumout\ <= NOT \Add0~17_sumout\;
\ALT_INV_Add0~13_sumout\ <= NOT \Add0~13_sumout\;
\ALT_INV_Add0~9_sumout\ <= NOT \Add0~9_sumout\;
\ALT_INV_Add0~5_sumout\ <= NOT \Add0~5_sumout\;
\ALT_INV_Add0~1_sumout\ <= NOT \Add0~1_sumout\;
\ALT_INV_inPC[15]~input_o\ <= NOT \inPC[15]~input_o\;
\ALT_INV_inPC[14]~input_o\ <= NOT \inPC[14]~input_o\;
\ALT_INV_inPC[13]~input_o\ <= NOT \inPC[13]~input_o\;
\ALT_INV_inPC[12]~input_o\ <= NOT \inPC[12]~input_o\;
\ALT_INV_inPC[11]~input_o\ <= NOT \inPC[11]~input_o\;
\ALT_INV_inPC[10]~input_o\ <= NOT \inPC[10]~input_o\;
\ALT_INV_inPC[9]~input_o\ <= NOT \inPC[9]~input_o\;
\ALT_INV_inPC[8]~input_o\ <= NOT \inPC[8]~input_o\;
\ALT_INV_inPC[7]~input_o\ <= NOT \inPC[7]~input_o\;
\ALT_INV_inPC[6]~input_o\ <= NOT \inPC[6]~input_o\;
\ALT_INV_inPC[5]~input_o\ <= NOT \inPC[5]~input_o\;
\ALT_INV_inPC[4]~input_o\ <= NOT \inPC[4]~input_o\;
\ALT_INV_inPC[3]~input_o\ <= NOT \inPC[3]~input_o\;
\ALT_INV_inPC[2]~input_o\ <= NOT \inPC[2]~input_o\;
\ALT_INV_inPC[1]~input_o\ <= NOT \inPC[1]~input_o\;
\ALT_INV_inInstruction[15]~input_o\ <= NOT \inInstruction[15]~input_o\;
\ALT_INV_inInstruction[14]~input_o\ <= NOT \inInstruction[14]~input_o\;
\ALT_INV_inInstruction[13]~input_o\ <= NOT \inInstruction[13]~input_o\;
\ALT_INV_inInstruction[12]~input_o\ <= NOT \inInstruction[12]~input_o\;
\ALT_INV_inInstruction[11]~input_o\ <= NOT \inInstruction[11]~input_o\;
\ALT_INV_inInstruction[10]~input_o\ <= NOT \inInstruction[10]~input_o\;
\ALT_INV_inInstruction[9]~input_o\ <= NOT \inInstruction[9]~input_o\;
\ALT_INV_inInstruction[8]~input_o\ <= NOT \inInstruction[8]~input_o\;
\ALT_INV_inInstruction[7]~input_o\ <= NOT \inInstruction[7]~input_o\;
\ALT_INV_inInstruction[6]~input_o\ <= NOT \inInstruction[6]~input_o\;
\ALT_INV_inInstruction[5]~input_o\ <= NOT \inInstruction[5]~input_o\;
\ALT_INV_inInstruction[4]~input_o\ <= NOT \inInstruction[4]~input_o\;
\ALT_INV_inInstruction[3]~input_o\ <= NOT \inInstruction[3]~input_o\;
\ALT_INV_inInstruction[2]~input_o\ <= NOT \inInstruction[2]~input_o\;
\ALT_INV_inInstruction[1]~input_o\ <= NOT \inInstruction[1]~input_o\;
\ALT_INV_inInstruction[0]~input_o\ <= NOT \inInstruction[0]~input_o\;
\ALT_INV_IF_Flush~input_o\ <= NOT \IF_Flush~input_o\;
\ALT_INV_inPC[0]~input_o\ <= NOT \inPC[0]~input_o\;
\ALT_INV_IF_ID_ENABLE~input_o\ <= NOT \IF_ID_ENABLE~input_o\;
\ALT_INV_clock~input_o\ <= NOT \clock~input_o\;
\ALT_INV_outInstruction[15]$latch~combout\ <= NOT \outInstruction[15]$latch~combout\;
\ALT_INV_outInstruction[14]$latch~combout\ <= NOT \outInstruction[14]$latch~combout\;
\ALT_INV_outInstruction[13]$latch~combout\ <= NOT \outInstruction[13]$latch~combout\;
\ALT_INV_outInstruction[12]$latch~combout\ <= NOT \outInstruction[12]$latch~combout\;
\ALT_INV_outInstruction[11]$latch~combout\ <= NOT \outInstruction[11]$latch~combout\;
\ALT_INV_outInstruction[10]$latch~combout\ <= NOT \outInstruction[10]$latch~combout\;
\ALT_INV_outInstruction[9]$latch~combout\ <= NOT \outInstruction[9]$latch~combout\;
\ALT_INV_outInstruction[8]$latch~combout\ <= NOT \outInstruction[8]$latch~combout\;
\ALT_INV_outInstruction[7]$latch~combout\ <= NOT \outInstruction[7]$latch~combout\;
\ALT_INV_outInstruction[6]$latch~combout\ <= NOT \outInstruction[6]$latch~combout\;
\ALT_INV_outInstruction[5]$latch~combout\ <= NOT \outInstruction[5]$latch~combout\;
\ALT_INV_outInstruction[4]$latch~combout\ <= NOT \outInstruction[4]$latch~combout\;
\ALT_INV_outInstruction[3]$latch~combout\ <= NOT \outInstruction[3]$latch~combout\;
\ALT_INV_outInstruction[2]$latch~combout\ <= NOT \outInstruction[2]$latch~combout\;
\ALT_INV_outInstruction[1]$latch~combout\ <= NOT \outInstruction[1]$latch~combout\;
\ALT_INV_outInstruction[0]$latch~combout\ <= NOT \outInstruction[0]$latch~combout\;
\ALT_INV_outPC[15]$latch~combout\ <= NOT \outPC[15]$latch~combout\;
\ALT_INV_outPC[14]$latch~combout\ <= NOT \outPC[14]$latch~combout\;
\ALT_INV_outPC[13]$latch~combout\ <= NOT \outPC[13]$latch~combout\;
\ALT_INV_outPC[12]$latch~combout\ <= NOT \outPC[12]$latch~combout\;
\ALT_INV_outPC[11]$latch~combout\ <= NOT \outPC[11]$latch~combout\;
\ALT_INV_outPC[10]$latch~combout\ <= NOT \outPC[10]$latch~combout\;
\ALT_INV_outPC[9]$latch~combout\ <= NOT \outPC[9]$latch~combout\;
\ALT_INV_outPC[8]$latch~combout\ <= NOT \outPC[8]$latch~combout\;
\ALT_INV_outPC[7]$latch~combout\ <= NOT \outPC[7]$latch~combout\;
\ALT_INV_outPC[6]$latch~combout\ <= NOT \outPC[6]$latch~combout\;
\ALT_INV_outPC[5]$latch~combout\ <= NOT \outPC[5]$latch~combout\;
\ALT_INV_outPC[4]$latch~combout\ <= NOT \outPC[4]$latch~combout\;
\ALT_INV_outPC[3]$latch~combout\ <= NOT \outPC[3]$latch~combout\;
\ALT_INV_outPC[2]$latch~combout\ <= NOT \outPC[2]$latch~combout\;
\ALT_INV_outPC[1]$latch~combout\ <= NOT \outPC[1]$latch~combout\;
\ALT_INV_outPC[0]$latch~combout\ <= NOT \outPC[0]$latch~combout\;
\ALT_INV_outInstruction[15]~15_combout\ <= NOT \outInstruction[15]~15_combout\;
\ALT_INV_outInstruction[14]~14_combout\ <= NOT \outInstruction[14]~14_combout\;
\ALT_INV_outInstruction[13]~13_combout\ <= NOT \outInstruction[13]~13_combout\;
\ALT_INV_outInstruction[12]~12_combout\ <= NOT \outInstruction[12]~12_combout\;
\ALT_INV_outInstruction[11]~11_combout\ <= NOT \outInstruction[11]~11_combout\;
\ALT_INV_outInstruction[10]~10_combout\ <= NOT \outInstruction[10]~10_combout\;
\ALT_INV_outInstruction[9]~9_combout\ <= NOT \outInstruction[9]~9_combout\;
\ALT_INV_outInstruction[8]~8_combout\ <= NOT \outInstruction[8]~8_combout\;
\ALT_INV_outInstruction[7]~7_combout\ <= NOT \outInstruction[7]~7_combout\;
\ALT_INV_outInstruction[6]~6_combout\ <= NOT \outInstruction[6]~6_combout\;
\ALT_INV_outInstruction[5]~5_combout\ <= NOT \outInstruction[5]~5_combout\;
\ALT_INV_outInstruction[4]~4_combout\ <= NOT \outInstruction[4]~4_combout\;
\ALT_INV_outInstruction[3]~3_combout\ <= NOT \outInstruction[3]~3_combout\;
\ALT_INV_outInstruction[2]~2_combout\ <= NOT \outInstruction[2]~2_combout\;
\ALT_INV_outInstruction[1]~1_combout\ <= NOT \outInstruction[1]~1_combout\;
\ALT_INV_outInstruction[0]~0_combout\ <= NOT \outInstruction[0]~0_combout\;
\ALT_INV_outPC[15]~16_combout\ <= NOT \outPC[15]~16_combout\;
\ALT_INV_outPC[14]~15_combout\ <= NOT \outPC[14]~15_combout\;
\ALT_INV_outPC[13]~14_combout\ <= NOT \outPC[13]~14_combout\;
\ALT_INV_outPC[12]~13_combout\ <= NOT \outPC[12]~13_combout\;
\ALT_INV_outPC[11]~12_combout\ <= NOT \outPC[11]~12_combout\;
\ALT_INV_outPC[10]~11_combout\ <= NOT \outPC[10]~11_combout\;
\ALT_INV_outPC[9]~10_combout\ <= NOT \outPC[9]~10_combout\;

-- Location: IOOBUF_X36_Y0_N36
\outPC[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \outPC[0]$latch~combout\,
	devoe => ww_devoe,
	o => ww_outPC(0));

-- Location: IOOBUF_X26_Y81_N42
\outPC[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \outPC[1]$latch~combout\,
	devoe => ww_devoe,
	o => ww_outPC(1));

-- Location: IOOBUF_X8_Y0_N2
\outPC[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \outPC[2]$latch~combout\,
	devoe => ww_devoe,
	o => ww_outPC(2));

-- Location: IOOBUF_X52_Y0_N53
\outPC[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \outPC[3]$latch~combout\,
	devoe => ww_devoe,
	o => ww_outPC(3));

-- Location: IOOBUF_X60_Y0_N36
\outPC[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \outPC[4]$latch~combout\,
	devoe => ww_devoe,
	o => ww_outPC(4));

-- Location: IOOBUF_X26_Y0_N42
\outPC[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \outPC[5]$latch~combout\,
	devoe => ww_devoe,
	o => ww_outPC(5));

-- Location: IOOBUF_X2_Y0_N76
\outPC[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \outPC[6]$latch~combout\,
	devoe => ww_devoe,
	o => ww_outPC(6));

-- Location: IOOBUF_X6_Y0_N36
\outPC[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \outPC[7]$latch~combout\,
	devoe => ww_devoe,
	o => ww_outPC(7));

-- Location: IOOBUF_X38_Y0_N2
\outPC[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \outPC[8]$latch~combout\,
	devoe => ww_devoe,
	o => ww_outPC(8));

-- Location: IOOBUF_X34_Y0_N76
\outPC[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \outPC[9]$latch~combout\,
	devoe => ww_devoe,
	o => ww_outPC(9));

-- Location: IOOBUF_X50_Y0_N42
\outPC[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \outPC[10]$latch~combout\,
	devoe => ww_devoe,
	o => ww_outPC(10));

-- Location: IOOBUF_X36_Y0_N19
\outPC[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \outPC[11]$latch~combout\,
	devoe => ww_devoe,
	o => ww_outPC(11));

-- Location: IOOBUF_X28_Y0_N36
\outPC[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \outPC[12]$latch~combout\,
	devoe => ww_devoe,
	o => ww_outPC(12));

-- Location: IOOBUF_X6_Y0_N19
\outPC[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \outPC[13]$latch~combout\,
	devoe => ww_devoe,
	o => ww_outPC(13));

-- Location: IOOBUF_X54_Y0_N36
\outPC[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \outPC[14]$latch~combout\,
	devoe => ww_devoe,
	o => ww_outPC(14));

-- Location: IOOBUF_X40_Y0_N36
\outPC[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \outPC[15]$latch~combout\,
	devoe => ww_devoe,
	o => ww_outPC(15));

-- Location: IOOBUF_X34_Y0_N42
\outInstruction[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \outInstruction[0]$latch~combout\,
	devoe => ww_devoe,
	o => ww_outInstruction(0));

-- Location: IOOBUF_X56_Y0_N53
\outInstruction[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \outInstruction[1]$latch~combout\,
	devoe => ww_devoe,
	o => ww_outInstruction(1));

-- Location: IOOBUF_X30_Y0_N53
\outInstruction[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \outInstruction[2]$latch~combout\,
	devoe => ww_devoe,
	o => ww_outInstruction(2));

-- Location: IOOBUF_X26_Y0_N93
\outInstruction[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \outInstruction[3]$latch~combout\,
	devoe => ww_devoe,
	o => ww_outInstruction(3));

-- Location: IOOBUF_X38_Y0_N53
\outInstruction[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \outInstruction[4]$latch~combout\,
	devoe => ww_devoe,
	o => ww_outInstruction(4));

-- Location: IOOBUF_X58_Y0_N76
\outInstruction[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \outInstruction[5]$latch~combout\,
	devoe => ww_devoe,
	o => ww_outInstruction(5));

-- Location: IOOBUF_X50_Y0_N76
\outInstruction[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \outInstruction[6]$latch~combout\,
	devoe => ww_devoe,
	o => ww_outInstruction(6));

-- Location: IOOBUF_X28_Y0_N53
\outInstruction[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \outInstruction[7]$latch~combout\,
	devoe => ww_devoe,
	o => ww_outInstruction(7));

-- Location: IOOBUF_X6_Y0_N2
\outInstruction[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \outInstruction[8]$latch~combout\,
	devoe => ww_devoe,
	o => ww_outInstruction(8));

-- Location: IOOBUF_X32_Y0_N36
\outInstruction[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \outInstruction[9]$latch~combout\,
	devoe => ww_devoe,
	o => ww_outInstruction(9));

-- Location: IOOBUF_X2_Y0_N59
\outInstruction[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \outInstruction[10]$latch~combout\,
	devoe => ww_devoe,
	o => ww_outInstruction(10));

-- Location: IOOBUF_X6_Y0_N53
\outInstruction[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \outInstruction[11]$latch~combout\,
	devoe => ww_devoe,
	o => ww_outInstruction(11));

-- Location: IOOBUF_X58_Y0_N42
\outInstruction[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \outInstruction[12]$latch~combout\,
	devoe => ww_devoe,
	o => ww_outInstruction(12));

-- Location: IOOBUF_X8_Y0_N53
\outInstruction[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \outInstruction[13]$latch~combout\,
	devoe => ww_devoe,
	o => ww_outInstruction(13));

-- Location: IOOBUF_X36_Y0_N2
\outInstruction[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \outInstruction[14]$latch~combout\,
	devoe => ww_devoe,
	o => ww_outInstruction(14));

-- Location: IOOBUF_X60_Y0_N19
\outInstruction[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \outInstruction[15]$latch~combout\,
	devoe => ww_devoe,
	o => ww_outInstruction(15));

-- Location: IOIBUF_X28_Y0_N18
\clock~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: IOIBUF_X26_Y0_N75
\IF_ID_ENABLE~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IF_ID_ENABLE,
	o => \IF_ID_ENABLE~input_o\);

-- Location: IOIBUF_X50_Y0_N92
\inPC[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inPC(0),
	o => \inPC[0]~input_o\);

-- Location: LABCELL_X17_Y3_N3
\outPC[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \outPC[0]~0_combout\ = ( \inPC[0]~input_o\ & ( (\clock~input_o\ & \IF_ID_ENABLE~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_clock~input_o\,
	datab => \ALT_INV_IF_ID_ENABLE~input_o\,
	dataf => \ALT_INV_inPC[0]~input_o\,
	combout => \outPC[0]~0_combout\);

-- Location: IOIBUF_X8_Y0_N18
\IF_Flush~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IF_Flush,
	o => \IF_Flush~input_o\);

-- Location: LABCELL_X16_Y3_N0
\outPC[15]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \outPC[15]~1_combout\ = ( \IF_Flush~input_o\ & ( \clock~input_o\ ) ) # ( !\IF_Flush~input_o\ & ( (\IF_ID_ENABLE~input_o\ & \clock~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_IF_ID_ENABLE~input_o\,
	datac => \ALT_INV_clock~input_o\,
	dataf => \ALT_INV_IF_Flush~input_o\,
	combout => \outPC[15]~1_combout\);

-- Location: LABCELL_X16_Y3_N30
\outPC[0]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \outPC[0]$latch~combout\ = ( \outPC[0]$latch~combout\ & ( (!\outPC[15]~1_combout\) # (\outPC[0]~0_combout\) ) ) # ( !\outPC[0]$latch~combout\ & ( (\outPC[0]~0_combout\ & \outPC[15]~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_outPC[0]~0_combout\,
	datad => \ALT_INV_outPC[15]~1_combout\,
	dataf => \ALT_INV_outPC[0]$latch~combout\,
	combout => \outPC[0]$latch~combout\);

-- Location: IOIBUF_X4_Y0_N52
\inPC[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inPC(1),
	o => \inPC[1]~input_o\);

-- Location: LABCELL_X18_Y2_N0
\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_sumout\ = SUM(( \inPC[1]~input_o\ ) + ( VCC ) + ( !VCC ))
-- \Add0~2\ = CARRY(( \inPC[1]~input_o\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_inPC[1]~input_o\,
	cin => GND,
	sumout => \Add0~1_sumout\,
	cout => \Add0~2\);

-- Location: LABCELL_X17_Y3_N39
\outPC[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \outPC[1]~2_combout\ = (\clock~input_o\ & (\IF_ID_ENABLE~input_o\ & \Add0~1_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000100000000000100010000000000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_clock~input_o\,
	datab => \ALT_INV_IF_ID_ENABLE~input_o\,
	datad => \ALT_INV_Add0~1_sumout\,
	combout => \outPC[1]~2_combout\);

-- Location: LABCELL_X16_Y3_N24
\outPC[1]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \outPC[1]$latch~combout\ = ( \outPC[1]$latch~combout\ & ( (!\outPC[15]~1_combout\) # (\outPC[1]~2_combout\) ) ) # ( !\outPC[1]$latch~combout\ & ( (\outPC[1]~2_combout\ & \outPC[15]~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_outPC[1]~2_combout\,
	datad => \ALT_INV_outPC[15]~1_combout\,
	dataf => \ALT_INV_outPC[1]$latch~combout\,
	combout => \outPC[1]$latch~combout\);

-- Location: IOIBUF_X30_Y0_N35
\inPC[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inPC(2),
	o => \inPC[2]~input_o\);

-- Location: LABCELL_X18_Y2_N3
\Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~5_sumout\ = SUM(( \inPC[2]~input_o\ ) + ( GND ) + ( \Add0~2\ ))
-- \Add0~6\ = CARRY(( \inPC[2]~input_o\ ) + ( GND ) + ( \Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inPC[2]~input_o\,
	cin => \Add0~2\,
	sumout => \Add0~5_sumout\,
	cout => \Add0~6\);

-- Location: MLABCELL_X15_Y3_N30
\outPC[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \outPC[2]~3_combout\ = (\clock~input_o\ & (\IF_ID_ENABLE~input_o\ & \Add0~5_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_clock~input_o\,
	datab => \ALT_INV_IF_ID_ENABLE~input_o\,
	datac => \ALT_INV_Add0~5_sumout\,
	combout => \outPC[2]~3_combout\);

-- Location: LABCELL_X16_Y3_N12
\outPC[2]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \outPC[2]$latch~combout\ = ( \outPC[2]$latch~combout\ & ( (!\outPC[15]~1_combout\) # (\outPC[2]~3_combout\) ) ) # ( !\outPC[2]$latch~combout\ & ( (\outPC[2]~3_combout\ & \outPC[15]~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_outPC[2]~3_combout\,
	datad => \ALT_INV_outPC[15]~1_combout\,
	dataf => \ALT_INV_outPC[2]$latch~combout\,
	combout => \outPC[2]$latch~combout\);

-- Location: IOIBUF_X52_Y0_N1
\inPC[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inPC(3),
	o => \inPC[3]~input_o\);

-- Location: LABCELL_X18_Y2_N6
\Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( \inPC[3]~input_o\ ) + ( GND ) + ( \Add0~6\ ))
-- \Add0~10\ = CARRY(( \inPC[3]~input_o\ ) + ( GND ) + ( \Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_inPC[3]~input_o\,
	cin => \Add0~6\,
	sumout => \Add0~9_sumout\,
	cout => \Add0~10\);

-- Location: MLABCELL_X15_Y3_N6
\outPC[3]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \outPC[3]~4_combout\ = (\clock~input_o\ & (\IF_ID_ENABLE~input_o\ & \Add0~9_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_clock~input_o\,
	datab => \ALT_INV_IF_ID_ENABLE~input_o\,
	datac => \ALT_INV_Add0~9_sumout\,
	combout => \outPC[3]~4_combout\);

-- Location: LABCELL_X16_Y3_N51
\outPC[3]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \outPC[3]$latch~combout\ = ( \outPC[3]$latch~combout\ & ( (!\outPC[15]~1_combout\) # (\outPC[3]~4_combout\) ) ) # ( !\outPC[3]$latch~combout\ & ( (\outPC[3]~4_combout\ & \outPC[15]~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010111111111010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_outPC[3]~4_combout\,
	datad => \ALT_INV_outPC[15]~1_combout\,
	dataf => \ALT_INV_outPC[3]$latch~combout\,
	combout => \outPC[3]$latch~combout\);

-- Location: IOIBUF_X32_Y0_N18
\inPC[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inPC(4),
	o => \inPC[4]~input_o\);

-- Location: LABCELL_X18_Y2_N9
\Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~13_sumout\ = SUM(( \inPC[4]~input_o\ ) + ( GND ) + ( \Add0~10\ ))
-- \Add0~14\ = CARRY(( \inPC[4]~input_o\ ) + ( GND ) + ( \Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inPC[4]~input_o\,
	cin => \Add0~10\,
	sumout => \Add0~13_sumout\,
	cout => \Add0~14\);

-- Location: MLABCELL_X15_Y3_N45
\outPC[4]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \outPC[4]~5_combout\ = (\clock~input_o\ & (\IF_ID_ENABLE~input_o\ & \Add0~13_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_clock~input_o\,
	datab => \ALT_INV_IF_ID_ENABLE~input_o\,
	datac => \ALT_INV_Add0~13_sumout\,
	combout => \outPC[4]~5_combout\);

-- Location: LABCELL_X16_Y3_N36
\outPC[4]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \outPC[4]$latch~combout\ = ( \outPC[15]~1_combout\ & ( \outPC[4]~5_combout\ ) ) # ( !\outPC[15]~1_combout\ & ( \outPC[4]$latch~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_outPC[4]~5_combout\,
	datad => \ALT_INV_outPC[4]$latch~combout\,
	dataf => \ALT_INV_outPC[15]~1_combout\,
	combout => \outPC[4]$latch~combout\);

-- Location: IOIBUF_X4_Y0_N35
\inPC[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inPC(5),
	o => \inPC[5]~input_o\);

-- Location: LABCELL_X18_Y2_N12
\Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~17_sumout\ = SUM(( \inPC[5]~input_o\ ) + ( GND ) + ( \Add0~14\ ))
-- \Add0~18\ = CARRY(( \inPC[5]~input_o\ ) + ( GND ) + ( \Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_inPC[5]~input_o\,
	cin => \Add0~14\,
	sumout => \Add0~17_sumout\,
	cout => \Add0~18\);

-- Location: MLABCELL_X15_Y3_N21
\outPC[5]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \outPC[5]~6_combout\ = (\clock~input_o\ & (\IF_ID_ENABLE~input_o\ & \Add0~17_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000100000000000100010000000000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_clock~input_o\,
	datab => \ALT_INV_IF_ID_ENABLE~input_o\,
	datad => \ALT_INV_Add0~17_sumout\,
	combout => \outPC[5]~6_combout\);

-- Location: LABCELL_X16_Y3_N54
\outPC[5]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \outPC[5]$latch~combout\ = ( \outPC[5]$latch~combout\ & ( (!\outPC[15]~1_combout\) # (\outPC[5]~6_combout\) ) ) # ( !\outPC[5]$latch~combout\ & ( (\outPC[5]~6_combout\ & \outPC[15]~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_outPC[5]~6_combout\,
	datad => \ALT_INV_outPC[15]~1_combout\,
	dataf => \ALT_INV_outPC[5]$latch~combout\,
	combout => \outPC[5]$latch~combout\);

-- Location: IOIBUF_X40_Y0_N52
\inPC[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inPC(6),
	o => \inPC[6]~input_o\);

-- Location: LABCELL_X18_Y2_N15
\Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~21_sumout\ = SUM(( \inPC[6]~input_o\ ) + ( GND ) + ( \Add0~18\ ))
-- \Add0~22\ = CARRY(( \inPC[6]~input_o\ ) + ( GND ) + ( \Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_inPC[6]~input_o\,
	cin => \Add0~18\,
	sumout => \Add0~21_sumout\,
	cout => \Add0~22\);

-- Location: LABCELL_X17_Y3_N45
\outPC[6]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \outPC[6]~7_combout\ = (\clock~input_o\ & (\IF_ID_ENABLE~input_o\ & \Add0~21_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_clock~input_o\,
	datab => \ALT_INV_IF_ID_ENABLE~input_o\,
	datac => \ALT_INV_Add0~21_sumout\,
	combout => \outPC[6]~7_combout\);

-- Location: LABCELL_X16_Y3_N48
\outPC[6]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \outPC[6]$latch~combout\ = ( \outPC[6]$latch~combout\ & ( (!\outPC[15]~1_combout\) # (\outPC[6]~7_combout\) ) ) # ( !\outPC[6]$latch~combout\ & ( (\outPC[6]~7_combout\ & \outPC[15]~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_outPC[6]~7_combout\,
	datad => \ALT_INV_outPC[15]~1_combout\,
	dataf => \ALT_INV_outPC[6]$latch~combout\,
	combout => \outPC[6]$latch~combout\);

-- Location: IOIBUF_X2_Y0_N41
\inPC[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inPC(7),
	o => \inPC[7]~input_o\);

-- Location: LABCELL_X18_Y2_N18
\Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~25_sumout\ = SUM(( \inPC[7]~input_o\ ) + ( GND ) + ( \Add0~22\ ))
-- \Add0~26\ = CARRY(( \inPC[7]~input_o\ ) + ( GND ) + ( \Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_inPC[7]~input_o\,
	cin => \Add0~22\,
	sumout => \Add0~25_sumout\,
	cout => \Add0~26\);

-- Location: MLABCELL_X15_Y3_N27
\outPC[7]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \outPC[7]~8_combout\ = (\clock~input_o\ & (\IF_ID_ENABLE~input_o\ & \Add0~25_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_clock~input_o\,
	datab => \ALT_INV_IF_ID_ENABLE~input_o\,
	datac => \ALT_INV_Add0~25_sumout\,
	combout => \outPC[7]~8_combout\);

-- Location: LABCELL_X16_Y3_N18
\outPC[7]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \outPC[7]$latch~combout\ = ( \outPC[7]$latch~combout\ & ( (!\outPC[15]~1_combout\) # (\outPC[7]~8_combout\) ) ) # ( !\outPC[7]$latch~combout\ & ( (\outPC[15]~1_combout\ & \outPC[7]~8_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_outPC[15]~1_combout\,
	datad => \ALT_INV_outPC[7]~8_combout\,
	dataf => \ALT_INV_outPC[7]$latch~combout\,
	combout => \outPC[7]$latch~combout\);

-- Location: IOIBUF_X54_Y0_N52
\inPC[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inPC(8),
	o => \inPC[8]~input_o\);

-- Location: LABCELL_X18_Y2_N21
\Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~29_sumout\ = SUM(( \inPC[8]~input_o\ ) + ( GND ) + ( \Add0~26\ ))
-- \Add0~30\ = CARRY(( \inPC[8]~input_o\ ) + ( GND ) + ( \Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_inPC[8]~input_o\,
	cin => \Add0~26\,
	sumout => \Add0~29_sumout\,
	cout => \Add0~30\);

-- Location: LABCELL_X17_Y2_N30
\outPC[8]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \outPC[8]~9_combout\ = ( \Add0~29_sumout\ & ( (\clock~input_o\ & \IF_ID_ENABLE~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110000001100000000000000000000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_clock~input_o\,
	datac => \ALT_INV_IF_ID_ENABLE~input_o\,
	datae => \ALT_INV_Add0~29_sumout\,
	combout => \outPC[8]~9_combout\);

-- Location: LABCELL_X16_Y3_N42
\outPC[8]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \outPC[8]$latch~combout\ = ( \outPC[8]$latch~combout\ & ( (!\outPC[15]~1_combout\) # (\outPC[8]~9_combout\) ) ) # ( !\outPC[8]$latch~combout\ & ( (\outPC[8]~9_combout\ & \outPC[15]~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_outPC[8]~9_combout\,
	datad => \ALT_INV_outPC[15]~1_combout\,
	dataf => \ALT_INV_outPC[8]$latch~combout\,
	combout => \outPC[8]$latch~combout\);

-- Location: IOIBUF_X54_Y0_N1
\inPC[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inPC(9),
	o => \inPC[9]~input_o\);

-- Location: LABCELL_X18_Y2_N24
\Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~33_sumout\ = SUM(( \inPC[9]~input_o\ ) + ( GND ) + ( \Add0~30\ ))
-- \Add0~34\ = CARRY(( \inPC[9]~input_o\ ) + ( GND ) + ( \Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_inPC[9]~input_o\,
	cin => \Add0~30\,
	sumout => \Add0~33_sumout\,
	cout => \Add0~34\);

-- Location: MLABCELL_X15_Y3_N9
\outPC[9]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \outPC[9]~10_combout\ = (\clock~input_o\ & (\IF_ID_ENABLE~input_o\ & \Add0~33_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_clock~input_o\,
	datab => \ALT_INV_IF_ID_ENABLE~input_o\,
	datac => \ALT_INV_Add0~33_sumout\,
	combout => \outPC[9]~10_combout\);

-- Location: LABCELL_X16_Y3_N6
\outPC[9]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \outPC[9]$latch~combout\ = ( \outPC[9]$latch~combout\ & ( (!\outPC[15]~1_combout\) # (\outPC[9]~10_combout\) ) ) # ( !\outPC[9]$latch~combout\ & ( (\outPC[9]~10_combout\ & \outPC[15]~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_outPC[9]~10_combout\,
	datad => \ALT_INV_outPC[15]~1_combout\,
	dataf => \ALT_INV_outPC[9]$latch~combout\,
	combout => \outPC[9]$latch~combout\);

-- Location: IOIBUF_X2_Y0_N92
\inPC[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inPC(10),
	o => \inPC[10]~input_o\);

-- Location: LABCELL_X18_Y2_N27
\Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~37_sumout\ = SUM(( \inPC[10]~input_o\ ) + ( GND ) + ( \Add0~34\ ))
-- \Add0~38\ = CARRY(( \inPC[10]~input_o\ ) + ( GND ) + ( \Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inPC[10]~input_o\,
	cin => \Add0~34\,
	sumout => \Add0~37_sumout\,
	cout => \Add0~38\);

-- Location: MLABCELL_X15_Y3_N3
\outPC[10]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \outPC[10]~11_combout\ = (\clock~input_o\ & (\IF_ID_ENABLE~input_o\ & \Add0~37_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000100000000000100010000000000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_clock~input_o\,
	datab => \ALT_INV_IF_ID_ENABLE~input_o\,
	datad => \ALT_INV_Add0~37_sumout\,
	combout => \outPC[10]~11_combout\);

-- Location: LABCELL_X16_Y3_N9
\outPC[10]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \outPC[10]$latch~combout\ = ( \outPC[10]$latch~combout\ & ( (!\outPC[15]~1_combout\) # (\outPC[10]~11_combout\) ) ) # ( !\outPC[10]$latch~combout\ & ( (\outPC[10]~11_combout\ & \outPC[15]~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_outPC[10]~11_combout\,
	datad => \ALT_INV_outPC[15]~1_combout\,
	dataf => \ALT_INV_outPC[10]$latch~combout\,
	combout => \outPC[10]$latch~combout\);

-- Location: IOIBUF_X30_Y0_N18
\inPC[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inPC(11),
	o => \inPC[11]~input_o\);

-- Location: LABCELL_X18_Y2_N30
\Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~41_sumout\ = SUM(( \inPC[11]~input_o\ ) + ( GND ) + ( \Add0~38\ ))
-- \Add0~42\ = CARRY(( \inPC[11]~input_o\ ) + ( GND ) + ( \Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_inPC[11]~input_o\,
	cin => \Add0~38\,
	sumout => \Add0~41_sumout\,
	cout => \Add0~42\);

-- Location: LABCELL_X17_Y2_N6
\outPC[11]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \outPC[11]~12_combout\ = (\IF_ID_ENABLE~input_o\ & (\clock~input_o\ & \Add0~41_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IF_ID_ENABLE~input_o\,
	datab => \ALT_INV_clock~input_o\,
	datac => \ALT_INV_Add0~41_sumout\,
	combout => \outPC[11]~12_combout\);

-- Location: LABCELL_X17_Y2_N9
\outPC[11]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \outPC[11]$latch~combout\ = ( \outPC[11]$latch~combout\ & ( (!\outPC[15]~1_combout\) # (\outPC[11]~12_combout\) ) ) # ( !\outPC[11]$latch~combout\ & ( (\outPC[11]~12_combout\ & \outPC[15]~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_outPC[11]~12_combout\,
	datad => \ALT_INV_outPC[15]~1_combout\,
	dataf => \ALT_INV_outPC[11]$latch~combout\,
	combout => \outPC[11]$latch~combout\);

-- Location: IOIBUF_X8_Y0_N35
\inPC[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inPC(12),
	o => \inPC[12]~input_o\);

-- Location: LABCELL_X18_Y2_N33
\Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~45_sumout\ = SUM(( \inPC[12]~input_o\ ) + ( GND ) + ( \Add0~42\ ))
-- \Add0~46\ = CARRY(( \inPC[12]~input_o\ ) + ( GND ) + ( \Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inPC[12]~input_o\,
	cin => \Add0~42\,
	sumout => \Add0~45_sumout\,
	cout => \Add0~46\);

-- Location: LABCELL_X17_Y3_N42
\outPC[12]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \outPC[12]~13_combout\ = (\clock~input_o\ & (\IF_ID_ENABLE~input_o\ & \Add0~45_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000100000000000100010000000000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_clock~input_o\,
	datab => \ALT_INV_IF_ID_ENABLE~input_o\,
	datad => \ALT_INV_Add0~45_sumout\,
	combout => \outPC[12]~13_combout\);

-- Location: LABCELL_X17_Y3_N27
\outPC[12]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \outPC[12]$latch~combout\ = ( \outPC[15]~1_combout\ & ( \outPC[12]~13_combout\ ) ) # ( !\outPC[15]~1_combout\ & ( \outPC[12]$latch~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_outPC[12]~13_combout\,
	datad => \ALT_INV_outPC[12]$latch~combout\,
	dataf => \ALT_INV_outPC[15]~1_combout\,
	combout => \outPC[12]$latch~combout\);

-- Location: IOIBUF_X40_Y0_N18
\inPC[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inPC(13),
	o => \inPC[13]~input_o\);

-- Location: LABCELL_X18_Y2_N36
\Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~49_sumout\ = SUM(( \inPC[13]~input_o\ ) + ( GND ) + ( \Add0~46\ ))
-- \Add0~50\ = CARRY(( \inPC[13]~input_o\ ) + ( GND ) + ( \Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_inPC[13]~input_o\,
	cin => \Add0~46\,
	sumout => \Add0~49_sumout\,
	cout => \Add0~50\);

-- Location: LABCELL_X17_Y3_N0
\outPC[13]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \outPC[13]~14_combout\ = (\clock~input_o\ & (\IF_ID_ENABLE~input_o\ & \Add0~49_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_clock~input_o\,
	datab => \ALT_INV_IF_ID_ENABLE~input_o\,
	datac => \ALT_INV_Add0~49_sumout\,
	combout => \outPC[13]~14_combout\);

-- Location: LABCELL_X16_Y3_N3
\outPC[13]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \outPC[13]$latch~combout\ = ( \outPC[15]~1_combout\ & ( \outPC[13]~14_combout\ ) ) # ( !\outPC[15]~1_combout\ & ( \outPC[13]$latch~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_outPC[13]~14_combout\,
	datad => \ALT_INV_outPC[13]$latch~combout\,
	dataf => \ALT_INV_outPC[15]~1_combout\,
	combout => \outPC[13]$latch~combout\);

-- Location: IOIBUF_X40_Y0_N1
\inPC[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inPC(14),
	o => \inPC[14]~input_o\);

-- Location: LABCELL_X18_Y2_N39
\Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~53_sumout\ = SUM(( \inPC[14]~input_o\ ) + ( GND ) + ( \Add0~50\ ))
-- \Add0~54\ = CARRY(( \inPC[14]~input_o\ ) + ( GND ) + ( \Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inPC[14]~input_o\,
	cin => \Add0~50\,
	sumout => \Add0~53_sumout\,
	cout => \Add0~54\);

-- Location: LABCELL_X17_Y2_N12
\outPC[14]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \outPC[14]~15_combout\ = ( \clock~input_o\ & ( (\IF_ID_ENABLE~input_o\ & \Add0~53_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010000010100000000000000000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IF_ID_ENABLE~input_o\,
	datac => \ALT_INV_Add0~53_sumout\,
	datae => \ALT_INV_clock~input_o\,
	combout => \outPC[14]~15_combout\);

-- Location: LABCELL_X16_Y2_N33
\outPC[14]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \outPC[14]$latch~combout\ = ( \outPC[15]~1_combout\ & ( \outPC[14]$latch~combout\ & ( \outPC[14]~15_combout\ ) ) ) # ( !\outPC[15]~1_combout\ & ( \outPC[14]$latch~combout\ ) ) # ( \outPC[15]~1_combout\ & ( !\outPC[14]$latch~combout\ & ( 
-- \outPC[14]~15_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111111111111111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_outPC[14]~15_combout\,
	datae => \ALT_INV_outPC[15]~1_combout\,
	dataf => \ALT_INV_outPC[14]$latch~combout\,
	combout => \outPC[14]$latch~combout\);

-- Location: IOIBUF_X28_Y0_N1
\inPC[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inPC(15),
	o => \inPC[15]~input_o\);

-- Location: LABCELL_X18_Y2_N42
\Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~57_sumout\ = SUM(( \inPC[15]~input_o\ ) + ( GND ) + ( \Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_inPC[15]~input_o\,
	cin => \Add0~54\,
	sumout => \Add0~57_sumout\);

-- Location: MLABCELL_X15_Y3_N33
\outPC[15]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \outPC[15]~16_combout\ = (\clock~input_o\ & (\IF_ID_ENABLE~input_o\ & \Add0~57_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_clock~input_o\,
	datab => \ALT_INV_IF_ID_ENABLE~input_o\,
	datac => \ALT_INV_Add0~57_sumout\,
	combout => \outPC[15]~16_combout\);

-- Location: LABCELL_X16_Y3_N21
\outPC[15]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \outPC[15]$latch~combout\ = ( \outPC[15]$latch~combout\ & ( (!\outPC[15]~1_combout\) # (\outPC[15]~16_combout\) ) ) # ( !\outPC[15]$latch~combout\ & ( (\outPC[15]~16_combout\ & \outPC[15]~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_outPC[15]~16_combout\,
	datad => \ALT_INV_outPC[15]~1_combout\,
	dataf => \ALT_INV_outPC[15]$latch~combout\,
	combout => \outPC[15]$latch~combout\);

-- Location: IOIBUF_X52_Y0_N18
\inInstruction[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inInstruction(0),
	o => \inInstruction[0]~input_o\);

-- Location: LABCELL_X17_Y3_N51
\outInstruction[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \outInstruction[0]~0_combout\ = (\clock~input_o\ & (\IF_ID_ENABLE~input_o\ & \inInstruction[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_clock~input_o\,
	datac => \ALT_INV_IF_ID_ENABLE~input_o\,
	datad => \ALT_INV_inInstruction[0]~input_o\,
	combout => \outInstruction[0]~0_combout\);

-- Location: LABCELL_X17_Y3_N48
\outInstruction[0]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \outInstruction[0]$latch~combout\ = ( \outInstruction[0]$latch~combout\ & ( (!\outPC[15]~1_combout\) # (\outInstruction[0]~0_combout\) ) ) # ( !\outInstruction[0]$latch~combout\ & ( (\outPC[15]~1_combout\ & \outInstruction[0]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111001100111111111100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_outPC[15]~1_combout\,
	datad => \ALT_INV_outInstruction[0]~0_combout\,
	dataf => \ALT_INV_outInstruction[0]$latch~combout\,
	combout => \outInstruction[0]$latch~combout\);

-- Location: IOIBUF_X34_Y0_N92
\inInstruction[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inInstruction(1),
	o => \inInstruction[1]~input_o\);

-- Location: LABCELL_X17_Y3_N54
\outInstruction[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \outInstruction[1]~1_combout\ = (\IF_ID_ENABLE~input_o\ & (\clock~input_o\ & \inInstruction[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_IF_ID_ENABLE~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \ALT_INV_inInstruction[1]~input_o\,
	combout => \outInstruction[1]~1_combout\);

-- Location: LABCELL_X17_Y3_N57
\outInstruction[1]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \outInstruction[1]$latch~combout\ = ( \outPC[15]~1_combout\ & ( \outInstruction[1]~1_combout\ ) ) # ( !\outPC[15]~1_combout\ & ( \outInstruction[1]$latch~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_outInstruction[1]~1_combout\,
	datad => \ALT_INV_outInstruction[1]$latch~combout\,
	dataf => \ALT_INV_outPC[15]~1_combout\,
	combout => \outInstruction[1]$latch~combout\);

-- Location: IOIBUF_X26_Y0_N58
\inInstruction[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inInstruction(2),
	o => \inInstruction[2]~input_o\);

-- Location: LABCELL_X17_Y3_N30
\outInstruction[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \outInstruction[2]~2_combout\ = ( \IF_ID_ENABLE~input_o\ & ( (\inInstruction[2]~input_o\ & \clock~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_inInstruction[2]~input_o\,
	datac => \ALT_INV_clock~input_o\,
	dataf => \ALT_INV_IF_ID_ENABLE~input_o\,
	combout => \outInstruction[2]~2_combout\);

-- Location: LABCELL_X17_Y3_N33
\outInstruction[2]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \outInstruction[2]$latch~combout\ = ( \outInstruction[2]$latch~combout\ & ( (!\outPC[15]~1_combout\) # (\outInstruction[2]~2_combout\) ) ) # ( !\outInstruction[2]$latch~combout\ & ( (\outInstruction[2]~2_combout\ & \outPC[15]~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010111110101111101011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_outInstruction[2]~2_combout\,
	datac => \ALT_INV_outPC[15]~1_combout\,
	dataf => \ALT_INV_outInstruction[2]$latch~combout\,
	combout => \outInstruction[2]$latch~combout\);

-- Location: IOIBUF_X38_Y0_N18
\inInstruction[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inInstruction(3),
	o => \inInstruction[3]~input_o\);

-- Location: LABCELL_X17_Y3_N6
\outInstruction[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \outInstruction[3]~3_combout\ = (\IF_ID_ENABLE~input_o\ & (\clock~input_o\ & \inInstruction[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_IF_ID_ENABLE~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \ALT_INV_inInstruction[3]~input_o\,
	combout => \outInstruction[3]~3_combout\);

-- Location: LABCELL_X17_Y3_N9
\outInstruction[3]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \outInstruction[3]$latch~combout\ = ( \outInstruction[3]$latch~combout\ & ( (!\outPC[15]~1_combout\) # (\outInstruction[3]~3_combout\) ) ) # ( !\outInstruction[3]$latch~combout\ & ( (\outInstruction[3]~3_combout\ & \outPC[15]~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010111110101111101011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_outInstruction[3]~3_combout\,
	datac => \ALT_INV_outPC[15]~1_combout\,
	dataf => \ALT_INV_outInstruction[3]$latch~combout\,
	combout => \outInstruction[3]$latch~combout\);

-- Location: IOIBUF_X34_Y0_N58
\inInstruction[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inInstruction(4),
	o => \inInstruction[4]~input_o\);

-- Location: MLABCELL_X15_Y3_N24
\outInstruction[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \outInstruction[4]~4_combout\ = (\clock~input_o\ & (\IF_ID_ENABLE~input_o\ & \inInstruction[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_clock~input_o\,
	datab => \ALT_INV_IF_ID_ENABLE~input_o\,
	datac => \ALT_INV_inInstruction[4]~input_o\,
	combout => \outInstruction[4]~4_combout\);

-- Location: LABCELL_X16_Y3_N57
\outInstruction[4]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \outInstruction[4]$latch~combout\ = ( \outInstruction[4]$latch~combout\ & ( (!\outPC[15]~1_combout\) # (\outInstruction[4]~4_combout\) ) ) # ( !\outInstruction[4]$latch~combout\ & ( (\outInstruction[4]~4_combout\ & \outPC[15]~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_outInstruction[4]~4_combout\,
	datad => \ALT_INV_outPC[15]~1_combout\,
	dataf => \ALT_INV_outInstruction[4]$latch~combout\,
	combout => \outInstruction[4]$latch~combout\);

-- Location: IOIBUF_X58_Y0_N58
\inInstruction[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inInstruction(5),
	o => \inInstruction[5]~input_o\);

-- Location: LABCELL_X17_Y3_N12
\outInstruction[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \outInstruction[5]~5_combout\ = ( \inInstruction[5]~input_o\ & ( (\IF_ID_ENABLE~input_o\ & \clock~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_IF_ID_ENABLE~input_o\,
	datac => \ALT_INV_clock~input_o\,
	dataf => \ALT_INV_inInstruction[5]~input_o\,
	combout => \outInstruction[5]~5_combout\);

-- Location: LABCELL_X17_Y3_N15
\outInstruction[5]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \outInstruction[5]$latch~combout\ = ( \outInstruction[5]$latch~combout\ & ( (!\outPC[15]~1_combout\) # (\outInstruction[5]~5_combout\) ) ) # ( !\outInstruction[5]$latch~combout\ & ( (\outInstruction[5]~5_combout\ & \outPC[15]~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010111110101111101011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_outInstruction[5]~5_combout\,
	datac => \ALT_INV_outPC[15]~1_combout\,
	dataf => \ALT_INV_outInstruction[5]$latch~combout\,
	combout => \outInstruction[5]$latch~combout\);

-- Location: IOIBUF_X36_Y0_N52
\inInstruction[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inInstruction(6),
	o => \inInstruction[6]~input_o\);

-- Location: LABCELL_X17_Y3_N36
\outInstruction[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \outInstruction[6]~6_combout\ = ( \inInstruction[6]~input_o\ & ( (\clock~input_o\ & \IF_ID_ENABLE~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_clock~input_o\,
	datab => \ALT_INV_IF_ID_ENABLE~input_o\,
	dataf => \ALT_INV_inInstruction[6]~input_o\,
	combout => \outInstruction[6]~6_combout\);

-- Location: LABCELL_X16_Y3_N45
\outInstruction[6]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \outInstruction[6]$latch~combout\ = ( \outInstruction[6]$latch~combout\ & ( (!\outPC[15]~1_combout\) # (\outInstruction[6]~6_combout\) ) ) # ( !\outInstruction[6]$latch~combout\ & ( (\outInstruction[6]~6_combout\ & \outPC[15]~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_outInstruction[6]~6_combout\,
	datad => \ALT_INV_outPC[15]~1_combout\,
	dataf => \ALT_INV_outInstruction[6]$latch~combout\,
	combout => \outInstruction[6]$latch~combout\);

-- Location: IOIBUF_X26_Y81_N58
\inInstruction[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inInstruction(7),
	o => \inInstruction[7]~input_o\);

-- Location: LABCELL_X17_Y3_N18
\outInstruction[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \outInstruction[7]~7_combout\ = ( \clock~input_o\ & ( (\IF_ID_ENABLE~input_o\ & \inInstruction[7]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_IF_ID_ENABLE~input_o\,
	datac => \ALT_INV_inInstruction[7]~input_o\,
	dataf => \ALT_INV_clock~input_o\,
	combout => \outInstruction[7]~7_combout\);

-- Location: LABCELL_X17_Y3_N21
\outInstruction[7]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \outInstruction[7]$latch~combout\ = (!\outPC[15]~1_combout\ & ((\outInstruction[7]$latch~combout\))) # (\outPC[15]~1_combout\ & (\outInstruction[7]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000001011111010100000101111101010000010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_outInstruction[7]~7_combout\,
	datac => \ALT_INV_outPC[15]~1_combout\,
	datad => \ALT_INV_outInstruction[7]$latch~combout\,
	combout => \outInstruction[7]$latch~combout\);

-- Location: IOIBUF_X4_Y0_N1
\inInstruction[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inInstruction(8),
	o => \inInstruction[8]~input_o\);

-- Location: MLABCELL_X15_Y3_N36
\outInstruction[8]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \outInstruction[8]~8_combout\ = ( \IF_ID_ENABLE~input_o\ & ( (\inInstruction[8]~input_o\ & \clock~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_inInstruction[8]~input_o\,
	datac => \ALT_INV_clock~input_o\,
	dataf => \ALT_INV_IF_ID_ENABLE~input_o\,
	combout => \outInstruction[8]~8_combout\);

-- Location: LABCELL_X16_Y3_N15
\outInstruction[8]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \outInstruction[8]$latch~combout\ = ( \outPC[15]~1_combout\ & ( \outInstruction[8]~8_combout\ ) ) # ( !\outPC[15]~1_combout\ & ( \outInstruction[8]$latch~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_outInstruction[8]~8_combout\,
	datac => \ALT_INV_outInstruction[8]$latch~combout\,
	dataf => \ALT_INV_outPC[15]~1_combout\,
	combout => \outInstruction[8]$latch~combout\);

-- Location: IOIBUF_X30_Y0_N1
\inInstruction[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inInstruction(9),
	o => \inInstruction[9]~input_o\);

-- Location: MLABCELL_X15_Y3_N18
\outInstruction[9]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \outInstruction[9]~9_combout\ = ( \inInstruction[9]~input_o\ & ( (\clock~input_o\ & \IF_ID_ENABLE~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_clock~input_o\,
	datab => \ALT_INV_IF_ID_ENABLE~input_o\,
	dataf => \ALT_INV_inInstruction[9]~input_o\,
	combout => \outInstruction[9]~9_combout\);

-- Location: MLABCELL_X15_Y3_N57
\outInstruction[9]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \outInstruction[9]$latch~combout\ = ( \outPC[15]~1_combout\ & ( \outInstruction[9]~9_combout\ ) ) # ( !\outPC[15]~1_combout\ & ( \outInstruction[9]$latch~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_outInstruction[9]~9_combout\,
	datad => \ALT_INV_outInstruction[9]$latch~combout\,
	dataf => \ALT_INV_outPC[15]~1_combout\,
	combout => \outInstruction[9]$latch~combout\);

-- Location: IOIBUF_X66_Y0_N41
\inInstruction[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inInstruction(10),
	o => \inInstruction[10]~input_o\);

-- Location: LABCELL_X17_Y3_N24
\outInstruction[10]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \outInstruction[10]~10_combout\ = ( \inInstruction[10]~input_o\ & ( (\IF_ID_ENABLE~input_o\ & \clock~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_IF_ID_ENABLE~input_o\,
	datac => \ALT_INV_clock~input_o\,
	dataf => \ALT_INV_inInstruction[10]~input_o\,
	combout => \outInstruction[10]~10_combout\);

-- Location: LABCELL_X16_Y3_N33
\outInstruction[10]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \outInstruction[10]$latch~combout\ = ( \outInstruction[10]$latch~combout\ & ( (!\outPC[15]~1_combout\) # (\outInstruction[10]~10_combout\) ) ) # ( !\outInstruction[10]$latch~combout\ & ( (\outInstruction[10]~10_combout\ & \outPC[15]~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_outInstruction[10]~10_combout\,
	datad => \ALT_INV_outPC[15]~1_combout\,
	dataf => \ALT_INV_outInstruction[10]$latch~combout\,
	combout => \outInstruction[10]$latch~combout\);

-- Location: IOIBUF_X32_Y0_N1
\inInstruction[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inInstruction(11),
	o => \inInstruction[11]~input_o\);

-- Location: MLABCELL_X15_Y3_N42
\outInstruction[11]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \outInstruction[11]~11_combout\ = ( \inInstruction[11]~input_o\ & ( (\clock~input_o\ & \IF_ID_ENABLE~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_clock~input_o\,
	datab => \ALT_INV_IF_ID_ENABLE~input_o\,
	dataf => \ALT_INV_inInstruction[11]~input_o\,
	combout => \outInstruction[11]~11_combout\);

-- Location: LABCELL_X16_Y3_N27
\outInstruction[11]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \outInstruction[11]$latch~combout\ = ( \outInstruction[11]$latch~combout\ & ( (!\outPC[15]~1_combout\) # (\outInstruction[11]~11_combout\) ) ) # ( !\outInstruction[11]$latch~combout\ & ( (\outInstruction[11]~11_combout\ & \outPC[15]~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_outInstruction[11]~11_combout\,
	datad => \ALT_INV_outPC[15]~1_combout\,
	dataf => \ALT_INV_outInstruction[11]$latch~combout\,
	combout => \outInstruction[11]$latch~combout\);

-- Location: IOIBUF_X4_Y0_N18
\inInstruction[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inInstruction(12),
	o => \inInstruction[12]~input_o\);

-- Location: MLABCELL_X15_Y3_N12
\outInstruction[12]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \outInstruction[12]~12_combout\ = ( \IF_ID_ENABLE~input_o\ & ( (\inInstruction[12]~input_o\ & \clock~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_inInstruction[12]~input_o\,
	datac => \ALT_INV_clock~input_o\,
	dataf => \ALT_INV_IF_ID_ENABLE~input_o\,
	combout => \outInstruction[12]~12_combout\);

-- Location: MLABCELL_X15_Y3_N15
\outInstruction[12]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \outInstruction[12]$latch~combout\ = ( \outInstruction[12]$latch~combout\ & ( (!\outPC[15]~1_combout\) # (\outInstruction[12]~12_combout\) ) ) # ( !\outInstruction[12]$latch~combout\ & ( (\outInstruction[12]~12_combout\ & \outPC[15]~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_outInstruction[12]~12_combout\,
	datad => \ALT_INV_outPC[15]~1_combout\,
	dataf => \ALT_INV_outInstruction[12]$latch~combout\,
	combout => \outInstruction[12]$latch~combout\);

-- Location: IOIBUF_X32_Y0_N52
\inInstruction[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inInstruction(13),
	o => \inInstruction[13]~input_o\);

-- Location: MLABCELL_X15_Y3_N0
\outInstruction[13]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \outInstruction[13]~13_combout\ = (\clock~input_o\ & (\IF_ID_ENABLE~input_o\ & \inInstruction[13]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_clock~input_o\,
	datab => \ALT_INV_IF_ID_ENABLE~input_o\,
	datac => \ALT_INV_inInstruction[13]~input_o\,
	combout => \outInstruction[13]~13_combout\);

-- Location: MLABCELL_X15_Y3_N39
\outInstruction[13]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \outInstruction[13]$latch~combout\ = ( \outPC[15]~1_combout\ & ( \outInstruction[13]~13_combout\ ) ) # ( !\outPC[15]~1_combout\ & ( \outInstruction[13]$latch~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_outInstruction[13]~13_combout\,
	datac => \ALT_INV_outInstruction[13]$latch~combout\,
	dataf => \ALT_INV_outPC[15]~1_combout\,
	combout => \outInstruction[13]$latch~combout\);

-- Location: IOIBUF_X58_Y0_N92
\inInstruction[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inInstruction(14),
	o => \inInstruction[14]~input_o\);

-- Location: MLABCELL_X15_Y3_N48
\outInstruction[14]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \outInstruction[14]~14_combout\ = (\IF_ID_ENABLE~input_o\ & (\clock~input_o\ & \inInstruction[14]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_IF_ID_ENABLE~input_o\,
	datac => \ALT_INV_clock~input_o\,
	datad => \ALT_INV_inInstruction[14]~input_o\,
	combout => \outInstruction[14]~14_combout\);

-- Location: MLABCELL_X15_Y3_N51
\outInstruction[14]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \outInstruction[14]$latch~combout\ = ( \outInstruction[14]$latch~combout\ & ( (!\outPC[15]~1_combout\) # (\outInstruction[14]~14_combout\) ) ) # ( !\outInstruction[14]$latch~combout\ & ( (\outInstruction[14]~14_combout\ & \outPC[15]~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010111111111010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_outInstruction[14]~14_combout\,
	datad => \ALT_INV_outPC[15]~1_combout\,
	dataf => \ALT_INV_outInstruction[14]$latch~combout\,
	combout => \outInstruction[14]$latch~combout\);

-- Location: IOIBUF_X38_Y0_N35
\inInstruction[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inInstruction(15),
	o => \inInstruction[15]~input_o\);

-- Location: MLABCELL_X15_Y3_N54
\outInstruction[15]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \outInstruction[15]~15_combout\ = ( \inInstruction[15]~input_o\ & ( (\IF_ID_ENABLE~input_o\ & \clock~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_IF_ID_ENABLE~input_o\,
	datac => \ALT_INV_clock~input_o\,
	dataf => \ALT_INV_inInstruction[15]~input_o\,
	combout => \outInstruction[15]~15_combout\);

-- Location: LABCELL_X16_Y3_N39
\outInstruction[15]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \outInstruction[15]$latch~combout\ = ( \outPC[15]~1_combout\ & ( \outInstruction[15]~15_combout\ ) ) # ( !\outPC[15]~1_combout\ & ( \outInstruction[15]$latch~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_outInstruction[15]~15_combout\,
	datac => \ALT_INV_outInstruction[15]$latch~combout\,
	dataf => \ALT_INV_outPC[15]~1_combout\,
	combout => \outInstruction[15]$latch~combout\);

-- Location: LABCELL_X73_Y7_N0
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


