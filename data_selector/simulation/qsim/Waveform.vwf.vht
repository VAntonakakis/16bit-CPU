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
-- Generated on "05/19/2026 19:38:44"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          data_selector
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY data_selector_vhd_vec_tst IS
END data_selector_vhd_vec_tst;
ARCHITECTURE data_selector_arch OF data_selector_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL ALUResult : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL Data : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL out2 : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL regaddressout : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL RegRD : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL RegRS : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL WriteExternal : STD_LOGIC;
COMPONENT data_selector
	PORT (
	ALUResult : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	Data : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	out2 : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	regaddressout : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	RegRD : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	RegRS : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	WriteExternal : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : data_selector
	PORT MAP (
-- list connections between master ports and signals
	ALUResult => ALUResult,
	Data => Data,
	out2 => out2,
	regaddressout => regaddressout,
	RegRD => RegRD,
	RegRS => RegRS,
	WriteExternal => WriteExternal
	);

-- WriteExternal
t_prcs_WriteExternal: PROCESS
BEGIN
	WriteExternal <= '0';
	WAIT FOR 160000 ps;
	WriteExternal <= '1';
	WAIT FOR 160000 ps;
	WriteExternal <= '0';
	WAIT FOR 160000 ps;
	WriteExternal <= '1';
WAIT;
END PROCESS t_prcs_WriteExternal;
-- RegRD[2]
t_prcs_RegRD_2: PROCESS
BEGIN
	RegRD(2) <= '1';
WAIT;
END PROCESS t_prcs_RegRD_2;
-- RegRD[1]
t_prcs_RegRD_1: PROCESS
BEGIN
	RegRD(1) <= '0';
	WAIT FOR 320000 ps;
	RegRD(1) <= '1';
WAIT;
END PROCESS t_prcs_RegRD_1;
-- RegRD[0]
t_prcs_RegRD_0: PROCESS
BEGIN
	RegRD(0) <= '1';
WAIT;
END PROCESS t_prcs_RegRD_0;
-- RegRS[2]
t_prcs_RegRS_2: PROCESS
BEGIN
	RegRS(2) <= '0';
WAIT;
END PROCESS t_prcs_RegRS_2;
-- RegRS[1]
t_prcs_RegRS_1: PROCESS
BEGIN
	RegRS(1) <= '1';
	WAIT FOR 320000 ps;
	RegRS(1) <= '0';
WAIT;
END PROCESS t_prcs_RegRS_1;
-- RegRS[0]
t_prcs_RegRS_0: PROCESS
BEGIN
	RegRS(0) <= '0';
	WAIT FOR 320000 ps;
	RegRS(0) <= '1';
WAIT;
END PROCESS t_prcs_RegRS_0;
-- ALUResult[15]
t_prcs_ALUResult_15: PROCESS
BEGIN
	ALUResult(15) <= '1';
WAIT;
END PROCESS t_prcs_ALUResult_15;
-- ALUResult[14]
t_prcs_ALUResult_14: PROCESS
BEGIN
	ALUResult(14) <= '1';
	WAIT FOR 320000 ps;
	ALUResult(14) <= '0';
WAIT;
END PROCESS t_prcs_ALUResult_14;
-- ALUResult[13]
t_prcs_ALUResult_13: PROCESS
BEGIN
	ALUResult(13) <= '1';
WAIT;
END PROCESS t_prcs_ALUResult_13;
-- ALUResult[12]
t_prcs_ALUResult_12: PROCESS
BEGIN
	ALUResult(12) <= '1';
	WAIT FOR 320000 ps;
	ALUResult(12) <= '0';
WAIT;
END PROCESS t_prcs_ALUResult_12;
-- ALUResult[11]
t_prcs_ALUResult_11: PROCESS
BEGIN
	ALUResult(11) <= '0';
	WAIT FOR 320000 ps;
	ALUResult(11) <= '1';
WAIT;
END PROCESS t_prcs_ALUResult_11;
-- ALUResult[10]
t_prcs_ALUResult_10: PROCESS
BEGIN
	ALUResult(10) <= '0';
WAIT;
END PROCESS t_prcs_ALUResult_10;
-- ALUResult[9]
t_prcs_ALUResult_9: PROCESS
BEGIN
	ALUResult(9) <= '0';
	WAIT FOR 320000 ps;
	ALUResult(9) <= '1';
WAIT;
END PROCESS t_prcs_ALUResult_9;
-- ALUResult[8]
t_prcs_ALUResult_8: PROCESS
BEGIN
	ALUResult(8) <= '0';
WAIT;
END PROCESS t_prcs_ALUResult_8;
-- ALUResult[7]
t_prcs_ALUResult_7: PROCESS
BEGIN
	ALUResult(7) <= '1';
WAIT;
END PROCESS t_prcs_ALUResult_7;
-- ALUResult[6]
t_prcs_ALUResult_6: PROCESS
BEGIN
	ALUResult(6) <= '1';
	WAIT FOR 320000 ps;
	ALUResult(6) <= '0';
WAIT;
END PROCESS t_prcs_ALUResult_6;
-- ALUResult[5]
t_prcs_ALUResult_5: PROCESS
BEGIN
	ALUResult(5) <= '1';
WAIT;
END PROCESS t_prcs_ALUResult_5;
-- ALUResult[4]
t_prcs_ALUResult_4: PROCESS
BEGIN
	ALUResult(4) <= '1';
	WAIT FOR 320000 ps;
	ALUResult(4) <= '0';
WAIT;
END PROCESS t_prcs_ALUResult_4;
-- ALUResult[3]
t_prcs_ALUResult_3: PROCESS
BEGIN
	ALUResult(3) <= '0';
	WAIT FOR 320000 ps;
	ALUResult(3) <= '1';
WAIT;
END PROCESS t_prcs_ALUResult_3;
-- ALUResult[2]
t_prcs_ALUResult_2: PROCESS
BEGIN
	ALUResult(2) <= '0';
WAIT;
END PROCESS t_prcs_ALUResult_2;
-- ALUResult[1]
t_prcs_ALUResult_1: PROCESS
BEGIN
	ALUResult(1) <= '0';
	WAIT FOR 320000 ps;
	ALUResult(1) <= '1';
WAIT;
END PROCESS t_prcs_ALUResult_1;
-- ALUResult[0]
t_prcs_ALUResult_0: PROCESS
BEGIN
	ALUResult(0) <= '0';
WAIT;
END PROCESS t_prcs_ALUResult_0;
-- Data[15]
t_prcs_Data_15: PROCESS
BEGIN
	Data(15) <= '0';
WAIT;
END PROCESS t_prcs_Data_15;
-- Data[14]
t_prcs_Data_14: PROCESS
BEGIN
	Data(14) <= '0';
	WAIT FOR 320000 ps;
	Data(14) <= '1';
WAIT;
END PROCESS t_prcs_Data_14;
-- Data[13]
t_prcs_Data_13: PROCESS
BEGIN
	Data(13) <= '0';
WAIT;
END PROCESS t_prcs_Data_13;
-- Data[12]
t_prcs_Data_12: PROCESS
BEGIN
	Data(12) <= '0';
	WAIT FOR 320000 ps;
	Data(12) <= '1';
WAIT;
END PROCESS t_prcs_Data_12;
-- Data[11]
t_prcs_Data_11: PROCESS
BEGIN
	Data(11) <= '1';
	WAIT FOR 320000 ps;
	Data(11) <= '0';
WAIT;
END PROCESS t_prcs_Data_11;
-- Data[10]
t_prcs_Data_10: PROCESS
BEGIN
	Data(10) <= '1';
WAIT;
END PROCESS t_prcs_Data_10;
-- Data[9]
t_prcs_Data_9: PROCESS
BEGIN
	Data(9) <= '1';
	WAIT FOR 320000 ps;
	Data(9) <= '0';
WAIT;
END PROCESS t_prcs_Data_9;
-- Data[8]
t_prcs_Data_8: PROCESS
BEGIN
	Data(8) <= '1';
WAIT;
END PROCESS t_prcs_Data_8;
-- Data[7]
t_prcs_Data_7: PROCESS
BEGIN
	Data(7) <= '0';
WAIT;
END PROCESS t_prcs_Data_7;
-- Data[6]
t_prcs_Data_6: PROCESS
BEGIN
	Data(6) <= '0';
	WAIT FOR 320000 ps;
	Data(6) <= '1';
WAIT;
END PROCESS t_prcs_Data_6;
-- Data[5]
t_prcs_Data_5: PROCESS
BEGIN
	Data(5) <= '0';
WAIT;
END PROCESS t_prcs_Data_5;
-- Data[4]
t_prcs_Data_4: PROCESS
BEGIN
	Data(4) <= '0';
	WAIT FOR 320000 ps;
	Data(4) <= '1';
WAIT;
END PROCESS t_prcs_Data_4;
-- Data[3]
t_prcs_Data_3: PROCESS
BEGIN
	Data(3) <= '1';
	WAIT FOR 320000 ps;
	Data(3) <= '0';
WAIT;
END PROCESS t_prcs_Data_3;
-- Data[2]
t_prcs_Data_2: PROCESS
BEGIN
	Data(2) <= '1';
WAIT;
END PROCESS t_prcs_Data_2;
-- Data[1]
t_prcs_Data_1: PROCESS
BEGIN
	Data(1) <= '1';
	WAIT FOR 320000 ps;
	Data(1) <= '0';
WAIT;
END PROCESS t_prcs_Data_1;
-- Data[0]
t_prcs_Data_0: PROCESS
BEGIN
	Data(0) <= '1';
WAIT;
END PROCESS t_prcs_Data_0;
END data_selector_arch;
