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
-- Generated on "04/08/2026 19:08:33"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          MyFlipFlopR_16
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY MyFlipFlopR_16_vhd_vec_tst IS
END MyFlipFlopR_16_vhd_vec_tst;
ARCHITECTURE MyFlipFlopR_16_arch OF MyFlipFlopR_16_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL C : STD_LOGIC;
SIGNAL E : STD_LOGIC;
SIGNAL I : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL O : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL R : STD_LOGIC;
COMPONENT MyFlipFlopR_16
	PORT (
	C : IN STD_LOGIC;
	E : IN STD_LOGIC;
	I : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	O : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	R : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : MyFlipFlopR_16
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
LOOP
	C <= '0';
	WAIT FOR 20000 ps;
	C <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 480000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_C;

-- E
t_prcs_E: PROCESS
BEGIN
	E <= '1';
WAIT;
END PROCESS t_prcs_E;
-- I[15]
t_prcs_I_15: PROCESS
BEGIN
	I(15) <= '0';
WAIT;
END PROCESS t_prcs_I_15;
-- I[14]
t_prcs_I_14: PROCESS
BEGIN
	I(14) <= '0';
WAIT;
END PROCESS t_prcs_I_14;
-- I[13]
t_prcs_I_13: PROCESS
BEGIN
	I(13) <= '0';
WAIT;
END PROCESS t_prcs_I_13;
-- I[12]
t_prcs_I_12: PROCESS
BEGIN
	I(12) <= '0';
	WAIT FOR 290000 ps;
	I(12) <= '1';
	WAIT FOR 40000 ps;
	I(12) <= '0';
WAIT;
END PROCESS t_prcs_I_12;
-- I[11]
t_prcs_I_11: PROCESS
BEGIN
	I(11) <= '0';
WAIT;
END PROCESS t_prcs_I_11;
-- I[10]
t_prcs_I_10: PROCESS
BEGIN
	I(10) <= '0';
	WAIT FOR 180000 ps;
	I(10) <= '1';
	WAIT FOR 60000 ps;
	I(10) <= '0';
WAIT;
END PROCESS t_prcs_I_10;
-- I[9]
t_prcs_I_9: PROCESS
BEGIN
	I(9) <= '0';
	WAIT FOR 60000 ps;
	I(9) <= '1';
	WAIT FOR 90000 ps;
	I(9) <= '0';
	WAIT FOR 70000 ps;
	I(9) <= '1';
	WAIT FOR 130000 ps;
	I(9) <= '0';
WAIT;
END PROCESS t_prcs_I_9;
-- I[8]
t_prcs_I_8: PROCESS
BEGIN
	I(8) <= '0';
WAIT;
END PROCESS t_prcs_I_8;
-- I[7]
t_prcs_I_7: PROCESS
BEGIN
	I(7) <= '0';
WAIT;
END PROCESS t_prcs_I_7;
-- I[6]
t_prcs_I_6: PROCESS
BEGIN
	I(6) <= '0';
WAIT;
END PROCESS t_prcs_I_6;
-- I[5]
t_prcs_I_5: PROCESS
BEGIN
	I(5) <= '0';
WAIT;
END PROCESS t_prcs_I_5;
-- I[4]
t_prcs_I_4: PROCESS
BEGIN
	I(4) <= '0';
WAIT;
END PROCESS t_prcs_I_4;
-- I[3]
t_prcs_I_3: PROCESS
BEGIN
	I(3) <= '0';
WAIT;
END PROCESS t_prcs_I_3;
-- I[2]
t_prcs_I_2: PROCESS
BEGIN
	I(2) <= '0';
WAIT;
END PROCESS t_prcs_I_2;
-- I[1]
t_prcs_I_1: PROCESS
BEGIN
	I(1) <= '0';
WAIT;
END PROCESS t_prcs_I_1;
-- I[0]
t_prcs_I_0: PROCESS
BEGIN
	I(0) <= '0';
WAIT;
END PROCESS t_prcs_I_0;

-- R
t_prcs_R: PROCESS
BEGIN
	FOR i IN 1 TO 9
	LOOP
		R <= '0';
		WAIT FOR 25000 ps;
		R <= '1';
		WAIT FOR 25000 ps;
	END LOOP;
	R <= '0';
	WAIT FOR 25000 ps;
	R <= '1';
WAIT;
END PROCESS t_prcs_R;
END MyFlipFlopR_16_arch;
