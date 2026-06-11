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

-- DATE "06/11/2026 12:32:18"

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
	isSW : IN std_logic;
	WriteEnable : IN std_logic;
	ReadDigit : IN std_logic;
	PrintDigit : IN std_logic;
	R2Reg : IN std_logic_vector(15 DOWNTO 0);
	Result : IN std_logic_vector(15 DOWNTO 0);
	RegAD : IN std_logic_vector(2 DOWNTO 0);
	isLW_EXMEM : OUT std_logic;
	isSW_EXMEM : OUT std_logic;
	WriteEnable_EXMEM : OUT std_logic;
	ReadDigit_EXMEM : OUT std_logic;
	PrintDigit_EXMEM : OUT std_logic;
	R2Reg_EXMEM : OUT std_logic_vector(15 DOWNTO 0);
	Result_EXMEM : OUT std_logic_vector(15 DOWNTO 0);
	RegAD_EXMEM : OUT std_logic_vector(2 DOWNTO 0)
	);
END register_EX_MEM;

-- Design Ports Information
-- isLW_EXMEM	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- isSW_EXMEM	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WriteEnable_EXMEM	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ReadDigit_EXMEM	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PrintDigit_EXMEM	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2Reg_EXMEM[0]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2Reg_EXMEM[1]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2Reg_EXMEM[2]	=>  Location: PIN_A22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2Reg_EXMEM[3]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2Reg_EXMEM[4]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2Reg_EXMEM[5]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2Reg_EXMEM[6]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2Reg_EXMEM[7]	=>  Location: PIN_H9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2Reg_EXMEM[8]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2Reg_EXMEM[9]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2Reg_EXMEM[10]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2Reg_EXMEM[11]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2Reg_EXMEM[12]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2Reg_EXMEM[13]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2Reg_EXMEM[14]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2Reg_EXMEM[15]	=>  Location: PIN_P17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result_EXMEM[0]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result_EXMEM[1]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result_EXMEM[2]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result_EXMEM[3]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result_EXMEM[4]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result_EXMEM[5]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result_EXMEM[6]	=>  Location: PIN_K19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result_EXMEM[7]	=>  Location: PIN_L17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result_EXMEM[8]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result_EXMEM[9]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result_EXMEM[10]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result_EXMEM[11]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result_EXMEM[12]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result_EXMEM[13]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result_EXMEM[14]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result_EXMEM[15]	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegAD_EXMEM[0]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegAD_EXMEM[1]	=>  Location: PIN_V19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegAD_EXMEM[2]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- isLW	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- isSW	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WriteEnable	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ReadDigit	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PrintDigit	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2Reg[0]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2Reg[1]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2Reg[2]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2Reg[3]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2Reg[4]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2Reg[5]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2Reg[6]	=>  Location: PIN_K20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2Reg[7]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2Reg[8]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2Reg[9]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2Reg[10]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2Reg[11]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2Reg[12]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2Reg[13]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2Reg[14]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2Reg[15]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[0]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[1]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[2]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[3]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[4]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[5]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[6]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[7]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[8]	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[9]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[10]	=>  Location: PIN_H20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[11]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[12]	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[13]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[14]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[15]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegAD[0]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegAD[1]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegAD[2]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_isSW : std_logic;
SIGNAL ww_WriteEnable : std_logic;
SIGNAL ww_ReadDigit : std_logic;
SIGNAL ww_PrintDigit : std_logic;
SIGNAL ww_R2Reg : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_Result : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_RegAD : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_isLW_EXMEM : std_logic;
SIGNAL ww_isSW_EXMEM : std_logic;
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
SIGNAL \isSW~input_o\ : std_logic;
SIGNAL \isSW_EXMEM~reg0feeder_combout\ : std_logic;
SIGNAL \isSW_EXMEM~reg0_q\ : std_logic;
SIGNAL \WriteEnable~input_o\ : std_logic;
SIGNAL \WriteEnable_EXMEM~reg0feeder_combout\ : std_logic;
SIGNAL \WriteEnable_EXMEM~reg0_q\ : std_logic;
SIGNAL \ReadDigit~input_o\ : std_logic;
SIGNAL \ReadDigit_EXMEM~reg0feeder_combout\ : std_logic;
SIGNAL \ReadDigit_EXMEM~reg0_q\ : std_logic;
SIGNAL \PrintDigit~input_o\ : std_logic;
SIGNAL \PrintDigit_EXMEM~reg0feeder_combout\ : std_logic;
SIGNAL \PrintDigit_EXMEM~reg0_q\ : std_logic;
SIGNAL \R2Reg[0]~input_o\ : std_logic;
SIGNAL \R2Reg_EXMEM[0]~reg0feeder_combout\ : std_logic;
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
SIGNAL \R2Reg_EXMEM[7]~reg0_q\ : std_logic;
SIGNAL \R2Reg[8]~input_o\ : std_logic;
SIGNAL \R2Reg_EXMEM[8]~reg0feeder_combout\ : std_logic;
SIGNAL \R2Reg_EXMEM[8]~reg0_q\ : std_logic;
SIGNAL \R2Reg[9]~input_o\ : std_logic;
SIGNAL \R2Reg_EXMEM[9]~reg0feeder_combout\ : std_logic;
SIGNAL \R2Reg_EXMEM[9]~reg0_q\ : std_logic;
SIGNAL \R2Reg[10]~input_o\ : std_logic;
SIGNAL \R2Reg_EXMEM[10]~reg0feeder_combout\ : std_logic;
SIGNAL \R2Reg_EXMEM[10]~reg0_q\ : std_logic;
SIGNAL \R2Reg[11]~input_o\ : std_logic;
SIGNAL \R2Reg_EXMEM[11]~reg0feeder_combout\ : std_logic;
SIGNAL \R2Reg_EXMEM[11]~reg0_q\ : std_logic;
SIGNAL \R2Reg[12]~input_o\ : std_logic;
SIGNAL \R2Reg_EXMEM[12]~reg0feeder_combout\ : std_logic;
SIGNAL \R2Reg_EXMEM[12]~reg0_q\ : std_logic;
SIGNAL \R2Reg[13]~input_o\ : std_logic;
SIGNAL \R2Reg_EXMEM[13]~reg0_q\ : std_logic;
SIGNAL \R2Reg[14]~input_o\ : std_logic;
SIGNAL \R2Reg_EXMEM[14]~reg0_q\ : std_logic;
SIGNAL \R2Reg[15]~input_o\ : std_logic;
SIGNAL \R2Reg_EXMEM[15]~reg0feeder_combout\ : std_logic;
SIGNAL \R2Reg_EXMEM[15]~reg0_q\ : std_logic;
SIGNAL \Result[0]~input_o\ : std_logic;
SIGNAL \Result_EXMEM[0]~reg0_q\ : std_logic;
SIGNAL \Result[1]~input_o\ : std_logic;
SIGNAL \Result_EXMEM[1]~reg0feeder_combout\ : std_logic;
SIGNAL \Result_EXMEM[1]~reg0_q\ : std_logic;
SIGNAL \Result[2]~input_o\ : std_logic;
SIGNAL \Result_EXMEM[2]~reg0feeder_combout\ : std_logic;
SIGNAL \Result_EXMEM[2]~reg0_q\ : std_logic;
SIGNAL \Result[3]~input_o\ : std_logic;
SIGNAL \Result_EXMEM[3]~reg0_q\ : std_logic;
SIGNAL \Result[4]~input_o\ : std_logic;
SIGNAL \Result_EXMEM[4]~reg0feeder_combout\ : std_logic;
SIGNAL \Result_EXMEM[4]~reg0_q\ : std_logic;
SIGNAL \Result[5]~input_o\ : std_logic;
SIGNAL \Result_EXMEM[5]~reg0_q\ : std_logic;
SIGNAL \Result[6]~input_o\ : std_logic;
SIGNAL \Result_EXMEM[6]~reg0_q\ : std_logic;
SIGNAL \Result[7]~input_o\ : std_logic;
SIGNAL \Result_EXMEM[7]~reg0_q\ : std_logic;
SIGNAL \Result[8]~input_o\ : std_logic;
SIGNAL \Result_EXMEM[8]~reg0feeder_combout\ : std_logic;
SIGNAL \Result_EXMEM[8]~reg0_q\ : std_logic;
SIGNAL \Result[9]~input_o\ : std_logic;
SIGNAL \Result_EXMEM[9]~reg0feeder_combout\ : std_logic;
SIGNAL \Result_EXMEM[9]~reg0_q\ : std_logic;
SIGNAL \Result[10]~input_o\ : std_logic;
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
SIGNAL \Result_EXMEM[15]~reg0_q\ : std_logic;
SIGNAL \RegAD[0]~input_o\ : std_logic;
SIGNAL \RegAD_EXMEM[0]~reg0_q\ : std_logic;
SIGNAL \RegAD[1]~input_o\ : std_logic;
SIGNAL \RegAD_EXMEM[1]~reg0feeder_combout\ : std_logic;
SIGNAL \RegAD_EXMEM[1]~reg0_q\ : std_logic;
SIGNAL \RegAD[2]~input_o\ : std_logic;
SIGNAL \RegAD_EXMEM[2]~reg0feeder_combout\ : std_logic;
SIGNAL \RegAD_EXMEM[2]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_RegAD[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_RegAD[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_Result[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_Result[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_Result[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_Result[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_Result[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_Result[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_Result[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_Result[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_R2Reg[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_R2Reg[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_R2Reg[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_R2Reg[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_R2Reg[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_R2Reg[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_R2Reg[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_R2Reg[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_R2Reg[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_R2Reg[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_R2Reg[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_PrintDigit~input_o\ : std_logic;
SIGNAL \ALT_INV_ReadDigit~input_o\ : std_logic;
SIGNAL \ALT_INV_WriteEnable~input_o\ : std_logic;
SIGNAL \ALT_INV_isSW~input_o\ : std_logic;
SIGNAL \ALT_INV_isLW~input_o\ : std_logic;

BEGIN

ww_clock <= clock;
ww_isLW <= isLW;
ww_isSW <= isSW;
ww_WriteEnable <= WriteEnable;
ww_ReadDigit <= ReadDigit;
ww_PrintDigit <= PrintDigit;
ww_R2Reg <= R2Reg;
ww_Result <= Result;
ww_RegAD <= RegAD;
isLW_EXMEM <= ww_isLW_EXMEM;
isSW_EXMEM <= ww_isSW_EXMEM;
WriteEnable_EXMEM <= ww_WriteEnable_EXMEM;
ReadDigit_EXMEM <= ww_ReadDigit_EXMEM;
PrintDigit_EXMEM <= ww_PrintDigit_EXMEM;
R2Reg_EXMEM <= ww_R2Reg_EXMEM;
Result_EXMEM <= ww_Result_EXMEM;
RegAD_EXMEM <= ww_RegAD_EXMEM;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_RegAD[2]~input_o\ <= NOT \RegAD[2]~input_o\;
\ALT_INV_RegAD[1]~input_o\ <= NOT \RegAD[1]~input_o\;
\ALT_INV_Result[14]~input_o\ <= NOT \Result[14]~input_o\;
\ALT_INV_Result[13]~input_o\ <= NOT \Result[13]~input_o\;
\ALT_INV_Result[12]~input_o\ <= NOT \Result[12]~input_o\;
\ALT_INV_Result[9]~input_o\ <= NOT \Result[9]~input_o\;
\ALT_INV_Result[8]~input_o\ <= NOT \Result[8]~input_o\;
\ALT_INV_Result[4]~input_o\ <= NOT \Result[4]~input_o\;
\ALT_INV_Result[2]~input_o\ <= NOT \Result[2]~input_o\;
\ALT_INV_Result[1]~input_o\ <= NOT \Result[1]~input_o\;
\ALT_INV_R2Reg[15]~input_o\ <= NOT \R2Reg[15]~input_o\;
\ALT_INV_R2Reg[12]~input_o\ <= NOT \R2Reg[12]~input_o\;
\ALT_INV_R2Reg[11]~input_o\ <= NOT \R2Reg[11]~input_o\;
\ALT_INV_R2Reg[10]~input_o\ <= NOT \R2Reg[10]~input_o\;
\ALT_INV_R2Reg[9]~input_o\ <= NOT \R2Reg[9]~input_o\;
\ALT_INV_R2Reg[8]~input_o\ <= NOT \R2Reg[8]~input_o\;
\ALT_INV_R2Reg[6]~input_o\ <= NOT \R2Reg[6]~input_o\;
\ALT_INV_R2Reg[5]~input_o\ <= NOT \R2Reg[5]~input_o\;
\ALT_INV_R2Reg[4]~input_o\ <= NOT \R2Reg[4]~input_o\;
\ALT_INV_R2Reg[2]~input_o\ <= NOT \R2Reg[2]~input_o\;
\ALT_INV_R2Reg[0]~input_o\ <= NOT \R2Reg[0]~input_o\;
\ALT_INV_PrintDigit~input_o\ <= NOT \PrintDigit~input_o\;
\ALT_INV_ReadDigit~input_o\ <= NOT \ReadDigit~input_o\;
\ALT_INV_WriteEnable~input_o\ <= NOT \WriteEnable~input_o\;
\ALT_INV_isSW~input_o\ <= NOT \isSW~input_o\;
\ALT_INV_isLW~input_o\ <= NOT \isLW~input_o\;

-- Location: IOOBUF_X60_Y0_N53
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

-- Location: IOOBUF_X74_Y81_N42
\isSW_EXMEM~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \isSW_EXMEM~reg0_q\,
	devoe => ww_devoe,
	o => ww_isSW_EXMEM);

-- Location: IOOBUF_X89_Y8_N5
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

-- Location: IOOBUF_X66_Y0_N76
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

-- Location: IOOBUF_X60_Y0_N19
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

-- Location: IOOBUF_X36_Y0_N53
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

-- Location: IOOBUF_X70_Y0_N53
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

-- Location: IOOBUF_X78_Y81_N53
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

-- Location: IOOBUF_X78_Y81_N19
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

-- Location: IOOBUF_X68_Y0_N53
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

-- Location: IOOBUF_X89_Y38_N22
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

-- Location: IOOBUF_X70_Y81_N53
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

-- Location: IOOBUF_X36_Y81_N19
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

-- Location: IOOBUF_X64_Y0_N2
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

-- Location: IOOBUF_X40_Y81_N19
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

-- Location: IOOBUF_X52_Y0_N2
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

-- Location: IOOBUF_X58_Y0_N59
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

-- Location: IOOBUF_X80_Y81_N36
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

-- Location: IOOBUF_X64_Y81_N2
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

-- Location: IOOBUF_X34_Y81_N93
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

-- Location: IOOBUF_X89_Y9_N22
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

-- Location: IOOBUF_X89_Y36_N39
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

-- Location: IOOBUF_X54_Y0_N53
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

-- Location: IOOBUF_X60_Y0_N2
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

-- Location: IOOBUF_X89_Y4_N79
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

-- Location: IOOBUF_X58_Y0_N76
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

-- Location: IOOBUF_X89_Y8_N39
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

-- Location: IOOBUF_X72_Y81_N19
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

-- Location: IOOBUF_X89_Y37_N22
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

-- Location: IOOBUF_X72_Y81_N36
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

-- Location: IOOBUF_X66_Y0_N59
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

-- Location: IOOBUF_X78_Y81_N36
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

-- Location: IOOBUF_X74_Y81_N76
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

-- Location: IOOBUF_X89_Y9_N56
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

-- Location: IOOBUF_X70_Y81_N2
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

-- Location: IOOBUF_X64_Y0_N36
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

-- Location: IOOBUF_X34_Y0_N76
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

-- Location: IOOBUF_X89_Y38_N39
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

-- Location: IOOBUF_X70_Y0_N19
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

-- Location: IOOBUF_X50_Y0_N93
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

-- Location: IOIBUF_X58_Y0_N92
\isLW~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_isLW,
	o => \isLW~input_o\);

-- Location: MLABCELL_X59_Y1_N3
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

-- Location: FF_X59_Y1_N5
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

-- Location: IOIBUF_X74_Y81_N92
\isSW~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_isSW,
	o => \isSW~input_o\);

-- Location: LABCELL_X74_Y80_N0
\isSW_EXMEM~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \isSW_EXMEM~reg0feeder_combout\ = ( \isSW~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_isSW~input_o\,
	combout => \isSW_EXMEM~reg0feeder_combout\);

-- Location: FF_X74_Y80_N1
\isSW_EXMEM~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \isSW_EXMEM~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \isSW_EXMEM~reg0_q\);

-- Location: IOIBUF_X89_Y8_N21
\WriteEnable~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WriteEnable,
	o => \WriteEnable~input_o\);

-- Location: LABCELL_X88_Y8_N33
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

-- Location: FF_X88_Y8_N34
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

-- Location: IOIBUF_X66_Y0_N92
\ReadDigit~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ReadDigit,
	o => \ReadDigit~input_o\);

-- Location: LABCELL_X66_Y1_N0
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

-- Location: FF_X66_Y1_N2
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

-- Location: IOIBUF_X60_Y0_N35
\PrintDigit~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PrintDigit,
	o => \PrintDigit~input_o\);

-- Location: LABCELL_X61_Y1_N30
\PrintDigit_EXMEM~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \PrintDigit_EXMEM~reg0feeder_combout\ = ( \PrintDigit~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_PrintDigit~input_o\,
	combout => \PrintDigit_EXMEM~reg0feeder_combout\);

-- Location: FF_X61_Y1_N32
\PrintDigit_EXMEM~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \PrintDigit_EXMEM~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PrintDigit_EXMEM~reg0_q\);

-- Location: IOIBUF_X36_Y0_N18
\R2Reg[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_R2Reg(0),
	o => \R2Reg[0]~input_o\);

-- Location: LABCELL_X36_Y1_N0
\R2Reg_EXMEM[0]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \R2Reg_EXMEM[0]~reg0feeder_combout\ = ( \R2Reg[0]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_R2Reg[0]~input_o\,
	combout => \R2Reg_EXMEM[0]~reg0feeder_combout\);

-- Location: FF_X36_Y1_N2
\R2Reg_EXMEM[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \R2Reg_EXMEM[0]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R2Reg_EXMEM[0]~reg0_q\);

-- Location: IOIBUF_X70_Y0_N35
\R2Reg[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_R2Reg(1),
	o => \R2Reg[1]~input_o\);

-- Location: FF_X70_Y1_N35
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

-- Location: IOIBUF_X78_Y81_N1
\R2Reg[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_R2Reg(2),
	o => \R2Reg[2]~input_o\);

-- Location: MLABCELL_X78_Y80_N33
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

-- Location: FF_X78_Y80_N35
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

-- Location: IOIBUF_X80_Y81_N52
\R2Reg[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_R2Reg(3),
	o => \R2Reg[3]~input_o\);

-- Location: FF_X79_Y80_N35
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

-- Location: IOIBUF_X68_Y0_N35
\R2Reg[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_R2Reg(4),
	o => \R2Reg[4]~input_o\);

-- Location: LABCELL_X68_Y1_N0
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

-- Location: FF_X68_Y1_N2
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

-- Location: IOIBUF_X89_Y38_N4
\R2Reg[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_R2Reg(5),
	o => \R2Reg[5]~input_o\);

-- Location: LABCELL_X88_Y38_N33
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

-- Location: FF_X88_Y38_N34
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

-- Location: IOIBUF_X72_Y81_N1
\R2Reg[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_R2Reg(6),
	o => \R2Reg[6]~input_o\);

-- Location: LABCELL_X70_Y80_N33
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

-- Location: FF_X70_Y80_N35
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

-- Location: IOIBUF_X36_Y81_N35
\R2Reg[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_R2Reg(7),
	o => \R2Reg[7]~input_o\);

-- Location: FF_X36_Y80_N1
\R2Reg_EXMEM[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \R2Reg[7]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R2Reg_EXMEM[7]~reg0_q\);

-- Location: IOIBUF_X64_Y0_N18
\R2Reg[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_R2Reg(8),
	o => \R2Reg[8]~input_o\);

-- Location: LABCELL_X64_Y1_N3
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

-- Location: FF_X64_Y1_N5
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

-- Location: IOIBUF_X40_Y81_N1
\R2Reg[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_R2Reg(9),
	o => \R2Reg[9]~input_o\);

-- Location: LABCELL_X40_Y80_N0
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

-- Location: FF_X40_Y80_N2
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

-- Location: IOIBUF_X52_Y0_N18
\R2Reg[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_R2Reg(10),
	o => \R2Reg[10]~input_o\);

-- Location: MLABCELL_X52_Y1_N30
\R2Reg_EXMEM[10]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \R2Reg_EXMEM[10]~reg0feeder_combout\ = ( \R2Reg[10]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_R2Reg[10]~input_o\,
	combout => \R2Reg_EXMEM[10]~reg0feeder_combout\);

-- Location: FF_X52_Y1_N31
\R2Reg_EXMEM[10]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \R2Reg_EXMEM[10]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R2Reg_EXMEM[10]~reg0_q\);

-- Location: IOIBUF_X58_Y0_N41
\R2Reg[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_R2Reg(11),
	o => \R2Reg[11]~input_o\);

-- Location: LABCELL_X57_Y1_N0
\R2Reg_EXMEM[11]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \R2Reg_EXMEM[11]~reg0feeder_combout\ = ( \R2Reg[11]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_R2Reg[11]~input_o\,
	combout => \R2Reg_EXMEM[11]~reg0feeder_combout\);

-- Location: FF_X57_Y1_N1
\R2Reg_EXMEM[11]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \R2Reg_EXMEM[11]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R2Reg_EXMEM[11]~reg0_q\);

-- Location: IOIBUF_X80_Y81_N1
\R2Reg[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_R2Reg(12),
	o => \R2Reg[12]~input_o\);

-- Location: LABCELL_X80_Y80_N0
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

-- Location: FF_X80_Y80_N2
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

-- Location: IOIBUF_X66_Y81_N92
\R2Reg[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_R2Reg(13),
	o => \R2Reg[13]~input_o\);

-- Location: FF_X64_Y80_N35
\R2Reg_EXMEM[13]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \R2Reg[13]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R2Reg_EXMEM[13]~reg0_q\);

-- Location: IOIBUF_X34_Y81_N58
\R2Reg[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_R2Reg(14),
	o => \R2Reg[14]~input_o\);

-- Location: FF_X34_Y80_N2
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

-- Location: IOIBUF_X89_Y9_N4
\R2Reg[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_R2Reg(15),
	o => \R2Reg[15]~input_o\);

-- Location: LABCELL_X88_Y9_N0
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

-- Location: FF_X88_Y9_N1
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

-- Location: IOIBUF_X89_Y36_N55
\Result[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Result(0),
	o => \Result[0]~input_o\);

-- Location: FF_X88_Y36_N31
\Result_EXMEM[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Result[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Result_EXMEM[0]~reg0_q\);

-- Location: IOIBUF_X56_Y0_N52
\Result[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Result(1),
	o => \Result[1]~input_o\);

-- Location: LABCELL_X56_Y1_N33
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

-- Location: FF_X56_Y1_N34
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

-- Location: IOIBUF_X62_Y0_N35
\Result[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Result(2),
	o => \Result[2]~input_o\);

-- Location: LABCELL_X60_Y1_N33
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

-- Location: FF_X60_Y1_N35
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

-- Location: IOIBUF_X72_Y0_N35
\Result[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Result(3),
	o => \Result[3]~input_o\);

-- Location: FF_X77_Y4_N1
\Result_EXMEM[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Result[3]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Result_EXMEM[3]~reg0_q\);

-- Location: IOIBUF_X56_Y0_N35
\Result[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Result(4),
	o => \Result[4]~input_o\);

-- Location: LABCELL_X56_Y1_N30
\Result_EXMEM[4]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Result_EXMEM[4]~reg0feeder_combout\ = ( \Result[4]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Result[4]~input_o\,
	combout => \Result_EXMEM[4]~reg0feeder_combout\);

-- Location: FF_X56_Y1_N31
\Result_EXMEM[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Result_EXMEM[4]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Result_EXMEM[4]~reg0_q\);

-- Location: IOIBUF_X89_Y8_N55
\Result[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Result(5),
	o => \Result[5]~input_o\);

-- Location: FF_X88_Y8_N37
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

-- Location: IOIBUF_X72_Y81_N52
\Result[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Result(6),
	o => \Result[6]~input_o\);

-- Location: FF_X72_Y80_N32
\Result_EXMEM[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Result[6]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Result_EXMEM[6]~reg0_q\);

-- Location: IOIBUF_X89_Y37_N55
\Result[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Result(7),
	o => \Result[7]~input_o\);

-- Location: FF_X88_Y37_N1
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

-- Location: IOIBUF_X76_Y81_N52
\Result[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Result(8),
	o => \Result[8]~input_o\);

-- Location: LABCELL_X75_Y80_N33
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

-- Location: FF_X75_Y80_N35
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

-- Location: IOIBUF_X62_Y0_N52
\Result[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Result(9),
	o => \Result[9]~input_o\);

-- Location: LABCELL_X63_Y1_N33
\Result_EXMEM[9]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Result_EXMEM[9]~reg0feeder_combout\ = ( \Result[9]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Result[9]~input_o\,
	combout => \Result_EXMEM[9]~reg0feeder_combout\);

-- Location: FF_X63_Y1_N34
\Result_EXMEM[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Result_EXMEM[9]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Result_EXMEM[9]~reg0_q\);

-- Location: IOIBUF_X80_Y81_N18
\Result[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Result(10),
	o => \Result[10]~input_o\);

-- Location: FF_X80_Y80_N7
\Result_EXMEM[10]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Result[10]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Result_EXMEM[10]~reg0_q\);

-- Location: IOIBUF_X74_Y81_N58
\Result[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Result(11),
	o => \Result[11]~input_o\);

-- Location: FF_X74_Y80_N10
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

-- Location: IOIBUF_X89_Y9_N38
\Result[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Result(12),
	o => \Result[12]~input_o\);

-- Location: LABCELL_X88_Y9_N3
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

-- Location: FF_X88_Y9_N4
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

-- Location: IOIBUF_X70_Y81_N18
\Result[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Result(13),
	o => \Result[13]~input_o\);

-- Location: LABCELL_X70_Y80_N9
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

-- Location: FF_X70_Y80_N10
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

-- Location: IOIBUF_X64_Y0_N52
\Result[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Result(14),
	o => \Result[14]~input_o\);

-- Location: LABCELL_X64_Y1_N6
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

-- Location: FF_X64_Y1_N7
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

-- Location: IOIBUF_X32_Y0_N1
\Result[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Result(15),
	o => \Result[15]~input_o\);

-- Location: FF_X34_Y1_N1
\Result_EXMEM[15]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Result[15]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Result_EXMEM[15]~reg0_q\);

-- Location: IOIBUF_X89_Y38_N55
\RegAD[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RegAD(0),
	o => \RegAD[0]~input_o\);

-- Location: FF_X88_Y38_N37
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

-- Location: IOIBUF_X70_Y0_N1
\RegAD[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RegAD(1),
	o => \RegAD[1]~input_o\);

-- Location: LABCELL_X70_Y1_N9
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

-- Location: FF_X70_Y1_N11
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

-- Location: IOIBUF_X50_Y0_N75
\RegAD[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RegAD(2),
	o => \RegAD[2]~input_o\);

-- Location: LABCELL_X50_Y1_N0
\RegAD_EXMEM[2]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RegAD_EXMEM[2]~reg0feeder_combout\ = ( \RegAD[2]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_RegAD[2]~input_o\,
	combout => \RegAD_EXMEM[2]~reg0feeder_combout\);

-- Location: FF_X50_Y1_N2
\RegAD_EXMEM[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \RegAD_EXMEM[2]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegAD_EXMEM[2]~reg0_q\);

-- Location: LABCELL_X79_Y80_N0
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


