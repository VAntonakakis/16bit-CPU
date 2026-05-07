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
-- Generated on "05/07/2026 14:12:16"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          forwarder
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY forwarder_vhd_vec_tst IS
END forwarder_vhd_vec_tst;
ARCHITECTURE forwarder_arch OF forwarder_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL ForwardA : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL ForwardB : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL R1AD : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL R2AD : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL RegAD_EXMEM : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL RegAD_MEMWB : STD_LOGIC_VECTOR(2 DOWNTO 0);
COMPONENT forwarder
	PORT (
	ForwardA : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
	ForwardB : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
	R1AD : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	R2AD : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	RegAD_EXMEM : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	RegAD_MEMWB : IN STD_LOGIC_VECTOR(2 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : forwarder
	PORT MAP (
-- list connections between master ports and signals
	ForwardA => ForwardA,
	ForwardB => ForwardB,
	R1AD => R1AD,
	R2AD => R2AD,
	RegAD_EXMEM => RegAD_EXMEM,
	RegAD_MEMWB => RegAD_MEMWB
	);
-- RegAD_EXMEM[2]
t_prcs_RegAD_EXMEM_2: PROCESS
BEGIN
	RegAD_EXMEM(2) <= '0';
WAIT;
END PROCESS t_prcs_RegAD_EXMEM_2;
-- RegAD_EXMEM[1]
t_prcs_RegAD_EXMEM_1: PROCESS
BEGIN
	RegAD_EXMEM(1) <= '0';
WAIT;
END PROCESS t_prcs_RegAD_EXMEM_1;
-- RegAD_EXMEM[0]
t_prcs_RegAD_EXMEM_0: PROCESS
BEGIN
	RegAD_EXMEM(0) <= '0';
WAIT;
END PROCESS t_prcs_RegAD_EXMEM_0;
-- RegAD_MEMWB[2]
t_prcs_RegAD_MEMWB_2: PROCESS
BEGIN
	RegAD_MEMWB(2) <= '0';
WAIT;
END PROCESS t_prcs_RegAD_MEMWB_2;
-- RegAD_MEMWB[1]
t_prcs_RegAD_MEMWB_1: PROCESS
BEGIN
	RegAD_MEMWB(1) <= '0';
WAIT;
END PROCESS t_prcs_RegAD_MEMWB_1;
-- RegAD_MEMWB[0]
t_prcs_RegAD_MEMWB_0: PROCESS
BEGIN
	RegAD_MEMWB(0) <= '1';
WAIT;
END PROCESS t_prcs_RegAD_MEMWB_0;
-- R1AD[2]
t_prcs_R1AD_2: PROCESS
BEGIN
	R1AD(2) <= '0';
WAIT;
END PROCESS t_prcs_R1AD_2;
-- R1AD[1]
t_prcs_R1AD_1: PROCESS
BEGIN
	R1AD(1) <= '1';
	WAIT FOR 80000 ps;
	R1AD(1) <= '0';
	WAIT FOR 160000 ps;
	R1AD(1) <= '1';
	WAIT FOR 160000 ps;
	R1AD(1) <= '0';
WAIT;
END PROCESS t_prcs_R1AD_1;
-- R1AD[0]
t_prcs_R1AD_0: PROCESS
BEGIN
	R1AD(0) <= '0';
	WAIT FOR 160000 ps;
	R1AD(0) <= '1';
	WAIT FOR 80000 ps;
	R1AD(0) <= '0';
	WAIT FOR 240000 ps;
	R1AD(0) <= '1';
	WAIT FOR 80000 ps;
	R1AD(0) <= '0';
	WAIT FOR 80000 ps;
	R1AD(0) <= '1';
WAIT;
END PROCESS t_prcs_R1AD_0;
-- R2AD[2]
t_prcs_R2AD_2: PROCESS
BEGIN
	R2AD(2) <= '1';
	WAIT FOR 240000 ps;
	R2AD(2) <= '0';
WAIT;
END PROCESS t_prcs_R2AD_2;
-- R2AD[1]
t_prcs_R2AD_1: PROCESS
BEGIN
	R2AD(1) <= '0';
WAIT;
END PROCESS t_prcs_R2AD_1;
-- R2AD[0]
t_prcs_R2AD_0: PROCESS
BEGIN
	R2AD(0) <= '0';
	WAIT FOR 320000 ps;
	R2AD(0) <= '1';
	WAIT FOR 160000 ps;
	R2AD(0) <= '0';
	WAIT FOR 160000 ps;
	R2AD(0) <= '1';
WAIT;
END PROCESS t_prcs_R2AD_0;
END forwarder_arch;
