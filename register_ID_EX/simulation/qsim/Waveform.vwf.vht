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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "05/08/2026 17:11:50"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          register_ID_EX
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY register_ID_EX_vhd_vec_tst IS
END register_ID_EX_vhd_vec_tst;
ARCHITECTURE register_ID_EX_arch OF register_ID_EX_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL ALUFunc : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL ALUFunc_IDEX : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL clock : STD_LOGIC;
SIGNAL immediate16 : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL immediate16_IDEX : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL isBranch : STD_LOGIC;
SIGNAL isBranch_IDEX : STD_LOGIC;
SIGNAL isEOR : STD_LOGIC;
SIGNAL isEOR_IDEX : STD_LOGIC;
SIGNAL isJR : STD_LOGIC;
SIGNAL isJR_IDEX : STD_LOGIC;
SIGNAL isJump : STD_LOGIC;
SIGNAL isJump_IDEX : STD_LOGIC;
SIGNAL isLW : STD_LOGIC;
SIGNAL isLW_IDEX : STD_LOGIC;
SIGNAL isMFPC : STD_LOGIC;
SIGNAL isMFPC_IDEX : STD_LOGIC;
SIGNAL isPrintDigit : STD_LOGIC;
SIGNAL isPrintDigit_IDEX : STD_LOGIC;
SIGNAL isR : STD_LOGIC;
SIGNAL isR_IDEX : STD_LOGIC;
SIGNAL isReadDigit : STD_LOGIC;
SIGNAL isReadDigit_IDEX : STD_LOGIC;
SIGNAL isSW : STD_LOGIC;
SIGNAL isSW_IDEX : STD_LOGIC;
SIGNAL jumpShortAddr : STD_LOGIC_VECTOR(11 DOWNTO 0);
SIGNAL jumpShortAddr_IDEX : STD_LOGIC_VECTOR(11 DOWNTO 0);
SIGNAL R1AD : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL R1AD_IDEX : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL R1Reg : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL R1Reg_IDEX : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL R2AD : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL R2AD_IDEX : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL R2Reg : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL R2Reg_IDEX : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL wasJumpOut : STD_LOGIC;
SIGNAL wasJumpOut_IDEX : STD_LOGIC;
COMPONENT register_ID_EX
	PORT (
	ALUFunc : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	ALUFunc_IDEX : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	clock : IN STD_LOGIC;
	immediate16 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	immediate16_IDEX : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	isBranch : IN STD_LOGIC;
	isBranch_IDEX : OUT STD_LOGIC;
	isEOR : IN STD_LOGIC;
	isEOR_IDEX : OUT STD_LOGIC;
	isJR : IN STD_LOGIC;
	isJR_IDEX : OUT STD_LOGIC;
	isJump : IN STD_LOGIC;
	isJump_IDEX : OUT STD_LOGIC;
	isLW : IN STD_LOGIC;
	isLW_IDEX : OUT STD_LOGIC;
	isMFPC : IN STD_LOGIC;
	isMFPC_IDEX : OUT STD_LOGIC;
	isPrintDigit : IN STD_LOGIC;
	isPrintDigit_IDEX : OUT STD_LOGIC;
	isR : IN STD_LOGIC;
	isR_IDEX : OUT STD_LOGIC;
	isReadDigit : IN STD_LOGIC;
	isReadDigit_IDEX : OUT STD_LOGIC;
	isSW : IN STD_LOGIC;
	isSW_IDEX : OUT STD_LOGIC;
	jumpShortAddr : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
	jumpShortAddr_IDEX : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
	R1AD : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	R1AD_IDEX : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	R1Reg : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	R1Reg_IDEX : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	R2AD : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	R2AD_IDEX : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	R2Reg : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	R2Reg_IDEX : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	wasJumpOut : IN STD_LOGIC;
	wasJumpOut_IDEX : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : register_ID_EX
	PORT MAP (
-- list connections between master ports and signals
	ALUFunc => ALUFunc,
	ALUFunc_IDEX => ALUFunc_IDEX,
	clock => clock,
	immediate16 => immediate16,
	immediate16_IDEX => immediate16_IDEX,
	isBranch => isBranch,
	isBranch_IDEX => isBranch_IDEX,
	isEOR => isEOR,
	isEOR_IDEX => isEOR_IDEX,
	isJR => isJR,
	isJR_IDEX => isJR_IDEX,
	isJump => isJump,
	isJump_IDEX => isJump_IDEX,
	isLW => isLW,
	isLW_IDEX => isLW_IDEX,
	isMFPC => isMFPC,
	isMFPC_IDEX => isMFPC_IDEX,
	isPrintDigit => isPrintDigit,
	isPrintDigit_IDEX => isPrintDigit_IDEX,
	isR => isR,
	isR_IDEX => isR_IDEX,
	isReadDigit => isReadDigit,
	isReadDigit_IDEX => isReadDigit_IDEX,
	isSW => isSW,
	isSW_IDEX => isSW_IDEX,
	jumpShortAddr => jumpShortAddr,
	jumpShortAddr_IDEX => jumpShortAddr_IDEX,
	R1AD => R1AD,
	R1AD_IDEX => R1AD_IDEX,
	R1Reg => R1Reg,
	R1Reg_IDEX => R1Reg_IDEX,
	R2AD => R2AD,
	R2AD_IDEX => R2AD_IDEX,
	R2Reg => R2Reg,
	R2Reg_IDEX => R2Reg_IDEX,
	wasJumpOut => wasJumpOut,
	wasJumpOut_IDEX => wasJumpOut_IDEX
	);
-- ALUFunc[3]
t_prcs_ALUFunc_3: PROCESS
BEGIN
	ALUFunc(3) <= '0';
WAIT;
END PROCESS t_prcs_ALUFunc_3;
-- ALUFunc[2]
t_prcs_ALUFunc_2: PROCESS
BEGIN
	ALUFunc(2) <= '0';
WAIT;
END PROCESS t_prcs_ALUFunc_2;
-- ALUFunc[1]
t_prcs_ALUFunc_1: PROCESS
BEGIN
	ALUFunc(1) <= '0';
WAIT;
END PROCESS t_prcs_ALUFunc_1;
-- ALUFunc[0]
t_prcs_ALUFunc_0: PROCESS
BEGIN
	ALUFunc(0) <= '0';
WAIT;
END PROCESS t_prcs_ALUFunc_0;

-- clock
t_prcs_clock: PROCESS
BEGIN
	FOR i IN 1 TO 12
	LOOP
		clock <= '0';
		WAIT FOR 40000 ps;
		clock <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	clock <= '0';
WAIT;
END PROCESS t_prcs_clock;
-- immediate16[15]
t_prcs_immediate16_15: PROCESS
BEGIN
	immediate16(15) <= '0';
WAIT;
END PROCESS t_prcs_immediate16_15;
-- immediate16[14]
t_prcs_immediate16_14: PROCESS
BEGIN
	immediate16(14) <= '0';
WAIT;
END PROCESS t_prcs_immediate16_14;
-- immediate16[13]
t_prcs_immediate16_13: PROCESS
BEGIN
	immediate16(13) <= '0';
WAIT;
END PROCESS t_prcs_immediate16_13;
-- immediate16[12]
t_prcs_immediate16_12: PROCESS
BEGIN
	immediate16(12) <= '0';
WAIT;
END PROCESS t_prcs_immediate16_12;
-- immediate16[11]
t_prcs_immediate16_11: PROCESS
BEGIN
	immediate16(11) <= '0';
WAIT;
END PROCESS t_prcs_immediate16_11;
-- immediate16[10]
t_prcs_immediate16_10: PROCESS
BEGIN
	immediate16(10) <= '0';
WAIT;
END PROCESS t_prcs_immediate16_10;
-- immediate16[9]
t_prcs_immediate16_9: PROCESS
BEGIN
	immediate16(9) <= '0';
WAIT;
END PROCESS t_prcs_immediate16_9;
-- immediate16[8]
t_prcs_immediate16_8: PROCESS
BEGIN
	immediate16(8) <= '0';
WAIT;
END PROCESS t_prcs_immediate16_8;
-- immediate16[7]
t_prcs_immediate16_7: PROCESS
BEGIN
	immediate16(7) <= '0';
WAIT;
END PROCESS t_prcs_immediate16_7;
-- immediate16[6]
t_prcs_immediate16_6: PROCESS
BEGIN
	immediate16(6) <= '0';
WAIT;
END PROCESS t_prcs_immediate16_6;
-- immediate16[5]
t_prcs_immediate16_5: PROCESS
BEGIN
	immediate16(5) <= '0';
WAIT;
END PROCESS t_prcs_immediate16_5;
-- immediate16[4]
t_prcs_immediate16_4: PROCESS
BEGIN
	immediate16(4) <= '0';
WAIT;
END PROCESS t_prcs_immediate16_4;
-- immediate16[3]
t_prcs_immediate16_3: PROCESS
BEGIN
	immediate16(3) <= '0';
WAIT;
END PROCESS t_prcs_immediate16_3;
-- immediate16[2]
t_prcs_immediate16_2: PROCESS
BEGIN
	immediate16(2) <= '0';
WAIT;
END PROCESS t_prcs_immediate16_2;
-- immediate16[1]
t_prcs_immediate16_1: PROCESS
BEGIN
	immediate16(1) <= '0';
WAIT;
END PROCESS t_prcs_immediate16_1;
-- immediate16[0]
t_prcs_immediate16_0: PROCESS
BEGIN
	immediate16(0) <= '0';
WAIT;
END PROCESS t_prcs_immediate16_0;

-- isBranch
t_prcs_isBranch: PROCESS
BEGIN
	isBranch <= '1';
	WAIT FOR 80000 ps;
	isBranch <= '0';
WAIT;
END PROCESS t_prcs_isBranch;

-- isEOR
t_prcs_isEOR: PROCESS
BEGIN
	isEOR <= '0';
	WAIT FOR 80000 ps;
	isEOR <= '1';
	WAIT FOR 80000 ps;
	isEOR <= '0';
WAIT;
END PROCESS t_prcs_isEOR;

-- isJR
t_prcs_isJR: PROCESS
BEGIN
	isJR <= '0';
	WAIT FOR 160000 ps;
	isJR <= '1';
	WAIT FOR 80000 ps;
	isJR <= '0';
WAIT;
END PROCESS t_prcs_isJR;

-- isJump
t_prcs_isJump: PROCESS
BEGIN
	isJump <= '0';
	WAIT FOR 240000 ps;
	isJump <= '1';
	WAIT FOR 80000 ps;
	isJump <= '0';
WAIT;
END PROCESS t_prcs_isJump;

-- isLW
t_prcs_isLW: PROCESS
BEGIN
	isLW <= '0';
	WAIT FOR 320000 ps;
	isLW <= '1';
	WAIT FOR 80000 ps;
	isLW <= '0';
WAIT;
END PROCESS t_prcs_isLW;

-- isMFPC
t_prcs_isMFPC: PROCESS
BEGIN
	isMFPC <= '0';
	WAIT FOR 400000 ps;
	isMFPC <= '1';
	WAIT FOR 80000 ps;
	isMFPC <= '0';
WAIT;
END PROCESS t_prcs_isMFPC;

-- isR
t_prcs_isR: PROCESS
BEGIN
	isR <= '0';
	WAIT FOR 480000 ps;
	isR <= '1';
	WAIT FOR 80000 ps;
	isR <= '0';
WAIT;
END PROCESS t_prcs_isR;

-- isReadDigit
t_prcs_isReadDigit: PROCESS
BEGIN
	isReadDigit <= '0';
	WAIT FOR 560000 ps;
	isReadDigit <= '1';
	WAIT FOR 80000 ps;
	isReadDigit <= '0';
WAIT;
END PROCESS t_prcs_isReadDigit;

-- isSW
t_prcs_isSW: PROCESS
BEGIN
	isSW <= '0';
	WAIT FOR 640000 ps;
	isSW <= '1';
	WAIT FOR 80000 ps;
	isSW <= '0';
WAIT;
END PROCESS t_prcs_isSW;

-- isPrintDigit
t_prcs_isPrintDigit: PROCESS
BEGIN
	isPrintDigit <= '0';
	WAIT FOR 720000 ps;
	isPrintDigit <= '1';
	WAIT FOR 80000 ps;
	isPrintDigit <= '0';
WAIT;
END PROCESS t_prcs_isPrintDigit;

-- wasJumpOut
t_prcs_wasJumpOut: PROCESS
BEGIN
	wasJumpOut <= '0';
	WAIT FOR 800000 ps;
	wasJumpOut <= '1';
	WAIT FOR 80000 ps;
	wasJumpOut <= '0';
WAIT;
END PROCESS t_prcs_wasJumpOut;
-- jumpShortAddr[11]
t_prcs_jumpShortAddr_11: PROCESS
BEGIN
	jumpShortAddr(11) <= '0';
	WAIT FOR 80000 ps;
	jumpShortAddr(11) <= '1';
	WAIT FOR 400000 ps;
	jumpShortAddr(11) <= '0';
	WAIT FOR 80000 ps;
	jumpShortAddr(11) <= '1';
	WAIT FOR 160000 ps;
	jumpShortAddr(11) <= '0';
WAIT;
END PROCESS t_prcs_jumpShortAddr_11;
-- jumpShortAddr[10]
t_prcs_jumpShortAddr_10: PROCESS
BEGIN
	jumpShortAddr(10) <= '0';
	WAIT FOR 80000 ps;
	jumpShortAddr(10) <= '1';
	WAIT FOR 320000 ps;
	jumpShortAddr(10) <= '0';
	WAIT FOR 240000 ps;
	jumpShortAddr(10) <= '1';
	WAIT FOR 80000 ps;
	jumpShortAddr(10) <= '0';
	WAIT FOR 160000 ps;
	jumpShortAddr(10) <= '1';
	WAIT FOR 90000 ps;
	jumpShortAddr(10) <= '0';
WAIT;
END PROCESS t_prcs_jumpShortAddr_10;
-- jumpShortAddr[9]
t_prcs_jumpShortAddr_9: PROCESS
BEGIN
	jumpShortAddr(9) <= '0';
	WAIT FOR 80000 ps;
	jumpShortAddr(9) <= '1';
	WAIT FOR 80000 ps;
	jumpShortAddr(9) <= '0';
	WAIT FOR 80000 ps;
	jumpShortAddr(9) <= '1';
	WAIT FOR 160000 ps;
	jumpShortAddr(9) <= '0';
	WAIT FOR 80000 ps;
	jumpShortAddr(9) <= '1';
	WAIT FOR 80000 ps;
	jumpShortAddr(9) <= '0';
	WAIT FOR 80000 ps;
	jumpShortAddr(9) <= '1';
	WAIT FOR 160000 ps;
	jumpShortAddr(9) <= '0';
	WAIT FOR 80000 ps;
	jumpShortAddr(9) <= '1';
	WAIT FOR 90000 ps;
	jumpShortAddr(9) <= '0';
WAIT;
END PROCESS t_prcs_jumpShortAddr_9;
-- jumpShortAddr[8]
t_prcs_jumpShortAddr_8: PROCESS
BEGIN
	jumpShortAddr(8) <= '0';
	WAIT FOR 80000 ps;
	jumpShortAddr(8) <= '1';
	WAIT FOR 160000 ps;
	jumpShortAddr(8) <= '0';
	WAIT FOR 80000 ps;
	jumpShortAddr(8) <= '1';
	WAIT FOR 80000 ps;
	jumpShortAddr(8) <= '0';
	WAIT FOR 80000 ps;
	jumpShortAddr(8) <= '1';
	WAIT FOR 400000 ps;
	jumpShortAddr(8) <= '0';
WAIT;
END PROCESS t_prcs_jumpShortAddr_8;
-- jumpShortAddr[7]
t_prcs_jumpShortAddr_7: PROCESS
BEGIN
	jumpShortAddr(7) <= '1';
	WAIT FOR 160000 ps;
	jumpShortAddr(7) <= '0';
	WAIT FOR 160000 ps;
	jumpShortAddr(7) <= '1';
	WAIT FOR 160000 ps;
	jumpShortAddr(7) <= '0';
	WAIT FOR 160000 ps;
	jumpShortAddr(7) <= '1';
	WAIT FOR 330000 ps;
	jumpShortAddr(7) <= '0';
WAIT;
END PROCESS t_prcs_jumpShortAddr_7;
-- jumpShortAddr[6]
t_prcs_jumpShortAddr_6: PROCESS
BEGIN
	jumpShortAddr(6) <= '1';
	WAIT FOR 240000 ps;
	jumpShortAddr(6) <= '0';
	WAIT FOR 160000 ps;
	jumpShortAddr(6) <= '1';
	WAIT FOR 240000 ps;
	jumpShortAddr(6) <= '0';
	WAIT FOR 240000 ps;
	jumpShortAddr(6) <= '1';
	WAIT FOR 90000 ps;
	jumpShortAddr(6) <= '0';
WAIT;
END PROCESS t_prcs_jumpShortAddr_6;
-- jumpShortAddr[5]
t_prcs_jumpShortAddr_5: PROCESS
BEGIN
	jumpShortAddr(5) <= '1';
	WAIT FOR 80000 ps;
	jumpShortAddr(5) <= '0';
	WAIT FOR 160000 ps;
	jumpShortAddr(5) <= '1';
	WAIT FOR 240000 ps;
	jumpShortAddr(5) <= '0';
	WAIT FOR 240000 ps;
	jumpShortAddr(5) <= '1';
	WAIT FOR 250000 ps;
	jumpShortAddr(5) <= '0';
WAIT;
END PROCESS t_prcs_jumpShortAddr_5;
-- jumpShortAddr[4]
t_prcs_jumpShortAddr_4: PROCESS
BEGIN
	jumpShortAddr(4) <= '0';
	WAIT FOR 80000 ps;
	jumpShortAddr(4) <= '1';
	WAIT FOR 80000 ps;
	jumpShortAddr(4) <= '0';
	WAIT FOR 560000 ps;
	jumpShortAddr(4) <= '1';
	WAIT FOR 80000 ps;
	jumpShortAddr(4) <= '0';
	WAIT FOR 80000 ps;
	jumpShortAddr(4) <= '1';
	WAIT FOR 90000 ps;
	jumpShortAddr(4) <= '0';
WAIT;
END PROCESS t_prcs_jumpShortAddr_4;
-- jumpShortAddr[3]
t_prcs_jumpShortAddr_3: PROCESS
BEGIN
	jumpShortAddr(3) <= '1';
	WAIT FOR 80000 ps;
	jumpShortAddr(3) <= '0';
	WAIT FOR 400000 ps;
	jumpShortAddr(3) <= '1';
	WAIT FOR 80000 ps;
	jumpShortAddr(3) <= '0';
	WAIT FOR 80000 ps;
	jumpShortAddr(3) <= '1';
	WAIT FOR 80000 ps;
	jumpShortAddr(3) <= '0';
	WAIT FOR 160000 ps;
	jumpShortAddr(3) <= '1';
	WAIT FOR 90000 ps;
	jumpShortAddr(3) <= '0';
WAIT;
END PROCESS t_prcs_jumpShortAddr_3;
-- jumpShortAddr[2]
t_prcs_jumpShortAddr_2: PROCESS
BEGIN
	jumpShortAddr(2) <= '1';
	WAIT FOR 80000 ps;
	jumpShortAddr(2) <= '0';
	WAIT FOR 80000 ps;
	jumpShortAddr(2) <= '1';
	WAIT FOR 80000 ps;
	jumpShortAddr(2) <= '0';
	WAIT FOR 80000 ps;
	jumpShortAddr(2) <= '1';
	WAIT FOR 80000 ps;
	jumpShortAddr(2) <= '0';
	WAIT FOR 80000 ps;
	jumpShortAddr(2) <= '1';
	WAIT FOR 160000 ps;
	jumpShortAddr(2) <= '0';
WAIT;
END PROCESS t_prcs_jumpShortAddr_2;
-- jumpShortAddr[1]
t_prcs_jumpShortAddr_1: PROCESS
BEGIN
	jumpShortAddr(1) <= '0';
	WAIT FOR 80000 ps;
	jumpShortAddr(1) <= '1';
	WAIT FOR 80000 ps;
	jumpShortAddr(1) <= '0';
	WAIT FOR 240000 ps;
	jumpShortAddr(1) <= '1';
	WAIT FOR 80000 ps;
	jumpShortAddr(1) <= '0';
	WAIT FOR 240000 ps;
	jumpShortAddr(1) <= '1';
	WAIT FOR 160000 ps;
	jumpShortAddr(1) <= '0';
WAIT;
END PROCESS t_prcs_jumpShortAddr_1;
-- jumpShortAddr[0]
t_prcs_jumpShortAddr_0: PROCESS
BEGIN
	jumpShortAddr(0) <= '0';
	WAIT FOR 160000 ps;
	jumpShortAddr(0) <= '1';
	WAIT FOR 240000 ps;
	jumpShortAddr(0) <= '0';
	WAIT FOR 160000 ps;
	jumpShortAddr(0) <= '1';
	WAIT FOR 240000 ps;
	jumpShortAddr(0) <= '0';
WAIT;
END PROCESS t_prcs_jumpShortAddr_0;
-- R1AD[2]
t_prcs_R1AD_2: PROCESS
BEGIN
	R1AD(2) <= '0';
	WAIT FOR 80000 ps;
	R1AD(2) <= '1';
	WAIT FOR 240000 ps;
	R1AD(2) <= '0';
	WAIT FOR 80000 ps;
	R1AD(2) <= '1';
	WAIT FOR 80000 ps;
	R1AD(2) <= '0';
	WAIT FOR 80000 ps;
	R1AD(2) <= '1';
	WAIT FOR 160000 ps;
	R1AD(2) <= '0';
WAIT;
END PROCESS t_prcs_R1AD_2;
-- R1AD[1]
t_prcs_R1AD_1: PROCESS
BEGIN
	R1AD(1) <= '0';
	WAIT FOR 80000 ps;
	R1AD(1) <= '1';
	WAIT FOR 240000 ps;
	R1AD(1) <= '0';
	WAIT FOR 320000 ps;
	R1AD(1) <= '1';
	WAIT FOR 80000 ps;
	R1AD(1) <= '0';
	WAIT FOR 160000 ps;
	R1AD(1) <= '1';
	WAIT FOR 90000 ps;
	R1AD(1) <= '0';
WAIT;
END PROCESS t_prcs_R1AD_1;
-- R1AD[0]
t_prcs_R1AD_0: PROCESS
BEGIN
	R1AD(0) <= '0';
	WAIT FOR 80000 ps;
	R1AD(0) <= '1';
	WAIT FOR 80000 ps;
	R1AD(0) <= '0';
	WAIT FOR 80000 ps;
	R1AD(0) <= '1';
	WAIT FOR 80000 ps;
	R1AD(0) <= '0';
	WAIT FOR 160000 ps;
	R1AD(0) <= '1';
	WAIT FOR 80000 ps;
	R1AD(0) <= '0';
	WAIT FOR 80000 ps;
	R1AD(0) <= '1';
	WAIT FOR 160000 ps;
	R1AD(0) <= '0';
	WAIT FOR 80000 ps;
	R1AD(0) <= '1';
	WAIT FOR 90000 ps;
	R1AD(0) <= '0';
WAIT;
END PROCESS t_prcs_R1AD_0;
-- R2AD[2]
t_prcs_R2AD_2: PROCESS
BEGIN
	R2AD(2) <= '0';
	WAIT FOR 80000 ps;
	R2AD(2) <= '1';
	WAIT FOR 160000 ps;
	R2AD(2) <= '0';
	WAIT FOR 160000 ps;
	R2AD(2) <= '1';
	WAIT FOR 160000 ps;
	R2AD(2) <= '0';
	WAIT FOR 160000 ps;
	R2AD(2) <= '1';
	WAIT FOR 80000 ps;
	R2AD(2) <= '0';
	WAIT FOR 80000 ps;
	R2AD(2) <= '1';
	WAIT FOR 90000 ps;
	R2AD(2) <= '0';
WAIT;
END PROCESS t_prcs_R2AD_2;
-- R2AD[1]
t_prcs_R2AD_1: PROCESS
BEGIN
	R2AD(1) <= '0';
	WAIT FOR 80000 ps;
	R2AD(1) <= '1';
	WAIT FOR 80000 ps;
	R2AD(1) <= '0';
	WAIT FOR 160000 ps;
	R2AD(1) <= '1';
	WAIT FOR 80000 ps;
	R2AD(1) <= '0';
	WAIT FOR 80000 ps;
	R2AD(1) <= '1';
	WAIT FOR 80000 ps;
	R2AD(1) <= '0';
	WAIT FOR 80000 ps;
	R2AD(1) <= '1';
	WAIT FOR 160000 ps;
	R2AD(1) <= '0';
WAIT;
END PROCESS t_prcs_R2AD_1;
-- R2AD[0]
t_prcs_R2AD_0: PROCESS
BEGIN
	R2AD(0) <= '1';
	WAIT FOR 80000 ps;
	R2AD(0) <= '0';
	WAIT FOR 240000 ps;
	R2AD(0) <= '1';
	WAIT FOR 80000 ps;
	R2AD(0) <= '0';
	WAIT FOR 320000 ps;
	R2AD(0) <= '1';
	WAIT FOR 80000 ps;
	R2AD(0) <= '0';
	WAIT FOR 80000 ps;
	R2AD(0) <= '1';
	WAIT FOR 90000 ps;
	R2AD(0) <= '0';
WAIT;
END PROCESS t_prcs_R2AD_0;
-- R1Reg[15]
t_prcs_R1Reg_15: PROCESS
BEGIN
	R1Reg(15) <= '0';
	WAIT FOR 80000 ps;
	R1Reg(15) <= '1';
	WAIT FOR 400000 ps;
	R1Reg(15) <= '0';
	WAIT FOR 80000 ps;
	R1Reg(15) <= '1';
	WAIT FOR 160000 ps;
	R1Reg(15) <= '0';
WAIT;
END PROCESS t_prcs_R1Reg_15;
-- R1Reg[14]
t_prcs_R1Reg_14: PROCESS
BEGIN
	R1Reg(14) <= '0';
	WAIT FOR 80000 ps;
	R1Reg(14) <= '1';
	WAIT FOR 320000 ps;
	R1Reg(14) <= '0';
	WAIT FOR 240000 ps;
	R1Reg(14) <= '1';
	WAIT FOR 80000 ps;
	R1Reg(14) <= '0';
	WAIT FOR 160000 ps;
	R1Reg(14) <= '1';
	WAIT FOR 90000 ps;
	R1Reg(14) <= '0';
WAIT;
END PROCESS t_prcs_R1Reg_14;
-- R1Reg[13]
t_prcs_R1Reg_13: PROCESS
BEGIN
	R1Reg(13) <= '0';
	WAIT FOR 80000 ps;
	R1Reg(13) <= '1';
	WAIT FOR 80000 ps;
	R1Reg(13) <= '0';
	WAIT FOR 80000 ps;
	R1Reg(13) <= '1';
	WAIT FOR 160000 ps;
	R1Reg(13) <= '0';
	WAIT FOR 80000 ps;
	R1Reg(13) <= '1';
	WAIT FOR 80000 ps;
	R1Reg(13) <= '0';
	WAIT FOR 80000 ps;
	R1Reg(13) <= '1';
	WAIT FOR 160000 ps;
	R1Reg(13) <= '0';
	WAIT FOR 80000 ps;
	R1Reg(13) <= '1';
	WAIT FOR 90000 ps;
	R1Reg(13) <= '0';
WAIT;
END PROCESS t_prcs_R1Reg_13;
-- R1Reg[12]
t_prcs_R1Reg_12: PROCESS
BEGIN
	R1Reg(12) <= '0';
	WAIT FOR 80000 ps;
	R1Reg(12) <= '1';
	WAIT FOR 160000 ps;
	R1Reg(12) <= '0';
	WAIT FOR 80000 ps;
	R1Reg(12) <= '1';
	WAIT FOR 80000 ps;
	R1Reg(12) <= '0';
	WAIT FOR 80000 ps;
	R1Reg(12) <= '1';
	WAIT FOR 400000 ps;
	R1Reg(12) <= '0';
WAIT;
END PROCESS t_prcs_R1Reg_12;
-- R1Reg[11]
t_prcs_R1Reg_11: PROCESS
BEGIN
	R1Reg(11) <= '1';
	WAIT FOR 160000 ps;
	R1Reg(11) <= '0';
	WAIT FOR 160000 ps;
	R1Reg(11) <= '1';
	WAIT FOR 160000 ps;
	R1Reg(11) <= '0';
	WAIT FOR 160000 ps;
	R1Reg(11) <= '1';
	WAIT FOR 330000 ps;
	R1Reg(11) <= '0';
WAIT;
END PROCESS t_prcs_R1Reg_11;
-- R1Reg[10]
t_prcs_R1Reg_10: PROCESS
BEGIN
	R1Reg(10) <= '1';
	WAIT FOR 240000 ps;
	R1Reg(10) <= '0';
	WAIT FOR 160000 ps;
	R1Reg(10) <= '1';
	WAIT FOR 240000 ps;
	R1Reg(10) <= '0';
	WAIT FOR 240000 ps;
	R1Reg(10) <= '1';
	WAIT FOR 90000 ps;
	R1Reg(10) <= '0';
WAIT;
END PROCESS t_prcs_R1Reg_10;
-- R1Reg[9]
t_prcs_R1Reg_9: PROCESS
BEGIN
	R1Reg(9) <= '1';
	WAIT FOR 80000 ps;
	R1Reg(9) <= '0';
	WAIT FOR 160000 ps;
	R1Reg(9) <= '1';
	WAIT FOR 240000 ps;
	R1Reg(9) <= '0';
	WAIT FOR 240000 ps;
	R1Reg(9) <= '1';
	WAIT FOR 250000 ps;
	R1Reg(9) <= '0';
WAIT;
END PROCESS t_prcs_R1Reg_9;
-- R1Reg[8]
t_prcs_R1Reg_8: PROCESS
BEGIN
	R1Reg(8) <= '0';
	WAIT FOR 80000 ps;
	R1Reg(8) <= '1';
	WAIT FOR 80000 ps;
	R1Reg(8) <= '0';
	WAIT FOR 560000 ps;
	R1Reg(8) <= '1';
	WAIT FOR 80000 ps;
	R1Reg(8) <= '0';
	WAIT FOR 80000 ps;
	R1Reg(8) <= '1';
	WAIT FOR 90000 ps;
	R1Reg(8) <= '0';
WAIT;
END PROCESS t_prcs_R1Reg_8;
-- R1Reg[7]
t_prcs_R1Reg_7: PROCESS
BEGIN
	R1Reg(7) <= '1';
	WAIT FOR 80000 ps;
	R1Reg(7) <= '0';
	WAIT FOR 400000 ps;
	R1Reg(7) <= '1';
	WAIT FOR 80000 ps;
	R1Reg(7) <= '0';
	WAIT FOR 80000 ps;
	R1Reg(7) <= '1';
	WAIT FOR 80000 ps;
	R1Reg(7) <= '0';
	WAIT FOR 160000 ps;
	R1Reg(7) <= '1';
	WAIT FOR 90000 ps;
	R1Reg(7) <= '0';
WAIT;
END PROCESS t_prcs_R1Reg_7;
-- R1Reg[6]
t_prcs_R1Reg_6: PROCESS
BEGIN
	R1Reg(6) <= '1';
	WAIT FOR 80000 ps;
	R1Reg(6) <= '0';
	WAIT FOR 80000 ps;
	R1Reg(6) <= '1';
	WAIT FOR 80000 ps;
	R1Reg(6) <= '0';
	WAIT FOR 80000 ps;
	R1Reg(6) <= '1';
	WAIT FOR 80000 ps;
	R1Reg(6) <= '0';
	WAIT FOR 80000 ps;
	R1Reg(6) <= '1';
	WAIT FOR 160000 ps;
	R1Reg(6) <= '0';
WAIT;
END PROCESS t_prcs_R1Reg_6;
-- R1Reg[5]
t_prcs_R1Reg_5: PROCESS
BEGIN
	R1Reg(5) <= '0';
	WAIT FOR 80000 ps;
	R1Reg(5) <= '1';
	WAIT FOR 80000 ps;
	R1Reg(5) <= '0';
	WAIT FOR 240000 ps;
	R1Reg(5) <= '1';
	WAIT FOR 80000 ps;
	R1Reg(5) <= '0';
	WAIT FOR 240000 ps;
	R1Reg(5) <= '1';
	WAIT FOR 160000 ps;
	R1Reg(5) <= '0';
WAIT;
END PROCESS t_prcs_R1Reg_5;
-- R1Reg[4]
t_prcs_R1Reg_4: PROCESS
BEGIN
	R1Reg(4) <= '0';
	WAIT FOR 160000 ps;
	R1Reg(4) <= '1';
	WAIT FOR 240000 ps;
	R1Reg(4) <= '0';
	WAIT FOR 160000 ps;
	R1Reg(4) <= '1';
	WAIT FOR 240000 ps;
	R1Reg(4) <= '0';
WAIT;
END PROCESS t_prcs_R1Reg_4;
-- R1Reg[3]
t_prcs_R1Reg_3: PROCESS
BEGIN
	R1Reg(3) <= '0';
	WAIT FOR 160000 ps;
	R1Reg(3) <= '1';
	WAIT FOR 160000 ps;
	R1Reg(3) <= '0';
	WAIT FOR 80000 ps;
	R1Reg(3) <= '1';
	WAIT FOR 80000 ps;
	R1Reg(3) <= '0';
	WAIT FOR 240000 ps;
	R1Reg(3) <= '1';
	WAIT FOR 80000 ps;
	R1Reg(3) <= '0';
	WAIT FOR 80000 ps;
	R1Reg(3) <= '1';
	WAIT FOR 90000 ps;
	R1Reg(3) <= '0';
WAIT;
END PROCESS t_prcs_R1Reg_3;
-- R1Reg[2]
t_prcs_R1Reg_2: PROCESS
BEGIN
	R1Reg(2) <= '0';
	WAIT FOR 160000 ps;
	R1Reg(2) <= '1';
	WAIT FOR 160000 ps;
	R1Reg(2) <= '0';
	WAIT FOR 80000 ps;
	R1Reg(2) <= '1';
	WAIT FOR 80000 ps;
	R1Reg(2) <= '0';
	WAIT FOR 160000 ps;
	R1Reg(2) <= '1';
	WAIT FOR 330000 ps;
	R1Reg(2) <= '0';
WAIT;
END PROCESS t_prcs_R1Reg_2;
-- R1Reg[1]
t_prcs_R1Reg_1: PROCESS
BEGIN
	R1Reg(1) <= '0';
	WAIT FOR 80000 ps;
	R1Reg(1) <= '1';
	WAIT FOR 240000 ps;
	R1Reg(1) <= '0';
	WAIT FOR 80000 ps;
	R1Reg(1) <= '1';
	WAIT FOR 570000 ps;
	R1Reg(1) <= '0';
WAIT;
END PROCESS t_prcs_R1Reg_1;
-- R1Reg[0]
t_prcs_R1Reg_0: PROCESS
BEGIN
	R1Reg(0) <= '1';
	WAIT FOR 80000 ps;
	R1Reg(0) <= '0';
	WAIT FOR 80000 ps;
	R1Reg(0) <= '1';
	WAIT FOR 160000 ps;
	R1Reg(0) <= '0';
	WAIT FOR 320000 ps;
	R1Reg(0) <= '1';
	WAIT FOR 80000 ps;
	R1Reg(0) <= '0';
	WAIT FOR 80000 ps;
	R1Reg(0) <= '1';
	WAIT FOR 80000 ps;
	R1Reg(0) <= '0';
WAIT;
END PROCESS t_prcs_R1Reg_0;
-- R2Reg[15]
t_prcs_R2Reg_15: PROCESS
BEGIN
	R2Reg(15) <= '0';
	WAIT FOR 80000 ps;
	R2Reg(15) <= '1';
	WAIT FOR 400000 ps;
	R2Reg(15) <= '0';
	WAIT FOR 80000 ps;
	R2Reg(15) <= '1';
	WAIT FOR 160000 ps;
	R2Reg(15) <= '0';
WAIT;
END PROCESS t_prcs_R2Reg_15;
-- R2Reg[14]
t_prcs_R2Reg_14: PROCESS
BEGIN
	R2Reg(14) <= '0';
	WAIT FOR 80000 ps;
	R2Reg(14) <= '1';
	WAIT FOR 320000 ps;
	R2Reg(14) <= '0';
	WAIT FOR 240000 ps;
	R2Reg(14) <= '1';
	WAIT FOR 80000 ps;
	R2Reg(14) <= '0';
	WAIT FOR 160000 ps;
	R2Reg(14) <= '1';
	WAIT FOR 90000 ps;
	R2Reg(14) <= '0';
WAIT;
END PROCESS t_prcs_R2Reg_14;
-- R2Reg[13]
t_prcs_R2Reg_13: PROCESS
BEGIN
	R2Reg(13) <= '0';
	WAIT FOR 80000 ps;
	R2Reg(13) <= '1';
	WAIT FOR 80000 ps;
	R2Reg(13) <= '0';
	WAIT FOR 80000 ps;
	R2Reg(13) <= '1';
	WAIT FOR 160000 ps;
	R2Reg(13) <= '0';
	WAIT FOR 80000 ps;
	R2Reg(13) <= '1';
	WAIT FOR 80000 ps;
	R2Reg(13) <= '0';
	WAIT FOR 80000 ps;
	R2Reg(13) <= '1';
	WAIT FOR 160000 ps;
	R2Reg(13) <= '0';
	WAIT FOR 80000 ps;
	R2Reg(13) <= '1';
	WAIT FOR 90000 ps;
	R2Reg(13) <= '0';
WAIT;
END PROCESS t_prcs_R2Reg_13;
-- R2Reg[12]
t_prcs_R2Reg_12: PROCESS
BEGIN
	R2Reg(12) <= '0';
	WAIT FOR 80000 ps;
	R2Reg(12) <= '1';
	WAIT FOR 160000 ps;
	R2Reg(12) <= '0';
	WAIT FOR 80000 ps;
	R2Reg(12) <= '1';
	WAIT FOR 80000 ps;
	R2Reg(12) <= '0';
	WAIT FOR 80000 ps;
	R2Reg(12) <= '1';
	WAIT FOR 400000 ps;
	R2Reg(12) <= '0';
WAIT;
END PROCESS t_prcs_R2Reg_12;
-- R2Reg[11]
t_prcs_R2Reg_11: PROCESS
BEGIN
	R2Reg(11) <= '1';
	WAIT FOR 160000 ps;
	R2Reg(11) <= '0';
	WAIT FOR 160000 ps;
	R2Reg(11) <= '1';
	WAIT FOR 160000 ps;
	R2Reg(11) <= '0';
	WAIT FOR 160000 ps;
	R2Reg(11) <= '1';
	WAIT FOR 330000 ps;
	R2Reg(11) <= '0';
WAIT;
END PROCESS t_prcs_R2Reg_11;
-- R2Reg[10]
t_prcs_R2Reg_10: PROCESS
BEGIN
	R2Reg(10) <= '1';
	WAIT FOR 240000 ps;
	R2Reg(10) <= '0';
	WAIT FOR 160000 ps;
	R2Reg(10) <= '1';
	WAIT FOR 240000 ps;
	R2Reg(10) <= '0';
	WAIT FOR 240000 ps;
	R2Reg(10) <= '1';
	WAIT FOR 90000 ps;
	R2Reg(10) <= '0';
WAIT;
END PROCESS t_prcs_R2Reg_10;
-- R2Reg[9]
t_prcs_R2Reg_9: PROCESS
BEGIN
	R2Reg(9) <= '1';
	WAIT FOR 80000 ps;
	R2Reg(9) <= '0';
	WAIT FOR 160000 ps;
	R2Reg(9) <= '1';
	WAIT FOR 240000 ps;
	R2Reg(9) <= '0';
	WAIT FOR 240000 ps;
	R2Reg(9) <= '1';
	WAIT FOR 250000 ps;
	R2Reg(9) <= '0';
WAIT;
END PROCESS t_prcs_R2Reg_9;
-- R2Reg[8]
t_prcs_R2Reg_8: PROCESS
BEGIN
	R2Reg(8) <= '0';
	WAIT FOR 80000 ps;
	R2Reg(8) <= '1';
	WAIT FOR 80000 ps;
	R2Reg(8) <= '0';
	WAIT FOR 560000 ps;
	R2Reg(8) <= '1';
	WAIT FOR 80000 ps;
	R2Reg(8) <= '0';
	WAIT FOR 80000 ps;
	R2Reg(8) <= '1';
	WAIT FOR 90000 ps;
	R2Reg(8) <= '0';
WAIT;
END PROCESS t_prcs_R2Reg_8;
-- R2Reg[7]
t_prcs_R2Reg_7: PROCESS
BEGIN
	R2Reg(7) <= '1';
	WAIT FOR 80000 ps;
	R2Reg(7) <= '0';
	WAIT FOR 400000 ps;
	R2Reg(7) <= '1';
	WAIT FOR 80000 ps;
	R2Reg(7) <= '0';
	WAIT FOR 80000 ps;
	R2Reg(7) <= '1';
	WAIT FOR 80000 ps;
	R2Reg(7) <= '0';
	WAIT FOR 160000 ps;
	R2Reg(7) <= '1';
	WAIT FOR 90000 ps;
	R2Reg(7) <= '0';
WAIT;
END PROCESS t_prcs_R2Reg_7;
-- R2Reg[6]
t_prcs_R2Reg_6: PROCESS
BEGIN
	R2Reg(6) <= '1';
	WAIT FOR 80000 ps;
	R2Reg(6) <= '0';
	WAIT FOR 80000 ps;
	R2Reg(6) <= '1';
	WAIT FOR 80000 ps;
	R2Reg(6) <= '0';
	WAIT FOR 80000 ps;
	R2Reg(6) <= '1';
	WAIT FOR 80000 ps;
	R2Reg(6) <= '0';
	WAIT FOR 80000 ps;
	R2Reg(6) <= '1';
	WAIT FOR 160000 ps;
	R2Reg(6) <= '0';
WAIT;
END PROCESS t_prcs_R2Reg_6;
-- R2Reg[5]
t_prcs_R2Reg_5: PROCESS
BEGIN
	R2Reg(5) <= '0';
	WAIT FOR 80000 ps;
	R2Reg(5) <= '1';
	WAIT FOR 80000 ps;
	R2Reg(5) <= '0';
	WAIT FOR 240000 ps;
	R2Reg(5) <= '1';
	WAIT FOR 80000 ps;
	R2Reg(5) <= '0';
	WAIT FOR 240000 ps;
	R2Reg(5) <= '1';
	WAIT FOR 160000 ps;
	R2Reg(5) <= '0';
WAIT;
END PROCESS t_prcs_R2Reg_5;
-- R2Reg[4]
t_prcs_R2Reg_4: PROCESS
BEGIN
	R2Reg(4) <= '0';
	WAIT FOR 160000 ps;
	R2Reg(4) <= '1';
	WAIT FOR 240000 ps;
	R2Reg(4) <= '0';
	WAIT FOR 160000 ps;
	R2Reg(4) <= '1';
	WAIT FOR 240000 ps;
	R2Reg(4) <= '0';
WAIT;
END PROCESS t_prcs_R2Reg_4;
-- R2Reg[3]
t_prcs_R2Reg_3: PROCESS
BEGIN
	R2Reg(3) <= '0';
	WAIT FOR 160000 ps;
	R2Reg(3) <= '1';
	WAIT FOR 160000 ps;
	R2Reg(3) <= '0';
	WAIT FOR 80000 ps;
	R2Reg(3) <= '1';
	WAIT FOR 80000 ps;
	R2Reg(3) <= '0';
	WAIT FOR 240000 ps;
	R2Reg(3) <= '1';
	WAIT FOR 80000 ps;
	R2Reg(3) <= '0';
	WAIT FOR 80000 ps;
	R2Reg(3) <= '1';
	WAIT FOR 90000 ps;
	R2Reg(3) <= '0';
WAIT;
END PROCESS t_prcs_R2Reg_3;
-- R2Reg[2]
t_prcs_R2Reg_2: PROCESS
BEGIN
	R2Reg(2) <= '0';
	WAIT FOR 160000 ps;
	R2Reg(2) <= '1';
	WAIT FOR 160000 ps;
	R2Reg(2) <= '0';
	WAIT FOR 80000 ps;
	R2Reg(2) <= '1';
	WAIT FOR 80000 ps;
	R2Reg(2) <= '0';
	WAIT FOR 160000 ps;
	R2Reg(2) <= '1';
	WAIT FOR 330000 ps;
	R2Reg(2) <= '0';
WAIT;
END PROCESS t_prcs_R2Reg_2;
-- R2Reg[1]
t_prcs_R2Reg_1: PROCESS
BEGIN
	R2Reg(1) <= '0';
	WAIT FOR 80000 ps;
	R2Reg(1) <= '1';
	WAIT FOR 240000 ps;
	R2Reg(1) <= '0';
	WAIT FOR 80000 ps;
	R2Reg(1) <= '1';
	WAIT FOR 570000 ps;
	R2Reg(1) <= '0';
WAIT;
END PROCESS t_prcs_R2Reg_1;
-- R2Reg[0]
t_prcs_R2Reg_0: PROCESS
BEGIN
	R2Reg(0) <= '1';
	WAIT FOR 80000 ps;
	R2Reg(0) <= '0';
	WAIT FOR 80000 ps;
	R2Reg(0) <= '1';
	WAIT FOR 160000 ps;
	R2Reg(0) <= '0';
	WAIT FOR 320000 ps;
	R2Reg(0) <= '1';
	WAIT FOR 80000 ps;
	R2Reg(0) <= '0';
	WAIT FOR 80000 ps;
	R2Reg(0) <= '1';
	WAIT FOR 80000 ps;
	R2Reg(0) <= '0';
WAIT;
END PROCESS t_prcs_R2Reg_0;
END register_ID_EX_arch;
