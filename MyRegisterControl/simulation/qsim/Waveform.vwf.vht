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
-- Generated on "05/23/2026 10:10:42"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          MyRegisterControl
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY MyRegisterControl_vhd_vec_tst IS
END MyRegisterControl_vhd_vec_tst;
ARCHITECTURE MyRegisterControl_arch OF MyRegisterControl_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL Funct : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL idRType : STD_LOGIC;
SIGNAL IF_ID_Flush : STD_LOGIC;
SIGNAL isBranch : STD_LOGIC;
SIGNAL isJReg : STD_LOGIC;
SIGNAL isJType : STD_LOGIC;
SIGNAL isLdWord : STD_LOGIC;
SIGNAL isMFPC : STD_LOGIC;
SIGNAL isReadDig : STD_LOGIC;
SIGNAL isStWord : STD_LOGIC;
SIGNAL isWriteDig : STD_LOGIC;
SIGNAL OpCode : STD_LOGIC_VECTOR(3 DOWNTO 0);
COMPONENT MyRegisterControl
	PORT (
	Funct : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	idRType : OUT STD_LOGIC;
	IF_ID_Flush : IN STD_LOGIC;
	isBranch : OUT STD_LOGIC;
	isJReg : OUT STD_LOGIC;
	isJType : OUT STD_LOGIC;
	isLdWord : OUT STD_LOGIC;
	isMFPC : OUT STD_LOGIC;
	isReadDig : OUT STD_LOGIC;
	isStWord : OUT STD_LOGIC;
	isWriteDig : OUT STD_LOGIC;
	OpCode : IN STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : MyRegisterControl
	PORT MAP (
-- list connections between master ports and signals
	Funct => Funct,
	idRType => idRType,
	IF_ID_Flush => IF_ID_Flush,
	isBranch => isBranch,
	isJReg => isJReg,
	isJType => isJType,
	isLdWord => isLdWord,
	isMFPC => isMFPC,
	isReadDig => isReadDig,
	isStWord => isStWord,
	isWriteDig => isWriteDig,
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
	WAIT FOR 400000 ps;
	OpCode(2) <= '1';
WAIT;
END PROCESS t_prcs_OpCode_2;
-- OpCode[1]
t_prcs_OpCode_1: PROCESS
BEGIN
	OpCode(1) <= '0';
	WAIT FOR 320000 ps;
	OpCode(1) <= '1';
	WAIT FOR 80000 ps;
	OpCode(1) <= '0';
	WAIT FOR 80000 ps;
	OpCode(1) <= '1';
	WAIT FOR 160000 ps;
	OpCode(1) <= '0';
	WAIT FOR 80000 ps;
	OpCode(1) <= '1';
WAIT;
END PROCESS t_prcs_OpCode_1;
-- OpCode[0]
t_prcs_OpCode_0: PROCESS
BEGIN
	OpCode(0) <= '0';
	WAIT FOR 240000 ps;
	OpCode(0) <= '1';
	WAIT FOR 80000 ps;
	OpCode(0) <= '0';
	WAIT FOR 240000 ps;
	OpCode(0) <= '1';
WAIT;
END PROCESS t_prcs_OpCode_0;
-- Funct[2]
t_prcs_Funct_2: PROCESS
BEGIN
	Funct(2) <= '0';
	WAIT FOR 80000 ps;
	Funct(2) <= '1';
	WAIT FOR 160000 ps;
	Funct(2) <= '0';
WAIT;
END PROCESS t_prcs_Funct_2;
-- Funct[1]
t_prcs_Funct_1: PROCESS
BEGIN
	Funct(1) <= '0';
	WAIT FOR 160000 ps;
	Funct(1) <= '1';
	WAIT FOR 80000 ps;
	Funct(1) <= '0';
WAIT;
END PROCESS t_prcs_Funct_1;
-- Funct[0]
t_prcs_Funct_0: PROCESS
BEGIN
	Funct(0) <= '0';
	WAIT FOR 160000 ps;
	Funct(0) <= '1';
	WAIT FOR 80000 ps;
	Funct(0) <= '0';
WAIT;
END PROCESS t_prcs_Funct_0;

-- IF_ID_Flush
t_prcs_IF_ID_Flush: PROCESS
BEGIN
	IF_ID_Flush <= '0';
	WAIT FOR 800000 ps;
	IF_ID_Flush <= '1';
	WAIT FOR 80000 ps;
	IF_ID_Flush <= '0';
WAIT;
END PROCESS t_prcs_IF_ID_Flush;
END MyRegisterControl_arch;
