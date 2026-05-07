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
-- Generated on "05/07/2026 13:55:12"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          register_MEM_WB
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY register_MEM_WB_vhd_vec_tst IS
END register_MEM_WB_vhd_vec_tst;
ARCHITECTURE register_MEM_WB_arch OF register_MEM_WB_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clock : STD_LOGIC;
SIGNAL RegAD : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL Result : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL writeAD : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL writeData : STD_LOGIC_VECTOR(15 DOWNTO 0);
COMPONENT register_MEM_WB
	PORT (
	clock : IN STD_LOGIC;
	RegAD : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	Result : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	writeAD : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	writeData : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : register_MEM_WB
	PORT MAP (
-- list connections between master ports and signals
	clock => clock,
	RegAD => RegAD,
	Result => Result,
	writeAD => writeAD,
	writeData => writeData
	);
-- RegAD[2]
t_prcs_RegAD_2: PROCESS
BEGIN
	RegAD(2) <= '0';
	WAIT FOR 160000 ps;
	RegAD(2) <= '1';
	WAIT FOR 160000 ps;
	RegAD(2) <= '0';
WAIT;
END PROCESS t_prcs_RegAD_2;
-- RegAD[1]
t_prcs_RegAD_1: PROCESS
BEGIN
	RegAD(1) <= '0';
WAIT;
END PROCESS t_prcs_RegAD_1;
-- RegAD[0]
t_prcs_RegAD_0: PROCESS
BEGIN
	RegAD(0) <= '1';
	WAIT FOR 480000 ps;
	RegAD(0) <= '0';
WAIT;
END PROCESS t_prcs_RegAD_0;
-- Result[15]
t_prcs_Result_15: PROCESS
BEGIN
	Result(15) <= '1';
	WAIT FOR 160000 ps;
	Result(15) <= '0';
WAIT;
END PROCESS t_prcs_Result_15;
-- Result[14]
t_prcs_Result_14: PROCESS
BEGIN
	Result(14) <= '0';
WAIT;
END PROCESS t_prcs_Result_14;
-- Result[13]
t_prcs_Result_13: PROCESS
BEGIN
	Result(13) <= '1';
	WAIT FOR 160000 ps;
	Result(13) <= '0';
	WAIT FOR 160000 ps;
	Result(13) <= '1';
	WAIT FOR 160000 ps;
	Result(13) <= '0';
WAIT;
END PROCESS t_prcs_Result_13;
-- Result[12]
t_prcs_Result_12: PROCESS
BEGIN
	Result(12) <= '1';
	WAIT FOR 160000 ps;
	Result(12) <= '0';
	WAIT FOR 160000 ps;
	Result(12) <= '1';
	WAIT FOR 160000 ps;
	Result(12) <= '0';
WAIT;
END PROCESS t_prcs_Result_12;
-- Result[11]
t_prcs_Result_11: PROCESS
BEGIN
	Result(11) <= '1';
	WAIT FOR 160000 ps;
	Result(11) <= '0';
	WAIT FOR 160000 ps;
	Result(11) <= '1';
	WAIT FOR 160000 ps;
	Result(11) <= '0';
WAIT;
END PROCESS t_prcs_Result_11;
-- Result[10]
t_prcs_Result_10: PROCESS
BEGIN
	Result(10) <= '1';
	WAIT FOR 160000 ps;
	Result(10) <= '0';
	WAIT FOR 160000 ps;
	Result(10) <= '1';
	WAIT FOR 160000 ps;
	Result(10) <= '0';
WAIT;
END PROCESS t_prcs_Result_10;
-- Result[9]
t_prcs_Result_9: PROCESS
BEGIN
	Result(9) <= '1';
	WAIT FOR 320000 ps;
	Result(9) <= '0';
WAIT;
END PROCESS t_prcs_Result_9;
-- Result[8]
t_prcs_Result_8: PROCESS
BEGIN
	Result(8) <= '1';
	WAIT FOR 160000 ps;
	Result(8) <= '0';
	WAIT FOR 160000 ps;
	Result(8) <= '1';
	WAIT FOR 160000 ps;
	Result(8) <= '0';
WAIT;
END PROCESS t_prcs_Result_8;
-- Result[7]
t_prcs_Result_7: PROCESS
BEGIN
	Result(7) <= '1';
	WAIT FOR 160000 ps;
	Result(7) <= '0';
WAIT;
END PROCESS t_prcs_Result_7;
-- Result[6]
t_prcs_Result_6: PROCESS
BEGIN
	Result(6) <= '0';
	WAIT FOR 320000 ps;
	Result(6) <= '1';
	WAIT FOR 160000 ps;
	Result(6) <= '0';
WAIT;
END PROCESS t_prcs_Result_6;
-- Result[5]
t_prcs_Result_5: PROCESS
BEGIN
	Result(5) <= '1';
	WAIT FOR 320000 ps;
	Result(5) <= '0';
WAIT;
END PROCESS t_prcs_Result_5;
-- Result[4]
t_prcs_Result_4: PROCESS
BEGIN
	Result(4) <= '0';
	WAIT FOR 160000 ps;
	Result(4) <= '1';
	WAIT FOR 320000 ps;
	Result(4) <= '0';
WAIT;
END PROCESS t_prcs_Result_4;
-- Result[3]
t_prcs_Result_3: PROCESS
BEGIN
	Result(3) <= '0';
	WAIT FOR 160000 ps;
	Result(3) <= '1';
	WAIT FOR 320000 ps;
	Result(3) <= '0';
WAIT;
END PROCESS t_prcs_Result_3;
-- Result[2]
t_prcs_Result_2: PROCESS
BEGIN
	Result(2) <= '1';
	WAIT FOR 160000 ps;
	Result(2) <= '0';
	WAIT FOR 160000 ps;
	Result(2) <= '1';
	WAIT FOR 160000 ps;
	Result(2) <= '0';
WAIT;
END PROCESS t_prcs_Result_2;
-- Result[1]
t_prcs_Result_1: PROCESS
BEGIN
	Result(1) <= '0';
	WAIT FOR 320000 ps;
	Result(1) <= '1';
	WAIT FOR 160000 ps;
	Result(1) <= '0';
WAIT;
END PROCESS t_prcs_Result_1;
-- Result[0]
t_prcs_Result_0: PROCESS
BEGIN
	Result(0) <= '1';
	WAIT FOR 320000 ps;
	Result(0) <= '0';
WAIT;
END PROCESS t_prcs_Result_0;

-- clock
t_prcs_clock: PROCESS
BEGIN
	FOR i IN 1 TO 3
	LOOP
		clock <= '0';
		WAIT FOR 80000 ps;
		clock <= '1';
		WAIT FOR 80000 ps;
	END LOOP;
	clock <= '0';
WAIT;
END PROCESS t_prcs_clock;
END register_MEM_WB_arch;
