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
-- Generated on "04/22/2026 14:33:35"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          MyJumpAddress
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY MyJumpAddress_vhd_vec_tst IS
END MyJumpAddress_vhd_vec_tst;
ARCHITECTURE MyJumpAddress_arch OF MyJumpAddress_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL EjumpAD : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL instrP2AD : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL jumpAD : STD_LOGIC_VECTOR(11 DOWNTO 0);
COMPONENT MyJumpAddress
	PORT (
	EjumpAD : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	instrP2AD : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	jumpAD : IN STD_LOGIC_VECTOR(11 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : MyJumpAddress
	PORT MAP (
-- list connections between master ports and signals
	EjumpAD => EjumpAD,
	instrP2AD => instrP2AD,
	jumpAD => jumpAD
	);
-- jumpAD[11]
t_prcs_jumpAD_11: PROCESS
BEGIN
	jumpAD(11) <= '0';
	WAIT FOR 480000 ps;
	jumpAD(11) <= '1';
	WAIT FOR 160000 ps;
	jumpAD(11) <= '0';
	WAIT FOR 160000 ps;
	jumpAD(11) <= '1';
WAIT;
END PROCESS t_prcs_jumpAD_11;
-- jumpAD[10]
t_prcs_jumpAD_10: PROCESS
BEGIN
	jumpAD(10) <= '0';
	WAIT FOR 640000 ps;
	jumpAD(10) <= '1';
WAIT;
END PROCESS t_prcs_jumpAD_10;
-- jumpAD[9]
t_prcs_jumpAD_9: PROCESS
BEGIN
	jumpAD(9) <= '0';
	WAIT FOR 320000 ps;
	jumpAD(9) <= '1';
	WAIT FOR 160000 ps;
	jumpAD(9) <= '0';
WAIT;
END PROCESS t_prcs_jumpAD_9;
-- jumpAD[8]
t_prcs_jumpAD_8: PROCESS
BEGIN
	jumpAD(8) <= '1';
	WAIT FOR 640000 ps;
	jumpAD(8) <= '0';
WAIT;
END PROCESS t_prcs_jumpAD_8;
-- jumpAD[7]
t_prcs_jumpAD_7: PROCESS
BEGIN
	jumpAD(7) <= '0';
	WAIT FOR 160000 ps;
	jumpAD(7) <= '1';
	WAIT FOR 160000 ps;
	jumpAD(7) <= '0';
	WAIT FOR 160000 ps;
	jumpAD(7) <= '1';
	WAIT FOR 160000 ps;
	jumpAD(7) <= '0';
	WAIT FOR 160000 ps;
	jumpAD(7) <= '1';
WAIT;
END PROCESS t_prcs_jumpAD_7;
-- jumpAD[6]
t_prcs_jumpAD_6: PROCESS
BEGIN
	jumpAD(6) <= '1';
	WAIT FOR 160000 ps;
	jumpAD(6) <= '0';
	WAIT FOR 160000 ps;
	jumpAD(6) <= '1';
	WAIT FOR 160000 ps;
	jumpAD(6) <= '0';
	WAIT FOR 160000 ps;
	jumpAD(6) <= '1';
WAIT;
END PROCESS t_prcs_jumpAD_6;
-- jumpAD[5]
t_prcs_jumpAD_5: PROCESS
BEGIN
	jumpAD(5) <= '1';
	WAIT FOR 160000 ps;
	jumpAD(5) <= '0';
WAIT;
END PROCESS t_prcs_jumpAD_5;
-- jumpAD[4]
t_prcs_jumpAD_4: PROCESS
BEGIN
	jumpAD(4) <= '1';
	WAIT FOR 160000 ps;
	jumpAD(4) <= '0';
	WAIT FOR 160000 ps;
	jumpAD(4) <= '1';
	WAIT FOR 160000 ps;
	jumpAD(4) <= '0';
	WAIT FOR 320000 ps;
	jumpAD(4) <= '1';
WAIT;
END PROCESS t_prcs_jumpAD_4;
-- jumpAD[3]
t_prcs_jumpAD_3: PROCESS
BEGIN
	jumpAD(3) <= '0';
	WAIT FOR 160000 ps;
	jumpAD(3) <= '1';
	WAIT FOR 160000 ps;
	jumpAD(3) <= '0';
WAIT;
END PROCESS t_prcs_jumpAD_3;
-- jumpAD[2]
t_prcs_jumpAD_2: PROCESS
BEGIN
	jumpAD(2) <= '1';
	WAIT FOR 480000 ps;
	jumpAD(2) <= '0';
WAIT;
END PROCESS t_prcs_jumpAD_2;
-- jumpAD[1]
t_prcs_jumpAD_1: PROCESS
BEGIN
	jumpAD(1) <= '0';
	WAIT FOR 320000 ps;
	jumpAD(1) <= '1';
	WAIT FOR 160000 ps;
	jumpAD(1) <= '0';
	WAIT FOR 160000 ps;
	jumpAD(1) <= '1';
WAIT;
END PROCESS t_prcs_jumpAD_1;
-- jumpAD[0]
t_prcs_jumpAD_0: PROCESS
BEGIN
	jumpAD(0) <= '1';
	WAIT FOR 160000 ps;
	jumpAD(0) <= '0';
	WAIT FOR 160000 ps;
	jumpAD(0) <= '1';
	WAIT FOR 320000 ps;
	jumpAD(0) <= '0';
WAIT;
END PROCESS t_prcs_jumpAD_0;
-- instrP2AD[15]
t_prcs_instrP2AD_15: PROCESS
BEGIN
	instrP2AD(15) <= '0';
	WAIT FOR 160000 ps;
	instrP2AD(15) <= '1';
	WAIT FOR 160000 ps;
	instrP2AD(15) <= '0';
WAIT;
END PROCESS t_prcs_instrP2AD_15;
-- instrP2AD[14]
t_prcs_instrP2AD_14: PROCESS
BEGIN
	instrP2AD(14) <= '0';
	WAIT FOR 320000 ps;
	instrP2AD(14) <= '1';
	WAIT FOR 480000 ps;
	instrP2AD(14) <= '0';
WAIT;
END PROCESS t_prcs_instrP2AD_14;
-- instrP2AD[13]
t_prcs_instrP2AD_13: PROCESS
BEGIN
	instrP2AD(13) <= '0';
	WAIT FOR 160000 ps;
	instrP2AD(13) <= '1';
	WAIT FOR 320000 ps;
	instrP2AD(13) <= '0';
	WAIT FOR 160000 ps;
	instrP2AD(13) <= '1';
WAIT;
END PROCESS t_prcs_instrP2AD_13;
-- instrP2AD[12]
t_prcs_instrP2AD_12: PROCESS
BEGIN
	instrP2AD(12) <= '0';
	WAIT FOR 160000 ps;
	instrP2AD(12) <= '1';
	WAIT FOR 320000 ps;
	instrP2AD(12) <= '0';
WAIT;
END PROCESS t_prcs_instrP2AD_12;
-- instrP2AD[11]
t_prcs_instrP2AD_11: PROCESS
BEGIN
	instrP2AD(11) <= '0';
	WAIT FOR 320000 ps;
	instrP2AD(11) <= '1';
	WAIT FOR 160000 ps;
	instrP2AD(11) <= '0';
	WAIT FOR 160000 ps;
	instrP2AD(11) <= '1';
	WAIT FOR 160000 ps;
	instrP2AD(11) <= '0';
WAIT;
END PROCESS t_prcs_instrP2AD_11;
-- instrP2AD[10]
t_prcs_instrP2AD_10: PROCESS
BEGIN
	instrP2AD(10) <= '1';
	WAIT FOR 320000 ps;
	instrP2AD(10) <= '0';
	WAIT FOR 160000 ps;
	instrP2AD(10) <= '1';
	WAIT FOR 320000 ps;
	instrP2AD(10) <= '0';
WAIT;
END PROCESS t_prcs_instrP2AD_10;
-- instrP2AD[9]
t_prcs_instrP2AD_9: PROCESS
BEGIN
	instrP2AD(9) <= '1';
	WAIT FOR 160000 ps;
	instrP2AD(9) <= '0';
	WAIT FOR 160000 ps;
	instrP2AD(9) <= '1';
	WAIT FOR 160000 ps;
	instrP2AD(9) <= '0';
	WAIT FOR 320000 ps;
	instrP2AD(9) <= '1';
WAIT;
END PROCESS t_prcs_instrP2AD_9;
-- instrP2AD[8]
t_prcs_instrP2AD_8: PROCESS
BEGIN
	instrP2AD(8) <= '1';
	WAIT FOR 320000 ps;
	instrP2AD(8) <= '0';
WAIT;
END PROCESS t_prcs_instrP2AD_8;
-- instrP2AD[7]
t_prcs_instrP2AD_7: PROCESS
BEGIN
	instrP2AD(7) <= '0';
	WAIT FOR 160000 ps;
	instrP2AD(7) <= '1';
	WAIT FOR 160000 ps;
	instrP2AD(7) <= '0';
	WAIT FOR 320000 ps;
	instrP2AD(7) <= '1';
WAIT;
END PROCESS t_prcs_instrP2AD_7;
-- instrP2AD[6]
t_prcs_instrP2AD_6: PROCESS
BEGIN
	instrP2AD(6) <= '1';
	WAIT FOR 160000 ps;
	instrP2AD(6) <= '0';
	WAIT FOR 160000 ps;
	instrP2AD(6) <= '1';
	WAIT FOR 160000 ps;
	instrP2AD(6) <= '0';
	WAIT FOR 160000 ps;
	instrP2AD(6) <= '1';
	WAIT FOR 160000 ps;
	instrP2AD(6) <= '0';
WAIT;
END PROCESS t_prcs_instrP2AD_6;
-- instrP2AD[5]
t_prcs_instrP2AD_5: PROCESS
BEGIN
	instrP2AD(5) <= '0';
	WAIT FOR 320000 ps;
	instrP2AD(5) <= '1';
	WAIT FOR 320000 ps;
	instrP2AD(5) <= '0';
	WAIT FOR 160000 ps;
	instrP2AD(5) <= '1';
WAIT;
END PROCESS t_prcs_instrP2AD_5;
-- instrP2AD[4]
t_prcs_instrP2AD_4: PROCESS
BEGIN
	instrP2AD(4) <= '0';
	WAIT FOR 800000 ps;
	instrP2AD(4) <= '1';
WAIT;
END PROCESS t_prcs_instrP2AD_4;
-- instrP2AD[3]
t_prcs_instrP2AD_3: PROCESS
BEGIN
	instrP2AD(3) <= '1';
	WAIT FOR 160000 ps;
	instrP2AD(3) <= '0';
	WAIT FOR 160000 ps;
	instrP2AD(3) <= '1';
	WAIT FOR 160000 ps;
	instrP2AD(3) <= '0';
WAIT;
END PROCESS t_prcs_instrP2AD_3;
-- instrP2AD[2]
t_prcs_instrP2AD_2: PROCESS
BEGIN
	instrP2AD(2) <= '1';
	WAIT FOR 160000 ps;
	instrP2AD(2) <= '0';
	WAIT FOR 160000 ps;
	instrP2AD(2) <= '1';
	WAIT FOR 320000 ps;
	instrP2AD(2) <= '0';
WAIT;
END PROCESS t_prcs_instrP2AD_2;
-- instrP2AD[1]
t_prcs_instrP2AD_1: PROCESS
BEGIN
	instrP2AD(1) <= '1';
	WAIT FOR 160000 ps;
	instrP2AD(1) <= '0';
	WAIT FOR 160000 ps;
	instrP2AD(1) <= '1';
	WAIT FOR 480000 ps;
	instrP2AD(1) <= '0';
WAIT;
END PROCESS t_prcs_instrP2AD_1;
-- instrP2AD[0]
t_prcs_instrP2AD_0: PROCESS
BEGIN
	instrP2AD(0) <= '0';
	WAIT FOR 160000 ps;
	instrP2AD(0) <= '1';
	WAIT FOR 320000 ps;
	instrP2AD(0) <= '0';
	WAIT FOR 160000 ps;
	instrP2AD(0) <= '1';
WAIT;
END PROCESS t_prcs_instrP2AD_0;
END MyJumpAddress_arch;
