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
-- Generated on "03/25/2026 11:30:35"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          TwoComplement16bit
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY TwoComplement16bit_vhd_vec_tst IS
END TwoComplement16bit_vhd_vec_tst;
ARCHITECTURE TwoComplement16bit_arch OF TwoComplement16bit_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL N : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL Overflow : STD_LOGIC;
SIGNAL R : STD_LOGIC_VECTOR(15 DOWNTO 0);
COMPONENT TwoComplement16bit
	PORT (
	N : BUFFER STD_LOGIC_VECTOR(15 DOWNTO 0);
	Overflow : BUFFER STD_LOGIC;
	R : IN STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : TwoComplement16bit
	PORT MAP (
-- list connections between master ports and signals
	N => N,
	Overflow => Overflow,
	R => R
	);
-- R[15]
t_prcs_R_15: PROCESS
BEGIN
	R(15) <= '1';
WAIT;
END PROCESS t_prcs_R_15;
-- R[14]
t_prcs_R_14: PROCESS
BEGIN
	R(14) <= '1';
WAIT;
END PROCESS t_prcs_R_14;
-- R[13]
t_prcs_R_13: PROCESS
BEGIN
	R(13) <= '1';
WAIT;
END PROCESS t_prcs_R_13;
-- R[12]
t_prcs_R_12: PROCESS
BEGIN
	R(12) <= '1';
WAIT;
END PROCESS t_prcs_R_12;
-- R[11]
t_prcs_R_11: PROCESS
BEGIN
	R(11) <= '1';
WAIT;
END PROCESS t_prcs_R_11;
-- R[10]
t_prcs_R_10: PROCESS
BEGIN
	R(10) <= '1';
WAIT;
END PROCESS t_prcs_R_10;
-- R[9]
t_prcs_R_9: PROCESS
BEGIN
	R(9) <= '1';
WAIT;
END PROCESS t_prcs_R_9;
-- R[8]
t_prcs_R_8: PROCESS
BEGIN
	R(8) <= '1';
WAIT;
END PROCESS t_prcs_R_8;
-- R[7]
t_prcs_R_7: PROCESS
BEGIN
	R(7) <= '1';
WAIT;
END PROCESS t_prcs_R_7;
-- R[6]
t_prcs_R_6: PROCESS
BEGIN
	R(6) <= '1';
WAIT;
END PROCESS t_prcs_R_6;
-- R[5]
t_prcs_R_5: PROCESS
BEGIN
	R(5) <= '1';
WAIT;
END PROCESS t_prcs_R_5;
-- R[4]
t_prcs_R_4: PROCESS
BEGIN
	R(4) <= '1';
WAIT;
END PROCESS t_prcs_R_4;
-- R[3]
t_prcs_R_3: PROCESS
BEGIN
	R(3) <= '1';
WAIT;
END PROCESS t_prcs_R_3;
-- R[2]
t_prcs_R_2: PROCESS
BEGIN
	R(2) <= '1';
WAIT;
END PROCESS t_prcs_R_2;
-- R[1]
t_prcs_R_1: PROCESS
BEGIN
	R(1) <= '1';
WAIT;
END PROCESS t_prcs_R_1;
-- R[0]
t_prcs_R_0: PROCESS
BEGIN
	R(0) <= '1';
WAIT;
END PROCESS t_prcs_R_0;
END TwoComplement16bit_arch;
