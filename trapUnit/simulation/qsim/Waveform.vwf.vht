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
-- Generated on "05/19/2026 20:05:15"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          trapUnit
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY trapUnit_vhd_vec_tst IS
END trapUnit_vhd_vec_tst;
ARCHITECTURE trapUnit_arch OF trapUnit_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL endOfRunning : STD_LOGIC;
SIGNAL OpCode : STD_LOGIC_VECTOR(3 DOWNTO 0);
COMPONENT trapUnit
	PORT (
	endOfRunning : OUT STD_LOGIC;
	OpCode : IN STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : trapUnit
	PORT MAP (
-- list connections between master ports and signals
	endOfRunning => endOfRunning,
	OpCode => OpCode
	);
-- OpCode[3]
t_prcs_OpCode_3: PROCESS
BEGIN
	OpCode(3) <= '0';
	WAIT FOR 640000 ps;
	OpCode(3) <= '1';
WAIT;
END PROCESS t_prcs_OpCode_3;
-- OpCode[2]
t_prcs_OpCode_2: PROCESS
BEGIN
	OpCode(2) <= '0';
	WAIT FOR 320000 ps;
	OpCode(2) <= '1';
	WAIT FOR 320000 ps;
	OpCode(2) <= '0';
	WAIT FOR 320000 ps;
	OpCode(2) <= '1';
WAIT;
END PROCESS t_prcs_OpCode_2;
-- OpCode[1]
t_prcs_OpCode_1: PROCESS
BEGIN
	OpCode(1) <= '0';
	WAIT FOR 160000 ps;
	OpCode(1) <= '1';
	WAIT FOR 160000 ps;
	OpCode(1) <= '0';
	WAIT FOR 160000 ps;
	OpCode(1) <= '1';
	WAIT FOR 160000 ps;
	OpCode(1) <= '0';
	WAIT FOR 160000 ps;
	OpCode(1) <= '1';
	WAIT FOR 160000 ps;
	OpCode(1) <= '0';
	WAIT FOR 160000 ps;
	OpCode(1) <= '1';
WAIT;
END PROCESS t_prcs_OpCode_1;
-- OpCode[0]
t_prcs_OpCode_0: PROCESS
BEGIN
	OpCode(0) <= '0';
	WAIT FOR 80000 ps;
	OpCode(0) <= '1';
	WAIT FOR 80000 ps;
	OpCode(0) <= '0';
	WAIT FOR 80000 ps;
	OpCode(0) <= '1';
	WAIT FOR 80000 ps;
	OpCode(0) <= '0';
	WAIT FOR 80000 ps;
	OpCode(0) <= '1';
	WAIT FOR 80000 ps;
	OpCode(0) <= '0';
	WAIT FOR 80000 ps;
	OpCode(0) <= '1';
	WAIT FOR 80000 ps;
	OpCode(0) <= '0';
	WAIT FOR 80000 ps;
	OpCode(0) <= '1';
	WAIT FOR 80000 ps;
	OpCode(0) <= '0';
	WAIT FOR 80000 ps;
	OpCode(0) <= '1';
	WAIT FOR 80000 ps;
	OpCode(0) <= '0';
	WAIT FOR 80000 ps;
	OpCode(0) <= '1';
	WAIT FOR 80000 ps;
	OpCode(0) <= '0';
	WAIT FOR 80000 ps;
	OpCode(0) <= '1';
WAIT;
END PROCESS t_prcs_OpCode_0;
END trapUnit_arch;
