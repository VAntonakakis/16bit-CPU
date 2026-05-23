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

-- DATE "05/20/2026 21:05:01"

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

ENTITY 	Forwarding_Selector IS
    PORT (
	operation : IN std_logic_vector(1 DOWNTO 0);
	regAddress : IN std_logic_vector(15 DOWNTO 0);
	regAD_MEM : IN std_logic_vector(15 DOWNTO 0);
	regAD_WB : IN std_logic_vector(15 DOWNTO 0);
	Output : OUT std_logic_vector(15 DOWNTO 0)
	);
END Forwarding_Selector;

-- Design Ports Information
-- Output[0]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[1]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[2]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[3]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[4]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[5]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[6]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[7]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[8]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[9]	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[10]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[11]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[12]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[13]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[14]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[15]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regAD_MEM[0]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operation[0]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operation[1]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regAddress[0]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regAD_WB[0]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regAD_MEM[1]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regAddress[1]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regAD_WB[1]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regAD_MEM[2]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regAddress[2]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regAD_WB[2]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regAD_MEM[3]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regAddress[3]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regAD_WB[3]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regAD_MEM[4]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regAddress[4]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regAD_WB[4]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regAD_MEM[5]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regAddress[5]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regAD_WB[5]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regAD_MEM[6]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regAddress[6]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regAD_WB[6]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regAD_MEM[7]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regAddress[7]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regAD_WB[7]	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regAD_MEM[8]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regAddress[8]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regAD_WB[8]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regAD_MEM[9]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regAddress[9]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regAD_WB[9]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regAD_MEM[10]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regAddress[10]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regAD_WB[10]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regAD_MEM[11]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regAddress[11]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regAD_WB[11]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regAD_MEM[12]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regAddress[12]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regAD_WB[12]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regAD_MEM[13]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regAddress[13]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regAD_WB[13]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regAD_MEM[14]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regAddress[14]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regAD_WB[14]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regAD_MEM[15]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regAddress[15]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regAD_WB[15]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Forwarding_Selector IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_operation : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_regAddress : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_regAD_MEM : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_regAD_WB : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_Output : std_logic_vector(15 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \regAD_MEM[0]~input_o\ : std_logic;
SIGNAL \regAD_WB[0]~input_o\ : std_logic;
SIGNAL \operation[0]~input_o\ : std_logic;
SIGNAL \regAddress[0]~input_o\ : std_logic;
SIGNAL \operation[1]~input_o\ : std_logic;
SIGNAL \Output~0_combout\ : std_logic;
SIGNAL \regAddress[1]~input_o\ : std_logic;
SIGNAL \regAD_MEM[1]~input_o\ : std_logic;
SIGNAL \regAD_WB[1]~input_o\ : std_logic;
SIGNAL \Output~1_combout\ : std_logic;
SIGNAL \regAddress[2]~input_o\ : std_logic;
SIGNAL \regAD_WB[2]~input_o\ : std_logic;
SIGNAL \regAD_MEM[2]~input_o\ : std_logic;
SIGNAL \Output~2_combout\ : std_logic;
SIGNAL \regAD_WB[3]~input_o\ : std_logic;
SIGNAL \regAddress[3]~input_o\ : std_logic;
SIGNAL \regAD_MEM[3]~input_o\ : std_logic;
SIGNAL \Output~3_combout\ : std_logic;
SIGNAL \regAD_WB[4]~input_o\ : std_logic;
SIGNAL \regAD_MEM[4]~input_o\ : std_logic;
SIGNAL \regAddress[4]~input_o\ : std_logic;
SIGNAL \Output~4_combout\ : std_logic;
SIGNAL \regAD_WB[5]~input_o\ : std_logic;
SIGNAL \regAddress[5]~input_o\ : std_logic;
SIGNAL \regAD_MEM[5]~input_o\ : std_logic;
SIGNAL \Output~5_combout\ : std_logic;
SIGNAL \regAD_WB[6]~input_o\ : std_logic;
SIGNAL \regAD_MEM[6]~input_o\ : std_logic;
SIGNAL \regAddress[6]~input_o\ : std_logic;
SIGNAL \Output~6_combout\ : std_logic;
SIGNAL \regAddress[7]~input_o\ : std_logic;
SIGNAL \regAD_WB[7]~input_o\ : std_logic;
SIGNAL \regAD_MEM[7]~input_o\ : std_logic;
SIGNAL \Output~7_combout\ : std_logic;
SIGNAL \regAddress[8]~input_o\ : std_logic;
SIGNAL \regAD_WB[8]~input_o\ : std_logic;
SIGNAL \regAD_MEM[8]~input_o\ : std_logic;
SIGNAL \Output~8_combout\ : std_logic;
SIGNAL \regAD_WB[9]~input_o\ : std_logic;
SIGNAL \regAD_MEM[9]~input_o\ : std_logic;
SIGNAL \regAddress[9]~input_o\ : std_logic;
SIGNAL \Output~9_combout\ : std_logic;
SIGNAL \regAD_WB[10]~input_o\ : std_logic;
SIGNAL \regAD_MEM[10]~input_o\ : std_logic;
SIGNAL \regAddress[10]~input_o\ : std_logic;
SIGNAL \Output~10_combout\ : std_logic;
SIGNAL \regAD_WB[11]~input_o\ : std_logic;
SIGNAL \regAD_MEM[11]~input_o\ : std_logic;
SIGNAL \regAddress[11]~input_o\ : std_logic;
SIGNAL \Output~11_combout\ : std_logic;
SIGNAL \regAD_MEM[12]~input_o\ : std_logic;
SIGNAL \regAD_WB[12]~input_o\ : std_logic;
SIGNAL \regAddress[12]~input_o\ : std_logic;
SIGNAL \Output~12_combout\ : std_logic;
SIGNAL \regAD_MEM[13]~input_o\ : std_logic;
SIGNAL \regAD_WB[13]~input_o\ : std_logic;
SIGNAL \regAddress[13]~input_o\ : std_logic;
SIGNAL \Output~13_combout\ : std_logic;
SIGNAL \regAD_MEM[14]~input_o\ : std_logic;
SIGNAL \regAddress[14]~input_o\ : std_logic;
SIGNAL \regAD_WB[14]~input_o\ : std_logic;
SIGNAL \Output~14_combout\ : std_logic;
SIGNAL \regAD_MEM[15]~input_o\ : std_logic;
SIGNAL \regAddress[15]~input_o\ : std_logic;
SIGNAL \regAD_WB[15]~input_o\ : std_logic;
SIGNAL \Output~15_combout\ : std_logic;
SIGNAL \ALT_INV_regAddress[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_regAD_MEM[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_regAD_WB[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_regAddress[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_regAD_MEM[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_regAD_WB[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_regAddress[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_regAD_MEM[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_regAD_WB[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_regAddress[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_regAD_MEM[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_regAD_WB[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_regAddress[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_regAD_MEM[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_regAD_WB[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_regAddress[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_operation[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_operation[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_regAD_MEM[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_regAD_WB[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_regAddress[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_regAD_MEM[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_regAD_WB[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_regAddress[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_regAD_MEM[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_regAD_WB[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_regAddress[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_regAD_MEM[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_regAD_WB[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_regAddress[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_regAD_MEM[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_regAD_WB[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_regAddress[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_regAD_MEM[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_regAD_WB[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_regAddress[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_regAD_MEM[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_regAD_WB[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_regAddress[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_regAD_MEM[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_regAD_WB[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_regAddress[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_regAD_MEM[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_regAD_WB[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_regAddress[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_regAD_MEM[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_regAD_WB[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_regAddress[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_regAD_MEM[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_regAD_WB[5]~input_o\ : std_logic;

BEGIN

ww_operation <= operation;
ww_regAddress <= regAddress;
ww_regAD_MEM <= regAD_MEM;
ww_regAD_WB <= regAD_WB;
Output <= ww_Output;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_regAddress[5]~input_o\ <= NOT \regAddress[5]~input_o\;
\ALT_INV_regAD_MEM[5]~input_o\ <= NOT \regAD_MEM[5]~input_o\;
\ALT_INV_regAD_WB[4]~input_o\ <= NOT \regAD_WB[4]~input_o\;
\ALT_INV_regAddress[4]~input_o\ <= NOT \regAddress[4]~input_o\;
\ALT_INV_regAD_MEM[4]~input_o\ <= NOT \regAD_MEM[4]~input_o\;
\ALT_INV_regAD_WB[3]~input_o\ <= NOT \regAD_WB[3]~input_o\;
\ALT_INV_regAddress[3]~input_o\ <= NOT \regAddress[3]~input_o\;
\ALT_INV_regAD_MEM[3]~input_o\ <= NOT \regAD_MEM[3]~input_o\;
\ALT_INV_regAD_WB[2]~input_o\ <= NOT \regAD_WB[2]~input_o\;
\ALT_INV_regAddress[2]~input_o\ <= NOT \regAddress[2]~input_o\;
\ALT_INV_regAD_MEM[2]~input_o\ <= NOT \regAD_MEM[2]~input_o\;
\ALT_INV_regAD_WB[1]~input_o\ <= NOT \regAD_WB[1]~input_o\;
\ALT_INV_regAddress[1]~input_o\ <= NOT \regAddress[1]~input_o\;
\ALT_INV_regAD_MEM[1]~input_o\ <= NOT \regAD_MEM[1]~input_o\;
\ALT_INV_regAD_WB[0]~input_o\ <= NOT \regAD_WB[0]~input_o\;
\ALT_INV_regAddress[0]~input_o\ <= NOT \regAddress[0]~input_o\;
\ALT_INV_operation[1]~input_o\ <= NOT \operation[1]~input_o\;
\ALT_INV_operation[0]~input_o\ <= NOT \operation[0]~input_o\;
\ALT_INV_regAD_MEM[0]~input_o\ <= NOT \regAD_MEM[0]~input_o\;
\ALT_INV_regAD_WB[15]~input_o\ <= NOT \regAD_WB[15]~input_o\;
\ALT_INV_regAddress[15]~input_o\ <= NOT \regAddress[15]~input_o\;
\ALT_INV_regAD_MEM[15]~input_o\ <= NOT \regAD_MEM[15]~input_o\;
\ALT_INV_regAD_WB[14]~input_o\ <= NOT \regAD_WB[14]~input_o\;
\ALT_INV_regAddress[14]~input_o\ <= NOT \regAddress[14]~input_o\;
\ALT_INV_regAD_MEM[14]~input_o\ <= NOT \regAD_MEM[14]~input_o\;
\ALT_INV_regAD_WB[13]~input_o\ <= NOT \regAD_WB[13]~input_o\;
\ALT_INV_regAddress[13]~input_o\ <= NOT \regAddress[13]~input_o\;
\ALT_INV_regAD_MEM[13]~input_o\ <= NOT \regAD_MEM[13]~input_o\;
\ALT_INV_regAD_WB[12]~input_o\ <= NOT \regAD_WB[12]~input_o\;
\ALT_INV_regAddress[12]~input_o\ <= NOT \regAddress[12]~input_o\;
\ALT_INV_regAD_MEM[12]~input_o\ <= NOT \regAD_MEM[12]~input_o\;
\ALT_INV_regAD_WB[11]~input_o\ <= NOT \regAD_WB[11]~input_o\;
\ALT_INV_regAddress[11]~input_o\ <= NOT \regAddress[11]~input_o\;
\ALT_INV_regAD_MEM[11]~input_o\ <= NOT \regAD_MEM[11]~input_o\;
\ALT_INV_regAD_WB[10]~input_o\ <= NOT \regAD_WB[10]~input_o\;
\ALT_INV_regAddress[10]~input_o\ <= NOT \regAddress[10]~input_o\;
\ALT_INV_regAD_MEM[10]~input_o\ <= NOT \regAD_MEM[10]~input_o\;
\ALT_INV_regAD_WB[9]~input_o\ <= NOT \regAD_WB[9]~input_o\;
\ALT_INV_regAddress[9]~input_o\ <= NOT \regAddress[9]~input_o\;
\ALT_INV_regAD_MEM[9]~input_o\ <= NOT \regAD_MEM[9]~input_o\;
\ALT_INV_regAD_WB[8]~input_o\ <= NOT \regAD_WB[8]~input_o\;
\ALT_INV_regAddress[8]~input_o\ <= NOT \regAddress[8]~input_o\;
\ALT_INV_regAD_MEM[8]~input_o\ <= NOT \regAD_MEM[8]~input_o\;
\ALT_INV_regAD_WB[7]~input_o\ <= NOT \regAD_WB[7]~input_o\;
\ALT_INV_regAddress[7]~input_o\ <= NOT \regAddress[7]~input_o\;
\ALT_INV_regAD_MEM[7]~input_o\ <= NOT \regAD_MEM[7]~input_o\;
\ALT_INV_regAD_WB[6]~input_o\ <= NOT \regAD_WB[6]~input_o\;
\ALT_INV_regAddress[6]~input_o\ <= NOT \regAddress[6]~input_o\;
\ALT_INV_regAD_MEM[6]~input_o\ <= NOT \regAD_MEM[6]~input_o\;
\ALT_INV_regAD_WB[5]~input_o\ <= NOT \regAD_WB[5]~input_o\;

-- Location: IOOBUF_X40_Y0_N36
\Output[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Output~0_combout\,
	devoe => ww_devoe,
	o => ww_Output(0));

-- Location: IOOBUF_X2_Y0_N93
\Output[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Output~1_combout\,
	devoe => ww_devoe,
	o => ww_Output(1));

-- Location: IOOBUF_X28_Y0_N2
\Output[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Output~2_combout\,
	devoe => ww_devoe,
	o => ww_Output(2));

-- Location: IOOBUF_X52_Y0_N19
\Output[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Output~3_combout\,
	devoe => ww_devoe,
	o => ww_Output(3));

-- Location: IOOBUF_X56_Y0_N53
\Output[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Output~4_combout\,
	devoe => ww_devoe,
	o => ww_Output(4));

-- Location: IOOBUF_X38_Y0_N53
\Output[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Output~5_combout\,
	devoe => ww_devoe,
	o => ww_Output(5));

-- Location: IOOBUF_X50_Y0_N59
\Output[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Output~6_combout\,
	devoe => ww_devoe,
	o => ww_Output(6));

-- Location: IOOBUF_X38_Y0_N2
\Output[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Output~7_combout\,
	devoe => ww_devoe,
	o => ww_Output(7));

-- Location: IOOBUF_X6_Y0_N53
\Output[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Output~8_combout\,
	devoe => ww_devoe,
	o => ww_Output(8));

-- Location: IOOBUF_X4_Y0_N36
\Output[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Output~9_combout\,
	devoe => ww_devoe,
	o => ww_Output(9));

-- Location: IOOBUF_X40_Y0_N19
\Output[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Output~10_combout\,
	devoe => ww_devoe,
	o => ww_Output(10));

-- Location: IOOBUF_X38_Y0_N19
\Output[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Output~11_combout\,
	devoe => ww_devoe,
	o => ww_Output(11));

-- Location: IOOBUF_X54_Y0_N53
\Output[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Output~12_combout\,
	devoe => ww_devoe,
	o => ww_Output(12));

-- Location: IOOBUF_X2_Y0_N59
\Output[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Output~13_combout\,
	devoe => ww_devoe,
	o => ww_Output(13));

-- Location: IOOBUF_X36_Y0_N53
\Output[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Output~14_combout\,
	devoe => ww_devoe,
	o => ww_Output(14));

-- Location: IOOBUF_X56_Y0_N2
\Output[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Output~15_combout\,
	devoe => ww_devoe,
	o => ww_Output(15));

-- Location: IOIBUF_X8_Y0_N18
\regAD_MEM[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_regAD_MEM(0),
	o => \regAD_MEM[0]~input_o\);

-- Location: IOIBUF_X4_Y0_N52
\regAD_WB[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_regAD_WB(0),
	o => \regAD_WB[0]~input_o\);

-- Location: IOIBUF_X50_Y0_N75
\operation[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operation(0),
	o => \operation[0]~input_o\);

-- Location: IOIBUF_X2_Y0_N75
\regAddress[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_regAddress(0),
	o => \regAddress[0]~input_o\);

-- Location: IOIBUF_X50_Y0_N92
\operation[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operation(1),
	o => \operation[1]~input_o\);

-- Location: LABCELL_X31_Y1_N30
\Output~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~0_combout\ = ( \regAddress[0]~input_o\ & ( \operation[1]~input_o\ & ( (\regAD_MEM[0]~input_o\ & !\operation[0]~input_o\) ) ) ) # ( !\regAddress[0]~input_o\ & ( \operation[1]~input_o\ & ( (\regAD_MEM[0]~input_o\ & !\operation[0]~input_o\) ) ) ) # ( 
-- \regAddress[0]~input_o\ & ( !\operation[1]~input_o\ & ( (!\operation[0]~input_o\) # (\regAD_WB[0]~input_o\) ) ) ) # ( !\regAddress[0]~input_o\ & ( !\operation[1]~input_o\ & ( (\regAD_WB[0]~input_o\ & \operation[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111111111110000111100110011000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_regAD_MEM[0]~input_o\,
	datac => \ALT_INV_regAD_WB[0]~input_o\,
	datad => \ALT_INV_operation[0]~input_o\,
	datae => \ALT_INV_regAddress[0]~input_o\,
	dataf => \ALT_INV_operation[1]~input_o\,
	combout => \Output~0_combout\);

-- Location: IOIBUF_X38_Y0_N35
\regAddress[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_regAddress(1),
	o => \regAddress[1]~input_o\);

-- Location: IOIBUF_X8_Y0_N52
\regAD_MEM[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_regAD_MEM(1),
	o => \regAD_MEM[1]~input_o\);

-- Location: IOIBUF_X30_Y0_N1
\regAD_WB[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_regAD_WB(1),
	o => \regAD_WB[1]~input_o\);

-- Location: LABCELL_X31_Y1_N9
\Output~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~1_combout\ = ( \regAD_WB[1]~input_o\ & ( \operation[1]~input_o\ & ( (!\operation[0]~input_o\ & \regAD_MEM[1]~input_o\) ) ) ) # ( !\regAD_WB[1]~input_o\ & ( \operation[1]~input_o\ & ( (!\operation[0]~input_o\ & \regAD_MEM[1]~input_o\) ) ) ) # ( 
-- \regAD_WB[1]~input_o\ & ( !\operation[1]~input_o\ & ( (\operation[0]~input_o\) # (\regAddress[1]~input_o\) ) ) ) # ( !\regAD_WB[1]~input_o\ & ( !\operation[1]~input_o\ & ( (\regAddress[1]~input_o\ & !\operation[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100011101110111011100001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_regAddress[1]~input_o\,
	datab => \ALT_INV_operation[0]~input_o\,
	datac => \ALT_INV_regAD_MEM[1]~input_o\,
	datae => \ALT_INV_regAD_WB[1]~input_o\,
	dataf => \ALT_INV_operation[1]~input_o\,
	combout => \Output~1_combout\);

-- Location: IOIBUF_X28_Y0_N18
\regAddress[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_regAddress(2),
	o => \regAddress[2]~input_o\);

-- Location: IOIBUF_X34_Y0_N58
\regAD_WB[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_regAD_WB(2),
	o => \regAD_WB[2]~input_o\);

-- Location: IOIBUF_X28_Y0_N52
\regAD_MEM[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_regAD_MEM(2),
	o => \regAD_MEM[2]~input_o\);

-- Location: LABCELL_X31_Y1_N45
\Output~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~2_combout\ = ( \regAD_MEM[2]~input_o\ & ( \operation[1]~input_o\ & ( !\operation[0]~input_o\ ) ) ) # ( \regAD_MEM[2]~input_o\ & ( !\operation[1]~input_o\ & ( (!\operation[0]~input_o\ & (\regAddress[2]~input_o\)) # (\operation[0]~input_o\ & 
-- ((\regAD_WB[2]~input_o\))) ) ) ) # ( !\regAD_MEM[2]~input_o\ & ( !\operation[1]~input_o\ & ( (!\operation[0]~input_o\ & (\regAddress[2]~input_o\)) # (\operation[0]~input_o\ & ((\regAD_WB[2]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111010100000101111100000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_regAddress[2]~input_o\,
	datac => \ALT_INV_operation[0]~input_o\,
	datad => \ALT_INV_regAD_WB[2]~input_o\,
	datae => \ALT_INV_regAD_MEM[2]~input_o\,
	dataf => \ALT_INV_operation[1]~input_o\,
	combout => \Output~2_combout\);

-- Location: IOIBUF_X58_Y0_N75
\regAD_WB[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_regAD_WB(3),
	o => \regAD_WB[3]~input_o\);

-- Location: IOIBUF_X52_Y0_N35
\regAddress[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_regAddress(3),
	o => \regAddress[3]~input_o\);

-- Location: IOIBUF_X58_Y0_N92
\regAD_MEM[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_regAD_MEM(3),
	o => \regAD_MEM[3]~input_o\);

-- Location: LABCELL_X53_Y1_N30
\Output~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~3_combout\ = ( \operation[0]~input_o\ & ( (\regAD_WB[3]~input_o\ & !\operation[1]~input_o\) ) ) # ( !\operation[0]~input_o\ & ( (!\operation[1]~input_o\ & (\regAddress[3]~input_o\)) # (\operation[1]~input_o\ & ((\regAD_MEM[3]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111111010001000100010000001100001111110100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_regAD_WB[3]~input_o\,
	datab => \ALT_INV_operation[1]~input_o\,
	datac => \ALT_INV_regAddress[3]~input_o\,
	datad => \ALT_INV_regAD_MEM[3]~input_o\,
	datae => \ALT_INV_operation[0]~input_o\,
	combout => \Output~3_combout\);

-- Location: IOIBUF_X52_Y0_N52
\regAD_WB[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_regAD_WB(4),
	o => \regAD_WB[4]~input_o\);

-- Location: IOIBUF_X54_Y0_N1
\regAD_MEM[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_regAD_MEM(4),
	o => \regAD_MEM[4]~input_o\);

-- Location: IOIBUF_X56_Y0_N18
\regAddress[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_regAddress(4),
	o => \regAddress[4]~input_o\);

-- Location: LABCELL_X53_Y1_N9
\Output~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~4_combout\ = ( \operation[0]~input_o\ & ( (\regAD_WB[4]~input_o\ & !\operation[1]~input_o\) ) ) # ( !\operation[0]~input_o\ & ( (!\operation[1]~input_o\ & ((\regAddress[4]~input_o\))) # (\operation[1]~input_o\ & (\regAD_MEM[4]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011010100000101000000000011111100110101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_regAD_WB[4]~input_o\,
	datab => \ALT_INV_regAD_MEM[4]~input_o\,
	datac => \ALT_INV_operation[1]~input_o\,
	datad => \ALT_INV_regAddress[4]~input_o\,
	datae => \ALT_INV_operation[0]~input_o\,
	combout => \Output~4_combout\);

-- Location: IOIBUF_X36_Y0_N35
\regAD_WB[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_regAD_WB(5),
	o => \regAD_WB[5]~input_o\);

-- Location: IOIBUF_X32_Y0_N1
\regAddress[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_regAddress(5),
	o => \regAddress[5]~input_o\);

-- Location: IOIBUF_X6_Y0_N35
\regAD_MEM[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_regAD_MEM(5),
	o => \regAD_MEM[5]~input_o\);

-- Location: LABCELL_X31_Y1_N51
\Output~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~5_combout\ = ( \regAD_MEM[5]~input_o\ & ( \operation[1]~input_o\ & ( !\operation[0]~input_o\ ) ) ) # ( \regAD_MEM[5]~input_o\ & ( !\operation[1]~input_o\ & ( (!\operation[0]~input_o\ & ((\regAddress[5]~input_o\))) # (\operation[0]~input_o\ & 
-- (\regAD_WB[5]~input_o\)) ) ) ) # ( !\regAD_MEM[5]~input_o\ & ( !\operation[1]~input_o\ & ( (!\operation[0]~input_o\ & ((\regAddress[5]~input_o\))) # (\operation[0]~input_o\ & (\regAD_WB[5]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100000000000000001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_regAD_WB[5]~input_o\,
	datab => \ALT_INV_operation[0]~input_o\,
	datac => \ALT_INV_regAddress[5]~input_o\,
	datae => \ALT_INV_regAD_MEM[5]~input_o\,
	dataf => \ALT_INV_operation[1]~input_o\,
	combout => \Output~5_combout\);

-- Location: IOIBUF_X28_Y0_N35
\regAD_WB[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_regAD_WB(6),
	o => \regAD_WB[6]~input_o\);

-- Location: IOIBUF_X30_Y0_N52
\regAD_MEM[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_regAD_MEM(6),
	o => \regAD_MEM[6]~input_o\);

-- Location: IOIBUF_X26_Y0_N41
\regAddress[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_regAddress(6),
	o => \regAddress[6]~input_o\);

-- Location: LABCELL_X31_Y1_N24
\Output~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~6_combout\ = ( \regAddress[6]~input_o\ & ( \operation[1]~input_o\ & ( (!\operation[0]~input_o\ & \regAD_MEM[6]~input_o\) ) ) ) # ( !\regAddress[6]~input_o\ & ( \operation[1]~input_o\ & ( (!\operation[0]~input_o\ & \regAD_MEM[6]~input_o\) ) ) ) # ( 
-- \regAddress[6]~input_o\ & ( !\operation[1]~input_o\ & ( (!\operation[0]~input_o\) # (\regAD_WB[6]~input_o\) ) ) ) # ( !\regAddress[6]~input_o\ & ( !\operation[1]~input_o\ & ( (\regAD_WB[6]~input_o\ & \operation[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011111100111111001100000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_regAD_WB[6]~input_o\,
	datac => \ALT_INV_operation[0]~input_o\,
	datad => \ALT_INV_regAD_MEM[6]~input_o\,
	datae => \ALT_INV_regAddress[6]~input_o\,
	dataf => \ALT_INV_operation[1]~input_o\,
	combout => \Output~6_combout\);

-- Location: IOIBUF_X40_Y0_N1
\regAddress[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_regAddress(7),
	o => \regAddress[7]~input_o\);

-- Location: IOIBUF_X34_Y0_N75
\regAD_WB[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_regAD_WB(7),
	o => \regAD_WB[7]~input_o\);

-- Location: IOIBUF_X6_Y0_N18
\regAD_MEM[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_regAD_MEM(7),
	o => \regAD_MEM[7]~input_o\);

-- Location: LABCELL_X31_Y1_N3
\Output~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~7_combout\ = ( \regAD_MEM[7]~input_o\ & ( \operation[1]~input_o\ & ( !\operation[0]~input_o\ ) ) ) # ( \regAD_MEM[7]~input_o\ & ( !\operation[1]~input_o\ & ( (!\operation[0]~input_o\ & (\regAddress[7]~input_o\)) # (\operation[0]~input_o\ & 
-- ((\regAD_WB[7]~input_o\))) ) ) ) # ( !\regAD_MEM[7]~input_o\ & ( !\operation[1]~input_o\ & ( (!\operation[0]~input_o\ & (\regAddress[7]~input_o\)) # (\operation[0]~input_o\ & ((\regAD_WB[7]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011101000111010001110100011100000000000000001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_regAddress[7]~input_o\,
	datab => \ALT_INV_operation[0]~input_o\,
	datac => \ALT_INV_regAD_WB[7]~input_o\,
	datae => \ALT_INV_regAD_MEM[7]~input_o\,
	dataf => \ALT_INV_operation[1]~input_o\,
	combout => \Output~7_combout\);

-- Location: IOIBUF_X26_Y0_N58
\regAddress[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_regAddress(8),
	o => \regAddress[8]~input_o\);

-- Location: IOIBUF_X32_Y0_N52
\regAD_WB[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_regAD_WB(8),
	o => \regAD_WB[8]~input_o\);

-- Location: IOIBUF_X34_Y0_N92
\regAD_MEM[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_regAD_MEM(8),
	o => \regAD_MEM[8]~input_o\);

-- Location: LABCELL_X31_Y1_N36
\Output~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~8_combout\ = ( \regAD_MEM[8]~input_o\ & ( (!\operation[1]~input_o\ & ((!\operation[0]~input_o\ & (\regAddress[8]~input_o\)) # (\operation[0]~input_o\ & ((\regAD_WB[8]~input_o\))))) # (\operation[1]~input_o\ & (!\operation[0]~input_o\)) ) ) # ( 
-- !\regAD_MEM[8]~input_o\ & ( (!\operation[1]~input_o\ & ((!\operation[0]~input_o\ & (\regAddress[8]~input_o\)) # (\operation[0]~input_o\ & ((\regAD_WB[8]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010000010000010101001001100011011100100110001101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_operation[1]~input_o\,
	datab => \ALT_INV_operation[0]~input_o\,
	datac => \ALT_INV_regAddress[8]~input_o\,
	datad => \ALT_INV_regAD_WB[8]~input_o\,
	dataf => \ALT_INV_regAD_MEM[8]~input_o\,
	combout => \Output~8_combout\);

-- Location: IOIBUF_X4_Y0_N18
\regAD_WB[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_regAD_WB(9),
	o => \regAD_WB[9]~input_o\);

-- Location: IOIBUF_X32_Y0_N35
\regAD_MEM[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_regAD_MEM(9),
	o => \regAD_MEM[9]~input_o\);

-- Location: IOIBUF_X34_Y0_N41
\regAddress[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_regAddress(9),
	o => \regAddress[9]~input_o\);

-- Location: LABCELL_X31_Y1_N39
\Output~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~9_combout\ = ( \regAddress[9]~input_o\ & ( (!\operation[1]~input_o\ & ((!\operation[0]~input_o\) # ((\regAD_WB[9]~input_o\)))) # (\operation[1]~input_o\ & (!\operation[0]~input_o\ & ((\regAD_MEM[9]~input_o\)))) ) ) # ( !\regAddress[9]~input_o\ & ( 
-- (!\operation[1]~input_o\ & (\operation[0]~input_o\ & (\regAD_WB[9]~input_o\))) # (\operation[1]~input_o\ & (!\operation[0]~input_o\ & ((\regAD_MEM[9]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001000110000000100100011010001010110011101000101011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_operation[1]~input_o\,
	datab => \ALT_INV_operation[0]~input_o\,
	datac => \ALT_INV_regAD_WB[9]~input_o\,
	datad => \ALT_INV_regAD_MEM[9]~input_o\,
	dataf => \ALT_INV_regAddress[9]~input_o\,
	combout => \Output~9_combout\);

-- Location: IOIBUF_X26_Y0_N75
\regAD_WB[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_regAD_WB(10),
	o => \regAD_WB[10]~input_o\);

-- Location: IOIBUF_X36_Y0_N18
\regAD_MEM[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_regAD_MEM(10),
	o => \regAD_MEM[10]~input_o\);

-- Location: IOIBUF_X30_Y0_N35
\regAddress[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_regAddress(10),
	o => \regAddress[10]~input_o\);

-- Location: LABCELL_X31_Y1_N12
\Output~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~10_combout\ = ( \regAddress[10]~input_o\ & ( \operation[1]~input_o\ & ( (!\operation[0]~input_o\ & \regAD_MEM[10]~input_o\) ) ) ) # ( !\regAddress[10]~input_o\ & ( \operation[1]~input_o\ & ( (!\operation[0]~input_o\ & \regAD_MEM[10]~input_o\) ) ) 
-- ) # ( \regAddress[10]~input_o\ & ( !\operation[1]~input_o\ & ( (!\operation[0]~input_o\) # (\regAD_WB[10]~input_o\) ) ) ) # ( !\regAddress[10]~input_o\ & ( !\operation[1]~input_o\ & ( (\regAD_WB[10]~input_o\ & \operation[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011111100111111001100000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_regAD_WB[10]~input_o\,
	datac => \ALT_INV_operation[0]~input_o\,
	datad => \ALT_INV_regAD_MEM[10]~input_o\,
	datae => \ALT_INV_regAddress[10]~input_o\,
	dataf => \ALT_INV_operation[1]~input_o\,
	combout => \Output~10_combout\);

-- Location: IOIBUF_X32_Y0_N18
\regAD_WB[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_regAD_WB(11),
	o => \regAD_WB[11]~input_o\);

-- Location: IOIBUF_X40_Y0_N52
\regAD_MEM[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_regAD_MEM(11),
	o => \regAD_MEM[11]~input_o\);

-- Location: IOIBUF_X36_Y0_N1
\regAddress[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_regAddress(11),
	o => \regAddress[11]~input_o\);

-- Location: LABCELL_X31_Y1_N18
\Output~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~11_combout\ = ( \regAddress[11]~input_o\ & ( (!\operation[1]~input_o\ & ((!\operation[0]~input_o\) # ((\regAD_WB[11]~input_o\)))) # (\operation[1]~input_o\ & (!\operation[0]~input_o\ & ((\regAD_MEM[11]~input_o\)))) ) ) # ( 
-- !\regAddress[11]~input_o\ & ( (!\operation[1]~input_o\ & (\operation[0]~input_o\ & (\regAD_WB[11]~input_o\))) # (\operation[1]~input_o\ & (!\operation[0]~input_o\ & ((\regAD_MEM[11]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001000110000000100100011010001010110011101000101011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_operation[1]~input_o\,
	datab => \ALT_INV_operation[0]~input_o\,
	datac => \ALT_INV_regAD_WB[11]~input_o\,
	datad => \ALT_INV_regAD_MEM[11]~input_o\,
	dataf => \ALT_INV_regAddress[11]~input_o\,
	combout => \Output~11_combout\);

-- Location: IOIBUF_X50_Y0_N41
\regAD_MEM[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_regAD_MEM(12),
	o => \regAD_MEM[12]~input_o\);

-- Location: IOIBUF_X52_Y0_N1
\regAD_WB[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_regAD_WB(12),
	o => \regAD_WB[12]~input_o\);

-- Location: IOIBUF_X54_Y0_N18
\regAddress[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_regAddress(12),
	o => \regAddress[12]~input_o\);

-- Location: LABCELL_X53_Y1_N45
\Output~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~12_combout\ = ( \operation[0]~input_o\ & ( \regAddress[12]~input_o\ & ( (\regAD_WB[12]~input_o\ & !\operation[1]~input_o\) ) ) ) # ( !\operation[0]~input_o\ & ( \regAddress[12]~input_o\ & ( (!\operation[1]~input_o\) # (\regAD_MEM[12]~input_o\) ) ) 
-- ) # ( \operation[0]~input_o\ & ( !\regAddress[12]~input_o\ & ( (\regAD_WB[12]~input_o\ & !\operation[1]~input_o\) ) ) ) # ( !\operation[0]~input_o\ & ( !\regAddress[12]~input_o\ & ( (\regAD_MEM[12]~input_o\ & \operation[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101001100000011000011110101111101010011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_regAD_MEM[12]~input_o\,
	datab => \ALT_INV_regAD_WB[12]~input_o\,
	datac => \ALT_INV_operation[1]~input_o\,
	datae => \ALT_INV_operation[0]~input_o\,
	dataf => \ALT_INV_regAddress[12]~input_o\,
	combout => \Output~12_combout\);

-- Location: IOIBUF_X8_Y0_N1
\regAD_MEM[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_regAD_MEM(13),
	o => \regAD_MEM[13]~input_o\);

-- Location: IOIBUF_X26_Y0_N92
\regAD_WB[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_regAD_WB(13),
	o => \regAD_WB[13]~input_o\);

-- Location: IOIBUF_X30_Y0_N18
\regAddress[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_regAddress(13),
	o => \regAddress[13]~input_o\);

-- Location: LABCELL_X31_Y1_N21
\Output~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~13_combout\ = ( \regAddress[13]~input_o\ & ( (!\operation[1]~input_o\ & ((!\operation[0]~input_o\) # ((\regAD_WB[13]~input_o\)))) # (\operation[1]~input_o\ & (!\operation[0]~input_o\ & (\regAD_MEM[13]~input_o\))) ) ) # ( !\regAddress[13]~input_o\ 
-- & ( (!\operation[1]~input_o\ & (\operation[0]~input_o\ & ((\regAD_WB[13]~input_o\)))) # (\operation[1]~input_o\ & (!\operation[0]~input_o\ & (\regAD_MEM[13]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000100110000001000010011010001100101011101000110010101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_operation[1]~input_o\,
	datab => \ALT_INV_operation[0]~input_o\,
	datac => \ALT_INV_regAD_MEM[13]~input_o\,
	datad => \ALT_INV_regAD_WB[13]~input_o\,
	dataf => \ALT_INV_regAddress[13]~input_o\,
	combout => \Output~13_combout\);

-- Location: IOIBUF_X4_Y0_N1
\regAD_MEM[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_regAD_MEM(14),
	o => \regAD_MEM[14]~input_o\);

-- Location: IOIBUF_X6_Y0_N1
\regAddress[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_regAddress(14),
	o => \regAddress[14]~input_o\);

-- Location: IOIBUF_X8_Y0_N35
\regAD_WB[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_regAD_WB(14),
	o => \regAD_WB[14]~input_o\);

-- Location: LABCELL_X31_Y1_N54
\Output~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~14_combout\ = ( \operation[1]~input_o\ & ( (\regAD_MEM[14]~input_o\ & !\operation[0]~input_o\) ) ) # ( !\operation[1]~input_o\ & ( (!\operation[0]~input_o\ & (\regAddress[14]~input_o\)) # (\operation[0]~input_o\ & ((\regAD_WB[14]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001111001100110000111101010101000000000101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_regAD_MEM[14]~input_o\,
	datab => \ALT_INV_regAddress[14]~input_o\,
	datac => \ALT_INV_regAD_WB[14]~input_o\,
	datad => \ALT_INV_operation[0]~input_o\,
	dataf => \ALT_INV_operation[1]~input_o\,
	combout => \Output~14_combout\);

-- Location: IOIBUF_X56_Y0_N35
\regAD_MEM[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_regAD_MEM(15),
	o => \regAD_MEM[15]~input_o\);

-- Location: IOIBUF_X54_Y0_N35
\regAddress[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_regAddress(15),
	o => \regAddress[15]~input_o\);

-- Location: IOIBUF_X58_Y0_N58
\regAD_WB[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_regAD_WB(15),
	o => \regAD_WB[15]~input_o\);

-- Location: LABCELL_X53_Y1_N18
\Output~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~15_combout\ = ( \operation[0]~input_o\ & ( \regAD_WB[15]~input_o\ & ( !\operation[1]~input_o\ ) ) ) # ( !\operation[0]~input_o\ & ( \regAD_WB[15]~input_o\ & ( (!\operation[1]~input_o\ & ((\regAddress[15]~input_o\))) # (\operation[1]~input_o\ & 
-- (\regAD_MEM[15]~input_o\)) ) ) ) # ( !\operation[0]~input_o\ & ( !\regAD_WB[15]~input_o\ & ( (!\operation[1]~input_o\ & ((\regAddress[15]~input_o\))) # (\operation[1]~input_o\ & (\regAD_MEM[15]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000000000000000000011101000111011100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_regAD_MEM[15]~input_o\,
	datab => \ALT_INV_operation[1]~input_o\,
	datac => \ALT_INV_regAddress[15]~input_o\,
	datae => \ALT_INV_operation[0]~input_o\,
	dataf => \ALT_INV_regAD_WB[15]~input_o\,
	combout => \Output~15_combout\);

-- Location: LABCELL_X71_Y67_N0
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


