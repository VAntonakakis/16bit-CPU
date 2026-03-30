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
-- Generated on "03/30/2026 22:38:15"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          MyDecoder1to2
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY MyDecoder1to2_vhd_vec_tst IS
END MyDecoder1to2_vhd_vec_tst;
ARCHITECTURE MyDecoder1to2_arch OF MyDecoder1to2_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL Q1 : STD_LOGIC;
SIGNAL Q2 : STD_LOGIC;
SIGNAL S : STD_LOGIC;
COMPONENT MyDecoder1to2
	PORT (
	Q1 : OUT STD_LOGIC;
	Q2 : OUT STD_LOGIC;
	S : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : MyDecoder1to2
	PORT MAP (
-- list connections between master ports and signals
	Q1 => Q1,
	Q2 => Q2,
	S => S
	);

-- S
t_prcs_S: PROCESS
BEGIN
LOOP
	S <= '0';
	WAIT FOR 500000 ps;
	S <= '1';
	WAIT FOR 500000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_S;
END MyDecoder1to2_arch;
