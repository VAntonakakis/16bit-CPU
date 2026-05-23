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
-- Generated on "05/20/2026 20:36:29"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          MyAluControl
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY MyAluControl_vhd_vec_tst IS
END MyAluControl_vhd_vec_tst;
ARCHITECTURE MyAluControl_arch OF MyAluControl_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL alu_sel : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL func : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL opcode : STD_LOGIC_VECTOR(3 DOWNTO 0);
COMPONENT MyAluControl
	PORT (
	alu_sel : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	func : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	opcode : IN STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : MyAluControl
	PORT MAP (
-- list connections between master ports and signals
	alu_sel => alu_sel,
	func => func,
	opcode => opcode
	);
-- opcode[3]
t_prcs_opcode_3: PROCESS
BEGIN
	opcode(3) <= '0';
	WAIT FOR 640000 ps;
	opcode(3) <= '1';
WAIT;
END PROCESS t_prcs_opcode_3;
-- opcode[2]
t_prcs_opcode_2: PROCESS
BEGIN
	opcode(2) <= '0';
	WAIT FOR 720000 ps;
	opcode(2) <= '1';
WAIT;
END PROCESS t_prcs_opcode_2;
-- opcode[1]
t_prcs_opcode_1: PROCESS
BEGIN
	opcode(1) <= '0';
WAIT;
END PROCESS t_prcs_opcode_1;
-- opcode[0]
t_prcs_opcode_0: PROCESS
BEGIN
	opcode(0) <= '0';
	WAIT FOR 640000 ps;
	opcode(0) <= '1';
	WAIT FOR 80000 ps;
	opcode(0) <= '0';
WAIT;
END PROCESS t_prcs_opcode_0;
-- func[2]
t_prcs_func_2: PROCESS
BEGIN
	func(2) <= '0';
	WAIT FOR 320000 ps;
	func(2) <= '1';
	WAIT FOR 320000 ps;
	func(2) <= '0';
	WAIT FOR 80000 ps;
	func(2) <= '1';
WAIT;
END PROCESS t_prcs_func_2;
-- func[1]
t_prcs_func_1: PROCESS
BEGIN
	func(1) <= '0';
	WAIT FOR 160000 ps;
	func(1) <= '1';
	WAIT FOR 160000 ps;
	func(1) <= '0';
	WAIT FOR 160000 ps;
	func(1) <= '1';
	WAIT FOR 160000 ps;
	func(1) <= '0';
	WAIT FOR 80000 ps;
	func(1) <= '1';
WAIT;
END PROCESS t_prcs_func_1;
-- func[0]
t_prcs_func_0: PROCESS
BEGIN
	func(0) <= '0';
	WAIT FOR 80000 ps;
	func(0) <= '1';
	WAIT FOR 80000 ps;
	func(0) <= '0';
	WAIT FOR 80000 ps;
	func(0) <= '1';
	WAIT FOR 80000 ps;
	func(0) <= '0';
	WAIT FOR 80000 ps;
	func(0) <= '1';
	WAIT FOR 80000 ps;
	func(0) <= '0';
	WAIT FOR 80000 ps;
	func(0) <= '1';
	WAIT FOR 80000 ps;
	func(0) <= '0';
	WAIT FOR 80000 ps;
	func(0) <= '1';
WAIT;
END PROCESS t_prcs_func_0;
END MyAluControl_arch;
