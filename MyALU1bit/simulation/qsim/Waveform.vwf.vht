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
-- Generated on "04/05/2026 10:03:17"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          MyALU1bit
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY MyALU1bit_vhd_vec_tst IS
END MyALU1bit_vhd_vec_tst;
ARCHITECTURE MyALU1bit_arch OF MyALU1bit_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL A : STD_LOGIC;
SIGNAL B : STD_LOGIC;
SIGNAL Cin : STD_LOGIC;
SIGNAL Overflow : STD_LOGIC;
SIGNAL Q : STD_LOGIC;
SIGNAL S : STD_LOGIC_VECTOR(2 DOWNTO 0);
COMPONENT MyALU1bit
	PORT (
	A : IN STD_LOGIC;
	B : IN STD_LOGIC;
	Cin : IN STD_LOGIC;
	Overflow : OUT STD_LOGIC;
	Q : OUT STD_LOGIC;
	S : IN STD_LOGIC_VECTOR(2 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : MyALU1bit
	PORT MAP (
-- list connections between master ports and signals
	A => A,
	B => B,
	Cin => Cin,
	Overflow => Overflow,
	Q => Q,
	S => S
	);

-- A
t_prcs_A: PROCESS
BEGIN
	A <= '1';
WAIT;
END PROCESS t_prcs_A;

-- B
t_prcs_B: PROCESS
BEGIN
	B <= '1';
WAIT;
END PROCESS t_prcs_B;

-- Cin
t_prcs_Cin: PROCESS
BEGIN
	Cin <= '0';
WAIT;
END PROCESS t_prcs_Cin;
-- S[2]
t_prcs_S_2: PROCESS
BEGIN
	S(2) <= '0';
WAIT;
END PROCESS t_prcs_S_2;
-- S[1]
t_prcs_S_1: PROCESS
BEGIN
	S(1) <= '0';
WAIT;
END PROCESS t_prcs_S_1;
-- S[0]
t_prcs_S_0: PROCESS
BEGIN
	S(0) <= '0';
WAIT;
END PROCESS t_prcs_S_0;
END MyALU1bit_arch;
