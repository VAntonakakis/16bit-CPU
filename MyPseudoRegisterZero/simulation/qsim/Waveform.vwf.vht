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
-- Generated on "04/04/2026 17:59:01"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          MyPseudoRegisterZero
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY MyPseudoRegisterZero_vhd_vec_tst IS
END MyPseudoRegisterZero_vhd_vec_tst;
ARCHITECTURE MyPseudoRegisterZero_arch OF MyPseudoRegisterZero_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL Clock : STD_LOGIC;
SIGNAL Enable : STD_LOGIC;
SIGNAL Input : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL Output : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL Reset_n : STD_LOGIC;
COMPONENT MyPseudoRegisterZero
	PORT (
	Clock : IN STD_LOGIC;
	Enable : IN STD_LOGIC;
	Input : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	Output : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	Reset_n : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : MyPseudoRegisterZero
	PORT MAP (
-- list connections between master ports and signals
	Clock => Clock,
	Enable => Enable,
	Input => Input,
	Output => Output,
	Reset_n => Reset_n
	);
-- Input[15]
t_prcs_Input_15: PROCESS
BEGIN
	Input(15) <= '1';
	WAIT FOR 320000 ps;
	Input(15) <= '0';
	WAIT FOR 160000 ps;
	Input(15) <= '1';
	WAIT FOR 160000 ps;
	Input(15) <= '0';
WAIT;
END PROCESS t_prcs_Input_15;
-- Input[14]
t_prcs_Input_14: PROCESS
BEGIN
	Input(14) <= '1';
	WAIT FOR 160000 ps;
	Input(14) <= '0';
	WAIT FOR 160000 ps;
	Input(14) <= '1';
	WAIT FOR 320000 ps;
	Input(14) <= '0';
WAIT;
END PROCESS t_prcs_Input_14;
-- Input[13]
t_prcs_Input_13: PROCESS
BEGIN
	Input(13) <= '1';
	WAIT FOR 160000 ps;
	Input(13) <= '0';
	WAIT FOR 640000 ps;
	Input(13) <= '1';
WAIT;
END PROCESS t_prcs_Input_13;
-- Input[12]
t_prcs_Input_12: PROCESS
BEGIN
	Input(12) <= '1';
	WAIT FOR 640000 ps;
	Input(12) <= '0';
	WAIT FOR 160000 ps;
	Input(12) <= '1';
WAIT;
END PROCESS t_prcs_Input_12;
-- Input[11]
t_prcs_Input_11: PROCESS
BEGIN
	Input(11) <= '1';
	WAIT FOR 320000 ps;
	Input(11) <= '0';
	WAIT FOR 160000 ps;
	Input(11) <= '1';
	WAIT FOR 160000 ps;
	Input(11) <= '0';
WAIT;
END PROCESS t_prcs_Input_11;
-- Input[10]
t_prcs_Input_10: PROCESS
BEGIN
	Input(10) <= '0';
	WAIT FOR 320000 ps;
	Input(10) <= '1';
WAIT;
END PROCESS t_prcs_Input_10;
-- Input[9]
t_prcs_Input_9: PROCESS
BEGIN
	Input(9) <= '0';
	WAIT FOR 640000 ps;
	Input(9) <= '1';
	WAIT FOR 160000 ps;
	Input(9) <= '0';
WAIT;
END PROCESS t_prcs_Input_9;
-- Input[8]
t_prcs_Input_8: PROCESS
BEGIN
	Input(8) <= '1';
	WAIT FOR 320000 ps;
	Input(8) <= '0';
	WAIT FOR 160000 ps;
	Input(8) <= '1';
WAIT;
END PROCESS t_prcs_Input_8;
-- Input[7]
t_prcs_Input_7: PROCESS
BEGIN
	Input(7) <= '1';
	WAIT FOR 480000 ps;
	Input(7) <= '0';
	WAIT FOR 160000 ps;
	Input(7) <= '1';
	WAIT FOR 160000 ps;
	Input(7) <= '0';
WAIT;
END PROCESS t_prcs_Input_7;
-- Input[6]
t_prcs_Input_6: PROCESS
BEGIN
	Input(6) <= '1';
	WAIT FOR 160000 ps;
	Input(6) <= '0';
	WAIT FOR 160000 ps;
	Input(6) <= '1';
	WAIT FOR 320000 ps;
	Input(6) <= '0';
WAIT;
END PROCESS t_prcs_Input_6;
-- Input[5]
t_prcs_Input_5: PROCESS
BEGIN
	Input(5) <= '0';
	WAIT FOR 160000 ps;
	Input(5) <= '1';
	WAIT FOR 160000 ps;
	Input(5) <= '0';
	WAIT FOR 160000 ps;
	Input(5) <= '1';
	WAIT FOR 320000 ps;
	Input(5) <= '0';
WAIT;
END PROCESS t_prcs_Input_5;
-- Input[4]
t_prcs_Input_4: PROCESS
BEGIN
	Input(4) <= '0';
	WAIT FOR 160000 ps;
	Input(4) <= '1';
	WAIT FOR 160000 ps;
	Input(4) <= '0';
	WAIT FOR 160000 ps;
	Input(4) <= '1';
	WAIT FOR 160000 ps;
	Input(4) <= '0';
	WAIT FOR 160000 ps;
	Input(4) <= '1';
WAIT;
END PROCESS t_prcs_Input_4;
-- Input[3]
t_prcs_Input_3: PROCESS
BEGIN
	Input(3) <= '1';
	WAIT FOR 160000 ps;
	Input(3) <= '0';
	WAIT FOR 320000 ps;
	Input(3) <= '1';
WAIT;
END PROCESS t_prcs_Input_3;
-- Input[2]
t_prcs_Input_2: PROCESS
BEGIN
	Input(2) <= '1';
	WAIT FOR 160000 ps;
	Input(2) <= '0';
WAIT;
END PROCESS t_prcs_Input_2;
-- Input[1]
t_prcs_Input_1: PROCESS
BEGIN
	Input(1) <= '1';
	WAIT FOR 160000 ps;
	Input(1) <= '0';
	WAIT FOR 160000 ps;
	Input(1) <= '1';
	WAIT FOR 160000 ps;
	Input(1) <= '0';
	WAIT FOR 160000 ps;
	Input(1) <= '1';
	WAIT FOR 160000 ps;
	Input(1) <= '0';
WAIT;
END PROCESS t_prcs_Input_1;
-- Input[0]
t_prcs_Input_0: PROCESS
BEGIN
	Input(0) <= '0';
	WAIT FOR 160000 ps;
	Input(0) <= '1';
	WAIT FOR 320000 ps;
	Input(0) <= '0';
	WAIT FOR 160000 ps;
	Input(0) <= '1';
	WAIT FOR 160000 ps;
	Input(0) <= '0';
WAIT;
END PROCESS t_prcs_Input_0;

-- Enable
t_prcs_Enable: PROCESS
BEGIN
	Enable <= '0';
	WAIT FOR 160000 ps;
	Enable <= '1';
	WAIT FOR 160000 ps;
	Enable <= '0';
	WAIT FOR 160000 ps;
	Enable <= '1';
	WAIT FOR 160000 ps;
	Enable <= '0';
	WAIT FOR 160000 ps;
	Enable <= '1';
WAIT;
END PROCESS t_prcs_Enable;

-- Clock
t_prcs_Clock: PROCESS
BEGIN
	FOR i IN 1 TO 6
	LOOP
		Clock <= '0';
		WAIT FOR 80000 ps;
		Clock <= '1';
		WAIT FOR 80000 ps;
	END LOOP;
	Clock <= '0';
WAIT;
END PROCESS t_prcs_Clock;

-- Reset_n
t_prcs_Reset_n: PROCESS
BEGIN
	Reset_n <= '0';
	WAIT FOR 160000 ps;
	Reset_n <= '1';
WAIT;
END PROCESS t_prcs_Reset_n;
END MyPseudoRegisterZero_arch;
