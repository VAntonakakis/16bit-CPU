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
-- Generated on "04/05/2026 01:34:46"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          MyRegisterFile
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY MyRegisterFile_vhd_vec_tst IS
END MyRegisterFile_vhd_vec_tst;
ARCHITECTURE MyRegisterFile_arch OF MyRegisterFile_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL Clock : STD_LOGIC;
SIGNAL OUTall : STD_LOGIC_VECTOR(127 DOWNTO 0);
SIGNAL Read1 : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL Read1AD : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL Read2 : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL Read2AD : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL Write1 : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL Write1AD : STD_LOGIC_VECTOR(2 DOWNTO 0);
COMPONENT MyRegisterFile
	PORT (
	Clock : IN STD_LOGIC;
	OUTall : BUFFER STD_LOGIC_VECTOR(127 DOWNTO 0);
	Read1 : BUFFER STD_LOGIC_VECTOR(15 DOWNTO 0);
	Read1AD : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	Read2 : BUFFER STD_LOGIC_VECTOR(15 DOWNTO 0);
	Read2AD : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	Write1 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	Write1AD : IN STD_LOGIC_VECTOR(2 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : MyRegisterFile
	PORT MAP (
-- list connections between master ports and signals
	Clock => Clock,
	OUTall => OUTall,
	Read1 => Read1,
	Read1AD => Read1AD,
	Read2 => Read2,
	Read2AD => Read2AD,
	Write1 => Write1,
	Write1AD => Write1AD
	);

-- Clock
t_prcs_Clock: PROCESS
BEGIN
LOOP
	Clock <= '0';
	WAIT FOR 100000 ps;
	Clock <= '1';
	WAIT FOR 100000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_Clock;
-- Write1AD[2]
t_prcs_Write1AD_2: PROCESS
BEGIN
	Write1AD(2) <= '0';
WAIT;
END PROCESS t_prcs_Write1AD_2;
-- Write1AD[1]
t_prcs_Write1AD_1: PROCESS
BEGIN
	Write1AD(1) <= '0';
	WAIT FOR 200000 ps;
	Write1AD(1) <= '1';
	WAIT FOR 200000 ps;
	Write1AD(1) <= '0';
	WAIT FOR 400000 ps;
	Write1AD(1) <= '1';
WAIT;
END PROCESS t_prcs_Write1AD_1;
-- Write1AD[0]
t_prcs_Write1AD_0: PROCESS
BEGIN
	Write1AD(0) <= '1';
	WAIT FOR 400000 ps;
	Write1AD(0) <= '0';
	WAIT FOR 200000 ps;
	Write1AD(0) <= '1';
WAIT;
END PROCESS t_prcs_Write1AD_0;
-- Write1[15]
t_prcs_Write1_15: PROCESS
BEGIN
	Write1(15) <= '1';
	WAIT FOR 600000 ps;
	Write1(15) <= '0';
WAIT;
END PROCESS t_prcs_Write1_15;
-- Write1[14]
t_prcs_Write1_14: PROCESS
BEGIN
	Write1(14) <= '0';
	WAIT FOR 200000 ps;
	Write1(14) <= '1';
	WAIT FOR 400000 ps;
	Write1(14) <= '0';
WAIT;
END PROCESS t_prcs_Write1_14;
-- Write1[13]
t_prcs_Write1_13: PROCESS
BEGIN
	Write1(13) <= '1';
	WAIT FOR 200000 ps;
	Write1(13) <= '0';
	WAIT FOR 200000 ps;
	Write1(13) <= '1';
	WAIT FOR 200000 ps;
	Write1(13) <= '0';
WAIT;
END PROCESS t_prcs_Write1_13;
-- Write1[12]
t_prcs_Write1_12: PROCESS
BEGIN
	Write1(12) <= '0';
	WAIT FOR 400000 ps;
	Write1(12) <= '1';
	WAIT FOR 200000 ps;
	Write1(12) <= '0';
WAIT;
END PROCESS t_prcs_Write1_12;
-- Write1[11]
t_prcs_Write1_11: PROCESS
BEGIN
	Write1(11) <= '1';
	WAIT FOR 600000 ps;
	Write1(11) <= '0';
WAIT;
END PROCESS t_prcs_Write1_11;
-- Write1[10]
t_prcs_Write1_10: PROCESS
BEGIN
	Write1(10) <= '0';
	WAIT FOR 200000 ps;
	Write1(10) <= '1';
	WAIT FOR 400000 ps;
	Write1(10) <= '0';
WAIT;
END PROCESS t_prcs_Write1_10;
-- Write1[9]
t_prcs_Write1_9: PROCESS
BEGIN
	Write1(9) <= '1';
	WAIT FOR 200000 ps;
	Write1(9) <= '0';
	WAIT FOR 200000 ps;
	Write1(9) <= '1';
	WAIT FOR 200000 ps;
	Write1(9) <= '0';
WAIT;
END PROCESS t_prcs_Write1_9;
-- Write1[8]
t_prcs_Write1_8: PROCESS
BEGIN
	Write1(8) <= '0';
	WAIT FOR 400000 ps;
	Write1(8) <= '1';
	WAIT FOR 200000 ps;
	Write1(8) <= '0';
WAIT;
END PROCESS t_prcs_Write1_8;
-- Write1[7]
t_prcs_Write1_7: PROCESS
BEGIN
	Write1(7) <= '1';
	WAIT FOR 600000 ps;
	Write1(7) <= '0';
WAIT;
END PROCESS t_prcs_Write1_7;
-- Write1[6]
t_prcs_Write1_6: PROCESS
BEGIN
	Write1(6) <= '0';
	WAIT FOR 200000 ps;
	Write1(6) <= '1';
	WAIT FOR 400000 ps;
	Write1(6) <= '0';
WAIT;
END PROCESS t_prcs_Write1_6;
-- Write1[5]
t_prcs_Write1_5: PROCESS
BEGIN
	Write1(5) <= '1';
	WAIT FOR 200000 ps;
	Write1(5) <= '0';
	WAIT FOR 200000 ps;
	Write1(5) <= '1';
	WAIT FOR 200000 ps;
	Write1(5) <= '0';
WAIT;
END PROCESS t_prcs_Write1_5;
-- Write1[4]
t_prcs_Write1_4: PROCESS
BEGIN
	Write1(4) <= '0';
	WAIT FOR 400000 ps;
	Write1(4) <= '1';
	WAIT FOR 200000 ps;
	Write1(4) <= '0';
WAIT;
END PROCESS t_prcs_Write1_4;
-- Write1[3]
t_prcs_Write1_3: PROCESS
BEGIN
	Write1(3) <= '1';
	WAIT FOR 600000 ps;
	Write1(3) <= '0';
WAIT;
END PROCESS t_prcs_Write1_3;
-- Write1[2]
t_prcs_Write1_2: PROCESS
BEGIN
	Write1(2) <= '0';
	WAIT FOR 200000 ps;
	Write1(2) <= '1';
	WAIT FOR 400000 ps;
	Write1(2) <= '0';
WAIT;
END PROCESS t_prcs_Write1_2;
-- Write1[1]
t_prcs_Write1_1: PROCESS
BEGIN
	Write1(1) <= '1';
	WAIT FOR 200000 ps;
	Write1(1) <= '0';
	WAIT FOR 200000 ps;
	Write1(1) <= '1';
	WAIT FOR 200000 ps;
	Write1(1) <= '0';
WAIT;
END PROCESS t_prcs_Write1_1;
-- Write1[0]
t_prcs_Write1_0: PROCESS
BEGIN
	Write1(0) <= '0';
	WAIT FOR 400000 ps;
	Write1(0) <= '1';
	WAIT FOR 200000 ps;
	Write1(0) <= '0';
WAIT;
END PROCESS t_prcs_Write1_0;
-- Read1AD[2]
t_prcs_Read1AD_2: PROCESS
BEGIN
	Read1AD(2) <= '0';
WAIT;
END PROCESS t_prcs_Read1AD_2;
-- Read1AD[1]
t_prcs_Read1AD_1: PROCESS
BEGIN
	Read1AD(1) <= '0';
	WAIT FOR 400000 ps;
	Read1AD(1) <= '1';
	WAIT FOR 200000 ps;
	Read1AD(1) <= '0';
	WAIT FOR 200000 ps;
	Read1AD(1) <= '1';
WAIT;
END PROCESS t_prcs_Read1AD_1;
-- Read1AD[0]
t_prcs_Read1AD_0: PROCESS
BEGIN
	Read1AD(0) <= '1';
	WAIT FOR 600000 ps;
	Read1AD(0) <= '0';
	WAIT FOR 200000 ps;
	Read1AD(0) <= '1';
WAIT;
END PROCESS t_prcs_Read1AD_0;
-- Read2AD[2]
t_prcs_Read2AD_2: PROCESS
BEGIN
	Read2AD(2) <= '0';
WAIT;
END PROCESS t_prcs_Read2AD_2;
-- Read2AD[1]
t_prcs_Read2AD_1: PROCESS
BEGIN
	Read2AD(1) <= '0';
	WAIT FOR 200000 ps;
	Read2AD(1) <= '1';
	WAIT FOR 200000 ps;
	Read2AD(1) <= '0';
WAIT;
END PROCESS t_prcs_Read2AD_1;
-- Read2AD[0]
t_prcs_Read2AD_0: PROCESS
BEGIN
	Read2AD(0) <= '0';
	WAIT FOR 200000 ps;
	Read2AD(0) <= '1';
	WAIT FOR 400000 ps;
	Read2AD(0) <= '0';
	WAIT FOR 200000 ps;
	Read2AD(0) <= '1';
WAIT;
END PROCESS t_prcs_Read2AD_0;
END MyRegisterFile_arch;
