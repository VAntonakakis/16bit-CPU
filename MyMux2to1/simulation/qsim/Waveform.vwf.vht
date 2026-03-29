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
-- Generated on "03/29/2026 11:55:33"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          MyMux2to1
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY MyMux2to1_vhd_vec_tst IS
END MyMux2to1_vhd_vec_tst;
ARCHITECTURE MyMux2to1_arch OF MyMux2to1_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL A : STD_LOGIC;
SIGNAL B : STD_LOGIC;
SIGNAL Q : STD_LOGIC;
SIGNAL S : STD_LOGIC;
COMPONENT MyMux2to1
	PORT (
	A : IN STD_LOGIC;
	B : IN STD_LOGIC;
	Q : OUT STD_LOGIC;
	S : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : MyMux2to1
	PORT MAP (
-- list connections between master ports and signals
	A => A,
	B => B,
	Q => Q,
	S => S
	);

-- A
t_prcs_A: PROCESS
BEGIN
	A <= '0';
WAIT;
END PROCESS t_prcs_A;

-- B
t_prcs_B: PROCESS
BEGIN
	B <= '1';
WAIT;
END PROCESS t_prcs_B;

-- S
t_prcs_S: PROCESS
BEGIN
LOOP
	S <= '0';
	WAIT FOR 125000 ps;
	S <= '1';
	WAIT FOR 125000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_S;
END MyMux2to1_arch;
