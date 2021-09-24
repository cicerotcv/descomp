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

-- DATE "09/23/2021 22:25:33"

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
	FLAG_JMP : OUT std_logic;
	DEST : OUT std_logic_vector(8 DOWNTO 0)
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
SIGNAL ww_FLAG_JMP : std_logic;
SIGNAL ww_DEST : std_logic_vector(8 DOWNTO 0);
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
SIGNAL \FLAG_JMP~output_o\ : std_logic;
SIGNAL \DEST[0]~output_o\ : std_logic;
SIGNAL \DEST[1]~output_o\ : std_logic;
SIGNAL \DEST[2]~output_o\ : std_logic;
SIGNAL \DEST[3]~output_o\ : std_logic;
SIGNAL \DEST[4]~output_o\ : std_logic;
SIGNAL \DEST[5]~output_o\ : std_logic;
SIGNAL \DEST[6]~output_o\ : std_logic;
SIGNAL \DEST[7]~output_o\ : std_logic;
SIGNAL \DEST[8]~output_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \INSTR|SOMA_CONST|Add0~1_sumout\ : std_logic;
SIGNAL \INSTR|MUX2|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \INSTR|ROM|memROM~11_combout\ : std_logic;
SIGNAL \INSTR|ROM|memROM~12_combout\ : std_logic;
SIGNAL \INSTR|SOMA_CONST|Add0~2\ : std_logic;
SIGNAL \INSTR|SOMA_CONST|Add0~6\ : std_logic;
SIGNAL \INSTR|SOMA_CONST|Add0~10\ : std_logic;
SIGNAL \INSTR|SOMA_CONST|Add0~13_sumout\ : std_logic;
SIGNAL \INSTR|MUX2|saida_MUX[3]~3_combout\ : std_logic;
SIGNAL \INSTR|SOMA_CONST|Add0~14\ : std_logic;
SIGNAL \INSTR|SOMA_CONST|Add0~33_sumout\ : std_logic;
SIGNAL \INSTR|MUX2|saida_MUX[4]~8_combout\ : std_logic;
SIGNAL \INSTR|SOMA_CONST|Add0~34\ : std_logic;
SIGNAL \INSTR|SOMA_CONST|Add0~29_sumout\ : std_logic;
SIGNAL \INSTR|MUX2|saida_MUX[5]~7_combout\ : std_logic;
SIGNAL \INSTR|SOMA_CONST|Add0~30\ : std_logic;
SIGNAL \INSTR|SOMA_CONST|Add0~25_sumout\ : std_logic;
SIGNAL \INSTR|MUX2|saida_MUX[6]~6_combout\ : std_logic;
SIGNAL \INSTR|ROM|memROM~5_combout\ : std_logic;
SIGNAL \INSTR|ROM|memROM~9_combout\ : std_logic;
SIGNAL \INSTR|ROM|memROM~10_combout\ : std_logic;
SIGNAL \INSTR|SOMA_CONST|Add0~9_sumout\ : std_logic;
SIGNAL \INSTR|MUX2|saida_MUX[2]~2_combout\ : std_logic;
SIGNAL \INSTR|ROM|memROM~8_combout\ : std_logic;
SIGNAL \INSTR|SOMA_CONST|Add0~5_sumout\ : std_logic;
SIGNAL \INSTR|MUX2|saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \INSTR|ROM|memROM~0_combout\ : std_logic;
SIGNAL \INSTR|ROM|memROM~2_combout\ : std_logic;
SIGNAL \INSTR|ROM|memROM~3_combout\ : std_logic;
SIGNAL \MUX1|saida_MUX[7]~1_combout\ : std_logic;
SIGNAL \INSTR|ROM|memROM~1_combout\ : std_logic;
SIGNAL \INSTR|ROM|memROM~15_combout\ : std_logic;
SIGNAL \DECODER|OP_ULA[1]~0_combout\ : std_logic;
SIGNAL \MUX1|saida_MUX[7]~0_combout\ : std_logic;
SIGNAL \ULA1|saida[4]~4_combout\ : std_logic;
SIGNAL \DECODER|HAB_A~0_combout\ : std_logic;
SIGNAL \INSTR|ROM|memROM~13_combout\ : std_logic;
SIGNAL \MDADOS|process_0~0_combout\ : std_logic;
SIGNAL \MDADOS|ram~161_combout\ : std_logic;
SIGNAL \MDADOS|ram~21_q\ : std_logic;
SIGNAL \MDADOS|ram~153_combout\ : std_logic;
SIGNAL \MDADOS|ram~154_combout\ : std_logic;
SIGNAL \MDADOS|ram~17_q\ : std_logic;
SIGNAL \MDADOS|ram~145_combout\ : std_logic;
SIGNAL \MDADOS|ram~146_combout\ : std_logic;
SIGNAL \INSTR|ROM|memROM~6_combout\ : std_logic;
SIGNAL \INSTR|ROM|memROM~16_combout\ : std_logic;
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
SIGNAL \INSTR|ROM|memROM~17_combout\ : std_logic;
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
SIGNAL \FLAG|DOUT~1_combout\ : std_logic;
SIGNAL \ULA1|Add1~1_sumout\ : std_logic;
SIGNAL \FLAG|DOUT~2_combout\ : std_logic;
SIGNAL \FLAG|DOUT~0_combout\ : std_logic;
SIGNAL \FLAG|DOUT~q\ : std_logic;
SIGNAL \LOG_DESVIO|DESV_JUMP~0_combout\ : std_logic;
SIGNAL \INSTR|SOMA_CONST|Add0~26\ : std_logic;
SIGNAL \INSTR|SOMA_CONST|Add0~21_sumout\ : std_logic;
SIGNAL \INSTR|MUX2|saida_MUX[7]~5_combout\ : std_logic;
SIGNAL \INSTR|ROM|memROM~4_combout\ : std_logic;
SIGNAL \INSTR|ROM|memROM~14_combout\ : std_logic;
SIGNAL \INSTR|SOMA_CONST|Add0~22\ : std_logic;
SIGNAL \INSTR|SOMA_CONST|Add0~17_sumout\ : std_logic;
SIGNAL \INSTR|MUX2|saida_MUX[8]~4_combout\ : std_logic;
SIGNAL \INSTR|ROM|memROM~7_combout\ : std_logic;
SIGNAL \ULA1|saida[0]~0_combout\ : std_logic;
SIGNAL \REG_A|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \INSTR|PC|DOUT\ : std_logic_vector(8 DOWNTO 0);
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
SIGNAL \FLAG|ALT_INV_DOUT~2_combout\ : std_logic;
SIGNAL \FLAG|ALT_INV_DOUT~1_combout\ : std_logic;
SIGNAL \INSTR|ROM|ALT_INV_memROM~17_combout\ : std_logic;
SIGNAL \INSTR|ROM|ALT_INV_memROM~16_combout\ : std_logic;
SIGNAL \MDADOS|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \MUX1|ALT_INV_saida_MUX[7]~1_combout\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~160_combout\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~159_combout\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~24_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~158_combout\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~157_combout\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~23_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~156_combout\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~155_combout\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~22_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~154_combout\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~153_combout\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~21_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~152_combout\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~151_combout\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~20_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~150_combout\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~149_combout\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~19_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~148_combout\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~147_combout\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~18_q\ : std_logic;
SIGNAL \MUX1|ALT_INV_saida_MUX[7]~0_combout\ : std_logic;
SIGNAL \DECODER|ALT_INV_OP_ULA[1]~0_combout\ : std_logic;
SIGNAL \INSTR|ROM|ALT_INV_memROM~15_combout\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~146_combout\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~145_combout\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~17_q\ : std_logic;
SIGNAL \INSTR|ROM|ALT_INV_memROM~14_combout\ : std_logic;
SIGNAL \INSTR|ROM|ALT_INV_memROM~13_combout\ : std_logic;
SIGNAL \INSTR|ROM|ALT_INV_memROM~12_combout\ : std_logic;
SIGNAL \INSTR|ROM|ALT_INV_memROM~11_combout\ : std_logic;
SIGNAL \INSTR|ROM|ALT_INV_memROM~10_combout\ : std_logic;
SIGNAL \INSTR|ROM|ALT_INV_memROM~9_combout\ : std_logic;
SIGNAL \INSTR|ROM|ALT_INV_memROM~8_combout\ : std_logic;
SIGNAL \INSTR|ROM|ALT_INV_memROM~7_combout\ : std_logic;
SIGNAL \INSTR|ROM|ALT_INV_memROM~6_combout\ : std_logic;
SIGNAL \INSTR|ROM|ALT_INV_memROM~5_combout\ : std_logic;
SIGNAL \LOG_DESVIO|ALT_INV_DESV_JUMP~0_combout\ : std_logic;
SIGNAL \INSTR|ROM|ALT_INV_memROM~4_combout\ : std_logic;
SIGNAL \INSTR|PC|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \INSTR|ROM|ALT_INV_memROM~3_combout\ : std_logic;
SIGNAL \INSTR|ROM|ALT_INV_memROM~2_combout\ : std_logic;
SIGNAL \INSTR|ROM|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \FLAG|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \INSTR|ROM|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \INSTR|SOMA_CONST|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \INSTR|SOMA_CONST|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \INSTR|SOMA_CONST|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \INSTR|SOMA_CONST|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \INSTR|SOMA_CONST|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \INSTR|SOMA_CONST|ALT_INV_Add0~13_sumout\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
SAIDA <= ww_SAIDA;
FLAG_JMP <= ww_FLAG_JMP;
DEST <= ww_DEST;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
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
\FLAG|ALT_INV_DOUT~2_combout\ <= NOT \FLAG|DOUT~2_combout\;
\FLAG|ALT_INV_DOUT~1_combout\ <= NOT \FLAG|DOUT~1_combout\;
\INSTR|ROM|ALT_INV_memROM~17_combout\ <= NOT \INSTR|ROM|memROM~17_combout\;
\INSTR|ROM|ALT_INV_memROM~16_combout\ <= NOT \INSTR|ROM|memROM~16_combout\;
\MDADOS|ALT_INV_process_0~0_combout\ <= NOT \MDADOS|process_0~0_combout\;
\MUX1|ALT_INV_saida_MUX[7]~1_combout\ <= NOT \MUX1|saida_MUX[7]~1_combout\;
\MDADOS|ALT_INV_ram~160_combout\ <= NOT \MDADOS|ram~160_combout\;
\MDADOS|ALT_INV_ram~159_combout\ <= NOT \MDADOS|ram~159_combout\;
\MDADOS|ALT_INV_ram~24_q\ <= NOT \MDADOS|ram~24_q\;
\MDADOS|ALT_INV_ram~158_combout\ <= NOT \MDADOS|ram~158_combout\;
\MDADOS|ALT_INV_ram~157_combout\ <= NOT \MDADOS|ram~157_combout\;
\MDADOS|ALT_INV_ram~23_q\ <= NOT \MDADOS|ram~23_q\;
\MDADOS|ALT_INV_ram~156_combout\ <= NOT \MDADOS|ram~156_combout\;
\MDADOS|ALT_INV_ram~155_combout\ <= NOT \MDADOS|ram~155_combout\;
\MDADOS|ALT_INV_ram~22_q\ <= NOT \MDADOS|ram~22_q\;
\MDADOS|ALT_INV_ram~154_combout\ <= NOT \MDADOS|ram~154_combout\;
\MDADOS|ALT_INV_ram~153_combout\ <= NOT \MDADOS|ram~153_combout\;
\MDADOS|ALT_INV_ram~21_q\ <= NOT \MDADOS|ram~21_q\;
\MDADOS|ALT_INV_ram~152_combout\ <= NOT \MDADOS|ram~152_combout\;
\MDADOS|ALT_INV_ram~151_combout\ <= NOT \MDADOS|ram~151_combout\;
\MDADOS|ALT_INV_ram~20_q\ <= NOT \MDADOS|ram~20_q\;
\MDADOS|ALT_INV_ram~150_combout\ <= NOT \MDADOS|ram~150_combout\;
\MDADOS|ALT_INV_ram~149_combout\ <= NOT \MDADOS|ram~149_combout\;
\MDADOS|ALT_INV_ram~19_q\ <= NOT \MDADOS|ram~19_q\;
\MDADOS|ALT_INV_ram~148_combout\ <= NOT \MDADOS|ram~148_combout\;
\MDADOS|ALT_INV_ram~147_combout\ <= NOT \MDADOS|ram~147_combout\;
\MDADOS|ALT_INV_ram~18_q\ <= NOT \MDADOS|ram~18_q\;
\MUX1|ALT_INV_saida_MUX[7]~0_combout\ <= NOT \MUX1|saida_MUX[7]~0_combout\;
\DECODER|ALT_INV_OP_ULA[1]~0_combout\ <= NOT \DECODER|OP_ULA[1]~0_combout\;
\INSTR|ROM|ALT_INV_memROM~15_combout\ <= NOT \INSTR|ROM|memROM~15_combout\;
\MDADOS|ALT_INV_ram~146_combout\ <= NOT \MDADOS|ram~146_combout\;
\MDADOS|ALT_INV_ram~145_combout\ <= NOT \MDADOS|ram~145_combout\;
\MDADOS|ALT_INV_ram~17_q\ <= NOT \MDADOS|ram~17_q\;
\INSTR|ROM|ALT_INV_memROM~14_combout\ <= NOT \INSTR|ROM|memROM~14_combout\;
\INSTR|ROM|ALT_INV_memROM~13_combout\ <= NOT \INSTR|ROM|memROM~13_combout\;
\INSTR|ROM|ALT_INV_memROM~12_combout\ <= NOT \INSTR|ROM|memROM~12_combout\;
\INSTR|ROM|ALT_INV_memROM~11_combout\ <= NOT \INSTR|ROM|memROM~11_combout\;
\INSTR|ROM|ALT_INV_memROM~10_combout\ <= NOT \INSTR|ROM|memROM~10_combout\;
\INSTR|ROM|ALT_INV_memROM~9_combout\ <= NOT \INSTR|ROM|memROM~9_combout\;
\INSTR|ROM|ALT_INV_memROM~8_combout\ <= NOT \INSTR|ROM|memROM~8_combout\;
\INSTR|ROM|ALT_INV_memROM~7_combout\ <= NOT \INSTR|ROM|memROM~7_combout\;
\INSTR|ROM|ALT_INV_memROM~6_combout\ <= NOT \INSTR|ROM|memROM~6_combout\;
\INSTR|ROM|ALT_INV_memROM~5_combout\ <= NOT \INSTR|ROM|memROM~5_combout\;
\LOG_DESVIO|ALT_INV_DESV_JUMP~0_combout\ <= NOT \LOG_DESVIO|DESV_JUMP~0_combout\;
\INSTR|ROM|ALT_INV_memROM~4_combout\ <= NOT \INSTR|ROM|memROM~4_combout\;
\INSTR|PC|ALT_INV_DOUT\(4) <= NOT \INSTR|PC|DOUT\(4);
\INSTR|PC|ALT_INV_DOUT\(5) <= NOT \INSTR|PC|DOUT\(5);
\INSTR|PC|ALT_INV_DOUT\(6) <= NOT \INSTR|PC|DOUT\(6);
\INSTR|PC|ALT_INV_DOUT\(7) <= NOT \INSTR|PC|DOUT\(7);
\INSTR|PC|ALT_INV_DOUT\(8) <= NOT \INSTR|PC|DOUT\(8);
\INSTR|ROM|ALT_INV_memROM~3_combout\ <= NOT \INSTR|ROM|memROM~3_combout\;
\INSTR|ROM|ALT_INV_memROM~2_combout\ <= NOT \INSTR|ROM|memROM~2_combout\;
\INSTR|ROM|ALT_INV_memROM~1_combout\ <= NOT \INSTR|ROM|memROM~1_combout\;
\FLAG|ALT_INV_DOUT~q\ <= NOT \FLAG|DOUT~q\;
\INSTR|ROM|ALT_INV_memROM~0_combout\ <= NOT \INSTR|ROM|memROM~0_combout\;
\INSTR|PC|ALT_INV_DOUT\(3) <= NOT \INSTR|PC|DOUT\(3);
\INSTR|PC|ALT_INV_DOUT\(2) <= NOT \INSTR|PC|DOUT\(2);
\INSTR|PC|ALT_INV_DOUT\(1) <= NOT \INSTR|PC|DOUT\(1);
\INSTR|PC|ALT_INV_DOUT\(0) <= NOT \INSTR|PC|DOUT\(0);
\INSTR|SOMA_CONST|ALT_INV_Add0~33_sumout\ <= NOT \INSTR|SOMA_CONST|Add0~33_sumout\;
\INSTR|SOMA_CONST|ALT_INV_Add0~29_sumout\ <= NOT \INSTR|SOMA_CONST|Add0~29_sumout\;
\INSTR|SOMA_CONST|ALT_INV_Add0~25_sumout\ <= NOT \INSTR|SOMA_CONST|Add0~25_sumout\;
\INSTR|SOMA_CONST|ALT_INV_Add0~21_sumout\ <= NOT \INSTR|SOMA_CONST|Add0~21_sumout\;
\INSTR|SOMA_CONST|ALT_INV_Add0~17_sumout\ <= NOT \INSTR|SOMA_CONST|Add0~17_sumout\;
\INSTR|SOMA_CONST|ALT_INV_Add0~13_sumout\ <= NOT \INSTR|SOMA_CONST|Add0~13_sumout\;

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

\FLAG_JMP~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LOG_DESVIO|DESV_JUMP~0_combout\,
	devoe => ww_devoe,
	o => \FLAG_JMP~output_o\);

\DEST[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \INSTR|ROM|memROM~7_combout\,
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
	i => \INSTR|ROM|memROM~8_combout\,
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
	i => \INSTR|ROM|ALT_INV_memROM~10_combout\,
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
	i => \INSTR|ROM|memROM~12_combout\,
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
	i => \INSTR|ROM|memROM~14_combout\,
	devoe => ww_devoe,
	o => \DEST[8]~output_o\);

\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

\INSTR|SOMA_CONST|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \INSTR|SOMA_CONST|Add0~1_sumout\ = SUM(( \INSTR|PC|DOUT\(0) ) + ( VCC ) + ( !VCC ))
-- \INSTR|SOMA_CONST|Add0~2\ = CARRY(( \INSTR|PC|DOUT\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \INSTR|PC|ALT_INV_DOUT\(0),
	cin => GND,
	sumout => \INSTR|SOMA_CONST|Add0~1_sumout\,
	cout => \INSTR|SOMA_CONST|Add0~2\);

\INSTR|MUX2|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \INSTR|MUX2|saida_MUX[0]~0_combout\ = (!\LOG_DESVIO|DESV_JUMP~0_combout\ & ((\INSTR|SOMA_CONST|Add0~1_sumout\))) # (\LOG_DESVIO|DESV_JUMP~0_combout\ & (\INSTR|ROM|memROM~7_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR|ROM|ALT_INV_memROM~7_combout\,
	datab => \LOG_DESVIO|ALT_INV_DESV_JUMP~0_combout\,
	datac => \INSTR|SOMA_CONST|ALT_INV_Add0~1_sumout\,
	combout => \INSTR|MUX2|saida_MUX[0]~0_combout\);

\INSTR|PC|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \INSTR|MUX2|saida_MUX[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INSTR|PC|DOUT\(0));

\INSTR|ROM|memROM~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \INSTR|ROM|memROM~11_combout\ = (!\INSTR|PC|DOUT\(1) & ((!\INSTR|PC|DOUT\(0) & (\INSTR|PC|DOUT\(2) & \INSTR|PC|DOUT\(3))) # (\INSTR|PC|DOUT\(0) & (!\INSTR|PC|DOUT\(2) & !\INSTR|PC|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000001000010000000000100001000000000010000100000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR|PC|ALT_INV_DOUT\(0),
	datab => \INSTR|PC|ALT_INV_DOUT\(1),
	datac => \INSTR|PC|ALT_INV_DOUT\(2),
	datad => \INSTR|PC|ALT_INV_DOUT\(3),
	combout => \INSTR|ROM|memROM~11_combout\);

\INSTR|ROM|memROM~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \INSTR|ROM|memROM~12_combout\ = (!\INSTR|PC|DOUT\(8) & (\INSTR|ROM|memROM~5_combout\ & \INSTR|ROM|memROM~11_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR|PC|ALT_INV_DOUT\(8),
	datab => \INSTR|ROM|ALT_INV_memROM~5_combout\,
	datac => \INSTR|ROM|ALT_INV_memROM~11_combout\,
	combout => \INSTR|ROM|memROM~12_combout\);

\INSTR|SOMA_CONST|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \INSTR|SOMA_CONST|Add0~5_sumout\ = SUM(( \INSTR|PC|DOUT\(1) ) + ( GND ) + ( \INSTR|SOMA_CONST|Add0~2\ ))
-- \INSTR|SOMA_CONST|Add0~6\ = CARRY(( \INSTR|PC|DOUT\(1) ) + ( GND ) + ( \INSTR|SOMA_CONST|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \INSTR|PC|ALT_INV_DOUT\(1),
	cin => \INSTR|SOMA_CONST|Add0~2\,
	sumout => \INSTR|SOMA_CONST|Add0~5_sumout\,
	cout => \INSTR|SOMA_CONST|Add0~6\);

\INSTR|SOMA_CONST|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \INSTR|SOMA_CONST|Add0~9_sumout\ = SUM(( \INSTR|PC|DOUT\(2) ) + ( GND ) + ( \INSTR|SOMA_CONST|Add0~6\ ))
-- \INSTR|SOMA_CONST|Add0~10\ = CARRY(( \INSTR|PC|DOUT\(2) ) + ( GND ) + ( \INSTR|SOMA_CONST|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \INSTR|PC|ALT_INV_DOUT\(2),
	cin => \INSTR|SOMA_CONST|Add0~6\,
	sumout => \INSTR|SOMA_CONST|Add0~9_sumout\,
	cout => \INSTR|SOMA_CONST|Add0~10\);

\INSTR|SOMA_CONST|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \INSTR|SOMA_CONST|Add0~13_sumout\ = SUM(( \INSTR|PC|DOUT\(3) ) + ( GND ) + ( \INSTR|SOMA_CONST|Add0~10\ ))
-- \INSTR|SOMA_CONST|Add0~14\ = CARRY(( \INSTR|PC|DOUT\(3) ) + ( GND ) + ( \INSTR|SOMA_CONST|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \INSTR|PC|ALT_INV_DOUT\(3),
	cin => \INSTR|SOMA_CONST|Add0~10\,
	sumout => \INSTR|SOMA_CONST|Add0~13_sumout\,
	cout => \INSTR|SOMA_CONST|Add0~14\);

\INSTR|MUX2|saida_MUX[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \INSTR|MUX2|saida_MUX[3]~3_combout\ = (!\LOG_DESVIO|DESV_JUMP~0_combout\ & ((\INSTR|SOMA_CONST|Add0~13_sumout\))) # (\LOG_DESVIO|DESV_JUMP~0_combout\ & (\INSTR|ROM|memROM~12_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR|ROM|ALT_INV_memROM~12_combout\,
	datab => \LOG_DESVIO|ALT_INV_DESV_JUMP~0_combout\,
	datac => \INSTR|SOMA_CONST|ALT_INV_Add0~13_sumout\,
	combout => \INSTR|MUX2|saida_MUX[3]~3_combout\);

\INSTR|PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \INSTR|MUX2|saida_MUX[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INSTR|PC|DOUT\(3));

\INSTR|SOMA_CONST|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \INSTR|SOMA_CONST|Add0~33_sumout\ = SUM(( \INSTR|PC|DOUT\(4) ) + ( GND ) + ( \INSTR|SOMA_CONST|Add0~14\ ))
-- \INSTR|SOMA_CONST|Add0~34\ = CARRY(( \INSTR|PC|DOUT\(4) ) + ( GND ) + ( \INSTR|SOMA_CONST|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \INSTR|PC|ALT_INV_DOUT\(4),
	cin => \INSTR|SOMA_CONST|Add0~14\,
	sumout => \INSTR|SOMA_CONST|Add0~33_sumout\,
	cout => \INSTR|SOMA_CONST|Add0~34\);

\INSTR|MUX2|saida_MUX[4]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \INSTR|MUX2|saida_MUX[4]~8_combout\ = (!\LOG_DESVIO|DESV_JUMP~0_combout\ & \INSTR|SOMA_CONST|Add0~33_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LOG_DESVIO|ALT_INV_DESV_JUMP~0_combout\,
	datab => \INSTR|SOMA_CONST|ALT_INV_Add0~33_sumout\,
	combout => \INSTR|MUX2|saida_MUX[4]~8_combout\);

\INSTR|PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \INSTR|MUX2|saida_MUX[4]~8_combout\,
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

\INSTR|MUX2|saida_MUX[5]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \INSTR|MUX2|saida_MUX[5]~7_combout\ = (!\LOG_DESVIO|DESV_JUMP~0_combout\ & \INSTR|SOMA_CONST|Add0~29_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LOG_DESVIO|ALT_INV_DESV_JUMP~0_combout\,
	datab => \INSTR|SOMA_CONST|ALT_INV_Add0~29_sumout\,
	combout => \INSTR|MUX2|saida_MUX[5]~7_combout\);

\INSTR|PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \INSTR|MUX2|saida_MUX[5]~7_combout\,
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

\INSTR|MUX2|saida_MUX[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \INSTR|MUX2|saida_MUX[6]~6_combout\ = (!\LOG_DESVIO|DESV_JUMP~0_combout\ & \INSTR|SOMA_CONST|Add0~25_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LOG_DESVIO|ALT_INV_DESV_JUMP~0_combout\,
	datab => \INSTR|SOMA_CONST|ALT_INV_Add0~25_sumout\,
	combout => \INSTR|MUX2|saida_MUX[6]~6_combout\);

\INSTR|PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \INSTR|MUX2|saida_MUX[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INSTR|PC|DOUT\(6));

\INSTR|ROM|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \INSTR|ROM|memROM~5_combout\ = (!\INSTR|PC|DOUT\(7) & (!\INSTR|PC|DOUT\(6) & (!\INSTR|PC|DOUT\(5) & !\INSTR|PC|DOUT\(4))))

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
	combout => \INSTR|ROM|memROM~5_combout\);

\INSTR|ROM|memROM~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \INSTR|ROM|memROM~9_combout\ = (!\INSTR|PC|DOUT\(1) & (!\INSTR|PC|DOUT\(0) $ (((!\INSTR|PC|DOUT\(2) & \INSTR|PC|DOUT\(3))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100001001000100010000100100010001000010010001000100001001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR|PC|ALT_INV_DOUT\(0),
	datab => \INSTR|PC|ALT_INV_DOUT\(1),
	datac => \INSTR|PC|ALT_INV_DOUT\(2),
	datad => \INSTR|PC|ALT_INV_DOUT\(3),
	combout => \INSTR|ROM|memROM~9_combout\);

\INSTR|ROM|memROM~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \INSTR|ROM|memROM~10_combout\ = ((!\INSTR|ROM|memROM~5_combout\) # (!\INSTR|ROM|memROM~9_combout\)) # (\INSTR|PC|DOUT\(8))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110111111101111111011111110111111101111111011111110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR|PC|ALT_INV_DOUT\(8),
	datab => \INSTR|ROM|ALT_INV_memROM~5_combout\,
	datac => \INSTR|ROM|ALT_INV_memROM~9_combout\,
	combout => \INSTR|ROM|memROM~10_combout\);

\INSTR|MUX2|saida_MUX[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \INSTR|MUX2|saida_MUX[2]~2_combout\ = (!\LOG_DESVIO|DESV_JUMP~0_combout\ & ((\INSTR|SOMA_CONST|Add0~9_sumout\))) # (\LOG_DESVIO|DESV_JUMP~0_combout\ & (!\INSTR|ROM|memROM~10_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010111000101110001011100010111000101110001011100010111000101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR|ROM|ALT_INV_memROM~10_combout\,
	datab => \LOG_DESVIO|ALT_INV_DESV_JUMP~0_combout\,
	datac => \INSTR|SOMA_CONST|ALT_INV_Add0~9_sumout\,
	combout => \INSTR|MUX2|saida_MUX[2]~2_combout\);

\INSTR|PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \INSTR|MUX2|saida_MUX[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INSTR|PC|DOUT\(2));

\INSTR|ROM|memROM~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \INSTR|ROM|memROM~8_combout\ = ( \INSTR|ROM|memROM~4_combout\ & ( (\INSTR|PC|DOUT\(0) & (\INSTR|PC|DOUT\(1) & (!\INSTR|PC|DOUT\(2) & \INSTR|PC|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000000000000000000000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR|PC|ALT_INV_DOUT\(0),
	datab => \INSTR|PC|ALT_INV_DOUT\(1),
	datac => \INSTR|PC|ALT_INV_DOUT\(2),
	datad => \INSTR|PC|ALT_INV_DOUT\(3),
	datae => \INSTR|ROM|ALT_INV_memROM~4_combout\,
	combout => \INSTR|ROM|memROM~8_combout\);

\INSTR|MUX2|saida_MUX[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \INSTR|MUX2|saida_MUX[1]~1_combout\ = (!\LOG_DESVIO|DESV_JUMP~0_combout\ & ((\INSTR|SOMA_CONST|Add0~5_sumout\))) # (\LOG_DESVIO|DESV_JUMP~0_combout\ & (\INSTR|ROM|memROM~8_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR|ROM|ALT_INV_memROM~8_combout\,
	datab => \LOG_DESVIO|ALT_INV_DESV_JUMP~0_combout\,
	datac => \INSTR|SOMA_CONST|ALT_INV_Add0~5_sumout\,
	combout => \INSTR|MUX2|saida_MUX[1]~1_combout\);

\INSTR|PC|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \INSTR|MUX2|saida_MUX[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INSTR|PC|DOUT\(1));

\INSTR|ROM|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \INSTR|ROM|memROM~0_combout\ = (!\INSTR|PC|DOUT\(1) & (\INSTR|PC|DOUT\(3) & (!\INSTR|PC|DOUT\(0) $ (\INSTR|PC|DOUT\(2))))) # (\INSTR|PC|DOUT\(1) & ((!\INSTR|PC|DOUT\(0)) # (!\INSTR|PC|DOUT\(2) $ (\INSTR|PC|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001010100111001100101010011100110010101001110011001010100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR|PC|ALT_INV_DOUT\(0),
	datab => \INSTR|PC|ALT_INV_DOUT\(1),
	datac => \INSTR|PC|ALT_INV_DOUT\(2),
	datad => \INSTR|PC|ALT_INV_DOUT\(3),
	combout => \INSTR|ROM|memROM~0_combout\);

\INSTR|ROM|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \INSTR|ROM|memROM~2_combout\ = (!\INSTR|PC|DOUT\(0) & (\INSTR|PC|DOUT\(1) & (!\INSTR|PC|DOUT\(2) $ (!\INSTR|PC|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000100000000000100010000000000010001000000000001000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR|PC|ALT_INV_DOUT\(0),
	datab => \INSTR|PC|ALT_INV_DOUT\(1),
	datac => \INSTR|PC|ALT_INV_DOUT\(2),
	datad => \INSTR|PC|ALT_INV_DOUT\(3),
	combout => \INSTR|ROM|memROM~2_combout\);

\INSTR|ROM|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \INSTR|ROM|memROM~3_combout\ = (!\INSTR|PC|DOUT\(1) & ((!\INSTR|PC|DOUT\(2) & ((!\INSTR|PC|DOUT\(3)))) # (\INSTR|PC|DOUT\(2) & (!\INSTR|PC|DOUT\(0) & \INSTR|PC|DOUT\(3))))) # (\INSTR|PC|DOUT\(1) & (\INSTR|PC|DOUT\(0) & (!\INSTR|PC|DOUT\(2) $ 
-- (!\INSTR|PC|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000100011000110000010001100011000001000110001100000100011000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR|PC|ALT_INV_DOUT\(0),
	datab => \INSTR|PC|ALT_INV_DOUT\(1),
	datac => \INSTR|PC|ALT_INV_DOUT\(2),
	datad => \INSTR|PC|ALT_INV_DOUT\(3),
	combout => \INSTR|ROM|memROM~3_combout\);

\MUX1|saida_MUX[7]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1|saida_MUX[7]~1_combout\ = (((!\INSTR|ROM|memROM~4_combout\) # (\INSTR|ROM|memROM~3_combout\)) # (\INSTR|ROM|memROM~2_combout\)) # (\INSTR|ROM|memROM~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111101111111111111110111111111111111011111111111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR|ROM|ALT_INV_memROM~0_combout\,
	datab => \INSTR|ROM|ALT_INV_memROM~2_combout\,
	datac => \INSTR|ROM|ALT_INV_memROM~3_combout\,
	datad => \INSTR|ROM|ALT_INV_memROM~4_combout\,
	combout => \MUX1|saida_MUX[7]~1_combout\);

\INSTR|ROM|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \INSTR|ROM|memROM~1_combout\ = (\INSTR|PC|DOUT\(0) & ((!\INSTR|PC|DOUT\(1) & ((!\INSTR|PC|DOUT\(3)))) # (\INSTR|PC|DOUT\(1) & (!\INSTR|PC|DOUT\(2) & \INSTR|PC|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000010000010001000001000001000100000100000100010000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR|PC|ALT_INV_DOUT\(0),
	datab => \INSTR|PC|ALT_INV_DOUT\(1),
	datac => \INSTR|PC|ALT_INV_DOUT\(2),
	datad => \INSTR|PC|ALT_INV_DOUT\(3),
	combout => \INSTR|ROM|memROM~1_combout\);

\INSTR|ROM|memROM~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \INSTR|ROM|memROM~15_combout\ = (\INSTR|ROM|memROM~1_combout\ & (!\INSTR|PC|DOUT\(8) & \INSTR|ROM|memROM~5_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR|ROM|ALT_INV_memROM~1_combout\,
	datab => \INSTR|PC|ALT_INV_DOUT\(8),
	datac => \INSTR|ROM|ALT_INV_memROM~5_combout\,
	combout => \INSTR|ROM|memROM~15_combout\);

\DECODER|OP_ULA[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER|OP_ULA[1]~0_combout\ = ( \INSTR|ROM|memROM~15_combout\ & ( (!\INSTR|ROM|memROM~4_combout\) # ((\INSTR|ROM|memROM~0_combout\ & (!\INSTR|ROM|memROM~2_combout\ & !\INSTR|ROM|memROM~3_combout\))) ) ) # ( !\INSTR|ROM|memROM~15_combout\ & ( 
-- (!\INSTR|ROM|memROM~0_combout\ & (!\INSTR|ROM|memROM~2_combout\ & (!\INSTR|ROM|memROM~3_combout\ & \INSTR|ROM|memROM~4_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000111111110100000000000000100000001111111101000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR|ROM|ALT_INV_memROM~0_combout\,
	datab => \INSTR|ROM|ALT_INV_memROM~2_combout\,
	datac => \INSTR|ROM|ALT_INV_memROM~3_combout\,
	datad => \INSTR|ROM|ALT_INV_memROM~4_combout\,
	datae => \INSTR|ROM|ALT_INV_memROM~15_combout\,
	combout => \DECODER|OP_ULA[1]~0_combout\);

\MUX1|saida_MUX[7]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1|saida_MUX[7]~0_combout\ = ( \INSTR|PC|DOUT\(8) & ( \INSTR|ROM|memROM~5_combout\ ) ) # ( !\INSTR|PC|DOUT\(8) & ( \INSTR|ROM|memROM~5_combout\ & ( (((\INSTR|ROM|memROM~3_combout\) # (\INSTR|ROM|memROM~2_combout\)) # (\INSTR|ROM|memROM~1_combout\)) # 
-- (\INSTR|ROM|memROM~0_combout\) ) ) ) # ( \INSTR|PC|DOUT\(8) & ( !\INSTR|ROM|memROM~5_combout\ ) ) # ( !\INSTR|PC|DOUT\(8) & ( !\INSTR|ROM|memROM~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111101111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR|ROM|ALT_INV_memROM~0_combout\,
	datab => \INSTR|ROM|ALT_INV_memROM~1_combout\,
	datac => \INSTR|ROM|ALT_INV_memROM~2_combout\,
	datad => \INSTR|ROM|ALT_INV_memROM~3_combout\,
	datae => \INSTR|PC|ALT_INV_DOUT\(8),
	dataf => \INSTR|ROM|ALT_INV_memROM~5_combout\,
	combout => \MUX1|saida_MUX[7]~0_combout\);

\ULA1|saida[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[4]~4_combout\ = (!\DECODER|OP_ULA[1]~0_combout\ & (((\ULA1|Add1~17_sumout\)))) # (\DECODER|OP_ULA[1]~0_combout\ & (\MUX1|saida_MUX[7]~0_combout\ & (\MDADOS|ram~154_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110101011000000011010101100000001101010110000000110101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER|ALT_INV_OP_ULA[1]~0_combout\,
	datab => \MUX1|ALT_INV_saida_MUX[7]~0_combout\,
	datac => \MDADOS|ALT_INV_ram~154_combout\,
	datad => \ULA1|ALT_INV_Add1~17_sumout\,
	combout => \ULA1|saida[4]~4_combout\);

\DECODER|HAB_A~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER|HAB_A~0_combout\ = ( \INSTR|ROM|memROM~15_combout\ & ( (!\INSTR|ROM|memROM~4_combout\) # ((\INSTR|ROM|memROM~0_combout\ & !\INSTR|ROM|memROM~2_combout\)) ) ) # ( !\INSTR|ROM|memROM~15_combout\ & ( (!\INSTR|ROM|memROM~2_combout\ & 
-- (\INSTR|ROM|memROM~4_combout\ & (!\INSTR|ROM|memROM~0_combout\ $ (\INSTR|ROM|memROM~3_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000100111111110100010000000000100001001111111101000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR|ROM|ALT_INV_memROM~0_combout\,
	datab => \INSTR|ROM|ALT_INV_memROM~2_combout\,
	datac => \INSTR|ROM|ALT_INV_memROM~3_combout\,
	datad => \INSTR|ROM|ALT_INV_memROM~4_combout\,
	datae => \INSTR|ROM|ALT_INV_memROM~15_combout\,
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

\INSTR|ROM|memROM~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \INSTR|ROM|memROM~13_combout\ = (!\INSTR|PC|DOUT\(0) & (\INSTR|PC|DOUT\(1) & (!\INSTR|PC|DOUT\(2) $ (!\INSTR|PC|DOUT\(3))))) # (\INSTR|PC|DOUT\(0) & (!\INSTR|PC|DOUT\(1) & (\INSTR|PC|DOUT\(2) & !\INSTR|PC|DOUT\(3))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000100000000001100010000000000110001000000000011000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR|PC|ALT_INV_DOUT\(0),
	datab => \INSTR|PC|ALT_INV_DOUT\(1),
	datac => \INSTR|PC|ALT_INV_DOUT\(2),
	datad => \INSTR|PC|ALT_INV_DOUT\(3),
	combout => \INSTR|ROM|memROM~13_combout\);

\MDADOS|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MDADOS|process_0~0_combout\ = ( \INSTR|ROM|memROM~13_combout\ & ( (!\INSTR|ROM|memROM~0_combout\ & (!\INSTR|ROM|memROM~2_combout\ & (!\INSTR|ROM|memROM~3_combout\ & \INSTR|ROM|memROM~4_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001000000000000000000000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR|ROM|ALT_INV_memROM~0_combout\,
	datab => \INSTR|ROM|ALT_INV_memROM~2_combout\,
	datac => \INSTR|ROM|ALT_INV_memROM~3_combout\,
	datad => \INSTR|ROM|ALT_INV_memROM~4_combout\,
	datae => \INSTR|ROM|ALT_INV_memROM~13_combout\,
	combout => \MDADOS|process_0~0_combout\);

\MDADOS|ram~161\ : cyclonev_lcell_comb
-- Equation(s):
-- \MDADOS|ram~161_combout\ = ( !\INSTR|ROM|memROM~8_combout\ & ( \MDADOS|process_0~0_combout\ & ( (!\INSTR|ROM|memROM~7_combout\ & (\INSTR|ROM|memROM~10_combout\ & (!\INSTR|ROM|memROM~12_combout\ & \INSTR|ROM|memROM~15_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR|ROM|ALT_INV_memROM~7_combout\,
	datab => \INSTR|ROM|ALT_INV_memROM~10_combout\,
	datac => \INSTR|ROM|ALT_INV_memROM~12_combout\,
	datad => \INSTR|ROM|ALT_INV_memROM~15_combout\,
	datae => \INSTR|ROM|ALT_INV_memROM~8_combout\,
	dataf => \MDADOS|ALT_INV_process_0~0_combout\,
	combout => \MDADOS|ram~161_combout\);

\MDADOS|ram~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(4),
	ena => \MDADOS|ram~161_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDADOS|ram~21_q\);

\MDADOS|ram~153\ : cyclonev_lcell_comb
-- Equation(s):
-- \MDADOS|ram~153_combout\ = ( !\INSTR|ROM|memROM~7_combout\ & ( !\INSTR|ROM|memROM~8_combout\ & ( \MDADOS|ram~21_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MDADOS|ALT_INV_ram~21_q\,
	datae => \INSTR|ROM|ALT_INV_memROM~7_combout\,
	dataf => \INSTR|ROM|ALT_INV_memROM~8_combout\,
	combout => \MDADOS|ram~153_combout\);

\MDADOS|ram~154\ : cyclonev_lcell_comb
-- Equation(s):
-- \MDADOS|ram~154_combout\ = ( \INSTR|ROM|memROM~10_combout\ & ( !\INSTR|ROM|memROM~12_combout\ & ( \MDADOS|ram~153_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \MDADOS|ALT_INV_ram~153_combout\,
	datae => \INSTR|ROM|ALT_INV_memROM~10_combout\,
	dataf => \INSTR|ROM|ALT_INV_memROM~12_combout\,
	combout => \MDADOS|ram~154_combout\);

\MDADOS|ram~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(0),
	ena => \MDADOS|ram~161_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDADOS|ram~17_q\);

\MDADOS|ram~145\ : cyclonev_lcell_comb
-- Equation(s):
-- \MDADOS|ram~145_combout\ = ( !\INSTR|ROM|memROM~7_combout\ & ( !\INSTR|ROM|memROM~8_combout\ & ( \MDADOS|ram~17_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MDADOS|ALT_INV_ram~17_q\,
	datae => \INSTR|ROM|ALT_INV_memROM~7_combout\,
	dataf => \INSTR|ROM|ALT_INV_memROM~8_combout\,
	combout => \MDADOS|ram~145_combout\);

\MDADOS|ram~146\ : cyclonev_lcell_comb
-- Equation(s):
-- \MDADOS|ram~146_combout\ = ( \INSTR|ROM|memROM~10_combout\ & ( !\INSTR|ROM|memROM~12_combout\ & ( \MDADOS|ram~145_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \MDADOS|ALT_INV_ram~145_combout\,
	datae => \INSTR|ROM|ALT_INV_memROM~10_combout\,
	dataf => \INSTR|ROM|ALT_INV_memROM~12_combout\,
	combout => \MDADOS|ram~146_combout\);

\INSTR|ROM|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \INSTR|ROM|memROM~6_combout\ = (!\INSTR|PC|DOUT\(1) & (!\INSTR|PC|DOUT\(3) & (!\INSTR|PC|DOUT\(0) $ (!\INSTR|PC|DOUT\(2))))) # (\INSTR|PC|DOUT\(1) & (\INSTR|PC|DOUT\(0) & (!\INSTR|PC|DOUT\(2) $ (!\INSTR|PC|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100010000010010010001000001001001000100000100100100010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR|PC|ALT_INV_DOUT\(0),
	datab => \INSTR|PC|ALT_INV_DOUT\(1),
	datac => \INSTR|PC|ALT_INV_DOUT\(2),
	datad => \INSTR|PC|ALT_INV_DOUT\(3),
	combout => \INSTR|ROM|memROM~6_combout\);

\INSTR|ROM|memROM~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \INSTR|ROM|memROM~16_combout\ = (\INSTR|ROM|memROM~5_combout\ & \INSTR|ROM|memROM~6_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR|ROM|ALT_INV_memROM~5_combout\,
	datab => \INSTR|ROM|ALT_INV_memROM~6_combout\,
	combout => \INSTR|ROM|memROM~16_combout\);

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
-- \ULA1|Add1~1_sumout\ = SUM(( (!\MUX1|saida_MUX[7]~0_combout\ & (((!\INSTR|ROM|memROM~16_combout\)) # (\INSTR|PC|DOUT\(8)))) # (\MUX1|saida_MUX[7]~0_combout\ & (((!\MDADOS|ram~146_combout\)))) ) + ( \REG_A|DOUT\(0) ) + ( \ULA1|Add1~34_cout\ ))
-- \ULA1|Add1~2\ = CARRY(( (!\MUX1|saida_MUX[7]~0_combout\ & (((!\INSTR|ROM|memROM~16_combout\)) # (\INSTR|PC|DOUT\(8)))) # (\MUX1|saida_MUX[7]~0_combout\ & (((!\MDADOS|ram~146_combout\)))) ) + ( \REG_A|DOUT\(0) ) + ( \ULA1|Add1~34_cout\ ))

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
	datad => \INSTR|ROM|ALT_INV_memROM~16_combout\,
	dataf => \REG_A|ALT_INV_DOUT\(0),
	cin => \ULA1|Add1~34_cout\,
	sumout => \ULA1|Add1~1_sumout\,
	cout => \ULA1|Add1~2\);

\ULA1|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add1~5_sumout\ = SUM(( (!\MUX1|saida_MUX[7]~1_combout\ & ((!\INSTR|ROM|memROM~15_combout\ & (!\INSTR|ROM|memROM~8_combout\)) # (\INSTR|ROM|memROM~15_combout\ & ((!\MDADOS|ram~148_combout\))))) # (\MUX1|saida_MUX[7]~1_combout\ & 
-- (((!\MDADOS|ram~148_combout\)))) ) + ( \REG_A|DOUT\(1) ) + ( \ULA1|Add1~2\ ))
-- \ULA1|Add1~6\ = CARRY(( (!\MUX1|saida_MUX[7]~1_combout\ & ((!\INSTR|ROM|memROM~15_combout\ & (!\INSTR|ROM|memROM~8_combout\)) # (\INSTR|ROM|memROM~15_combout\ & ((!\MDADOS|ram~148_combout\))))) # (\MUX1|saida_MUX[7]~1_combout\ & 
-- (((!\MDADOS|ram~148_combout\)))) ) + ( \REG_A|DOUT\(1) ) + ( \ULA1|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111011110000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX1|ALT_INV_saida_MUX[7]~1_combout\,
	datab => \INSTR|ROM|ALT_INV_memROM~15_combout\,
	datac => \INSTR|ROM|ALT_INV_memROM~8_combout\,
	datad => \MDADOS|ALT_INV_ram~148_combout\,
	dataf => \REG_A|ALT_INV_DOUT\(1),
	cin => \ULA1|Add1~2\,
	sumout => \ULA1|Add1~5_sumout\,
	cout => \ULA1|Add1~6\);

\ULA1|saida[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[1]~1_combout\ = ( \ULA1|Add1~5_sumout\ & ( (!\DECODER|OP_ULA[1]~0_combout\) # ((!\MUX1|saida_MUX[7]~0_combout\ & (\INSTR|ROM|memROM~8_combout\)) # (\MUX1|saida_MUX[7]~0_combout\ & ((\MDADOS|ram~148_combout\)))) ) ) # ( !\ULA1|Add1~5_sumout\ & 
-- ( (\DECODER|OP_ULA[1]~0_combout\ & ((!\MUX1|saida_MUX[7]~0_combout\ & (\INSTR|ROM|memROM~8_combout\)) # (\MUX1|saida_MUX[7]~0_combout\ & ((\MDADOS|ram~148_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010011110111001101111100010000000100111101110011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR|ROM|ALT_INV_memROM~8_combout\,
	datab => \DECODER|ALT_INV_OP_ULA[1]~0_combout\,
	datac => \MUX1|ALT_INV_saida_MUX[7]~0_combout\,
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
	ena => \MDADOS|ram~161_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDADOS|ram~18_q\);

\MDADOS|ram~147\ : cyclonev_lcell_comb
-- Equation(s):
-- \MDADOS|ram~147_combout\ = ( \INSTR|ROM|memROM~10_combout\ & ( !\INSTR|ROM|memROM~12_combout\ & ( \MDADOS|ram~18_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \MDADOS|ALT_INV_ram~18_q\,
	datae => \INSTR|ROM|ALT_INV_memROM~10_combout\,
	dataf => \INSTR|ROM|ALT_INV_memROM~12_combout\,
	combout => \MDADOS|ram~147_combout\);

\MDADOS|ram~148\ : cyclonev_lcell_comb
-- Equation(s):
-- \MDADOS|ram~148_combout\ = ( !\INSTR|ROM|memROM~7_combout\ & ( !\INSTR|ROM|memROM~8_combout\ & ( \MDADOS|ram~147_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MDADOS|ALT_INV_ram~147_combout\,
	datae => \INSTR|ROM|ALT_INV_memROM~7_combout\,
	dataf => \INSTR|ROM|ALT_INV_memROM~8_combout\,
	combout => \MDADOS|ram~148_combout\);

\ULA1|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add1~9_sumout\ = SUM(( (!\MUX1|saida_MUX[7]~1_combout\ & ((!\INSTR|ROM|memROM~15_combout\ & (\INSTR|ROM|memROM~10_combout\)) # (\INSTR|ROM|memROM~15_combout\ & ((!\MDADOS|ram~150_combout\))))) # (\MUX1|saida_MUX[7]~1_combout\ & 
-- (((!\MDADOS|ram~150_combout\)))) ) + ( \REG_A|DOUT\(2) ) + ( \ULA1|Add1~6\ ))
-- \ULA1|Add1~10\ = CARRY(( (!\MUX1|saida_MUX[7]~1_combout\ & ((!\INSTR|ROM|memROM~15_combout\ & (\INSTR|ROM|memROM~10_combout\)) # (\INSTR|ROM|memROM~15_combout\ & ((!\MDADOS|ram~150_combout\))))) # (\MUX1|saida_MUX[7]~1_combout\ & 
-- (((!\MDADOS|ram~150_combout\)))) ) + ( \REG_A|DOUT\(2) ) + ( \ULA1|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000111111100001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX1|ALT_INV_saida_MUX[7]~1_combout\,
	datab => \INSTR|ROM|ALT_INV_memROM~15_combout\,
	datac => \INSTR|ROM|ALT_INV_memROM~10_combout\,
	datad => \MDADOS|ALT_INV_ram~150_combout\,
	dataf => \REG_A|ALT_INV_DOUT\(2),
	cin => \ULA1|Add1~6\,
	sumout => \ULA1|Add1~9_sumout\,
	cout => \ULA1|Add1~10\);

\ULA1|saida[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[2]~2_combout\ = ( \ULA1|Add1~9_sumout\ & ( (!\DECODER|OP_ULA[1]~0_combout\) # ((!\MUX1|saida_MUX[7]~0_combout\ & (!\INSTR|ROM|memROM~10_combout\)) # (\MUX1|saida_MUX[7]~0_combout\ & ((\MDADOS|ram~150_combout\)))) ) ) # ( !\ULA1|Add1~9_sumout\ 
-- & ( (\DECODER|OP_ULA[1]~0_combout\ & ((!\MUX1|saida_MUX[7]~0_combout\ & (!\INSTR|ROM|memROM~10_combout\)) # (\MUX1|saida_MUX[7]~0_combout\ & ((\MDADOS|ram~150_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100011111011001110111100100000001000111110110011101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR|ROM|ALT_INV_memROM~10_combout\,
	datab => \DECODER|ALT_INV_OP_ULA[1]~0_combout\,
	datac => \MUX1|ALT_INV_saida_MUX[7]~0_combout\,
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
	ena => \MDADOS|ram~161_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDADOS|ram~19_q\);

\MDADOS|ram~149\ : cyclonev_lcell_comb
-- Equation(s):
-- \MDADOS|ram~149_combout\ = ( !\INSTR|ROM|memROM~7_combout\ & ( !\INSTR|ROM|memROM~8_combout\ & ( \MDADOS|ram~19_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MDADOS|ALT_INV_ram~19_q\,
	datae => \INSTR|ROM|ALT_INV_memROM~7_combout\,
	dataf => \INSTR|ROM|ALT_INV_memROM~8_combout\,
	combout => \MDADOS|ram~149_combout\);

\MDADOS|ram~150\ : cyclonev_lcell_comb
-- Equation(s):
-- \MDADOS|ram~150_combout\ = ( \INSTR|ROM|memROM~10_combout\ & ( !\INSTR|ROM|memROM~12_combout\ & ( \MDADOS|ram~149_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \MDADOS|ALT_INV_ram~149_combout\,
	datae => \INSTR|ROM|ALT_INV_memROM~10_combout\,
	dataf => \INSTR|ROM|ALT_INV_memROM~12_combout\,
	combout => \MDADOS|ram~150_combout\);

\ULA1|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add1~13_sumout\ = SUM(( (!\MUX1|saida_MUX[7]~1_combout\ & ((!\INSTR|ROM|memROM~15_combout\ & (!\INSTR|ROM|memROM~12_combout\)) # (\INSTR|ROM|memROM~15_combout\ & ((!\MDADOS|ram~152_combout\))))) # (\MUX1|saida_MUX[7]~1_combout\ & 
-- (((!\MDADOS|ram~152_combout\)))) ) + ( \REG_A|DOUT\(3) ) + ( \ULA1|Add1~10\ ))
-- \ULA1|Add1~14\ = CARRY(( (!\MUX1|saida_MUX[7]~1_combout\ & ((!\INSTR|ROM|memROM~15_combout\ & (!\INSTR|ROM|memROM~12_combout\)) # (\INSTR|ROM|memROM~15_combout\ & ((!\MDADOS|ram~152_combout\))))) # (\MUX1|saida_MUX[7]~1_combout\ & 
-- (((!\MDADOS|ram~152_combout\)))) ) + ( \REG_A|DOUT\(3) ) + ( \ULA1|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111011110000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX1|ALT_INV_saida_MUX[7]~1_combout\,
	datab => \INSTR|ROM|ALT_INV_memROM~15_combout\,
	datac => \INSTR|ROM|ALT_INV_memROM~12_combout\,
	datad => \MDADOS|ALT_INV_ram~152_combout\,
	dataf => \REG_A|ALT_INV_DOUT\(3),
	cin => \ULA1|Add1~10\,
	sumout => \ULA1|Add1~13_sumout\,
	cout => \ULA1|Add1~14\);

\ULA1|saida[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[3]~3_combout\ = ( \ULA1|Add1~13_sumout\ & ( (!\DECODER|OP_ULA[1]~0_combout\) # ((!\MUX1|saida_MUX[7]~0_combout\ & (\INSTR|ROM|memROM~12_combout\)) # (\MUX1|saida_MUX[7]~0_combout\ & ((\MDADOS|ram~152_combout\)))) ) ) # ( !\ULA1|Add1~13_sumout\ 
-- & ( (\DECODER|OP_ULA[1]~0_combout\ & ((!\MUX1|saida_MUX[7]~0_combout\ & (\INSTR|ROM|memROM~12_combout\)) # (\MUX1|saida_MUX[7]~0_combout\ & ((\MDADOS|ram~152_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010011110111001101111100010000000100111101110011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR|ROM|ALT_INV_memROM~12_combout\,
	datab => \DECODER|ALT_INV_OP_ULA[1]~0_combout\,
	datac => \MUX1|ALT_INV_saida_MUX[7]~0_combout\,
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
	ena => \MDADOS|ram~161_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDADOS|ram~20_q\);

\MDADOS|ram~151\ : cyclonev_lcell_comb
-- Equation(s):
-- \MDADOS|ram~151_combout\ = ( \INSTR|ROM|memROM~10_combout\ & ( !\INSTR|ROM|memROM~12_combout\ & ( \MDADOS|ram~20_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \MDADOS|ALT_INV_ram~20_q\,
	datae => \INSTR|ROM|ALT_INV_memROM~10_combout\,
	dataf => \INSTR|ROM|ALT_INV_memROM~12_combout\,
	combout => \MDADOS|ram~151_combout\);

\MDADOS|ram~152\ : cyclonev_lcell_comb
-- Equation(s):
-- \MDADOS|ram~152_combout\ = ( !\INSTR|ROM|memROM~7_combout\ & ( !\INSTR|ROM|memROM~8_combout\ & ( \MDADOS|ram~151_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MDADOS|ALT_INV_ram~151_combout\,
	datae => \INSTR|ROM|ALT_INV_memROM~7_combout\,
	dataf => \INSTR|ROM|ALT_INV_memROM~8_combout\,
	combout => \MDADOS|ram~152_combout\);

\ULA1|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add1~17_sumout\ = SUM(( (!\MDADOS|ram~154_combout\) # ((!\MUX1|saida_MUX[7]~1_combout\ & !\INSTR|ROM|memROM~15_combout\)) ) + ( \REG_A|DOUT\(4) ) + ( \ULA1|Add1~14\ ))
-- \ULA1|Add1~18\ = CARRY(( (!\MDADOS|ram~154_combout\) # ((!\MUX1|saida_MUX[7]~1_combout\ & !\INSTR|ROM|memROM~15_combout\)) ) + ( \REG_A|DOUT\(4) ) + ( \ULA1|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111110001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX1|ALT_INV_saida_MUX[7]~1_combout\,
	datab => \INSTR|ROM|ALT_INV_memROM~15_combout\,
	datad => \MDADOS|ALT_INV_ram~154_combout\,
	dataf => \REG_A|ALT_INV_DOUT\(4),
	cin => \ULA1|Add1~14\,
	sumout => \ULA1|Add1~17_sumout\,
	cout => \ULA1|Add1~18\);

\INSTR|ROM|memROM~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \INSTR|ROM|memROM~17_combout\ = (\INSTR|ROM|memROM~1_combout\ & \INSTR|ROM|memROM~5_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR|ROM|ALT_INV_memROM~1_combout\,
	datab => \INSTR|ROM|ALT_INV_memROM~5_combout\,
	combout => \INSTR|ROM|memROM~17_combout\);

\ULA1|saida[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[5]~5_combout\ = (!\DECODER|OP_ULA[1]~0_combout\ & (((\ULA1|Add1~21_sumout\)))) # (\DECODER|OP_ULA[1]~0_combout\ & (\MUX1|saida_MUX[7]~0_combout\ & (\MDADOS|ram~156_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110101011000000011010101100000001101010110000000110101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER|ALT_INV_OP_ULA[1]~0_combout\,
	datab => \MUX1|ALT_INV_saida_MUX[7]~0_combout\,
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
	ena => \MDADOS|ram~161_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDADOS|ram~22_q\);

\MDADOS|ram~155\ : cyclonev_lcell_comb
-- Equation(s):
-- \MDADOS|ram~155_combout\ = ( \INSTR|ROM|memROM~10_combout\ & ( !\INSTR|ROM|memROM~12_combout\ & ( \MDADOS|ram~22_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \MDADOS|ALT_INV_ram~22_q\,
	datae => \INSTR|ROM|ALT_INV_memROM~10_combout\,
	dataf => \INSTR|ROM|ALT_INV_memROM~12_combout\,
	combout => \MDADOS|ram~155_combout\);

\MDADOS|ram~156\ : cyclonev_lcell_comb
-- Equation(s):
-- \MDADOS|ram~156_combout\ = ( !\INSTR|ROM|memROM~7_combout\ & ( !\INSTR|ROM|memROM~8_combout\ & ( \MDADOS|ram~155_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MDADOS|ALT_INV_ram~155_combout\,
	datae => \INSTR|ROM|ALT_INV_memROM~7_combout\,
	dataf => \INSTR|ROM|ALT_INV_memROM~8_combout\,
	combout => \MDADOS|ram~156_combout\);

\ULA1|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add1~21_sumout\ = SUM(( (!\MDADOS|ram~156_combout\) # ((!\MUX1|saida_MUX[7]~1_combout\ & ((!\INSTR|ROM|memROM~17_combout\) # (\INSTR|PC|DOUT\(8))))) ) + ( \REG_A|DOUT\(5) ) + ( \ULA1|Add1~18\ ))
-- \ULA1|Add1~22\ = CARRY(( (!\MDADOS|ram~156_combout\) # ((!\MUX1|saida_MUX[7]~1_combout\ & ((!\INSTR|ROM|memROM~17_combout\) # (\INSTR|PC|DOUT\(8))))) ) + ( \REG_A|DOUT\(5) ) + ( \ULA1|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111110100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX1|ALT_INV_saida_MUX[7]~1_combout\,
	datab => \INSTR|PC|ALT_INV_DOUT\(8),
	datac => \INSTR|ROM|ALT_INV_memROM~17_combout\,
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
	lut_mask => "0000000110101011000000011010101100000001101010110000000110101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER|ALT_INV_OP_ULA[1]~0_combout\,
	datab => \MUX1|ALT_INV_saida_MUX[7]~0_combout\,
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
	ena => \MDADOS|ram~161_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDADOS|ram~23_q\);

\MDADOS|ram~157\ : cyclonev_lcell_comb
-- Equation(s):
-- \MDADOS|ram~157_combout\ = ( !\INSTR|ROM|memROM~7_combout\ & ( !\INSTR|ROM|memROM~8_combout\ & ( \MDADOS|ram~23_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MDADOS|ALT_INV_ram~23_q\,
	datae => \INSTR|ROM|ALT_INV_memROM~7_combout\,
	dataf => \INSTR|ROM|ALT_INV_memROM~8_combout\,
	combout => \MDADOS|ram~157_combout\);

\MDADOS|ram~158\ : cyclonev_lcell_comb
-- Equation(s):
-- \MDADOS|ram~158_combout\ = ( \INSTR|ROM|memROM~10_combout\ & ( !\INSTR|ROM|memROM~12_combout\ & ( \MDADOS|ram~157_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \MDADOS|ALT_INV_ram~157_combout\,
	datae => \INSTR|ROM|ALT_INV_memROM~10_combout\,
	dataf => \INSTR|ROM|ALT_INV_memROM~12_combout\,
	combout => \MDADOS|ram~158_combout\);

\ULA1|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add1~25_sumout\ = SUM(( (!\MDADOS|ram~158_combout\) # ((!\MUX1|saida_MUX[7]~1_combout\ & ((!\INSTR|ROM|memROM~17_combout\) # (\INSTR|PC|DOUT\(8))))) ) + ( \REG_A|DOUT\(6) ) + ( \ULA1|Add1~22\ ))
-- \ULA1|Add1~26\ = CARRY(( (!\MDADOS|ram~158_combout\) # ((!\MUX1|saida_MUX[7]~1_combout\ & ((!\INSTR|ROM|memROM~17_combout\) # (\INSTR|PC|DOUT\(8))))) ) + ( \REG_A|DOUT\(6) ) + ( \ULA1|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111110100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX1|ALT_INV_saida_MUX[7]~1_combout\,
	datab => \INSTR|PC|ALT_INV_DOUT\(8),
	datac => \INSTR|ROM|ALT_INV_memROM~17_combout\,
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
	lut_mask => "0000000110101011000000011010101100000001101010110000000110101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER|ALT_INV_OP_ULA[1]~0_combout\,
	datab => \MUX1|ALT_INV_saida_MUX[7]~0_combout\,
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
	ena => \MDADOS|ram~161_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDADOS|ram~24_q\);

\MDADOS|ram~159\ : cyclonev_lcell_comb
-- Equation(s):
-- \MDADOS|ram~159_combout\ = ( \INSTR|ROM|memROM~10_combout\ & ( !\INSTR|ROM|memROM~12_combout\ & ( \MDADOS|ram~24_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \MDADOS|ALT_INV_ram~24_q\,
	datae => \INSTR|ROM|ALT_INV_memROM~10_combout\,
	dataf => \INSTR|ROM|ALT_INV_memROM~12_combout\,
	combout => \MDADOS|ram~159_combout\);

\MDADOS|ram~160\ : cyclonev_lcell_comb
-- Equation(s):
-- \MDADOS|ram~160_combout\ = ( !\INSTR|ROM|memROM~7_combout\ & ( !\INSTR|ROM|memROM~8_combout\ & ( \MDADOS|ram~159_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MDADOS|ALT_INV_ram~159_combout\,
	datae => \INSTR|ROM|ALT_INV_memROM~7_combout\,
	dataf => \INSTR|ROM|ALT_INV_memROM~8_combout\,
	combout => \MDADOS|ram~160_combout\);

\ULA1|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add1~29_sumout\ = SUM(( (!\MDADOS|ram~160_combout\) # ((!\MUX1|saida_MUX[7]~1_combout\ & ((!\INSTR|ROM|memROM~17_combout\) # (\INSTR|PC|DOUT\(8))))) ) + ( \REG_A|DOUT\(7) ) + ( \ULA1|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111110100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX1|ALT_INV_saida_MUX[7]~1_combout\,
	datab => \INSTR|PC|ALT_INV_DOUT\(8),
	datac => \INSTR|ROM|ALT_INV_memROM~17_combout\,
	datad => \MDADOS|ALT_INV_ram~160_combout\,
	dataf => \REG_A|ALT_INV_DOUT\(7),
	cin => \ULA1|Add1~26\,
	sumout => \ULA1|Add1~29_sumout\);

\FLAG|DOUT~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \FLAG|DOUT~1_combout\ = ( !\INSTR|ROM|memROM~15_combout\ & ( (\INSTR|ROM|memROM~0_combout\ & (\INSTR|ROM|memROM~2_combout\ & (!\INSTR|ROM|memROM~3_combout\ & \INSTR|ROM|memROM~4_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000000000000000000000100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR|ROM|ALT_INV_memROM~0_combout\,
	datab => \INSTR|ROM|ALT_INV_memROM~2_combout\,
	datac => \INSTR|ROM|ALT_INV_memROM~3_combout\,
	datad => \INSTR|ROM|ALT_INV_memROM~4_combout\,
	datae => \INSTR|ROM|ALT_INV_memROM~15_combout\,
	combout => \FLAG|DOUT~1_combout\);

\FLAG|DOUT~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \FLAG|DOUT~2_combout\ = ( \FLAG|DOUT~q\ & ( \FLAG|DOUT~1_combout\ & ( (!\ULA1|Add1~1_sumout\ & (!\ULA1|Add1~5_sumout\ & (!\ULA1|Add1~9_sumout\ & !\ULA1|Add1~13_sumout\))) ) ) ) # ( !\FLAG|DOUT~q\ & ( \FLAG|DOUT~1_combout\ & ( (!\ULA1|Add1~1_sumout\ & 
-- (!\ULA1|Add1~5_sumout\ & (!\ULA1|Add1~9_sumout\ & !\ULA1|Add1~13_sumout\))) ) ) ) # ( \FLAG|DOUT~q\ & ( !\FLAG|DOUT~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111110000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_Add1~1_sumout\,
	datab => \ULA1|ALT_INV_Add1~5_sumout\,
	datac => \ULA1|ALT_INV_Add1~9_sumout\,
	datad => \ULA1|ALT_INV_Add1~13_sumout\,
	datae => \FLAG|ALT_INV_DOUT~q\,
	dataf => \FLAG|ALT_INV_DOUT~1_combout\,
	combout => \FLAG|DOUT~2_combout\);

\FLAG|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FLAG|DOUT~0_combout\ = ( \FLAG|DOUT~1_combout\ & ( \FLAG|DOUT~2_combout\ & ( (!\ULA1|Add1~17_sumout\ & (!\ULA1|Add1~21_sumout\ & (!\ULA1|Add1~25_sumout\ & !\ULA1|Add1~29_sumout\))) ) ) ) # ( !\FLAG|DOUT~1_combout\ & ( \FLAG|DOUT~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_Add1~17_sumout\,
	datab => \ULA1|ALT_INV_Add1~21_sumout\,
	datac => \ULA1|ALT_INV_Add1~25_sumout\,
	datad => \ULA1|ALT_INV_Add1~29_sumout\,
	datae => \FLAG|ALT_INV_DOUT~1_combout\,
	dataf => \FLAG|ALT_INV_DOUT~2_combout\,
	combout => \FLAG|DOUT~0_combout\);

\FLAG|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FLAG|DOUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FLAG|DOUT~q\);

\LOG_DESVIO|DESV_JUMP~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LOG_DESVIO|DESV_JUMP~0_combout\ = ( \INSTR|ROM|memROM~3_combout\ & ( \INSTR|ROM|memROM~4_combout\ & ( (!\INSTR|ROM|memROM~0_combout\ & (!\INSTR|ROM|memROM~2_combout\ & ((!\INSTR|ROM|memROM~1_combout\) # (\FLAG|DOUT~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001010001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR|ROM|ALT_INV_memROM~0_combout\,
	datab => \FLAG|ALT_INV_DOUT~q\,
	datac => \INSTR|ROM|ALT_INV_memROM~1_combout\,
	datad => \INSTR|ROM|ALT_INV_memROM~2_combout\,
	datae => \INSTR|ROM|ALT_INV_memROM~3_combout\,
	dataf => \INSTR|ROM|ALT_INV_memROM~4_combout\,
	combout => \LOG_DESVIO|DESV_JUMP~0_combout\);

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

\INSTR|MUX2|saida_MUX[7]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \INSTR|MUX2|saida_MUX[7]~5_combout\ = (!\LOG_DESVIO|DESV_JUMP~0_combout\ & \INSTR|SOMA_CONST|Add0~21_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LOG_DESVIO|ALT_INV_DESV_JUMP~0_combout\,
	datab => \INSTR|SOMA_CONST|ALT_INV_Add0~21_sumout\,
	combout => \INSTR|MUX2|saida_MUX[7]~5_combout\);

\INSTR|PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \INSTR|MUX2|saida_MUX[7]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INSTR|PC|DOUT\(7));

\INSTR|ROM|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \INSTR|ROM|memROM~4_combout\ = ( !\INSTR|PC|DOUT\(4) & ( (!\INSTR|PC|DOUT\(8) & (!\INSTR|PC|DOUT\(7) & (!\INSTR|PC|DOUT\(6) & !\INSTR|PC|DOUT\(5)))) ) )

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
	combout => \INSTR|ROM|memROM~4_combout\);

\INSTR|ROM|memROM~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \INSTR|ROM|memROM~14_combout\ = (\INSTR|ROM|memROM~4_combout\ & \INSTR|ROM|memROM~13_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR|ROM|ALT_INV_memROM~4_combout\,
	datab => \INSTR|ROM|ALT_INV_memROM~13_combout\,
	combout => \INSTR|ROM|memROM~14_combout\);

\INSTR|SOMA_CONST|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \INSTR|SOMA_CONST|Add0~17_sumout\ = SUM(( \INSTR|PC|DOUT\(8) ) + ( GND ) + ( \INSTR|SOMA_CONST|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \INSTR|PC|ALT_INV_DOUT\(8),
	cin => \INSTR|SOMA_CONST|Add0~22\,
	sumout => \INSTR|SOMA_CONST|Add0~17_sumout\);

\INSTR|MUX2|saida_MUX[8]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \INSTR|MUX2|saida_MUX[8]~4_combout\ = (!\LOG_DESVIO|DESV_JUMP~0_combout\ & ((\INSTR|SOMA_CONST|Add0~17_sumout\))) # (\LOG_DESVIO|DESV_JUMP~0_combout\ & (\INSTR|ROM|memROM~14_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR|ROM|ALT_INV_memROM~14_combout\,
	datab => \LOG_DESVIO|ALT_INV_DESV_JUMP~0_combout\,
	datac => \INSTR|SOMA_CONST|ALT_INV_Add0~17_sumout\,
	combout => \INSTR|MUX2|saida_MUX[8]~4_combout\);

\INSTR|PC|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \INSTR|MUX2|saida_MUX[8]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INSTR|PC|DOUT\(8));

\INSTR|ROM|memROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \INSTR|ROM|memROM~7_combout\ = (!\INSTR|PC|DOUT\(8) & (\INSTR|ROM|memROM~5_combout\ & \INSTR|ROM|memROM~6_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR|PC|ALT_INV_DOUT\(8),
	datab => \INSTR|ROM|ALT_INV_memROM~5_combout\,
	datac => \INSTR|ROM|ALT_INV_memROM~6_combout\,
	combout => \INSTR|ROM|memROM~7_combout\);

\ULA1|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[0]~0_combout\ = ( \ULA1|Add1~1_sumout\ & ( (!\DECODER|OP_ULA[1]~0_combout\) # ((!\MUX1|saida_MUX[7]~0_combout\ & (\INSTR|ROM|memROM~7_combout\)) # (\MUX1|saida_MUX[7]~0_combout\ & ((\MDADOS|ram~146_combout\)))) ) ) # ( !\ULA1|Add1~1_sumout\ & 
-- ( (\DECODER|OP_ULA[1]~0_combout\ & ((!\MUX1|saida_MUX[7]~0_combout\ & (\INSTR|ROM|memROM~7_combout\)) # (\MUX1|saida_MUX[7]~0_combout\ & ((\MDADOS|ram~146_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000011111101011111001100000101000000111111010111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR|ROM|ALT_INV_memROM~7_combout\,
	datab => \MDADOS|ALT_INV_ram~146_combout\,
	datac => \DECODER|ALT_INV_OP_ULA[1]~0_combout\,
	datad => \MUX1|ALT_INV_saida_MUX[7]~0_combout\,
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

ww_FLAG_JMP <= \FLAG_JMP~output_o\;

ww_DEST(0) <= \DEST[0]~output_o\;

ww_DEST(1) <= \DEST[1]~output_o\;

ww_DEST(2) <= \DEST[2]~output_o\;

ww_DEST(3) <= \DEST[3]~output_o\;

ww_DEST(4) <= \DEST[4]~output_o\;

ww_DEST(5) <= \DEST[5]~output_o\;

ww_DEST(6) <= \DEST[6]~output_o\;

ww_DEST(7) <= \DEST[7]~output_o\;

ww_DEST(8) <= \DEST[8]~output_o\;
END structure;


