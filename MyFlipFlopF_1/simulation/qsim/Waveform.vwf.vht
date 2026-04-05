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
-- Generated on "04/03/2026 22:04:49"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          flipflopF_1
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY flipflopF_1_vhd_vec_tst IS
END flipflopF_1_vhd_vec_tst;
ARCHITECTURE flipflopF_1_arch OF flipflopF_1_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL C : STD_LOGIC;
SIGNAL E : STD_LOGIC;
SIGNAL I : STD_LOGIC;
SIGNAL O : STD_LOGIC;
SIGNAL R : STD_LOGIC;
COMPONENT flipflopF_1
	PORT (
	C : IN STD_LOGIC;
	E : IN STD_LOGIC;
	I : IN STD_LOGIC;
	O : OUT STD_LOGIC;
	R : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : flipflopF_1
	PORT MAP (
-- list connections between master ports and signals
	C => C,
	E => E,
	I => I,
	O => O,
	R => R
	);

-- C
t_prcs_C: PROCESS
BEGIN
	C <= '0';
	WAIT FOR 80000 ps;
	C <= '1';
	WAIT FOR 200000 ps;
	C <= '0';
WAIT;
END PROCESS t_prcs_C;

-- E
t_prcs_E: PROCESS
BEGIN
	E <= '1';
WAIT;
END PROCESS t_prcs_E;

-- I
t_prcs_I: PROCESS
BEGIN
	I <= '1';
WAIT;
END PROCESS t_prcs_I;

-- R
t_prcs_R: PROCESS
BEGIN
	R <= '0';
	WAIT FOR 40000 ps;
	R <= '1';
WAIT;
END PROCESS t_prcs_R;
END flipflopF_1_arch;
