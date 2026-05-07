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

-- DATE "05/07/2026 11:52:12"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	register_EX_MEM IS
    PORT (
	clock : IN std_logic;
	isLW : IN std_logic;
	WriteEnable : IN std_logic;
	ReadDigit : IN std_logic;
	PrintDigit : IN std_logic;
	R2Reg : IN std_logic_vector(15 DOWNTO 0);
	Result : IN std_logic_vector(15 DOWNTO 0);
	RegAD : IN std_logic_vector(2 DOWNTO 0);
	isLW_EXMEM : OUT std_logic;
	WriteEnable_EXMEM : OUT std_logic;
	ReadDigit_EXMEM : OUT std_logic;
	PrintDigit_EXMEM : OUT std_logic;
	R2Reg_EXMEM : OUT std_logic_vector(15 DOWNTO 0);
	Result_EXMEM : OUT std_logic_vector(15 DOWNTO 0);
	RegAD_EXMEM : OUT std_logic_vector(2 DOWNTO 0)
	);
END register_EX_MEM;

-- Design Ports Information
-- isLW_EXMEM	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WriteEnable_EXMEM	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ReadDigit_EXMEM	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PrintDigit_EXMEM	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2Reg_EXMEM[0]	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2Reg_EXMEM[1]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2Reg_EXMEM[2]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2Reg_EXMEM[3]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2Reg_EXMEM[4]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2Reg_EXMEM[5]	=>  Location: PIN_P17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2Reg_EXMEM[6]	=>  Location: PIN_H9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2Reg_EXMEM[7]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2Reg_EXMEM[8]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2Reg_EXMEM[9]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2Reg_EXMEM[10]	=>  Location: PIN_H18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2Reg_EXMEM[11]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2Reg_EXMEM[12]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2Reg_EXMEM[13]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2Reg_EXMEM[14]	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2Reg_EXMEM[15]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result_EXMEM[0]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result_EXMEM[1]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result_EXMEM[2]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result_EXMEM[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result_EXMEM[4]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result_EXMEM[5]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result_EXMEM[6]	=>  Location: PIN_H20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result_EXMEM[7]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result_EXMEM[8]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result_EXMEM[9]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result_EXMEM[10]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result_EXMEM[11]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result_EXMEM[12]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result_EXMEM[13]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result_EXMEM[14]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result_EXMEM[15]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegAD_EXMEM[0]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegAD_EXMEM[1]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegAD_EXMEM[2]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- isLW	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WriteEnable	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ReadDigit	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PrintDigit	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2Reg[0]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2Reg[1]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2Reg[2]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2Reg[3]	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2Reg[4]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2Reg[5]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2Reg[6]	=>  Location: PIN_J9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2Reg[7]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2Reg[8]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2Reg[9]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2Reg[10]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2Reg[11]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2Reg[12]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2Reg[13]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2Reg[14]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2Reg[15]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[0]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[1]	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[2]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[3]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[4]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[5]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[6]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[7]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[8]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[9]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[10]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[11]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[12]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[13]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[14]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[15]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegAD[0]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegAD[1]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegAD[2]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF register_EX_MEM IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_isLW : std_logic;
SIGNAL ww_WriteEnable : std_logic;
SIGNAL ww_ReadDigit : std_logic;
SIGNAL ww_PrintDigit : std_logic;
SIGNAL ww_R2Reg : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_Result : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_RegAD : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_isLW_EXMEM : std_logic;
SIGNAL ww_WriteEnable_EXMEM : std_logic;
SIGNAL ww_ReadDigit_EXMEM : std_logic;
SIGNAL ww_PrintDigit_EXMEM : std_logic;
SIGNAL ww_R2Reg_EXMEM : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_Result_EXMEM : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_RegAD_EXMEM : std_logic_vector(2 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputCLKENA0_outclk\ : std_logic;
SIGNAL \isLW~input_o\ : std_logic;
SIGNAL \isLW_EXMEM~reg0feeder_combout\ : std_logic;
SIGNAL \isLW_EXMEM~reg0_q\ : std_logic;
SIGNAL \WriteEnable~input_o\ : std_logic;
SIGNAL \WriteEnable_EXMEM~reg0feeder_combout\ : std_logic;
SIGNAL \WriteEnable_EXMEM~reg0_q\ : std_logic;
SIGNAL \ReadDigit~input_o\ : std_logic;
SIGNAL \ReadDigit_EXMEM~reg0feeder_combout\ : std_logic;
SIGNAL \ReadDigit_EXMEM~reg0_q\ : std_logic;
SIGNAL \PrintDigit~input_o\ : std_logic;
SIGNAL \PrintDigit_EXMEM~reg0_q\ : std_logic;
SIGNAL \R2Reg[0]~input_o\ : std_logic;
SIGNAL \R2Reg_EXMEM[0]~reg0_q\ : std_logic;
SIGNAL \R2Reg[1]~input_o\ : std_logic;
SIGNAL \R2Reg_EXMEM[1]~reg0_q\ : std_logic;
SIGNAL \R2Reg[2]~input_o\ : std_logic;
SIGNAL \R2Reg_EXMEM[2]~reg0feeder_combout\ : std_logic;
SIGNAL \R2Reg_EXMEM[2]~reg0_q\ : std_logic;
SIGNAL \R2Reg[3]~input_o\ : std_logic;
SIGNAL \R2Reg_EXMEM[3]~reg0_q\ : std_logic;
SIGNAL \R2Reg[4]~input_o\ : std_logic;
SIGNAL \R2Reg_EXMEM[4]~reg0feeder_combout\ : std_logic;
SIGNAL \R2Reg_EXMEM[4]~reg0_q\ : std_logic;
SIGNAL \R2Reg[5]~input_o\ : std_logic;
SIGNAL \R2Reg_EXMEM[5]~reg0feeder_combout\ : std_logic;
SIGNAL \R2Reg_EXMEM[5]~reg0_q\ : std_logic;
SIGNAL \R2Reg[6]~input_o\ : std_logic;
SIGNAL \R2Reg_EXMEM[6]~reg0feeder_combout\ : std_logic;
SIGNAL \R2Reg_EXMEM[6]~reg0_q\ : std_logic;
SIGNAL \R2Reg[7]~input_o\ : std_logic;
SIGNAL \R2Reg_EXMEM[7]~reg0feeder_combout\ : std_logic;
SIGNAL \R2Reg_EXMEM[7]~reg0_q\ : std_logic;
SIGNAL \R2Reg[8]~input_o\ : std_logic;
SIGNAL \R2Reg_EXMEM[8]~reg0feeder_combout\ : std_logic;
SIGNAL \R2Reg_EXMEM[8]~reg0_q\ : std_logic;
SIGNAL \R2Reg[9]~input_o\ : std_logic;
SIGNAL \R2Reg_EXMEM[9]~reg0feeder_combout\ : std_logic;
SIGNAL \R2Reg_EXMEM[9]~reg0_q\ : std_logic;
SIGNAL \R2Reg[10]~input_o\ : std_logic;
SIGNAL \R2Reg_EXMEM[10]~reg0_q\ : std_logic;
SIGNAL \R2Reg[11]~input_o\ : std_logic;
SIGNAL \R2Reg_EXMEM[11]~reg0_q\ : std_logic;
SIGNAL \R2Reg[12]~input_o\ : std_logic;
SIGNAL \R2Reg_EXMEM[12]~reg0feeder_combout\ : std_logic;
SIGNAL \R2Reg_EXMEM[12]~reg0_q\ : std_logic;
SIGNAL \R2Reg[13]~input_o\ : std_logic;
SIGNAL \R2Reg_EXMEM[13]~reg0feeder_combout\ : std_logic;
SIGNAL \R2Reg_EXMEM[13]~reg0_q\ : std_logic;
SIGNAL \R2Reg[14]~input_o\ : std_logic;
SIGNAL \R2Reg_EXMEM[14]~reg0_q\ : std_logic;
SIGNAL \R2Reg[15]~input_o\ : std_logic;
SIGNAL \R2Reg_EXMEM[15]~reg0feeder_combout\ : std_logic;
SIGNAL \R2Reg_EXMEM[15]~reg0_q\ : std_logic;
SIGNAL \Result[0]~input_o\ : std_logic;
SIGNAL \Result_EXMEM[0]~reg0feeder_combout\ : std_logic;
SIGNAL \Result_EXMEM[0]~reg0_q\ : std_logic;
SIGNAL \Result[1]~input_o\ : std_logic;
SIGNAL \Result_EXMEM[1]~reg0feeder_combout\ : std_logic;
SIGNAL \Result_EXMEM[1]~reg0_q\ : std_logic;
SIGNAL \Result[2]~input_o\ : std_logic;
SIGNAL \Result_EXMEM[2]~reg0feeder_combout\ : std_logic;
SIGNAL \Result_EXMEM[2]~reg0_q\ : std_logic;
SIGNAL \Result[3]~input_o\ : std_logic;
SIGNAL \Result_EXMEM[3]~reg0feeder_combout\ : std_logic;
SIGNAL \Result_EXMEM[3]~reg0_q\ : std_logic;
SIGNAL \Result[4]~input_o\ : std_logic;
SIGNAL \Result_EXMEM[4]~reg0_q\ : std_logic;
SIGNAL \Result[5]~input_o\ : std_logic;
SIGNAL \Result_EXMEM[5]~reg0_q\ : std_logic;
SIGNAL \Result[6]~input_o\ : std_logic;
SIGNAL \Result_EXMEM[6]~reg0feeder_combout\ : std_logic;
SIGNAL \Result_EXMEM[6]~reg0_q\ : std_logic;
SIGNAL \Result[7]~input_o\ : std_logic;
SIGNAL \Result_EXMEM[7]~reg0_q\ : std_logic;
SIGNAL \Result[8]~input_o\ : std_logic;
SIGNAL \Result_EXMEM[8]~reg0feeder_combout\ : std_logic;
SIGNAL \Result_EXMEM[8]~reg0_q\ : std_logic;
SIGNAL \Result[9]~input_o\ : std_logic;
SIGNAL \Result_EXMEM[9]~reg0_q\ : std_logic;
SIGNAL \Result[10]~input_o\ : std_logic;
SIGNAL \Result_EXMEM[10]~reg0feeder_combout\ : std_logic;
SIGNAL \Result_EXMEM[10]~reg0_q\ : std_logic;
SIGNAL \Result[11]~input_o\ : std_logic;
SIGNAL \Result_EXMEM[11]~reg0_q\ : std_logic;
SIGNAL \Result[12]~input_o\ : std_logic;
SIGNAL \Result_EXMEM[12]~reg0feeder_combout\ : std_logic;
SIGNAL \Result_EXMEM[12]~reg0_q\ : std_logic;
SIGNAL \Result[13]~input_o\ : std_logic;
SIGNAL \Result_EXMEM[13]~reg0feeder_combout\ : std_logic;
SIGNAL \Result_EXMEM[13]~reg0_q\ : std_logic;
SIGNAL \Result[14]~input_o\ : std_logic;
SIGNAL \Result_EXMEM[14]~reg0feeder_combout\ : std_logic;
SIGNAL \Result_EXMEM[14]~reg0_q\ : std_logic;
SIGNAL \Result[15]~input_o\ : std_logic;
SIGNAL \Result_EXMEM[15]~reg0feeder_combout\ : std_logic;
SIGNAL \Result_EXMEM[15]~reg0_q\ : std_logic;
SIGNAL \RegAD[0]~input_o\ : std_logic;
SIGNAL \RegAD_EXMEM[0]~reg0_q\ : std_logic;
SIGNAL \RegAD[1]~input_o\ : std_logic;
SIGNAL \RegAD_EXMEM[1]~reg0feeder_combout\ : std_logic;
SIGNAL \RegAD_EXMEM[1]~reg0_q\ : std_logic;
SIGNAL \RegAD[2]~input_o\ : std_logic;
SIGNAL \RegAD_EXMEM[2]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_RegAD[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_Result[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_Result[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_Result[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_Result[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_Result[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_Result[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_Result[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_Result[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_Result[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_Result[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_Result[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_R2Reg[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_R2Reg[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_R2Reg[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_R2Reg[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_R2Reg[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_R2Reg[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_R2Reg[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_R2Reg[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_R2Reg[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_R2Reg[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_ReadDigit~input_o\ : std_logic;
SIGNAL \ALT_INV_WriteEnable~input_o\ : std_logic;
SIGNAL \ALT_INV_isLW~input_o\ : std_logic;

BEGIN

ww_clock <= clock;
ww_isLW <= isLW;
ww_WriteEnable <= WriteEnable;
ww_ReadDigit <= ReadDigit;
ww_PrintDigit <= PrintDigit;
ww_R2Reg <= R2Reg;
ww_Result <= Result;
ww_RegAD <= RegAD;
isLW_EXMEM <= ww_isLW_EXMEM;
WriteEnable_EXMEM <= ww_WriteEnable_EXMEM;
ReadDigit_EXMEM <= ww_ReadDigit_EXMEM;
PrintDigit_EXMEM <= ww_PrintDigit_EXMEM;
R2Reg_EXMEM <= ww_R2Reg_EXMEM;
Result_EXMEM <= ww_Result_EXMEM;
RegAD_EXMEM <= ww_RegAD_EXMEM;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_RegAD[1]~input_o\ <= NOT \RegAD[1]~input_o\;
\ALT_INV_Result[15]~input_o\ <= NOT \Result[15]~input_o\;
\ALT_INV_Result[14]~input_o\ <= NOT \Result[14]~input_o\;
\ALT_INV_Result[13]~input_o\ <= NOT \Result[13]~input_o\;
\ALT_INV_Result[12]~input_o\ <= NOT \Result[12]~input_o\;
\ALT_INV_Result[10]~input_o\ <= NOT \Result[10]~input_o\;
\ALT_INV_Result[8]~input_o\ <= NOT \Result[8]~input_o\;
\ALT_INV_Result[6]~input_o\ <= NOT \Result[6]~input_o\;
\ALT_INV_Result[3]~input_o\ <= NOT \Result[3]~input_o\;
\ALT_INV_Result[2]~input_o\ <= NOT \Result[2]~input_o\;
\ALT_INV_Result[1]~input_o\ <= NOT \Result[1]~input_o\;
\ALT_INV_Result[0]~input_o\ <= NOT \Result[0]~input_o\;
\ALT_INV_R2Reg[15]~input_o\ <= NOT \R2Reg[15]~input_o\;
\ALT_INV_R2Reg[13]~input_o\ <= NOT \R2Reg[13]~input_o\;
\ALT_INV_R2Reg[12]~input_o\ <= NOT \R2Reg[12]~input_o\;
\ALT_INV_R2Reg[9]~input_o\ <= NOT \R2Reg[9]~input_o\;
\ALT_INV_R2Reg[8]~input_o\ <= NOT \R2Reg[8]~input_o\;
\ALT_INV_R2Reg[7]~input_o\ <= NOT \R2Reg[7]~input_o\;
\ALT_INV_R2Reg[6]~input_o\ <= NOT \R2Reg[6]~input_o\;
\ALT_INV_R2Reg[5]~input_o\ <= NOT \R2Reg[5]~input_o\;
\ALT_INV_R2Reg[4]~input_o\ <= NOT \R2Reg[4]~input_o\;
\ALT_INV_R2Reg[2]~input_o\ <= NOT \R2Reg[2]~input_o\;
\ALT_INV_ReadDigit~input_o\ <= NOT \ReadDigit~input_o\;
\ALT_INV_WriteEnable~input_o\ <= NOT \WriteEnable~input_o\;
\ALT_INV_isLW~input_o\ <= NOT \isLW~input_o\;

-- Location: IOOBUF_X64_Y0_N2
\isLW_EXMEM~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \isLW_EXMEM~reg0_q\,
	devoe => ww_devoe,
	o => ww_isLW_EXMEM);

-- Location: IOOBUF_X36_Y0_N36
\WriteEnable_EXMEM~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \WriteEnable_EXMEM~reg0_q\,
	devoe => ww_devoe,
	o => ww_WriteEnable_EXMEM);

-- Location: IOOBUF_X52_Y0_N36
\ReadDigit_EXMEM~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ReadDigit_EXMEM~reg0_q\,
	devoe => ww_devoe,
	o => ww_ReadDigit_EXMEM);

-- Location: IOOBUF_X40_Y0_N2
\PrintDigit_EXMEM~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PrintDigit_EXMEM~reg0_q\,
	devoe => ww_devoe,
	o => ww_PrintDigit_EXMEM);

-- Location: IOOBUF_X89_Y9_N39
\R2Reg_EXMEM[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \R2Reg_EXMEM[0]~reg0_q\,
	devoe => ww_devoe,
	o => ww_R2Reg_EXMEM(0));

-- Location: IOOBUF_X66_Y81_N42
\R2Reg_EXMEM[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \R2Reg_EXMEM[1]~reg0_q\,
	devoe => ww_devoe,
	o => ww_R2Reg_EXMEM(1));

-- Location: IOOBUF_X60_Y0_N2
\R2Reg_EXMEM[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \R2Reg_EXMEM[2]~reg0_q\,
	devoe => ww_devoe,
	o => ww_R2Reg_EXMEM(2));

-- Location: IOOBUF_X68_Y81_N36
\R2Reg_EXMEM[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \R2Reg_EXMEM[3]~reg0_q\,
	devoe => ww_devoe,
	o => ww_R2Reg_EXMEM(3));

-- Location: IOOBUF_X56_Y81_N53
\R2Reg_EXMEM[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \R2Reg_EXMEM[4]~reg0_q\,
	devoe => ww_devoe,
	o => ww_R2Reg_EXMEM(4));

-- Location: IOOBUF_X89_Y9_N22
\R2Reg_EXMEM[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \R2Reg_EXMEM[5]~reg0_q\,
	devoe => ww_devoe,
	o => ww_R2Reg_EXMEM(5));

-- Location: IOOBUF_X36_Y81_N19
\R2Reg_EXMEM[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \R2Reg_EXMEM[6]~reg0_q\,
	devoe => ww_devoe,
	o => ww_R2Reg_EXMEM(6));

-- Location: IOOBUF_X36_Y81_N36
\R2Reg_EXMEM[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \R2Reg_EXMEM[7]~reg0_q\,
	devoe => ww_devoe,
	o => ww_R2Reg_EXMEM(7));

-- Location: IOOBUF_X30_Y0_N2
\R2Reg_EXMEM[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \R2Reg_EXMEM[8]~reg0_q\,
	devoe => ww_devoe,
	o => ww_R2Reg_EXMEM(8));

-- Location: IOOBUF_X89_Y36_N56
\R2Reg_EXMEM[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \R2Reg_EXMEM[9]~reg0_q\,
	devoe => ww_devoe,
	o => ww_R2Reg_EXMEM(9));

-- Location: IOOBUF_X68_Y81_N19
\R2Reg_EXMEM[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \R2Reg_EXMEM[10]~reg0_q\,
	devoe => ww_devoe,
	o => ww_R2Reg_EXMEM(10));

-- Location: IOOBUF_X60_Y81_N36
\R2Reg_EXMEM[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \R2Reg_EXMEM[11]~reg0_q\,
	devoe => ww_devoe,
	o => ww_R2Reg_EXMEM(11));

-- Location: IOOBUF_X68_Y0_N53
\R2Reg_EXMEM[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \R2Reg_EXMEM[12]~reg0_q\,
	devoe => ww_devoe,
	o => ww_R2Reg_EXMEM(12));

-- Location: IOOBUF_X34_Y81_N76
\R2Reg_EXMEM[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \R2Reg_EXMEM[13]~reg0_q\,
	devoe => ww_devoe,
	o => ww_R2Reg_EXMEM(13));

-- Location: IOOBUF_X38_Y81_N53
\R2Reg_EXMEM[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \R2Reg_EXMEM[14]~reg0_q\,
	devoe => ww_devoe,
	o => ww_R2Reg_EXMEM(14));

-- Location: IOOBUF_X54_Y81_N2
\R2Reg_EXMEM[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \R2Reg_EXMEM[15]~reg0_q\,
	devoe => ww_devoe,
	o => ww_R2Reg_EXMEM(15));

-- Location: IOOBUF_X28_Y0_N2
\Result_EXMEM[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Result_EXMEM[0]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Result_EXMEM(0));

-- Location: IOOBUF_X32_Y0_N53
\Result_EXMEM[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Result_EXMEM[1]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Result_EXMEM(1));

-- Location: IOOBUF_X60_Y81_N53
\Result_EXMEM[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Result_EXMEM[2]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Result_EXMEM(2));

-- Location: IOOBUF_X66_Y0_N76
\Result_EXMEM[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Result_EXMEM[3]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Result_EXMEM(3));

-- Location: IOOBUF_X26_Y81_N59
\Result_EXMEM[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Result_EXMEM[4]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Result_EXMEM(4));

-- Location: IOOBUF_X26_Y0_N59
\Result_EXMEM[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Result_EXMEM[5]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Result_EXMEM(5));

-- Location: IOOBUF_X80_Y81_N19
\Result_EXMEM[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Result_EXMEM[6]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Result_EXMEM(6));

-- Location: IOOBUF_X62_Y81_N53
\Result_EXMEM[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Result_EXMEM[7]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Result_EXMEM(7));

-- Location: IOOBUF_X30_Y81_N2
\Result_EXMEM[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Result_EXMEM[8]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Result_EXMEM(8));

-- Location: IOOBUF_X84_Y81_N19
\Result_EXMEM[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Result_EXMEM[9]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Result_EXMEM(9));

-- Location: IOOBUF_X36_Y0_N19
\Result_EXMEM[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Result_EXMEM[10]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Result_EXMEM(10));

-- Location: IOOBUF_X52_Y0_N19
\Result_EXMEM[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Result_EXMEM[11]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Result_EXMEM(11));

-- Location: IOOBUF_X66_Y0_N42
\Result_EXMEM[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Result_EXMEM[12]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Result_EXMEM(12));

-- Location: IOOBUF_X4_Y0_N53
\Result_EXMEM[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Result_EXMEM[13]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Result_EXMEM(13));

-- Location: IOOBUF_X6_Y0_N36
\Result_EXMEM[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Result_EXMEM[14]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Result_EXMEM(14));

-- Location: IOOBUF_X66_Y81_N76
\Result_EXMEM[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Result_EXMEM[15]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Result_EXMEM(15));

-- Location: IOOBUF_X34_Y81_N42
\RegAD_EXMEM[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegAD_EXMEM[0]~reg0_q\,
	devoe => ww_devoe,
	o => ww_RegAD_EXMEM(0));

-- Location: IOOBUF_X28_Y0_N36
\RegAD_EXMEM[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegAD_EXMEM[1]~reg0_q\,
	devoe => ww_devoe,
	o => ww_RegAD_EXMEM(1));

-- Location: IOOBUF_X34_Y0_N59
\RegAD_EXMEM[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegAD_EXMEM[2]~reg0_q\,
	devoe => ww_devoe,
	o => ww_RegAD_EXMEM(2));

-- Location: IOIBUF_X89_Y35_N61
\clock~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: CLKCTRL_G10
\clock~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clock~input_o\,
	outclk => \clock~inputCLKENA0_outclk\);

-- Location: IOIBUF_X62_Y0_N35
\isLW~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_isLW,
	o => \isLW~input_o\);

-- Location: LABCELL_X64_Y1_N3
\isLW_EXMEM~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \isLW_EXMEM~reg0feeder_combout\ = ( \isLW~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_isLW~input_o\,
	combout => \isLW_EXMEM~reg0feeder_combout\);

-- Location: FF_X64_Y1_N5
\isLW_EXMEM~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \isLW_EXMEM~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \isLW_EXMEM~reg0_q\);

-- Location: IOIBUF_X36_Y0_N52
\WriteEnable~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WriteEnable,
	o => \WriteEnable~input_o\);

-- Location: LABCELL_X36_Y1_N30
\WriteEnable_EXMEM~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \WriteEnable_EXMEM~reg0feeder_combout\ = ( \WriteEnable~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_WriteEnable~input_o\,
	combout => \WriteEnable_EXMEM~reg0feeder_combout\);

-- Location: FF_X36_Y1_N32
\WriteEnable_EXMEM~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \WriteEnable_EXMEM~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WriteEnable_EXMEM~reg0_q\);

-- Location: IOIBUF_X52_Y0_N52
\ReadDigit~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ReadDigit,
	o => \ReadDigit~input_o\);

-- Location: MLABCELL_X52_Y1_N33
\ReadDigit_EXMEM~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \ReadDigit_EXMEM~reg0feeder_combout\ = ( \ReadDigit~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_ReadDigit~input_o\,
	combout => \ReadDigit_EXMEM~reg0feeder_combout\);

-- Location: FF_X52_Y1_N35
\ReadDigit_EXMEM~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \ReadDigit_EXMEM~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ReadDigit_EXMEM~reg0_q\);

-- Location: IOIBUF_X40_Y0_N18
\PrintDigit~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PrintDigit,
	o => \PrintDigit~input_o\);

-- Location: FF_X40_Y1_N2
\PrintDigit_EXMEM~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \PrintDigit~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PrintDigit_EXMEM~reg0_q\);

-- Location: IOIBUF_X89_Y9_N55
\R2Reg[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_R2Reg(0),
	o => \R2Reg[0]~input_o\);

-- Location: FF_X88_Y9_N4
\R2Reg_EXMEM[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \R2Reg[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R2Reg_EXMEM[0]~reg0_q\);

-- Location: IOIBUF_X66_Y81_N58
\R2Reg[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_R2Reg(1),
	o => \R2Reg[1]~input_o\);

-- Location: FF_X66_Y80_N34
\R2Reg_EXMEM[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \R2Reg[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R2Reg_EXMEM[1]~reg0_q\);

-- Location: IOIBUF_X60_Y0_N35
\R2Reg[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_R2Reg(2),
	o => \R2Reg[2]~input_o\);

-- Location: LABCELL_X60_Y1_N33
\R2Reg_EXMEM[2]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \R2Reg_EXMEM[2]~reg0feeder_combout\ = ( \R2Reg[2]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_R2Reg[2]~input_o\,
	combout => \R2Reg_EXMEM[2]~reg0feeder_combout\);

-- Location: FF_X60_Y1_N35
\R2Reg_EXMEM[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \R2Reg_EXMEM[2]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R2Reg_EXMEM[2]~reg0_q\);

-- Location: IOIBUF_X68_Y81_N52
\R2Reg[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_R2Reg(3),
	o => \R2Reg[3]~input_o\);

-- Location: FF_X68_Y80_N35
\R2Reg_EXMEM[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \R2Reg[3]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R2Reg_EXMEM[3]~reg0_q\);

-- Location: IOIBUF_X56_Y81_N1
\R2Reg[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_R2Reg(4),
	o => \R2Reg[4]~input_o\);

-- Location: LABCELL_X56_Y80_N0
\R2Reg_EXMEM[4]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \R2Reg_EXMEM[4]~reg0feeder_combout\ = ( \R2Reg[4]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_R2Reg[4]~input_o\,
	combout => \R2Reg_EXMEM[4]~reg0feeder_combout\);

-- Location: FF_X56_Y80_N2
\R2Reg_EXMEM[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \R2Reg_EXMEM[4]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R2Reg_EXMEM[4]~reg0_q\);

-- Location: IOIBUF_X89_Y9_N4
\R2Reg[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_R2Reg(5),
	o => \R2Reg[5]~input_o\);

-- Location: LABCELL_X88_Y9_N36
\R2Reg_EXMEM[5]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \R2Reg_EXMEM[5]~reg0feeder_combout\ = ( \R2Reg[5]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_R2Reg[5]~input_o\,
	combout => \R2Reg_EXMEM[5]~reg0feeder_combout\);

-- Location: FF_X88_Y9_N37
\R2Reg_EXMEM[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \R2Reg_EXMEM[5]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R2Reg_EXMEM[5]~reg0_q\);

-- Location: IOIBUF_X36_Y81_N1
\R2Reg[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_R2Reg(6),
	o => \R2Reg[6]~input_o\);

-- Location: LABCELL_X36_Y80_N33
\R2Reg_EXMEM[6]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \R2Reg_EXMEM[6]~reg0feeder_combout\ = ( \R2Reg[6]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_R2Reg[6]~input_o\,
	combout => \R2Reg_EXMEM[6]~reg0feeder_combout\);

-- Location: FF_X36_Y80_N35
\R2Reg_EXMEM[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \R2Reg_EXMEM[6]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R2Reg_EXMEM[6]~reg0_q\);

-- Location: IOIBUF_X34_Y81_N92
\R2Reg[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_R2Reg(7),
	o => \R2Reg[7]~input_o\);

-- Location: MLABCELL_X34_Y80_N30
\R2Reg_EXMEM[7]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \R2Reg_EXMEM[7]~reg0feeder_combout\ = ( \R2Reg[7]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_R2Reg[7]~input_o\,
	combout => \R2Reg_EXMEM[7]~reg0feeder_combout\);

-- Location: FF_X34_Y80_N31
\R2Reg_EXMEM[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \R2Reg_EXMEM[7]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R2Reg_EXMEM[7]~reg0_q\);

-- Location: IOIBUF_X30_Y0_N52
\R2Reg[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_R2Reg(8),
	o => \R2Reg[8]~input_o\);

-- Location: LABCELL_X30_Y1_N3
\R2Reg_EXMEM[8]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \R2Reg_EXMEM[8]~reg0feeder_combout\ = ( \R2Reg[8]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_R2Reg[8]~input_o\,
	combout => \R2Reg_EXMEM[8]~reg0feeder_combout\);

-- Location: FF_X30_Y1_N4
\R2Reg_EXMEM[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \R2Reg_EXMEM[8]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R2Reg_EXMEM[8]~reg0_q\);

-- Location: IOIBUF_X89_Y36_N38
\R2Reg[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_R2Reg(9),
	o => \R2Reg[9]~input_o\);

-- Location: LABCELL_X88_Y36_N0
\R2Reg_EXMEM[9]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \R2Reg_EXMEM[9]~reg0feeder_combout\ = ( \R2Reg[9]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_R2Reg[9]~input_o\,
	combout => \R2Reg_EXMEM[9]~reg0feeder_combout\);

-- Location: FF_X88_Y36_N1
\R2Reg_EXMEM[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \R2Reg_EXMEM[9]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R2Reg_EXMEM[9]~reg0_q\);

-- Location: IOIBUF_X64_Y81_N18
\R2Reg[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_R2Reg(10),
	o => \R2Reg[10]~input_o\);

-- Location: FF_X64_Y80_N1
\R2Reg_EXMEM[10]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \R2Reg[10]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R2Reg_EXMEM[10]~reg0_q\);

-- Location: IOIBUF_X60_Y81_N1
\R2Reg[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_R2Reg(11),
	o => \R2Reg[11]~input_o\);

-- Location: FF_X60_Y80_N32
\R2Reg_EXMEM[11]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \R2Reg[11]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R2Reg_EXMEM[11]~reg0_q\);

-- Location: IOIBUF_X68_Y0_N35
\R2Reg[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_R2Reg(12),
	o => \R2Reg[12]~input_o\);

-- Location: LABCELL_X68_Y1_N0
\R2Reg_EXMEM[12]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \R2Reg_EXMEM[12]~reg0feeder_combout\ = ( \R2Reg[12]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_R2Reg[12]~input_o\,
	combout => \R2Reg_EXMEM[12]~reg0feeder_combout\);

-- Location: FF_X68_Y1_N2
\R2Reg_EXMEM[12]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \R2Reg_EXMEM[12]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R2Reg_EXMEM[12]~reg0_q\);

-- Location: IOIBUF_X32_Y81_N35
\R2Reg[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_R2Reg(13),
	o => \R2Reg[13]~input_o\);

-- Location: LABCELL_X33_Y80_N30
\R2Reg_EXMEM[13]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \R2Reg_EXMEM[13]~reg0feeder_combout\ = ( \R2Reg[13]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_R2Reg[13]~input_o\,
	combout => \R2Reg_EXMEM[13]~reg0feeder_combout\);

-- Location: FF_X33_Y80_N31
\R2Reg_EXMEM[13]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \R2Reg_EXMEM[13]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R2Reg_EXMEM[13]~reg0_q\);

-- Location: IOIBUF_X40_Y81_N18
\R2Reg[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_R2Reg(14),
	o => \R2Reg[14]~input_o\);

-- Location: FF_X39_Y80_N1
\R2Reg_EXMEM[14]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \R2Reg[14]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R2Reg_EXMEM[14]~reg0_q\);

-- Location: IOIBUF_X56_Y81_N35
\R2Reg[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_R2Reg(15),
	o => \R2Reg[15]~input_o\);

-- Location: LABCELL_X56_Y80_N39
\R2Reg_EXMEM[15]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \R2Reg_EXMEM[15]~reg0feeder_combout\ = ( \R2Reg[15]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_R2Reg[15]~input_o\,
	combout => \R2Reg_EXMEM[15]~reg0feeder_combout\);

-- Location: FF_X56_Y80_N40
\R2Reg_EXMEM[15]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \R2Reg_EXMEM[15]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R2Reg_EXMEM[15]~reg0_q\);

-- Location: IOIBUF_X28_Y0_N18
\Result[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Result(0),
	o => \Result[0]~input_o\);

-- Location: MLABCELL_X28_Y1_N3
\Result_EXMEM[0]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Result_EXMEM[0]~reg0feeder_combout\ = ( \Result[0]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Result[0]~input_o\,
	combout => \Result_EXMEM[0]~reg0feeder_combout\);

-- Location: FF_X28_Y1_N4
\Result_EXMEM[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Result_EXMEM[0]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Result_EXMEM[0]~reg0_q\);

-- Location: IOIBUF_X34_Y0_N75
\Result[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Result(1),
	o => \Result[1]~input_o\);

-- Location: LABCELL_X33_Y1_N30
\Result_EXMEM[1]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Result_EXMEM[1]~reg0feeder_combout\ = ( \Result[1]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Result[1]~input_o\,
	combout => \Result_EXMEM[1]~reg0feeder_combout\);

-- Location: FF_X33_Y1_N32
\Result_EXMEM[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Result_EXMEM[1]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Result_EXMEM[1]~reg0_q\);

-- Location: IOIBUF_X60_Y81_N18
\Result[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Result(2),
	o => \Result[2]~input_o\);

-- Location: LABCELL_X60_Y80_N9
\Result_EXMEM[2]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Result_EXMEM[2]~reg0feeder_combout\ = ( \Result[2]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Result[2]~input_o\,
	combout => \Result_EXMEM[2]~reg0feeder_combout\);

-- Location: FF_X60_Y80_N11
\Result_EXMEM[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Result_EXMEM[2]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Result_EXMEM[2]~reg0_q\);

-- Location: IOIBUF_X68_Y0_N18
\Result[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Result(3),
	o => \Result[3]~input_o\);

-- Location: LABCELL_X66_Y1_N3
\Result_EXMEM[3]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Result_EXMEM[3]~reg0feeder_combout\ = ( \Result[3]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Result[3]~input_o\,
	combout => \Result_EXMEM[3]~reg0feeder_combout\);

-- Location: FF_X66_Y1_N5
\Result_EXMEM[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Result_EXMEM[3]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Result_EXMEM[3]~reg0_q\);

-- Location: IOIBUF_X26_Y81_N92
\Result[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Result(4),
	o => \Result[4]~input_o\);

-- Location: FF_X25_Y80_N34
\Result_EXMEM[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Result[4]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Result_EXMEM[4]~reg0_q\);

-- Location: IOIBUF_X26_Y0_N92
\Result[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Result(5),
	o => \Result[5]~input_o\);

-- Location: FF_X25_Y1_N31
\Result_EXMEM[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Result[5]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Result_EXMEM[5]~reg0_q\);

-- Location: IOIBUF_X82_Y81_N75
\Result[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Result(6),
	o => \Result[6]~input_o\);

-- Location: LABCELL_X80_Y80_N0
\Result_EXMEM[6]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Result_EXMEM[6]~reg0feeder_combout\ = ( \Result[6]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Result[6]~input_o\,
	combout => \Result_EXMEM[6]~reg0feeder_combout\);

-- Location: FF_X80_Y80_N2
\Result_EXMEM[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Result_EXMEM[6]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Result_EXMEM[6]~reg0_q\);

-- Location: IOIBUF_X62_Y81_N1
\Result[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Result(7),
	o => \Result[7]~input_o\);

-- Location: FF_X62_Y80_N5
\Result_EXMEM[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Result[7]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Result_EXMEM[7]~reg0_q\);

-- Location: IOIBUF_X30_Y81_N18
\Result[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Result(8),
	o => \Result[8]~input_o\);

-- Location: LABCELL_X30_Y80_N30
\Result_EXMEM[8]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Result_EXMEM[8]~reg0feeder_combout\ = ( \Result[8]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Result[8]~input_o\,
	combout => \Result_EXMEM[8]~reg0feeder_combout\);

-- Location: FF_X30_Y80_N31
\Result_EXMEM[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Result_EXMEM[8]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Result_EXMEM[8]~reg0_q\);

-- Location: IOIBUF_X84_Y81_N52
\Result[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Result(9),
	o => \Result[9]~input_o\);

-- Location: FF_X84_Y80_N31
\Result_EXMEM[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Result[9]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Result_EXMEM[9]~reg0_q\);

-- Location: IOIBUF_X38_Y0_N52
\Result[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Result(10),
	o => \Result[10]~input_o\);

-- Location: LABCELL_X37_Y1_N33
\Result_EXMEM[10]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Result_EXMEM[10]~reg0feeder_combout\ = ( \Result[10]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Result[10]~input_o\,
	combout => \Result_EXMEM[10]~reg0feeder_combout\);

-- Location: FF_X37_Y1_N35
\Result_EXMEM[10]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Result_EXMEM[10]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Result_EXMEM[10]~reg0_q\);

-- Location: IOIBUF_X52_Y0_N1
\Result[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Result(11),
	o => \Result[11]~input_o\);

-- Location: FF_X52_Y1_N7
\Result_EXMEM[11]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Result[11]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Result_EXMEM[11]~reg0_q\);

-- Location: IOIBUF_X66_Y0_N92
\Result[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Result(12),
	o => \Result[12]~input_o\);

-- Location: LABCELL_X66_Y1_N6
\Result_EXMEM[12]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Result_EXMEM[12]~reg0feeder_combout\ = ( \Result[12]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Result[12]~input_o\,
	combout => \Result_EXMEM[12]~reg0feeder_combout\);

-- Location: FF_X66_Y1_N8
\Result_EXMEM[12]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Result_EXMEM[12]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Result_EXMEM[12]~reg0_q\);

-- Location: IOIBUF_X4_Y0_N1
\Result[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Result(13),
	o => \Result[13]~input_o\);

-- Location: LABCELL_X4_Y1_N30
\Result_EXMEM[13]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Result_EXMEM[13]~reg0feeder_combout\ = ( \Result[13]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Result[13]~input_o\,
	combout => \Result_EXMEM[13]~reg0feeder_combout\);

-- Location: FF_X4_Y1_N31
\Result_EXMEM[13]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Result_EXMEM[13]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Result_EXMEM[13]~reg0_q\);

-- Location: IOIBUF_X6_Y0_N52
\Result[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Result(14),
	o => \Result[14]~input_o\);

-- Location: MLABCELL_X6_Y1_N30
\Result_EXMEM[14]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Result_EXMEM[14]~reg0feeder_combout\ = ( \Result[14]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Result[14]~input_o\,
	combout => \Result_EXMEM[14]~reg0feeder_combout\);

-- Location: FF_X6_Y1_N32
\Result_EXMEM[14]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Result_EXMEM[14]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Result_EXMEM[14]~reg0_q\);

-- Location: IOIBUF_X66_Y81_N92
\Result[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Result(15),
	o => \Result[15]~input_o\);

-- Location: LABCELL_X66_Y80_N36
\Result_EXMEM[15]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Result_EXMEM[15]~reg0feeder_combout\ = ( \Result[15]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Result[15]~input_o\,
	combout => \Result_EXMEM[15]~reg0feeder_combout\);

-- Location: FF_X66_Y80_N38
\Result_EXMEM[15]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Result_EXMEM[15]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Result_EXMEM[15]~reg0_q\);

-- Location: IOIBUF_X34_Y81_N58
\RegAD[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RegAD(0),
	o => \RegAD[0]~input_o\);

-- Location: FF_X34_Y80_N7
\RegAD_EXMEM[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \RegAD[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegAD_EXMEM[0]~reg0_q\);

-- Location: IOIBUF_X28_Y0_N52
\RegAD[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RegAD(1),
	o => \RegAD[1]~input_o\);

-- Location: MLABCELL_X28_Y1_N36
\RegAD_EXMEM[1]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RegAD_EXMEM[1]~reg0feeder_combout\ = ( \RegAD[1]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_RegAD[1]~input_o\,
	combout => \RegAD_EXMEM[1]~reg0feeder_combout\);

-- Location: FF_X28_Y1_N38
\RegAD_EXMEM[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \RegAD_EXMEM[1]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegAD_EXMEM[1]~reg0_q\);

-- Location: IOIBUF_X34_Y0_N41
\RegAD[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RegAD(2),
	o => \RegAD[2]~input_o\);

-- Location: FF_X34_Y1_N4
\RegAD_EXMEM[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \RegAD[2]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegAD_EXMEM[2]~reg0_q\);

-- Location: LABCELL_X88_Y64_N0
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


