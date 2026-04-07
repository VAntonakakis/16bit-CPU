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
-- Generated on "04/05/2026 13:03:58"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          immExtension
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY immExtension_vhd_vec_tst IS
END immExtension_vhd_vec_tst;
ARCHITECTURE immExtension_arch OF immExtension_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL I : STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL O : STD_LOGIC_VECTOR(15 DOWNTO 0);
COMPONENT immExtension
	PORT (
	I : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
	O : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : immExtension
	PORT MAP (
-- list connections between master ports and signals
	I => I,
	O => O
	);
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
	I(2) <= '1';
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
END immExtension_arch;
