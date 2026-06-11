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

-- DATE "06/11/2026 11:14:34"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Processor IS
    PORT (
	keyData : IN std_logic_vector(15 DOWNTO 0);
	clock : IN std_logic;
	fromData : IN std_logic_vector(15 DOWNTO 0);
	instr : IN std_logic_vector(15 DOWNTO 0);
	clock2 : IN std_logic;
	printEnable : BUFFER std_logic;
	keyEnable : BUFFER std_logic;
	DataWriteFlag : BUFFER std_logic;
	dataAD : BUFFER std_logic_vector(15 DOWNTO 0);
	toData : BUFFER std_logic_vector(15 DOWNTO 0);
	printCode : BUFFER std_logic_vector(15 DOWNTO 0);
	printData : BUFFER std_logic_vector(15 DOWNTO 0);
	Result : BUFFER std_logic_vector(15 DOWNTO 0);
	regOUT : BUFFER std_logic_vector(143 DOWNTO 0);
	instructionAD : BUFFER std_logic_vector(15 DOWNTO 0)
	);
END Processor;

ARCHITECTURE structure OF Processor IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_keyData : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_clock : std_logic;
SIGNAL ww_fromData : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_instr : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_clock2 : std_logic;
SIGNAL ww_printEnable : std_logic;
SIGNAL ww_keyEnable : std_logic;
SIGNAL ww_DataWriteFlag : std_logic;
SIGNAL ww_dataAD : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_toData : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_printCode : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_printData : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_Result : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_regOUT : std_logic_vector(143 DOWNTO 0);
SIGNAL ww_instructionAD : std_logic_vector(15 DOWNTO 0);
SIGNAL \clock2~input_o\ : std_logic;
SIGNAL \printEnable~output_o\ : std_logic;
SIGNAL \keyEnable~output_o\ : std_logic;
SIGNAL \DataWriteFlag~output_o\ : std_logic;
SIGNAL \dataAD[0]~output_o\ : std_logic;
SIGNAL \dataAD[1]~output_o\ : std_logic;
SIGNAL \dataAD[2]~output_o\ : std_logic;
SIGNAL \dataAD[3]~output_o\ : std_logic;
SIGNAL \dataAD[4]~output_o\ : std_logic;
SIGNAL \dataAD[5]~output_o\ : std_logic;
SIGNAL \dataAD[6]~output_o\ : std_logic;
SIGNAL \dataAD[7]~output_o\ : std_logic;
SIGNAL \dataAD[8]~output_o\ : std_logic;
SIGNAL \dataAD[9]~output_o\ : std_logic;
SIGNAL \dataAD[10]~output_o\ : std_logic;
SIGNAL \dataAD[11]~output_o\ : std_logic;
SIGNAL \dataAD[12]~output_o\ : std_logic;
SIGNAL \dataAD[13]~output_o\ : std_logic;
SIGNAL \dataAD[14]~output_o\ : std_logic;
SIGNAL \dataAD[15]~output_o\ : std_logic;
SIGNAL \toData[0]~output_o\ : std_logic;
SIGNAL \toData[1]~output_o\ : std_logic;
SIGNAL \toData[2]~output_o\ : std_logic;
SIGNAL \toData[3]~output_o\ : std_logic;
SIGNAL \toData[4]~output_o\ : std_logic;
SIGNAL \toData[5]~output_o\ : std_logic;
SIGNAL \toData[6]~output_o\ : std_logic;
SIGNAL \toData[7]~output_o\ : std_logic;
SIGNAL \toData[8]~output_o\ : std_logic;
SIGNAL \toData[9]~output_o\ : std_logic;
SIGNAL \toData[10]~output_o\ : std_logic;
SIGNAL \toData[11]~output_o\ : std_logic;
SIGNAL \toData[12]~output_o\ : std_logic;
SIGNAL \toData[13]~output_o\ : std_logic;
SIGNAL \toData[14]~output_o\ : std_logic;
SIGNAL \toData[15]~output_o\ : std_logic;
SIGNAL \printCode[0]~output_o\ : std_logic;
SIGNAL \printCode[1]~output_o\ : std_logic;
SIGNAL \printCode[2]~output_o\ : std_logic;
SIGNAL \printCode[3]~output_o\ : std_logic;
SIGNAL \printCode[4]~output_o\ : std_logic;
SIGNAL \printCode[5]~output_o\ : std_logic;
SIGNAL \printCode[6]~output_o\ : std_logic;
SIGNAL \printCode[7]~output_o\ : std_logic;
SIGNAL \printCode[8]~output_o\ : std_logic;
SIGNAL \printCode[9]~output_o\ : std_logic;
SIGNAL \printCode[10]~output_o\ : std_logic;
SIGNAL \printCode[11]~output_o\ : std_logic;
SIGNAL \printCode[12]~output_o\ : std_logic;
SIGNAL \printCode[13]~output_o\ : std_logic;
SIGNAL \printCode[14]~output_o\ : std_logic;
SIGNAL \printCode[15]~output_o\ : std_logic;
SIGNAL \printData[0]~output_o\ : std_logic;
SIGNAL \printData[1]~output_o\ : std_logic;
SIGNAL \printData[2]~output_o\ : std_logic;
SIGNAL \printData[3]~output_o\ : std_logic;
SIGNAL \printData[4]~output_o\ : std_logic;
SIGNAL \printData[5]~output_o\ : std_logic;
SIGNAL \printData[6]~output_o\ : std_logic;
SIGNAL \printData[7]~output_o\ : std_logic;
SIGNAL \printData[8]~output_o\ : std_logic;
SIGNAL \printData[9]~output_o\ : std_logic;
SIGNAL \printData[10]~output_o\ : std_logic;
SIGNAL \printData[11]~output_o\ : std_logic;
SIGNAL \printData[12]~output_o\ : std_logic;
SIGNAL \printData[13]~output_o\ : std_logic;
SIGNAL \printData[14]~output_o\ : std_logic;
SIGNAL \printData[15]~output_o\ : std_logic;
SIGNAL \Result[0]~output_o\ : std_logic;
SIGNAL \Result[1]~output_o\ : std_logic;
SIGNAL \Result[2]~output_o\ : std_logic;
SIGNAL \Result[3]~output_o\ : std_logic;
SIGNAL \Result[4]~output_o\ : std_logic;
SIGNAL \Result[5]~output_o\ : std_logic;
SIGNAL \Result[6]~output_o\ : std_logic;
SIGNAL \Result[7]~output_o\ : std_logic;
SIGNAL \Result[8]~output_o\ : std_logic;
SIGNAL \Result[9]~output_o\ : std_logic;
SIGNAL \Result[10]~output_o\ : std_logic;
SIGNAL \Result[11]~output_o\ : std_logic;
SIGNAL \Result[12]~output_o\ : std_logic;
SIGNAL \Result[13]~output_o\ : std_logic;
SIGNAL \Result[14]~output_o\ : std_logic;
SIGNAL \Result[15]~output_o\ : std_logic;
SIGNAL \regOUT[0]~output_o\ : std_logic;
SIGNAL \regOUT[1]~output_o\ : std_logic;
SIGNAL \regOUT[2]~output_o\ : std_logic;
SIGNAL \regOUT[3]~output_o\ : std_logic;
SIGNAL \regOUT[4]~output_o\ : std_logic;
SIGNAL \regOUT[5]~output_o\ : std_logic;
SIGNAL \regOUT[6]~output_o\ : std_logic;
SIGNAL \regOUT[7]~output_o\ : std_logic;
SIGNAL \regOUT[8]~output_o\ : std_logic;
SIGNAL \regOUT[9]~output_o\ : std_logic;
SIGNAL \regOUT[10]~output_o\ : std_logic;
SIGNAL \regOUT[11]~output_o\ : std_logic;
SIGNAL \regOUT[12]~output_o\ : std_logic;
SIGNAL \regOUT[13]~output_o\ : std_logic;
SIGNAL \regOUT[14]~output_o\ : std_logic;
SIGNAL \regOUT[15]~output_o\ : std_logic;
SIGNAL \regOUT[16]~output_o\ : std_logic;
SIGNAL \regOUT[17]~output_o\ : std_logic;
SIGNAL \regOUT[18]~output_o\ : std_logic;
SIGNAL \regOUT[19]~output_o\ : std_logic;
SIGNAL \regOUT[20]~output_o\ : std_logic;
SIGNAL \regOUT[21]~output_o\ : std_logic;
SIGNAL \regOUT[22]~output_o\ : std_logic;
SIGNAL \regOUT[23]~output_o\ : std_logic;
SIGNAL \regOUT[24]~output_o\ : std_logic;
SIGNAL \regOUT[25]~output_o\ : std_logic;
SIGNAL \regOUT[26]~output_o\ : std_logic;
SIGNAL \regOUT[27]~output_o\ : std_logic;
SIGNAL \regOUT[28]~output_o\ : std_logic;
SIGNAL \regOUT[29]~output_o\ : std_logic;
SIGNAL \regOUT[30]~output_o\ : std_logic;
SIGNAL \regOUT[31]~output_o\ : std_logic;
SIGNAL \regOUT[32]~output_o\ : std_logic;
SIGNAL \regOUT[33]~output_o\ : std_logic;
SIGNAL \regOUT[34]~output_o\ : std_logic;
SIGNAL \regOUT[35]~output_o\ : std_logic;
SIGNAL \regOUT[36]~output_o\ : std_logic;
SIGNAL \regOUT[37]~output_o\ : std_logic;
SIGNAL \regOUT[38]~output_o\ : std_logic;
SIGNAL \regOUT[39]~output_o\ : std_logic;
SIGNAL \regOUT[40]~output_o\ : std_logic;
SIGNAL \regOUT[41]~output_o\ : std_logic;
SIGNAL \regOUT[42]~output_o\ : std_logic;
SIGNAL \regOUT[43]~output_o\ : std_logic;
SIGNAL \regOUT[44]~output_o\ : std_logic;
SIGNAL \regOUT[45]~output_o\ : std_logic;
SIGNAL \regOUT[46]~output_o\ : std_logic;
SIGNAL \regOUT[47]~output_o\ : std_logic;
SIGNAL \regOUT[48]~output_o\ : std_logic;
SIGNAL \regOUT[49]~output_o\ : std_logic;
SIGNAL \regOUT[50]~output_o\ : std_logic;
SIGNAL \regOUT[51]~output_o\ : std_logic;
SIGNAL \regOUT[52]~output_o\ : std_logic;
SIGNAL \regOUT[53]~output_o\ : std_logic;
SIGNAL \regOUT[54]~output_o\ : std_logic;
SIGNAL \regOUT[55]~output_o\ : std_logic;
SIGNAL \regOUT[56]~output_o\ : std_logic;
SIGNAL \regOUT[57]~output_o\ : std_logic;
SIGNAL \regOUT[58]~output_o\ : std_logic;
SIGNAL \regOUT[59]~output_o\ : std_logic;
SIGNAL \regOUT[60]~output_o\ : std_logic;
SIGNAL \regOUT[61]~output_o\ : std_logic;
SIGNAL \regOUT[62]~output_o\ : std_logic;
SIGNAL \regOUT[63]~output_o\ : std_logic;
SIGNAL \regOUT[64]~output_o\ : std_logic;
SIGNAL \regOUT[65]~output_o\ : std_logic;
SIGNAL \regOUT[66]~output_o\ : std_logic;
SIGNAL \regOUT[67]~output_o\ : std_logic;
SIGNAL \regOUT[68]~output_o\ : std_logic;
SIGNAL \regOUT[69]~output_o\ : std_logic;
SIGNAL \regOUT[70]~output_o\ : std_logic;
SIGNAL \regOUT[71]~output_o\ : std_logic;
SIGNAL \regOUT[72]~output_o\ : std_logic;
SIGNAL \regOUT[73]~output_o\ : std_logic;
SIGNAL \regOUT[74]~output_o\ : std_logic;
SIGNAL \regOUT[75]~output_o\ : std_logic;
SIGNAL \regOUT[76]~output_o\ : std_logic;
SIGNAL \regOUT[77]~output_o\ : std_logic;
SIGNAL \regOUT[78]~output_o\ : std_logic;
SIGNAL \regOUT[79]~output_o\ : std_logic;
SIGNAL \regOUT[80]~output_o\ : std_logic;
SIGNAL \regOUT[81]~output_o\ : std_logic;
SIGNAL \regOUT[82]~output_o\ : std_logic;
SIGNAL \regOUT[83]~output_o\ : std_logic;
SIGNAL \regOUT[84]~output_o\ : std_logic;
SIGNAL \regOUT[85]~output_o\ : std_logic;
SIGNAL \regOUT[86]~output_o\ : std_logic;
SIGNAL \regOUT[87]~output_o\ : std_logic;
SIGNAL \regOUT[88]~output_o\ : std_logic;
SIGNAL \regOUT[89]~output_o\ : std_logic;
SIGNAL \regOUT[90]~output_o\ : std_logic;
SIGNAL \regOUT[91]~output_o\ : std_logic;
SIGNAL \regOUT[92]~output_o\ : std_logic;
SIGNAL \regOUT[93]~output_o\ : std_logic;
SIGNAL \regOUT[94]~output_o\ : std_logic;
SIGNAL \regOUT[95]~output_o\ : std_logic;
SIGNAL \regOUT[96]~output_o\ : std_logic;
SIGNAL \regOUT[97]~output_o\ : std_logic;
SIGNAL \regOUT[98]~output_o\ : std_logic;
SIGNAL \regOUT[99]~output_o\ : std_logic;
SIGNAL \regOUT[100]~output_o\ : std_logic;
SIGNAL \regOUT[101]~output_o\ : std_logic;
SIGNAL \regOUT[102]~output_o\ : std_logic;
SIGNAL \regOUT[103]~output_o\ : std_logic;
SIGNAL \regOUT[104]~output_o\ : std_logic;
SIGNAL \regOUT[105]~output_o\ : std_logic;
SIGNAL \regOUT[106]~output_o\ : std_logic;
SIGNAL \regOUT[107]~output_o\ : std_logic;
SIGNAL \regOUT[108]~output_o\ : std_logic;
SIGNAL \regOUT[109]~output_o\ : std_logic;
SIGNAL \regOUT[110]~output_o\ : std_logic;
SIGNAL \regOUT[111]~output_o\ : std_logic;
SIGNAL \regOUT[112]~output_o\ : std_logic;
SIGNAL \regOUT[113]~output_o\ : std_logic;
SIGNAL \regOUT[114]~output_o\ : std_logic;
SIGNAL \regOUT[115]~output_o\ : std_logic;
SIGNAL \regOUT[116]~output_o\ : std_logic;
SIGNAL \regOUT[117]~output_o\ : std_logic;
SIGNAL \regOUT[118]~output_o\ : std_logic;
SIGNAL \regOUT[119]~output_o\ : std_logic;
SIGNAL \regOUT[120]~output_o\ : std_logic;
SIGNAL \regOUT[121]~output_o\ : std_logic;
SIGNAL \regOUT[122]~output_o\ : std_logic;
SIGNAL \regOUT[123]~output_o\ : std_logic;
SIGNAL \regOUT[124]~output_o\ : std_logic;
SIGNAL \regOUT[125]~output_o\ : std_logic;
SIGNAL \regOUT[126]~output_o\ : std_logic;
SIGNAL \regOUT[127]~output_o\ : std_logic;
SIGNAL \regOUT[128]~output_o\ : std_logic;
SIGNAL \regOUT[129]~output_o\ : std_logic;
SIGNAL \regOUT[130]~output_o\ : std_logic;
SIGNAL \regOUT[131]~output_o\ : std_logic;
SIGNAL \regOUT[132]~output_o\ : std_logic;
SIGNAL \regOUT[133]~output_o\ : std_logic;
SIGNAL \regOUT[134]~output_o\ : std_logic;
SIGNAL \regOUT[135]~output_o\ : std_logic;
SIGNAL \regOUT[136]~output_o\ : std_logic;
SIGNAL \regOUT[137]~output_o\ : std_logic;
SIGNAL \regOUT[138]~output_o\ : std_logic;
SIGNAL \regOUT[139]~output_o\ : std_logic;
SIGNAL \regOUT[140]~output_o\ : std_logic;
SIGNAL \regOUT[141]~output_o\ : std_logic;
SIGNAL \regOUT[142]~output_o\ : std_logic;
SIGNAL \regOUT[143]~output_o\ : std_logic;
SIGNAL \instructionAD[0]~output_o\ : std_logic;
SIGNAL \instructionAD[1]~output_o\ : std_logic;
SIGNAL \instructionAD[2]~output_o\ : std_logic;
SIGNAL \instructionAD[3]~output_o\ : std_logic;
SIGNAL \instructionAD[4]~output_o\ : std_logic;
SIGNAL \instructionAD[5]~output_o\ : std_logic;
SIGNAL \instructionAD[6]~output_o\ : std_logic;
SIGNAL \instructionAD[7]~output_o\ : std_logic;
SIGNAL \instructionAD[8]~output_o\ : std_logic;
SIGNAL \instructionAD[9]~output_o\ : std_logic;
SIGNAL \instructionAD[10]~output_o\ : std_logic;
SIGNAL \instructionAD[11]~output_o\ : std_logic;
SIGNAL \instructionAD[12]~output_o\ : std_logic;
SIGNAL \instructionAD[13]~output_o\ : std_logic;
SIGNAL \instructionAD[14]~output_o\ : std_logic;
SIGNAL \instructionAD[15]~output_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \instr[12]~input_o\ : std_logic;
SIGNAL \instr[13]~input_o\ : std_logic;
SIGNAL \instr[14]~input_o\ : std_logic;
SIGNAL \instr[15]~input_o\ : std_logic;
SIGNAL \IFIDREG|outInstruction[13]~0_combout\ : std_logic;
SIGNAL \IFIDREG|outInstruction[12]~2_combout\ : std_logic;
SIGNAL \IFIDREG|outInstruction[14]~3_combout\ : std_logic;
SIGNAL \IFIDREG|outInstruction[15]~4_combout\ : std_logic;
SIGNAL \Hazard|process_0~1_combout\ : std_logic;
SIGNAL \IFIDREG|outPC[15]~1_combout\ : std_logic;
SIGNAL \Controller|isWriteDig~0_combout\ : std_logic;
SIGNAL \IDEXREG|isPrintDigit_IDEX~q\ : std_logic;
SIGNAL \EXMEMREG|PrintDigit_EXMEM~q\ : std_logic;
SIGNAL \Controller|isReadDig~0_combout\ : std_logic;
SIGNAL \IDEXREG|isReadDigit_IDEX~q\ : std_logic;
SIGNAL \EXMEMREG|ReadDigit_EXMEM~q\ : std_logic;
SIGNAL \Controller|isStWord~0_combout\ : std_logic;
SIGNAL \IDEXREG|isSW_IDEX~q\ : std_logic;
SIGNAL \EXMEMREG|isSW_EXMEM~q\ : std_logic;
SIGNAL \instr[1]~input_o\ : std_logic;
SIGNAL \IFIDREG|outInstruction[1]~1_combout\ : std_logic;
SIGNAL \ALUController|Mux2~0_combout\ : std_logic;
SIGNAL \instr[0]~input_o\ : std_logic;
SIGNAL \IFIDREG|outInstruction[0]~5_combout\ : std_logic;
SIGNAL \ALUController|Mux3~0_combout\ : std_logic;
SIGNAL \instr[2]~input_o\ : std_logic;
SIGNAL \IFIDREG|outInstruction[2]~6_combout\ : std_logic;
SIGNAL \ALUController|Mux1~0_combout\ : std_logic;
SIGNAL \Controller|isRType~0_combout\ : std_logic;
SIGNAL \Controller|isMFPC~0_combout\ : std_logic;
SIGNAL \IDEXREG|isMFPC_IDEX~q\ : std_logic;
SIGNAL \IDEXREG|isR_IDEX~q\ : std_logic;
SIGNAL \ALUInput1Mux|v3|v2|Q~0_combout\ : std_logic;
SIGNAL \instr[9]~input_o\ : std_logic;
SIGNAL \IFIDREG|outInstruction[9]~7_combout\ : std_logic;
SIGNAL \instr[10]~input_o\ : std_logic;
SIGNAL \IFIDREG|outInstruction[10]~8_combout\ : std_logic;
SIGNAL \instr[11]~input_o\ : std_logic;
SIGNAL \IFIDREG|outInstruction[11]~9_combout\ : std_logic;
SIGNAL \Controller|isLdWord~0_combout\ : std_logic;
SIGNAL \IDEXREG|isLW_IDEX~q\ : std_logic;
SIGNAL \instr[3]~input_o\ : std_logic;
SIGNAL \IFIDREG|outInstruction[3]~13_combout\ : std_logic;
SIGNAL \writeReg_dest_sig[0]~0_combout\ : std_logic;
SIGNAL \instr[4]~input_o\ : std_logic;
SIGNAL \IFIDREG|outInstruction[4]~14_combout\ : std_logic;
SIGNAL \writeReg_dest_sig[1]~1_combout\ : std_logic;
SIGNAL \instr[5]~input_o\ : std_logic;
SIGNAL \IFIDREG|outInstruction[5]~15_combout\ : std_logic;
SIGNAL \writeReg_dest_sig[2]~2_combout\ : std_logic;
SIGNAL \ALUInput1Mux|v3|v2|Q~2_combout\ : std_logic;
SIGNAL \ALUInput1Mux|v3|v2|Q~1_combout\ : std_logic;
SIGNAL \ALUInput1Mux|v3|v2|Q~3_combout\ : std_logic;
SIGNAL \fromData[0]~input_o\ : std_logic;
SIGNAL \EXMEMREG|isLW_EXMEM~q\ : std_logic;
SIGNAL \MEMWB_inputData_sig[0]~0_combout\ : std_logic;
SIGNAL \keyData[0]~input_o\ : std_logic;
SIGNAL \RegisterFile|v0|v12|Q~0_combout\ : std_logic;
SIGNAL \RegisterFile|reg4|gen_register:0:vff|O~q\ : std_logic;
SIGNAL \RegisterFile|v0|v14|Q~0_combout\ : std_logic;
SIGNAL \RegisterFile|reg5|gen_register:0:vff|O~q\ : std_logic;
SIGNAL \RegisterFile|v0|v16|Q~0_combout\ : std_logic;
SIGNAL \RegisterFile|reg6|gen_register:0:vff|O~q\ : std_logic;
SIGNAL \RegisterFile|v0|v18|Q~0_combout\ : std_logic;
SIGNAL \RegisterFile|reg7|gen_register:0:vff|O~q\ : std_logic;
SIGNAL \RegisterFile|read_mux1|v6|v3|v0|Q~0_combout\ : std_logic;
SIGNAL \RegisterFile|v0|v10|Q~0_combout\ : std_logic;
SIGNAL \RegisterFile|reg3|gen_register:0:vff|O~q\ : std_logic;
SIGNAL \RegisterFile|v0|v8|Q~0_combout\ : std_logic;
SIGNAL \RegisterFile|reg2|gen_register:0:vff|O~q\ : std_logic;
SIGNAL \RegisterFile|v0|v6|Q~combout\ : std_logic;
SIGNAL \RegisterFile|reg1|gen_register:0:vff|O~q\ : std_logic;
SIGNAL \RegisterFile|read_mux1|v6|v3|v0|Q~1_combout\ : std_logic;
SIGNAL \ALUInput1Mux|v3|v0|Q~1_combout\ : std_logic;
SIGNAL \Controller|isJType~0_combout\ : std_logic;
SIGNAL \Trap|Equal0~0_combout\ : std_logic;
SIGNAL \PC|gen_register:0:vff|O~q\ : std_logic;
SIGNAL \IFIDREG|outPC[0]~0_combout\ : std_logic;
SIGNAL \ALUInput1Mux|v3|v0|Q~0_combout\ : std_logic;
SIGNAL \ALUInput1Mux|v3|v0|Q~4_combout\ : std_logic;
SIGNAL \Controller|isBranch~0_combout\ : std_logic;
SIGNAL \IDEXREG|isBranch_IDEX~q\ : std_logic;
SIGNAL \ALUInput2Mux|v3|v12|Q~0_combout\ : std_logic;
SIGNAL \instr[6]~input_o\ : std_logic;
SIGNAL \IFIDREG|outInstruction[6]~10_combout\ : std_logic;
SIGNAL \instr[7]~input_o\ : std_logic;
SIGNAL \IFIDREG|outInstruction[7]~11_combout\ : std_logic;
SIGNAL \instr[8]~input_o\ : std_logic;
SIGNAL \IFIDREG|outInstruction[8]~12_combout\ : std_logic;
SIGNAL \ALUInput2Mux|v3|v12|Q~1_combout\ : std_logic;
SIGNAL \ForwardUnit|Equal2~0_combout\ : std_logic;
SIGNAL \ALUInput2Mux|v3|v12|Q~2_combout\ : std_logic;
SIGNAL \ALUInput2Mux|v3|v12|Q~3_combout\ : std_logic;
SIGNAL \RegisterFile|read_mux2|v6|v3|v0|Q~0_combout\ : std_logic;
SIGNAL \RegisterFile|read_mux2|v6|v3|v0|Q~1_combout\ : std_logic;
SIGNAL \ALUInput2Mux|v3|v0|Q~0_combout\ : std_logic;
SIGNAL \ALUInput2Mux|v3|v0|Q~1_combout\ : std_logic;
SIGNAL \ALU16|V21|v1|v0|Q~0_combout\ : std_logic;
SIGNAL \fromData[1]~input_o\ : std_logic;
SIGNAL \MEMWB_inputData_sig[1]~1_combout\ : std_logic;
SIGNAL \keyData[1]~input_o\ : std_logic;
SIGNAL \RegisterFile|reg4|gen_register:1:vff|O~q\ : std_logic;
SIGNAL \RegisterFile|reg5|gen_register:1:vff|O~q\ : std_logic;
SIGNAL \RegisterFile|reg6|gen_register:1:vff|O~q\ : std_logic;
SIGNAL \RegisterFile|reg7|gen_register:1:vff|O~q\ : std_logic;
SIGNAL \RegisterFile|read_mux2|v6|v3|v1|Q~0_combout\ : std_logic;
SIGNAL \RegisterFile|reg3|gen_register:1:vff|O~q\ : std_logic;
SIGNAL \RegisterFile|reg2|gen_register:1:vff|O~q\ : std_logic;
SIGNAL \RegisterFile|reg1|gen_register:1:vff|O~q\ : std_logic;
SIGNAL \RegisterFile|read_mux2|v6|v3|v1|Q~1_combout\ : std_logic;
SIGNAL \ALUInput2Mux|v3|v1|Q~0_combout\ : std_logic;
SIGNAL \ALUInput2Mux|v3|v1|Q~1_combout\ : std_logic;
SIGNAL \PC|gen_register:1:vff|O~q\ : std_logic;
SIGNAL \IFIDREG|Add0~1_sumout\ : std_logic;
SIGNAL \IFIDREG|outPC[1]~2_combout\ : std_logic;
SIGNAL \RegisterFile|read_mux1|v6|v3|v1|Q~0_combout\ : std_logic;
SIGNAL \RegisterFile|read_mux1|v6|v3|v1|Q~1_combout\ : std_logic;
SIGNAL \ALUInput1Mux|v3|v1|Q~2_combout\ : std_logic;
SIGNAL \ALUInput1Mux|v3|v1|Q~0_combout\ : std_logic;
SIGNAL \ALU16|V0|v12|Q~0_combout\ : std_logic;
SIGNAL \ALU16|V0|v12|Q~1_combout\ : std_logic;
SIGNAL \ALU16|V21|v1|v1|Q~combout\ : std_logic;
SIGNAL \ALUInput2Mux|v3|v2|Q~0_combout\ : std_logic;
SIGNAL \fromData[2]~input_o\ : std_logic;
SIGNAL \MEMWB_inputData_sig[2]~2_combout\ : std_logic;
SIGNAL \keyData[2]~input_o\ : std_logic;
SIGNAL \RegisterFile|reg4|gen_register:2:vff|O~q\ : std_logic;
SIGNAL \RegisterFile|reg5|gen_register:2:vff|O~q\ : std_logic;
SIGNAL \RegisterFile|reg6|gen_register:2:vff|O~q\ : std_logic;
SIGNAL \RegisterFile|reg7|gen_register:2:vff|O~q\ : std_logic;
SIGNAL \RegisterFile|read_mux2|v6|v3|v2|Q~0_combout\ : std_logic;
SIGNAL \RegisterFile|reg3|gen_register:2:vff|O~q\ : std_logic;
SIGNAL \RegisterFile|reg2|gen_register:2:vff|O~q\ : std_logic;
SIGNAL \RegisterFile|reg1|gen_register:2:vff|O~q\ : std_logic;
SIGNAL \RegisterFile|read_mux2|v6|v3|v2|Q~1_combout\ : std_logic;
SIGNAL \ALUInput2Mux|v3|v2|Q~1_combout\ : std_logic;
SIGNAL \ALUInput2Mux|v3|v2|Q~2_combout\ : std_logic;
SIGNAL \PC|gen_register:2:vff|O~q\ : std_logic;
SIGNAL \IFIDREG|Add0~2\ : std_logic;
SIGNAL \IFIDREG|Add0~5_sumout\ : std_logic;
SIGNAL \IFIDREG|outPC[2]~3_combout\ : std_logic;
SIGNAL \ALUInput1Mux|v3|v2|Q~4_combout\ : std_logic;
SIGNAL \RegisterFile|read_mux1|v6|v3|v2|Q~0_combout\ : std_logic;
SIGNAL \RegisterFile|read_mux1|v6|v3|v2|Q~1_combout\ : std_logic;
SIGNAL \ALUInput1Mux|v3|v2|Q~5_combout\ : std_logic;
SIGNAL \ALUInput1Mux|v3|v2|Q~6_combout\ : std_logic;
SIGNAL \ALU16|V1|v12|Q~0_combout\ : std_logic;
SIGNAL \ALU16|V21|v1|v2|Q~combout\ : std_logic;
SIGNAL \fromData[3]~input_o\ : std_logic;
SIGNAL \MEMWB_inputData_sig[3]~3_combout\ : std_logic;
SIGNAL \keyData[3]~input_o\ : std_logic;
SIGNAL \RegisterFile|reg4|gen_register:3:vff|O~q\ : std_logic;
SIGNAL \RegisterFile|reg5|gen_register:3:vff|O~q\ : std_logic;
SIGNAL \RegisterFile|reg6|gen_register:3:vff|O~q\ : std_logic;
SIGNAL \RegisterFile|reg7|gen_register:3:vff|O~q\ : std_logic;
SIGNAL \RegisterFile|read_mux2|v6|v3|v3|Q~0_combout\ : std_logic;
SIGNAL \RegisterFile|reg3|gen_register:3:vff|O~q\ : std_logic;
SIGNAL \RegisterFile|reg2|gen_register:3:vff|O~q\ : std_logic;
SIGNAL \RegisterFile|reg1|gen_register:3:vff|O~q\ : std_logic;
SIGNAL \RegisterFile|read_mux2|v6|v3|v3|Q~1_combout\ : std_logic;
SIGNAL \ALUInput2Mux|v3|v3|Q~0_combout\ : std_logic;
SIGNAL \ALUInput2Mux|v3|v3|Q~1_combout\ : std_logic;
SIGNAL \ALUInput2Mux|v3|v3|Q~2_combout\ : std_logic;
SIGNAL \RegisterFile|read_mux1|v6|v3|v3|Q~0_combout\ : std_logic;
SIGNAL \RegisterFile|read_mux1|v6|v3|v3|Q~1_combout\ : std_logic;
SIGNAL \ALUInput1Mux|v3|v3|Q~0_combout\ : std_logic;
SIGNAL \PC|gen_register:3:vff|O~q\ : std_logic;
SIGNAL \IFIDREG|Add0~6\ : std_logic;
SIGNAL \IFIDREG|Add0~9_sumout\ : std_logic;
SIGNAL \IFIDREG|outPC[3]~4_combout\ : std_logic;
SIGNAL \ALUInput1Mux|v3|v3|Q~1_combout\ : std_logic;
SIGNAL \ALUInput1Mux|v3|v3|Q~2_combout\ : std_logic;
SIGNAL \ALU16|V2|v12|Q~0_combout\ : std_logic;
SIGNAL \ALU16|V2|v12|Q~3_combout\ : std_logic;
SIGNAL \ALU16|V2|v12|Q~1_combout\ : std_logic;
SIGNAL \ALU16|V2|v12|Q~2_combout\ : std_logic;
SIGNAL \ALU16|V21|v1|v3|Q~combout\ : std_logic;
SIGNAL \fromData[4]~input_o\ : std_logic;
SIGNAL \MEMWB_inputData_sig[4]~4_combout\ : std_logic;
SIGNAL \keyData[4]~input_o\ : std_logic;
SIGNAL \RegisterFile|reg4|gen_register:4:vff|O~q\ : std_logic;
SIGNAL \RegisterFile|reg5|gen_register:4:vff|O~q\ : std_logic;
SIGNAL \RegisterFile|reg6|gen_register:4:vff|O~q\ : std_logic;
SIGNAL \RegisterFile|reg7|gen_register:4:vff|O~q\ : std_logic;
SIGNAL \RegisterFile|read_mux2|v6|v3|v4|Q~0_combout\ : std_logic;
SIGNAL \RegisterFile|reg3|gen_register:4:vff|O~q\ : std_logic;
SIGNAL \RegisterFile|reg2|gen_register:4:vff|O~q\ : std_logic;
SIGNAL \RegisterFile|reg1|gen_register:4:vff|O~q\ : std_logic;
SIGNAL \RegisterFile|read_mux2|v6|v3|v4|Q~1_combout\ : std_logic;
SIGNAL \ALUInput2Mux|v3|v4|Q~0_combout\ : std_logic;
SIGNAL \ALUInput2Mux|v3|v4|Q~1_combout\ : std_logic;
SIGNAL \ALUInput2Mux|v3|v4|Q~2_combout\ : std_logic;
SIGNAL \RegisterFile|read_mux1|v6|v3|v4|Q~0_combout\ : std_logic;
SIGNAL \RegisterFile|read_mux1|v6|v3|v4|Q~1_combout\ : std_logic;
SIGNAL \ALUInput1Mux|v3|v4|Q~0_combout\ : std_logic;
SIGNAL \PC|gen_register:4:vff|O~q\ : std_logic;
SIGNAL \IFIDREG|Add0~10\ : std_logic;
SIGNAL \IFIDREG|Add0~13_sumout\ : std_logic;
SIGNAL \IFIDREG|outPC[4]~5_combout\ : std_logic;
SIGNAL \ALUInput1Mux|v3|v4|Q~1_combout\ : std_logic;
SIGNAL \ALUInput1Mux|v3|v4|Q~2_combout\ : std_logic;
SIGNAL \ALUInput1Mux|v3|v1|Q~1_combout\ : std_logic;
SIGNAL \ALUInput2Mux|v3|v1|Q~2_combout\ : std_logic;
SIGNAL \ALU16|V1|v12|Q~4_combout\ : std_logic;
SIGNAL \ALU16|V1|v12|Q~1_combout\ : std_logic;
SIGNAL \ALUInput1Mux|v3|v0|Q~2_combout\ : std_logic;
SIGNAL \ALUInput1Mux|v3|v0|Q~3_combout\ : std_logic;
SIGNAL \ALUInput2Mux|v3|v0|Q~2_combout\ : std_logic;
SIGNAL \ALU16|V1|v12|Q~2_combout\ : std_logic;
SIGNAL \ALU16|V1|v12|Q~5_combout\ : std_logic;
SIGNAL \ALU16|V1|v12|Q~3_combout\ : std_logic;
SIGNAL \ALU16|V3|v12|Q~0_combout\ : std_logic;
SIGNAL \ALU16|V3|v12|Q~1_combout\ : std_logic;
SIGNAL \ALU16|V3|v12|Q~2_combout\ : std_logic;
SIGNAL \ALU16|V3|v12|Q~3_combout\ : std_logic;
SIGNAL \ALU16|V21|v1|v4|Q~combout\ : std_logic;
SIGNAL \ALUInput2Mux|v3|v5|Q~0_combout\ : std_logic;
SIGNAL \fromData[5]~input_o\ : std_logic;
SIGNAL \MEMWB_inputData_sig[5]~5_combout\ : std_logic;
SIGNAL \keyData[5]~input_o\ : std_logic;
SIGNAL \RegisterFile|reg4|gen_register:5:vff|O~q\ : std_logic;
SIGNAL \RegisterFile|reg5|gen_register:5:vff|O~q\ : std_logic;
SIGNAL \RegisterFile|reg6|gen_register:5:vff|O~q\ : std_logic;
SIGNAL \RegisterFile|reg7|gen_register:5:vff|O~q\ : std_logic;
SIGNAL \RegisterFile|read_mux2|v6|v3|v5|Q~0_combout\ : std_logic;
SIGNAL \RegisterFile|reg3|gen_register:5:vff|O~q\ : std_logic;
SIGNAL \RegisterFile|reg2|gen_register:5:vff|O~q\ : std_logic;
SIGNAL \RegisterFile|reg1|gen_register:5:vff|O~q\ : std_logic;
SIGNAL \RegisterFile|read_mux2|v6|v3|v5|Q~1_combout\ : std_logic;
SIGNAL \ALUInput2Mux|v3|v5|Q~1_combout\ : std_logic;
SIGNAL \ALUInput2Mux|v3|v5|Q~2_combout\ : std_logic;
SIGNAL \PC|gen_register:5:vff|O~q\ : std_logic;
SIGNAL \IFIDREG|Add0~14\ : std_logic;
SIGNAL \IFIDREG|Add0~17_sumout\ : std_logic;
SIGNAL \IFIDREG|outPC[5]~6_combout\ : std_logic;
SIGNAL \ALUInput1Mux|v3|v5|Q~0_combout\ : std_logic;
SIGNAL \ALUInput1Mux|v3|v2|Q~7_combout\ : std_logic;
SIGNAL \RegisterFile|read_mux1|v6|v3|v5|Q~0_combout\ : std_logic;
SIGNAL \RegisterFile|read_mux1|v6|v3|v5|Q~1_combout\ : std_logic;
SIGNAL \ALUInput1Mux|v3|v5|Q~1_combout\ : std_logic;
SIGNAL \ALUInput1Mux|v3|v5|Q~2_combout\ : std_logic;
SIGNAL \ALU16|V4|v12|Q~4_combout\ : std_logic;
SIGNAL \ALU16|V4|v12|Q~5_combout\ : std_logic;
SIGNAL \ALU16|V4|v12|Q~0_combout\ : std_logic;
SIGNAL \ALU16|V4|v12|Q~1_combout\ : std_logic;
SIGNAL \ALU16|V4|v12|Q~2_combout\ : std_logic;
SIGNAL \ALU16|V4|v12|Q~3_combout\ : std_logic;
SIGNAL \ALU16|V21|v1|v5|Q~combout\ : std_logic;
SIGNAL \PC|gen_register:6:vff|O~q\ : std_logic;
SIGNAL \IFIDREG|Add0~18\ : std_logic;
SIGNAL \IFIDREG|Add0~21_sumout\ : std_logic;
SIGNAL \IFIDREG|outPC[6]~7_combout\ : std_logic;
SIGNAL \ALUInput1Mux|v3|v6|Q~0_combout\ : std_logic;
SIGNAL \fromData[6]~input_o\ : std_logic;
SIGNAL \MEMWB_inputData_sig[6]~6_combout\ : std_logic;
SIGNAL \keyData[6]~input_o\ : std_logic;
SIGNAL \RegisterFile|reg4|gen_register:6:vff|O~q\ : std_logic;
SIGNAL \RegisterFile|reg5|gen_register:6:vff|O~q\ : std_logic;
SIGNAL \RegisterFile|reg6|gen_register:6:vff|O~q\ : std_logic;
SIGNAL \RegisterFile|reg7|gen_register:6:vff|O~q\ : std_logic;
SIGNAL \RegisterFile|read_mux1|v6|v3|v6|Q~0_combout\ : std_logic;
SIGNAL \RegisterFile|reg3|gen_register:6:vff|O~q\ : std_logic;
SIGNAL \RegisterFile|reg2|gen_register:6:vff|O~q\ : std_logic;
SIGNAL \RegisterFile|reg1|gen_register:6:vff|O~q\ : std_logic;
SIGNAL \RegisterFile|read_mux1|v6|v3|v6|Q~1_combout\ : std_logic;
SIGNAL \ALUInput1Mux|v3|v6|Q~1_combout\ : std_logic;
SIGNAL \ALUInput1Mux|v3|v6|Q~2_combout\ : std_logic;
SIGNAL \RegisterFile|read_mux2|v6|v3|v6|Q~0_combout\ : std_logic;
SIGNAL \RegisterFile|read_mux2|v6|v3|v6|Q~1_combout\ : std_logic;
SIGNAL \ALUInput2Mux|v3|v6|Q~0_combout\ : std_logic;
SIGNAL \ALUInput2Mux|v3|v6|Q~1_combout\ : std_logic;
SIGNAL \ALU16|V5|v12|Q~0_combout\ : std_logic;
SIGNAL \ALU16|V5|v12|Q~1_combout\ : std_logic;
SIGNAL \ALU16|V5|v12|Q~2_combout\ : std_logic;
SIGNAL \ALU16|V21|v1|v6|Q~combout\ : std_logic;
SIGNAL \PC|gen_register:7:vff|O~q\ : std_logic;
SIGNAL \IFIDREG|Add0~22\ : std_logic;
SIGNAL \IFIDREG|Add0~25_sumout\ : std_logic;
SIGNAL \IFIDREG|outPC[7]~8_combout\ : std_logic;
SIGNAL \ALUInput1Mux|v3|v7|Q~0_combout\ : std_logic;
SIGNAL \fromData[7]~input_o\ : std_logic;
SIGNAL \MEMWB_inputData_sig[7]~7_combout\ : std_logic;
SIGNAL \keyData[7]~input_o\ : std_logic;
SIGNAL \RegisterFile|reg4|gen_register:7:vff|O~q\ : std_logic;
SIGNAL \RegisterFile|reg5|gen_register:7:vff|O~q\ : std_logic;
SIGNAL \RegisterFile|reg6|gen_register:7:vff|O~q\ : std_logic;
SIGNAL \RegisterFile|reg7|gen_register:7:vff|O~q\ : std_logic;
SIGNAL \RegisterFile|read_mux1|v6|v3|v7|Q~0_combout\ : std_logic;
SIGNAL \RegisterFile|reg3|gen_register:7:vff|O~q\ : std_logic;
SIGNAL \RegisterFile|reg2|gen_register:7:vff|O~q\ : std_logic;
SIGNAL \RegisterFile|reg1|gen_register:7:vff|O~q\ : std_logic;
SIGNAL \RegisterFile|read_mux1|v6|v3|v7|Q~1_combout\ : std_logic;
SIGNAL \ALUInput1Mux|v3|v7|Q~1_combout\ : std_logic;
SIGNAL \ALUInput1Mux|v3|v7|Q~2_combout\ : std_logic;
SIGNAL \RegisterFile|read_mux2|v6|v3|v7|Q~0_combout\ : std_logic;
SIGNAL \RegisterFile|read_mux2|v6|v3|v7|Q~1_combout\ : std_logic;
SIGNAL \ALUInput2Mux|v3|v7|Q~0_combout\ : std_logic;
SIGNAL \ALUInput2Mux|v3|v7|Q~1_combout\ : std_logic;
SIGNAL \ALU16|V6|v12|Q~0_combout\ : std_logic;
SIGNAL \ALU16|V6|v12|Q~1_combout\ : std_logic;
SIGNAL \ALU16|V6|v12|Q~2_combout\ : std_logic;
SIGNAL \ALU16|V21|v1|v7|Q~combout\ : std_logic;
SIGNAL \PC|gen_register:8:vff|O~q\ : std_logic;
SIGNAL \IFIDREG|Add0~26\ : std_logic;
SIGNAL \IFIDREG|Add0~29_sumout\ : std_logic;
SIGNAL \IFIDREG|outPC[8]~9_combout\ : std_logic;
SIGNAL \fromData[8]~input_o\ : std_logic;
SIGNAL \MEMWB_inputData_sig[8]~8_combout\ : std_logic;
SIGNAL \keyData[8]~input_o\ : std_logic;
SIGNAL \RegisterFile|reg4|gen_register:8:vff|O~q\ : std_logic;
SIGNAL \RegisterFile|reg5|gen_register:8:vff|O~q\ : std_logic;
SIGNAL \RegisterFile|reg6|gen_register:8:vff|O~q\ : std_logic;
SIGNAL \RegisterFile|reg7|gen_register:8:vff|O~q\ : std_logic;
SIGNAL \RegisterFile|read_mux1|v6|v3|v8|Q~0_combout\ : std_logic;
SIGNAL \RegisterFile|reg3|gen_register:8:vff|O~q\ : std_logic;
SIGNAL \RegisterFile|reg2|gen_register:8:vff|O~q\ : std_logic;
SIGNAL \RegisterFile|reg1|gen_register:8:vff|O~q\ : std_logic;
SIGNAL \RegisterFile|read_mux1|v6|v3|v8|Q~1_combout\ : std_logic;
SIGNAL \ALUInput1Mux|v3|v8|Q~0_combout\ : std_logic;
SIGNAL \ALUInput1Mux|v3|v8|Q~1_combout\ : std_logic;
SIGNAL \RegisterFile|read_mux2|v6|v3|v8|Q~0_combout\ : std_logic;
SIGNAL \RegisterFile|read_mux2|v6|v3|v8|Q~1_combout\ : std_logic;
SIGNAL \ALUInput2Mux|v3|v8|Q~0_combout\ : std_logic;
SIGNAL \ALUInput2Mux|v3|v8|Q~1_combout\ : std_logic;
SIGNAL \ALU16|V7|v12|Q~0_combout\ : std_logic;
SIGNAL \ALU16|V7|v12|Q~1_combout\ : std_logic;
SIGNAL \ALU16|V7|v12|Q~2_combout\ : std_logic;
SIGNAL \ALU16|V21|v1|v8|Q~combout\ : std_logic;
SIGNAL \PC|gen_register:9:vff|O~q\ : std_logic;
SIGNAL \IFIDREG|Add0~30\ : std_logic;
SIGNAL \IFIDREG|Add0~33_sumout\ : std_logic;
SIGNAL \IFIDREG|outPC[9]~10_combout\ : std_logic;
SIGNAL \ALUInput1Mux|v3|v9|Q~0_combout\ : std_logic;
SIGNAL \fromData[9]~input_o\ : std_logic;
SIGNAL \MEMWB_inputData_sig[9]~9_combout\ : std_logic;
SIGNAL \keyData[9]~input_o\ : std_logic;
SIGNAL \RegisterFile|reg4|gen_register:9:vff|O~q\ : std_logic;
SIGNAL \RegisterFile|reg5|gen_register:9:vff|O~q\ : std_logic;
SIGNAL \RegisterFile|reg6|gen_register:9:vff|O~q\ : std_logic;
SIGNAL \RegisterFile|reg7|gen_register:9:vff|O~q\ : std_logic;
SIGNAL \RegisterFile|read_mux1|v6|v3|v9|Q~0_combout\ : std_logic;
SIGNAL \RegisterFile|reg3|gen_register:9:vff|O~q\ : std_logic;
SIGNAL \RegisterFile|reg2|gen_register:9:vff|O~q\ : std_logic;
SIGNAL \RegisterFile|reg1|gen_register:9:vff|O~q\ : std_logic;
SIGNAL \RegisterFile|read_mux1|v6|v3|v9|Q~1_combout\ : std_logic;
SIGNAL \ALUInput1Mux|v3|v9|Q~1_combout\ : std_logic;
SIGNAL \ALUInput1Mux|v3|v9|Q~2_combout\ : std_logic;
SIGNAL \RegisterFile|read_mux2|v6|v3|v9|Q~0_combout\ : std_logic;
SIGNAL \RegisterFile|read_mux2|v6|v3|v9|Q~1_combout\ : std_logic;
SIGNAL \ALUInput2Mux|v3|v9|Q~0_combout\ : std_logic;
SIGNAL \ALUInput2Mux|v3|v9|Q~1_combout\ : std_logic;
SIGNAL \ALU16|V8|v12|Q~0_combout\ : std_logic;
SIGNAL \ALU16|V8|v12|Q~1_combout\ : std_logic;
SIGNAL \ALU16|V8|v12|Q~2_combout\ : std_logic;
SIGNAL \ALU16|V21|v1|v9|Q~combout\ : std_logic;
SIGNAL \PC|gen_register:10:vff|O~q\ : std_logic;
SIGNAL \IFIDREG|Add0~34\ : std_logic;
SIGNAL \IFIDREG|Add0~37_sumout\ : std_logic;
SIGNAL \IFIDREG|outPC[10]~11_combout\ : std_logic;
SIGNAL \fromData[10]~input_o\ : std_logic;
SIGNAL \MEMWB_inputData_sig[10]~10_combout\ : std_logic;
SIGNAL \keyData[10]~input_o\ : std_logic;
SIGNAL \RegisterFile|reg4|gen_register:10:vff|O~q\ : std_logic;
SIGNAL \RegisterFile|reg5|gen_register:10:vff|O~q\ : std_logic;
SIGNAL \RegisterFile|reg6|gen_register:10:vff|O~q\ : std_logic;
SIGNAL \RegisterFile|reg7|gen_register:10:vff|O~q\ : std_logic;
SIGNAL \RegisterFile|read_mux1|v6|v3|v10|Q~0_combout\ : std_logic;
SIGNAL \RegisterFile|reg3|gen_register:10:vff|O~q\ : std_logic;
SIGNAL \RegisterFile|reg2|gen_register:10:vff|O~q\ : std_logic;
SIGNAL \RegisterFile|reg1|gen_register:10:vff|O~q\ : std_logic;
SIGNAL \RegisterFile|read_mux1|v6|v3|v10|Q~1_combout\ : std_logic;
SIGNAL \ALUInput1Mux|v3|v10|Q~0_combout\ : std_logic;
SIGNAL \ALUInput1Mux|v3|v10|Q~1_combout\ : std_logic;
SIGNAL \RegisterFile|read_mux2|v6|v3|v10|Q~0_combout\ : std_logic;
SIGNAL \RegisterFile|read_mux2|v6|v3|v10|Q~1_combout\ : std_logic;
SIGNAL \ALUInput2Mux|v3|v10|Q~0_combout\ : std_logic;
SIGNAL \ALUInput2Mux|v3|v10|Q~1_combout\ : std_logic;
SIGNAL \ALU16|V8|v12|Q~3_combout\ : std_logic;
SIGNAL \ALU16|V9|v12|Q~0_combout\ : std_logic;
SIGNAL \ALU16|V9|v12|Q~1_combout\ : std_logic;
SIGNAL \ALU16|V9|v12|Q~2_combout\ : std_logic;
SIGNAL \ALU16|V21|v1|v10|Q~combout\ : std_logic;
SIGNAL \PC|gen_register:11:vff|O~q\ : std_logic;
SIGNAL \IFIDREG|Add0~38\ : std_logic;
SIGNAL \IFIDREG|Add0~41_sumout\ : std_logic;
SIGNAL \IFIDREG|outPC[11]~12_combout\ : std_logic;
SIGNAL \fromData[11]~input_o\ : std_logic;
SIGNAL \MEMWB_inputData_sig[11]~11_combout\ : std_logic;
SIGNAL \keyData[11]~input_o\ : std_logic;
SIGNAL \RegisterFile|reg4|gen_register:11:vff|O~q\ : std_logic;
SIGNAL \RegisterFile|reg5|gen_register:11:vff|O~q\ : std_logic;
SIGNAL \RegisterFile|reg6|gen_register:11:vff|O~q\ : std_logic;
SIGNAL \RegisterFile|reg7|gen_register:11:vff|O~q\ : std_logic;
SIGNAL \RegisterFile|read_mux1|v6|v3|v11|Q~0_combout\ : std_logic;
SIGNAL \RegisterFile|reg3|gen_register:11:vff|O~q\ : std_logic;
SIGNAL \RegisterFile|reg2|gen_register:11:vff|O~q\ : std_logic;
SIGNAL \RegisterFile|reg1|gen_register:11:vff|O~q\ : std_logic;
SIGNAL \RegisterFile|read_mux1|v6|v3|v11|Q~1_combout\ : std_logic;
SIGNAL \ALUInput1Mux|v3|v11|Q~0_combout\ : std_logic;
SIGNAL \RegisterFile|read_mux2|v6|v3|v11|Q~0_combout\ : std_logic;
SIGNAL \RegisterFile|read_mux2|v6|v3|v11|Q~1_combout\ : std_logic;
SIGNAL \ALUInput2Mux|v3|v11|Q~0_combout\ : std_logic;
SIGNAL \ALUInput2Mux|v3|v11|Q~1_combout\ : std_logic;
SIGNAL \ALU16|V10|v12|Q~0_combout\ : std_logic;
SIGNAL \ALU16|V10|v12|Q~1_combout\ : std_logic;
SIGNAL \ALU16|V10|v12|Q~2_combout\ : std_logic;
SIGNAL \ALU16|V21|v1|v11|Q~combout\ : std_logic;
SIGNAL \JR|PCout[12]~0_combout\ : std_logic;
SIGNAL \PC|gen_register:12:vff|O~q\ : std_logic;
SIGNAL \IFIDREG|Add0~42\ : std_logic;
SIGNAL \IFIDREG|Add0~45_sumout\ : std_logic;
SIGNAL \IFIDREG|outPC[12]~13_combout\ : std_logic;
SIGNAL \fromData[12]~input_o\ : std_logic;
SIGNAL \MEMWB_inputData_sig[12]~12_combout\ : std_logic;
SIGNAL \keyData[12]~input_o\ : std_logic;
SIGNAL \RegisterFile|reg4|gen_register:12:vff|O~q\ : std_logic;
SIGNAL \RegisterFile|reg5|gen_register:12:vff|O~q\ : std_logic;
SIGNAL \RegisterFile|reg6|gen_register:12:vff|O~q\ : std_logic;
SIGNAL \RegisterFile|reg7|gen_register:12:vff|O~q\ : std_logic;
SIGNAL \RegisterFile|read_mux1|v6|v3|v12|Q~0_combout\ : std_logic;
SIGNAL \RegisterFile|reg3|gen_register:12:vff|O~q\ : std_logic;
SIGNAL \RegisterFile|reg2|gen_register:12:vff|O~q\ : std_logic;
SIGNAL \RegisterFile|reg1|gen_register:12:vff|O~q\ : std_logic;
SIGNAL \RegisterFile|read_mux1|v6|v3|v12|Q~1_combout\ : std_logic;
SIGNAL \ALUInput1Mux|v3|v12|Q~0_combout\ : std_logic;
SIGNAL \RegisterFile|read_mux2|v6|v3|v12|Q~0_combout\ : std_logic;
SIGNAL \RegisterFile|read_mux2|v6|v3|v12|Q~1_combout\ : std_logic;
SIGNAL \ALUInput2Mux|v3|v12|Q~4_combout\ : std_logic;
SIGNAL \ALUInput2Mux|v3|v12|Q~5_combout\ : std_logic;
SIGNAL \ALU16|V10|v12|Q~3_combout\ : std_logic;
SIGNAL \ALU16|V11|v12|Q~0_combout\ : std_logic;
SIGNAL \ALU16|V11|v12|Q~1_combout\ : std_logic;
SIGNAL \ALU16|V11|v12|Q~2_combout\ : std_logic;
SIGNAL \ALU16|V21|v1|v12|Q~combout\ : std_logic;
SIGNAL \fromData[13]~input_o\ : std_logic;
SIGNAL \MEMWB_inputData_sig[13]~13_combout\ : std_logic;
SIGNAL \keyData[13]~input_o\ : std_logic;
SIGNAL \RegisterFile|reg4|gen_register:13:vff|O~q\ : std_logic;
SIGNAL \RegisterFile|reg5|gen_register:13:vff|O~q\ : std_logic;
SIGNAL \RegisterFile|reg6|gen_register:13:vff|O~q\ : std_logic;
SIGNAL \RegisterFile|reg7|gen_register:13:vff|O~q\ : std_logic;
SIGNAL \RegisterFile|read_mux2|v6|v3|v13|Q~0_combout\ : std_logic;
SIGNAL \RegisterFile|reg3|gen_register:13:vff|O~q\ : std_logic;
SIGNAL \RegisterFile|reg2|gen_register:13:vff|O~q\ : std_logic;
SIGNAL \RegisterFile|reg1|gen_register:13:vff|O~q\ : std_logic;
SIGNAL \RegisterFile|read_mux2|v6|v3|v13|Q~1_combout\ : std_logic;
SIGNAL \ALUInput2Mux|v3|v13|Q~0_combout\ : std_logic;
SIGNAL \ALUInput2Mux|v3|v13|Q~1_combout\ : std_logic;
SIGNAL \JR|PCout[13]~1_combout\ : std_logic;
SIGNAL \PC|gen_register:13:vff|O~q\ : std_logic;
SIGNAL \IFIDREG|Add0~46\ : std_logic;
SIGNAL \IFIDREG|Add0~49_sumout\ : std_logic;
SIGNAL \IFIDREG|outPC[13]~14_combout\ : std_logic;
SIGNAL \RegisterFile|read_mux1|v6|v3|v13|Q~0_combout\ : std_logic;
SIGNAL \RegisterFile|read_mux1|v6|v3|v13|Q~1_combout\ : std_logic;
SIGNAL \ALUInput1Mux|v3|v13|Q~0_combout\ : std_logic;
SIGNAL \ALU16|V12|v12|Q~0_combout\ : std_logic;
SIGNAL \ALU16|V12|v12|Q~1_combout\ : std_logic;
SIGNAL \ALU16|V12|v12|Q~2_combout\ : std_logic;
SIGNAL \ALU16|V21|v1|v13|Q~combout\ : std_logic;
SIGNAL \fromData[14]~input_o\ : std_logic;
SIGNAL \MEMWB_inputData_sig[14]~14_combout\ : std_logic;
SIGNAL \keyData[14]~input_o\ : std_logic;
SIGNAL \RegisterFile|reg4|gen_register:14:vff|O~q\ : std_logic;
SIGNAL \RegisterFile|reg5|gen_register:14:vff|O~q\ : std_logic;
SIGNAL \RegisterFile|reg6|gen_register:14:vff|O~q\ : std_logic;
SIGNAL \RegisterFile|reg7|gen_register:14:vff|O~q\ : std_logic;
SIGNAL \RegisterFile|read_mux2|v6|v3|v14|Q~0_combout\ : std_logic;
SIGNAL \RegisterFile|reg3|gen_register:14:vff|O~q\ : std_logic;
SIGNAL \RegisterFile|reg2|gen_register:14:vff|O~q\ : std_logic;
SIGNAL \RegisterFile|reg1|gen_register:14:vff|O~q\ : std_logic;
SIGNAL \RegisterFile|read_mux2|v6|v3|v14|Q~1_combout\ : std_logic;
SIGNAL \ALUInput2Mux|v3|v14|Q~0_combout\ : std_logic;
SIGNAL \ALUInput2Mux|v3|v14|Q~1_combout\ : std_logic;
SIGNAL \JR|PCout[14]~2_combout\ : std_logic;
SIGNAL \PC|gen_register:14:vff|O~q\ : std_logic;
SIGNAL \IFIDREG|Add0~50\ : std_logic;
SIGNAL \IFIDREG|Add0~53_sumout\ : std_logic;
SIGNAL \IFIDREG|outPC[14]~15_combout\ : std_logic;
SIGNAL \RegisterFile|read_mux1|v6|v3|v14|Q~0_combout\ : std_logic;
SIGNAL \RegisterFile|read_mux1|v6|v3|v14|Q~1_combout\ : std_logic;
SIGNAL \ALUInput1Mux|v3|v14|Q~0_combout\ : std_logic;
SIGNAL \ALU16|V13|v12|Q~1_combout\ : std_logic;
SIGNAL \ALU16|V13|v12|Q~0_combout\ : std_logic;
SIGNAL \ALU16|V13|v12|Q~3_combout\ : std_logic;
SIGNAL \ALU16|V13|v12|Q~2_combout\ : std_logic;
SIGNAL \ALU16|V21|v1|v14|Q~combout\ : std_logic;
SIGNAL \JR|PCout[15]~3_combout\ : std_logic;
SIGNAL \PC|gen_register:15:vff|O~q\ : std_logic;
SIGNAL \IFIDREG|Add0~54\ : std_logic;
SIGNAL \IFIDREG|Add0~57_sumout\ : std_logic;
SIGNAL \IFIDREG|outPC[15]~16_combout\ : std_logic;
SIGNAL \fromData[15]~input_o\ : std_logic;
SIGNAL \MEMWB_inputData_sig[15]~15_combout\ : std_logic;
SIGNAL \keyData[15]~input_o\ : std_logic;
SIGNAL \RegisterFile|reg4|gen_register:15:vff|O~q\ : std_logic;
SIGNAL \RegisterFile|reg5|gen_register:15:vff|O~q\ : std_logic;
SIGNAL \RegisterFile|reg6|gen_register:15:vff|O~q\ : std_logic;
SIGNAL \RegisterFile|reg7|gen_register:15:vff|O~q\ : std_logic;
SIGNAL \RegisterFile|read_mux1|v6|v3|v15|Q~0_combout\ : std_logic;
SIGNAL \RegisterFile|reg3|gen_register:15:vff|O~q\ : std_logic;
SIGNAL \RegisterFile|reg2|gen_register:15:vff|O~q\ : std_logic;
SIGNAL \RegisterFile|reg1|gen_register:15:vff|O~q\ : std_logic;
SIGNAL \RegisterFile|read_mux1|v6|v3|v15|Q~1_combout\ : std_logic;
SIGNAL \ALUInput1Mux|v3|v15|Q~0_combout\ : std_logic;
SIGNAL \RegisterFile|read_mux2|v6|v3|v15|Q~0_combout\ : std_logic;
SIGNAL \RegisterFile|read_mux2|v6|v3|v15|Q~1_combout\ : std_logic;
SIGNAL \ALUInput2Mux|v3|v15|Q~0_combout\ : std_logic;
SIGNAL \ALUInput2Mux|v3|v15|Q~1_combout\ : std_logic;
SIGNAL \ALU16|V15|v0|v1|v3|Q~0_combout\ : std_logic;
SIGNAL \ALU16|V14|v12|Q~2_combout\ : std_logic;
SIGNAL \ALU16|V14|v12|Q~3_combout\ : std_logic;
SIGNAL \ALU16|V14|v12|Q~0_combout\ : std_logic;
SIGNAL \ALU16|V14|v12|Q~1_combout\ : std_logic;
SIGNAL \ALU16|V15|v9|V4|v3|Q~0_combout\ : std_logic;
SIGNAL \ALU16|V15|v9|V4|v3|Q~1_combout\ : std_logic;
SIGNAL \MEMWBREG|writeData\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \IDEXREG|R1AD_IDEX\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \EXMEMREG|Result_EXMEM\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \EXMEMREG|R2Reg_EXMEM\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \IDEXREG|ALUFunc_IDEX\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \MEMWBREG|writeAD\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \EXMEMREG|RegAD_EXMEM\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \IDEXREG|R1Reg_IDEX\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \IDEXREG|R2AD_IDEX\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \IDEXREG|R2Reg_IDEX\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \IDEXREG|jumpShortAddr_IDEX\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \IFIDREG|outPC\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \IFIDREG|outInstruction\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_instr[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_instr[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_instr[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_instr[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_instr[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_instr[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_instr[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_instr[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_instr[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_instr[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_instr[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_instr[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_fromData[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_fromData[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_fromData[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_fromData[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_fromData[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_fromData[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_fromData[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_fromData[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_fromData[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_fromData[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_fromData[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_fromData[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_fromData[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_fromData[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_fromData[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_fromData[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_instr[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_instr[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_instr[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_instr[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_clock~input_o\ : std_logic;
SIGNAL \IFIDREG|ALT_INV_outInstruction\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \IFIDREG|ALT_INV_outPC\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALU16|V4|v12|ALT_INV_Q~5_combout\ : std_logic;
SIGNAL \ALU16|V4|v12|ALT_INV_Q~4_combout\ : std_logic;
SIGNAL \ALU16|V2|v12|ALT_INV_Q~3_combout\ : std_logic;
SIGNAL \ALU16|V1|v12|ALT_INV_Q~5_combout\ : std_logic;
SIGNAL \ALU16|V14|v12|ALT_INV_Q~3_combout\ : std_logic;
SIGNAL \ALU16|V14|v12|ALT_INV_Q~2_combout\ : std_logic;
SIGNAL \ALU16|V13|v12|ALT_INV_Q~3_combout\ : std_logic;
SIGNAL \ALU16|V1|v12|ALT_INV_Q~4_combout\ : std_logic;
SIGNAL \ALUInput1Mux|v3|v1|ALT_INV_Q~2_combout\ : std_logic;
SIGNAL \IFIDREG|ALT_INV_outInstruction[5]~15_combout\ : std_logic;
SIGNAL \IFIDREG|ALT_INV_outInstruction[4]~14_combout\ : std_logic;
SIGNAL \IFIDREG|ALT_INV_outInstruction[3]~13_combout\ : std_logic;
SIGNAL \IFIDREG|ALT_INV_outInstruction[8]~12_combout\ : std_logic;
SIGNAL \IFIDREG|ALT_INV_outInstruction[7]~11_combout\ : std_logic;
SIGNAL \IFIDREG|ALT_INV_outInstruction[6]~10_combout\ : std_logic;
SIGNAL \IFIDREG|ALT_INV_outInstruction[11]~9_combout\ : std_logic;
SIGNAL \IFIDREG|ALT_INV_outInstruction[10]~8_combout\ : std_logic;
SIGNAL \IFIDREG|ALT_INV_outInstruction[9]~7_combout\ : std_logic;
SIGNAL \Hazard|ALT_INV_process_0~1_combout\ : std_logic;
SIGNAL \IFIDREG|ALT_INV_outInstruction[2]~6_combout\ : std_logic;
SIGNAL \IFIDREG|ALT_INV_outInstruction[0]~5_combout\ : std_logic;
SIGNAL \IFIDREG|ALT_INV_outInstruction[15]~4_combout\ : std_logic;
SIGNAL \IFIDREG|ALT_INV_outInstruction[14]~3_combout\ : std_logic;
SIGNAL \IFIDREG|ALT_INV_outInstruction[12]~2_combout\ : std_logic;
SIGNAL \IFIDREG|ALT_INV_outInstruction[1]~1_combout\ : std_logic;
SIGNAL \IFIDREG|ALT_INV_outInstruction[13]~0_combout\ : std_logic;
SIGNAL \Controller|ALT_INV_isJType~0_combout\ : std_logic;
SIGNAL \RegisterFile|read_mux2|v6|v3|v15|ALT_INV_Q~0_combout\ : std_logic;
SIGNAL \RegisterFile|read_mux1|v6|v3|v15|ALT_INV_Q~0_combout\ : std_logic;
SIGNAL \IFIDREG|ALT_INV_outPC[15]~16_combout\ : std_logic;
SIGNAL \RegisterFile|read_mux1|v6|v3|v14|ALT_INV_Q~0_combout\ : std_logic;
SIGNAL \IFIDREG|ALT_INV_outPC[14]~15_combout\ : std_logic;
SIGNAL \RegisterFile|read_mux2|v6|v3|v14|ALT_INV_Q~0_combout\ : std_logic;
SIGNAL \RegisterFile|read_mux1|v6|v3|v13|ALT_INV_Q~0_combout\ : std_logic;
SIGNAL \IFIDREG|ALT_INV_outPC[13]~14_combout\ : std_logic;
SIGNAL \RegisterFile|read_mux2|v6|v3|v13|ALT_INV_Q~0_combout\ : std_logic;
SIGNAL \RegisterFile|read_mux2|v6|v3|v12|ALT_INV_Q~0_combout\ : std_logic;
SIGNAL \RegisterFile|read_mux1|v6|v3|v12|ALT_INV_Q~0_combout\ : std_logic;
SIGNAL \IFIDREG|ALT_INV_outPC[12]~13_combout\ : std_logic;
SIGNAL \RegisterFile|read_mux2|v6|v3|v11|ALT_INV_Q~0_combout\ : std_logic;
SIGNAL \RegisterFile|read_mux1|v6|v3|v11|ALT_INV_Q~0_combout\ : std_logic;
SIGNAL \IFIDREG|ALT_INV_outPC[11]~12_combout\ : std_logic;
SIGNAL \RegisterFile|read_mux2|v6|v3|v10|ALT_INV_Q~0_combout\ : std_logic;
SIGNAL \RegisterFile|read_mux1|v6|v3|v10|ALT_INV_Q~0_combout\ : std_logic;
SIGNAL \IFIDREG|ALT_INV_outPC[10]~11_combout\ : std_logic;
SIGNAL \RegisterFile|read_mux2|v6|v3|v9|ALT_INV_Q~0_combout\ : std_logic;
SIGNAL \RegisterFile|read_mux1|v6|v3|v9|ALT_INV_Q~0_combout\ : std_logic;
SIGNAL \IFIDREG|ALT_INV_outPC[9]~10_combout\ : std_logic;
SIGNAL \RegisterFile|read_mux2|v6|v3|v8|ALT_INV_Q~0_combout\ : std_logic;
SIGNAL \RegisterFile|read_mux1|v6|v3|v8|ALT_INV_Q~0_combout\ : std_logic;
SIGNAL \IFIDREG|ALT_INV_outPC[8]~9_combout\ : std_logic;
SIGNAL \RegisterFile|read_mux2|v6|v3|v7|ALT_INV_Q~0_combout\ : std_logic;
SIGNAL \RegisterFile|read_mux1|v6|v3|v7|ALT_INV_Q~0_combout\ : std_logic;
SIGNAL \IFIDREG|ALT_INV_outPC[7]~8_combout\ : std_logic;
SIGNAL \RegisterFile|read_mux2|v6|v3|v6|ALT_INV_Q~0_combout\ : std_logic;
SIGNAL \RegisterFile|read_mux1|v6|v3|v6|ALT_INV_Q~0_combout\ : std_logic;
SIGNAL \IFIDREG|ALT_INV_outPC[6]~7_combout\ : std_logic;
SIGNAL \RegisterFile|read_mux1|v6|v3|v5|ALT_INV_Q~0_combout\ : std_logic;
SIGNAL \IFIDREG|ALT_INV_outPC[5]~6_combout\ : std_logic;
SIGNAL \RegisterFile|read_mux2|v6|v3|v5|ALT_INV_Q~0_combout\ : std_logic;
SIGNAL \IFIDREG|ALT_INV_outPC[4]~5_combout\ : std_logic;
SIGNAL \RegisterFile|read_mux1|v6|v3|v4|ALT_INV_Q~0_combout\ : std_logic;
SIGNAL \RegisterFile|read_mux2|v6|v3|v4|ALT_INV_Q~0_combout\ : std_logic;
SIGNAL \IFIDREG|ALT_INV_outPC[3]~4_combout\ : std_logic;
SIGNAL \RegisterFile|read_mux1|v6|v3|v3|ALT_INV_Q~0_combout\ : std_logic;
SIGNAL \RegisterFile|read_mux2|v6|v3|v3|ALT_INV_Q~0_combout\ : std_logic;
SIGNAL \RegisterFile|read_mux1|v6|v3|v2|ALT_INV_Q~0_combout\ : std_logic;
SIGNAL \IFIDREG|ALT_INV_outPC[2]~3_combout\ : std_logic;
SIGNAL \RegisterFile|read_mux2|v6|v3|v2|ALT_INV_Q~0_combout\ : std_logic;
SIGNAL \RegisterFile|read_mux1|v6|v3|v1|ALT_INV_Q~0_combout\ : std_logic;
SIGNAL \IFIDREG|ALT_INV_outPC[1]~2_combout\ : std_logic;
SIGNAL \RegisterFile|read_mux2|v6|v3|v1|ALT_INV_Q~0_combout\ : std_logic;
SIGNAL \RegisterFile|read_mux2|v6|v3|v0|ALT_INV_Q~0_combout\ : std_logic;
SIGNAL \RegisterFile|read_mux1|v6|v3|v0|ALT_INV_Q~0_combout\ : std_logic;
SIGNAL \EXMEMREG|ALT_INV_isLW_EXMEM~q\ : std_logic;
SIGNAL \Controller|ALT_INV_isRType~0_combout\ : std_logic;
SIGNAL \IFIDREG|ALT_INV_outPC[15]~1_combout\ : std_logic;
SIGNAL \IFIDREG|ALT_INV_outPC[0]~0_combout\ : std_logic;
SIGNAL \PC|gen_register:15:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \PC|gen_register:14:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \PC|gen_register:13:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \PC|gen_register:12:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \RegisterFile|reg7|gen_register:15:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \RegisterFile|reg7|gen_register:14:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \RegisterFile|reg7|gen_register:13:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \RegisterFile|reg7|gen_register:12:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \RegisterFile|reg7|gen_register:11:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \RegisterFile|reg7|gen_register:10:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \RegisterFile|reg7|gen_register:9:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \RegisterFile|reg7|gen_register:8:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \RegisterFile|reg7|gen_register:7:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \RegisterFile|reg7|gen_register:6:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \RegisterFile|reg7|gen_register:5:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \RegisterFile|reg7|gen_register:4:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \RegisterFile|reg7|gen_register:3:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \RegisterFile|reg7|gen_register:2:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \RegisterFile|reg7|gen_register:1:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \RegisterFile|reg7|gen_register:0:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \RegisterFile|reg6|gen_register:15:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \RegisterFile|reg6|gen_register:14:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \RegisterFile|reg6|gen_register:13:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \RegisterFile|reg6|gen_register:12:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \RegisterFile|reg6|gen_register:11:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \RegisterFile|reg6|gen_register:10:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \RegisterFile|reg6|gen_register:9:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \RegisterFile|reg6|gen_register:8:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \RegisterFile|reg6|gen_register:7:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \RegisterFile|reg6|gen_register:6:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \RegisterFile|reg6|gen_register:5:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \RegisterFile|reg6|gen_register:4:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \RegisterFile|reg6|gen_register:3:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \RegisterFile|reg6|gen_register:2:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \RegisterFile|reg6|gen_register:1:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \RegisterFile|reg6|gen_register:0:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \RegisterFile|reg5|gen_register:15:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \RegisterFile|reg5|gen_register:14:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \RegisterFile|reg5|gen_register:13:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \RegisterFile|reg5|gen_register:12:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \RegisterFile|reg5|gen_register:11:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \RegisterFile|reg5|gen_register:10:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \RegisterFile|reg5|gen_register:9:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \RegisterFile|reg5|gen_register:8:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \RegisterFile|reg5|gen_register:7:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \RegisterFile|reg5|gen_register:6:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \RegisterFile|reg5|gen_register:5:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \RegisterFile|reg5|gen_register:4:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \RegisterFile|reg5|gen_register:3:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \RegisterFile|reg5|gen_register:2:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \RegisterFile|reg5|gen_register:1:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \RegisterFile|reg5|gen_register:0:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \RegisterFile|reg4|gen_register:15:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \RegisterFile|reg4|gen_register:14:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \RegisterFile|reg4|gen_register:13:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \RegisterFile|reg4|gen_register:12:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \RegisterFile|reg4|gen_register:11:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \RegisterFile|reg4|gen_register:10:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \RegisterFile|reg4|gen_register:9:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \RegisterFile|reg4|gen_register:8:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \RegisterFile|reg4|gen_register:7:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \RegisterFile|reg4|gen_register:6:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \RegisterFile|reg4|gen_register:5:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \RegisterFile|reg4|gen_register:4:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \RegisterFile|reg4|gen_register:3:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \RegisterFile|reg4|gen_register:2:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \RegisterFile|reg4|gen_register:1:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \RegisterFile|reg4|gen_register:0:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \RegisterFile|reg3|gen_register:15:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \RegisterFile|reg3|gen_register:14:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \RegisterFile|reg3|gen_register:13:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \RegisterFile|reg3|gen_register:12:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \RegisterFile|reg3|gen_register:11:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \RegisterFile|reg3|gen_register:10:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \RegisterFile|reg3|gen_register:9:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \RegisterFile|reg3|gen_register:8:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \RegisterFile|reg3|gen_register:7:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \RegisterFile|reg3|gen_register:6:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \RegisterFile|reg3|gen_register:5:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \RegisterFile|reg3|gen_register:4:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \RegisterFile|reg3|gen_register:3:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \RegisterFile|reg3|gen_register:2:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \RegisterFile|reg3|gen_register:1:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \RegisterFile|reg3|gen_register:0:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \RegisterFile|reg2|gen_register:15:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \RegisterFile|reg2|gen_register:14:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \RegisterFile|reg2|gen_register:13:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \RegisterFile|reg2|gen_register:12:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \RegisterFile|reg2|gen_register:11:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \RegisterFile|reg2|gen_register:10:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \RegisterFile|reg2|gen_register:9:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \RegisterFile|reg2|gen_register:8:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \RegisterFile|reg2|gen_register:7:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \RegisterFile|reg2|gen_register:6:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \RegisterFile|reg2|gen_register:5:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \RegisterFile|reg2|gen_register:4:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \RegisterFile|reg2|gen_register:3:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \RegisterFile|reg2|gen_register:2:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \RegisterFile|reg2|gen_register:1:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \RegisterFile|reg2|gen_register:0:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \RegisterFile|reg1|gen_register:15:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \RegisterFile|reg1|gen_register:14:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \RegisterFile|reg1|gen_register:13:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \RegisterFile|reg1|gen_register:12:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \RegisterFile|reg1|gen_register:11:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \RegisterFile|reg1|gen_register:10:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \RegisterFile|reg1|gen_register:9:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \RegisterFile|reg1|gen_register:8:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \RegisterFile|reg1|gen_register:7:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \RegisterFile|reg1|gen_register:6:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \RegisterFile|reg1|gen_register:5:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \RegisterFile|reg1|gen_register:4:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \RegisterFile|reg1|gen_register:3:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \RegisterFile|reg1|gen_register:2:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \RegisterFile|reg1|gen_register:1:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \RegisterFile|reg1|gen_register:0:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \ALU16|V15|v9|V4|v3|ALT_INV_Q~0_combout\ : std_logic;
SIGNAL \ALU16|V14|v12|ALT_INV_Q~1_combout\ : std_logic;
SIGNAL \ALU16|V14|v12|ALT_INV_Q~0_combout\ : std_logic;
SIGNAL \ALU16|V15|v0|v1|v3|ALT_INV_Q~0_combout\ : std_logic;
SIGNAL \ALUInput2Mux|v3|v15|ALT_INV_Q~1_combout\ : std_logic;
SIGNAL \ALUInput2Mux|v3|v15|ALT_INV_Q~0_combout\ : std_logic;
SIGNAL \IDEXREG|ALT_INV_R2Reg_IDEX\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \IDEXREG|ALT_INV_R1Reg_IDEX\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALU16|V13|v12|ALT_INV_Q~2_combout\ : std_logic;
SIGNAL \ALU16|V13|v12|ALT_INV_Q~1_combout\ : std_logic;
SIGNAL \ALU16|V13|v12|ALT_INV_Q~0_combout\ : std_logic;
SIGNAL \ALUInput2Mux|v3|v14|ALT_INV_Q~1_combout\ : std_logic;
SIGNAL \ALUInput2Mux|v3|v14|ALT_INV_Q~0_combout\ : std_logic;
SIGNAL \ALU16|V12|v12|ALT_INV_Q~2_combout\ : std_logic;
SIGNAL \ALU16|V12|v12|ALT_INV_Q~1_combout\ : std_logic;
SIGNAL \ALU16|V12|v12|ALT_INV_Q~0_combout\ : std_logic;
SIGNAL \ALUInput2Mux|v3|v13|ALT_INV_Q~1_combout\ : std_logic;
SIGNAL \ALUInput2Mux|v3|v13|ALT_INV_Q~0_combout\ : std_logic;
SIGNAL \ALU16|V11|v12|ALT_INV_Q~2_combout\ : std_logic;
SIGNAL \ALU16|V11|v12|ALT_INV_Q~1_combout\ : std_logic;
SIGNAL \ALU16|V11|v12|ALT_INV_Q~0_combout\ : std_logic;
SIGNAL \ALU16|V10|v12|ALT_INV_Q~3_combout\ : std_logic;
SIGNAL \ALUInput2Mux|v3|v12|ALT_INV_Q~5_combout\ : std_logic;
SIGNAL \ALUInput2Mux|v3|v12|ALT_INV_Q~4_combout\ : std_logic;
SIGNAL \ALU16|V10|v12|ALT_INV_Q~2_combout\ : std_logic;
SIGNAL \ALU16|V10|v12|ALT_INV_Q~1_combout\ : std_logic;
SIGNAL \ALU16|V10|v12|ALT_INV_Q~0_combout\ : std_logic;
SIGNAL \ALUInput2Mux|v3|v11|ALT_INV_Q~1_combout\ : std_logic;
SIGNAL \ALUInput2Mux|v3|v11|ALT_INV_Q~0_combout\ : std_logic;
SIGNAL \ALU16|V9|v12|ALT_INV_Q~2_combout\ : std_logic;
SIGNAL \ALU16|V9|v12|ALT_INV_Q~1_combout\ : std_logic;
SIGNAL \ALU16|V9|v12|ALT_INV_Q~0_combout\ : std_logic;
SIGNAL \ALU16|V8|v12|ALT_INV_Q~3_combout\ : std_logic;
SIGNAL \ALUInput2Mux|v3|v10|ALT_INV_Q~1_combout\ : std_logic;
SIGNAL \ALUInput2Mux|v3|v10|ALT_INV_Q~0_combout\ : std_logic;
SIGNAL \ALUInput1Mux|v3|v10|ALT_INV_Q~1_combout\ : std_logic;
SIGNAL \ALUInput1Mux|v3|v10|ALT_INV_Q~0_combout\ : std_logic;
SIGNAL \ALU16|V8|v12|ALT_INV_Q~2_combout\ : std_logic;
SIGNAL \ALU16|V8|v12|ALT_INV_Q~1_combout\ : std_logic;
SIGNAL \ALU16|V8|v12|ALT_INV_Q~0_combout\ : std_logic;
SIGNAL \ALUInput2Mux|v3|v9|ALT_INV_Q~1_combout\ : std_logic;
SIGNAL \ALUInput2Mux|v3|v9|ALT_INV_Q~0_combout\ : std_logic;
SIGNAL \ALUInput1Mux|v3|v9|ALT_INV_Q~2_combout\ : std_logic;
SIGNAL \ALUInput1Mux|v3|v9|ALT_INV_Q~1_combout\ : std_logic;
SIGNAL \ALUInput1Mux|v3|v9|ALT_INV_Q~0_combout\ : std_logic;
SIGNAL \ALU16|V7|v12|ALT_INV_Q~2_combout\ : std_logic;
SIGNAL \ALU16|V7|v12|ALT_INV_Q~1_combout\ : std_logic;
SIGNAL \ALU16|V7|v12|ALT_INV_Q~0_combout\ : std_logic;
SIGNAL \ALUInput2Mux|v3|v8|ALT_INV_Q~1_combout\ : std_logic;
SIGNAL \ALUInput2Mux|v3|v8|ALT_INV_Q~0_combout\ : std_logic;
SIGNAL \ALUInput1Mux|v3|v8|ALT_INV_Q~1_combout\ : std_logic;
SIGNAL \ALUInput1Mux|v3|v8|ALT_INV_Q~0_combout\ : std_logic;
SIGNAL \ALU16|V6|v12|ALT_INV_Q~2_combout\ : std_logic;
SIGNAL \ALU16|V6|v12|ALT_INV_Q~1_combout\ : std_logic;
SIGNAL \ALU16|V6|v12|ALT_INV_Q~0_combout\ : std_logic;
SIGNAL \ALUInput2Mux|v3|v7|ALT_INV_Q~1_combout\ : std_logic;
SIGNAL \ALUInput2Mux|v3|v7|ALT_INV_Q~0_combout\ : std_logic;
SIGNAL \ALUInput1Mux|v3|v7|ALT_INV_Q~2_combout\ : std_logic;
SIGNAL \ALUInput1Mux|v3|v7|ALT_INV_Q~1_combout\ : std_logic;
SIGNAL \ALUInput1Mux|v3|v7|ALT_INV_Q~0_combout\ : std_logic;
SIGNAL \ALU16|V5|v12|ALT_INV_Q~2_combout\ : std_logic;
SIGNAL \ALU16|V5|v12|ALT_INV_Q~1_combout\ : std_logic;
SIGNAL \ALU16|V5|v12|ALT_INV_Q~0_combout\ : std_logic;
SIGNAL \ALUInput2Mux|v3|v6|ALT_INV_Q~1_combout\ : std_logic;
SIGNAL \ALUInput2Mux|v3|v6|ALT_INV_Q~0_combout\ : std_logic;
SIGNAL \EXMEMREG|ALT_INV_Result_EXMEM\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALUInput1Mux|v3|v0|ALT_INV_Q~4_combout\ : std_logic;
SIGNAL \ALUInput1Mux|v3|v11|ALT_INV_Q~0_combout\ : std_logic;
SIGNAL \ALUInput1Mux|v3|v12|ALT_INV_Q~0_combout\ : std_logic;
SIGNAL \ALUInput1Mux|v3|v13|ALT_INV_Q~0_combout\ : std_logic;
SIGNAL \ALUInput1Mux|v3|v14|ALT_INV_Q~0_combout\ : std_logic;
SIGNAL \ALUInput1Mux|v3|v15|ALT_INV_Q~0_combout\ : std_logic;
SIGNAL \IFIDREG|ALT_INV_Add0~57_sumout\ : std_logic;
SIGNAL \IFIDREG|ALT_INV_Add0~53_sumout\ : std_logic;
SIGNAL \IFIDREG|ALT_INV_Add0~49_sumout\ : std_logic;
SIGNAL \IFIDREG|ALT_INV_Add0~45_sumout\ : std_logic;
SIGNAL \IFIDREG|ALT_INV_Add0~41_sumout\ : std_logic;
SIGNAL \IFIDREG|ALT_INV_Add0~37_sumout\ : std_logic;
SIGNAL \IFIDREG|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \IFIDREG|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \IFIDREG|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \IFIDREG|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \IFIDREG|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \IFIDREG|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \IFIDREG|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \IFIDREG|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \IFIDREG|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \PC|gen_register:11:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \PC|gen_register:10:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \PC|gen_register:9:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \PC|gen_register:8:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \PC|gen_register:7:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \PC|gen_register:6:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \PC|gen_register:5:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \PC|gen_register:4:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \PC|gen_register:3:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \PC|gen_register:2:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \PC|gen_register:1:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \PC|gen_register:0:vff|ALT_INV_O~q\ : std_logic;
SIGNAL \MEMWBREG|ALT_INV_writeData\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALUInput1Mux|v3|v6|ALT_INV_Q~2_combout\ : std_logic;
SIGNAL \ALUInput1Mux|v3|v6|ALT_INV_Q~1_combout\ : std_logic;
SIGNAL \ALUInput1Mux|v3|v6|ALT_INV_Q~0_combout\ : std_logic;
SIGNAL \ALU16|V4|v12|ALT_INV_Q~3_combout\ : std_logic;
SIGNAL \ALU16|V4|v12|ALT_INV_Q~2_combout\ : std_logic;
SIGNAL \ALU16|V4|v12|ALT_INV_Q~1_combout\ : std_logic;
SIGNAL \ALU16|V4|v12|ALT_INV_Q~0_combout\ : std_logic;
SIGNAL \ALUInput1Mux|v3|v5|ALT_INV_Q~2_combout\ : std_logic;
SIGNAL \ALUInput1Mux|v3|v5|ALT_INV_Q~1_combout\ : std_logic;
SIGNAL \ALUInput1Mux|v3|v2|ALT_INV_Q~7_combout\ : std_logic;
SIGNAL \ALUInput1Mux|v3|v5|ALT_INV_Q~0_combout\ : std_logic;
SIGNAL \ALUInput2Mux|v3|v5|ALT_INV_Q~2_combout\ : std_logic;
SIGNAL \ALUInput2Mux|v3|v5|ALT_INV_Q~1_combout\ : std_logic;
SIGNAL \ALUInput2Mux|v3|v5|ALT_INV_Q~0_combout\ : std_logic;
SIGNAL \IDEXREG|ALT_INV_jumpShortAddr_IDEX\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \ALU16|V3|v12|ALT_INV_Q~3_combout\ : std_logic;
SIGNAL \ALU16|V3|v12|ALT_INV_Q~2_combout\ : std_logic;
SIGNAL \ALU16|V3|v12|ALT_INV_Q~1_combout\ : std_logic;
SIGNAL \ALU16|V3|v12|ALT_INV_Q~0_combout\ : std_logic;
SIGNAL \ALU16|V1|v12|ALT_INV_Q~3_combout\ : std_logic;
SIGNAL \ALU16|V1|v12|ALT_INV_Q~2_combout\ : std_logic;
SIGNAL \ALUInput2Mux|v3|v0|ALT_INV_Q~2_combout\ : std_logic;
SIGNAL \ALUInput1Mux|v3|v0|ALT_INV_Q~3_combout\ : std_logic;
SIGNAL \ALUInput1Mux|v3|v0|ALT_INV_Q~2_combout\ : std_logic;
SIGNAL \ALU16|V1|v12|ALT_INV_Q~1_combout\ : std_logic;
SIGNAL \ALUInput1Mux|v3|v1|ALT_INV_Q~1_combout\ : std_logic;
SIGNAL \ALUInput2Mux|v3|v1|ALT_INV_Q~2_combout\ : std_logic;
SIGNAL \ALUInput1Mux|v3|v4|ALT_INV_Q~2_combout\ : std_logic;
SIGNAL \ALUInput1Mux|v3|v4|ALT_INV_Q~1_combout\ : std_logic;
SIGNAL \ALUInput1Mux|v3|v4|ALT_INV_Q~0_combout\ : std_logic;
SIGNAL \ALUInput2Mux|v3|v4|ALT_INV_Q~2_combout\ : std_logic;
SIGNAL \ALUInput2Mux|v3|v4|ALT_INV_Q~1_combout\ : std_logic;
SIGNAL \ALUInput2Mux|v3|v4|ALT_INV_Q~0_combout\ : std_logic;
SIGNAL \ALU16|V2|v12|ALT_INV_Q~2_combout\ : std_logic;
SIGNAL \ALU16|V2|v12|ALT_INV_Q~1_combout\ : std_logic;
SIGNAL \ALU16|V2|v12|ALT_INV_Q~0_combout\ : std_logic;
SIGNAL \ALUInput1Mux|v3|v3|ALT_INV_Q~2_combout\ : std_logic;
SIGNAL \ALUInput1Mux|v3|v3|ALT_INV_Q~1_combout\ : std_logic;
SIGNAL \ALUInput1Mux|v3|v3|ALT_INV_Q~0_combout\ : std_logic;
SIGNAL \ALUInput2Mux|v3|v3|ALT_INV_Q~2_combout\ : std_logic;
SIGNAL \ALUInput2Mux|v3|v3|ALT_INV_Q~1_combout\ : std_logic;
SIGNAL \ALUInput2Mux|v3|v3|ALT_INV_Q~0_combout\ : std_logic;
SIGNAL \ALU16|V1|v12|ALT_INV_Q~0_combout\ : std_logic;
SIGNAL \ALUInput1Mux|v3|v2|ALT_INV_Q~6_combout\ : std_logic;
SIGNAL \ALUInput1Mux|v3|v2|ALT_INV_Q~5_combout\ : std_logic;
SIGNAL \ALUInput1Mux|v3|v2|ALT_INV_Q~4_combout\ : std_logic;
SIGNAL \ALUInput2Mux|v3|v2|ALT_INV_Q~2_combout\ : std_logic;
SIGNAL \ALUInput2Mux|v3|v2|ALT_INV_Q~1_combout\ : std_logic;
SIGNAL \ALUInput2Mux|v3|v2|ALT_INV_Q~0_combout\ : std_logic;
SIGNAL \ALU16|V0|v12|ALT_INV_Q~1_combout\ : std_logic;
SIGNAL \ALU16|V0|v12|ALT_INV_Q~0_combout\ : std_logic;
SIGNAL \ALUInput1Mux|v3|v1|ALT_INV_Q~0_combout\ : std_logic;
SIGNAL \ALUInput2Mux|v3|v1|ALT_INV_Q~1_combout\ : std_logic;
SIGNAL \ALUInput2Mux|v3|v1|ALT_INV_Q~0_combout\ : std_logic;
SIGNAL \ALUInput2Mux|v3|v0|ALT_INV_Q~1_combout\ : std_logic;
SIGNAL \ALUInput2Mux|v3|v0|ALT_INV_Q~0_combout\ : std_logic;
SIGNAL \ALUInput2Mux|v3|v12|ALT_INV_Q~3_combout\ : std_logic;
SIGNAL \ALUInput2Mux|v3|v12|ALT_INV_Q~2_combout\ : std_logic;
SIGNAL \ForwardUnit|ALT_INV_Equal2~0_combout\ : std_logic;
SIGNAL \ALUInput2Mux|v3|v12|ALT_INV_Q~1_combout\ : std_logic;
SIGNAL \IDEXREG|ALT_INV_R2AD_IDEX\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \ALUInput2Mux|v3|v12|ALT_INV_Q~0_combout\ : std_logic;
SIGNAL \IDEXREG|ALT_INV_isBranch_IDEX~q\ : std_logic;
SIGNAL \IDEXREG|ALT_INV_isLW_IDEX~q\ : std_logic;
SIGNAL \IDEXREG|ALT_INV_isSW_IDEX~q\ : std_logic;
SIGNAL \ALUInput1Mux|v3|v0|ALT_INV_Q~1_combout\ : std_logic;
SIGNAL \ALUInput1Mux|v3|v0|ALT_INV_Q~0_combout\ : std_logic;
SIGNAL \ALUInput1Mux|v3|v2|ALT_INV_Q~3_combout\ : std_logic;
SIGNAL \MEMWBREG|ALT_INV_writeAD\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \ALUInput1Mux|v3|v2|ALT_INV_Q~2_combout\ : std_logic;
SIGNAL \ALUInput1Mux|v3|v2|ALT_INV_Q~1_combout\ : std_logic;
SIGNAL \EXMEMREG|ALT_INV_RegAD_EXMEM\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \IDEXREG|ALT_INV_R1AD_IDEX\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \ALUInput1Mux|v3|v2|ALT_INV_Q~0_combout\ : std_logic;
SIGNAL \IDEXREG|ALT_INV_isR_IDEX~q\ : std_logic;
SIGNAL \IDEXREG|ALT_INV_isMFPC_IDEX~q\ : std_logic;
SIGNAL \IDEXREG|ALT_INV_ALUFunc_IDEX\ : std_logic_vector(2 DOWNTO 0);

BEGIN

ww_keyData <= keyData;
ww_clock <= clock;
ww_fromData <= fromData;
ww_instr <= instr;
ww_clock2 <= clock2;
printEnable <= ww_printEnable;
keyEnable <= ww_keyEnable;
DataWriteFlag <= ww_DataWriteFlag;
dataAD <= ww_dataAD;
toData <= ww_toData;
printCode <= ww_printCode;
printData <= ww_printData;
Result <= ww_Result;
regOUT <= ww_regOUT;
instructionAD <= ww_instructionAD;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_instr[5]~input_o\ <= NOT \instr[5]~input_o\;
\ALT_INV_instr[4]~input_o\ <= NOT \instr[4]~input_o\;
\ALT_INV_instr[3]~input_o\ <= NOT \instr[3]~input_o\;
\ALT_INV_instr[8]~input_o\ <= NOT \instr[8]~input_o\;
\ALT_INV_instr[7]~input_o\ <= NOT \instr[7]~input_o\;
\ALT_INV_instr[6]~input_o\ <= NOT \instr[6]~input_o\;
\ALT_INV_instr[11]~input_o\ <= NOT \instr[11]~input_o\;
\ALT_INV_instr[10]~input_o\ <= NOT \instr[10]~input_o\;
\ALT_INV_instr[9]~input_o\ <= NOT \instr[9]~input_o\;
\ALT_INV_instr[2]~input_o\ <= NOT \instr[2]~input_o\;
\ALT_INV_instr[0]~input_o\ <= NOT \instr[0]~input_o\;
\ALT_INV_instr[1]~input_o\ <= NOT \instr[1]~input_o\;
\ALT_INV_fromData[15]~input_o\ <= NOT \fromData[15]~input_o\;
\ALT_INV_fromData[14]~input_o\ <= NOT \fromData[14]~input_o\;
\ALT_INV_fromData[13]~input_o\ <= NOT \fromData[13]~input_o\;
\ALT_INV_fromData[12]~input_o\ <= NOT \fromData[12]~input_o\;
\ALT_INV_fromData[11]~input_o\ <= NOT \fromData[11]~input_o\;
\ALT_INV_fromData[10]~input_o\ <= NOT \fromData[10]~input_o\;
\ALT_INV_fromData[9]~input_o\ <= NOT \fromData[9]~input_o\;
\ALT_INV_fromData[8]~input_o\ <= NOT \fromData[8]~input_o\;
\ALT_INV_fromData[7]~input_o\ <= NOT \fromData[7]~input_o\;
\ALT_INV_fromData[6]~input_o\ <= NOT \fromData[6]~input_o\;
\ALT_INV_fromData[5]~input_o\ <= NOT \fromData[5]~input_o\;
\ALT_INV_fromData[4]~input_o\ <= NOT \fromData[4]~input_o\;
\ALT_INV_fromData[3]~input_o\ <= NOT \fromData[3]~input_o\;
\ALT_INV_fromData[2]~input_o\ <= NOT \fromData[2]~input_o\;
\ALT_INV_fromData[1]~input_o\ <= NOT \fromData[1]~input_o\;
\ALT_INV_fromData[0]~input_o\ <= NOT \fromData[0]~input_o\;
\ALT_INV_instr[15]~input_o\ <= NOT \instr[15]~input_o\;
\ALT_INV_instr[14]~input_o\ <= NOT \instr[14]~input_o\;
\ALT_INV_instr[13]~input_o\ <= NOT \instr[13]~input_o\;
\ALT_INV_instr[12]~input_o\ <= NOT \instr[12]~input_o\;
\ALT_INV_clock~input_o\ <= NOT \clock~input_o\;
\IFIDREG|ALT_INV_outInstruction\(5) <= NOT \IFIDREG|outInstruction\(5);
\IFIDREG|ALT_INV_outInstruction\(4) <= NOT \IFIDREG|outInstruction\(4);
\IFIDREG|ALT_INV_outInstruction\(3) <= NOT \IFIDREG|outInstruction\(3);
\IFIDREG|ALT_INV_outInstruction\(8) <= NOT \IFIDREG|outInstruction\(8);
\IFIDREG|ALT_INV_outInstruction\(7) <= NOT \IFIDREG|outInstruction\(7);
\IFIDREG|ALT_INV_outInstruction\(6) <= NOT \IFIDREG|outInstruction\(6);
\IFIDREG|ALT_INV_outInstruction\(11) <= NOT \IFIDREG|outInstruction\(11);
\IFIDREG|ALT_INV_outInstruction\(10) <= NOT \IFIDREG|outInstruction\(10);
\IFIDREG|ALT_INV_outInstruction\(9) <= NOT \IFIDREG|outInstruction\(9);
\IFIDREG|ALT_INV_outInstruction\(2) <= NOT \IFIDREG|outInstruction\(2);
\IFIDREG|ALT_INV_outInstruction\(0) <= NOT \IFIDREG|outInstruction\(0);
\IFIDREG|ALT_INV_outInstruction\(15) <= NOT \IFIDREG|outInstruction\(15);
\IFIDREG|ALT_INV_outInstruction\(14) <= NOT \IFIDREG|outInstruction\(14);
\IFIDREG|ALT_INV_outInstruction\(12) <= NOT \IFIDREG|outInstruction\(12);
\IFIDREG|ALT_INV_outInstruction\(1) <= NOT \IFIDREG|outInstruction\(1);
\IFIDREG|ALT_INV_outInstruction\(13) <= NOT \IFIDREG|outInstruction\(13);
\IFIDREG|ALT_INV_outPC\(15) <= NOT \IFIDREG|outPC\(15);
\IFIDREG|ALT_INV_outPC\(14) <= NOT \IFIDREG|outPC\(14);
\IFIDREG|ALT_INV_outPC\(13) <= NOT \IFIDREG|outPC\(13);
\IFIDREG|ALT_INV_outPC\(12) <= NOT \IFIDREG|outPC\(12);
\IFIDREG|ALT_INV_outPC\(11) <= NOT \IFIDREG|outPC\(11);
\IFIDREG|ALT_INV_outPC\(10) <= NOT \IFIDREG|outPC\(10);
\IFIDREG|ALT_INV_outPC\(9) <= NOT \IFIDREG|outPC\(9);
\IFIDREG|ALT_INV_outPC\(8) <= NOT \IFIDREG|outPC\(8);
\IFIDREG|ALT_INV_outPC\(7) <= NOT \IFIDREG|outPC\(7);
\IFIDREG|ALT_INV_outPC\(6) <= NOT \IFIDREG|outPC\(6);
\IFIDREG|ALT_INV_outPC\(5) <= NOT \IFIDREG|outPC\(5);
\IFIDREG|ALT_INV_outPC\(4) <= NOT \IFIDREG|outPC\(4);
\IFIDREG|ALT_INV_outPC\(3) <= NOT \IFIDREG|outPC\(3);
\IFIDREG|ALT_INV_outPC\(2) <= NOT \IFIDREG|outPC\(2);
\IFIDREG|ALT_INV_outPC\(1) <= NOT \IFIDREG|outPC\(1);
\IFIDREG|ALT_INV_outPC\(0) <= NOT \IFIDREG|outPC\(0);
\ALU16|V4|v12|ALT_INV_Q~5_combout\ <= NOT \ALU16|V4|v12|Q~5_combout\;
\ALU16|V4|v12|ALT_INV_Q~4_combout\ <= NOT \ALU16|V4|v12|Q~4_combout\;
\ALU16|V2|v12|ALT_INV_Q~3_combout\ <= NOT \ALU16|V2|v12|Q~3_combout\;
\ALU16|V1|v12|ALT_INV_Q~5_combout\ <= NOT \ALU16|V1|v12|Q~5_combout\;
\ALU16|V14|v12|ALT_INV_Q~3_combout\ <= NOT \ALU16|V14|v12|Q~3_combout\;
\ALU16|V14|v12|ALT_INV_Q~2_combout\ <= NOT \ALU16|V14|v12|Q~2_combout\;
\ALU16|V13|v12|ALT_INV_Q~3_combout\ <= NOT \ALU16|V13|v12|Q~3_combout\;
\ALU16|V1|v12|ALT_INV_Q~4_combout\ <= NOT \ALU16|V1|v12|Q~4_combout\;
\ALUInput1Mux|v3|v1|ALT_INV_Q~2_combout\ <= NOT \ALUInput1Mux|v3|v1|Q~2_combout\;
\IFIDREG|ALT_INV_outInstruction[5]~15_combout\ <= NOT \IFIDREG|outInstruction[5]~15_combout\;
\IFIDREG|ALT_INV_outInstruction[4]~14_combout\ <= NOT \IFIDREG|outInstruction[4]~14_combout\;
\IFIDREG|ALT_INV_outInstruction[3]~13_combout\ <= NOT \IFIDREG|outInstruction[3]~13_combout\;
\IFIDREG|ALT_INV_outInstruction[8]~12_combout\ <= NOT \IFIDREG|outInstruction[8]~12_combout\;
\IFIDREG|ALT_INV_outInstruction[7]~11_combout\ <= NOT \IFIDREG|outInstruction[7]~11_combout\;
\IFIDREG|ALT_INV_outInstruction[6]~10_combout\ <= NOT \IFIDREG|outInstruction[6]~10_combout\;
\IFIDREG|ALT_INV_outInstruction[11]~9_combout\ <= NOT \IFIDREG|outInstruction[11]~9_combout\;
\IFIDREG|ALT_INV_outInstruction[10]~8_combout\ <= NOT \IFIDREG|outInstruction[10]~8_combout\;
\IFIDREG|ALT_INV_outInstruction[9]~7_combout\ <= NOT \IFIDREG|outInstruction[9]~7_combout\;
\Hazard|ALT_INV_process_0~1_combout\ <= NOT \Hazard|process_0~1_combout\;
\IFIDREG|ALT_INV_outInstruction[2]~6_combout\ <= NOT \IFIDREG|outInstruction[2]~6_combout\;
\IFIDREG|ALT_INV_outInstruction[0]~5_combout\ <= NOT \IFIDREG|outInstruction[0]~5_combout\;
\IFIDREG|ALT_INV_outInstruction[15]~4_combout\ <= NOT \IFIDREG|outInstruction[15]~4_combout\;
\IFIDREG|ALT_INV_outInstruction[14]~3_combout\ <= NOT \IFIDREG|outInstruction[14]~3_combout\;
\IFIDREG|ALT_INV_outInstruction[12]~2_combout\ <= NOT \IFIDREG|outInstruction[12]~2_combout\;
\IFIDREG|ALT_INV_outInstruction[1]~1_combout\ <= NOT \IFIDREG|outInstruction[1]~1_combout\;
\IFIDREG|ALT_INV_outInstruction[13]~0_combout\ <= NOT \IFIDREG|outInstruction[13]~0_combout\;
\Controller|ALT_INV_isJType~0_combout\ <= NOT \Controller|isJType~0_combout\;
\RegisterFile|read_mux2|v6|v3|v15|ALT_INV_Q~0_combout\ <= NOT \RegisterFile|read_mux2|v6|v3|v15|Q~0_combout\;
\RegisterFile|read_mux1|v6|v3|v15|ALT_INV_Q~0_combout\ <= NOT \RegisterFile|read_mux1|v6|v3|v15|Q~0_combout\;
\IFIDREG|ALT_INV_outPC[15]~16_combout\ <= NOT \IFIDREG|outPC[15]~16_combout\;
\RegisterFile|read_mux1|v6|v3|v14|ALT_INV_Q~0_combout\ <= NOT \RegisterFile|read_mux1|v6|v3|v14|Q~0_combout\;
\IFIDREG|ALT_INV_outPC[14]~15_combout\ <= NOT \IFIDREG|outPC[14]~15_combout\;
\RegisterFile|read_mux2|v6|v3|v14|ALT_INV_Q~0_combout\ <= NOT \RegisterFile|read_mux2|v6|v3|v14|Q~0_combout\;
\RegisterFile|read_mux1|v6|v3|v13|ALT_INV_Q~0_combout\ <= NOT \RegisterFile|read_mux1|v6|v3|v13|Q~0_combout\;
\IFIDREG|ALT_INV_outPC[13]~14_combout\ <= NOT \IFIDREG|outPC[13]~14_combout\;
\RegisterFile|read_mux2|v6|v3|v13|ALT_INV_Q~0_combout\ <= NOT \RegisterFile|read_mux2|v6|v3|v13|Q~0_combout\;
\RegisterFile|read_mux2|v6|v3|v12|ALT_INV_Q~0_combout\ <= NOT \RegisterFile|read_mux2|v6|v3|v12|Q~0_combout\;
\RegisterFile|read_mux1|v6|v3|v12|ALT_INV_Q~0_combout\ <= NOT \RegisterFile|read_mux1|v6|v3|v12|Q~0_combout\;
\IFIDREG|ALT_INV_outPC[12]~13_combout\ <= NOT \IFIDREG|outPC[12]~13_combout\;
\RegisterFile|read_mux2|v6|v3|v11|ALT_INV_Q~0_combout\ <= NOT \RegisterFile|read_mux2|v6|v3|v11|Q~0_combout\;
\RegisterFile|read_mux1|v6|v3|v11|ALT_INV_Q~0_combout\ <= NOT \RegisterFile|read_mux1|v6|v3|v11|Q~0_combout\;
\IFIDREG|ALT_INV_outPC[11]~12_combout\ <= NOT \IFIDREG|outPC[11]~12_combout\;
\RegisterFile|read_mux2|v6|v3|v10|ALT_INV_Q~0_combout\ <= NOT \RegisterFile|read_mux2|v6|v3|v10|Q~0_combout\;
\RegisterFile|read_mux1|v6|v3|v10|ALT_INV_Q~0_combout\ <= NOT \RegisterFile|read_mux1|v6|v3|v10|Q~0_combout\;
\IFIDREG|ALT_INV_outPC[10]~11_combout\ <= NOT \IFIDREG|outPC[10]~11_combout\;
\RegisterFile|read_mux2|v6|v3|v9|ALT_INV_Q~0_combout\ <= NOT \RegisterFile|read_mux2|v6|v3|v9|Q~0_combout\;
\RegisterFile|read_mux1|v6|v3|v9|ALT_INV_Q~0_combout\ <= NOT \RegisterFile|read_mux1|v6|v3|v9|Q~0_combout\;
\IFIDREG|ALT_INV_outPC[9]~10_combout\ <= NOT \IFIDREG|outPC[9]~10_combout\;
\RegisterFile|read_mux2|v6|v3|v8|ALT_INV_Q~0_combout\ <= NOT \RegisterFile|read_mux2|v6|v3|v8|Q~0_combout\;
\RegisterFile|read_mux1|v6|v3|v8|ALT_INV_Q~0_combout\ <= NOT \RegisterFile|read_mux1|v6|v3|v8|Q~0_combout\;
\IFIDREG|ALT_INV_outPC[8]~9_combout\ <= NOT \IFIDREG|outPC[8]~9_combout\;
\RegisterFile|read_mux2|v6|v3|v7|ALT_INV_Q~0_combout\ <= NOT \RegisterFile|read_mux2|v6|v3|v7|Q~0_combout\;
\RegisterFile|read_mux1|v6|v3|v7|ALT_INV_Q~0_combout\ <= NOT \RegisterFile|read_mux1|v6|v3|v7|Q~0_combout\;
\IFIDREG|ALT_INV_outPC[7]~8_combout\ <= NOT \IFIDREG|outPC[7]~8_combout\;
\RegisterFile|read_mux2|v6|v3|v6|ALT_INV_Q~0_combout\ <= NOT \RegisterFile|read_mux2|v6|v3|v6|Q~0_combout\;
\RegisterFile|read_mux1|v6|v3|v6|ALT_INV_Q~0_combout\ <= NOT \RegisterFile|read_mux1|v6|v3|v6|Q~0_combout\;
\IFIDREG|ALT_INV_outPC[6]~7_combout\ <= NOT \IFIDREG|outPC[6]~7_combout\;
\RegisterFile|read_mux1|v6|v3|v5|ALT_INV_Q~0_combout\ <= NOT \RegisterFile|read_mux1|v6|v3|v5|Q~0_combout\;
\IFIDREG|ALT_INV_outPC[5]~6_combout\ <= NOT \IFIDREG|outPC[5]~6_combout\;
\RegisterFile|read_mux2|v6|v3|v5|ALT_INV_Q~0_combout\ <= NOT \RegisterFile|read_mux2|v6|v3|v5|Q~0_combout\;
\IFIDREG|ALT_INV_outPC[4]~5_combout\ <= NOT \IFIDREG|outPC[4]~5_combout\;
\RegisterFile|read_mux1|v6|v3|v4|ALT_INV_Q~0_combout\ <= NOT \RegisterFile|read_mux1|v6|v3|v4|Q~0_combout\;
\RegisterFile|read_mux2|v6|v3|v4|ALT_INV_Q~0_combout\ <= NOT \RegisterFile|read_mux2|v6|v3|v4|Q~0_combout\;
\IFIDREG|ALT_INV_outPC[3]~4_combout\ <= NOT \IFIDREG|outPC[3]~4_combout\;
\RegisterFile|read_mux1|v6|v3|v3|ALT_INV_Q~0_combout\ <= NOT \RegisterFile|read_mux1|v6|v3|v3|Q~0_combout\;
\RegisterFile|read_mux2|v6|v3|v3|ALT_INV_Q~0_combout\ <= NOT \RegisterFile|read_mux2|v6|v3|v3|Q~0_combout\;
\RegisterFile|read_mux1|v6|v3|v2|ALT_INV_Q~0_combout\ <= NOT \RegisterFile|read_mux1|v6|v3|v2|Q~0_combout\;
\IFIDREG|ALT_INV_outPC[2]~3_combout\ <= NOT \IFIDREG|outPC[2]~3_combout\;
\RegisterFile|read_mux2|v6|v3|v2|ALT_INV_Q~0_combout\ <= NOT \RegisterFile|read_mux2|v6|v3|v2|Q~0_combout\;
\RegisterFile|read_mux1|v6|v3|v1|ALT_INV_Q~0_combout\ <= NOT \RegisterFile|read_mux1|v6|v3|v1|Q~0_combout\;
\IFIDREG|ALT_INV_outPC[1]~2_combout\ <= NOT \IFIDREG|outPC[1]~2_combout\;
\RegisterFile|read_mux2|v6|v3|v1|ALT_INV_Q~0_combout\ <= NOT \RegisterFile|read_mux2|v6|v3|v1|Q~0_combout\;
\RegisterFile|read_mux2|v6|v3|v0|ALT_INV_Q~0_combout\ <= NOT \RegisterFile|read_mux2|v6|v3|v0|Q~0_combout\;
\RegisterFile|read_mux1|v6|v3|v0|ALT_INV_Q~0_combout\ <= NOT \RegisterFile|read_mux1|v6|v3|v0|Q~0_combout\;
\EXMEMREG|ALT_INV_isLW_EXMEM~q\ <= NOT \EXMEMREG|isLW_EXMEM~q\;
\Controller|ALT_INV_isRType~0_combout\ <= NOT \Controller|isRType~0_combout\;
\IFIDREG|ALT_INV_outPC[15]~1_combout\ <= NOT \IFIDREG|outPC[15]~1_combout\;
\IFIDREG|ALT_INV_outPC[0]~0_combout\ <= NOT \IFIDREG|outPC[0]~0_combout\;
\PC|gen_register:15:vff|ALT_INV_O~q\ <= NOT \PC|gen_register:15:vff|O~q\;
\PC|gen_register:14:vff|ALT_INV_O~q\ <= NOT \PC|gen_register:14:vff|O~q\;
\PC|gen_register:13:vff|ALT_INV_O~q\ <= NOT \PC|gen_register:13:vff|O~q\;
\PC|gen_register:12:vff|ALT_INV_O~q\ <= NOT \PC|gen_register:12:vff|O~q\;
\RegisterFile|reg7|gen_register:15:vff|ALT_INV_O~q\ <= NOT \RegisterFile|reg7|gen_register:15:vff|O~q\;
\RegisterFile|reg7|gen_register:14:vff|ALT_INV_O~q\ <= NOT \RegisterFile|reg7|gen_register:14:vff|O~q\;
\RegisterFile|reg7|gen_register:13:vff|ALT_INV_O~q\ <= NOT \RegisterFile|reg7|gen_register:13:vff|O~q\;
\RegisterFile|reg7|gen_register:12:vff|ALT_INV_O~q\ <= NOT \RegisterFile|reg7|gen_register:12:vff|O~q\;
\RegisterFile|reg7|gen_register:11:vff|ALT_INV_O~q\ <= NOT \RegisterFile|reg7|gen_register:11:vff|O~q\;
\RegisterFile|reg7|gen_register:10:vff|ALT_INV_O~q\ <= NOT \RegisterFile|reg7|gen_register:10:vff|O~q\;
\RegisterFile|reg7|gen_register:9:vff|ALT_INV_O~q\ <= NOT \RegisterFile|reg7|gen_register:9:vff|O~q\;
\RegisterFile|reg7|gen_register:8:vff|ALT_INV_O~q\ <= NOT \RegisterFile|reg7|gen_register:8:vff|O~q\;
\RegisterFile|reg7|gen_register:7:vff|ALT_INV_O~q\ <= NOT \RegisterFile|reg7|gen_register:7:vff|O~q\;
\RegisterFile|reg7|gen_register:6:vff|ALT_INV_O~q\ <= NOT \RegisterFile|reg7|gen_register:6:vff|O~q\;
\RegisterFile|reg7|gen_register:5:vff|ALT_INV_O~q\ <= NOT \RegisterFile|reg7|gen_register:5:vff|O~q\;
\RegisterFile|reg7|gen_register:4:vff|ALT_INV_O~q\ <= NOT \RegisterFile|reg7|gen_register:4:vff|O~q\;
\RegisterFile|reg7|gen_register:3:vff|ALT_INV_O~q\ <= NOT \RegisterFile|reg7|gen_register:3:vff|O~q\;
\RegisterFile|reg7|gen_register:2:vff|ALT_INV_O~q\ <= NOT \RegisterFile|reg7|gen_register:2:vff|O~q\;
\RegisterFile|reg7|gen_register:1:vff|ALT_INV_O~q\ <= NOT \RegisterFile|reg7|gen_register:1:vff|O~q\;
\RegisterFile|reg7|gen_register:0:vff|ALT_INV_O~q\ <= NOT \RegisterFile|reg7|gen_register:0:vff|O~q\;
\RegisterFile|reg6|gen_register:15:vff|ALT_INV_O~q\ <= NOT \RegisterFile|reg6|gen_register:15:vff|O~q\;
\RegisterFile|reg6|gen_register:14:vff|ALT_INV_O~q\ <= NOT \RegisterFile|reg6|gen_register:14:vff|O~q\;
\RegisterFile|reg6|gen_register:13:vff|ALT_INV_O~q\ <= NOT \RegisterFile|reg6|gen_register:13:vff|O~q\;
\RegisterFile|reg6|gen_register:12:vff|ALT_INV_O~q\ <= NOT \RegisterFile|reg6|gen_register:12:vff|O~q\;
\RegisterFile|reg6|gen_register:11:vff|ALT_INV_O~q\ <= NOT \RegisterFile|reg6|gen_register:11:vff|O~q\;
\RegisterFile|reg6|gen_register:10:vff|ALT_INV_O~q\ <= NOT \RegisterFile|reg6|gen_register:10:vff|O~q\;
\RegisterFile|reg6|gen_register:9:vff|ALT_INV_O~q\ <= NOT \RegisterFile|reg6|gen_register:9:vff|O~q\;
\RegisterFile|reg6|gen_register:8:vff|ALT_INV_O~q\ <= NOT \RegisterFile|reg6|gen_register:8:vff|O~q\;
\RegisterFile|reg6|gen_register:7:vff|ALT_INV_O~q\ <= NOT \RegisterFile|reg6|gen_register:7:vff|O~q\;
\RegisterFile|reg6|gen_register:6:vff|ALT_INV_O~q\ <= NOT \RegisterFile|reg6|gen_register:6:vff|O~q\;
\RegisterFile|reg6|gen_register:5:vff|ALT_INV_O~q\ <= NOT \RegisterFile|reg6|gen_register:5:vff|O~q\;
\RegisterFile|reg6|gen_register:4:vff|ALT_INV_O~q\ <= NOT \RegisterFile|reg6|gen_register:4:vff|O~q\;
\RegisterFile|reg6|gen_register:3:vff|ALT_INV_O~q\ <= NOT \RegisterFile|reg6|gen_register:3:vff|O~q\;
\RegisterFile|reg6|gen_register:2:vff|ALT_INV_O~q\ <= NOT \RegisterFile|reg6|gen_register:2:vff|O~q\;
\RegisterFile|reg6|gen_register:1:vff|ALT_INV_O~q\ <= NOT \RegisterFile|reg6|gen_register:1:vff|O~q\;
\RegisterFile|reg6|gen_register:0:vff|ALT_INV_O~q\ <= NOT \RegisterFile|reg6|gen_register:0:vff|O~q\;
\RegisterFile|reg5|gen_register:15:vff|ALT_INV_O~q\ <= NOT \RegisterFile|reg5|gen_register:15:vff|O~q\;
\RegisterFile|reg5|gen_register:14:vff|ALT_INV_O~q\ <= NOT \RegisterFile|reg5|gen_register:14:vff|O~q\;
\RegisterFile|reg5|gen_register:13:vff|ALT_INV_O~q\ <= NOT \RegisterFile|reg5|gen_register:13:vff|O~q\;
\RegisterFile|reg5|gen_register:12:vff|ALT_INV_O~q\ <= NOT \RegisterFile|reg5|gen_register:12:vff|O~q\;
\RegisterFile|reg5|gen_register:11:vff|ALT_INV_O~q\ <= NOT \RegisterFile|reg5|gen_register:11:vff|O~q\;
\RegisterFile|reg5|gen_register:10:vff|ALT_INV_O~q\ <= NOT \RegisterFile|reg5|gen_register:10:vff|O~q\;
\RegisterFile|reg5|gen_register:9:vff|ALT_INV_O~q\ <= NOT \RegisterFile|reg5|gen_register:9:vff|O~q\;
\RegisterFile|reg5|gen_register:8:vff|ALT_INV_O~q\ <= NOT \RegisterFile|reg5|gen_register:8:vff|O~q\;
\RegisterFile|reg5|gen_register:7:vff|ALT_INV_O~q\ <= NOT \RegisterFile|reg5|gen_register:7:vff|O~q\;
\RegisterFile|reg5|gen_register:6:vff|ALT_INV_O~q\ <= NOT \RegisterFile|reg5|gen_register:6:vff|O~q\;
\RegisterFile|reg5|gen_register:5:vff|ALT_INV_O~q\ <= NOT \RegisterFile|reg5|gen_register:5:vff|O~q\;
\RegisterFile|reg5|gen_register:4:vff|ALT_INV_O~q\ <= NOT \RegisterFile|reg5|gen_register:4:vff|O~q\;
\RegisterFile|reg5|gen_register:3:vff|ALT_INV_O~q\ <= NOT \RegisterFile|reg5|gen_register:3:vff|O~q\;
\RegisterFile|reg5|gen_register:2:vff|ALT_INV_O~q\ <= NOT \RegisterFile|reg5|gen_register:2:vff|O~q\;
\RegisterFile|reg5|gen_register:1:vff|ALT_INV_O~q\ <= NOT \RegisterFile|reg5|gen_register:1:vff|O~q\;
\RegisterFile|reg5|gen_register:0:vff|ALT_INV_O~q\ <= NOT \RegisterFile|reg5|gen_register:0:vff|O~q\;
\RegisterFile|reg4|gen_register:15:vff|ALT_INV_O~q\ <= NOT \RegisterFile|reg4|gen_register:15:vff|O~q\;
\RegisterFile|reg4|gen_register:14:vff|ALT_INV_O~q\ <= NOT \RegisterFile|reg4|gen_register:14:vff|O~q\;
\RegisterFile|reg4|gen_register:13:vff|ALT_INV_O~q\ <= NOT \RegisterFile|reg4|gen_register:13:vff|O~q\;
\RegisterFile|reg4|gen_register:12:vff|ALT_INV_O~q\ <= NOT \RegisterFile|reg4|gen_register:12:vff|O~q\;
\RegisterFile|reg4|gen_register:11:vff|ALT_INV_O~q\ <= NOT \RegisterFile|reg4|gen_register:11:vff|O~q\;
\RegisterFile|reg4|gen_register:10:vff|ALT_INV_O~q\ <= NOT \RegisterFile|reg4|gen_register:10:vff|O~q\;
\RegisterFile|reg4|gen_register:9:vff|ALT_INV_O~q\ <= NOT \RegisterFile|reg4|gen_register:9:vff|O~q\;
\RegisterFile|reg4|gen_register:8:vff|ALT_INV_O~q\ <= NOT \RegisterFile|reg4|gen_register:8:vff|O~q\;
\RegisterFile|reg4|gen_register:7:vff|ALT_INV_O~q\ <= NOT \RegisterFile|reg4|gen_register:7:vff|O~q\;
\RegisterFile|reg4|gen_register:6:vff|ALT_INV_O~q\ <= NOT \RegisterFile|reg4|gen_register:6:vff|O~q\;
\RegisterFile|reg4|gen_register:5:vff|ALT_INV_O~q\ <= NOT \RegisterFile|reg4|gen_register:5:vff|O~q\;
\RegisterFile|reg4|gen_register:4:vff|ALT_INV_O~q\ <= NOT \RegisterFile|reg4|gen_register:4:vff|O~q\;
\RegisterFile|reg4|gen_register:3:vff|ALT_INV_O~q\ <= NOT \RegisterFile|reg4|gen_register:3:vff|O~q\;
\RegisterFile|reg4|gen_register:2:vff|ALT_INV_O~q\ <= NOT \RegisterFile|reg4|gen_register:2:vff|O~q\;
\RegisterFile|reg4|gen_register:1:vff|ALT_INV_O~q\ <= NOT \RegisterFile|reg4|gen_register:1:vff|O~q\;
\RegisterFile|reg4|gen_register:0:vff|ALT_INV_O~q\ <= NOT \RegisterFile|reg4|gen_register:0:vff|O~q\;
\RegisterFile|reg3|gen_register:15:vff|ALT_INV_O~q\ <= NOT \RegisterFile|reg3|gen_register:15:vff|O~q\;
\RegisterFile|reg3|gen_register:14:vff|ALT_INV_O~q\ <= NOT \RegisterFile|reg3|gen_register:14:vff|O~q\;
\RegisterFile|reg3|gen_register:13:vff|ALT_INV_O~q\ <= NOT \RegisterFile|reg3|gen_register:13:vff|O~q\;
\RegisterFile|reg3|gen_register:12:vff|ALT_INV_O~q\ <= NOT \RegisterFile|reg3|gen_register:12:vff|O~q\;
\RegisterFile|reg3|gen_register:11:vff|ALT_INV_O~q\ <= NOT \RegisterFile|reg3|gen_register:11:vff|O~q\;
\RegisterFile|reg3|gen_register:10:vff|ALT_INV_O~q\ <= NOT \RegisterFile|reg3|gen_register:10:vff|O~q\;
\RegisterFile|reg3|gen_register:9:vff|ALT_INV_O~q\ <= NOT \RegisterFile|reg3|gen_register:9:vff|O~q\;
\RegisterFile|reg3|gen_register:8:vff|ALT_INV_O~q\ <= NOT \RegisterFile|reg3|gen_register:8:vff|O~q\;
\RegisterFile|reg3|gen_register:7:vff|ALT_INV_O~q\ <= NOT \RegisterFile|reg3|gen_register:7:vff|O~q\;
\RegisterFile|reg3|gen_register:6:vff|ALT_INV_O~q\ <= NOT \RegisterFile|reg3|gen_register:6:vff|O~q\;
\RegisterFile|reg3|gen_register:5:vff|ALT_INV_O~q\ <= NOT \RegisterFile|reg3|gen_register:5:vff|O~q\;
\RegisterFile|reg3|gen_register:4:vff|ALT_INV_O~q\ <= NOT \RegisterFile|reg3|gen_register:4:vff|O~q\;
\RegisterFile|reg3|gen_register:3:vff|ALT_INV_O~q\ <= NOT \RegisterFile|reg3|gen_register:3:vff|O~q\;
\RegisterFile|reg3|gen_register:2:vff|ALT_INV_O~q\ <= NOT \RegisterFile|reg3|gen_register:2:vff|O~q\;
\RegisterFile|reg3|gen_register:1:vff|ALT_INV_O~q\ <= NOT \RegisterFile|reg3|gen_register:1:vff|O~q\;
\RegisterFile|reg3|gen_register:0:vff|ALT_INV_O~q\ <= NOT \RegisterFile|reg3|gen_register:0:vff|O~q\;
\RegisterFile|reg2|gen_register:15:vff|ALT_INV_O~q\ <= NOT \RegisterFile|reg2|gen_register:15:vff|O~q\;
\RegisterFile|reg2|gen_register:14:vff|ALT_INV_O~q\ <= NOT \RegisterFile|reg2|gen_register:14:vff|O~q\;
\RegisterFile|reg2|gen_register:13:vff|ALT_INV_O~q\ <= NOT \RegisterFile|reg2|gen_register:13:vff|O~q\;
\RegisterFile|reg2|gen_register:12:vff|ALT_INV_O~q\ <= NOT \RegisterFile|reg2|gen_register:12:vff|O~q\;
\RegisterFile|reg2|gen_register:11:vff|ALT_INV_O~q\ <= NOT \RegisterFile|reg2|gen_register:11:vff|O~q\;
\RegisterFile|reg2|gen_register:10:vff|ALT_INV_O~q\ <= NOT \RegisterFile|reg2|gen_register:10:vff|O~q\;
\RegisterFile|reg2|gen_register:9:vff|ALT_INV_O~q\ <= NOT \RegisterFile|reg2|gen_register:9:vff|O~q\;
\RegisterFile|reg2|gen_register:8:vff|ALT_INV_O~q\ <= NOT \RegisterFile|reg2|gen_register:8:vff|O~q\;
\RegisterFile|reg2|gen_register:7:vff|ALT_INV_O~q\ <= NOT \RegisterFile|reg2|gen_register:7:vff|O~q\;
\RegisterFile|reg2|gen_register:6:vff|ALT_INV_O~q\ <= NOT \RegisterFile|reg2|gen_register:6:vff|O~q\;
\RegisterFile|reg2|gen_register:5:vff|ALT_INV_O~q\ <= NOT \RegisterFile|reg2|gen_register:5:vff|O~q\;
\RegisterFile|reg2|gen_register:4:vff|ALT_INV_O~q\ <= NOT \RegisterFile|reg2|gen_register:4:vff|O~q\;
\RegisterFile|reg2|gen_register:3:vff|ALT_INV_O~q\ <= NOT \RegisterFile|reg2|gen_register:3:vff|O~q\;
\RegisterFile|reg2|gen_register:2:vff|ALT_INV_O~q\ <= NOT \RegisterFile|reg2|gen_register:2:vff|O~q\;
\RegisterFile|reg2|gen_register:1:vff|ALT_INV_O~q\ <= NOT \RegisterFile|reg2|gen_register:1:vff|O~q\;
\RegisterFile|reg2|gen_register:0:vff|ALT_INV_O~q\ <= NOT \RegisterFile|reg2|gen_register:0:vff|O~q\;
\RegisterFile|reg1|gen_register:15:vff|ALT_INV_O~q\ <= NOT \RegisterFile|reg1|gen_register:15:vff|O~q\;
\RegisterFile|reg1|gen_register:14:vff|ALT_INV_O~q\ <= NOT \RegisterFile|reg1|gen_register:14:vff|O~q\;
\RegisterFile|reg1|gen_register:13:vff|ALT_INV_O~q\ <= NOT \RegisterFile|reg1|gen_register:13:vff|O~q\;
\RegisterFile|reg1|gen_register:12:vff|ALT_INV_O~q\ <= NOT \RegisterFile|reg1|gen_register:12:vff|O~q\;
\RegisterFile|reg1|gen_register:11:vff|ALT_INV_O~q\ <= NOT \RegisterFile|reg1|gen_register:11:vff|O~q\;
\RegisterFile|reg1|gen_register:10:vff|ALT_INV_O~q\ <= NOT \RegisterFile|reg1|gen_register:10:vff|O~q\;
\RegisterFile|reg1|gen_register:9:vff|ALT_INV_O~q\ <= NOT \RegisterFile|reg1|gen_register:9:vff|O~q\;
\RegisterFile|reg1|gen_register:8:vff|ALT_INV_O~q\ <= NOT \RegisterFile|reg1|gen_register:8:vff|O~q\;
\RegisterFile|reg1|gen_register:7:vff|ALT_INV_O~q\ <= NOT \RegisterFile|reg1|gen_register:7:vff|O~q\;
\RegisterFile|reg1|gen_register:6:vff|ALT_INV_O~q\ <= NOT \RegisterFile|reg1|gen_register:6:vff|O~q\;
\RegisterFile|reg1|gen_register:5:vff|ALT_INV_O~q\ <= NOT \RegisterFile|reg1|gen_register:5:vff|O~q\;
\RegisterFile|reg1|gen_register:4:vff|ALT_INV_O~q\ <= NOT \RegisterFile|reg1|gen_register:4:vff|O~q\;
\RegisterFile|reg1|gen_register:3:vff|ALT_INV_O~q\ <= NOT \RegisterFile|reg1|gen_register:3:vff|O~q\;
\RegisterFile|reg1|gen_register:2:vff|ALT_INV_O~q\ <= NOT \RegisterFile|reg1|gen_register:2:vff|O~q\;
\RegisterFile|reg1|gen_register:1:vff|ALT_INV_O~q\ <= NOT \RegisterFile|reg1|gen_register:1:vff|O~q\;
\RegisterFile|reg1|gen_register:0:vff|ALT_INV_O~q\ <= NOT \RegisterFile|reg1|gen_register:0:vff|O~q\;
\ALU16|V15|v9|V4|v3|ALT_INV_Q~0_combout\ <= NOT \ALU16|V15|v9|V4|v3|Q~0_combout\;
\ALU16|V14|v12|ALT_INV_Q~1_combout\ <= NOT \ALU16|V14|v12|Q~1_combout\;
\ALU16|V14|v12|ALT_INV_Q~0_combout\ <= NOT \ALU16|V14|v12|Q~0_combout\;
\ALU16|V15|v0|v1|v3|ALT_INV_Q~0_combout\ <= NOT \ALU16|V15|v0|v1|v3|Q~0_combout\;
\ALUInput2Mux|v3|v15|ALT_INV_Q~1_combout\ <= NOT \ALUInput2Mux|v3|v15|Q~1_combout\;
\ALUInput2Mux|v3|v15|ALT_INV_Q~0_combout\ <= NOT \ALUInput2Mux|v3|v15|Q~0_combout\;
\IDEXREG|ALT_INV_R2Reg_IDEX\(15) <= NOT \IDEXREG|R2Reg_IDEX\(15);
\IDEXREG|ALT_INV_R1Reg_IDEX\(15) <= NOT \IDEXREG|R1Reg_IDEX\(15);
\ALU16|V13|v12|ALT_INV_Q~2_combout\ <= NOT \ALU16|V13|v12|Q~2_combout\;
\ALU16|V13|v12|ALT_INV_Q~1_combout\ <= NOT \ALU16|V13|v12|Q~1_combout\;
\ALU16|V13|v12|ALT_INV_Q~0_combout\ <= NOT \ALU16|V13|v12|Q~0_combout\;
\IDEXREG|ALT_INV_R1Reg_IDEX\(14) <= NOT \IDEXREG|R1Reg_IDEX\(14);
\ALUInput2Mux|v3|v14|ALT_INV_Q~1_combout\ <= NOT \ALUInput2Mux|v3|v14|Q~1_combout\;
\ALUInput2Mux|v3|v14|ALT_INV_Q~0_combout\ <= NOT \ALUInput2Mux|v3|v14|Q~0_combout\;
\IDEXREG|ALT_INV_R2Reg_IDEX\(14) <= NOT \IDEXREG|R2Reg_IDEX\(14);
\ALU16|V12|v12|ALT_INV_Q~2_combout\ <= NOT \ALU16|V12|v12|Q~2_combout\;
\ALU16|V12|v12|ALT_INV_Q~1_combout\ <= NOT \ALU16|V12|v12|Q~1_combout\;
\ALU16|V12|v12|ALT_INV_Q~0_combout\ <= NOT \ALU16|V12|v12|Q~0_combout\;
\IDEXREG|ALT_INV_R1Reg_IDEX\(13) <= NOT \IDEXREG|R1Reg_IDEX\(13);
\ALUInput2Mux|v3|v13|ALT_INV_Q~1_combout\ <= NOT \ALUInput2Mux|v3|v13|Q~1_combout\;
\ALUInput2Mux|v3|v13|ALT_INV_Q~0_combout\ <= NOT \ALUInput2Mux|v3|v13|Q~0_combout\;
\IDEXREG|ALT_INV_R2Reg_IDEX\(13) <= NOT \IDEXREG|R2Reg_IDEX\(13);
\ALU16|V11|v12|ALT_INV_Q~2_combout\ <= NOT \ALU16|V11|v12|Q~2_combout\;
\ALU16|V11|v12|ALT_INV_Q~1_combout\ <= NOT \ALU16|V11|v12|Q~1_combout\;
\ALU16|V11|v12|ALT_INV_Q~0_combout\ <= NOT \ALU16|V11|v12|Q~0_combout\;
\ALU16|V10|v12|ALT_INV_Q~3_combout\ <= NOT \ALU16|V10|v12|Q~3_combout\;
\ALUInput2Mux|v3|v12|ALT_INV_Q~5_combout\ <= NOT \ALUInput2Mux|v3|v12|Q~5_combout\;
\ALUInput2Mux|v3|v12|ALT_INV_Q~4_combout\ <= NOT \ALUInput2Mux|v3|v12|Q~4_combout\;
\IDEXREG|ALT_INV_R2Reg_IDEX\(12) <= NOT \IDEXREG|R2Reg_IDEX\(12);
\IDEXREG|ALT_INV_R1Reg_IDEX\(12) <= NOT \IDEXREG|R1Reg_IDEX\(12);
\ALU16|V10|v12|ALT_INV_Q~2_combout\ <= NOT \ALU16|V10|v12|Q~2_combout\;
\ALU16|V10|v12|ALT_INV_Q~1_combout\ <= NOT \ALU16|V10|v12|Q~1_combout\;
\ALU16|V10|v12|ALT_INV_Q~0_combout\ <= NOT \ALU16|V10|v12|Q~0_combout\;
\ALUInput2Mux|v3|v11|ALT_INV_Q~1_combout\ <= NOT \ALUInput2Mux|v3|v11|Q~1_combout\;
\ALUInput2Mux|v3|v11|ALT_INV_Q~0_combout\ <= NOT \ALUInput2Mux|v3|v11|Q~0_combout\;
\IDEXREG|ALT_INV_R2Reg_IDEX\(11) <= NOT \IDEXREG|R2Reg_IDEX\(11);
\IDEXREG|ALT_INV_R1Reg_IDEX\(11) <= NOT \IDEXREG|R1Reg_IDEX\(11);
\ALU16|V9|v12|ALT_INV_Q~2_combout\ <= NOT \ALU16|V9|v12|Q~2_combout\;
\ALU16|V9|v12|ALT_INV_Q~1_combout\ <= NOT \ALU16|V9|v12|Q~1_combout\;
\ALU16|V9|v12|ALT_INV_Q~0_combout\ <= NOT \ALU16|V9|v12|Q~0_combout\;
\ALU16|V8|v12|ALT_INV_Q~3_combout\ <= NOT \ALU16|V8|v12|Q~3_combout\;
\ALUInput2Mux|v3|v10|ALT_INV_Q~1_combout\ <= NOT \ALUInput2Mux|v3|v10|Q~1_combout\;
\ALUInput2Mux|v3|v10|ALT_INV_Q~0_combout\ <= NOT \ALUInput2Mux|v3|v10|Q~0_combout\;
\IDEXREG|ALT_INV_R2Reg_IDEX\(10) <= NOT \IDEXREG|R2Reg_IDEX\(10);
\ALUInput1Mux|v3|v10|ALT_INV_Q~1_combout\ <= NOT \ALUInput1Mux|v3|v10|Q~1_combout\;
\ALUInput1Mux|v3|v10|ALT_INV_Q~0_combout\ <= NOT \ALUInput1Mux|v3|v10|Q~0_combout\;
\IDEXREG|ALT_INV_R1Reg_IDEX\(10) <= NOT \IDEXREG|R1Reg_IDEX\(10);
\ALU16|V8|v12|ALT_INV_Q~2_combout\ <= NOT \ALU16|V8|v12|Q~2_combout\;
\ALU16|V8|v12|ALT_INV_Q~1_combout\ <= NOT \ALU16|V8|v12|Q~1_combout\;
\ALU16|V8|v12|ALT_INV_Q~0_combout\ <= NOT \ALU16|V8|v12|Q~0_combout\;
\ALUInput2Mux|v3|v9|ALT_INV_Q~1_combout\ <= NOT \ALUInput2Mux|v3|v9|Q~1_combout\;
\ALUInput2Mux|v3|v9|ALT_INV_Q~0_combout\ <= NOT \ALUInput2Mux|v3|v9|Q~0_combout\;
\IDEXREG|ALT_INV_R2Reg_IDEX\(9) <= NOT \IDEXREG|R2Reg_IDEX\(9);
\ALUInput1Mux|v3|v9|ALT_INV_Q~2_combout\ <= NOT \ALUInput1Mux|v3|v9|Q~2_combout\;
\ALUInput1Mux|v3|v9|ALT_INV_Q~1_combout\ <= NOT \ALUInput1Mux|v3|v9|Q~1_combout\;
\IDEXREG|ALT_INV_R1Reg_IDEX\(9) <= NOT \IDEXREG|R1Reg_IDEX\(9);
\ALUInput1Mux|v3|v9|ALT_INV_Q~0_combout\ <= NOT \ALUInput1Mux|v3|v9|Q~0_combout\;
\ALU16|V7|v12|ALT_INV_Q~2_combout\ <= NOT \ALU16|V7|v12|Q~2_combout\;
\ALU16|V7|v12|ALT_INV_Q~1_combout\ <= NOT \ALU16|V7|v12|Q~1_combout\;
\ALU16|V7|v12|ALT_INV_Q~0_combout\ <= NOT \ALU16|V7|v12|Q~0_combout\;
\ALUInput2Mux|v3|v8|ALT_INV_Q~1_combout\ <= NOT \ALUInput2Mux|v3|v8|Q~1_combout\;
\ALUInput2Mux|v3|v8|ALT_INV_Q~0_combout\ <= NOT \ALUInput2Mux|v3|v8|Q~0_combout\;
\IDEXREG|ALT_INV_R2Reg_IDEX\(8) <= NOT \IDEXREG|R2Reg_IDEX\(8);
\ALUInput1Mux|v3|v8|ALT_INV_Q~1_combout\ <= NOT \ALUInput1Mux|v3|v8|Q~1_combout\;
\ALUInput1Mux|v3|v8|ALT_INV_Q~0_combout\ <= NOT \ALUInput1Mux|v3|v8|Q~0_combout\;
\IDEXREG|ALT_INV_R1Reg_IDEX\(8) <= NOT \IDEXREG|R1Reg_IDEX\(8);
\ALU16|V6|v12|ALT_INV_Q~2_combout\ <= NOT \ALU16|V6|v12|Q~2_combout\;
\ALU16|V6|v12|ALT_INV_Q~1_combout\ <= NOT \ALU16|V6|v12|Q~1_combout\;
\ALU16|V6|v12|ALT_INV_Q~0_combout\ <= NOT \ALU16|V6|v12|Q~0_combout\;
\ALUInput2Mux|v3|v7|ALT_INV_Q~1_combout\ <= NOT \ALUInput2Mux|v3|v7|Q~1_combout\;
\ALUInput2Mux|v3|v7|ALT_INV_Q~0_combout\ <= NOT \ALUInput2Mux|v3|v7|Q~0_combout\;
\IDEXREG|ALT_INV_R2Reg_IDEX\(7) <= NOT \IDEXREG|R2Reg_IDEX\(7);
\ALUInput1Mux|v3|v7|ALT_INV_Q~2_combout\ <= NOT \ALUInput1Mux|v3|v7|Q~2_combout\;
\ALUInput1Mux|v3|v7|ALT_INV_Q~1_combout\ <= NOT \ALUInput1Mux|v3|v7|Q~1_combout\;
\IDEXREG|ALT_INV_R1Reg_IDEX\(7) <= NOT \IDEXREG|R1Reg_IDEX\(7);
\ALUInput1Mux|v3|v7|ALT_INV_Q~0_combout\ <= NOT \ALUInput1Mux|v3|v7|Q~0_combout\;
\ALU16|V5|v12|ALT_INV_Q~2_combout\ <= NOT \ALU16|V5|v12|Q~2_combout\;
\ALU16|V5|v12|ALT_INV_Q~1_combout\ <= NOT \ALU16|V5|v12|Q~1_combout\;
\ALU16|V5|v12|ALT_INV_Q~0_combout\ <= NOT \ALU16|V5|v12|Q~0_combout\;
\ALUInput2Mux|v3|v6|ALT_INV_Q~1_combout\ <= NOT \ALUInput2Mux|v3|v6|Q~1_combout\;
\ALUInput2Mux|v3|v6|ALT_INV_Q~0_combout\ <= NOT \ALUInput2Mux|v3|v6|Q~0_combout\;
\EXMEMREG|ALT_INV_Result_EXMEM\(15) <= NOT \EXMEMREG|Result_EXMEM\(15);
\EXMEMREG|ALT_INV_Result_EXMEM\(14) <= NOT \EXMEMREG|Result_EXMEM\(14);
\EXMEMREG|ALT_INV_Result_EXMEM\(13) <= NOT \EXMEMREG|Result_EXMEM\(13);
\EXMEMREG|ALT_INV_Result_EXMEM\(12) <= NOT \EXMEMREG|Result_EXMEM\(12);
\EXMEMREG|ALT_INV_Result_EXMEM\(11) <= NOT \EXMEMREG|Result_EXMEM\(11);
\EXMEMREG|ALT_INV_Result_EXMEM\(10) <= NOT \EXMEMREG|Result_EXMEM\(10);
\EXMEMREG|ALT_INV_Result_EXMEM\(9) <= NOT \EXMEMREG|Result_EXMEM\(9);
\EXMEMREG|ALT_INV_Result_EXMEM\(8) <= NOT \EXMEMREG|Result_EXMEM\(8);
\EXMEMREG|ALT_INV_Result_EXMEM\(7) <= NOT \EXMEMREG|Result_EXMEM\(7);
\EXMEMREG|ALT_INV_Result_EXMEM\(6) <= NOT \EXMEMREG|Result_EXMEM\(6);
\EXMEMREG|ALT_INV_Result_EXMEM\(5) <= NOT \EXMEMREG|Result_EXMEM\(5);
\EXMEMREG|ALT_INV_Result_EXMEM\(4) <= NOT \EXMEMREG|Result_EXMEM\(4);
\EXMEMREG|ALT_INV_Result_EXMEM\(3) <= NOT \EXMEMREG|Result_EXMEM\(3);
\EXMEMREG|ALT_INV_Result_EXMEM\(2) <= NOT \EXMEMREG|Result_EXMEM\(2);
\EXMEMREG|ALT_INV_Result_EXMEM\(1) <= NOT \EXMEMREG|Result_EXMEM\(1);
\EXMEMREG|ALT_INV_Result_EXMEM\(0) <= NOT \EXMEMREG|Result_EXMEM\(0);
\ALUInput1Mux|v3|v0|ALT_INV_Q~4_combout\ <= NOT \ALUInput1Mux|v3|v0|Q~4_combout\;
\ALUInput1Mux|v3|v11|ALT_INV_Q~0_combout\ <= NOT \ALUInput1Mux|v3|v11|Q~0_combout\;
\ALUInput1Mux|v3|v12|ALT_INV_Q~0_combout\ <= NOT \ALUInput1Mux|v3|v12|Q~0_combout\;
\ALUInput1Mux|v3|v13|ALT_INV_Q~0_combout\ <= NOT \ALUInput1Mux|v3|v13|Q~0_combout\;
\ALUInput1Mux|v3|v14|ALT_INV_Q~0_combout\ <= NOT \ALUInput1Mux|v3|v14|Q~0_combout\;
\ALUInput1Mux|v3|v15|ALT_INV_Q~0_combout\ <= NOT \ALUInput1Mux|v3|v15|Q~0_combout\;
\IFIDREG|ALT_INV_Add0~57_sumout\ <= NOT \IFIDREG|Add0~57_sumout\;
\IFIDREG|ALT_INV_Add0~53_sumout\ <= NOT \IFIDREG|Add0~53_sumout\;
\IFIDREG|ALT_INV_Add0~49_sumout\ <= NOT \IFIDREG|Add0~49_sumout\;
\IFIDREG|ALT_INV_Add0~45_sumout\ <= NOT \IFIDREG|Add0~45_sumout\;
\IFIDREG|ALT_INV_Add0~41_sumout\ <= NOT \IFIDREG|Add0~41_sumout\;
\IFIDREG|ALT_INV_Add0~37_sumout\ <= NOT \IFIDREG|Add0~37_sumout\;
\IFIDREG|ALT_INV_Add0~33_sumout\ <= NOT \IFIDREG|Add0~33_sumout\;
\IFIDREG|ALT_INV_Add0~29_sumout\ <= NOT \IFIDREG|Add0~29_sumout\;
\IFIDREG|ALT_INV_Add0~25_sumout\ <= NOT \IFIDREG|Add0~25_sumout\;
\IFIDREG|ALT_INV_Add0~21_sumout\ <= NOT \IFIDREG|Add0~21_sumout\;
\IFIDREG|ALT_INV_Add0~17_sumout\ <= NOT \IFIDREG|Add0~17_sumout\;
\IFIDREG|ALT_INV_Add0~13_sumout\ <= NOT \IFIDREG|Add0~13_sumout\;
\IFIDREG|ALT_INV_Add0~9_sumout\ <= NOT \IFIDREG|Add0~9_sumout\;
\IFIDREG|ALT_INV_Add0~5_sumout\ <= NOT \IFIDREG|Add0~5_sumout\;
\IFIDREG|ALT_INV_Add0~1_sumout\ <= NOT \IFIDREG|Add0~1_sumout\;
\PC|gen_register:11:vff|ALT_INV_O~q\ <= NOT \PC|gen_register:11:vff|O~q\;
\PC|gen_register:10:vff|ALT_INV_O~q\ <= NOT \PC|gen_register:10:vff|O~q\;
\PC|gen_register:9:vff|ALT_INV_O~q\ <= NOT \PC|gen_register:9:vff|O~q\;
\PC|gen_register:8:vff|ALT_INV_O~q\ <= NOT \PC|gen_register:8:vff|O~q\;
\PC|gen_register:7:vff|ALT_INV_O~q\ <= NOT \PC|gen_register:7:vff|O~q\;
\PC|gen_register:6:vff|ALT_INV_O~q\ <= NOT \PC|gen_register:6:vff|O~q\;
\PC|gen_register:5:vff|ALT_INV_O~q\ <= NOT \PC|gen_register:5:vff|O~q\;
\PC|gen_register:4:vff|ALT_INV_O~q\ <= NOT \PC|gen_register:4:vff|O~q\;
\PC|gen_register:3:vff|ALT_INV_O~q\ <= NOT \PC|gen_register:3:vff|O~q\;
\PC|gen_register:2:vff|ALT_INV_O~q\ <= NOT \PC|gen_register:2:vff|O~q\;
\PC|gen_register:1:vff|ALT_INV_O~q\ <= NOT \PC|gen_register:1:vff|O~q\;
\PC|gen_register:0:vff|ALT_INV_O~q\ <= NOT \PC|gen_register:0:vff|O~q\;
\MEMWBREG|ALT_INV_writeData\(15) <= NOT \MEMWBREG|writeData\(15);
\MEMWBREG|ALT_INV_writeData\(14) <= NOT \MEMWBREG|writeData\(14);
\MEMWBREG|ALT_INV_writeData\(13) <= NOT \MEMWBREG|writeData\(13);
\MEMWBREG|ALT_INV_writeData\(12) <= NOT \MEMWBREG|writeData\(12);
\MEMWBREG|ALT_INV_writeData\(11) <= NOT \MEMWBREG|writeData\(11);
\MEMWBREG|ALT_INV_writeData\(10) <= NOT \MEMWBREG|writeData\(10);
\MEMWBREG|ALT_INV_writeData\(9) <= NOT \MEMWBREG|writeData\(9);
\MEMWBREG|ALT_INV_writeData\(8) <= NOT \MEMWBREG|writeData\(8);
\MEMWBREG|ALT_INV_writeData\(7) <= NOT \MEMWBREG|writeData\(7);
\MEMWBREG|ALT_INV_writeData\(6) <= NOT \MEMWBREG|writeData\(6);
\MEMWBREG|ALT_INV_writeData\(5) <= NOT \MEMWBREG|writeData\(5);
\MEMWBREG|ALT_INV_writeData\(4) <= NOT \MEMWBREG|writeData\(4);
\MEMWBREG|ALT_INV_writeData\(3) <= NOT \MEMWBREG|writeData\(3);
\MEMWBREG|ALT_INV_writeData\(2) <= NOT \MEMWBREG|writeData\(2);
\MEMWBREG|ALT_INV_writeData\(1) <= NOT \MEMWBREG|writeData\(1);
\MEMWBREG|ALT_INV_writeData\(0) <= NOT \MEMWBREG|writeData\(0);
\IDEXREG|ALT_INV_R2Reg_IDEX\(6) <= NOT \IDEXREG|R2Reg_IDEX\(6);
\ALUInput1Mux|v3|v6|ALT_INV_Q~2_combout\ <= NOT \ALUInput1Mux|v3|v6|Q~2_combout\;
\ALUInput1Mux|v3|v6|ALT_INV_Q~1_combout\ <= NOT \ALUInput1Mux|v3|v6|Q~1_combout\;
\IDEXREG|ALT_INV_R1Reg_IDEX\(6) <= NOT \IDEXREG|R1Reg_IDEX\(6);
\ALUInput1Mux|v3|v6|ALT_INV_Q~0_combout\ <= NOT \ALUInput1Mux|v3|v6|Q~0_combout\;
\ALU16|V4|v12|ALT_INV_Q~3_combout\ <= NOT \ALU16|V4|v12|Q~3_combout\;
\ALU16|V4|v12|ALT_INV_Q~2_combout\ <= NOT \ALU16|V4|v12|Q~2_combout\;
\ALU16|V4|v12|ALT_INV_Q~1_combout\ <= NOT \ALU16|V4|v12|Q~1_combout\;
\ALU16|V4|v12|ALT_INV_Q~0_combout\ <= NOT \ALU16|V4|v12|Q~0_combout\;
\ALUInput1Mux|v3|v5|ALT_INV_Q~2_combout\ <= NOT \ALUInput1Mux|v3|v5|Q~2_combout\;
\ALUInput1Mux|v3|v5|ALT_INV_Q~1_combout\ <= NOT \ALUInput1Mux|v3|v5|Q~1_combout\;
\IDEXREG|ALT_INV_R1Reg_IDEX\(5) <= NOT \IDEXREG|R1Reg_IDEX\(5);
\ALUInput1Mux|v3|v2|ALT_INV_Q~7_combout\ <= NOT \ALUInput1Mux|v3|v2|Q~7_combout\;
\ALUInput1Mux|v3|v5|ALT_INV_Q~0_combout\ <= NOT \ALUInput1Mux|v3|v5|Q~0_combout\;
\ALUInput2Mux|v3|v5|ALT_INV_Q~2_combout\ <= NOT \ALUInput2Mux|v3|v5|Q~2_combout\;
\ALUInput2Mux|v3|v5|ALT_INV_Q~1_combout\ <= NOT \ALUInput2Mux|v3|v5|Q~1_combout\;
\IDEXREG|ALT_INV_R2Reg_IDEX\(5) <= NOT \IDEXREG|R2Reg_IDEX\(5);
\ALUInput2Mux|v3|v5|ALT_INV_Q~0_combout\ <= NOT \ALUInput2Mux|v3|v5|Q~0_combout\;
\IDEXREG|ALT_INV_jumpShortAddr_IDEX\(5) <= NOT \IDEXREG|jumpShortAddr_IDEX\(5);
\ALU16|V3|v12|ALT_INV_Q~3_combout\ <= NOT \ALU16|V3|v12|Q~3_combout\;
\ALU16|V3|v12|ALT_INV_Q~2_combout\ <= NOT \ALU16|V3|v12|Q~2_combout\;
\ALU16|V3|v12|ALT_INV_Q~1_combout\ <= NOT \ALU16|V3|v12|Q~1_combout\;
\ALU16|V3|v12|ALT_INV_Q~0_combout\ <= NOT \ALU16|V3|v12|Q~0_combout\;
\ALU16|V1|v12|ALT_INV_Q~3_combout\ <= NOT \ALU16|V1|v12|Q~3_combout\;
\ALU16|V1|v12|ALT_INV_Q~2_combout\ <= NOT \ALU16|V1|v12|Q~2_combout\;
\ALUInput2Mux|v3|v0|ALT_INV_Q~2_combout\ <= NOT \ALUInput2Mux|v3|v0|Q~2_combout\;
\ALUInput1Mux|v3|v0|ALT_INV_Q~3_combout\ <= NOT \ALUInput1Mux|v3|v0|Q~3_combout\;
\ALUInput1Mux|v3|v0|ALT_INV_Q~2_combout\ <= NOT \ALUInput1Mux|v3|v0|Q~2_combout\;
\ALU16|V1|v12|ALT_INV_Q~1_combout\ <= NOT \ALU16|V1|v12|Q~1_combout\;
\ALUInput1Mux|v3|v1|ALT_INV_Q~1_combout\ <= NOT \ALUInput1Mux|v3|v1|Q~1_combout\;
\ALUInput2Mux|v3|v1|ALT_INV_Q~2_combout\ <= NOT \ALUInput2Mux|v3|v1|Q~2_combout\;
\ALUInput1Mux|v3|v4|ALT_INV_Q~2_combout\ <= NOT \ALUInput1Mux|v3|v4|Q~2_combout\;
\ALUInput1Mux|v3|v4|ALT_INV_Q~1_combout\ <= NOT \ALUInput1Mux|v3|v4|Q~1_combout\;
\ALUInput1Mux|v3|v4|ALT_INV_Q~0_combout\ <= NOT \ALUInput1Mux|v3|v4|Q~0_combout\;
\IDEXREG|ALT_INV_R1Reg_IDEX\(4) <= NOT \IDEXREG|R1Reg_IDEX\(4);
\ALUInput2Mux|v3|v4|ALT_INV_Q~2_combout\ <= NOT \ALUInput2Mux|v3|v4|Q~2_combout\;
\ALUInput2Mux|v3|v4|ALT_INV_Q~1_combout\ <= NOT \ALUInput2Mux|v3|v4|Q~1_combout\;
\IDEXREG|ALT_INV_jumpShortAddr_IDEX\(4) <= NOT \IDEXREG|jumpShortAddr_IDEX\(4);
\ALUInput2Mux|v3|v4|ALT_INV_Q~0_combout\ <= NOT \ALUInput2Mux|v3|v4|Q~0_combout\;
\IDEXREG|ALT_INV_R2Reg_IDEX\(4) <= NOT \IDEXREG|R2Reg_IDEX\(4);
\ALU16|V2|v12|ALT_INV_Q~2_combout\ <= NOT \ALU16|V2|v12|Q~2_combout\;
\ALU16|V2|v12|ALT_INV_Q~1_combout\ <= NOT \ALU16|V2|v12|Q~1_combout\;
\ALU16|V2|v12|ALT_INV_Q~0_combout\ <= NOT \ALU16|V2|v12|Q~0_combout\;
\ALUInput1Mux|v3|v3|ALT_INV_Q~2_combout\ <= NOT \ALUInput1Mux|v3|v3|Q~2_combout\;
\ALUInput1Mux|v3|v3|ALT_INV_Q~1_combout\ <= NOT \ALUInput1Mux|v3|v3|Q~1_combout\;
\ALUInput1Mux|v3|v3|ALT_INV_Q~0_combout\ <= NOT \ALUInput1Mux|v3|v3|Q~0_combout\;
\IDEXREG|ALT_INV_R1Reg_IDEX\(3) <= NOT \IDEXREG|R1Reg_IDEX\(3);
\ALUInput2Mux|v3|v3|ALT_INV_Q~2_combout\ <= NOT \ALUInput2Mux|v3|v3|Q~2_combout\;
\ALUInput2Mux|v3|v3|ALT_INV_Q~1_combout\ <= NOT \ALUInput2Mux|v3|v3|Q~1_combout\;
\IDEXREG|ALT_INV_jumpShortAddr_IDEX\(3) <= NOT \IDEXREG|jumpShortAddr_IDEX\(3);
\ALUInput2Mux|v3|v3|ALT_INV_Q~0_combout\ <= NOT \ALUInput2Mux|v3|v3|Q~0_combout\;
\IDEXREG|ALT_INV_R2Reg_IDEX\(3) <= NOT \IDEXREG|R2Reg_IDEX\(3);
\ALU16|V1|v12|ALT_INV_Q~0_combout\ <= NOT \ALU16|V1|v12|Q~0_combout\;
\ALUInput1Mux|v3|v2|ALT_INV_Q~6_combout\ <= NOT \ALUInput1Mux|v3|v2|Q~6_combout\;
\ALUInput1Mux|v3|v2|ALT_INV_Q~5_combout\ <= NOT \ALUInput1Mux|v3|v2|Q~5_combout\;
\IDEXREG|ALT_INV_R1Reg_IDEX\(2) <= NOT \IDEXREG|R1Reg_IDEX\(2);
\ALUInput1Mux|v3|v2|ALT_INV_Q~4_combout\ <= NOT \ALUInput1Mux|v3|v2|Q~4_combout\;
\ALUInput2Mux|v3|v2|ALT_INV_Q~2_combout\ <= NOT \ALUInput2Mux|v3|v2|Q~2_combout\;
\ALUInput2Mux|v3|v2|ALT_INV_Q~1_combout\ <= NOT \ALUInput2Mux|v3|v2|Q~1_combout\;
\IDEXREG|ALT_INV_R2Reg_IDEX\(2) <= NOT \IDEXREG|R2Reg_IDEX\(2);
\ALUInput2Mux|v3|v2|ALT_INV_Q~0_combout\ <= NOT \ALUInput2Mux|v3|v2|Q~0_combout\;
\IDEXREG|ALT_INV_jumpShortAddr_IDEX\(2) <= NOT \IDEXREG|jumpShortAddr_IDEX\(2);
\ALU16|V0|v12|ALT_INV_Q~1_combout\ <= NOT \ALU16|V0|v12|Q~1_combout\;
\ALU16|V0|v12|ALT_INV_Q~0_combout\ <= NOT \ALU16|V0|v12|Q~0_combout\;
\ALUInput1Mux|v3|v1|ALT_INV_Q~0_combout\ <= NOT \ALUInput1Mux|v3|v1|Q~0_combout\;
\IDEXREG|ALT_INV_R1Reg_IDEX\(1) <= NOT \IDEXREG|R1Reg_IDEX\(1);
\ALUInput2Mux|v3|v1|ALT_INV_Q~1_combout\ <= NOT \ALUInput2Mux|v3|v1|Q~1_combout\;
\ALUInput2Mux|v3|v1|ALT_INV_Q~0_combout\ <= NOT \ALUInput2Mux|v3|v1|Q~0_combout\;
\IDEXREG|ALT_INV_jumpShortAddr_IDEX\(1) <= NOT \IDEXREG|jumpShortAddr_IDEX\(1);
\IDEXREG|ALT_INV_R2Reg_IDEX\(1) <= NOT \IDEXREG|R2Reg_IDEX\(1);
\ALUInput2Mux|v3|v0|ALT_INV_Q~1_combout\ <= NOT \ALUInput2Mux|v3|v0|Q~1_combout\;
\ALUInput2Mux|v3|v0|ALT_INV_Q~0_combout\ <= NOT \ALUInput2Mux|v3|v0|Q~0_combout\;
\IDEXREG|ALT_INV_jumpShortAddr_IDEX\(0) <= NOT \IDEXREG|jumpShortAddr_IDEX\(0);
\IDEXREG|ALT_INV_R2Reg_IDEX\(0) <= NOT \IDEXREG|R2Reg_IDEX\(0);
\ALUInput2Mux|v3|v12|ALT_INV_Q~3_combout\ <= NOT \ALUInput2Mux|v3|v12|Q~3_combout\;
\ALUInput2Mux|v3|v12|ALT_INV_Q~2_combout\ <= NOT \ALUInput2Mux|v3|v12|Q~2_combout\;
\ForwardUnit|ALT_INV_Equal2~0_combout\ <= NOT \ForwardUnit|Equal2~0_combout\;
\ALUInput2Mux|v3|v12|ALT_INV_Q~1_combout\ <= NOT \ALUInput2Mux|v3|v12|Q~1_combout\;
\IDEXREG|ALT_INV_R2AD_IDEX\(2) <= NOT \IDEXREG|R2AD_IDEX\(2);
\IDEXREG|ALT_INV_R2AD_IDEX\(1) <= NOT \IDEXREG|R2AD_IDEX\(1);
\IDEXREG|ALT_INV_R2AD_IDEX\(0) <= NOT \IDEXREG|R2AD_IDEX\(0);
\ALUInput2Mux|v3|v12|ALT_INV_Q~0_combout\ <= NOT \ALUInput2Mux|v3|v12|Q~0_combout\;
\IDEXREG|ALT_INV_isBranch_IDEX~q\ <= NOT \IDEXREG|isBranch_IDEX~q\;
\IDEXREG|ALT_INV_isLW_IDEX~q\ <= NOT \IDEXREG|isLW_IDEX~q\;
\IDEXREG|ALT_INV_isSW_IDEX~q\ <= NOT \IDEXREG|isSW_IDEX~q\;
\ALUInput1Mux|v3|v0|ALT_INV_Q~1_combout\ <= NOT \ALUInput1Mux|v3|v0|Q~1_combout\;
\IDEXREG|ALT_INV_R1Reg_IDEX\(0) <= NOT \IDEXREG|R1Reg_IDEX\(0);
\ALUInput1Mux|v3|v0|ALT_INV_Q~0_combout\ <= NOT \ALUInput1Mux|v3|v0|Q~0_combout\;
\ALUInput1Mux|v3|v2|ALT_INV_Q~3_combout\ <= NOT \ALUInput1Mux|v3|v2|Q~3_combout\;
\MEMWBREG|ALT_INV_writeAD\(2) <= NOT \MEMWBREG|writeAD\(2);
\MEMWBREG|ALT_INV_writeAD\(1) <= NOT \MEMWBREG|writeAD\(1);
\MEMWBREG|ALT_INV_writeAD\(0) <= NOT \MEMWBREG|writeAD\(0);
\ALUInput1Mux|v3|v2|ALT_INV_Q~2_combout\ <= NOT \ALUInput1Mux|v3|v2|Q~2_combout\;
\ALUInput1Mux|v3|v2|ALT_INV_Q~1_combout\ <= NOT \ALUInput1Mux|v3|v2|Q~1_combout\;
\EXMEMREG|ALT_INV_RegAD_EXMEM\(2) <= NOT \EXMEMREG|RegAD_EXMEM\(2);
\EXMEMREG|ALT_INV_RegAD_EXMEM\(1) <= NOT \EXMEMREG|RegAD_EXMEM\(1);
\EXMEMREG|ALT_INV_RegAD_EXMEM\(0) <= NOT \EXMEMREG|RegAD_EXMEM\(0);
\IDEXREG|ALT_INV_R1AD_IDEX\(2) <= NOT \IDEXREG|R1AD_IDEX\(2);
\IDEXREG|ALT_INV_R1AD_IDEX\(1) <= NOT \IDEXREG|R1AD_IDEX\(1);
\IDEXREG|ALT_INV_R1AD_IDEX\(0) <= NOT \IDEXREG|R1AD_IDEX\(0);
\ALUInput1Mux|v3|v2|ALT_INV_Q~0_combout\ <= NOT \ALUInput1Mux|v3|v2|Q~0_combout\;
\IDEXREG|ALT_INV_isR_IDEX~q\ <= NOT \IDEXREG|isR_IDEX~q\;
\IDEXREG|ALT_INV_isMFPC_IDEX~q\ <= NOT \IDEXREG|isMFPC_IDEX~q\;
\IDEXREG|ALT_INV_ALUFunc_IDEX\(2) <= NOT \IDEXREG|ALUFunc_IDEX\(2);
\IDEXREG|ALT_INV_ALUFunc_IDEX\(0) <= NOT \IDEXREG|ALUFunc_IDEX\(0);
\IDEXREG|ALT_INV_ALUFunc_IDEX\(1) <= NOT \IDEXREG|ALUFunc_IDEX\(1);

\printEnable~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \EXMEMREG|PrintDigit_EXMEM~q\,
	devoe => ww_devoe,
	o => \printEnable~output_o\);

\keyEnable~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \EXMEMREG|ReadDigit_EXMEM~q\,
	devoe => ww_devoe,
	o => \keyEnable~output_o\);

\DataWriteFlag~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \EXMEMREG|isSW_EXMEM~q\,
	devoe => ww_devoe,
	o => \DataWriteFlag~output_o\);

\dataAD[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \EXMEMREG|Result_EXMEM\(0),
	devoe => ww_devoe,
	o => \dataAD[0]~output_o\);

\dataAD[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \EXMEMREG|Result_EXMEM\(1),
	devoe => ww_devoe,
	o => \dataAD[1]~output_o\);

\dataAD[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \EXMEMREG|Result_EXMEM\(2),
	devoe => ww_devoe,
	o => \dataAD[2]~output_o\);

\dataAD[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \EXMEMREG|Result_EXMEM\(3),
	devoe => ww_devoe,
	o => \dataAD[3]~output_o\);

\dataAD[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \EXMEMREG|Result_EXMEM\(4),
	devoe => ww_devoe,
	o => \dataAD[4]~output_o\);

\dataAD[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \EXMEMREG|Result_EXMEM\(5),
	devoe => ww_devoe,
	o => \dataAD[5]~output_o\);

\dataAD[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \EXMEMREG|Result_EXMEM\(6),
	devoe => ww_devoe,
	o => \dataAD[6]~output_o\);

\dataAD[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \EXMEMREG|Result_EXMEM\(7),
	devoe => ww_devoe,
	o => \dataAD[7]~output_o\);

\dataAD[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \EXMEMREG|Result_EXMEM\(8),
	devoe => ww_devoe,
	o => \dataAD[8]~output_o\);

\dataAD[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \EXMEMREG|Result_EXMEM\(9),
	devoe => ww_devoe,
	o => \dataAD[9]~output_o\);

\dataAD[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \EXMEMREG|Result_EXMEM\(10),
	devoe => ww_devoe,
	o => \dataAD[10]~output_o\);

\dataAD[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \EXMEMREG|Result_EXMEM\(11),
	devoe => ww_devoe,
	o => \dataAD[11]~output_o\);

\dataAD[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \EXMEMREG|Result_EXMEM\(12),
	devoe => ww_devoe,
	o => \dataAD[12]~output_o\);

\dataAD[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \EXMEMREG|Result_EXMEM\(13),
	devoe => ww_devoe,
	o => \dataAD[13]~output_o\);

\dataAD[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \EXMEMREG|Result_EXMEM\(14),
	devoe => ww_devoe,
	o => \dataAD[14]~output_o\);

\dataAD[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \EXMEMREG|Result_EXMEM\(15),
	devoe => ww_devoe,
	o => \dataAD[15]~output_o\);

\toData[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \EXMEMREG|R2Reg_EXMEM\(0),
	devoe => ww_devoe,
	o => \toData[0]~output_o\);

\toData[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \EXMEMREG|R2Reg_EXMEM\(1),
	devoe => ww_devoe,
	o => \toData[1]~output_o\);

\toData[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \EXMEMREG|R2Reg_EXMEM\(2),
	devoe => ww_devoe,
	o => \toData[2]~output_o\);

\toData[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \EXMEMREG|R2Reg_EXMEM\(3),
	devoe => ww_devoe,
	o => \toData[3]~output_o\);

\toData[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \EXMEMREG|R2Reg_EXMEM\(4),
	devoe => ww_devoe,
	o => \toData[4]~output_o\);

\toData[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \EXMEMREG|R2Reg_EXMEM\(5),
	devoe => ww_devoe,
	o => \toData[5]~output_o\);

\toData[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \EXMEMREG|R2Reg_EXMEM\(6),
	devoe => ww_devoe,
	o => \toData[6]~output_o\);

\toData[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \EXMEMREG|R2Reg_EXMEM\(7),
	devoe => ww_devoe,
	o => \toData[7]~output_o\);

\toData[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \EXMEMREG|R2Reg_EXMEM\(8),
	devoe => ww_devoe,
	o => \toData[8]~output_o\);

\toData[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \EXMEMREG|R2Reg_EXMEM\(9),
	devoe => ww_devoe,
	o => \toData[9]~output_o\);

\toData[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \EXMEMREG|R2Reg_EXMEM\(10),
	devoe => ww_devoe,
	o => \toData[10]~output_o\);

\toData[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \EXMEMREG|R2Reg_EXMEM\(11),
	devoe => ww_devoe,
	o => \toData[11]~output_o\);

\toData[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \EXMEMREG|R2Reg_EXMEM\(12),
	devoe => ww_devoe,
	o => \toData[12]~output_o\);

\toData[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \EXMEMREG|R2Reg_EXMEM\(13),
	devoe => ww_devoe,
	o => \toData[13]~output_o\);

\toData[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \EXMEMREG|R2Reg_EXMEM\(14),
	devoe => ww_devoe,
	o => \toData[14]~output_o\);

\toData[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \EXMEMREG|R2Reg_EXMEM\(15),
	devoe => ww_devoe,
	o => \toData[15]~output_o\);

\printCode[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \EXMEMREG|Result_EXMEM\(0),
	devoe => ww_devoe,
	o => \printCode[0]~output_o\);

\printCode[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \EXMEMREG|Result_EXMEM\(1),
	devoe => ww_devoe,
	o => \printCode[1]~output_o\);

\printCode[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \EXMEMREG|Result_EXMEM\(2),
	devoe => ww_devoe,
	o => \printCode[2]~output_o\);

\printCode[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \EXMEMREG|Result_EXMEM\(3),
	devoe => ww_devoe,
	o => \printCode[3]~output_o\);

\printCode[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \EXMEMREG|Result_EXMEM\(4),
	devoe => ww_devoe,
	o => \printCode[4]~output_o\);

\printCode[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \EXMEMREG|Result_EXMEM\(5),
	devoe => ww_devoe,
	o => \printCode[5]~output_o\);

\printCode[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \EXMEMREG|Result_EXMEM\(6),
	devoe => ww_devoe,
	o => \printCode[6]~output_o\);

\printCode[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \EXMEMREG|Result_EXMEM\(7),
	devoe => ww_devoe,
	o => \printCode[7]~output_o\);

\printCode[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \EXMEMREG|Result_EXMEM\(8),
	devoe => ww_devoe,
	o => \printCode[8]~output_o\);

\printCode[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \EXMEMREG|Result_EXMEM\(9),
	devoe => ww_devoe,
	o => \printCode[9]~output_o\);

\printCode[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \EXMEMREG|Result_EXMEM\(10),
	devoe => ww_devoe,
	o => \printCode[10]~output_o\);

\printCode[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \EXMEMREG|Result_EXMEM\(11),
	devoe => ww_devoe,
	o => \printCode[11]~output_o\);

\printCode[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \EXMEMREG|Result_EXMEM\(12),
	devoe => ww_devoe,
	o => \printCode[12]~output_o\);

\printCode[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \EXMEMREG|Result_EXMEM\(13),
	devoe => ww_devoe,
	o => \printCode[13]~output_o\);

\printCode[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \EXMEMREG|Result_EXMEM\(14),
	devoe => ww_devoe,
	o => \printCode[14]~output_o\);

\printCode[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \EXMEMREG|Result_EXMEM\(15),
	devoe => ww_devoe,
	o => \printCode[15]~output_o\);

\printData[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \EXMEMREG|R2Reg_EXMEM\(0),
	devoe => ww_devoe,
	o => \printData[0]~output_o\);

\printData[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \EXMEMREG|R2Reg_EXMEM\(1),
	devoe => ww_devoe,
	o => \printData[1]~output_o\);

\printData[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \EXMEMREG|R2Reg_EXMEM\(2),
	devoe => ww_devoe,
	o => \printData[2]~output_o\);

\printData[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \EXMEMREG|R2Reg_EXMEM\(3),
	devoe => ww_devoe,
	o => \printData[3]~output_o\);

\printData[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \EXMEMREG|R2Reg_EXMEM\(4),
	devoe => ww_devoe,
	o => \printData[4]~output_o\);

\printData[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \EXMEMREG|R2Reg_EXMEM\(5),
	devoe => ww_devoe,
	o => \printData[5]~output_o\);

\printData[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \EXMEMREG|R2Reg_EXMEM\(6),
	devoe => ww_devoe,
	o => \printData[6]~output_o\);

\printData[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \EXMEMREG|R2Reg_EXMEM\(7),
	devoe => ww_devoe,
	o => \printData[7]~output_o\);

\printData[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \EXMEMREG|R2Reg_EXMEM\(8),
	devoe => ww_devoe,
	o => \printData[8]~output_o\);

\printData[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \EXMEMREG|R2Reg_EXMEM\(9),
	devoe => ww_devoe,
	o => \printData[9]~output_o\);

\printData[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \EXMEMREG|R2Reg_EXMEM\(10),
	devoe => ww_devoe,
	o => \printData[10]~output_o\);

\printData[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \EXMEMREG|R2Reg_EXMEM\(11),
	devoe => ww_devoe,
	o => \printData[11]~output_o\);

\printData[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \EXMEMREG|R2Reg_EXMEM\(12),
	devoe => ww_devoe,
	o => \printData[12]~output_o\);

\printData[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \EXMEMREG|R2Reg_EXMEM\(13),
	devoe => ww_devoe,
	o => \printData[13]~output_o\);

\printData[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \EXMEMREG|R2Reg_EXMEM\(14),
	devoe => ww_devoe,
	o => \printData[14]~output_o\);

\printData[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \EXMEMREG|R2Reg_EXMEM\(15),
	devoe => ww_devoe,
	o => \printData[15]~output_o\);

\Result[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU16|V21|v1|v0|Q~0_combout\,
	devoe => ww_devoe,
	o => \Result[0]~output_o\);

\Result[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU16|V21|v1|v1|Q~combout\,
	devoe => ww_devoe,
	o => \Result[1]~output_o\);

\Result[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU16|V21|v1|v2|Q~combout\,
	devoe => ww_devoe,
	o => \Result[2]~output_o\);

\Result[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU16|V21|v1|v3|Q~combout\,
	devoe => ww_devoe,
	o => \Result[3]~output_o\);

\Result[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU16|V21|v1|v4|Q~combout\,
	devoe => ww_devoe,
	o => \Result[4]~output_o\);

\Result[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU16|V21|v1|v5|Q~combout\,
	devoe => ww_devoe,
	o => \Result[5]~output_o\);

\Result[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU16|V21|v1|v6|Q~combout\,
	devoe => ww_devoe,
	o => \Result[6]~output_o\);

\Result[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU16|V21|v1|v7|Q~combout\,
	devoe => ww_devoe,
	o => \Result[7]~output_o\);

\Result[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU16|V21|v1|v8|Q~combout\,
	devoe => ww_devoe,
	o => \Result[8]~output_o\);

\Result[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU16|V21|v1|v9|Q~combout\,
	devoe => ww_devoe,
	o => \Result[9]~output_o\);

\Result[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU16|V21|v1|v10|Q~combout\,
	devoe => ww_devoe,
	o => \Result[10]~output_o\);

\Result[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU16|V21|v1|v11|Q~combout\,
	devoe => ww_devoe,
	o => \Result[11]~output_o\);

\Result[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU16|V21|v1|v12|Q~combout\,
	devoe => ww_devoe,
	o => \Result[12]~output_o\);

\Result[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU16|V21|v1|v13|Q~combout\,
	devoe => ww_devoe,
	o => \Result[13]~output_o\);

\Result[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU16|V21|v1|v14|Q~combout\,
	devoe => ww_devoe,
	o => \Result[14]~output_o\);

\Result[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU16|V15|v9|V4|v3|Q~1_combout\,
	devoe => ww_devoe,
	o => \Result[15]~output_o\);

\regOUT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \regOUT[0]~output_o\);

\regOUT[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \regOUT[1]~output_o\);

\regOUT[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \regOUT[2]~output_o\);

\regOUT[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \regOUT[3]~output_o\);

\regOUT[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \regOUT[4]~output_o\);

\regOUT[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \regOUT[5]~output_o\);

\regOUT[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \regOUT[6]~output_o\);

\regOUT[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \regOUT[7]~output_o\);

\regOUT[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \regOUT[8]~output_o\);

\regOUT[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \regOUT[9]~output_o\);

\regOUT[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \regOUT[10]~output_o\);

\regOUT[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \regOUT[11]~output_o\);

\regOUT[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \regOUT[12]~output_o\);

\regOUT[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \regOUT[13]~output_o\);

\regOUT[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \regOUT[14]~output_o\);

\regOUT[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \regOUT[15]~output_o\);

\regOUT[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegisterFile|reg1|gen_register:0:vff|O~q\,
	devoe => ww_devoe,
	o => \regOUT[16]~output_o\);

\regOUT[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegisterFile|reg1|gen_register:1:vff|O~q\,
	devoe => ww_devoe,
	o => \regOUT[17]~output_o\);

\regOUT[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegisterFile|reg1|gen_register:2:vff|O~q\,
	devoe => ww_devoe,
	o => \regOUT[18]~output_o\);

\regOUT[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegisterFile|reg1|gen_register:3:vff|O~q\,
	devoe => ww_devoe,
	o => \regOUT[19]~output_o\);

\regOUT[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegisterFile|reg1|gen_register:4:vff|O~q\,
	devoe => ww_devoe,
	o => \regOUT[20]~output_o\);

\regOUT[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegisterFile|reg1|gen_register:5:vff|O~q\,
	devoe => ww_devoe,
	o => \regOUT[21]~output_o\);

\regOUT[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegisterFile|reg1|gen_register:6:vff|O~q\,
	devoe => ww_devoe,
	o => \regOUT[22]~output_o\);

\regOUT[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegisterFile|reg1|gen_register:7:vff|O~q\,
	devoe => ww_devoe,
	o => \regOUT[23]~output_o\);

\regOUT[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegisterFile|reg1|gen_register:8:vff|O~q\,
	devoe => ww_devoe,
	o => \regOUT[24]~output_o\);

\regOUT[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegisterFile|reg1|gen_register:9:vff|O~q\,
	devoe => ww_devoe,
	o => \regOUT[25]~output_o\);

\regOUT[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegisterFile|reg1|gen_register:10:vff|O~q\,
	devoe => ww_devoe,
	o => \regOUT[26]~output_o\);

\regOUT[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegisterFile|reg1|gen_register:11:vff|O~q\,
	devoe => ww_devoe,
	o => \regOUT[27]~output_o\);

\regOUT[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegisterFile|reg1|gen_register:12:vff|O~q\,
	devoe => ww_devoe,
	o => \regOUT[28]~output_o\);

\regOUT[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegisterFile|reg1|gen_register:13:vff|O~q\,
	devoe => ww_devoe,
	o => \regOUT[29]~output_o\);

\regOUT[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegisterFile|reg1|gen_register:14:vff|O~q\,
	devoe => ww_devoe,
	o => \regOUT[30]~output_o\);

\regOUT[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegisterFile|reg1|gen_register:15:vff|O~q\,
	devoe => ww_devoe,
	o => \regOUT[31]~output_o\);

\regOUT[32]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegisterFile|reg2|gen_register:0:vff|O~q\,
	devoe => ww_devoe,
	o => \regOUT[32]~output_o\);

\regOUT[33]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegisterFile|reg2|gen_register:1:vff|O~q\,
	devoe => ww_devoe,
	o => \regOUT[33]~output_o\);

\regOUT[34]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegisterFile|reg2|gen_register:2:vff|O~q\,
	devoe => ww_devoe,
	o => \regOUT[34]~output_o\);

\regOUT[35]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegisterFile|reg2|gen_register:3:vff|O~q\,
	devoe => ww_devoe,
	o => \regOUT[35]~output_o\);

\regOUT[36]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegisterFile|reg2|gen_register:4:vff|O~q\,
	devoe => ww_devoe,
	o => \regOUT[36]~output_o\);

\regOUT[37]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegisterFile|reg2|gen_register:5:vff|O~q\,
	devoe => ww_devoe,
	o => \regOUT[37]~output_o\);

\regOUT[38]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegisterFile|reg2|gen_register:6:vff|O~q\,
	devoe => ww_devoe,
	o => \regOUT[38]~output_o\);

\regOUT[39]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegisterFile|reg2|gen_register:7:vff|O~q\,
	devoe => ww_devoe,
	o => \regOUT[39]~output_o\);

\regOUT[40]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegisterFile|reg2|gen_register:8:vff|O~q\,
	devoe => ww_devoe,
	o => \regOUT[40]~output_o\);

\regOUT[41]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegisterFile|reg2|gen_register:9:vff|O~q\,
	devoe => ww_devoe,
	o => \regOUT[41]~output_o\);

\regOUT[42]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegisterFile|reg2|gen_register:10:vff|O~q\,
	devoe => ww_devoe,
	o => \regOUT[42]~output_o\);

\regOUT[43]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegisterFile|reg2|gen_register:11:vff|O~q\,
	devoe => ww_devoe,
	o => \regOUT[43]~output_o\);

\regOUT[44]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegisterFile|reg2|gen_register:12:vff|O~q\,
	devoe => ww_devoe,
	o => \regOUT[44]~output_o\);

\regOUT[45]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegisterFile|reg2|gen_register:13:vff|O~q\,
	devoe => ww_devoe,
	o => \regOUT[45]~output_o\);

\regOUT[46]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegisterFile|reg2|gen_register:14:vff|O~q\,
	devoe => ww_devoe,
	o => \regOUT[46]~output_o\);

\regOUT[47]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegisterFile|reg2|gen_register:15:vff|O~q\,
	devoe => ww_devoe,
	o => \regOUT[47]~output_o\);

\regOUT[48]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegisterFile|reg3|gen_register:0:vff|O~q\,
	devoe => ww_devoe,
	o => \regOUT[48]~output_o\);

\regOUT[49]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegisterFile|reg3|gen_register:1:vff|O~q\,
	devoe => ww_devoe,
	o => \regOUT[49]~output_o\);

\regOUT[50]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegisterFile|reg3|gen_register:2:vff|O~q\,
	devoe => ww_devoe,
	o => \regOUT[50]~output_o\);

\regOUT[51]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegisterFile|reg3|gen_register:3:vff|O~q\,
	devoe => ww_devoe,
	o => \regOUT[51]~output_o\);

\regOUT[52]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegisterFile|reg3|gen_register:4:vff|O~q\,
	devoe => ww_devoe,
	o => \regOUT[52]~output_o\);

\regOUT[53]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegisterFile|reg3|gen_register:5:vff|O~q\,
	devoe => ww_devoe,
	o => \regOUT[53]~output_o\);

\regOUT[54]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegisterFile|reg3|gen_register:6:vff|O~q\,
	devoe => ww_devoe,
	o => \regOUT[54]~output_o\);

\regOUT[55]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegisterFile|reg3|gen_register:7:vff|O~q\,
	devoe => ww_devoe,
	o => \regOUT[55]~output_o\);

\regOUT[56]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegisterFile|reg3|gen_register:8:vff|O~q\,
	devoe => ww_devoe,
	o => \regOUT[56]~output_o\);

\regOUT[57]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegisterFile|reg3|gen_register:9:vff|O~q\,
	devoe => ww_devoe,
	o => \regOUT[57]~output_o\);

\regOUT[58]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegisterFile|reg3|gen_register:10:vff|O~q\,
	devoe => ww_devoe,
	o => \regOUT[58]~output_o\);

\regOUT[59]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegisterFile|reg3|gen_register:11:vff|O~q\,
	devoe => ww_devoe,
	o => \regOUT[59]~output_o\);

\regOUT[60]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegisterFile|reg3|gen_register:12:vff|O~q\,
	devoe => ww_devoe,
	o => \regOUT[60]~output_o\);

\regOUT[61]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegisterFile|reg3|gen_register:13:vff|O~q\,
	devoe => ww_devoe,
	o => \regOUT[61]~output_o\);

\regOUT[62]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegisterFile|reg3|gen_register:14:vff|O~q\,
	devoe => ww_devoe,
	o => \regOUT[62]~output_o\);

\regOUT[63]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegisterFile|reg3|gen_register:15:vff|O~q\,
	devoe => ww_devoe,
	o => \regOUT[63]~output_o\);

\regOUT[64]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegisterFile|reg4|gen_register:0:vff|O~q\,
	devoe => ww_devoe,
	o => \regOUT[64]~output_o\);

\regOUT[65]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegisterFile|reg4|gen_register:1:vff|O~q\,
	devoe => ww_devoe,
	o => \regOUT[65]~output_o\);

\regOUT[66]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegisterFile|reg4|gen_register:2:vff|O~q\,
	devoe => ww_devoe,
	o => \regOUT[66]~output_o\);

\regOUT[67]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegisterFile|reg4|gen_register:3:vff|O~q\,
	devoe => ww_devoe,
	o => \regOUT[67]~output_o\);

\regOUT[68]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegisterFile|reg4|gen_register:4:vff|O~q\,
	devoe => ww_devoe,
	o => \regOUT[68]~output_o\);

\regOUT[69]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegisterFile|reg4|gen_register:5:vff|O~q\,
	devoe => ww_devoe,
	o => \regOUT[69]~output_o\);

\regOUT[70]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegisterFile|reg4|gen_register:6:vff|O~q\,
	devoe => ww_devoe,
	o => \regOUT[70]~output_o\);

\regOUT[71]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegisterFile|reg4|gen_register:7:vff|O~q\,
	devoe => ww_devoe,
	o => \regOUT[71]~output_o\);

\regOUT[72]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegisterFile|reg4|gen_register:8:vff|O~q\,
	devoe => ww_devoe,
	o => \regOUT[72]~output_o\);

\regOUT[73]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegisterFile|reg4|gen_register:9:vff|O~q\,
	devoe => ww_devoe,
	o => \regOUT[73]~output_o\);

\regOUT[74]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegisterFile|reg4|gen_register:10:vff|O~q\,
	devoe => ww_devoe,
	o => \regOUT[74]~output_o\);

\regOUT[75]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegisterFile|reg4|gen_register:11:vff|O~q\,
	devoe => ww_devoe,
	o => \regOUT[75]~output_o\);

\regOUT[76]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegisterFile|reg4|gen_register:12:vff|O~q\,
	devoe => ww_devoe,
	o => \regOUT[76]~output_o\);

\regOUT[77]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegisterFile|reg4|gen_register:13:vff|O~q\,
	devoe => ww_devoe,
	o => \regOUT[77]~output_o\);

\regOUT[78]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegisterFile|reg4|gen_register:14:vff|O~q\,
	devoe => ww_devoe,
	o => \regOUT[78]~output_o\);

\regOUT[79]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegisterFile|reg4|gen_register:15:vff|O~q\,
	devoe => ww_devoe,
	o => \regOUT[79]~output_o\);

\regOUT[80]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegisterFile|reg5|gen_register:0:vff|O~q\,
	devoe => ww_devoe,
	o => \regOUT[80]~output_o\);

\regOUT[81]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegisterFile|reg5|gen_register:1:vff|O~q\,
	devoe => ww_devoe,
	o => \regOUT[81]~output_o\);

\regOUT[82]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegisterFile|reg5|gen_register:2:vff|O~q\,
	devoe => ww_devoe,
	o => \regOUT[82]~output_o\);

\regOUT[83]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegisterFile|reg5|gen_register:3:vff|O~q\,
	devoe => ww_devoe,
	o => \regOUT[83]~output_o\);

\regOUT[84]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegisterFile|reg5|gen_register:4:vff|O~q\,
	devoe => ww_devoe,
	o => \regOUT[84]~output_o\);

\regOUT[85]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegisterFile|reg5|gen_register:5:vff|O~q\,
	devoe => ww_devoe,
	o => \regOUT[85]~output_o\);

\regOUT[86]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegisterFile|reg5|gen_register:6:vff|O~q\,
	devoe => ww_devoe,
	o => \regOUT[86]~output_o\);

\regOUT[87]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegisterFile|reg5|gen_register:7:vff|O~q\,
	devoe => ww_devoe,
	o => \regOUT[87]~output_o\);

\regOUT[88]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegisterFile|reg5|gen_register:8:vff|O~q\,
	devoe => ww_devoe,
	o => \regOUT[88]~output_o\);

\regOUT[89]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegisterFile|reg5|gen_register:9:vff|O~q\,
	devoe => ww_devoe,
	o => \regOUT[89]~output_o\);

\regOUT[90]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegisterFile|reg5|gen_register:10:vff|O~q\,
	devoe => ww_devoe,
	o => \regOUT[90]~output_o\);

\regOUT[91]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegisterFile|reg5|gen_register:11:vff|O~q\,
	devoe => ww_devoe,
	o => \regOUT[91]~output_o\);

\regOUT[92]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegisterFile|reg5|gen_register:12:vff|O~q\,
	devoe => ww_devoe,
	o => \regOUT[92]~output_o\);

\regOUT[93]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegisterFile|reg5|gen_register:13:vff|O~q\,
	devoe => ww_devoe,
	o => \regOUT[93]~output_o\);

\regOUT[94]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegisterFile|reg5|gen_register:14:vff|O~q\,
	devoe => ww_devoe,
	o => \regOUT[94]~output_o\);

\regOUT[95]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegisterFile|reg5|gen_register:15:vff|O~q\,
	devoe => ww_devoe,
	o => \regOUT[95]~output_o\);

\regOUT[96]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegisterFile|reg6|gen_register:0:vff|O~q\,
	devoe => ww_devoe,
	o => \regOUT[96]~output_o\);

\regOUT[97]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegisterFile|reg6|gen_register:1:vff|O~q\,
	devoe => ww_devoe,
	o => \regOUT[97]~output_o\);

\regOUT[98]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegisterFile|reg6|gen_register:2:vff|O~q\,
	devoe => ww_devoe,
	o => \regOUT[98]~output_o\);

\regOUT[99]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegisterFile|reg6|gen_register:3:vff|O~q\,
	devoe => ww_devoe,
	o => \regOUT[99]~output_o\);

\regOUT[100]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegisterFile|reg6|gen_register:4:vff|O~q\,
	devoe => ww_devoe,
	o => \regOUT[100]~output_o\);

\regOUT[101]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegisterFile|reg6|gen_register:5:vff|O~q\,
	devoe => ww_devoe,
	o => \regOUT[101]~output_o\);

\regOUT[102]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegisterFile|reg6|gen_register:6:vff|O~q\,
	devoe => ww_devoe,
	o => \regOUT[102]~output_o\);

\regOUT[103]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegisterFile|reg6|gen_register:7:vff|O~q\,
	devoe => ww_devoe,
	o => \regOUT[103]~output_o\);

\regOUT[104]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegisterFile|reg6|gen_register:8:vff|O~q\,
	devoe => ww_devoe,
	o => \regOUT[104]~output_o\);

\regOUT[105]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegisterFile|reg6|gen_register:9:vff|O~q\,
	devoe => ww_devoe,
	o => \regOUT[105]~output_o\);

\regOUT[106]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegisterFile|reg6|gen_register:10:vff|O~q\,
	devoe => ww_devoe,
	o => \regOUT[106]~output_o\);

\regOUT[107]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegisterFile|reg6|gen_register:11:vff|O~q\,
	devoe => ww_devoe,
	o => \regOUT[107]~output_o\);

\regOUT[108]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegisterFile|reg6|gen_register:12:vff|O~q\,
	devoe => ww_devoe,
	o => \regOUT[108]~output_o\);

\regOUT[109]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegisterFile|reg6|gen_register:13:vff|O~q\,
	devoe => ww_devoe,
	o => \regOUT[109]~output_o\);

\regOUT[110]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegisterFile|reg6|gen_register:14:vff|O~q\,
	devoe => ww_devoe,
	o => \regOUT[110]~output_o\);

\regOUT[111]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegisterFile|reg6|gen_register:15:vff|O~q\,
	devoe => ww_devoe,
	o => \regOUT[111]~output_o\);

\regOUT[112]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegisterFile|reg7|gen_register:0:vff|O~q\,
	devoe => ww_devoe,
	o => \regOUT[112]~output_o\);

\regOUT[113]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegisterFile|reg7|gen_register:1:vff|O~q\,
	devoe => ww_devoe,
	o => \regOUT[113]~output_o\);

\regOUT[114]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegisterFile|reg7|gen_register:2:vff|O~q\,
	devoe => ww_devoe,
	o => \regOUT[114]~output_o\);

\regOUT[115]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegisterFile|reg7|gen_register:3:vff|O~q\,
	devoe => ww_devoe,
	o => \regOUT[115]~output_o\);

\regOUT[116]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegisterFile|reg7|gen_register:4:vff|O~q\,
	devoe => ww_devoe,
	o => \regOUT[116]~output_o\);

\regOUT[117]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegisterFile|reg7|gen_register:5:vff|O~q\,
	devoe => ww_devoe,
	o => \regOUT[117]~output_o\);

\regOUT[118]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegisterFile|reg7|gen_register:6:vff|O~q\,
	devoe => ww_devoe,
	o => \regOUT[118]~output_o\);

\regOUT[119]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegisterFile|reg7|gen_register:7:vff|O~q\,
	devoe => ww_devoe,
	o => \regOUT[119]~output_o\);

\regOUT[120]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegisterFile|reg7|gen_register:8:vff|O~q\,
	devoe => ww_devoe,
	o => \regOUT[120]~output_o\);

\regOUT[121]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegisterFile|reg7|gen_register:9:vff|O~q\,
	devoe => ww_devoe,
	o => \regOUT[121]~output_o\);

\regOUT[122]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegisterFile|reg7|gen_register:10:vff|O~q\,
	devoe => ww_devoe,
	o => \regOUT[122]~output_o\);

\regOUT[123]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegisterFile|reg7|gen_register:11:vff|O~q\,
	devoe => ww_devoe,
	o => \regOUT[123]~output_o\);

\regOUT[124]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegisterFile|reg7|gen_register:12:vff|O~q\,
	devoe => ww_devoe,
	o => \regOUT[124]~output_o\);

\regOUT[125]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegisterFile|reg7|gen_register:13:vff|O~q\,
	devoe => ww_devoe,
	o => \regOUT[125]~output_o\);

\regOUT[126]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegisterFile|reg7|gen_register:14:vff|O~q\,
	devoe => ww_devoe,
	o => \regOUT[126]~output_o\);

\regOUT[127]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegisterFile|reg7|gen_register:15:vff|O~q\,
	devoe => ww_devoe,
	o => \regOUT[127]~output_o\);

\regOUT[128]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \regOUT[128]~output_o\);

\regOUT[129]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \regOUT[129]~output_o\);

\regOUT[130]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \regOUT[130]~output_o\);

\regOUT[131]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \regOUT[131]~output_o\);

\regOUT[132]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \regOUT[132]~output_o\);

\regOUT[133]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \regOUT[133]~output_o\);

\regOUT[134]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \regOUT[134]~output_o\);

\regOUT[135]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \regOUT[135]~output_o\);

\regOUT[136]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \regOUT[136]~output_o\);

\regOUT[137]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \regOUT[137]~output_o\);

\regOUT[138]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \regOUT[138]~output_o\);

\regOUT[139]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \regOUT[139]~output_o\);

\regOUT[140]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \regOUT[140]~output_o\);

\regOUT[141]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \regOUT[141]~output_o\);

\regOUT[142]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \regOUT[142]~output_o\);

\regOUT[143]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \regOUT[143]~output_o\);

\instructionAD[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|gen_register:0:vff|O~q\,
	devoe => ww_devoe,
	o => \instructionAD[0]~output_o\);

\instructionAD[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|gen_register:1:vff|O~q\,
	devoe => ww_devoe,
	o => \instructionAD[1]~output_o\);

\instructionAD[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|gen_register:2:vff|O~q\,
	devoe => ww_devoe,
	o => \instructionAD[2]~output_o\);

\instructionAD[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|gen_register:3:vff|O~q\,
	devoe => ww_devoe,
	o => \instructionAD[3]~output_o\);

\instructionAD[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|gen_register:4:vff|O~q\,
	devoe => ww_devoe,
	o => \instructionAD[4]~output_o\);

\instructionAD[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|gen_register:5:vff|O~q\,
	devoe => ww_devoe,
	o => \instructionAD[5]~output_o\);

\instructionAD[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|gen_register:6:vff|O~q\,
	devoe => ww_devoe,
	o => \instructionAD[6]~output_o\);

\instructionAD[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|gen_register:7:vff|O~q\,
	devoe => ww_devoe,
	o => \instructionAD[7]~output_o\);

\instructionAD[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|gen_register:8:vff|O~q\,
	devoe => ww_devoe,
	o => \instructionAD[8]~output_o\);

\instructionAD[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|gen_register:9:vff|O~q\,
	devoe => ww_devoe,
	o => \instructionAD[9]~output_o\);

\instructionAD[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|gen_register:10:vff|O~q\,
	devoe => ww_devoe,
	o => \instructionAD[10]~output_o\);

\instructionAD[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|gen_register:11:vff|O~q\,
	devoe => ww_devoe,
	o => \instructionAD[11]~output_o\);

\instructionAD[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|gen_register:12:vff|O~q\,
	devoe => ww_devoe,
	o => \instructionAD[12]~output_o\);

\instructionAD[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|gen_register:13:vff|O~q\,
	devoe => ww_devoe,
	o => \instructionAD[13]~output_o\);

\instructionAD[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|gen_register:14:vff|O~q\,
	devoe => ww_devoe,
	o => \instructionAD[14]~output_o\);

\instructionAD[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|gen_register:15:vff|O~q\,
	devoe => ww_devoe,
	o => \instructionAD[15]~output_o\);

\clock~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

\instr[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr(12),
	o => \instr[12]~input_o\);

\instr[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr(13),
	o => \instr[13]~input_o\);

\instr[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr(14),
	o => \instr[14]~input_o\);

\instr[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr(15),
	o => \instr[15]~input_o\);

\IFIDREG|outInstruction[13]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \IFIDREG|outInstruction[13]~0_combout\ = ( \instr[15]~input_o\ & ( (\clock~input_o\ & (\instr[13]~input_o\ & ((!\instr[14]~input_o\) # (\instr[12]~input_o\)))) ) ) # ( !\instr[15]~input_o\ & ( (\clock~input_o\ & \instr[13]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000000100000101000001010000010100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_clock~input_o\,
	datab => \ALT_INV_instr[12]~input_o\,
	datac => \ALT_INV_instr[13]~input_o\,
	datad => \ALT_INV_instr[14]~input_o\,
	datae => \ALT_INV_instr[15]~input_o\,
	combout => \IFIDREG|outInstruction[13]~0_combout\);

\IFIDREG|outInstruction[12]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \IFIDREG|outInstruction[12]~2_combout\ = (\clock~input_o\ & \instr[12]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_clock~input_o\,
	datab => \ALT_INV_instr[12]~input_o\,
	combout => \IFIDREG|outInstruction[12]~2_combout\);

\IFIDREG|outInstruction[12]\ : cyclonev_lcell_comb
-- Equation(s):
-- \IFIDREG|outInstruction\(12) = ( \IFIDREG|outInstruction\(12) & ( \IFIDREG|outPC[15]~1_combout\ & ( \IFIDREG|outInstruction[12]~2_combout\ ) ) ) # ( !\IFIDREG|outInstruction\(12) & ( \IFIDREG|outPC[15]~1_combout\ & ( \IFIDREG|outInstruction[12]~2_combout\ 
-- ) ) ) # ( \IFIDREG|outInstruction\(12) & ( !\IFIDREG|outPC[15]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \IFIDREG|ALT_INV_outInstruction[12]~2_combout\,
	datae => \IFIDREG|ALT_INV_outInstruction\(12),
	dataf => \IFIDREG|ALT_INV_outPC[15]~1_combout\,
	combout => \IFIDREG|outInstruction\(12));

\IFIDREG|outInstruction[14]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \IFIDREG|outInstruction[14]~3_combout\ = ( \instr[15]~input_o\ & ( (\clock~input_o\ & (\instr[14]~input_o\ & ((!\instr[13]~input_o\) # (\instr[12]~input_o\)))) ) ) # ( !\instr[15]~input_o\ & ( (\clock~input_o\ & \instr[14]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101000100000000010101010000000001010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_clock~input_o\,
	datab => \ALT_INV_instr[12]~input_o\,
	datac => \ALT_INV_instr[13]~input_o\,
	datad => \ALT_INV_instr[14]~input_o\,
	datae => \ALT_INV_instr[15]~input_o\,
	combout => \IFIDREG|outInstruction[14]~3_combout\);

\IFIDREG|outInstruction[14]\ : cyclonev_lcell_comb
-- Equation(s):
-- \IFIDREG|outInstruction\(14) = ( \IFIDREG|outInstruction\(14) & ( \IFIDREG|outPC[15]~1_combout\ & ( \IFIDREG|outInstruction[14]~3_combout\ ) ) ) # ( !\IFIDREG|outInstruction\(14) & ( \IFIDREG|outPC[15]~1_combout\ & ( \IFIDREG|outInstruction[14]~3_combout\ 
-- ) ) ) # ( \IFIDREG|outInstruction\(14) & ( !\IFIDREG|outPC[15]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \IFIDREG|ALT_INV_outInstruction[14]~3_combout\,
	datae => \IFIDREG|ALT_INV_outInstruction\(14),
	dataf => \IFIDREG|ALT_INV_outPC[15]~1_combout\,
	combout => \IFIDREG|outInstruction\(14));

\IFIDREG|outInstruction[15]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \IFIDREG|outInstruction[15]~4_combout\ = ( \instr[15]~input_o\ & ( (\clock~input_o\ & (((!\instr[13]~input_o\) # (!\instr[14]~input_o\)) # (\instr[12]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101000100000000000000000101010101010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_clock~input_o\,
	datab => \ALT_INV_instr[12]~input_o\,
	datac => \ALT_INV_instr[13]~input_o\,
	datad => \ALT_INV_instr[14]~input_o\,
	datae => \ALT_INV_instr[15]~input_o\,
	combout => \IFIDREG|outInstruction[15]~4_combout\);

\IFIDREG|outInstruction[15]\ : cyclonev_lcell_comb
-- Equation(s):
-- \IFIDREG|outInstruction\(15) = ( \IFIDREG|outInstruction\(15) & ( \IFIDREG|outPC[15]~1_combout\ & ( \IFIDREG|outInstruction[15]~4_combout\ ) ) ) # ( !\IFIDREG|outInstruction\(15) & ( \IFIDREG|outPC[15]~1_combout\ & ( \IFIDREG|outInstruction[15]~4_combout\ 
-- ) ) ) # ( \IFIDREG|outInstruction\(15) & ( !\IFIDREG|outPC[15]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \IFIDREG|ALT_INV_outInstruction[15]~4_combout\,
	datae => \IFIDREG|ALT_INV_outInstruction\(15),
	dataf => \IFIDREG|ALT_INV_outPC[15]~1_combout\,
	combout => \IFIDREG|outInstruction\(15));

\Hazard|process_0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Hazard|process_0~1_combout\ = (\IFIDREG|outInstruction\(12) & (\IFIDREG|outInstruction\(14) & (\IFIDREG|outInstruction\(15) & !\Hazard|process_0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000010000000000000001000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IFIDREG|ALT_INV_outInstruction\(12),
	datab => \IFIDREG|ALT_INV_outInstruction\(14),
	datac => \IFIDREG|ALT_INV_outInstruction\(15),
	datad => \Hazard|ALT_INV_process_0~1_combout\,
	combout => \Hazard|process_0~1_combout\);

\IFIDREG|outPC[15]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \IFIDREG|outPC[15]~1_combout\ = ( \instr[15]~input_o\ & ( \Hazard|process_0~1_combout\ & ( \clock~input_o\ ) ) ) # ( !\instr[15]~input_o\ & ( \Hazard|process_0~1_combout\ & ( \clock~input_o\ ) ) ) # ( \instr[15]~input_o\ & ( !\Hazard|process_0~1_combout\ 
-- & ( (\clock~input_o\ & (((!\instr[13]~input_o\) # (!\instr[14]~input_o\)) # (\instr[12]~input_o\))) ) ) ) # ( !\instr[15]~input_o\ & ( !\Hazard|process_0~1_combout\ & ( \clock~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101000101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_clock~input_o\,
	datab => \ALT_INV_instr[12]~input_o\,
	datac => \ALT_INV_instr[13]~input_o\,
	datad => \ALT_INV_instr[14]~input_o\,
	datae => \ALT_INV_instr[15]~input_o\,
	dataf => \Hazard|ALT_INV_process_0~1_combout\,
	combout => \IFIDREG|outPC[15]~1_combout\);

\IFIDREG|outInstruction[13]\ : cyclonev_lcell_comb
-- Equation(s):
-- \IFIDREG|outInstruction\(13) = ( \IFIDREG|outInstruction\(13) & ( \IFIDREG|outPC[15]~1_combout\ & ( \IFIDREG|outInstruction[13]~0_combout\ ) ) ) # ( !\IFIDREG|outInstruction\(13) & ( \IFIDREG|outPC[15]~1_combout\ & ( \IFIDREG|outInstruction[13]~0_combout\ 
-- ) ) ) # ( \IFIDREG|outInstruction\(13) & ( !\IFIDREG|outPC[15]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \IFIDREG|ALT_INV_outInstruction[13]~0_combout\,
	datae => \IFIDREG|ALT_INV_outInstruction\(13),
	dataf => \IFIDREG|ALT_INV_outPC[15]~1_combout\,
	combout => \IFIDREG|outInstruction\(13));

\Controller|isWriteDig~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Controller|isWriteDig~0_combout\ = ( !\Hazard|process_0~1_combout\ & ( (\IFIDREG|outInstruction\(13) & (\IFIDREG|outInstruction\(12) & (\IFIDREG|outInstruction\(14) & !\IFIDREG|outInstruction\(15)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000000000000000000001000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IFIDREG|ALT_INV_outInstruction\(13),
	datab => \IFIDREG|ALT_INV_outInstruction\(12),
	datac => \IFIDREG|ALT_INV_outInstruction\(14),
	datad => \IFIDREG|ALT_INV_outInstruction\(15),
	datae => \Hazard|ALT_INV_process_0~1_combout\,
	combout => \Controller|isWriteDig~0_combout\);

\IDEXREG|isPrintDigit_IDEX\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \Controller|isWriteDig~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEXREG|isPrintDigit_IDEX~q\);

\EXMEMREG|PrintDigit_EXMEM\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \IDEXREG|isPrintDigit_IDEX~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EXMEMREG|PrintDigit_EXMEM~q\);

\Controller|isReadDig~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Controller|isReadDig~0_combout\ = ( !\Hazard|process_0~1_combout\ & ( (\IFIDREG|outInstruction\(13) & (!\IFIDREG|outInstruction\(12) & (\IFIDREG|outInstruction\(14) & !\IFIDREG|outInstruction\(15)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000000000000000000000000000100000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IFIDREG|ALT_INV_outInstruction\(13),
	datab => \IFIDREG|ALT_INV_outInstruction\(12),
	datac => \IFIDREG|ALT_INV_outInstruction\(14),
	datad => \IFIDREG|ALT_INV_outInstruction\(15),
	datae => \Hazard|ALT_INV_process_0~1_combout\,
	combout => \Controller|isReadDig~0_combout\);

\IDEXREG|isReadDigit_IDEX\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \Controller|isReadDig~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEXREG|isReadDigit_IDEX~q\);

\EXMEMREG|ReadDigit_EXMEM\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \IDEXREG|isReadDigit_IDEX~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EXMEMREG|ReadDigit_EXMEM~q\);

\Controller|isStWord~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Controller|isStWord~0_combout\ = ( !\Hazard|process_0~1_combout\ & ( (\IFIDREG|outInstruction\(13) & (!\IFIDREG|outInstruction\(12) & (!\IFIDREG|outInstruction\(14) & !\IFIDREG|outInstruction\(15)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000000000000000000001000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IFIDREG|ALT_INV_outInstruction\(13),
	datab => \IFIDREG|ALT_INV_outInstruction\(12),
	datac => \IFIDREG|ALT_INV_outInstruction\(14),
	datad => \IFIDREG|ALT_INV_outInstruction\(15),
	datae => \Hazard|ALT_INV_process_0~1_combout\,
	combout => \Controller|isStWord~0_combout\);

\IDEXREG|isSW_IDEX\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \Controller|isStWord~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEXREG|isSW_IDEX~q\);

\EXMEMREG|isSW_EXMEM\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \IDEXREG|isSW_IDEX~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EXMEMREG|isSW_EXMEM~q\);

\instr[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr(1),
	o => \instr[1]~input_o\);

\IFIDREG|outInstruction[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \IFIDREG|outInstruction[1]~1_combout\ = ( \instr[15]~input_o\ & ( \instr[1]~input_o\ & ( (\clock~input_o\ & (((!\instr[13]~input_o\) # (!\instr[14]~input_o\)) # (\instr[12]~input_o\))) ) ) ) # ( !\instr[15]~input_o\ & ( \instr[1]~input_o\ & ( 
-- \clock~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_clock~input_o\,
	datab => \ALT_INV_instr[12]~input_o\,
	datac => \ALT_INV_instr[13]~input_o\,
	datad => \ALT_INV_instr[14]~input_o\,
	datae => \ALT_INV_instr[15]~input_o\,
	dataf => \ALT_INV_instr[1]~input_o\,
	combout => \IFIDREG|outInstruction[1]~1_combout\);

\IFIDREG|outInstruction[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \IFIDREG|outInstruction\(1) = ( \IFIDREG|outInstruction\(1) & ( \IFIDREG|outPC[15]~1_combout\ & ( \IFIDREG|outInstruction[1]~1_combout\ ) ) ) # ( !\IFIDREG|outInstruction\(1) & ( \IFIDREG|outPC[15]~1_combout\ & ( \IFIDREG|outInstruction[1]~1_combout\ ) ) 
-- ) # ( \IFIDREG|outInstruction\(1) & ( !\IFIDREG|outPC[15]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \IFIDREG|ALT_INV_outInstruction[1]~1_combout\,
	datae => \IFIDREG|ALT_INV_outInstruction\(1),
	dataf => \IFIDREG|ALT_INV_outPC[15]~1_combout\,
	combout => \IFIDREG|outInstruction\(1));

\ALUController|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALUController|Mux2~0_combout\ = ( \IFIDREG|outInstruction\(15) & ( \IFIDREG|outInstruction\(13) ) ) # ( !\IFIDREG|outInstruction\(15) & ( ((\IFIDREG|outInstruction\(1) & (!\IFIDREG|outInstruction\(12) & !\IFIDREG|outInstruction\(14)))) # 
-- (\IFIDREG|outInstruction\(13)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111010101010101010101010101010101110101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IFIDREG|ALT_INV_outInstruction\(13),
	datab => \IFIDREG|ALT_INV_outInstruction\(1),
	datac => \IFIDREG|ALT_INV_outInstruction\(12),
	datad => \IFIDREG|ALT_INV_outInstruction\(14),
	datae => \IFIDREG|ALT_INV_outInstruction\(15),
	combout => \ALUController|Mux2~0_combout\);

\IDEXREG|ALUFunc_IDEX[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \ALUController|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEXREG|ALUFunc_IDEX\(1));

\instr[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr(0),
	o => \instr[0]~input_o\);

\IFIDREG|outInstruction[0]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \IFIDREG|outInstruction[0]~5_combout\ = ( \instr[15]~input_o\ & ( \instr[0]~input_o\ & ( (\clock~input_o\ & (((!\instr[13]~input_o\) # (!\instr[14]~input_o\)) # (\instr[12]~input_o\))) ) ) ) # ( !\instr[15]~input_o\ & ( \instr[0]~input_o\ & ( 
-- \clock~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_clock~input_o\,
	datab => \ALT_INV_instr[12]~input_o\,
	datac => \ALT_INV_instr[13]~input_o\,
	datad => \ALT_INV_instr[14]~input_o\,
	datae => \ALT_INV_instr[15]~input_o\,
	dataf => \ALT_INV_instr[0]~input_o\,
	combout => \IFIDREG|outInstruction[0]~5_combout\);

\IFIDREG|outInstruction[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \IFIDREG|outInstruction\(0) = ( \IFIDREG|outInstruction\(0) & ( \IFIDREG|outPC[15]~1_combout\ & ( \IFIDREG|outInstruction[0]~5_combout\ ) ) ) # ( !\IFIDREG|outInstruction\(0) & ( \IFIDREG|outPC[15]~1_combout\ & ( \IFIDREG|outInstruction[0]~5_combout\ ) ) 
-- ) # ( \IFIDREG|outInstruction\(0) & ( !\IFIDREG|outPC[15]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \IFIDREG|ALT_INV_outInstruction[0]~5_combout\,
	datae => \IFIDREG|ALT_INV_outInstruction\(0),
	dataf => \IFIDREG|ALT_INV_outPC[15]~1_combout\,
	combout => \IFIDREG|outInstruction\(0));

\ALUController|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALUController|Mux3~0_combout\ = ( \IFIDREG|outInstruction\(0) & ( ((!\IFIDREG|outInstruction\(13) & (!\IFIDREG|outInstruction\(14) & !\IFIDREG|outInstruction\(15)))) # (\IFIDREG|outInstruction\(12)) ) ) # ( !\IFIDREG|outInstruction\(0) & ( 
-- \IFIDREG|outInstruction\(12) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011101100110011001100110011001100111011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IFIDREG|ALT_INV_outInstruction\(13),
	datab => \IFIDREG|ALT_INV_outInstruction\(12),
	datac => \IFIDREG|ALT_INV_outInstruction\(14),
	datad => \IFIDREG|ALT_INV_outInstruction\(15),
	datae => \IFIDREG|ALT_INV_outInstruction\(0),
	combout => \ALUController|Mux3~0_combout\);

\IDEXREG|ALUFunc_IDEX[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \ALUController|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEXREG|ALUFunc_IDEX\(0));

\instr[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr(2),
	o => \instr[2]~input_o\);

\IFIDREG|outInstruction[2]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \IFIDREG|outInstruction[2]~6_combout\ = ( \instr[15]~input_o\ & ( \instr[2]~input_o\ & ( (\clock~input_o\ & (((!\instr[13]~input_o\) # (!\instr[14]~input_o\)) # (\instr[12]~input_o\))) ) ) ) # ( !\instr[15]~input_o\ & ( \instr[2]~input_o\ & ( 
-- \clock~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_clock~input_o\,
	datab => \ALT_INV_instr[12]~input_o\,
	datac => \ALT_INV_instr[13]~input_o\,
	datad => \ALT_INV_instr[14]~input_o\,
	datae => \ALT_INV_instr[15]~input_o\,
	dataf => \ALT_INV_instr[2]~input_o\,
	combout => \IFIDREG|outInstruction[2]~6_combout\);

\IFIDREG|outInstruction[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \IFIDREG|outInstruction\(2) = ( \IFIDREG|outInstruction\(2) & ( \IFIDREG|outPC[15]~1_combout\ & ( \IFIDREG|outInstruction[2]~6_combout\ ) ) ) # ( !\IFIDREG|outInstruction\(2) & ( \IFIDREG|outPC[15]~1_combout\ & ( \IFIDREG|outInstruction[2]~6_combout\ ) ) 
-- ) # ( \IFIDREG|outInstruction\(2) & ( !\IFIDREG|outPC[15]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \IFIDREG|ALT_INV_outInstruction[2]~6_combout\,
	datae => \IFIDREG|ALT_INV_outInstruction\(2),
	dataf => \IFIDREG|ALT_INV_outPC[15]~1_combout\,
	combout => \IFIDREG|outInstruction\(2));

\ALUController|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALUController|Mux1~0_combout\ = ( \IFIDREG|outInstruction\(2) & ( ((!\IFIDREG|outInstruction\(13) & (!\IFIDREG|outInstruction\(12) & !\IFIDREG|outInstruction\(15)))) # (\IFIDREG|outInstruction\(14)) ) ) # ( !\IFIDREG|outInstruction\(2) & ( 
-- \IFIDREG|outInstruction\(14) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111100011110000111100001111000011111000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IFIDREG|ALT_INV_outInstruction\(13),
	datab => \IFIDREG|ALT_INV_outInstruction\(12),
	datac => \IFIDREG|ALT_INV_outInstruction\(14),
	datad => \IFIDREG|ALT_INV_outInstruction\(15),
	datae => \IFIDREG|ALT_INV_outInstruction\(2),
	combout => \ALUController|Mux1~0_combout\);

\IDEXREG|ALUFunc_IDEX[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \ALUController|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEXREG|ALUFunc_IDEX\(2));

\Controller|isRType~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Controller|isRType~0_combout\ = ( !\Hazard|process_0~1_combout\ & ( (!\IFIDREG|outInstruction\(13) & (!\IFIDREG|outInstruction\(12) & (!\IFIDREG|outInstruction\(14) & !\IFIDREG|outInstruction\(15)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IFIDREG|ALT_INV_outInstruction\(13),
	datab => \IFIDREG|ALT_INV_outInstruction\(12),
	datac => \IFIDREG|ALT_INV_outInstruction\(14),
	datad => \IFIDREG|ALT_INV_outInstruction\(15),
	datae => \Hazard|ALT_INV_process_0~1_combout\,
	combout => \Controller|isRType~0_combout\);

\Controller|isMFPC~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Controller|isMFPC~0_combout\ = (\IFIDREG|outInstruction\(1) & (\IFIDREG|outInstruction\(0) & (\IFIDREG|outInstruction\(2) & \Controller|isRType~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IFIDREG|ALT_INV_outInstruction\(1),
	datab => \IFIDREG|ALT_INV_outInstruction\(0),
	datac => \IFIDREG|ALT_INV_outInstruction\(2),
	datad => \Controller|ALT_INV_isRType~0_combout\,
	combout => \Controller|isMFPC~0_combout\);

\IDEXREG|isMFPC_IDEX\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \Controller|isMFPC~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEXREG|isMFPC_IDEX~q\);

\IDEXREG|isR_IDEX\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \Controller|isRType~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEXREG|isR_IDEX~q\);

\ALUInput1Mux|v3|v2|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALUInput1Mux|v3|v2|Q~0_combout\ = ( \IDEXREG|isR_IDEX~q\ & ( (\IDEXREG|isMFPC_IDEX~q\ & ((!\IDEXREG|ALUFunc_IDEX\(1)) # ((!\IDEXREG|ALUFunc_IDEX\(0)) # (!\IDEXREG|ALUFunc_IDEX\(2))))) ) ) # ( !\IDEXREG|isR_IDEX~q\ & ( \IDEXREG|isMFPC_IDEX~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111000000000111111110000000011111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IDEXREG|ALT_INV_ALUFunc_IDEX\(1),
	datab => \IDEXREG|ALT_INV_ALUFunc_IDEX\(0),
	datac => \IDEXREG|ALT_INV_ALUFunc_IDEX\(2),
	datad => \IDEXREG|ALT_INV_isMFPC_IDEX~q\,
	datae => \IDEXREG|ALT_INV_isR_IDEX~q\,
	combout => \ALUInput1Mux|v3|v2|Q~0_combout\);

\instr[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr(9),
	o => \instr[9]~input_o\);

\IFIDREG|outInstruction[9]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \IFIDREG|outInstruction[9]~7_combout\ = ( \instr[15]~input_o\ & ( \instr[9]~input_o\ & ( (\clock~input_o\ & (((!\instr[13]~input_o\) # (!\instr[14]~input_o\)) # (\instr[12]~input_o\))) ) ) ) # ( !\instr[15]~input_o\ & ( \instr[9]~input_o\ & ( 
-- \clock~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_clock~input_o\,
	datab => \ALT_INV_instr[12]~input_o\,
	datac => \ALT_INV_instr[13]~input_o\,
	datad => \ALT_INV_instr[14]~input_o\,
	datae => \ALT_INV_instr[15]~input_o\,
	dataf => \ALT_INV_instr[9]~input_o\,
	combout => \IFIDREG|outInstruction[9]~7_combout\);

\IFIDREG|outInstruction[9]\ : cyclonev_lcell_comb
-- Equation(s):
-- \IFIDREG|outInstruction\(9) = ( \IFIDREG|outInstruction\(9) & ( \IFIDREG|outPC[15]~1_combout\ & ( \IFIDREG|outInstruction[9]~7_combout\ ) ) ) # ( !\IFIDREG|outInstruction\(9) & ( \IFIDREG|outPC[15]~1_combout\ & ( \IFIDREG|outInstruction[9]~7_combout\ ) ) 
-- ) # ( \IFIDREG|outInstruction\(9) & ( !\IFIDREG|outPC[15]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \IFIDREG|ALT_INV_outInstruction[9]~7_combout\,
	datae => \IFIDREG|ALT_INV_outInstruction\(9),
	dataf => \IFIDREG|ALT_INV_outPC[15]~1_combout\,
	combout => \IFIDREG|outInstruction\(9));

\IDEXREG|R1AD_IDEX[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \IFIDREG|outInstruction\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEXREG|R1AD_IDEX\(0));

\instr[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr(10),
	o => \instr[10]~input_o\);

\IFIDREG|outInstruction[10]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \IFIDREG|outInstruction[10]~8_combout\ = ( \instr[15]~input_o\ & ( \instr[10]~input_o\ & ( (\clock~input_o\ & (((!\instr[13]~input_o\) # (!\instr[14]~input_o\)) # (\instr[12]~input_o\))) ) ) ) # ( !\instr[15]~input_o\ & ( \instr[10]~input_o\ & ( 
-- \clock~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_clock~input_o\,
	datab => \ALT_INV_instr[12]~input_o\,
	datac => \ALT_INV_instr[13]~input_o\,
	datad => \ALT_INV_instr[14]~input_o\,
	datae => \ALT_INV_instr[15]~input_o\,
	dataf => \ALT_INV_instr[10]~input_o\,
	combout => \IFIDREG|outInstruction[10]~8_combout\);

\IFIDREG|outInstruction[10]\ : cyclonev_lcell_comb
-- Equation(s):
-- \IFIDREG|outInstruction\(10) = ( \IFIDREG|outInstruction\(10) & ( \IFIDREG|outPC[15]~1_combout\ & ( \IFIDREG|outInstruction[10]~8_combout\ ) ) ) # ( !\IFIDREG|outInstruction\(10) & ( \IFIDREG|outPC[15]~1_combout\ & ( \IFIDREG|outInstruction[10]~8_combout\ 
-- ) ) ) # ( \IFIDREG|outInstruction\(10) & ( !\IFIDREG|outPC[15]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \IFIDREG|ALT_INV_outInstruction[10]~8_combout\,
	datae => \IFIDREG|ALT_INV_outInstruction\(10),
	dataf => \IFIDREG|ALT_INV_outPC[15]~1_combout\,
	combout => \IFIDREG|outInstruction\(10));

\IDEXREG|R1AD_IDEX[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \IFIDREG|outInstruction\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEXREG|R1AD_IDEX\(1));

\instr[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr(11),
	o => \instr[11]~input_o\);

\IFIDREG|outInstruction[11]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \IFIDREG|outInstruction[11]~9_combout\ = ( \instr[15]~input_o\ & ( \instr[11]~input_o\ & ( (\clock~input_o\ & (((!\instr[13]~input_o\) # (!\instr[14]~input_o\)) # (\instr[12]~input_o\))) ) ) ) # ( !\instr[15]~input_o\ & ( \instr[11]~input_o\ & ( 
-- \clock~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_clock~input_o\,
	datab => \ALT_INV_instr[12]~input_o\,
	datac => \ALT_INV_instr[13]~input_o\,
	datad => \ALT_INV_instr[14]~input_o\,
	datae => \ALT_INV_instr[15]~input_o\,
	dataf => \ALT_INV_instr[11]~input_o\,
	combout => \IFIDREG|outInstruction[11]~9_combout\);

\IFIDREG|outInstruction[11]\ : cyclonev_lcell_comb
-- Equation(s):
-- \IFIDREG|outInstruction\(11) = ( \IFIDREG|outInstruction\(11) & ( \IFIDREG|outPC[15]~1_combout\ & ( \IFIDREG|outInstruction[11]~9_combout\ ) ) ) # ( !\IFIDREG|outInstruction\(11) & ( \IFIDREG|outPC[15]~1_combout\ & ( \IFIDREG|outInstruction[11]~9_combout\ 
-- ) ) ) # ( \IFIDREG|outInstruction\(11) & ( !\IFIDREG|outPC[15]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \IFIDREG|ALT_INV_outInstruction[11]~9_combout\,
	datae => \IFIDREG|ALT_INV_outInstruction\(11),
	dataf => \IFIDREG|ALT_INV_outPC[15]~1_combout\,
	combout => \IFIDREG|outInstruction\(11));

\IDEXREG|R1AD_IDEX[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \IFIDREG|outInstruction\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEXREG|R1AD_IDEX\(2));

\IDEXREG|jumpShortAddr_IDEX[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \IFIDREG|outInstruction\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEXREG|jumpShortAddr_IDEX\(0));

\Controller|isLdWord~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Controller|isLdWord~0_combout\ = ( !\Hazard|process_0~1_combout\ & ( (!\IFIDREG|outInstruction\(13) & (\IFIDREG|outInstruction\(12) & (!\IFIDREG|outInstruction\(14) & !\IFIDREG|outInstruction\(15)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000000000000000000000100000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IFIDREG|ALT_INV_outInstruction\(13),
	datab => \IFIDREG|ALT_INV_outInstruction\(12),
	datac => \IFIDREG|ALT_INV_outInstruction\(14),
	datad => \IFIDREG|ALT_INV_outInstruction\(15),
	datae => \Hazard|ALT_INV_process_0~1_combout\,
	combout => \Controller|isLdWord~0_combout\);

\IDEXREG|isLW_IDEX\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \Controller|isLdWord~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEXREG|isLW_IDEX~q\);

\instr[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr(3),
	o => \instr[3]~input_o\);

\IFIDREG|outInstruction[3]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \IFIDREG|outInstruction[3]~13_combout\ = ( \instr[15]~input_o\ & ( \instr[3]~input_o\ & ( (\clock~input_o\ & (((!\instr[13]~input_o\) # (!\instr[14]~input_o\)) # (\instr[12]~input_o\))) ) ) ) # ( !\instr[15]~input_o\ & ( \instr[3]~input_o\ & ( 
-- \clock~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_clock~input_o\,
	datab => \ALT_INV_instr[12]~input_o\,
	datac => \ALT_INV_instr[13]~input_o\,
	datad => \ALT_INV_instr[14]~input_o\,
	datae => \ALT_INV_instr[15]~input_o\,
	dataf => \ALT_INV_instr[3]~input_o\,
	combout => \IFIDREG|outInstruction[3]~13_combout\);

\IFIDREG|outInstruction[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \IFIDREG|outInstruction\(3) = ( \IFIDREG|outInstruction\(3) & ( \IFIDREG|outPC[15]~1_combout\ & ( \IFIDREG|outInstruction[3]~13_combout\ ) ) ) # ( !\IFIDREG|outInstruction\(3) & ( \IFIDREG|outPC[15]~1_combout\ & ( \IFIDREG|outInstruction[3]~13_combout\ ) 
-- ) ) # ( \IFIDREG|outInstruction\(3) & ( !\IFIDREG|outPC[15]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \IFIDREG|ALT_INV_outInstruction[3]~13_combout\,
	datae => \IFIDREG|ALT_INV_outInstruction\(3),
	dataf => \IFIDREG|ALT_INV_outPC[15]~1_combout\,
	combout => \IFIDREG|outInstruction\(3));

\IDEXREG|jumpShortAddr_IDEX[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \IFIDREG|outInstruction\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEXREG|jumpShortAddr_IDEX\(3));

\writeReg_dest_sig[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \writeReg_dest_sig[0]~0_combout\ = (!\IDEXREG|isLW_IDEX~q\ & ((\IDEXREG|jumpShortAddr_IDEX\(3)))) # (\IDEXREG|isLW_IDEX~q\ & (\IDEXREG|jumpShortAddr_IDEX\(0)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IDEXREG|ALT_INV_jumpShortAddr_IDEX\(0),
	datab => \IDEXREG|ALT_INV_isLW_IDEX~q\,
	datac => \IDEXREG|ALT_INV_jumpShortAddr_IDEX\(3),
	combout => \writeReg_dest_sig[0]~0_combout\);

\EXMEMREG|RegAD_EXMEM[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \writeReg_dest_sig[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EXMEMREG|RegAD_EXMEM\(0));

\IDEXREG|jumpShortAddr_IDEX[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \IFIDREG|outInstruction\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEXREG|jumpShortAddr_IDEX\(1));

\instr[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr(4),
	o => \instr[4]~input_o\);

\IFIDREG|outInstruction[4]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \IFIDREG|outInstruction[4]~14_combout\ = ( \instr[15]~input_o\ & ( \instr[4]~input_o\ & ( (\clock~input_o\ & (((!\instr[13]~input_o\) # (!\instr[14]~input_o\)) # (\instr[12]~input_o\))) ) ) ) # ( !\instr[15]~input_o\ & ( \instr[4]~input_o\ & ( 
-- \clock~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_clock~input_o\,
	datab => \ALT_INV_instr[12]~input_o\,
	datac => \ALT_INV_instr[13]~input_o\,
	datad => \ALT_INV_instr[14]~input_o\,
	datae => \ALT_INV_instr[15]~input_o\,
	dataf => \ALT_INV_instr[4]~input_o\,
	combout => \IFIDREG|outInstruction[4]~14_combout\);

\IFIDREG|outInstruction[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \IFIDREG|outInstruction\(4) = ( \IFIDREG|outInstruction\(4) & ( \IFIDREG|outPC[15]~1_combout\ & ( \IFIDREG|outInstruction[4]~14_combout\ ) ) ) # ( !\IFIDREG|outInstruction\(4) & ( \IFIDREG|outPC[15]~1_combout\ & ( \IFIDREG|outInstruction[4]~14_combout\ ) 
-- ) ) # ( \IFIDREG|outInstruction\(4) & ( !\IFIDREG|outPC[15]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \IFIDREG|ALT_INV_outInstruction[4]~14_combout\,
	datae => \IFIDREG|ALT_INV_outInstruction\(4),
	dataf => \IFIDREG|ALT_INV_outPC[15]~1_combout\,
	combout => \IFIDREG|outInstruction\(4));

\IDEXREG|jumpShortAddr_IDEX[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \IFIDREG|outInstruction\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEXREG|jumpShortAddr_IDEX\(4));

\writeReg_dest_sig[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \writeReg_dest_sig[1]~1_combout\ = (!\IDEXREG|isLW_IDEX~q\ & ((\IDEXREG|jumpShortAddr_IDEX\(4)))) # (\IDEXREG|isLW_IDEX~q\ & (\IDEXREG|jumpShortAddr_IDEX\(1)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IDEXREG|ALT_INV_isLW_IDEX~q\,
	datab => \IDEXREG|ALT_INV_jumpShortAddr_IDEX\(1),
	datac => \IDEXREG|ALT_INV_jumpShortAddr_IDEX\(4),
	combout => \writeReg_dest_sig[1]~1_combout\);

\EXMEMREG|RegAD_EXMEM[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \writeReg_dest_sig[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EXMEMREG|RegAD_EXMEM\(1));

\IDEXREG|jumpShortAddr_IDEX[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \IFIDREG|outInstruction\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEXREG|jumpShortAddr_IDEX\(2));

\instr[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr(5),
	o => \instr[5]~input_o\);

\IFIDREG|outInstruction[5]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \IFIDREG|outInstruction[5]~15_combout\ = ( \instr[15]~input_o\ & ( \instr[5]~input_o\ & ( (\clock~input_o\ & (((!\instr[13]~input_o\) # (!\instr[14]~input_o\)) # (\instr[12]~input_o\))) ) ) ) # ( !\instr[15]~input_o\ & ( \instr[5]~input_o\ & ( 
-- \clock~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_clock~input_o\,
	datab => \ALT_INV_instr[12]~input_o\,
	datac => \ALT_INV_instr[13]~input_o\,
	datad => \ALT_INV_instr[14]~input_o\,
	datae => \ALT_INV_instr[15]~input_o\,
	dataf => \ALT_INV_instr[5]~input_o\,
	combout => \IFIDREG|outInstruction[5]~15_combout\);

\IFIDREG|outInstruction[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \IFIDREG|outInstruction\(5) = ( \IFIDREG|outInstruction\(5) & ( \IFIDREG|outPC[15]~1_combout\ & ( \IFIDREG|outInstruction[5]~15_combout\ ) ) ) # ( !\IFIDREG|outInstruction\(5) & ( \IFIDREG|outPC[15]~1_combout\ & ( \IFIDREG|outInstruction[5]~15_combout\ ) 
-- ) ) # ( \IFIDREG|outInstruction\(5) & ( !\IFIDREG|outPC[15]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \IFIDREG|ALT_INV_outInstruction[5]~15_combout\,
	datae => \IFIDREG|ALT_INV_outInstruction\(5),
	dataf => \IFIDREG|ALT_INV_outPC[15]~1_combout\,
	combout => \IFIDREG|outInstruction\(5));

\IDEXREG|jumpShortAddr_IDEX[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \IFIDREG|outInstruction\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEXREG|jumpShortAddr_IDEX\(5));

\writeReg_dest_sig[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \writeReg_dest_sig[2]~2_combout\ = (!\IDEXREG|isLW_IDEX~q\ & ((\IDEXREG|jumpShortAddr_IDEX\(5)))) # (\IDEXREG|isLW_IDEX~q\ & (\IDEXREG|jumpShortAddr_IDEX\(2)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IDEXREG|ALT_INV_isLW_IDEX~q\,
	datab => \IDEXREG|ALT_INV_jumpShortAddr_IDEX\(2),
	datac => \IDEXREG|ALT_INV_jumpShortAddr_IDEX\(5),
	combout => \writeReg_dest_sig[2]~2_combout\);

\EXMEMREG|RegAD_EXMEM[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \writeReg_dest_sig[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EXMEMREG|RegAD_EXMEM\(2));

\ALUInput1Mux|v3|v2|Q~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALUInput1Mux|v3|v2|Q~2_combout\ = ( \EXMEMREG|RegAD_EXMEM\(1) & ( \EXMEMREG|RegAD_EXMEM\(2) & ( (\IDEXREG|R1AD_IDEX\(1) & (\IDEXREG|R1AD_IDEX\(2) & (!\IDEXREG|R1AD_IDEX\(0) $ (\EXMEMREG|RegAD_EXMEM\(0))))) ) ) ) # ( !\EXMEMREG|RegAD_EXMEM\(1) & ( 
-- \EXMEMREG|RegAD_EXMEM\(2) & ( (!\IDEXREG|R1AD_IDEX\(1) & (\IDEXREG|R1AD_IDEX\(2) & (!\IDEXREG|R1AD_IDEX\(0) $ (\EXMEMREG|RegAD_EXMEM\(0))))) ) ) ) # ( \EXMEMREG|RegAD_EXMEM\(1) & ( !\EXMEMREG|RegAD_EXMEM\(2) & ( (\IDEXREG|R1AD_IDEX\(1) & 
-- (!\IDEXREG|R1AD_IDEX\(2) & (!\IDEXREG|R1AD_IDEX\(0) $ (\EXMEMREG|RegAD_EXMEM\(0))))) ) ) ) # ( !\EXMEMREG|RegAD_EXMEM\(1) & ( !\EXMEMREG|RegAD_EXMEM\(2) & ( (!\IDEXREG|R1AD_IDEX\(1) & (!\IDEXREG|R1AD_IDEX\(2) & (!\IDEXREG|R1AD_IDEX\(0) $ 
-- (\EXMEMREG|RegAD_EXMEM\(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000001000000001000000001000000001000000001000000001000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IDEXREG|ALT_INV_R1AD_IDEX\(0),
	datab => \IDEXREG|ALT_INV_R1AD_IDEX\(1),
	datac => \IDEXREG|ALT_INV_R1AD_IDEX\(2),
	datad => \EXMEMREG|ALT_INV_RegAD_EXMEM\(0),
	datae => \EXMEMREG|ALT_INV_RegAD_EXMEM\(1),
	dataf => \EXMEMREG|ALT_INV_RegAD_EXMEM\(2),
	combout => \ALUInput1Mux|v3|v2|Q~2_combout\);

\ALUInput1Mux|v3|v2|Q~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALUInput1Mux|v3|v2|Q~1_combout\ = ( \EXMEMREG|RegAD_EXMEM\(1) & ( \EXMEMREG|RegAD_EXMEM\(2) & ( (!\IDEXREG|R1AD_IDEX\(1)) # ((!\IDEXREG|R1AD_IDEX\(2)) # (!\IDEXREG|R1AD_IDEX\(0) $ (!\EXMEMREG|RegAD_EXMEM\(0)))) ) ) ) # ( !\EXMEMREG|RegAD_EXMEM\(1) & ( 
-- \EXMEMREG|RegAD_EXMEM\(2) & ( ((!\IDEXREG|R1AD_IDEX\(2)) # (!\IDEXREG|R1AD_IDEX\(0) $ (!\EXMEMREG|RegAD_EXMEM\(0)))) # (\IDEXREG|R1AD_IDEX\(1)) ) ) ) # ( \EXMEMREG|RegAD_EXMEM\(1) & ( !\EXMEMREG|RegAD_EXMEM\(2) & ( (!\IDEXREG|R1AD_IDEX\(1)) # 
-- ((!\IDEXREG|R1AD_IDEX\(0) $ (!\EXMEMREG|RegAD_EXMEM\(0))) # (\IDEXREG|R1AD_IDEX\(2))) ) ) ) # ( !\EXMEMREG|RegAD_EXMEM\(1) & ( !\EXMEMREG|RegAD_EXMEM\(2) & ( (!\IDEXREG|R1AD_IDEX\(0)) # (((!\EXMEMREG|RegAD_EXMEM\(0)) # (\IDEXREG|R1AD_IDEX\(2))) # 
-- (\IDEXREG|R1AD_IDEX\(1))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111110111111110111111110111111110111111110111111110111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IDEXREG|ALT_INV_R1AD_IDEX\(0),
	datab => \IDEXREG|ALT_INV_R1AD_IDEX\(1),
	datac => \IDEXREG|ALT_INV_R1AD_IDEX\(2),
	datad => \EXMEMREG|ALT_INV_RegAD_EXMEM\(0),
	datae => \EXMEMREG|ALT_INV_RegAD_EXMEM\(1),
	dataf => \EXMEMREG|ALT_INV_RegAD_EXMEM\(2),
	combout => \ALUInput1Mux|v3|v2|Q~1_combout\);

\MEMWBREG|writeAD[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \EXMEMREG|RegAD_EXMEM\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMWBREG|writeAD\(0));

\MEMWBREG|writeAD[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \EXMEMREG|RegAD_EXMEM\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMWBREG|writeAD\(1));

\MEMWBREG|writeAD[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \EXMEMREG|RegAD_EXMEM\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMWBREG|writeAD\(2));

\ALUInput1Mux|v3|v2|Q~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALUInput1Mux|v3|v2|Q~3_combout\ = ( \MEMWBREG|writeAD\(1) & ( \MEMWBREG|writeAD\(2) & ( (\IDEXREG|R1AD_IDEX\(1) & (\IDEXREG|R1AD_IDEX\(2) & (!\IDEXREG|R1AD_IDEX\(0) $ (\MEMWBREG|writeAD\(0))))) ) ) ) # ( !\MEMWBREG|writeAD\(1) & ( \MEMWBREG|writeAD\(2) & 
-- ( (!\IDEXREG|R1AD_IDEX\(1) & (\IDEXREG|R1AD_IDEX\(2) & (!\IDEXREG|R1AD_IDEX\(0) $ (\MEMWBREG|writeAD\(0))))) ) ) ) # ( \MEMWBREG|writeAD\(1) & ( !\MEMWBREG|writeAD\(2) & ( (\IDEXREG|R1AD_IDEX\(1) & (!\IDEXREG|R1AD_IDEX\(2) & (!\IDEXREG|R1AD_IDEX\(0) $ 
-- (\MEMWBREG|writeAD\(0))))) ) ) ) # ( !\MEMWBREG|writeAD\(1) & ( !\MEMWBREG|writeAD\(2) & ( (\IDEXREG|R1AD_IDEX\(0) & (!\IDEXREG|R1AD_IDEX\(1) & (!\IDEXREG|R1AD_IDEX\(2) & \MEMWBREG|writeAD\(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000001000000001000000001000000001000000001000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IDEXREG|ALT_INV_R1AD_IDEX\(0),
	datab => \IDEXREG|ALT_INV_R1AD_IDEX\(1),
	datac => \IDEXREG|ALT_INV_R1AD_IDEX\(2),
	datad => \MEMWBREG|ALT_INV_writeAD\(0),
	datae => \MEMWBREG|ALT_INV_writeAD\(1),
	dataf => \MEMWBREG|ALT_INV_writeAD\(2),
	combout => \ALUInput1Mux|v3|v2|Q~3_combout\);

\fromData[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fromData(0),
	o => \fromData[0]~input_o\);

\EXMEMREG|isLW_EXMEM\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \IDEXREG|isLW_IDEX~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EXMEMREG|isLW_EXMEM~q\);

\MEMWB_inputData_sig[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMWB_inputData_sig[0]~0_combout\ = (!\EXMEMREG|isLW_EXMEM~q\ & (\EXMEMREG|Result_EXMEM\(0))) # (\EXMEMREG|isLW_EXMEM~q\ & ((\fromData[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011010100110101001101010011010100110101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EXMEMREG|ALT_INV_Result_EXMEM\(0),
	datab => \ALT_INV_fromData[0]~input_o\,
	datac => \EXMEMREG|ALT_INV_isLW_EXMEM~q\,
	combout => \MEMWB_inputData_sig[0]~0_combout\);

\keyData[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_keyData(0),
	o => \keyData[0]~input_o\);

\MEMWBREG|writeData[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \MEMWB_inputData_sig[0]~0_combout\,
	asdata => \keyData[0]~input_o\,
	sload => \EXMEMREG|ReadDigit_EXMEM~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMWBREG|writeData\(0));

\RegisterFile|v0|v12|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \RegisterFile|v0|v12|Q~0_combout\ = (!\MEMWBREG|writeAD\(0) & (!\MEMWBREG|writeAD\(1) & \MEMWBREG|writeAD\(2)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000001000000010000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMWBREG|ALT_INV_writeAD\(0),
	datab => \MEMWBREG|ALT_INV_writeAD\(1),
	datac => \MEMWBREG|ALT_INV_writeAD\(2),
	combout => \RegisterFile|v0|v12|Q~0_combout\);

\RegisterFile|reg4|gen_register:0:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~input_o\,
	d => \MEMWBREG|writeData\(0),
	ena => \RegisterFile|v0|v12|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegisterFile|reg4|gen_register:0:vff|O~q\);

\RegisterFile|v0|v14|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \RegisterFile|v0|v14|Q~0_combout\ = (\MEMWBREG|writeAD\(0) & (!\MEMWBREG|writeAD\(1) & \MEMWBREG|writeAD\(2)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMWBREG|ALT_INV_writeAD\(0),
	datab => \MEMWBREG|ALT_INV_writeAD\(1),
	datac => \MEMWBREG|ALT_INV_writeAD\(2),
	combout => \RegisterFile|v0|v14|Q~0_combout\);

\RegisterFile|reg5|gen_register:0:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~input_o\,
	d => \MEMWBREG|writeData\(0),
	ena => \RegisterFile|v0|v14|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegisterFile|reg5|gen_register:0:vff|O~q\);

\RegisterFile|v0|v16|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \RegisterFile|v0|v16|Q~0_combout\ = (!\MEMWBREG|writeAD\(0) & (\MEMWBREG|writeAD\(1) & \MEMWBREG|writeAD\(2)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMWBREG|ALT_INV_writeAD\(0),
	datab => \MEMWBREG|ALT_INV_writeAD\(1),
	datac => \MEMWBREG|ALT_INV_writeAD\(2),
	combout => \RegisterFile|v0|v16|Q~0_combout\);

\RegisterFile|reg6|gen_register:0:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~input_o\,
	d => \MEMWBREG|writeData\(0),
	ena => \RegisterFile|v0|v16|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegisterFile|reg6|gen_register:0:vff|O~q\);

\RegisterFile|v0|v18|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \RegisterFile|v0|v18|Q~0_combout\ = (\MEMWBREG|writeAD\(0) & (\MEMWBREG|writeAD\(1) & \MEMWBREG|writeAD\(2)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMWBREG|ALT_INV_writeAD\(0),
	datab => \MEMWBREG|ALT_INV_writeAD\(1),
	datac => \MEMWBREG|ALT_INV_writeAD\(2),
	combout => \RegisterFile|v0|v18|Q~0_combout\);

\RegisterFile|reg7|gen_register:0:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~input_o\,
	d => \MEMWBREG|writeData\(0),
	ena => \RegisterFile|v0|v18|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegisterFile|reg7|gen_register:0:vff|O~q\);

\RegisterFile|read_mux1|v6|v3|v0|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \RegisterFile|read_mux1|v6|v3|v0|Q~0_combout\ = ( \IFIDREG|outInstruction\(9) & ( \IFIDREG|outInstruction\(10) & ( \RegisterFile|reg7|gen_register:0:vff|O~q\ ) ) ) # ( !\IFIDREG|outInstruction\(9) & ( \IFIDREG|outInstruction\(10) & ( 
-- \RegisterFile|reg6|gen_register:0:vff|O~q\ ) ) ) # ( \IFIDREG|outInstruction\(9) & ( !\IFIDREG|outInstruction\(10) & ( \RegisterFile|reg5|gen_register:0:vff|O~q\ ) ) ) # ( !\IFIDREG|outInstruction\(9) & ( !\IFIDREG|outInstruction\(10) & ( 
-- \RegisterFile|reg4|gen_register:0:vff|O~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegisterFile|reg4|gen_register:0:vff|ALT_INV_O~q\,
	datab => \RegisterFile|reg5|gen_register:0:vff|ALT_INV_O~q\,
	datac => \RegisterFile|reg6|gen_register:0:vff|ALT_INV_O~q\,
	datad => \RegisterFile|reg7|gen_register:0:vff|ALT_INV_O~q\,
	datae => \IFIDREG|ALT_INV_outInstruction\(9),
	dataf => \IFIDREG|ALT_INV_outInstruction\(10),
	combout => \RegisterFile|read_mux1|v6|v3|v0|Q~0_combout\);

\RegisterFile|v0|v10|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \RegisterFile|v0|v10|Q~0_combout\ = (\MEMWBREG|writeAD\(0) & (\MEMWBREG|writeAD\(1) & !\MEMWBREG|writeAD\(2)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000000100000001000000010000000100000001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMWBREG|ALT_INV_writeAD\(0),
	datab => \MEMWBREG|ALT_INV_writeAD\(1),
	datac => \MEMWBREG|ALT_INV_writeAD\(2),
	combout => \RegisterFile|v0|v10|Q~0_combout\);

\RegisterFile|reg3|gen_register:0:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~input_o\,
	d => \MEMWBREG|writeData\(0),
	ena => \RegisterFile|v0|v10|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegisterFile|reg3|gen_register:0:vff|O~q\);

\RegisterFile|v0|v8|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \RegisterFile|v0|v8|Q~0_combout\ = (!\MEMWBREG|writeAD\(0) & (\MEMWBREG|writeAD\(1) & !\MEMWBREG|writeAD\(2)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000001000000010000000100000001000000010000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMWBREG|ALT_INV_writeAD\(0),
	datab => \MEMWBREG|ALT_INV_writeAD\(1),
	datac => \MEMWBREG|ALT_INV_writeAD\(2),
	combout => \RegisterFile|v0|v8|Q~0_combout\);

\RegisterFile|reg2|gen_register:0:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~input_o\,
	d => \MEMWBREG|writeData\(0),
	ena => \RegisterFile|v0|v8|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegisterFile|reg2|gen_register:0:vff|O~q\);

\RegisterFile|v0|v6|Q\ : cyclonev_lcell_comb
-- Equation(s):
-- \RegisterFile|v0|v6|Q~combout\ = (\MEMWBREG|writeAD\(0) & (!\MEMWBREG|writeAD\(1) & !\MEMWBREG|writeAD\(2)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000010000000100000001000000010000000100000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMWBREG|ALT_INV_writeAD\(0),
	datab => \MEMWBREG|ALT_INV_writeAD\(1),
	datac => \MEMWBREG|ALT_INV_writeAD\(2),
	combout => \RegisterFile|v0|v6|Q~combout\);

\RegisterFile|reg1|gen_register:0:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~input_o\,
	d => \MEMWBREG|writeData\(0),
	ena => \RegisterFile|v0|v6|Q~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegisterFile|reg1|gen_register:0:vff|O~q\);

\RegisterFile|read_mux1|v6|v3|v0|Q~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \RegisterFile|read_mux1|v6|v3|v0|Q~1_combout\ = ( !\IFIDREG|outInstruction\(11) & ( (!\IFIDREG|outInstruction\(10) & (\IFIDREG|outInstruction\(9) & (\RegisterFile|reg1|gen_register:0:vff|O~q\))) # (\IFIDREG|outInstruction\(10) & 
-- ((!\IFIDREG|outInstruction\(9) & (((\RegisterFile|reg2|gen_register:0:vff|O~q\)))) # (\IFIDREG|outInstruction\(9) & (((\RegisterFile|reg3|gen_register:0:vff|O~q\)))))) ) ) # ( \IFIDREG|outInstruction\(11) & ( 
-- (((\RegisterFile|read_mux1|v6|v3|v0|Q~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001000010011000011110000111101000110010101110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IFIDREG|ALT_INV_outInstruction\(10),
	datab => \IFIDREG|ALT_INV_outInstruction\(9),
	datac => \RegisterFile|read_mux1|v6|v3|v0|ALT_INV_Q~0_combout\,
	datad => \RegisterFile|reg3|gen_register:0:vff|ALT_INV_O~q\,
	datae => \IFIDREG|ALT_INV_outInstruction\(11),
	dataf => \RegisterFile|reg2|gen_register:0:vff|ALT_INV_O~q\,
	datag => \RegisterFile|reg1|gen_register:0:vff|ALT_INV_O~q\,
	combout => \RegisterFile|read_mux1|v6|v3|v0|Q~1_combout\);

\IDEXREG|R1Reg_IDEX[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \RegisterFile|read_mux1|v6|v3|v0|Q~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEXREG|R1Reg_IDEX\(0));

\ALUInput1Mux|v3|v0|Q~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALUInput1Mux|v3|v0|Q~1_combout\ = ( \IDEXREG|R1Reg_IDEX\(0) & ( (!\ALUInput1Mux|v3|v2|Q~0_combout\ & (\ALUInput1Mux|v3|v2|Q~1_combout\ & ((!\ALUInput1Mux|v3|v2|Q~3_combout\) # (\ALUInput1Mux|v3|v2|Q~2_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010100000001000000000000000000000101000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALUInput1Mux|v3|v2|ALT_INV_Q~0_combout\,
	datab => \ALUInput1Mux|v3|v2|ALT_INV_Q~2_combout\,
	datac => \ALUInput1Mux|v3|v2|ALT_INV_Q~1_combout\,
	datad => \ALUInput1Mux|v3|v2|ALT_INV_Q~3_combout\,
	datae => \IDEXREG|ALT_INV_R1Reg_IDEX\(0),
	combout => \ALUInput1Mux|v3|v0|Q~1_combout\);

\Controller|isJType~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Controller|isJType~0_combout\ = ( \Hazard|process_0~1_combout\ ) # ( !\Hazard|process_0~1_combout\ & ( (!\IFIDREG|outInstruction\(13)) # ((!\IFIDREG|outInstruction\(12)) # ((!\IFIDREG|outInstruction\(14)) # (!\IFIDREG|outInstruction\(15)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111110111111111111111111111111111111101111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IFIDREG|ALT_INV_outInstruction\(13),
	datab => \IFIDREG|ALT_INV_outInstruction\(12),
	datac => \IFIDREG|ALT_INV_outInstruction\(14),
	datad => \IFIDREG|ALT_INV_outInstruction\(15),
	datae => \Hazard|ALT_INV_process_0~1_combout\,
	combout => \Controller|isJType~0_combout\);

\Trap|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Trap|Equal0~0_combout\ = ((!\instr[13]~input_o\) # ((!\instr[14]~input_o\) # (!\instr[15]~input_o\))) # (\instr[12]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111101111111111111110111111111111111011111111111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_instr[12]~input_o\,
	datab => \ALT_INV_instr[13]~input_o\,
	datac => \ALT_INV_instr[14]~input_o\,
	datad => \ALT_INV_instr[15]~input_o\,
	combout => \Trap|Equal0~0_combout\);

\PC|gen_register:0:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \IFIDREG|outInstruction\(0),
	asdata => \IFIDREG|outPC\(0),
	sload => \Controller|isJType~0_combout\,
	ena => \Trap|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|gen_register:0:vff|O~q\);

\IFIDREG|outPC[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \IFIDREG|outPC[0]~0_combout\ = ( \instr[14]~input_o\ & ( \instr[15]~input_o\ & ( (\PC|gen_register:0:vff|O~q\ & (\clock~input_o\ & ((!\instr[13]~input_o\) # (\instr[12]~input_o\)))) ) ) ) # ( !\instr[14]~input_o\ & ( \instr[15]~input_o\ & ( 
-- (\PC|gen_register:0:vff|O~q\ & \clock~input_o\) ) ) ) # ( \instr[14]~input_o\ & ( !\instr[15]~input_o\ & ( (\PC|gen_register:0:vff|O~q\ & \clock~input_o\) ) ) ) # ( !\instr[14]~input_o\ & ( !\instr[15]~input_o\ & ( (\PC|gen_register:0:vff|O~q\ & 
-- \clock~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|gen_register:0:vff|ALT_INV_O~q\,
	datab => \ALT_INV_clock~input_o\,
	datac => \ALT_INV_instr[12]~input_o\,
	datad => \ALT_INV_instr[13]~input_o\,
	datae => \ALT_INV_instr[14]~input_o\,
	dataf => \ALT_INV_instr[15]~input_o\,
	combout => \IFIDREG|outPC[0]~0_combout\);

\IFIDREG|outPC[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \IFIDREG|outPC\(0) = ( \IFIDREG|outPC\(0) & ( \IFIDREG|outPC[15]~1_combout\ & ( \IFIDREG|outPC[0]~0_combout\ ) ) ) # ( !\IFIDREG|outPC\(0) & ( \IFIDREG|outPC[15]~1_combout\ & ( \IFIDREG|outPC[0]~0_combout\ ) ) ) # ( \IFIDREG|outPC\(0) & ( 
-- !\IFIDREG|outPC[15]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \IFIDREG|ALT_INV_outPC[0]~0_combout\,
	datae => \IFIDREG|ALT_INV_outPC\(0),
	dataf => \IFIDREG|ALT_INV_outPC[15]~1_combout\,
	combout => \IFIDREG|outPC\(0));

\ALUInput1Mux|v3|v0|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALUInput1Mux|v3|v0|Q~0_combout\ = (!\ALUInput1Mux|v3|v2|Q~0_combout\ & (!\ALUInput1Mux|v3|v2|Q~2_combout\ & (\ALUInput1Mux|v3|v2|Q~1_combout\ & \ALUInput1Mux|v3|v2|Q~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000100000000000000010000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALUInput1Mux|v3|v2|ALT_INV_Q~0_combout\,
	datab => \ALUInput1Mux|v3|v2|ALT_INV_Q~2_combout\,
	datac => \ALUInput1Mux|v3|v2|ALT_INV_Q~1_combout\,
	datad => \ALUInput1Mux|v3|v2|ALT_INV_Q~3_combout\,
	combout => \ALUInput1Mux|v3|v0|Q~0_combout\);

\ALUInput1Mux|v3|v0|Q~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALUInput1Mux|v3|v0|Q~4_combout\ = ( !\ALUInput1Mux|v3|v2|Q~0_combout\ & ( ((!\EXMEMREG|Result_EXMEM\(0) & (((\ALUInput1Mux|v3|v0|Q~0_combout\ & \MEMWBREG|writeData\(0))))) # (\EXMEMREG|Result_EXMEM\(0) & ((!\ALUInput1Mux|v3|v2|Q~1_combout\) # 
-- ((\ALUInput1Mux|v3|v0|Q~0_combout\ & \MEMWBREG|writeData\(0)))))) # (\ALUInput1Mux|v3|v0|Q~1_combout\) ) ) # ( \ALUInput1Mux|v3|v2|Q~0_combout\ & ( ((((\ALUInput1Mux|v3|v0|Q~0_combout\ & \MEMWBREG|writeData\(0))) # (\IFIDREG|outPC\(0))) # 
-- (\ALUInput1Mux|v3|v0|Q~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0111001101110011001111110011111101110011111111110011111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EXMEMREG|ALT_INV_Result_EXMEM\(0),
	datab => \ALUInput1Mux|v3|v0|ALT_INV_Q~1_combout\,
	datac => \IFIDREG|ALT_INV_outPC\(0),
	datad => \ALUInput1Mux|v3|v0|ALT_INV_Q~0_combout\,
	datae => \ALUInput1Mux|v3|v2|ALT_INV_Q~0_combout\,
	dataf => \MEMWBREG|ALT_INV_writeData\(0),
	datag => \ALUInput1Mux|v3|v2|ALT_INV_Q~1_combout\,
	combout => \ALUInput1Mux|v3|v0|Q~4_combout\);

\Controller|isBranch~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Controller|isBranch~0_combout\ = ( !\Hazard|process_0~1_combout\ & ( (!\IFIDREG|outInstruction\(13) & (!\IFIDREG|outInstruction\(12) & (\IFIDREG|outInstruction\(14) & !\IFIDREG|outInstruction\(15)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000000000000000000001000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IFIDREG|ALT_INV_outInstruction\(13),
	datab => \IFIDREG|ALT_INV_outInstruction\(12),
	datac => \IFIDREG|ALT_INV_outInstruction\(14),
	datad => \IFIDREG|ALT_INV_outInstruction\(15),
	datae => \Hazard|ALT_INV_process_0~1_combout\,
	combout => \Controller|isBranch~0_combout\);

\IDEXREG|isBranch_IDEX\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \Controller|isBranch~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEXREG|isBranch_IDEX~q\);

\ALUInput2Mux|v3|v12|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALUInput2Mux|v3|v12|Q~0_combout\ = (!\IDEXREG|isSW_IDEX~q\ & (!\IDEXREG|isLW_IDEX~q\ & !\IDEXREG|isBranch_IDEX~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IDEXREG|ALT_INV_isSW_IDEX~q\,
	datab => \IDEXREG|ALT_INV_isLW_IDEX~q\,
	datac => \IDEXREG|ALT_INV_isBranch_IDEX~q\,
	combout => \ALUInput2Mux|v3|v12|Q~0_combout\);

\instr[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr(6),
	o => \instr[6]~input_o\);

\IFIDREG|outInstruction[6]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \IFIDREG|outInstruction[6]~10_combout\ = ( \instr[15]~input_o\ & ( \instr[6]~input_o\ & ( (\clock~input_o\ & (((!\instr[13]~input_o\) # (!\instr[14]~input_o\)) # (\instr[12]~input_o\))) ) ) ) # ( !\instr[15]~input_o\ & ( \instr[6]~input_o\ & ( 
-- \clock~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_clock~input_o\,
	datab => \ALT_INV_instr[12]~input_o\,
	datac => \ALT_INV_instr[13]~input_o\,
	datad => \ALT_INV_instr[14]~input_o\,
	datae => \ALT_INV_instr[15]~input_o\,
	dataf => \ALT_INV_instr[6]~input_o\,
	combout => \IFIDREG|outInstruction[6]~10_combout\);

\IFIDREG|outInstruction[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \IFIDREG|outInstruction\(6) = ( \IFIDREG|outInstruction\(6) & ( \IFIDREG|outPC[15]~1_combout\ & ( \IFIDREG|outInstruction[6]~10_combout\ ) ) ) # ( !\IFIDREG|outInstruction\(6) & ( \IFIDREG|outPC[15]~1_combout\ & ( \IFIDREG|outInstruction[6]~10_combout\ ) 
-- ) ) # ( \IFIDREG|outInstruction\(6) & ( !\IFIDREG|outPC[15]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \IFIDREG|ALT_INV_outInstruction[6]~10_combout\,
	datae => \IFIDREG|ALT_INV_outInstruction\(6),
	dataf => \IFIDREG|ALT_INV_outPC[15]~1_combout\,
	combout => \IFIDREG|outInstruction\(6));

\IDEXREG|R2AD_IDEX[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \IFIDREG|outInstruction\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEXREG|R2AD_IDEX\(0));

\instr[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr(7),
	o => \instr[7]~input_o\);

\IFIDREG|outInstruction[7]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \IFIDREG|outInstruction[7]~11_combout\ = ( \instr[15]~input_o\ & ( \instr[7]~input_o\ & ( (\clock~input_o\ & (((!\instr[13]~input_o\) # (!\instr[14]~input_o\)) # (\instr[12]~input_o\))) ) ) ) # ( !\instr[15]~input_o\ & ( \instr[7]~input_o\ & ( 
-- \clock~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_clock~input_o\,
	datab => \ALT_INV_instr[12]~input_o\,
	datac => \ALT_INV_instr[13]~input_o\,
	datad => \ALT_INV_instr[14]~input_o\,
	datae => \ALT_INV_instr[15]~input_o\,
	dataf => \ALT_INV_instr[7]~input_o\,
	combout => \IFIDREG|outInstruction[7]~11_combout\);

\IFIDREG|outInstruction[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- \IFIDREG|outInstruction\(7) = ( \IFIDREG|outInstruction\(7) & ( \IFIDREG|outPC[15]~1_combout\ & ( \IFIDREG|outInstruction[7]~11_combout\ ) ) ) # ( !\IFIDREG|outInstruction\(7) & ( \IFIDREG|outPC[15]~1_combout\ & ( \IFIDREG|outInstruction[7]~11_combout\ ) 
-- ) ) # ( \IFIDREG|outInstruction\(7) & ( !\IFIDREG|outPC[15]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \IFIDREG|ALT_INV_outInstruction[7]~11_combout\,
	datae => \IFIDREG|ALT_INV_outInstruction\(7),
	dataf => \IFIDREG|ALT_INV_outPC[15]~1_combout\,
	combout => \IFIDREG|outInstruction\(7));

\IDEXREG|R2AD_IDEX[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \IFIDREG|outInstruction\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEXREG|R2AD_IDEX\(1));

\instr[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr(8),
	o => \instr[8]~input_o\);

\IFIDREG|outInstruction[8]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \IFIDREG|outInstruction[8]~12_combout\ = ( \instr[15]~input_o\ & ( \instr[8]~input_o\ & ( (\clock~input_o\ & (((!\instr[13]~input_o\) # (!\instr[14]~input_o\)) # (\instr[12]~input_o\))) ) ) ) # ( !\instr[15]~input_o\ & ( \instr[8]~input_o\ & ( 
-- \clock~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_clock~input_o\,
	datab => \ALT_INV_instr[12]~input_o\,
	datac => \ALT_INV_instr[13]~input_o\,
	datad => \ALT_INV_instr[14]~input_o\,
	datae => \ALT_INV_instr[15]~input_o\,
	dataf => \ALT_INV_instr[8]~input_o\,
	combout => \IFIDREG|outInstruction[8]~12_combout\);

\IFIDREG|outInstruction[8]\ : cyclonev_lcell_comb
-- Equation(s):
-- \IFIDREG|outInstruction\(8) = ( \IFIDREG|outInstruction\(8) & ( \IFIDREG|outPC[15]~1_combout\ & ( \IFIDREG|outInstruction[8]~12_combout\ ) ) ) # ( !\IFIDREG|outInstruction\(8) & ( \IFIDREG|outPC[15]~1_combout\ & ( \IFIDREG|outInstruction[8]~12_combout\ ) 
-- ) ) # ( \IFIDREG|outInstruction\(8) & ( !\IFIDREG|outPC[15]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \IFIDREG|ALT_INV_outInstruction[8]~12_combout\,
	datae => \IFIDREG|ALT_INV_outInstruction\(8),
	dataf => \IFIDREG|ALT_INV_outPC[15]~1_combout\,
	combout => \IFIDREG|outInstruction\(8));

\IDEXREG|R2AD_IDEX[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \IFIDREG|outInstruction\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEXREG|R2AD_IDEX\(2));

\ALUInput2Mux|v3|v12|Q~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALUInput2Mux|v3|v12|Q~1_combout\ = ( \IDEXREG|R2AD_IDEX\(1) & ( \IDEXREG|R2AD_IDEX\(2) & ( (\EXMEMREG|RegAD_EXMEM\(1) & (\EXMEMREG|RegAD_EXMEM\(2) & (!\EXMEMREG|RegAD_EXMEM\(0) $ (\IDEXREG|R2AD_IDEX\(0))))) ) ) ) # ( !\IDEXREG|R2AD_IDEX\(1) & ( 
-- \IDEXREG|R2AD_IDEX\(2) & ( (!\EXMEMREG|RegAD_EXMEM\(1) & (\EXMEMREG|RegAD_EXMEM\(2) & (!\EXMEMREG|RegAD_EXMEM\(0) $ (\IDEXREG|R2AD_IDEX\(0))))) ) ) ) # ( \IDEXREG|R2AD_IDEX\(1) & ( !\IDEXREG|R2AD_IDEX\(2) & ( (\EXMEMREG|RegAD_EXMEM\(1) & 
-- (!\EXMEMREG|RegAD_EXMEM\(2) & (!\EXMEMREG|RegAD_EXMEM\(0) $ (\IDEXREG|R2AD_IDEX\(0))))) ) ) ) # ( !\IDEXREG|R2AD_IDEX\(1) & ( !\IDEXREG|R2AD_IDEX\(2) & ( (\EXMEMREG|RegAD_EXMEM\(0) & (!\EXMEMREG|RegAD_EXMEM\(1) & (!\EXMEMREG|RegAD_EXMEM\(2) & 
-- \IDEXREG|R2AD_IDEX\(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000001000000001000000001000000001000000001000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EXMEMREG|ALT_INV_RegAD_EXMEM\(0),
	datab => \EXMEMREG|ALT_INV_RegAD_EXMEM\(1),
	datac => \EXMEMREG|ALT_INV_RegAD_EXMEM\(2),
	datad => \IDEXREG|ALT_INV_R2AD_IDEX\(0),
	datae => \IDEXREG|ALT_INV_R2AD_IDEX\(1),
	dataf => \IDEXREG|ALT_INV_R2AD_IDEX\(2),
	combout => \ALUInput2Mux|v3|v12|Q~1_combout\);

\ForwardUnit|Equal2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ForwardUnit|Equal2~0_combout\ = ( \IDEXREG|R2AD_IDEX\(1) & ( \IDEXREG|R2AD_IDEX\(2) & ( (\EXMEMREG|RegAD_EXMEM\(1) & (\EXMEMREG|RegAD_EXMEM\(2) & (!\EXMEMREG|RegAD_EXMEM\(0) $ (\IDEXREG|R2AD_IDEX\(0))))) ) ) ) # ( !\IDEXREG|R2AD_IDEX\(1) & ( 
-- \IDEXREG|R2AD_IDEX\(2) & ( (!\EXMEMREG|RegAD_EXMEM\(1) & (\EXMEMREG|RegAD_EXMEM\(2) & (!\EXMEMREG|RegAD_EXMEM\(0) $ (\IDEXREG|R2AD_IDEX\(0))))) ) ) ) # ( \IDEXREG|R2AD_IDEX\(1) & ( !\IDEXREG|R2AD_IDEX\(2) & ( (\EXMEMREG|RegAD_EXMEM\(1) & 
-- (!\EXMEMREG|RegAD_EXMEM\(2) & (!\EXMEMREG|RegAD_EXMEM\(0) $ (\IDEXREG|R2AD_IDEX\(0))))) ) ) ) # ( !\IDEXREG|R2AD_IDEX\(1) & ( !\IDEXREG|R2AD_IDEX\(2) & ( (!\EXMEMREG|RegAD_EXMEM\(1) & (!\EXMEMREG|RegAD_EXMEM\(2) & (!\EXMEMREG|RegAD_EXMEM\(0) $ 
-- (\IDEXREG|R2AD_IDEX\(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000001000000001000000001000000001000000001000000001000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EXMEMREG|ALT_INV_RegAD_EXMEM\(0),
	datab => \EXMEMREG|ALT_INV_RegAD_EXMEM\(1),
	datac => \EXMEMREG|ALT_INV_RegAD_EXMEM\(2),
	datad => \IDEXREG|ALT_INV_R2AD_IDEX\(0),
	datae => \IDEXREG|ALT_INV_R2AD_IDEX\(1),
	dataf => \IDEXREG|ALT_INV_R2AD_IDEX\(2),
	combout => \ForwardUnit|Equal2~0_combout\);

\ALUInput2Mux|v3|v12|Q~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALUInput2Mux|v3|v12|Q~2_combout\ = ( \IDEXREG|R2AD_IDEX\(1) & ( \IDEXREG|R2AD_IDEX\(2) & ( (\MEMWBREG|writeAD\(1) & (\MEMWBREG|writeAD\(2) & (!\MEMWBREG|writeAD\(0) $ (\IDEXREG|R2AD_IDEX\(0))))) ) ) ) # ( !\IDEXREG|R2AD_IDEX\(1) & ( 
-- \IDEXREG|R2AD_IDEX\(2) & ( (!\MEMWBREG|writeAD\(1) & (\MEMWBREG|writeAD\(2) & (!\MEMWBREG|writeAD\(0) $ (\IDEXREG|R2AD_IDEX\(0))))) ) ) ) # ( \IDEXREG|R2AD_IDEX\(1) & ( !\IDEXREG|R2AD_IDEX\(2) & ( (\MEMWBREG|writeAD\(1) & (!\MEMWBREG|writeAD\(2) & 
-- (!\MEMWBREG|writeAD\(0) $ (\IDEXREG|R2AD_IDEX\(0))))) ) ) ) # ( !\IDEXREG|R2AD_IDEX\(1) & ( !\IDEXREG|R2AD_IDEX\(2) & ( (\MEMWBREG|writeAD\(0) & (!\MEMWBREG|writeAD\(1) & (!\MEMWBREG|writeAD\(2) & \IDEXREG|R2AD_IDEX\(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000001000000001000000001000000001000000001000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMWBREG|ALT_INV_writeAD\(0),
	datab => \MEMWBREG|ALT_INV_writeAD\(1),
	datac => \MEMWBREG|ALT_INV_writeAD\(2),
	datad => \IDEXREG|ALT_INV_R2AD_IDEX\(0),
	datae => \IDEXREG|ALT_INV_R2AD_IDEX\(1),
	dataf => \IDEXREG|ALT_INV_R2AD_IDEX\(2),
	combout => \ALUInput2Mux|v3|v12|Q~2_combout\);

\ALUInput2Mux|v3|v12|Q~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALUInput2Mux|v3|v12|Q~3_combout\ = (!\ForwardUnit|Equal2~0_combout\ & \ALUInput2Mux|v3|v12|Q~2_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ForwardUnit|ALT_INV_Equal2~0_combout\,
	datab => \ALUInput2Mux|v3|v12|ALT_INV_Q~2_combout\,
	combout => \ALUInput2Mux|v3|v12|Q~3_combout\);

\RegisterFile|read_mux2|v6|v3|v0|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \RegisterFile|read_mux2|v6|v3|v0|Q~0_combout\ = ( \IFIDREG|outInstruction\(6) & ( \IFIDREG|outInstruction\(7) & ( \RegisterFile|reg7|gen_register:0:vff|O~q\ ) ) ) # ( !\IFIDREG|outInstruction\(6) & ( \IFIDREG|outInstruction\(7) & ( 
-- \RegisterFile|reg6|gen_register:0:vff|O~q\ ) ) ) # ( \IFIDREG|outInstruction\(6) & ( !\IFIDREG|outInstruction\(7) & ( \RegisterFile|reg5|gen_register:0:vff|O~q\ ) ) ) # ( !\IFIDREG|outInstruction\(6) & ( !\IFIDREG|outInstruction\(7) & ( 
-- \RegisterFile|reg4|gen_register:0:vff|O~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegisterFile|reg4|gen_register:0:vff|ALT_INV_O~q\,
	datab => \RegisterFile|reg5|gen_register:0:vff|ALT_INV_O~q\,
	datac => \RegisterFile|reg6|gen_register:0:vff|ALT_INV_O~q\,
	datad => \RegisterFile|reg7|gen_register:0:vff|ALT_INV_O~q\,
	datae => \IFIDREG|ALT_INV_outInstruction\(6),
	dataf => \IFIDREG|ALT_INV_outInstruction\(7),
	combout => \RegisterFile|read_mux2|v6|v3|v0|Q~0_combout\);

\RegisterFile|read_mux2|v6|v3|v0|Q~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \RegisterFile|read_mux2|v6|v3|v0|Q~1_combout\ = ( !\IFIDREG|outInstruction\(8) & ( (!\IFIDREG|outInstruction\(7) & (\IFIDREG|outInstruction\(6) & (\RegisterFile|reg1|gen_register:0:vff|O~q\))) # (\IFIDREG|outInstruction\(7) & 
-- ((!\IFIDREG|outInstruction\(6) & (((\RegisterFile|reg2|gen_register:0:vff|O~q\)))) # (\IFIDREG|outInstruction\(6) & (((\RegisterFile|reg3|gen_register:0:vff|O~q\)))))) ) ) # ( \IFIDREG|outInstruction\(8) & ( 
-- (((\RegisterFile|read_mux2|v6|v3|v0|Q~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001000010011000011110000111101000110010101110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IFIDREG|ALT_INV_outInstruction\(7),
	datab => \IFIDREG|ALT_INV_outInstruction\(6),
	datac => \RegisterFile|read_mux2|v6|v3|v0|ALT_INV_Q~0_combout\,
	datad => \RegisterFile|reg3|gen_register:0:vff|ALT_INV_O~q\,
	datae => \IFIDREG|ALT_INV_outInstruction\(8),
	dataf => \RegisterFile|reg2|gen_register:0:vff|ALT_INV_O~q\,
	datag => \RegisterFile|reg1|gen_register:0:vff|ALT_INV_O~q\,
	combout => \RegisterFile|read_mux2|v6|v3|v0|Q~1_combout\);

\IDEXREG|R2Reg_IDEX[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \RegisterFile|read_mux2|v6|v3|v0|Q~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEXREG|R2Reg_IDEX\(0));

\ALUInput2Mux|v3|v0|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALUInput2Mux|v3|v0|Q~0_combout\ = (!\ALUInput2Mux|v3|v12|Q~0_combout\ & (((\IDEXREG|jumpShortAddr_IDEX\(0))))) # (\ALUInput2Mux|v3|v12|Q~0_combout\ & (\EXMEMREG|Result_EXMEM\(0) & ((\ALUInput2Mux|v3|v12|Q~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110101001100000011010100110000001101010011000000110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EXMEMREG|ALT_INV_Result_EXMEM\(0),
	datab => \IDEXREG|ALT_INV_jumpShortAddr_IDEX\(0),
	datac => \ALUInput2Mux|v3|v12|ALT_INV_Q~0_combout\,
	datad => \ALUInput2Mux|v3|v12|ALT_INV_Q~1_combout\,
	combout => \ALUInput2Mux|v3|v0|Q~0_combout\);

\ALUInput2Mux|v3|v0|Q~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALUInput2Mux|v3|v0|Q~1_combout\ = ( \IDEXREG|R2Reg_IDEX\(0) & ( !\ALUInput2Mux|v3|v0|Q~0_combout\ & ( (!\ALUInput2Mux|v3|v12|Q~0_combout\) # (((!\MEMWBREG|writeData\(0) & \ALUInput2Mux|v3|v12|Q~3_combout\)) # (\ALUInput2Mux|v3|v12|Q~1_combout\)) ) ) ) # 
-- ( !\IDEXREG|R2Reg_IDEX\(0) & ( !\ALUInput2Mux|v3|v0|Q~0_combout\ & ( (!\MEMWBREG|writeData\(0)) # ((!\ALUInput2Mux|v3|v12|Q~0_combout\) # ((!\ALUInput2Mux|v3|v12|Q~3_combout\) # (\ALUInput2Mux|v3|v12|Q~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111101111110011111110111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMWBREG|ALT_INV_writeData\(0),
	datab => \ALUInput2Mux|v3|v12|ALT_INV_Q~0_combout\,
	datac => \ALUInput2Mux|v3|v12|ALT_INV_Q~1_combout\,
	datad => \ALUInput2Mux|v3|v12|ALT_INV_Q~3_combout\,
	datae => \IDEXREG|ALT_INV_R2Reg_IDEX\(0),
	dataf => \ALUInput2Mux|v3|v0|ALT_INV_Q~0_combout\,
	combout => \ALUInput2Mux|v3|v0|Q~1_combout\);

\ALU16|V21|v1|v0|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU16|V21|v1|v0|Q~0_combout\ = ( \ALUInput2Mux|v3|v0|Q~1_combout\ & ( (!\IDEXREG|ALUFunc_IDEX\(0) & (\ALUInput1Mux|v3|v0|Q~4_combout\ & (!\IDEXREG|ALUFunc_IDEX\(1) $ (\IDEXREG|ALUFunc_IDEX\(2))))) # (\IDEXREG|ALUFunc_IDEX\(0) & 
-- ((!\IDEXREG|ALUFunc_IDEX\(2) $ (!\ALUInput1Mux|v3|v0|Q~4_combout\)))) ) ) # ( !\ALUInput2Mux|v3|v0|Q~1_combout\ & ( (!\IDEXREG|ALUFunc_IDEX\(1) & (!\ALUInput1Mux|v3|v0|Q~4_combout\ & ((!\IDEXREG|ALUFunc_IDEX\(2)) # (\IDEXREG|ALUFunc_IDEX\(0))))) # 
-- (\IDEXREG|ALUFunc_IDEX\(1) & (!\IDEXREG|ALUFunc_IDEX\(2) $ (((!\IDEXREG|ALUFunc_IDEX\(0) & !\ALUInput1Mux|v3|v0|Q~4_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011011001010000000000111011010010110110010100000000001110110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IDEXREG|ALT_INV_ALUFunc_IDEX\(1),
	datab => \IDEXREG|ALT_INV_ALUFunc_IDEX\(0),
	datac => \IDEXREG|ALT_INV_ALUFunc_IDEX\(2),
	datad => \ALUInput1Mux|v3|v0|ALT_INV_Q~4_combout\,
	datae => \ALUInput2Mux|v3|v0|ALT_INV_Q~1_combout\,
	combout => \ALU16|V21|v1|v0|Q~0_combout\);

\EXMEMREG|Result_EXMEM[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \ALU16|V21|v1|v0|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EXMEMREG|Result_EXMEM\(0));

\fromData[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fromData(1),
	o => \fromData[1]~input_o\);

\MEMWB_inputData_sig[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMWB_inputData_sig[1]~1_combout\ = (!\EXMEMREG|isLW_EXMEM~q\ & (\EXMEMREG|Result_EXMEM\(1))) # (\EXMEMREG|isLW_EXMEM~q\ & ((\fromData[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011101000111010001110100011101000111010001110100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EXMEMREG|ALT_INV_Result_EXMEM\(1),
	datab => \EXMEMREG|ALT_INV_isLW_EXMEM~q\,
	datac => \ALT_INV_fromData[1]~input_o\,
	combout => \MEMWB_inputData_sig[1]~1_combout\);

\keyData[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_keyData(1),
	o => \keyData[1]~input_o\);

\MEMWBREG|writeData[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \MEMWB_inputData_sig[1]~1_combout\,
	asdata => \keyData[1]~input_o\,
	sload => \EXMEMREG|ReadDigit_EXMEM~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMWBREG|writeData\(1));

\RegisterFile|reg4|gen_register:1:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~input_o\,
	d => \MEMWBREG|writeData\(1),
	ena => \RegisterFile|v0|v12|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegisterFile|reg4|gen_register:1:vff|O~q\);

\RegisterFile|reg5|gen_register:1:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~input_o\,
	d => \MEMWBREG|writeData\(1),
	ena => \RegisterFile|v0|v14|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegisterFile|reg5|gen_register:1:vff|O~q\);

\RegisterFile|reg6|gen_register:1:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~input_o\,
	d => \MEMWBREG|writeData\(1),
	ena => \RegisterFile|v0|v16|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegisterFile|reg6|gen_register:1:vff|O~q\);

\RegisterFile|reg7|gen_register:1:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~input_o\,
	d => \MEMWBREG|writeData\(1),
	ena => \RegisterFile|v0|v18|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegisterFile|reg7|gen_register:1:vff|O~q\);

\RegisterFile|read_mux2|v6|v3|v1|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \RegisterFile|read_mux2|v6|v3|v1|Q~0_combout\ = ( \IFIDREG|outInstruction\(6) & ( \IFIDREG|outInstruction\(7) & ( \RegisterFile|reg7|gen_register:1:vff|O~q\ ) ) ) # ( !\IFIDREG|outInstruction\(6) & ( \IFIDREG|outInstruction\(7) & ( 
-- \RegisterFile|reg6|gen_register:1:vff|O~q\ ) ) ) # ( \IFIDREG|outInstruction\(6) & ( !\IFIDREG|outInstruction\(7) & ( \RegisterFile|reg5|gen_register:1:vff|O~q\ ) ) ) # ( !\IFIDREG|outInstruction\(6) & ( !\IFIDREG|outInstruction\(7) & ( 
-- \RegisterFile|reg4|gen_register:1:vff|O~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegisterFile|reg4|gen_register:1:vff|ALT_INV_O~q\,
	datab => \RegisterFile|reg5|gen_register:1:vff|ALT_INV_O~q\,
	datac => \RegisterFile|reg6|gen_register:1:vff|ALT_INV_O~q\,
	datad => \RegisterFile|reg7|gen_register:1:vff|ALT_INV_O~q\,
	datae => \IFIDREG|ALT_INV_outInstruction\(6),
	dataf => \IFIDREG|ALT_INV_outInstruction\(7),
	combout => \RegisterFile|read_mux2|v6|v3|v1|Q~0_combout\);

\RegisterFile|reg3|gen_register:1:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~input_o\,
	d => \MEMWBREG|writeData\(1),
	ena => \RegisterFile|v0|v10|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegisterFile|reg3|gen_register:1:vff|O~q\);

\RegisterFile|reg2|gen_register:1:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~input_o\,
	d => \MEMWBREG|writeData\(1),
	ena => \RegisterFile|v0|v8|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegisterFile|reg2|gen_register:1:vff|O~q\);

\RegisterFile|reg1|gen_register:1:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~input_o\,
	d => \MEMWBREG|writeData\(1),
	ena => \RegisterFile|v0|v6|Q~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegisterFile|reg1|gen_register:1:vff|O~q\);

\RegisterFile|read_mux2|v6|v3|v1|Q~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \RegisterFile|read_mux2|v6|v3|v1|Q~1_combout\ = ( !\IFIDREG|outInstruction\(8) & ( (!\IFIDREG|outInstruction\(7) & (\IFIDREG|outInstruction\(6) & (\RegisterFile|reg1|gen_register:1:vff|O~q\))) # (\IFIDREG|outInstruction\(7) & 
-- ((!\IFIDREG|outInstruction\(6) & (((\RegisterFile|reg2|gen_register:1:vff|O~q\)))) # (\IFIDREG|outInstruction\(6) & (((\RegisterFile|reg3|gen_register:1:vff|O~q\)))))) ) ) # ( \IFIDREG|outInstruction\(8) & ( 
-- (((\RegisterFile|read_mux2|v6|v3|v1|Q~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001000010011000011110000111101000110010101110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IFIDREG|ALT_INV_outInstruction\(7),
	datab => \IFIDREG|ALT_INV_outInstruction\(6),
	datac => \RegisterFile|read_mux2|v6|v3|v1|ALT_INV_Q~0_combout\,
	datad => \RegisterFile|reg3|gen_register:1:vff|ALT_INV_O~q\,
	datae => \IFIDREG|ALT_INV_outInstruction\(8),
	dataf => \RegisterFile|reg2|gen_register:1:vff|ALT_INV_O~q\,
	datag => \RegisterFile|reg1|gen_register:1:vff|ALT_INV_O~q\,
	combout => \RegisterFile|read_mux2|v6|v3|v1|Q~1_combout\);

\IDEXREG|R2Reg_IDEX[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \RegisterFile|read_mux2|v6|v3|v1|Q~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEXREG|R2Reg_IDEX\(1));

\ALUInput2Mux|v3|v1|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALUInput2Mux|v3|v1|Q~0_combout\ = (!\ALUInput2Mux|v3|v12|Q~0_combout\ & (((\IDEXREG|jumpShortAddr_IDEX\(1))))) # (\ALUInput2Mux|v3|v12|Q~0_combout\ & (\EXMEMREG|Result_EXMEM\(1) & (\ALUInput2Mux|v3|v12|Q~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111001101000000011100110100000001110011010000000111001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EXMEMREG|ALT_INV_Result_EXMEM\(1),
	datab => \ALUInput2Mux|v3|v12|ALT_INV_Q~0_combout\,
	datac => \ALUInput2Mux|v3|v12|ALT_INV_Q~1_combout\,
	datad => \IDEXREG|ALT_INV_jumpShortAddr_IDEX\(1),
	combout => \ALUInput2Mux|v3|v1|Q~0_combout\);

\ALUInput2Mux|v3|v1|Q~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALUInput2Mux|v3|v1|Q~1_combout\ = ( \IDEXREG|R2Reg_IDEX\(1) & ( !\ALUInput2Mux|v3|v1|Q~0_combout\ & ( (!\ALUInput2Mux|v3|v12|Q~0_combout\) # (((\ALUInput2Mux|v3|v12|Q~3_combout\ & !\MEMWBREG|writeData\(1))) # (\ALUInput2Mux|v3|v12|Q~1_combout\)) ) ) ) # 
-- ( !\IDEXREG|R2Reg_IDEX\(1) & ( !\ALUInput2Mux|v3|v1|Q~0_combout\ & ( (!\ALUInput2Mux|v3|v12|Q~0_combout\) # (((!\ALUInput2Mux|v3|v12|Q~3_combout\) # (!\MEMWBREG|writeData\(1))) # (\ALUInput2Mux|v3|v12|Q~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111011101111111011101100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALUInput2Mux|v3|v12|ALT_INV_Q~0_combout\,
	datab => \ALUInput2Mux|v3|v12|ALT_INV_Q~1_combout\,
	datac => \ALUInput2Mux|v3|v12|ALT_INV_Q~3_combout\,
	datad => \MEMWBREG|ALT_INV_writeData\(1),
	datae => \IDEXREG|ALT_INV_R2Reg_IDEX\(1),
	dataf => \ALUInput2Mux|v3|v1|ALT_INV_Q~0_combout\,
	combout => \ALUInput2Mux|v3|v1|Q~1_combout\);

\PC|gen_register:1:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \IFIDREG|outInstruction\(1),
	asdata => \IFIDREG|outPC\(1),
	sload => \Controller|isJType~0_combout\,
	ena => \Trap|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|gen_register:1:vff|O~q\);

\IFIDREG|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \IFIDREG|Add0~1_sumout\ = SUM(( \PC|gen_register:1:vff|O~q\ ) + ( VCC ) + ( !VCC ))
-- \IFIDREG|Add0~2\ = CARRY(( \PC|gen_register:1:vff|O~q\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|gen_register:1:vff|ALT_INV_O~q\,
	cin => GND,
	sumout => \IFIDREG|Add0~1_sumout\,
	cout => \IFIDREG|Add0~2\);

\IFIDREG|outPC[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \IFIDREG|outPC[1]~2_combout\ = ( \instr[15]~input_o\ & ( \IFIDREG|Add0~1_sumout\ & ( (\clock~input_o\ & (((!\instr[13]~input_o\) # (!\instr[14]~input_o\)) # (\instr[12]~input_o\))) ) ) ) # ( !\instr[15]~input_o\ & ( \IFIDREG|Add0~1_sumout\ & ( 
-- \clock~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_clock~input_o\,
	datab => \ALT_INV_instr[12]~input_o\,
	datac => \ALT_INV_instr[13]~input_o\,
	datad => \ALT_INV_instr[14]~input_o\,
	datae => \ALT_INV_instr[15]~input_o\,
	dataf => \IFIDREG|ALT_INV_Add0~1_sumout\,
	combout => \IFIDREG|outPC[1]~2_combout\);

\IFIDREG|outPC[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \IFIDREG|outPC\(1) = ( \IFIDREG|outPC\(1) & ( \IFIDREG|outPC[15]~1_combout\ & ( \IFIDREG|outPC[1]~2_combout\ ) ) ) # ( !\IFIDREG|outPC\(1) & ( \IFIDREG|outPC[15]~1_combout\ & ( \IFIDREG|outPC[1]~2_combout\ ) ) ) # ( \IFIDREG|outPC\(1) & ( 
-- !\IFIDREG|outPC[15]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \IFIDREG|ALT_INV_outPC[1]~2_combout\,
	datae => \IFIDREG|ALT_INV_outPC\(1),
	dataf => \IFIDREG|ALT_INV_outPC[15]~1_combout\,
	combout => \IFIDREG|outPC\(1));

\RegisterFile|read_mux1|v6|v3|v1|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \RegisterFile|read_mux1|v6|v3|v1|Q~0_combout\ = ( \IFIDREG|outInstruction\(9) & ( \IFIDREG|outInstruction\(10) & ( \RegisterFile|reg7|gen_register:1:vff|O~q\ ) ) ) # ( !\IFIDREG|outInstruction\(9) & ( \IFIDREG|outInstruction\(10) & ( 
-- \RegisterFile|reg6|gen_register:1:vff|O~q\ ) ) ) # ( \IFIDREG|outInstruction\(9) & ( !\IFIDREG|outInstruction\(10) & ( \RegisterFile|reg5|gen_register:1:vff|O~q\ ) ) ) # ( !\IFIDREG|outInstruction\(9) & ( !\IFIDREG|outInstruction\(10) & ( 
-- \RegisterFile|reg4|gen_register:1:vff|O~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegisterFile|reg4|gen_register:1:vff|ALT_INV_O~q\,
	datab => \RegisterFile|reg5|gen_register:1:vff|ALT_INV_O~q\,
	datac => \RegisterFile|reg6|gen_register:1:vff|ALT_INV_O~q\,
	datad => \RegisterFile|reg7|gen_register:1:vff|ALT_INV_O~q\,
	datae => \IFIDREG|ALT_INV_outInstruction\(9),
	dataf => \IFIDREG|ALT_INV_outInstruction\(10),
	combout => \RegisterFile|read_mux1|v6|v3|v1|Q~0_combout\);

\RegisterFile|read_mux1|v6|v3|v1|Q~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \RegisterFile|read_mux1|v6|v3|v1|Q~1_combout\ = ( !\IFIDREG|outInstruction\(11) & ( (!\IFIDREG|outInstruction\(10) & (\IFIDREG|outInstruction\(9) & (\RegisterFile|reg1|gen_register:1:vff|O~q\))) # (\IFIDREG|outInstruction\(10) & 
-- ((!\IFIDREG|outInstruction\(9) & (((\RegisterFile|reg2|gen_register:1:vff|O~q\)))) # (\IFIDREG|outInstruction\(9) & (((\RegisterFile|reg3|gen_register:1:vff|O~q\)))))) ) ) # ( \IFIDREG|outInstruction\(11) & ( 
-- (((\RegisterFile|read_mux1|v6|v3|v1|Q~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001000010011000011110000111101000110010101110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IFIDREG|ALT_INV_outInstruction\(10),
	datab => \IFIDREG|ALT_INV_outInstruction\(9),
	datac => \RegisterFile|read_mux1|v6|v3|v1|ALT_INV_Q~0_combout\,
	datad => \RegisterFile|reg3|gen_register:1:vff|ALT_INV_O~q\,
	datae => \IFIDREG|ALT_INV_outInstruction\(11),
	dataf => \RegisterFile|reg2|gen_register:1:vff|ALT_INV_O~q\,
	datag => \RegisterFile|reg1|gen_register:1:vff|ALT_INV_O~q\,
	combout => \RegisterFile|read_mux1|v6|v3|v1|Q~1_combout\);

\IDEXREG|R1Reg_IDEX[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \RegisterFile|read_mux1|v6|v3|v1|Q~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEXREG|R1Reg_IDEX\(1));

\ALUInput1Mux|v3|v1|Q~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALUInput1Mux|v3|v1|Q~2_combout\ = ( \IDEXREG|R1Reg_IDEX\(1) & ( (!\ALUInput1Mux|v3|v2|Q~1_combout\ & (\EXMEMREG|Result_EXMEM\(1))) # (\ALUInput1Mux|v3|v2|Q~1_combout\ & (((!\ALUInput1Mux|v3|v2|Q~3_combout\) # (\ALUInput1Mux|v3|v2|Q~2_combout\)))) ) ) # ( 
-- !\IDEXREG|R1Reg_IDEX\(1) & ( (\EXMEMREG|Result_EXMEM\(1) & !\ALUInput1Mux|v3|v2|Q~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100011101110100011101000100010001000111011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EXMEMREG|ALT_INV_Result_EXMEM\(1),
	datab => \ALUInput1Mux|v3|v2|ALT_INV_Q~1_combout\,
	datac => \ALUInput1Mux|v3|v2|ALT_INV_Q~2_combout\,
	datad => \ALUInput1Mux|v3|v2|ALT_INV_Q~3_combout\,
	datae => \IDEXREG|ALT_INV_R1Reg_IDEX\(1),
	combout => \ALUInput1Mux|v3|v1|Q~2_combout\);

\ALUInput1Mux|v3|v1|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALUInput1Mux|v3|v1|Q~0_combout\ = ( \ALUInput1Mux|v3|v1|Q~2_combout\ & ( (\ALUInput1Mux|v3|v2|Q~0_combout\ & (!\IFIDREG|outPC\(1) & ((!\ALUInput1Mux|v3|v0|Q~0_combout\) # (!\MEMWBREG|writeData\(1))))) ) ) # ( !\ALUInput1Mux|v3|v1|Q~2_combout\ & ( 
-- (!\ALUInput1Mux|v3|v2|Q~0_combout\ & ((!\ALUInput1Mux|v3|v0|Q~0_combout\) # ((!\MEMWBREG|writeData\(1))))) # (\ALUInput1Mux|v3|v2|Q~0_combout\ & (!\IFIDREG|outPC\(1) & ((!\ALUInput1Mux|v3|v0|Q~0_combout\) # (!\MEMWBREG|writeData\(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101011001000010100000100000011111010110010000101000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALUInput1Mux|v3|v2|ALT_INV_Q~0_combout\,
	datab => \ALUInput1Mux|v3|v0|ALT_INV_Q~0_combout\,
	datac => \IFIDREG|ALT_INV_outPC\(1),
	datad => \MEMWBREG|ALT_INV_writeData\(1),
	datae => \ALUInput1Mux|v3|v1|ALT_INV_Q~2_combout\,
	combout => \ALUInput1Mux|v3|v1|Q~0_combout\);

\ALU16|V0|v12|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU16|V0|v12|Q~0_combout\ = (!\IDEXREG|ALUFunc_IDEX\(1) & !\IDEXREG|ALUFunc_IDEX\(2))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IDEXREG|ALT_INV_ALUFunc_IDEX\(1),
	datab => \IDEXREG|ALT_INV_ALUFunc_IDEX\(2),
	combout => \ALU16|V0|v12|Q~0_combout\);

\ALU16|V0|v12|Q~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU16|V0|v12|Q~1_combout\ = (\ALU16|V0|v12|Q~0_combout\ & ((!\ALUInput2Mux|v3|v0|Q~1_combout\ & ((\ALUInput1Mux|v3|v0|Q~4_combout\))) # (\ALUInput2Mux|v3|v0|Q~1_combout\ & (\IDEXREG|ALUFunc_IDEX\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110101000000000011010100000000001101010000000000110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IDEXREG|ALT_INV_ALUFunc_IDEX\(0),
	datab => \ALUInput1Mux|v3|v0|ALT_INV_Q~4_combout\,
	datac => \ALUInput2Mux|v3|v0|ALT_INV_Q~1_combout\,
	datad => \ALU16|V0|v12|ALT_INV_Q~0_combout\,
	combout => \ALU16|V0|v12|Q~1_combout\);

\ALU16|V21|v1|v1|Q\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU16|V21|v1|v1|Q~combout\ = ( \ALUInput1Mux|v3|v1|Q~0_combout\ & ( \ALU16|V0|v12|Q~1_combout\ & ( (!\IDEXREG|ALUFunc_IDEX\(2) & ((!\IDEXREG|ALUFunc_IDEX\(0) & (!\IDEXREG|ALUFunc_IDEX\(1) & \ALUInput2Mux|v3|v1|Q~1_combout\)) # (\IDEXREG|ALUFunc_IDEX\(0) 
-- & ((!\ALUInput2Mux|v3|v1|Q~1_combout\))))) # (\IDEXREG|ALUFunc_IDEX\(2) & (!\IDEXREG|ALUFunc_IDEX\(0) $ (((!\IDEXREG|ALUFunc_IDEX\(1)) # (\ALUInput2Mux|v3|v1|Q~1_combout\))))) ) ) ) # ( !\ALUInput1Mux|v3|v1|Q~0_combout\ & ( \ALU16|V0|v12|Q~1_combout\ & ( 
-- (!\IDEXREG|ALUFunc_IDEX\(1) & (!\IDEXREG|ALUFunc_IDEX\(2) & (!\IDEXREG|ALUFunc_IDEX\(0) $ (\ALUInput2Mux|v3|v1|Q~1_combout\)))) # (\IDEXREG|ALUFunc_IDEX\(1) & (!\IDEXREG|ALUFunc_IDEX\(2) $ (((!\IDEXREG|ALUFunc_IDEX\(0) & 
-- \ALUInput2Mux|v3|v1|Q~1_combout\))))) ) ) ) # ( \ALUInput1Mux|v3|v1|Q~0_combout\ & ( !\ALU16|V0|v12|Q~1_combout\ & ( (!\ALUInput2Mux|v3|v1|Q~1_combout\ & (!\IDEXREG|ALUFunc_IDEX\(1) $ (!\IDEXREG|ALUFunc_IDEX\(0) $ (!\IDEXREG|ALUFunc_IDEX\(2))))) # 
-- (\ALUInput2Mux|v3|v1|Q~1_combout\ & (\IDEXREG|ALUFunc_IDEX\(0) & ((!\IDEXREG|ALUFunc_IDEX\(1)) # (\IDEXREG|ALUFunc_IDEX\(2))))) ) ) ) # ( !\ALUInput1Mux|v3|v1|Q~0_combout\ & ( !\ALU16|V0|v12|Q~1_combout\ & ( (!\IDEXREG|ALUFunc_IDEX\(1) & 
-- (!\IDEXREG|ALUFunc_IDEX\(2) & (!\IDEXREG|ALUFunc_IDEX\(0) $ (!\ALUInput2Mux|v3|v1|Q~1_combout\)))) # (\IDEXREG|ALUFunc_IDEX\(1) & (!\IDEXREG|ALUFunc_IDEX\(2) $ (((!\IDEXREG|ALUFunc_IDEX\(0) & \ALUInput2Mux|v3|v1|Q~1_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000010010100100101100010001111010000001101000011011010000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IDEXREG|ALT_INV_ALUFunc_IDEX\(1),
	datab => \IDEXREG|ALT_INV_ALUFunc_IDEX\(0),
	datac => \IDEXREG|ALT_INV_ALUFunc_IDEX\(2),
	datad => \ALUInput2Mux|v3|v1|ALT_INV_Q~1_combout\,
	datae => \ALUInput1Mux|v3|v1|ALT_INV_Q~0_combout\,
	dataf => \ALU16|V0|v12|ALT_INV_Q~1_combout\,
	combout => \ALU16|V21|v1|v1|Q~combout\);

\EXMEMREG|Result_EXMEM[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \ALU16|V21|v1|v1|Q~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EXMEMREG|Result_EXMEM\(1));

\ALUInput2Mux|v3|v2|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALUInput2Mux|v3|v2|Q~0_combout\ = (!\ALUInput2Mux|v3|v12|Q~0_combout\ & (((\IDEXREG|jumpShortAddr_IDEX\(2))))) # (\ALUInput2Mux|v3|v12|Q~0_combout\ & (\EXMEMREG|Result_EXMEM\(2) & (\ALUInput2Mux|v3|v12|Q~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111001101000000011100110100000001110011010000000111001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EXMEMREG|ALT_INV_Result_EXMEM\(2),
	datab => \ALUInput2Mux|v3|v12|ALT_INV_Q~0_combout\,
	datac => \ALUInput2Mux|v3|v12|ALT_INV_Q~1_combout\,
	datad => \IDEXREG|ALT_INV_jumpShortAddr_IDEX\(2),
	combout => \ALUInput2Mux|v3|v2|Q~0_combout\);

\fromData[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fromData(2),
	o => \fromData[2]~input_o\);

\MEMWB_inputData_sig[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMWB_inputData_sig[2]~2_combout\ = (!\EXMEMREG|isLW_EXMEM~q\ & (\EXMEMREG|Result_EXMEM\(2))) # (\EXMEMREG|isLW_EXMEM~q\ & ((\fromData[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011101000111010001110100011101000111010001110100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EXMEMREG|ALT_INV_Result_EXMEM\(2),
	datab => \EXMEMREG|ALT_INV_isLW_EXMEM~q\,
	datac => \ALT_INV_fromData[2]~input_o\,
	combout => \MEMWB_inputData_sig[2]~2_combout\);

\keyData[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_keyData(2),
	o => \keyData[2]~input_o\);

\MEMWBREG|writeData[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \MEMWB_inputData_sig[2]~2_combout\,
	asdata => \keyData[2]~input_o\,
	sload => \EXMEMREG|ReadDigit_EXMEM~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMWBREG|writeData\(2));

\RegisterFile|reg4|gen_register:2:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~input_o\,
	d => \MEMWBREG|writeData\(2),
	ena => \RegisterFile|v0|v12|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegisterFile|reg4|gen_register:2:vff|O~q\);

\RegisterFile|reg5|gen_register:2:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~input_o\,
	d => \MEMWBREG|writeData\(2),
	ena => \RegisterFile|v0|v14|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegisterFile|reg5|gen_register:2:vff|O~q\);

\RegisterFile|reg6|gen_register:2:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~input_o\,
	d => \MEMWBREG|writeData\(2),
	ena => \RegisterFile|v0|v16|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegisterFile|reg6|gen_register:2:vff|O~q\);

\RegisterFile|reg7|gen_register:2:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~input_o\,
	d => \MEMWBREG|writeData\(2),
	ena => \RegisterFile|v0|v18|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegisterFile|reg7|gen_register:2:vff|O~q\);

\RegisterFile|read_mux2|v6|v3|v2|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \RegisterFile|read_mux2|v6|v3|v2|Q~0_combout\ = ( \IFIDREG|outInstruction\(6) & ( \IFIDREG|outInstruction\(7) & ( \RegisterFile|reg7|gen_register:2:vff|O~q\ ) ) ) # ( !\IFIDREG|outInstruction\(6) & ( \IFIDREG|outInstruction\(7) & ( 
-- \RegisterFile|reg6|gen_register:2:vff|O~q\ ) ) ) # ( \IFIDREG|outInstruction\(6) & ( !\IFIDREG|outInstruction\(7) & ( \RegisterFile|reg5|gen_register:2:vff|O~q\ ) ) ) # ( !\IFIDREG|outInstruction\(6) & ( !\IFIDREG|outInstruction\(7) & ( 
-- \RegisterFile|reg4|gen_register:2:vff|O~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegisterFile|reg4|gen_register:2:vff|ALT_INV_O~q\,
	datab => \RegisterFile|reg5|gen_register:2:vff|ALT_INV_O~q\,
	datac => \RegisterFile|reg6|gen_register:2:vff|ALT_INV_O~q\,
	datad => \RegisterFile|reg7|gen_register:2:vff|ALT_INV_O~q\,
	datae => \IFIDREG|ALT_INV_outInstruction\(6),
	dataf => \IFIDREG|ALT_INV_outInstruction\(7),
	combout => \RegisterFile|read_mux2|v6|v3|v2|Q~0_combout\);

\RegisterFile|reg3|gen_register:2:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~input_o\,
	d => \MEMWBREG|writeData\(2),
	ena => \RegisterFile|v0|v10|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegisterFile|reg3|gen_register:2:vff|O~q\);

\RegisterFile|reg2|gen_register:2:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~input_o\,
	d => \MEMWBREG|writeData\(2),
	ena => \RegisterFile|v0|v8|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegisterFile|reg2|gen_register:2:vff|O~q\);

\RegisterFile|reg1|gen_register:2:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~input_o\,
	d => \MEMWBREG|writeData\(2),
	ena => \RegisterFile|v0|v6|Q~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegisterFile|reg1|gen_register:2:vff|O~q\);

\RegisterFile|read_mux2|v6|v3|v2|Q~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \RegisterFile|read_mux2|v6|v3|v2|Q~1_combout\ = ( !\IFIDREG|outInstruction\(8) & ( (!\IFIDREG|outInstruction\(7) & (\IFIDREG|outInstruction\(6) & (\RegisterFile|reg1|gen_register:2:vff|O~q\))) # (\IFIDREG|outInstruction\(7) & 
-- ((!\IFIDREG|outInstruction\(6) & (((\RegisterFile|reg2|gen_register:2:vff|O~q\)))) # (\IFIDREG|outInstruction\(6) & (((\RegisterFile|reg3|gen_register:2:vff|O~q\)))))) ) ) # ( \IFIDREG|outInstruction\(8) & ( 
-- (((\RegisterFile|read_mux2|v6|v3|v2|Q~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001000010011000011110000111101000110010101110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IFIDREG|ALT_INV_outInstruction\(7),
	datab => \IFIDREG|ALT_INV_outInstruction\(6),
	datac => \RegisterFile|read_mux2|v6|v3|v2|ALT_INV_Q~0_combout\,
	datad => \RegisterFile|reg3|gen_register:2:vff|ALT_INV_O~q\,
	datae => \IFIDREG|ALT_INV_outInstruction\(8),
	dataf => \RegisterFile|reg2|gen_register:2:vff|ALT_INV_O~q\,
	datag => \RegisterFile|reg1|gen_register:2:vff|ALT_INV_O~q\,
	combout => \RegisterFile|read_mux2|v6|v3|v2|Q~1_combout\);

\IDEXREG|R2Reg_IDEX[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \RegisterFile|read_mux2|v6|v3|v2|Q~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEXREG|R2Reg_IDEX\(2));

\ALUInput2Mux|v3|v2|Q~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALUInput2Mux|v3|v2|Q~1_combout\ = ( \MEMWBREG|writeData\(2) & ( \IDEXREG|R2Reg_IDEX\(2) & ( (\ALUInput2Mux|v3|v12|Q~0_combout\ & !\ALUInput2Mux|v3|v12|Q~1_combout\) ) ) ) # ( !\MEMWBREG|writeData\(2) & ( \IDEXREG|R2Reg_IDEX\(2) & ( 
-- (\ALUInput2Mux|v3|v12|Q~0_combout\ & (!\ALUInput2Mux|v3|v12|Q~1_combout\ & ((!\ALUInput2Mux|v3|v12|Q~2_combout\) # (\ForwardUnit|Equal2~0_combout\)))) ) ) ) # ( \MEMWBREG|writeData\(2) & ( !\IDEXREG|R2Reg_IDEX\(2) & ( (\ALUInput2Mux|v3|v12|Q~0_combout\ & 
-- (!\ForwardUnit|Equal2~0_combout\ & (!\ALUInput2Mux|v3|v12|Q~1_combout\ & \ALUInput2Mux|v3|v12|Q~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000100000001010000000100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALUInput2Mux|v3|v12|ALT_INV_Q~0_combout\,
	datab => \ForwardUnit|ALT_INV_Equal2~0_combout\,
	datac => \ALUInput2Mux|v3|v12|ALT_INV_Q~1_combout\,
	datad => \ALUInput2Mux|v3|v12|ALT_INV_Q~2_combout\,
	datae => \MEMWBREG|ALT_INV_writeData\(2),
	dataf => \IDEXREG|ALT_INV_R2Reg_IDEX\(2),
	combout => \ALUInput2Mux|v3|v2|Q~1_combout\);

\ALUInput2Mux|v3|v2|Q~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALUInput2Mux|v3|v2|Q~2_combout\ = (!\ALUInput2Mux|v3|v2|Q~0_combout\ & !\ALUInput2Mux|v3|v2|Q~1_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALUInput2Mux|v3|v2|ALT_INV_Q~0_combout\,
	datab => \ALUInput2Mux|v3|v2|ALT_INV_Q~1_combout\,
	combout => \ALUInput2Mux|v3|v2|Q~2_combout\);

\PC|gen_register:2:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \IFIDREG|outInstruction\(2),
	asdata => \IFIDREG|outPC\(2),
	sload => \Controller|isJType~0_combout\,
	ena => \Trap|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|gen_register:2:vff|O~q\);

\IFIDREG|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \IFIDREG|Add0~5_sumout\ = SUM(( \PC|gen_register:2:vff|O~q\ ) + ( GND ) + ( \IFIDREG|Add0~2\ ))
-- \IFIDREG|Add0~6\ = CARRY(( \PC|gen_register:2:vff|O~q\ ) + ( GND ) + ( \IFIDREG|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|gen_register:2:vff|ALT_INV_O~q\,
	cin => \IFIDREG|Add0~2\,
	sumout => \IFIDREG|Add0~5_sumout\,
	cout => \IFIDREG|Add0~6\);

\IFIDREG|outPC[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \IFIDREG|outPC[2]~3_combout\ = ( \instr[15]~input_o\ & ( \IFIDREG|Add0~5_sumout\ & ( (\clock~input_o\ & (((!\instr[13]~input_o\) # (!\instr[14]~input_o\)) # (\instr[12]~input_o\))) ) ) ) # ( !\instr[15]~input_o\ & ( \IFIDREG|Add0~5_sumout\ & ( 
-- \clock~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_clock~input_o\,
	datab => \ALT_INV_instr[12]~input_o\,
	datac => \ALT_INV_instr[13]~input_o\,
	datad => \ALT_INV_instr[14]~input_o\,
	datae => \ALT_INV_instr[15]~input_o\,
	dataf => \IFIDREG|ALT_INV_Add0~5_sumout\,
	combout => \IFIDREG|outPC[2]~3_combout\);

\IFIDREG|outPC[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \IFIDREG|outPC\(2) = ( \IFIDREG|outPC\(2) & ( \IFIDREG|outPC[15]~1_combout\ & ( \IFIDREG|outPC[2]~3_combout\ ) ) ) # ( !\IFIDREG|outPC\(2) & ( \IFIDREG|outPC[15]~1_combout\ & ( \IFIDREG|outPC[2]~3_combout\ ) ) ) # ( \IFIDREG|outPC\(2) & ( 
-- !\IFIDREG|outPC[15]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \IFIDREG|ALT_INV_outPC[2]~3_combout\,
	datae => \IFIDREG|ALT_INV_outPC\(2),
	dataf => \IFIDREG|ALT_INV_outPC[15]~1_combout\,
	combout => \IFIDREG|outPC\(2));

\ALUInput1Mux|v3|v2|Q~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALUInput1Mux|v3|v2|Q~4_combout\ = (!\ALUInput1Mux|v3|v2|Q~0_combout\ & (\EXMEMREG|Result_EXMEM\(2) & (!\ALUInput1Mux|v3|v2|Q~1_combout\))) # (\ALUInput1Mux|v3|v2|Q~0_combout\ & (((\IFIDREG|outPC\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001110011010000000111001101000000011100110100000001110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EXMEMREG|ALT_INV_Result_EXMEM\(2),
	datab => \ALUInput1Mux|v3|v2|ALT_INV_Q~0_combout\,
	datac => \ALUInput1Mux|v3|v2|ALT_INV_Q~1_combout\,
	datad => \IFIDREG|ALT_INV_outPC\(2),
	combout => \ALUInput1Mux|v3|v2|Q~4_combout\);

\RegisterFile|read_mux1|v6|v3|v2|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \RegisterFile|read_mux1|v6|v3|v2|Q~0_combout\ = ( \IFIDREG|outInstruction\(9) & ( \IFIDREG|outInstruction\(10) & ( \RegisterFile|reg7|gen_register:2:vff|O~q\ ) ) ) # ( !\IFIDREG|outInstruction\(9) & ( \IFIDREG|outInstruction\(10) & ( 
-- \RegisterFile|reg6|gen_register:2:vff|O~q\ ) ) ) # ( \IFIDREG|outInstruction\(9) & ( !\IFIDREG|outInstruction\(10) & ( \RegisterFile|reg5|gen_register:2:vff|O~q\ ) ) ) # ( !\IFIDREG|outInstruction\(9) & ( !\IFIDREG|outInstruction\(10) & ( 
-- \RegisterFile|reg4|gen_register:2:vff|O~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegisterFile|reg4|gen_register:2:vff|ALT_INV_O~q\,
	datab => \RegisterFile|reg5|gen_register:2:vff|ALT_INV_O~q\,
	datac => \RegisterFile|reg6|gen_register:2:vff|ALT_INV_O~q\,
	datad => \RegisterFile|reg7|gen_register:2:vff|ALT_INV_O~q\,
	datae => \IFIDREG|ALT_INV_outInstruction\(9),
	dataf => \IFIDREG|ALT_INV_outInstruction\(10),
	combout => \RegisterFile|read_mux1|v6|v3|v2|Q~0_combout\);

\RegisterFile|read_mux1|v6|v3|v2|Q~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \RegisterFile|read_mux1|v6|v3|v2|Q~1_combout\ = ( !\IFIDREG|outInstruction\(11) & ( (!\IFIDREG|outInstruction\(10) & (\IFIDREG|outInstruction\(9) & (\RegisterFile|reg1|gen_register:2:vff|O~q\))) # (\IFIDREG|outInstruction\(10) & 
-- ((!\IFIDREG|outInstruction\(9) & (((\RegisterFile|reg2|gen_register:2:vff|O~q\)))) # (\IFIDREG|outInstruction\(9) & (((\RegisterFile|reg3|gen_register:2:vff|O~q\)))))) ) ) # ( \IFIDREG|outInstruction\(11) & ( 
-- (((\RegisterFile|read_mux1|v6|v3|v2|Q~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001000010011000011110000111101000110010101110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IFIDREG|ALT_INV_outInstruction\(10),
	datab => \IFIDREG|ALT_INV_outInstruction\(9),
	datac => \RegisterFile|read_mux1|v6|v3|v2|ALT_INV_Q~0_combout\,
	datad => \RegisterFile|reg3|gen_register:2:vff|ALT_INV_O~q\,
	datae => \IFIDREG|ALT_INV_outInstruction\(11),
	dataf => \RegisterFile|reg2|gen_register:2:vff|ALT_INV_O~q\,
	datag => \RegisterFile|reg1|gen_register:2:vff|ALT_INV_O~q\,
	combout => \RegisterFile|read_mux1|v6|v3|v2|Q~1_combout\);

\IDEXREG|R1Reg_IDEX[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \RegisterFile|read_mux1|v6|v3|v2|Q~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEXREG|R1Reg_IDEX\(2));

\ALUInput1Mux|v3|v2|Q~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALUInput1Mux|v3|v2|Q~5_combout\ = ( \MEMWBREG|writeData\(2) & ( \IDEXREG|R1Reg_IDEX\(2) & ( (!\ALUInput1Mux|v3|v2|Q~0_combout\ & \ALUInput1Mux|v3|v2|Q~1_combout\) ) ) ) # ( !\MEMWBREG|writeData\(2) & ( \IDEXREG|R1Reg_IDEX\(2) & ( 
-- (!\ALUInput1Mux|v3|v2|Q~0_combout\ & (\ALUInput1Mux|v3|v2|Q~1_combout\ & ((!\ALUInput1Mux|v3|v2|Q~3_combout\) # (\ALUInput1Mux|v3|v2|Q~2_combout\)))) ) ) ) # ( \MEMWBREG|writeData\(2) & ( !\IDEXREG|R1Reg_IDEX\(2) & ( (!\ALUInput1Mux|v3|v2|Q~0_combout\ & 
-- (!\ALUInput1Mux|v3|v2|Q~2_combout\ & (\ALUInput1Mux|v3|v2|Q~1_combout\ & \ALUInput1Mux|v3|v2|Q~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000100000001010000000100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALUInput1Mux|v3|v2|ALT_INV_Q~0_combout\,
	datab => \ALUInput1Mux|v3|v2|ALT_INV_Q~2_combout\,
	datac => \ALUInput1Mux|v3|v2|ALT_INV_Q~1_combout\,
	datad => \ALUInput1Mux|v3|v2|ALT_INV_Q~3_combout\,
	datae => \MEMWBREG|ALT_INV_writeData\(2),
	dataf => \IDEXREG|ALT_INV_R1Reg_IDEX\(2),
	combout => \ALUInput1Mux|v3|v2|Q~5_combout\);

\ALUInput1Mux|v3|v2|Q~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALUInput1Mux|v3|v2|Q~6_combout\ = (!\ALUInput1Mux|v3|v2|Q~4_combout\ & !\ALUInput1Mux|v3|v2|Q~5_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALUInput1Mux|v3|v2|ALT_INV_Q~4_combout\,
	datab => \ALUInput1Mux|v3|v2|ALT_INV_Q~5_combout\,
	combout => \ALUInput1Mux|v3|v2|Q~6_combout\);

\ALU16|V1|v12|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU16|V1|v12|Q~0_combout\ = ( \ALUInput2Mux|v3|v1|Q~1_combout\ & ( \ALUInput1Mux|v3|v1|Q~0_combout\ & ( (\IDEXREG|ALUFunc_IDEX\(0) & (\ALU16|V0|v12|Q~0_combout\ & ((\ALUInput2Mux|v3|v0|Q~1_combout\) # (\ALUInput1Mux|v3|v0|Q~4_combout\)))) ) ) ) # ( 
-- !\ALUInput2Mux|v3|v1|Q~1_combout\ & ( \ALUInput1Mux|v3|v1|Q~0_combout\ & ( (!\IDEXREG|ALUFunc_IDEX\(0) & (\ALUInput1Mux|v3|v0|Q~4_combout\ & (!\ALUInput2Mux|v3|v0|Q~1_combout\ & \ALU16|V0|v12|Q~0_combout\))) ) ) ) # ( \ALUInput2Mux|v3|v1|Q~1_combout\ & ( 
-- !\ALUInput1Mux|v3|v1|Q~0_combout\ & ( (\ALU16|V0|v12|Q~0_combout\ & (((\ALUInput1Mux|v3|v0|Q~4_combout\ & !\ALUInput2Mux|v3|v0|Q~1_combout\)) # (\IDEXREG|ALUFunc_IDEX\(0)))) ) ) ) # ( !\ALUInput2Mux|v3|v1|Q~1_combout\ & ( !\ALUInput1Mux|v3|v1|Q~0_combout\ 
-- & ( (\ALU16|V0|v12|Q~0_combout\ & ((!\IDEXREG|ALUFunc_IDEX\(0)) # ((\ALUInput2Mux|v3|v0|Q~1_combout\) # (\ALUInput1Mux|v3|v0|Q~4_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010111111000000000111010100000000001000000000000000010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IDEXREG|ALT_INV_ALUFunc_IDEX\(0),
	datab => \ALUInput1Mux|v3|v0|ALT_INV_Q~4_combout\,
	datac => \ALUInput2Mux|v3|v0|ALT_INV_Q~1_combout\,
	datad => \ALU16|V0|v12|ALT_INV_Q~0_combout\,
	datae => \ALUInput2Mux|v3|v1|ALT_INV_Q~1_combout\,
	dataf => \ALUInput1Mux|v3|v1|ALT_INV_Q~0_combout\,
	combout => \ALU16|V1|v12|Q~0_combout\);

\ALU16|V21|v1|v2|Q\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU16|V21|v1|v2|Q~combout\ = ( \ALUInput1Mux|v3|v2|Q~6_combout\ & ( \ALU16|V1|v12|Q~0_combout\ & ( (!\IDEXREG|ALUFunc_IDEX\(2) & ((!\IDEXREG|ALUFunc_IDEX\(0) & (!\IDEXREG|ALUFunc_IDEX\(1) & \ALUInput2Mux|v3|v2|Q~2_combout\)) # (\IDEXREG|ALUFunc_IDEX\(0) 
-- & ((!\ALUInput2Mux|v3|v2|Q~2_combout\))))) # (\IDEXREG|ALUFunc_IDEX\(2) & (!\IDEXREG|ALUFunc_IDEX\(0) $ (((!\IDEXREG|ALUFunc_IDEX\(1)) # (\ALUInput2Mux|v3|v2|Q~2_combout\))))) ) ) ) # ( !\ALUInput1Mux|v3|v2|Q~6_combout\ & ( \ALU16|V1|v12|Q~0_combout\ & ( 
-- (!\IDEXREG|ALUFunc_IDEX\(1) & (!\IDEXREG|ALUFunc_IDEX\(2) & (!\IDEXREG|ALUFunc_IDEX\(0) $ (\ALUInput2Mux|v3|v2|Q~2_combout\)))) # (\IDEXREG|ALUFunc_IDEX\(1) & (!\IDEXREG|ALUFunc_IDEX\(2) $ (((!\IDEXREG|ALUFunc_IDEX\(0) & 
-- \ALUInput2Mux|v3|v2|Q~2_combout\))))) ) ) ) # ( \ALUInput1Mux|v3|v2|Q~6_combout\ & ( !\ALU16|V1|v12|Q~0_combout\ & ( (!\ALUInput2Mux|v3|v2|Q~2_combout\ & (!\IDEXREG|ALUFunc_IDEX\(1) $ (!\IDEXREG|ALUFunc_IDEX\(0) $ (!\IDEXREG|ALUFunc_IDEX\(2))))) # 
-- (\ALUInput2Mux|v3|v2|Q~2_combout\ & (\IDEXREG|ALUFunc_IDEX\(0) & ((!\IDEXREG|ALUFunc_IDEX\(1)) # (\IDEXREG|ALUFunc_IDEX\(2))))) ) ) ) # ( !\ALUInput1Mux|v3|v2|Q~6_combout\ & ( !\ALU16|V1|v12|Q~0_combout\ & ( (!\IDEXREG|ALUFunc_IDEX\(1) & 
-- (!\IDEXREG|ALUFunc_IDEX\(2) & (!\IDEXREG|ALUFunc_IDEX\(0) $ (!\ALUInput2Mux|v3|v2|Q~2_combout\)))) # (\IDEXREG|ALUFunc_IDEX\(1) & (!\IDEXREG|ALUFunc_IDEX\(2) $ (((!\IDEXREG|ALUFunc_IDEX\(0) & \ALUInput2Mux|v3|v2|Q~2_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000010010100100101100010001111010000001101000011011010000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IDEXREG|ALT_INV_ALUFunc_IDEX\(1),
	datab => \IDEXREG|ALT_INV_ALUFunc_IDEX\(0),
	datac => \IDEXREG|ALT_INV_ALUFunc_IDEX\(2),
	datad => \ALUInput2Mux|v3|v2|ALT_INV_Q~2_combout\,
	datae => \ALUInput1Mux|v3|v2|ALT_INV_Q~6_combout\,
	dataf => \ALU16|V1|v12|ALT_INV_Q~0_combout\,
	combout => \ALU16|V21|v1|v2|Q~combout\);

\EXMEMREG|Result_EXMEM[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \ALU16|V21|v1|v2|Q~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EXMEMREG|Result_EXMEM\(2));

\fromData[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fromData(3),
	o => \fromData[3]~input_o\);

\MEMWB_inputData_sig[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMWB_inputData_sig[3]~3_combout\ = (!\EXMEMREG|isLW_EXMEM~q\ & (\EXMEMREG|Result_EXMEM\(3))) # (\EXMEMREG|isLW_EXMEM~q\ & ((\fromData[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011101000111010001110100011101000111010001110100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EXMEMREG|ALT_INV_Result_EXMEM\(3),
	datab => \EXMEMREG|ALT_INV_isLW_EXMEM~q\,
	datac => \ALT_INV_fromData[3]~input_o\,
	combout => \MEMWB_inputData_sig[3]~3_combout\);

\keyData[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_keyData(3),
	o => \keyData[3]~input_o\);

\MEMWBREG|writeData[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \MEMWB_inputData_sig[3]~3_combout\,
	asdata => \keyData[3]~input_o\,
	sload => \EXMEMREG|ReadDigit_EXMEM~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMWBREG|writeData\(3));

\RegisterFile|reg4|gen_register:3:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~input_o\,
	d => \MEMWBREG|writeData\(3),
	ena => \RegisterFile|v0|v12|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegisterFile|reg4|gen_register:3:vff|O~q\);

\RegisterFile|reg5|gen_register:3:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~input_o\,
	d => \MEMWBREG|writeData\(3),
	ena => \RegisterFile|v0|v14|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegisterFile|reg5|gen_register:3:vff|O~q\);

\RegisterFile|reg6|gen_register:3:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~input_o\,
	d => \MEMWBREG|writeData\(3),
	ena => \RegisterFile|v0|v16|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegisterFile|reg6|gen_register:3:vff|O~q\);

\RegisterFile|reg7|gen_register:3:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~input_o\,
	d => \MEMWBREG|writeData\(3),
	ena => \RegisterFile|v0|v18|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegisterFile|reg7|gen_register:3:vff|O~q\);

\RegisterFile|read_mux2|v6|v3|v3|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \RegisterFile|read_mux2|v6|v3|v3|Q~0_combout\ = ( \IFIDREG|outInstruction\(6) & ( \IFIDREG|outInstruction\(7) & ( \RegisterFile|reg7|gen_register:3:vff|O~q\ ) ) ) # ( !\IFIDREG|outInstruction\(6) & ( \IFIDREG|outInstruction\(7) & ( 
-- \RegisterFile|reg6|gen_register:3:vff|O~q\ ) ) ) # ( \IFIDREG|outInstruction\(6) & ( !\IFIDREG|outInstruction\(7) & ( \RegisterFile|reg5|gen_register:3:vff|O~q\ ) ) ) # ( !\IFIDREG|outInstruction\(6) & ( !\IFIDREG|outInstruction\(7) & ( 
-- \RegisterFile|reg4|gen_register:3:vff|O~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegisterFile|reg4|gen_register:3:vff|ALT_INV_O~q\,
	datab => \RegisterFile|reg5|gen_register:3:vff|ALT_INV_O~q\,
	datac => \RegisterFile|reg6|gen_register:3:vff|ALT_INV_O~q\,
	datad => \RegisterFile|reg7|gen_register:3:vff|ALT_INV_O~q\,
	datae => \IFIDREG|ALT_INV_outInstruction\(6),
	dataf => \IFIDREG|ALT_INV_outInstruction\(7),
	combout => \RegisterFile|read_mux2|v6|v3|v3|Q~0_combout\);

\RegisterFile|reg3|gen_register:3:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~input_o\,
	d => \MEMWBREG|writeData\(3),
	ena => \RegisterFile|v0|v10|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegisterFile|reg3|gen_register:3:vff|O~q\);

\RegisterFile|reg2|gen_register:3:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~input_o\,
	d => \MEMWBREG|writeData\(3),
	ena => \RegisterFile|v0|v8|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegisterFile|reg2|gen_register:3:vff|O~q\);

\RegisterFile|reg1|gen_register:3:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~input_o\,
	d => \MEMWBREG|writeData\(3),
	ena => \RegisterFile|v0|v6|Q~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegisterFile|reg1|gen_register:3:vff|O~q\);

\RegisterFile|read_mux2|v6|v3|v3|Q~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \RegisterFile|read_mux2|v6|v3|v3|Q~1_combout\ = ( !\IFIDREG|outInstruction\(8) & ( (!\IFIDREG|outInstruction\(7) & (\IFIDREG|outInstruction\(6) & (\RegisterFile|reg1|gen_register:3:vff|O~q\))) # (\IFIDREG|outInstruction\(7) & 
-- ((!\IFIDREG|outInstruction\(6) & (((\RegisterFile|reg2|gen_register:3:vff|O~q\)))) # (\IFIDREG|outInstruction\(6) & (((\RegisterFile|reg3|gen_register:3:vff|O~q\)))))) ) ) # ( \IFIDREG|outInstruction\(8) & ( 
-- (((\RegisterFile|read_mux2|v6|v3|v3|Q~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001000010011000011110000111101000110010101110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IFIDREG|ALT_INV_outInstruction\(7),
	datab => \IFIDREG|ALT_INV_outInstruction\(6),
	datac => \RegisterFile|read_mux2|v6|v3|v3|ALT_INV_Q~0_combout\,
	datad => \RegisterFile|reg3|gen_register:3:vff|ALT_INV_O~q\,
	datae => \IFIDREG|ALT_INV_outInstruction\(8),
	dataf => \RegisterFile|reg2|gen_register:3:vff|ALT_INV_O~q\,
	datag => \RegisterFile|reg1|gen_register:3:vff|ALT_INV_O~q\,
	combout => \RegisterFile|read_mux2|v6|v3|v3|Q~1_combout\);

\IDEXREG|R2Reg_IDEX[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \RegisterFile|read_mux2|v6|v3|v3|Q~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEXREG|R2Reg_IDEX\(3));

\ALUInput2Mux|v3|v3|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALUInput2Mux|v3|v3|Q~0_combout\ = ( \MEMWBREG|writeData\(3) & ( \IDEXREG|R2Reg_IDEX\(3) & ( (\ALUInput2Mux|v3|v12|Q~0_combout\ & !\ALUInput2Mux|v3|v12|Q~1_combout\) ) ) ) # ( !\MEMWBREG|writeData\(3) & ( \IDEXREG|R2Reg_IDEX\(3) & ( 
-- (\ALUInput2Mux|v3|v12|Q~0_combout\ & (!\ALUInput2Mux|v3|v12|Q~1_combout\ & ((!\ALUInput2Mux|v3|v12|Q~2_combout\) # (\ForwardUnit|Equal2~0_combout\)))) ) ) ) # ( \MEMWBREG|writeData\(3) & ( !\IDEXREG|R2Reg_IDEX\(3) & ( (\ALUInput2Mux|v3|v12|Q~0_combout\ & 
-- (!\ForwardUnit|Equal2~0_combout\ & (!\ALUInput2Mux|v3|v12|Q~1_combout\ & \ALUInput2Mux|v3|v12|Q~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000100000001010000000100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALUInput2Mux|v3|v12|ALT_INV_Q~0_combout\,
	datab => \ForwardUnit|ALT_INV_Equal2~0_combout\,
	datac => \ALUInput2Mux|v3|v12|ALT_INV_Q~1_combout\,
	datad => \ALUInput2Mux|v3|v12|ALT_INV_Q~2_combout\,
	datae => \MEMWBREG|ALT_INV_writeData\(3),
	dataf => \IDEXREG|ALT_INV_R2Reg_IDEX\(3),
	combout => \ALUInput2Mux|v3|v3|Q~0_combout\);

\ALUInput2Mux|v3|v3|Q~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALUInput2Mux|v3|v3|Q~1_combout\ = (!\ALUInput2Mux|v3|v12|Q~0_combout\ & (((\IDEXREG|jumpShortAddr_IDEX\(3))))) # (\ALUInput2Mux|v3|v12|Q~0_combout\ & (\EXMEMREG|Result_EXMEM\(3) & (\ALUInput2Mux|v3|v12|Q~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111001101000000011100110100000001110011010000000111001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EXMEMREG|ALT_INV_Result_EXMEM\(3),
	datab => \ALUInput2Mux|v3|v12|ALT_INV_Q~0_combout\,
	datac => \ALUInput2Mux|v3|v12|ALT_INV_Q~1_combout\,
	datad => \IDEXREG|ALT_INV_jumpShortAddr_IDEX\(3),
	combout => \ALUInput2Mux|v3|v3|Q~1_combout\);

\ALUInput2Mux|v3|v3|Q~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALUInput2Mux|v3|v3|Q~2_combout\ = (!\ALUInput2Mux|v3|v3|Q~0_combout\ & !\ALUInput2Mux|v3|v3|Q~1_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALUInput2Mux|v3|v3|ALT_INV_Q~0_combout\,
	datab => \ALUInput2Mux|v3|v3|ALT_INV_Q~1_combout\,
	combout => \ALUInput2Mux|v3|v3|Q~2_combout\);

\RegisterFile|read_mux1|v6|v3|v3|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \RegisterFile|read_mux1|v6|v3|v3|Q~0_combout\ = ( \IFIDREG|outInstruction\(9) & ( \IFIDREG|outInstruction\(10) & ( \RegisterFile|reg7|gen_register:3:vff|O~q\ ) ) ) # ( !\IFIDREG|outInstruction\(9) & ( \IFIDREG|outInstruction\(10) & ( 
-- \RegisterFile|reg6|gen_register:3:vff|O~q\ ) ) ) # ( \IFIDREG|outInstruction\(9) & ( !\IFIDREG|outInstruction\(10) & ( \RegisterFile|reg5|gen_register:3:vff|O~q\ ) ) ) # ( !\IFIDREG|outInstruction\(9) & ( !\IFIDREG|outInstruction\(10) & ( 
-- \RegisterFile|reg4|gen_register:3:vff|O~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegisterFile|reg4|gen_register:3:vff|ALT_INV_O~q\,
	datab => \RegisterFile|reg5|gen_register:3:vff|ALT_INV_O~q\,
	datac => \RegisterFile|reg6|gen_register:3:vff|ALT_INV_O~q\,
	datad => \RegisterFile|reg7|gen_register:3:vff|ALT_INV_O~q\,
	datae => \IFIDREG|ALT_INV_outInstruction\(9),
	dataf => \IFIDREG|ALT_INV_outInstruction\(10),
	combout => \RegisterFile|read_mux1|v6|v3|v3|Q~0_combout\);

\RegisterFile|read_mux1|v6|v3|v3|Q~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \RegisterFile|read_mux1|v6|v3|v3|Q~1_combout\ = ( !\IFIDREG|outInstruction\(11) & ( (!\IFIDREG|outInstruction\(10) & (\IFIDREG|outInstruction\(9) & (\RegisterFile|reg1|gen_register:3:vff|O~q\))) # (\IFIDREG|outInstruction\(10) & 
-- ((!\IFIDREG|outInstruction\(9) & (((\RegisterFile|reg2|gen_register:3:vff|O~q\)))) # (\IFIDREG|outInstruction\(9) & (((\RegisterFile|reg3|gen_register:3:vff|O~q\)))))) ) ) # ( \IFIDREG|outInstruction\(11) & ( 
-- (((\RegisterFile|read_mux1|v6|v3|v3|Q~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001000010011000011110000111101000110010101110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IFIDREG|ALT_INV_outInstruction\(10),
	datab => \IFIDREG|ALT_INV_outInstruction\(9),
	datac => \RegisterFile|read_mux1|v6|v3|v3|ALT_INV_Q~0_combout\,
	datad => \RegisterFile|reg3|gen_register:3:vff|ALT_INV_O~q\,
	datae => \IFIDREG|ALT_INV_outInstruction\(11),
	dataf => \RegisterFile|reg2|gen_register:3:vff|ALT_INV_O~q\,
	datag => \RegisterFile|reg1|gen_register:3:vff|ALT_INV_O~q\,
	combout => \RegisterFile|read_mux1|v6|v3|v3|Q~1_combout\);

\IDEXREG|R1Reg_IDEX[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \RegisterFile|read_mux1|v6|v3|v3|Q~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEXREG|R1Reg_IDEX\(3));

\ALUInput1Mux|v3|v3|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALUInput1Mux|v3|v3|Q~0_combout\ = ( \MEMWBREG|writeData\(3) & ( \IDEXREG|R1Reg_IDEX\(3) & ( (!\ALUInput1Mux|v3|v2|Q~0_combout\ & \ALUInput1Mux|v3|v2|Q~1_combout\) ) ) ) # ( !\MEMWBREG|writeData\(3) & ( \IDEXREG|R1Reg_IDEX\(3) & ( 
-- (!\ALUInput1Mux|v3|v2|Q~0_combout\ & (\ALUInput1Mux|v3|v2|Q~1_combout\ & ((!\ALUInput1Mux|v3|v2|Q~3_combout\) # (\ALUInput1Mux|v3|v2|Q~2_combout\)))) ) ) ) # ( \MEMWBREG|writeData\(3) & ( !\IDEXREG|R1Reg_IDEX\(3) & ( (!\ALUInput1Mux|v3|v2|Q~0_combout\ & 
-- (!\ALUInput1Mux|v3|v2|Q~2_combout\ & (\ALUInput1Mux|v3|v2|Q~1_combout\ & \ALUInput1Mux|v3|v2|Q~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000100000001010000000100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALUInput1Mux|v3|v2|ALT_INV_Q~0_combout\,
	datab => \ALUInput1Mux|v3|v2|ALT_INV_Q~2_combout\,
	datac => \ALUInput1Mux|v3|v2|ALT_INV_Q~1_combout\,
	datad => \ALUInput1Mux|v3|v2|ALT_INV_Q~3_combout\,
	datae => \MEMWBREG|ALT_INV_writeData\(3),
	dataf => \IDEXREG|ALT_INV_R1Reg_IDEX\(3),
	combout => \ALUInput1Mux|v3|v3|Q~0_combout\);

\PC|gen_register:3:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \IFIDREG|outInstruction\(3),
	asdata => \IFIDREG|outPC\(3),
	sload => \Controller|isJType~0_combout\,
	ena => \Trap|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|gen_register:3:vff|O~q\);

\IFIDREG|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \IFIDREG|Add0~9_sumout\ = SUM(( \PC|gen_register:3:vff|O~q\ ) + ( GND ) + ( \IFIDREG|Add0~6\ ))
-- \IFIDREG|Add0~10\ = CARRY(( \PC|gen_register:3:vff|O~q\ ) + ( GND ) + ( \IFIDREG|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|gen_register:3:vff|ALT_INV_O~q\,
	cin => \IFIDREG|Add0~6\,
	sumout => \IFIDREG|Add0~9_sumout\,
	cout => \IFIDREG|Add0~10\);

\IFIDREG|outPC[3]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \IFIDREG|outPC[3]~4_combout\ = ( \instr[15]~input_o\ & ( \IFIDREG|Add0~9_sumout\ & ( (\clock~input_o\ & (((!\instr[13]~input_o\) # (!\instr[14]~input_o\)) # (\instr[12]~input_o\))) ) ) ) # ( !\instr[15]~input_o\ & ( \IFIDREG|Add0~9_sumout\ & ( 
-- \clock~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_clock~input_o\,
	datab => \ALT_INV_instr[12]~input_o\,
	datac => \ALT_INV_instr[13]~input_o\,
	datad => \ALT_INV_instr[14]~input_o\,
	datae => \ALT_INV_instr[15]~input_o\,
	dataf => \IFIDREG|ALT_INV_Add0~9_sumout\,
	combout => \IFIDREG|outPC[3]~4_combout\);

\IFIDREG|outPC[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \IFIDREG|outPC\(3) = ( \IFIDREG|outPC\(3) & ( \IFIDREG|outPC[15]~1_combout\ & ( \IFIDREG|outPC[3]~4_combout\ ) ) ) # ( !\IFIDREG|outPC\(3) & ( \IFIDREG|outPC[15]~1_combout\ & ( \IFIDREG|outPC[3]~4_combout\ ) ) ) # ( \IFIDREG|outPC\(3) & ( 
-- !\IFIDREG|outPC[15]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \IFIDREG|ALT_INV_outPC[3]~4_combout\,
	datae => \IFIDREG|ALT_INV_outPC\(3),
	dataf => \IFIDREG|ALT_INV_outPC[15]~1_combout\,
	combout => \IFIDREG|outPC\(3));

\ALUInput1Mux|v3|v3|Q~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALUInput1Mux|v3|v3|Q~1_combout\ = (!\ALUInput1Mux|v3|v2|Q~0_combout\ & (\EXMEMREG|Result_EXMEM\(3) & (!\ALUInput1Mux|v3|v2|Q~1_combout\))) # (\ALUInput1Mux|v3|v2|Q~0_combout\ & (((\IFIDREG|outPC\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001110011010000000111001101000000011100110100000001110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EXMEMREG|ALT_INV_Result_EXMEM\(3),
	datab => \ALUInput1Mux|v3|v2|ALT_INV_Q~0_combout\,
	datac => \ALUInput1Mux|v3|v2|ALT_INV_Q~1_combout\,
	datad => \IFIDREG|ALT_INV_outPC\(3),
	combout => \ALUInput1Mux|v3|v3|Q~1_combout\);

\ALUInput1Mux|v3|v3|Q~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALUInput1Mux|v3|v3|Q~2_combout\ = (!\ALUInput1Mux|v3|v3|Q~0_combout\ & !\ALUInput1Mux|v3|v3|Q~1_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALUInput1Mux|v3|v3|ALT_INV_Q~0_combout\,
	datab => \ALUInput1Mux|v3|v3|ALT_INV_Q~1_combout\,
	combout => \ALUInput1Mux|v3|v3|Q~2_combout\);

\ALU16|V2|v12|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU16|V2|v12|Q~0_combout\ = ( \ALUInput1Mux|v3|v2|Q~4_combout\ & ( \ALUInput1Mux|v3|v2|Q~5_combout\ & ( (\ALU16|V0|v12|Q~0_combout\ & (!\IDEXREG|ALUFunc_IDEX\(0) $ (((\ALUInput2Mux|v3|v2|Q~1_combout\) # (\ALUInput2Mux|v3|v2|Q~0_combout\))))) ) ) ) # ( 
-- !\ALUInput1Mux|v3|v2|Q~4_combout\ & ( \ALUInput1Mux|v3|v2|Q~5_combout\ & ( (\ALU16|V0|v12|Q~0_combout\ & (!\IDEXREG|ALUFunc_IDEX\(0) $ (((\ALUInput2Mux|v3|v2|Q~1_combout\) # (\ALUInput2Mux|v3|v2|Q~0_combout\))))) ) ) ) # ( \ALUInput1Mux|v3|v2|Q~4_combout\ 
-- & ( !\ALUInput1Mux|v3|v2|Q~5_combout\ & ( (\ALU16|V0|v12|Q~0_combout\ & (!\IDEXREG|ALUFunc_IDEX\(0) $ (((\ALUInput2Mux|v3|v2|Q~1_combout\) # (\ALUInput2Mux|v3|v2|Q~0_combout\))))) ) ) ) # ( !\ALUInput1Mux|v3|v2|Q~4_combout\ & ( 
-- !\ALUInput1Mux|v3|v2|Q~5_combout\ & ( (\ALU16|V0|v12|Q~0_combout\ & (!\IDEXREG|ALUFunc_IDEX\(0) $ (((!\ALUInput2Mux|v3|v2|Q~0_combout\ & !\ALUInput2Mux|v3|v2|Q~1_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001000100010001000010001000100100001000100010010000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IDEXREG|ALT_INV_ALUFunc_IDEX\(0),
	datab => \ALU16|V0|v12|ALT_INV_Q~0_combout\,
	datac => \ALUInput2Mux|v3|v2|ALT_INV_Q~0_combout\,
	datad => \ALUInput2Mux|v3|v2|ALT_INV_Q~1_combout\,
	datae => \ALUInput1Mux|v3|v2|ALT_INV_Q~4_combout\,
	dataf => \ALUInput1Mux|v3|v2|ALT_INV_Q~5_combout\,
	combout => \ALU16|V2|v12|Q~0_combout\);

\ALU16|V2|v12|Q~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU16|V2|v12|Q~3_combout\ = (\ALU16|V0|v12|Q~0_combout\ & (!\IDEXREG|ALUFunc_IDEX\(0) $ (((!\ALUInput2Mux|v3|v2|Q~0_combout\ & !\ALUInput2Mux|v3|v2|Q~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001000100010000100100010001000010010001000100001001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IDEXREG|ALT_INV_ALUFunc_IDEX\(0),
	datab => \ALU16|V0|v12|ALT_INV_Q~0_combout\,
	datac => \ALUInput2Mux|v3|v2|ALT_INV_Q~0_combout\,
	datad => \ALUInput2Mux|v3|v2|ALT_INV_Q~1_combout\,
	combout => \ALU16|V2|v12|Q~3_combout\);

\ALU16|V2|v12|Q~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU16|V2|v12|Q~1_combout\ = ( \IFIDREG|outPC\(2) & ( \ALU16|V2|v12|Q~3_combout\ & ( (((\EXMEMREG|Result_EXMEM\(2) & !\ALUInput1Mux|v3|v2|Q~1_combout\)) # (\ALUInput1Mux|v3|v2|Q~0_combout\)) # (\ALUInput1Mux|v3|v2|Q~5_combout\) ) ) ) # ( 
-- !\IFIDREG|outPC\(2) & ( \ALU16|V2|v12|Q~3_combout\ & ( ((\EXMEMREG|Result_EXMEM\(2) & (!\ALUInput1Mux|v3|v2|Q~0_combout\ & !\ALUInput1Mux|v3|v2|Q~1_combout\))) # (\ALUInput1Mux|v3|v2|Q~5_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001110101010101010111111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALUInput1Mux|v3|v2|ALT_INV_Q~5_combout\,
	datab => \EXMEMREG|ALT_INV_Result_EXMEM\(2),
	datac => \ALUInput1Mux|v3|v2|ALT_INV_Q~0_combout\,
	datad => \ALUInput1Mux|v3|v2|ALT_INV_Q~1_combout\,
	datae => \IFIDREG|ALT_INV_outPC\(2),
	dataf => \ALU16|V2|v12|ALT_INV_Q~3_combout\,
	combout => \ALU16|V2|v12|Q~1_combout\);

\ALU16|V2|v12|Q~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU16|V2|v12|Q~2_combout\ = (!\ALU16|V2|v12|Q~1_combout\ & ((!\ALU16|V1|v12|Q~0_combout\) # (!\ALU16|V2|v12|Q~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110000011100000111000001110000011100000111000001110000011100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU16|V1|v12|ALT_INV_Q~0_combout\,
	datab => \ALU16|V2|v12|ALT_INV_Q~0_combout\,
	datac => \ALU16|V2|v12|ALT_INV_Q~1_combout\,
	combout => \ALU16|V2|v12|Q~2_combout\);

\ALU16|V21|v1|v3|Q\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU16|V21|v1|v3|Q~combout\ = ( \ALUInput1Mux|v3|v3|Q~2_combout\ & ( \ALU16|V2|v12|Q~2_combout\ & ( (!\ALUInput2Mux|v3|v3|Q~2_combout\ & (!\IDEXREG|ALUFunc_IDEX\(1) $ (!\IDEXREG|ALUFunc_IDEX\(0) $ (!\IDEXREG|ALUFunc_IDEX\(2))))) # 
-- (\ALUInput2Mux|v3|v3|Q~2_combout\ & (\IDEXREG|ALUFunc_IDEX\(0) & ((!\IDEXREG|ALUFunc_IDEX\(1)) # (\IDEXREG|ALUFunc_IDEX\(2))))) ) ) ) # ( !\ALUInput1Mux|v3|v3|Q~2_combout\ & ( \ALU16|V2|v12|Q~2_combout\ & ( (!\IDEXREG|ALUFunc_IDEX\(1) & 
-- (!\IDEXREG|ALUFunc_IDEX\(2) & (!\IDEXREG|ALUFunc_IDEX\(0) $ (!\ALUInput2Mux|v3|v3|Q~2_combout\)))) # (\IDEXREG|ALUFunc_IDEX\(1) & (!\IDEXREG|ALUFunc_IDEX\(2) $ (((!\IDEXREG|ALUFunc_IDEX\(0) & \ALUInput2Mux|v3|v3|Q~2_combout\))))) ) ) ) # ( 
-- \ALUInput1Mux|v3|v3|Q~2_combout\ & ( !\ALU16|V2|v12|Q~2_combout\ & ( (!\IDEXREG|ALUFunc_IDEX\(2) & ((!\IDEXREG|ALUFunc_IDEX\(0) & (!\IDEXREG|ALUFunc_IDEX\(1) & \ALUInput2Mux|v3|v3|Q~2_combout\)) # (\IDEXREG|ALUFunc_IDEX\(0) & 
-- ((!\ALUInput2Mux|v3|v3|Q~2_combout\))))) # (\IDEXREG|ALUFunc_IDEX\(2) & (!\IDEXREG|ALUFunc_IDEX\(0) $ (((!\IDEXREG|ALUFunc_IDEX\(1)) # (\ALUInput2Mux|v3|v3|Q~2_combout\))))) ) ) ) # ( !\ALUInput1Mux|v3|v3|Q~2_combout\ & ( !\ALU16|V2|v12|Q~2_combout\ & ( 
-- (!\IDEXREG|ALUFunc_IDEX\(1) & (!\IDEXREG|ALUFunc_IDEX\(2) & (!\IDEXREG|ALUFunc_IDEX\(0) $ (\ALUInput2Mux|v3|v3|Q~2_combout\)))) # (\IDEXREG|ALUFunc_IDEX\(1) & (!\IDEXREG|ALUFunc_IDEX\(2) $ (((!\IDEXREG|ALUFunc_IDEX\(0) & 
-- \ALUInput2Mux|v3|v3|Q~2_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101000000110100001101101000001101110000100101001001011000100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IDEXREG|ALT_INV_ALUFunc_IDEX\(1),
	datab => \IDEXREG|ALT_INV_ALUFunc_IDEX\(0),
	datac => \IDEXREG|ALT_INV_ALUFunc_IDEX\(2),
	datad => \ALUInput2Mux|v3|v3|ALT_INV_Q~2_combout\,
	datae => \ALUInput1Mux|v3|v3|ALT_INV_Q~2_combout\,
	dataf => \ALU16|V2|v12|ALT_INV_Q~2_combout\,
	combout => \ALU16|V21|v1|v3|Q~combout\);

\EXMEMREG|Result_EXMEM[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \ALU16|V21|v1|v3|Q~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EXMEMREG|Result_EXMEM\(3));

\fromData[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fromData(4),
	o => \fromData[4]~input_o\);

\MEMWB_inputData_sig[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMWB_inputData_sig[4]~4_combout\ = (!\EXMEMREG|isLW_EXMEM~q\ & (\EXMEMREG|Result_EXMEM\(4))) # (\EXMEMREG|isLW_EXMEM~q\ & ((\fromData[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011101000111010001110100011101000111010001110100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EXMEMREG|ALT_INV_Result_EXMEM\(4),
	datab => \EXMEMREG|ALT_INV_isLW_EXMEM~q\,
	datac => \ALT_INV_fromData[4]~input_o\,
	combout => \MEMWB_inputData_sig[4]~4_combout\);

\keyData[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_keyData(4),
	o => \keyData[4]~input_o\);

\MEMWBREG|writeData[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \MEMWB_inputData_sig[4]~4_combout\,
	asdata => \keyData[4]~input_o\,
	sload => \EXMEMREG|ReadDigit_EXMEM~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMWBREG|writeData\(4));

\RegisterFile|reg4|gen_register:4:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~input_o\,
	d => \MEMWBREG|writeData\(4),
	ena => \RegisterFile|v0|v12|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegisterFile|reg4|gen_register:4:vff|O~q\);

\RegisterFile|reg5|gen_register:4:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~input_o\,
	d => \MEMWBREG|writeData\(4),
	ena => \RegisterFile|v0|v14|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegisterFile|reg5|gen_register:4:vff|O~q\);

\RegisterFile|reg6|gen_register:4:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~input_o\,
	d => \MEMWBREG|writeData\(4),
	ena => \RegisterFile|v0|v16|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegisterFile|reg6|gen_register:4:vff|O~q\);

\RegisterFile|reg7|gen_register:4:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~input_o\,
	d => \MEMWBREG|writeData\(4),
	ena => \RegisterFile|v0|v18|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegisterFile|reg7|gen_register:4:vff|O~q\);

\RegisterFile|read_mux2|v6|v3|v4|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \RegisterFile|read_mux2|v6|v3|v4|Q~0_combout\ = ( \IFIDREG|outInstruction\(6) & ( \IFIDREG|outInstruction\(7) & ( \RegisterFile|reg7|gen_register:4:vff|O~q\ ) ) ) # ( !\IFIDREG|outInstruction\(6) & ( \IFIDREG|outInstruction\(7) & ( 
-- \RegisterFile|reg6|gen_register:4:vff|O~q\ ) ) ) # ( \IFIDREG|outInstruction\(6) & ( !\IFIDREG|outInstruction\(7) & ( \RegisterFile|reg5|gen_register:4:vff|O~q\ ) ) ) # ( !\IFIDREG|outInstruction\(6) & ( !\IFIDREG|outInstruction\(7) & ( 
-- \RegisterFile|reg4|gen_register:4:vff|O~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegisterFile|reg4|gen_register:4:vff|ALT_INV_O~q\,
	datab => \RegisterFile|reg5|gen_register:4:vff|ALT_INV_O~q\,
	datac => \RegisterFile|reg6|gen_register:4:vff|ALT_INV_O~q\,
	datad => \RegisterFile|reg7|gen_register:4:vff|ALT_INV_O~q\,
	datae => \IFIDREG|ALT_INV_outInstruction\(6),
	dataf => \IFIDREG|ALT_INV_outInstruction\(7),
	combout => \RegisterFile|read_mux2|v6|v3|v4|Q~0_combout\);

\RegisterFile|reg3|gen_register:4:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~input_o\,
	d => \MEMWBREG|writeData\(4),
	ena => \RegisterFile|v0|v10|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegisterFile|reg3|gen_register:4:vff|O~q\);

\RegisterFile|reg2|gen_register:4:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~input_o\,
	d => \MEMWBREG|writeData\(4),
	ena => \RegisterFile|v0|v8|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegisterFile|reg2|gen_register:4:vff|O~q\);

\RegisterFile|reg1|gen_register:4:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~input_o\,
	d => \MEMWBREG|writeData\(4),
	ena => \RegisterFile|v0|v6|Q~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegisterFile|reg1|gen_register:4:vff|O~q\);

\RegisterFile|read_mux2|v6|v3|v4|Q~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \RegisterFile|read_mux2|v6|v3|v4|Q~1_combout\ = ( !\IFIDREG|outInstruction\(8) & ( (!\IFIDREG|outInstruction\(7) & (\IFIDREG|outInstruction\(6) & (\RegisterFile|reg1|gen_register:4:vff|O~q\))) # (\IFIDREG|outInstruction\(7) & 
-- ((!\IFIDREG|outInstruction\(6) & (((\RegisterFile|reg2|gen_register:4:vff|O~q\)))) # (\IFIDREG|outInstruction\(6) & (((\RegisterFile|reg3|gen_register:4:vff|O~q\)))))) ) ) # ( \IFIDREG|outInstruction\(8) & ( 
-- (((\RegisterFile|read_mux2|v6|v3|v4|Q~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001000010011000011110000111101000110010101110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IFIDREG|ALT_INV_outInstruction\(7),
	datab => \IFIDREG|ALT_INV_outInstruction\(6),
	datac => \RegisterFile|read_mux2|v6|v3|v4|ALT_INV_Q~0_combout\,
	datad => \RegisterFile|reg3|gen_register:4:vff|ALT_INV_O~q\,
	datae => \IFIDREG|ALT_INV_outInstruction\(8),
	dataf => \RegisterFile|reg2|gen_register:4:vff|ALT_INV_O~q\,
	datag => \RegisterFile|reg1|gen_register:4:vff|ALT_INV_O~q\,
	combout => \RegisterFile|read_mux2|v6|v3|v4|Q~1_combout\);

\IDEXREG|R2Reg_IDEX[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \RegisterFile|read_mux2|v6|v3|v4|Q~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEXREG|R2Reg_IDEX\(4));

\ALUInput2Mux|v3|v4|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALUInput2Mux|v3|v4|Q~0_combout\ = ( \MEMWBREG|writeData\(4) & ( \IDEXREG|R2Reg_IDEX\(4) & ( (\ALUInput2Mux|v3|v12|Q~0_combout\ & !\ALUInput2Mux|v3|v12|Q~1_combout\) ) ) ) # ( !\MEMWBREG|writeData\(4) & ( \IDEXREG|R2Reg_IDEX\(4) & ( 
-- (\ALUInput2Mux|v3|v12|Q~0_combout\ & (!\ALUInput2Mux|v3|v12|Q~1_combout\ & ((!\ALUInput2Mux|v3|v12|Q~2_combout\) # (\ForwardUnit|Equal2~0_combout\)))) ) ) ) # ( \MEMWBREG|writeData\(4) & ( !\IDEXREG|R2Reg_IDEX\(4) & ( (\ALUInput2Mux|v3|v12|Q~0_combout\ & 
-- (!\ForwardUnit|Equal2~0_combout\ & (!\ALUInput2Mux|v3|v12|Q~1_combout\ & \ALUInput2Mux|v3|v12|Q~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000100000001010000000100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALUInput2Mux|v3|v12|ALT_INV_Q~0_combout\,
	datab => \ForwardUnit|ALT_INV_Equal2~0_combout\,
	datac => \ALUInput2Mux|v3|v12|ALT_INV_Q~1_combout\,
	datad => \ALUInput2Mux|v3|v12|ALT_INV_Q~2_combout\,
	datae => \MEMWBREG|ALT_INV_writeData\(4),
	dataf => \IDEXREG|ALT_INV_R2Reg_IDEX\(4),
	combout => \ALUInput2Mux|v3|v4|Q~0_combout\);

\ALUInput2Mux|v3|v4|Q~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALUInput2Mux|v3|v4|Q~1_combout\ = (!\ALUInput2Mux|v3|v12|Q~0_combout\ & (((\IDEXREG|jumpShortAddr_IDEX\(4))))) # (\ALUInput2Mux|v3|v12|Q~0_combout\ & (\EXMEMREG|Result_EXMEM\(4) & (\ALUInput2Mux|v3|v12|Q~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111001101000000011100110100000001110011010000000111001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EXMEMREG|ALT_INV_Result_EXMEM\(4),
	datab => \ALUInput2Mux|v3|v12|ALT_INV_Q~0_combout\,
	datac => \ALUInput2Mux|v3|v12|ALT_INV_Q~1_combout\,
	datad => \IDEXREG|ALT_INV_jumpShortAddr_IDEX\(4),
	combout => \ALUInput2Mux|v3|v4|Q~1_combout\);

\ALUInput2Mux|v3|v4|Q~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALUInput2Mux|v3|v4|Q~2_combout\ = (!\ALUInput2Mux|v3|v4|Q~0_combout\ & !\ALUInput2Mux|v3|v4|Q~1_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALUInput2Mux|v3|v4|ALT_INV_Q~0_combout\,
	datab => \ALUInput2Mux|v3|v4|ALT_INV_Q~1_combout\,
	combout => \ALUInput2Mux|v3|v4|Q~2_combout\);

\RegisterFile|read_mux1|v6|v3|v4|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \RegisterFile|read_mux1|v6|v3|v4|Q~0_combout\ = ( \IFIDREG|outInstruction\(9) & ( \IFIDREG|outInstruction\(10) & ( \RegisterFile|reg7|gen_register:4:vff|O~q\ ) ) ) # ( !\IFIDREG|outInstruction\(9) & ( \IFIDREG|outInstruction\(10) & ( 
-- \RegisterFile|reg6|gen_register:4:vff|O~q\ ) ) ) # ( \IFIDREG|outInstruction\(9) & ( !\IFIDREG|outInstruction\(10) & ( \RegisterFile|reg5|gen_register:4:vff|O~q\ ) ) ) # ( !\IFIDREG|outInstruction\(9) & ( !\IFIDREG|outInstruction\(10) & ( 
-- \RegisterFile|reg4|gen_register:4:vff|O~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegisterFile|reg4|gen_register:4:vff|ALT_INV_O~q\,
	datab => \RegisterFile|reg5|gen_register:4:vff|ALT_INV_O~q\,
	datac => \RegisterFile|reg6|gen_register:4:vff|ALT_INV_O~q\,
	datad => \RegisterFile|reg7|gen_register:4:vff|ALT_INV_O~q\,
	datae => \IFIDREG|ALT_INV_outInstruction\(9),
	dataf => \IFIDREG|ALT_INV_outInstruction\(10),
	combout => \RegisterFile|read_mux1|v6|v3|v4|Q~0_combout\);

\RegisterFile|read_mux1|v6|v3|v4|Q~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \RegisterFile|read_mux1|v6|v3|v4|Q~1_combout\ = ( !\IFIDREG|outInstruction\(11) & ( (!\IFIDREG|outInstruction\(10) & (\IFIDREG|outInstruction\(9) & (\RegisterFile|reg1|gen_register:4:vff|O~q\))) # (\IFIDREG|outInstruction\(10) & 
-- ((!\IFIDREG|outInstruction\(9) & (((\RegisterFile|reg2|gen_register:4:vff|O~q\)))) # (\IFIDREG|outInstruction\(9) & (((\RegisterFile|reg3|gen_register:4:vff|O~q\)))))) ) ) # ( \IFIDREG|outInstruction\(11) & ( 
-- (((\RegisterFile|read_mux1|v6|v3|v4|Q~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001000010011000011110000111101000110010101110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IFIDREG|ALT_INV_outInstruction\(10),
	datab => \IFIDREG|ALT_INV_outInstruction\(9),
	datac => \RegisterFile|read_mux1|v6|v3|v4|ALT_INV_Q~0_combout\,
	datad => \RegisterFile|reg3|gen_register:4:vff|ALT_INV_O~q\,
	datae => \IFIDREG|ALT_INV_outInstruction\(11),
	dataf => \RegisterFile|reg2|gen_register:4:vff|ALT_INV_O~q\,
	datag => \RegisterFile|reg1|gen_register:4:vff|ALT_INV_O~q\,
	combout => \RegisterFile|read_mux1|v6|v3|v4|Q~1_combout\);

\IDEXREG|R1Reg_IDEX[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \RegisterFile|read_mux1|v6|v3|v4|Q~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEXREG|R1Reg_IDEX\(4));

\ALUInput1Mux|v3|v4|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALUInput1Mux|v3|v4|Q~0_combout\ = ( \MEMWBREG|writeData\(4) & ( \IDEXREG|R1Reg_IDEX\(4) & ( (!\ALUInput1Mux|v3|v2|Q~0_combout\ & \ALUInput1Mux|v3|v2|Q~1_combout\) ) ) ) # ( !\MEMWBREG|writeData\(4) & ( \IDEXREG|R1Reg_IDEX\(4) & ( 
-- (!\ALUInput1Mux|v3|v2|Q~0_combout\ & (\ALUInput1Mux|v3|v2|Q~1_combout\ & ((!\ALUInput1Mux|v3|v2|Q~3_combout\) # (\ALUInput1Mux|v3|v2|Q~2_combout\)))) ) ) ) # ( \MEMWBREG|writeData\(4) & ( !\IDEXREG|R1Reg_IDEX\(4) & ( (!\ALUInput1Mux|v3|v2|Q~0_combout\ & 
-- (!\ALUInput1Mux|v3|v2|Q~2_combout\ & (\ALUInput1Mux|v3|v2|Q~1_combout\ & \ALUInput1Mux|v3|v2|Q~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000100000001010000000100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALUInput1Mux|v3|v2|ALT_INV_Q~0_combout\,
	datab => \ALUInput1Mux|v3|v2|ALT_INV_Q~2_combout\,
	datac => \ALUInput1Mux|v3|v2|ALT_INV_Q~1_combout\,
	datad => \ALUInput1Mux|v3|v2|ALT_INV_Q~3_combout\,
	datae => \MEMWBREG|ALT_INV_writeData\(4),
	dataf => \IDEXREG|ALT_INV_R1Reg_IDEX\(4),
	combout => \ALUInput1Mux|v3|v4|Q~0_combout\);

\PC|gen_register:4:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \IFIDREG|outInstruction\(4),
	asdata => \IFIDREG|outPC\(4),
	sload => \Controller|isJType~0_combout\,
	ena => \Trap|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|gen_register:4:vff|O~q\);

\IFIDREG|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \IFIDREG|Add0~13_sumout\ = SUM(( \PC|gen_register:4:vff|O~q\ ) + ( GND ) + ( \IFIDREG|Add0~10\ ))
-- \IFIDREG|Add0~14\ = CARRY(( \PC|gen_register:4:vff|O~q\ ) + ( GND ) + ( \IFIDREG|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|gen_register:4:vff|ALT_INV_O~q\,
	cin => \IFIDREG|Add0~10\,
	sumout => \IFIDREG|Add0~13_sumout\,
	cout => \IFIDREG|Add0~14\);

\IFIDREG|outPC[4]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \IFIDREG|outPC[4]~5_combout\ = ( \instr[15]~input_o\ & ( \IFIDREG|Add0~13_sumout\ & ( (\clock~input_o\ & (((!\instr[13]~input_o\) # (!\instr[14]~input_o\)) # (\instr[12]~input_o\))) ) ) ) # ( !\instr[15]~input_o\ & ( \IFIDREG|Add0~13_sumout\ & ( 
-- \clock~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_clock~input_o\,
	datab => \ALT_INV_instr[12]~input_o\,
	datac => \ALT_INV_instr[13]~input_o\,
	datad => \ALT_INV_instr[14]~input_o\,
	datae => \ALT_INV_instr[15]~input_o\,
	dataf => \IFIDREG|ALT_INV_Add0~13_sumout\,
	combout => \IFIDREG|outPC[4]~5_combout\);

\IFIDREG|outPC[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \IFIDREG|outPC\(4) = ( \IFIDREG|outPC\(4) & ( \IFIDREG|outPC[15]~1_combout\ & ( \IFIDREG|outPC[4]~5_combout\ ) ) ) # ( !\IFIDREG|outPC\(4) & ( \IFIDREG|outPC[15]~1_combout\ & ( \IFIDREG|outPC[4]~5_combout\ ) ) ) # ( \IFIDREG|outPC\(4) & ( 
-- !\IFIDREG|outPC[15]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \IFIDREG|ALT_INV_outPC[4]~5_combout\,
	datae => \IFIDREG|ALT_INV_outPC\(4),
	dataf => \IFIDREG|ALT_INV_outPC[15]~1_combout\,
	combout => \IFIDREG|outPC\(4));

\ALUInput1Mux|v3|v4|Q~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALUInput1Mux|v3|v4|Q~1_combout\ = (!\ALUInput1Mux|v3|v2|Q~0_combout\ & (\EXMEMREG|Result_EXMEM\(4) & (!\ALUInput1Mux|v3|v2|Q~1_combout\))) # (\ALUInput1Mux|v3|v2|Q~0_combout\ & (((\IFIDREG|outPC\(4)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001110011010000000111001101000000011100110100000001110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EXMEMREG|ALT_INV_Result_EXMEM\(4),
	datab => \ALUInput1Mux|v3|v2|ALT_INV_Q~0_combout\,
	datac => \ALUInput1Mux|v3|v2|ALT_INV_Q~1_combout\,
	datad => \IFIDREG|ALT_INV_outPC\(4),
	combout => \ALUInput1Mux|v3|v4|Q~1_combout\);

\ALUInput1Mux|v3|v4|Q~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALUInput1Mux|v3|v4|Q~2_combout\ = (!\ALUInput1Mux|v3|v4|Q~0_combout\ & !\ALUInput1Mux|v3|v4|Q~1_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALUInput1Mux|v3|v4|ALT_INV_Q~0_combout\,
	datab => \ALUInput1Mux|v3|v4|ALT_INV_Q~1_combout\,
	combout => \ALUInput1Mux|v3|v4|Q~2_combout\);

\ALUInput1Mux|v3|v1|Q~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALUInput1Mux|v3|v1|Q~1_combout\ = ( \MEMWBREG|writeData\(1) & ( \IDEXREG|R1Reg_IDEX\(1) & ( (!\ALUInput1Mux|v3|v2|Q~0_combout\ & \ALUInput1Mux|v3|v2|Q~1_combout\) ) ) ) # ( !\MEMWBREG|writeData\(1) & ( \IDEXREG|R1Reg_IDEX\(1) & ( 
-- (!\ALUInput1Mux|v3|v2|Q~0_combout\ & (\ALUInput1Mux|v3|v2|Q~1_combout\ & ((!\ALUInput1Mux|v3|v2|Q~3_combout\) # (\ALUInput1Mux|v3|v2|Q~2_combout\)))) ) ) ) # ( \MEMWBREG|writeData\(1) & ( !\IDEXREG|R1Reg_IDEX\(1) & ( (!\ALUInput1Mux|v3|v2|Q~0_combout\ & 
-- (!\ALUInput1Mux|v3|v2|Q~2_combout\ & (\ALUInput1Mux|v3|v2|Q~1_combout\ & \ALUInput1Mux|v3|v2|Q~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000100000001010000000100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALUInput1Mux|v3|v2|ALT_INV_Q~0_combout\,
	datab => \ALUInput1Mux|v3|v2|ALT_INV_Q~2_combout\,
	datac => \ALUInput1Mux|v3|v2|ALT_INV_Q~1_combout\,
	datad => \ALUInput1Mux|v3|v2|ALT_INV_Q~3_combout\,
	datae => \MEMWBREG|ALT_INV_writeData\(1),
	dataf => \IDEXREG|ALT_INV_R1Reg_IDEX\(1),
	combout => \ALUInput1Mux|v3|v1|Q~1_combout\);

\ALUInput2Mux|v3|v1|Q~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALUInput2Mux|v3|v1|Q~2_combout\ = ( \MEMWBREG|writeData\(1) & ( \IDEXREG|R2Reg_IDEX\(1) & ( (\ALUInput2Mux|v3|v12|Q~0_combout\ & !\ALUInput2Mux|v3|v12|Q~1_combout\) ) ) ) # ( !\MEMWBREG|writeData\(1) & ( \IDEXREG|R2Reg_IDEX\(1) & ( 
-- (\ALUInput2Mux|v3|v12|Q~0_combout\ & (!\ALUInput2Mux|v3|v12|Q~1_combout\ & ((!\ALUInput2Mux|v3|v12|Q~2_combout\) # (\ForwardUnit|Equal2~0_combout\)))) ) ) ) # ( \MEMWBREG|writeData\(1) & ( !\IDEXREG|R2Reg_IDEX\(1) & ( (\ALUInput2Mux|v3|v12|Q~0_combout\ & 
-- (!\ForwardUnit|Equal2~0_combout\ & (!\ALUInput2Mux|v3|v12|Q~1_combout\ & \ALUInput2Mux|v3|v12|Q~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000100000001010000000100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALUInput2Mux|v3|v12|ALT_INV_Q~0_combout\,
	datab => \ForwardUnit|ALT_INV_Equal2~0_combout\,
	datac => \ALUInput2Mux|v3|v12|ALT_INV_Q~1_combout\,
	datad => \ALUInput2Mux|v3|v12|ALT_INV_Q~2_combout\,
	datae => \MEMWBREG|ALT_INV_writeData\(1),
	dataf => \IDEXREG|ALT_INV_R2Reg_IDEX\(1),
	combout => \ALUInput2Mux|v3|v1|Q~2_combout\);

\ALU16|V1|v12|Q~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU16|V1|v12|Q~4_combout\ = !\IDEXREG|ALUFunc_IDEX\(0) $ (((\ALUInput2Mux|v3|v1|Q~2_combout\) # (\ALUInput2Mux|v3|v1|Q~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001010110010101100101011001010110010101100101011001010110010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IDEXREG|ALT_INV_ALUFunc_IDEX\(0),
	datab => \ALUInput2Mux|v3|v1|ALT_INV_Q~0_combout\,
	datac => \ALUInput2Mux|v3|v1|ALT_INV_Q~2_combout\,
	combout => \ALU16|V1|v12|Q~4_combout\);

\ALU16|V1|v12|Q~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU16|V1|v12|Q~1_combout\ = ( \IFIDREG|outPC\(1) & ( \ALU16|V1|v12|Q~4_combout\ & ( (((\EXMEMREG|Result_EXMEM\(1) & !\ALUInput1Mux|v3|v2|Q~1_combout\)) # (\ALUInput1Mux|v3|v2|Q~0_combout\)) # (\ALUInput1Mux|v3|v1|Q~1_combout\) ) ) ) # ( 
-- !\IFIDREG|outPC\(1) & ( \ALU16|V1|v12|Q~4_combout\ & ( ((\EXMEMREG|Result_EXMEM\(1) & (!\ALUInput1Mux|v3|v2|Q~0_combout\ & !\ALUInput1Mux|v3|v2|Q~1_combout\))) # (\ALUInput1Mux|v3|v1|Q~1_combout\) ) ) ) # ( \IFIDREG|outPC\(1) & ( 
-- !\ALU16|V1|v12|Q~4_combout\ & ( (!\ALUInput1Mux|v3|v1|Q~1_combout\ & (!\ALUInput1Mux|v3|v2|Q~0_combout\ & ((!\EXMEMREG|Result_EXMEM\(1)) # (\ALUInput1Mux|v3|v2|Q~1_combout\)))) ) ) ) # ( !\IFIDREG|outPC\(1) & ( !\ALU16|V1|v12|Q~4_combout\ & ( 
-- (!\ALUInput1Mux|v3|v1|Q~1_combout\ & ((!\EXMEMREG|Result_EXMEM\(1)) # ((\ALUInput1Mux|v3|v2|Q~1_combout\) # (\ALUInput1Mux|v3|v2|Q~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000101010101010100000001010000001110101010101010111111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALUInput1Mux|v3|v1|ALT_INV_Q~1_combout\,
	datab => \EXMEMREG|ALT_INV_Result_EXMEM\(1),
	datac => \ALUInput1Mux|v3|v2|ALT_INV_Q~0_combout\,
	datad => \ALUInput1Mux|v3|v2|ALT_INV_Q~1_combout\,
	datae => \IFIDREG|ALT_INV_outPC\(1),
	dataf => \ALU16|V1|v12|ALT_INV_Q~4_combout\,
	combout => \ALU16|V1|v12|Q~1_combout\);

\ALUInput1Mux|v3|v0|Q~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALUInput1Mux|v3|v0|Q~2_combout\ = (!\ALUInput1Mux|v3|v2|Q~0_combout\ & (\EXMEMREG|Result_EXMEM\(0) & ((!\ALUInput1Mux|v3|v2|Q~1_combout\)))) # (\ALUInput1Mux|v3|v2|Q~0_combout\ & (((\IFIDREG|outPC\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001100000011010100110000001101010011000000110101001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EXMEMREG|ALT_INV_Result_EXMEM\(0),
	datab => \IFIDREG|ALT_INV_outPC\(0),
	datac => \ALUInput1Mux|v3|v2|ALT_INV_Q~0_combout\,
	datad => \ALUInput1Mux|v3|v2|ALT_INV_Q~1_combout\,
	combout => \ALUInput1Mux|v3|v0|Q~2_combout\);

\ALUInput1Mux|v3|v0|Q~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALUInput1Mux|v3|v0|Q~3_combout\ = ( \ALUInput1Mux|v3|v2|Q~3_combout\ & ( \IDEXREG|R1Reg_IDEX\(0) & ( (!\ALUInput1Mux|v3|v2|Q~0_combout\ & (\ALUInput1Mux|v3|v2|Q~1_combout\ & ((\MEMWBREG|writeData\(0)) # (\ALUInput1Mux|v3|v2|Q~2_combout\)))) ) ) ) # ( 
-- !\ALUInput1Mux|v3|v2|Q~3_combout\ & ( \IDEXREG|R1Reg_IDEX\(0) & ( (!\ALUInput1Mux|v3|v2|Q~0_combout\ & \ALUInput1Mux|v3|v2|Q~1_combout\) ) ) ) # ( \ALUInput1Mux|v3|v2|Q~3_combout\ & ( !\IDEXREG|R1Reg_IDEX\(0) & ( (!\ALUInput1Mux|v3|v2|Q~0_combout\ & 
-- (!\ALUInput1Mux|v3|v2|Q~2_combout\ & (\ALUInput1Mux|v3|v2|Q~1_combout\ & \MEMWBREG|writeData\(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000100000001010000010100000001000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALUInput1Mux|v3|v2|ALT_INV_Q~0_combout\,
	datab => \ALUInput1Mux|v3|v2|ALT_INV_Q~2_combout\,
	datac => \ALUInput1Mux|v3|v2|ALT_INV_Q~1_combout\,
	datad => \MEMWBREG|ALT_INV_writeData\(0),
	datae => \ALUInput1Mux|v3|v2|ALT_INV_Q~3_combout\,
	dataf => \IDEXREG|ALT_INV_R1Reg_IDEX\(0),
	combout => \ALUInput1Mux|v3|v0|Q~3_combout\);

\ALUInput2Mux|v3|v0|Q~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALUInput2Mux|v3|v0|Q~2_combout\ = ( \ALUInput2Mux|v3|v12|Q~2_combout\ & ( \IDEXREG|R2Reg_IDEX\(0) & ( (\ALUInput2Mux|v3|v12|Q~0_combout\ & (!\ALUInput2Mux|v3|v12|Q~1_combout\ & ((\ForwardUnit|Equal2~0_combout\) # (\MEMWBREG|writeData\(0))))) ) ) ) # ( 
-- !\ALUInput2Mux|v3|v12|Q~2_combout\ & ( \IDEXREG|R2Reg_IDEX\(0) & ( (\ALUInput2Mux|v3|v12|Q~0_combout\ & !\ALUInput2Mux|v3|v12|Q~1_combout\) ) ) ) # ( \ALUInput2Mux|v3|v12|Q~2_combout\ & ( !\IDEXREG|R2Reg_IDEX\(0) & ( (\MEMWBREG|writeData\(0) & 
-- (\ALUInput2Mux|v3|v12|Q~0_combout\ & (!\ForwardUnit|Equal2~0_combout\ & !\ALUInput2Mux|v3|v12|Q~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100000000000000110011000000000001001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMWBREG|ALT_INV_writeData\(0),
	datab => \ALUInput2Mux|v3|v12|ALT_INV_Q~0_combout\,
	datac => \ForwardUnit|ALT_INV_Equal2~0_combout\,
	datad => \ALUInput2Mux|v3|v12|ALT_INV_Q~1_combout\,
	datae => \ALUInput2Mux|v3|v12|ALT_INV_Q~2_combout\,
	dataf => \IDEXREG|ALT_INV_R2Reg_IDEX\(0),
	combout => \ALUInput2Mux|v3|v0|Q~2_combout\);

\ALU16|V1|v12|Q~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU16|V1|v12|Q~2_combout\ = ( \ALUInput2Mux|v3|v0|Q~2_combout\ & ( \ALU16|V0|v12|Q~0_combout\ & ( (\ALUInput1Mux|v3|v0|Q~3_combout\) # (\ALUInput1Mux|v3|v0|Q~2_combout\) ) ) ) # ( !\ALUInput2Mux|v3|v0|Q~2_combout\ & ( \ALU16|V0|v12|Q~0_combout\ & ( 
-- (!\ALUInput2Mux|v3|v0|Q~0_combout\ & (\IDEXREG|ALUFunc_IDEX\(0))) # (\ALUInput2Mux|v3|v0|Q~0_combout\ & (((\ALUInput1Mux|v3|v0|Q~3_combout\) # (\ALUInput1Mux|v3|v0|Q~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IDEXREG|ALT_INV_ALUFunc_IDEX\(0),
	datab => \ALUInput1Mux|v3|v0|ALT_INV_Q~2_combout\,
	datac => \ALUInput1Mux|v3|v0|ALT_INV_Q~3_combout\,
	datad => \ALUInput2Mux|v3|v0|ALT_INV_Q~0_combout\,
	datae => \ALUInput2Mux|v3|v0|ALT_INV_Q~2_combout\,
	dataf => \ALU16|V0|v12|ALT_INV_Q~0_combout\,
	combout => \ALU16|V1|v12|Q~2_combout\);

\ALU16|V1|v12|Q~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU16|V1|v12|Q~5_combout\ = (\ALU16|V0|v12|Q~0_combout\ & (!\IDEXREG|ALUFunc_IDEX\(0) $ (((!\ALUInput2Mux|v3|v1|Q~0_combout\ & !\ALUInput2Mux|v3|v1|Q~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001000100010000100100010001000010010001000100001001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IDEXREG|ALT_INV_ALUFunc_IDEX\(0),
	datab => \ALU16|V0|v12|ALT_INV_Q~0_combout\,
	datac => \ALUInput2Mux|v3|v1|ALT_INV_Q~0_combout\,
	datad => \ALUInput2Mux|v3|v1|ALT_INV_Q~2_combout\,
	combout => \ALU16|V1|v12|Q~5_combout\);

\ALU16|V1|v12|Q~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU16|V1|v12|Q~3_combout\ = ( \IFIDREG|outPC\(1) & ( \ALU16|V1|v12|Q~5_combout\ & ( (((\EXMEMREG|Result_EXMEM\(1) & !\ALUInput1Mux|v3|v2|Q~1_combout\)) # (\ALUInput1Mux|v3|v2|Q~0_combout\)) # (\ALUInput1Mux|v3|v1|Q~1_combout\) ) ) ) # ( 
-- !\IFIDREG|outPC\(1) & ( \ALU16|V1|v12|Q~5_combout\ & ( ((\EXMEMREG|Result_EXMEM\(1) & (!\ALUInput1Mux|v3|v2|Q~0_combout\ & !\ALUInput1Mux|v3|v2|Q~1_combout\))) # (\ALUInput1Mux|v3|v1|Q~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001110101010101010111111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALUInput1Mux|v3|v1|ALT_INV_Q~1_combout\,
	datab => \EXMEMREG|ALT_INV_Result_EXMEM\(1),
	datac => \ALUInput1Mux|v3|v2|ALT_INV_Q~0_combout\,
	datad => \ALUInput1Mux|v3|v2|ALT_INV_Q~1_combout\,
	datae => \IFIDREG|ALT_INV_outPC\(1),
	dataf => \ALU16|V1|v12|ALT_INV_Q~5_combout\,
	combout => \ALU16|V1|v12|Q~3_combout\);

\ALU16|V3|v12|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU16|V3|v12|Q~0_combout\ = ( \ALUInput2Mux|v3|v3|Q~1_combout\ & ( \ALUInput1Mux|v3|v3|Q~1_combout\ & ( (\IDEXREG|ALUFunc_IDEX\(0) & \ALU16|V0|v12|Q~0_combout\) ) ) ) # ( !\ALUInput2Mux|v3|v3|Q~1_combout\ & ( \ALUInput1Mux|v3|v3|Q~1_combout\ & ( 
-- (\ALU16|V0|v12|Q~0_combout\ & (!\IDEXREG|ALUFunc_IDEX\(0) $ (\ALUInput2Mux|v3|v3|Q~0_combout\))) ) ) ) # ( \ALUInput2Mux|v3|v3|Q~1_combout\ & ( !\ALUInput1Mux|v3|v3|Q~1_combout\ & ( (\ALU16|V0|v12|Q~0_combout\ & (!\IDEXREG|ALUFunc_IDEX\(0) $ 
-- (\ALUInput1Mux|v3|v3|Q~0_combout\))) ) ) ) # ( !\ALUInput2Mux|v3|v3|Q~1_combout\ & ( !\ALUInput1Mux|v3|v3|Q~1_combout\ & ( (\ALU16|V0|v12|Q~0_combout\ & (!\IDEXREG|ALUFunc_IDEX\(0) $ (!\ALUInput1Mux|v3|v3|Q~0_combout\ $ 
-- (\ALUInput2Mux|v3|v3|Q~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001000100001001000010010000100100010000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IDEXREG|ALT_INV_ALUFunc_IDEX\(0),
	datab => \ALU16|V0|v12|ALT_INV_Q~0_combout\,
	datac => \ALUInput1Mux|v3|v3|ALT_INV_Q~0_combout\,
	datad => \ALUInput2Mux|v3|v3|ALT_INV_Q~0_combout\,
	datae => \ALUInput2Mux|v3|v3|ALT_INV_Q~1_combout\,
	dataf => \ALUInput1Mux|v3|v3|ALT_INV_Q~1_combout\,
	combout => \ALU16|V3|v12|Q~0_combout\);

\ALU16|V3|v12|Q~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU16|V3|v12|Q~1_combout\ = ( \ALU16|V2|v12|Q~1_combout\ & ( \ALU16|V3|v12|Q~0_combout\ ) ) # ( !\ALU16|V2|v12|Q~1_combout\ & ( \ALU16|V3|v12|Q~0_combout\ & ( (\ALU16|V2|v12|Q~0_combout\ & (((\ALU16|V1|v12|Q~1_combout\ & \ALU16|V1|v12|Q~2_combout\)) # 
-- (\ALU16|V1|v12|Q~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU16|V1|v12|ALT_INV_Q~1_combout\,
	datab => \ALU16|V1|v12|ALT_INV_Q~2_combout\,
	datac => \ALU16|V1|v12|ALT_INV_Q~3_combout\,
	datad => \ALU16|V2|v12|ALT_INV_Q~0_combout\,
	datae => \ALU16|V2|v12|ALT_INV_Q~1_combout\,
	dataf => \ALU16|V3|v12|ALT_INV_Q~0_combout\,
	combout => \ALU16|V3|v12|Q~1_combout\);

\ALU16|V3|v12|Q~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU16|V3|v12|Q~2_combout\ = ( \ALUInput2Mux|v3|v3|Q~1_combout\ & ( \ALUInput1Mux|v3|v3|Q~1_combout\ & ( (!\IDEXREG|ALUFunc_IDEX\(0) & \ALU16|V0|v12|Q~0_combout\) ) ) ) # ( !\ALUInput2Mux|v3|v3|Q~1_combout\ & ( \ALUInput1Mux|v3|v3|Q~1_combout\ & ( 
-- (\ALU16|V0|v12|Q~0_combout\ & (!\IDEXREG|ALUFunc_IDEX\(0) $ (!\ALUInput2Mux|v3|v3|Q~0_combout\))) ) ) ) # ( \ALUInput2Mux|v3|v3|Q~1_combout\ & ( !\ALUInput1Mux|v3|v3|Q~1_combout\ & ( (!\IDEXREG|ALUFunc_IDEX\(0) & (\ALU16|V0|v12|Q~0_combout\ & 
-- \ALUInput1Mux|v3|v3|Q~0_combout\)) ) ) ) # ( !\ALUInput2Mux|v3|v3|Q~1_combout\ & ( !\ALUInput1Mux|v3|v3|Q~1_combout\ & ( (\ALU16|V0|v12|Q~0_combout\ & (\ALUInput1Mux|v3|v3|Q~0_combout\ & (!\IDEXREG|ALUFunc_IDEX\(0) $ (!\ALUInput2Mux|v3|v3|Q~0_combout\)))) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000010000000100000001000010001001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IDEXREG|ALT_INV_ALUFunc_IDEX\(0),
	datab => \ALU16|V0|v12|ALT_INV_Q~0_combout\,
	datac => \ALUInput1Mux|v3|v3|ALT_INV_Q~0_combout\,
	datad => \ALUInput2Mux|v3|v3|ALT_INV_Q~0_combout\,
	datae => \ALUInput2Mux|v3|v3|ALT_INV_Q~1_combout\,
	dataf => \ALUInput1Mux|v3|v3|ALT_INV_Q~1_combout\,
	combout => \ALU16|V3|v12|Q~2_combout\);

\ALU16|V3|v12|Q~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU16|V3|v12|Q~3_combout\ = (!\ALU16|V3|v12|Q~1_combout\ & !\ALU16|V3|v12|Q~2_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU16|V3|v12|ALT_INV_Q~1_combout\,
	datab => \ALU16|V3|v12|ALT_INV_Q~2_combout\,
	combout => \ALU16|V3|v12|Q~3_combout\);

\ALU16|V21|v1|v4|Q\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU16|V21|v1|v4|Q~combout\ = ( \ALUInput1Mux|v3|v4|Q~2_combout\ & ( \ALU16|V3|v12|Q~3_combout\ & ( (!\ALUInput2Mux|v3|v4|Q~2_combout\ & (!\IDEXREG|ALUFunc_IDEX\(1) $ (!\IDEXREG|ALUFunc_IDEX\(0) $ (!\IDEXREG|ALUFunc_IDEX\(2))))) # 
-- (\ALUInput2Mux|v3|v4|Q~2_combout\ & (\IDEXREG|ALUFunc_IDEX\(0) & ((!\IDEXREG|ALUFunc_IDEX\(1)) # (\IDEXREG|ALUFunc_IDEX\(2))))) ) ) ) # ( !\ALUInput1Mux|v3|v4|Q~2_combout\ & ( \ALU16|V3|v12|Q~3_combout\ & ( (!\IDEXREG|ALUFunc_IDEX\(1) & 
-- (!\IDEXREG|ALUFunc_IDEX\(2) & (!\IDEXREG|ALUFunc_IDEX\(0) $ (!\ALUInput2Mux|v3|v4|Q~2_combout\)))) # (\IDEXREG|ALUFunc_IDEX\(1) & (!\IDEXREG|ALUFunc_IDEX\(2) $ (((!\IDEXREG|ALUFunc_IDEX\(0) & \ALUInput2Mux|v3|v4|Q~2_combout\))))) ) ) ) # ( 
-- \ALUInput1Mux|v3|v4|Q~2_combout\ & ( !\ALU16|V3|v12|Q~3_combout\ & ( (!\IDEXREG|ALUFunc_IDEX\(2) & ((!\IDEXREG|ALUFunc_IDEX\(0) & (!\IDEXREG|ALUFunc_IDEX\(1) & \ALUInput2Mux|v3|v4|Q~2_combout\)) # (\IDEXREG|ALUFunc_IDEX\(0) & 
-- ((!\ALUInput2Mux|v3|v4|Q~2_combout\))))) # (\IDEXREG|ALUFunc_IDEX\(2) & (!\IDEXREG|ALUFunc_IDEX\(0) $ (((!\IDEXREG|ALUFunc_IDEX\(1)) # (\ALUInput2Mux|v3|v4|Q~2_combout\))))) ) ) ) # ( !\ALUInput1Mux|v3|v4|Q~2_combout\ & ( !\ALU16|V3|v12|Q~3_combout\ & ( 
-- (!\IDEXREG|ALUFunc_IDEX\(1) & (!\IDEXREG|ALUFunc_IDEX\(2) & (!\IDEXREG|ALUFunc_IDEX\(0) $ (\ALUInput2Mux|v3|v4|Q~2_combout\)))) # (\IDEXREG|ALUFunc_IDEX\(1) & (!\IDEXREG|ALUFunc_IDEX\(2) $ (((!\IDEXREG|ALUFunc_IDEX\(0) & 
-- \ALUInput2Mux|v3|v4|Q~2_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101000000110100001101101000001101110000100101001001011000100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IDEXREG|ALT_INV_ALUFunc_IDEX\(1),
	datab => \IDEXREG|ALT_INV_ALUFunc_IDEX\(0),
	datac => \IDEXREG|ALT_INV_ALUFunc_IDEX\(2),
	datad => \ALUInput2Mux|v3|v4|ALT_INV_Q~2_combout\,
	datae => \ALUInput1Mux|v3|v4|ALT_INV_Q~2_combout\,
	dataf => \ALU16|V3|v12|ALT_INV_Q~3_combout\,
	combout => \ALU16|V21|v1|v4|Q~combout\);

\EXMEMREG|Result_EXMEM[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \ALU16|V21|v1|v4|Q~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EXMEMREG|Result_EXMEM\(4));

\ALUInput2Mux|v3|v5|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALUInput2Mux|v3|v5|Q~0_combout\ = (\IDEXREG|jumpShortAddr_IDEX\(5) & (((\IDEXREG|isBranch_IDEX~q\) # (\IDEXREG|isLW_IDEX~q\)) # (\IDEXREG|isSW_IDEX~q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001111111000000000111111100000000011111110000000001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IDEXREG|ALT_INV_isSW_IDEX~q\,
	datab => \IDEXREG|ALT_INV_isLW_IDEX~q\,
	datac => \IDEXREG|ALT_INV_isBranch_IDEX~q\,
	datad => \IDEXREG|ALT_INV_jumpShortAddr_IDEX\(5),
	combout => \ALUInput2Mux|v3|v5|Q~0_combout\);

\fromData[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fromData(5),
	o => \fromData[5]~input_o\);

\MEMWB_inputData_sig[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMWB_inputData_sig[5]~5_combout\ = (!\EXMEMREG|isLW_EXMEM~q\ & (\EXMEMREG|Result_EXMEM\(5))) # (\EXMEMREG|isLW_EXMEM~q\ & ((\fromData[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011101000111010001110100011101000111010001110100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EXMEMREG|ALT_INV_Result_EXMEM\(5),
	datab => \EXMEMREG|ALT_INV_isLW_EXMEM~q\,
	datac => \ALT_INV_fromData[5]~input_o\,
	combout => \MEMWB_inputData_sig[5]~5_combout\);

\keyData[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_keyData(5),
	o => \keyData[5]~input_o\);

\MEMWBREG|writeData[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \MEMWB_inputData_sig[5]~5_combout\,
	asdata => \keyData[5]~input_o\,
	sload => \EXMEMREG|ReadDigit_EXMEM~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMWBREG|writeData\(5));

\RegisterFile|reg4|gen_register:5:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~input_o\,
	d => \MEMWBREG|writeData\(5),
	ena => \RegisterFile|v0|v12|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegisterFile|reg4|gen_register:5:vff|O~q\);

\RegisterFile|reg5|gen_register:5:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~input_o\,
	d => \MEMWBREG|writeData\(5),
	ena => \RegisterFile|v0|v14|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegisterFile|reg5|gen_register:5:vff|O~q\);

\RegisterFile|reg6|gen_register:5:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~input_o\,
	d => \MEMWBREG|writeData\(5),
	ena => \RegisterFile|v0|v16|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegisterFile|reg6|gen_register:5:vff|O~q\);

\RegisterFile|reg7|gen_register:5:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~input_o\,
	d => \MEMWBREG|writeData\(5),
	ena => \RegisterFile|v0|v18|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegisterFile|reg7|gen_register:5:vff|O~q\);

\RegisterFile|read_mux2|v6|v3|v5|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \RegisterFile|read_mux2|v6|v3|v5|Q~0_combout\ = ( \IFIDREG|outInstruction\(6) & ( \IFIDREG|outInstruction\(7) & ( \RegisterFile|reg7|gen_register:5:vff|O~q\ ) ) ) # ( !\IFIDREG|outInstruction\(6) & ( \IFIDREG|outInstruction\(7) & ( 
-- \RegisterFile|reg6|gen_register:5:vff|O~q\ ) ) ) # ( \IFIDREG|outInstruction\(6) & ( !\IFIDREG|outInstruction\(7) & ( \RegisterFile|reg5|gen_register:5:vff|O~q\ ) ) ) # ( !\IFIDREG|outInstruction\(6) & ( !\IFIDREG|outInstruction\(7) & ( 
-- \RegisterFile|reg4|gen_register:5:vff|O~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegisterFile|reg4|gen_register:5:vff|ALT_INV_O~q\,
	datab => \RegisterFile|reg5|gen_register:5:vff|ALT_INV_O~q\,
	datac => \RegisterFile|reg6|gen_register:5:vff|ALT_INV_O~q\,
	datad => \RegisterFile|reg7|gen_register:5:vff|ALT_INV_O~q\,
	datae => \IFIDREG|ALT_INV_outInstruction\(6),
	dataf => \IFIDREG|ALT_INV_outInstruction\(7),
	combout => \RegisterFile|read_mux2|v6|v3|v5|Q~0_combout\);

\RegisterFile|reg3|gen_register:5:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~input_o\,
	d => \MEMWBREG|writeData\(5),
	ena => \RegisterFile|v0|v10|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegisterFile|reg3|gen_register:5:vff|O~q\);

\RegisterFile|reg2|gen_register:5:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~input_o\,
	d => \MEMWBREG|writeData\(5),
	ena => \RegisterFile|v0|v8|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegisterFile|reg2|gen_register:5:vff|O~q\);

\RegisterFile|reg1|gen_register:5:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~input_o\,
	d => \MEMWBREG|writeData\(5),
	ena => \RegisterFile|v0|v6|Q~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegisterFile|reg1|gen_register:5:vff|O~q\);

\RegisterFile|read_mux2|v6|v3|v5|Q~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \RegisterFile|read_mux2|v6|v3|v5|Q~1_combout\ = ( !\IFIDREG|outInstruction\(8) & ( (!\IFIDREG|outInstruction\(7) & (\IFIDREG|outInstruction\(6) & (\RegisterFile|reg1|gen_register:5:vff|O~q\))) # (\IFIDREG|outInstruction\(7) & 
-- ((!\IFIDREG|outInstruction\(6) & (((\RegisterFile|reg2|gen_register:5:vff|O~q\)))) # (\IFIDREG|outInstruction\(6) & (((\RegisterFile|reg3|gen_register:5:vff|O~q\)))))) ) ) # ( \IFIDREG|outInstruction\(8) & ( 
-- (((\RegisterFile|read_mux2|v6|v3|v5|Q~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001000010011000011110000111101000110010101110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IFIDREG|ALT_INV_outInstruction\(7),
	datab => \IFIDREG|ALT_INV_outInstruction\(6),
	datac => \RegisterFile|read_mux2|v6|v3|v5|ALT_INV_Q~0_combout\,
	datad => \RegisterFile|reg3|gen_register:5:vff|ALT_INV_O~q\,
	datae => \IFIDREG|ALT_INV_outInstruction\(8),
	dataf => \RegisterFile|reg2|gen_register:5:vff|ALT_INV_O~q\,
	datag => \RegisterFile|reg1|gen_register:5:vff|ALT_INV_O~q\,
	combout => \RegisterFile|read_mux2|v6|v3|v5|Q~1_combout\);

\IDEXREG|R2Reg_IDEX[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \RegisterFile|read_mux2|v6|v3|v5|Q~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEXREG|R2Reg_IDEX\(5));

\ALUInput2Mux|v3|v5|Q~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALUInput2Mux|v3|v5|Q~1_combout\ = ( \MEMWBREG|writeData\(5) & ( \IDEXREG|R2Reg_IDEX\(5) & ( (\ALUInput2Mux|v3|v12|Q~0_combout\ & ((!\ALUInput2Mux|v3|v12|Q~1_combout\) # (\EXMEMREG|Result_EXMEM\(5)))) ) ) ) # ( !\MEMWBREG|writeData\(5) & ( 
-- \IDEXREG|R2Reg_IDEX\(5) & ( (\ALUInput2Mux|v3|v12|Q~0_combout\ & ((!\ALUInput2Mux|v3|v12|Q~1_combout\ & ((!\ALUInput2Mux|v3|v12|Q~3_combout\))) # (\ALUInput2Mux|v3|v12|Q~1_combout\ & (\EXMEMREG|Result_EXMEM\(5))))) ) ) ) # ( \MEMWBREG|writeData\(5) & ( 
-- !\IDEXREG|R2Reg_IDEX\(5) & ( (\ALUInput2Mux|v3|v12|Q~0_combout\ & ((!\ALUInput2Mux|v3|v12|Q~1_combout\ & ((\ALUInput2Mux|v3|v12|Q~3_combout\))) # (\ALUInput2Mux|v3|v12|Q~1_combout\ & (\EXMEMREG|Result_EXMEM\(5))))) ) ) ) # ( !\MEMWBREG|writeData\(5) & ( 
-- !\IDEXREG|R2Reg_IDEX\(5) & ( (\EXMEMREG|Result_EXMEM\(5) & (\ALUInput2Mux|v3|v12|Q~0_combout\ & \ALUInput2Mux|v3|v12|Q~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010011000100110001000000010011000100110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EXMEMREG|ALT_INV_Result_EXMEM\(5),
	datab => \ALUInput2Mux|v3|v12|ALT_INV_Q~0_combout\,
	datac => \ALUInput2Mux|v3|v12|ALT_INV_Q~1_combout\,
	datad => \ALUInput2Mux|v3|v12|ALT_INV_Q~3_combout\,
	datae => \MEMWBREG|ALT_INV_writeData\(5),
	dataf => \IDEXREG|ALT_INV_R2Reg_IDEX\(5),
	combout => \ALUInput2Mux|v3|v5|Q~1_combout\);

\ALUInput2Mux|v3|v5|Q~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALUInput2Mux|v3|v5|Q~2_combout\ = (!\ALUInput2Mux|v3|v5|Q~0_combout\ & !\ALUInput2Mux|v3|v5|Q~1_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALUInput2Mux|v3|v5|ALT_INV_Q~0_combout\,
	datab => \ALUInput2Mux|v3|v5|ALT_INV_Q~1_combout\,
	combout => \ALUInput2Mux|v3|v5|Q~2_combout\);

\PC|gen_register:5:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \IFIDREG|outInstruction\(5),
	asdata => \IFIDREG|outPC\(5),
	sload => \Controller|isJType~0_combout\,
	ena => \Trap|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|gen_register:5:vff|O~q\);

\IFIDREG|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \IFIDREG|Add0~17_sumout\ = SUM(( \PC|gen_register:5:vff|O~q\ ) + ( GND ) + ( \IFIDREG|Add0~14\ ))
-- \IFIDREG|Add0~18\ = CARRY(( \PC|gen_register:5:vff|O~q\ ) + ( GND ) + ( \IFIDREG|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|gen_register:5:vff|ALT_INV_O~q\,
	cin => \IFIDREG|Add0~14\,
	sumout => \IFIDREG|Add0~17_sumout\,
	cout => \IFIDREG|Add0~18\);

\IFIDREG|outPC[5]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \IFIDREG|outPC[5]~6_combout\ = ( \instr[15]~input_o\ & ( \IFIDREG|Add0~17_sumout\ & ( (\clock~input_o\ & (((!\instr[13]~input_o\) # (!\instr[14]~input_o\)) # (\instr[12]~input_o\))) ) ) ) # ( !\instr[15]~input_o\ & ( \IFIDREG|Add0~17_sumout\ & ( 
-- \clock~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_clock~input_o\,
	datab => \ALT_INV_instr[12]~input_o\,
	datac => \ALT_INV_instr[13]~input_o\,
	datad => \ALT_INV_instr[14]~input_o\,
	datae => \ALT_INV_instr[15]~input_o\,
	dataf => \IFIDREG|ALT_INV_Add0~17_sumout\,
	combout => \IFIDREG|outPC[5]~6_combout\);

\IFIDREG|outPC[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \IFIDREG|outPC\(5) = ( \IFIDREG|outPC\(5) & ( \IFIDREG|outPC[15]~1_combout\ & ( \IFIDREG|outPC[5]~6_combout\ ) ) ) # ( !\IFIDREG|outPC\(5) & ( \IFIDREG|outPC[15]~1_combout\ & ( \IFIDREG|outPC[5]~6_combout\ ) ) ) # ( \IFIDREG|outPC\(5) & ( 
-- !\IFIDREG|outPC[15]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \IFIDREG|ALT_INV_outPC[5]~6_combout\,
	datae => \IFIDREG|ALT_INV_outPC\(5),
	dataf => \IFIDREG|ALT_INV_outPC[15]~1_combout\,
	combout => \IFIDREG|outPC\(5));

\ALUInput1Mux|v3|v5|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALUInput1Mux|v3|v5|Q~0_combout\ = ( \IDEXREG|isR_IDEX~q\ & ( \IFIDREG|outPC\(5) & ( (\IDEXREG|isMFPC_IDEX~q\ & ((!\IDEXREG|ALUFunc_IDEX\(1)) # ((!\IDEXREG|ALUFunc_IDEX\(0)) # (!\IDEXREG|ALUFunc_IDEX\(2))))) ) ) ) # ( !\IDEXREG|isR_IDEX~q\ & ( 
-- \IFIDREG|outPC\(5) & ( \IDEXREG|isMFPC_IDEX~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IDEXREG|ALT_INV_ALUFunc_IDEX\(1),
	datab => \IDEXREG|ALT_INV_ALUFunc_IDEX\(0),
	datac => \IDEXREG|ALT_INV_ALUFunc_IDEX\(2),
	datad => \IDEXREG|ALT_INV_isMFPC_IDEX~q\,
	datae => \IDEXREG|ALT_INV_isR_IDEX~q\,
	dataf => \IFIDREG|ALT_INV_outPC\(5),
	combout => \ALUInput1Mux|v3|v5|Q~0_combout\);

\ALUInput1Mux|v3|v2|Q~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALUInput1Mux|v3|v2|Q~7_combout\ = (!\ALUInput1Mux|v3|v2|Q~2_combout\ & \ALUInput1Mux|v3|v2|Q~3_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALUInput1Mux|v3|v2|ALT_INV_Q~2_combout\,
	datab => \ALUInput1Mux|v3|v2|ALT_INV_Q~3_combout\,
	combout => \ALUInput1Mux|v3|v2|Q~7_combout\);

\RegisterFile|read_mux1|v6|v3|v5|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \RegisterFile|read_mux1|v6|v3|v5|Q~0_combout\ = ( \IFIDREG|outInstruction\(9) & ( \IFIDREG|outInstruction\(10) & ( \RegisterFile|reg7|gen_register:5:vff|O~q\ ) ) ) # ( !\IFIDREG|outInstruction\(9) & ( \IFIDREG|outInstruction\(10) & ( 
-- \RegisterFile|reg6|gen_register:5:vff|O~q\ ) ) ) # ( \IFIDREG|outInstruction\(9) & ( !\IFIDREG|outInstruction\(10) & ( \RegisterFile|reg5|gen_register:5:vff|O~q\ ) ) ) # ( !\IFIDREG|outInstruction\(9) & ( !\IFIDREG|outInstruction\(10) & ( 
-- \RegisterFile|reg4|gen_register:5:vff|O~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegisterFile|reg4|gen_register:5:vff|ALT_INV_O~q\,
	datab => \RegisterFile|reg5|gen_register:5:vff|ALT_INV_O~q\,
	datac => \RegisterFile|reg6|gen_register:5:vff|ALT_INV_O~q\,
	datad => \RegisterFile|reg7|gen_register:5:vff|ALT_INV_O~q\,
	datae => \IFIDREG|ALT_INV_outInstruction\(9),
	dataf => \IFIDREG|ALT_INV_outInstruction\(10),
	combout => \RegisterFile|read_mux1|v6|v3|v5|Q~0_combout\);

\RegisterFile|read_mux1|v6|v3|v5|Q~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \RegisterFile|read_mux1|v6|v3|v5|Q~1_combout\ = ( !\IFIDREG|outInstruction\(11) & ( (!\IFIDREG|outInstruction\(10) & (\IFIDREG|outInstruction\(9) & (\RegisterFile|reg1|gen_register:5:vff|O~q\))) # (\IFIDREG|outInstruction\(10) & 
-- ((!\IFIDREG|outInstruction\(9) & (((\RegisterFile|reg2|gen_register:5:vff|O~q\)))) # (\IFIDREG|outInstruction\(9) & (((\RegisterFile|reg3|gen_register:5:vff|O~q\)))))) ) ) # ( \IFIDREG|outInstruction\(11) & ( 
-- (((\RegisterFile|read_mux1|v6|v3|v5|Q~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001000010011000011110000111101000110010101110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IFIDREG|ALT_INV_outInstruction\(10),
	datab => \IFIDREG|ALT_INV_outInstruction\(9),
	datac => \RegisterFile|read_mux1|v6|v3|v5|ALT_INV_Q~0_combout\,
	datad => \RegisterFile|reg3|gen_register:5:vff|ALT_INV_O~q\,
	datae => \IFIDREG|ALT_INV_outInstruction\(11),
	dataf => \RegisterFile|reg2|gen_register:5:vff|ALT_INV_O~q\,
	datag => \RegisterFile|reg1|gen_register:5:vff|ALT_INV_O~q\,
	combout => \RegisterFile|read_mux1|v6|v3|v5|Q~1_combout\);

\IDEXREG|R1Reg_IDEX[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \RegisterFile|read_mux1|v6|v3|v5|Q~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEXREG|R1Reg_IDEX\(5));

\ALUInput1Mux|v3|v5|Q~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALUInput1Mux|v3|v5|Q~1_combout\ = ( \MEMWBREG|writeData\(5) & ( \IDEXREG|R1Reg_IDEX\(5) & ( (!\ALUInput1Mux|v3|v2|Q~0_combout\ & ((\ALUInput1Mux|v3|v2|Q~1_combout\) # (\EXMEMREG|Result_EXMEM\(5)))) ) ) ) # ( !\MEMWBREG|writeData\(5) & ( 
-- \IDEXREG|R1Reg_IDEX\(5) & ( (!\ALUInput1Mux|v3|v2|Q~0_combout\ & ((!\ALUInput1Mux|v3|v2|Q~1_combout\ & (\EXMEMREG|Result_EXMEM\(5))) # (\ALUInput1Mux|v3|v2|Q~1_combout\ & ((!\ALUInput1Mux|v3|v2|Q~7_combout\))))) ) ) ) # ( \MEMWBREG|writeData\(5) & ( 
-- !\IDEXREG|R1Reg_IDEX\(5) & ( (!\ALUInput1Mux|v3|v2|Q~0_combout\ & ((!\ALUInput1Mux|v3|v2|Q~1_combout\ & (\EXMEMREG|Result_EXMEM\(5))) # (\ALUInput1Mux|v3|v2|Q~1_combout\ & ((\ALUInput1Mux|v3|v2|Q~7_combout\))))) ) ) ) # ( !\MEMWBREG|writeData\(5) & ( 
-- !\IDEXREG|R1Reg_IDEX\(5) & ( (\EXMEMREG|Result_EXMEM\(5) & (!\ALUInput1Mux|v3|v2|Q~0_combout\ & !\ALUInput1Mux|v3|v2|Q~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000010000000100110001001100010000000100110001001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EXMEMREG|ALT_INV_Result_EXMEM\(5),
	datab => \ALUInput1Mux|v3|v2|ALT_INV_Q~0_combout\,
	datac => \ALUInput1Mux|v3|v2|ALT_INV_Q~1_combout\,
	datad => \ALUInput1Mux|v3|v2|ALT_INV_Q~7_combout\,
	datae => \MEMWBREG|ALT_INV_writeData\(5),
	dataf => \IDEXREG|ALT_INV_R1Reg_IDEX\(5),
	combout => \ALUInput1Mux|v3|v5|Q~1_combout\);

\ALUInput1Mux|v3|v5|Q~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALUInput1Mux|v3|v5|Q~2_combout\ = (!\ALUInput1Mux|v3|v5|Q~0_combout\ & !\ALUInput1Mux|v3|v5|Q~1_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALUInput1Mux|v3|v5|ALT_INV_Q~0_combout\,
	datab => \ALUInput1Mux|v3|v5|ALT_INV_Q~1_combout\,
	combout => \ALUInput1Mux|v3|v5|Q~2_combout\);

\ALU16|V4|v12|Q~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU16|V4|v12|Q~4_combout\ = ( \ALUInput1Mux|v3|v2|Q~0_combout\ & ( \ALUInput1Mux|v3|v2|Q~1_combout\ & ( !\IDEXREG|ALUFunc_IDEX\(0) $ (((\ALUInput2Mux|v3|v4|Q~1_combout\) # (\ALUInput2Mux|v3|v4|Q~0_combout\))) ) ) ) # ( !\ALUInput1Mux|v3|v2|Q~0_combout\ & 
-- ( \ALUInput1Mux|v3|v2|Q~1_combout\ & ( !\IDEXREG|ALUFunc_IDEX\(0) $ (((!\ALUInput2Mux|v3|v4|Q~0_combout\ & !\ALUInput2Mux|v3|v4|Q~1_combout\))) ) ) ) # ( \ALUInput1Mux|v3|v2|Q~0_combout\ & ( !\ALUInput1Mux|v3|v2|Q~1_combout\ & ( !\IDEXREG|ALUFunc_IDEX\(0) 
-- $ (((\ALUInput2Mux|v3|v4|Q~1_combout\) # (\ALUInput2Mux|v3|v4|Q~0_combout\))) ) ) ) # ( !\ALUInput1Mux|v3|v2|Q~0_combout\ & ( !\ALUInput1Mux|v3|v2|Q~1_combout\ & ( !\IDEXREG|ALUFunc_IDEX\(0) $ (!\EXMEMREG|Result_EXMEM\(4) $ 
-- (((\ALUInput2Mux|v3|v4|Q~1_combout\) # (\ALUInput2Mux|v3|v4|Q~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110101010010101100101011001010101101010011010101001010110010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IDEXREG|ALT_INV_ALUFunc_IDEX\(0),
	datab => \ALUInput2Mux|v3|v4|ALT_INV_Q~0_combout\,
	datac => \ALUInput2Mux|v3|v4|ALT_INV_Q~1_combout\,
	datad => \EXMEMREG|ALT_INV_Result_EXMEM\(4),
	datae => \ALUInput1Mux|v3|v2|ALT_INV_Q~0_combout\,
	dataf => \ALUInput1Mux|v3|v2|ALT_INV_Q~1_combout\,
	combout => \ALU16|V4|v12|Q~4_combout\);

\ALU16|V4|v12|Q~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU16|V4|v12|Q~5_combout\ = (\EXMEMREG|Result_EXMEM\(4) & !\ALUInput1Mux|v3|v2|Q~1_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EXMEMREG|ALT_INV_Result_EXMEM\(4),
	datab => \ALUInput1Mux|v3|v2|ALT_INV_Q~1_combout\,
	combout => \ALU16|V4|v12|Q~5_combout\);

\ALU16|V4|v12|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU16|V4|v12|Q~0_combout\ = ( \ALU16|V4|v12|Q~4_combout\ & ( \ALU16|V4|v12|Q~5_combout\ & ( (\ALU16|V0|v12|Q~0_combout\ & (((!\ALUInput1Mux|v3|v2|Q~0_combout\) # (\IFIDREG|outPC\(4))) # (\ALUInput1Mux|v3|v4|Q~0_combout\))) ) ) ) # ( 
-- !\ALU16|V4|v12|Q~4_combout\ & ( \ALU16|V4|v12|Q~5_combout\ & ( (\ALU16|V0|v12|Q~0_combout\ & (!\ALUInput1Mux|v3|v4|Q~0_combout\ & (\ALUInput1Mux|v3|v2|Q~0_combout\ & !\IFIDREG|outPC\(4)))) ) ) ) # ( \ALU16|V4|v12|Q~4_combout\ & ( 
-- !\ALU16|V4|v12|Q~5_combout\ & ( (\ALU16|V0|v12|Q~0_combout\ & ((!\ALUInput1Mux|v3|v4|Q~0_combout\ & ((!\ALUInput1Mux|v3|v2|Q~0_combout\) # (\IFIDREG|outPC\(4)))) # (\ALUInput1Mux|v3|v4|Q~0_combout\ & (\ALUInput1Mux|v3|v2|Q~0_combout\)))) ) ) ) # ( 
-- !\ALU16|V4|v12|Q~4_combout\ & ( !\ALU16|V4|v12|Q~5_combout\ & ( (\ALU16|V0|v12|Q~0_combout\ & ((!\ALUInput1Mux|v3|v4|Q~0_combout\ & (\ALUInput1Mux|v3|v2|Q~0_combout\ & !\IFIDREG|outPC\(4))) # (\ALUInput1Mux|v3|v4|Q~0_combout\ & 
-- (!\ALUInput1Mux|v3|v2|Q~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010000010000010000010100010100000100000000000101000101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU16|V0|v12|ALT_INV_Q~0_combout\,
	datab => \ALUInput1Mux|v3|v4|ALT_INV_Q~0_combout\,
	datac => \ALUInput1Mux|v3|v2|ALT_INV_Q~0_combout\,
	datad => \IFIDREG|ALT_INV_outPC\(4),
	datae => \ALU16|V4|v12|ALT_INV_Q~4_combout\,
	dataf => \ALU16|V4|v12|ALT_INV_Q~5_combout\,
	combout => \ALU16|V4|v12|Q~0_combout\);

\ALU16|V4|v12|Q~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU16|V4|v12|Q~1_combout\ = ( \ALU16|V3|v12|Q~2_combout\ & ( \ALU16|V4|v12|Q~0_combout\ ) ) # ( !\ALU16|V3|v12|Q~2_combout\ & ( \ALU16|V4|v12|Q~0_combout\ & ( (\ALU16|V3|v12|Q~0_combout\ & (((\ALU16|V1|v12|Q~0_combout\ & \ALU16|V2|v12|Q~0_combout\)) # 
-- (\ALU16|V2|v12|Q~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU16|V1|v12|ALT_INV_Q~0_combout\,
	datab => \ALU16|V2|v12|ALT_INV_Q~0_combout\,
	datac => \ALU16|V2|v12|ALT_INV_Q~1_combout\,
	datad => \ALU16|V3|v12|ALT_INV_Q~0_combout\,
	datae => \ALU16|V3|v12|ALT_INV_Q~2_combout\,
	dataf => \ALU16|V4|v12|ALT_INV_Q~0_combout\,
	combout => \ALU16|V4|v12|Q~1_combout\);

\ALU16|V4|v12|Q~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU16|V4|v12|Q~2_combout\ = ( \ALUInput2Mux|v3|v4|Q~1_combout\ & ( \ALUInput1Mux|v3|v4|Q~1_combout\ & ( (!\IDEXREG|ALUFunc_IDEX\(0) & \ALU16|V0|v12|Q~0_combout\) ) ) ) # ( !\ALUInput2Mux|v3|v4|Q~1_combout\ & ( \ALUInput1Mux|v3|v4|Q~1_combout\ & ( 
-- (\ALU16|V0|v12|Q~0_combout\ & (!\IDEXREG|ALUFunc_IDEX\(0) $ (!\ALUInput2Mux|v3|v4|Q~0_combout\))) ) ) ) # ( \ALUInput2Mux|v3|v4|Q~1_combout\ & ( !\ALUInput1Mux|v3|v4|Q~1_combout\ & ( (!\IDEXREG|ALUFunc_IDEX\(0) & (\ALU16|V0|v12|Q~0_combout\ & 
-- \ALUInput1Mux|v3|v4|Q~0_combout\)) ) ) ) # ( !\ALUInput2Mux|v3|v4|Q~1_combout\ & ( !\ALUInput1Mux|v3|v4|Q~1_combout\ & ( (\ALU16|V0|v12|Q~0_combout\ & (\ALUInput1Mux|v3|v4|Q~0_combout\ & (!\IDEXREG|ALUFunc_IDEX\(0) $ (!\ALUInput2Mux|v3|v4|Q~0_combout\)))) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000010000000100000001000010001001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IDEXREG|ALT_INV_ALUFunc_IDEX\(0),
	datab => \ALU16|V0|v12|ALT_INV_Q~0_combout\,
	datac => \ALUInput1Mux|v3|v4|ALT_INV_Q~0_combout\,
	datad => \ALUInput2Mux|v3|v4|ALT_INV_Q~0_combout\,
	datae => \ALUInput2Mux|v3|v4|ALT_INV_Q~1_combout\,
	dataf => \ALUInput1Mux|v3|v4|ALT_INV_Q~1_combout\,
	combout => \ALU16|V4|v12|Q~2_combout\);

\ALU16|V4|v12|Q~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU16|V4|v12|Q~3_combout\ = (!\ALU16|V4|v12|Q~1_combout\ & !\ALU16|V4|v12|Q~2_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU16|V4|v12|ALT_INV_Q~1_combout\,
	datab => \ALU16|V4|v12|ALT_INV_Q~2_combout\,
	combout => \ALU16|V4|v12|Q~3_combout\);

\ALU16|V21|v1|v5|Q\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU16|V21|v1|v5|Q~combout\ = ( \ALUInput1Mux|v3|v5|Q~2_combout\ & ( \ALU16|V4|v12|Q~3_combout\ & ( (!\ALUInput2Mux|v3|v5|Q~2_combout\ & (!\IDEXREG|ALUFunc_IDEX\(1) $ (!\IDEXREG|ALUFunc_IDEX\(0) $ (!\IDEXREG|ALUFunc_IDEX\(2))))) # 
-- (\ALUInput2Mux|v3|v5|Q~2_combout\ & (\IDEXREG|ALUFunc_IDEX\(0) & ((!\IDEXREG|ALUFunc_IDEX\(1)) # (\IDEXREG|ALUFunc_IDEX\(2))))) ) ) ) # ( !\ALUInput1Mux|v3|v5|Q~2_combout\ & ( \ALU16|V4|v12|Q~3_combout\ & ( (!\IDEXREG|ALUFunc_IDEX\(1) & 
-- (!\IDEXREG|ALUFunc_IDEX\(2) & (!\IDEXREG|ALUFunc_IDEX\(0) $ (!\ALUInput2Mux|v3|v5|Q~2_combout\)))) # (\IDEXREG|ALUFunc_IDEX\(1) & (!\IDEXREG|ALUFunc_IDEX\(2) $ (((!\IDEXREG|ALUFunc_IDEX\(0) & \ALUInput2Mux|v3|v5|Q~2_combout\))))) ) ) ) # ( 
-- \ALUInput1Mux|v3|v5|Q~2_combout\ & ( !\ALU16|V4|v12|Q~3_combout\ & ( (!\IDEXREG|ALUFunc_IDEX\(2) & ((!\IDEXREG|ALUFunc_IDEX\(0) & (!\IDEXREG|ALUFunc_IDEX\(1) & \ALUInput2Mux|v3|v5|Q~2_combout\)) # (\IDEXREG|ALUFunc_IDEX\(0) & 
-- ((!\ALUInput2Mux|v3|v5|Q~2_combout\))))) # (\IDEXREG|ALUFunc_IDEX\(2) & (!\IDEXREG|ALUFunc_IDEX\(0) $ (((!\IDEXREG|ALUFunc_IDEX\(1)) # (\ALUInput2Mux|v3|v5|Q~2_combout\))))) ) ) ) # ( !\ALUInput1Mux|v3|v5|Q~2_combout\ & ( !\ALU16|V4|v12|Q~3_combout\ & ( 
-- (!\IDEXREG|ALUFunc_IDEX\(1) & (!\IDEXREG|ALUFunc_IDEX\(2) & (!\IDEXREG|ALUFunc_IDEX\(0) $ (\ALUInput2Mux|v3|v5|Q~2_combout\)))) # (\IDEXREG|ALUFunc_IDEX\(1) & (!\IDEXREG|ALUFunc_IDEX\(2) $ (((!\IDEXREG|ALUFunc_IDEX\(0) & 
-- \ALUInput2Mux|v3|v5|Q~2_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101000000110100001101101000001101110000100101001001011000100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IDEXREG|ALT_INV_ALUFunc_IDEX\(1),
	datab => \IDEXREG|ALT_INV_ALUFunc_IDEX\(0),
	datac => \IDEXREG|ALT_INV_ALUFunc_IDEX\(2),
	datad => \ALUInput2Mux|v3|v5|ALT_INV_Q~2_combout\,
	datae => \ALUInput1Mux|v3|v5|ALT_INV_Q~2_combout\,
	dataf => \ALU16|V4|v12|ALT_INV_Q~3_combout\,
	combout => \ALU16|V21|v1|v5|Q~combout\);

\EXMEMREG|Result_EXMEM[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \ALU16|V21|v1|v5|Q~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EXMEMREG|Result_EXMEM\(5));

\PC|gen_register:6:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \IFIDREG|outInstruction\(6),
	asdata => \IFIDREG|outPC\(6),
	sload => \Controller|isJType~0_combout\,
	ena => \Trap|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|gen_register:6:vff|O~q\);

\IFIDREG|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \IFIDREG|Add0~21_sumout\ = SUM(( \PC|gen_register:6:vff|O~q\ ) + ( GND ) + ( \IFIDREG|Add0~18\ ))
-- \IFIDREG|Add0~22\ = CARRY(( \PC|gen_register:6:vff|O~q\ ) + ( GND ) + ( \IFIDREG|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|gen_register:6:vff|ALT_INV_O~q\,
	cin => \IFIDREG|Add0~18\,
	sumout => \IFIDREG|Add0~21_sumout\,
	cout => \IFIDREG|Add0~22\);

\IFIDREG|outPC[6]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \IFIDREG|outPC[6]~7_combout\ = ( \instr[15]~input_o\ & ( \IFIDREG|Add0~21_sumout\ & ( (\clock~input_o\ & (((!\instr[13]~input_o\) # (!\instr[14]~input_o\)) # (\instr[12]~input_o\))) ) ) ) # ( !\instr[15]~input_o\ & ( \IFIDREG|Add0~21_sumout\ & ( 
-- \clock~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_clock~input_o\,
	datab => \ALT_INV_instr[12]~input_o\,
	datac => \ALT_INV_instr[13]~input_o\,
	datad => \ALT_INV_instr[14]~input_o\,
	datae => \ALT_INV_instr[15]~input_o\,
	dataf => \IFIDREG|ALT_INV_Add0~21_sumout\,
	combout => \IFIDREG|outPC[6]~7_combout\);

\IFIDREG|outPC[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \IFIDREG|outPC\(6) = ( \IFIDREG|outPC\(6) & ( \IFIDREG|outPC[15]~1_combout\ & ( \IFIDREG|outPC[6]~7_combout\ ) ) ) # ( !\IFIDREG|outPC\(6) & ( \IFIDREG|outPC[15]~1_combout\ & ( \IFIDREG|outPC[6]~7_combout\ ) ) ) # ( \IFIDREG|outPC\(6) & ( 
-- !\IFIDREG|outPC[15]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \IFIDREG|ALT_INV_outPC[6]~7_combout\,
	datae => \IFIDREG|ALT_INV_outPC\(6),
	dataf => \IFIDREG|ALT_INV_outPC[15]~1_combout\,
	combout => \IFIDREG|outPC\(6));

\ALUInput1Mux|v3|v6|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALUInput1Mux|v3|v6|Q~0_combout\ = (\ALUInput1Mux|v3|v2|Q~0_combout\ & \IFIDREG|outPC\(6))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALUInput1Mux|v3|v2|ALT_INV_Q~0_combout\,
	datab => \IFIDREG|ALT_INV_outPC\(6),
	combout => \ALUInput1Mux|v3|v6|Q~0_combout\);

\fromData[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fromData(6),
	o => \fromData[6]~input_o\);

\MEMWB_inputData_sig[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMWB_inputData_sig[6]~6_combout\ = (!\EXMEMREG|isLW_EXMEM~q\ & (\EXMEMREG|Result_EXMEM\(6))) # (\EXMEMREG|isLW_EXMEM~q\ & ((\fromData[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011101000111010001110100011101000111010001110100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EXMEMREG|ALT_INV_Result_EXMEM\(6),
	datab => \EXMEMREG|ALT_INV_isLW_EXMEM~q\,
	datac => \ALT_INV_fromData[6]~input_o\,
	combout => \MEMWB_inputData_sig[6]~6_combout\);

\keyData[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_keyData(6),
	o => \keyData[6]~input_o\);

\MEMWBREG|writeData[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \MEMWB_inputData_sig[6]~6_combout\,
	asdata => \keyData[6]~input_o\,
	sload => \EXMEMREG|ReadDigit_EXMEM~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMWBREG|writeData\(6));

\RegisterFile|reg4|gen_register:6:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~input_o\,
	d => \MEMWBREG|writeData\(6),
	ena => \RegisterFile|v0|v12|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegisterFile|reg4|gen_register:6:vff|O~q\);

\RegisterFile|reg5|gen_register:6:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~input_o\,
	d => \MEMWBREG|writeData\(6),
	ena => \RegisterFile|v0|v14|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegisterFile|reg5|gen_register:6:vff|O~q\);

\RegisterFile|reg6|gen_register:6:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~input_o\,
	d => \MEMWBREG|writeData\(6),
	ena => \RegisterFile|v0|v16|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegisterFile|reg6|gen_register:6:vff|O~q\);

\RegisterFile|reg7|gen_register:6:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~input_o\,
	d => \MEMWBREG|writeData\(6),
	ena => \RegisterFile|v0|v18|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegisterFile|reg7|gen_register:6:vff|O~q\);

\RegisterFile|read_mux1|v6|v3|v6|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \RegisterFile|read_mux1|v6|v3|v6|Q~0_combout\ = ( \IFIDREG|outInstruction\(9) & ( \IFIDREG|outInstruction\(10) & ( \RegisterFile|reg7|gen_register:6:vff|O~q\ ) ) ) # ( !\IFIDREG|outInstruction\(9) & ( \IFIDREG|outInstruction\(10) & ( 
-- \RegisterFile|reg6|gen_register:6:vff|O~q\ ) ) ) # ( \IFIDREG|outInstruction\(9) & ( !\IFIDREG|outInstruction\(10) & ( \RegisterFile|reg5|gen_register:6:vff|O~q\ ) ) ) # ( !\IFIDREG|outInstruction\(9) & ( !\IFIDREG|outInstruction\(10) & ( 
-- \RegisterFile|reg4|gen_register:6:vff|O~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegisterFile|reg4|gen_register:6:vff|ALT_INV_O~q\,
	datab => \RegisterFile|reg5|gen_register:6:vff|ALT_INV_O~q\,
	datac => \RegisterFile|reg6|gen_register:6:vff|ALT_INV_O~q\,
	datad => \RegisterFile|reg7|gen_register:6:vff|ALT_INV_O~q\,
	datae => \IFIDREG|ALT_INV_outInstruction\(9),
	dataf => \IFIDREG|ALT_INV_outInstruction\(10),
	combout => \RegisterFile|read_mux1|v6|v3|v6|Q~0_combout\);

\RegisterFile|reg3|gen_register:6:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~input_o\,
	d => \MEMWBREG|writeData\(6),
	ena => \RegisterFile|v0|v10|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegisterFile|reg3|gen_register:6:vff|O~q\);

\RegisterFile|reg2|gen_register:6:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~input_o\,
	d => \MEMWBREG|writeData\(6),
	ena => \RegisterFile|v0|v8|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegisterFile|reg2|gen_register:6:vff|O~q\);

\RegisterFile|reg1|gen_register:6:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~input_o\,
	d => \MEMWBREG|writeData\(6),
	ena => \RegisterFile|v0|v6|Q~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegisterFile|reg1|gen_register:6:vff|O~q\);

\RegisterFile|read_mux1|v6|v3|v6|Q~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \RegisterFile|read_mux1|v6|v3|v6|Q~1_combout\ = ( !\IFIDREG|outInstruction\(11) & ( (!\IFIDREG|outInstruction\(10) & (\IFIDREG|outInstruction\(9) & (\RegisterFile|reg1|gen_register:6:vff|O~q\))) # (\IFIDREG|outInstruction\(10) & 
-- ((!\IFIDREG|outInstruction\(9) & (((\RegisterFile|reg2|gen_register:6:vff|O~q\)))) # (\IFIDREG|outInstruction\(9) & (((\RegisterFile|reg3|gen_register:6:vff|O~q\)))))) ) ) # ( \IFIDREG|outInstruction\(11) & ( 
-- (((\RegisterFile|read_mux1|v6|v3|v6|Q~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001000010011000011110000111101000110010101110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IFIDREG|ALT_INV_outInstruction\(10),
	datab => \IFIDREG|ALT_INV_outInstruction\(9),
	datac => \RegisterFile|read_mux1|v6|v3|v6|ALT_INV_Q~0_combout\,
	datad => \RegisterFile|reg3|gen_register:6:vff|ALT_INV_O~q\,
	datae => \IFIDREG|ALT_INV_outInstruction\(11),
	dataf => \RegisterFile|reg2|gen_register:6:vff|ALT_INV_O~q\,
	datag => \RegisterFile|reg1|gen_register:6:vff|ALT_INV_O~q\,
	combout => \RegisterFile|read_mux1|v6|v3|v6|Q~1_combout\);

\IDEXREG|R1Reg_IDEX[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \RegisterFile|read_mux1|v6|v3|v6|Q~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEXREG|R1Reg_IDEX\(6));

\ALUInput1Mux|v3|v6|Q~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALUInput1Mux|v3|v6|Q~1_combout\ = ( \MEMWBREG|writeData\(6) & ( \IDEXREG|R1Reg_IDEX\(6) & ( (!\ALUInput1Mux|v3|v2|Q~0_combout\ & ((\ALUInput1Mux|v3|v2|Q~1_combout\) # (\EXMEMREG|Result_EXMEM\(6)))) ) ) ) # ( !\MEMWBREG|writeData\(6) & ( 
-- \IDEXREG|R1Reg_IDEX\(6) & ( (!\ALUInput1Mux|v3|v2|Q~0_combout\ & ((!\ALUInput1Mux|v3|v2|Q~1_combout\ & (\EXMEMREG|Result_EXMEM\(6))) # (\ALUInput1Mux|v3|v2|Q~1_combout\ & ((!\ALUInput1Mux|v3|v2|Q~7_combout\))))) ) ) ) # ( \MEMWBREG|writeData\(6) & ( 
-- !\IDEXREG|R1Reg_IDEX\(6) & ( (!\ALUInput1Mux|v3|v2|Q~0_combout\ & ((!\ALUInput1Mux|v3|v2|Q~1_combout\ & (\EXMEMREG|Result_EXMEM\(6))) # (\ALUInput1Mux|v3|v2|Q~1_combout\ & ((\ALUInput1Mux|v3|v2|Q~7_combout\))))) ) ) ) # ( !\MEMWBREG|writeData\(6) & ( 
-- !\IDEXREG|R1Reg_IDEX\(6) & ( (\EXMEMREG|Result_EXMEM\(6) & (!\ALUInput1Mux|v3|v2|Q~0_combout\ & !\ALUInput1Mux|v3|v2|Q~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000010000000100110001001100010000000100110001001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EXMEMREG|ALT_INV_Result_EXMEM\(6),
	datab => \ALUInput1Mux|v3|v2|ALT_INV_Q~0_combout\,
	datac => \ALUInput1Mux|v3|v2|ALT_INV_Q~1_combout\,
	datad => \ALUInput1Mux|v3|v2|ALT_INV_Q~7_combout\,
	datae => \MEMWBREG|ALT_INV_writeData\(6),
	dataf => \IDEXREG|ALT_INV_R1Reg_IDEX\(6),
	combout => \ALUInput1Mux|v3|v6|Q~1_combout\);

\ALUInput1Mux|v3|v6|Q~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALUInput1Mux|v3|v6|Q~2_combout\ = (!\ALUInput1Mux|v3|v6|Q~0_combout\ & !\ALUInput1Mux|v3|v6|Q~1_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALUInput1Mux|v3|v6|ALT_INV_Q~0_combout\,
	datab => \ALUInput1Mux|v3|v6|ALT_INV_Q~1_combout\,
	combout => \ALUInput1Mux|v3|v6|Q~2_combout\);

\RegisterFile|read_mux2|v6|v3|v6|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \RegisterFile|read_mux2|v6|v3|v6|Q~0_combout\ = ( \IFIDREG|outInstruction\(6) & ( \IFIDREG|outInstruction\(7) & ( \RegisterFile|reg7|gen_register:6:vff|O~q\ ) ) ) # ( !\IFIDREG|outInstruction\(6) & ( \IFIDREG|outInstruction\(7) & ( 
-- \RegisterFile|reg6|gen_register:6:vff|O~q\ ) ) ) # ( \IFIDREG|outInstruction\(6) & ( !\IFIDREG|outInstruction\(7) & ( \RegisterFile|reg5|gen_register:6:vff|O~q\ ) ) ) # ( !\IFIDREG|outInstruction\(6) & ( !\IFIDREG|outInstruction\(7) & ( 
-- \RegisterFile|reg4|gen_register:6:vff|O~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegisterFile|reg4|gen_register:6:vff|ALT_INV_O~q\,
	datab => \RegisterFile|reg5|gen_register:6:vff|ALT_INV_O~q\,
	datac => \RegisterFile|reg6|gen_register:6:vff|ALT_INV_O~q\,
	datad => \RegisterFile|reg7|gen_register:6:vff|ALT_INV_O~q\,
	datae => \IFIDREG|ALT_INV_outInstruction\(6),
	dataf => \IFIDREG|ALT_INV_outInstruction\(7),
	combout => \RegisterFile|read_mux2|v6|v3|v6|Q~0_combout\);

\RegisterFile|read_mux2|v6|v3|v6|Q~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \RegisterFile|read_mux2|v6|v3|v6|Q~1_combout\ = ( !\IFIDREG|outInstruction\(8) & ( (!\IFIDREG|outInstruction\(7) & (\IFIDREG|outInstruction\(6) & (\RegisterFile|reg1|gen_register:6:vff|O~q\))) # (\IFIDREG|outInstruction\(7) & 
-- ((!\IFIDREG|outInstruction\(6) & (((\RegisterFile|reg2|gen_register:6:vff|O~q\)))) # (\IFIDREG|outInstruction\(6) & (((\RegisterFile|reg3|gen_register:6:vff|O~q\)))))) ) ) # ( \IFIDREG|outInstruction\(8) & ( 
-- (((\RegisterFile|read_mux2|v6|v3|v6|Q~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001000010011000011110000111101000110010101110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IFIDREG|ALT_INV_outInstruction\(7),
	datab => \IFIDREG|ALT_INV_outInstruction\(6),
	datac => \RegisterFile|read_mux2|v6|v3|v6|ALT_INV_Q~0_combout\,
	datad => \RegisterFile|reg3|gen_register:6:vff|ALT_INV_O~q\,
	datae => \IFIDREG|ALT_INV_outInstruction\(8),
	dataf => \RegisterFile|reg2|gen_register:6:vff|ALT_INV_O~q\,
	datag => \RegisterFile|reg1|gen_register:6:vff|ALT_INV_O~q\,
	combout => \RegisterFile|read_mux2|v6|v3|v6|Q~1_combout\);

\IDEXREG|R2Reg_IDEX[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \RegisterFile|read_mux2|v6|v3|v6|Q~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEXREG|R2Reg_IDEX\(6));

\ALUInput2Mux|v3|v6|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALUInput2Mux|v3|v6|Q~0_combout\ = ( \MEMWBREG|writeData\(6) & ( \IDEXREG|R2Reg_IDEX\(6) & ( (\ALUInput2Mux|v3|v12|Q~0_combout\ & ((!\ALUInput2Mux|v3|v12|Q~1_combout\) # (\EXMEMREG|Result_EXMEM\(6)))) ) ) ) # ( !\MEMWBREG|writeData\(6) & ( 
-- \IDEXREG|R2Reg_IDEX\(6) & ( (\ALUInput2Mux|v3|v12|Q~0_combout\ & ((!\ALUInput2Mux|v3|v12|Q~1_combout\ & ((!\ALUInput2Mux|v3|v12|Q~3_combout\))) # (\ALUInput2Mux|v3|v12|Q~1_combout\ & (\EXMEMREG|Result_EXMEM\(6))))) ) ) ) # ( \MEMWBREG|writeData\(6) & ( 
-- !\IDEXREG|R2Reg_IDEX\(6) & ( (\ALUInput2Mux|v3|v12|Q~0_combout\ & ((!\ALUInput2Mux|v3|v12|Q~1_combout\ & ((\ALUInput2Mux|v3|v12|Q~3_combout\))) # (\ALUInput2Mux|v3|v12|Q~1_combout\ & (\EXMEMREG|Result_EXMEM\(6))))) ) ) ) # ( !\MEMWBREG|writeData\(6) & ( 
-- !\IDEXREG|R2Reg_IDEX\(6) & ( (\EXMEMREG|Result_EXMEM\(6) & (\ALUInput2Mux|v3|v12|Q~0_combout\ & \ALUInput2Mux|v3|v12|Q~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010011000100110001000000010011000100110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EXMEMREG|ALT_INV_Result_EXMEM\(6),
	datab => \ALUInput2Mux|v3|v12|ALT_INV_Q~0_combout\,
	datac => \ALUInput2Mux|v3|v12|ALT_INV_Q~1_combout\,
	datad => \ALUInput2Mux|v3|v12|ALT_INV_Q~3_combout\,
	datae => \MEMWBREG|ALT_INV_writeData\(6),
	dataf => \IDEXREG|ALT_INV_R2Reg_IDEX\(6),
	combout => \ALUInput2Mux|v3|v6|Q~0_combout\);

\ALUInput2Mux|v3|v6|Q~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALUInput2Mux|v3|v6|Q~1_combout\ = (!\ALUInput2Mux|v3|v5|Q~0_combout\ & !\ALUInput2Mux|v3|v6|Q~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALUInput2Mux|v3|v5|ALT_INV_Q~0_combout\,
	datab => \ALUInput2Mux|v3|v6|ALT_INV_Q~0_combout\,
	combout => \ALUInput2Mux|v3|v6|Q~1_combout\);

\ALU16|V5|v12|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU16|V5|v12|Q~0_combout\ = ( \ALUInput1Mux|v3|v5|Q~0_combout\ & ( \ALUInput1Mux|v3|v5|Q~1_combout\ & ( (\ALU16|V0|v12|Q~0_combout\ & (!\IDEXREG|ALUFunc_IDEX\(0) $ (((\ALUInput2Mux|v3|v5|Q~1_combout\) # (\ALUInput2Mux|v3|v5|Q~0_combout\))))) ) ) ) # ( 
-- !\ALUInput1Mux|v3|v5|Q~0_combout\ & ( \ALUInput1Mux|v3|v5|Q~1_combout\ & ( (\ALU16|V0|v12|Q~0_combout\ & (!\IDEXREG|ALUFunc_IDEX\(0) $ (((\ALUInput2Mux|v3|v5|Q~1_combout\) # (\ALUInput2Mux|v3|v5|Q~0_combout\))))) ) ) ) # ( \ALUInput1Mux|v3|v5|Q~0_combout\ 
-- & ( !\ALUInput1Mux|v3|v5|Q~1_combout\ & ( (\ALU16|V0|v12|Q~0_combout\ & (!\IDEXREG|ALUFunc_IDEX\(0) $ (((\ALUInput2Mux|v3|v5|Q~1_combout\) # (\ALUInput2Mux|v3|v5|Q~0_combout\))))) ) ) ) # ( !\ALUInput1Mux|v3|v5|Q~0_combout\ & ( 
-- !\ALUInput1Mux|v3|v5|Q~1_combout\ & ( (\ALU16|V0|v12|Q~0_combout\ & (!\IDEXREG|ALUFunc_IDEX\(0) $ (((!\ALUInput2Mux|v3|v5|Q~0_combout\ & !\ALUInput2Mux|v3|v5|Q~1_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001000100010001000010001000100100001000100010010000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IDEXREG|ALT_INV_ALUFunc_IDEX\(0),
	datab => \ALU16|V0|v12|ALT_INV_Q~0_combout\,
	datac => \ALUInput2Mux|v3|v5|ALT_INV_Q~0_combout\,
	datad => \ALUInput2Mux|v3|v5|ALT_INV_Q~1_combout\,
	datae => \ALUInput1Mux|v3|v5|ALT_INV_Q~0_combout\,
	dataf => \ALUInput1Mux|v3|v5|ALT_INV_Q~1_combout\,
	combout => \ALU16|V5|v12|Q~0_combout\);

\ALU16|V5|v12|Q~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU16|V5|v12|Q~1_combout\ = ( \ALUInput1Mux|v3|v5|Q~0_combout\ & ( \ALUInput1Mux|v3|v5|Q~1_combout\ & ( (\ALU16|V0|v12|Q~0_combout\ & (!\IDEXREG|ALUFunc_IDEX\(0) $ (((!\ALUInput2Mux|v3|v5|Q~0_combout\ & !\ALUInput2Mux|v3|v5|Q~1_combout\))))) ) ) ) # ( 
-- !\ALUInput1Mux|v3|v5|Q~0_combout\ & ( \ALUInput1Mux|v3|v5|Q~1_combout\ & ( (\ALU16|V0|v12|Q~0_combout\ & (!\IDEXREG|ALUFunc_IDEX\(0) $ (((!\ALUInput2Mux|v3|v5|Q~0_combout\ & !\ALUInput2Mux|v3|v5|Q~1_combout\))))) ) ) ) # ( \ALUInput1Mux|v3|v5|Q~0_combout\ 
-- & ( !\ALUInput1Mux|v3|v5|Q~1_combout\ & ( (\ALU16|V0|v12|Q~0_combout\ & (!\IDEXREG|ALUFunc_IDEX\(0) $ (((!\ALUInput2Mux|v3|v5|Q~0_combout\ & !\ALUInput2Mux|v3|v5|Q~1_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100100010001000010010001000100001001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IDEXREG|ALT_INV_ALUFunc_IDEX\(0),
	datab => \ALU16|V0|v12|ALT_INV_Q~0_combout\,
	datac => \ALUInput2Mux|v3|v5|ALT_INV_Q~0_combout\,
	datad => \ALUInput2Mux|v3|v5|ALT_INV_Q~1_combout\,
	datae => \ALUInput1Mux|v3|v5|ALT_INV_Q~0_combout\,
	dataf => \ALUInput1Mux|v3|v5|ALT_INV_Q~1_combout\,
	combout => \ALU16|V5|v12|Q~1_combout\);

\ALU16|V5|v12|Q~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU16|V5|v12|Q~2_combout\ = ( \ALU16|V5|v12|Q~0_combout\ & ( !\ALU16|V5|v12|Q~1_combout\ & ( (!\ALU16|V4|v12|Q~2_combout\ & ((!\ALU16|V4|v12|Q~0_combout\) # ((!\ALU16|V3|v12|Q~1_combout\ & !\ALU16|V3|v12|Q~2_combout\)))) ) ) ) # ( 
-- !\ALU16|V5|v12|Q~0_combout\ & ( !\ALU16|V5|v12|Q~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111110000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU16|V3|v12|ALT_INV_Q~1_combout\,
	datab => \ALU16|V3|v12|ALT_INV_Q~2_combout\,
	datac => \ALU16|V4|v12|ALT_INV_Q~0_combout\,
	datad => \ALU16|V4|v12|ALT_INV_Q~2_combout\,
	datae => \ALU16|V5|v12|ALT_INV_Q~0_combout\,
	dataf => \ALU16|V5|v12|ALT_INV_Q~1_combout\,
	combout => \ALU16|V5|v12|Q~2_combout\);

\ALU16|V21|v1|v6|Q\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU16|V21|v1|v6|Q~combout\ = ( \ALUInput2Mux|v3|v6|Q~1_combout\ & ( \ALU16|V5|v12|Q~2_combout\ & ( (!\IDEXREG|ALUFunc_IDEX\(0) & (!\ALUInput1Mux|v3|v6|Q~2_combout\ & (!\IDEXREG|ALUFunc_IDEX\(1) $ (\IDEXREG|ALUFunc_IDEX\(2))))) # 
-- (\IDEXREG|ALUFunc_IDEX\(0) & (!\ALUInput1Mux|v3|v6|Q~2_combout\ $ (((!\IDEXREG|ALUFunc_IDEX\(1)) # (\IDEXREG|ALUFunc_IDEX\(2)))))) ) ) ) # ( !\ALUInput2Mux|v3|v6|Q~1_combout\ & ( \ALU16|V5|v12|Q~2_combout\ & ( (!\ALUInput1Mux|v3|v6|Q~2_combout\ & 
-- (!\IDEXREG|ALUFunc_IDEX\(2) & ((\IDEXREG|ALUFunc_IDEX\(0)) # (\IDEXREG|ALUFunc_IDEX\(1))))) # (\ALUInput1Mux|v3|v6|Q~2_combout\ & (!\IDEXREG|ALUFunc_IDEX\(1) $ (!\IDEXREG|ALUFunc_IDEX\(0) $ (!\IDEXREG|ALUFunc_IDEX\(2))))) ) ) ) # ( 
-- \ALUInput2Mux|v3|v6|Q~1_combout\ & ( !\ALU16|V5|v12|Q~2_combout\ & ( (!\IDEXREG|ALUFunc_IDEX\(0) & ((!\IDEXREG|ALUFunc_IDEX\(1) & (!\IDEXREG|ALUFunc_IDEX\(2) & \ALUInput1Mux|v3|v6|Q~2_combout\)) # (\IDEXREG|ALUFunc_IDEX\(1) & (\IDEXREG|ALUFunc_IDEX\(2) & 
-- !\ALUInput1Mux|v3|v6|Q~2_combout\)))) # (\IDEXREG|ALUFunc_IDEX\(0) & ((!\IDEXREG|ALUFunc_IDEX\(2) $ (\ALUInput1Mux|v3|v6|Q~2_combout\)))) ) ) ) # ( !\ALUInput2Mux|v3|v6|Q~1_combout\ & ( !\ALU16|V5|v12|Q~2_combout\ & ( (!\ALUInput1Mux|v3|v6|Q~2_combout\ & 
-- (!\IDEXREG|ALUFunc_IDEX\(2) & ((!\IDEXREG|ALUFunc_IDEX\(0)) # (\IDEXREG|ALUFunc_IDEX\(1))))) # (\ALUInput1Mux|v3|v6|Q~2_combout\ & (!\IDEXREG|ALUFunc_IDEX\(0) $ (((!\IDEXREG|ALUFunc_IDEX\(1)) # (!\IDEXREG|ALUFunc_IDEX\(2)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101000000110110001101001000001101110000100101101001010000100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IDEXREG|ALT_INV_ALUFunc_IDEX\(1),
	datab => \IDEXREG|ALT_INV_ALUFunc_IDEX\(0),
	datac => \IDEXREG|ALT_INV_ALUFunc_IDEX\(2),
	datad => \ALUInput1Mux|v3|v6|ALT_INV_Q~2_combout\,
	datae => \ALUInput2Mux|v3|v6|ALT_INV_Q~1_combout\,
	dataf => \ALU16|V5|v12|ALT_INV_Q~2_combout\,
	combout => \ALU16|V21|v1|v6|Q~combout\);

\EXMEMREG|Result_EXMEM[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \ALU16|V21|v1|v6|Q~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EXMEMREG|Result_EXMEM\(6));

\PC|gen_register:7:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \IFIDREG|outInstruction\(7),
	asdata => \IFIDREG|outPC\(7),
	sload => \Controller|isJType~0_combout\,
	ena => \Trap|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|gen_register:7:vff|O~q\);

\IFIDREG|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \IFIDREG|Add0~25_sumout\ = SUM(( \PC|gen_register:7:vff|O~q\ ) + ( GND ) + ( \IFIDREG|Add0~22\ ))
-- \IFIDREG|Add0~26\ = CARRY(( \PC|gen_register:7:vff|O~q\ ) + ( GND ) + ( \IFIDREG|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|gen_register:7:vff|ALT_INV_O~q\,
	cin => \IFIDREG|Add0~22\,
	sumout => \IFIDREG|Add0~25_sumout\,
	cout => \IFIDREG|Add0~26\);

\IFIDREG|outPC[7]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \IFIDREG|outPC[7]~8_combout\ = ( \instr[15]~input_o\ & ( \IFIDREG|Add0~25_sumout\ & ( (\clock~input_o\ & (((!\instr[13]~input_o\) # (!\instr[14]~input_o\)) # (\instr[12]~input_o\))) ) ) ) # ( !\instr[15]~input_o\ & ( \IFIDREG|Add0~25_sumout\ & ( 
-- \clock~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_clock~input_o\,
	datab => \ALT_INV_instr[12]~input_o\,
	datac => \ALT_INV_instr[13]~input_o\,
	datad => \ALT_INV_instr[14]~input_o\,
	datae => \ALT_INV_instr[15]~input_o\,
	dataf => \IFIDREG|ALT_INV_Add0~25_sumout\,
	combout => \IFIDREG|outPC[7]~8_combout\);

\IFIDREG|outPC[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- \IFIDREG|outPC\(7) = ( \IFIDREG|outPC\(7) & ( \IFIDREG|outPC[15]~1_combout\ & ( \IFIDREG|outPC[7]~8_combout\ ) ) ) # ( !\IFIDREG|outPC\(7) & ( \IFIDREG|outPC[15]~1_combout\ & ( \IFIDREG|outPC[7]~8_combout\ ) ) ) # ( \IFIDREG|outPC\(7) & ( 
-- !\IFIDREG|outPC[15]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \IFIDREG|ALT_INV_outPC[7]~8_combout\,
	datae => \IFIDREG|ALT_INV_outPC\(7),
	dataf => \IFIDREG|ALT_INV_outPC[15]~1_combout\,
	combout => \IFIDREG|outPC\(7));

\ALUInput1Mux|v3|v7|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALUInput1Mux|v3|v7|Q~0_combout\ = (\ALUInput1Mux|v3|v2|Q~0_combout\ & \IFIDREG|outPC\(7))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALUInput1Mux|v3|v2|ALT_INV_Q~0_combout\,
	datab => \IFIDREG|ALT_INV_outPC\(7),
	combout => \ALUInput1Mux|v3|v7|Q~0_combout\);

\fromData[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fromData(7),
	o => \fromData[7]~input_o\);

\MEMWB_inputData_sig[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMWB_inputData_sig[7]~7_combout\ = (!\EXMEMREG|isLW_EXMEM~q\ & (\EXMEMREG|Result_EXMEM\(7))) # (\EXMEMREG|isLW_EXMEM~q\ & ((\fromData[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011101000111010001110100011101000111010001110100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EXMEMREG|ALT_INV_Result_EXMEM\(7),
	datab => \EXMEMREG|ALT_INV_isLW_EXMEM~q\,
	datac => \ALT_INV_fromData[7]~input_o\,
	combout => \MEMWB_inputData_sig[7]~7_combout\);

\keyData[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_keyData(7),
	o => \keyData[7]~input_o\);

\MEMWBREG|writeData[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \MEMWB_inputData_sig[7]~7_combout\,
	asdata => \keyData[7]~input_o\,
	sload => \EXMEMREG|ReadDigit_EXMEM~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMWBREG|writeData\(7));

\RegisterFile|reg4|gen_register:7:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~input_o\,
	d => \MEMWBREG|writeData\(7),
	ena => \RegisterFile|v0|v12|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegisterFile|reg4|gen_register:7:vff|O~q\);

\RegisterFile|reg5|gen_register:7:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~input_o\,
	d => \MEMWBREG|writeData\(7),
	ena => \RegisterFile|v0|v14|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegisterFile|reg5|gen_register:7:vff|O~q\);

\RegisterFile|reg6|gen_register:7:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~input_o\,
	d => \MEMWBREG|writeData\(7),
	ena => \RegisterFile|v0|v16|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegisterFile|reg6|gen_register:7:vff|O~q\);

\RegisterFile|reg7|gen_register:7:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~input_o\,
	d => \MEMWBREG|writeData\(7),
	ena => \RegisterFile|v0|v18|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegisterFile|reg7|gen_register:7:vff|O~q\);

\RegisterFile|read_mux1|v6|v3|v7|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \RegisterFile|read_mux1|v6|v3|v7|Q~0_combout\ = ( \IFIDREG|outInstruction\(9) & ( \IFIDREG|outInstruction\(10) & ( \RegisterFile|reg7|gen_register:7:vff|O~q\ ) ) ) # ( !\IFIDREG|outInstruction\(9) & ( \IFIDREG|outInstruction\(10) & ( 
-- \RegisterFile|reg6|gen_register:7:vff|O~q\ ) ) ) # ( \IFIDREG|outInstruction\(9) & ( !\IFIDREG|outInstruction\(10) & ( \RegisterFile|reg5|gen_register:7:vff|O~q\ ) ) ) # ( !\IFIDREG|outInstruction\(9) & ( !\IFIDREG|outInstruction\(10) & ( 
-- \RegisterFile|reg4|gen_register:7:vff|O~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegisterFile|reg4|gen_register:7:vff|ALT_INV_O~q\,
	datab => \RegisterFile|reg5|gen_register:7:vff|ALT_INV_O~q\,
	datac => \RegisterFile|reg6|gen_register:7:vff|ALT_INV_O~q\,
	datad => \RegisterFile|reg7|gen_register:7:vff|ALT_INV_O~q\,
	datae => \IFIDREG|ALT_INV_outInstruction\(9),
	dataf => \IFIDREG|ALT_INV_outInstruction\(10),
	combout => \RegisterFile|read_mux1|v6|v3|v7|Q~0_combout\);

\RegisterFile|reg3|gen_register:7:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~input_o\,
	d => \MEMWBREG|writeData\(7),
	ena => \RegisterFile|v0|v10|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegisterFile|reg3|gen_register:7:vff|O~q\);

\RegisterFile|reg2|gen_register:7:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~input_o\,
	d => \MEMWBREG|writeData\(7),
	ena => \RegisterFile|v0|v8|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegisterFile|reg2|gen_register:7:vff|O~q\);

\RegisterFile|reg1|gen_register:7:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~input_o\,
	d => \MEMWBREG|writeData\(7),
	ena => \RegisterFile|v0|v6|Q~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegisterFile|reg1|gen_register:7:vff|O~q\);

\RegisterFile|read_mux1|v6|v3|v7|Q~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \RegisterFile|read_mux1|v6|v3|v7|Q~1_combout\ = ( !\IFIDREG|outInstruction\(11) & ( (!\IFIDREG|outInstruction\(10) & (\IFIDREG|outInstruction\(9) & (\RegisterFile|reg1|gen_register:7:vff|O~q\))) # (\IFIDREG|outInstruction\(10) & 
-- ((!\IFIDREG|outInstruction\(9) & (((\RegisterFile|reg2|gen_register:7:vff|O~q\)))) # (\IFIDREG|outInstruction\(9) & (((\RegisterFile|reg3|gen_register:7:vff|O~q\)))))) ) ) # ( \IFIDREG|outInstruction\(11) & ( 
-- (((\RegisterFile|read_mux1|v6|v3|v7|Q~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001000010011000011110000111101000110010101110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IFIDREG|ALT_INV_outInstruction\(10),
	datab => \IFIDREG|ALT_INV_outInstruction\(9),
	datac => \RegisterFile|read_mux1|v6|v3|v7|ALT_INV_Q~0_combout\,
	datad => \RegisterFile|reg3|gen_register:7:vff|ALT_INV_O~q\,
	datae => \IFIDREG|ALT_INV_outInstruction\(11),
	dataf => \RegisterFile|reg2|gen_register:7:vff|ALT_INV_O~q\,
	datag => \RegisterFile|reg1|gen_register:7:vff|ALT_INV_O~q\,
	combout => \RegisterFile|read_mux1|v6|v3|v7|Q~1_combout\);

\IDEXREG|R1Reg_IDEX[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \RegisterFile|read_mux1|v6|v3|v7|Q~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEXREG|R1Reg_IDEX\(7));

\ALUInput1Mux|v3|v7|Q~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALUInput1Mux|v3|v7|Q~1_combout\ = ( \MEMWBREG|writeData\(7) & ( \IDEXREG|R1Reg_IDEX\(7) & ( (!\ALUInput1Mux|v3|v2|Q~0_combout\ & ((\ALUInput1Mux|v3|v2|Q~1_combout\) # (\EXMEMREG|Result_EXMEM\(7)))) ) ) ) # ( !\MEMWBREG|writeData\(7) & ( 
-- \IDEXREG|R1Reg_IDEX\(7) & ( (!\ALUInput1Mux|v3|v2|Q~0_combout\ & ((!\ALUInput1Mux|v3|v2|Q~1_combout\ & (\EXMEMREG|Result_EXMEM\(7))) # (\ALUInput1Mux|v3|v2|Q~1_combout\ & ((!\ALUInput1Mux|v3|v2|Q~7_combout\))))) ) ) ) # ( \MEMWBREG|writeData\(7) & ( 
-- !\IDEXREG|R1Reg_IDEX\(7) & ( (!\ALUInput1Mux|v3|v2|Q~0_combout\ & ((!\ALUInput1Mux|v3|v2|Q~1_combout\ & (\EXMEMREG|Result_EXMEM\(7))) # (\ALUInput1Mux|v3|v2|Q~1_combout\ & ((\ALUInput1Mux|v3|v2|Q~7_combout\))))) ) ) ) # ( !\MEMWBREG|writeData\(7) & ( 
-- !\IDEXREG|R1Reg_IDEX\(7) & ( (\EXMEMREG|Result_EXMEM\(7) & (!\ALUInput1Mux|v3|v2|Q~0_combout\ & !\ALUInput1Mux|v3|v2|Q~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000010000000100110001001100010000000100110001001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EXMEMREG|ALT_INV_Result_EXMEM\(7),
	datab => \ALUInput1Mux|v3|v2|ALT_INV_Q~0_combout\,
	datac => \ALUInput1Mux|v3|v2|ALT_INV_Q~1_combout\,
	datad => \ALUInput1Mux|v3|v2|ALT_INV_Q~7_combout\,
	datae => \MEMWBREG|ALT_INV_writeData\(7),
	dataf => \IDEXREG|ALT_INV_R1Reg_IDEX\(7),
	combout => \ALUInput1Mux|v3|v7|Q~1_combout\);

\ALUInput1Mux|v3|v7|Q~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALUInput1Mux|v3|v7|Q~2_combout\ = (!\ALUInput1Mux|v3|v7|Q~0_combout\ & !\ALUInput1Mux|v3|v7|Q~1_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALUInput1Mux|v3|v7|ALT_INV_Q~0_combout\,
	datab => \ALUInput1Mux|v3|v7|ALT_INV_Q~1_combout\,
	combout => \ALUInput1Mux|v3|v7|Q~2_combout\);

\RegisterFile|read_mux2|v6|v3|v7|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \RegisterFile|read_mux2|v6|v3|v7|Q~0_combout\ = ( \IFIDREG|outInstruction\(6) & ( \IFIDREG|outInstruction\(7) & ( \RegisterFile|reg7|gen_register:7:vff|O~q\ ) ) ) # ( !\IFIDREG|outInstruction\(6) & ( \IFIDREG|outInstruction\(7) & ( 
-- \RegisterFile|reg6|gen_register:7:vff|O~q\ ) ) ) # ( \IFIDREG|outInstruction\(6) & ( !\IFIDREG|outInstruction\(7) & ( \RegisterFile|reg5|gen_register:7:vff|O~q\ ) ) ) # ( !\IFIDREG|outInstruction\(6) & ( !\IFIDREG|outInstruction\(7) & ( 
-- \RegisterFile|reg4|gen_register:7:vff|O~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegisterFile|reg4|gen_register:7:vff|ALT_INV_O~q\,
	datab => \RegisterFile|reg5|gen_register:7:vff|ALT_INV_O~q\,
	datac => \RegisterFile|reg6|gen_register:7:vff|ALT_INV_O~q\,
	datad => \RegisterFile|reg7|gen_register:7:vff|ALT_INV_O~q\,
	datae => \IFIDREG|ALT_INV_outInstruction\(6),
	dataf => \IFIDREG|ALT_INV_outInstruction\(7),
	combout => \RegisterFile|read_mux2|v6|v3|v7|Q~0_combout\);

\RegisterFile|read_mux2|v6|v3|v7|Q~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \RegisterFile|read_mux2|v6|v3|v7|Q~1_combout\ = ( !\IFIDREG|outInstruction\(8) & ( (!\IFIDREG|outInstruction\(7) & (\IFIDREG|outInstruction\(6) & (\RegisterFile|reg1|gen_register:7:vff|O~q\))) # (\IFIDREG|outInstruction\(7) & 
-- ((!\IFIDREG|outInstruction\(6) & (((\RegisterFile|reg2|gen_register:7:vff|O~q\)))) # (\IFIDREG|outInstruction\(6) & (((\RegisterFile|reg3|gen_register:7:vff|O~q\)))))) ) ) # ( \IFIDREG|outInstruction\(8) & ( 
-- (((\RegisterFile|read_mux2|v6|v3|v7|Q~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001000010011000011110000111101000110010101110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IFIDREG|ALT_INV_outInstruction\(7),
	datab => \IFIDREG|ALT_INV_outInstruction\(6),
	datac => \RegisterFile|read_mux2|v6|v3|v7|ALT_INV_Q~0_combout\,
	datad => \RegisterFile|reg3|gen_register:7:vff|ALT_INV_O~q\,
	datae => \IFIDREG|ALT_INV_outInstruction\(8),
	dataf => \RegisterFile|reg2|gen_register:7:vff|ALT_INV_O~q\,
	datag => \RegisterFile|reg1|gen_register:7:vff|ALT_INV_O~q\,
	combout => \RegisterFile|read_mux2|v6|v3|v7|Q~1_combout\);

\IDEXREG|R2Reg_IDEX[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \RegisterFile|read_mux2|v6|v3|v7|Q~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEXREG|R2Reg_IDEX\(7));

\ALUInput2Mux|v3|v7|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALUInput2Mux|v3|v7|Q~0_combout\ = ( \MEMWBREG|writeData\(7) & ( \IDEXREG|R2Reg_IDEX\(7) & ( (\ALUInput2Mux|v3|v12|Q~0_combout\ & ((!\ALUInput2Mux|v3|v12|Q~1_combout\) # (\EXMEMREG|Result_EXMEM\(7)))) ) ) ) # ( !\MEMWBREG|writeData\(7) & ( 
-- \IDEXREG|R2Reg_IDEX\(7) & ( (\ALUInput2Mux|v3|v12|Q~0_combout\ & ((!\ALUInput2Mux|v3|v12|Q~1_combout\ & ((!\ALUInput2Mux|v3|v12|Q~3_combout\))) # (\ALUInput2Mux|v3|v12|Q~1_combout\ & (\EXMEMREG|Result_EXMEM\(7))))) ) ) ) # ( \MEMWBREG|writeData\(7) & ( 
-- !\IDEXREG|R2Reg_IDEX\(7) & ( (\ALUInput2Mux|v3|v12|Q~0_combout\ & ((!\ALUInput2Mux|v3|v12|Q~1_combout\ & ((\ALUInput2Mux|v3|v12|Q~3_combout\))) # (\ALUInput2Mux|v3|v12|Q~1_combout\ & (\EXMEMREG|Result_EXMEM\(7))))) ) ) ) # ( !\MEMWBREG|writeData\(7) & ( 
-- !\IDEXREG|R2Reg_IDEX\(7) & ( (\EXMEMREG|Result_EXMEM\(7) & (\ALUInput2Mux|v3|v12|Q~0_combout\ & \ALUInput2Mux|v3|v12|Q~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010011000100110001000000010011000100110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EXMEMREG|ALT_INV_Result_EXMEM\(7),
	datab => \ALUInput2Mux|v3|v12|ALT_INV_Q~0_combout\,
	datac => \ALUInput2Mux|v3|v12|ALT_INV_Q~1_combout\,
	datad => \ALUInput2Mux|v3|v12|ALT_INV_Q~3_combout\,
	datae => \MEMWBREG|ALT_INV_writeData\(7),
	dataf => \IDEXREG|ALT_INV_R2Reg_IDEX\(7),
	combout => \ALUInput2Mux|v3|v7|Q~0_combout\);

\ALUInput2Mux|v3|v7|Q~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALUInput2Mux|v3|v7|Q~1_combout\ = (!\ALUInput2Mux|v3|v5|Q~0_combout\ & !\ALUInput2Mux|v3|v7|Q~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALUInput2Mux|v3|v5|ALT_INV_Q~0_combout\,
	datab => \ALUInput2Mux|v3|v7|ALT_INV_Q~0_combout\,
	combout => \ALUInput2Mux|v3|v7|Q~1_combout\);

\ALU16|V6|v12|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU16|V6|v12|Q~0_combout\ = ( \ALUInput1Mux|v3|v6|Q~1_combout\ & ( \ALUInput2Mux|v3|v6|Q~0_combout\ & ( (\IDEXREG|ALUFunc_IDEX\(0) & \ALU16|V0|v12|Q~0_combout\) ) ) ) # ( !\ALUInput1Mux|v3|v6|Q~1_combout\ & ( \ALUInput2Mux|v3|v6|Q~0_combout\ & ( 
-- (\ALU16|V0|v12|Q~0_combout\ & (!\IDEXREG|ALUFunc_IDEX\(0) $ (\ALUInput1Mux|v3|v6|Q~0_combout\))) ) ) ) # ( \ALUInput1Mux|v3|v6|Q~1_combout\ & ( !\ALUInput2Mux|v3|v6|Q~0_combout\ & ( (\ALU16|V0|v12|Q~0_combout\ & (!\IDEXREG|ALUFunc_IDEX\(0) $ 
-- (\ALUInput2Mux|v3|v5|Q~0_combout\))) ) ) ) # ( !\ALUInput1Mux|v3|v6|Q~1_combout\ & ( !\ALUInput2Mux|v3|v6|Q~0_combout\ & ( (\ALU16|V0|v12|Q~0_combout\ & (!\IDEXREG|ALUFunc_IDEX\(0) $ (!\ALUInput2Mux|v3|v5|Q~0_combout\ $ 
-- (\ALUInput1Mux|v3|v6|Q~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001000100001001000010010000100100010000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IDEXREG|ALT_INV_ALUFunc_IDEX\(0),
	datab => \ALU16|V0|v12|ALT_INV_Q~0_combout\,
	datac => \ALUInput2Mux|v3|v5|ALT_INV_Q~0_combout\,
	datad => \ALUInput1Mux|v3|v6|ALT_INV_Q~0_combout\,
	datae => \ALUInput1Mux|v3|v6|ALT_INV_Q~1_combout\,
	dataf => \ALUInput2Mux|v3|v6|ALT_INV_Q~0_combout\,
	combout => \ALU16|V6|v12|Q~0_combout\);

\ALU16|V6|v12|Q~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU16|V6|v12|Q~1_combout\ = ( \ALUInput1Mux|v3|v6|Q~1_combout\ & ( \ALUInput2Mux|v3|v6|Q~0_combout\ & ( (!\IDEXREG|ALUFunc_IDEX\(0) & \ALU16|V0|v12|Q~0_combout\) ) ) ) # ( !\ALUInput1Mux|v3|v6|Q~1_combout\ & ( \ALUInput2Mux|v3|v6|Q~0_combout\ & ( 
-- (!\IDEXREG|ALUFunc_IDEX\(0) & (\ALU16|V0|v12|Q~0_combout\ & \ALUInput1Mux|v3|v6|Q~0_combout\)) ) ) ) # ( \ALUInput1Mux|v3|v6|Q~1_combout\ & ( !\ALUInput2Mux|v3|v6|Q~0_combout\ & ( (\ALU16|V0|v12|Q~0_combout\ & (!\IDEXREG|ALUFunc_IDEX\(0) $ 
-- (!\ALUInput2Mux|v3|v5|Q~0_combout\))) ) ) ) # ( !\ALUInput1Mux|v3|v6|Q~1_combout\ & ( !\ALUInput2Mux|v3|v6|Q~0_combout\ & ( (\ALU16|V0|v12|Q~0_combout\ & (\ALUInput1Mux|v3|v6|Q~0_combout\ & (!\IDEXREG|ALUFunc_IDEX\(0) $ 
-- (!\ALUInput2Mux|v3|v5|Q~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010010000100100001001000000000001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IDEXREG|ALT_INV_ALUFunc_IDEX\(0),
	datab => \ALU16|V0|v12|ALT_INV_Q~0_combout\,
	datac => \ALUInput2Mux|v3|v5|ALT_INV_Q~0_combout\,
	datad => \ALUInput1Mux|v3|v6|ALT_INV_Q~0_combout\,
	datae => \ALUInput1Mux|v3|v6|ALT_INV_Q~1_combout\,
	dataf => \ALUInput2Mux|v3|v6|ALT_INV_Q~0_combout\,
	combout => \ALU16|V6|v12|Q~1_combout\);

\ALU16|V6|v12|Q~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU16|V6|v12|Q~2_combout\ = ( \ALU16|V6|v12|Q~0_combout\ & ( !\ALU16|V6|v12|Q~1_combout\ & ( (!\ALU16|V5|v12|Q~1_combout\ & ((!\ALU16|V5|v12|Q~0_combout\) # ((!\ALU16|V4|v12|Q~1_combout\ & !\ALU16|V4|v12|Q~2_combout\)))) ) ) ) # ( 
-- !\ALU16|V6|v12|Q~0_combout\ & ( !\ALU16|V6|v12|Q~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111110000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU16|V4|v12|ALT_INV_Q~1_combout\,
	datab => \ALU16|V4|v12|ALT_INV_Q~2_combout\,
	datac => \ALU16|V5|v12|ALT_INV_Q~0_combout\,
	datad => \ALU16|V5|v12|ALT_INV_Q~1_combout\,
	datae => \ALU16|V6|v12|ALT_INV_Q~0_combout\,
	dataf => \ALU16|V6|v12|ALT_INV_Q~1_combout\,
	combout => \ALU16|V6|v12|Q~2_combout\);

\ALU16|V21|v1|v7|Q\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU16|V21|v1|v7|Q~combout\ = ( \ALUInput2Mux|v3|v7|Q~1_combout\ & ( \ALU16|V6|v12|Q~2_combout\ & ( (!\IDEXREG|ALUFunc_IDEX\(0) & (!\ALUInput1Mux|v3|v7|Q~2_combout\ & (!\IDEXREG|ALUFunc_IDEX\(1) $ (\IDEXREG|ALUFunc_IDEX\(2))))) # 
-- (\IDEXREG|ALUFunc_IDEX\(0) & (!\ALUInput1Mux|v3|v7|Q~2_combout\ $ (((!\IDEXREG|ALUFunc_IDEX\(1)) # (\IDEXREG|ALUFunc_IDEX\(2)))))) ) ) ) # ( !\ALUInput2Mux|v3|v7|Q~1_combout\ & ( \ALU16|V6|v12|Q~2_combout\ & ( (!\ALUInput1Mux|v3|v7|Q~2_combout\ & 
-- (!\IDEXREG|ALUFunc_IDEX\(2) & ((\IDEXREG|ALUFunc_IDEX\(0)) # (\IDEXREG|ALUFunc_IDEX\(1))))) # (\ALUInput1Mux|v3|v7|Q~2_combout\ & (!\IDEXREG|ALUFunc_IDEX\(1) $ (!\IDEXREG|ALUFunc_IDEX\(0) $ (!\IDEXREG|ALUFunc_IDEX\(2))))) ) ) ) # ( 
-- \ALUInput2Mux|v3|v7|Q~1_combout\ & ( !\ALU16|V6|v12|Q~2_combout\ & ( (!\IDEXREG|ALUFunc_IDEX\(0) & ((!\IDEXREG|ALUFunc_IDEX\(1) & (!\IDEXREG|ALUFunc_IDEX\(2) & \ALUInput1Mux|v3|v7|Q~2_combout\)) # (\IDEXREG|ALUFunc_IDEX\(1) & (\IDEXREG|ALUFunc_IDEX\(2) & 
-- !\ALUInput1Mux|v3|v7|Q~2_combout\)))) # (\IDEXREG|ALUFunc_IDEX\(0) & ((!\IDEXREG|ALUFunc_IDEX\(2) $ (\ALUInput1Mux|v3|v7|Q~2_combout\)))) ) ) ) # ( !\ALUInput2Mux|v3|v7|Q~1_combout\ & ( !\ALU16|V6|v12|Q~2_combout\ & ( (!\ALUInput1Mux|v3|v7|Q~2_combout\ & 
-- (!\IDEXREG|ALUFunc_IDEX\(2) & ((!\IDEXREG|ALUFunc_IDEX\(0)) # (\IDEXREG|ALUFunc_IDEX\(1))))) # (\ALUInput1Mux|v3|v7|Q~2_combout\ & (!\IDEXREG|ALUFunc_IDEX\(0) $ (((!\IDEXREG|ALUFunc_IDEX\(1)) # (!\IDEXREG|ALUFunc_IDEX\(2)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101000000110110001101001000001101110000100101101001010000100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IDEXREG|ALT_INV_ALUFunc_IDEX\(1),
	datab => \IDEXREG|ALT_INV_ALUFunc_IDEX\(0),
	datac => \IDEXREG|ALT_INV_ALUFunc_IDEX\(2),
	datad => \ALUInput1Mux|v3|v7|ALT_INV_Q~2_combout\,
	datae => \ALUInput2Mux|v3|v7|ALT_INV_Q~1_combout\,
	dataf => \ALU16|V6|v12|ALT_INV_Q~2_combout\,
	combout => \ALU16|V21|v1|v7|Q~combout\);

\EXMEMREG|Result_EXMEM[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \ALU16|V21|v1|v7|Q~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EXMEMREG|Result_EXMEM\(7));

\PC|gen_register:8:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \IFIDREG|outInstruction\(8),
	asdata => \IFIDREG|outPC\(8),
	sload => \Controller|isJType~0_combout\,
	ena => \Trap|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|gen_register:8:vff|O~q\);

\IFIDREG|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \IFIDREG|Add0~29_sumout\ = SUM(( \PC|gen_register:8:vff|O~q\ ) + ( GND ) + ( \IFIDREG|Add0~26\ ))
-- \IFIDREG|Add0~30\ = CARRY(( \PC|gen_register:8:vff|O~q\ ) + ( GND ) + ( \IFIDREG|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|gen_register:8:vff|ALT_INV_O~q\,
	cin => \IFIDREG|Add0~26\,
	sumout => \IFIDREG|Add0~29_sumout\,
	cout => \IFIDREG|Add0~30\);

\IFIDREG|outPC[8]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \IFIDREG|outPC[8]~9_combout\ = ( \instr[15]~input_o\ & ( \IFIDREG|Add0~29_sumout\ & ( (\clock~input_o\ & (((!\instr[13]~input_o\) # (!\instr[14]~input_o\)) # (\instr[12]~input_o\))) ) ) ) # ( !\instr[15]~input_o\ & ( \IFIDREG|Add0~29_sumout\ & ( 
-- \clock~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_clock~input_o\,
	datab => \ALT_INV_instr[12]~input_o\,
	datac => \ALT_INV_instr[13]~input_o\,
	datad => \ALT_INV_instr[14]~input_o\,
	datae => \ALT_INV_instr[15]~input_o\,
	dataf => \IFIDREG|ALT_INV_Add0~29_sumout\,
	combout => \IFIDREG|outPC[8]~9_combout\);

\IFIDREG|outPC[8]\ : cyclonev_lcell_comb
-- Equation(s):
-- \IFIDREG|outPC\(8) = ( \IFIDREG|outPC\(8) & ( \IFIDREG|outPC[15]~1_combout\ & ( \IFIDREG|outPC[8]~9_combout\ ) ) ) # ( !\IFIDREG|outPC\(8) & ( \IFIDREG|outPC[15]~1_combout\ & ( \IFIDREG|outPC[8]~9_combout\ ) ) ) # ( \IFIDREG|outPC\(8) & ( 
-- !\IFIDREG|outPC[15]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \IFIDREG|ALT_INV_outPC[8]~9_combout\,
	datae => \IFIDREG|ALT_INV_outPC\(8),
	dataf => \IFIDREG|ALT_INV_outPC[15]~1_combout\,
	combout => \IFIDREG|outPC\(8));

\fromData[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fromData(8),
	o => \fromData[8]~input_o\);

\MEMWB_inputData_sig[8]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMWB_inputData_sig[8]~8_combout\ = (!\EXMEMREG|isLW_EXMEM~q\ & (\EXMEMREG|Result_EXMEM\(8))) # (\EXMEMREG|isLW_EXMEM~q\ & ((\fromData[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011101000111010001110100011101000111010001110100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EXMEMREG|ALT_INV_Result_EXMEM\(8),
	datab => \EXMEMREG|ALT_INV_isLW_EXMEM~q\,
	datac => \ALT_INV_fromData[8]~input_o\,
	combout => \MEMWB_inputData_sig[8]~8_combout\);

\keyData[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_keyData(8),
	o => \keyData[8]~input_o\);

\MEMWBREG|writeData[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \MEMWB_inputData_sig[8]~8_combout\,
	asdata => \keyData[8]~input_o\,
	sload => \EXMEMREG|ReadDigit_EXMEM~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMWBREG|writeData\(8));

\RegisterFile|reg4|gen_register:8:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~input_o\,
	d => \MEMWBREG|writeData\(8),
	ena => \RegisterFile|v0|v12|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegisterFile|reg4|gen_register:8:vff|O~q\);

\RegisterFile|reg5|gen_register:8:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~input_o\,
	d => \MEMWBREG|writeData\(8),
	ena => \RegisterFile|v0|v14|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegisterFile|reg5|gen_register:8:vff|O~q\);

\RegisterFile|reg6|gen_register:8:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~input_o\,
	d => \MEMWBREG|writeData\(8),
	ena => \RegisterFile|v0|v16|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegisterFile|reg6|gen_register:8:vff|O~q\);

\RegisterFile|reg7|gen_register:8:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~input_o\,
	d => \MEMWBREG|writeData\(8),
	ena => \RegisterFile|v0|v18|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegisterFile|reg7|gen_register:8:vff|O~q\);

\RegisterFile|read_mux1|v6|v3|v8|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \RegisterFile|read_mux1|v6|v3|v8|Q~0_combout\ = ( \IFIDREG|outInstruction\(9) & ( \IFIDREG|outInstruction\(10) & ( \RegisterFile|reg7|gen_register:8:vff|O~q\ ) ) ) # ( !\IFIDREG|outInstruction\(9) & ( \IFIDREG|outInstruction\(10) & ( 
-- \RegisterFile|reg6|gen_register:8:vff|O~q\ ) ) ) # ( \IFIDREG|outInstruction\(9) & ( !\IFIDREG|outInstruction\(10) & ( \RegisterFile|reg5|gen_register:8:vff|O~q\ ) ) ) # ( !\IFIDREG|outInstruction\(9) & ( !\IFIDREG|outInstruction\(10) & ( 
-- \RegisterFile|reg4|gen_register:8:vff|O~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegisterFile|reg4|gen_register:8:vff|ALT_INV_O~q\,
	datab => \RegisterFile|reg5|gen_register:8:vff|ALT_INV_O~q\,
	datac => \RegisterFile|reg6|gen_register:8:vff|ALT_INV_O~q\,
	datad => \RegisterFile|reg7|gen_register:8:vff|ALT_INV_O~q\,
	datae => \IFIDREG|ALT_INV_outInstruction\(9),
	dataf => \IFIDREG|ALT_INV_outInstruction\(10),
	combout => \RegisterFile|read_mux1|v6|v3|v8|Q~0_combout\);

\RegisterFile|reg3|gen_register:8:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~input_o\,
	d => \MEMWBREG|writeData\(8),
	ena => \RegisterFile|v0|v10|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegisterFile|reg3|gen_register:8:vff|O~q\);

\RegisterFile|reg2|gen_register:8:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~input_o\,
	d => \MEMWBREG|writeData\(8),
	ena => \RegisterFile|v0|v8|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegisterFile|reg2|gen_register:8:vff|O~q\);

\RegisterFile|reg1|gen_register:8:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~input_o\,
	d => \MEMWBREG|writeData\(8),
	ena => \RegisterFile|v0|v6|Q~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegisterFile|reg1|gen_register:8:vff|O~q\);

\RegisterFile|read_mux1|v6|v3|v8|Q~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \RegisterFile|read_mux1|v6|v3|v8|Q~1_combout\ = ( !\IFIDREG|outInstruction\(11) & ( (!\IFIDREG|outInstruction\(10) & (\IFIDREG|outInstruction\(9) & (\RegisterFile|reg1|gen_register:8:vff|O~q\))) # (\IFIDREG|outInstruction\(10) & 
-- ((!\IFIDREG|outInstruction\(9) & (((\RegisterFile|reg2|gen_register:8:vff|O~q\)))) # (\IFIDREG|outInstruction\(9) & (((\RegisterFile|reg3|gen_register:8:vff|O~q\)))))) ) ) # ( \IFIDREG|outInstruction\(11) & ( 
-- (((\RegisterFile|read_mux1|v6|v3|v8|Q~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001000010011000011110000111101000110010101110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IFIDREG|ALT_INV_outInstruction\(10),
	datab => \IFIDREG|ALT_INV_outInstruction\(9),
	datac => \RegisterFile|read_mux1|v6|v3|v8|ALT_INV_Q~0_combout\,
	datad => \RegisterFile|reg3|gen_register:8:vff|ALT_INV_O~q\,
	datae => \IFIDREG|ALT_INV_outInstruction\(11),
	dataf => \RegisterFile|reg2|gen_register:8:vff|ALT_INV_O~q\,
	datag => \RegisterFile|reg1|gen_register:8:vff|ALT_INV_O~q\,
	combout => \RegisterFile|read_mux1|v6|v3|v8|Q~1_combout\);

\IDEXREG|R1Reg_IDEX[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \RegisterFile|read_mux1|v6|v3|v8|Q~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEXREG|R1Reg_IDEX\(8));

\ALUInput1Mux|v3|v8|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALUInput1Mux|v3|v8|Q~0_combout\ = ( \MEMWBREG|writeData\(8) & ( \IDEXREG|R1Reg_IDEX\(8) & ( (!\ALUInput1Mux|v3|v2|Q~0_combout\ & ((\ALUInput1Mux|v3|v2|Q~1_combout\) # (\EXMEMREG|Result_EXMEM\(8)))) ) ) ) # ( !\MEMWBREG|writeData\(8) & ( 
-- \IDEXREG|R1Reg_IDEX\(8) & ( (!\ALUInput1Mux|v3|v2|Q~0_combout\ & ((!\ALUInput1Mux|v3|v2|Q~1_combout\ & (\EXMEMREG|Result_EXMEM\(8))) # (\ALUInput1Mux|v3|v2|Q~1_combout\ & ((!\ALUInput1Mux|v3|v2|Q~7_combout\))))) ) ) ) # ( \MEMWBREG|writeData\(8) & ( 
-- !\IDEXREG|R1Reg_IDEX\(8) & ( (!\ALUInput1Mux|v3|v2|Q~0_combout\ & ((!\ALUInput1Mux|v3|v2|Q~1_combout\ & (\EXMEMREG|Result_EXMEM\(8))) # (\ALUInput1Mux|v3|v2|Q~1_combout\ & ((\ALUInput1Mux|v3|v2|Q~7_combout\))))) ) ) ) # ( !\MEMWBREG|writeData\(8) & ( 
-- !\IDEXREG|R1Reg_IDEX\(8) & ( (\EXMEMREG|Result_EXMEM\(8) & (!\ALUInput1Mux|v3|v2|Q~0_combout\ & !\ALUInput1Mux|v3|v2|Q~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000010000000100110001001100010000000100110001001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EXMEMREG|ALT_INV_Result_EXMEM\(8),
	datab => \ALUInput1Mux|v3|v2|ALT_INV_Q~0_combout\,
	datac => \ALUInput1Mux|v3|v2|ALT_INV_Q~1_combout\,
	datad => \ALUInput1Mux|v3|v2|ALT_INV_Q~7_combout\,
	datae => \MEMWBREG|ALT_INV_writeData\(8),
	dataf => \IDEXREG|ALT_INV_R1Reg_IDEX\(8),
	combout => \ALUInput1Mux|v3|v8|Q~0_combout\);

\ALUInput1Mux|v3|v8|Q~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALUInput1Mux|v3|v8|Q~1_combout\ = (!\ALUInput1Mux|v3|v8|Q~0_combout\ & ((!\ALUInput1Mux|v3|v2|Q~0_combout\) # (!\IFIDREG|outPC\(8))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110000011100000111000001110000011100000111000001110000011100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALUInput1Mux|v3|v2|ALT_INV_Q~0_combout\,
	datab => \IFIDREG|ALT_INV_outPC\(8),
	datac => \ALUInput1Mux|v3|v8|ALT_INV_Q~0_combout\,
	combout => \ALUInput1Mux|v3|v8|Q~1_combout\);

\RegisterFile|read_mux2|v6|v3|v8|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \RegisterFile|read_mux2|v6|v3|v8|Q~0_combout\ = ( \IFIDREG|outInstruction\(6) & ( \IFIDREG|outInstruction\(7) & ( \RegisterFile|reg7|gen_register:8:vff|O~q\ ) ) ) # ( !\IFIDREG|outInstruction\(6) & ( \IFIDREG|outInstruction\(7) & ( 
-- \RegisterFile|reg6|gen_register:8:vff|O~q\ ) ) ) # ( \IFIDREG|outInstruction\(6) & ( !\IFIDREG|outInstruction\(7) & ( \RegisterFile|reg5|gen_register:8:vff|O~q\ ) ) ) # ( !\IFIDREG|outInstruction\(6) & ( !\IFIDREG|outInstruction\(7) & ( 
-- \RegisterFile|reg4|gen_register:8:vff|O~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegisterFile|reg4|gen_register:8:vff|ALT_INV_O~q\,
	datab => \RegisterFile|reg5|gen_register:8:vff|ALT_INV_O~q\,
	datac => \RegisterFile|reg6|gen_register:8:vff|ALT_INV_O~q\,
	datad => \RegisterFile|reg7|gen_register:8:vff|ALT_INV_O~q\,
	datae => \IFIDREG|ALT_INV_outInstruction\(6),
	dataf => \IFIDREG|ALT_INV_outInstruction\(7),
	combout => \RegisterFile|read_mux2|v6|v3|v8|Q~0_combout\);

\RegisterFile|read_mux2|v6|v3|v8|Q~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \RegisterFile|read_mux2|v6|v3|v8|Q~1_combout\ = ( !\IFIDREG|outInstruction\(8) & ( (!\IFIDREG|outInstruction\(7) & (\IFIDREG|outInstruction\(6) & (\RegisterFile|reg1|gen_register:8:vff|O~q\))) # (\IFIDREG|outInstruction\(7) & 
-- ((!\IFIDREG|outInstruction\(6) & (((\RegisterFile|reg2|gen_register:8:vff|O~q\)))) # (\IFIDREG|outInstruction\(6) & (((\RegisterFile|reg3|gen_register:8:vff|O~q\)))))) ) ) # ( \IFIDREG|outInstruction\(8) & ( 
-- (((\RegisterFile|read_mux2|v6|v3|v8|Q~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001000010011000011110000111101000110010101110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IFIDREG|ALT_INV_outInstruction\(7),
	datab => \IFIDREG|ALT_INV_outInstruction\(6),
	datac => \RegisterFile|read_mux2|v6|v3|v8|ALT_INV_Q~0_combout\,
	datad => \RegisterFile|reg3|gen_register:8:vff|ALT_INV_O~q\,
	datae => \IFIDREG|ALT_INV_outInstruction\(8),
	dataf => \RegisterFile|reg2|gen_register:8:vff|ALT_INV_O~q\,
	datag => \RegisterFile|reg1|gen_register:8:vff|ALT_INV_O~q\,
	combout => \RegisterFile|read_mux2|v6|v3|v8|Q~1_combout\);

\IDEXREG|R2Reg_IDEX[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \RegisterFile|read_mux2|v6|v3|v8|Q~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEXREG|R2Reg_IDEX\(8));

\ALUInput2Mux|v3|v8|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALUInput2Mux|v3|v8|Q~0_combout\ = ( \MEMWBREG|writeData\(8) & ( \IDEXREG|R2Reg_IDEX\(8) & ( (\ALUInput2Mux|v3|v12|Q~0_combout\ & ((!\ALUInput2Mux|v3|v12|Q~1_combout\) # (\EXMEMREG|Result_EXMEM\(8)))) ) ) ) # ( !\MEMWBREG|writeData\(8) & ( 
-- \IDEXREG|R2Reg_IDEX\(8) & ( (\ALUInput2Mux|v3|v12|Q~0_combout\ & ((!\ALUInput2Mux|v3|v12|Q~1_combout\ & ((!\ALUInput2Mux|v3|v12|Q~3_combout\))) # (\ALUInput2Mux|v3|v12|Q~1_combout\ & (\EXMEMREG|Result_EXMEM\(8))))) ) ) ) # ( \MEMWBREG|writeData\(8) & ( 
-- !\IDEXREG|R2Reg_IDEX\(8) & ( (\ALUInput2Mux|v3|v12|Q~0_combout\ & ((!\ALUInput2Mux|v3|v12|Q~1_combout\ & ((\ALUInput2Mux|v3|v12|Q~3_combout\))) # (\ALUInput2Mux|v3|v12|Q~1_combout\ & (\EXMEMREG|Result_EXMEM\(8))))) ) ) ) # ( !\MEMWBREG|writeData\(8) & ( 
-- !\IDEXREG|R2Reg_IDEX\(8) & ( (\EXMEMREG|Result_EXMEM\(8) & (\ALUInput2Mux|v3|v12|Q~0_combout\ & \ALUInput2Mux|v3|v12|Q~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010011000100110001000000010011000100110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EXMEMREG|ALT_INV_Result_EXMEM\(8),
	datab => \ALUInput2Mux|v3|v12|ALT_INV_Q~0_combout\,
	datac => \ALUInput2Mux|v3|v12|ALT_INV_Q~1_combout\,
	datad => \ALUInput2Mux|v3|v12|ALT_INV_Q~3_combout\,
	datae => \MEMWBREG|ALT_INV_writeData\(8),
	dataf => \IDEXREG|ALT_INV_R2Reg_IDEX\(8),
	combout => \ALUInput2Mux|v3|v8|Q~0_combout\);

\ALUInput2Mux|v3|v8|Q~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALUInput2Mux|v3|v8|Q~1_combout\ = (!\ALUInput2Mux|v3|v5|Q~0_combout\ & !\ALUInput2Mux|v3|v8|Q~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALUInput2Mux|v3|v5|ALT_INV_Q~0_combout\,
	datab => \ALUInput2Mux|v3|v8|ALT_INV_Q~0_combout\,
	combout => \ALUInput2Mux|v3|v8|Q~1_combout\);

\ALU16|V7|v12|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU16|V7|v12|Q~0_combout\ = ( \ALUInput1Mux|v3|v7|Q~1_combout\ & ( \ALUInput2Mux|v3|v7|Q~0_combout\ & ( (\IDEXREG|ALUFunc_IDEX\(0) & \ALU16|V0|v12|Q~0_combout\) ) ) ) # ( !\ALUInput1Mux|v3|v7|Q~1_combout\ & ( \ALUInput2Mux|v3|v7|Q~0_combout\ & ( 
-- (\ALU16|V0|v12|Q~0_combout\ & (!\IDEXREG|ALUFunc_IDEX\(0) $ (\ALUInput1Mux|v3|v7|Q~0_combout\))) ) ) ) # ( \ALUInput1Mux|v3|v7|Q~1_combout\ & ( !\ALUInput2Mux|v3|v7|Q~0_combout\ & ( (\ALU16|V0|v12|Q~0_combout\ & (!\IDEXREG|ALUFunc_IDEX\(0) $ 
-- (\ALUInput2Mux|v3|v5|Q~0_combout\))) ) ) ) # ( !\ALUInput1Mux|v3|v7|Q~1_combout\ & ( !\ALUInput2Mux|v3|v7|Q~0_combout\ & ( (\ALU16|V0|v12|Q~0_combout\ & (!\IDEXREG|ALUFunc_IDEX\(0) $ (!\ALUInput2Mux|v3|v5|Q~0_combout\ $ 
-- (\ALUInput1Mux|v3|v7|Q~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001000100001001000010010000100100010000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IDEXREG|ALT_INV_ALUFunc_IDEX\(0),
	datab => \ALU16|V0|v12|ALT_INV_Q~0_combout\,
	datac => \ALUInput2Mux|v3|v5|ALT_INV_Q~0_combout\,
	datad => \ALUInput1Mux|v3|v7|ALT_INV_Q~0_combout\,
	datae => \ALUInput1Mux|v3|v7|ALT_INV_Q~1_combout\,
	dataf => \ALUInput2Mux|v3|v7|ALT_INV_Q~0_combout\,
	combout => \ALU16|V7|v12|Q~0_combout\);

\ALU16|V7|v12|Q~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU16|V7|v12|Q~1_combout\ = ( \ALUInput1Mux|v3|v7|Q~1_combout\ & ( \ALUInput2Mux|v3|v7|Q~0_combout\ & ( (!\IDEXREG|ALUFunc_IDEX\(0) & \ALU16|V0|v12|Q~0_combout\) ) ) ) # ( !\ALUInput1Mux|v3|v7|Q~1_combout\ & ( \ALUInput2Mux|v3|v7|Q~0_combout\ & ( 
-- (!\IDEXREG|ALUFunc_IDEX\(0) & (\ALU16|V0|v12|Q~0_combout\ & \ALUInput1Mux|v3|v7|Q~0_combout\)) ) ) ) # ( \ALUInput1Mux|v3|v7|Q~1_combout\ & ( !\ALUInput2Mux|v3|v7|Q~0_combout\ & ( (\ALU16|V0|v12|Q~0_combout\ & (!\IDEXREG|ALUFunc_IDEX\(0) $ 
-- (!\ALUInput2Mux|v3|v5|Q~0_combout\))) ) ) ) # ( !\ALUInput1Mux|v3|v7|Q~1_combout\ & ( !\ALUInput2Mux|v3|v7|Q~0_combout\ & ( (\ALU16|V0|v12|Q~0_combout\ & (\ALUInput1Mux|v3|v7|Q~0_combout\ & (!\IDEXREG|ALUFunc_IDEX\(0) $ 
-- (!\ALUInput2Mux|v3|v5|Q~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010010000100100001001000000000001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IDEXREG|ALT_INV_ALUFunc_IDEX\(0),
	datab => \ALU16|V0|v12|ALT_INV_Q~0_combout\,
	datac => \ALUInput2Mux|v3|v5|ALT_INV_Q~0_combout\,
	datad => \ALUInput1Mux|v3|v7|ALT_INV_Q~0_combout\,
	datae => \ALUInput1Mux|v3|v7|ALT_INV_Q~1_combout\,
	dataf => \ALUInput2Mux|v3|v7|ALT_INV_Q~0_combout\,
	combout => \ALU16|V7|v12|Q~1_combout\);

\ALU16|V7|v12|Q~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU16|V7|v12|Q~2_combout\ = (!\ALU16|V7|v12|Q~1_combout\ & ((!\ALU16|V7|v12|Q~0_combout\) # (\ALU16|V6|v12|Q~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101000011010000110100001101000011010000110100001101000011010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU16|V6|v12|ALT_INV_Q~2_combout\,
	datab => \ALU16|V7|v12|ALT_INV_Q~0_combout\,
	datac => \ALU16|V7|v12|ALT_INV_Q~1_combout\,
	combout => \ALU16|V7|v12|Q~2_combout\);

\ALU16|V21|v1|v8|Q\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU16|V21|v1|v8|Q~combout\ = ( \ALUInput2Mux|v3|v8|Q~1_combout\ & ( \ALU16|V7|v12|Q~2_combout\ & ( (!\IDEXREG|ALUFunc_IDEX\(0) & (!\ALUInput1Mux|v3|v8|Q~1_combout\ & (!\IDEXREG|ALUFunc_IDEX\(1) $ (\IDEXREG|ALUFunc_IDEX\(2))))) # 
-- (\IDEXREG|ALUFunc_IDEX\(0) & (!\ALUInput1Mux|v3|v8|Q~1_combout\ $ (((!\IDEXREG|ALUFunc_IDEX\(1)) # (\IDEXREG|ALUFunc_IDEX\(2)))))) ) ) ) # ( !\ALUInput2Mux|v3|v8|Q~1_combout\ & ( \ALU16|V7|v12|Q~2_combout\ & ( (!\ALUInput1Mux|v3|v8|Q~1_combout\ & 
-- (!\IDEXREG|ALUFunc_IDEX\(2) & ((\IDEXREG|ALUFunc_IDEX\(0)) # (\IDEXREG|ALUFunc_IDEX\(1))))) # (\ALUInput1Mux|v3|v8|Q~1_combout\ & (!\IDEXREG|ALUFunc_IDEX\(1) $ (!\IDEXREG|ALUFunc_IDEX\(0) $ (!\IDEXREG|ALUFunc_IDEX\(2))))) ) ) ) # ( 
-- \ALUInput2Mux|v3|v8|Q~1_combout\ & ( !\ALU16|V7|v12|Q~2_combout\ & ( (!\IDEXREG|ALUFunc_IDEX\(0) & ((!\IDEXREG|ALUFunc_IDEX\(1) & (!\IDEXREG|ALUFunc_IDEX\(2) & \ALUInput1Mux|v3|v8|Q~1_combout\)) # (\IDEXREG|ALUFunc_IDEX\(1) & (\IDEXREG|ALUFunc_IDEX\(2) & 
-- !\ALUInput1Mux|v3|v8|Q~1_combout\)))) # (\IDEXREG|ALUFunc_IDEX\(0) & ((!\IDEXREG|ALUFunc_IDEX\(2) $ (\ALUInput1Mux|v3|v8|Q~1_combout\)))) ) ) ) # ( !\ALUInput2Mux|v3|v8|Q~1_combout\ & ( !\ALU16|V7|v12|Q~2_combout\ & ( (!\ALUInput1Mux|v3|v8|Q~1_combout\ & 
-- (!\IDEXREG|ALUFunc_IDEX\(2) & ((!\IDEXREG|ALUFunc_IDEX\(0)) # (\IDEXREG|ALUFunc_IDEX\(1))))) # (\ALUInput1Mux|v3|v8|Q~1_combout\ & (!\IDEXREG|ALUFunc_IDEX\(0) $ (((!\IDEXREG|ALUFunc_IDEX\(1)) # (!\IDEXREG|ALUFunc_IDEX\(2)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101000000110110001101001000001101110000100101101001010000100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IDEXREG|ALT_INV_ALUFunc_IDEX\(1),
	datab => \IDEXREG|ALT_INV_ALUFunc_IDEX\(0),
	datac => \IDEXREG|ALT_INV_ALUFunc_IDEX\(2),
	datad => \ALUInput1Mux|v3|v8|ALT_INV_Q~1_combout\,
	datae => \ALUInput2Mux|v3|v8|ALT_INV_Q~1_combout\,
	dataf => \ALU16|V7|v12|ALT_INV_Q~2_combout\,
	combout => \ALU16|V21|v1|v8|Q~combout\);

\EXMEMREG|Result_EXMEM[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \ALU16|V21|v1|v8|Q~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EXMEMREG|Result_EXMEM\(8));

\PC|gen_register:9:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \IFIDREG|outInstruction\(9),
	asdata => \IFIDREG|outPC\(9),
	sload => \Controller|isJType~0_combout\,
	ena => \Trap|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|gen_register:9:vff|O~q\);

\IFIDREG|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \IFIDREG|Add0~33_sumout\ = SUM(( \PC|gen_register:9:vff|O~q\ ) + ( GND ) + ( \IFIDREG|Add0~30\ ))
-- \IFIDREG|Add0~34\ = CARRY(( \PC|gen_register:9:vff|O~q\ ) + ( GND ) + ( \IFIDREG|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|gen_register:9:vff|ALT_INV_O~q\,
	cin => \IFIDREG|Add0~30\,
	sumout => \IFIDREG|Add0~33_sumout\,
	cout => \IFIDREG|Add0~34\);

\IFIDREG|outPC[9]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \IFIDREG|outPC[9]~10_combout\ = ( \instr[15]~input_o\ & ( \IFIDREG|Add0~33_sumout\ & ( (\clock~input_o\ & (((!\instr[13]~input_o\) # (!\instr[14]~input_o\)) # (\instr[12]~input_o\))) ) ) ) # ( !\instr[15]~input_o\ & ( \IFIDREG|Add0~33_sumout\ & ( 
-- \clock~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_clock~input_o\,
	datab => \ALT_INV_instr[12]~input_o\,
	datac => \ALT_INV_instr[13]~input_o\,
	datad => \ALT_INV_instr[14]~input_o\,
	datae => \ALT_INV_instr[15]~input_o\,
	dataf => \IFIDREG|ALT_INV_Add0~33_sumout\,
	combout => \IFIDREG|outPC[9]~10_combout\);

\IFIDREG|outPC[9]\ : cyclonev_lcell_comb
-- Equation(s):
-- \IFIDREG|outPC\(9) = ( \IFIDREG|outPC\(9) & ( \IFIDREG|outPC[15]~1_combout\ & ( \IFIDREG|outPC[9]~10_combout\ ) ) ) # ( !\IFIDREG|outPC\(9) & ( \IFIDREG|outPC[15]~1_combout\ & ( \IFIDREG|outPC[9]~10_combout\ ) ) ) # ( \IFIDREG|outPC\(9) & ( 
-- !\IFIDREG|outPC[15]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \IFIDREG|ALT_INV_outPC[9]~10_combout\,
	datae => \IFIDREG|ALT_INV_outPC\(9),
	dataf => \IFIDREG|ALT_INV_outPC[15]~1_combout\,
	combout => \IFIDREG|outPC\(9));

\ALUInput1Mux|v3|v9|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALUInput1Mux|v3|v9|Q~0_combout\ = (\ALUInput1Mux|v3|v2|Q~0_combout\ & \IFIDREG|outPC\(9))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALUInput1Mux|v3|v2|ALT_INV_Q~0_combout\,
	datab => \IFIDREG|ALT_INV_outPC\(9),
	combout => \ALUInput1Mux|v3|v9|Q~0_combout\);

\fromData[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fromData(9),
	o => \fromData[9]~input_o\);

\MEMWB_inputData_sig[9]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMWB_inputData_sig[9]~9_combout\ = (!\EXMEMREG|isLW_EXMEM~q\ & (\EXMEMREG|Result_EXMEM\(9))) # (\EXMEMREG|isLW_EXMEM~q\ & ((\fromData[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011101000111010001110100011101000111010001110100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EXMEMREG|ALT_INV_Result_EXMEM\(9),
	datab => \EXMEMREG|ALT_INV_isLW_EXMEM~q\,
	datac => \ALT_INV_fromData[9]~input_o\,
	combout => \MEMWB_inputData_sig[9]~9_combout\);

\keyData[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_keyData(9),
	o => \keyData[9]~input_o\);

\MEMWBREG|writeData[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \MEMWB_inputData_sig[9]~9_combout\,
	asdata => \keyData[9]~input_o\,
	sload => \EXMEMREG|ReadDigit_EXMEM~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMWBREG|writeData\(9));

\RegisterFile|reg4|gen_register:9:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~input_o\,
	d => \MEMWBREG|writeData\(9),
	ena => \RegisterFile|v0|v12|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegisterFile|reg4|gen_register:9:vff|O~q\);

\RegisterFile|reg5|gen_register:9:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~input_o\,
	d => \MEMWBREG|writeData\(9),
	ena => \RegisterFile|v0|v14|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegisterFile|reg5|gen_register:9:vff|O~q\);

\RegisterFile|reg6|gen_register:9:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~input_o\,
	d => \MEMWBREG|writeData\(9),
	ena => \RegisterFile|v0|v16|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegisterFile|reg6|gen_register:9:vff|O~q\);

\RegisterFile|reg7|gen_register:9:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~input_o\,
	d => \MEMWBREG|writeData\(9),
	ena => \RegisterFile|v0|v18|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegisterFile|reg7|gen_register:9:vff|O~q\);

\RegisterFile|read_mux1|v6|v3|v9|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \RegisterFile|read_mux1|v6|v3|v9|Q~0_combout\ = ( \IFIDREG|outInstruction\(9) & ( \IFIDREG|outInstruction\(10) & ( \RegisterFile|reg7|gen_register:9:vff|O~q\ ) ) ) # ( !\IFIDREG|outInstruction\(9) & ( \IFIDREG|outInstruction\(10) & ( 
-- \RegisterFile|reg6|gen_register:9:vff|O~q\ ) ) ) # ( \IFIDREG|outInstruction\(9) & ( !\IFIDREG|outInstruction\(10) & ( \RegisterFile|reg5|gen_register:9:vff|O~q\ ) ) ) # ( !\IFIDREG|outInstruction\(9) & ( !\IFIDREG|outInstruction\(10) & ( 
-- \RegisterFile|reg4|gen_register:9:vff|O~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegisterFile|reg4|gen_register:9:vff|ALT_INV_O~q\,
	datab => \RegisterFile|reg5|gen_register:9:vff|ALT_INV_O~q\,
	datac => \RegisterFile|reg6|gen_register:9:vff|ALT_INV_O~q\,
	datad => \RegisterFile|reg7|gen_register:9:vff|ALT_INV_O~q\,
	datae => \IFIDREG|ALT_INV_outInstruction\(9),
	dataf => \IFIDREG|ALT_INV_outInstruction\(10),
	combout => \RegisterFile|read_mux1|v6|v3|v9|Q~0_combout\);

\RegisterFile|reg3|gen_register:9:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~input_o\,
	d => \MEMWBREG|writeData\(9),
	ena => \RegisterFile|v0|v10|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegisterFile|reg3|gen_register:9:vff|O~q\);

\RegisterFile|reg2|gen_register:9:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~input_o\,
	d => \MEMWBREG|writeData\(9),
	ena => \RegisterFile|v0|v8|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegisterFile|reg2|gen_register:9:vff|O~q\);

\RegisterFile|reg1|gen_register:9:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~input_o\,
	d => \MEMWBREG|writeData\(9),
	ena => \RegisterFile|v0|v6|Q~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegisterFile|reg1|gen_register:9:vff|O~q\);

\RegisterFile|read_mux1|v6|v3|v9|Q~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \RegisterFile|read_mux1|v6|v3|v9|Q~1_combout\ = ( !\IFIDREG|outInstruction\(11) & ( (!\IFIDREG|outInstruction\(10) & (\IFIDREG|outInstruction\(9) & (\RegisterFile|reg1|gen_register:9:vff|O~q\))) # (\IFIDREG|outInstruction\(10) & 
-- ((!\IFIDREG|outInstruction\(9) & (((\RegisterFile|reg2|gen_register:9:vff|O~q\)))) # (\IFIDREG|outInstruction\(9) & (((\RegisterFile|reg3|gen_register:9:vff|O~q\)))))) ) ) # ( \IFIDREG|outInstruction\(11) & ( 
-- (((\RegisterFile|read_mux1|v6|v3|v9|Q~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001000010011000011110000111101000110010101110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IFIDREG|ALT_INV_outInstruction\(10),
	datab => \IFIDREG|ALT_INV_outInstruction\(9),
	datac => \RegisterFile|read_mux1|v6|v3|v9|ALT_INV_Q~0_combout\,
	datad => \RegisterFile|reg3|gen_register:9:vff|ALT_INV_O~q\,
	datae => \IFIDREG|ALT_INV_outInstruction\(11),
	dataf => \RegisterFile|reg2|gen_register:9:vff|ALT_INV_O~q\,
	datag => \RegisterFile|reg1|gen_register:9:vff|ALT_INV_O~q\,
	combout => \RegisterFile|read_mux1|v6|v3|v9|Q~1_combout\);

\IDEXREG|R1Reg_IDEX[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \RegisterFile|read_mux1|v6|v3|v9|Q~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEXREG|R1Reg_IDEX\(9));

\ALUInput1Mux|v3|v9|Q~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALUInput1Mux|v3|v9|Q~1_combout\ = ( \MEMWBREG|writeData\(9) & ( \IDEXREG|R1Reg_IDEX\(9) & ( (!\ALUInput1Mux|v3|v2|Q~0_combout\ & ((\ALUInput1Mux|v3|v2|Q~1_combout\) # (\EXMEMREG|Result_EXMEM\(9)))) ) ) ) # ( !\MEMWBREG|writeData\(9) & ( 
-- \IDEXREG|R1Reg_IDEX\(9) & ( (!\ALUInput1Mux|v3|v2|Q~0_combout\ & ((!\ALUInput1Mux|v3|v2|Q~1_combout\ & (\EXMEMREG|Result_EXMEM\(9))) # (\ALUInput1Mux|v3|v2|Q~1_combout\ & ((!\ALUInput1Mux|v3|v2|Q~7_combout\))))) ) ) ) # ( \MEMWBREG|writeData\(9) & ( 
-- !\IDEXREG|R1Reg_IDEX\(9) & ( (!\ALUInput1Mux|v3|v2|Q~0_combout\ & ((!\ALUInput1Mux|v3|v2|Q~1_combout\ & (\EXMEMREG|Result_EXMEM\(9))) # (\ALUInput1Mux|v3|v2|Q~1_combout\ & ((\ALUInput1Mux|v3|v2|Q~7_combout\))))) ) ) ) # ( !\MEMWBREG|writeData\(9) & ( 
-- !\IDEXREG|R1Reg_IDEX\(9) & ( (\EXMEMREG|Result_EXMEM\(9) & (!\ALUInput1Mux|v3|v2|Q~0_combout\ & !\ALUInput1Mux|v3|v2|Q~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000010000000100110001001100010000000100110001001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EXMEMREG|ALT_INV_Result_EXMEM\(9),
	datab => \ALUInput1Mux|v3|v2|ALT_INV_Q~0_combout\,
	datac => \ALUInput1Mux|v3|v2|ALT_INV_Q~1_combout\,
	datad => \ALUInput1Mux|v3|v2|ALT_INV_Q~7_combout\,
	datae => \MEMWBREG|ALT_INV_writeData\(9),
	dataf => \IDEXREG|ALT_INV_R1Reg_IDEX\(9),
	combout => \ALUInput1Mux|v3|v9|Q~1_combout\);

\ALUInput1Mux|v3|v9|Q~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALUInput1Mux|v3|v9|Q~2_combout\ = (!\ALUInput1Mux|v3|v9|Q~0_combout\ & !\ALUInput1Mux|v3|v9|Q~1_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALUInput1Mux|v3|v9|ALT_INV_Q~0_combout\,
	datab => \ALUInput1Mux|v3|v9|ALT_INV_Q~1_combout\,
	combout => \ALUInput1Mux|v3|v9|Q~2_combout\);

\RegisterFile|read_mux2|v6|v3|v9|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \RegisterFile|read_mux2|v6|v3|v9|Q~0_combout\ = ( \IFIDREG|outInstruction\(6) & ( \IFIDREG|outInstruction\(7) & ( \RegisterFile|reg7|gen_register:9:vff|O~q\ ) ) ) # ( !\IFIDREG|outInstruction\(6) & ( \IFIDREG|outInstruction\(7) & ( 
-- \RegisterFile|reg6|gen_register:9:vff|O~q\ ) ) ) # ( \IFIDREG|outInstruction\(6) & ( !\IFIDREG|outInstruction\(7) & ( \RegisterFile|reg5|gen_register:9:vff|O~q\ ) ) ) # ( !\IFIDREG|outInstruction\(6) & ( !\IFIDREG|outInstruction\(7) & ( 
-- \RegisterFile|reg4|gen_register:9:vff|O~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegisterFile|reg4|gen_register:9:vff|ALT_INV_O~q\,
	datab => \RegisterFile|reg5|gen_register:9:vff|ALT_INV_O~q\,
	datac => \RegisterFile|reg6|gen_register:9:vff|ALT_INV_O~q\,
	datad => \RegisterFile|reg7|gen_register:9:vff|ALT_INV_O~q\,
	datae => \IFIDREG|ALT_INV_outInstruction\(6),
	dataf => \IFIDREG|ALT_INV_outInstruction\(7),
	combout => \RegisterFile|read_mux2|v6|v3|v9|Q~0_combout\);

\RegisterFile|read_mux2|v6|v3|v9|Q~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \RegisterFile|read_mux2|v6|v3|v9|Q~1_combout\ = ( !\IFIDREG|outInstruction\(8) & ( (!\IFIDREG|outInstruction\(7) & (\IFIDREG|outInstruction\(6) & (\RegisterFile|reg1|gen_register:9:vff|O~q\))) # (\IFIDREG|outInstruction\(7) & 
-- ((!\IFIDREG|outInstruction\(6) & (((\RegisterFile|reg2|gen_register:9:vff|O~q\)))) # (\IFIDREG|outInstruction\(6) & (((\RegisterFile|reg3|gen_register:9:vff|O~q\)))))) ) ) # ( \IFIDREG|outInstruction\(8) & ( 
-- (((\RegisterFile|read_mux2|v6|v3|v9|Q~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001000010011000011110000111101000110010101110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IFIDREG|ALT_INV_outInstruction\(7),
	datab => \IFIDREG|ALT_INV_outInstruction\(6),
	datac => \RegisterFile|read_mux2|v6|v3|v9|ALT_INV_Q~0_combout\,
	datad => \RegisterFile|reg3|gen_register:9:vff|ALT_INV_O~q\,
	datae => \IFIDREG|ALT_INV_outInstruction\(8),
	dataf => \RegisterFile|reg2|gen_register:9:vff|ALT_INV_O~q\,
	datag => \RegisterFile|reg1|gen_register:9:vff|ALT_INV_O~q\,
	combout => \RegisterFile|read_mux2|v6|v3|v9|Q~1_combout\);

\IDEXREG|R2Reg_IDEX[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \RegisterFile|read_mux2|v6|v3|v9|Q~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEXREG|R2Reg_IDEX\(9));

\ALUInput2Mux|v3|v9|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALUInput2Mux|v3|v9|Q~0_combout\ = ( \MEMWBREG|writeData\(9) & ( \IDEXREG|R2Reg_IDEX\(9) & ( (\ALUInput2Mux|v3|v12|Q~0_combout\ & ((!\ALUInput2Mux|v3|v12|Q~1_combout\) # (\EXMEMREG|Result_EXMEM\(9)))) ) ) ) # ( !\MEMWBREG|writeData\(9) & ( 
-- \IDEXREG|R2Reg_IDEX\(9) & ( (\ALUInput2Mux|v3|v12|Q~0_combout\ & ((!\ALUInput2Mux|v3|v12|Q~1_combout\ & ((!\ALUInput2Mux|v3|v12|Q~3_combout\))) # (\ALUInput2Mux|v3|v12|Q~1_combout\ & (\EXMEMREG|Result_EXMEM\(9))))) ) ) ) # ( \MEMWBREG|writeData\(9) & ( 
-- !\IDEXREG|R2Reg_IDEX\(9) & ( (\ALUInput2Mux|v3|v12|Q~0_combout\ & ((!\ALUInput2Mux|v3|v12|Q~1_combout\ & ((\ALUInput2Mux|v3|v12|Q~3_combout\))) # (\ALUInput2Mux|v3|v12|Q~1_combout\ & (\EXMEMREG|Result_EXMEM\(9))))) ) ) ) # ( !\MEMWBREG|writeData\(9) & ( 
-- !\IDEXREG|R2Reg_IDEX\(9) & ( (\EXMEMREG|Result_EXMEM\(9) & (\ALUInput2Mux|v3|v12|Q~0_combout\ & \ALUInput2Mux|v3|v12|Q~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010011000100110001000000010011000100110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EXMEMREG|ALT_INV_Result_EXMEM\(9),
	datab => \ALUInput2Mux|v3|v12|ALT_INV_Q~0_combout\,
	datac => \ALUInput2Mux|v3|v12|ALT_INV_Q~1_combout\,
	datad => \ALUInput2Mux|v3|v12|ALT_INV_Q~3_combout\,
	datae => \MEMWBREG|ALT_INV_writeData\(9),
	dataf => \IDEXREG|ALT_INV_R2Reg_IDEX\(9),
	combout => \ALUInput2Mux|v3|v9|Q~0_combout\);

\ALUInput2Mux|v3|v9|Q~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALUInput2Mux|v3|v9|Q~1_combout\ = (!\ALUInput2Mux|v3|v5|Q~0_combout\ & !\ALUInput2Mux|v3|v9|Q~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALUInput2Mux|v3|v5|ALT_INV_Q~0_combout\,
	datab => \ALUInput2Mux|v3|v9|ALT_INV_Q~0_combout\,
	combout => \ALUInput2Mux|v3|v9|Q~1_combout\);

\ALU16|V8|v12|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU16|V8|v12|Q~0_combout\ = ( \ALUInput1Mux|v3|v8|Q~0_combout\ & ( \ALUInput2Mux|v3|v8|Q~0_combout\ & ( \IDEXREG|ALUFunc_IDEX\(0) ) ) ) # ( !\ALUInput1Mux|v3|v8|Q~0_combout\ & ( \ALUInput2Mux|v3|v8|Q~0_combout\ & ( !\IDEXREG|ALUFunc_IDEX\(0) $ 
-- (((\ALUInput1Mux|v3|v2|Q~0_combout\ & \IFIDREG|outPC\(8)))) ) ) ) # ( \ALUInput1Mux|v3|v8|Q~0_combout\ & ( !\ALUInput2Mux|v3|v8|Q~0_combout\ & ( !\IDEXREG|ALUFunc_IDEX\(0) $ (\ALUInput2Mux|v3|v5|Q~0_combout\) ) ) ) # ( !\ALUInput1Mux|v3|v8|Q~0_combout\ & 
-- ( !\ALUInput2Mux|v3|v8|Q~0_combout\ & ( !\IDEXREG|ALUFunc_IDEX\(0) $ (!\ALUInput2Mux|v3|v5|Q~0_combout\ $ (((\ALUInput1Mux|v3|v2|Q~0_combout\ & \IFIDREG|outPC\(8))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001101001101001011010010110101010100110010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IDEXREG|ALT_INV_ALUFunc_IDEX\(0),
	datab => \ALUInput1Mux|v3|v2|ALT_INV_Q~0_combout\,
	datac => \ALUInput2Mux|v3|v5|ALT_INV_Q~0_combout\,
	datad => \IFIDREG|ALT_INV_outPC\(8),
	datae => \ALUInput1Mux|v3|v8|ALT_INV_Q~0_combout\,
	dataf => \ALUInput2Mux|v3|v8|ALT_INV_Q~0_combout\,
	combout => \ALU16|V8|v12|Q~0_combout\);

\ALU16|V8|v12|Q~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU16|V8|v12|Q~1_combout\ = ( \ALUInput1Mux|v3|v8|Q~0_combout\ & ( \ALUInput2Mux|v3|v8|Q~0_combout\ & ( !\IDEXREG|ALUFunc_IDEX\(0) ) ) ) # ( !\ALUInput1Mux|v3|v8|Q~0_combout\ & ( \ALUInput2Mux|v3|v8|Q~0_combout\ & ( (!\IDEXREG|ALUFunc_IDEX\(0) & 
-- (\ALUInput1Mux|v3|v2|Q~0_combout\ & \IFIDREG|outPC\(8))) ) ) ) # ( \ALUInput1Mux|v3|v8|Q~0_combout\ & ( !\ALUInput2Mux|v3|v8|Q~0_combout\ & ( !\IDEXREG|ALUFunc_IDEX\(0) $ (!\ALUInput2Mux|v3|v5|Q~0_combout\) ) ) ) # ( !\ALUInput1Mux|v3|v8|Q~0_combout\ & ( 
-- !\ALUInput2Mux|v3|v8|Q~0_combout\ & ( (\ALUInput1Mux|v3|v2|Q~0_combout\ & (\IFIDREG|outPC\(8) & (!\IDEXREG|ALUFunc_IDEX\(0) $ (!\ALUInput2Mux|v3|v5|Q~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010010010110100101101000000000001000101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IDEXREG|ALT_INV_ALUFunc_IDEX\(0),
	datab => \ALUInput1Mux|v3|v2|ALT_INV_Q~0_combout\,
	datac => \ALUInput2Mux|v3|v5|ALT_INV_Q~0_combout\,
	datad => \IFIDREG|ALT_INV_outPC\(8),
	datae => \ALUInput1Mux|v3|v8|ALT_INV_Q~0_combout\,
	dataf => \ALUInput2Mux|v3|v8|ALT_INV_Q~0_combout\,
	combout => \ALU16|V8|v12|Q~1_combout\);

\ALU16|V8|v12|Q~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU16|V8|v12|Q~2_combout\ = ( \ALU16|V8|v12|Q~0_combout\ & ( \ALU16|V8|v12|Q~1_combout\ & ( \ALU16|V0|v12|Q~0_combout\ ) ) ) # ( !\ALU16|V8|v12|Q~0_combout\ & ( \ALU16|V8|v12|Q~1_combout\ & ( \ALU16|V0|v12|Q~0_combout\ ) ) ) # ( 
-- \ALU16|V8|v12|Q~0_combout\ & ( !\ALU16|V8|v12|Q~1_combout\ & ( (\ALU16|V0|v12|Q~0_combout\ & (((!\ALU16|V6|v12|Q~2_combout\ & \ALU16|V7|v12|Q~0_combout\)) # (\ALU16|V7|v12|Q~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001000101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU16|V0|v12|ALT_INV_Q~0_combout\,
	datab => \ALU16|V6|v12|ALT_INV_Q~2_combout\,
	datac => \ALU16|V7|v12|ALT_INV_Q~0_combout\,
	datad => \ALU16|V7|v12|ALT_INV_Q~1_combout\,
	datae => \ALU16|V8|v12|ALT_INV_Q~0_combout\,
	dataf => \ALU16|V8|v12|ALT_INV_Q~1_combout\,
	combout => \ALU16|V8|v12|Q~2_combout\);

\ALU16|V21|v1|v9|Q\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU16|V21|v1|v9|Q~combout\ = ( \ALUInput2Mux|v3|v9|Q~1_combout\ & ( \ALU16|V8|v12|Q~2_combout\ & ( (!\IDEXREG|ALUFunc_IDEX\(0) & ((!\IDEXREG|ALUFunc_IDEX\(1) & (!\IDEXREG|ALUFunc_IDEX\(2) & \ALUInput1Mux|v3|v9|Q~2_combout\)) # (\IDEXREG|ALUFunc_IDEX\(1) 
-- & (\IDEXREG|ALUFunc_IDEX\(2) & !\ALUInput1Mux|v3|v9|Q~2_combout\)))) # (\IDEXREG|ALUFunc_IDEX\(0) & ((!\IDEXREG|ALUFunc_IDEX\(2) $ (\ALUInput1Mux|v3|v9|Q~2_combout\)))) ) ) ) # ( !\ALUInput2Mux|v3|v9|Q~1_combout\ & ( \ALU16|V8|v12|Q~2_combout\ & ( 
-- (!\ALUInput1Mux|v3|v9|Q~2_combout\ & (!\IDEXREG|ALUFunc_IDEX\(2) & ((!\IDEXREG|ALUFunc_IDEX\(0)) # (\IDEXREG|ALUFunc_IDEX\(1))))) # (\ALUInput1Mux|v3|v9|Q~2_combout\ & (!\IDEXREG|ALUFunc_IDEX\(0) $ (((!\IDEXREG|ALUFunc_IDEX\(1)) # 
-- (!\IDEXREG|ALUFunc_IDEX\(2)))))) ) ) ) # ( \ALUInput2Mux|v3|v9|Q~1_combout\ & ( !\ALU16|V8|v12|Q~2_combout\ & ( (!\IDEXREG|ALUFunc_IDEX\(0) & (!\ALUInput1Mux|v3|v9|Q~2_combout\ & (!\IDEXREG|ALUFunc_IDEX\(1) $ (\IDEXREG|ALUFunc_IDEX\(2))))) # 
-- (\IDEXREG|ALUFunc_IDEX\(0) & (!\ALUInput1Mux|v3|v9|Q~2_combout\ $ (((!\IDEXREG|ALUFunc_IDEX\(1)) # (\IDEXREG|ALUFunc_IDEX\(2)))))) ) ) ) # ( !\ALUInput2Mux|v3|v9|Q~1_combout\ & ( !\ALU16|V8|v12|Q~2_combout\ & ( (!\ALUInput1Mux|v3|v9|Q~2_combout\ & 
-- (!\IDEXREG|ALUFunc_IDEX\(2) & ((\IDEXREG|ALUFunc_IDEX\(0)) # (\IDEXREG|ALUFunc_IDEX\(1))))) # (\ALUInput1Mux|v3|v9|Q~2_combout\ & (!\IDEXREG|ALUFunc_IDEX\(1) $ (!\IDEXREG|ALUFunc_IDEX\(0) $ (!\IDEXREG|ALUFunc_IDEX\(2))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000010010110100101000010001111010000001101100011010010000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IDEXREG|ALT_INV_ALUFunc_IDEX\(1),
	datab => \IDEXREG|ALT_INV_ALUFunc_IDEX\(0),
	datac => \IDEXREG|ALT_INV_ALUFunc_IDEX\(2),
	datad => \ALUInput1Mux|v3|v9|ALT_INV_Q~2_combout\,
	datae => \ALUInput2Mux|v3|v9|ALT_INV_Q~1_combout\,
	dataf => \ALU16|V8|v12|ALT_INV_Q~2_combout\,
	combout => \ALU16|V21|v1|v9|Q~combout\);

\EXMEMREG|Result_EXMEM[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \ALU16|V21|v1|v9|Q~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EXMEMREG|Result_EXMEM\(9));

\PC|gen_register:10:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \IFIDREG|outInstruction\(10),
	asdata => \IFIDREG|outPC\(10),
	sload => \Controller|isJType~0_combout\,
	ena => \Trap|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|gen_register:10:vff|O~q\);

\IFIDREG|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \IFIDREG|Add0~37_sumout\ = SUM(( \PC|gen_register:10:vff|O~q\ ) + ( GND ) + ( \IFIDREG|Add0~34\ ))
-- \IFIDREG|Add0~38\ = CARRY(( \PC|gen_register:10:vff|O~q\ ) + ( GND ) + ( \IFIDREG|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|gen_register:10:vff|ALT_INV_O~q\,
	cin => \IFIDREG|Add0~34\,
	sumout => \IFIDREG|Add0~37_sumout\,
	cout => \IFIDREG|Add0~38\);

\IFIDREG|outPC[10]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \IFIDREG|outPC[10]~11_combout\ = ( \instr[15]~input_o\ & ( \IFIDREG|Add0~37_sumout\ & ( (\clock~input_o\ & (((!\instr[13]~input_o\) # (!\instr[14]~input_o\)) # (\instr[12]~input_o\))) ) ) ) # ( !\instr[15]~input_o\ & ( \IFIDREG|Add0~37_sumout\ & ( 
-- \clock~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_clock~input_o\,
	datab => \ALT_INV_instr[12]~input_o\,
	datac => \ALT_INV_instr[13]~input_o\,
	datad => \ALT_INV_instr[14]~input_o\,
	datae => \ALT_INV_instr[15]~input_o\,
	dataf => \IFIDREG|ALT_INV_Add0~37_sumout\,
	combout => \IFIDREG|outPC[10]~11_combout\);

\IFIDREG|outPC[10]\ : cyclonev_lcell_comb
-- Equation(s):
-- \IFIDREG|outPC\(10) = ( \IFIDREG|outPC\(10) & ( \IFIDREG|outPC[15]~1_combout\ & ( \IFIDREG|outPC[10]~11_combout\ ) ) ) # ( !\IFIDREG|outPC\(10) & ( \IFIDREG|outPC[15]~1_combout\ & ( \IFIDREG|outPC[10]~11_combout\ ) ) ) # ( \IFIDREG|outPC\(10) & ( 
-- !\IFIDREG|outPC[15]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \IFIDREG|ALT_INV_outPC[10]~11_combout\,
	datae => \IFIDREG|ALT_INV_outPC\(10),
	dataf => \IFIDREG|ALT_INV_outPC[15]~1_combout\,
	combout => \IFIDREG|outPC\(10));

\fromData[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fromData(10),
	o => \fromData[10]~input_o\);

\MEMWB_inputData_sig[10]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMWB_inputData_sig[10]~10_combout\ = (!\EXMEMREG|isLW_EXMEM~q\ & (\EXMEMREG|Result_EXMEM\(10))) # (\EXMEMREG|isLW_EXMEM~q\ & ((\fromData[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011101000111010001110100011101000111010001110100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EXMEMREG|ALT_INV_Result_EXMEM\(10),
	datab => \EXMEMREG|ALT_INV_isLW_EXMEM~q\,
	datac => \ALT_INV_fromData[10]~input_o\,
	combout => \MEMWB_inputData_sig[10]~10_combout\);

\keyData[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_keyData(10),
	o => \keyData[10]~input_o\);

\MEMWBREG|writeData[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \MEMWB_inputData_sig[10]~10_combout\,
	asdata => \keyData[10]~input_o\,
	sload => \EXMEMREG|ReadDigit_EXMEM~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMWBREG|writeData\(10));

\RegisterFile|reg4|gen_register:10:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~input_o\,
	d => \MEMWBREG|writeData\(10),
	ena => \RegisterFile|v0|v12|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegisterFile|reg4|gen_register:10:vff|O~q\);

\RegisterFile|reg5|gen_register:10:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~input_o\,
	d => \MEMWBREG|writeData\(10),
	ena => \RegisterFile|v0|v14|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegisterFile|reg5|gen_register:10:vff|O~q\);

\RegisterFile|reg6|gen_register:10:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~input_o\,
	d => \MEMWBREG|writeData\(10),
	ena => \RegisterFile|v0|v16|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegisterFile|reg6|gen_register:10:vff|O~q\);

\RegisterFile|reg7|gen_register:10:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~input_o\,
	d => \MEMWBREG|writeData\(10),
	ena => \RegisterFile|v0|v18|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegisterFile|reg7|gen_register:10:vff|O~q\);

\RegisterFile|read_mux1|v6|v3|v10|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \RegisterFile|read_mux1|v6|v3|v10|Q~0_combout\ = ( \IFIDREG|outInstruction\(9) & ( \IFIDREG|outInstruction\(10) & ( \RegisterFile|reg7|gen_register:10:vff|O~q\ ) ) ) # ( !\IFIDREG|outInstruction\(9) & ( \IFIDREG|outInstruction\(10) & ( 
-- \RegisterFile|reg6|gen_register:10:vff|O~q\ ) ) ) # ( \IFIDREG|outInstruction\(9) & ( !\IFIDREG|outInstruction\(10) & ( \RegisterFile|reg5|gen_register:10:vff|O~q\ ) ) ) # ( !\IFIDREG|outInstruction\(9) & ( !\IFIDREG|outInstruction\(10) & ( 
-- \RegisterFile|reg4|gen_register:10:vff|O~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegisterFile|reg4|gen_register:10:vff|ALT_INV_O~q\,
	datab => \RegisterFile|reg5|gen_register:10:vff|ALT_INV_O~q\,
	datac => \RegisterFile|reg6|gen_register:10:vff|ALT_INV_O~q\,
	datad => \RegisterFile|reg7|gen_register:10:vff|ALT_INV_O~q\,
	datae => \IFIDREG|ALT_INV_outInstruction\(9),
	dataf => \IFIDREG|ALT_INV_outInstruction\(10),
	combout => \RegisterFile|read_mux1|v6|v3|v10|Q~0_combout\);

\RegisterFile|reg3|gen_register:10:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~input_o\,
	d => \MEMWBREG|writeData\(10),
	ena => \RegisterFile|v0|v10|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegisterFile|reg3|gen_register:10:vff|O~q\);

\RegisterFile|reg2|gen_register:10:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~input_o\,
	d => \MEMWBREG|writeData\(10),
	ena => \RegisterFile|v0|v8|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegisterFile|reg2|gen_register:10:vff|O~q\);

\RegisterFile|reg1|gen_register:10:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~input_o\,
	d => \MEMWBREG|writeData\(10),
	ena => \RegisterFile|v0|v6|Q~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegisterFile|reg1|gen_register:10:vff|O~q\);

\RegisterFile|read_mux1|v6|v3|v10|Q~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \RegisterFile|read_mux1|v6|v3|v10|Q~1_combout\ = ( !\IFIDREG|outInstruction\(11) & ( (!\IFIDREG|outInstruction\(10) & (\IFIDREG|outInstruction\(9) & (\RegisterFile|reg1|gen_register:10:vff|O~q\))) # (\IFIDREG|outInstruction\(10) & 
-- ((!\IFIDREG|outInstruction\(9) & (((\RegisterFile|reg2|gen_register:10:vff|O~q\)))) # (\IFIDREG|outInstruction\(9) & (((\RegisterFile|reg3|gen_register:10:vff|O~q\)))))) ) ) # ( \IFIDREG|outInstruction\(11) & ( 
-- (((\RegisterFile|read_mux1|v6|v3|v10|Q~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001000010011000011110000111101000110010101110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IFIDREG|ALT_INV_outInstruction\(10),
	datab => \IFIDREG|ALT_INV_outInstruction\(9),
	datac => \RegisterFile|read_mux1|v6|v3|v10|ALT_INV_Q~0_combout\,
	datad => \RegisterFile|reg3|gen_register:10:vff|ALT_INV_O~q\,
	datae => \IFIDREG|ALT_INV_outInstruction\(11),
	dataf => \RegisterFile|reg2|gen_register:10:vff|ALT_INV_O~q\,
	datag => \RegisterFile|reg1|gen_register:10:vff|ALT_INV_O~q\,
	combout => \RegisterFile|read_mux1|v6|v3|v10|Q~1_combout\);

\IDEXREG|R1Reg_IDEX[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \RegisterFile|read_mux1|v6|v3|v10|Q~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEXREG|R1Reg_IDEX\(10));

\ALUInput1Mux|v3|v10|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALUInput1Mux|v3|v10|Q~0_combout\ = ( \MEMWBREG|writeData\(10) & ( \IDEXREG|R1Reg_IDEX\(10) & ( (!\ALUInput1Mux|v3|v2|Q~0_combout\ & ((\ALUInput1Mux|v3|v2|Q~1_combout\) # (\EXMEMREG|Result_EXMEM\(10)))) ) ) ) # ( !\MEMWBREG|writeData\(10) & ( 
-- \IDEXREG|R1Reg_IDEX\(10) & ( (!\ALUInput1Mux|v3|v2|Q~0_combout\ & ((!\ALUInput1Mux|v3|v2|Q~1_combout\ & (\EXMEMREG|Result_EXMEM\(10))) # (\ALUInput1Mux|v3|v2|Q~1_combout\ & ((!\ALUInput1Mux|v3|v2|Q~7_combout\))))) ) ) ) # ( \MEMWBREG|writeData\(10) & ( 
-- !\IDEXREG|R1Reg_IDEX\(10) & ( (!\ALUInput1Mux|v3|v2|Q~0_combout\ & ((!\ALUInput1Mux|v3|v2|Q~1_combout\ & (\EXMEMREG|Result_EXMEM\(10))) # (\ALUInput1Mux|v3|v2|Q~1_combout\ & ((\ALUInput1Mux|v3|v2|Q~7_combout\))))) ) ) ) # ( !\MEMWBREG|writeData\(10) & ( 
-- !\IDEXREG|R1Reg_IDEX\(10) & ( (\EXMEMREG|Result_EXMEM\(10) & (!\ALUInput1Mux|v3|v2|Q~0_combout\ & !\ALUInput1Mux|v3|v2|Q~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000010000000100110001001100010000000100110001001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EXMEMREG|ALT_INV_Result_EXMEM\(10),
	datab => \ALUInput1Mux|v3|v2|ALT_INV_Q~0_combout\,
	datac => \ALUInput1Mux|v3|v2|ALT_INV_Q~1_combout\,
	datad => \ALUInput1Mux|v3|v2|ALT_INV_Q~7_combout\,
	datae => \MEMWBREG|ALT_INV_writeData\(10),
	dataf => \IDEXREG|ALT_INV_R1Reg_IDEX\(10),
	combout => \ALUInput1Mux|v3|v10|Q~0_combout\);

\ALUInput1Mux|v3|v10|Q~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALUInput1Mux|v3|v10|Q~1_combout\ = (!\ALUInput1Mux|v3|v10|Q~0_combout\ & ((!\ALUInput1Mux|v3|v2|Q~0_combout\) # (!\IFIDREG|outPC\(10))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110000011100000111000001110000011100000111000001110000011100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALUInput1Mux|v3|v2|ALT_INV_Q~0_combout\,
	datab => \IFIDREG|ALT_INV_outPC\(10),
	datac => \ALUInput1Mux|v3|v10|ALT_INV_Q~0_combout\,
	combout => \ALUInput1Mux|v3|v10|Q~1_combout\);

\RegisterFile|read_mux2|v6|v3|v10|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \RegisterFile|read_mux2|v6|v3|v10|Q~0_combout\ = ( \IFIDREG|outInstruction\(6) & ( \IFIDREG|outInstruction\(7) & ( \RegisterFile|reg7|gen_register:10:vff|O~q\ ) ) ) # ( !\IFIDREG|outInstruction\(6) & ( \IFIDREG|outInstruction\(7) & ( 
-- \RegisterFile|reg6|gen_register:10:vff|O~q\ ) ) ) # ( \IFIDREG|outInstruction\(6) & ( !\IFIDREG|outInstruction\(7) & ( \RegisterFile|reg5|gen_register:10:vff|O~q\ ) ) ) # ( !\IFIDREG|outInstruction\(6) & ( !\IFIDREG|outInstruction\(7) & ( 
-- \RegisterFile|reg4|gen_register:10:vff|O~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegisterFile|reg4|gen_register:10:vff|ALT_INV_O~q\,
	datab => \RegisterFile|reg5|gen_register:10:vff|ALT_INV_O~q\,
	datac => \RegisterFile|reg6|gen_register:10:vff|ALT_INV_O~q\,
	datad => \RegisterFile|reg7|gen_register:10:vff|ALT_INV_O~q\,
	datae => \IFIDREG|ALT_INV_outInstruction\(6),
	dataf => \IFIDREG|ALT_INV_outInstruction\(7),
	combout => \RegisterFile|read_mux2|v6|v3|v10|Q~0_combout\);

\RegisterFile|read_mux2|v6|v3|v10|Q~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \RegisterFile|read_mux2|v6|v3|v10|Q~1_combout\ = ( !\IFIDREG|outInstruction\(8) & ( (!\IFIDREG|outInstruction\(7) & (\IFIDREG|outInstruction\(6) & (\RegisterFile|reg1|gen_register:10:vff|O~q\))) # (\IFIDREG|outInstruction\(7) & 
-- ((!\IFIDREG|outInstruction\(6) & (((\RegisterFile|reg2|gen_register:10:vff|O~q\)))) # (\IFIDREG|outInstruction\(6) & (((\RegisterFile|reg3|gen_register:10:vff|O~q\)))))) ) ) # ( \IFIDREG|outInstruction\(8) & ( 
-- (((\RegisterFile|read_mux2|v6|v3|v10|Q~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001000010011000011110000111101000110010101110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IFIDREG|ALT_INV_outInstruction\(7),
	datab => \IFIDREG|ALT_INV_outInstruction\(6),
	datac => \RegisterFile|read_mux2|v6|v3|v10|ALT_INV_Q~0_combout\,
	datad => \RegisterFile|reg3|gen_register:10:vff|ALT_INV_O~q\,
	datae => \IFIDREG|ALT_INV_outInstruction\(8),
	dataf => \RegisterFile|reg2|gen_register:10:vff|ALT_INV_O~q\,
	datag => \RegisterFile|reg1|gen_register:10:vff|ALT_INV_O~q\,
	combout => \RegisterFile|read_mux2|v6|v3|v10|Q~1_combout\);

\IDEXREG|R2Reg_IDEX[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \RegisterFile|read_mux2|v6|v3|v10|Q~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEXREG|R2Reg_IDEX\(10));

\ALUInput2Mux|v3|v10|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALUInput2Mux|v3|v10|Q~0_combout\ = ( \MEMWBREG|writeData\(10) & ( \IDEXREG|R2Reg_IDEX\(10) & ( (\ALUInput2Mux|v3|v12|Q~0_combout\ & ((!\ALUInput2Mux|v3|v12|Q~1_combout\) # (\EXMEMREG|Result_EXMEM\(10)))) ) ) ) # ( !\MEMWBREG|writeData\(10) & ( 
-- \IDEXREG|R2Reg_IDEX\(10) & ( (\ALUInput2Mux|v3|v12|Q~0_combout\ & ((!\ALUInput2Mux|v3|v12|Q~1_combout\ & ((!\ALUInput2Mux|v3|v12|Q~3_combout\))) # (\ALUInput2Mux|v3|v12|Q~1_combout\ & (\EXMEMREG|Result_EXMEM\(10))))) ) ) ) # ( \MEMWBREG|writeData\(10) & ( 
-- !\IDEXREG|R2Reg_IDEX\(10) & ( (\ALUInput2Mux|v3|v12|Q~0_combout\ & ((!\ALUInput2Mux|v3|v12|Q~1_combout\ & ((\ALUInput2Mux|v3|v12|Q~3_combout\))) # (\ALUInput2Mux|v3|v12|Q~1_combout\ & (\EXMEMREG|Result_EXMEM\(10))))) ) ) ) # ( !\MEMWBREG|writeData\(10) & 
-- ( !\IDEXREG|R2Reg_IDEX\(10) & ( (\EXMEMREG|Result_EXMEM\(10) & (\ALUInput2Mux|v3|v12|Q~0_combout\ & \ALUInput2Mux|v3|v12|Q~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010011000100110001000000010011000100110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EXMEMREG|ALT_INV_Result_EXMEM\(10),
	datab => \ALUInput2Mux|v3|v12|ALT_INV_Q~0_combout\,
	datac => \ALUInput2Mux|v3|v12|ALT_INV_Q~1_combout\,
	datad => \ALUInput2Mux|v3|v12|ALT_INV_Q~3_combout\,
	datae => \MEMWBREG|ALT_INV_writeData\(10),
	dataf => \IDEXREG|ALT_INV_R2Reg_IDEX\(10),
	combout => \ALUInput2Mux|v3|v10|Q~0_combout\);

\ALUInput2Mux|v3|v10|Q~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALUInput2Mux|v3|v10|Q~1_combout\ = (!\ALUInput2Mux|v3|v5|Q~0_combout\ & !\ALUInput2Mux|v3|v10|Q~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALUInput2Mux|v3|v5|ALT_INV_Q~0_combout\,
	datab => \ALUInput2Mux|v3|v10|ALT_INV_Q~0_combout\,
	combout => \ALUInput2Mux|v3|v10|Q~1_combout\);

\ALU16|V8|v12|Q~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU16|V8|v12|Q~3_combout\ = ( \ALU16|V7|v12|Q~1_combout\ & ( \ALU16|V8|v12|Q~0_combout\ ) ) # ( !\ALU16|V7|v12|Q~1_combout\ & ( \ALU16|V8|v12|Q~0_combout\ & ( (\ALU16|V7|v12|Q~0_combout\ & (((!\ALU16|V5|v12|Q~2_combout\ & \ALU16|V6|v12|Q~0_combout\)) # 
-- (\ALU16|V6|v12|Q~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU16|V5|v12|ALT_INV_Q~2_combout\,
	datab => \ALU16|V6|v12|ALT_INV_Q~0_combout\,
	datac => \ALU16|V6|v12|ALT_INV_Q~1_combout\,
	datad => \ALU16|V7|v12|ALT_INV_Q~0_combout\,
	datae => \ALU16|V7|v12|ALT_INV_Q~1_combout\,
	dataf => \ALU16|V8|v12|ALT_INV_Q~0_combout\,
	combout => \ALU16|V8|v12|Q~3_combout\);

\ALU16|V9|v12|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU16|V9|v12|Q~0_combout\ = ( \ALUInput2Mux|v3|v9|Q~0_combout\ & ( !\IDEXREG|ALUFunc_IDEX\(0) $ (((\ALUInput1Mux|v3|v9|Q~1_combout\) # (\ALUInput1Mux|v3|v9|Q~0_combout\))) ) ) # ( !\ALUInput2Mux|v3|v9|Q~0_combout\ & ( !\IDEXREG|ALUFunc_IDEX\(0) $ 
-- (!\ALUInput2Mux|v3|v5|Q~0_combout\ $ (((\ALUInput1Mux|v3|v9|Q~1_combout\) # (\ALUInput1Mux|v3|v9|Q~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100110011001101001010101010101101001100110011010010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IDEXREG|ALT_INV_ALUFunc_IDEX\(0),
	datab => \ALUInput2Mux|v3|v5|ALT_INV_Q~0_combout\,
	datac => \ALUInput1Mux|v3|v9|ALT_INV_Q~0_combout\,
	datad => \ALUInput1Mux|v3|v9|ALT_INV_Q~1_combout\,
	datae => \ALUInput2Mux|v3|v9|ALT_INV_Q~0_combout\,
	combout => \ALU16|V9|v12|Q~0_combout\);

\ALU16|V9|v12|Q~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU16|V9|v12|Q~1_combout\ = ( \ALUInput1Mux|v3|v9|Q~1_combout\ & ( \ALUInput2Mux|v3|v9|Q~0_combout\ & ( (!\IDEXREG|ALUFunc_IDEX\(0) & \ALU16|V0|v12|Q~0_combout\) ) ) ) # ( !\ALUInput1Mux|v3|v9|Q~1_combout\ & ( \ALUInput2Mux|v3|v9|Q~0_combout\ & ( 
-- (!\IDEXREG|ALUFunc_IDEX\(0) & (\ALU16|V0|v12|Q~0_combout\ & \ALUInput1Mux|v3|v9|Q~0_combout\)) ) ) ) # ( \ALUInput1Mux|v3|v9|Q~1_combout\ & ( !\ALUInput2Mux|v3|v9|Q~0_combout\ & ( (\ALU16|V0|v12|Q~0_combout\ & (!\IDEXREG|ALUFunc_IDEX\(0) $ 
-- (!\ALUInput2Mux|v3|v5|Q~0_combout\))) ) ) ) # ( !\ALUInput1Mux|v3|v9|Q~1_combout\ & ( !\ALUInput2Mux|v3|v9|Q~0_combout\ & ( (\ALU16|V0|v12|Q~0_combout\ & (\ALUInput1Mux|v3|v9|Q~0_combout\ & (!\IDEXREG|ALUFunc_IDEX\(0) $ 
-- (!\ALUInput2Mux|v3|v5|Q~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010010000100100001001000000000001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IDEXREG|ALT_INV_ALUFunc_IDEX\(0),
	datab => \ALU16|V0|v12|ALT_INV_Q~0_combout\,
	datac => \ALUInput2Mux|v3|v5|ALT_INV_Q~0_combout\,
	datad => \ALUInput1Mux|v3|v9|ALT_INV_Q~0_combout\,
	datae => \ALUInput1Mux|v3|v9|ALT_INV_Q~1_combout\,
	dataf => \ALUInput2Mux|v3|v9|ALT_INV_Q~0_combout\,
	combout => \ALU16|V9|v12|Q~1_combout\);

\ALU16|V9|v12|Q~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU16|V9|v12|Q~2_combout\ = ( !\ALU16|V9|v12|Q~1_combout\ & ( (!\ALU16|V0|v12|Q~0_combout\) # ((!\ALU16|V9|v12|Q~0_combout\) # ((!\ALU16|V8|v12|Q~3_combout\ & !\ALU16|V8|v12|Q~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111101010000000000000000011111111111010100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU16|V0|v12|ALT_INV_Q~0_combout\,
	datab => \ALU16|V8|v12|ALT_INV_Q~3_combout\,
	datac => \ALU16|V8|v12|ALT_INV_Q~1_combout\,
	datad => \ALU16|V9|v12|ALT_INV_Q~0_combout\,
	datae => \ALU16|V9|v12|ALT_INV_Q~1_combout\,
	combout => \ALU16|V9|v12|Q~2_combout\);

\ALU16|V21|v1|v10|Q\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU16|V21|v1|v10|Q~combout\ = ( \ALUInput2Mux|v3|v10|Q~1_combout\ & ( \ALU16|V9|v12|Q~2_combout\ & ( (!\IDEXREG|ALUFunc_IDEX\(0) & (!\ALUInput1Mux|v3|v10|Q~1_combout\ & (!\IDEXREG|ALUFunc_IDEX\(1) $ (\IDEXREG|ALUFunc_IDEX\(2))))) # 
-- (\IDEXREG|ALUFunc_IDEX\(0) & (!\ALUInput1Mux|v3|v10|Q~1_combout\ $ (((!\IDEXREG|ALUFunc_IDEX\(1)) # (\IDEXREG|ALUFunc_IDEX\(2)))))) ) ) ) # ( !\ALUInput2Mux|v3|v10|Q~1_combout\ & ( \ALU16|V9|v12|Q~2_combout\ & ( (!\ALUInput1Mux|v3|v10|Q~1_combout\ & 
-- (!\IDEXREG|ALUFunc_IDEX\(2) & ((\IDEXREG|ALUFunc_IDEX\(0)) # (\IDEXREG|ALUFunc_IDEX\(1))))) # (\ALUInput1Mux|v3|v10|Q~1_combout\ & (!\IDEXREG|ALUFunc_IDEX\(1) $ (!\IDEXREG|ALUFunc_IDEX\(0) $ (!\IDEXREG|ALUFunc_IDEX\(2))))) ) ) ) # ( 
-- \ALUInput2Mux|v3|v10|Q~1_combout\ & ( !\ALU16|V9|v12|Q~2_combout\ & ( (!\IDEXREG|ALUFunc_IDEX\(0) & ((!\IDEXREG|ALUFunc_IDEX\(1) & (!\IDEXREG|ALUFunc_IDEX\(2) & \ALUInput1Mux|v3|v10|Q~1_combout\)) # (\IDEXREG|ALUFunc_IDEX\(1) & (\IDEXREG|ALUFunc_IDEX\(2) 
-- & !\ALUInput1Mux|v3|v10|Q~1_combout\)))) # (\IDEXREG|ALUFunc_IDEX\(0) & ((!\IDEXREG|ALUFunc_IDEX\(2) $ (\ALUInput1Mux|v3|v10|Q~1_combout\)))) ) ) ) # ( !\ALUInput2Mux|v3|v10|Q~1_combout\ & ( !\ALU16|V9|v12|Q~2_combout\ & ( 
-- (!\ALUInput1Mux|v3|v10|Q~1_combout\ & (!\IDEXREG|ALUFunc_IDEX\(2) & ((!\IDEXREG|ALUFunc_IDEX\(0)) # (\IDEXREG|ALUFunc_IDEX\(1))))) # (\ALUInput1Mux|v3|v10|Q~1_combout\ & (!\IDEXREG|ALUFunc_IDEX\(0) $ (((!\IDEXREG|ALUFunc_IDEX\(1)) # 
-- (!\IDEXREG|ALUFunc_IDEX\(2)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101000000110110001101001000001101110000100101101001010000100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IDEXREG|ALT_INV_ALUFunc_IDEX\(1),
	datab => \IDEXREG|ALT_INV_ALUFunc_IDEX\(0),
	datac => \IDEXREG|ALT_INV_ALUFunc_IDEX\(2),
	datad => \ALUInput1Mux|v3|v10|ALT_INV_Q~1_combout\,
	datae => \ALUInput2Mux|v3|v10|ALT_INV_Q~1_combout\,
	dataf => \ALU16|V9|v12|ALT_INV_Q~2_combout\,
	combout => \ALU16|V21|v1|v10|Q~combout\);

\EXMEMREG|Result_EXMEM[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \ALU16|V21|v1|v10|Q~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EXMEMREG|Result_EXMEM\(10));

\PC|gen_register:11:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \IFIDREG|outInstruction\(11),
	asdata => \IFIDREG|outPC\(11),
	sload => \Controller|isJType~0_combout\,
	ena => \Trap|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|gen_register:11:vff|O~q\);

\IFIDREG|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \IFIDREG|Add0~41_sumout\ = SUM(( \PC|gen_register:11:vff|O~q\ ) + ( GND ) + ( \IFIDREG|Add0~38\ ))
-- \IFIDREG|Add0~42\ = CARRY(( \PC|gen_register:11:vff|O~q\ ) + ( GND ) + ( \IFIDREG|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|gen_register:11:vff|ALT_INV_O~q\,
	cin => \IFIDREG|Add0~38\,
	sumout => \IFIDREG|Add0~41_sumout\,
	cout => \IFIDREG|Add0~42\);

\IFIDREG|outPC[11]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \IFIDREG|outPC[11]~12_combout\ = ( \instr[15]~input_o\ & ( \IFIDREG|Add0~41_sumout\ & ( (\clock~input_o\ & (((!\instr[13]~input_o\) # (!\instr[14]~input_o\)) # (\instr[12]~input_o\))) ) ) ) # ( !\instr[15]~input_o\ & ( \IFIDREG|Add0~41_sumout\ & ( 
-- \clock~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_clock~input_o\,
	datab => \ALT_INV_instr[12]~input_o\,
	datac => \ALT_INV_instr[13]~input_o\,
	datad => \ALT_INV_instr[14]~input_o\,
	datae => \ALT_INV_instr[15]~input_o\,
	dataf => \IFIDREG|ALT_INV_Add0~41_sumout\,
	combout => \IFIDREG|outPC[11]~12_combout\);

\IFIDREG|outPC[11]\ : cyclonev_lcell_comb
-- Equation(s):
-- \IFIDREG|outPC\(11) = ( \IFIDREG|outPC\(11) & ( \IFIDREG|outPC[15]~1_combout\ & ( \IFIDREG|outPC[11]~12_combout\ ) ) ) # ( !\IFIDREG|outPC\(11) & ( \IFIDREG|outPC[15]~1_combout\ & ( \IFIDREG|outPC[11]~12_combout\ ) ) ) # ( \IFIDREG|outPC\(11) & ( 
-- !\IFIDREG|outPC[15]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \IFIDREG|ALT_INV_outPC[11]~12_combout\,
	datae => \IFIDREG|ALT_INV_outPC\(11),
	dataf => \IFIDREG|ALT_INV_outPC[15]~1_combout\,
	combout => \IFIDREG|outPC\(11));

\fromData[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fromData(11),
	o => \fromData[11]~input_o\);

\MEMWB_inputData_sig[11]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMWB_inputData_sig[11]~11_combout\ = (!\EXMEMREG|isLW_EXMEM~q\ & (\EXMEMREG|Result_EXMEM\(11))) # (\EXMEMREG|isLW_EXMEM~q\ & ((\fromData[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011101000111010001110100011101000111010001110100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EXMEMREG|ALT_INV_Result_EXMEM\(11),
	datab => \EXMEMREG|ALT_INV_isLW_EXMEM~q\,
	datac => \ALT_INV_fromData[11]~input_o\,
	combout => \MEMWB_inputData_sig[11]~11_combout\);

\keyData[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_keyData(11),
	o => \keyData[11]~input_o\);

\MEMWBREG|writeData[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \MEMWB_inputData_sig[11]~11_combout\,
	asdata => \keyData[11]~input_o\,
	sload => \EXMEMREG|ReadDigit_EXMEM~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMWBREG|writeData\(11));

\RegisterFile|reg4|gen_register:11:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~input_o\,
	d => \MEMWBREG|writeData\(11),
	ena => \RegisterFile|v0|v12|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegisterFile|reg4|gen_register:11:vff|O~q\);

\RegisterFile|reg5|gen_register:11:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~input_o\,
	d => \MEMWBREG|writeData\(11),
	ena => \RegisterFile|v0|v14|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegisterFile|reg5|gen_register:11:vff|O~q\);

\RegisterFile|reg6|gen_register:11:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~input_o\,
	d => \MEMWBREG|writeData\(11),
	ena => \RegisterFile|v0|v16|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegisterFile|reg6|gen_register:11:vff|O~q\);

\RegisterFile|reg7|gen_register:11:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~input_o\,
	d => \MEMWBREG|writeData\(11),
	ena => \RegisterFile|v0|v18|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegisterFile|reg7|gen_register:11:vff|O~q\);

\RegisterFile|read_mux1|v6|v3|v11|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \RegisterFile|read_mux1|v6|v3|v11|Q~0_combout\ = ( \IFIDREG|outInstruction\(9) & ( \IFIDREG|outInstruction\(10) & ( \RegisterFile|reg7|gen_register:11:vff|O~q\ ) ) ) # ( !\IFIDREG|outInstruction\(9) & ( \IFIDREG|outInstruction\(10) & ( 
-- \RegisterFile|reg6|gen_register:11:vff|O~q\ ) ) ) # ( \IFIDREG|outInstruction\(9) & ( !\IFIDREG|outInstruction\(10) & ( \RegisterFile|reg5|gen_register:11:vff|O~q\ ) ) ) # ( !\IFIDREG|outInstruction\(9) & ( !\IFIDREG|outInstruction\(10) & ( 
-- \RegisterFile|reg4|gen_register:11:vff|O~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegisterFile|reg4|gen_register:11:vff|ALT_INV_O~q\,
	datab => \RegisterFile|reg5|gen_register:11:vff|ALT_INV_O~q\,
	datac => \RegisterFile|reg6|gen_register:11:vff|ALT_INV_O~q\,
	datad => \RegisterFile|reg7|gen_register:11:vff|ALT_INV_O~q\,
	datae => \IFIDREG|ALT_INV_outInstruction\(9),
	dataf => \IFIDREG|ALT_INV_outInstruction\(10),
	combout => \RegisterFile|read_mux1|v6|v3|v11|Q~0_combout\);

\RegisterFile|reg3|gen_register:11:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~input_o\,
	d => \MEMWBREG|writeData\(11),
	ena => \RegisterFile|v0|v10|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegisterFile|reg3|gen_register:11:vff|O~q\);

\RegisterFile|reg2|gen_register:11:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~input_o\,
	d => \MEMWBREG|writeData\(11),
	ena => \RegisterFile|v0|v8|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegisterFile|reg2|gen_register:11:vff|O~q\);

\RegisterFile|reg1|gen_register:11:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~input_o\,
	d => \MEMWBREG|writeData\(11),
	ena => \RegisterFile|v0|v6|Q~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegisterFile|reg1|gen_register:11:vff|O~q\);

\RegisterFile|read_mux1|v6|v3|v11|Q~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \RegisterFile|read_mux1|v6|v3|v11|Q~1_combout\ = ( !\IFIDREG|outInstruction\(11) & ( (!\IFIDREG|outInstruction\(10) & (\IFIDREG|outInstruction\(9) & (\RegisterFile|reg1|gen_register:11:vff|O~q\))) # (\IFIDREG|outInstruction\(10) & 
-- ((!\IFIDREG|outInstruction\(9) & (((\RegisterFile|reg2|gen_register:11:vff|O~q\)))) # (\IFIDREG|outInstruction\(9) & (((\RegisterFile|reg3|gen_register:11:vff|O~q\)))))) ) ) # ( \IFIDREG|outInstruction\(11) & ( 
-- (((\RegisterFile|read_mux1|v6|v3|v11|Q~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001000010011000011110000111101000110010101110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IFIDREG|ALT_INV_outInstruction\(10),
	datab => \IFIDREG|ALT_INV_outInstruction\(9),
	datac => \RegisterFile|read_mux1|v6|v3|v11|ALT_INV_Q~0_combout\,
	datad => \RegisterFile|reg3|gen_register:11:vff|ALT_INV_O~q\,
	datae => \IFIDREG|ALT_INV_outInstruction\(11),
	dataf => \RegisterFile|reg2|gen_register:11:vff|ALT_INV_O~q\,
	datag => \RegisterFile|reg1|gen_register:11:vff|ALT_INV_O~q\,
	combout => \RegisterFile|read_mux1|v6|v3|v11|Q~1_combout\);

\IDEXREG|R1Reg_IDEX[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \RegisterFile|read_mux1|v6|v3|v11|Q~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEXREG|R1Reg_IDEX\(11));

\ALUInput1Mux|v3|v11|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALUInput1Mux|v3|v11|Q~0_combout\ = ( !\ALUInput1Mux|v3|v2|Q~7_combout\ & ( (!\ALUInput1Mux|v3|v2|Q~0_combout\ & (((!\ALUInput1Mux|v3|v2|Q~1_combout\ & ((\EXMEMREG|Result_EXMEM\(11)))) # (\ALUInput1Mux|v3|v2|Q~1_combout\ & (\IDEXREG|R1Reg_IDEX\(11)))))) # 
-- (\ALUInput1Mux|v3|v2|Q~0_combout\ & (\IFIDREG|outPC\(11))) ) ) # ( \ALUInput1Mux|v3|v2|Q~7_combout\ & ( (!\ALUInput1Mux|v3|v2|Q~0_combout\ & (((!\ALUInput1Mux|v3|v2|Q~1_combout\ & ((\EXMEMREG|Result_EXMEM\(11)))) # (\ALUInput1Mux|v3|v2|Q~1_combout\ & 
-- (\MEMWBREG|writeData\(11)))))) # (\ALUInput1Mux|v3|v2|Q~0_combout\ & (\IFIDREG|outPC\(11))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001101010101000000110101010111001111010101011100111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IFIDREG|ALT_INV_outPC\(11),
	datab => \ALUInput1Mux|v3|v2|ALT_INV_Q~1_combout\,
	datac => \MEMWBREG|ALT_INV_writeData\(11),
	datad => \ALUInput1Mux|v3|v2|ALT_INV_Q~0_combout\,
	datae => \ALUInput1Mux|v3|v2|ALT_INV_Q~7_combout\,
	dataf => \EXMEMREG|ALT_INV_Result_EXMEM\(11),
	datag => \IDEXREG|ALT_INV_R1Reg_IDEX\(11),
	combout => \ALUInput1Mux|v3|v11|Q~0_combout\);

\RegisterFile|read_mux2|v6|v3|v11|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \RegisterFile|read_mux2|v6|v3|v11|Q~0_combout\ = ( \IFIDREG|outInstruction\(6) & ( \IFIDREG|outInstruction\(7) & ( \RegisterFile|reg7|gen_register:11:vff|O~q\ ) ) ) # ( !\IFIDREG|outInstruction\(6) & ( \IFIDREG|outInstruction\(7) & ( 
-- \RegisterFile|reg6|gen_register:11:vff|O~q\ ) ) ) # ( \IFIDREG|outInstruction\(6) & ( !\IFIDREG|outInstruction\(7) & ( \RegisterFile|reg5|gen_register:11:vff|O~q\ ) ) ) # ( !\IFIDREG|outInstruction\(6) & ( !\IFIDREG|outInstruction\(7) & ( 
-- \RegisterFile|reg4|gen_register:11:vff|O~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegisterFile|reg4|gen_register:11:vff|ALT_INV_O~q\,
	datab => \RegisterFile|reg5|gen_register:11:vff|ALT_INV_O~q\,
	datac => \RegisterFile|reg6|gen_register:11:vff|ALT_INV_O~q\,
	datad => \RegisterFile|reg7|gen_register:11:vff|ALT_INV_O~q\,
	datae => \IFIDREG|ALT_INV_outInstruction\(6),
	dataf => \IFIDREG|ALT_INV_outInstruction\(7),
	combout => \RegisterFile|read_mux2|v6|v3|v11|Q~0_combout\);

\RegisterFile|read_mux2|v6|v3|v11|Q~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \RegisterFile|read_mux2|v6|v3|v11|Q~1_combout\ = ( !\IFIDREG|outInstruction\(8) & ( (!\IFIDREG|outInstruction\(7) & (\IFIDREG|outInstruction\(6) & (\RegisterFile|reg1|gen_register:11:vff|O~q\))) # (\IFIDREG|outInstruction\(7) & 
-- ((!\IFIDREG|outInstruction\(6) & (((\RegisterFile|reg2|gen_register:11:vff|O~q\)))) # (\IFIDREG|outInstruction\(6) & (((\RegisterFile|reg3|gen_register:11:vff|O~q\)))))) ) ) # ( \IFIDREG|outInstruction\(8) & ( 
-- (((\RegisterFile|read_mux2|v6|v3|v11|Q~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001000010011000011110000111101000110010101110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IFIDREG|ALT_INV_outInstruction\(7),
	datab => \IFIDREG|ALT_INV_outInstruction\(6),
	datac => \RegisterFile|read_mux2|v6|v3|v11|ALT_INV_Q~0_combout\,
	datad => \RegisterFile|reg3|gen_register:11:vff|ALT_INV_O~q\,
	datae => \IFIDREG|ALT_INV_outInstruction\(8),
	dataf => \RegisterFile|reg2|gen_register:11:vff|ALT_INV_O~q\,
	datag => \RegisterFile|reg1|gen_register:11:vff|ALT_INV_O~q\,
	combout => \RegisterFile|read_mux2|v6|v3|v11|Q~1_combout\);

\IDEXREG|R2Reg_IDEX[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \RegisterFile|read_mux2|v6|v3|v11|Q~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEXREG|R2Reg_IDEX\(11));

\ALUInput2Mux|v3|v11|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALUInput2Mux|v3|v11|Q~0_combout\ = (!\ALUInput2Mux|v3|v12|Q~3_combout\ & ((\IDEXREG|R2Reg_IDEX\(11)))) # (\ALUInput2Mux|v3|v12|Q~3_combout\ & (\MEMWBREG|writeData\(11)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALUInput2Mux|v3|v12|ALT_INV_Q~3_combout\,
	datab => \MEMWBREG|ALT_INV_writeData\(11),
	datac => \IDEXREG|ALT_INV_R2Reg_IDEX\(11),
	combout => \ALUInput2Mux|v3|v11|Q~0_combout\);

\ALUInput2Mux|v3|v11|Q~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALUInput2Mux|v3|v11|Q~1_combout\ = ( \ALUInput2Mux|v3|v11|Q~0_combout\ & ( (!\ALUInput2Mux|v3|v12|Q~0_combout\ & (((\IDEXREG|jumpShortAddr_IDEX\(5))))) # (\ALUInput2Mux|v3|v12|Q~0_combout\ & (((!\ALUInput2Mux|v3|v12|Q~1_combout\)) # 
-- (\EXMEMREG|Result_EXMEM\(11)))) ) ) # ( !\ALUInput2Mux|v3|v11|Q~0_combout\ & ( (!\ALUInput2Mux|v3|v12|Q~0_combout\ & (((\IDEXREG|jumpShortAddr_IDEX\(5))))) # (\ALUInput2Mux|v3|v12|Q~0_combout\ & (\EXMEMREG|Result_EXMEM\(11) & 
-- (\ALUInput2Mux|v3|v12|Q~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111001101001100011111110100000001110011010011000111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EXMEMREG|ALT_INV_Result_EXMEM\(11),
	datab => \ALUInput2Mux|v3|v12|ALT_INV_Q~0_combout\,
	datac => \ALUInput2Mux|v3|v12|ALT_INV_Q~1_combout\,
	datad => \IDEXREG|ALT_INV_jumpShortAddr_IDEX\(5),
	datae => \ALUInput2Mux|v3|v11|ALT_INV_Q~0_combout\,
	combout => \ALUInput2Mux|v3|v11|Q~1_combout\);

\ALU16|V10|v12|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU16|V10|v12|Q~0_combout\ = ( \ALUInput1Mux|v3|v10|Q~0_combout\ & ( \ALUInput2Mux|v3|v10|Q~0_combout\ & ( \IDEXREG|ALUFunc_IDEX\(0) ) ) ) # ( !\ALUInput1Mux|v3|v10|Q~0_combout\ & ( \ALUInput2Mux|v3|v10|Q~0_combout\ & ( !\IDEXREG|ALUFunc_IDEX\(0) $ 
-- (((\ALUInput1Mux|v3|v2|Q~0_combout\ & \IFIDREG|outPC\(10)))) ) ) ) # ( \ALUInput1Mux|v3|v10|Q~0_combout\ & ( !\ALUInput2Mux|v3|v10|Q~0_combout\ & ( !\IDEXREG|ALUFunc_IDEX\(0) $ (\ALUInput2Mux|v3|v5|Q~0_combout\) ) ) ) # ( 
-- !\ALUInput1Mux|v3|v10|Q~0_combout\ & ( !\ALUInput2Mux|v3|v10|Q~0_combout\ & ( !\IDEXREG|ALUFunc_IDEX\(0) $ (!\ALUInput2Mux|v3|v5|Q~0_combout\ $ (((\ALUInput1Mux|v3|v2|Q~0_combout\ & \IFIDREG|outPC\(10))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001101001101001011010010110101010100110010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IDEXREG|ALT_INV_ALUFunc_IDEX\(0),
	datab => \ALUInput1Mux|v3|v2|ALT_INV_Q~0_combout\,
	datac => \ALUInput2Mux|v3|v5|ALT_INV_Q~0_combout\,
	datad => \IFIDREG|ALT_INV_outPC\(10),
	datae => \ALUInput1Mux|v3|v10|ALT_INV_Q~0_combout\,
	dataf => \ALUInput2Mux|v3|v10|ALT_INV_Q~0_combout\,
	combout => \ALU16|V10|v12|Q~0_combout\);

\ALU16|V10|v12|Q~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU16|V10|v12|Q~1_combout\ = (!\ALUInput1Mux|v3|v10|Q~1_combout\ & (!\IDEXREG|ALUFunc_IDEX\(0) $ (\ALUInput2Mux|v3|v10|Q~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000010010000100100001001000010010000100100001001000010010000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IDEXREG|ALT_INV_ALUFunc_IDEX\(0),
	datab => \ALUInput1Mux|v3|v10|ALT_INV_Q~1_combout\,
	datac => \ALUInput2Mux|v3|v10|ALT_INV_Q~1_combout\,
	combout => \ALU16|V10|v12|Q~1_combout\);

\ALU16|V10|v12|Q~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU16|V10|v12|Q~2_combout\ = ( \ALU16|V10|v12|Q~0_combout\ & ( \ALU16|V10|v12|Q~1_combout\ & ( \ALU16|V0|v12|Q~0_combout\ ) ) ) # ( !\ALU16|V10|v12|Q~0_combout\ & ( \ALU16|V10|v12|Q~1_combout\ & ( \ALU16|V0|v12|Q~0_combout\ ) ) ) # ( 
-- \ALU16|V10|v12|Q~0_combout\ & ( !\ALU16|V10|v12|Q~1_combout\ & ( (\ALU16|V0|v12|Q~0_combout\ & (((\ALU16|V8|v12|Q~2_combout\ & \ALU16|V9|v12|Q~0_combout\)) # (\ALU16|V9|v12|Q~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU16|V0|v12|ALT_INV_Q~0_combout\,
	datab => \ALU16|V8|v12|ALT_INV_Q~2_combout\,
	datac => \ALU16|V9|v12|ALT_INV_Q~0_combout\,
	datad => \ALU16|V9|v12|ALT_INV_Q~1_combout\,
	datae => \ALU16|V10|v12|ALT_INV_Q~0_combout\,
	dataf => \ALU16|V10|v12|ALT_INV_Q~1_combout\,
	combout => \ALU16|V10|v12|Q~2_combout\);

\ALU16|V21|v1|v11|Q\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU16|V21|v1|v11|Q~combout\ = ( \ALUInput2Mux|v3|v11|Q~1_combout\ & ( \ALU16|V10|v12|Q~2_combout\ & ( (!\ALUInput1Mux|v3|v11|Q~0_combout\ & (!\IDEXREG|ALUFunc_IDEX\(0) $ (((!\IDEXREG|ALUFunc_IDEX\(1)) # (!\IDEXREG|ALUFunc_IDEX\(2)))))) # 
-- (\ALUInput1Mux|v3|v11|Q~0_combout\ & (!\IDEXREG|ALUFunc_IDEX\(2) & ((!\IDEXREG|ALUFunc_IDEX\(0)) # (\IDEXREG|ALUFunc_IDEX\(1))))) ) ) ) # ( !\ALUInput2Mux|v3|v11|Q~1_combout\ & ( \ALU16|V10|v12|Q~2_combout\ & ( (!\IDEXREG|ALUFunc_IDEX\(0) & 
-- ((!\IDEXREG|ALUFunc_IDEX\(1) & (!\IDEXREG|ALUFunc_IDEX\(2) & !\ALUInput1Mux|v3|v11|Q~0_combout\)) # (\IDEXREG|ALUFunc_IDEX\(1) & (\IDEXREG|ALUFunc_IDEX\(2) & \ALUInput1Mux|v3|v11|Q~0_combout\)))) # (\IDEXREG|ALUFunc_IDEX\(0) & ((!\IDEXREG|ALUFunc_IDEX\(2) 
-- $ (!\ALUInput1Mux|v3|v11|Q~0_combout\)))) ) ) ) # ( \ALUInput2Mux|v3|v11|Q~1_combout\ & ( !\ALU16|V10|v12|Q~2_combout\ & ( (!\ALUInput1Mux|v3|v11|Q~0_combout\ & (!\IDEXREG|ALUFunc_IDEX\(1) $ (!\IDEXREG|ALUFunc_IDEX\(0) $ (!\IDEXREG|ALUFunc_IDEX\(2))))) # 
-- (\ALUInput1Mux|v3|v11|Q~0_combout\ & (!\IDEXREG|ALUFunc_IDEX\(2) & ((\IDEXREG|ALUFunc_IDEX\(0)) # (\IDEXREG|ALUFunc_IDEX\(1))))) ) ) ) # ( !\ALUInput2Mux|v3|v11|Q~1_combout\ & ( !\ALU16|V10|v12|Q~2_combout\ & ( (!\IDEXREG|ALUFunc_IDEX\(0) & 
-- (\ALUInput1Mux|v3|v11|Q~0_combout\ & (!\IDEXREG|ALUFunc_IDEX\(1) $ (\IDEXREG|ALUFunc_IDEX\(2))))) # (\IDEXREG|ALUFunc_IDEX\(0) & (!\ALUInput1Mux|v3|v11|Q~0_combout\ $ (((\IDEXREG|ALUFunc_IDEX\(1) & !\IDEXREG|ALUFunc_IDEX\(2)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001110010100100101100111000010000011001101000011011011010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IDEXREG|ALT_INV_ALUFunc_IDEX\(1),
	datab => \IDEXREG|ALT_INV_ALUFunc_IDEX\(0),
	datac => \IDEXREG|ALT_INV_ALUFunc_IDEX\(2),
	datad => \ALUInput1Mux|v3|v11|ALT_INV_Q~0_combout\,
	datae => \ALUInput2Mux|v3|v11|ALT_INV_Q~1_combout\,
	dataf => \ALU16|V10|v12|ALT_INV_Q~2_combout\,
	combout => \ALU16|V21|v1|v11|Q~combout\);

\EXMEMREG|Result_EXMEM[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \ALU16|V21|v1|v11|Q~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EXMEMREG|Result_EXMEM\(11));

\JR|PCout[12]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \JR|PCout[12]~0_combout\ = (\IFIDREG|outPC\(12) & \Controller|isJType~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IFIDREG|ALT_INV_outPC\(12),
	datab => \Controller|ALT_INV_isJType~0_combout\,
	combout => \JR|PCout[12]~0_combout\);

\PC|gen_register:12:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \JR|PCout[12]~0_combout\,
	ena => \Trap|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|gen_register:12:vff|O~q\);

\IFIDREG|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \IFIDREG|Add0~45_sumout\ = SUM(( \PC|gen_register:12:vff|O~q\ ) + ( GND ) + ( \IFIDREG|Add0~42\ ))
-- \IFIDREG|Add0~46\ = CARRY(( \PC|gen_register:12:vff|O~q\ ) + ( GND ) + ( \IFIDREG|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|gen_register:12:vff|ALT_INV_O~q\,
	cin => \IFIDREG|Add0~42\,
	sumout => \IFIDREG|Add0~45_sumout\,
	cout => \IFIDREG|Add0~46\);

\IFIDREG|outPC[12]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \IFIDREG|outPC[12]~13_combout\ = ( \instr[15]~input_o\ & ( \IFIDREG|Add0~45_sumout\ & ( (\clock~input_o\ & (((!\instr[13]~input_o\) # (!\instr[14]~input_o\)) # (\instr[12]~input_o\))) ) ) ) # ( !\instr[15]~input_o\ & ( \IFIDREG|Add0~45_sumout\ & ( 
-- \clock~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_clock~input_o\,
	datab => \ALT_INV_instr[12]~input_o\,
	datac => \ALT_INV_instr[13]~input_o\,
	datad => \ALT_INV_instr[14]~input_o\,
	datae => \ALT_INV_instr[15]~input_o\,
	dataf => \IFIDREG|ALT_INV_Add0~45_sumout\,
	combout => \IFIDREG|outPC[12]~13_combout\);

\IFIDREG|outPC[12]\ : cyclonev_lcell_comb
-- Equation(s):
-- \IFIDREG|outPC\(12) = ( \IFIDREG|outPC\(12) & ( \IFIDREG|outPC[15]~1_combout\ & ( \IFIDREG|outPC[12]~13_combout\ ) ) ) # ( !\IFIDREG|outPC\(12) & ( \IFIDREG|outPC[15]~1_combout\ & ( \IFIDREG|outPC[12]~13_combout\ ) ) ) # ( \IFIDREG|outPC\(12) & ( 
-- !\IFIDREG|outPC[15]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \IFIDREG|ALT_INV_outPC[12]~13_combout\,
	datae => \IFIDREG|ALT_INV_outPC\(12),
	dataf => \IFIDREG|ALT_INV_outPC[15]~1_combout\,
	combout => \IFIDREG|outPC\(12));

\fromData[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fromData(12),
	o => \fromData[12]~input_o\);

\MEMWB_inputData_sig[12]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMWB_inputData_sig[12]~12_combout\ = (!\EXMEMREG|isLW_EXMEM~q\ & (\EXMEMREG|Result_EXMEM\(12))) # (\EXMEMREG|isLW_EXMEM~q\ & ((\fromData[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011101000111010001110100011101000111010001110100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EXMEMREG|ALT_INV_Result_EXMEM\(12),
	datab => \EXMEMREG|ALT_INV_isLW_EXMEM~q\,
	datac => \ALT_INV_fromData[12]~input_o\,
	combout => \MEMWB_inputData_sig[12]~12_combout\);

\keyData[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_keyData(12),
	o => \keyData[12]~input_o\);

\MEMWBREG|writeData[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \MEMWB_inputData_sig[12]~12_combout\,
	asdata => \keyData[12]~input_o\,
	sload => \EXMEMREG|ReadDigit_EXMEM~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMWBREG|writeData\(12));

\RegisterFile|reg4|gen_register:12:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~input_o\,
	d => \MEMWBREG|writeData\(12),
	ena => \RegisterFile|v0|v12|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegisterFile|reg4|gen_register:12:vff|O~q\);

\RegisterFile|reg5|gen_register:12:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~input_o\,
	d => \MEMWBREG|writeData\(12),
	ena => \RegisterFile|v0|v14|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegisterFile|reg5|gen_register:12:vff|O~q\);

\RegisterFile|reg6|gen_register:12:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~input_o\,
	d => \MEMWBREG|writeData\(12),
	ena => \RegisterFile|v0|v16|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegisterFile|reg6|gen_register:12:vff|O~q\);

\RegisterFile|reg7|gen_register:12:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~input_o\,
	d => \MEMWBREG|writeData\(12),
	ena => \RegisterFile|v0|v18|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegisterFile|reg7|gen_register:12:vff|O~q\);

\RegisterFile|read_mux1|v6|v3|v12|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \RegisterFile|read_mux1|v6|v3|v12|Q~0_combout\ = ( \IFIDREG|outInstruction\(9) & ( \IFIDREG|outInstruction\(10) & ( \RegisterFile|reg7|gen_register:12:vff|O~q\ ) ) ) # ( !\IFIDREG|outInstruction\(9) & ( \IFIDREG|outInstruction\(10) & ( 
-- \RegisterFile|reg6|gen_register:12:vff|O~q\ ) ) ) # ( \IFIDREG|outInstruction\(9) & ( !\IFIDREG|outInstruction\(10) & ( \RegisterFile|reg5|gen_register:12:vff|O~q\ ) ) ) # ( !\IFIDREG|outInstruction\(9) & ( !\IFIDREG|outInstruction\(10) & ( 
-- \RegisterFile|reg4|gen_register:12:vff|O~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegisterFile|reg4|gen_register:12:vff|ALT_INV_O~q\,
	datab => \RegisterFile|reg5|gen_register:12:vff|ALT_INV_O~q\,
	datac => \RegisterFile|reg6|gen_register:12:vff|ALT_INV_O~q\,
	datad => \RegisterFile|reg7|gen_register:12:vff|ALT_INV_O~q\,
	datae => \IFIDREG|ALT_INV_outInstruction\(9),
	dataf => \IFIDREG|ALT_INV_outInstruction\(10),
	combout => \RegisterFile|read_mux1|v6|v3|v12|Q~0_combout\);

\RegisterFile|reg3|gen_register:12:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~input_o\,
	d => \MEMWBREG|writeData\(12),
	ena => \RegisterFile|v0|v10|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegisterFile|reg3|gen_register:12:vff|O~q\);

\RegisterFile|reg2|gen_register:12:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~input_o\,
	d => \MEMWBREG|writeData\(12),
	ena => \RegisterFile|v0|v8|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegisterFile|reg2|gen_register:12:vff|O~q\);

\RegisterFile|reg1|gen_register:12:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~input_o\,
	d => \MEMWBREG|writeData\(12),
	ena => \RegisterFile|v0|v6|Q~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegisterFile|reg1|gen_register:12:vff|O~q\);

\RegisterFile|read_mux1|v6|v3|v12|Q~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \RegisterFile|read_mux1|v6|v3|v12|Q~1_combout\ = ( !\IFIDREG|outInstruction\(11) & ( (!\IFIDREG|outInstruction\(10) & (\IFIDREG|outInstruction\(9) & (\RegisterFile|reg1|gen_register:12:vff|O~q\))) # (\IFIDREG|outInstruction\(10) & 
-- ((!\IFIDREG|outInstruction\(9) & (((\RegisterFile|reg2|gen_register:12:vff|O~q\)))) # (\IFIDREG|outInstruction\(9) & (((\RegisterFile|reg3|gen_register:12:vff|O~q\)))))) ) ) # ( \IFIDREG|outInstruction\(11) & ( 
-- (((\RegisterFile|read_mux1|v6|v3|v12|Q~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001000010011000011110000111101000110010101110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IFIDREG|ALT_INV_outInstruction\(10),
	datab => \IFIDREG|ALT_INV_outInstruction\(9),
	datac => \RegisterFile|read_mux1|v6|v3|v12|ALT_INV_Q~0_combout\,
	datad => \RegisterFile|reg3|gen_register:12:vff|ALT_INV_O~q\,
	datae => \IFIDREG|ALT_INV_outInstruction\(11),
	dataf => \RegisterFile|reg2|gen_register:12:vff|ALT_INV_O~q\,
	datag => \RegisterFile|reg1|gen_register:12:vff|ALT_INV_O~q\,
	combout => \RegisterFile|read_mux1|v6|v3|v12|Q~1_combout\);

\IDEXREG|R1Reg_IDEX[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \RegisterFile|read_mux1|v6|v3|v12|Q~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEXREG|R1Reg_IDEX\(12));

\ALUInput1Mux|v3|v12|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALUInput1Mux|v3|v12|Q~0_combout\ = ( !\ALUInput1Mux|v3|v2|Q~7_combout\ & ( (!\ALUInput1Mux|v3|v2|Q~0_combout\ & (((!\ALUInput1Mux|v3|v2|Q~1_combout\ & ((\EXMEMREG|Result_EXMEM\(12)))) # (\ALUInput1Mux|v3|v2|Q~1_combout\ & (\IDEXREG|R1Reg_IDEX\(12)))))) # 
-- (\ALUInput1Mux|v3|v2|Q~0_combout\ & (\IFIDREG|outPC\(12))) ) ) # ( \ALUInput1Mux|v3|v2|Q~7_combout\ & ( (!\ALUInput1Mux|v3|v2|Q~0_combout\ & (((!\ALUInput1Mux|v3|v2|Q~1_combout\ & ((\EXMEMREG|Result_EXMEM\(12)))) # (\ALUInput1Mux|v3|v2|Q~1_combout\ & 
-- (\MEMWBREG|writeData\(12)))))) # (\ALUInput1Mux|v3|v2|Q~0_combout\ & (\IFIDREG|outPC\(12))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001101010101000000110101010111001111010101011100111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IFIDREG|ALT_INV_outPC\(12),
	datab => \ALUInput1Mux|v3|v2|ALT_INV_Q~1_combout\,
	datac => \MEMWBREG|ALT_INV_writeData\(12),
	datad => \ALUInput1Mux|v3|v2|ALT_INV_Q~0_combout\,
	datae => \ALUInput1Mux|v3|v2|ALT_INV_Q~7_combout\,
	dataf => \EXMEMREG|ALT_INV_Result_EXMEM\(12),
	datag => \IDEXREG|ALT_INV_R1Reg_IDEX\(12),
	combout => \ALUInput1Mux|v3|v12|Q~0_combout\);

\RegisterFile|read_mux2|v6|v3|v12|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \RegisterFile|read_mux2|v6|v3|v12|Q~0_combout\ = ( \IFIDREG|outInstruction\(6) & ( \IFIDREG|outInstruction\(7) & ( \RegisterFile|reg7|gen_register:12:vff|O~q\ ) ) ) # ( !\IFIDREG|outInstruction\(6) & ( \IFIDREG|outInstruction\(7) & ( 
-- \RegisterFile|reg6|gen_register:12:vff|O~q\ ) ) ) # ( \IFIDREG|outInstruction\(6) & ( !\IFIDREG|outInstruction\(7) & ( \RegisterFile|reg5|gen_register:12:vff|O~q\ ) ) ) # ( !\IFIDREG|outInstruction\(6) & ( !\IFIDREG|outInstruction\(7) & ( 
-- \RegisterFile|reg4|gen_register:12:vff|O~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegisterFile|reg4|gen_register:12:vff|ALT_INV_O~q\,
	datab => \RegisterFile|reg5|gen_register:12:vff|ALT_INV_O~q\,
	datac => \RegisterFile|reg6|gen_register:12:vff|ALT_INV_O~q\,
	datad => \RegisterFile|reg7|gen_register:12:vff|ALT_INV_O~q\,
	datae => \IFIDREG|ALT_INV_outInstruction\(6),
	dataf => \IFIDREG|ALT_INV_outInstruction\(7),
	combout => \RegisterFile|read_mux2|v6|v3|v12|Q~0_combout\);

\RegisterFile|read_mux2|v6|v3|v12|Q~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \RegisterFile|read_mux2|v6|v3|v12|Q~1_combout\ = ( !\IFIDREG|outInstruction\(8) & ( (!\IFIDREG|outInstruction\(7) & (\IFIDREG|outInstruction\(6) & (\RegisterFile|reg1|gen_register:12:vff|O~q\))) # (\IFIDREG|outInstruction\(7) & 
-- ((!\IFIDREG|outInstruction\(6) & (((\RegisterFile|reg2|gen_register:12:vff|O~q\)))) # (\IFIDREG|outInstruction\(6) & (((\RegisterFile|reg3|gen_register:12:vff|O~q\)))))) ) ) # ( \IFIDREG|outInstruction\(8) & ( 
-- (((\RegisterFile|read_mux2|v6|v3|v12|Q~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001000010011000011110000111101000110010101110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IFIDREG|ALT_INV_outInstruction\(7),
	datab => \IFIDREG|ALT_INV_outInstruction\(6),
	datac => \RegisterFile|read_mux2|v6|v3|v12|ALT_INV_Q~0_combout\,
	datad => \RegisterFile|reg3|gen_register:12:vff|ALT_INV_O~q\,
	datae => \IFIDREG|ALT_INV_outInstruction\(8),
	dataf => \RegisterFile|reg2|gen_register:12:vff|ALT_INV_O~q\,
	datag => \RegisterFile|reg1|gen_register:12:vff|ALT_INV_O~q\,
	combout => \RegisterFile|read_mux2|v6|v3|v12|Q~1_combout\);

\IDEXREG|R2Reg_IDEX[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \RegisterFile|read_mux2|v6|v3|v12|Q~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEXREG|R2Reg_IDEX\(12));

\ALUInput2Mux|v3|v12|Q~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALUInput2Mux|v3|v12|Q~4_combout\ = (!\ALUInput2Mux|v3|v12|Q~3_combout\ & ((\IDEXREG|R2Reg_IDEX\(12)))) # (\ALUInput2Mux|v3|v12|Q~3_combout\ & (\MEMWBREG|writeData\(12)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALUInput2Mux|v3|v12|ALT_INV_Q~3_combout\,
	datab => \MEMWBREG|ALT_INV_writeData\(12),
	datac => \IDEXREG|ALT_INV_R2Reg_IDEX\(12),
	combout => \ALUInput2Mux|v3|v12|Q~4_combout\);

\ALUInput2Mux|v3|v12|Q~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALUInput2Mux|v3|v12|Q~5_combout\ = ( \ALUInput2Mux|v3|v12|Q~4_combout\ & ( (!\ALUInput2Mux|v3|v12|Q~0_combout\ & (((\IDEXREG|jumpShortAddr_IDEX\(5))))) # (\ALUInput2Mux|v3|v12|Q~0_combout\ & (((!\ALUInput2Mux|v3|v12|Q~1_combout\)) # 
-- (\EXMEMREG|Result_EXMEM\(12)))) ) ) # ( !\ALUInput2Mux|v3|v12|Q~4_combout\ & ( (!\ALUInput2Mux|v3|v12|Q~0_combout\ & (((\IDEXREG|jumpShortAddr_IDEX\(5))))) # (\ALUInput2Mux|v3|v12|Q~0_combout\ & (\EXMEMREG|Result_EXMEM\(12) & 
-- (\ALUInput2Mux|v3|v12|Q~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111001101001100011111110100000001110011010011000111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EXMEMREG|ALT_INV_Result_EXMEM\(12),
	datab => \ALUInput2Mux|v3|v12|ALT_INV_Q~0_combout\,
	datac => \ALUInput2Mux|v3|v12|ALT_INV_Q~1_combout\,
	datad => \IDEXREG|ALT_INV_jumpShortAddr_IDEX\(5),
	datae => \ALUInput2Mux|v3|v12|ALT_INV_Q~4_combout\,
	combout => \ALUInput2Mux|v3|v12|Q~5_combout\);

\ALU16|V10|v12|Q~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU16|V10|v12|Q~3_combout\ = ( \ALU16|V9|v12|Q~1_combout\ & ( \ALU16|V10|v12|Q~0_combout\ ) ) # ( !\ALU16|V9|v12|Q~1_combout\ & ( \ALU16|V10|v12|Q~0_combout\ & ( (\ALU16|V0|v12|Q~0_combout\ & (\ALU16|V9|v12|Q~0_combout\ & ((\ALU16|V8|v12|Q~1_combout\) # 
-- (\ALU16|V8|v12|Q~3_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000101011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU16|V0|v12|ALT_INV_Q~0_combout\,
	datab => \ALU16|V8|v12|ALT_INV_Q~3_combout\,
	datac => \ALU16|V8|v12|ALT_INV_Q~1_combout\,
	datad => \ALU16|V9|v12|ALT_INV_Q~0_combout\,
	datae => \ALU16|V9|v12|ALT_INV_Q~1_combout\,
	dataf => \ALU16|V10|v12|ALT_INV_Q~0_combout\,
	combout => \ALU16|V10|v12|Q~3_combout\);

\ALU16|V11|v12|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU16|V11|v12|Q~0_combout\ = !\IDEXREG|ALUFunc_IDEX\(0) $ (!\ALUInput1Mux|v3|v11|Q~0_combout\ $ (\ALUInput2Mux|v3|v11|Q~1_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101101001011010010110100101101001011010010110100101101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IDEXREG|ALT_INV_ALUFunc_IDEX\(0),
	datab => \ALUInput1Mux|v3|v11|ALT_INV_Q~0_combout\,
	datac => \ALUInput2Mux|v3|v11|ALT_INV_Q~1_combout\,
	combout => \ALU16|V11|v12|Q~0_combout\);

\ALU16|V11|v12|Q~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU16|V11|v12|Q~1_combout\ = (\ALU16|V0|v12|Q~0_combout\ & (\ALUInput1Mux|v3|v11|Q~0_combout\ & (!\IDEXREG|ALUFunc_IDEX\(0) $ (!\ALUInput2Mux|v3|v11|Q~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000010000000010000001000000001000000100000000100000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IDEXREG|ALT_INV_ALUFunc_IDEX\(0),
	datab => \ALU16|V0|v12|ALT_INV_Q~0_combout\,
	datac => \ALUInput1Mux|v3|v11|ALT_INV_Q~0_combout\,
	datad => \ALUInput2Mux|v3|v11|ALT_INV_Q~1_combout\,
	combout => \ALU16|V11|v12|Q~1_combout\);

\ALU16|V11|v12|Q~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU16|V11|v12|Q~2_combout\ = ( !\ALU16|V11|v12|Q~1_combout\ & ( (!\ALU16|V0|v12|Q~0_combout\) # ((!\ALU16|V11|v12|Q~0_combout\) # ((!\ALU16|V10|v12|Q~3_combout\ & !\ALU16|V10|v12|Q~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111101010000000000000000011111111111010100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU16|V0|v12|ALT_INV_Q~0_combout\,
	datab => \ALU16|V10|v12|ALT_INV_Q~3_combout\,
	datac => \ALU16|V10|v12|ALT_INV_Q~1_combout\,
	datad => \ALU16|V11|v12|ALT_INV_Q~0_combout\,
	datae => \ALU16|V11|v12|ALT_INV_Q~1_combout\,
	combout => \ALU16|V11|v12|Q~2_combout\);

\ALU16|V21|v1|v12|Q\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU16|V21|v1|v12|Q~combout\ = ( \ALUInput2Mux|v3|v12|Q~5_combout\ & ( \ALU16|V11|v12|Q~2_combout\ & ( (!\ALUInput1Mux|v3|v12|Q~0_combout\ & (!\IDEXREG|ALUFunc_IDEX\(1) $ (!\IDEXREG|ALUFunc_IDEX\(0) $ (!\IDEXREG|ALUFunc_IDEX\(2))))) # 
-- (\ALUInput1Mux|v3|v12|Q~0_combout\ & (!\IDEXREG|ALUFunc_IDEX\(2) & ((\IDEXREG|ALUFunc_IDEX\(0)) # (\IDEXREG|ALUFunc_IDEX\(1))))) ) ) ) # ( !\ALUInput2Mux|v3|v12|Q~5_combout\ & ( \ALU16|V11|v12|Q~2_combout\ & ( (!\IDEXREG|ALUFunc_IDEX\(0) & 
-- (\ALUInput1Mux|v3|v12|Q~0_combout\ & (!\IDEXREG|ALUFunc_IDEX\(1) $ (\IDEXREG|ALUFunc_IDEX\(2))))) # (\IDEXREG|ALUFunc_IDEX\(0) & (!\ALUInput1Mux|v3|v12|Q~0_combout\ $ (((\IDEXREG|ALUFunc_IDEX\(1) & !\IDEXREG|ALUFunc_IDEX\(2)))))) ) ) ) # ( 
-- \ALUInput2Mux|v3|v12|Q~5_combout\ & ( !\ALU16|V11|v12|Q~2_combout\ & ( (!\ALUInput1Mux|v3|v12|Q~0_combout\ & (!\IDEXREG|ALUFunc_IDEX\(0) $ (((!\IDEXREG|ALUFunc_IDEX\(1)) # (!\IDEXREG|ALUFunc_IDEX\(2)))))) # (\ALUInput1Mux|v3|v12|Q~0_combout\ & 
-- (!\IDEXREG|ALUFunc_IDEX\(2) & ((!\IDEXREG|ALUFunc_IDEX\(0)) # (\IDEXREG|ALUFunc_IDEX\(1))))) ) ) ) # ( !\ALUInput2Mux|v3|v12|Q~5_combout\ & ( !\ALU16|V11|v12|Q~2_combout\ & ( (!\IDEXREG|ALUFunc_IDEX\(0) & ((!\IDEXREG|ALUFunc_IDEX\(1) & 
-- (!\IDEXREG|ALUFunc_IDEX\(2) & !\ALUInput1Mux|v3|v12|Q~0_combout\)) # (\IDEXREG|ALUFunc_IDEX\(1) & (\IDEXREG|ALUFunc_IDEX\(2) & \ALUInput1Mux|v3|v12|Q~0_combout\)))) # (\IDEXREG|ALUFunc_IDEX\(0) & ((!\IDEXREG|ALUFunc_IDEX\(2) $ 
-- (!\ALUInput1Mux|v3|v12|Q~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000001100110100001101101101000000100011100101001001011001110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IDEXREG|ALT_INV_ALUFunc_IDEX\(1),
	datab => \IDEXREG|ALT_INV_ALUFunc_IDEX\(0),
	datac => \IDEXREG|ALT_INV_ALUFunc_IDEX\(2),
	datad => \ALUInput1Mux|v3|v12|ALT_INV_Q~0_combout\,
	datae => \ALUInput2Mux|v3|v12|ALT_INV_Q~5_combout\,
	dataf => \ALU16|V11|v12|ALT_INV_Q~2_combout\,
	combout => \ALU16|V21|v1|v12|Q~combout\);

\EXMEMREG|Result_EXMEM[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \ALU16|V21|v1|v12|Q~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EXMEMREG|Result_EXMEM\(12));

\fromData[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fromData(13),
	o => \fromData[13]~input_o\);

\MEMWB_inputData_sig[13]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMWB_inputData_sig[13]~13_combout\ = (!\EXMEMREG|isLW_EXMEM~q\ & (\EXMEMREG|Result_EXMEM\(13))) # (\EXMEMREG|isLW_EXMEM~q\ & ((\fromData[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011101000111010001110100011101000111010001110100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EXMEMREG|ALT_INV_Result_EXMEM\(13),
	datab => \EXMEMREG|ALT_INV_isLW_EXMEM~q\,
	datac => \ALT_INV_fromData[13]~input_o\,
	combout => \MEMWB_inputData_sig[13]~13_combout\);

\keyData[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_keyData(13),
	o => \keyData[13]~input_o\);

\MEMWBREG|writeData[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \MEMWB_inputData_sig[13]~13_combout\,
	asdata => \keyData[13]~input_o\,
	sload => \EXMEMREG|ReadDigit_EXMEM~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMWBREG|writeData\(13));

\RegisterFile|reg4|gen_register:13:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~input_o\,
	d => \MEMWBREG|writeData\(13),
	ena => \RegisterFile|v0|v12|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegisterFile|reg4|gen_register:13:vff|O~q\);

\RegisterFile|reg5|gen_register:13:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~input_o\,
	d => \MEMWBREG|writeData\(13),
	ena => \RegisterFile|v0|v14|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegisterFile|reg5|gen_register:13:vff|O~q\);

\RegisterFile|reg6|gen_register:13:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~input_o\,
	d => \MEMWBREG|writeData\(13),
	ena => \RegisterFile|v0|v16|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegisterFile|reg6|gen_register:13:vff|O~q\);

\RegisterFile|reg7|gen_register:13:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~input_o\,
	d => \MEMWBREG|writeData\(13),
	ena => \RegisterFile|v0|v18|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegisterFile|reg7|gen_register:13:vff|O~q\);

\RegisterFile|read_mux2|v6|v3|v13|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \RegisterFile|read_mux2|v6|v3|v13|Q~0_combout\ = ( \IFIDREG|outInstruction\(6) & ( \IFIDREG|outInstruction\(7) & ( \RegisterFile|reg7|gen_register:13:vff|O~q\ ) ) ) # ( !\IFIDREG|outInstruction\(6) & ( \IFIDREG|outInstruction\(7) & ( 
-- \RegisterFile|reg6|gen_register:13:vff|O~q\ ) ) ) # ( \IFIDREG|outInstruction\(6) & ( !\IFIDREG|outInstruction\(7) & ( \RegisterFile|reg5|gen_register:13:vff|O~q\ ) ) ) # ( !\IFIDREG|outInstruction\(6) & ( !\IFIDREG|outInstruction\(7) & ( 
-- \RegisterFile|reg4|gen_register:13:vff|O~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegisterFile|reg4|gen_register:13:vff|ALT_INV_O~q\,
	datab => \RegisterFile|reg5|gen_register:13:vff|ALT_INV_O~q\,
	datac => \RegisterFile|reg6|gen_register:13:vff|ALT_INV_O~q\,
	datad => \RegisterFile|reg7|gen_register:13:vff|ALT_INV_O~q\,
	datae => \IFIDREG|ALT_INV_outInstruction\(6),
	dataf => \IFIDREG|ALT_INV_outInstruction\(7),
	combout => \RegisterFile|read_mux2|v6|v3|v13|Q~0_combout\);

\RegisterFile|reg3|gen_register:13:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~input_o\,
	d => \MEMWBREG|writeData\(13),
	ena => \RegisterFile|v0|v10|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegisterFile|reg3|gen_register:13:vff|O~q\);

\RegisterFile|reg2|gen_register:13:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~input_o\,
	d => \MEMWBREG|writeData\(13),
	ena => \RegisterFile|v0|v8|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegisterFile|reg2|gen_register:13:vff|O~q\);

\RegisterFile|reg1|gen_register:13:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~input_o\,
	d => \MEMWBREG|writeData\(13),
	ena => \RegisterFile|v0|v6|Q~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegisterFile|reg1|gen_register:13:vff|O~q\);

\RegisterFile|read_mux2|v6|v3|v13|Q~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \RegisterFile|read_mux2|v6|v3|v13|Q~1_combout\ = ( !\IFIDREG|outInstruction\(8) & ( (!\IFIDREG|outInstruction\(7) & (\IFIDREG|outInstruction\(6) & (\RegisterFile|reg1|gen_register:13:vff|O~q\))) # (\IFIDREG|outInstruction\(7) & 
-- ((!\IFIDREG|outInstruction\(6) & (((\RegisterFile|reg2|gen_register:13:vff|O~q\)))) # (\IFIDREG|outInstruction\(6) & (((\RegisterFile|reg3|gen_register:13:vff|O~q\)))))) ) ) # ( \IFIDREG|outInstruction\(8) & ( 
-- (((\RegisterFile|read_mux2|v6|v3|v13|Q~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001000010011000011110000111101000110010101110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IFIDREG|ALT_INV_outInstruction\(7),
	datab => \IFIDREG|ALT_INV_outInstruction\(6),
	datac => \RegisterFile|read_mux2|v6|v3|v13|ALT_INV_Q~0_combout\,
	datad => \RegisterFile|reg3|gen_register:13:vff|ALT_INV_O~q\,
	datae => \IFIDREG|ALT_INV_outInstruction\(8),
	dataf => \RegisterFile|reg2|gen_register:13:vff|ALT_INV_O~q\,
	datag => \RegisterFile|reg1|gen_register:13:vff|ALT_INV_O~q\,
	combout => \RegisterFile|read_mux2|v6|v3|v13|Q~1_combout\);

\IDEXREG|R2Reg_IDEX[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \RegisterFile|read_mux2|v6|v3|v13|Q~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEXREG|R2Reg_IDEX\(13));

\ALUInput2Mux|v3|v13|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALUInput2Mux|v3|v13|Q~0_combout\ = (!\ALUInput2Mux|v3|v12|Q~3_combout\ & ((\IDEXREG|R2Reg_IDEX\(13)))) # (\ALUInput2Mux|v3|v12|Q~3_combout\ & (\MEMWBREG|writeData\(13)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALUInput2Mux|v3|v12|ALT_INV_Q~3_combout\,
	datab => \MEMWBREG|ALT_INV_writeData\(13),
	datac => \IDEXREG|ALT_INV_R2Reg_IDEX\(13),
	combout => \ALUInput2Mux|v3|v13|Q~0_combout\);

\ALUInput2Mux|v3|v13|Q~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALUInput2Mux|v3|v13|Q~1_combout\ = ( \ALUInput2Mux|v3|v13|Q~0_combout\ & ( (!\ALUInput2Mux|v3|v12|Q~0_combout\ & (((\IDEXREG|jumpShortAddr_IDEX\(5))))) # (\ALUInput2Mux|v3|v12|Q~0_combout\ & (((!\ALUInput2Mux|v3|v12|Q~1_combout\)) # 
-- (\EXMEMREG|Result_EXMEM\(13)))) ) ) # ( !\ALUInput2Mux|v3|v13|Q~0_combout\ & ( (!\ALUInput2Mux|v3|v12|Q~0_combout\ & (((\IDEXREG|jumpShortAddr_IDEX\(5))))) # (\ALUInput2Mux|v3|v12|Q~0_combout\ & (\EXMEMREG|Result_EXMEM\(13) & 
-- (\ALUInput2Mux|v3|v12|Q~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111001101001100011111110100000001110011010011000111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EXMEMREG|ALT_INV_Result_EXMEM\(13),
	datab => \ALUInput2Mux|v3|v12|ALT_INV_Q~0_combout\,
	datac => \ALUInput2Mux|v3|v12|ALT_INV_Q~1_combout\,
	datad => \IDEXREG|ALT_INV_jumpShortAddr_IDEX\(5),
	datae => \ALUInput2Mux|v3|v13|ALT_INV_Q~0_combout\,
	combout => \ALUInput2Mux|v3|v13|Q~1_combout\);

\JR|PCout[13]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \JR|PCout[13]~1_combout\ = (\IFIDREG|outPC\(13) & \Controller|isJType~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IFIDREG|ALT_INV_outPC\(13),
	datab => \Controller|ALT_INV_isJType~0_combout\,
	combout => \JR|PCout[13]~1_combout\);

\PC|gen_register:13:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \JR|PCout[13]~1_combout\,
	ena => \Trap|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|gen_register:13:vff|O~q\);

\IFIDREG|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \IFIDREG|Add0~49_sumout\ = SUM(( \PC|gen_register:13:vff|O~q\ ) + ( GND ) + ( \IFIDREG|Add0~46\ ))
-- \IFIDREG|Add0~50\ = CARRY(( \PC|gen_register:13:vff|O~q\ ) + ( GND ) + ( \IFIDREG|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|gen_register:13:vff|ALT_INV_O~q\,
	cin => \IFIDREG|Add0~46\,
	sumout => \IFIDREG|Add0~49_sumout\,
	cout => \IFIDREG|Add0~50\);

\IFIDREG|outPC[13]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \IFIDREG|outPC[13]~14_combout\ = ( \instr[15]~input_o\ & ( \IFIDREG|Add0~49_sumout\ & ( (\clock~input_o\ & (((!\instr[13]~input_o\) # (!\instr[14]~input_o\)) # (\instr[12]~input_o\))) ) ) ) # ( !\instr[15]~input_o\ & ( \IFIDREG|Add0~49_sumout\ & ( 
-- \clock~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_clock~input_o\,
	datab => \ALT_INV_instr[12]~input_o\,
	datac => \ALT_INV_instr[13]~input_o\,
	datad => \ALT_INV_instr[14]~input_o\,
	datae => \ALT_INV_instr[15]~input_o\,
	dataf => \IFIDREG|ALT_INV_Add0~49_sumout\,
	combout => \IFIDREG|outPC[13]~14_combout\);

\IFIDREG|outPC[13]\ : cyclonev_lcell_comb
-- Equation(s):
-- \IFIDREG|outPC\(13) = ( \IFIDREG|outPC\(13) & ( \IFIDREG|outPC[15]~1_combout\ & ( \IFIDREG|outPC[13]~14_combout\ ) ) ) # ( !\IFIDREG|outPC\(13) & ( \IFIDREG|outPC[15]~1_combout\ & ( \IFIDREG|outPC[13]~14_combout\ ) ) ) # ( \IFIDREG|outPC\(13) & ( 
-- !\IFIDREG|outPC[15]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \IFIDREG|ALT_INV_outPC[13]~14_combout\,
	datae => \IFIDREG|ALT_INV_outPC\(13),
	dataf => \IFIDREG|ALT_INV_outPC[15]~1_combout\,
	combout => \IFIDREG|outPC\(13));

\RegisterFile|read_mux1|v6|v3|v13|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \RegisterFile|read_mux1|v6|v3|v13|Q~0_combout\ = ( \IFIDREG|outInstruction\(9) & ( \IFIDREG|outInstruction\(10) & ( \RegisterFile|reg7|gen_register:13:vff|O~q\ ) ) ) # ( !\IFIDREG|outInstruction\(9) & ( \IFIDREG|outInstruction\(10) & ( 
-- \RegisterFile|reg6|gen_register:13:vff|O~q\ ) ) ) # ( \IFIDREG|outInstruction\(9) & ( !\IFIDREG|outInstruction\(10) & ( \RegisterFile|reg5|gen_register:13:vff|O~q\ ) ) ) # ( !\IFIDREG|outInstruction\(9) & ( !\IFIDREG|outInstruction\(10) & ( 
-- \RegisterFile|reg4|gen_register:13:vff|O~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegisterFile|reg4|gen_register:13:vff|ALT_INV_O~q\,
	datab => \RegisterFile|reg5|gen_register:13:vff|ALT_INV_O~q\,
	datac => \RegisterFile|reg6|gen_register:13:vff|ALT_INV_O~q\,
	datad => \RegisterFile|reg7|gen_register:13:vff|ALT_INV_O~q\,
	datae => \IFIDREG|ALT_INV_outInstruction\(9),
	dataf => \IFIDREG|ALT_INV_outInstruction\(10),
	combout => \RegisterFile|read_mux1|v6|v3|v13|Q~0_combout\);

\RegisterFile|read_mux1|v6|v3|v13|Q~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \RegisterFile|read_mux1|v6|v3|v13|Q~1_combout\ = ( !\IFIDREG|outInstruction\(11) & ( (!\IFIDREG|outInstruction\(10) & (\IFIDREG|outInstruction\(9) & (\RegisterFile|reg1|gen_register:13:vff|O~q\))) # (\IFIDREG|outInstruction\(10) & 
-- ((!\IFIDREG|outInstruction\(9) & (((\RegisterFile|reg2|gen_register:13:vff|O~q\)))) # (\IFIDREG|outInstruction\(9) & (((\RegisterFile|reg3|gen_register:13:vff|O~q\)))))) ) ) # ( \IFIDREG|outInstruction\(11) & ( 
-- (((\RegisterFile|read_mux1|v6|v3|v13|Q~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001000010011000011110000111101000110010101110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IFIDREG|ALT_INV_outInstruction\(10),
	datab => \IFIDREG|ALT_INV_outInstruction\(9),
	datac => \RegisterFile|read_mux1|v6|v3|v13|ALT_INV_Q~0_combout\,
	datad => \RegisterFile|reg3|gen_register:13:vff|ALT_INV_O~q\,
	datae => \IFIDREG|ALT_INV_outInstruction\(11),
	dataf => \RegisterFile|reg2|gen_register:13:vff|ALT_INV_O~q\,
	datag => \RegisterFile|reg1|gen_register:13:vff|ALT_INV_O~q\,
	combout => \RegisterFile|read_mux1|v6|v3|v13|Q~1_combout\);

\IDEXREG|R1Reg_IDEX[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \RegisterFile|read_mux1|v6|v3|v13|Q~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEXREG|R1Reg_IDEX\(13));

\ALUInput1Mux|v3|v13|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALUInput1Mux|v3|v13|Q~0_combout\ = ( !\ALUInput1Mux|v3|v2|Q~7_combout\ & ( (!\ALUInput1Mux|v3|v2|Q~0_combout\ & (((!\ALUInput1Mux|v3|v2|Q~1_combout\ & ((\EXMEMREG|Result_EXMEM\(13)))) # (\ALUInput1Mux|v3|v2|Q~1_combout\ & (\IDEXREG|R1Reg_IDEX\(13)))))) # 
-- (\ALUInput1Mux|v3|v2|Q~0_combout\ & (\IFIDREG|outPC\(13))) ) ) # ( \ALUInput1Mux|v3|v2|Q~7_combout\ & ( (!\ALUInput1Mux|v3|v2|Q~0_combout\ & (((!\ALUInput1Mux|v3|v2|Q~1_combout\ & ((\EXMEMREG|Result_EXMEM\(13)))) # (\ALUInput1Mux|v3|v2|Q~1_combout\ & 
-- (\MEMWBREG|writeData\(13)))))) # (\ALUInput1Mux|v3|v2|Q~0_combout\ & (\IFIDREG|outPC\(13))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001101010101000000110101010111001111010101011100111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IFIDREG|ALT_INV_outPC\(13),
	datab => \ALUInput1Mux|v3|v2|ALT_INV_Q~1_combout\,
	datac => \MEMWBREG|ALT_INV_writeData\(13),
	datad => \ALUInput1Mux|v3|v2|ALT_INV_Q~0_combout\,
	datae => \ALUInput1Mux|v3|v2|ALT_INV_Q~7_combout\,
	dataf => \EXMEMREG|ALT_INV_Result_EXMEM\(13),
	datag => \IDEXREG|ALT_INV_R1Reg_IDEX\(13),
	combout => \ALUInput1Mux|v3|v13|Q~0_combout\);

\ALU16|V12|v12|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU16|V12|v12|Q~0_combout\ = !\IDEXREG|ALUFunc_IDEX\(0) $ (!\ALUInput1Mux|v3|v12|Q~0_combout\ $ (\ALUInput2Mux|v3|v12|Q~5_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101101001011010010110100101101001011010010110100101101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IDEXREG|ALT_INV_ALUFunc_IDEX\(0),
	datab => \ALUInput1Mux|v3|v12|ALT_INV_Q~0_combout\,
	datac => \ALUInput2Mux|v3|v12|ALT_INV_Q~5_combout\,
	combout => \ALU16|V12|v12|Q~0_combout\);

\ALU16|V12|v12|Q~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU16|V12|v12|Q~1_combout\ = (\ALUInput1Mux|v3|v12|Q~0_combout\ & (!\IDEXREG|ALUFunc_IDEX\(0) $ (!\ALUInput2Mux|v3|v12|Q~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001000010010000100100001001000010010000100100001001000010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IDEXREG|ALT_INV_ALUFunc_IDEX\(0),
	datab => \ALUInput1Mux|v3|v12|ALT_INV_Q~0_combout\,
	datac => \ALUInput2Mux|v3|v12|ALT_INV_Q~5_combout\,
	combout => \ALU16|V12|v12|Q~1_combout\);

\ALU16|V12|v12|Q~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU16|V12|v12|Q~2_combout\ = ( \ALU16|V12|v12|Q~0_combout\ & ( \ALU16|V12|v12|Q~1_combout\ & ( \ALU16|V0|v12|Q~0_combout\ ) ) ) # ( !\ALU16|V12|v12|Q~0_combout\ & ( \ALU16|V12|v12|Q~1_combout\ & ( \ALU16|V0|v12|Q~0_combout\ ) ) ) # ( 
-- \ALU16|V12|v12|Q~0_combout\ & ( !\ALU16|V12|v12|Q~1_combout\ & ( (\ALU16|V0|v12|Q~0_combout\ & (((\ALU16|V10|v12|Q~2_combout\ & \ALU16|V11|v12|Q~0_combout\)) # (\ALU16|V11|v12|Q~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU16|V0|v12|ALT_INV_Q~0_combout\,
	datab => \ALU16|V10|v12|ALT_INV_Q~2_combout\,
	datac => \ALU16|V11|v12|ALT_INV_Q~0_combout\,
	datad => \ALU16|V11|v12|ALT_INV_Q~1_combout\,
	datae => \ALU16|V12|v12|ALT_INV_Q~0_combout\,
	dataf => \ALU16|V12|v12|ALT_INV_Q~1_combout\,
	combout => \ALU16|V12|v12|Q~2_combout\);

\ALU16|V21|v1|v13|Q\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU16|V21|v1|v13|Q~combout\ = ( \ALUInput1Mux|v3|v13|Q~0_combout\ & ( \ALU16|V12|v12|Q~2_combout\ & ( (!\IDEXREG|ALUFunc_IDEX\(1) & (!\IDEXREG|ALUFunc_IDEX\(2) & (!\IDEXREG|ALUFunc_IDEX\(0) $ (!\ALUInput2Mux|v3|v13|Q~1_combout\)))) # 
-- (\IDEXREG|ALUFunc_IDEX\(1) & (!\IDEXREG|ALUFunc_IDEX\(2) $ (((!\IDEXREG|ALUFunc_IDEX\(0) & !\ALUInput2Mux|v3|v13|Q~1_combout\))))) ) ) ) # ( !\ALUInput1Mux|v3|v13|Q~0_combout\ & ( \ALU16|V12|v12|Q~2_combout\ & ( (!\IDEXREG|ALUFunc_IDEX\(2) & 
-- ((!\IDEXREG|ALUFunc_IDEX\(0) & (!\IDEXREG|ALUFunc_IDEX\(1) & !\ALUInput2Mux|v3|v13|Q~1_combout\)) # (\IDEXREG|ALUFunc_IDEX\(0) & ((\ALUInput2Mux|v3|v13|Q~1_combout\))))) # (\IDEXREG|ALUFunc_IDEX\(2) & (!\IDEXREG|ALUFunc_IDEX\(0) $ 
-- (((!\IDEXREG|ALUFunc_IDEX\(1)) # (!\ALUInput2Mux|v3|v13|Q~1_combout\))))) ) ) ) # ( \ALUInput1Mux|v3|v13|Q~0_combout\ & ( !\ALU16|V12|v12|Q~2_combout\ & ( (!\IDEXREG|ALUFunc_IDEX\(1) & (!\IDEXREG|ALUFunc_IDEX\(2) & (!\IDEXREG|ALUFunc_IDEX\(0) $ 
-- (\ALUInput2Mux|v3|v13|Q~1_combout\)))) # (\IDEXREG|ALUFunc_IDEX\(1) & (!\IDEXREG|ALUFunc_IDEX\(2) $ (((!\IDEXREG|ALUFunc_IDEX\(0) & !\ALUInput2Mux|v3|v13|Q~1_combout\))))) ) ) ) # ( !\ALUInput1Mux|v3|v13|Q~0_combout\ & ( !\ALU16|V12|v12|Q~2_combout\ & ( 
-- (!\ALUInput2Mux|v3|v13|Q~1_combout\ & (\IDEXREG|ALUFunc_IDEX\(0) & ((!\IDEXREG|ALUFunc_IDEX\(1)) # (\IDEXREG|ALUFunc_IDEX\(2))))) # (\ALUInput2Mux|v3|v13|Q~1_combout\ & (!\IDEXREG|ALUFunc_IDEX\(1) $ (!\IDEXREG|ALUFunc_IDEX\(0) $ 
-- (!\IDEXREG|ALUFunc_IDEX\(2))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001110010110100101000111000010000011001101100011010011010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IDEXREG|ALT_INV_ALUFunc_IDEX\(1),
	datab => \IDEXREG|ALT_INV_ALUFunc_IDEX\(0),
	datac => \IDEXREG|ALT_INV_ALUFunc_IDEX\(2),
	datad => \ALUInput2Mux|v3|v13|ALT_INV_Q~1_combout\,
	datae => \ALUInput1Mux|v3|v13|ALT_INV_Q~0_combout\,
	dataf => \ALU16|V12|v12|ALT_INV_Q~2_combout\,
	combout => \ALU16|V21|v1|v13|Q~combout\);

\EXMEMREG|Result_EXMEM[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \ALU16|V21|v1|v13|Q~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EXMEMREG|Result_EXMEM\(13));

\fromData[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fromData(14),
	o => \fromData[14]~input_o\);

\MEMWB_inputData_sig[14]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMWB_inputData_sig[14]~14_combout\ = (!\EXMEMREG|isLW_EXMEM~q\ & (\EXMEMREG|Result_EXMEM\(14))) # (\EXMEMREG|isLW_EXMEM~q\ & ((\fromData[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011101000111010001110100011101000111010001110100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EXMEMREG|ALT_INV_Result_EXMEM\(14),
	datab => \EXMEMREG|ALT_INV_isLW_EXMEM~q\,
	datac => \ALT_INV_fromData[14]~input_o\,
	combout => \MEMWB_inputData_sig[14]~14_combout\);

\keyData[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_keyData(14),
	o => \keyData[14]~input_o\);

\MEMWBREG|writeData[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \MEMWB_inputData_sig[14]~14_combout\,
	asdata => \keyData[14]~input_o\,
	sload => \EXMEMREG|ReadDigit_EXMEM~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMWBREG|writeData\(14));

\RegisterFile|reg4|gen_register:14:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~input_o\,
	d => \MEMWBREG|writeData\(14),
	ena => \RegisterFile|v0|v12|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegisterFile|reg4|gen_register:14:vff|O~q\);

\RegisterFile|reg5|gen_register:14:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~input_o\,
	d => \MEMWBREG|writeData\(14),
	ena => \RegisterFile|v0|v14|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegisterFile|reg5|gen_register:14:vff|O~q\);

\RegisterFile|reg6|gen_register:14:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~input_o\,
	d => \MEMWBREG|writeData\(14),
	ena => \RegisterFile|v0|v16|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegisterFile|reg6|gen_register:14:vff|O~q\);

\RegisterFile|reg7|gen_register:14:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~input_o\,
	d => \MEMWBREG|writeData\(14),
	ena => \RegisterFile|v0|v18|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegisterFile|reg7|gen_register:14:vff|O~q\);

\RegisterFile|read_mux2|v6|v3|v14|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \RegisterFile|read_mux2|v6|v3|v14|Q~0_combout\ = ( \IFIDREG|outInstruction\(6) & ( \IFIDREG|outInstruction\(7) & ( \RegisterFile|reg7|gen_register:14:vff|O~q\ ) ) ) # ( !\IFIDREG|outInstruction\(6) & ( \IFIDREG|outInstruction\(7) & ( 
-- \RegisterFile|reg6|gen_register:14:vff|O~q\ ) ) ) # ( \IFIDREG|outInstruction\(6) & ( !\IFIDREG|outInstruction\(7) & ( \RegisterFile|reg5|gen_register:14:vff|O~q\ ) ) ) # ( !\IFIDREG|outInstruction\(6) & ( !\IFIDREG|outInstruction\(7) & ( 
-- \RegisterFile|reg4|gen_register:14:vff|O~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegisterFile|reg4|gen_register:14:vff|ALT_INV_O~q\,
	datab => \RegisterFile|reg5|gen_register:14:vff|ALT_INV_O~q\,
	datac => \RegisterFile|reg6|gen_register:14:vff|ALT_INV_O~q\,
	datad => \RegisterFile|reg7|gen_register:14:vff|ALT_INV_O~q\,
	datae => \IFIDREG|ALT_INV_outInstruction\(6),
	dataf => \IFIDREG|ALT_INV_outInstruction\(7),
	combout => \RegisterFile|read_mux2|v6|v3|v14|Q~0_combout\);

\RegisterFile|reg3|gen_register:14:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~input_o\,
	d => \MEMWBREG|writeData\(14),
	ena => \RegisterFile|v0|v10|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegisterFile|reg3|gen_register:14:vff|O~q\);

\RegisterFile|reg2|gen_register:14:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~input_o\,
	d => \MEMWBREG|writeData\(14),
	ena => \RegisterFile|v0|v8|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegisterFile|reg2|gen_register:14:vff|O~q\);

\RegisterFile|reg1|gen_register:14:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~input_o\,
	d => \MEMWBREG|writeData\(14),
	ena => \RegisterFile|v0|v6|Q~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegisterFile|reg1|gen_register:14:vff|O~q\);

\RegisterFile|read_mux2|v6|v3|v14|Q~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \RegisterFile|read_mux2|v6|v3|v14|Q~1_combout\ = ( !\IFIDREG|outInstruction\(8) & ( (!\IFIDREG|outInstruction\(7) & (\IFIDREG|outInstruction\(6) & (\RegisterFile|reg1|gen_register:14:vff|O~q\))) # (\IFIDREG|outInstruction\(7) & 
-- ((!\IFIDREG|outInstruction\(6) & (((\RegisterFile|reg2|gen_register:14:vff|O~q\)))) # (\IFIDREG|outInstruction\(6) & (((\RegisterFile|reg3|gen_register:14:vff|O~q\)))))) ) ) # ( \IFIDREG|outInstruction\(8) & ( 
-- (((\RegisterFile|read_mux2|v6|v3|v14|Q~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001000010011000011110000111101000110010101110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IFIDREG|ALT_INV_outInstruction\(7),
	datab => \IFIDREG|ALT_INV_outInstruction\(6),
	datac => \RegisterFile|read_mux2|v6|v3|v14|ALT_INV_Q~0_combout\,
	datad => \RegisterFile|reg3|gen_register:14:vff|ALT_INV_O~q\,
	datae => \IFIDREG|ALT_INV_outInstruction\(8),
	dataf => \RegisterFile|reg2|gen_register:14:vff|ALT_INV_O~q\,
	datag => \RegisterFile|reg1|gen_register:14:vff|ALT_INV_O~q\,
	combout => \RegisterFile|read_mux2|v6|v3|v14|Q~1_combout\);

\IDEXREG|R2Reg_IDEX[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \RegisterFile|read_mux2|v6|v3|v14|Q~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEXREG|R2Reg_IDEX\(14));

\ALUInput2Mux|v3|v14|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALUInput2Mux|v3|v14|Q~0_combout\ = (!\ALUInput2Mux|v3|v12|Q~3_combout\ & ((\IDEXREG|R2Reg_IDEX\(14)))) # (\ALUInput2Mux|v3|v12|Q~3_combout\ & (\MEMWBREG|writeData\(14)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALUInput2Mux|v3|v12|ALT_INV_Q~3_combout\,
	datab => \MEMWBREG|ALT_INV_writeData\(14),
	datac => \IDEXREG|ALT_INV_R2Reg_IDEX\(14),
	combout => \ALUInput2Mux|v3|v14|Q~0_combout\);

\ALUInput2Mux|v3|v14|Q~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALUInput2Mux|v3|v14|Q~1_combout\ = ( \ALUInput2Mux|v3|v14|Q~0_combout\ & ( (!\ALUInput2Mux|v3|v12|Q~0_combout\ & (((\IDEXREG|jumpShortAddr_IDEX\(5))))) # (\ALUInput2Mux|v3|v12|Q~0_combout\ & (((!\ALUInput2Mux|v3|v12|Q~1_combout\)) # 
-- (\EXMEMREG|Result_EXMEM\(14)))) ) ) # ( !\ALUInput2Mux|v3|v14|Q~0_combout\ & ( (!\ALUInput2Mux|v3|v12|Q~0_combout\ & (((\IDEXREG|jumpShortAddr_IDEX\(5))))) # (\ALUInput2Mux|v3|v12|Q~0_combout\ & (\EXMEMREG|Result_EXMEM\(14) & 
-- (\ALUInput2Mux|v3|v12|Q~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111001101001100011111110100000001110011010011000111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EXMEMREG|ALT_INV_Result_EXMEM\(14),
	datab => \ALUInput2Mux|v3|v12|ALT_INV_Q~0_combout\,
	datac => \ALUInput2Mux|v3|v12|ALT_INV_Q~1_combout\,
	datad => \IDEXREG|ALT_INV_jumpShortAddr_IDEX\(5),
	datae => \ALUInput2Mux|v3|v14|ALT_INV_Q~0_combout\,
	combout => \ALUInput2Mux|v3|v14|Q~1_combout\);

\JR|PCout[14]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \JR|PCout[14]~2_combout\ = (\IFIDREG|outPC\(14) & \Controller|isJType~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IFIDREG|ALT_INV_outPC\(14),
	datab => \Controller|ALT_INV_isJType~0_combout\,
	combout => \JR|PCout[14]~2_combout\);

\PC|gen_register:14:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \JR|PCout[14]~2_combout\,
	ena => \Trap|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|gen_register:14:vff|O~q\);

\IFIDREG|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \IFIDREG|Add0~53_sumout\ = SUM(( \PC|gen_register:14:vff|O~q\ ) + ( GND ) + ( \IFIDREG|Add0~50\ ))
-- \IFIDREG|Add0~54\ = CARRY(( \PC|gen_register:14:vff|O~q\ ) + ( GND ) + ( \IFIDREG|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|gen_register:14:vff|ALT_INV_O~q\,
	cin => \IFIDREG|Add0~50\,
	sumout => \IFIDREG|Add0~53_sumout\,
	cout => \IFIDREG|Add0~54\);

\IFIDREG|outPC[14]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \IFIDREG|outPC[14]~15_combout\ = ( \instr[15]~input_o\ & ( \IFIDREG|Add0~53_sumout\ & ( (\clock~input_o\ & (((!\instr[13]~input_o\) # (!\instr[14]~input_o\)) # (\instr[12]~input_o\))) ) ) ) # ( !\instr[15]~input_o\ & ( \IFIDREG|Add0~53_sumout\ & ( 
-- \clock~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_clock~input_o\,
	datab => \ALT_INV_instr[12]~input_o\,
	datac => \ALT_INV_instr[13]~input_o\,
	datad => \ALT_INV_instr[14]~input_o\,
	datae => \ALT_INV_instr[15]~input_o\,
	dataf => \IFIDREG|ALT_INV_Add0~53_sumout\,
	combout => \IFIDREG|outPC[14]~15_combout\);

\IFIDREG|outPC[14]\ : cyclonev_lcell_comb
-- Equation(s):
-- \IFIDREG|outPC\(14) = ( \IFIDREG|outPC\(14) & ( \IFIDREG|outPC[15]~1_combout\ & ( \IFIDREG|outPC[14]~15_combout\ ) ) ) # ( !\IFIDREG|outPC\(14) & ( \IFIDREG|outPC[15]~1_combout\ & ( \IFIDREG|outPC[14]~15_combout\ ) ) ) # ( \IFIDREG|outPC\(14) & ( 
-- !\IFIDREG|outPC[15]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \IFIDREG|ALT_INV_outPC[14]~15_combout\,
	datae => \IFIDREG|ALT_INV_outPC\(14),
	dataf => \IFIDREG|ALT_INV_outPC[15]~1_combout\,
	combout => \IFIDREG|outPC\(14));

\RegisterFile|read_mux1|v6|v3|v14|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \RegisterFile|read_mux1|v6|v3|v14|Q~0_combout\ = ( \IFIDREG|outInstruction\(9) & ( \IFIDREG|outInstruction\(10) & ( \RegisterFile|reg7|gen_register:14:vff|O~q\ ) ) ) # ( !\IFIDREG|outInstruction\(9) & ( \IFIDREG|outInstruction\(10) & ( 
-- \RegisterFile|reg6|gen_register:14:vff|O~q\ ) ) ) # ( \IFIDREG|outInstruction\(9) & ( !\IFIDREG|outInstruction\(10) & ( \RegisterFile|reg5|gen_register:14:vff|O~q\ ) ) ) # ( !\IFIDREG|outInstruction\(9) & ( !\IFIDREG|outInstruction\(10) & ( 
-- \RegisterFile|reg4|gen_register:14:vff|O~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegisterFile|reg4|gen_register:14:vff|ALT_INV_O~q\,
	datab => \RegisterFile|reg5|gen_register:14:vff|ALT_INV_O~q\,
	datac => \RegisterFile|reg6|gen_register:14:vff|ALT_INV_O~q\,
	datad => \RegisterFile|reg7|gen_register:14:vff|ALT_INV_O~q\,
	datae => \IFIDREG|ALT_INV_outInstruction\(9),
	dataf => \IFIDREG|ALT_INV_outInstruction\(10),
	combout => \RegisterFile|read_mux1|v6|v3|v14|Q~0_combout\);

\RegisterFile|read_mux1|v6|v3|v14|Q~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \RegisterFile|read_mux1|v6|v3|v14|Q~1_combout\ = ( !\IFIDREG|outInstruction\(11) & ( (!\IFIDREG|outInstruction\(10) & (\IFIDREG|outInstruction\(9) & (\RegisterFile|reg1|gen_register:14:vff|O~q\))) # (\IFIDREG|outInstruction\(10) & 
-- ((!\IFIDREG|outInstruction\(9) & (((\RegisterFile|reg2|gen_register:14:vff|O~q\)))) # (\IFIDREG|outInstruction\(9) & (((\RegisterFile|reg3|gen_register:14:vff|O~q\)))))) ) ) # ( \IFIDREG|outInstruction\(11) & ( 
-- (((\RegisterFile|read_mux1|v6|v3|v14|Q~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001000010011000011110000111101000110010101110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IFIDREG|ALT_INV_outInstruction\(10),
	datab => \IFIDREG|ALT_INV_outInstruction\(9),
	datac => \RegisterFile|read_mux1|v6|v3|v14|ALT_INV_Q~0_combout\,
	datad => \RegisterFile|reg3|gen_register:14:vff|ALT_INV_O~q\,
	datae => \IFIDREG|ALT_INV_outInstruction\(11),
	dataf => \RegisterFile|reg2|gen_register:14:vff|ALT_INV_O~q\,
	datag => \RegisterFile|reg1|gen_register:14:vff|ALT_INV_O~q\,
	combout => \RegisterFile|read_mux1|v6|v3|v14|Q~1_combout\);

\IDEXREG|R1Reg_IDEX[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \RegisterFile|read_mux1|v6|v3|v14|Q~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEXREG|R1Reg_IDEX\(14));

\ALUInput1Mux|v3|v14|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALUInput1Mux|v3|v14|Q~0_combout\ = ( !\ALUInput1Mux|v3|v2|Q~7_combout\ & ( (!\ALUInput1Mux|v3|v2|Q~0_combout\ & (((!\ALUInput1Mux|v3|v2|Q~1_combout\ & ((\EXMEMREG|Result_EXMEM\(14)))) # (\ALUInput1Mux|v3|v2|Q~1_combout\ & (\IDEXREG|R1Reg_IDEX\(14)))))) # 
-- (\ALUInput1Mux|v3|v2|Q~0_combout\ & (\IFIDREG|outPC\(14))) ) ) # ( \ALUInput1Mux|v3|v2|Q~7_combout\ & ( (!\ALUInput1Mux|v3|v2|Q~0_combout\ & (((!\ALUInput1Mux|v3|v2|Q~1_combout\ & ((\EXMEMREG|Result_EXMEM\(14)))) # (\ALUInput1Mux|v3|v2|Q~1_combout\ & 
-- (\MEMWBREG|writeData\(14)))))) # (\ALUInput1Mux|v3|v2|Q~0_combout\ & (\IFIDREG|outPC\(14))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001101010101000000110101010111001111010101011100111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IFIDREG|ALT_INV_outPC\(14),
	datab => \ALUInput1Mux|v3|v2|ALT_INV_Q~1_combout\,
	datac => \MEMWBREG|ALT_INV_writeData\(14),
	datad => \ALUInput1Mux|v3|v2|ALT_INV_Q~0_combout\,
	datae => \ALUInput1Mux|v3|v2|ALT_INV_Q~7_combout\,
	dataf => \EXMEMREG|ALT_INV_Result_EXMEM\(14),
	datag => \IDEXREG|ALT_INV_R1Reg_IDEX\(14),
	combout => \ALUInput1Mux|v3|v14|Q~0_combout\);

\ALU16|V13|v12|Q~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU16|V13|v12|Q~1_combout\ = (\ALU16|V0|v12|Q~0_combout\ & (\ALUInput1Mux|v3|v13|Q~0_combout\ & (!\IDEXREG|ALUFunc_IDEX\(0) $ (!\ALUInput2Mux|v3|v13|Q~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010010000000000001001000000000000100100000000000010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IDEXREG|ALT_INV_ALUFunc_IDEX\(0),
	datab => \ALU16|V0|v12|ALT_INV_Q~0_combout\,
	datac => \ALUInput2Mux|v3|v13|ALT_INV_Q~1_combout\,
	datad => \ALUInput1Mux|v3|v13|ALT_INV_Q~0_combout\,
	combout => \ALU16|V13|v12|Q~1_combout\);

\ALU16|V13|v12|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU16|V13|v12|Q~0_combout\ = !\IDEXREG|ALUFunc_IDEX\(0) $ (!\ALUInput2Mux|v3|v13|Q~1_combout\ $ (\ALUInput1Mux|v3|v13|Q~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101101001011010010110100101101001011010010110100101101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IDEXREG|ALT_INV_ALUFunc_IDEX\(0),
	datab => \ALUInput2Mux|v3|v13|ALT_INV_Q~1_combout\,
	datac => \ALUInput1Mux|v3|v13|ALT_INV_Q~0_combout\,
	combout => \ALU16|V13|v12|Q~0_combout\);

\ALU16|V13|v12|Q~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU16|V13|v12|Q~3_combout\ = ( \ALU16|V11|v12|Q~1_combout\ & ( \ALU16|V12|v12|Q~0_combout\ & ( (\ALU16|V0|v12|Q~0_combout\ & \ALU16|V13|v12|Q~0_combout\) ) ) ) # ( !\ALU16|V11|v12|Q~1_combout\ & ( \ALU16|V12|v12|Q~0_combout\ & ( 
-- (\ALU16|V0|v12|Q~0_combout\ & (\ALU16|V13|v12|Q~0_combout\ & ((\ALU16|V11|v12|Q~0_combout\) # (\ALU16|V12|v12|Q~1_combout\)))) ) ) ) # ( \ALU16|V11|v12|Q~1_combout\ & ( !\ALU16|V12|v12|Q~0_combout\ & ( (\ALU16|V0|v12|Q~0_combout\ & 
-- (\ALU16|V12|v12|Q~1_combout\ & \ALU16|V13|v12|Q~0_combout\)) ) ) ) # ( !\ALU16|V11|v12|Q~1_combout\ & ( !\ALU16|V12|v12|Q~0_combout\ & ( (\ALU16|V0|v12|Q~0_combout\ & (\ALU16|V12|v12|Q~1_combout\ & \ALU16|V13|v12|Q~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU16|V0|v12|ALT_INV_Q~0_combout\,
	datab => \ALU16|V12|v12|ALT_INV_Q~1_combout\,
	datac => \ALU16|V13|v12|ALT_INV_Q~0_combout\,
	datad => \ALU16|V11|v12|ALT_INV_Q~0_combout\,
	datae => \ALU16|V11|v12|ALT_INV_Q~1_combout\,
	dataf => \ALU16|V12|v12|ALT_INV_Q~0_combout\,
	combout => \ALU16|V13|v12|Q~3_combout\);

\ALU16|V13|v12|Q~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU16|V13|v12|Q~2_combout\ = ( !\ALU16|V11|v12|Q~1_combout\ & ( \ALU16|V13|v12|Q~3_combout\ & ( (!\ALU16|V12|v12|Q~1_combout\ & (!\ALU16|V13|v12|Q~1_combout\ & (!\ALU16|V10|v12|Q~3_combout\ & !\ALU16|V10|v12|Q~1_combout\))) ) ) ) # ( 
-- \ALU16|V11|v12|Q~1_combout\ & ( !\ALU16|V13|v12|Q~3_combout\ & ( !\ALU16|V13|v12|Q~1_combout\ ) ) ) # ( !\ALU16|V11|v12|Q~1_combout\ & ( !\ALU16|V13|v12|Q~3_combout\ & ( !\ALU16|V13|v12|Q~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU16|V12|v12|ALT_INV_Q~1_combout\,
	datab => \ALU16|V13|v12|ALT_INV_Q~1_combout\,
	datac => \ALU16|V10|v12|ALT_INV_Q~3_combout\,
	datad => \ALU16|V10|v12|ALT_INV_Q~1_combout\,
	datae => \ALU16|V11|v12|ALT_INV_Q~1_combout\,
	dataf => \ALU16|V13|v12|ALT_INV_Q~3_combout\,
	combout => \ALU16|V13|v12|Q~2_combout\);

\ALU16|V21|v1|v14|Q\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU16|V21|v1|v14|Q~combout\ = ( \ALUInput1Mux|v3|v14|Q~0_combout\ & ( \ALU16|V13|v12|Q~2_combout\ & ( (!\IDEXREG|ALUFunc_IDEX\(1) & (!\IDEXREG|ALUFunc_IDEX\(2) & (!\IDEXREG|ALUFunc_IDEX\(0) $ (\ALUInput2Mux|v3|v14|Q~1_combout\)))) # 
-- (\IDEXREG|ALUFunc_IDEX\(1) & (!\IDEXREG|ALUFunc_IDEX\(2) $ (((!\IDEXREG|ALUFunc_IDEX\(0) & !\ALUInput2Mux|v3|v14|Q~1_combout\))))) ) ) ) # ( !\ALUInput1Mux|v3|v14|Q~0_combout\ & ( \ALU16|V13|v12|Q~2_combout\ & ( (!\ALUInput2Mux|v3|v14|Q~1_combout\ & 
-- (\IDEXREG|ALUFunc_IDEX\(0) & ((!\IDEXREG|ALUFunc_IDEX\(1)) # (\IDEXREG|ALUFunc_IDEX\(2))))) # (\ALUInput2Mux|v3|v14|Q~1_combout\ & (!\IDEXREG|ALUFunc_IDEX\(1) $ (!\IDEXREG|ALUFunc_IDEX\(0) $ (!\IDEXREG|ALUFunc_IDEX\(2))))) ) ) ) # ( 
-- \ALUInput1Mux|v3|v14|Q~0_combout\ & ( !\ALU16|V13|v12|Q~2_combout\ & ( (!\IDEXREG|ALUFunc_IDEX\(1) & (!\IDEXREG|ALUFunc_IDEX\(2) & (!\IDEXREG|ALUFunc_IDEX\(0) $ (!\ALUInput2Mux|v3|v14|Q~1_combout\)))) # (\IDEXREG|ALUFunc_IDEX\(1) & 
-- (!\IDEXREG|ALUFunc_IDEX\(2) $ (((!\IDEXREG|ALUFunc_IDEX\(0) & !\ALUInput2Mux|v3|v14|Q~1_combout\))))) ) ) ) # ( !\ALUInput1Mux|v3|v14|Q~0_combout\ & ( !\ALU16|V13|v12|Q~2_combout\ & ( (!\IDEXREG|ALUFunc_IDEX\(2) & ((!\IDEXREG|ALUFunc_IDEX\(0) & 
-- (!\IDEXREG|ALUFunc_IDEX\(1) & !\ALUInput2Mux|v3|v14|Q~1_combout\)) # (\IDEXREG|ALUFunc_IDEX\(0) & ((\ALUInput2Mux|v3|v14|Q~1_combout\))))) # (\IDEXREG|ALUFunc_IDEX\(2) & (!\IDEXREG|ALUFunc_IDEX\(0) $ (((!\IDEXREG|ALUFunc_IDEX\(1)) # 
-- (!\ALUInput2Mux|v3|v14|Q~1_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000001100110110001101001101000000100011100101101001010001110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IDEXREG|ALT_INV_ALUFunc_IDEX\(1),
	datab => \IDEXREG|ALT_INV_ALUFunc_IDEX\(0),
	datac => \IDEXREG|ALT_INV_ALUFunc_IDEX\(2),
	datad => \ALUInput2Mux|v3|v14|ALT_INV_Q~1_combout\,
	datae => \ALUInput1Mux|v3|v14|ALT_INV_Q~0_combout\,
	dataf => \ALU16|V13|v12|ALT_INV_Q~2_combout\,
	combout => \ALU16|V21|v1|v14|Q~combout\);

\EXMEMREG|Result_EXMEM[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \ALU16|V21|v1|v14|Q~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EXMEMREG|Result_EXMEM\(14));

\JR|PCout[15]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \JR|PCout[15]~3_combout\ = (\IFIDREG|outPC\(15) & \Controller|isJType~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IFIDREG|ALT_INV_outPC\(15),
	datab => \Controller|ALT_INV_isJType~0_combout\,
	combout => \JR|PCout[15]~3_combout\);

\PC|gen_register:15:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \JR|PCout[15]~3_combout\,
	ena => \Trap|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|gen_register:15:vff|O~q\);

\IFIDREG|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \IFIDREG|Add0~57_sumout\ = SUM(( \PC|gen_register:15:vff|O~q\ ) + ( GND ) + ( \IFIDREG|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|gen_register:15:vff|ALT_INV_O~q\,
	cin => \IFIDREG|Add0~54\,
	sumout => \IFIDREG|Add0~57_sumout\);

\IFIDREG|outPC[15]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \IFIDREG|outPC[15]~16_combout\ = ( \instr[15]~input_o\ & ( \IFIDREG|Add0~57_sumout\ & ( (\clock~input_o\ & (((!\instr[13]~input_o\) # (!\instr[14]~input_o\)) # (\instr[12]~input_o\))) ) ) ) # ( !\instr[15]~input_o\ & ( \IFIDREG|Add0~57_sumout\ & ( 
-- \clock~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_clock~input_o\,
	datab => \ALT_INV_instr[12]~input_o\,
	datac => \ALT_INV_instr[13]~input_o\,
	datad => \ALT_INV_instr[14]~input_o\,
	datae => \ALT_INV_instr[15]~input_o\,
	dataf => \IFIDREG|ALT_INV_Add0~57_sumout\,
	combout => \IFIDREG|outPC[15]~16_combout\);

\IFIDREG|outPC[15]\ : cyclonev_lcell_comb
-- Equation(s):
-- \IFIDREG|outPC\(15) = ( \IFIDREG|outPC\(15) & ( \IFIDREG|outPC[15]~1_combout\ & ( \IFIDREG|outPC[15]~16_combout\ ) ) ) # ( !\IFIDREG|outPC\(15) & ( \IFIDREG|outPC[15]~1_combout\ & ( \IFIDREG|outPC[15]~16_combout\ ) ) ) # ( \IFIDREG|outPC\(15) & ( 
-- !\IFIDREG|outPC[15]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \IFIDREG|ALT_INV_outPC[15]~16_combout\,
	datae => \IFIDREG|ALT_INV_outPC\(15),
	dataf => \IFIDREG|ALT_INV_outPC[15]~1_combout\,
	combout => \IFIDREG|outPC\(15));

\fromData[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fromData(15),
	o => \fromData[15]~input_o\);

\MEMWB_inputData_sig[15]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMWB_inputData_sig[15]~15_combout\ = (!\EXMEMREG|isLW_EXMEM~q\ & (\EXMEMREG|Result_EXMEM\(15))) # (\EXMEMREG|isLW_EXMEM~q\ & ((\fromData[15]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011101000111010001110100011101000111010001110100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EXMEMREG|ALT_INV_Result_EXMEM\(15),
	datab => \EXMEMREG|ALT_INV_isLW_EXMEM~q\,
	datac => \ALT_INV_fromData[15]~input_o\,
	combout => \MEMWB_inputData_sig[15]~15_combout\);

\keyData[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_keyData(15),
	o => \keyData[15]~input_o\);

\MEMWBREG|writeData[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \MEMWB_inputData_sig[15]~15_combout\,
	asdata => \keyData[15]~input_o\,
	sload => \EXMEMREG|ReadDigit_EXMEM~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMWBREG|writeData\(15));

\RegisterFile|reg4|gen_register:15:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~input_o\,
	d => \MEMWBREG|writeData\(15),
	ena => \RegisterFile|v0|v12|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegisterFile|reg4|gen_register:15:vff|O~q\);

\RegisterFile|reg5|gen_register:15:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~input_o\,
	d => \MEMWBREG|writeData\(15),
	ena => \RegisterFile|v0|v14|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegisterFile|reg5|gen_register:15:vff|O~q\);

\RegisterFile|reg6|gen_register:15:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~input_o\,
	d => \MEMWBREG|writeData\(15),
	ena => \RegisterFile|v0|v16|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegisterFile|reg6|gen_register:15:vff|O~q\);

\RegisterFile|reg7|gen_register:15:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~input_o\,
	d => \MEMWBREG|writeData\(15),
	ena => \RegisterFile|v0|v18|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegisterFile|reg7|gen_register:15:vff|O~q\);

\RegisterFile|read_mux1|v6|v3|v15|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \RegisterFile|read_mux1|v6|v3|v15|Q~0_combout\ = ( \IFIDREG|outInstruction\(9) & ( \IFIDREG|outInstruction\(10) & ( \RegisterFile|reg7|gen_register:15:vff|O~q\ ) ) ) # ( !\IFIDREG|outInstruction\(9) & ( \IFIDREG|outInstruction\(10) & ( 
-- \RegisterFile|reg6|gen_register:15:vff|O~q\ ) ) ) # ( \IFIDREG|outInstruction\(9) & ( !\IFIDREG|outInstruction\(10) & ( \RegisterFile|reg5|gen_register:15:vff|O~q\ ) ) ) # ( !\IFIDREG|outInstruction\(9) & ( !\IFIDREG|outInstruction\(10) & ( 
-- \RegisterFile|reg4|gen_register:15:vff|O~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegisterFile|reg4|gen_register:15:vff|ALT_INV_O~q\,
	datab => \RegisterFile|reg5|gen_register:15:vff|ALT_INV_O~q\,
	datac => \RegisterFile|reg6|gen_register:15:vff|ALT_INV_O~q\,
	datad => \RegisterFile|reg7|gen_register:15:vff|ALT_INV_O~q\,
	datae => \IFIDREG|ALT_INV_outInstruction\(9),
	dataf => \IFIDREG|ALT_INV_outInstruction\(10),
	combout => \RegisterFile|read_mux1|v6|v3|v15|Q~0_combout\);

\RegisterFile|reg3|gen_register:15:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~input_o\,
	d => \MEMWBREG|writeData\(15),
	ena => \RegisterFile|v0|v10|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegisterFile|reg3|gen_register:15:vff|O~q\);

\RegisterFile|reg2|gen_register:15:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~input_o\,
	d => \MEMWBREG|writeData\(15),
	ena => \RegisterFile|v0|v8|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegisterFile|reg2|gen_register:15:vff|O~q\);

\RegisterFile|reg1|gen_register:15:vff|O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~input_o\,
	d => \MEMWBREG|writeData\(15),
	ena => \RegisterFile|v0|v6|Q~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegisterFile|reg1|gen_register:15:vff|O~q\);

\RegisterFile|read_mux1|v6|v3|v15|Q~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \RegisterFile|read_mux1|v6|v3|v15|Q~1_combout\ = ( !\IFIDREG|outInstruction\(11) & ( (!\IFIDREG|outInstruction\(10) & (\IFIDREG|outInstruction\(9) & (\RegisterFile|reg1|gen_register:15:vff|O~q\))) # (\IFIDREG|outInstruction\(10) & 
-- ((!\IFIDREG|outInstruction\(9) & (((\RegisterFile|reg2|gen_register:15:vff|O~q\)))) # (\IFIDREG|outInstruction\(9) & (((\RegisterFile|reg3|gen_register:15:vff|O~q\)))))) ) ) # ( \IFIDREG|outInstruction\(11) & ( 
-- (((\RegisterFile|read_mux1|v6|v3|v15|Q~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001000010011000011110000111101000110010101110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IFIDREG|ALT_INV_outInstruction\(10),
	datab => \IFIDREG|ALT_INV_outInstruction\(9),
	datac => \RegisterFile|read_mux1|v6|v3|v15|ALT_INV_Q~0_combout\,
	datad => \RegisterFile|reg3|gen_register:15:vff|ALT_INV_O~q\,
	datae => \IFIDREG|ALT_INV_outInstruction\(11),
	dataf => \RegisterFile|reg2|gen_register:15:vff|ALT_INV_O~q\,
	datag => \RegisterFile|reg1|gen_register:15:vff|ALT_INV_O~q\,
	combout => \RegisterFile|read_mux1|v6|v3|v15|Q~1_combout\);

\IDEXREG|R1Reg_IDEX[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \RegisterFile|read_mux1|v6|v3|v15|Q~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEXREG|R1Reg_IDEX\(15));

\ALUInput1Mux|v3|v15|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALUInput1Mux|v3|v15|Q~0_combout\ = ( !\ALUInput1Mux|v3|v2|Q~7_combout\ & ( (!\ALUInput1Mux|v3|v2|Q~0_combout\ & (((!\ALUInput1Mux|v3|v2|Q~1_combout\ & ((\EXMEMREG|Result_EXMEM\(15)))) # (\ALUInput1Mux|v3|v2|Q~1_combout\ & (\IDEXREG|R1Reg_IDEX\(15)))))) # 
-- (\ALUInput1Mux|v3|v2|Q~0_combout\ & (\IFIDREG|outPC\(15))) ) ) # ( \ALUInput1Mux|v3|v2|Q~7_combout\ & ( (!\ALUInput1Mux|v3|v2|Q~0_combout\ & (((!\ALUInput1Mux|v3|v2|Q~1_combout\ & ((\EXMEMREG|Result_EXMEM\(15)))) # (\ALUInput1Mux|v3|v2|Q~1_combout\ & 
-- (\MEMWBREG|writeData\(15)))))) # (\ALUInput1Mux|v3|v2|Q~0_combout\ & (\IFIDREG|outPC\(15))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001101010101000000110101010111001111010101011100111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IFIDREG|ALT_INV_outPC\(15),
	datab => \ALUInput1Mux|v3|v2|ALT_INV_Q~1_combout\,
	datac => \MEMWBREG|ALT_INV_writeData\(15),
	datad => \ALUInput1Mux|v3|v2|ALT_INV_Q~0_combout\,
	datae => \ALUInput1Mux|v3|v2|ALT_INV_Q~7_combout\,
	dataf => \EXMEMREG|ALT_INV_Result_EXMEM\(15),
	datag => \IDEXREG|ALT_INV_R1Reg_IDEX\(15),
	combout => \ALUInput1Mux|v3|v15|Q~0_combout\);

\RegisterFile|read_mux2|v6|v3|v15|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \RegisterFile|read_mux2|v6|v3|v15|Q~0_combout\ = ( \IFIDREG|outInstruction\(6) & ( \IFIDREG|outInstruction\(7) & ( \RegisterFile|reg7|gen_register:15:vff|O~q\ ) ) ) # ( !\IFIDREG|outInstruction\(6) & ( \IFIDREG|outInstruction\(7) & ( 
-- \RegisterFile|reg6|gen_register:15:vff|O~q\ ) ) ) # ( \IFIDREG|outInstruction\(6) & ( !\IFIDREG|outInstruction\(7) & ( \RegisterFile|reg5|gen_register:15:vff|O~q\ ) ) ) # ( !\IFIDREG|outInstruction\(6) & ( !\IFIDREG|outInstruction\(7) & ( 
-- \RegisterFile|reg4|gen_register:15:vff|O~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegisterFile|reg4|gen_register:15:vff|ALT_INV_O~q\,
	datab => \RegisterFile|reg5|gen_register:15:vff|ALT_INV_O~q\,
	datac => \RegisterFile|reg6|gen_register:15:vff|ALT_INV_O~q\,
	datad => \RegisterFile|reg7|gen_register:15:vff|ALT_INV_O~q\,
	datae => \IFIDREG|ALT_INV_outInstruction\(6),
	dataf => \IFIDREG|ALT_INV_outInstruction\(7),
	combout => \RegisterFile|read_mux2|v6|v3|v15|Q~0_combout\);

\RegisterFile|read_mux2|v6|v3|v15|Q~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \RegisterFile|read_mux2|v6|v3|v15|Q~1_combout\ = ( !\IFIDREG|outInstruction\(8) & ( (!\IFIDREG|outInstruction\(7) & (\IFIDREG|outInstruction\(6) & (\RegisterFile|reg1|gen_register:15:vff|O~q\))) # (\IFIDREG|outInstruction\(7) & 
-- ((!\IFIDREG|outInstruction\(6) & (((\RegisterFile|reg2|gen_register:15:vff|O~q\)))) # (\IFIDREG|outInstruction\(6) & (((\RegisterFile|reg3|gen_register:15:vff|O~q\)))))) ) ) # ( \IFIDREG|outInstruction\(8) & ( 
-- (((\RegisterFile|read_mux2|v6|v3|v15|Q~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001000010011000011110000111101000110010101110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IFIDREG|ALT_INV_outInstruction\(7),
	datab => \IFIDREG|ALT_INV_outInstruction\(6),
	datac => \RegisterFile|read_mux2|v6|v3|v15|ALT_INV_Q~0_combout\,
	datad => \RegisterFile|reg3|gen_register:15:vff|ALT_INV_O~q\,
	datae => \IFIDREG|ALT_INV_outInstruction\(8),
	dataf => \RegisterFile|reg2|gen_register:15:vff|ALT_INV_O~q\,
	datag => \RegisterFile|reg1|gen_register:15:vff|ALT_INV_O~q\,
	combout => \RegisterFile|read_mux2|v6|v3|v15|Q~1_combout\);

\IDEXREG|R2Reg_IDEX[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \RegisterFile|read_mux2|v6|v3|v15|Q~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEXREG|R2Reg_IDEX\(15));

\ALUInput2Mux|v3|v15|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALUInput2Mux|v3|v15|Q~0_combout\ = (!\ALUInput2Mux|v3|v12|Q~3_combout\ & ((\IDEXREG|R2Reg_IDEX\(15)))) # (\ALUInput2Mux|v3|v12|Q~3_combout\ & (\MEMWBREG|writeData\(15)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALUInput2Mux|v3|v12|ALT_INV_Q~3_combout\,
	datab => \MEMWBREG|ALT_INV_writeData\(15),
	datac => \IDEXREG|ALT_INV_R2Reg_IDEX\(15),
	combout => \ALUInput2Mux|v3|v15|Q~0_combout\);

\ALUInput2Mux|v3|v15|Q~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALUInput2Mux|v3|v15|Q~1_combout\ = ( \ALUInput2Mux|v3|v15|Q~0_combout\ & ( (!\ALUInput2Mux|v3|v12|Q~0_combout\ & (((\IDEXREG|jumpShortAddr_IDEX\(5))))) # (\ALUInput2Mux|v3|v12|Q~0_combout\ & (((!\ALUInput2Mux|v3|v12|Q~1_combout\)) # 
-- (\EXMEMREG|Result_EXMEM\(15)))) ) ) # ( !\ALUInput2Mux|v3|v15|Q~0_combout\ & ( (!\ALUInput2Mux|v3|v12|Q~0_combout\ & (((\IDEXREG|jumpShortAddr_IDEX\(5))))) # (\ALUInput2Mux|v3|v12|Q~0_combout\ & (\EXMEMREG|Result_EXMEM\(15) & 
-- (\ALUInput2Mux|v3|v12|Q~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111001101001100011111110100000001110011010011000111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EXMEMREG|ALT_INV_Result_EXMEM\(15),
	datab => \ALUInput2Mux|v3|v12|ALT_INV_Q~0_combout\,
	datac => \ALUInput2Mux|v3|v12|ALT_INV_Q~1_combout\,
	datad => \IDEXREG|ALT_INV_jumpShortAddr_IDEX\(5),
	datae => \ALUInput2Mux|v3|v15|ALT_INV_Q~0_combout\,
	combout => \ALUInput2Mux|v3|v15|Q~1_combout\);

\ALU16|V15|v0|v1|v3|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU16|V15|v0|v1|v3|Q~0_combout\ = !\ALUInput1Mux|v3|v15|Q~0_combout\ $ (!\ALUInput2Mux|v3|v15|Q~1_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALUInput1Mux|v3|v15|ALT_INV_Q~0_combout\,
	datab => \ALUInput2Mux|v3|v15|ALT_INV_Q~1_combout\,
	combout => \ALU16|V15|v0|v1|v3|Q~0_combout\);

\ALU16|V14|v12|Q~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU16|V14|v12|Q~2_combout\ = ( \ALUInput2Mux|v3|v14|Q~1_combout\ & ( \ALUInput1Mux|v3|v14|Q~0_combout\ & ( (\IDEXREG|ALUFunc_IDEX\(0) & (((\ALU16|V0|v12|Q~0_combout\ & \ALU16|V13|v12|Q~0_combout\)) # (\ALU16|V13|v12|Q~1_combout\))) ) ) ) # ( 
-- !\ALUInput2Mux|v3|v14|Q~1_combout\ & ( \ALUInput1Mux|v3|v14|Q~0_combout\ & ( (!\IDEXREG|ALUFunc_IDEX\(0) & (((\ALU16|V0|v12|Q~0_combout\ & \ALU16|V13|v12|Q~0_combout\)) # (\ALU16|V13|v12|Q~1_combout\))) ) ) ) # ( \ALUInput2Mux|v3|v14|Q~1_combout\ & ( 
-- !\ALUInput1Mux|v3|v14|Q~0_combout\ & ( (!\IDEXREG|ALUFunc_IDEX\(0) & (((\ALU16|V0|v12|Q~0_combout\ & \ALU16|V13|v12|Q~0_combout\)) # (\ALU16|V13|v12|Q~1_combout\))) ) ) ) # ( !\ALUInput2Mux|v3|v14|Q~1_combout\ & ( !\ALUInput1Mux|v3|v14|Q~0_combout\ & ( 
-- (\IDEXREG|ALUFunc_IDEX\(0) & (((\ALU16|V0|v12|Q~0_combout\ & \ALU16|V13|v12|Q~0_combout\)) # (\ALU16|V13|v12|Q~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000011111000111110000000000011111000000000000000000011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU16|V0|v12|ALT_INV_Q~0_combout\,
	datab => \ALU16|V13|v12|ALT_INV_Q~0_combout\,
	datac => \ALU16|V13|v12|ALT_INV_Q~1_combout\,
	datad => \IDEXREG|ALT_INV_ALUFunc_IDEX\(0),
	datae => \ALUInput2Mux|v3|v14|ALT_INV_Q~1_combout\,
	dataf => \ALUInput1Mux|v3|v14|ALT_INV_Q~0_combout\,
	combout => \ALU16|V14|v12|Q~2_combout\);

\ALU16|V14|v12|Q~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU16|V14|v12|Q~3_combout\ = (!\ALU16|V12|v12|Q~1_combout\ & (!\ALU16|V13|v12|Q~1_combout\ & ((!\ALU16|V11|v12|Q~1_combout\) # (!\ALU16|V12|v12|Q~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010000000100010001000000010001000100000001000100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU16|V12|v12|ALT_INV_Q~1_combout\,
	datab => \ALU16|V13|v12|ALT_INV_Q~1_combout\,
	datac => \ALU16|V11|v12|ALT_INV_Q~1_combout\,
	datad => \ALU16|V12|v12|ALT_INV_Q~0_combout\,
	combout => \ALU16|V14|v12|Q~3_combout\);

\ALU16|V14|v12|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU16|V14|v12|Q~0_combout\ = ( \ALU16|V14|v12|Q~2_combout\ & ( \ALU16|V14|v12|Q~3_combout\ & ( (\ALU16|V11|v12|Q~0_combout\ & (\ALU16|V12|v12|Q~0_combout\ & ((\ALU16|V10|v12|Q~1_combout\) # (\ALU16|V10|v12|Q~3_combout\)))) ) ) ) # ( 
-- \ALU16|V14|v12|Q~2_combout\ & ( !\ALU16|V14|v12|Q~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU16|V10|v12|ALT_INV_Q~3_combout\,
	datab => \ALU16|V10|v12|ALT_INV_Q~1_combout\,
	datac => \ALU16|V11|v12|ALT_INV_Q~0_combout\,
	datad => \ALU16|V12|v12|ALT_INV_Q~0_combout\,
	datae => \ALU16|V14|v12|ALT_INV_Q~2_combout\,
	dataf => \ALU16|V14|v12|ALT_INV_Q~3_combout\,
	combout => \ALU16|V14|v12|Q~0_combout\);

\ALU16|V14|v12|Q~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU16|V14|v12|Q~1_combout\ = (\ALUInput1Mux|v3|v14|Q~0_combout\ & (!\IDEXREG|ALUFunc_IDEX\(0) $ (!\ALUInput2Mux|v3|v14|Q~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000000110000001100000011000000110000001100000011000000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IDEXREG|ALT_INV_ALUFunc_IDEX\(0),
	datab => \ALUInput2Mux|v3|v14|ALT_INV_Q~1_combout\,
	datac => \ALUInput1Mux|v3|v14|ALT_INV_Q~0_combout\,
	combout => \ALU16|V14|v12|Q~1_combout\);

\ALU16|V15|v9|V4|v3|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU16|V15|v9|V4|v3|Q~0_combout\ = ( \ALUInput2Mux|v3|v15|Q~1_combout\ & ( (!\IDEXREG|ALUFunc_IDEX\(1) & (((\IDEXREG|ALUFunc_IDEX\(2) & !\ALUInput1Mux|v3|v15|Q~0_combout\)))) # (\IDEXREG|ALUFunc_IDEX\(1) & (!\IDEXREG|ALUFunc_IDEX\(2) $ 
-- (((!\IDEXREG|ALUFunc_IDEX\(0) & !\ALUInput1Mux|v3|v15|Q~0_combout\))))) ) ) # ( !\ALUInput2Mux|v3|v15|Q~1_combout\ & ( (!\IDEXREG|ALUFunc_IDEX\(2) & (\IDEXREG|ALUFunc_IDEX\(1) & (\IDEXREG|ALUFunc_IDEX\(0) & \ALUInput1Mux|v3|v15|Q~0_combout\))) # 
-- (\IDEXREG|ALUFunc_IDEX\(2) & (!\ALUInput1Mux|v3|v15|Q~0_combout\ $ (((\IDEXREG|ALUFunc_IDEX\(1) & !\IDEXREG|ALUFunc_IDEX\(0)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101100010100000111100101000000001011000101000001111001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IDEXREG|ALT_INV_ALUFunc_IDEX\(1),
	datab => \IDEXREG|ALT_INV_ALUFunc_IDEX\(0),
	datac => \IDEXREG|ALT_INV_ALUFunc_IDEX\(2),
	datad => \ALUInput1Mux|v3|v15|ALT_INV_Q~0_combout\,
	datae => \ALUInput2Mux|v3|v15|ALT_INV_Q~1_combout\,
	combout => \ALU16|V15|v9|V4|v3|Q~0_combout\);

\ALU16|V15|v9|V4|v3|Q~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU16|V15|v9|V4|v3|Q~1_combout\ = ( \ALU16|V14|v12|Q~1_combout\ & ( \ALU16|V15|v9|V4|v3|Q~0_combout\ ) ) # ( !\ALU16|V14|v12|Q~1_combout\ & ( \ALU16|V15|v9|V4|v3|Q~0_combout\ ) ) # ( \ALU16|V14|v12|Q~1_combout\ & ( !\ALU16|V15|v9|V4|v3|Q~0_combout\ & ( 
-- (\ALU16|V0|v12|Q~0_combout\ & (!\IDEXREG|ALUFunc_IDEX\(0) $ (\ALU16|V15|v0|v1|v3|Q~0_combout\))) ) ) ) # ( !\ALU16|V14|v12|Q~1_combout\ & ( !\ALU16|V15|v9|V4|v3|Q~0_combout\ & ( (\ALU16|V0|v12|Q~0_combout\ & (!\IDEXREG|ALUFunc_IDEX\(0) $ 
-- (!\ALU16|V15|v0|v1|v3|Q~0_combout\ $ (\ALU16|V14|v12|Q~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001000100001001000010010000111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IDEXREG|ALT_INV_ALUFunc_IDEX\(0),
	datab => \ALU16|V0|v12|ALT_INV_Q~0_combout\,
	datac => \ALU16|V15|v0|v1|v3|ALT_INV_Q~0_combout\,
	datad => \ALU16|V14|v12|ALT_INV_Q~0_combout\,
	datae => \ALU16|V14|v12|ALT_INV_Q~1_combout\,
	dataf => \ALU16|V15|v9|V4|v3|ALT_INV_Q~0_combout\,
	combout => \ALU16|V15|v9|V4|v3|Q~1_combout\);

\EXMEMREG|Result_EXMEM[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \ALU16|V15|v9|V4|v3|Q~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EXMEMREG|Result_EXMEM\(15));

\EXMEMREG|R2Reg_EXMEM[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \IDEXREG|R2Reg_IDEX\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EXMEMREG|R2Reg_EXMEM\(0));

\EXMEMREG|R2Reg_EXMEM[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \IDEXREG|R2Reg_IDEX\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EXMEMREG|R2Reg_EXMEM\(1));

\EXMEMREG|R2Reg_EXMEM[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \IDEXREG|R2Reg_IDEX\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EXMEMREG|R2Reg_EXMEM\(2));

\EXMEMREG|R2Reg_EXMEM[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \IDEXREG|R2Reg_IDEX\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EXMEMREG|R2Reg_EXMEM\(3));

\EXMEMREG|R2Reg_EXMEM[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \IDEXREG|R2Reg_IDEX\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EXMEMREG|R2Reg_EXMEM\(4));

\EXMEMREG|R2Reg_EXMEM[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \IDEXREG|R2Reg_IDEX\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EXMEMREG|R2Reg_EXMEM\(5));

\EXMEMREG|R2Reg_EXMEM[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \IDEXREG|R2Reg_IDEX\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EXMEMREG|R2Reg_EXMEM\(6));

\EXMEMREG|R2Reg_EXMEM[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \IDEXREG|R2Reg_IDEX\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EXMEMREG|R2Reg_EXMEM\(7));

\EXMEMREG|R2Reg_EXMEM[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \IDEXREG|R2Reg_IDEX\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EXMEMREG|R2Reg_EXMEM\(8));

\EXMEMREG|R2Reg_EXMEM[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \IDEXREG|R2Reg_IDEX\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EXMEMREG|R2Reg_EXMEM\(9));

\EXMEMREG|R2Reg_EXMEM[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \IDEXREG|R2Reg_IDEX\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EXMEMREG|R2Reg_EXMEM\(10));

\EXMEMREG|R2Reg_EXMEM[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \IDEXREG|R2Reg_IDEX\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EXMEMREG|R2Reg_EXMEM\(11));

\EXMEMREG|R2Reg_EXMEM[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \IDEXREG|R2Reg_IDEX\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EXMEMREG|R2Reg_EXMEM\(12));

\EXMEMREG|R2Reg_EXMEM[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \IDEXREG|R2Reg_IDEX\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EXMEMREG|R2Reg_EXMEM\(13));

\EXMEMREG|R2Reg_EXMEM[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \IDEXREG|R2Reg_IDEX\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EXMEMREG|R2Reg_EXMEM\(14));

\EXMEMREG|R2Reg_EXMEM[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \IDEXREG|R2Reg_IDEX\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EXMEMREG|R2Reg_EXMEM\(15));

\clock2~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock2,
	o => \clock2~input_o\);

ww_printEnable <= \printEnable~output_o\;

ww_keyEnable <= \keyEnable~output_o\;

ww_DataWriteFlag <= \DataWriteFlag~output_o\;

ww_dataAD(0) <= \dataAD[0]~output_o\;

ww_dataAD(1) <= \dataAD[1]~output_o\;

ww_dataAD(2) <= \dataAD[2]~output_o\;

ww_dataAD(3) <= \dataAD[3]~output_o\;

ww_dataAD(4) <= \dataAD[4]~output_o\;

ww_dataAD(5) <= \dataAD[5]~output_o\;

ww_dataAD(6) <= \dataAD[6]~output_o\;

ww_dataAD(7) <= \dataAD[7]~output_o\;

ww_dataAD(8) <= \dataAD[8]~output_o\;

ww_dataAD(9) <= \dataAD[9]~output_o\;

ww_dataAD(10) <= \dataAD[10]~output_o\;

ww_dataAD(11) <= \dataAD[11]~output_o\;

ww_dataAD(12) <= \dataAD[12]~output_o\;

ww_dataAD(13) <= \dataAD[13]~output_o\;

ww_dataAD(14) <= \dataAD[14]~output_o\;

ww_dataAD(15) <= \dataAD[15]~output_o\;

ww_toData(0) <= \toData[0]~output_o\;

ww_toData(1) <= \toData[1]~output_o\;

ww_toData(2) <= \toData[2]~output_o\;

ww_toData(3) <= \toData[3]~output_o\;

ww_toData(4) <= \toData[4]~output_o\;

ww_toData(5) <= \toData[5]~output_o\;

ww_toData(6) <= \toData[6]~output_o\;

ww_toData(7) <= \toData[7]~output_o\;

ww_toData(8) <= \toData[8]~output_o\;

ww_toData(9) <= \toData[9]~output_o\;

ww_toData(10) <= \toData[10]~output_o\;

ww_toData(11) <= \toData[11]~output_o\;

ww_toData(12) <= \toData[12]~output_o\;

ww_toData(13) <= \toData[13]~output_o\;

ww_toData(14) <= \toData[14]~output_o\;

ww_toData(15) <= \toData[15]~output_o\;

ww_printCode(0) <= \printCode[0]~output_o\;

ww_printCode(1) <= \printCode[1]~output_o\;

ww_printCode(2) <= \printCode[2]~output_o\;

ww_printCode(3) <= \printCode[3]~output_o\;

ww_printCode(4) <= \printCode[4]~output_o\;

ww_printCode(5) <= \printCode[5]~output_o\;

ww_printCode(6) <= \printCode[6]~output_o\;

ww_printCode(7) <= \printCode[7]~output_o\;

ww_printCode(8) <= \printCode[8]~output_o\;

ww_printCode(9) <= \printCode[9]~output_o\;

ww_printCode(10) <= \printCode[10]~output_o\;

ww_printCode(11) <= \printCode[11]~output_o\;

ww_printCode(12) <= \printCode[12]~output_o\;

ww_printCode(13) <= \printCode[13]~output_o\;

ww_printCode(14) <= \printCode[14]~output_o\;

ww_printCode(15) <= \printCode[15]~output_o\;

ww_printData(0) <= \printData[0]~output_o\;

ww_printData(1) <= \printData[1]~output_o\;

ww_printData(2) <= \printData[2]~output_o\;

ww_printData(3) <= \printData[3]~output_o\;

ww_printData(4) <= \printData[4]~output_o\;

ww_printData(5) <= \printData[5]~output_o\;

ww_printData(6) <= \printData[6]~output_o\;

ww_printData(7) <= \printData[7]~output_o\;

ww_printData(8) <= \printData[8]~output_o\;

ww_printData(9) <= \printData[9]~output_o\;

ww_printData(10) <= \printData[10]~output_o\;

ww_printData(11) <= \printData[11]~output_o\;

ww_printData(12) <= \printData[12]~output_o\;

ww_printData(13) <= \printData[13]~output_o\;

ww_printData(14) <= \printData[14]~output_o\;

ww_printData(15) <= \printData[15]~output_o\;

ww_Result(0) <= \Result[0]~output_o\;

ww_Result(1) <= \Result[1]~output_o\;

ww_Result(2) <= \Result[2]~output_o\;

ww_Result(3) <= \Result[3]~output_o\;

ww_Result(4) <= \Result[4]~output_o\;

ww_Result(5) <= \Result[5]~output_o\;

ww_Result(6) <= \Result[6]~output_o\;

ww_Result(7) <= \Result[7]~output_o\;

ww_Result(8) <= \Result[8]~output_o\;

ww_Result(9) <= \Result[9]~output_o\;

ww_Result(10) <= \Result[10]~output_o\;

ww_Result(11) <= \Result[11]~output_o\;

ww_Result(12) <= \Result[12]~output_o\;

ww_Result(13) <= \Result[13]~output_o\;

ww_Result(14) <= \Result[14]~output_o\;

ww_Result(15) <= \Result[15]~output_o\;

ww_regOUT(0) <= \regOUT[0]~output_o\;

ww_regOUT(1) <= \regOUT[1]~output_o\;

ww_regOUT(2) <= \regOUT[2]~output_o\;

ww_regOUT(3) <= \regOUT[3]~output_o\;

ww_regOUT(4) <= \regOUT[4]~output_o\;

ww_regOUT(5) <= \regOUT[5]~output_o\;

ww_regOUT(6) <= \regOUT[6]~output_o\;

ww_regOUT(7) <= \regOUT[7]~output_o\;

ww_regOUT(8) <= \regOUT[8]~output_o\;

ww_regOUT(9) <= \regOUT[9]~output_o\;

ww_regOUT(10) <= \regOUT[10]~output_o\;

ww_regOUT(11) <= \regOUT[11]~output_o\;

ww_regOUT(12) <= \regOUT[12]~output_o\;

ww_regOUT(13) <= \regOUT[13]~output_o\;

ww_regOUT(14) <= \regOUT[14]~output_o\;

ww_regOUT(15) <= \regOUT[15]~output_o\;

ww_regOUT(16) <= \regOUT[16]~output_o\;

ww_regOUT(17) <= \regOUT[17]~output_o\;

ww_regOUT(18) <= \regOUT[18]~output_o\;

ww_regOUT(19) <= \regOUT[19]~output_o\;

ww_regOUT(20) <= \regOUT[20]~output_o\;

ww_regOUT(21) <= \regOUT[21]~output_o\;

ww_regOUT(22) <= \regOUT[22]~output_o\;

ww_regOUT(23) <= \regOUT[23]~output_o\;

ww_regOUT(24) <= \regOUT[24]~output_o\;

ww_regOUT(25) <= \regOUT[25]~output_o\;

ww_regOUT(26) <= \regOUT[26]~output_o\;

ww_regOUT(27) <= \regOUT[27]~output_o\;

ww_regOUT(28) <= \regOUT[28]~output_o\;

ww_regOUT(29) <= \regOUT[29]~output_o\;

ww_regOUT(30) <= \regOUT[30]~output_o\;

ww_regOUT(31) <= \regOUT[31]~output_o\;

ww_regOUT(32) <= \regOUT[32]~output_o\;

ww_regOUT(33) <= \regOUT[33]~output_o\;

ww_regOUT(34) <= \regOUT[34]~output_o\;

ww_regOUT(35) <= \regOUT[35]~output_o\;

ww_regOUT(36) <= \regOUT[36]~output_o\;

ww_regOUT(37) <= \regOUT[37]~output_o\;

ww_regOUT(38) <= \regOUT[38]~output_o\;

ww_regOUT(39) <= \regOUT[39]~output_o\;

ww_regOUT(40) <= \regOUT[40]~output_o\;

ww_regOUT(41) <= \regOUT[41]~output_o\;

ww_regOUT(42) <= \regOUT[42]~output_o\;

ww_regOUT(43) <= \regOUT[43]~output_o\;

ww_regOUT(44) <= \regOUT[44]~output_o\;

ww_regOUT(45) <= \regOUT[45]~output_o\;

ww_regOUT(46) <= \regOUT[46]~output_o\;

ww_regOUT(47) <= \regOUT[47]~output_o\;

ww_regOUT(48) <= \regOUT[48]~output_o\;

ww_regOUT(49) <= \regOUT[49]~output_o\;

ww_regOUT(50) <= \regOUT[50]~output_o\;

ww_regOUT(51) <= \regOUT[51]~output_o\;

ww_regOUT(52) <= \regOUT[52]~output_o\;

ww_regOUT(53) <= \regOUT[53]~output_o\;

ww_regOUT(54) <= \regOUT[54]~output_o\;

ww_regOUT(55) <= \regOUT[55]~output_o\;

ww_regOUT(56) <= \regOUT[56]~output_o\;

ww_regOUT(57) <= \regOUT[57]~output_o\;

ww_regOUT(58) <= \regOUT[58]~output_o\;

ww_regOUT(59) <= \regOUT[59]~output_o\;

ww_regOUT(60) <= \regOUT[60]~output_o\;

ww_regOUT(61) <= \regOUT[61]~output_o\;

ww_regOUT(62) <= \regOUT[62]~output_o\;

ww_regOUT(63) <= \regOUT[63]~output_o\;

ww_regOUT(64) <= \regOUT[64]~output_o\;

ww_regOUT(65) <= \regOUT[65]~output_o\;

ww_regOUT(66) <= \regOUT[66]~output_o\;

ww_regOUT(67) <= \regOUT[67]~output_o\;

ww_regOUT(68) <= \regOUT[68]~output_o\;

ww_regOUT(69) <= \regOUT[69]~output_o\;

ww_regOUT(70) <= \regOUT[70]~output_o\;

ww_regOUT(71) <= \regOUT[71]~output_o\;

ww_regOUT(72) <= \regOUT[72]~output_o\;

ww_regOUT(73) <= \regOUT[73]~output_o\;

ww_regOUT(74) <= \regOUT[74]~output_o\;

ww_regOUT(75) <= \regOUT[75]~output_o\;

ww_regOUT(76) <= \regOUT[76]~output_o\;

ww_regOUT(77) <= \regOUT[77]~output_o\;

ww_regOUT(78) <= \regOUT[78]~output_o\;

ww_regOUT(79) <= \regOUT[79]~output_o\;

ww_regOUT(80) <= \regOUT[80]~output_o\;

ww_regOUT(81) <= \regOUT[81]~output_o\;

ww_regOUT(82) <= \regOUT[82]~output_o\;

ww_regOUT(83) <= \regOUT[83]~output_o\;

ww_regOUT(84) <= \regOUT[84]~output_o\;

ww_regOUT(85) <= \regOUT[85]~output_o\;

ww_regOUT(86) <= \regOUT[86]~output_o\;

ww_regOUT(87) <= \regOUT[87]~output_o\;

ww_regOUT(88) <= \regOUT[88]~output_o\;

ww_regOUT(89) <= \regOUT[89]~output_o\;

ww_regOUT(90) <= \regOUT[90]~output_o\;

ww_regOUT(91) <= \regOUT[91]~output_o\;

ww_regOUT(92) <= \regOUT[92]~output_o\;

ww_regOUT(93) <= \regOUT[93]~output_o\;

ww_regOUT(94) <= \regOUT[94]~output_o\;

ww_regOUT(95) <= \regOUT[95]~output_o\;

ww_regOUT(96) <= \regOUT[96]~output_o\;

ww_regOUT(97) <= \regOUT[97]~output_o\;

ww_regOUT(98) <= \regOUT[98]~output_o\;

ww_regOUT(99) <= \regOUT[99]~output_o\;

ww_regOUT(100) <= \regOUT[100]~output_o\;

ww_regOUT(101) <= \regOUT[101]~output_o\;

ww_regOUT(102) <= \regOUT[102]~output_o\;

ww_regOUT(103) <= \regOUT[103]~output_o\;

ww_regOUT(104) <= \regOUT[104]~output_o\;

ww_regOUT(105) <= \regOUT[105]~output_o\;

ww_regOUT(106) <= \regOUT[106]~output_o\;

ww_regOUT(107) <= \regOUT[107]~output_o\;

ww_regOUT(108) <= \regOUT[108]~output_o\;

ww_regOUT(109) <= \regOUT[109]~output_o\;

ww_regOUT(110) <= \regOUT[110]~output_o\;

ww_regOUT(111) <= \regOUT[111]~output_o\;

ww_regOUT(112) <= \regOUT[112]~output_o\;

ww_regOUT(113) <= \regOUT[113]~output_o\;

ww_regOUT(114) <= \regOUT[114]~output_o\;

ww_regOUT(115) <= \regOUT[115]~output_o\;

ww_regOUT(116) <= \regOUT[116]~output_o\;

ww_regOUT(117) <= \regOUT[117]~output_o\;

ww_regOUT(118) <= \regOUT[118]~output_o\;

ww_regOUT(119) <= \regOUT[119]~output_o\;

ww_regOUT(120) <= \regOUT[120]~output_o\;

ww_regOUT(121) <= \regOUT[121]~output_o\;

ww_regOUT(122) <= \regOUT[122]~output_o\;

ww_regOUT(123) <= \regOUT[123]~output_o\;

ww_regOUT(124) <= \regOUT[124]~output_o\;

ww_regOUT(125) <= \regOUT[125]~output_o\;

ww_regOUT(126) <= \regOUT[126]~output_o\;

ww_regOUT(127) <= \regOUT[127]~output_o\;

ww_regOUT(128) <= \regOUT[128]~output_o\;

ww_regOUT(129) <= \regOUT[129]~output_o\;

ww_regOUT(130) <= \regOUT[130]~output_o\;

ww_regOUT(131) <= \regOUT[131]~output_o\;

ww_regOUT(132) <= \regOUT[132]~output_o\;

ww_regOUT(133) <= \regOUT[133]~output_o\;

ww_regOUT(134) <= \regOUT[134]~output_o\;

ww_regOUT(135) <= \regOUT[135]~output_o\;

ww_regOUT(136) <= \regOUT[136]~output_o\;

ww_regOUT(137) <= \regOUT[137]~output_o\;

ww_regOUT(138) <= \regOUT[138]~output_o\;

ww_regOUT(139) <= \regOUT[139]~output_o\;

ww_regOUT(140) <= \regOUT[140]~output_o\;

ww_regOUT(141) <= \regOUT[141]~output_o\;

ww_regOUT(142) <= \regOUT[142]~output_o\;

ww_regOUT(143) <= \regOUT[143]~output_o\;

ww_instructionAD(0) <= \instructionAD[0]~output_o\;

ww_instructionAD(1) <= \instructionAD[1]~output_o\;

ww_instructionAD(2) <= \instructionAD[2]~output_o\;

ww_instructionAD(3) <= \instructionAD[3]~output_o\;

ww_instructionAD(4) <= \instructionAD[4]~output_o\;

ww_instructionAD(5) <= \instructionAD[5]~output_o\;

ww_instructionAD(6) <= \instructionAD[6]~output_o\;

ww_instructionAD(7) <= \instructionAD[7]~output_o\;

ww_instructionAD(8) <= \instructionAD[8]~output_o\;

ww_instructionAD(9) <= \instructionAD[9]~output_o\;

ww_instructionAD(10) <= \instructionAD[10]~output_o\;

ww_instructionAD(11) <= \instructionAD[11]~output_o\;

ww_instructionAD(12) <= \instructionAD[12]~output_o\;

ww_instructionAD(13) <= \instructionAD[13]~output_o\;

ww_instructionAD(14) <= \instructionAD[14]~output_o\;

ww_instructionAD(15) <= \instructionAD[15]~output_o\;
END structure;


