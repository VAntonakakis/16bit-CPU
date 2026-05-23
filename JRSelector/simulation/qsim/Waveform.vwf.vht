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
-- Generated on "05/19/2026 20:31:07"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          JRSelector
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY JRSelector_vhd_vec_tst IS
END JRSelector_vhd_vec_tst;
ARCHITECTURE JRSelector_arch OF JRSelector_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL BranchAD : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL JROpcode : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL JumpAD : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL PCout : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL PCP2AD : STD_LOGIC_VECTOR(15 DOWNTO 0);
COMPONENT JRSelector
	PORT (
	BranchAD : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	JROpcode : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	JumpAD : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	PCout : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	PCP2AD : IN STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : JRSelector
	PORT MAP (
-- list connections between master ports and signals
	BranchAD => BranchAD,
	JROpcode => JROpcode,
	JumpAD => JumpAD,
	PCout => PCout,
	PCP2AD => PCP2AD
	);
-- JROpcode[1]
t_prcs_JROpcode_1: PROCESS
BEGIN
	JROpcode(1) <= '0';
	WAIT FOR 319644 ps;
	JROpcode(1) <= '1';
WAIT;
END PROCESS t_prcs_JROpcode_1;
-- JROpcode[0]
t_prcs_JROpcode_0: PROCESS
BEGIN
	JROpcode(0) <= '0';
	WAIT FOR 159588 ps;
	JROpcode(0) <= '1';
	WAIT FOR 160056 ps;
	JROpcode(0) <= '0';
	WAIT FOR 160056 ps;
	JROpcode(0) <= '1';
WAIT;
END PROCESS t_prcs_JROpcode_0;
-- PCP2AD[15]
t_prcs_PCP2AD_15: PROCESS
BEGIN
	PCP2AD(15) <= '0';
WAIT;
END PROCESS t_prcs_PCP2AD_15;
-- PCP2AD[14]
t_prcs_PCP2AD_14: PROCESS
BEGIN
	PCP2AD(14) <= '0';
WAIT;
END PROCESS t_prcs_PCP2AD_14;
-- PCP2AD[13]
t_prcs_PCP2AD_13: PROCESS
BEGIN
	PCP2AD(13) <= '0';
WAIT;
END PROCESS t_prcs_PCP2AD_13;
-- PCP2AD[12]
t_prcs_PCP2AD_12: PROCESS
BEGIN
	PCP2AD(12) <= '0';
WAIT;
END PROCESS t_prcs_PCP2AD_12;
-- PCP2AD[11]
t_prcs_PCP2AD_11: PROCESS
BEGIN
	PCP2AD(11) <= '0';
WAIT;
END PROCESS t_prcs_PCP2AD_11;
-- PCP2AD[10]
t_prcs_PCP2AD_10: PROCESS
BEGIN
	PCP2AD(10) <= '0';
WAIT;
END PROCESS t_prcs_PCP2AD_10;
-- PCP2AD[9]
t_prcs_PCP2AD_9: PROCESS
BEGIN
	PCP2AD(9) <= '0';
WAIT;
END PROCESS t_prcs_PCP2AD_9;
-- PCP2AD[8]
t_prcs_PCP2AD_8: PROCESS
BEGIN
	PCP2AD(8) <= '0';
WAIT;
END PROCESS t_prcs_PCP2AD_8;
-- PCP2AD[7]
t_prcs_PCP2AD_7: PROCESS
BEGIN
	PCP2AD(7) <= '0';
WAIT;
END PROCESS t_prcs_PCP2AD_7;
-- PCP2AD[6]
t_prcs_PCP2AD_6: PROCESS
BEGIN
	PCP2AD(6) <= '0';
WAIT;
END PROCESS t_prcs_PCP2AD_6;
-- PCP2AD[5]
t_prcs_PCP2AD_5: PROCESS
BEGIN
	PCP2AD(5) <= '0';
WAIT;
END PROCESS t_prcs_PCP2AD_5;
-- PCP2AD[4]
t_prcs_PCP2AD_4: PROCESS
BEGIN
	PCP2AD(4) <= '0';
WAIT;
END PROCESS t_prcs_PCP2AD_4;
-- PCP2AD[3]
t_prcs_PCP2AD_3: PROCESS
BEGIN
	PCP2AD(3) <= '0';
WAIT;
END PROCESS t_prcs_PCP2AD_3;
-- PCP2AD[2]
t_prcs_PCP2AD_2: PROCESS
BEGIN
	PCP2AD(2) <= '0';
WAIT;
END PROCESS t_prcs_PCP2AD_2;
-- PCP2AD[1]
t_prcs_PCP2AD_1: PROCESS
BEGIN
	PCP2AD(1) <= '0';
	WAIT FOR 468 ps;
	PCP2AD(1) <= '1';
WAIT;
END PROCESS t_prcs_PCP2AD_1;
-- PCP2AD[0]
t_prcs_PCP2AD_0: PROCESS
BEGIN
	PCP2AD(0) <= '0';
WAIT;
END PROCESS t_prcs_PCP2AD_0;
-- JumpAD[15]
t_prcs_JumpAD_15: PROCESS
BEGIN
	JumpAD(15) <= '0';
WAIT;
END PROCESS t_prcs_JumpAD_15;
-- JumpAD[14]
t_prcs_JumpAD_14: PROCESS
BEGIN
	JumpAD(14) <= '0';
WAIT;
END PROCESS t_prcs_JumpAD_14;
-- JumpAD[13]
t_prcs_JumpAD_13: PROCESS
BEGIN
	JumpAD(13) <= '0';
WAIT;
END PROCESS t_prcs_JumpAD_13;
-- JumpAD[12]
t_prcs_JumpAD_12: PROCESS
BEGIN
	JumpAD(12) <= '0';
WAIT;
END PROCESS t_prcs_JumpAD_12;
-- JumpAD[11]
t_prcs_JumpAD_11: PROCESS
BEGIN
	JumpAD(11) <= '0';
WAIT;
END PROCESS t_prcs_JumpAD_11;
-- JumpAD[10]
t_prcs_JumpAD_10: PROCESS
BEGIN
	JumpAD(10) <= '0';
WAIT;
END PROCESS t_prcs_JumpAD_10;
-- JumpAD[9]
t_prcs_JumpAD_9: PROCESS
BEGIN
	JumpAD(9) <= '0';
WAIT;
END PROCESS t_prcs_JumpAD_9;
-- JumpAD[8]
t_prcs_JumpAD_8: PROCESS
BEGIN
	JumpAD(8) <= '0';
WAIT;
END PROCESS t_prcs_JumpAD_8;
-- JumpAD[7]
t_prcs_JumpAD_7: PROCESS
BEGIN
	JumpAD(7) <= '1';
WAIT;
END PROCESS t_prcs_JumpAD_7;
-- JumpAD[6]
t_prcs_JumpAD_6: PROCESS
BEGIN
	JumpAD(6) <= '1';
WAIT;
END PROCESS t_prcs_JumpAD_6;
-- JumpAD[5]
t_prcs_JumpAD_5: PROCESS
BEGIN
	JumpAD(5) <= '1';
WAIT;
END PROCESS t_prcs_JumpAD_5;
-- JumpAD[4]
t_prcs_JumpAD_4: PROCESS
BEGIN
	JumpAD(4) <= '1';
WAIT;
END PROCESS t_prcs_JumpAD_4;
-- JumpAD[3]
t_prcs_JumpAD_3: PROCESS
BEGIN
	JumpAD(3) <= '0';
WAIT;
END PROCESS t_prcs_JumpAD_3;
-- JumpAD[2]
t_prcs_JumpAD_2: PROCESS
BEGIN
	JumpAD(2) <= '0';
WAIT;
END PROCESS t_prcs_JumpAD_2;
-- JumpAD[1]
t_prcs_JumpAD_1: PROCESS
BEGIN
	JumpAD(1) <= '0';
WAIT;
END PROCESS t_prcs_JumpAD_1;
-- JumpAD[0]
t_prcs_JumpAD_0: PROCESS
BEGIN
	JumpAD(0) <= '0';
WAIT;
END PROCESS t_prcs_JumpAD_0;
-- BranchAD[15]
t_prcs_BranchAD_15: PROCESS
BEGIN
	BranchAD(15) <= '1';
WAIT;
END PROCESS t_prcs_BranchAD_15;
-- BranchAD[14]
t_prcs_BranchAD_14: PROCESS
BEGIN
	BranchAD(14) <= '1';
WAIT;
END PROCESS t_prcs_BranchAD_14;
-- BranchAD[13]
t_prcs_BranchAD_13: PROCESS
BEGIN
	BranchAD(13) <= '1';
WAIT;
END PROCESS t_prcs_BranchAD_13;
-- BranchAD[12]
t_prcs_BranchAD_12: PROCESS
BEGIN
	BranchAD(12) <= '1';
WAIT;
END PROCESS t_prcs_BranchAD_12;
-- BranchAD[11]
t_prcs_BranchAD_11: PROCESS
BEGIN
	BranchAD(11) <= '0';
WAIT;
END PROCESS t_prcs_BranchAD_11;
-- BranchAD[10]
t_prcs_BranchAD_10: PROCESS
BEGIN
	BranchAD(10) <= '0';
WAIT;
END PROCESS t_prcs_BranchAD_10;
-- BranchAD[9]
t_prcs_BranchAD_9: PROCESS
BEGIN
	BranchAD(9) <= '0';
WAIT;
END PROCESS t_prcs_BranchAD_9;
-- BranchAD[8]
t_prcs_BranchAD_8: PROCESS
BEGIN
	BranchAD(8) <= '0';
WAIT;
END PROCESS t_prcs_BranchAD_8;
-- BranchAD[7]
t_prcs_BranchAD_7: PROCESS
BEGIN
	BranchAD(7) <= '0';
WAIT;
END PROCESS t_prcs_BranchAD_7;
-- BranchAD[6]
t_prcs_BranchAD_6: PROCESS
BEGIN
	BranchAD(6) <= '0';
WAIT;
END PROCESS t_prcs_BranchAD_6;
-- BranchAD[5]
t_prcs_BranchAD_5: PROCESS
BEGIN
	BranchAD(5) <= '0';
WAIT;
END PROCESS t_prcs_BranchAD_5;
-- BranchAD[4]
t_prcs_BranchAD_4: PROCESS
BEGIN
	BranchAD(4) <= '0';
WAIT;
END PROCESS t_prcs_BranchAD_4;
-- BranchAD[3]
t_prcs_BranchAD_3: PROCESS
BEGIN
	BranchAD(3) <= '0';
WAIT;
END PROCESS t_prcs_BranchAD_3;
-- BranchAD[2]
t_prcs_BranchAD_2: PROCESS
BEGIN
	BranchAD(2) <= '0';
WAIT;
END PROCESS t_prcs_BranchAD_2;
-- BranchAD[1]
t_prcs_BranchAD_1: PROCESS
BEGIN
	BranchAD(1) <= '0';
WAIT;
END PROCESS t_prcs_BranchAD_1;
-- BranchAD[0]
t_prcs_BranchAD_0: PROCESS
BEGIN
	BranchAD(0) <= '0';
WAIT;
END PROCESS t_prcs_BranchAD_0;
END JRSelector_arch;
