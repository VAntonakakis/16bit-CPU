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
-- Generated on "03/30/2026 18:14:26"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          MyMux8to1_16bit
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY MyMux8to1_16bit_vhd_vec_tst IS
END MyMux8to1_16bit_vhd_vec_tst;
ARCHITECTURE MyMux8to1_16bit_arch OF MyMux8to1_16bit_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL A : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL B : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL C : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL D : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL E : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL F : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL G : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL H : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL Q : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL S : STD_LOGIC_VECTOR(2 DOWNTO 0);
COMPONENT MyMux8to1_16bit
	PORT (
	A : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	B : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	C : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	D : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	E : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	F : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	G : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	H : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	Q : BUFFER STD_LOGIC_VECTOR(15 DOWNTO 0);
	S : IN STD_LOGIC_VECTOR(2 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : MyMux8to1_16bit
	PORT MAP (
-- list connections between master ports and signals
	A => A,
	B => B,
	C => C,
	D => D,
	E => E,
	F => F,
	G => G,
	H => H,
	Q => Q,
	S => S
	);
-- A[15]
t_prcs_A_15: PROCESS
BEGIN
	A(15) <= '0';
WAIT;
END PROCESS t_prcs_A_15;
-- A[14]
t_prcs_A_14: PROCESS
BEGIN
	A(14) <= '0';
WAIT;
END PROCESS t_prcs_A_14;
-- A[13]
t_prcs_A_13: PROCESS
BEGIN
	A(13) <= '0';
WAIT;
END PROCESS t_prcs_A_13;
-- A[12]
t_prcs_A_12: PROCESS
BEGIN
	A(12) <= '0';
WAIT;
END PROCESS t_prcs_A_12;
-- A[11]
t_prcs_A_11: PROCESS
BEGIN
	A(11) <= '0';
WAIT;
END PROCESS t_prcs_A_11;
-- A[10]
t_prcs_A_10: PROCESS
BEGIN
	A(10) <= '0';
WAIT;
END PROCESS t_prcs_A_10;
-- A[9]
t_prcs_A_9: PROCESS
BEGIN
	A(9) <= '0';
WAIT;
END PROCESS t_prcs_A_9;
-- A[8]
t_prcs_A_8: PROCESS
BEGIN
	A(8) <= '0';
WAIT;
END PROCESS t_prcs_A_8;
-- A[7]
t_prcs_A_7: PROCESS
BEGIN
	A(7) <= '0';
WAIT;
END PROCESS t_prcs_A_7;
-- A[6]
t_prcs_A_6: PROCESS
BEGIN
	A(6) <= '0';
WAIT;
END PROCESS t_prcs_A_6;
-- A[5]
t_prcs_A_5: PROCESS
BEGIN
	A(5) <= '0';
WAIT;
END PROCESS t_prcs_A_5;
-- A[4]
t_prcs_A_4: PROCESS
BEGIN
	A(4) <= '0';
WAIT;
END PROCESS t_prcs_A_4;
-- A[3]
t_prcs_A_3: PROCESS
BEGIN
	A(3) <= '0';
WAIT;
END PROCESS t_prcs_A_3;
-- A[2]
t_prcs_A_2: PROCESS
BEGIN
	A(2) <= '0';
WAIT;
END PROCESS t_prcs_A_2;
-- A[1]
t_prcs_A_1: PROCESS
BEGIN
	A(1) <= '0';
WAIT;
END PROCESS t_prcs_A_1;
-- A[0]
t_prcs_A_0: PROCESS
BEGIN
	A(0) <= '1';
WAIT;
END PROCESS t_prcs_A_0;
-- B[15]
t_prcs_B_15: PROCESS
BEGIN
	B(15) <= '0';
WAIT;
END PROCESS t_prcs_B_15;
-- B[14]
t_prcs_B_14: PROCESS
BEGIN
	B(14) <= '0';
WAIT;
END PROCESS t_prcs_B_14;
-- B[13]
t_prcs_B_13: PROCESS
BEGIN
	B(13) <= '0';
WAIT;
END PROCESS t_prcs_B_13;
-- B[12]
t_prcs_B_12: PROCESS
BEGIN
	B(12) <= '0';
WAIT;
END PROCESS t_prcs_B_12;
-- B[11]
t_prcs_B_11: PROCESS
BEGIN
	B(11) <= '0';
WAIT;
END PROCESS t_prcs_B_11;
-- B[10]
t_prcs_B_10: PROCESS
BEGIN
	B(10) <= '0';
WAIT;
END PROCESS t_prcs_B_10;
-- B[9]
t_prcs_B_9: PROCESS
BEGIN
	B(9) <= '0';
WAIT;
END PROCESS t_prcs_B_9;
-- B[8]
t_prcs_B_8: PROCESS
BEGIN
	B(8) <= '0';
WAIT;
END PROCESS t_prcs_B_8;
-- B[7]
t_prcs_B_7: PROCESS
BEGIN
	B(7) <= '0';
WAIT;
END PROCESS t_prcs_B_7;
-- B[6]
t_prcs_B_6: PROCESS
BEGIN
	B(6) <= '0';
WAIT;
END PROCESS t_prcs_B_6;
-- B[5]
t_prcs_B_5: PROCESS
BEGIN
	B(5) <= '0';
WAIT;
END PROCESS t_prcs_B_5;
-- B[4]
t_prcs_B_4: PROCESS
BEGIN
	B(4) <= '0';
WAIT;
END PROCESS t_prcs_B_4;
-- B[3]
t_prcs_B_3: PROCESS
BEGIN
	B(3) <= '0';
WAIT;
END PROCESS t_prcs_B_3;
-- B[2]
t_prcs_B_2: PROCESS
BEGIN
	B(2) <= '0';
WAIT;
END PROCESS t_prcs_B_2;
-- B[1]
t_prcs_B_1: PROCESS
BEGIN
	B(1) <= '1';
WAIT;
END PROCESS t_prcs_B_1;
-- B[0]
t_prcs_B_0: PROCESS
BEGIN
	B(0) <= '0';
WAIT;
END PROCESS t_prcs_B_0;
-- C[15]
t_prcs_C_15: PROCESS
BEGIN
	C(15) <= '0';
WAIT;
END PROCESS t_prcs_C_15;
-- C[14]
t_prcs_C_14: PROCESS
BEGIN
	C(14) <= '0';
WAIT;
END PROCESS t_prcs_C_14;
-- C[13]
t_prcs_C_13: PROCESS
BEGIN
	C(13) <= '0';
WAIT;
END PROCESS t_prcs_C_13;
-- C[12]
t_prcs_C_12: PROCESS
BEGIN
	C(12) <= '0';
WAIT;
END PROCESS t_prcs_C_12;
-- C[11]
t_prcs_C_11: PROCESS
BEGIN
	C(11) <= '0';
WAIT;
END PROCESS t_prcs_C_11;
-- C[10]
t_prcs_C_10: PROCESS
BEGIN
	C(10) <= '0';
WAIT;
END PROCESS t_prcs_C_10;
-- C[9]
t_prcs_C_9: PROCESS
BEGIN
	C(9) <= '0';
WAIT;
END PROCESS t_prcs_C_9;
-- C[8]
t_prcs_C_8: PROCESS
BEGIN
	C(8) <= '0';
WAIT;
END PROCESS t_prcs_C_8;
-- C[7]
t_prcs_C_7: PROCESS
BEGIN
	C(7) <= '0';
WAIT;
END PROCESS t_prcs_C_7;
-- C[6]
t_prcs_C_6: PROCESS
BEGIN
	C(6) <= '0';
WAIT;
END PROCESS t_prcs_C_6;
-- C[5]
t_prcs_C_5: PROCESS
BEGIN
	C(5) <= '0';
WAIT;
END PROCESS t_prcs_C_5;
-- C[4]
t_prcs_C_4: PROCESS
BEGIN
	C(4) <= '0';
WAIT;
END PROCESS t_prcs_C_4;
-- C[3]
t_prcs_C_3: PROCESS
BEGIN
	C(3) <= '0';
WAIT;
END PROCESS t_prcs_C_3;
-- C[2]
t_prcs_C_2: PROCESS
BEGIN
	C(2) <= '1';
WAIT;
END PROCESS t_prcs_C_2;
-- C[1]
t_prcs_C_1: PROCESS
BEGIN
	C(1) <= '0';
WAIT;
END PROCESS t_prcs_C_1;
-- C[0]
t_prcs_C_0: PROCESS
BEGIN
	C(0) <= '0';
WAIT;
END PROCESS t_prcs_C_0;
-- D[15]
t_prcs_D_15: PROCESS
BEGIN
	D(15) <= '0';
WAIT;
END PROCESS t_prcs_D_15;
-- D[14]
t_prcs_D_14: PROCESS
BEGIN
	D(14) <= '0';
WAIT;
END PROCESS t_prcs_D_14;
-- D[13]
t_prcs_D_13: PROCESS
BEGIN
	D(13) <= '0';
WAIT;
END PROCESS t_prcs_D_13;
-- D[12]
t_prcs_D_12: PROCESS
BEGIN
	D(12) <= '0';
WAIT;
END PROCESS t_prcs_D_12;
-- D[11]
t_prcs_D_11: PROCESS
BEGIN
	D(11) <= '0';
WAIT;
END PROCESS t_prcs_D_11;
-- D[10]
t_prcs_D_10: PROCESS
BEGIN
	D(10) <= '0';
WAIT;
END PROCESS t_prcs_D_10;
-- D[9]
t_prcs_D_9: PROCESS
BEGIN
	D(9) <= '0';
WAIT;
END PROCESS t_prcs_D_9;
-- D[8]
t_prcs_D_8: PROCESS
BEGIN
	D(8) <= '0';
WAIT;
END PROCESS t_prcs_D_8;
-- D[7]
t_prcs_D_7: PROCESS
BEGIN
	D(7) <= '0';
WAIT;
END PROCESS t_prcs_D_7;
-- D[6]
t_prcs_D_6: PROCESS
BEGIN
	D(6) <= '0';
WAIT;
END PROCESS t_prcs_D_6;
-- D[5]
t_prcs_D_5: PROCESS
BEGIN
	D(5) <= '0';
WAIT;
END PROCESS t_prcs_D_5;
-- D[4]
t_prcs_D_4: PROCESS
BEGIN
	D(4) <= '0';
WAIT;
END PROCESS t_prcs_D_4;
-- D[3]
t_prcs_D_3: PROCESS
BEGIN
	D(3) <= '1';
WAIT;
END PROCESS t_prcs_D_3;
-- D[2]
t_prcs_D_2: PROCESS
BEGIN
	D(2) <= '0';
WAIT;
END PROCESS t_prcs_D_2;
-- D[1]
t_prcs_D_1: PROCESS
BEGIN
	D(1) <= '0';
WAIT;
END PROCESS t_prcs_D_1;
-- D[0]
t_prcs_D_0: PROCESS
BEGIN
	D(0) <= '0';
WAIT;
END PROCESS t_prcs_D_0;
-- E[15]
t_prcs_E_15: PROCESS
BEGIN
	E(15) <= '0';
WAIT;
END PROCESS t_prcs_E_15;
-- E[14]
t_prcs_E_14: PROCESS
BEGIN
	E(14) <= '0';
WAIT;
END PROCESS t_prcs_E_14;
-- E[13]
t_prcs_E_13: PROCESS
BEGIN
	E(13) <= '0';
WAIT;
END PROCESS t_prcs_E_13;
-- E[12]
t_prcs_E_12: PROCESS
BEGIN
	E(12) <= '0';
WAIT;
END PROCESS t_prcs_E_12;
-- E[11]
t_prcs_E_11: PROCESS
BEGIN
	E(11) <= '0';
WAIT;
END PROCESS t_prcs_E_11;
-- E[10]
t_prcs_E_10: PROCESS
BEGIN
	E(10) <= '0';
WAIT;
END PROCESS t_prcs_E_10;
-- E[9]
t_prcs_E_9: PROCESS
BEGIN
	E(9) <= '0';
WAIT;
END PROCESS t_prcs_E_9;
-- E[8]
t_prcs_E_8: PROCESS
BEGIN
	E(8) <= '0';
WAIT;
END PROCESS t_prcs_E_8;
-- E[7]
t_prcs_E_7: PROCESS
BEGIN
	E(7) <= '0';
WAIT;
END PROCESS t_prcs_E_7;
-- E[6]
t_prcs_E_6: PROCESS
BEGIN
	E(6) <= '0';
WAIT;
END PROCESS t_prcs_E_6;
-- E[5]
t_prcs_E_5: PROCESS
BEGIN
	E(5) <= '0';
WAIT;
END PROCESS t_prcs_E_5;
-- E[4]
t_prcs_E_4: PROCESS
BEGIN
	E(4) <= '1';
WAIT;
END PROCESS t_prcs_E_4;
-- E[3]
t_prcs_E_3: PROCESS
BEGIN
	E(3) <= '0';
WAIT;
END PROCESS t_prcs_E_3;
-- E[2]
t_prcs_E_2: PROCESS
BEGIN
	E(2) <= '0';
WAIT;
END PROCESS t_prcs_E_2;
-- E[1]
t_prcs_E_1: PROCESS
BEGIN
	E(1) <= '0';
WAIT;
END PROCESS t_prcs_E_1;
-- E[0]
t_prcs_E_0: PROCESS
BEGIN
	E(0) <= '0';
WAIT;
END PROCESS t_prcs_E_0;
-- F[15]
t_prcs_F_15: PROCESS
BEGIN
	F(15) <= '0';
WAIT;
END PROCESS t_prcs_F_15;
-- F[14]
t_prcs_F_14: PROCESS
BEGIN
	F(14) <= '0';
WAIT;
END PROCESS t_prcs_F_14;
-- F[13]
t_prcs_F_13: PROCESS
BEGIN
	F(13) <= '0';
WAIT;
END PROCESS t_prcs_F_13;
-- F[12]
t_prcs_F_12: PROCESS
BEGIN
	F(12) <= '0';
WAIT;
END PROCESS t_prcs_F_12;
-- F[11]
t_prcs_F_11: PROCESS
BEGIN
	F(11) <= '0';
WAIT;
END PROCESS t_prcs_F_11;
-- F[10]
t_prcs_F_10: PROCESS
BEGIN
	F(10) <= '0';
WAIT;
END PROCESS t_prcs_F_10;
-- F[9]
t_prcs_F_9: PROCESS
BEGIN
	F(9) <= '0';
WAIT;
END PROCESS t_prcs_F_9;
-- F[8]
t_prcs_F_8: PROCESS
BEGIN
	F(8) <= '0';
WAIT;
END PROCESS t_prcs_F_8;
-- F[7]
t_prcs_F_7: PROCESS
BEGIN
	F(7) <= '0';
WAIT;
END PROCESS t_prcs_F_7;
-- F[6]
t_prcs_F_6: PROCESS
BEGIN
	F(6) <= '0';
WAIT;
END PROCESS t_prcs_F_6;
-- F[5]
t_prcs_F_5: PROCESS
BEGIN
	F(5) <= '1';
WAIT;
END PROCESS t_prcs_F_5;
-- F[4]
t_prcs_F_4: PROCESS
BEGIN
	F(4) <= '0';
WAIT;
END PROCESS t_prcs_F_4;
-- F[3]
t_prcs_F_3: PROCESS
BEGIN
	F(3) <= '0';
WAIT;
END PROCESS t_prcs_F_3;
-- F[2]
t_prcs_F_2: PROCESS
BEGIN
	F(2) <= '0';
WAIT;
END PROCESS t_prcs_F_2;
-- F[1]
t_prcs_F_1: PROCESS
BEGIN
	F(1) <= '0';
WAIT;
END PROCESS t_prcs_F_1;
-- F[0]
t_prcs_F_0: PROCESS
BEGIN
	F(0) <= '0';
WAIT;
END PROCESS t_prcs_F_0;
-- G[15]
t_prcs_G_15: PROCESS
BEGIN
	G(15) <= '0';
WAIT;
END PROCESS t_prcs_G_15;
-- G[14]
t_prcs_G_14: PROCESS
BEGIN
	G(14) <= '0';
WAIT;
END PROCESS t_prcs_G_14;
-- G[13]
t_prcs_G_13: PROCESS
BEGIN
	G(13) <= '0';
WAIT;
END PROCESS t_prcs_G_13;
-- G[12]
t_prcs_G_12: PROCESS
BEGIN
	G(12) <= '0';
WAIT;
END PROCESS t_prcs_G_12;
-- G[11]
t_prcs_G_11: PROCESS
BEGIN
	G(11) <= '0';
WAIT;
END PROCESS t_prcs_G_11;
-- G[10]
t_prcs_G_10: PROCESS
BEGIN
	G(10) <= '0';
WAIT;
END PROCESS t_prcs_G_10;
-- G[9]
t_prcs_G_9: PROCESS
BEGIN
	G(9) <= '0';
WAIT;
END PROCESS t_prcs_G_9;
-- G[8]
t_prcs_G_8: PROCESS
BEGIN
	G(8) <= '0';
WAIT;
END PROCESS t_prcs_G_8;
-- G[7]
t_prcs_G_7: PROCESS
BEGIN
	G(7) <= '0';
WAIT;
END PROCESS t_prcs_G_7;
-- G[6]
t_prcs_G_6: PROCESS
BEGIN
	G(6) <= '1';
WAIT;
END PROCESS t_prcs_G_6;
-- G[5]
t_prcs_G_5: PROCESS
BEGIN
	G(5) <= '0';
WAIT;
END PROCESS t_prcs_G_5;
-- G[4]
t_prcs_G_4: PROCESS
BEGIN
	G(4) <= '0';
WAIT;
END PROCESS t_prcs_G_4;
-- G[3]
t_prcs_G_3: PROCESS
BEGIN
	G(3) <= '0';
WAIT;
END PROCESS t_prcs_G_3;
-- G[2]
t_prcs_G_2: PROCESS
BEGIN
	G(2) <= '0';
WAIT;
END PROCESS t_prcs_G_2;
-- G[1]
t_prcs_G_1: PROCESS
BEGIN
	G(1) <= '0';
WAIT;
END PROCESS t_prcs_G_1;
-- G[0]
t_prcs_G_0: PROCESS
BEGIN
	G(0) <= '0';
WAIT;
END PROCESS t_prcs_G_0;
-- H[15]
t_prcs_H_15: PROCESS
BEGIN
	H(15) <= '0';
WAIT;
END PROCESS t_prcs_H_15;
-- H[14]
t_prcs_H_14: PROCESS
BEGIN
	H(14) <= '0';
WAIT;
END PROCESS t_prcs_H_14;
-- H[13]
t_prcs_H_13: PROCESS
BEGIN
	H(13) <= '0';
WAIT;
END PROCESS t_prcs_H_13;
-- H[12]
t_prcs_H_12: PROCESS
BEGIN
	H(12) <= '0';
WAIT;
END PROCESS t_prcs_H_12;
-- H[11]
t_prcs_H_11: PROCESS
BEGIN
	H(11) <= '0';
WAIT;
END PROCESS t_prcs_H_11;
-- H[10]
t_prcs_H_10: PROCESS
BEGIN
	H(10) <= '0';
WAIT;
END PROCESS t_prcs_H_10;
-- H[9]
t_prcs_H_9: PROCESS
BEGIN
	H(9) <= '0';
WAIT;
END PROCESS t_prcs_H_9;
-- H[8]
t_prcs_H_8: PROCESS
BEGIN
	H(8) <= '0';
WAIT;
END PROCESS t_prcs_H_8;
-- H[7]
t_prcs_H_7: PROCESS
BEGIN
	H(7) <= '1';
WAIT;
END PROCESS t_prcs_H_7;
-- H[6]
t_prcs_H_6: PROCESS
BEGIN
	H(6) <= '0';
WAIT;
END PROCESS t_prcs_H_6;
-- H[5]
t_prcs_H_5: PROCESS
BEGIN
	H(5) <= '0';
WAIT;
END PROCESS t_prcs_H_5;
-- H[4]
t_prcs_H_4: PROCESS
BEGIN
	H(4) <= '0';
WAIT;
END PROCESS t_prcs_H_4;
-- H[3]
t_prcs_H_3: PROCESS
BEGIN
	H(3) <= '0';
WAIT;
END PROCESS t_prcs_H_3;
-- H[2]
t_prcs_H_2: PROCESS
BEGIN
	H(2) <= '0';
WAIT;
END PROCESS t_prcs_H_2;
-- H[1]
t_prcs_H_1: PROCESS
BEGIN
	H(1) <= '0';
WAIT;
END PROCESS t_prcs_H_1;
-- H[0]
t_prcs_H_0: PROCESS
BEGIN
	H(0) <= '0';
WAIT;
END PROCESS t_prcs_H_0;
-- S[2]
t_prcs_S_2: PROCESS
BEGIN
	S(2) <= '0';
	WAIT FOR 400000 ps;
	S(2) <= '1';
	WAIT FOR 400000 ps;
	S(2) <= '0';
WAIT;
END PROCESS t_prcs_S_2;
-- S[1]
t_prcs_S_1: PROCESS
BEGIN
	FOR i IN 1 TO 2
	LOOP
		S(1) <= '0';
		WAIT FOR 200000 ps;
		S(1) <= '1';
		WAIT FOR 200000 ps;
	END LOOP;
	S(1) <= '0';
WAIT;
END PROCESS t_prcs_S_1;
-- S[0]
t_prcs_S_0: PROCESS
BEGIN
LOOP
	S(0) <= '0';
	WAIT FOR 100000 ps;
	S(0) <= '1';
	WAIT FOR 100000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_S_0;
END MyMux8to1_16bit_arch;
