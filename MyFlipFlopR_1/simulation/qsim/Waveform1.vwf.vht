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
-- Generated on "04/22/2026 16:01:24"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          flipflopR_1
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY flipflopR_1_vhd_vec_tst IS
END flipflopR_1_vhd_vec_tst;
ARCHITECTURE flipflopR_1_arch OF flipflopR_1_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL C : STD_LOGIC;
SIGNAL E : STD_LOGIC;
SIGNAL I : STD_LOGIC;
SIGNAL O : STD_LOGIC;
SIGNAL R : STD_LOGIC;
COMPONENT flipflopR_1
	PORT (
	C : IN STD_LOGIC;
	E : IN STD_LOGIC;
	I : IN STD_LOGIC;
	O : OUT STD_LOGIC;
	R : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : flipflopR_1
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
	WAIT FOR 160000 ps;
	C <= '0';
	WAIT FOR 160000 ps;
	C <= '1';
	WAIT FOR 160000 ps;
	C <= '0';
WAIT;
END PROCESS t_prcs_C;

-- I
t_prcs_I: PROCESS
BEGIN
	I <= '0';
	WAIT FOR 50000 ps;
	I <= '1';
	WAIT FOR 60000 ps;
	I <= '0';
	WAIT FOR 40000 ps;
	I <= '1';
	WAIT FOR 50000 ps;
	I <= '0';
	WAIT FOR 50000 ps;
	I <= '1';
	WAIT FOR 50000 ps;
	I <= '0';
	WAIT FOR 30000 ps;
	I <= '1';
	WAIT FOR 40000 ps;
	I <= '0';
	WAIT FOR 50000 ps;
	I <= '1';
	WAIT FOR 30000 ps;
	I <= '0';
	WAIT FOR 30000 ps;
	I <= '1';
	WAIT FOR 110000 ps;
	I <= '0';
WAIT;
END PROCESS t_prcs_I;

-- E
t_prcs_E: PROCESS
BEGIN
	E <= '1';
WAIT;
END PROCESS t_prcs_E;

-- R
t_prcs_R: PROCESS
BEGIN
	R <= '0';
WAIT;
END PROCESS t_prcs_R;
END flipflopR_1_arch;
