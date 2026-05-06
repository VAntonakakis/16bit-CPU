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

-- DATE "05/06/2026 19:51:02"

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

ENTITY 	register_ID_EX IS
    PORT (
	clock : IN std_logic;
	isEOR : IN std_logic;
	wasJumpOut : IN std_logic;
	isJump : IN std_logic;
	isJR : IN std_logic;
	isBranch : IN std_logic;
	isR : IN std_logic;
	isMFPC : IN std_logic;
	isLW : IN std_logic;
	isSW : IN std_logic;
	isReadDigit : IN std_logic;
	isPrintDigit : IN std_logic;
	ALUFunc : IN std_logic_vector(3 DOWNTO 0);
	R1Reg : IN std_logic_vector(15 DOWNTO 0);
	R2Reg : IN std_logic_vector(15 DOWNTO 0);
	immediate16 : IN std_logic_vector(15 DOWNTO 0);
	R2AD : IN std_logic_vector(2 DOWNTO 0);
	R1AD : IN std_logic_vector(2 DOWNTO 0);
	jumpShortAddr : IN std_logic_vector(11 DOWNTO 0);
	isEOR_IDEX : OUT std_logic;
	wasJumpOut_IDEX : OUT std_logic;
	isJump_IDEX : OUT std_logic;
	isJR_IDEX : OUT std_logic;
	isBranch_IDEX : OUT std_logic;
	isR_IDEX : OUT std_logic;
	isMFPC_IDEX : OUT std_logic;
	isLW_IDEX : OUT std_logic;
	isSW_IDEX : OUT std_logic;
	isReadDigit_IDEX : OUT std_logic;
	isPrintDigit_IDEX : OUT std_logic;
	ALUFunc_IDEX : OUT std_logic_vector(3 DOWNTO 0);
	R1Reg_IDEX : OUT std_logic_vector(15 DOWNTO 0);
	R2Reg_IDEX : OUT std_logic_vector(15 DOWNTO 0);
	immediate16_IDEX : OUT std_logic_vector(15 DOWNTO 0);
	R2AD_IDEX : OUT std_logic_vector(2 DOWNTO 0);
	R1AD_IDEX : OUT std_logic_vector(2 DOWNTO 0);
	jumpShortAddr_IDEX : OUT std_logic_vector(11 DOWNTO 0)
	);
END register_ID_EX;

-- Design Ports Information
-- isEOR_IDEX	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wasJumpOut_IDEX	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- isJump_IDEX	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- isJR_IDEX	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- isBranch_IDEX	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- isR_IDEX	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- isMFPC_IDEX	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- isLW_IDEX	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- isSW_IDEX	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- isReadDigit_IDEX	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- isPrintDigit_IDEX	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUFunc_IDEX[0]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUFunc_IDEX[1]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUFunc_IDEX[2]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUFunc_IDEX[3]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1Reg_IDEX[0]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1Reg_IDEX[1]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1Reg_IDEX[2]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1Reg_IDEX[3]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1Reg_IDEX[4]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1Reg_IDEX[5]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1Reg_IDEX[6]	=>  Location: PIN_J8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1Reg_IDEX[7]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1Reg_IDEX[8]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1Reg_IDEX[9]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1Reg_IDEX[10]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1Reg_IDEX[11]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1Reg_IDEX[12]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1Reg_IDEX[13]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1Reg_IDEX[14]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1Reg_IDEX[15]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2Reg_IDEX[0]	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2Reg_IDEX[1]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2Reg_IDEX[2]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2Reg_IDEX[3]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2Reg_IDEX[4]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2Reg_IDEX[5]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2Reg_IDEX[6]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2Reg_IDEX[7]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2Reg_IDEX[8]	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2Reg_IDEX[9]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2Reg_IDEX[10]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2Reg_IDEX[11]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2Reg_IDEX[12]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2Reg_IDEX[13]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2Reg_IDEX[14]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2Reg_IDEX[15]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immediate16_IDEX[0]	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immediate16_IDEX[1]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immediate16_IDEX[2]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immediate16_IDEX[3]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immediate16_IDEX[4]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immediate16_IDEX[5]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immediate16_IDEX[6]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immediate16_IDEX[7]	=>  Location: PIN_J9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immediate16_IDEX[8]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immediate16_IDEX[9]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immediate16_IDEX[10]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immediate16_IDEX[11]	=>  Location: PIN_J21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immediate16_IDEX[12]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immediate16_IDEX[13]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immediate16_IDEX[14]	=>  Location: PIN_P17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immediate16_IDEX[15]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2AD_IDEX[0]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2AD_IDEX[1]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2AD_IDEX[2]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1AD_IDEX[0]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1AD_IDEX[1]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1AD_IDEX[2]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jumpShortAddr_IDEX[0]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jumpShortAddr_IDEX[1]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jumpShortAddr_IDEX[2]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jumpShortAddr_IDEX[3]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jumpShortAddr_IDEX[4]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jumpShortAddr_IDEX[5]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jumpShortAddr_IDEX[6]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jumpShortAddr_IDEX[7]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jumpShortAddr_IDEX[8]	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jumpShortAddr_IDEX[9]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jumpShortAddr_IDEX[10]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jumpShortAddr_IDEX[11]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- isEOR	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wasJumpOut	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- isJump	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- isJR	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- isBranch	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- isR	=>  Location: PIN_K20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- isMFPC	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- isLW	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- isSW	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- isReadDigit	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- isPrintDigit	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUFunc[0]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUFunc[1]	=>  Location: PIN_U17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUFunc[2]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUFunc[3]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1Reg[0]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1Reg[1]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1Reg[2]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1Reg[3]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1Reg[4]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1Reg[5]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1Reg[6]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1Reg[7]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1Reg[8]	=>  Location: PIN_V19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1Reg[9]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1Reg[10]	=>  Location: PIN_L17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1Reg[11]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1Reg[12]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1Reg[13]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1Reg[14]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1Reg[15]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2Reg[0]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2Reg[1]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2Reg[2]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2Reg[3]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2Reg[4]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2Reg[5]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2Reg[6]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2Reg[7]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2Reg[8]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2Reg[9]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2Reg[10]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2Reg[11]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2Reg[12]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2Reg[13]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2Reg[14]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2Reg[15]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immediate16[0]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immediate16[1]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immediate16[2]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immediate16[3]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immediate16[4]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immediate16[5]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immediate16[6]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immediate16[7]	=>  Location: PIN_H9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immediate16[8]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immediate16[9]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immediate16[10]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immediate16[11]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immediate16[12]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immediate16[13]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immediate16[14]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immediate16[15]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2AD[0]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2AD[1]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2AD[2]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1AD[0]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1AD[1]	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1AD[2]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jumpShortAddr[0]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jumpShortAddr[1]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jumpShortAddr[2]	=>  Location: PIN_H18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jumpShortAddr[3]	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jumpShortAddr[4]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jumpShortAddr[5]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jumpShortAddr[6]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jumpShortAddr[7]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jumpShortAddr[8]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jumpShortAddr[9]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jumpShortAddr[10]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jumpShortAddr[11]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF register_ID_EX IS
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
SIGNAL ww_isEOR : std_logic;
SIGNAL ww_wasJumpOut : std_logic;
SIGNAL ww_isJump : std_logic;
SIGNAL ww_isJR : std_logic;
SIGNAL ww_isBranch : std_logic;
SIGNAL ww_isR : std_logic;
SIGNAL ww_isMFPC : std_logic;
SIGNAL ww_isLW : std_logic;
SIGNAL ww_isSW : std_logic;
SIGNAL ww_isReadDigit : std_logic;
SIGNAL ww_isPrintDigit : std_logic;
SIGNAL ww_ALUFunc : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_R1Reg : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_R2Reg : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_immediate16 : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_R2AD : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_R1AD : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_jumpShortAddr : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_isEOR_IDEX : std_logic;
SIGNAL ww_wasJumpOut_IDEX : std_logic;
SIGNAL ww_isJump_IDEX : std_logic;
SIGNAL ww_isJR_IDEX : std_logic;
SIGNAL ww_isBranch_IDEX : std_logic;
SIGNAL ww_isR_IDEX : std_logic;
SIGNAL ww_isMFPC_IDEX : std_logic;
SIGNAL ww_isLW_IDEX : std_logic;
SIGNAL ww_isSW_IDEX : std_logic;
SIGNAL ww_isReadDigit_IDEX : std_logic;
SIGNAL ww_isPrintDigit_IDEX : std_logic;
SIGNAL ww_ALUFunc_IDEX : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_R1Reg_IDEX : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_R2Reg_IDEX : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_immediate16_IDEX : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_R2AD_IDEX : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_R1AD_IDEX : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_jumpShortAddr_IDEX : std_logic_vector(11 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputCLKENA0_outclk\ : std_logic;
SIGNAL \isEOR~input_o\ : std_logic;
SIGNAL \isEOR_IDEX~reg0feeder_combout\ : std_logic;
SIGNAL \isEOR_IDEX~reg0_q\ : std_logic;
SIGNAL \wasJumpOut~input_o\ : std_logic;
SIGNAL \wasJumpOut_IDEX~reg0feeder_combout\ : std_logic;
SIGNAL \wasJumpOut_IDEX~reg0_q\ : std_logic;
SIGNAL \isJump~input_o\ : std_logic;
SIGNAL \isJump_IDEX~reg0feeder_combout\ : std_logic;
SIGNAL \isJump_IDEX~reg0_q\ : std_logic;
SIGNAL \isJR~input_o\ : std_logic;
SIGNAL \isJR_IDEX~reg0feeder_combout\ : std_logic;
SIGNAL \isJR_IDEX~reg0_q\ : std_logic;
SIGNAL \isBranch~input_o\ : std_logic;
SIGNAL \isBranch_IDEX~reg0feeder_combout\ : std_logic;
SIGNAL \isBranch_IDEX~reg0_q\ : std_logic;
SIGNAL \isR~input_o\ : std_logic;
SIGNAL \isR_IDEX~reg0feeder_combout\ : std_logic;
SIGNAL \isR_IDEX~reg0_q\ : std_logic;
SIGNAL \isMFPC~input_o\ : std_logic;
SIGNAL \isMFPC_IDEX~reg0feeder_combout\ : std_logic;
SIGNAL \isMFPC_IDEX~reg0_q\ : std_logic;
SIGNAL \isLW~input_o\ : std_logic;
SIGNAL \isLW_IDEX~reg0_q\ : std_logic;
SIGNAL \isSW~input_o\ : std_logic;
SIGNAL \isSW_IDEX~reg0_q\ : std_logic;
SIGNAL \isReadDigit~input_o\ : std_logic;
SIGNAL \isReadDigit_IDEX~reg0feeder_combout\ : std_logic;
SIGNAL \isReadDigit_IDEX~reg0_q\ : std_logic;
SIGNAL \isPrintDigit~input_o\ : std_logic;
SIGNAL \isPrintDigit_IDEX~reg0feeder_combout\ : std_logic;
SIGNAL \isPrintDigit_IDEX~reg0_q\ : std_logic;
SIGNAL \ALUFunc[0]~input_o\ : std_logic;
SIGNAL \ALUFunc_IDEX[0]~reg0feeder_combout\ : std_logic;
SIGNAL \ALUFunc_IDEX[0]~reg0_q\ : std_logic;
SIGNAL \ALUFunc[1]~input_o\ : std_logic;
SIGNAL \ALUFunc_IDEX[1]~reg0feeder_combout\ : std_logic;
SIGNAL \ALUFunc_IDEX[1]~reg0_q\ : std_logic;
SIGNAL \ALUFunc[2]~input_o\ : std_logic;
SIGNAL \ALUFunc_IDEX[2]~reg0feeder_combout\ : std_logic;
SIGNAL \ALUFunc_IDEX[2]~reg0_q\ : std_logic;
SIGNAL \ALUFunc[3]~input_o\ : std_logic;
SIGNAL \ALUFunc_IDEX[3]~reg0_q\ : std_logic;
SIGNAL \R1Reg[0]~input_o\ : std_logic;
SIGNAL \R1Reg_IDEX[0]~reg0_q\ : std_logic;
SIGNAL \R1Reg[1]~input_o\ : std_logic;
SIGNAL \R1Reg_IDEX[1]~reg0feeder_combout\ : std_logic;
SIGNAL \R1Reg_IDEX[1]~reg0_q\ : std_logic;
SIGNAL \R1Reg[2]~input_o\ : std_logic;
SIGNAL \R1Reg_IDEX[2]~reg0_q\ : std_logic;
SIGNAL \R1Reg[3]~input_o\ : std_logic;
SIGNAL \R1Reg_IDEX[3]~reg0feeder_combout\ : std_logic;
SIGNAL \R1Reg_IDEX[3]~reg0_q\ : std_logic;
SIGNAL \R1Reg[4]~input_o\ : std_logic;
SIGNAL \R1Reg_IDEX[4]~reg0_q\ : std_logic;
SIGNAL \R1Reg[5]~input_o\ : std_logic;
SIGNAL \R1Reg_IDEX[5]~reg0feeder_combout\ : std_logic;
SIGNAL \R1Reg_IDEX[5]~reg0_q\ : std_logic;
SIGNAL \R1Reg[6]~input_o\ : std_logic;
SIGNAL \R1Reg_IDEX[6]~reg0feeder_combout\ : std_logic;
SIGNAL \R1Reg_IDEX[6]~reg0_q\ : std_logic;
SIGNAL \R1Reg[7]~input_o\ : std_logic;
SIGNAL \R1Reg_IDEX[7]~reg0feeder_combout\ : std_logic;
SIGNAL \R1Reg_IDEX[7]~reg0_q\ : std_logic;
SIGNAL \R1Reg[8]~input_o\ : std_logic;
SIGNAL \R1Reg_IDEX[8]~reg0feeder_combout\ : std_logic;
SIGNAL \R1Reg_IDEX[8]~reg0_q\ : std_logic;
SIGNAL \R1Reg[9]~input_o\ : std_logic;
SIGNAL \R1Reg_IDEX[9]~reg0feeder_combout\ : std_logic;
SIGNAL \R1Reg_IDEX[9]~reg0_q\ : std_logic;
SIGNAL \R1Reg[10]~input_o\ : std_logic;
SIGNAL \R1Reg_IDEX[10]~reg0feeder_combout\ : std_logic;
SIGNAL \R1Reg_IDEX[10]~reg0_q\ : std_logic;
SIGNAL \R1Reg[11]~input_o\ : std_logic;
SIGNAL \R1Reg_IDEX[11]~reg0feeder_combout\ : std_logic;
SIGNAL \R1Reg_IDEX[11]~reg0_q\ : std_logic;
SIGNAL \R1Reg[12]~input_o\ : std_logic;
SIGNAL \R1Reg_IDEX[12]~reg0_q\ : std_logic;
SIGNAL \R1Reg[13]~input_o\ : std_logic;
SIGNAL \R1Reg_IDEX[13]~reg0feeder_combout\ : std_logic;
SIGNAL \R1Reg_IDEX[13]~reg0_q\ : std_logic;
SIGNAL \R1Reg[14]~input_o\ : std_logic;
SIGNAL \R1Reg_IDEX[14]~reg0feeder_combout\ : std_logic;
SIGNAL \R1Reg_IDEX[14]~reg0_q\ : std_logic;
SIGNAL \R1Reg[15]~input_o\ : std_logic;
SIGNAL \R1Reg_IDEX[15]~reg0_q\ : std_logic;
SIGNAL \R2Reg[0]~input_o\ : std_logic;
SIGNAL \R2Reg_IDEX[0]~reg0_q\ : std_logic;
SIGNAL \R2Reg[1]~input_o\ : std_logic;
SIGNAL \R2Reg_IDEX[1]~reg0feeder_combout\ : std_logic;
SIGNAL \R2Reg_IDEX[1]~reg0_q\ : std_logic;
SIGNAL \R2Reg[2]~input_o\ : std_logic;
SIGNAL \R2Reg_IDEX[2]~reg0feeder_combout\ : std_logic;
SIGNAL \R2Reg_IDEX[2]~reg0_q\ : std_logic;
SIGNAL \R2Reg[3]~input_o\ : std_logic;
SIGNAL \R2Reg_IDEX[3]~reg0feeder_combout\ : std_logic;
SIGNAL \R2Reg_IDEX[3]~reg0_q\ : std_logic;
SIGNAL \R2Reg[4]~input_o\ : std_logic;
SIGNAL \R2Reg_IDEX[4]~reg0_q\ : std_logic;
SIGNAL \R2Reg[5]~input_o\ : std_logic;
SIGNAL \R2Reg_IDEX[5]~reg0feeder_combout\ : std_logic;
SIGNAL \R2Reg_IDEX[5]~reg0_q\ : std_logic;
SIGNAL \R2Reg[6]~input_o\ : std_logic;
SIGNAL \R2Reg_IDEX[6]~reg0feeder_combout\ : std_logic;
SIGNAL \R2Reg_IDEX[6]~reg0_q\ : std_logic;
SIGNAL \R2Reg[7]~input_o\ : std_logic;
SIGNAL \R2Reg_IDEX[7]~reg0feeder_combout\ : std_logic;
SIGNAL \R2Reg_IDEX[7]~reg0_q\ : std_logic;
SIGNAL \R2Reg[8]~input_o\ : std_logic;
SIGNAL \R2Reg_IDEX[8]~reg0feeder_combout\ : std_logic;
SIGNAL \R2Reg_IDEX[8]~reg0_q\ : std_logic;
SIGNAL \R2Reg[9]~input_o\ : std_logic;
SIGNAL \R2Reg_IDEX[9]~reg0feeder_combout\ : std_logic;
SIGNAL \R2Reg_IDEX[9]~reg0_q\ : std_logic;
SIGNAL \R2Reg[10]~input_o\ : std_logic;
SIGNAL \R2Reg_IDEX[10]~reg0_q\ : std_logic;
SIGNAL \R2Reg[11]~input_o\ : std_logic;
SIGNAL \R2Reg_IDEX[11]~reg0feeder_combout\ : std_logic;
SIGNAL \R2Reg_IDEX[11]~reg0_q\ : std_logic;
SIGNAL \R2Reg[12]~input_o\ : std_logic;
SIGNAL \R2Reg_IDEX[12]~reg0feeder_combout\ : std_logic;
SIGNAL \R2Reg_IDEX[12]~reg0_q\ : std_logic;
SIGNAL \R2Reg[13]~input_o\ : std_logic;
SIGNAL \R2Reg_IDEX[13]~reg0feeder_combout\ : std_logic;
SIGNAL \R2Reg_IDEX[13]~reg0_q\ : std_logic;
SIGNAL \R2Reg[14]~input_o\ : std_logic;
SIGNAL \R2Reg_IDEX[14]~reg0feeder_combout\ : std_logic;
SIGNAL \R2Reg_IDEX[14]~reg0_q\ : std_logic;
SIGNAL \R2Reg[15]~input_o\ : std_logic;
SIGNAL \R2Reg_IDEX[15]~reg0_q\ : std_logic;
SIGNAL \immediate16[0]~input_o\ : std_logic;
SIGNAL \immediate16_IDEX[0]~reg0feeder_combout\ : std_logic;
SIGNAL \immediate16_IDEX[0]~reg0_q\ : std_logic;
SIGNAL \immediate16[1]~input_o\ : std_logic;
SIGNAL \immediate16_IDEX[1]~reg0feeder_combout\ : std_logic;
SIGNAL \immediate16_IDEX[1]~reg0_q\ : std_logic;
SIGNAL \immediate16[2]~input_o\ : std_logic;
SIGNAL \immediate16_IDEX[2]~reg0feeder_combout\ : std_logic;
SIGNAL \immediate16_IDEX[2]~reg0_q\ : std_logic;
SIGNAL \immediate16[3]~input_o\ : std_logic;
SIGNAL \immediate16_IDEX[3]~reg0feeder_combout\ : std_logic;
SIGNAL \immediate16_IDEX[3]~reg0_q\ : std_logic;
SIGNAL \immediate16[4]~input_o\ : std_logic;
SIGNAL \immediate16_IDEX[4]~reg0feeder_combout\ : std_logic;
SIGNAL \immediate16_IDEX[4]~reg0_q\ : std_logic;
SIGNAL \immediate16[5]~input_o\ : std_logic;
SIGNAL \immediate16_IDEX[5]~reg0_q\ : std_logic;
SIGNAL \immediate16[6]~input_o\ : std_logic;
SIGNAL \immediate16_IDEX[6]~reg0feeder_combout\ : std_logic;
SIGNAL \immediate16_IDEX[6]~reg0_q\ : std_logic;
SIGNAL \immediate16[7]~input_o\ : std_logic;
SIGNAL \immediate16_IDEX[7]~reg0feeder_combout\ : std_logic;
SIGNAL \immediate16_IDEX[7]~reg0_q\ : std_logic;
SIGNAL \immediate16[8]~input_o\ : std_logic;
SIGNAL \immediate16_IDEX[8]~reg0feeder_combout\ : std_logic;
SIGNAL \immediate16_IDEX[8]~reg0_q\ : std_logic;
SIGNAL \immediate16[9]~input_o\ : std_logic;
SIGNAL \immediate16_IDEX[9]~reg0_q\ : std_logic;
SIGNAL \immediate16[10]~input_o\ : std_logic;
SIGNAL \immediate16_IDEX[10]~reg0_q\ : std_logic;
SIGNAL \immediate16[11]~input_o\ : std_logic;
SIGNAL \immediate16_IDEX[11]~reg0_q\ : std_logic;
SIGNAL \immediate16[12]~input_o\ : std_logic;
SIGNAL \immediate16_IDEX[12]~reg0feeder_combout\ : std_logic;
SIGNAL \immediate16_IDEX[12]~reg0_q\ : std_logic;
SIGNAL \immediate16[13]~input_o\ : std_logic;
SIGNAL \immediate16_IDEX[13]~reg0_q\ : std_logic;
SIGNAL \immediate16[14]~input_o\ : std_logic;
SIGNAL \immediate16_IDEX[14]~reg0feeder_combout\ : std_logic;
SIGNAL \immediate16_IDEX[14]~reg0_q\ : std_logic;
SIGNAL \immediate16[15]~input_o\ : std_logic;
SIGNAL \immediate16_IDEX[15]~reg0feeder_combout\ : std_logic;
SIGNAL \immediate16_IDEX[15]~reg0_q\ : std_logic;
SIGNAL \R2AD[0]~input_o\ : std_logic;
SIGNAL \R2AD_IDEX[0]~reg0feeder_combout\ : std_logic;
SIGNAL \R2AD_IDEX[0]~reg0_q\ : std_logic;
SIGNAL \R2AD[1]~input_o\ : std_logic;
SIGNAL \R2AD_IDEX[1]~reg0_q\ : std_logic;
SIGNAL \R2AD[2]~input_o\ : std_logic;
SIGNAL \R2AD_IDEX[2]~reg0feeder_combout\ : std_logic;
SIGNAL \R2AD_IDEX[2]~reg0_q\ : std_logic;
SIGNAL \R1AD[0]~input_o\ : std_logic;
SIGNAL \R1AD_IDEX[0]~reg0feeder_combout\ : std_logic;
SIGNAL \R1AD_IDEX[0]~reg0_q\ : std_logic;
SIGNAL \R1AD[1]~input_o\ : std_logic;
SIGNAL \R1AD_IDEX[1]~reg0_q\ : std_logic;
SIGNAL \R1AD[2]~input_o\ : std_logic;
SIGNAL \R1AD_IDEX[2]~reg0feeder_combout\ : std_logic;
SIGNAL \R1AD_IDEX[2]~reg0_q\ : std_logic;
SIGNAL \jumpShortAddr[0]~input_o\ : std_logic;
SIGNAL \jumpShortAddr_IDEX[0]~reg0feeder_combout\ : std_logic;
SIGNAL \jumpShortAddr_IDEX[0]~reg0_q\ : std_logic;
SIGNAL \jumpShortAddr[1]~input_o\ : std_logic;
SIGNAL \jumpShortAddr_IDEX[1]~reg0feeder_combout\ : std_logic;
SIGNAL \jumpShortAddr_IDEX[1]~reg0_q\ : std_logic;
SIGNAL \jumpShortAddr[2]~input_o\ : std_logic;
SIGNAL \jumpShortAddr_IDEX[2]~reg0feeder_combout\ : std_logic;
SIGNAL \jumpShortAddr_IDEX[2]~reg0_q\ : std_logic;
SIGNAL \jumpShortAddr[3]~input_o\ : std_logic;
SIGNAL \jumpShortAddr_IDEX[3]~reg0feeder_combout\ : std_logic;
SIGNAL \jumpShortAddr_IDEX[3]~reg0_q\ : std_logic;
SIGNAL \jumpShortAddr[4]~input_o\ : std_logic;
SIGNAL \jumpShortAddr_IDEX[4]~reg0_q\ : std_logic;
SIGNAL \jumpShortAddr[5]~input_o\ : std_logic;
SIGNAL \jumpShortAddr_IDEX[5]~reg0_q\ : std_logic;
SIGNAL \jumpShortAddr[6]~input_o\ : std_logic;
SIGNAL \jumpShortAddr_IDEX[6]~reg0feeder_combout\ : std_logic;
SIGNAL \jumpShortAddr_IDEX[6]~reg0_q\ : std_logic;
SIGNAL \jumpShortAddr[7]~input_o\ : std_logic;
SIGNAL \jumpShortAddr_IDEX[7]~reg0feeder_combout\ : std_logic;
SIGNAL \jumpShortAddr_IDEX[7]~reg0_q\ : std_logic;
SIGNAL \jumpShortAddr[8]~input_o\ : std_logic;
SIGNAL \jumpShortAddr_IDEX[8]~reg0feeder_combout\ : std_logic;
SIGNAL \jumpShortAddr_IDEX[8]~reg0_q\ : std_logic;
SIGNAL \jumpShortAddr[9]~input_o\ : std_logic;
SIGNAL \jumpShortAddr_IDEX[9]~reg0feeder_combout\ : std_logic;
SIGNAL \jumpShortAddr_IDEX[9]~reg0_q\ : std_logic;
SIGNAL \jumpShortAddr[10]~input_o\ : std_logic;
SIGNAL \jumpShortAddr_IDEX[10]~reg0feeder_combout\ : std_logic;
SIGNAL \jumpShortAddr_IDEX[10]~reg0_q\ : std_logic;
SIGNAL \jumpShortAddr[11]~input_o\ : std_logic;
SIGNAL \jumpShortAddr_IDEX[11]~reg0feeder_combout\ : std_logic;
SIGNAL \jumpShortAddr_IDEX[11]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_jumpShortAddr[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_jumpShortAddr[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_jumpShortAddr[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_jumpShortAddr[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_jumpShortAddr[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_jumpShortAddr[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_jumpShortAddr[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_jumpShortAddr[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_jumpShortAddr[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_jumpShortAddr[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_R1AD[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_R1AD[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_R2AD[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_R2AD[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_immediate16[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_immediate16[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_immediate16[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_immediate16[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_immediate16[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_immediate16[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_immediate16[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_immediate16[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_immediate16[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_immediate16[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_immediate16[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_R2Reg[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_R2Reg[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_R2Reg[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_R2Reg[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_R2Reg[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_R2Reg[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_R2Reg[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_R2Reg[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_R2Reg[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_R2Reg[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_R2Reg[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_R2Reg[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_R1Reg[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_R1Reg[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_R1Reg[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_R1Reg[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_R1Reg[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_R1Reg[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_R1Reg[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_R1Reg[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_R1Reg[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_R1Reg[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_R1Reg[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_ALUFunc[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_ALUFunc[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_ALUFunc[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_isPrintDigit~input_o\ : std_logic;
SIGNAL \ALT_INV_isReadDigit~input_o\ : std_logic;
SIGNAL \ALT_INV_isMFPC~input_o\ : std_logic;
SIGNAL \ALT_INV_isR~input_o\ : std_logic;
SIGNAL \ALT_INV_isBranch~input_o\ : std_logic;
SIGNAL \ALT_INV_isJR~input_o\ : std_logic;
SIGNAL \ALT_INV_isJump~input_o\ : std_logic;
SIGNAL \ALT_INV_wasJumpOut~input_o\ : std_logic;
SIGNAL \ALT_INV_isEOR~input_o\ : std_logic;

BEGIN

ww_clock <= clock;
ww_isEOR <= isEOR;
ww_wasJumpOut <= wasJumpOut;
ww_isJump <= isJump;
ww_isJR <= isJR;
ww_isBranch <= isBranch;
ww_isR <= isR;
ww_isMFPC <= isMFPC;
ww_isLW <= isLW;
ww_isSW <= isSW;
ww_isReadDigit <= isReadDigit;
ww_isPrintDigit <= isPrintDigit;
ww_ALUFunc <= ALUFunc;
ww_R1Reg <= R1Reg;
ww_R2Reg <= R2Reg;
ww_immediate16 <= immediate16;
ww_R2AD <= R2AD;
ww_R1AD <= R1AD;
ww_jumpShortAddr <= jumpShortAddr;
isEOR_IDEX <= ww_isEOR_IDEX;
wasJumpOut_IDEX <= ww_wasJumpOut_IDEX;
isJump_IDEX <= ww_isJump_IDEX;
isJR_IDEX <= ww_isJR_IDEX;
isBranch_IDEX <= ww_isBranch_IDEX;
isR_IDEX <= ww_isR_IDEX;
isMFPC_IDEX <= ww_isMFPC_IDEX;
isLW_IDEX <= ww_isLW_IDEX;
isSW_IDEX <= ww_isSW_IDEX;
isReadDigit_IDEX <= ww_isReadDigit_IDEX;
isPrintDigit_IDEX <= ww_isPrintDigit_IDEX;
ALUFunc_IDEX <= ww_ALUFunc_IDEX;
R1Reg_IDEX <= ww_R1Reg_IDEX;
R2Reg_IDEX <= ww_R2Reg_IDEX;
immediate16_IDEX <= ww_immediate16_IDEX;
R2AD_IDEX <= ww_R2AD_IDEX;
R1AD_IDEX <= ww_R1AD_IDEX;
jumpShortAddr_IDEX <= ww_jumpShortAddr_IDEX;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_jumpShortAddr[11]~input_o\ <= NOT \jumpShortAddr[11]~input_o\;
\ALT_INV_jumpShortAddr[10]~input_o\ <= NOT \jumpShortAddr[10]~input_o\;
\ALT_INV_jumpShortAddr[9]~input_o\ <= NOT \jumpShortAddr[9]~input_o\;
\ALT_INV_jumpShortAddr[8]~input_o\ <= NOT \jumpShortAddr[8]~input_o\;
\ALT_INV_jumpShortAddr[7]~input_o\ <= NOT \jumpShortAddr[7]~input_o\;
\ALT_INV_jumpShortAddr[6]~input_o\ <= NOT \jumpShortAddr[6]~input_o\;
\ALT_INV_jumpShortAddr[3]~input_o\ <= NOT \jumpShortAddr[3]~input_o\;
\ALT_INV_jumpShortAddr[2]~input_o\ <= NOT \jumpShortAddr[2]~input_o\;
\ALT_INV_jumpShortAddr[1]~input_o\ <= NOT \jumpShortAddr[1]~input_o\;
\ALT_INV_jumpShortAddr[0]~input_o\ <= NOT \jumpShortAddr[0]~input_o\;
\ALT_INV_R1AD[2]~input_o\ <= NOT \R1AD[2]~input_o\;
\ALT_INV_R1AD[0]~input_o\ <= NOT \R1AD[0]~input_o\;
\ALT_INV_R2AD[2]~input_o\ <= NOT \R2AD[2]~input_o\;
\ALT_INV_R2AD[0]~input_o\ <= NOT \R2AD[0]~input_o\;
\ALT_INV_immediate16[15]~input_o\ <= NOT \immediate16[15]~input_o\;
\ALT_INV_immediate16[14]~input_o\ <= NOT \immediate16[14]~input_o\;
\ALT_INV_immediate16[12]~input_o\ <= NOT \immediate16[12]~input_o\;
\ALT_INV_immediate16[8]~input_o\ <= NOT \immediate16[8]~input_o\;
\ALT_INV_immediate16[7]~input_o\ <= NOT \immediate16[7]~input_o\;
\ALT_INV_immediate16[6]~input_o\ <= NOT \immediate16[6]~input_o\;
\ALT_INV_immediate16[4]~input_o\ <= NOT \immediate16[4]~input_o\;
\ALT_INV_immediate16[3]~input_o\ <= NOT \immediate16[3]~input_o\;
\ALT_INV_immediate16[2]~input_o\ <= NOT \immediate16[2]~input_o\;
\ALT_INV_immediate16[1]~input_o\ <= NOT \immediate16[1]~input_o\;
\ALT_INV_immediate16[0]~input_o\ <= NOT \immediate16[0]~input_o\;
\ALT_INV_R2Reg[14]~input_o\ <= NOT \R2Reg[14]~input_o\;
\ALT_INV_R2Reg[13]~input_o\ <= NOT \R2Reg[13]~input_o\;
\ALT_INV_R2Reg[12]~input_o\ <= NOT \R2Reg[12]~input_o\;
\ALT_INV_R2Reg[11]~input_o\ <= NOT \R2Reg[11]~input_o\;
\ALT_INV_R2Reg[9]~input_o\ <= NOT \R2Reg[9]~input_o\;
\ALT_INV_R2Reg[8]~input_o\ <= NOT \R2Reg[8]~input_o\;
\ALT_INV_R2Reg[7]~input_o\ <= NOT \R2Reg[7]~input_o\;
\ALT_INV_R2Reg[6]~input_o\ <= NOT \R2Reg[6]~input_o\;
\ALT_INV_R2Reg[5]~input_o\ <= NOT \R2Reg[5]~input_o\;
\ALT_INV_R2Reg[3]~input_o\ <= NOT \R2Reg[3]~input_o\;
\ALT_INV_R2Reg[2]~input_o\ <= NOT \R2Reg[2]~input_o\;
\ALT_INV_R2Reg[1]~input_o\ <= NOT \R2Reg[1]~input_o\;
\ALT_INV_R1Reg[14]~input_o\ <= NOT \R1Reg[14]~input_o\;
\ALT_INV_R1Reg[13]~input_o\ <= NOT \R1Reg[13]~input_o\;
\ALT_INV_R1Reg[11]~input_o\ <= NOT \R1Reg[11]~input_o\;
\ALT_INV_R1Reg[10]~input_o\ <= NOT \R1Reg[10]~input_o\;
\ALT_INV_R1Reg[9]~input_o\ <= NOT \R1Reg[9]~input_o\;
\ALT_INV_R1Reg[8]~input_o\ <= NOT \R1Reg[8]~input_o\;
\ALT_INV_R1Reg[7]~input_o\ <= NOT \R1Reg[7]~input_o\;
\ALT_INV_R1Reg[6]~input_o\ <= NOT \R1Reg[6]~input_o\;
\ALT_INV_R1Reg[5]~input_o\ <= NOT \R1Reg[5]~input_o\;
\ALT_INV_R1Reg[3]~input_o\ <= NOT \R1Reg[3]~input_o\;
\ALT_INV_R1Reg[1]~input_o\ <= NOT \R1Reg[1]~input_o\;
\ALT_INV_ALUFunc[2]~input_o\ <= NOT \ALUFunc[2]~input_o\;
\ALT_INV_ALUFunc[1]~input_o\ <= NOT \ALUFunc[1]~input_o\;
\ALT_INV_ALUFunc[0]~input_o\ <= NOT \ALUFunc[0]~input_o\;
\ALT_INV_isPrintDigit~input_o\ <= NOT \isPrintDigit~input_o\;
\ALT_INV_isReadDigit~input_o\ <= NOT \isReadDigit~input_o\;
\ALT_INV_isMFPC~input_o\ <= NOT \isMFPC~input_o\;
\ALT_INV_isR~input_o\ <= NOT \isR~input_o\;
\ALT_INV_isBranch~input_o\ <= NOT \isBranch~input_o\;
\ALT_INV_isJR~input_o\ <= NOT \isJR~input_o\;
\ALT_INV_isJump~input_o\ <= NOT \isJump~input_o\;
\ALT_INV_wasJumpOut~input_o\ <= NOT \wasJumpOut~input_o\;
\ALT_INV_isEOR~input_o\ <= NOT \isEOR~input_o\;

-- Location: IOOBUF_X32_Y81_N36
\isEOR_IDEX~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \isEOR_IDEX~reg0_q\,
	devoe => ww_devoe,
	o => ww_isEOR_IDEX);

-- Location: IOOBUF_X66_Y0_N93
\wasJumpOut_IDEX~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \wasJumpOut_IDEX~reg0_q\,
	devoe => ww_devoe,
	o => ww_wasJumpOut_IDEX);

-- Location: IOOBUF_X84_Y81_N19
\isJump_IDEX~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \isJump_IDEX~reg0_q\,
	devoe => ww_devoe,
	o => ww_isJump_IDEX);

-- Location: IOOBUF_X89_Y6_N39
\isJR_IDEX~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \isJR_IDEX~reg0_q\,
	devoe => ww_devoe,
	o => ww_isJR_IDEX);

-- Location: IOOBUF_X30_Y81_N53
\isBranch_IDEX~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \isBranch_IDEX~reg0_q\,
	devoe => ww_devoe,
	o => ww_isBranch_IDEX);

-- Location: IOOBUF_X70_Y81_N53
\isR_IDEX~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \isR_IDEX~reg0_q\,
	devoe => ww_devoe,
	o => ww_isR_IDEX);

-- Location: IOOBUF_X26_Y0_N93
\isMFPC_IDEX~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \isMFPC_IDEX~reg0_q\,
	devoe => ww_devoe,
	o => ww_isMFPC_IDEX);

-- Location: IOOBUF_X40_Y0_N19
\isLW_IDEX~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \isLW_IDEX~reg0_q\,
	devoe => ww_devoe,
	o => ww_isLW_IDEX);

-- Location: IOOBUF_X34_Y0_N59
\isSW_IDEX~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \isSW_IDEX~reg0_q\,
	devoe => ww_devoe,
	o => ww_isSW_IDEX);

-- Location: IOOBUF_X89_Y6_N56
\isReadDigit_IDEX~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \isReadDigit_IDEX~reg0_q\,
	devoe => ww_devoe,
	o => ww_isReadDigit_IDEX);

-- Location: IOOBUF_X89_Y4_N96
\isPrintDigit_IDEX~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \isPrintDigit_IDEX~reg0_q\,
	devoe => ww_devoe,
	o => ww_isPrintDigit_IDEX);

-- Location: IOOBUF_X52_Y0_N2
\ALUFunc_IDEX[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALUFunc_IDEX[0]~reg0_q\,
	devoe => ww_devoe,
	o => ww_ALUFunc_IDEX(0));

-- Location: IOOBUF_X70_Y0_N53
\ALUFunc_IDEX[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALUFunc_IDEX[1]~reg0_q\,
	devoe => ww_devoe,
	o => ww_ALUFunc_IDEX(1));

-- Location: IOOBUF_X34_Y81_N76
\ALUFunc_IDEX[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALUFunc_IDEX[2]~reg0_q\,
	devoe => ww_devoe,
	o => ww_ALUFunc_IDEX(2));

-- Location: IOOBUF_X26_Y81_N59
\ALUFunc_IDEX[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALUFunc_IDEX[3]~reg0_q\,
	devoe => ww_devoe,
	o => ww_ALUFunc_IDEX(3));

-- Location: IOOBUF_X74_Y81_N59
\R1Reg_IDEX[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \R1Reg_IDEX[0]~reg0_q\,
	devoe => ww_devoe,
	o => ww_R1Reg_IDEX(0));

-- Location: IOOBUF_X32_Y0_N2
\R1Reg_IDEX[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \R1Reg_IDEX[1]~reg0_q\,
	devoe => ww_devoe,
	o => ww_R1Reg_IDEX(1));

-- Location: IOOBUF_X60_Y81_N19
\R1Reg_IDEX[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \R1Reg_IDEX[2]~reg0_q\,
	devoe => ww_devoe,
	o => ww_R1Reg_IDEX(2));

-- Location: IOOBUF_X4_Y0_N19
\R1Reg_IDEX[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \R1Reg_IDEX[3]~reg0_q\,
	devoe => ww_devoe,
	o => ww_R1Reg_IDEX(3));

-- Location: IOOBUF_X52_Y0_N19
\R1Reg_IDEX[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \R1Reg_IDEX[4]~reg0_q\,
	devoe => ww_devoe,
	o => ww_R1Reg_IDEX(4));

-- Location: IOOBUF_X56_Y81_N53
\R1Reg_IDEX[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \R1Reg_IDEX[5]~reg0_q\,
	devoe => ww_devoe,
	o => ww_R1Reg_IDEX(5));

-- Location: IOOBUF_X38_Y81_N19
\R1Reg_IDEX[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \R1Reg_IDEX[6]~reg0_q\,
	devoe => ww_devoe,
	o => ww_R1Reg_IDEX(6));

-- Location: IOOBUF_X38_Y81_N36
\R1Reg_IDEX[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \R1Reg_IDEX[7]~reg0_q\,
	devoe => ww_devoe,
	o => ww_R1Reg_IDEX(7));

-- Location: IOOBUF_X68_Y0_N19
\R1Reg_IDEX[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \R1Reg_IDEX[8]~reg0_q\,
	devoe => ww_devoe,
	o => ww_R1Reg_IDEX(8));

-- Location: IOOBUF_X66_Y81_N93
\R1Reg_IDEX[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \R1Reg_IDEX[9]~reg0_q\,
	devoe => ww_devoe,
	o => ww_R1Reg_IDEX(9));

-- Location: IOOBUF_X89_Y37_N56
\R1Reg_IDEX[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \R1Reg_IDEX[10]~reg0_q\,
	devoe => ww_devoe,
	o => ww_R1Reg_IDEX(10));

-- Location: IOOBUF_X62_Y0_N2
\R1Reg_IDEX[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \R1Reg_IDEX[11]~reg0_q\,
	devoe => ww_devoe,
	o => ww_R1Reg_IDEX(11));

-- Location: IOOBUF_X64_Y81_N36
\R1Reg_IDEX[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \R1Reg_IDEX[12]~reg0_q\,
	devoe => ww_devoe,
	o => ww_R1Reg_IDEX(12));

-- Location: IOOBUF_X40_Y0_N53
\R1Reg_IDEX[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \R1Reg_IDEX[13]~reg0_q\,
	devoe => ww_devoe,
	o => ww_R1Reg_IDEX(13));

-- Location: IOOBUF_X89_Y4_N62
\R1Reg_IDEX[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \R1Reg_IDEX[14]~reg0_q\,
	devoe => ww_devoe,
	o => ww_R1Reg_IDEX(14));

-- Location: IOOBUF_X34_Y81_N93
\R1Reg_IDEX[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \R1Reg_IDEX[15]~reg0_q\,
	devoe => ww_devoe,
	o => ww_R1Reg_IDEX(15));

-- Location: IOOBUF_X38_Y81_N53
\R2Reg_IDEX[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \R2Reg_IDEX[0]~reg0_q\,
	devoe => ww_devoe,
	o => ww_R2Reg_IDEX(0));

-- Location: IOOBUF_X68_Y0_N2
\R2Reg_IDEX[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \R2Reg_IDEX[1]~reg0_q\,
	devoe => ww_devoe,
	o => ww_R2Reg_IDEX(1));

-- Location: IOOBUF_X56_Y0_N53
\R2Reg_IDEX[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \R2Reg_IDEX[2]~reg0_q\,
	devoe => ww_devoe,
	o => ww_R2Reg_IDEX(2));

-- Location: IOOBUF_X52_Y0_N36
\R2Reg_IDEX[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \R2Reg_IDEX[3]~reg0_q\,
	devoe => ww_devoe,
	o => ww_R2Reg_IDEX(3));

-- Location: IOOBUF_X64_Y0_N19
\R2Reg_IDEX[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \R2Reg_IDEX[4]~reg0_q\,
	devoe => ww_devoe,
	o => ww_R2Reg_IDEX(4));

-- Location: IOOBUF_X60_Y0_N2
\R2Reg_IDEX[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \R2Reg_IDEX[5]~reg0_q\,
	devoe => ww_devoe,
	o => ww_R2Reg_IDEX(5));

-- Location: IOOBUF_X54_Y0_N36
\R2Reg_IDEX[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \R2Reg_IDEX[6]~reg0_q\,
	devoe => ww_devoe,
	o => ww_R2Reg_IDEX(6));

-- Location: IOOBUF_X72_Y81_N53
\R2Reg_IDEX[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \R2Reg_IDEX[7]~reg0_q\,
	devoe => ww_devoe,
	o => ww_R2Reg_IDEX(7));

-- Location: IOOBUF_X4_Y0_N36
\R2Reg_IDEX[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \R2Reg_IDEX[8]~reg0_q\,
	devoe => ww_devoe,
	o => ww_R2Reg_IDEX(8));

-- Location: IOOBUF_X50_Y81_N76
\R2Reg_IDEX[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \R2Reg_IDEX[9]~reg0_q\,
	devoe => ww_devoe,
	o => ww_R2Reg_IDEX(9));

-- Location: IOOBUF_X28_Y0_N2
\R2Reg_IDEX[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \R2Reg_IDEX[10]~reg0_q\,
	devoe => ww_devoe,
	o => ww_R2Reg_IDEX(10));

-- Location: IOOBUF_X36_Y0_N19
\R2Reg_IDEX[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \R2Reg_IDEX[11]~reg0_q\,
	devoe => ww_devoe,
	o => ww_R2Reg_IDEX(11));

-- Location: IOOBUF_X70_Y81_N2
\R2Reg_IDEX[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \R2Reg_IDEX[12]~reg0_q\,
	devoe => ww_devoe,
	o => ww_R2Reg_IDEX(12));

-- Location: IOOBUF_X58_Y81_N76
\R2Reg_IDEX[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \R2Reg_IDEX[13]~reg0_q\,
	devoe => ww_devoe,
	o => ww_R2Reg_IDEX(13));

-- Location: IOOBUF_X32_Y0_N53
\R2Reg_IDEX[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \R2Reg_IDEX[14]~reg0_q\,
	devoe => ww_devoe,
	o => ww_R2Reg_IDEX(14));

-- Location: IOOBUF_X52_Y81_N36
\R2Reg_IDEX[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \R2Reg_IDEX[15]~reg0_q\,
	devoe => ww_devoe,
	o => ww_R2Reg_IDEX(15));

-- Location: IOOBUF_X76_Y81_N53
\immediate16_IDEX[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \immediate16_IDEX[0]~reg0_q\,
	devoe => ww_devoe,
	o => ww_immediate16_IDEX(0));

-- Location: IOOBUF_X54_Y0_N2
\immediate16_IDEX[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \immediate16_IDEX[1]~reg0_q\,
	devoe => ww_devoe,
	o => ww_immediate16_IDEX(1));

-- Location: IOOBUF_X66_Y0_N42
\immediate16_IDEX[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \immediate16_IDEX[2]~reg0_q\,
	devoe => ww_devoe,
	o => ww_immediate16_IDEX(2));

-- Location: IOOBUF_X34_Y81_N59
\immediate16_IDEX[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \immediate16_IDEX[3]~reg0_q\,
	devoe => ww_devoe,
	o => ww_immediate16_IDEX(3));

-- Location: IOOBUF_X64_Y81_N53
\immediate16_IDEX[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \immediate16_IDEX[4]~reg0_q\,
	devoe => ww_devoe,
	o => ww_immediate16_IDEX(4));

-- Location: IOOBUF_X32_Y81_N19
\immediate16_IDEX[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \immediate16_IDEX[5]~reg0_q\,
	devoe => ww_devoe,
	o => ww_immediate16_IDEX(5));

-- Location: IOOBUF_X58_Y0_N42
\immediate16_IDEX[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \immediate16_IDEX[6]~reg0_q\,
	devoe => ww_devoe,
	o => ww_immediate16_IDEX(6));

-- Location: IOOBUF_X36_Y81_N2
\immediate16_IDEX[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \immediate16_IDEX[7]~reg0_q\,
	devoe => ww_devoe,
	o => ww_immediate16_IDEX(7));

-- Location: IOOBUF_X50_Y81_N42
\immediate16_IDEX[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \immediate16_IDEX[8]~reg0_q\,
	devoe => ww_devoe,
	o => ww_immediate16_IDEX(8));

-- Location: IOOBUF_X52_Y81_N2
\immediate16_IDEX[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \immediate16_IDEX[9]~reg0_q\,
	devoe => ww_devoe,
	o => ww_immediate16_IDEX(9));

-- Location: IOOBUF_X28_Y0_N19
\immediate16_IDEX[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \immediate16_IDEX[10]~reg0_q\,
	devoe => ww_devoe,
	o => ww_immediate16_IDEX(10));

-- Location: IOOBUF_X84_Y81_N2
\immediate16_IDEX[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \immediate16_IDEX[11]~reg0_q\,
	devoe => ww_devoe,
	o => ww_immediate16_IDEX(11));

-- Location: IOOBUF_X28_Y0_N36
\immediate16_IDEX[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \immediate16_IDEX[12]~reg0_q\,
	devoe => ww_devoe,
	o => ww_immediate16_IDEX(12));

-- Location: IOOBUF_X30_Y81_N36
\immediate16_IDEX[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \immediate16_IDEX[13]~reg0_q\,
	devoe => ww_devoe,
	o => ww_immediate16_IDEX(13));

-- Location: IOOBUF_X89_Y9_N22
\immediate16_IDEX[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \immediate16_IDEX[14]~reg0_q\,
	devoe => ww_devoe,
	o => ww_immediate16_IDEX(14));

-- Location: IOOBUF_X62_Y0_N36
\immediate16_IDEX[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \immediate16_IDEX[15]~reg0_q\,
	devoe => ww_devoe,
	o => ww_immediate16_IDEX(15));

-- Location: IOOBUF_X60_Y81_N36
\R2AD_IDEX[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \R2AD_IDEX[0]~reg0_q\,
	devoe => ww_devoe,
	o => ww_R2AD_IDEX(0));

-- Location: IOOBUF_X64_Y81_N2
\R2AD_IDEX[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \R2AD_IDEX[1]~reg0_q\,
	devoe => ww_devoe,
	o => ww_R2AD_IDEX(1));

-- Location: IOOBUF_X60_Y0_N53
\R2AD_IDEX[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \R2AD_IDEX[2]~reg0_q\,
	devoe => ww_devoe,
	o => ww_R2AD_IDEX(2));

-- Location: IOOBUF_X50_Y0_N42
\R1AD_IDEX[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \R1AD_IDEX[0]~reg0_q\,
	devoe => ww_devoe,
	o => ww_R1AD_IDEX(0));

-- Location: IOOBUF_X66_Y81_N76
\R1AD_IDEX[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \R1AD_IDEX[1]~reg0_q\,
	devoe => ww_devoe,
	o => ww_R1AD_IDEX(1));

-- Location: IOOBUF_X28_Y81_N2
\R1AD_IDEX[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \R1AD_IDEX[2]~reg0_q\,
	devoe => ww_devoe,
	o => ww_R1AD_IDEX(2));

-- Location: IOOBUF_X36_Y0_N53
\jumpShortAddr_IDEX[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \jumpShortAddr_IDEX[0]~reg0_q\,
	devoe => ww_devoe,
	o => ww_jumpShortAddr_IDEX(0));

-- Location: IOOBUF_X56_Y81_N19
\jumpShortAddr_IDEX[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \jumpShortAddr_IDEX[1]~reg0_q\,
	devoe => ww_devoe,
	o => ww_jumpShortAddr_IDEX(1));

-- Location: IOOBUF_X68_Y81_N36
\jumpShortAddr_IDEX[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \jumpShortAddr_IDEX[2]~reg0_q\,
	devoe => ww_devoe,
	o => ww_jumpShortAddr_IDEX(2));

-- Location: IOOBUF_X30_Y0_N36
\jumpShortAddr_IDEX[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \jumpShortAddr_IDEX[3]~reg0_q\,
	devoe => ww_devoe,
	o => ww_jumpShortAddr_IDEX(3));

-- Location: IOOBUF_X74_Y81_N93
\jumpShortAddr_IDEX[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \jumpShortAddr_IDEX[4]~reg0_q\,
	devoe => ww_devoe,
	o => ww_jumpShortAddr_IDEX(4));

-- Location: IOOBUF_X40_Y81_N53
\jumpShortAddr_IDEX[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \jumpShortAddr_IDEX[5]~reg0_q\,
	devoe => ww_devoe,
	o => ww_jumpShortAddr_IDEX(5));

-- Location: IOOBUF_X58_Y0_N59
\jumpShortAddr_IDEX[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \jumpShortAddr_IDEX[6]~reg0_q\,
	devoe => ww_devoe,
	o => ww_jumpShortAddr_IDEX(6));

-- Location: IOOBUF_X62_Y81_N53
\jumpShortAddr_IDEX[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \jumpShortAddr_IDEX[7]~reg0_q\,
	devoe => ww_devoe,
	o => ww_jumpShortAddr_IDEX(7));

-- Location: IOOBUF_X72_Y0_N19
\jumpShortAddr_IDEX[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \jumpShortAddr_IDEX[8]~reg0_q\,
	devoe => ww_devoe,
	o => ww_jumpShortAddr_IDEX(8));

-- Location: IOOBUF_X6_Y0_N19
\jumpShortAddr_IDEX[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \jumpShortAddr_IDEX[9]~reg0_q\,
	devoe => ww_devoe,
	o => ww_jumpShortAddr_IDEX(9));

-- Location: IOOBUF_X26_Y0_N59
\jumpShortAddr_IDEX[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \jumpShortAddr_IDEX[10]~reg0_q\,
	devoe => ww_devoe,
	o => ww_jumpShortAddr_IDEX(10));

-- Location: IOOBUF_X40_Y0_N36
\jumpShortAddr_IDEX[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \jumpShortAddr_IDEX[11]~reg0_q\,
	devoe => ww_devoe,
	o => ww_jumpShortAddr_IDEX(11));

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

-- Location: IOIBUF_X32_Y81_N52
\isEOR~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_isEOR,
	o => \isEOR~input_o\);

-- Location: LABCELL_X31_Y80_N33
\isEOR_IDEX~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \isEOR_IDEX~reg0feeder_combout\ = ( \isEOR~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_isEOR~input_o\,
	combout => \isEOR_IDEX~reg0feeder_combout\);

-- Location: FF_X31_Y80_N34
\isEOR_IDEX~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \isEOR_IDEX~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \isEOR_IDEX~reg0_q\);

-- Location: IOIBUF_X66_Y0_N75
\wasJumpOut~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wasJumpOut,
	o => \wasJumpOut~input_o\);

-- Location: LABCELL_X66_Y1_N3
\wasJumpOut_IDEX~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \wasJumpOut_IDEX~reg0feeder_combout\ = ( \wasJumpOut~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_wasJumpOut~input_o\,
	combout => \wasJumpOut_IDEX~reg0feeder_combout\);

-- Location: FF_X66_Y1_N5
\wasJumpOut_IDEX~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \wasJumpOut_IDEX~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wasJumpOut_IDEX~reg0_q\);

-- Location: IOIBUF_X84_Y81_N35
\isJump~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_isJump,
	o => \isJump~input_o\);

-- Location: MLABCELL_X84_Y80_N30
\isJump_IDEX~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \isJump_IDEX~reg0feeder_combout\ = ( \isJump~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_isJump~input_o\,
	combout => \isJump_IDEX~reg0feeder_combout\);

-- Location: FF_X84_Y80_N31
\isJump_IDEX~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \isJump_IDEX~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \isJump_IDEX~reg0_q\);

-- Location: IOIBUF_X89_Y6_N21
\isJR~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_isJR,
	o => \isJR~input_o\);

-- Location: LABCELL_X88_Y6_N30
\isJR_IDEX~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \isJR_IDEX~reg0feeder_combout\ = ( \isJR~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_isJR~input_o\,
	combout => \isJR_IDEX~reg0feeder_combout\);

-- Location: FF_X88_Y6_N31
\isJR_IDEX~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \isJR_IDEX~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \isJR_IDEX~reg0_q\);

-- Location: IOIBUF_X30_Y81_N18
\isBranch~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_isBranch,
	o => \isBranch~input_o\);

-- Location: LABCELL_X30_Y80_N0
\isBranch_IDEX~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \isBranch_IDEX~reg0feeder_combout\ = ( \isBranch~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_isBranch~input_o\,
	combout => \isBranch_IDEX~reg0feeder_combout\);

-- Location: FF_X30_Y80_N2
\isBranch_IDEX~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \isBranch_IDEX~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \isBranch_IDEX~reg0_q\);

-- Location: IOIBUF_X72_Y81_N1
\isR~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_isR,
	o => \isR~input_o\);

-- Location: MLABCELL_X72_Y80_N33
\isR_IDEX~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \isR_IDEX~reg0feeder_combout\ = ( \isR~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_isR~input_o\,
	combout => \isR_IDEX~reg0feeder_combout\);

-- Location: FF_X72_Y80_N34
\isR_IDEX~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \isR_IDEX~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \isR_IDEX~reg0_q\);

-- Location: IOIBUF_X26_Y0_N75
\isMFPC~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_isMFPC,
	o => \isMFPC~input_o\);

-- Location: MLABCELL_X25_Y1_N0
\isMFPC_IDEX~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \isMFPC_IDEX~reg0feeder_combout\ = ( \isMFPC~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_isMFPC~input_o\,
	combout => \isMFPC_IDEX~reg0feeder_combout\);

-- Location: FF_X25_Y1_N1
\isMFPC_IDEX~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \isMFPC_IDEX~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \isMFPC_IDEX~reg0_q\);

-- Location: IOIBUF_X38_Y0_N35
\isLW~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_isLW,
	o => \isLW~input_o\);

-- Location: FF_X40_Y1_N35
\isLW_IDEX~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \isLW~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \isLW_IDEX~reg0_q\);

-- Location: IOIBUF_X34_Y0_N41
\isSW~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_isSW,
	o => \isSW~input_o\);

-- Location: FF_X34_Y1_N1
\isSW_IDEX~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \isSW~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \isSW_IDEX~reg0_q\);

-- Location: IOIBUF_X89_Y6_N4
\isReadDigit~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_isReadDigit,
	o => \isReadDigit~input_o\);

-- Location: LABCELL_X88_Y6_N9
\isReadDigit_IDEX~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \isReadDigit_IDEX~reg0feeder_combout\ = ( \isReadDigit~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_isReadDigit~input_o\,
	combout => \isReadDigit_IDEX~reg0feeder_combout\);

-- Location: FF_X88_Y6_N10
\isReadDigit_IDEX~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \isReadDigit_IDEX~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \isReadDigit_IDEX~reg0_q\);

-- Location: IOIBUF_X89_Y4_N78
\isPrintDigit~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_isPrintDigit,
	o => \isPrintDigit~input_o\);

-- Location: LABCELL_X88_Y4_N0
\isPrintDigit_IDEX~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \isPrintDigit_IDEX~reg0feeder_combout\ = ( \isPrintDigit~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_isPrintDigit~input_o\,
	combout => \isPrintDigit_IDEX~reg0feeder_combout\);

-- Location: FF_X88_Y4_N1
\isPrintDigit_IDEX~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \isPrintDigit_IDEX~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \isPrintDigit_IDEX~reg0_q\);

-- Location: IOIBUF_X40_Y0_N1
\ALUFunc[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALUFunc(0),
	o => \ALUFunc[0]~input_o\);

-- Location: LABCELL_X50_Y1_N33
\ALUFunc_IDEX[0]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALUFunc_IDEX[0]~reg0feeder_combout\ = ( \ALUFunc[0]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_ALUFunc[0]~input_o\,
	combout => \ALUFunc_IDEX[0]~reg0feeder_combout\);

-- Location: FF_X50_Y1_N34
\ALUFunc_IDEX[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \ALUFunc_IDEX[0]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALUFunc_IDEX[0]~reg0_q\);

-- Location: IOIBUF_X72_Y0_N1
\ALUFunc[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALUFunc(1),
	o => \ALUFunc[1]~input_o\);

-- Location: MLABCELL_X72_Y1_N33
\ALUFunc_IDEX[1]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALUFunc_IDEX[1]~reg0feeder_combout\ = ( \ALUFunc[1]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_ALUFunc[1]~input_o\,
	combout => \ALUFunc_IDEX[1]~reg0feeder_combout\);

-- Location: FF_X72_Y1_N34
\ALUFunc_IDEX[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \ALUFunc_IDEX[1]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALUFunc_IDEX[1]~reg0_q\);

-- Location: IOIBUF_X36_Y81_N35
\ALUFunc[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALUFunc(2),
	o => \ALUFunc[2]~input_o\);

-- Location: MLABCELL_X34_Y80_N3
\ALUFunc_IDEX[2]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALUFunc_IDEX[2]~reg0feeder_combout\ = ( \ALUFunc[2]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_ALUFunc[2]~input_o\,
	combout => \ALUFunc_IDEX[2]~reg0feeder_combout\);

-- Location: FF_X34_Y80_N4
\ALUFunc_IDEX[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \ALUFunc_IDEX[2]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALUFunc_IDEX[2]~reg0_q\);

-- Location: IOIBUF_X26_Y81_N75
\ALUFunc[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALUFunc(3),
	o => \ALUFunc[3]~input_o\);

-- Location: FF_X27_Y80_N35
\ALUFunc_IDEX[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \ALUFunc[3]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALUFunc_IDEX[3]~reg0_q\);

-- Location: IOIBUF_X70_Y81_N35
\R1Reg[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_R1Reg(0),
	o => \R1Reg[0]~input_o\);

-- Location: FF_X71_Y80_N31
\R1Reg_IDEX[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \R1Reg[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R1Reg_IDEX[0]~reg0_q\);

-- Location: IOIBUF_X30_Y0_N1
\R1Reg[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_R1Reg(1),
	o => \R1Reg[1]~input_o\);

-- Location: LABCELL_X30_Y1_N0
\R1Reg_IDEX[1]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \R1Reg_IDEX[1]~reg0feeder_combout\ = ( \R1Reg[1]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_R1Reg[1]~input_o\,
	combout => \R1Reg_IDEX[1]~reg0feeder_combout\);

-- Location: FF_X30_Y1_N1
\R1Reg_IDEX[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \R1Reg_IDEX[1]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R1Reg_IDEX[1]~reg0_q\);

-- Location: IOIBUF_X62_Y81_N35
\R1Reg[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_R1Reg(2),
	o => \R1Reg[2]~input_o\);

-- Location: FF_X62_Y80_N1
\R1Reg_IDEX[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \R1Reg[2]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R1Reg_IDEX[2]~reg0_q\);

-- Location: IOIBUF_X2_Y0_N92
\R1Reg[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_R1Reg(3),
	o => \R1Reg[3]~input_o\);

-- Location: MLABCELL_X3_Y1_N33
\R1Reg_IDEX[3]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \R1Reg_IDEX[3]~reg0feeder_combout\ = ( \R1Reg[3]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_R1Reg[3]~input_o\,
	combout => \R1Reg_IDEX[3]~reg0feeder_combout\);

-- Location: FF_X3_Y1_N34
\R1Reg_IDEX[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \R1Reg_IDEX[3]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R1Reg_IDEX[3]~reg0_q\);

-- Location: IOIBUF_X50_Y0_N92
\R1Reg[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_R1Reg(4),
	o => \R1Reg[4]~input_o\);

-- Location: FF_X50_Y1_N10
\R1Reg_IDEX[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \R1Reg[4]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R1Reg_IDEX[4]~reg0_q\);

-- Location: IOIBUF_X56_Y81_N1
\R1Reg[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_R1Reg(5),
	o => \R1Reg[5]~input_o\);

-- Location: LABCELL_X56_Y80_N3
\R1Reg_IDEX[5]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \R1Reg_IDEX[5]~reg0feeder_combout\ = ( \R1Reg[5]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_R1Reg[5]~input_o\,
	combout => \R1Reg_IDEX[5]~reg0feeder_combout\);

-- Location: FF_X56_Y80_N5
\R1Reg_IDEX[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \R1Reg_IDEX[5]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R1Reg_IDEX[5]~reg0_q\);

-- Location: IOIBUF_X40_Y81_N18
\R1Reg[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_R1Reg(6),
	o => \R1Reg[6]~input_o\);

-- Location: LABCELL_X40_Y80_N33
\R1Reg_IDEX[6]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \R1Reg_IDEX[6]~reg0feeder_combout\ = ( \R1Reg[6]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_R1Reg[6]~input_o\,
	combout => \R1Reg_IDEX[6]~reg0feeder_combout\);

-- Location: FF_X40_Y80_N34
\R1Reg_IDEX[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \R1Reg_IDEX[6]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R1Reg_IDEX[6]~reg0_q\);

-- Location: IOIBUF_X40_Y81_N1
\R1Reg[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_R1Reg(7),
	o => \R1Reg[7]~input_o\);

-- Location: LABCELL_X40_Y80_N6
\R1Reg_IDEX[7]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \R1Reg_IDEX[7]~reg0feeder_combout\ = ( \R1Reg[7]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_R1Reg[7]~input_o\,
	combout => \R1Reg_IDEX[7]~reg0feeder_combout\);

-- Location: FF_X40_Y80_N7
\R1Reg_IDEX[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \R1Reg_IDEX[7]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R1Reg_IDEX[7]~reg0_q\);

-- Location: IOIBUF_X70_Y0_N18
\R1Reg[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_R1Reg(8),
	o => \R1Reg[8]~input_o\);

-- Location: LABCELL_X70_Y1_N30
\R1Reg_IDEX[8]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \R1Reg_IDEX[8]~reg0feeder_combout\ = ( \R1Reg[8]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_R1Reg[8]~input_o\,
	combout => \R1Reg_IDEX[8]~reg0feeder_combout\);

-- Location: FF_X70_Y1_N31
\R1Reg_IDEX[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \R1Reg_IDEX[8]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R1Reg_IDEX[8]~reg0_q\);

-- Location: IOIBUF_X66_Y81_N41
\R1Reg[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_R1Reg(9),
	o => \R1Reg[9]~input_o\);

-- Location: LABCELL_X66_Y80_N3
\R1Reg_IDEX[9]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \R1Reg_IDEX[9]~reg0feeder_combout\ = ( \R1Reg[9]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_R1Reg[9]~input_o\,
	combout => \R1Reg_IDEX[9]~reg0feeder_combout\);

-- Location: FF_X66_Y80_N5
\R1Reg_IDEX[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \R1Reg_IDEX[9]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R1Reg_IDEX[9]~reg0_q\);

-- Location: IOIBUF_X89_Y37_N21
\R1Reg[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_R1Reg(10),
	o => \R1Reg[10]~input_o\);

-- Location: LABCELL_X88_Y37_N33
\R1Reg_IDEX[10]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \R1Reg_IDEX[10]~reg0feeder_combout\ = ( \R1Reg[10]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_R1Reg[10]~input_o\,
	combout => \R1Reg_IDEX[10]~reg0feeder_combout\);

-- Location: FF_X88_Y37_N34
\R1Reg_IDEX[10]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \R1Reg_IDEX[10]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R1Reg_IDEX[10]~reg0_q\);

-- Location: IOIBUF_X64_Y0_N1
\R1Reg[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_R1Reg(11),
	o => \R1Reg[11]~input_o\);

-- Location: LABCELL_X64_Y1_N33
\R1Reg_IDEX[11]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \R1Reg_IDEX[11]~reg0feeder_combout\ = ( \R1Reg[11]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_R1Reg[11]~input_o\,
	combout => \R1Reg_IDEX[11]~reg0feeder_combout\);

-- Location: FF_X64_Y1_N34
\R1Reg_IDEX[11]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \R1Reg_IDEX[11]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R1Reg_IDEX[11]~reg0_q\);

-- Location: IOIBUF_X64_Y81_N18
\R1Reg[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_R1Reg(12),
	o => \R1Reg[12]~input_o\);

-- Location: FF_X64_Y80_N2
\R1Reg_IDEX[12]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \R1Reg[12]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R1Reg_IDEX[12]~reg0_q\);

-- Location: IOIBUF_X38_Y0_N52
\R1Reg[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_R1Reg(13),
	o => \R1Reg[13]~input_o\);

-- Location: LABCELL_X40_Y1_N36
\R1Reg_IDEX[13]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \R1Reg_IDEX[13]~reg0feeder_combout\ = ( \R1Reg[13]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_R1Reg[13]~input_o\,
	combout => \R1Reg_IDEX[13]~reg0feeder_combout\);

-- Location: FF_X40_Y1_N37
\R1Reg_IDEX[13]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \R1Reg_IDEX[13]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R1Reg_IDEX[13]~reg0_q\);

-- Location: IOIBUF_X89_Y8_N21
\R1Reg[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_R1Reg(14),
	o => \R1Reg[14]~input_o\);

-- Location: LABCELL_X88_Y8_N0
\R1Reg_IDEX[14]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \R1Reg_IDEX[14]~reg0feeder_combout\ = ( \R1Reg[14]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_R1Reg[14]~input_o\,
	combout => \R1Reg_IDEX[14]~reg0feeder_combout\);

-- Location: FF_X88_Y8_N1
\R1Reg_IDEX[14]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \R1Reg_IDEX[14]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R1Reg_IDEX[14]~reg0_q\);

-- Location: IOIBUF_X36_Y81_N52
\R1Reg[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_R1Reg(15),
	o => \R1Reg[15]~input_o\);

-- Location: FF_X34_Y80_N11
\R1Reg_IDEX[15]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \R1Reg[15]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R1Reg_IDEX[15]~reg0_q\);

-- Location: IOIBUF_X38_Y81_N1
\R2Reg[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_R2Reg(0),
	o => \R2Reg[0]~input_o\);

-- Location: FF_X37_Y80_N32
\R2Reg_IDEX[0]~reg0\ : dffeas
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
	q => \R2Reg_IDEX[0]~reg0_q\);

-- Location: IOIBUF_X68_Y0_N35
\R2Reg[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_R2Reg(1),
	o => \R2Reg[1]~input_o\);

-- Location: LABCELL_X68_Y1_N0
\R2Reg_IDEX[1]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \R2Reg_IDEX[1]~reg0feeder_combout\ = ( \R2Reg[1]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_R2Reg[1]~input_o\,
	combout => \R2Reg_IDEX[1]~reg0feeder_combout\);

-- Location: FF_X68_Y1_N1
\R2Reg_IDEX[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \R2Reg_IDEX[1]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R2Reg_IDEX[1]~reg0_q\);

-- Location: IOIBUF_X56_Y0_N1
\R2Reg[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_R2Reg(2),
	o => \R2Reg[2]~input_o\);

-- Location: LABCELL_X56_Y1_N30
\R2Reg_IDEX[2]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \R2Reg_IDEX[2]~reg0feeder_combout\ = ( \R2Reg[2]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_R2Reg[2]~input_o\,
	combout => \R2Reg_IDEX[2]~reg0feeder_combout\);

-- Location: FF_X56_Y1_N32
\R2Reg_IDEX[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \R2Reg_IDEX[2]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R2Reg_IDEX[2]~reg0_q\);

-- Location: IOIBUF_X54_Y0_N18
\R2Reg[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_R2Reg(3),
	o => \R2Reg[3]~input_o\);

-- Location: LABCELL_X53_Y1_N30
\R2Reg_IDEX[3]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \R2Reg_IDEX[3]~reg0feeder_combout\ = ( \R2Reg[3]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_R2Reg[3]~input_o\,
	combout => \R2Reg_IDEX[3]~reg0feeder_combout\);

-- Location: FF_X53_Y1_N32
\R2Reg_IDEX[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \R2Reg_IDEX[3]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R2Reg_IDEX[3]~reg0_q\);

-- Location: IOIBUF_X64_Y0_N35
\R2Reg[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_R2Reg(4),
	o => \R2Reg[4]~input_o\);

-- Location: FF_X64_Y1_N7
\R2Reg_IDEX[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \R2Reg[4]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R2Reg_IDEX[4]~reg0_q\);

-- Location: IOIBUF_X60_Y0_N35
\R2Reg[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_R2Reg(5),
	o => \R2Reg[5]~input_o\);

-- Location: LABCELL_X60_Y1_N33
\R2Reg_IDEX[5]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \R2Reg_IDEX[5]~reg0feeder_combout\ = ( \R2Reg[5]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_R2Reg[5]~input_o\,
	combout => \R2Reg_IDEX[5]~reg0feeder_combout\);

-- Location: FF_X60_Y1_N35
\R2Reg_IDEX[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \R2Reg_IDEX[5]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R2Reg_IDEX[5]~reg0_q\);

-- Location: IOIBUF_X52_Y0_N52
\R2Reg[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_R2Reg(6),
	o => \R2Reg[6]~input_o\);

-- Location: LABCELL_X53_Y1_N6
\R2Reg_IDEX[6]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \R2Reg_IDEX[6]~reg0feeder_combout\ = ( \R2Reg[6]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_R2Reg[6]~input_o\,
	combout => \R2Reg_IDEX[6]~reg0feeder_combout\);

-- Location: FF_X53_Y1_N7
\R2Reg_IDEX[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \R2Reg_IDEX[6]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R2Reg_IDEX[6]~reg0_q\);

-- Location: IOIBUF_X72_Y81_N35
\R2Reg[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_R2Reg(7),
	o => \R2Reg[7]~input_o\);

-- Location: MLABCELL_X72_Y80_N9
\R2Reg_IDEX[7]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \R2Reg_IDEX[7]~reg0feeder_combout\ = ( \R2Reg[7]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_R2Reg[7]~input_o\,
	combout => \R2Reg_IDEX[7]~reg0feeder_combout\);

-- Location: FF_X72_Y80_N11
\R2Reg_IDEX[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \R2Reg_IDEX[7]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R2Reg_IDEX[7]~reg0_q\);

-- Location: IOIBUF_X6_Y0_N52
\R2Reg[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_R2Reg(8),
	o => \R2Reg[8]~input_o\);

-- Location: MLABCELL_X6_Y1_N30
\R2Reg_IDEX[8]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \R2Reg_IDEX[8]~reg0feeder_combout\ = ( \R2Reg[8]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_R2Reg[8]~input_o\,
	combout => \R2Reg_IDEX[8]~reg0feeder_combout\);

-- Location: FF_X6_Y1_N32
\R2Reg_IDEX[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \R2Reg_IDEX[8]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R2Reg_IDEX[8]~reg0_q\);

-- Location: IOIBUF_X52_Y81_N52
\R2Reg[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_R2Reg(9),
	o => \R2Reg[9]~input_o\);

-- Location: LABCELL_X50_Y80_N33
\R2Reg_IDEX[9]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \R2Reg_IDEX[9]~reg0feeder_combout\ = ( \R2Reg[9]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_R2Reg[9]~input_o\,
	combout => \R2Reg_IDEX[9]~reg0feeder_combout\);

-- Location: FF_X50_Y80_N34
\R2Reg_IDEX[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \R2Reg_IDEX[9]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R2Reg_IDEX[9]~reg0_q\);

-- Location: IOIBUF_X28_Y81_N35
\R2Reg[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_R2Reg(10),
	o => \R2Reg[10]~input_o\);

-- Location: FF_X28_Y1_N1
\R2Reg_IDEX[10]~reg0\ : dffeas
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
	q => \R2Reg_IDEX[10]~reg0_q\);

-- Location: IOIBUF_X36_Y0_N1
\R2Reg[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_R2Reg(11),
	o => \R2Reg[11]~input_o\);

-- Location: LABCELL_X36_Y1_N33
\R2Reg_IDEX[11]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \R2Reg_IDEX[11]~reg0feeder_combout\ = ( \R2Reg[11]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_R2Reg[11]~input_o\,
	combout => \R2Reg_IDEX[11]~reg0feeder_combout\);

-- Location: FF_X36_Y1_N35
\R2Reg_IDEX[11]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \R2Reg_IDEX[11]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R2Reg_IDEX[11]~reg0_q\);

-- Location: IOIBUF_X66_Y81_N58
\R2Reg[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_R2Reg(12),
	o => \R2Reg[12]~input_o\);

-- Location: LABCELL_X70_Y80_N30
\R2Reg_IDEX[12]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \R2Reg_IDEX[12]~reg0feeder_combout\ = ( \R2Reg[12]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_R2Reg[12]~input_o\,
	combout => \R2Reg_IDEX[12]~reg0feeder_combout\);

-- Location: FF_X70_Y80_N31
\R2Reg_IDEX[12]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \R2Reg_IDEX[12]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R2Reg_IDEX[12]~reg0_q\);

-- Location: IOIBUF_X58_Y81_N58
\R2Reg[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_R2Reg(13),
	o => \R2Reg[13]~input_o\);

-- Location: LABCELL_X57_Y80_N33
\R2Reg_IDEX[13]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \R2Reg_IDEX[13]~reg0feeder_combout\ = ( \R2Reg[13]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_R2Reg[13]~input_o\,
	combout => \R2Reg_IDEX[13]~reg0feeder_combout\);

-- Location: FF_X57_Y80_N35
\R2Reg_IDEX[13]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \R2Reg_IDEX[13]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R2Reg_IDEX[13]~reg0_q\);

-- Location: IOIBUF_X34_Y0_N92
\R2Reg[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_R2Reg(14),
	o => \R2Reg[14]~input_o\);

-- Location: MLABCELL_X34_Y1_N36
\R2Reg_IDEX[14]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \R2Reg_IDEX[14]~reg0feeder_combout\ = ( \R2Reg[14]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_R2Reg[14]~input_o\,
	combout => \R2Reg_IDEX[14]~reg0feeder_combout\);

-- Location: FF_X34_Y1_N37
\R2Reg_IDEX[14]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \R2Reg_IDEX[14]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R2Reg_IDEX[14]~reg0_q\);

-- Location: IOIBUF_X52_Y81_N18
\R2Reg[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_R2Reg(15),
	o => \R2Reg[15]~input_o\);

-- Location: FF_X52_Y80_N1
\R2Reg_IDEX[15]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \R2Reg[15]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R2Reg_IDEX[15]~reg0_q\);

-- Location: IOIBUF_X70_Y81_N18
\immediate16[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_immediate16(0),
	o => \immediate16[0]~input_o\);

-- Location: LABCELL_X75_Y80_N30
\immediate16_IDEX[0]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \immediate16_IDEX[0]~reg0feeder_combout\ = ( \immediate16[0]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_immediate16[0]~input_o\,
	combout => \immediate16_IDEX[0]~reg0feeder_combout\);

-- Location: FF_X75_Y80_N31
\immediate16_IDEX[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \immediate16_IDEX[0]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \immediate16_IDEX[0]~reg0_q\);

-- Location: IOIBUF_X56_Y0_N35
\immediate16[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_immediate16(1),
	o => \immediate16[1]~input_o\);

-- Location: LABCELL_X56_Y1_N6
\immediate16_IDEX[1]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \immediate16_IDEX[1]~reg0feeder_combout\ = ( \immediate16[1]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_immediate16[1]~input_o\,
	combout => \immediate16_IDEX[1]~reg0feeder_combout\);

-- Location: FF_X56_Y1_N7
\immediate16_IDEX[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \immediate16_IDEX[1]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \immediate16_IDEX[1]~reg0_q\);

-- Location: IOIBUF_X68_Y0_N52
\immediate16[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_immediate16(2),
	o => \immediate16[2]~input_o\);

-- Location: LABCELL_X66_Y1_N6
\immediate16_IDEX[2]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \immediate16_IDEX[2]~reg0feeder_combout\ = ( \immediate16[2]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_immediate16[2]~input_o\,
	combout => \immediate16_IDEX[2]~reg0feeder_combout\);

-- Location: FF_X66_Y1_N7
\immediate16_IDEX[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \immediate16_IDEX[2]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \immediate16_IDEX[2]~reg0_q\);

-- Location: IOIBUF_X34_Y81_N41
\immediate16[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_immediate16(3),
	o => \immediate16[3]~input_o\);

-- Location: MLABCELL_X34_Y80_N12
\immediate16_IDEX[3]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \immediate16_IDEX[3]~reg0feeder_combout\ = ( \immediate16[3]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_immediate16[3]~input_o\,
	combout => \immediate16_IDEX[3]~reg0feeder_combout\);

-- Location: FF_X34_Y80_N13
\immediate16_IDEX[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \immediate16_IDEX[3]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \immediate16_IDEX[3]~reg0_q\);

-- Location: IOIBUF_X68_Y81_N1
\immediate16[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_immediate16(4),
	o => \immediate16[4]~input_o\);

-- Location: MLABCELL_X65_Y80_N33
\immediate16_IDEX[4]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \immediate16_IDEX[4]~reg0feeder_combout\ = ( \immediate16[4]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_immediate16[4]~input_o\,
	combout => \immediate16_IDEX[4]~reg0feeder_combout\);

-- Location: FF_X65_Y80_N35
\immediate16_IDEX[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \immediate16_IDEX[4]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \immediate16_IDEX[4]~reg0_q\);

-- Location: IOIBUF_X28_Y81_N52
\immediate16[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_immediate16(5),
	o => \immediate16[5]~input_o\);

-- Location: FF_X29_Y80_N31
\immediate16_IDEX[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \immediate16[5]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \immediate16_IDEX[5]~reg0_q\);

-- Location: IOIBUF_X54_Y0_N52
\immediate16[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_immediate16(6),
	o => \immediate16[6]~input_o\);

-- Location: LABCELL_X55_Y1_N3
\immediate16_IDEX[6]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \immediate16_IDEX[6]~reg0feeder_combout\ = ( \immediate16[6]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_immediate16[6]~input_o\,
	combout => \immediate16_IDEX[6]~reg0feeder_combout\);

-- Location: FF_X55_Y1_N4
\immediate16_IDEX[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \immediate16_IDEX[6]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \immediate16_IDEX[6]~reg0_q\);

-- Location: IOIBUF_X36_Y81_N18
\immediate16[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_immediate16(7),
	o => \immediate16[7]~input_o\);

-- Location: LABCELL_X36_Y80_N30
\immediate16_IDEX[7]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \immediate16_IDEX[7]~reg0feeder_combout\ = ( \immediate16[7]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_immediate16[7]~input_o\,
	combout => \immediate16_IDEX[7]~reg0feeder_combout\);

-- Location: FF_X36_Y80_N31
\immediate16_IDEX[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \immediate16_IDEX[7]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \immediate16_IDEX[7]~reg0_q\);

-- Location: IOIBUF_X50_Y81_N58
\immediate16[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_immediate16(8),
	o => \immediate16[8]~input_o\);

-- Location: LABCELL_X50_Y80_N39
\immediate16_IDEX[8]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \immediate16_IDEX[8]~reg0feeder_combout\ = ( \immediate16[8]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_immediate16[8]~input_o\,
	combout => \immediate16_IDEX[8]~reg0feeder_combout\);

-- Location: FF_X50_Y80_N40
\immediate16_IDEX[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \immediate16_IDEX[8]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \immediate16_IDEX[8]~reg0_q\);

-- Location: IOIBUF_X54_Y81_N1
\immediate16[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_immediate16(9),
	o => \immediate16[9]~input_o\);

-- Location: FF_X52_Y80_N7
\immediate16_IDEX[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \immediate16[9]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \immediate16_IDEX[9]~reg0_q\);

-- Location: IOIBUF_X30_Y0_N18
\immediate16[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_immediate16(10),
	o => \immediate16[10]~input_o\);

-- Location: FF_X30_Y1_N41
\immediate16_IDEX[10]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \immediate16[10]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \immediate16_IDEX[10]~reg0_q\);

-- Location: IOIBUF_X84_Y81_N52
\immediate16[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_immediate16(11),
	o => \immediate16[11]~input_o\);

-- Location: FF_X84_Y80_N7
\immediate16_IDEX[11]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \immediate16[11]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \immediate16_IDEX[11]~reg0_q\);

-- Location: IOIBUF_X28_Y0_N52
\immediate16[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_immediate16(12),
	o => \immediate16[12]~input_o\);

-- Location: MLABCELL_X28_Y1_N9
\immediate16_IDEX[12]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \immediate16_IDEX[12]~reg0feeder_combout\ = ( \immediate16[12]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_immediate16[12]~input_o\,
	combout => \immediate16_IDEX[12]~reg0feeder_combout\);

-- Location: FF_X28_Y1_N11
\immediate16_IDEX[12]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \immediate16_IDEX[12]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \immediate16_IDEX[12]~reg0_q\);

-- Location: IOIBUF_X32_Y81_N1
\immediate16[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_immediate16(13),
	o => \immediate16[13]~input_o\);

-- Location: FF_X31_Y80_N11
\immediate16_IDEX[13]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \immediate16[13]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \immediate16_IDEX[13]~reg0_q\);

-- Location: IOIBUF_X89_Y9_N4
\immediate16[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_immediate16(14),
	o => \immediate16[14]~input_o\);

-- Location: LABCELL_X88_Y9_N33
\immediate16_IDEX[14]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \immediate16_IDEX[14]~reg0feeder_combout\ = ( \immediate16[14]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_immediate16[14]~input_o\,
	combout => \immediate16_IDEX[14]~reg0feeder_combout\);

-- Location: FF_X88_Y9_N34
\immediate16_IDEX[14]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \immediate16_IDEX[14]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \immediate16_IDEX[14]~reg0_q\);

-- Location: IOIBUF_X58_Y0_N75
\immediate16[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_immediate16(15),
	o => \immediate16[15]~input_o\);

-- Location: MLABCELL_X59_Y1_N3
\immediate16_IDEX[15]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \immediate16_IDEX[15]~reg0feeder_combout\ = ( \immediate16[15]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_immediate16[15]~input_o\,
	combout => \immediate16_IDEX[15]~reg0feeder_combout\);

-- Location: FF_X59_Y1_N4
\immediate16_IDEX[15]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \immediate16_IDEX[15]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \immediate16_IDEX[15]~reg0_q\);

-- Location: IOIBUF_X60_Y81_N1
\R2AD[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_R2AD(0),
	o => \R2AD[0]~input_o\);

-- Location: LABCELL_X60_Y80_N33
\R2AD_IDEX[0]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \R2AD_IDEX[0]~reg0feeder_combout\ = ( \R2AD[0]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_R2AD[0]~input_o\,
	combout => \R2AD_IDEX[0]~reg0feeder_combout\);

-- Location: FF_X60_Y80_N35
\R2AD_IDEX[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \R2AD_IDEX[0]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R2AD_IDEX[0]~reg0_q\);

-- Location: IOIBUF_X62_Y81_N1
\R2AD[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_R2AD(1),
	o => \R2AD[1]~input_o\);

-- Location: FF_X62_Y80_N10
\R2AD_IDEX[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \R2AD[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R2AD_IDEX[1]~reg0_q\);

-- Location: IOIBUF_X60_Y0_N18
\R2AD[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_R2AD(2),
	o => \R2AD[2]~input_o\);

-- Location: LABCELL_X60_Y1_N36
\R2AD_IDEX[2]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \R2AD_IDEX[2]~reg0feeder_combout\ = ( \R2AD[2]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_R2AD[2]~input_o\,
	combout => \R2AD_IDEX[2]~reg0feeder_combout\);

-- Location: FF_X60_Y1_N38
\R2AD_IDEX[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \R2AD_IDEX[2]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R2AD_IDEX[2]~reg0_q\);

-- Location: IOIBUF_X50_Y0_N58
\R1AD[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_R1AD(0),
	o => \R1AD[0]~input_o\);

-- Location: LABCELL_X50_Y1_N42
\R1AD_IDEX[0]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \R1AD_IDEX[0]~reg0feeder_combout\ = ( \R1AD[0]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_R1AD[0]~input_o\,
	combout => \R1AD_IDEX[0]~reg0feeder_combout\);

-- Location: FF_X50_Y1_N43
\R1AD_IDEX[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \R1AD_IDEX[0]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R1AD_IDEX[0]~reg0_q\);

-- Location: IOIBUF_X68_Y81_N52
\R1AD[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_R1AD(1),
	o => \R1AD[1]~input_o\);

-- Location: FF_X68_Y80_N35
\R1AD_IDEX[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \R1AD[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R1AD_IDEX[1]~reg0_q\);

-- Location: IOIBUF_X28_Y81_N18
\R1AD[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_R1AD(2),
	o => \R1AD[2]~input_o\);

-- Location: MLABCELL_X28_Y80_N33
\R1AD_IDEX[2]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \R1AD_IDEX[2]~reg0feeder_combout\ = ( \R1AD[2]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_R1AD[2]~input_o\,
	combout => \R1AD_IDEX[2]~reg0feeder_combout\);

-- Location: FF_X28_Y80_N34
\R1AD_IDEX[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \R1AD_IDEX[2]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R1AD_IDEX[2]~reg0_q\);

-- Location: IOIBUF_X38_Y0_N1
\jumpShortAddr[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jumpShortAddr(0),
	o => \jumpShortAddr[0]~input_o\);

-- Location: LABCELL_X36_Y1_N36
\jumpShortAddr_IDEX[0]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \jumpShortAddr_IDEX[0]~reg0feeder_combout\ = ( \jumpShortAddr[0]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_jumpShortAddr[0]~input_o\,
	combout => \jumpShortAddr_IDEX[0]~reg0feeder_combout\);

-- Location: FF_X36_Y1_N38
\jumpShortAddr_IDEX[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \jumpShortAddr_IDEX[0]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \jumpShortAddr_IDEX[0]~reg0_q\);

-- Location: IOIBUF_X56_Y81_N35
\jumpShortAddr[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jumpShortAddr(1),
	o => \jumpShortAddr[1]~input_o\);

-- Location: LABCELL_X56_Y80_N6
\jumpShortAddr_IDEX[1]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \jumpShortAddr_IDEX[1]~reg0feeder_combout\ = ( \jumpShortAddr[1]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_jumpShortAddr[1]~input_o\,
	combout => \jumpShortAddr_IDEX[1]~reg0feeder_combout\);

-- Location: FF_X56_Y80_N8
\jumpShortAddr_IDEX[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \jumpShortAddr_IDEX[1]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \jumpShortAddr_IDEX[1]~reg0_q\);

-- Location: IOIBUF_X68_Y81_N18
\jumpShortAddr[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jumpShortAddr(2),
	o => \jumpShortAddr[2]~input_o\);

-- Location: LABCELL_X68_Y80_N30
\jumpShortAddr_IDEX[2]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \jumpShortAddr_IDEX[2]~reg0feeder_combout\ = ( \jumpShortAddr[2]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_jumpShortAddr[2]~input_o\,
	combout => \jumpShortAddr_IDEX[2]~reg0feeder_combout\);

-- Location: FF_X68_Y80_N32
\jumpShortAddr_IDEX[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \jumpShortAddr_IDEX[2]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \jumpShortAddr_IDEX[2]~reg0_q\);

-- Location: IOIBUF_X34_Y0_N75
\jumpShortAddr[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jumpShortAddr(3),
	o => \jumpShortAddr[3]~input_o\);

-- Location: LABCELL_X33_Y1_N30
\jumpShortAddr_IDEX[3]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \jumpShortAddr_IDEX[3]~reg0feeder_combout\ = ( \jumpShortAddr[3]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_jumpShortAddr[3]~input_o\,
	combout => \jumpShortAddr_IDEX[3]~reg0feeder_combout\);

-- Location: FF_X33_Y1_N32
\jumpShortAddr_IDEX[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \jumpShortAddr_IDEX[3]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \jumpShortAddr_IDEX[3]~reg0_q\);

-- Location: IOIBUF_X74_Y81_N41
\jumpShortAddr[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jumpShortAddr(4),
	o => \jumpShortAddr[4]~input_o\);

-- Location: FF_X73_Y80_N31
\jumpShortAddr_IDEX[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \jumpShortAddr[4]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \jumpShortAddr_IDEX[4]~reg0_q\);

-- Location: IOIBUF_X40_Y81_N35
\jumpShortAddr[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jumpShortAddr(5),
	o => \jumpShortAddr[5]~input_o\);

-- Location: FF_X40_Y80_N46
\jumpShortAddr_IDEX[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \jumpShortAddr[5]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \jumpShortAddr_IDEX[5]~reg0_q\);

-- Location: IOIBUF_X58_Y0_N92
\jumpShortAddr[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jumpShortAddr(6),
	o => \jumpShortAddr[6]~input_o\);

-- Location: MLABCELL_X59_Y1_N9
\jumpShortAddr_IDEX[6]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \jumpShortAddr_IDEX[6]~reg0feeder_combout\ = ( \jumpShortAddr[6]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_jumpShortAddr[6]~input_o\,
	combout => \jumpShortAddr_IDEX[6]~reg0feeder_combout\);

-- Location: FF_X59_Y1_N11
\jumpShortAddr_IDEX[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \jumpShortAddr_IDEX[6]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \jumpShortAddr_IDEX[6]~reg0_q\);

-- Location: IOIBUF_X62_Y81_N18
\jumpShortAddr[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jumpShortAddr(7),
	o => \jumpShortAddr[7]~input_o\);

-- Location: LABCELL_X62_Y80_N15
\jumpShortAddr_IDEX[7]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \jumpShortAddr_IDEX[7]~reg0feeder_combout\ = ( \jumpShortAddr[7]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_jumpShortAddr[7]~input_o\,
	combout => \jumpShortAddr_IDEX[7]~reg0feeder_combout\);

-- Location: FF_X62_Y80_N17
\jumpShortAddr_IDEX[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \jumpShortAddr_IDEX[7]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \jumpShortAddr_IDEX[7]~reg0_q\);

-- Location: IOIBUF_X72_Y0_N35
\jumpShortAddr[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jumpShortAddr(8),
	o => \jumpShortAddr[8]~input_o\);

-- Location: MLABCELL_X72_Y1_N9
\jumpShortAddr_IDEX[8]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \jumpShortAddr_IDEX[8]~reg0feeder_combout\ = ( \jumpShortAddr[8]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_jumpShortAddr[8]~input_o\,
	combout => \jumpShortAddr_IDEX[8]~reg0feeder_combout\);

-- Location: FF_X72_Y1_N11
\jumpShortAddr_IDEX[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \jumpShortAddr_IDEX[8]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \jumpShortAddr_IDEX[8]~reg0_q\);

-- Location: IOIBUF_X6_Y0_N35
\jumpShortAddr[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jumpShortAddr(9),
	o => \jumpShortAddr[9]~input_o\);

-- Location: MLABCELL_X6_Y1_N6
\jumpShortAddr_IDEX[9]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \jumpShortAddr_IDEX[9]~reg0feeder_combout\ = ( \jumpShortAddr[9]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_jumpShortAddr[9]~input_o\,
	combout => \jumpShortAddr_IDEX[9]~reg0feeder_combout\);

-- Location: FF_X6_Y1_N7
\jumpShortAddr_IDEX[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \jumpShortAddr_IDEX[9]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \jumpShortAddr_IDEX[9]~reg0_q\);

-- Location: IOIBUF_X26_Y0_N41
\jumpShortAddr[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jumpShortAddr(10),
	o => \jumpShortAddr[10]~input_o\);

-- Location: MLABCELL_X25_Y1_N9
\jumpShortAddr_IDEX[10]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \jumpShortAddr_IDEX[10]~reg0feeder_combout\ = ( \jumpShortAddr[10]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_jumpShortAddr[10]~input_o\,
	combout => \jumpShortAddr_IDEX[10]~reg0feeder_combout\);

-- Location: FF_X25_Y1_N10
\jumpShortAddr_IDEX[10]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \jumpShortAddr_IDEX[10]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \jumpShortAddr_IDEX[10]~reg0_q\);

-- Location: IOIBUF_X50_Y0_N75
\jumpShortAddr[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jumpShortAddr(11),
	o => \jumpShortAddr[11]~input_o\);

-- Location: LABCELL_X46_Y1_N3
\jumpShortAddr_IDEX[11]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \jumpShortAddr_IDEX[11]~reg0feeder_combout\ = ( \jumpShortAddr[11]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_jumpShortAddr[11]~input_o\,
	combout => \jumpShortAddr_IDEX[11]~reg0feeder_combout\);

-- Location: FF_X46_Y1_N5
\jumpShortAddr_IDEX[11]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \jumpShortAddr_IDEX[11]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \jumpShortAddr_IDEX[11]~reg0_q\);

-- Location: LABCELL_X27_Y56_N0
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


