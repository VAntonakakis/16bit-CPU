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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 19.1.0 Build 670 09/22/2019 SJ Lite Edition"

-- DATE "04/09/2026 19:22:49"

-- 
-- Device: Altera EPM240T100C3 Package TQFP100
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAXII;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAXII.MAXII_COMPONENTS.ALL;

ENTITY 	MyFFMux2to1 IS
    PORT (
	R : IN std_logic;
	I : IN std_logic_vector(15 DOWNTO 0);
	C : IN std_logic;
	E : IN std_logic;
	S : IN std_logic;
	O : BUFFER std_logic_vector(15 DOWNTO 0)
	);
END MyFFMux2to1;

-- Design Ports Information


ARCHITECTURE structure OF MyFFMux2to1 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_R : std_logic;
SIGNAL ww_I : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_C : std_logic;
SIGNAL ww_E : std_logic;
SIGNAL ww_S : std_logic;
SIGNAL ww_O : std_logic_vector(15 DOWNTO 0);
SIGNAL \C~combout\ : std_logic;
SIGNAL \R~combout\ : std_logic;
SIGNAL \E~combout\ : std_logic;
SIGNAL \RFF|O[8]~1_combout\ : std_logic;
SIGNAL \RFF|O~0\ : std_logic;
SIGNAL \S~combout\ : std_logic;
SIGNAL \MUX|v3|v0|Q~0\ : std_logic;
SIGNAL \RFF|O~2\ : std_logic;
SIGNAL \MUX|v3|v1|Q~0\ : std_logic;
SIGNAL \RFF|O~3\ : std_logic;
SIGNAL \MUX|v3|v2|Q~0\ : std_logic;
SIGNAL \RFF|O~4\ : std_logic;
SIGNAL \MUX|v3|v3|Q~0\ : std_logic;
SIGNAL \RFF|O~5\ : std_logic;
SIGNAL \MUX|v3|v4|Q~0\ : std_logic;
SIGNAL \RFF|O~6\ : std_logic;
SIGNAL \MUX|v3|v5|Q~0\ : std_logic;
SIGNAL \RFF|O~7\ : std_logic;
SIGNAL \MUX|v3|v6|Q~0\ : std_logic;
SIGNAL \RFF|O~8\ : std_logic;
SIGNAL \MUX|v3|v7|Q~0\ : std_logic;
SIGNAL \RFF|O~9\ : std_logic;
SIGNAL \MUX|v3|v8|Q~0\ : std_logic;
SIGNAL \RFF|O~10\ : std_logic;
SIGNAL \MUX|v3|v9|Q~0\ : std_logic;
SIGNAL \RFF|O~11\ : std_logic;
SIGNAL \MUX|v3|v10|Q~0\ : std_logic;
SIGNAL \RFF|O~12\ : std_logic;
SIGNAL \MUX|v3|v11|Q~0\ : std_logic;
SIGNAL \RFF|O~13\ : std_logic;
SIGNAL \MUX|v3|v12|Q~0\ : std_logic;
SIGNAL \RFF|O~14\ : std_logic;
SIGNAL \MUX|v3|v13|Q~0\ : std_logic;
SIGNAL \RFF|O~15\ : std_logic;
SIGNAL \MUX|v3|v14|Q~0\ : std_logic;
SIGNAL \RFF|O~16\ : std_logic;
SIGNAL \MUX|v3|v15|Q~0\ : std_logic;
SIGNAL \FFF|O\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \I~combout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \RFF|O\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_C~combout\ : std_logic;

BEGIN

ww_R <= R;
ww_I <= I;
ww_C <= C;
ww_E <= E;
ww_S <= S;
O <= ww_O;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_C~combout\ <= NOT \C~combout\;

-- Location: PIN_14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\C~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_C,
	combout => \C~combout\);

-- Location: PIN_49,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\I[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_I(0),
	combout => \I~combout\(0));

-- Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\R~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_R,
	combout => \R~combout\);

-- Location: PIN_39,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\E~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_E,
	combout => \E~combout\);

-- Location: LC_X5_Y2_N5
\RFF|O[8]~1\ : maxii_lcell
-- Equation(s):
-- \RFF|O[8]~1_combout\ = ((\E~combout\) # ((!\R~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \E~combout\,
	datad => \R~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RFF|O[8]~1_combout\);

-- Location: LC_X7_Y1_N8
\RFF|O[0]\ : maxii_lcell
-- Equation(s):
-- \RFF|O~0\ = (\I~combout\(0) & (((\R~combout\))))
-- \RFF|O\(0) = DFFEAS(\RFF|O~0\, GLOBAL(\C~combout\), VCC, , \RFF|O[8]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0a0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \C~combout\,
	dataa => \I~combout\(0),
	datac => \R~combout\,
	aclr => GND,
	ena => \RFF|O[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RFF|O~0\,
	regout => \RFF|O\(0));

-- Location: PIN_64,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\S~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_S,
	combout => \S~combout\);

-- Location: LC_X7_Y1_N7
\FFF|O[0]\ : maxii_lcell
-- Equation(s):
-- \MUX|v3|v0|Q~0\ = ((\S~combout\ & ((B1_O[0]))) # (!\S~combout\ & (\RFF|O\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_C~combout\,
	dataa => \RFF|O\(0),
	datac => \RFF|O~0\,
	datad => \S~combout\,
	aclr => GND,
	sload => VCC,
	ena => \RFF|O[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MUX|v3|v0|Q~0\,
	regout => \FFF|O\(0));

-- Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\I[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_I(1),
	combout => \I~combout\(1));

-- Location: LC_X7_Y1_N0
\RFF|O[1]\ : maxii_lcell
-- Equation(s):
-- \RFF|O~2\ = (\R~combout\ & (((\I~combout\(1)))))
-- \RFF|O\(1) = DFFEAS(\RFF|O~2\, GLOBAL(\C~combout\), VCC, , \RFF|O[8]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0a0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \C~combout\,
	dataa => \R~combout\,
	datac => \I~combout\(1),
	aclr => GND,
	ena => \RFF|O[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RFF|O~2\,
	regout => \RFF|O\(1));

-- Location: LC_X7_Y1_N5
\FFF|O[1]\ : maxii_lcell
-- Equation(s):
-- \MUX|v3|v1|Q~0\ = ((\S~combout\ & ((B1_O[1]))) # (!\S~combout\ & (\RFF|O\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_C~combout\,
	datab => \RFF|O\(1),
	datac => \RFF|O~2\,
	datad => \S~combout\,
	aclr => GND,
	sload => VCC,
	ena => \RFF|O[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MUX|v3|v1|Q~0\,
	regout => \FFF|O\(1));

-- Location: PIN_54,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\I[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_I(2),
	combout => \I~combout\(2));

-- Location: LC_X7_Y1_N2
\RFF|O[2]\ : maxii_lcell
-- Equation(s):
-- \RFF|O~3\ = (\R~combout\ & (((\I~combout\(2)))))
-- \RFF|O\(2) = DFFEAS(\RFF|O~3\, GLOBAL(\C~combout\), VCC, , \RFF|O[8]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0a0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \C~combout\,
	dataa => \R~combout\,
	datac => \I~combout\(2),
	aclr => GND,
	ena => \RFF|O[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RFF|O~3\,
	regout => \RFF|O\(2));

-- Location: LC_X7_Y1_N3
\FFF|O[2]\ : maxii_lcell
-- Equation(s):
-- \MUX|v3|v2|Q~0\ = ((\S~combout\ & ((B1_O[2]))) # (!\S~combout\ & (\RFF|O\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_C~combout\,
	datab => \RFF|O\(2),
	datac => \RFF|O~3\,
	datad => \S~combout\,
	aclr => GND,
	sload => VCC,
	ena => \RFF|O[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MUX|v3|v2|Q~0\,
	regout => \FFF|O\(2));

-- Location: PIN_52,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\I[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_I(3),
	combout => \I~combout\(3));

-- Location: LC_X7_Y1_N1
\RFF|O[3]\ : maxii_lcell
-- Equation(s):
-- \RFF|O~4\ = ((\I~combout\(3) & (\R~combout\)))
-- \RFF|O\(3) = DFFEAS(\RFF|O~4\, GLOBAL(\C~combout\), VCC, , \RFF|O[8]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0c0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \C~combout\,
	datab => \I~combout\(3),
	datac => \R~combout\,
	aclr => GND,
	ena => \RFF|O[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RFF|O~4\,
	regout => \RFF|O\(3));

-- Location: LC_X7_Y1_N9
\FFF|O[3]\ : maxii_lcell
-- Equation(s):
-- \MUX|v3|v3|Q~0\ = ((\S~combout\ & ((B1_O[3]))) # (!\S~combout\ & (\RFF|O\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_C~combout\,
	datab => \RFF|O\(3),
	datac => \RFF|O~4\,
	datad => \S~combout\,
	aclr => GND,
	sload => VCC,
	ena => \RFF|O[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MUX|v3|v3|Q~0\,
	regout => \FFF|O\(3));

-- Location: PIN_68,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\I[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_I(4),
	combout => \I~combout\(4));

-- Location: LC_X4_Y3_N0
\RFF|O[4]\ : maxii_lcell
-- Equation(s):
-- \RFF|O~5\ = ((\R~combout\ & ((\I~combout\(4)))))
-- \RFF|O\(4) = DFFEAS(\RFF|O~5\, GLOBAL(\C~combout\), VCC, , \RFF|O[8]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \C~combout\,
	datab => \R~combout\,
	datad => \I~combout\(4),
	aclr => GND,
	ena => \RFF|O[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RFF|O~5\,
	regout => \RFF|O\(4));

-- Location: LC_X4_Y3_N5
\FFF|O[4]\ : maxii_lcell
-- Equation(s):
-- \MUX|v3|v4|Q~0\ = ((\S~combout\ & ((B1_O[4]))) # (!\S~combout\ & (\RFF|O\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_C~combout\,
	datab => \RFF|O\(4),
	datac => \RFF|O~5\,
	datad => \S~combout\,
	aclr => GND,
	sload => VCC,
	ena => \RFF|O[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MUX|v3|v4|Q~0\,
	regout => \FFF|O\(4));

-- Location: PIN_90,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\I[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_I(5),
	combout => \I~combout\(5));

-- Location: LC_X4_Y3_N9
\RFF|O[5]\ : maxii_lcell
-- Equation(s):
-- \RFF|O~6\ = (((\I~combout\(5) & \R~combout\)))
-- \RFF|O\(5) = DFFEAS(\RFF|O~6\, GLOBAL(\C~combout\), VCC, , \RFF|O[8]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \C~combout\,
	datac => \I~combout\(5),
	datad => \R~combout\,
	aclr => GND,
	ena => \RFF|O[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RFF|O~6\,
	regout => \RFF|O\(5));

-- Location: LC_X4_Y3_N1
\FFF|O[5]\ : maxii_lcell
-- Equation(s):
-- \MUX|v3|v5|Q~0\ = ((\S~combout\ & ((B1_O[5]))) # (!\S~combout\ & (\RFF|O\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_C~combout\,
	datab => \RFF|O\(5),
	datac => \RFF|O~6\,
	datad => \S~combout\,
	aclr => GND,
	sload => VCC,
	ena => \RFF|O[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MUX|v3|v5|Q~0\,
	regout => \FFF|O\(5));

-- Location: PIN_87,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\I[6]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_I(6),
	combout => \I~combout\(6));

-- Location: LC_X4_Y3_N2
\RFF|O[6]\ : maxii_lcell
-- Equation(s):
-- \RFF|O~7\ = ((\I~combout\(6) & ((\R~combout\))))
-- \RFF|O\(6) = DFFEAS(\RFF|O~7\, GLOBAL(\C~combout\), VCC, , \RFF|O[8]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \C~combout\,
	datab => \I~combout\(6),
	datad => \R~combout\,
	aclr => GND,
	ena => \RFF|O[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RFF|O~7\,
	regout => \RFF|O\(6));

-- Location: LC_X4_Y3_N4
\FFF|O[6]\ : maxii_lcell
-- Equation(s):
-- \MUX|v3|v6|Q~0\ = ((\S~combout\ & ((B1_O[6]))) # (!\S~combout\ & (\RFF|O\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_C~combout\,
	datab => \RFF|O\(6),
	datac => \RFF|O~7\,
	datad => \S~combout\,
	aclr => GND,
	sload => VCC,
	ena => \RFF|O[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MUX|v3|v6|Q~0\,
	regout => \FFF|O\(6));

-- Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\I[7]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_I(7),
	combout => \I~combout\(7));

-- Location: LC_X4_Y3_N6
\RFF|O[7]\ : maxii_lcell
-- Equation(s):
-- \RFF|O~8\ = (((\I~combout\(7) & \R~combout\)))
-- \RFF|O\(7) = DFFEAS(\RFF|O~8\, GLOBAL(\C~combout\), VCC, , \RFF|O[8]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \C~combout\,
	datac => \I~combout\(7),
	datad => \R~combout\,
	aclr => GND,
	ena => \RFF|O[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RFF|O~8\,
	regout => \RFF|O\(7));

-- Location: LC_X4_Y3_N3
\FFF|O[7]\ : maxii_lcell
-- Equation(s):
-- \MUX|v3|v7|Q~0\ = ((\S~combout\ & ((B1_O[7]))) # (!\S~combout\ & (\RFF|O\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_C~combout\,
	datab => \RFF|O\(7),
	datac => \RFF|O~8\,
	datad => \S~combout\,
	aclr => GND,
	sload => VCC,
	ena => \RFF|O[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MUX|v3|v7|Q~0\,
	regout => \FFF|O\(7));

-- Location: PIN_33,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\I[8]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_I(8),
	combout => \I~combout\(8));

-- Location: LC_X4_Y1_N1
\RFF|O[8]\ : maxii_lcell
-- Equation(s):
-- \RFF|O~9\ = (\R~combout\ & (((\I~combout\(8)))))
-- \RFF|O\(8) = DFFEAS(\RFF|O~9\, GLOBAL(\C~combout\), VCC, , \RFF|O[8]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0a0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \C~combout\,
	dataa => \R~combout\,
	datac => \I~combout\(8),
	aclr => GND,
	ena => \RFF|O[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RFF|O~9\,
	regout => \RFF|O\(8));

-- Location: LC_X4_Y1_N0
\FFF|O[8]\ : maxii_lcell
-- Equation(s):
-- \MUX|v3|v8|Q~0\ = ((\S~combout\ & ((B1_O[8]))) # (!\S~combout\ & (\RFF|O\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_C~combout\,
	datab => \RFF|O\(8),
	datac => \RFF|O~9\,
	datad => \S~combout\,
	aclr => GND,
	sload => VCC,
	ena => \RFF|O[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MUX|v3|v8|Q~0\,
	regout => \FFF|O\(8));

-- Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\I[9]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_I(9),
	combout => \I~combout\(9));

-- Location: LC_X4_Y1_N4
\RFF|O[9]\ : maxii_lcell
-- Equation(s):
-- \RFF|O~10\ = (\R~combout\ & (((\I~combout\(9)))))
-- \RFF|O\(9) = DFFEAS(\RFF|O~10\, GLOBAL(\C~combout\), VCC, , \RFF|O[8]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0a0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \C~combout\,
	dataa => \R~combout\,
	datac => \I~combout\(9),
	aclr => GND,
	ena => \RFF|O[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RFF|O~10\,
	regout => \RFF|O\(9));

-- Location: LC_X4_Y1_N5
\FFF|O[9]\ : maxii_lcell
-- Equation(s):
-- \MUX|v3|v9|Q~0\ = ((\S~combout\ & ((B1_O[9]))) # (!\S~combout\ & (\RFF|O\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_C~combout\,
	datab => \RFF|O\(9),
	datac => \RFF|O~10\,
	datad => \S~combout\,
	aclr => GND,
	sload => VCC,
	ena => \RFF|O[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MUX|v3|v9|Q~0\,
	regout => \FFF|O\(9));

-- Location: PIN_30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\I[10]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_I(10),
	combout => \I~combout\(10));

-- Location: LC_X4_Y1_N6
\RFF|O[10]\ : maxii_lcell
-- Equation(s):
-- \RFF|O~11\ = ((\I~combout\(10) & (\R~combout\)))
-- \RFF|O\(10) = DFFEAS(\RFF|O~11\, GLOBAL(\C~combout\), VCC, , \RFF|O[8]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0c0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \C~combout\,
	datab => \I~combout\(10),
	datac => \R~combout\,
	aclr => GND,
	ena => \RFF|O[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RFF|O~11\,
	regout => \RFF|O\(10));

-- Location: LC_X4_Y1_N9
\FFF|O[10]\ : maxii_lcell
-- Equation(s):
-- \MUX|v3|v10|Q~0\ = ((\S~combout\ & ((B1_O[10]))) # (!\S~combout\ & (\RFF|O\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_C~combout\,
	datab => \RFF|O\(10),
	datac => \RFF|O~11\,
	datad => \S~combout\,
	aclr => GND,
	sload => VCC,
	ena => \RFF|O[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MUX|v3|v10|Q~0\,
	regout => \FFF|O\(10));

-- Location: PIN_36,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\I[11]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_I(11),
	combout => \I~combout\(11));

-- Location: LC_X4_Y1_N7
\RFF|O[11]\ : maxii_lcell
-- Equation(s):
-- \RFF|O~12\ = (\R~combout\ & (((\I~combout\(11)))))
-- \RFF|O\(11) = DFFEAS(\RFF|O~12\, GLOBAL(\C~combout\), VCC, , \RFF|O[8]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0a0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \C~combout\,
	dataa => \R~combout\,
	datac => \I~combout\(11),
	aclr => GND,
	ena => \RFF|O[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RFF|O~12\,
	regout => \RFF|O\(11));

-- Location: LC_X4_Y1_N3
\FFF|O[11]\ : maxii_lcell
-- Equation(s):
-- \MUX|v3|v11|Q~0\ = ((\S~combout\ & ((B1_O[11]))) # (!\S~combout\ & (\RFF|O\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_C~combout\,
	datab => \RFF|O\(11),
	datac => \RFF|O~12\,
	datad => \S~combout\,
	aclr => GND,
	sload => VCC,
	ena => \RFF|O[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MUX|v3|v11|Q~0\,
	regout => \FFF|O\(11));

-- Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\I[12]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_I(12),
	combout => \I~combout\(12));

-- Location: LC_X5_Y2_N0
\RFF|O[12]\ : maxii_lcell
-- Equation(s):
-- \RFF|O~13\ = (((\I~combout\(12) & \R~combout\)))
-- \RFF|O\(12) = DFFEAS(\RFF|O~13\, GLOBAL(\C~combout\), VCC, , \RFF|O[8]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \C~combout\,
	datac => \I~combout\(12),
	datad => \R~combout\,
	aclr => GND,
	ena => \RFF|O[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RFF|O~13\,
	regout => \RFF|O\(12));

-- Location: LC_X5_Y2_N8
\FFF|O[12]\ : maxii_lcell
-- Equation(s):
-- \MUX|v3|v12|Q~0\ = ((\S~combout\ & (B1_O[12])) # (!\S~combout\ & ((\RFF|O\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_C~combout\,
	datab => \S~combout\,
	datac => \RFF|O~13\,
	datad => \RFF|O\(12),
	aclr => GND,
	sload => VCC,
	ena => \RFF|O[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MUX|v3|v12|Q~0\,
	regout => \FFF|O\(12));

-- Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\I[13]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_I(13),
	combout => \I~combout\(13));

-- Location: LC_X4_Y3_N7
\RFF|O[13]\ : maxii_lcell
-- Equation(s):
-- \RFF|O~14\ = (((\I~combout\(13) & \R~combout\)))
-- \RFF|O\(13) = DFFEAS(\RFF|O~14\, GLOBAL(\C~combout\), VCC, , \RFF|O[8]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \C~combout\,
	datac => \I~combout\(13),
	datad => \R~combout\,
	aclr => GND,
	ena => \RFF|O[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RFF|O~14\,
	regout => \RFF|O\(13));

-- Location: LC_X4_Y3_N8
\FFF|O[13]\ : maxii_lcell
-- Equation(s):
-- \MUX|v3|v13|Q~0\ = ((\S~combout\ & ((B1_O[13]))) # (!\S~combout\ & (\RFF|O\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_C~combout\,
	dataa => \RFF|O\(13),
	datac => \RFF|O~14\,
	datad => \S~combout\,
	aclr => GND,
	sload => VCC,
	ena => \RFF|O[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MUX|v3|v13|Q~0\,
	regout => \FFF|O\(13));

-- Location: PIN_72,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\I[14]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_I(14),
	combout => \I~combout\(14));

-- Location: LC_X7_Y1_N4
\RFF|O[14]\ : maxii_lcell
-- Equation(s):
-- \RFF|O~15\ = (((\R~combout\ & \I~combout\(14))))
-- \RFF|O\(14) = DFFEAS(\RFF|O~15\, GLOBAL(\C~combout\), VCC, , \RFF|O[8]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \C~combout\,
	datac => \R~combout\,
	datad => \I~combout\(14),
	aclr => GND,
	ena => \RFF|O[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RFF|O~15\,
	regout => \RFF|O\(14));

-- Location: LC_X7_Y1_N6
\FFF|O[14]\ : maxii_lcell
-- Equation(s):
-- \MUX|v3|v14|Q~0\ = ((\S~combout\ & ((B1_O[14]))) # (!\S~combout\ & (\RFF|O\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_C~combout\,
	dataa => \RFF|O\(14),
	datac => \RFF|O~15\,
	datad => \S~combout\,
	aclr => GND,
	sload => VCC,
	ena => \RFF|O[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MUX|v3|v14|Q~0\,
	regout => \FFF|O\(14));

-- Location: PIN_88,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\I[15]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_I(15),
	combout => \I~combout\(15));

-- Location: LC_X4_Y1_N8
\RFF|O[15]\ : maxii_lcell
-- Equation(s):
-- \RFF|O~16\ = (\R~combout\ & (((\I~combout\(15)))))
-- \RFF|O\(15) = DFFEAS(\RFF|O~16\, GLOBAL(\C~combout\), VCC, , \RFF|O[8]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0a0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \C~combout\,
	dataa => \R~combout\,
	datac => \I~combout\(15),
	aclr => GND,
	ena => \RFF|O[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RFF|O~16\,
	regout => \RFF|O\(15));

-- Location: LC_X4_Y1_N2
\FFF|O[15]\ : maxii_lcell
-- Equation(s):
-- \MUX|v3|v15|Q~0\ = ((\S~combout\ & ((B1_O[15]))) # (!\S~combout\ & (\RFF|O\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_C~combout\,
	dataa => \RFF|O\(15),
	datac => \RFF|O~16\,
	datad => \S~combout\,
	aclr => GND,
	sload => VCC,
	ena => \RFF|O[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MUX|v3|v15|Q~0\,
	regout => \FFF|O\(15));

-- Location: PIN_66,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\O[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \MUX|v3|v0|Q~0\,
	oe => VCC,
	padio => ww_O(0));

-- Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\O[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \MUX|v3|v1|Q~0\,
	oe => VCC,
	padio => ww_O(1));

-- Location: PIN_61,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\O[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \MUX|v3|v2|Q~0\,
	oe => VCC,
	padio => ww_O(2));

-- Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\O[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \MUX|v3|v3|Q~0\,
	oe => VCC,
	padio => ww_O(3));

-- Location: PIN_85,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\O[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \MUX|v3|v4|Q~0\,
	oe => VCC,
	padio => ww_O(4));

-- Location: PIN_82,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\O[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \MUX|v3|v5|Q~0\,
	oe => VCC,
	padio => ww_O(5));

-- Location: PIN_91,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\O[6]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \MUX|v3|v6|Q~0\,
	oe => VCC,
	padio => ww_O(6));

-- Location: PIN_69,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\O[7]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \MUX|v3|v7|Q~0\,
	oe => VCC,
	padio => ww_O(7));

-- Location: PIN_37,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\O[8]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \MUX|v3|v8|Q~0\,
	oe => VCC,
	padio => ww_O(8));

-- Location: PIN_38,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\O[9]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \MUX|v3|v9|Q~0\,
	oe => VCC,
	padio => ww_O(9));

-- Location: PIN_34,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\O[10]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \MUX|v3|v10|Q~0\,
	oe => VCC,
	padio => ww_O(10));

-- Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\O[11]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \MUX|v3|v11|Q~0\,
	oe => VCC,
	padio => ww_O(11));

-- Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\O[12]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \MUX|v3|v12|Q~0\,
	oe => VCC,
	padio => ww_O(12));

-- Location: PIN_67,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\O[13]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \MUX|v3|v13|Q~0\,
	oe => VCC,
	padio => ww_O(13));

-- Location: PIN_50,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\O[14]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \MUX|v3|v14|Q~0\,
	oe => VCC,
	padio => ww_O(14));

-- Location: PIN_20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\O[15]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \MUX|v3|v15|Q~0\,
	oe => VCC,
	padio => ww_O(15));
END structure;


