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
-- Generated on "05/31/2026 14:12:29"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Processor
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Processor_vhd_vec_tst IS
END Processor_vhd_vec_tst;
ARCHITECTURE Processor_arch OF Processor_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clock : STD_LOGIC;
SIGNAL clock2 : STD_LOGIC;
SIGNAL dataAD : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL DataWriteFlag : STD_LOGIC;
SIGNAL fromData : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL instr : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL instructionAD : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL keyData : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL keyEnable : STD_LOGIC;
SIGNAL printCode : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL printData : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL printEnable : STD_LOGIC;
SIGNAL regOUT : STD_LOGIC_VECTOR(143 DOWNTO 0);
SIGNAL Result : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL toData : STD_LOGIC_VECTOR(15 DOWNTO 0);
COMPONENT Processor
	PORT (
	clock : IN STD_LOGIC;
	clock2 : IN STD_LOGIC;
	dataAD : BUFFER STD_LOGIC_VECTOR(15 DOWNTO 0);
	DataWriteFlag : BUFFER STD_LOGIC;
	fromData : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	instr : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	instructionAD : BUFFER STD_LOGIC_VECTOR(15 DOWNTO 0);
	keyData : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	keyEnable : BUFFER STD_LOGIC;
	printCode : BUFFER STD_LOGIC_VECTOR(15 DOWNTO 0);
	printData : BUFFER STD_LOGIC_VECTOR(15 DOWNTO 0);
	printEnable : BUFFER STD_LOGIC;
	regOUT : BUFFER STD_LOGIC_VECTOR(143 DOWNTO 0);
	Result : BUFFER STD_LOGIC_VECTOR(15 DOWNTO 0);
	toData : BUFFER STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : Processor
	PORT MAP (
-- list connections between master ports and signals
	clock => clock,
	clock2 => clock2,
	dataAD => dataAD,
	DataWriteFlag => DataWriteFlag,
	fromData => fromData,
	instr => instr,
	instructionAD => instructionAD,
	keyData => keyData,
	keyEnable => keyEnable,
	printCode => printCode,
	printData => printData,
	printEnable => printEnable,
	regOUT => regOUT,
	Result => Result,
	toData => toData
	);

-- clock
t_prcs_clock: PROCESS
BEGIN
	FOR i IN 1 TO 7
	LOOP
		clock <= '0';
		WAIT FOR 80000 ps;
		clock <= '1';
		WAIT FOR 80000 ps;
	END LOOP;
	clock <= '0';
WAIT;
END PROCESS t_prcs_clock;

-- clock2
t_prcs_clock2: PROCESS
BEGIN
	FOR i IN 1 TO 7
	LOOP
		clock2 <= '0';
		WAIT FOR 80000 ps;
		clock2 <= '1';
		WAIT FOR 80000 ps;
	END LOOP;
	clock2 <= '0';
WAIT;
END PROCESS t_prcs_clock2;
-- fromData[15]
t_prcs_fromData_15: PROCESS
BEGIN
	fromData(15) <= '0';
WAIT;
END PROCESS t_prcs_fromData_15;
-- fromData[14]
t_prcs_fromData_14: PROCESS
BEGIN
	fromData(14) <= '0';
WAIT;
END PROCESS t_prcs_fromData_14;
-- fromData[13]
t_prcs_fromData_13: PROCESS
BEGIN
	fromData(13) <= '0';
WAIT;
END PROCESS t_prcs_fromData_13;
-- fromData[12]
t_prcs_fromData_12: PROCESS
BEGIN
	fromData(12) <= '0';
WAIT;
END PROCESS t_prcs_fromData_12;
-- fromData[11]
t_prcs_fromData_11: PROCESS
BEGIN
	fromData(11) <= '0';
WAIT;
END PROCESS t_prcs_fromData_11;
-- fromData[10]
t_prcs_fromData_10: PROCESS
BEGIN
	fromData(10) <= '0';
WAIT;
END PROCESS t_prcs_fromData_10;
-- fromData[9]
t_prcs_fromData_9: PROCESS
BEGIN
	fromData(9) <= '0';
WAIT;
END PROCESS t_prcs_fromData_9;
-- fromData[8]
t_prcs_fromData_8: PROCESS
BEGIN
	fromData(8) <= '0';
WAIT;
END PROCESS t_prcs_fromData_8;
-- fromData[7]
t_prcs_fromData_7: PROCESS
BEGIN
	fromData(7) <= '0';
WAIT;
END PROCESS t_prcs_fromData_7;
-- fromData[6]
t_prcs_fromData_6: PROCESS
BEGIN
	fromData(6) <= '0';
WAIT;
END PROCESS t_prcs_fromData_6;
-- fromData[5]
t_prcs_fromData_5: PROCESS
BEGIN
	fromData(5) <= '0';
WAIT;
END PROCESS t_prcs_fromData_5;
-- fromData[4]
t_prcs_fromData_4: PROCESS
BEGIN
	fromData(4) <= '0';
WAIT;
END PROCESS t_prcs_fromData_4;
-- fromData[3]
t_prcs_fromData_3: PROCESS
BEGIN
	fromData(3) <= '0';
WAIT;
END PROCESS t_prcs_fromData_3;
-- fromData[2]
t_prcs_fromData_2: PROCESS
BEGIN
	fromData(2) <= '0';
WAIT;
END PROCESS t_prcs_fromData_2;
-- fromData[1]
t_prcs_fromData_1: PROCESS
BEGIN
	fromData(1) <= '0';
WAIT;
END PROCESS t_prcs_fromData_1;
-- fromData[0]
t_prcs_fromData_0: PROCESS
BEGIN
	fromData(0) <= '0';
WAIT;
END PROCESS t_prcs_fromData_0;
-- instr[15]
t_prcs_instr_15: PROCESS
BEGIN
	instr(15) <= '0';
WAIT;
END PROCESS t_prcs_instr_15;
-- instr[14]
t_prcs_instr_14: PROCESS
BEGIN
	instr(14) <= '0';
WAIT;
END PROCESS t_prcs_instr_14;
-- instr[13]
t_prcs_instr_13: PROCESS
BEGIN
	instr(13) <= '0';
WAIT;
END PROCESS t_prcs_instr_13;
-- instr[12]
t_prcs_instr_12: PROCESS
BEGIN
	instr(12) <= '0';
WAIT;
END PROCESS t_prcs_instr_12;
-- instr[11]
t_prcs_instr_11: PROCESS
BEGIN
	instr(11) <= '0';
	WAIT FOR 480000 ps;
	instr(11) <= '1';
	WAIT FOR 480000 ps;
	instr(11) <= '0';
WAIT;
END PROCESS t_prcs_instr_11;
-- instr[10]
t_prcs_instr_10: PROCESS
BEGIN
	instr(10) <= '0';
	WAIT FOR 160000 ps;
	instr(10) <= '1';
	WAIT FOR 320000 ps;
	instr(10) <= '0';
	WAIT FOR 320000 ps;
	instr(10) <= '1';
	WAIT FOR 160000 ps;
	instr(10) <= '0';
WAIT;
END PROCESS t_prcs_instr_10;
-- instr[9]
t_prcs_instr_9: PROCESS
BEGIN
	instr(9) <= '0';
	WAIT FOR 320000 ps;
	instr(9) <= '1';
	WAIT FOR 160000 ps;
	instr(9) <= '0';
	WAIT FOR 160000 ps;
	instr(9) <= '1';
	WAIT FOR 160000 ps;
	instr(9) <= '0';
WAIT;
END PROCESS t_prcs_instr_9;
-- instr[8]
t_prcs_instr_8: PROCESS
BEGIN
	instr(8) <= '0';
	WAIT FOR 640000 ps;
	instr(8) <= '1';
	WAIT FOR 320000 ps;
	instr(8) <= '0';
WAIT;
END PROCESS t_prcs_instr_8;
-- instr[7]
t_prcs_instr_7: PROCESS
BEGIN
	instr(7) <= '0';
	WAIT FOR 480000 ps;
	instr(7) <= '1';
	WAIT FOR 160000 ps;
	instr(7) <= '0';
WAIT;
END PROCESS t_prcs_instr_7;
-- instr[6]
t_prcs_instr_6: PROCESS
BEGIN
	instr(6) <= '0';
	WAIT FOR 320000 ps;
	instr(6) <= '1';
	WAIT FOR 160000 ps;
	instr(6) <= '0';
WAIT;
END PROCESS t_prcs_instr_6;
-- instr[5]
t_prcs_instr_5: PROCESS
BEGIN
	instr(5) <= '0';
WAIT;
END PROCESS t_prcs_instr_5;
-- instr[4]
t_prcs_instr_4: PROCESS
BEGIN
	instr(4) <= '0';
	WAIT FOR 320000 ps;
	instr(4) <= '1';
	WAIT FOR 640000 ps;
	instr(4) <= '0';
WAIT;
END PROCESS t_prcs_instr_4;
-- instr[3]
t_prcs_instr_3: PROCESS
BEGIN
	instr(3) <= '0';
	WAIT FOR 480000 ps;
	instr(3) <= '1';
	WAIT FOR 480000 ps;
	instr(3) <= '0';
WAIT;
END PROCESS t_prcs_instr_3;
-- instr[2]
t_prcs_instr_2: PROCESS
BEGIN
	instr(2) <= '1';
	WAIT FOR 480000 ps;
	instr(2) <= '0';
	WAIT FOR 320000 ps;
	instr(2) <= '1';
	WAIT FOR 160000 ps;
	instr(2) <= '0';
WAIT;
END PROCESS t_prcs_instr_2;
-- instr[1]
t_prcs_instr_1: PROCESS
BEGIN
	instr(1) <= '0';
	WAIT FOR 320000 ps;
	instr(1) <= '1';
	WAIT FOR 640000 ps;
	instr(1) <= '0';
WAIT;
END PROCESS t_prcs_instr_1;
-- instr[0]
t_prcs_instr_0: PROCESS
BEGIN
	instr(0) <= '1';
	WAIT FOR 160000 ps;
	instr(0) <= '0';
	WAIT FOR 480000 ps;
	instr(0) <= '1';
	WAIT FOR 320000 ps;
	instr(0) <= '0';
WAIT;
END PROCESS t_prcs_instr_0;
-- keyData[15]
t_prcs_keyData_15: PROCESS
BEGIN
	keyData(15) <= '0';
WAIT;
END PROCESS t_prcs_keyData_15;
-- keyData[14]
t_prcs_keyData_14: PROCESS
BEGIN
	keyData(14) <= '0';
WAIT;
END PROCESS t_prcs_keyData_14;
-- keyData[13]
t_prcs_keyData_13: PROCESS
BEGIN
	keyData(13) <= '0';
WAIT;
END PROCESS t_prcs_keyData_13;
-- keyData[12]
t_prcs_keyData_12: PROCESS
BEGIN
	keyData(12) <= '0';
WAIT;
END PROCESS t_prcs_keyData_12;
-- keyData[11]
t_prcs_keyData_11: PROCESS
BEGIN
	keyData(11) <= '0';
WAIT;
END PROCESS t_prcs_keyData_11;
-- keyData[10]
t_prcs_keyData_10: PROCESS
BEGIN
	keyData(10) <= '0';
WAIT;
END PROCESS t_prcs_keyData_10;
-- keyData[9]
t_prcs_keyData_9: PROCESS
BEGIN
	keyData(9) <= '0';
WAIT;
END PROCESS t_prcs_keyData_9;
-- keyData[8]
t_prcs_keyData_8: PROCESS
BEGIN
	keyData(8) <= '0';
WAIT;
END PROCESS t_prcs_keyData_8;
-- keyData[7]
t_prcs_keyData_7: PROCESS
BEGIN
	keyData(7) <= '0';
WAIT;
END PROCESS t_prcs_keyData_7;
-- keyData[6]
t_prcs_keyData_6: PROCESS
BEGIN
	keyData(6) <= '0';
WAIT;
END PROCESS t_prcs_keyData_6;
-- keyData[5]
t_prcs_keyData_5: PROCESS
BEGIN
	keyData(5) <= '0';
WAIT;
END PROCESS t_prcs_keyData_5;
-- keyData[4]
t_prcs_keyData_4: PROCESS
BEGIN
	keyData(4) <= '0';
WAIT;
END PROCESS t_prcs_keyData_4;
-- keyData[3]
t_prcs_keyData_3: PROCESS
BEGIN
	keyData(3) <= '0';
WAIT;
END PROCESS t_prcs_keyData_3;
-- keyData[2]
t_prcs_keyData_2: PROCESS
BEGIN
	keyData(2) <= '0';
WAIT;
END PROCESS t_prcs_keyData_2;
-- keyData[1]
t_prcs_keyData_1: PROCESS
BEGIN
	keyData(1) <= '0';
WAIT;
END PROCESS t_prcs_keyData_1;
-- keyData[0]
t_prcs_keyData_0: PROCESS
BEGIN
	keyData(0) <= '0';
WAIT;
END PROCESS t_prcs_keyData_0;
END Processor_arch;
