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
-- Generated on "05/08/2026 17:07:58"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          register_IF_ID
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY register_IF_ID_vhd_vec_tst IS
END register_IF_ID_vhd_vec_tst;
ARCHITECTURE register_IF_ID_arch OF register_IF_ID_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clock : STD_LOGIC;
SIGNAL IF_Flush : STD_LOGIC;
SIGNAL IF_ID_ENABLE : STD_LOGIC;
SIGNAL inInstruction : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL inPC : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL outInstruction : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL outPC : STD_LOGIC_VECTOR(15 DOWNTO 0);
COMPONENT register_IF_ID
	PORT (
	clock : IN STD_LOGIC;
	IF_Flush : IN STD_LOGIC;
	IF_ID_ENABLE : IN STD_LOGIC;
	inInstruction : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	inPC : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	outInstruction : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	outPC : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : register_IF_ID
	PORT MAP (
-- list connections between master ports and signals
	clock => clock,
	IF_Flush => IF_Flush,
	IF_ID_ENABLE => IF_ID_ENABLE,
	inInstruction => inInstruction,
	inPC => inPC,
	outInstruction => outInstruction,
	outPC => outPC
	);
-- inInstruction[15]
t_prcs_inInstruction_15: PROCESS
BEGIN
	inInstruction(15) <= '0';
	WAIT FOR 320000 ps;
	inInstruction(15) <= '1';
	WAIT FOR 160000 ps;
	inInstruction(15) <= '0';
WAIT;
END PROCESS t_prcs_inInstruction_15;
-- inInstruction[14]
t_prcs_inInstruction_14: PROCESS
BEGIN
	inInstruction(14) <= '1';
	WAIT FOR 160000 ps;
	inInstruction(14) <= '0';
	WAIT FOR 160000 ps;
	inInstruction(14) <= '1';
	WAIT FOR 160000 ps;
	inInstruction(14) <= '0';
WAIT;
END PROCESS t_prcs_inInstruction_14;
-- inInstruction[13]
t_prcs_inInstruction_13: PROCESS
BEGIN
	inInstruction(13) <= '1';
	WAIT FOR 320000 ps;
	inInstruction(13) <= '0';
WAIT;
END PROCESS t_prcs_inInstruction_13;
-- inInstruction[12]
t_prcs_inInstruction_12: PROCESS
BEGIN
	inInstruction(12) <= '0';
	WAIT FOR 160000 ps;
	inInstruction(12) <= '1';
	WAIT FOR 320000 ps;
	inInstruction(12) <= '0';
WAIT;
END PROCESS t_prcs_inInstruction_12;
-- inInstruction[11]
t_prcs_inInstruction_11: PROCESS
BEGIN
	inInstruction(11) <= '0';
	WAIT FOR 160000 ps;
	inInstruction(11) <= '1';
	WAIT FOR 320000 ps;
	inInstruction(11) <= '0';
WAIT;
END PROCESS t_prcs_inInstruction_11;
-- inInstruction[10]
t_prcs_inInstruction_10: PROCESS
BEGIN
	inInstruction(10) <= '1';
	WAIT FOR 160000 ps;
	inInstruction(10) <= '0';
	WAIT FOR 160000 ps;
	inInstruction(10) <= '1';
	WAIT FOR 160000 ps;
	inInstruction(10) <= '0';
WAIT;
END PROCESS t_prcs_inInstruction_10;
-- inInstruction[9]
t_prcs_inInstruction_9: PROCESS
BEGIN
	inInstruction(9) <= '0';
	WAIT FOR 160000 ps;
	inInstruction(9) <= '1';
	WAIT FOR 320000 ps;
	inInstruction(9) <= '0';
WAIT;
END PROCESS t_prcs_inInstruction_9;
-- inInstruction[8]
t_prcs_inInstruction_8: PROCESS
BEGIN
	inInstruction(8) <= '1';
	WAIT FOR 480000 ps;
	inInstruction(8) <= '0';
WAIT;
END PROCESS t_prcs_inInstruction_8;
-- inInstruction[7]
t_prcs_inInstruction_7: PROCESS
BEGIN
	inInstruction(7) <= '1';
	WAIT FOR 320000 ps;
	inInstruction(7) <= '0';
WAIT;
END PROCESS t_prcs_inInstruction_7;
-- inInstruction[6]
t_prcs_inInstruction_6: PROCESS
BEGIN
	inInstruction(6) <= '0';
	WAIT FOR 160000 ps;
	inInstruction(6) <= '1';
	WAIT FOR 160000 ps;
	inInstruction(6) <= '0';
WAIT;
END PROCESS t_prcs_inInstruction_6;
-- inInstruction[5]
t_prcs_inInstruction_5: PROCESS
BEGIN
	inInstruction(5) <= '0';
	WAIT FOR 320000 ps;
	inInstruction(5) <= '1';
	WAIT FOR 160000 ps;
	inInstruction(5) <= '0';
WAIT;
END PROCESS t_prcs_inInstruction_5;
-- inInstruction[4]
t_prcs_inInstruction_4: PROCESS
BEGIN
	inInstruction(4) <= '1';
	WAIT FOR 320000 ps;
	inInstruction(4) <= '0';
WAIT;
END PROCESS t_prcs_inInstruction_4;
-- inInstruction[3]
t_prcs_inInstruction_3: PROCESS
BEGIN
	inInstruction(3) <= '1';
	WAIT FOR 160000 ps;
	inInstruction(3) <= '0';
	WAIT FOR 160000 ps;
	inInstruction(3) <= '1';
	WAIT FOR 160000 ps;
	inInstruction(3) <= '0';
WAIT;
END PROCESS t_prcs_inInstruction_3;
-- inInstruction[2]
t_prcs_inInstruction_2: PROCESS
BEGIN
	inInstruction(2) <= '1';
	WAIT FOR 160000 ps;
	inInstruction(2) <= '0';
	WAIT FOR 160000 ps;
	inInstruction(2) <= '1';
	WAIT FOR 160000 ps;
	inInstruction(2) <= '0';
WAIT;
END PROCESS t_prcs_inInstruction_2;
-- inInstruction[1]
t_prcs_inInstruction_1: PROCESS
BEGIN
	inInstruction(1) <= '1';
	WAIT FOR 160000 ps;
	inInstruction(1) <= '0';
WAIT;
END PROCESS t_prcs_inInstruction_1;
-- inInstruction[0]
t_prcs_inInstruction_0: PROCESS
BEGIN
	inInstruction(0) <= '0';
	WAIT FOR 160000 ps;
	inInstruction(0) <= '1';
	WAIT FOR 160000 ps;
	inInstruction(0) <= '0';
WAIT;
END PROCESS t_prcs_inInstruction_0;
-- inPC[15]
t_prcs_inPC_15: PROCESS
BEGIN
	inPC(15) <= '1';
	WAIT FOR 160000 ps;
	inPC(15) <= '0';
	WAIT FOR 160000 ps;
	inPC(15) <= '1';
	WAIT FOR 160000 ps;
	inPC(15) <= '0';
WAIT;
END PROCESS t_prcs_inPC_15;
-- inPC[14]
t_prcs_inPC_14: PROCESS
BEGIN
	inPC(14) <= '0';
WAIT;
END PROCESS t_prcs_inPC_14;
-- inPC[13]
t_prcs_inPC_13: PROCESS
BEGIN
	inPC(13) <= '1';
	WAIT FOR 480000 ps;
	inPC(13) <= '0';
WAIT;
END PROCESS t_prcs_inPC_13;
-- inPC[12]
t_prcs_inPC_12: PROCESS
BEGIN
	inPC(12) <= '1';
	WAIT FOR 160000 ps;
	inPC(12) <= '0';
WAIT;
END PROCESS t_prcs_inPC_12;
-- inPC[11]
t_prcs_inPC_11: PROCESS
BEGIN
	inPC(11) <= '0';
	WAIT FOR 160000 ps;
	inPC(11) <= '1';
	WAIT FOR 160000 ps;
	inPC(11) <= '0';
WAIT;
END PROCESS t_prcs_inPC_11;
-- inPC[10]
t_prcs_inPC_10: PROCESS
BEGIN
	inPC(10) <= '1';
	WAIT FOR 320000 ps;
	inPC(10) <= '0';
WAIT;
END PROCESS t_prcs_inPC_10;
-- inPC[9]
t_prcs_inPC_9: PROCESS
BEGIN
	inPC(9) <= '1';
	WAIT FOR 160000 ps;
	inPC(9) <= '0';
WAIT;
END PROCESS t_prcs_inPC_9;
-- inPC[8]
t_prcs_inPC_8: PROCESS
BEGIN
	inPC(8) <= '0';
	WAIT FOR 320000 ps;
	inPC(8) <= '1';
	WAIT FOR 160000 ps;
	inPC(8) <= '0';
WAIT;
END PROCESS t_prcs_inPC_8;
-- inPC[7]
t_prcs_inPC_7: PROCESS
BEGIN
	inPC(7) <= '0';
WAIT;
END PROCESS t_prcs_inPC_7;
-- inPC[6]
t_prcs_inPC_6: PROCESS
BEGIN
	inPC(6) <= '0';
	WAIT FOR 160000 ps;
	inPC(6) <= '1';
	WAIT FOR 160000 ps;
	inPC(6) <= '0';
WAIT;
END PROCESS t_prcs_inPC_6;
-- inPC[5]
t_prcs_inPC_5: PROCESS
BEGIN
	inPC(5) <= '0';
	WAIT FOR 320000 ps;
	inPC(5) <= '1';
	WAIT FOR 160000 ps;
	inPC(5) <= '0';
WAIT;
END PROCESS t_prcs_inPC_5;
-- inPC[4]
t_prcs_inPC_4: PROCESS
BEGIN
	inPC(4) <= '1';
	WAIT FOR 160000 ps;
	inPC(4) <= '0';
	WAIT FOR 160000 ps;
	inPC(4) <= '1';
	WAIT FOR 160000 ps;
	inPC(4) <= '0';
WAIT;
END PROCESS t_prcs_inPC_4;
-- inPC[3]
t_prcs_inPC_3: PROCESS
BEGIN
	inPC(3) <= '0';
	WAIT FOR 160000 ps;
	inPC(3) <= '1';
	WAIT FOR 160000 ps;
	inPC(3) <= '0';
WAIT;
END PROCESS t_prcs_inPC_3;
-- inPC[2]
t_prcs_inPC_2: PROCESS
BEGIN
	inPC(2) <= '1';
	WAIT FOR 160000 ps;
	inPC(2) <= '0';
WAIT;
END PROCESS t_prcs_inPC_2;
-- inPC[1]
t_prcs_inPC_1: PROCESS
BEGIN
	inPC(1) <= '1';
	WAIT FOR 160000 ps;
	inPC(1) <= '0';
WAIT;
END PROCESS t_prcs_inPC_1;
-- inPC[0]
t_prcs_inPC_0: PROCESS
BEGIN
	inPC(0) <= '1';
	WAIT FOR 320000 ps;
	inPC(0) <= '0';
WAIT;
END PROCESS t_prcs_inPC_0;

-- IF_Flush
t_prcs_IF_Flush: PROCESS
BEGIN
	IF_Flush <= '0';
	WAIT FOR 160000 ps;
	IF_Flush <= '1';
	WAIT FOR 160000 ps;
	IF_Flush <= '0';
WAIT;
END PROCESS t_prcs_IF_Flush;

-- IF_ID_ENABLE
t_prcs_IF_ID_ENABLE: PROCESS
BEGIN
	IF_ID_ENABLE <= '0';
	WAIT FOR 320000 ps;
	IF_ID_ENABLE <= '1';
	WAIT FOR 160000 ps;
	IF_ID_ENABLE <= '0';
WAIT;
END PROCESS t_prcs_IF_ID_ENABLE;

-- clock
t_prcs_clock: PROCESS
BEGIN
	FOR i IN 1 TO 3
	LOOP
		clock <= '0';
		WAIT FOR 80000 ps;
		clock <= '1';
		WAIT FOR 80000 ps;
	END LOOP;
	clock <= '0';
WAIT;
END PROCESS t_prcs_clock;
END register_IF_ID_arch;
