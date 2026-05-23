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
-- Generated on "05/20/2026 19:57:01"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          MyProgramCounter
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY MyProgramCounter_vhd_vec_tst IS
END MyProgramCounter_vhd_vec_tst;
ARCHITECTURE MyProgramCounter_arch OF MyProgramCounter_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL enable : STD_LOGIC;
SIGNAL instructionAD : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL nextPC : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL reset : STD_LOGIC;
COMPONENT MyProgramCounter
	PORT (
	clk : IN STD_LOGIC;
	enable : IN STD_LOGIC;
	instructionAD : BUFFER STD_LOGIC_VECTOR(15 DOWNTO 0);
	nextPC : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	reset : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : MyProgramCounter
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	enable => enable,
	instructionAD => instructionAD,
	nextPC => nextPC,
	reset => reset
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 40000 ps;
	clk <= '1';
	WAIT FOR 40000 ps;
	IF (NOW >= 640000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '1';
	WAIT FOR 90000 ps;
	reset <= '0';
	WAIT FOR 320000 ps;
	reset <= '1';
	WAIT FOR 80000 ps;
	reset <= '0';
WAIT;
END PROCESS t_prcs_reset;

-- enable
t_prcs_enable: PROCESS
BEGIN
	enable <= '0';
	WAIT FOR 90000 ps;
	enable <= '1';
	WAIT FOR 160000 ps;
	enable <= '0';
	WAIT FOR 80000 ps;
	enable <= '1';
WAIT;
END PROCESS t_prcs_enable;
-- nextPC[15]
t_prcs_nextPC_15: PROCESS
BEGIN
	nextPC(15) <= '0';
	WAIT FOR 410000 ps;
	nextPC(15) <= '1';
	WAIT FOR 80000 ps;
	nextPC(15) <= '0';
WAIT;
END PROCESS t_prcs_nextPC_15;
-- nextPC[14]
t_prcs_nextPC_14: PROCESS
BEGIN
	nextPC(14) <= '0';
	WAIT FOR 410000 ps;
	nextPC(14) <= '1';
	WAIT FOR 80000 ps;
	nextPC(14) <= '0';
WAIT;
END PROCESS t_prcs_nextPC_14;
-- nextPC[13]
t_prcs_nextPC_13: PROCESS
BEGIN
	nextPC(13) <= '0';
	WAIT FOR 410000 ps;
	nextPC(13) <= '1';
	WAIT FOR 80000 ps;
	nextPC(13) <= '0';
WAIT;
END PROCESS t_prcs_nextPC_13;
-- nextPC[12]
t_prcs_nextPC_12: PROCESS
BEGIN
	nextPC(12) <= '0';
	WAIT FOR 410000 ps;
	nextPC(12) <= '1';
	WAIT FOR 80000 ps;
	nextPC(12) <= '0';
WAIT;
END PROCESS t_prcs_nextPC_12;
-- nextPC[11]
t_prcs_nextPC_11: PROCESS
BEGIN
	nextPC(11) <= '0';
	WAIT FOR 410000 ps;
	nextPC(11) <= '1';
	WAIT FOR 80000 ps;
	nextPC(11) <= '0';
WAIT;
END PROCESS t_prcs_nextPC_11;
-- nextPC[10]
t_prcs_nextPC_10: PROCESS
BEGIN
	nextPC(10) <= '0';
	WAIT FOR 410000 ps;
	nextPC(10) <= '1';
	WAIT FOR 80000 ps;
	nextPC(10) <= '0';
WAIT;
END PROCESS t_prcs_nextPC_10;
-- nextPC[9]
t_prcs_nextPC_9: PROCESS
BEGIN
	nextPC(9) <= '0';
	WAIT FOR 410000 ps;
	nextPC(9) <= '1';
	WAIT FOR 80000 ps;
	nextPC(9) <= '0';
WAIT;
END PROCESS t_prcs_nextPC_9;
-- nextPC[8]
t_prcs_nextPC_8: PROCESS
BEGIN
	nextPC(8) <= '0';
	WAIT FOR 410000 ps;
	nextPC(8) <= '1';
	WAIT FOR 80000 ps;
	nextPC(8) <= '0';
WAIT;
END PROCESS t_prcs_nextPC_8;
-- nextPC[7]
t_prcs_nextPC_7: PROCESS
BEGIN
	nextPC(7) <= '0';
	WAIT FOR 410000 ps;
	nextPC(7) <= '1';
	WAIT FOR 80000 ps;
	nextPC(7) <= '0';
WAIT;
END PROCESS t_prcs_nextPC_7;
-- nextPC[6]
t_prcs_nextPC_6: PROCESS
BEGIN
	nextPC(6) <= '0';
	WAIT FOR 410000 ps;
	nextPC(6) <= '1';
	WAIT FOR 80000 ps;
	nextPC(6) <= '0';
WAIT;
END PROCESS t_prcs_nextPC_6;
-- nextPC[5]
t_prcs_nextPC_5: PROCESS
BEGIN
	nextPC(5) <= '0';
	WAIT FOR 410000 ps;
	nextPC(5) <= '1';
	WAIT FOR 80000 ps;
	nextPC(5) <= '0';
WAIT;
END PROCESS t_prcs_nextPC_5;
-- nextPC[4]
t_prcs_nextPC_4: PROCESS
BEGIN
	nextPC(4) <= '0';
	WAIT FOR 410000 ps;
	nextPC(4) <= '1';
	WAIT FOR 80000 ps;
	nextPC(4) <= '0';
WAIT;
END PROCESS t_prcs_nextPC_4;
-- nextPC[3]
t_prcs_nextPC_3: PROCESS
BEGIN
	nextPC(3) <= '0';
	WAIT FOR 330000 ps;
	nextPC(3) <= '1';
WAIT;
END PROCESS t_prcs_nextPC_3;
-- nextPC[2]
t_prcs_nextPC_2: PROCESS
BEGIN
	nextPC(2) <= '0';
	WAIT FOR 170000 ps;
	nextPC(2) <= '1';
	WAIT FOR 160000 ps;
	nextPC(2) <= '0';
	WAIT FOR 80000 ps;
	nextPC(2) <= '1';
	WAIT FOR 80000 ps;
	nextPC(2) <= '0';
WAIT;
END PROCESS t_prcs_nextPC_2;
-- nextPC[1]
t_prcs_nextPC_1: PROCESS
BEGIN
	nextPC(1) <= '0';
	WAIT FOR 90000 ps;
	nextPC(1) <= '1';
	WAIT FOR 80000 ps;
	nextPC(1) <= '0';
	WAIT FOR 80000 ps;
	nextPC(1) <= '1';
	WAIT FOR 80000 ps;
	nextPC(1) <= '0';
	WAIT FOR 80000 ps;
	nextPC(1) <= '1';
WAIT;
END PROCESS t_prcs_nextPC_1;
-- nextPC[0]
t_prcs_nextPC_0: PROCESS
BEGIN
	nextPC(0) <= '0';
	WAIT FOR 410000 ps;
	nextPC(0) <= '1';
	WAIT FOR 80000 ps;
	nextPC(0) <= '0';
WAIT;
END PROCESS t_prcs_nextPC_0;
END MyProgramCounter_arch;
