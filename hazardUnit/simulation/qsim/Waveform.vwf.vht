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
-- Generated on "05/20/2026 14:15:44"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          hazardUnit
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY hazardUnit_vhd_vec_tst IS
END hazardUnit_vhd_vec_tst;
ARCHITECTURE hazardUnit_arch OF hazardUnit_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL flush : STD_LOGIC;
SIGNAL isJR : STD_LOGIC;
SIGNAL isJump : STD_LOGIC;
SIGNAL JRopcode : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL mustBranch : STD_LOGIC;
SIGNAL wasJump : STD_LOGIC;
SIGNAL wasJumpOut : STD_LOGIC;
COMPONENT hazardUnit
	PORT (
	flush : OUT STD_LOGIC;
	isJR : IN STD_LOGIC;
	isJump : IN STD_LOGIC;
	JRopcode : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
	mustBranch : IN STD_LOGIC;
	wasJump : IN STD_LOGIC;
	wasJumpOut : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : hazardUnit
	PORT MAP (
-- list connections between master ports and signals
	flush => flush,
	isJR => isJR,
	isJump => isJump,
	JRopcode => JRopcode,
	mustBranch => mustBranch,
	wasJump => wasJump,
	wasJumpOut => wasJumpOut
	);

-- isJump
t_prcs_isJump: PROCESS
BEGIN
	isJump <= '1';
	WAIT FOR 80000 ps;
	isJump <= '0';
WAIT;
END PROCESS t_prcs_isJump;

-- mustBranch
t_prcs_mustBranch: PROCESS
BEGIN
	mustBranch <= '0';
	WAIT FOR 80000 ps;
	mustBranch <= '1';
	WAIT FOR 80000 ps;
	mustBranch <= '0';
WAIT;
END PROCESS t_prcs_mustBranch;

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

-- wasJump
t_prcs_wasJump: PROCESS
BEGIN
	wasJump <= '1';
	WAIT FOR 320000 ps;
	wasJump <= '0';
WAIT;
END PROCESS t_prcs_wasJump;
END hazardUnit_arch;
