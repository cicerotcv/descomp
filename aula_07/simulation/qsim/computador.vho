-- Copyright (C) 2020  Intel Corporation. All rights reserved.
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
-- VERSION "Version 20.1.0 Build 711 06/05/2020 SJ Lite Edition"

-- DATE "09/27/2021 18:36:24"

-- 
-- Device: Altera 5CEBA4F23C7 Package FBGA484
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

ENTITY 	computador IS
    PORT (
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(3 DOWNTO 0);
	SAIDA : OUT std_logic_vector(7 DOWNTO 0);
	FLAG_JMP : OUT std_logic_vector(1 DOWNTO 0);
	DEST : OUT std_logic_vector(8 DOWNTO 0);
	PC : OUT std_logic_vector(8 DOWNTO 0)
	);
END computador;

ARCHITECTURE structure OF computador IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_SAIDA : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_FLAG_JMP : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_DEST : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_PC : std_logic_vector(8 DOWNTO 0);
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \SAIDA[0]~output_o\ : std_logic;
SIGNAL \SAIDA[1]~output_o\ : std_logic;
SIGNAL \SAIDA[2]~output_o\ : std_logic;
SIGNAL \SAIDA[3]~output_o\ : std_logic;
SIGNAL \SAIDA[4]~output_o\ : std_logic;
SIGNAL \SAIDA[5]~output_o\ : std_logic;
SIGNAL \SAIDA[6]~output_o\ : std_logic;
SIGNAL \SAIDA[7]~output_o\ : std_logic;
SIGNAL \FLAG_JMP[0]~output_o\ : std_logic;
SIGNAL \FLAG_JMP[1]~output_o\ : std_logic;
SIGNAL \DEST[0]~output_o\ : std_logic;
SIGNAL \DEST[1]~output_o\ : std_logic;
SIGNAL \DEST[2]~output_o\ : std_logic;
SIGNAL \DEST[3]~output_o\ : std_logic;
SIGNAL \DEST[4]~output_o\ : std_logic;
SIGNAL \DEST[5]~output_o\ : std_logic;
SIGNAL \DEST[6]~output_o\ : std_logic;
SIGNAL \DEST[7]~output_o\ : std_logic;
SIGNAL \DEST[8]~output_o\ : std_logic;
SIGNAL \PC[0]~output_o\ : std_logic;
SIGNAL \PC[1]~output_o\ : std_logic;
SIGNAL \PC[2]~output_o\ : std_logic;
SIGNAL \PC[3]~output_o\ : std_logic;
SIGNAL \PC[4]~output_o\ : std_logic;
SIGNAL \PC[5]~output_o\ : std_logic;
SIGNAL \PC[6]~output_o\ : std_logic;
SIGNAL \PC[7]~output_o\ : std_logic;
SIGNAL \PC[8]~output_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \ROM|memROM~13_combout\ : std_logic;
SIGNAL \ROM|memROM~14_combout\ : std_logic;
SIGNAL \INSTR|SOMA_CONST|Add0~6\ : std_logic;
SIGNAL \INSTR|SOMA_CONST|Add0~10\ : std_logic;
SIGNAL \INSTR|SOMA_CONST|Add0~14\ : std_logic;
SIGNAL \INSTR|SOMA_CONST|Add0~17_sumout\ : std_logic;
SIGNAL \ROM|memROM~5_combout\ : std_logic;
SIGNAL \ROM|memROM~6_combout\ : std_logic;
SIGNAL \DECODER|sinais_controle~1_combout\ : std_logic;
SIGNAL \INSTR|MUX2|MUX_OUT[3]~4_combout\ : std_logic;
SIGNAL \ROM|memROM~11_combout\ : std_logic;
SIGNAL \ROM|memROM~12_combout\ : std_logic;
SIGNAL \INSTR|SOMA_CONST|Add0~13_sumout\ : std_logic;
SIGNAL \INSTR|MUX2|MUX_OUT[2]~3_combout\ : std_logic;
SIGNAL \ROM|memROM~9_combout\ : std_logic;
SIGNAL \ROM|memROM~10_combout\ : std_logic;
SIGNAL \INSTR|SOMA_CONST|Add0~9_sumout\ : std_logic;
SIGNAL \INSTR|MUX2|MUX_OUT[1]~2_combout\ : std_logic;
SIGNAL \ROM|memROM~3_combout\ : std_logic;
SIGNAL \INSTR|SOMA_CONST|Add0~18\ : std_logic;
SIGNAL \INSTR|SOMA_CONST|Add0~33_sumout\ : std_logic;
SIGNAL \INSTR|MUX2|MUX_OUT[4]~8_combout\ : std_logic;
SIGNAL \INSTR|SOMA_CONST|Add0~34\ : std_logic;
SIGNAL \INSTR|SOMA_CONST|Add0~29_sumout\ : std_logic;
SIGNAL \INSTR|MUX2|MUX_OUT[5]~7_combout\ : std_logic;
SIGNAL \INSTR|SOMA_CONST|Add0~30\ : std_logic;
SIGNAL \INSTR|SOMA_CONST|Add0~25_sumout\ : std_logic;
SIGNAL \INSTR|MUX2|MUX_OUT[6]~6_combout\ : std_logic;
SIGNAL \ROM|memROM~4_combout\ : std_logic;
SIGNAL \LOG_DESVIO|Equal5~0_combout\ : std_logic;
SIGNAL \INSTR|SOMA_CONST|Add0~26\ : std_logic;
SIGNAL \INSTR|SOMA_CONST|Add0~21_sumout\ : std_logic;
SIGNAL \INSTR|MUX2|MUX_OUT[7]~5_combout\ : std_logic;
SIGNAL \ROM|memROM~1_combout\ : std_logic;
SIGNAL \ROM|memROM~2_combout\ : std_logic;
SIGNAL \MUX1|saida_MUX[7]~1_combout\ : std_logic;
SIGNAL \MUX1|saida_MUX[7]~0_combout\ : std_logic;
SIGNAL \DECODER|OP_ULA[1]~0_combout\ : std_logic;
SIGNAL \ULA1|saida[4]~4_combout\ : std_logic;
SIGNAL \DECODER|HAB_A~0_combout\ : std_logic;
SIGNAL \ROM|memROM~15_combout\ : std_logic;
SIGNAL \MDADOS|process_0~0_combout\ : std_logic;
SIGNAL \MDADOS|ram~161_combout\ : std_logic;
SIGNAL \MDADOS|ram~162_combout\ : std_logic;
SIGNAL \MDADOS|ram~21_q\ : std_logic;
SIGNAL \MDADOS|ram~153_combout\ : std_logic;
SIGNAL \MDADOS|ram~154_combout\ : std_logic;
SIGNAL \ROM|memROM~19_combout\ : std_logic;
SIGNAL \ROM|memROM~18_combout\ : std_logic;
SIGNAL \MDADOS|ram~17_q\ : std_logic;
SIGNAL \MDADOS|ram~145_combout\ : std_logic;
SIGNAL \MDADOS|ram~146_combout\ : std_logic;
SIGNAL \ROM|memROM~7_combout\ : std_logic;
SIGNAL \ROM|memROM~17_combout\ : std_logic;
SIGNAL \ULA1|Add1~34_cout\ : std_logic;
SIGNAL \ULA1|Add1~2\ : std_logic;
SIGNAL \ULA1|Add1~5_sumout\ : std_logic;
SIGNAL \ULA1|saida[1]~1_combout\ : std_logic;
SIGNAL \MDADOS|ram~18_q\ : std_logic;
SIGNAL \MDADOS|ram~147_combout\ : std_logic;
SIGNAL \MDADOS|ram~148_combout\ : std_logic;
SIGNAL \ULA1|Add1~6\ : std_logic;
SIGNAL \ULA1|Add1~9_sumout\ : std_logic;
SIGNAL \ULA1|saida[2]~2_combout\ : std_logic;
SIGNAL \MDADOS|ram~19_q\ : std_logic;
SIGNAL \MDADOS|ram~149_combout\ : std_logic;
SIGNAL \MDADOS|ram~150_combout\ : std_logic;
SIGNAL \ULA1|Add1~10\ : std_logic;
SIGNAL \ULA1|Add1~13_sumout\ : std_logic;
SIGNAL \ULA1|saida[3]~3_combout\ : std_logic;
SIGNAL \MDADOS|ram~20_q\ : std_logic;
SIGNAL \MDADOS|ram~151_combout\ : std_logic;
SIGNAL \MDADOS|ram~152_combout\ : std_logic;
SIGNAL \ULA1|Add1~14\ : std_logic;
SIGNAL \ULA1|Add1~17_sumout\ : std_logic;
SIGNAL \ROM|memROM~20_combout\ : std_logic;
SIGNAL \ULA1|saida[5]~5_combout\ : std_logic;
SIGNAL \MDADOS|ram~22_q\ : std_logic;
SIGNAL \MDADOS|ram~155_combout\ : std_logic;
SIGNAL \MDADOS|ram~156_combout\ : std_logic;
SIGNAL \ULA1|Add1~18\ : std_logic;
SIGNAL \ULA1|Add1~21_sumout\ : std_logic;
SIGNAL \ULA1|saida[6]~6_combout\ : std_logic;
SIGNAL \MDADOS|ram~23_q\ : std_logic;
SIGNAL \MDADOS|ram~157_combout\ : std_logic;
SIGNAL \MDADOS|ram~158_combout\ : std_logic;
SIGNAL \ULA1|Add1~22\ : std_logic;
SIGNAL \ULA1|Add1~25_sumout\ : std_logic;
SIGNAL \ULA1|saida[7]~7_combout\ : std_logic;
SIGNAL \MDADOS|ram~24_q\ : std_logic;
SIGNAL \MDADOS|ram~159_combout\ : std_logic;
SIGNAL \MDADOS|ram~160_combout\ : std_logic;
SIGNAL \ULA1|Add1~26\ : std_logic;
SIGNAL \ULA1|Add1~29_sumout\ : std_logic;
SIGNAL \DECODER|sinais_controle~0_combout\ : std_logic;
SIGNAL \FLAG|DOUT~0_combout\ : std_logic;
SIGNAL \ULA1|Add1~1_sumout\ : std_logic;
SIGNAL \FLAG|DOUT~1_combout\ : std_logic;
SIGNAL \FLAG|DOUT~2_combout\ : std_logic;
SIGNAL \FLAG|DOUT~q\ : std_logic;
SIGNAL \LOG_DESVIO|DESV_JUMP~0_combout\ : std_logic;
SIGNAL \INSTR|PC|DOUT[8]~0_combout\ : std_logic;
SIGNAL \INSTR|SOMA_CONST|Add0~5_sumout\ : std_logic;
SIGNAL \INSTR|MUX2|MUX_OUT[0]~1_combout\ : std_logic;
SIGNAL \ROM|memROM~0_combout\ : std_logic;
SIGNAL \LOG_DESVIO|DESV_JUMP~1_combout\ : std_logic;
SIGNAL \ROM|memROM~16_combout\ : std_logic;
SIGNAL \INSTR|SOMA_CONST|Add0~22\ : std_logic;
SIGNAL \INSTR|SOMA_CONST|Add0~1_sumout\ : std_logic;
SIGNAL \INSTR|MUX2|MUX_OUT[8]~0_combout\ : std_logic;
SIGNAL \ROM|memROM~8_combout\ : std_logic;
SIGNAL \ULA1|saida[0]~0_combout\ : std_logic;
SIGNAL \INSTR|END_RETORNO|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \INSTR|PC|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \REG_A|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \DECODER|ALT_INV_OP_ULA[1]~0_combout\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~146_combout\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~145_combout\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~17_q\ : std_logic;
SIGNAL \MUX1|ALT_INV_saida_MUX[7]~0_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~16_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~15_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~14_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~13_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~12_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~11_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~10_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~9_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~8_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~7_combout\ : std_logic;
SIGNAL \LOG_DESVIO|ALT_INV_DESV_JUMP~1_combout\ : std_logic;
SIGNAL \LOG_DESVIO|ALT_INV_DESV_JUMP~0_combout\ : std_logic;
SIGNAL \FLAG|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~6_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~5_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~4_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~3_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~2_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \INSTR|PC|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \ROM|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \INSTR|SOMA_CONST|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \INSTR|SOMA_CONST|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \INSTR|SOMA_CONST|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \INSTR|SOMA_CONST|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \INSTR|SOMA_CONST|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \INSTR|SOMA_CONST|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \INSTR|SOMA_CONST|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \INSTR|SOMA_CONST|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \INSTR|SOMA_CONST|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add1~29_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add1~25_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add1~21_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add1~17_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add1~1_sumout\ : std_logic;
SIGNAL \REG_A|ALT_INV_DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ROM|ALT_INV_memROM~20_combout\ : std_logic;
SIGNAL \MUX1|ALT_INV_saida_MUX[7]~1_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~19_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~18_combout\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~161_combout\ : std_logic;
SIGNAL \MDADOS|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~17_combout\ : std_logic;
SIGNAL \FLAG|ALT_INV_DOUT~1_combout\ : std_logic;
SIGNAL \FLAG|ALT_INV_DOUT~0_combout\ : std_logic;
SIGNAL \DECODER|ALT_INV_sinais_controle~0_combout\ : std_logic;
SIGNAL \INSTR|END_RETORNO|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \MDADOS|ALT_INV_ram~148_combout\ : std_logic;
SIGNAL \INSTR|PC|ALT_INV_DOUT[8]~0_combout\ : std_logic;
SIGNAL \LOG_DESVIO|ALT_INV_Equal5~0_combout\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~152_combout\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~151_combout\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~20_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~150_combout\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~147_combout\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~149_combout\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~19_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~18_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~21_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~158_combout\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~157_combout\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~23_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~160_combout\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~156_combout\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~159_combout\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~155_combout\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~22_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~24_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~154_combout\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~153_combout\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
SAIDA <= ww_SAIDA;
FLAG_JMP <= ww_FLAG_JMP;
DEST <= ww_DEST;
PC <= ww_PC;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\DECODER|ALT_INV_OP_ULA[1]~0_combout\ <= NOT \DECODER|OP_ULA[1]~0_combout\;
\MDADOS|ALT_INV_ram~146_combout\ <= NOT \MDADOS|ram~146_combout\;
\MDADOS|ALT_INV_ram~145_combout\ <= NOT \MDADOS|ram~145_combout\;
\MDADOS|ALT_INV_ram~17_q\ <= NOT \MDADOS|ram~17_q\;
\MUX1|ALT_INV_saida_MUX[7]~0_combout\ <= NOT \MUX1|saida_MUX[7]~0_combout\;
\ROM|ALT_INV_memROM~16_combout\ <= NOT \ROM|memROM~16_combout\;
\ROM|ALT_INV_memROM~15_combout\ <= NOT \ROM|memROM~15_combout\;
\ROM|ALT_INV_memROM~14_combout\ <= NOT \ROM|memROM~14_combout\;
\ROM|ALT_INV_memROM~13_combout\ <= NOT \ROM|memROM~13_combout\;
\ROM|ALT_INV_memROM~12_combout\ <= NOT \ROM|memROM~12_combout\;
\ROM|ALT_INV_memROM~11_combout\ <= NOT \ROM|memROM~11_combout\;
\ROM|ALT_INV_memROM~10_combout\ <= NOT \ROM|memROM~10_combout\;
\ROM|ALT_INV_memROM~9_combout\ <= NOT \ROM|memROM~9_combout\;
\ROM|ALT_INV_memROM~8_combout\ <= NOT \ROM|memROM~8_combout\;
\ROM|ALT_INV_memROM~7_combout\ <= NOT \ROM|memROM~7_combout\;
\LOG_DESVIO|ALT_INV_DESV_JUMP~1_combout\ <= NOT \LOG_DESVIO|DESV_JUMP~1_combout\;
\LOG_DESVIO|ALT_INV_DESV_JUMP~0_combout\ <= NOT \LOG_DESVIO|DESV_JUMP~0_combout\;
\FLAG|ALT_INV_DOUT~q\ <= NOT \FLAG|DOUT~q\;
\ROM|ALT_INV_memROM~6_combout\ <= NOT \ROM|memROM~6_combout\;
\ROM|ALT_INV_memROM~5_combout\ <= NOT \ROM|memROM~5_combout\;
\ROM|ALT_INV_memROM~4_combout\ <= NOT \ROM|memROM~4_combout\;
\ROM|ALT_INV_memROM~3_combout\ <= NOT \ROM|memROM~3_combout\;
\ROM|ALT_INV_memROM~2_combout\ <= NOT \ROM|memROM~2_combout\;
\ROM|ALT_INV_memROM~1_combout\ <= NOT \ROM|memROM~1_combout\;
\INSTR|PC|ALT_INV_DOUT\(4) <= NOT \INSTR|PC|DOUT\(4);
\INSTR|PC|ALT_INV_DOUT\(5) <= NOT \INSTR|PC|DOUT\(5);
\INSTR|PC|ALT_INV_DOUT\(6) <= NOT \INSTR|PC|DOUT\(6);
\INSTR|PC|ALT_INV_DOUT\(7) <= NOT \INSTR|PC|DOUT\(7);
\ROM|ALT_INV_memROM~0_combout\ <= NOT \ROM|memROM~0_combout\;
\INSTR|PC|ALT_INV_DOUT\(3) <= NOT \INSTR|PC|DOUT\(3);
\INSTR|PC|ALT_INV_DOUT\(2) <= NOT \INSTR|PC|DOUT\(2);
\INSTR|PC|ALT_INV_DOUT\(1) <= NOT \INSTR|PC|DOUT\(1);
\INSTR|PC|ALT_INV_DOUT\(0) <= NOT \INSTR|PC|DOUT\(0);
\INSTR|PC|ALT_INV_DOUT\(8) <= NOT \INSTR|PC|DOUT\(8);
\INSTR|SOMA_CONST|ALT_INV_Add0~33_sumout\ <= NOT \INSTR|SOMA_CONST|Add0~33_sumout\;
\INSTR|SOMA_CONST|ALT_INV_Add0~29_sumout\ <= NOT \INSTR|SOMA_CONST|Add0~29_sumout\;
\INSTR|SOMA_CONST|ALT_INV_Add0~25_sumout\ <= NOT \INSTR|SOMA_CONST|Add0~25_sumout\;
\INSTR|SOMA_CONST|ALT_INV_Add0~21_sumout\ <= NOT \INSTR|SOMA_CONST|Add0~21_sumout\;
\INSTR|SOMA_CONST|ALT_INV_Add0~17_sumout\ <= NOT \INSTR|SOMA_CONST|Add0~17_sumout\;
\INSTR|SOMA_CONST|ALT_INV_Add0~13_sumout\ <= NOT \INSTR|SOMA_CONST|Add0~13_sumout\;
\INSTR|SOMA_CONST|ALT_INV_Add0~9_sumout\ <= NOT \INSTR|SOMA_CONST|Add0~9_sumout\;
\INSTR|SOMA_CONST|ALT_INV_Add0~5_sumout\ <= NOT \INSTR|SOMA_CONST|Add0~5_sumout\;
\INSTR|SOMA_CONST|ALT_INV_Add0~1_sumout\ <= NOT \INSTR|SOMA_CONST|Add0~1_sumout\;
\ULA1|ALT_INV_Add1~29_sumout\ <= NOT \ULA1|Add1~29_sumout\;
\ULA1|ALT_INV_Add1~25_sumout\ <= NOT \ULA1|Add1~25_sumout\;
\ULA1|ALT_INV_Add1~21_sumout\ <= NOT \ULA1|Add1~21_sumout\;
\ULA1|ALT_INV_Add1~17_sumout\ <= NOT \ULA1|Add1~17_sumout\;
\ULA1|ALT_INV_Add1~13_sumout\ <= NOT \ULA1|Add1~13_sumout\;
\ULA1|ALT_INV_Add1~9_sumout\ <= NOT \ULA1|Add1~9_sumout\;
\ULA1|ALT_INV_Add1~5_sumout\ <= NOT \ULA1|Add1~5_sumout\;
\ULA1|ALT_INV_Add1~1_sumout\ <= NOT \ULA1|Add1~1_sumout\;
\REG_A|ALT_INV_DOUT\(7) <= NOT \REG_A|DOUT\(7);
\REG_A|ALT_INV_DOUT\(6) <= NOT \REG_A|DOUT\(6);
\REG_A|ALT_INV_DOUT\(5) <= NOT \REG_A|DOUT\(5);
\REG_A|ALT_INV_DOUT\(4) <= NOT \REG_A|DOUT\(4);
\REG_A|ALT_INV_DOUT\(3) <= NOT \REG_A|DOUT\(3);
\REG_A|ALT_INV_DOUT\(2) <= NOT \REG_A|DOUT\(2);
\REG_A|ALT_INV_DOUT\(1) <= NOT \REG_A|DOUT\(1);
\REG_A|ALT_INV_DOUT\(0) <= NOT \REG_A|DOUT\(0);
\ROM|ALT_INV_memROM~20_combout\ <= NOT \ROM|memROM~20_combout\;
\MUX1|ALT_INV_saida_MUX[7]~1_combout\ <= NOT \MUX1|saida_MUX[7]~1_combout\;
\ROM|ALT_INV_memROM~19_combout\ <= NOT \ROM|memROM~19_combout\;
\ROM|ALT_INV_memROM~18_combout\ <= NOT \ROM|memROM~18_combout\;
\MDADOS|ALT_INV_ram~161_combout\ <= NOT \MDADOS|ram~161_combout\;
\MDADOS|ALT_INV_process_0~0_combout\ <= NOT \MDADOS|process_0~0_combout\;
\ROM|ALT_INV_memROM~17_combout\ <= NOT \ROM|memROM~17_combout\;
\FLAG|ALT_INV_DOUT~1_combout\ <= NOT \FLAG|DOUT~1_combout\;
\FLAG|ALT_INV_DOUT~0_combout\ <= NOT \FLAG|DOUT~0_combout\;
\DECODER|ALT_INV_sinais_controle~0_combout\ <= NOT \DECODER|sinais_controle~0_combout\;
\INSTR|END_RETORNO|ALT_INV_DOUT\(4) <= NOT \INSTR|END_RETORNO|DOUT\(4);
\INSTR|END_RETORNO|ALT_INV_DOUT\(5) <= NOT \INSTR|END_RETORNO|DOUT\(5);
\INSTR|END_RETORNO|ALT_INV_DOUT\(6) <= NOT \INSTR|END_RETORNO|DOUT\(6);
\INSTR|END_RETORNO|ALT_INV_DOUT\(7) <= NOT \INSTR|END_RETORNO|DOUT\(7);
\INSTR|END_RETORNO|ALT_INV_DOUT\(3) <= NOT \INSTR|END_RETORNO|DOUT\(3);
\INSTR|END_RETORNO|ALT_INV_DOUT\(2) <= NOT \INSTR|END_RETORNO|DOUT\(2);
\INSTR|END_RETORNO|ALT_INV_DOUT\(1) <= NOT \INSTR|END_RETORNO|DOUT\(1);
\INSTR|END_RETORNO|ALT_INV_DOUT\(0) <= NOT \INSTR|END_RETORNO|DOUT\(0);
\MDADOS|ALT_INV_ram~148_combout\ <= NOT \MDADOS|ram~148_combout\;
\INSTR|PC|ALT_INV_DOUT[8]~0_combout\ <= NOT \INSTR|PC|DOUT[8]~0_combout\;
\LOG_DESVIO|ALT_INV_Equal5~0_combout\ <= NOT \LOG_DESVIO|Equal5~0_combout\;
\MDADOS|ALT_INV_ram~152_combout\ <= NOT \MDADOS|ram~152_combout\;
\MDADOS|ALT_INV_ram~151_combout\ <= NOT \MDADOS|ram~151_combout\;
\INSTR|END_RETORNO|ALT_INV_DOUT\(8) <= NOT \INSTR|END_RETORNO|DOUT\(8);
\MDADOS|ALT_INV_ram~20_q\ <= NOT \MDADOS|ram~20_q\;
\MDADOS|ALT_INV_ram~150_combout\ <= NOT \MDADOS|ram~150_combout\;
\MDADOS|ALT_INV_ram~147_combout\ <= NOT \MDADOS|ram~147_combout\;
\MDADOS|ALT_INV_ram~149_combout\ <= NOT \MDADOS|ram~149_combout\;
\MDADOS|ALT_INV_ram~19_q\ <= NOT \MDADOS|ram~19_q\;
\MDADOS|ALT_INV_ram~18_q\ <= NOT \MDADOS|ram~18_q\;
\MDADOS|ALT_INV_ram~21_q\ <= NOT \MDADOS|ram~21_q\;
\MDADOS|ALT_INV_ram~158_combout\ <= NOT \MDADOS|ram~158_combout\;
\MDADOS|ALT_INV_ram~157_combout\ <= NOT \MDADOS|ram~157_combout\;
\MDADOS|ALT_INV_ram~23_q\ <= NOT \MDADOS|ram~23_q\;
\MDADOS|ALT_INV_ram~160_combout\ <= NOT \MDADOS|ram~160_combout\;
\MDADOS|ALT_INV_ram~156_combout\ <= NOT \MDADOS|ram~156_combout\;
\MDADOS|ALT_INV_ram~159_combout\ <= NOT \MDADOS|ram~159_combout\;
\MDADOS|ALT_INV_ram~155_combout\ <= NOT \MDADOS|ram~155_combout\;
\MDADOS|ALT_INV_ram~22_q\ <= NOT \MDADOS|ram~22_q\;
\MDADOS|ALT_INV_ram~24_q\ <= NOT \MDADOS|ram~24_q\;
\MDADOS|ALT_INV_ram~154_combout\ <= NOT \MDADOS|ram~154_combout\;
\MDADOS|ALT_INV_ram~153_combout\ <= NOT \MDADOS|ram~153_combout\;

\SAIDA[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_A|DOUT\(0),
	devoe => ww_devoe,
	o => \SAIDA[0]~output_o\);

\SAIDA[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_A|DOUT\(1),
	devoe => ww_devoe,
	o => \SAIDA[1]~output_o\);

\SAIDA[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_A|DOUT\(2),
	devoe => ww_devoe,
	o => \SAIDA[2]~output_o\);

\SAIDA[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_A|DOUT\(3),
	devoe => ww_devoe,
	o => \SAIDA[3]~output_o\);

\SAIDA[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_A|DOUT\(4),
	devoe => ww_devoe,
	o => \SAIDA[4]~output_o\);

\SAIDA[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_A|DOUT\(5),
	devoe => ww_devoe,
	o => \SAIDA[5]~output_o\);

\SAIDA[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_A|DOUT\(6),
	devoe => ww_devoe,
	o => \SAIDA[6]~output_o\);

\SAIDA[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_A|DOUT\(7),
	devoe => ww_devoe,
	o => \SAIDA[7]~output_o\);

\FLAG_JMP[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LOG_DESVIO|DESV_JUMP~0_combout\,
	devoe => ww_devoe,
	o => \FLAG_JMP[0]~output_o\);

\FLAG_JMP[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LOG_DESVIO|DESV_JUMP~1_combout\,
	devoe => ww_devoe,
	o => \FLAG_JMP[1]~output_o\);

\DEST[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~8_combout\,
	devoe => ww_devoe,
	o => \DEST[0]~output_o\);

\DEST[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|ALT_INV_memROM~10_combout\,
	devoe => ww_devoe,
	o => \DEST[1]~output_o\);

\DEST[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|ALT_INV_memROM~12_combout\,
	devoe => ww_devoe,
	o => \DEST[2]~output_o\);

\DEST[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|ALT_INV_memROM~14_combout\,
	devoe => ww_devoe,
	o => \DEST[3]~output_o\);

\DEST[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DEST[4]~output_o\);

\DEST[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DEST[5]~output_o\);

\DEST[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DEST[6]~output_o\);

\DEST[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DEST[7]~output_o\);

\DEST[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~16_combout\,
	devoe => ww_devoe,
	o => \DEST[8]~output_o\);

\PC[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \INSTR|PC|DOUT\(0),
	devoe => ww_devoe,
	o => \PC[0]~output_o\);

\PC[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \INSTR|PC|DOUT\(1),
	devoe => ww_devoe,
	o => \PC[1]~output_o\);

\PC[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \INSTR|PC|DOUT\(2),
	devoe => ww_devoe,
	o => \PC[2]~output_o\);

\PC[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \INSTR|PC|DOUT\(3),
	devoe => ww_devoe,
	o => \PC[3]~output_o\);

\PC[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \INSTR|PC|DOUT\(4),
	devoe => ww_devoe,
	o => \PC[4]~output_o\);

\PC[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \INSTR|PC|DOUT\(5),
	devoe => ww_devoe,
	o => \PC[5]~output_o\);

\PC[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \INSTR|PC|DOUT\(6),
	devoe => ww_devoe,
	o => \PC[6]~output_o\);

\PC[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \INSTR|PC|DOUT\(7),
	devoe => ww_devoe,
	o => \PC[7]~output_o\);

\PC[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \INSTR|PC|DOUT\(8),
	devoe => ww_devoe,
	o => \PC[8]~output_o\);

\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

\ROM|memROM~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~13_combout\ = (!\INSTR|PC|DOUT\(0) & (((!\INSTR|PC|DOUT\(2) & !\INSTR|PC|DOUT\(3))))) # (\INSTR|PC|DOUT\(0) & (!\INSTR|PC|DOUT\(1) & (\INSTR|PC|DOUT\(2) & \INSTR|PC|DOUT\(3))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000100101000000000010010100000000001001010000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR|PC|ALT_INV_DOUT\(0),
	datab => \INSTR|PC|ALT_INV_DOUT\(1),
	datac => \INSTR|PC|ALT_INV_DOUT\(2),
	datad => \INSTR|PC|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~13_combout\);

\ROM|memROM~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~14_combout\ = ((!\ROM|memROM~1_combout\) # (!\ROM|memROM~13_combout\)) # (\INSTR|PC|DOUT\(8))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110111111101111111011111110111111101111111011111110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR|PC|ALT_INV_DOUT\(8),
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \ROM|ALT_INV_memROM~13_combout\,
	combout => \ROM|memROM~14_combout\);

\INSTR|SOMA_CONST|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \INSTR|SOMA_CONST|Add0~5_sumout\ = SUM(( \INSTR|PC|DOUT\(0) ) + ( VCC ) + ( !VCC ))
-- \INSTR|SOMA_CONST|Add0~6\ = CARRY(( \INSTR|PC|DOUT\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \INSTR|PC|ALT_INV_DOUT\(0),
	cin => GND,
	sumout => \INSTR|SOMA_CONST|Add0~5_sumout\,
	cout => \INSTR|SOMA_CONST|Add0~6\);

\INSTR|SOMA_CONST|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \INSTR|SOMA_CONST|Add0~9_sumout\ = SUM(( \INSTR|PC|DOUT\(1) ) + ( GND ) + ( \INSTR|SOMA_CONST|Add0~6\ ))
-- \INSTR|SOMA_CONST|Add0~10\ = CARRY(( \INSTR|PC|DOUT\(1) ) + ( GND ) + ( \INSTR|SOMA_CONST|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \INSTR|PC|ALT_INV_DOUT\(1),
	cin => \INSTR|SOMA_CONST|Add0~6\,
	sumout => \INSTR|SOMA_CONST|Add0~9_sumout\,
	cout => \INSTR|SOMA_CONST|Add0~10\);

\INSTR|SOMA_CONST|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \INSTR|SOMA_CONST|Add0~13_sumout\ = SUM(( \INSTR|PC|DOUT\(2) ) + ( GND ) + ( \INSTR|SOMA_CONST|Add0~10\ ))
-- \INSTR|SOMA_CONST|Add0~14\ = CARRY(( \INSTR|PC|DOUT\(2) ) + ( GND ) + ( \INSTR|SOMA_CONST|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \INSTR|PC|ALT_INV_DOUT\(2),
	cin => \INSTR|SOMA_CONST|Add0~10\,
	sumout => \INSTR|SOMA_CONST|Add0~13_sumout\,
	cout => \INSTR|SOMA_CONST|Add0~14\);

\INSTR|SOMA_CONST|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \INSTR|SOMA_CONST|Add0~17_sumout\ = SUM(( \INSTR|PC|DOUT\(3) ) + ( GND ) + ( \INSTR|SOMA_CONST|Add0~14\ ))
-- \INSTR|SOMA_CONST|Add0~18\ = CARRY(( \INSTR|PC|DOUT\(3) ) + ( GND ) + ( \INSTR|SOMA_CONST|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \INSTR|PC|ALT_INV_DOUT\(3),
	cin => \INSTR|SOMA_CONST|Add0~14\,
	sumout => \INSTR|SOMA_CONST|Add0~17_sumout\,
	cout => \INSTR|SOMA_CONST|Add0~18\);

\ROM|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~5_combout\ = (!\INSTR|PC|DOUT\(0) & (!\INSTR|PC|DOUT\(1) & (!\INSTR|PC|DOUT\(2) & !\INSTR|PC|DOUT\(3)))) # (\INSTR|PC|DOUT\(0) & (\INSTR|PC|DOUT\(1) & ((\INSTR|PC|DOUT\(3)) # (\INSTR|PC|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000100010001100000010001000110000001000100011000000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR|PC|ALT_INV_DOUT\(0),
	datab => \INSTR|PC|ALT_INV_DOUT\(1),
	datac => \INSTR|PC|ALT_INV_DOUT\(2),
	datad => \INSTR|PC|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~5_combout\);

\ROM|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~6_combout\ = (!\INSTR|PC|DOUT\(3) & (!\INSTR|PC|DOUT\(2) & (!\INSTR|PC|DOUT\(0) $ (!\INSTR|PC|DOUT\(1))))) # (\INSTR|PC|DOUT\(3) & ((!\INSTR|PC|DOUT\(0) & (!\INSTR|PC|DOUT\(1))) # (\INSTR|PC|DOUT\(0) & ((\INSTR|PC|DOUT\(2))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000010001101011000001000110101100000100011010110000010001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR|PC|ALT_INV_DOUT\(0),
	datab => \INSTR|PC|ALT_INV_DOUT\(1),
	datac => \INSTR|PC|ALT_INV_DOUT\(2),
	datad => \INSTR|PC|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~6_combout\);

\DECODER|sinais_controle~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER|sinais_controle~1_combout\ = ( \ROM|memROM~5_combout\ & ( !\ROM|memROM~6_combout\ & ( (!\INSTR|PC|DOUT\(8) & (\ROM|memROM~0_combout\ & (\ROM|memROM~1_combout\ & !\ROM|memROM~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000100000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR|PC|ALT_INV_DOUT\(8),
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \ROM|ALT_INV_memROM~1_combout\,
	datad => \ROM|ALT_INV_memROM~3_combout\,
	datae => \ROM|ALT_INV_memROM~5_combout\,
	dataf => \ROM|ALT_INV_memROM~6_combout\,
	combout => \DECODER|sinais_controle~1_combout\);

\INSTR|END_RETORNO|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \INSTR|SOMA_CONST|Add0~17_sumout\,
	ena => \DECODER|sinais_controle~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INSTR|END_RETORNO|DOUT\(3));

\INSTR|MUX2|MUX_OUT[3]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \INSTR|MUX2|MUX_OUT[3]~4_combout\ = ( \INSTR|SOMA_CONST|Add0~17_sumout\ & ( (!\LOG_DESVIO|DESV_JUMP~1_combout\ & ((!\ROM|memROM~14_combout\) # ((!\INSTR|PC|DOUT[8]~0_combout\)))) # (\LOG_DESVIO|DESV_JUMP~1_combout\ & (((\INSTR|END_RETORNO|DOUT\(3))))) ) ) 
-- # ( !\INSTR|SOMA_CONST|Add0~17_sumout\ & ( (!\LOG_DESVIO|DESV_JUMP~1_combout\ & (!\ROM|memROM~14_combout\ & (\INSTR|PC|DOUT[8]~0_combout\))) # (\LOG_DESVIO|DESV_JUMP~1_combout\ & (((\INSTR|END_RETORNO|DOUT\(3))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001011101101010001111110100001000010111011010100011111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LOG_DESVIO|ALT_INV_DESV_JUMP~1_combout\,
	datab => \ROM|ALT_INV_memROM~14_combout\,
	datac => \INSTR|PC|ALT_INV_DOUT[8]~0_combout\,
	datad => \INSTR|END_RETORNO|ALT_INV_DOUT\(3),
	datae => \INSTR|SOMA_CONST|ALT_INV_Add0~17_sumout\,
	combout => \INSTR|MUX2|MUX_OUT[3]~4_combout\);

\INSTR|PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \INSTR|MUX2|MUX_OUT[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INSTR|PC|DOUT\(3));

\ROM|memROM~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~11_combout\ = (!\INSTR|PC|DOUT\(0) & (!\INSTR|PC|DOUT\(2) & (!\INSTR|PC|DOUT\(1) $ (\INSTR|PC|DOUT\(3))))) # (\INSTR|PC|DOUT\(0) & (!\INSTR|PC|DOUT\(1) & ((!\INSTR|PC|DOUT\(3)) # (\INSTR|PC|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100010000100100110001000010010011000100001001001100010000100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR|PC|ALT_INV_DOUT\(0),
	datab => \INSTR|PC|ALT_INV_DOUT\(1),
	datac => \INSTR|PC|ALT_INV_DOUT\(2),
	datad => \INSTR|PC|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~11_combout\);

\ROM|memROM~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~12_combout\ = ((!\ROM|memROM~1_combout\) # (!\ROM|memROM~11_combout\)) # (\INSTR|PC|DOUT\(8))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110111111101111111011111110111111101111111011111110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR|PC|ALT_INV_DOUT\(8),
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \ROM|ALT_INV_memROM~11_combout\,
	combout => \ROM|memROM~12_combout\);

\INSTR|END_RETORNO|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \INSTR|SOMA_CONST|Add0~13_sumout\,
	ena => \DECODER|sinais_controle~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INSTR|END_RETORNO|DOUT\(2));

\INSTR|MUX2|MUX_OUT[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \INSTR|MUX2|MUX_OUT[2]~3_combout\ = ( \INSTR|SOMA_CONST|Add0~13_sumout\ & ( (!\LOG_DESVIO|DESV_JUMP~1_combout\ & ((!\ROM|memROM~12_combout\) # ((!\INSTR|PC|DOUT[8]~0_combout\)))) # (\LOG_DESVIO|DESV_JUMP~1_combout\ & (((\INSTR|END_RETORNO|DOUT\(2))))) ) ) 
-- # ( !\INSTR|SOMA_CONST|Add0~13_sumout\ & ( (!\LOG_DESVIO|DESV_JUMP~1_combout\ & (!\ROM|memROM~12_combout\ & (\INSTR|PC|DOUT[8]~0_combout\))) # (\LOG_DESVIO|DESV_JUMP~1_combout\ & (((\INSTR|END_RETORNO|DOUT\(2))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001011101101010001111110100001000010111011010100011111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LOG_DESVIO|ALT_INV_DESV_JUMP~1_combout\,
	datab => \ROM|ALT_INV_memROM~12_combout\,
	datac => \INSTR|PC|ALT_INV_DOUT[8]~0_combout\,
	datad => \INSTR|END_RETORNO|ALT_INV_DOUT\(2),
	datae => \INSTR|SOMA_CONST|ALT_INV_Add0~13_sumout\,
	combout => \INSTR|MUX2|MUX_OUT[2]~3_combout\);

\INSTR|PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \INSTR|MUX2|MUX_OUT[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INSTR|PC|DOUT\(2));

\ROM|memROM~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~9_combout\ = (!\INSTR|PC|DOUT\(0) & (!\INSTR|PC|DOUT\(1) & ((!\INSTR|PC|DOUT\(2)) # (\INSTR|PC|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010001000100000001000100010000000100010001000000010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR|PC|ALT_INV_DOUT\(0),
	datab => \INSTR|PC|ALT_INV_DOUT\(1),
	datac => \INSTR|PC|ALT_INV_DOUT\(2),
	datad => \INSTR|PC|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~9_combout\);

\ROM|memROM~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~10_combout\ = ((!\ROM|memROM~1_combout\) # (!\ROM|memROM~9_combout\)) # (\INSTR|PC|DOUT\(8))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110111111101111111011111110111111101111111011111110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR|PC|ALT_INV_DOUT\(8),
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \ROM|ALT_INV_memROM~9_combout\,
	combout => \ROM|memROM~10_combout\);

\INSTR|END_RETORNO|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \INSTR|SOMA_CONST|Add0~9_sumout\,
	ena => \DECODER|sinais_controle~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INSTR|END_RETORNO|DOUT\(1));

\INSTR|MUX2|MUX_OUT[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \INSTR|MUX2|MUX_OUT[1]~2_combout\ = ( \INSTR|SOMA_CONST|Add0~9_sumout\ & ( (!\LOG_DESVIO|DESV_JUMP~1_combout\ & ((!\ROM|memROM~10_combout\) # ((!\INSTR|PC|DOUT[8]~0_combout\)))) # (\LOG_DESVIO|DESV_JUMP~1_combout\ & (((\INSTR|END_RETORNO|DOUT\(1))))) ) ) 
-- # ( !\INSTR|SOMA_CONST|Add0~9_sumout\ & ( (!\LOG_DESVIO|DESV_JUMP~1_combout\ & (!\ROM|memROM~10_combout\ & (\INSTR|PC|DOUT[8]~0_combout\))) # (\LOG_DESVIO|DESV_JUMP~1_combout\ & (((\INSTR|END_RETORNO|DOUT\(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001011101101010001111110100001000010111011010100011111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LOG_DESVIO|ALT_INV_DESV_JUMP~1_combout\,
	datab => \ROM|ALT_INV_memROM~10_combout\,
	datac => \INSTR|PC|ALT_INV_DOUT[8]~0_combout\,
	datad => \INSTR|END_RETORNO|ALT_INV_DOUT\(1),
	datae => \INSTR|SOMA_CONST|ALT_INV_Add0~9_sumout\,
	combout => \INSTR|MUX2|MUX_OUT[1]~2_combout\);

\INSTR|PC|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \INSTR|MUX2|MUX_OUT[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INSTR|PC|DOUT\(1));

\ROM|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~3_combout\ = (!\INSTR|PC|DOUT\(3) & (!\INSTR|PC|DOUT\(0) $ ((!\INSTR|PC|DOUT\(1))))) # (\INSTR|PC|DOUT\(3) & ((!\INSTR|PC|DOUT\(2) & (!\INSTR|PC|DOUT\(0))) # (\INSTR|PC|DOUT\(2) & ((!\INSTR|PC|DOUT\(1))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011010101100011001101010110001100110101011000110011010101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR|PC|ALT_INV_DOUT\(0),
	datab => \INSTR|PC|ALT_INV_DOUT\(1),
	datac => \INSTR|PC|ALT_INV_DOUT\(2),
	datad => \INSTR|PC|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~3_combout\);

\INSTR|SOMA_CONST|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \INSTR|SOMA_CONST|Add0~33_sumout\ = SUM(( \INSTR|PC|DOUT\(4) ) + ( GND ) + ( \INSTR|SOMA_CONST|Add0~18\ ))
-- \INSTR|SOMA_CONST|Add0~34\ = CARRY(( \INSTR|PC|DOUT\(4) ) + ( GND ) + ( \INSTR|SOMA_CONST|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \INSTR|PC|ALT_INV_DOUT\(4),
	cin => \INSTR|SOMA_CONST|Add0~18\,
	sumout => \INSTR|SOMA_CONST|Add0~33_sumout\,
	cout => \INSTR|SOMA_CONST|Add0~34\);

\INSTR|END_RETORNO|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \INSTR|SOMA_CONST|Add0~33_sumout\,
	ena => \DECODER|sinais_controle~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INSTR|END_RETORNO|DOUT\(4));

\INSTR|MUX2|MUX_OUT[4]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \INSTR|MUX2|MUX_OUT[4]~8_combout\ = ( \INSTR|END_RETORNO|DOUT\(4) & ( (!\LOG_DESVIO|Equal5~0_combout\ & (((\INSTR|SOMA_CONST|Add0~33_sumout\)))) # (\LOG_DESVIO|Equal5~0_combout\ & (!\LOG_DESVIO|DESV_JUMP~0_combout\ & ((\INSTR|SOMA_CONST|Add0~33_sumout\) # 
-- (\LOG_DESVIO|DESV_JUMP~1_combout\)))) ) ) # ( !\INSTR|END_RETORNO|DOUT\(4) & ( (\INSTR|SOMA_CONST|Add0~33_sumout\ & ((!\LOG_DESVIO|Equal5~0_combout\) # ((!\LOG_DESVIO|DESV_JUMP~1_combout\ & !\LOG_DESVIO|DESV_JUMP~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011101100000100001111110000000000111011000001000011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LOG_DESVIO|ALT_INV_DESV_JUMP~1_combout\,
	datab => \LOG_DESVIO|ALT_INV_Equal5~0_combout\,
	datac => \LOG_DESVIO|ALT_INV_DESV_JUMP~0_combout\,
	datad => \INSTR|SOMA_CONST|ALT_INV_Add0~33_sumout\,
	datae => \INSTR|END_RETORNO|ALT_INV_DOUT\(4),
	combout => \INSTR|MUX2|MUX_OUT[4]~8_combout\);

\INSTR|PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \INSTR|MUX2|MUX_OUT[4]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INSTR|PC|DOUT\(4));

\INSTR|SOMA_CONST|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \INSTR|SOMA_CONST|Add0~29_sumout\ = SUM(( \INSTR|PC|DOUT\(5) ) + ( GND ) + ( \INSTR|SOMA_CONST|Add0~34\ ))
-- \INSTR|SOMA_CONST|Add0~30\ = CARRY(( \INSTR|PC|DOUT\(5) ) + ( GND ) + ( \INSTR|SOMA_CONST|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \INSTR|PC|ALT_INV_DOUT\(5),
	cin => \INSTR|SOMA_CONST|Add0~34\,
	sumout => \INSTR|SOMA_CONST|Add0~29_sumout\,
	cout => \INSTR|SOMA_CONST|Add0~30\);

\INSTR|END_RETORNO|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \INSTR|SOMA_CONST|Add0~29_sumout\,
	ena => \DECODER|sinais_controle~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INSTR|END_RETORNO|DOUT\(5));

\INSTR|MUX2|MUX_OUT[5]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \INSTR|MUX2|MUX_OUT[5]~7_combout\ = ( \INSTR|END_RETORNO|DOUT\(5) & ( (!\LOG_DESVIO|Equal5~0_combout\ & (((\INSTR|SOMA_CONST|Add0~29_sumout\)))) # (\LOG_DESVIO|Equal5~0_combout\ & (!\LOG_DESVIO|DESV_JUMP~0_combout\ & ((\INSTR|SOMA_CONST|Add0~29_sumout\) # 
-- (\LOG_DESVIO|DESV_JUMP~1_combout\)))) ) ) # ( !\INSTR|END_RETORNO|DOUT\(5) & ( (\INSTR|SOMA_CONST|Add0~29_sumout\ & ((!\LOG_DESVIO|Equal5~0_combout\) # ((!\LOG_DESVIO|DESV_JUMP~1_combout\ & !\LOG_DESVIO|DESV_JUMP~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011101100000100001111110000000000111011000001000011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LOG_DESVIO|ALT_INV_DESV_JUMP~1_combout\,
	datab => \LOG_DESVIO|ALT_INV_Equal5~0_combout\,
	datac => \LOG_DESVIO|ALT_INV_DESV_JUMP~0_combout\,
	datad => \INSTR|SOMA_CONST|ALT_INV_Add0~29_sumout\,
	datae => \INSTR|END_RETORNO|ALT_INV_DOUT\(5),
	combout => \INSTR|MUX2|MUX_OUT[5]~7_combout\);

\INSTR|PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \INSTR|MUX2|MUX_OUT[5]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INSTR|PC|DOUT\(5));

\INSTR|SOMA_CONST|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \INSTR|SOMA_CONST|Add0~25_sumout\ = SUM(( \INSTR|PC|DOUT\(6) ) + ( GND ) + ( \INSTR|SOMA_CONST|Add0~30\ ))
-- \INSTR|SOMA_CONST|Add0~26\ = CARRY(( \INSTR|PC|DOUT\(6) ) + ( GND ) + ( \INSTR|SOMA_CONST|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \INSTR|PC|ALT_INV_DOUT\(6),
	cin => \INSTR|SOMA_CONST|Add0~30\,
	sumout => \INSTR|SOMA_CONST|Add0~25_sumout\,
	cout => \INSTR|SOMA_CONST|Add0~26\);

\INSTR|END_RETORNO|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \INSTR|SOMA_CONST|Add0~25_sumout\,
	ena => \DECODER|sinais_controle~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INSTR|END_RETORNO|DOUT\(6));

\INSTR|MUX2|MUX_OUT[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \INSTR|MUX2|MUX_OUT[6]~6_combout\ = ( \INSTR|END_RETORNO|DOUT\(6) & ( (!\LOG_DESVIO|Equal5~0_combout\ & (((\INSTR|SOMA_CONST|Add0~25_sumout\)))) # (\LOG_DESVIO|Equal5~0_combout\ & (!\LOG_DESVIO|DESV_JUMP~0_combout\ & ((\INSTR|SOMA_CONST|Add0~25_sumout\) # 
-- (\LOG_DESVIO|DESV_JUMP~1_combout\)))) ) ) # ( !\INSTR|END_RETORNO|DOUT\(6) & ( (\INSTR|SOMA_CONST|Add0~25_sumout\ & ((!\LOG_DESVIO|Equal5~0_combout\) # ((!\LOG_DESVIO|DESV_JUMP~1_combout\ & !\LOG_DESVIO|DESV_JUMP~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011101100000100001111110000000000111011000001000011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LOG_DESVIO|ALT_INV_DESV_JUMP~1_combout\,
	datab => \LOG_DESVIO|ALT_INV_Equal5~0_combout\,
	datac => \LOG_DESVIO|ALT_INV_DESV_JUMP~0_combout\,
	datad => \INSTR|SOMA_CONST|ALT_INV_Add0~25_sumout\,
	datae => \INSTR|END_RETORNO|ALT_INV_DOUT\(6),
	combout => \INSTR|MUX2|MUX_OUT[6]~6_combout\);

\INSTR|PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \INSTR|MUX2|MUX_OUT[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INSTR|PC|DOUT\(6));

\ROM|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~4_combout\ = ( !\INSTR|PC|DOUT\(4) & ( (!\INSTR|PC|DOUT\(8) & (!\INSTR|PC|DOUT\(7) & (!\INSTR|PC|DOUT\(6) & !\INSTR|PC|DOUT\(5)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR|PC|ALT_INV_DOUT\(8),
	datab => \INSTR|PC|ALT_INV_DOUT\(7),
	datac => \INSTR|PC|ALT_INV_DOUT\(6),
	datad => \INSTR|PC|ALT_INV_DOUT\(5),
	datae => \INSTR|PC|ALT_INV_DOUT\(4),
	combout => \ROM|memROM~4_combout\);

\LOG_DESVIO|Equal5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LOG_DESVIO|Equal5~0_combout\ = ( \ROM|memROM~6_combout\ & ( (\ROM|memROM~4_combout\ & ((!\ROM|memROM~3_combout\ & (\ROM|memROM~2_combout\ & \ROM|memROM~5_combout\)) # (\ROM|memROM~3_combout\ & ((!\ROM|memROM~5_combout\))))) ) ) # ( 
-- !\ROM|memROM~6_combout\ & ( (!\ROM|memROM~2_combout\ & (!\ROM|memROM~3_combout\ & (\ROM|memROM~4_combout\ & \ROM|memROM~5_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000110000010000000000000010000000001100000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ROM|ALT_INV_memROM~3_combout\,
	datac => \ROM|ALT_INV_memROM~4_combout\,
	datad => \ROM|ALT_INV_memROM~5_combout\,
	datae => \ROM|ALT_INV_memROM~6_combout\,
	combout => \LOG_DESVIO|Equal5~0_combout\);

\INSTR|SOMA_CONST|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \INSTR|SOMA_CONST|Add0~21_sumout\ = SUM(( \INSTR|PC|DOUT\(7) ) + ( GND ) + ( \INSTR|SOMA_CONST|Add0~26\ ))
-- \INSTR|SOMA_CONST|Add0~22\ = CARRY(( \INSTR|PC|DOUT\(7) ) + ( GND ) + ( \INSTR|SOMA_CONST|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \INSTR|PC|ALT_INV_DOUT\(7),
	cin => \INSTR|SOMA_CONST|Add0~26\,
	sumout => \INSTR|SOMA_CONST|Add0~21_sumout\,
	cout => \INSTR|SOMA_CONST|Add0~22\);

\INSTR|END_RETORNO|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \INSTR|SOMA_CONST|Add0~21_sumout\,
	ena => \DECODER|sinais_controle~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INSTR|END_RETORNO|DOUT\(7));

\INSTR|MUX2|MUX_OUT[7]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \INSTR|MUX2|MUX_OUT[7]~5_combout\ = ( \LOG_DESVIO|DESV_JUMP~0_combout\ & ( (!\LOG_DESVIO|Equal5~0_combout\ & \INSTR|SOMA_CONST|Add0~21_sumout\) ) ) # ( !\LOG_DESVIO|DESV_JUMP~0_combout\ & ( (!\LOG_DESVIO|DESV_JUMP~1_combout\ & 
-- (((\INSTR|SOMA_CONST|Add0~21_sumout\)))) # (\LOG_DESVIO|DESV_JUMP~1_combout\ & ((!\LOG_DESVIO|Equal5~0_combout\ & (\INSTR|SOMA_CONST|Add0~21_sumout\)) # (\LOG_DESVIO|Equal5~0_combout\ & ((\INSTR|END_RETORNO|DOUT\(7)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111000011111000011000000110000001110000111110000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LOG_DESVIO|ALT_INV_DESV_JUMP~1_combout\,
	datab => \LOG_DESVIO|ALT_INV_Equal5~0_combout\,
	datac => \INSTR|SOMA_CONST|ALT_INV_Add0~21_sumout\,
	datad => \INSTR|END_RETORNO|ALT_INV_DOUT\(7),
	datae => \LOG_DESVIO|ALT_INV_DESV_JUMP~0_combout\,
	combout => \INSTR|MUX2|MUX_OUT[7]~5_combout\);

\INSTR|PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \INSTR|MUX2|MUX_OUT[7]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INSTR|PC|DOUT\(7));

\ROM|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~1_combout\ = (!\INSTR|PC|DOUT\(7) & (!\INSTR|PC|DOUT\(6) & (!\INSTR|PC|DOUT\(5) & !\INSTR|PC|DOUT\(4))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR|PC|ALT_INV_DOUT\(7),
	datab => \INSTR|PC|ALT_INV_DOUT\(6),
	datac => \INSTR|PC|ALT_INV_DOUT\(5),
	datad => \INSTR|PC|ALT_INV_DOUT\(4),
	combout => \ROM|memROM~1_combout\);

\ROM|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~2_combout\ = ((!\ROM|memROM~0_combout\) # (!\ROM|memROM~1_combout\)) # (\INSTR|PC|DOUT\(8))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110111111101111111011111110111111101111111011111110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR|PC|ALT_INV_DOUT\(8),
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \ROM|ALT_INV_memROM~1_combout\,
	combout => \ROM|memROM~2_combout\);

\MUX1|saida_MUX[7]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1|saida_MUX[7]~1_combout\ = (!\ROM|memROM~3_combout\) # ((!\ROM|memROM~4_combout\) # ((\ROM|memROM~6_combout\) # (\ROM|memROM~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111111111111111011111111111111101111111111111110111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~3_combout\,
	datab => \ROM|ALT_INV_memROM~4_combout\,
	datac => \ROM|ALT_INV_memROM~5_combout\,
	datad => \ROM|ALT_INV_memROM~6_combout\,
	combout => \MUX1|saida_MUX[7]~1_combout\);

\MUX1|saida_MUX[7]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1|saida_MUX[7]~0_combout\ = ( \ROM|memROM~5_combout\ & ( \ROM|memROM~6_combout\ ) ) # ( !\ROM|memROM~5_combout\ & ( \ROM|memROM~6_combout\ ) ) # ( \ROM|memROM~5_combout\ & ( !\ROM|memROM~6_combout\ ) ) # ( !\ROM|memROM~5_combout\ & ( 
-- !\ROM|memROM~6_combout\ & ( (((!\ROM|memROM~1_combout\) # (!\ROM|memROM~3_combout\)) # (\ROM|memROM~0_combout\)) # (\INSTR|PC|DOUT\(8)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR|PC|ALT_INV_DOUT\(8),
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \ROM|ALT_INV_memROM~1_combout\,
	datad => \ROM|ALT_INV_memROM~3_combout\,
	datae => \ROM|ALT_INV_memROM~5_combout\,
	dataf => \ROM|ALT_INV_memROM~6_combout\,
	combout => \MUX1|saida_MUX[7]~0_combout\);

\DECODER|OP_ULA[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER|OP_ULA[1]~0_combout\ = ( \ROM|memROM~6_combout\ & ( (!\ROM|memROM~2_combout\ & !\ROM|memROM~4_combout\) ) ) # ( !\ROM|memROM~6_combout\ & ( (!\ROM|memROM~4_combout\ & (!\ROM|memROM~2_combout\)) # (\ROM|memROM~4_combout\ & (!\ROM|memROM~5_combout\ 
-- & (!\ROM|memROM~2_combout\ $ (\ROM|memROM~3_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010100110100000101000001010000010101001101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ROM|ALT_INV_memROM~3_combout\,
	datac => \ROM|ALT_INV_memROM~4_combout\,
	datad => \ROM|ALT_INV_memROM~5_combout\,
	datae => \ROM|ALT_INV_memROM~6_combout\,
	combout => \DECODER|OP_ULA[1]~0_combout\);

\ULA1|saida[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[4]~4_combout\ = (!\DECODER|OP_ULA[1]~0_combout\ & (((\ULA1|Add1~17_sumout\)))) # (\DECODER|OP_ULA[1]~0_combout\ & (\MUX1|saida_MUX[7]~0_combout\ & (\MDADOS|ram~154_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111001101000000011100110100000001110011010000000111001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX1|ALT_INV_saida_MUX[7]~0_combout\,
	datab => \DECODER|ALT_INV_OP_ULA[1]~0_combout\,
	datac => \MDADOS|ALT_INV_ram~154_combout\,
	datad => \ULA1|ALT_INV_Add1~17_sumout\,
	combout => \ULA1|saida[4]~4_combout\);

\DECODER|HAB_A~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER|HAB_A~0_combout\ = ( \ROM|memROM~6_combout\ & ( (!\ROM|memROM~4_combout\ & (!\ROM|memROM~2_combout\)) # (\ROM|memROM~4_combout\ & (((!\ROM|memROM~3_combout\ & !\ROM|memROM~5_combout\)))) ) ) # ( !\ROM|memROM~6_combout\ & ( 
-- (!\ROM|memROM~4_combout\ & (!\ROM|memROM~2_combout\)) # (\ROM|memROM~4_combout\ & (!\ROM|memROM~5_combout\ & (!\ROM|memROM~2_combout\ $ (\ROM|memROM~3_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010100110100000101011001010000010101001101000001010110010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ROM|ALT_INV_memROM~3_combout\,
	datac => \ROM|ALT_INV_memROM~4_combout\,
	datad => \ROM|ALT_INV_memROM~5_combout\,
	datae => \ROM|ALT_INV_memROM~6_combout\,
	combout => \DECODER|HAB_A~0_combout\);

\REG_A|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => VCC,
	asdata => \ULA1|saida[4]~4_combout\,
	sload => VCC,
	ena => \DECODER|HAB_A~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_A|DOUT\(4));

\ROM|memROM~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~15_combout\ = (\INSTR|PC|DOUT\(1) & ((!\INSTR|PC|DOUT\(2) & (\INSTR|PC|DOUT\(0) & \INSTR|PC|DOUT\(3))) # (\INSTR|PC|DOUT\(2) & ((!\INSTR|PC|DOUT\(3))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100010000000000110001000000000011000100000000001100010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR|PC|ALT_INV_DOUT\(0),
	datab => \INSTR|PC|ALT_INV_DOUT\(1),
	datac => \INSTR|PC|ALT_INV_DOUT\(2),
	datad => \INSTR|PC|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~15_combout\);

\MDADOS|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MDADOS|process_0~0_combout\ = ( \ROM|memROM~15_combout\ & ( (\ROM|memROM~3_combout\ & (\ROM|memROM~4_combout\ & (!\ROM|memROM~5_combout\ & !\ROM|memROM~6_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100000000000000000000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~3_combout\,
	datab => \ROM|ALT_INV_memROM~4_combout\,
	datac => \ROM|ALT_INV_memROM~5_combout\,
	datad => \ROM|ALT_INV_memROM~6_combout\,
	datae => \ROM|ALT_INV_memROM~15_combout\,
	combout => \MDADOS|process_0~0_combout\);

\MDADOS|ram~161\ : cyclonev_lcell_comb
-- Equation(s):
-- \MDADOS|ram~161_combout\ = (!\INSTR|PC|DOUT\(8) & (\ROM|memROM~1_combout\ & ((\ROM|memROM~11_combout\) # (\ROM|memROM~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000100010000000100010001000000010001000100000001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR|PC|ALT_INV_DOUT\(8),
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \ROM|ALT_INV_memROM~9_combout\,
	datad => \ROM|ALT_INV_memROM~11_combout\,
	combout => \MDADOS|ram~161_combout\);

\MDADOS|ram~162\ : cyclonev_lcell_comb
-- Equation(s):
-- \MDADOS|ram~162_combout\ = ( !\MDADOS|ram~161_combout\ & ( (!\ROM|memROM~2_combout\ & (!\ROM|memROM~8_combout\ & (\ROM|memROM~14_combout\ & \MDADOS|process_0~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000000000000000000010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ROM|ALT_INV_memROM~8_combout\,
	datac => \ROM|ALT_INV_memROM~14_combout\,
	datad => \MDADOS|ALT_INV_process_0~0_combout\,
	datae => \MDADOS|ALT_INV_ram~161_combout\,
	combout => \MDADOS|ram~162_combout\);

\MDADOS|ram~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(4),
	ena => \MDADOS|ram~162_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDADOS|ram~21_q\);

\MDADOS|ram~153\ : cyclonev_lcell_comb
-- Equation(s):
-- \MDADOS|ram~153_combout\ = ( !\ROM|memROM~8_combout\ & ( \ROM|memROM~10_combout\ & ( \MDADOS|ram~21_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \MDADOS|ALT_INV_ram~21_q\,
	datae => \ROM|ALT_INV_memROM~8_combout\,
	dataf => \ROM|ALT_INV_memROM~10_combout\,
	combout => \MDADOS|ram~153_combout\);

\MDADOS|ram~154\ : cyclonev_lcell_comb
-- Equation(s):
-- \MDADOS|ram~154_combout\ = ( \ROM|memROM~12_combout\ & ( \ROM|memROM~14_combout\ & ( \MDADOS|ram~153_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \MDADOS|ALT_INV_ram~153_combout\,
	datae => \ROM|ALT_INV_memROM~12_combout\,
	dataf => \ROM|ALT_INV_memROM~14_combout\,
	combout => \MDADOS|ram~154_combout\);

\ROM|memROM~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~19_combout\ = (!\ROM|memROM~1_combout\) # (!\ROM|memROM~11_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111011101110111011101110111011101110111011101110111011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \ROM|ALT_INV_memROM~11_combout\,
	combout => \ROM|memROM~19_combout\);

\ROM|memROM~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~18_combout\ = (!\ROM|memROM~1_combout\) # (!\ROM|memROM~9_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111011101110111011101110111011101110111011101110111011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \ROM|ALT_INV_memROM~9_combout\,
	combout => \ROM|memROM~18_combout\);

\MDADOS|ram~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(0),
	ena => \MDADOS|ram~162_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDADOS|ram~17_q\);

\MDADOS|ram~145\ : cyclonev_lcell_comb
-- Equation(s):
-- \MDADOS|ram~145_combout\ = ( !\ROM|memROM~8_combout\ & ( \ROM|memROM~10_combout\ & ( \MDADOS|ram~17_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \MDADOS|ALT_INV_ram~17_q\,
	datae => \ROM|ALT_INV_memROM~8_combout\,
	dataf => \ROM|ALT_INV_memROM~10_combout\,
	combout => \MDADOS|ram~145_combout\);

\MDADOS|ram~146\ : cyclonev_lcell_comb
-- Equation(s):
-- \MDADOS|ram~146_combout\ = ( \ROM|memROM~12_combout\ & ( \ROM|memROM~14_combout\ & ( \MDADOS|ram~145_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \MDADOS|ALT_INV_ram~145_combout\,
	datae => \ROM|ALT_INV_memROM~12_combout\,
	dataf => \ROM|ALT_INV_memROM~14_combout\,
	combout => \MDADOS|ram~146_combout\);

\ROM|memROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~7_combout\ = (!\INSTR|PC|DOUT\(1) & ((!\INSTR|PC|DOUT\(3) & (\INSTR|PC|DOUT\(0))) # (\INSTR|PC|DOUT\(3) & ((\INSTR|PC|DOUT\(2)))))) # (\INSTR|PC|DOUT\(1) & (!\INSTR|PC|DOUT\(0) & (!\INSTR|PC|DOUT\(2) & !\INSTR|PC|DOUT\(3))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110010000001100011001000000110001100100000011000110010000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR|PC|ALT_INV_DOUT\(0),
	datab => \INSTR|PC|ALT_INV_DOUT\(1),
	datac => \INSTR|PC|ALT_INV_DOUT\(2),
	datad => \INSTR|PC|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~7_combout\);

\ROM|memROM~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~17_combout\ = (\ROM|memROM~1_combout\ & \ROM|memROM~7_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \ROM|ALT_INV_memROM~7_combout\,
	combout => \ROM|memROM~17_combout\);

\ULA1|Add1~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add1~34_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \ULA1|Add1~34_cout\);

\ULA1|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add1~1_sumout\ = SUM(( (!\MUX1|saida_MUX[7]~0_combout\ & (((!\ROM|memROM~17_combout\)) # (\INSTR|PC|DOUT\(8)))) # (\MUX1|saida_MUX[7]~0_combout\ & (((!\MDADOS|ram~146_combout\)))) ) + ( \REG_A|DOUT\(0) ) + ( \ULA1|Add1~34_cout\ ))
-- \ULA1|Add1~2\ = CARRY(( (!\MUX1|saida_MUX[7]~0_combout\ & (((!\ROM|memROM~17_combout\)) # (\INSTR|PC|DOUT\(8)))) # (\MUX1|saida_MUX[7]~0_combout\ & (((!\MDADOS|ram~146_combout\)))) ) + ( \REG_A|DOUT\(0) ) + ( \ULA1|Add1~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111101001110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX1|ALT_INV_saida_MUX[7]~0_combout\,
	datab => \INSTR|PC|ALT_INV_DOUT\(8),
	datac => \MDADOS|ALT_INV_ram~146_combout\,
	datad => \ROM|ALT_INV_memROM~17_combout\,
	dataf => \REG_A|ALT_INV_DOUT\(0),
	cin => \ULA1|Add1~34_cout\,
	sumout => \ULA1|Add1~1_sumout\,
	cout => \ULA1|Add1~2\);

\ULA1|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add1~5_sumout\ = SUM(( (!\MUX1|saida_MUX[7]~0_combout\ & (((\ROM|memROM~18_combout\)) # (\INSTR|PC|DOUT\(8)))) # (\MUX1|saida_MUX[7]~0_combout\ & (((!\MDADOS|ram~148_combout\)))) ) + ( \REG_A|DOUT\(1) ) + ( \ULA1|Add1~2\ ))
-- \ULA1|Add1~6\ = CARRY(( (!\MUX1|saida_MUX[7]~0_combout\ & (((\ROM|memROM~18_combout\)) # (\INSTR|PC|DOUT\(8)))) # (\MUX1|saida_MUX[7]~0_combout\ & (((!\MDADOS|ram~148_combout\)))) ) + ( \REG_A|DOUT\(1) ) + ( \ULA1|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000111001011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX1|ALT_INV_saida_MUX[7]~0_combout\,
	datab => \INSTR|PC|ALT_INV_DOUT\(8),
	datac => \MDADOS|ALT_INV_ram~148_combout\,
	datad => \ROM|ALT_INV_memROM~18_combout\,
	dataf => \REG_A|ALT_INV_DOUT\(1),
	cin => \ULA1|Add1~2\,
	sumout => \ULA1|Add1~5_sumout\,
	cout => \ULA1|Add1~6\);

\ULA1|saida[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[1]~1_combout\ = ( \ULA1|Add1~5_sumout\ & ( (!\DECODER|OP_ULA[1]~0_combout\) # ((!\MUX1|saida_MUX[7]~0_combout\ & (!\ROM|memROM~10_combout\)) # (\MUX1|saida_MUX[7]~0_combout\ & ((\MDADOS|ram~148_combout\)))) ) ) # ( !\ULA1|Add1~5_sumout\ & ( 
-- (\DECODER|OP_ULA[1]~0_combout\ & ((!\MUX1|saida_MUX[7]~0_combout\ & (!\ROM|memROM~10_combout\)) # (\MUX1|saida_MUX[7]~0_combout\ & ((\MDADOS|ram~148_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001011111110001111101100001000000010111111100011111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~10_combout\,
	datab => \MUX1|ALT_INV_saida_MUX[7]~0_combout\,
	datac => \DECODER|ALT_INV_OP_ULA[1]~0_combout\,
	datad => \MDADOS|ALT_INV_ram~148_combout\,
	datae => \ULA1|ALT_INV_Add1~5_sumout\,
	combout => \ULA1|saida[1]~1_combout\);

\REG_A|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => VCC,
	asdata => \ULA1|saida[1]~1_combout\,
	sload => VCC,
	ena => \DECODER|HAB_A~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_A|DOUT\(1));

\MDADOS|ram~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(1),
	ena => \MDADOS|ram~162_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDADOS|ram~18_q\);

\MDADOS|ram~147\ : cyclonev_lcell_comb
-- Equation(s):
-- \MDADOS|ram~147_combout\ = ( \ROM|memROM~12_combout\ & ( \ROM|memROM~14_combout\ & ( \MDADOS|ram~18_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \MDADOS|ALT_INV_ram~18_q\,
	datae => \ROM|ALT_INV_memROM~12_combout\,
	dataf => \ROM|ALT_INV_memROM~14_combout\,
	combout => \MDADOS|ram~147_combout\);

\MDADOS|ram~148\ : cyclonev_lcell_comb
-- Equation(s):
-- \MDADOS|ram~148_combout\ = ( !\ROM|memROM~8_combout\ & ( \ROM|memROM~10_combout\ & ( \MDADOS|ram~147_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \MDADOS|ALT_INV_ram~147_combout\,
	datae => \ROM|ALT_INV_memROM~8_combout\,
	dataf => \ROM|ALT_INV_memROM~10_combout\,
	combout => \MDADOS|ram~148_combout\);

\ULA1|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add1~9_sumout\ = SUM(( (!\MUX1|saida_MUX[7]~0_combout\ & (((\ROM|memROM~19_combout\)) # (\INSTR|PC|DOUT\(8)))) # (\MUX1|saida_MUX[7]~0_combout\ & (((!\MDADOS|ram~150_combout\)))) ) + ( \REG_A|DOUT\(2) ) + ( \ULA1|Add1~6\ ))
-- \ULA1|Add1~10\ = CARRY(( (!\MUX1|saida_MUX[7]~0_combout\ & (((\ROM|memROM~19_combout\)) # (\INSTR|PC|DOUT\(8)))) # (\MUX1|saida_MUX[7]~0_combout\ & (((!\MDADOS|ram~150_combout\)))) ) + ( \REG_A|DOUT\(2) ) + ( \ULA1|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000111001011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX1|ALT_INV_saida_MUX[7]~0_combout\,
	datab => \INSTR|PC|ALT_INV_DOUT\(8),
	datac => \MDADOS|ALT_INV_ram~150_combout\,
	datad => \ROM|ALT_INV_memROM~19_combout\,
	dataf => \REG_A|ALT_INV_DOUT\(2),
	cin => \ULA1|Add1~6\,
	sumout => \ULA1|Add1~9_sumout\,
	cout => \ULA1|Add1~10\);

\ULA1|saida[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[2]~2_combout\ = ( \ULA1|Add1~9_sumout\ & ( (!\DECODER|OP_ULA[1]~0_combout\) # ((!\MUX1|saida_MUX[7]~0_combout\ & (!\ROM|memROM~12_combout\)) # (\MUX1|saida_MUX[7]~0_combout\ & ((\MDADOS|ram~150_combout\)))) ) ) # ( !\ULA1|Add1~9_sumout\ & ( 
-- (\DECODER|OP_ULA[1]~0_combout\ & ((!\MUX1|saida_MUX[7]~0_combout\ & (!\ROM|memROM~12_combout\)) # (\MUX1|saida_MUX[7]~0_combout\ & ((\MDADOS|ram~150_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001011111110001111101100001000000010111111100011111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~12_combout\,
	datab => \MUX1|ALT_INV_saida_MUX[7]~0_combout\,
	datac => \DECODER|ALT_INV_OP_ULA[1]~0_combout\,
	datad => \MDADOS|ALT_INV_ram~150_combout\,
	datae => \ULA1|ALT_INV_Add1~9_sumout\,
	combout => \ULA1|saida[2]~2_combout\);

\REG_A|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => VCC,
	asdata => \ULA1|saida[2]~2_combout\,
	sload => VCC,
	ena => \DECODER|HAB_A~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_A|DOUT\(2));

\MDADOS|ram~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(2),
	ena => \MDADOS|ram~162_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDADOS|ram~19_q\);

\MDADOS|ram~149\ : cyclonev_lcell_comb
-- Equation(s):
-- \MDADOS|ram~149_combout\ = ( !\ROM|memROM~8_combout\ & ( \ROM|memROM~10_combout\ & ( \MDADOS|ram~19_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \MDADOS|ALT_INV_ram~19_q\,
	datae => \ROM|ALT_INV_memROM~8_combout\,
	dataf => \ROM|ALT_INV_memROM~10_combout\,
	combout => \MDADOS|ram~149_combout\);

\MDADOS|ram~150\ : cyclonev_lcell_comb
-- Equation(s):
-- \MDADOS|ram~150_combout\ = ( \ROM|memROM~12_combout\ & ( \ROM|memROM~14_combout\ & ( \MDADOS|ram~149_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \MDADOS|ALT_INV_ram~149_combout\,
	datae => \ROM|ALT_INV_memROM~12_combout\,
	dataf => \ROM|ALT_INV_memROM~14_combout\,
	combout => \MDADOS|ram~150_combout\);

\ULA1|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add1~13_sumout\ = SUM(( (!\MUX1|saida_MUX[7]~1_combout\ & ((!\ROM|memROM~2_combout\ & ((!\MDADOS|ram~152_combout\))) # (\ROM|memROM~2_combout\ & (\ROM|memROM~14_combout\)))) # (\MUX1|saida_MUX[7]~1_combout\ & (((!\MDADOS|ram~152_combout\)))) ) + ( 
-- \REG_A|DOUT\(3) ) + ( \ULA1|Add1~10\ ))
-- \ULA1|Add1~14\ = CARRY(( (!\MUX1|saida_MUX[7]~1_combout\ & ((!\ROM|memROM~2_combout\ & ((!\MDADOS|ram~152_combout\))) # (\ROM|memROM~2_combout\ & (\ROM|memROM~14_combout\)))) # (\MUX1|saida_MUX[7]~1_combout\ & (((!\MDADOS|ram~152_combout\)))) ) + ( 
-- \REG_A|DOUT\(3) ) + ( \ULA1|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001101111100000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX1|ALT_INV_saida_MUX[7]~1_combout\,
	datab => \ROM|ALT_INV_memROM~2_combout\,
	datac => \ROM|ALT_INV_memROM~14_combout\,
	datad => \MDADOS|ALT_INV_ram~152_combout\,
	dataf => \REG_A|ALT_INV_DOUT\(3),
	cin => \ULA1|Add1~10\,
	sumout => \ULA1|Add1~13_sumout\,
	cout => \ULA1|Add1~14\);

\ULA1|saida[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[3]~3_combout\ = ( \ULA1|Add1~13_sumout\ & ( (!\DECODER|OP_ULA[1]~0_combout\) # ((!\MUX1|saida_MUX[7]~0_combout\ & (!\ROM|memROM~14_combout\)) # (\MUX1|saida_MUX[7]~0_combout\ & ((\MDADOS|ram~152_combout\)))) ) ) # ( !\ULA1|Add1~13_sumout\ & ( 
-- (\DECODER|OP_ULA[1]~0_combout\ & ((!\MUX1|saida_MUX[7]~0_combout\ & (!\ROM|memROM~14_combout\)) # (\MUX1|saida_MUX[7]~0_combout\ & ((\MDADOS|ram~152_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001011111110001111101100001000000010111111100011111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~14_combout\,
	datab => \MUX1|ALT_INV_saida_MUX[7]~0_combout\,
	datac => \DECODER|ALT_INV_OP_ULA[1]~0_combout\,
	datad => \MDADOS|ALT_INV_ram~152_combout\,
	datae => \ULA1|ALT_INV_Add1~13_sumout\,
	combout => \ULA1|saida[3]~3_combout\);

\REG_A|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => VCC,
	asdata => \ULA1|saida[3]~3_combout\,
	sload => VCC,
	ena => \DECODER|HAB_A~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_A|DOUT\(3));

\MDADOS|ram~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(3),
	ena => \MDADOS|ram~162_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDADOS|ram~20_q\);

\MDADOS|ram~151\ : cyclonev_lcell_comb
-- Equation(s):
-- \MDADOS|ram~151_combout\ = ( \ROM|memROM~12_combout\ & ( \ROM|memROM~14_combout\ & ( \MDADOS|ram~20_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \MDADOS|ALT_INV_ram~20_q\,
	datae => \ROM|ALT_INV_memROM~12_combout\,
	dataf => \ROM|ALT_INV_memROM~14_combout\,
	combout => \MDADOS|ram~151_combout\);

\MDADOS|ram~152\ : cyclonev_lcell_comb
-- Equation(s):
-- \MDADOS|ram~152_combout\ = ( !\ROM|memROM~8_combout\ & ( \ROM|memROM~10_combout\ & ( \MDADOS|ram~151_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \MDADOS|ALT_INV_ram~151_combout\,
	datae => \ROM|ALT_INV_memROM~8_combout\,
	dataf => \ROM|ALT_INV_memROM~10_combout\,
	combout => \MDADOS|ram~152_combout\);

\ULA1|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add1~17_sumout\ = SUM(( (!\MDADOS|ram~154_combout\) # ((!\MUX1|saida_MUX[7]~1_combout\ & \ROM|memROM~2_combout\)) ) + ( \REG_A|DOUT\(4) ) + ( \ULA1|Add1~14\ ))
-- \ULA1|Add1~18\ = CARRY(( (!\MDADOS|ram~154_combout\) # ((!\MUX1|saida_MUX[7]~1_combout\ & \ROM|memROM~2_combout\)) ) + ( \REG_A|DOUT\(4) ) + ( \ULA1|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111100100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX1|ALT_INV_saida_MUX[7]~1_combout\,
	datab => \ROM|ALT_INV_memROM~2_combout\,
	datad => \MDADOS|ALT_INV_ram~154_combout\,
	dataf => \REG_A|ALT_INV_DOUT\(4),
	cin => \ULA1|Add1~14\,
	sumout => \ULA1|Add1~17_sumout\,
	cout => \ULA1|Add1~18\);

\ROM|memROM~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~20_combout\ = (!\ROM|memROM~0_combout\) # (!\ROM|memROM~1_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111011101110111011101110111011101110111011101110111011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \ROM|ALT_INV_memROM~1_combout\,
	combout => \ROM|memROM~20_combout\);

\ULA1|saida[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[5]~5_combout\ = (!\DECODER|OP_ULA[1]~0_combout\ & (((\ULA1|Add1~21_sumout\)))) # (\DECODER|OP_ULA[1]~0_combout\ & (\MUX1|saida_MUX[7]~0_combout\ & (\MDADOS|ram~156_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111001101000000011100110100000001110011010000000111001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX1|ALT_INV_saida_MUX[7]~0_combout\,
	datab => \DECODER|ALT_INV_OP_ULA[1]~0_combout\,
	datac => \MDADOS|ALT_INV_ram~156_combout\,
	datad => \ULA1|ALT_INV_Add1~21_sumout\,
	combout => \ULA1|saida[5]~5_combout\);

\REG_A|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => VCC,
	asdata => \ULA1|saida[5]~5_combout\,
	sload => VCC,
	ena => \DECODER|HAB_A~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_A|DOUT\(5));

\MDADOS|ram~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(5),
	ena => \MDADOS|ram~162_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDADOS|ram~22_q\);

\MDADOS|ram~155\ : cyclonev_lcell_comb
-- Equation(s):
-- \MDADOS|ram~155_combout\ = ( \ROM|memROM~12_combout\ & ( \ROM|memROM~14_combout\ & ( \MDADOS|ram~22_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \MDADOS|ALT_INV_ram~22_q\,
	datae => \ROM|ALT_INV_memROM~12_combout\,
	dataf => \ROM|ALT_INV_memROM~14_combout\,
	combout => \MDADOS|ram~155_combout\);

\MDADOS|ram~156\ : cyclonev_lcell_comb
-- Equation(s):
-- \MDADOS|ram~156_combout\ = ( !\ROM|memROM~8_combout\ & ( \ROM|memROM~10_combout\ & ( \MDADOS|ram~155_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \MDADOS|ALT_INV_ram~155_combout\,
	datae => \ROM|ALT_INV_memROM~8_combout\,
	dataf => \ROM|ALT_INV_memROM~10_combout\,
	combout => \MDADOS|ram~156_combout\);

\ULA1|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add1~21_sumout\ = SUM(( (!\MDADOS|ram~156_combout\) # ((!\MUX1|saida_MUX[7]~1_combout\ & ((\ROM|memROM~20_combout\) # (\INSTR|PC|DOUT\(8))))) ) + ( \REG_A|DOUT\(5) ) + ( \ULA1|Add1~18\ ))
-- \ULA1|Add1~22\ = CARRY(( (!\MDADOS|ram~156_combout\) # ((!\MUX1|saida_MUX[7]~1_combout\ & ((\ROM|memROM~20_combout\) # (\INSTR|PC|DOUT\(8))))) ) + ( \REG_A|DOUT\(5) ) + ( \ULA1|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111100101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX1|ALT_INV_saida_MUX[7]~1_combout\,
	datab => \INSTR|PC|ALT_INV_DOUT\(8),
	datac => \ROM|ALT_INV_memROM~20_combout\,
	datad => \MDADOS|ALT_INV_ram~156_combout\,
	dataf => \REG_A|ALT_INV_DOUT\(5),
	cin => \ULA1|Add1~18\,
	sumout => \ULA1|Add1~21_sumout\,
	cout => \ULA1|Add1~22\);

\ULA1|saida[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[6]~6_combout\ = (!\DECODER|OP_ULA[1]~0_combout\ & (((\ULA1|Add1~25_sumout\)))) # (\DECODER|OP_ULA[1]~0_combout\ & (\MUX1|saida_MUX[7]~0_combout\ & (\MDADOS|ram~158_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111001101000000011100110100000001110011010000000111001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX1|ALT_INV_saida_MUX[7]~0_combout\,
	datab => \DECODER|ALT_INV_OP_ULA[1]~0_combout\,
	datac => \MDADOS|ALT_INV_ram~158_combout\,
	datad => \ULA1|ALT_INV_Add1~25_sumout\,
	combout => \ULA1|saida[6]~6_combout\);

\REG_A|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => VCC,
	asdata => \ULA1|saida[6]~6_combout\,
	sload => VCC,
	ena => \DECODER|HAB_A~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_A|DOUT\(6));

\MDADOS|ram~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(6),
	ena => \MDADOS|ram~162_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDADOS|ram~23_q\);

\MDADOS|ram~157\ : cyclonev_lcell_comb
-- Equation(s):
-- \MDADOS|ram~157_combout\ = ( !\ROM|memROM~8_combout\ & ( \ROM|memROM~10_combout\ & ( \MDADOS|ram~23_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \MDADOS|ALT_INV_ram~23_q\,
	datae => \ROM|ALT_INV_memROM~8_combout\,
	dataf => \ROM|ALT_INV_memROM~10_combout\,
	combout => \MDADOS|ram~157_combout\);

\MDADOS|ram~158\ : cyclonev_lcell_comb
-- Equation(s):
-- \MDADOS|ram~158_combout\ = ( \ROM|memROM~12_combout\ & ( \ROM|memROM~14_combout\ & ( \MDADOS|ram~157_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \MDADOS|ALT_INV_ram~157_combout\,
	datae => \ROM|ALT_INV_memROM~12_combout\,
	dataf => \ROM|ALT_INV_memROM~14_combout\,
	combout => \MDADOS|ram~158_combout\);

\ULA1|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add1~25_sumout\ = SUM(( (!\MDADOS|ram~158_combout\) # ((!\MUX1|saida_MUX[7]~1_combout\ & ((\ROM|memROM~20_combout\) # (\INSTR|PC|DOUT\(8))))) ) + ( \REG_A|DOUT\(6) ) + ( \ULA1|Add1~22\ ))
-- \ULA1|Add1~26\ = CARRY(( (!\MDADOS|ram~158_combout\) # ((!\MUX1|saida_MUX[7]~1_combout\ & ((\ROM|memROM~20_combout\) # (\INSTR|PC|DOUT\(8))))) ) + ( \REG_A|DOUT\(6) ) + ( \ULA1|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111100101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX1|ALT_INV_saida_MUX[7]~1_combout\,
	datab => \INSTR|PC|ALT_INV_DOUT\(8),
	datac => \ROM|ALT_INV_memROM~20_combout\,
	datad => \MDADOS|ALT_INV_ram~158_combout\,
	dataf => \REG_A|ALT_INV_DOUT\(6),
	cin => \ULA1|Add1~22\,
	sumout => \ULA1|Add1~25_sumout\,
	cout => \ULA1|Add1~26\);

\ULA1|saida[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[7]~7_combout\ = (!\DECODER|OP_ULA[1]~0_combout\ & (((\ULA1|Add1~29_sumout\)))) # (\DECODER|OP_ULA[1]~0_combout\ & (\MUX1|saida_MUX[7]~0_combout\ & (\MDADOS|ram~160_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111001101000000011100110100000001110011010000000111001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX1|ALT_INV_saida_MUX[7]~0_combout\,
	datab => \DECODER|ALT_INV_OP_ULA[1]~0_combout\,
	datac => \MDADOS|ALT_INV_ram~160_combout\,
	datad => \ULA1|ALT_INV_Add1~29_sumout\,
	combout => \ULA1|saida[7]~7_combout\);

\REG_A|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => VCC,
	asdata => \ULA1|saida[7]~7_combout\,
	sload => VCC,
	ena => \DECODER|HAB_A~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_A|DOUT\(7));

\MDADOS|ram~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(7),
	ena => \MDADOS|ram~162_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDADOS|ram~24_q\);

\MDADOS|ram~159\ : cyclonev_lcell_comb
-- Equation(s):
-- \MDADOS|ram~159_combout\ = ( \ROM|memROM~12_combout\ & ( \ROM|memROM~14_combout\ & ( \MDADOS|ram~24_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \MDADOS|ALT_INV_ram~24_q\,
	datae => \ROM|ALT_INV_memROM~12_combout\,
	dataf => \ROM|ALT_INV_memROM~14_combout\,
	combout => \MDADOS|ram~159_combout\);

\MDADOS|ram~160\ : cyclonev_lcell_comb
-- Equation(s):
-- \MDADOS|ram~160_combout\ = ( !\ROM|memROM~8_combout\ & ( \ROM|memROM~10_combout\ & ( \MDADOS|ram~159_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \MDADOS|ALT_INV_ram~159_combout\,
	datae => \ROM|ALT_INV_memROM~8_combout\,
	dataf => \ROM|ALT_INV_memROM~10_combout\,
	combout => \MDADOS|ram~160_combout\);

\ULA1|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add1~29_sumout\ = SUM(( (!\MDADOS|ram~160_combout\) # ((!\MUX1|saida_MUX[7]~1_combout\ & ((\ROM|memROM~20_combout\) # (\INSTR|PC|DOUT\(8))))) ) + ( \REG_A|DOUT\(7) ) + ( \ULA1|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111100101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX1|ALT_INV_saida_MUX[7]~1_combout\,
	datab => \INSTR|PC|ALT_INV_DOUT\(8),
	datac => \ROM|ALT_INV_memROM~20_combout\,
	datad => \MDADOS|ALT_INV_ram~160_combout\,
	dataf => \REG_A|ALT_INV_DOUT\(7),
	cin => \ULA1|Add1~26\,
	sumout => \ULA1|Add1~29_sumout\);

\DECODER|sinais_controle~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER|sinais_controle~0_combout\ = (!\ROM|memROM~3_combout\ & (\ROM|memROM~4_combout\ & (\ROM|memROM~5_combout\ & !\ROM|memROM~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000000000100000000000000010000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~3_combout\,
	datab => \ROM|ALT_INV_memROM~4_combout\,
	datac => \ROM|ALT_INV_memROM~5_combout\,
	datad => \ROM|ALT_INV_memROM~6_combout\,
	combout => \DECODER|sinais_controle~0_combout\);

\FLAG|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FLAG|DOUT~0_combout\ = (\FLAG|DOUT~q\ & ((!\ROM|memROM~2_combout\) # (!\DECODER|sinais_controle~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111000001110000011100000111000001110000011100000111000001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \DECODER|ALT_INV_sinais_controle~0_combout\,
	datac => \FLAG|ALT_INV_DOUT~q\,
	combout => \FLAG|DOUT~0_combout\);

\FLAG|DOUT~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \FLAG|DOUT~1_combout\ = ( !\ULA1|Add1~9_sumout\ & ( !\ULA1|Add1~13_sumout\ & ( (\ROM|memROM~2_combout\ & (\DECODER|sinais_controle~0_combout\ & (!\ULA1|Add1~1_sumout\ & !\ULA1|Add1~5_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \DECODER|ALT_INV_sinais_controle~0_combout\,
	datac => \ULA1|ALT_INV_Add1~1_sumout\,
	datad => \ULA1|ALT_INV_Add1~5_sumout\,
	datae => \ULA1|ALT_INV_Add1~9_sumout\,
	dataf => \ULA1|ALT_INV_Add1~13_sumout\,
	combout => \FLAG|DOUT~1_combout\);

\FLAG|DOUT~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \FLAG|DOUT~2_combout\ = ( \FLAG|DOUT~0_combout\ & ( \FLAG|DOUT~1_combout\ ) ) # ( !\FLAG|DOUT~0_combout\ & ( \FLAG|DOUT~1_combout\ & ( (!\ULA1|Add1~17_sumout\ & (!\ULA1|Add1~21_sumout\ & (!\ULA1|Add1~25_sumout\ & !\ULA1|Add1~29_sumout\))) ) ) ) # ( 
-- \FLAG|DOUT~0_combout\ & ( !\FLAG|DOUT~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111110000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_Add1~17_sumout\,
	datab => \ULA1|ALT_INV_Add1~21_sumout\,
	datac => \ULA1|ALT_INV_Add1~25_sumout\,
	datad => \ULA1|ALT_INV_Add1~29_sumout\,
	datae => \FLAG|ALT_INV_DOUT~0_combout\,
	dataf => \FLAG|ALT_INV_DOUT~1_combout\,
	combout => \FLAG|DOUT~2_combout\);

\FLAG|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FLAG|DOUT~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FLAG|DOUT~q\);

\LOG_DESVIO|DESV_JUMP~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LOG_DESVIO|DESV_JUMP~0_combout\ = ( \ROM|memROM~6_combout\ & ( \FLAG|DOUT~q\ & ( (\ROM|memROM~3_combout\ & (\ROM|memROM~4_combout\ & !\ROM|memROM~5_combout\)) ) ) ) # ( !\ROM|memROM~6_combout\ & ( \FLAG|DOUT~q\ & ( (!\ROM|memROM~2_combout\ & 
-- (!\ROM|memROM~3_combout\ & (\ROM|memROM~4_combout\ & \ROM|memROM~5_combout\))) ) ) ) # ( \ROM|memROM~6_combout\ & ( !\FLAG|DOUT~q\ & ( (\ROM|memROM~2_combout\ & (\ROM|memROM~3_combout\ & (\ROM|memROM~4_combout\ & !\ROM|memROM~5_combout\))) ) ) ) # ( 
-- !\ROM|memROM~6_combout\ & ( !\FLAG|DOUT~q\ & ( (!\ROM|memROM~2_combout\ & (!\ROM|memROM~3_combout\ & (\ROM|memROM~4_combout\ & \ROM|memROM~5_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000010000000000000000000010000000001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ROM|ALT_INV_memROM~3_combout\,
	datac => \ROM|ALT_INV_memROM~4_combout\,
	datad => \ROM|ALT_INV_memROM~5_combout\,
	datae => \ROM|ALT_INV_memROM~6_combout\,
	dataf => \FLAG|ALT_INV_DOUT~q\,
	combout => \LOG_DESVIO|DESV_JUMP~0_combout\);

\INSTR|PC|DOUT[8]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \INSTR|PC|DOUT[8]~0_combout\ = (\LOG_DESVIO|DESV_JUMP~0_combout\ & \LOG_DESVIO|Equal5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LOG_DESVIO|ALT_INV_DESV_JUMP~0_combout\,
	datab => \LOG_DESVIO|ALT_INV_Equal5~0_combout\,
	combout => \INSTR|PC|DOUT[8]~0_combout\);

\INSTR|END_RETORNO|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \INSTR|SOMA_CONST|Add0~5_sumout\,
	ena => \DECODER|sinais_controle~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INSTR|END_RETORNO|DOUT\(0));

\INSTR|MUX2|MUX_OUT[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \INSTR|MUX2|MUX_OUT[0]~1_combout\ = ( \INSTR|SOMA_CONST|Add0~5_sumout\ & ( (!\LOG_DESVIO|DESV_JUMP~1_combout\ & (((!\INSTR|PC|DOUT[8]~0_combout\)) # (\ROM|memROM~8_combout\))) # (\LOG_DESVIO|DESV_JUMP~1_combout\ & (((\INSTR|END_RETORNO|DOUT\(0))))) ) ) # 
-- ( !\INSTR|SOMA_CONST|Add0~5_sumout\ & ( (!\LOG_DESVIO|DESV_JUMP~1_combout\ & (\ROM|memROM~8_combout\ & (\INSTR|PC|DOUT[8]~0_combout\))) # (\LOG_DESVIO|DESV_JUMP~1_combout\ & (((\INSTR|END_RETORNO|DOUT\(0))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001010111101000101111011100000010010101111010001011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LOG_DESVIO|ALT_INV_DESV_JUMP~1_combout\,
	datab => \ROM|ALT_INV_memROM~8_combout\,
	datac => \INSTR|PC|ALT_INV_DOUT[8]~0_combout\,
	datad => \INSTR|END_RETORNO|ALT_INV_DOUT\(0),
	datae => \INSTR|SOMA_CONST|ALT_INV_Add0~5_sumout\,
	combout => \INSTR|MUX2|MUX_OUT[0]~1_combout\);

\INSTR|PC|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \INSTR|MUX2|MUX_OUT[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INSTR|PC|DOUT\(0));

\ROM|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~0_combout\ = (!\INSTR|PC|DOUT\(0) & (!\INSTR|PC|DOUT\(3) $ (((!\INSTR|PC|DOUT\(1) & \INSTR|PC|DOUT\(2))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010001000001000101000100000100010100010000010001010001000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR|PC|ALT_INV_DOUT\(0),
	datab => \INSTR|PC|ALT_INV_DOUT\(1),
	datac => \INSTR|PC|ALT_INV_DOUT\(2),
	datad => \INSTR|PC|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~0_combout\);

\LOG_DESVIO|DESV_JUMP~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LOG_DESVIO|DESV_JUMP~1_combout\ = ( \ROM|memROM~5_combout\ & ( \ROM|memROM~6_combout\ & ( (!\INSTR|PC|DOUT\(8) & (!\ROM|memROM~0_combout\ & (\ROM|memROM~1_combout\ & !\ROM|memROM~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR|PC|ALT_INV_DOUT\(8),
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \ROM|ALT_INV_memROM~1_combout\,
	datad => \ROM|ALT_INV_memROM~3_combout\,
	datae => \ROM|ALT_INV_memROM~5_combout\,
	dataf => \ROM|ALT_INV_memROM~6_combout\,
	combout => \LOG_DESVIO|DESV_JUMP~1_combout\);

\ROM|memROM~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~16_combout\ = (\ROM|memROM~4_combout\ & \ROM|memROM~15_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~4_combout\,
	datab => \ROM|ALT_INV_memROM~15_combout\,
	combout => \ROM|memROM~16_combout\);

\INSTR|SOMA_CONST|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \INSTR|SOMA_CONST|Add0~1_sumout\ = SUM(( \INSTR|PC|DOUT\(8) ) + ( GND ) + ( \INSTR|SOMA_CONST|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \INSTR|PC|ALT_INV_DOUT\(8),
	cin => \INSTR|SOMA_CONST|Add0~22\,
	sumout => \INSTR|SOMA_CONST|Add0~1_sumout\);

\INSTR|END_RETORNO|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \INSTR|SOMA_CONST|Add0~1_sumout\,
	ena => \DECODER|sinais_controle~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INSTR|END_RETORNO|DOUT\(8));

\INSTR|MUX2|MUX_OUT[8]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \INSTR|MUX2|MUX_OUT[8]~0_combout\ = ( \INSTR|SOMA_CONST|Add0~1_sumout\ & ( (!\LOG_DESVIO|DESV_JUMP~1_combout\ & (((!\INSTR|PC|DOUT[8]~0_combout\)) # (\ROM|memROM~16_combout\))) # (\LOG_DESVIO|DESV_JUMP~1_combout\ & (((\INSTR|END_RETORNO|DOUT\(8))))) ) ) # 
-- ( !\INSTR|SOMA_CONST|Add0~1_sumout\ & ( (!\LOG_DESVIO|DESV_JUMP~1_combout\ & (\ROM|memROM~16_combout\ & ((\INSTR|PC|DOUT[8]~0_combout\)))) # (\LOG_DESVIO|DESV_JUMP~1_combout\ & (((\INSTR|END_RETORNO|DOUT\(8))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100100111101011110010011100000101001001111010111100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LOG_DESVIO|ALT_INV_DESV_JUMP~1_combout\,
	datab => \ROM|ALT_INV_memROM~16_combout\,
	datac => \INSTR|END_RETORNO|ALT_INV_DOUT\(8),
	datad => \INSTR|PC|ALT_INV_DOUT[8]~0_combout\,
	datae => \INSTR|SOMA_CONST|ALT_INV_Add0~1_sumout\,
	combout => \INSTR|MUX2|MUX_OUT[8]~0_combout\);

\INSTR|PC|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \INSTR|MUX2|MUX_OUT[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INSTR|PC|DOUT\(8));

\ROM|memROM~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~8_combout\ = (!\INSTR|PC|DOUT\(8) & (\ROM|memROM~1_combout\ & \ROM|memROM~7_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR|PC|ALT_INV_DOUT\(8),
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \ROM|ALT_INV_memROM~7_combout\,
	combout => \ROM|memROM~8_combout\);

\ULA1|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[0]~0_combout\ = ( \ULA1|Add1~1_sumout\ & ( (!\DECODER|OP_ULA[1]~0_combout\) # ((!\MUX1|saida_MUX[7]~0_combout\ & (\ROM|memROM~8_combout\)) # (\MUX1|saida_MUX[7]~0_combout\ & ((\MDADOS|ram~146_combout\)))) ) ) # ( !\ULA1|Add1~1_sumout\ & ( 
-- (\DECODER|OP_ULA[1]~0_combout\ & ((!\MUX1|saida_MUX[7]~0_combout\ & (\ROM|memROM~8_combout\)) # (\MUX1|saida_MUX[7]~0_combout\ & ((\MDADOS|ram~146_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000111111111110100011100000000010001111111111101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~8_combout\,
	datab => \MUX1|ALT_INV_saida_MUX[7]~0_combout\,
	datac => \MDADOS|ALT_INV_ram~146_combout\,
	datad => \DECODER|ALT_INV_OP_ULA[1]~0_combout\,
	datae => \ULA1|ALT_INV_Add1~1_sumout\,
	combout => \ULA1|saida[0]~0_combout\);

\REG_A|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => VCC,
	asdata => \ULA1|saida[0]~0_combout\,
	sload => VCC,
	ena => \DECODER|HAB_A~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_A|DOUT\(0));

\CLOCK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

\KEY[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

\KEY[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

\KEY[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

ww_SAIDA(0) <= \SAIDA[0]~output_o\;

ww_SAIDA(1) <= \SAIDA[1]~output_o\;

ww_SAIDA(2) <= \SAIDA[2]~output_o\;

ww_SAIDA(3) <= \SAIDA[3]~output_o\;

ww_SAIDA(4) <= \SAIDA[4]~output_o\;

ww_SAIDA(5) <= \SAIDA[5]~output_o\;

ww_SAIDA(6) <= \SAIDA[6]~output_o\;

ww_SAIDA(7) <= \SAIDA[7]~output_o\;

ww_FLAG_JMP(0) <= \FLAG_JMP[0]~output_o\;

ww_FLAG_JMP(1) <= \FLAG_JMP[1]~output_o\;

ww_DEST(0) <= \DEST[0]~output_o\;

ww_DEST(1) <= \DEST[1]~output_o\;

ww_DEST(2) <= \DEST[2]~output_o\;

ww_DEST(3) <= \DEST[3]~output_o\;

ww_DEST(4) <= \DEST[4]~output_o\;

ww_DEST(5) <= \DEST[5]~output_o\;

ww_DEST(6) <= \DEST[6]~output_o\;

ww_DEST(7) <= \DEST[7]~output_o\;

ww_DEST(8) <= \DEST[8]~output_o\;

ww_PC(0) <= \PC[0]~output_o\;

ww_PC(1) <= \PC[1]~output_o\;

ww_PC(2) <= \PC[2]~output_o\;

ww_PC(3) <= \PC[3]~output_o\;

ww_PC(4) <= \PC[4]~output_o\;

ww_PC(5) <= \PC[5]~output_o\;

ww_PC(6) <= \PC[6]~output_o\;

ww_PC(7) <= \PC[7]~output_o\;

ww_PC(8) <= \PC[8]~output_o\;
END structure;


