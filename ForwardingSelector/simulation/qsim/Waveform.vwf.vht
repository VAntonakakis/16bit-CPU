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
-- Generated on "05/20/2026 21:05:00"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Forwarding_Selector
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Forwarding_Selector_vhd_vec_tst IS
END Forwarding_Selector_vhd_vec_tst;
ARCHITECTURE Forwarding_Selector_arch OF Forwarding_Selector_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL operation : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL Output : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL regAD_MEM : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL regAD_WB : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL regAddress : STD_LOGIC_VECTOR(15 DOWNTO 0);
COMPONENT Forwarding_Selector
	PORT (
	operation : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	Output : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	regAD_MEM : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	regAD_WB : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	regAddress : IN STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : Forwarding_Selector
	PORT MAP (
-- list connections between master ports and signals
	operation => operation,
	Output => Output,
	regAD_MEM => regAD_MEM,
	regAD_WB => regAD_WB,
	regAddress => regAddress
	);
-- operation[1]
t_prcs_operation_1: PROCESS
BEGIN
	operation(1) <= '0';
	WAIT FOR 160000 ps;
	operation(1) <= '1';
	WAIT FOR 160000 ps;
	operation(1) <= '0';
	WAIT FOR 160000 ps;
	operation(1) <= '1';
WAIT;
END PROCESS t_prcs_operation_1;
-- operation[0]
t_prcs_operation_0: PROCESS
BEGIN
	operation(0) <= '0';
	WAIT FOR 320000 ps;
	operation(0) <= '1';
WAIT;
END PROCESS t_prcs_operation_0;
-- regAddress[15]
t_prcs_regAddress_15: PROCESS
BEGIN
	regAddress(15) <= '0';
WAIT;
END PROCESS t_prcs_regAddress_15;
-- regAddress[14]
t_prcs_regAddress_14: PROCESS
BEGIN
	regAddress(14) <= '1';
WAIT;
END PROCESS t_prcs_regAddress_14;
-- regAddress[13]
t_prcs_regAddress_13: PROCESS
BEGIN
	regAddress(13) <= '0';
WAIT;
END PROCESS t_prcs_regAddress_13;
-- regAddress[12]
t_prcs_regAddress_12: PROCESS
BEGIN
	regAddress(12) <= '1';
WAIT;
END PROCESS t_prcs_regAddress_12;
-- regAddress[11]
t_prcs_regAddress_11: PROCESS
BEGIN
	regAddress(11) <= '0';
WAIT;
END PROCESS t_prcs_regAddress_11;
-- regAddress[10]
t_prcs_regAddress_10: PROCESS
BEGIN
	regAddress(10) <= '1';
WAIT;
END PROCESS t_prcs_regAddress_10;
-- regAddress[9]
t_prcs_regAddress_9: PROCESS
BEGIN
	regAddress(9) <= '0';
WAIT;
END PROCESS t_prcs_regAddress_9;
-- regAddress[8]
t_prcs_regAddress_8: PROCESS
BEGIN
	regAddress(8) <= '1';
WAIT;
END PROCESS t_prcs_regAddress_8;
-- regAddress[7]
t_prcs_regAddress_7: PROCESS
BEGIN
	regAddress(7) <= '0';
WAIT;
END PROCESS t_prcs_regAddress_7;
-- regAddress[6]
t_prcs_regAddress_6: PROCESS
BEGIN
	regAddress(6) <= '1';
WAIT;
END PROCESS t_prcs_regAddress_6;
-- regAddress[5]
t_prcs_regAddress_5: PROCESS
BEGIN
	regAddress(5) <= '0';
WAIT;
END PROCESS t_prcs_regAddress_5;
-- regAddress[4]
t_prcs_regAddress_4: PROCESS
BEGIN
	regAddress(4) <= '1';
WAIT;
END PROCESS t_prcs_regAddress_4;
-- regAddress[3]
t_prcs_regAddress_3: PROCESS
BEGIN
	regAddress(3) <= '0';
WAIT;
END PROCESS t_prcs_regAddress_3;
-- regAddress[2]
t_prcs_regAddress_2: PROCESS
BEGIN
	regAddress(2) <= '1';
WAIT;
END PROCESS t_prcs_regAddress_2;
-- regAddress[1]
t_prcs_regAddress_1: PROCESS
BEGIN
	regAddress(1) <= '0';
WAIT;
END PROCESS t_prcs_regAddress_1;
-- regAddress[0]
t_prcs_regAddress_0: PROCESS
BEGIN
	regAddress(0) <= '1';
WAIT;
END PROCESS t_prcs_regAddress_0;
-- regAD_MEM[15]
t_prcs_regAD_MEM_15: PROCESS
BEGIN
	regAD_MEM(15) <= '1';
WAIT;
END PROCESS t_prcs_regAD_MEM_15;
-- regAD_MEM[14]
t_prcs_regAD_MEM_14: PROCESS
BEGIN
	regAD_MEM(14) <= '1';
WAIT;
END PROCESS t_prcs_regAD_MEM_14;
-- regAD_MEM[13]
t_prcs_regAD_MEM_13: PROCESS
BEGIN
	regAD_MEM(13) <= '1';
WAIT;
END PROCESS t_prcs_regAD_MEM_13;
-- regAD_MEM[12]
t_prcs_regAD_MEM_12: PROCESS
BEGIN
	regAD_MEM(12) <= '1';
WAIT;
END PROCESS t_prcs_regAD_MEM_12;
-- regAD_MEM[11]
t_prcs_regAD_MEM_11: PROCESS
BEGIN
	regAD_MEM(11) <= '1';
WAIT;
END PROCESS t_prcs_regAD_MEM_11;
-- regAD_MEM[10]
t_prcs_regAD_MEM_10: PROCESS
BEGIN
	regAD_MEM(10) <= '1';
WAIT;
END PROCESS t_prcs_regAD_MEM_10;
-- regAD_MEM[9]
t_prcs_regAD_MEM_9: PROCESS
BEGIN
	regAD_MEM(9) <= '1';
WAIT;
END PROCESS t_prcs_regAD_MEM_9;
-- regAD_MEM[8]
t_prcs_regAD_MEM_8: PROCESS
BEGIN
	regAD_MEM(8) <= '1';
WAIT;
END PROCESS t_prcs_regAD_MEM_8;
-- regAD_MEM[7]
t_prcs_regAD_MEM_7: PROCESS
BEGIN
	regAD_MEM(7) <= '0';
WAIT;
END PROCESS t_prcs_regAD_MEM_7;
-- regAD_MEM[6]
t_prcs_regAD_MEM_6: PROCESS
BEGIN
	regAD_MEM(6) <= '0';
WAIT;
END PROCESS t_prcs_regAD_MEM_6;
-- regAD_MEM[5]
t_prcs_regAD_MEM_5: PROCESS
BEGIN
	regAD_MEM(5) <= '0';
WAIT;
END PROCESS t_prcs_regAD_MEM_5;
-- regAD_MEM[4]
t_prcs_regAD_MEM_4: PROCESS
BEGIN
	regAD_MEM(4) <= '0';
WAIT;
END PROCESS t_prcs_regAD_MEM_4;
-- regAD_MEM[3]
t_prcs_regAD_MEM_3: PROCESS
BEGIN
	regAD_MEM(3) <= '0';
WAIT;
END PROCESS t_prcs_regAD_MEM_3;
-- regAD_MEM[2]
t_prcs_regAD_MEM_2: PROCESS
BEGIN
	regAD_MEM(2) <= '0';
WAIT;
END PROCESS t_prcs_regAD_MEM_2;
-- regAD_MEM[1]
t_prcs_regAD_MEM_1: PROCESS
BEGIN
	regAD_MEM(1) <= '0';
WAIT;
END PROCESS t_prcs_regAD_MEM_1;
-- regAD_MEM[0]
t_prcs_regAD_MEM_0: PROCESS
BEGIN
	regAD_MEM(0) <= '0';
WAIT;
END PROCESS t_prcs_regAD_MEM_0;
-- regAD_WB[15]
t_prcs_regAD_WB_15: PROCESS
BEGIN
	regAD_WB(15) <= '0';
WAIT;
END PROCESS t_prcs_regAD_WB_15;
-- regAD_WB[14]
t_prcs_regAD_WB_14: PROCESS
BEGIN
	regAD_WB(14) <= '0';
WAIT;
END PROCESS t_prcs_regAD_WB_14;
-- regAD_WB[13]
t_prcs_regAD_WB_13: PROCESS
BEGIN
	regAD_WB(13) <= '0';
WAIT;
END PROCESS t_prcs_regAD_WB_13;
-- regAD_WB[12]
t_prcs_regAD_WB_12: PROCESS
BEGIN
	regAD_WB(12) <= '0';
WAIT;
END PROCESS t_prcs_regAD_WB_12;
-- regAD_WB[11]
t_prcs_regAD_WB_11: PROCESS
BEGIN
	regAD_WB(11) <= '0';
WAIT;
END PROCESS t_prcs_regAD_WB_11;
-- regAD_WB[10]
t_prcs_regAD_WB_10: PROCESS
BEGIN
	regAD_WB(10) <= '0';
WAIT;
END PROCESS t_prcs_regAD_WB_10;
-- regAD_WB[9]
t_prcs_regAD_WB_9: PROCESS
BEGIN
	regAD_WB(9) <= '0';
WAIT;
END PROCESS t_prcs_regAD_WB_9;
-- regAD_WB[8]
t_prcs_regAD_WB_8: PROCESS
BEGIN
	regAD_WB(8) <= '0';
WAIT;
END PROCESS t_prcs_regAD_WB_8;
-- regAD_WB[7]
t_prcs_regAD_WB_7: PROCESS
BEGIN
	regAD_WB(7) <= '1';
WAIT;
END PROCESS t_prcs_regAD_WB_7;
-- regAD_WB[6]
t_prcs_regAD_WB_6: PROCESS
BEGIN
	regAD_WB(6) <= '1';
WAIT;
END PROCESS t_prcs_regAD_WB_6;
-- regAD_WB[5]
t_prcs_regAD_WB_5: PROCESS
BEGIN
	regAD_WB(5) <= '1';
WAIT;
END PROCESS t_prcs_regAD_WB_5;
-- regAD_WB[4]
t_prcs_regAD_WB_4: PROCESS
BEGIN
	regAD_WB(4) <= '1';
WAIT;
END PROCESS t_prcs_regAD_WB_4;
-- regAD_WB[3]
t_prcs_regAD_WB_3: PROCESS
BEGIN
	regAD_WB(3) <= '1';
WAIT;
END PROCESS t_prcs_regAD_WB_3;
-- regAD_WB[2]
t_prcs_regAD_WB_2: PROCESS
BEGIN
	regAD_WB(2) <= '1';
WAIT;
END PROCESS t_prcs_regAD_WB_2;
-- regAD_WB[1]
t_prcs_regAD_WB_1: PROCESS
BEGIN
	regAD_WB(1) <= '1';
WAIT;
END PROCESS t_prcs_regAD_WB_1;
-- regAD_WB[0]
t_prcs_regAD_WB_0: PROCESS
BEGIN
	regAD_WB(0) <= '1';
WAIT;
END PROCESS t_prcs_regAD_WB_0;
END Forwarding_Selector_arch;
