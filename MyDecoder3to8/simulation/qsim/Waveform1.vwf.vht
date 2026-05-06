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
-- Generated on "04/29/2026 15:07:12"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          MyDecoder3to8
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY MyDecoder3to8_vhd_vec_tst IS
END MyDecoder3to8_vhd_vec_tst;
ARCHITECTURE MyDecoder3to8_arch OF MyDecoder3to8_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL Q : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL S : STD_LOGIC_VECTOR(2 DOWNTO 0);
COMPONENT MyDecoder3to8
	PORT (
	Q : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	S : IN STD_LOGIC_VECTOR(2 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : MyDecoder3to8
	PORT MAP (
-- list connections between master ports and signals
	Q => Q,
	S => S
	);
-- S[2]
t_prcs_S_2: PROCESS
BEGIN
	S(2) <= '1';
WAIT;
END PROCESS t_prcs_S_2;
-- S[1]
t_prcs_S_1: PROCESS
BEGIN
	S(1) <= '1';
WAIT;
END PROCESS t_prcs_S_1;
-- S[0]
t_prcs_S_0: PROCESS
BEGIN
	S(0) <= '1';
WAIT;
END PROCESS t_prcs_S_0;
END MyDecoder3to8_arch;
