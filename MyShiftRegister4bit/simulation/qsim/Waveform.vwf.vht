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
-- Generated on "04/21/2026 19:17:48"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          MyShiftRegister4bit
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY MyShiftRegister4bit_vhd_vec_tst IS
END MyShiftRegister4bit_vhd_vec_tst;
ARCHITECTURE MyShiftRegister4bit_arch OF MyShiftRegister4bit_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL Clock : STD_LOGIC;
SIGNAL Enable : STD_LOGIC;
SIGNAL Input : STD_LOGIC;
SIGNAL Output : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL Reset_n : STD_LOGIC;
COMPONENT MyShiftRegister4bit
	PORT (
	Clock : IN STD_LOGIC;
	Enable : IN STD_LOGIC;
	Input : IN STD_LOGIC;
	Output : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	Reset_n : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : MyShiftRegister4bit
	PORT MAP (
-- list connections between master ports and signals
	Clock => Clock,
	Enable => Enable,
	Input => Input,
	Output => Output,
	Reset_n => Reset_n
	);

-- Input
t_prcs_Input: PROCESS
BEGIN
	Input <= '1';
	WAIT FOR 100000 ps;
	Input <= '0';
	WAIT FOR 100000 ps;
	Input <= '1';
	WAIT FOR 300000 ps;
	Input <= '0';
WAIT;
END PROCESS t_prcs_Input;

-- Enable
t_prcs_Enable: PROCESS
BEGIN
	Enable <= '1';
WAIT;
END PROCESS t_prcs_Enable;

-- Clock
t_prcs_Clock: PROCESS
BEGIN
LOOP
	Clock <= '0';
	WAIT FOR 50000 ps;
	Clock <= '1';
	WAIT FOR 50000 ps;
	IF (NOW >= 800000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_Clock;

-- Reset_n
t_prcs_Reset_n: PROCESS
BEGIN
	Reset_n <= '0';
	WAIT FOR 50000 ps;
	Reset_n <= '1';
WAIT;
END PROCESS t_prcs_Reset_n;
END MyShiftRegister4bit_arch;
