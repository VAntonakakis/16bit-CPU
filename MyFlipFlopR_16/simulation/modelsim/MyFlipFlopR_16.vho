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

-- DATE "04/08/2026 18:08:46"

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

ENTITY 	MyFlipFlopR_16 IS
    PORT (
	R : IN std_logic;
	I : IN std_logic_vector(15 DOWNTO 0);
	C : IN std_logic;
	E : IN std_logic;
	O : OUT std_logic_vector(15 DOWNTO 0)
	);
END MyFlipFlopR_16;

-- Design Ports Information


ARCHITECTURE structure OF MyFlipFlopR_16 IS
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
SIGNAL ww_O : std_logic_vector(15 DOWNTO 0);
SIGNAL \C~combout\ : std_logic;
SIGNAL \R~combout\ : std_logic;
SIGNAL \E~combout\ : std_logic;
SIGNAL \O[0]~1_combout\ : std_logic;
SIGNAL \O[0]~reg0_regout\ : std_logic;
SIGNAL \O[1]~reg0_regout\ : std_logic;
SIGNAL \O[2]~reg0_regout\ : std_logic;
SIGNAL \O[3]~reg0_regout\ : std_logic;
SIGNAL \O[4]~reg0_regout\ : std_logic;
SIGNAL \O[5]~reg0_regout\ : std_logic;
SIGNAL \O[6]~reg0_regout\ : std_logic;
SIGNAL \O[7]~reg0_regout\ : std_logic;
SIGNAL \O[8]~reg0_regout\ : std_logic;
SIGNAL \O[9]~reg0_regout\ : std_logic;
SIGNAL \O[10]~reg0_regout\ : std_logic;
SIGNAL \O[11]~reg0_regout\ : std_logic;
SIGNAL \O[12]~reg0_regout\ : std_logic;
SIGNAL \O[13]~reg0_regout\ : std_logic;
SIGNAL \O[14]~reg0_regout\ : std_logic;
SIGNAL \O[15]~reg0_regout\ : std_logic;
SIGNAL \I~combout\ : std_logic_vector(15 DOWNTO 0);

BEGIN

ww_R <= R;
ww_I <= I;
ww_C <= C;
ww_E <= E;
O <= ww_O;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

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

-- Location: PIN_36,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\I[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_I(0),
	combout => \I~combout\(0));

-- Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\R~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_R,
	combout => \R~combout\);

-- Location: PIN_77,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\E~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_E,
	combout => \E~combout\);

-- Location: LC_X6_Y4_N6
\O[0]~1\ : maxii_lcell
-- Equation(s):
-- \O[0]~1_combout\ = (((\E~combout\)) # (!\R~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff33",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \R~combout\,
	datad => \E~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \O[0]~1_combout\);

-- Location: LC_X5_Y1_N5
\O[0]~reg0\ : maxii_lcell
-- Equation(s):
-- \O[0]~reg0_regout\ = DFFEAS(((\I~combout\(0) & ((\R~combout\)))), GLOBAL(\C~combout\), VCC, , \O[0]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \C~combout\,
	datab => \I~combout\(0),
	datad => \R~combout\,
	aclr => GND,
	ena => \O[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \O[0]~reg0_regout\);

-- Location: PIN_90,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\I[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_I(1),
	combout => \I~combout\(1));

-- Location: LC_X6_Y4_N5
\O[1]~reg0\ : maxii_lcell
-- Equation(s):
-- \O[1]~reg0_regout\ = DFFEAS(((\I~combout\(1) & ((\R~combout\)))), GLOBAL(\C~combout\), VCC, , \O[0]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \C~combout\,
	datab => \I~combout\(1),
	datad => \R~combout\,
	aclr => GND,
	ena => \O[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \O[1]~reg0_regout\);

-- Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\I[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_I(2),
	combout => \I~combout\(2));

-- Location: LC_X6_Y4_N9
\O[2]~reg0\ : maxii_lcell
-- Equation(s):
-- \O[2]~reg0_regout\ = DFFEAS(((\I~combout\(2) & ((\R~combout\)))), GLOBAL(\C~combout\), VCC, , \O[0]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \C~combout\,
	datab => \I~combout\(2),
	datad => \R~combout\,
	aclr => GND,
	ena => \O[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \O[2]~reg0_regout\);

-- Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\I[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_I(3),
	combout => \I~combout\(3));

-- Location: LC_X5_Y1_N6
\O[3]~reg0\ : maxii_lcell
-- Equation(s):
-- \O[3]~reg0_regout\ = DFFEAS(((\R~combout\ & (\I~combout\(3)))), GLOBAL(\C~combout\), VCC, , \O[0]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0c0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \C~combout\,
	datab => \R~combout\,
	datac => \I~combout\(3),
	aclr => GND,
	ena => \O[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \O[3]~reg0_regout\);

-- Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\I[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_I(4),
	combout => \I~combout\(4));

-- Location: LC_X6_Y4_N0
\O[4]~reg0\ : maxii_lcell
-- Equation(s):
-- \O[4]~reg0_regout\ = DFFEAS(((\I~combout\(4) & ((\R~combout\)))), GLOBAL(\C~combout\), VCC, , \O[0]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \C~combout\,
	datab => \I~combout\(4),
	datad => \R~combout\,
	aclr => GND,
	ena => \O[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \O[4]~reg0_regout\);

-- Location: PIN_98,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\I[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_I(5),
	combout => \I~combout\(5));

-- Location: LC_X5_Y1_N9
\O[5]~reg0\ : maxii_lcell
-- Equation(s):
-- \O[5]~reg0_regout\ = DFFEAS(((\I~combout\(5) & ((\R~combout\)))), GLOBAL(\C~combout\), VCC, , \O[0]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \C~combout\,
	datab => \I~combout\(5),
	datad => \R~combout\,
	aclr => GND,
	ena => \O[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \O[5]~reg0_regout\);

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

-- Location: LC_X6_Y4_N3
\O[6]~reg0\ : maxii_lcell
-- Equation(s):
-- \O[6]~reg0_regout\ = DFFEAS((\I~combout\(6) & (((\R~combout\)))), GLOBAL(\C~combout\), VCC, , \O[0]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \C~combout\,
	dataa => \I~combout\(6),
	datad => \R~combout\,
	aclr => GND,
	ena => \O[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \O[6]~reg0_regout\);

-- Location: PIN_39,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\I[7]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_I(7),
	combout => \I~combout\(7));

-- Location: LC_X5_Y1_N7
\O[7]~reg0\ : maxii_lcell
-- Equation(s):
-- \O[7]~reg0_regout\ = DFFEAS((\I~combout\(7) & (((\R~combout\)))), GLOBAL(\C~combout\), VCC, , \O[0]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \C~combout\,
	dataa => \I~combout\(7),
	datad => \R~combout\,
	aclr => GND,
	ena => \O[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \O[7]~reg0_regout\);

-- Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\I[8]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_I(8),
	combout => \I~combout\(8));

-- Location: LC_X6_Y4_N8
\O[8]~reg0\ : maxii_lcell
-- Equation(s):
-- \O[8]~reg0_regout\ = DFFEAS((\I~combout\(8) & (((\R~combout\)))), GLOBAL(\C~combout\), VCC, , \O[0]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \C~combout\,
	dataa => \I~combout\(8),
	datad => \R~combout\,
	aclr => GND,
	ena => \O[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \O[8]~reg0_regout\);

-- Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\I[9]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_I(9),
	combout => \I~combout\(9));

-- Location: LC_X5_Y1_N4
\O[9]~reg0\ : maxii_lcell
-- Equation(s):
-- \O[9]~reg0_regout\ = DFFEAS((((\I~combout\(9) & \R~combout\))), GLOBAL(\C~combout\), VCC, , \O[0]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \C~combout\,
	datac => \I~combout\(9),
	datad => \R~combout\,
	aclr => GND,
	ena => \O[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \O[9]~reg0_regout\);

-- Location: PIN_72,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\I[10]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_I(10),
	combout => \I~combout\(10));

-- Location: LC_X6_Y4_N4
\O[10]~reg0\ : maxii_lcell
-- Equation(s):
-- \O[10]~reg0_regout\ = DFFEAS(((\R~combout\ & ((\I~combout\(10))))), GLOBAL(\C~combout\), VCC, , \O[0]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \C~combout\,
	datab => \R~combout\,
	datad => \I~combout\(10),
	aclr => GND,
	ena => \O[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \O[10]~reg0_regout\);

-- Location: PIN_84,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\I[11]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_I(11),
	combout => \I~combout\(11));

-- Location: LC_X6_Y4_N1
\O[11]~reg0\ : maxii_lcell
-- Equation(s):
-- \O[11]~reg0_regout\ = DFFEAS((\I~combout\(11) & (((\R~combout\)))), GLOBAL(\C~combout\), VCC, , \O[0]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \C~combout\,
	dataa => \I~combout\(11),
	datad => \R~combout\,
	aclr => GND,
	ena => \O[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \O[11]~reg0_regout\);

-- Location: PIN_83,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\I[12]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_I(12),
	combout => \I~combout\(12));

-- Location: LC_X6_Y4_N7
\O[12]~reg0\ : maxii_lcell
-- Equation(s):
-- \O[12]~reg0_regout\ = DFFEAS((((\I~combout\(12) & \R~combout\))), GLOBAL(\C~combout\), VCC, , \O[0]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \C~combout\,
	datac => \I~combout\(12),
	datad => \R~combout\,
	aclr => GND,
	ena => \O[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \O[12]~reg0_regout\);

-- Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\I[13]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_I(13),
	combout => \I~combout\(13));

-- Location: LC_X5_Y1_N8
\O[13]~reg0\ : maxii_lcell
-- Equation(s):
-- \O[13]~reg0_regout\ = DFFEAS(((\I~combout\(13) & ((\R~combout\)))), GLOBAL(\C~combout\), VCC, , \O[0]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \C~combout\,
	datab => \I~combout\(13),
	datad => \R~combout\,
	aclr => GND,
	ena => \O[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \O[13]~reg0_regout\);

-- Location: PIN_1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\I[14]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_I(14),
	combout => \I~combout\(14));

-- Location: LC_X6_Y4_N2
\O[14]~reg0\ : maxii_lcell
-- Equation(s):
-- \O[14]~reg0_regout\ = DFFEAS((((\I~combout\(14) & \R~combout\))), GLOBAL(\C~combout\), VCC, , \O[0]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \C~combout\,
	datac => \I~combout\(14),
	datad => \R~combout\,
	aclr => GND,
	ena => \O[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \O[14]~reg0_regout\);

-- Location: PIN_56,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\I[15]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_I(15),
	combout => \I~combout\(15));

-- Location: LC_X5_Y1_N2
\O[15]~reg0\ : maxii_lcell
-- Equation(s):
-- \O[15]~reg0_regout\ = DFFEAS(((\R~combout\ & ((\I~combout\(15))))), GLOBAL(\C~combout\), VCC, , \O[0]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \C~combout\,
	datab => \R~combout\,
	datad => \I~combout\(15),
	aclr => GND,
	ena => \O[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \O[15]~reg0_regout\);

-- Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\O[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \O[0]~reg0_regout\,
	oe => VCC,
	padio => ww_O(0));

-- Location: PIN_78,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\O[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \O[1]~reg0_regout\,
	oe => VCC,
	padio => ww_O(1));

-- Location: PIN_70,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\O[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \O[2]~reg0_regout\,
	oe => VCC,
	padio => ww_O(2));

-- Location: PIN_41,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\O[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \O[3]~reg0_regout\,
	oe => VCC,
	padio => ww_O(3));

-- Location: PIN_85,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\O[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \O[4]~reg0_regout\,
	oe => VCC,
	padio => ww_O(4));

-- Location: PIN_37,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\O[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \O[5]~reg0_regout\,
	oe => VCC,
	padio => ww_O(5));

-- Location: PIN_81,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\O[6]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \O[6]~reg0_regout\,
	oe => VCC,
	padio => ww_O(6));

-- Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\O[7]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \O[7]~reg0_regout\,
	oe => VCC,
	padio => ww_O(7));

-- Location: PIN_73,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\O[8]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \O[8]~reg0_regout\,
	oe => VCC,
	padio => ww_O(8));

-- Location: PIN_38,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\O[9]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \O[9]~reg0_regout\,
	oe => VCC,
	padio => ww_O(9));

-- Location: PIN_88,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\O[10]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \O[10]~reg0_regout\,
	oe => VCC,
	padio => ww_O(10));

-- Location: PIN_92,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\O[11]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \O[11]~reg0_regout\,
	oe => VCC,
	padio => ww_O(11));

-- Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\O[12]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \O[12]~reg0_regout\,
	oe => VCC,
	padio => ww_O(12));

-- Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\O[13]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \O[13]~reg0_regout\,
	oe => VCC,
	padio => ww_O(13));

-- Location: PIN_82,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\O[14]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \O[14]~reg0_regout\,
	oe => VCC,
	padio => ww_O(14));

-- Location: PIN_20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\O[15]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \O[15]~reg0_regout\,
	oe => VCC,
	padio => ww_O(15));
END structure;


