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

-- DATE "09/29/2021 12:02:59"

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
	CLOCK : IN std_logic;
	KEY : IN std_logic_vector(3 DOWNTO 0);
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX3 : OUT std_logic_vector(6 DOWNTO 0);
	HEX4 : OUT std_logic_vector(6 DOWNTO 0);
	HEX5 : OUT std_logic_vector(6 DOWNTO 0);
	VALOR_INST : OUT std_logic_vector(12 DOWNTO 0);
	DOUT : OUT std_logic_vector(7 DOWNTO 0);
	DIN : OUT std_logic_vector(7 DOWNTO 0);
	HAB_LEI : OUT std_logic;
	HAB_ESC : OUT std_logic;
	HAB_LEDR : OUT std_logic_vector(2 DOWNTO 0);
	HAB_LED8 : OUT std_logic_vector(2 DOWNTO 0);
	HAB_LED9 : OUT std_logic_vector(2 DOWNTO 0);
	ROM_ADDR : OUT std_logic_vector(8 DOWNTO 0);
	LED_R : OUT std_logic_vector(9 DOWNTO 0);
	DEC_BLOCKS : OUT std_logic_vector(7 DOWNTO 0);
	DEC_ADDRS : OUT std_logic_vector(7 DOWNTO 0)
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
SIGNAL ww_CLOCK : std_logic;
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_VALOR_INST : std_logic_vector(12 DOWNTO 0);
SIGNAL ww_DOUT : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_DIN : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_HAB_LEI : std_logic;
SIGNAL ww_HAB_ESC : std_logic;
SIGNAL ww_HAB_LEDR : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_HAB_LED8 : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_HAB_LED9 : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_ROM_ADDR : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_LED_R : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_DEC_BLOCKS : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_DEC_ADDRS : std_logic_vector(7 DOWNTO 0);
SIGNAL \CLOCK~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \DIN[0]~output_o\ : std_logic;
SIGNAL \DIN[1]~output_o\ : std_logic;
SIGNAL \DIN[2]~output_o\ : std_logic;
SIGNAL \DIN[3]~output_o\ : std_logic;
SIGNAL \DIN[4]~output_o\ : std_logic;
SIGNAL \DIN[5]~output_o\ : std_logic;
SIGNAL \DIN[6]~output_o\ : std_logic;
SIGNAL \DIN[7]~output_o\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \HEX1[0]~output_o\ : std_logic;
SIGNAL \HEX1[1]~output_o\ : std_logic;
SIGNAL \HEX1[2]~output_o\ : std_logic;
SIGNAL \HEX1[3]~output_o\ : std_logic;
SIGNAL \HEX1[4]~output_o\ : std_logic;
SIGNAL \HEX1[5]~output_o\ : std_logic;
SIGNAL \HEX1[6]~output_o\ : std_logic;
SIGNAL \HEX2[0]~output_o\ : std_logic;
SIGNAL \HEX2[1]~output_o\ : std_logic;
SIGNAL \HEX2[2]~output_o\ : std_logic;
SIGNAL \HEX2[3]~output_o\ : std_logic;
SIGNAL \HEX2[4]~output_o\ : std_logic;
SIGNAL \HEX2[5]~output_o\ : std_logic;
SIGNAL \HEX2[6]~output_o\ : std_logic;
SIGNAL \HEX3[0]~output_o\ : std_logic;
SIGNAL \HEX3[1]~output_o\ : std_logic;
SIGNAL \HEX3[2]~output_o\ : std_logic;
SIGNAL \HEX3[3]~output_o\ : std_logic;
SIGNAL \HEX3[4]~output_o\ : std_logic;
SIGNAL \HEX3[5]~output_o\ : std_logic;
SIGNAL \HEX3[6]~output_o\ : std_logic;
SIGNAL \HEX4[0]~output_o\ : std_logic;
SIGNAL \HEX4[1]~output_o\ : std_logic;
SIGNAL \HEX4[2]~output_o\ : std_logic;
SIGNAL \HEX4[3]~output_o\ : std_logic;
SIGNAL \HEX4[4]~output_o\ : std_logic;
SIGNAL \HEX4[5]~output_o\ : std_logic;
SIGNAL \HEX4[6]~output_o\ : std_logic;
SIGNAL \HEX5[0]~output_o\ : std_logic;
SIGNAL \HEX5[1]~output_o\ : std_logic;
SIGNAL \HEX5[2]~output_o\ : std_logic;
SIGNAL \HEX5[3]~output_o\ : std_logic;
SIGNAL \HEX5[4]~output_o\ : std_logic;
SIGNAL \HEX5[5]~output_o\ : std_logic;
SIGNAL \HEX5[6]~output_o\ : std_logic;
SIGNAL \VALOR_INST[0]~output_o\ : std_logic;
SIGNAL \VALOR_INST[1]~output_o\ : std_logic;
SIGNAL \VALOR_INST[2]~output_o\ : std_logic;
SIGNAL \VALOR_INST[3]~output_o\ : std_logic;
SIGNAL \VALOR_INST[4]~output_o\ : std_logic;
SIGNAL \VALOR_INST[5]~output_o\ : std_logic;
SIGNAL \VALOR_INST[6]~output_o\ : std_logic;
SIGNAL \VALOR_INST[7]~output_o\ : std_logic;
SIGNAL \VALOR_INST[8]~output_o\ : std_logic;
SIGNAL \VALOR_INST[9]~output_o\ : std_logic;
SIGNAL \VALOR_INST[10]~output_o\ : std_logic;
SIGNAL \VALOR_INST[11]~output_o\ : std_logic;
SIGNAL \VALOR_INST[12]~output_o\ : std_logic;
SIGNAL \DOUT[0]~output_o\ : std_logic;
SIGNAL \DOUT[1]~output_o\ : std_logic;
SIGNAL \DOUT[2]~output_o\ : std_logic;
SIGNAL \DOUT[3]~output_o\ : std_logic;
SIGNAL \DOUT[4]~output_o\ : std_logic;
SIGNAL \DOUT[5]~output_o\ : std_logic;
SIGNAL \DOUT[6]~output_o\ : std_logic;
SIGNAL \DOUT[7]~output_o\ : std_logic;
SIGNAL \HAB_LEI~output_o\ : std_logic;
SIGNAL \HAB_ESC~output_o\ : std_logic;
SIGNAL \HAB_LEDR[0]~output_o\ : std_logic;
SIGNAL \HAB_LEDR[1]~output_o\ : std_logic;
SIGNAL \HAB_LEDR[2]~output_o\ : std_logic;
SIGNAL \HAB_LED8[0]~output_o\ : std_logic;
SIGNAL \HAB_LED8[1]~output_o\ : std_logic;
SIGNAL \HAB_LED8[2]~output_o\ : std_logic;
SIGNAL \HAB_LED9[0]~output_o\ : std_logic;
SIGNAL \HAB_LED9[1]~output_o\ : std_logic;
SIGNAL \HAB_LED9[2]~output_o\ : std_logic;
SIGNAL \ROM_ADDR[0]~output_o\ : std_logic;
SIGNAL \ROM_ADDR[1]~output_o\ : std_logic;
SIGNAL \ROM_ADDR[2]~output_o\ : std_logic;
SIGNAL \ROM_ADDR[3]~output_o\ : std_logic;
SIGNAL \ROM_ADDR[4]~output_o\ : std_logic;
SIGNAL \ROM_ADDR[5]~output_o\ : std_logic;
SIGNAL \ROM_ADDR[6]~output_o\ : std_logic;
SIGNAL \ROM_ADDR[7]~output_o\ : std_logic;
SIGNAL \ROM_ADDR[8]~output_o\ : std_logic;
SIGNAL \LED_R[0]~output_o\ : std_logic;
SIGNAL \LED_R[1]~output_o\ : std_logic;
SIGNAL \LED_R[2]~output_o\ : std_logic;
SIGNAL \LED_R[3]~output_o\ : std_logic;
SIGNAL \LED_R[4]~output_o\ : std_logic;
SIGNAL \LED_R[5]~output_o\ : std_logic;
SIGNAL \LED_R[6]~output_o\ : std_logic;
SIGNAL \LED_R[7]~output_o\ : std_logic;
SIGNAL \LED_R[8]~output_o\ : std_logic;
SIGNAL \LED_R[9]~output_o\ : std_logic;
SIGNAL \DEC_BLOCKS[0]~output_o\ : std_logic;
SIGNAL \DEC_BLOCKS[1]~output_o\ : std_logic;
SIGNAL \DEC_BLOCKS[2]~output_o\ : std_logic;
SIGNAL \DEC_BLOCKS[3]~output_o\ : std_logic;
SIGNAL \DEC_BLOCKS[4]~output_o\ : std_logic;
SIGNAL \DEC_BLOCKS[5]~output_o\ : std_logic;
SIGNAL \DEC_BLOCKS[6]~output_o\ : std_logic;
SIGNAL \DEC_BLOCKS[7]~output_o\ : std_logic;
SIGNAL \DEC_ADDRS[0]~output_o\ : std_logic;
SIGNAL \DEC_ADDRS[1]~output_o\ : std_logic;
SIGNAL \DEC_ADDRS[2]~output_o\ : std_logic;
SIGNAL \DEC_ADDRS[3]~output_o\ : std_logic;
SIGNAL \DEC_ADDRS[4]~output_o\ : std_logic;
SIGNAL \DEC_ADDRS[5]~output_o\ : std_logic;
SIGNAL \DEC_ADDRS[6]~output_o\ : std_logic;
SIGNAL \DEC_ADDRS[7]~output_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \ROM|memROM~7_combout\ : std_logic;
SIGNAL \ROM|memROM~8_combout\ : std_logic;
SIGNAL \ROM|memROM~15_combout\ : std_logic;
SIGNAL \ROM|memROM~16_combout\ : std_logic;
SIGNAL \ROM|memROM~9_combout\ : std_logic;
SIGNAL \ROM|memROM~11_combout\ : std_logic;
SIGNAL \CPU|DECODER|ENABLE_READ~0_combout\ : std_logic;
SIGNAL \ROM|memROM~20_combout\ : std_logic;
SIGNAL \ROM|memROM~19_combout\ : std_logic;
SIGNAL \ROM|memROM~18_combout\ : std_logic;
SIGNAL \RAM|dado_out[0]~8_combout\ : std_logic;
SIGNAL \ROM|memROM~17_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~2\ : std_logic;
SIGNAL \CPU|ULA1|Add0~5_sumout\ : std_logic;
SIGNAL \CPU|DECODER|sinais_controle~0_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~34_cout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~2\ : std_logic;
SIGNAL \CPU|ULA1|Add1~5_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[1]~1_combout\ : std_logic;
SIGNAL \CPU|DECODER|Equal10~2_combout\ : std_logic;
SIGNAL \CPU|DECODER|HAB_A~0_combout\ : std_logic;
SIGNAL \CPU|DECODER|Equal10~0_combout\ : std_logic;
SIGNAL \RAM|ram~159_combout\ : std_logic;
SIGNAL \RAM|ram~16_q\ : std_logic;
SIGNAL \RAM|ram~145_combout\ : std_logic;
SIGNAL \RAM|ram~146_combout\ : std_logic;
SIGNAL \RAM|dado_out[1]~9_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~6\ : std_logic;
SIGNAL \CPU|ULA1|Add0~9_sumout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~6\ : std_logic;
SIGNAL \CPU|ULA1|Add1~9_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[2]~2_combout\ : std_logic;
SIGNAL \RAM|ram~17_q\ : std_logic;
SIGNAL \RAM|ram~147_combout\ : std_logic;
SIGNAL \RAM|ram~148_combout\ : std_logic;
SIGNAL \RAM|dado_out[2]~10_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~10\ : std_logic;
SIGNAL \CPU|ULA1|Add0~13_sumout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~10\ : std_logic;
SIGNAL \CPU|ULA1|Add1~13_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[3]~3_combout\ : std_logic;
SIGNAL \RAM|ram~18_q\ : std_logic;
SIGNAL \RAM|ram~149_combout\ : std_logic;
SIGNAL \RAM|ram~150_combout\ : std_logic;
SIGNAL \RAM|dado_out[3]~11_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~14\ : std_logic;
SIGNAL \CPU|ULA1|Add0~17_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[4]~4_combout\ : std_logic;
SIGNAL \RAM|ram~19_q\ : std_logic;
SIGNAL \RAM|ram~151_combout\ : std_logic;
SIGNAL \RAM|ram~152_combout\ : std_logic;
SIGNAL \RAM|dado_out[4]~12_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~14\ : std_logic;
SIGNAL \CPU|ULA1|Add1~17_sumout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~18\ : std_logic;
SIGNAL \CPU|ULA1|Add0~21_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[5]~5_combout\ : std_logic;
SIGNAL \RAM|ram~20_q\ : std_logic;
SIGNAL \RAM|ram~153_combout\ : std_logic;
SIGNAL \RAM|ram~154_combout\ : std_logic;
SIGNAL \RAM|dado_out[5]~13_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~18\ : std_logic;
SIGNAL \CPU|ULA1|Add1~21_sumout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~22\ : std_logic;
SIGNAL \CPU|ULA1|Add0~25_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[6]~6_combout\ : std_logic;
SIGNAL \RAM|ram~21_q\ : std_logic;
SIGNAL \RAM|ram~155_combout\ : std_logic;
SIGNAL \RAM|ram~156_combout\ : std_logic;
SIGNAL \RAM|dado_out[6]~14_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~22\ : std_logic;
SIGNAL \CPU|ULA1|Add1~25_sumout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~26\ : std_logic;
SIGNAL \CPU|ULA1|Add0~29_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[7]~7_combout\ : std_logic;
SIGNAL \RAM|ram~22_q\ : std_logic;
SIGNAL \RAM|ram~157_combout\ : std_logic;
SIGNAL \RAM|ram~158_combout\ : std_logic;
SIGNAL \RAM|dado_out[7]~15_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~26\ : std_logic;
SIGNAL \CPU|ULA1|Add1~29_sumout\ : std_logic;
SIGNAL \CPU|FLAG|DOUT~1_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~1_sumout\ : std_logic;
SIGNAL \CPU|FLAG|DOUT~2_combout\ : std_logic;
SIGNAL \CPU|FLAG|DOUT~0_combout\ : std_logic;
SIGNAL \CPU|FLAG|DOUT~q\ : std_logic;
SIGNAL \CPU|INSTR|MUX2|MUX_OUT[8]~0_combout\ : std_logic;
SIGNAL \CPU|INSTR|PC|DOUT[0]~0_combout\ : std_logic;
SIGNAL \CPU|INSTR|SOMA_CONST|Add0~6\ : std_logic;
SIGNAL \CPU|INSTR|SOMA_CONST|Add0~10\ : std_logic;
SIGNAL \CPU|INSTR|SOMA_CONST|Add0~14\ : std_logic;
SIGNAL \CPU|INSTR|SOMA_CONST|Add0~17_sumout\ : std_logic;
SIGNAL \CPU|DECODER|Equal10~3_combout\ : std_logic;
SIGNAL \CPU|INSTR|MUX2|MUX_OUT[3]~5_combout\ : std_logic;
SIGNAL \ROM|memROM~5_combout\ : std_logic;
SIGNAL \ROM|memROM~6_combout\ : std_logic;
SIGNAL \CPU|INSTR|SOMA_CONST|Add0~13_sumout\ : std_logic;
SIGNAL \CPU|INSTR|MUX2|MUX_OUT[2]~4_combout\ : std_logic;
SIGNAL \ROM|memROM~3_combout\ : std_logic;
SIGNAL \ROM|memROM~4_combout\ : std_logic;
SIGNAL \CPU|INSTR|SOMA_CONST|Add0~9_sumout\ : std_logic;
SIGNAL \CPU|INSTR|MUX2|MUX_OUT[1]~3_combout\ : std_logic;
SIGNAL \ROM|memROM~0_combout\ : std_logic;
SIGNAL \ROM|memROM~2_combout\ : std_logic;
SIGNAL \CPU|INSTR|SOMA_CONST|Add0~5_sumout\ : std_logic;
SIGNAL \CPU|INSTR|MUX2|MUX_OUT[0]~2_combout\ : std_logic;
SIGNAL \ROM|memROM~13_combout\ : std_logic;
SIGNAL \ROM|memROM~14_combout\ : std_logic;
SIGNAL \CPU|LOG_DESVIO|DESV_JUMP~0_combout\ : std_logic;
SIGNAL \CPU|INSTR|SOMA_CONST|Add0~18\ : std_logic;
SIGNAL \CPU|INSTR|SOMA_CONST|Add0~33_sumout\ : std_logic;
SIGNAL \CPU|INSTR|MUX2|MUX_OUT[4]~9_combout\ : std_logic;
SIGNAL \CPU|INSTR|SOMA_CONST|Add0~34\ : std_logic;
SIGNAL \CPU|INSTR|SOMA_CONST|Add0~29_sumout\ : std_logic;
SIGNAL \CPU|INSTR|MUX2|MUX_OUT[5]~8_combout\ : std_logic;
SIGNAL \CPU|INSTR|SOMA_CONST|Add0~30\ : std_logic;
SIGNAL \CPU|INSTR|SOMA_CONST|Add0~25_sumout\ : std_logic;
SIGNAL \CPU|INSTR|MUX2|MUX_OUT[6]~7_combout\ : std_logic;
SIGNAL \CPU|INSTR|SOMA_CONST|Add0~26\ : std_logic;
SIGNAL \CPU|INSTR|SOMA_CONST|Add0~21_sumout\ : std_logic;
SIGNAL \CPU|INSTR|MUX2|MUX_OUT[7]~6_combout\ : std_logic;
SIGNAL \ROM|memROM~1_combout\ : std_logic;
SIGNAL \ROM|memROM~12_combout\ : std_logic;
SIGNAL \CPU|LOG_DESVIO|Equal5~0_combout\ : std_logic;
SIGNAL \CPU|INSTR|SOMA_CONST|Add0~22\ : std_logic;
SIGNAL \CPU|INSTR|SOMA_CONST|Add0~1_sumout\ : std_logic;
SIGNAL \CPU|INSTR|MUX2|MUX_OUT[8]~1_combout\ : std_logic;
SIGNAL \ROM|memROM~10_combout\ : std_logic;
SIGNAL \CPU|DECODER|Equal10~1_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~1_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[0]~0_combout\ : std_logic;
SIGNAL \RAM|ram~15_q\ : std_logic;
SIGNAL \RAM|ram~143_combout\ : std_logic;
SIGNAL \RAM|ram~144_combout\ : std_logic;
SIGNAL \DECODER_ADDR|Equal6~0_combout\ : std_logic;
SIGNAL \DECODER_ADDR|Equal6~1_combout\ : std_logic;
SIGNAL \DECODER_ADDR|Equal6~2_combout\ : std_logic;
SIGNAL \DECODER_ADDR|Equal6~3_combout\ : std_logic;
SIGNAL \DECODER_ADDR|Equal6~4_combout\ : std_logic;
SIGNAL \DECODER_ADDR|SAIDA[5]~0_combout\ : std_logic;
SIGNAL \DECODER_ADDR|SAIDA[6]~1_combout\ : std_logic;
SIGNAL \CPU|REG_A|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \CPU|INSTR|PC|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \CPU|INSTR|END_RETORNO|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \ROM|ALT_INV_memROM~6_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~5_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~4_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~3_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~2_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \CPU|INSTR|PC|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \ROM|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add1~29_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add1~25_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add1~21_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add1~17_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add1~1_sumout\ : std_logic;
SIGNAL \CPU|INSTR|SOMA_CONST|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \CPU|INSTR|SOMA_CONST|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \CPU|INSTR|SOMA_CONST|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \CPU|INSTR|SOMA_CONST|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \CPU|INSTR|SOMA_CONST|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \CPU|INSTR|SOMA_CONST|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \CPU|INSTR|SOMA_CONST|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \CPU|INSTR|SOMA_CONST|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \CPU|INSTR|SOMA_CONST|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \CPU|REG_A|ALT_INV_DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \CPU|FLAG|ALT_INV_DOUT~2_combout\ : std_logic;
SIGNAL \CPU|FLAG|ALT_INV_DOUT~1_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~20_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~19_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~18_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~17_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_dado_out[7]~15_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~158_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~157_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~22_q\ : std_logic;
SIGNAL \RAM|ALT_INV_dado_out[6]~14_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~156_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~155_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~21_q\ : std_logic;
SIGNAL \RAM|ALT_INV_dado_out[5]~13_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~154_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~153_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~20_q\ : std_logic;
SIGNAL \RAM|ALT_INV_dado_out[4]~12_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~152_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~151_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~19_q\ : std_logic;
SIGNAL \RAM|ALT_INV_dado_out[3]~11_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~150_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~149_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~18_q\ : std_logic;
SIGNAL \RAM|ALT_INV_dado_out[2]~10_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~148_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~147_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~17_q\ : std_logic;
SIGNAL \RAM|ALT_INV_dado_out[1]~9_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~146_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~145_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~16_q\ : std_logic;
SIGNAL \CPU|DECODER|ALT_INV_sinais_controle~0_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_dado_out[0]~8_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~144_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~143_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~15_q\ : std_logic;
SIGNAL \CPU|DECODER|ALT_INV_Equal10~1_combout\ : std_logic;
SIGNAL \CPU|INSTR|END_RETORNO|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \CPU|INSTR|PC|ALT_INV_DOUT[0]~0_combout\ : std_logic;
SIGNAL \CPU|INSTR|MUX2|ALT_INV_MUX_OUT[8]~0_combout\ : std_logic;
SIGNAL \CPU|FLAG|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \CPU|LOG_DESVIO|ALT_INV_DESV_JUMP~0_combout\ : std_logic;
SIGNAL \CPU|LOG_DESVIO|ALT_INV_Equal5~0_combout\ : std_logic;
SIGNAL \CPU|DECODER|ALT_INV_Equal10~0_combout\ : std_logic;
SIGNAL \CPU|DECODER|ALT_INV_ENABLE_READ~0_combout\ : std_logic;
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

BEGIN

ww_CLOCK <= CLOCK;
ww_KEY <= KEY;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
VALOR_INST <= ww_VALOR_INST;
DOUT <= ww_DOUT;
DIN <= ww_DIN;
HAB_LEI <= ww_HAB_LEI;
HAB_ESC <= ww_HAB_ESC;
HAB_LEDR <= ww_HAB_LEDR;
HAB_LED8 <= ww_HAB_LED8;
HAB_LED9 <= ww_HAB_LED9;
ROM_ADDR <= ww_ROM_ADDR;
LED_R <= ww_LED_R;
DEC_BLOCKS <= ww_DEC_BLOCKS;
DEC_ADDRS <= ww_DEC_ADDRS;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ROM|ALT_INV_memROM~6_combout\ <= NOT \ROM|memROM~6_combout\;
\ROM|ALT_INV_memROM~5_combout\ <= NOT \ROM|memROM~5_combout\;
\ROM|ALT_INV_memROM~4_combout\ <= NOT \ROM|memROM~4_combout\;
\ROM|ALT_INV_memROM~3_combout\ <= NOT \ROM|memROM~3_combout\;
\ROM|ALT_INV_memROM~2_combout\ <= NOT \ROM|memROM~2_combout\;
\ROM|ALT_INV_memROM~1_combout\ <= NOT \ROM|memROM~1_combout\;
\CPU|INSTR|PC|ALT_INV_DOUT\(4) <= NOT \CPU|INSTR|PC|DOUT\(4);
\CPU|INSTR|PC|ALT_INV_DOUT\(5) <= NOT \CPU|INSTR|PC|DOUT\(5);
\CPU|INSTR|PC|ALT_INV_DOUT\(6) <= NOT \CPU|INSTR|PC|DOUT\(6);
\CPU|INSTR|PC|ALT_INV_DOUT\(7) <= NOT \CPU|INSTR|PC|DOUT\(7);
\ROM|ALT_INV_memROM~0_combout\ <= NOT \ROM|memROM~0_combout\;
\CPU|INSTR|PC|ALT_INV_DOUT\(3) <= NOT \CPU|INSTR|PC|DOUT\(3);
\CPU|INSTR|PC|ALT_INV_DOUT\(2) <= NOT \CPU|INSTR|PC|DOUT\(2);
\CPU|INSTR|PC|ALT_INV_DOUT\(1) <= NOT \CPU|INSTR|PC|DOUT\(1);
\CPU|INSTR|PC|ALT_INV_DOUT\(0) <= NOT \CPU|INSTR|PC|DOUT\(0);
\CPU|INSTR|PC|ALT_INV_DOUT\(8) <= NOT \CPU|INSTR|PC|DOUT\(8);
\CPU|ULA1|ALT_INV_Add1~29_sumout\ <= NOT \CPU|ULA1|Add1~29_sumout\;
\CPU|ULA1|ALT_INV_Add1~25_sumout\ <= NOT \CPU|ULA1|Add1~25_sumout\;
\CPU|ULA1|ALT_INV_Add1~21_sumout\ <= NOT \CPU|ULA1|Add1~21_sumout\;
\CPU|ULA1|ALT_INV_Add1~17_sumout\ <= NOT \CPU|ULA1|Add1~17_sumout\;
\CPU|ULA1|ALT_INV_Add1~13_sumout\ <= NOT \CPU|ULA1|Add1~13_sumout\;
\CPU|ULA1|ALT_INV_Add1~9_sumout\ <= NOT \CPU|ULA1|Add1~9_sumout\;
\CPU|ULA1|ALT_INV_Add1~5_sumout\ <= NOT \CPU|ULA1|Add1~5_sumout\;
\CPU|ULA1|ALT_INV_Add1~1_sumout\ <= NOT \CPU|ULA1|Add1~1_sumout\;
\CPU|INSTR|SOMA_CONST|ALT_INV_Add0~33_sumout\ <= NOT \CPU|INSTR|SOMA_CONST|Add0~33_sumout\;
\CPU|INSTR|SOMA_CONST|ALT_INV_Add0~29_sumout\ <= NOT \CPU|INSTR|SOMA_CONST|Add0~29_sumout\;
\CPU|INSTR|SOMA_CONST|ALT_INV_Add0~25_sumout\ <= NOT \CPU|INSTR|SOMA_CONST|Add0~25_sumout\;
\CPU|INSTR|SOMA_CONST|ALT_INV_Add0~21_sumout\ <= NOT \CPU|INSTR|SOMA_CONST|Add0~21_sumout\;
\CPU|INSTR|SOMA_CONST|ALT_INV_Add0~17_sumout\ <= NOT \CPU|INSTR|SOMA_CONST|Add0~17_sumout\;
\CPU|INSTR|SOMA_CONST|ALT_INV_Add0~13_sumout\ <= NOT \CPU|INSTR|SOMA_CONST|Add0~13_sumout\;
\CPU|INSTR|SOMA_CONST|ALT_INV_Add0~9_sumout\ <= NOT \CPU|INSTR|SOMA_CONST|Add0~9_sumout\;
\CPU|INSTR|SOMA_CONST|ALT_INV_Add0~5_sumout\ <= NOT \CPU|INSTR|SOMA_CONST|Add0~5_sumout\;
\CPU|INSTR|SOMA_CONST|ALT_INV_Add0~1_sumout\ <= NOT \CPU|INSTR|SOMA_CONST|Add0~1_sumout\;
\CPU|REG_A|ALT_INV_DOUT\(7) <= NOT \CPU|REG_A|DOUT\(7);
\CPU|REG_A|ALT_INV_DOUT\(6) <= NOT \CPU|REG_A|DOUT\(6);
\CPU|REG_A|ALT_INV_DOUT\(5) <= NOT \CPU|REG_A|DOUT\(5);
\CPU|REG_A|ALT_INV_DOUT\(4) <= NOT \CPU|REG_A|DOUT\(4);
\CPU|REG_A|ALT_INV_DOUT\(3) <= NOT \CPU|REG_A|DOUT\(3);
\CPU|REG_A|ALT_INV_DOUT\(2) <= NOT \CPU|REG_A|DOUT\(2);
\CPU|REG_A|ALT_INV_DOUT\(1) <= NOT \CPU|REG_A|DOUT\(1);
\CPU|REG_A|ALT_INV_DOUT\(0) <= NOT \CPU|REG_A|DOUT\(0);
\CPU|FLAG|ALT_INV_DOUT~2_combout\ <= NOT \CPU|FLAG|DOUT~2_combout\;
\CPU|FLAG|ALT_INV_DOUT~1_combout\ <= NOT \CPU|FLAG|DOUT~1_combout\;
\ROM|ALT_INV_memROM~20_combout\ <= NOT \ROM|memROM~20_combout\;
\ROM|ALT_INV_memROM~19_combout\ <= NOT \ROM|memROM~19_combout\;
\ROM|ALT_INV_memROM~18_combout\ <= NOT \ROM|memROM~18_combout\;
\ROM|ALT_INV_memROM~17_combout\ <= NOT \ROM|memROM~17_combout\;
\RAM|ALT_INV_dado_out[7]~15_combout\ <= NOT \RAM|dado_out[7]~15_combout\;
\RAM|ALT_INV_ram~158_combout\ <= NOT \RAM|ram~158_combout\;
\RAM|ALT_INV_ram~157_combout\ <= NOT \RAM|ram~157_combout\;
\RAM|ALT_INV_ram~22_q\ <= NOT \RAM|ram~22_q\;
\RAM|ALT_INV_dado_out[6]~14_combout\ <= NOT \RAM|dado_out[6]~14_combout\;
\RAM|ALT_INV_ram~156_combout\ <= NOT \RAM|ram~156_combout\;
\RAM|ALT_INV_ram~155_combout\ <= NOT \RAM|ram~155_combout\;
\RAM|ALT_INV_ram~21_q\ <= NOT \RAM|ram~21_q\;
\RAM|ALT_INV_dado_out[5]~13_combout\ <= NOT \RAM|dado_out[5]~13_combout\;
\RAM|ALT_INV_ram~154_combout\ <= NOT \RAM|ram~154_combout\;
\RAM|ALT_INV_ram~153_combout\ <= NOT \RAM|ram~153_combout\;
\RAM|ALT_INV_ram~20_q\ <= NOT \RAM|ram~20_q\;
\RAM|ALT_INV_dado_out[4]~12_combout\ <= NOT \RAM|dado_out[4]~12_combout\;
\RAM|ALT_INV_ram~152_combout\ <= NOT \RAM|ram~152_combout\;
\RAM|ALT_INV_ram~151_combout\ <= NOT \RAM|ram~151_combout\;
\RAM|ALT_INV_ram~19_q\ <= NOT \RAM|ram~19_q\;
\RAM|ALT_INV_dado_out[3]~11_combout\ <= NOT \RAM|dado_out[3]~11_combout\;
\RAM|ALT_INV_ram~150_combout\ <= NOT \RAM|ram~150_combout\;
\RAM|ALT_INV_ram~149_combout\ <= NOT \RAM|ram~149_combout\;
\RAM|ALT_INV_ram~18_q\ <= NOT \RAM|ram~18_q\;
\RAM|ALT_INV_dado_out[2]~10_combout\ <= NOT \RAM|dado_out[2]~10_combout\;
\RAM|ALT_INV_ram~148_combout\ <= NOT \RAM|ram~148_combout\;
\RAM|ALT_INV_ram~147_combout\ <= NOT \RAM|ram~147_combout\;
\RAM|ALT_INV_ram~17_q\ <= NOT \RAM|ram~17_q\;
\RAM|ALT_INV_dado_out[1]~9_combout\ <= NOT \RAM|dado_out[1]~9_combout\;
\RAM|ALT_INV_ram~146_combout\ <= NOT \RAM|ram~146_combout\;
\RAM|ALT_INV_ram~145_combout\ <= NOT \RAM|ram~145_combout\;
\RAM|ALT_INV_ram~16_q\ <= NOT \RAM|ram~16_q\;
\CPU|DECODER|ALT_INV_sinais_controle~0_combout\ <= NOT \CPU|DECODER|sinais_controle~0_combout\;
\RAM|ALT_INV_dado_out[0]~8_combout\ <= NOT \RAM|dado_out[0]~8_combout\;
\RAM|ALT_INV_ram~144_combout\ <= NOT \RAM|ram~144_combout\;
\RAM|ALT_INV_ram~143_combout\ <= NOT \RAM|ram~143_combout\;
\RAM|ALT_INV_ram~15_q\ <= NOT \RAM|ram~15_q\;
\CPU|DECODER|ALT_INV_Equal10~1_combout\ <= NOT \CPU|DECODER|Equal10~1_combout\;
\CPU|INSTR|END_RETORNO|ALT_INV_DOUT\(4) <= NOT \CPU|INSTR|END_RETORNO|DOUT\(4);
\CPU|INSTR|END_RETORNO|ALT_INV_DOUT\(5) <= NOT \CPU|INSTR|END_RETORNO|DOUT\(5);
\CPU|INSTR|END_RETORNO|ALT_INV_DOUT\(6) <= NOT \CPU|INSTR|END_RETORNO|DOUT\(6);
\CPU|INSTR|END_RETORNO|ALT_INV_DOUT\(7) <= NOT \CPU|INSTR|END_RETORNO|DOUT\(7);
\CPU|INSTR|END_RETORNO|ALT_INV_DOUT\(3) <= NOT \CPU|INSTR|END_RETORNO|DOUT\(3);
\CPU|INSTR|END_RETORNO|ALT_INV_DOUT\(2) <= NOT \CPU|INSTR|END_RETORNO|DOUT\(2);
\CPU|INSTR|END_RETORNO|ALT_INV_DOUT\(1) <= NOT \CPU|INSTR|END_RETORNO|DOUT\(1);
\CPU|INSTR|PC|ALT_INV_DOUT[0]~0_combout\ <= NOT \CPU|INSTR|PC|DOUT[0]~0_combout\;
\CPU|INSTR|END_RETORNO|ALT_INV_DOUT\(0) <= NOT \CPU|INSTR|END_RETORNO|DOUT\(0);
\CPU|INSTR|MUX2|ALT_INV_MUX_OUT[8]~0_combout\ <= NOT \CPU|INSTR|MUX2|MUX_OUT[8]~0_combout\;
\CPU|FLAG|ALT_INV_DOUT~q\ <= NOT \CPU|FLAG|DOUT~q\;
\CPU|INSTR|END_RETORNO|ALT_INV_DOUT\(8) <= NOT \CPU|INSTR|END_RETORNO|DOUT\(8);
\CPU|LOG_DESVIO|ALT_INV_DESV_JUMP~0_combout\ <= NOT \CPU|LOG_DESVIO|DESV_JUMP~0_combout\;
\CPU|LOG_DESVIO|ALT_INV_Equal5~0_combout\ <= NOT \CPU|LOG_DESVIO|Equal5~0_combout\;
\CPU|DECODER|ALT_INV_Equal10~0_combout\ <= NOT \CPU|DECODER|Equal10~0_combout\;
\CPU|DECODER|ALT_INV_ENABLE_READ~0_combout\ <= NOT \CPU|DECODER|ENABLE_READ~0_combout\;
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

\DIN[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|ram~144_combout\,
	oe => \CPU|DECODER|ENABLE_READ~0_combout\,
	devoe => ww_devoe,
	o => \DIN[0]~output_o\);

\DIN[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|ram~146_combout\,
	oe => \CPU|DECODER|ENABLE_READ~0_combout\,
	devoe => ww_devoe,
	o => \DIN[1]~output_o\);

\DIN[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|ram~148_combout\,
	oe => \CPU|DECODER|ENABLE_READ~0_combout\,
	devoe => ww_devoe,
	o => \DIN[2]~output_o\);

\DIN[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|ram~150_combout\,
	oe => \CPU|DECODER|ENABLE_READ~0_combout\,
	devoe => ww_devoe,
	o => \DIN[3]~output_o\);

\DIN[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|ram~152_combout\,
	oe => \CPU|DECODER|ENABLE_READ~0_combout\,
	devoe => ww_devoe,
	o => \DIN[4]~output_o\);

\DIN[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|ram~154_combout\,
	oe => \CPU|DECODER|ENABLE_READ~0_combout\,
	devoe => ww_devoe,
	o => \DIN[5]~output_o\);

\DIN[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|ram~156_combout\,
	oe => \CPU|DECODER|ENABLE_READ~0_combout\,
	devoe => ww_devoe,
	o => \DIN[6]~output_o\);

\DIN[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|ram~158_combout\,
	oe => \CPU|DECODER|ENABLE_READ~0_combout\,
	devoe => ww_devoe,
	o => \DIN[7]~output_o\);

\HEX0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

\HEX0[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

\HEX0[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

\HEX0[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

\HEX0[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

\HEX0[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

\HEX0[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

\HEX1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX1[0]~output_o\);

\HEX1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX1[1]~output_o\);

\HEX1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX1[2]~output_o\);

\HEX1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX1[3]~output_o\);

\HEX1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX1[4]~output_o\);

\HEX1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX1[5]~output_o\);

\HEX1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX1[6]~output_o\);

\HEX2[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX2[0]~output_o\);

\HEX2[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX2[1]~output_o\);

\HEX2[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX2[2]~output_o\);

\HEX2[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX2[3]~output_o\);

\HEX2[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX2[4]~output_o\);

\HEX2[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX2[5]~output_o\);

\HEX2[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX2[6]~output_o\);

\HEX3[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX3[0]~output_o\);

\HEX3[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX3[1]~output_o\);

\HEX3[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX3[2]~output_o\);

\HEX3[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX3[3]~output_o\);

\HEX3[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX3[4]~output_o\);

\HEX3[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX3[5]~output_o\);

\HEX3[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX3[6]~output_o\);

\HEX4[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX4[0]~output_o\);

\HEX4[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX4[1]~output_o\);

\HEX4[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX4[2]~output_o\);

\HEX4[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX4[3]~output_o\);

\HEX4[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX4[4]~output_o\);

\HEX4[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX4[5]~output_o\);

\HEX4[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX4[6]~output_o\);

\HEX5[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX5[0]~output_o\);

\HEX5[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX5[1]~output_o\);

\HEX5[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX5[2]~output_o\);

\HEX5[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX5[3]~output_o\);

\HEX5[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX5[4]~output_o\);

\HEX5[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX5[5]~output_o\);

\HEX5[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX5[6]~output_o\);

\VALOR_INST[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~2_combout\,
	devoe => ww_devoe,
	o => \VALOR_INST[0]~output_o\);

\VALOR_INST[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~4_combout\,
	devoe => ww_devoe,
	o => \VALOR_INST[1]~output_o\);

\VALOR_INST[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~6_combout\,
	devoe => ww_devoe,
	o => \VALOR_INST[2]~output_o\);

\VALOR_INST[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~8_combout\,
	devoe => ww_devoe,
	o => \VALOR_INST[3]~output_o\);

\VALOR_INST[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \VALOR_INST[4]~output_o\);

\VALOR_INST[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \VALOR_INST[5]~output_o\);

\VALOR_INST[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \VALOR_INST[6]~output_o\);

\VALOR_INST[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \VALOR_INST[7]~output_o\);

\VALOR_INST[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \VALOR_INST[8]~output_o\);

\VALOR_INST[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~10_combout\,
	devoe => ww_devoe,
	o => \VALOR_INST[9]~output_o\);

\VALOR_INST[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~12_combout\,
	devoe => ww_devoe,
	o => \VALOR_INST[10]~output_o\);

\VALOR_INST[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~14_combout\,
	devoe => ww_devoe,
	o => \VALOR_INST[11]~output_o\);

\VALOR_INST[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~16_combout\,
	devoe => ww_devoe,
	o => \VALOR_INST[12]~output_o\);

\DOUT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|REG_A|DOUT\(0),
	devoe => ww_devoe,
	o => \DOUT[0]~output_o\);

\DOUT[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|REG_A|DOUT\(1),
	devoe => ww_devoe,
	o => \DOUT[1]~output_o\);

\DOUT[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|REG_A|DOUT\(2),
	devoe => ww_devoe,
	o => \DOUT[2]~output_o\);

\DOUT[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|REG_A|DOUT\(3),
	devoe => ww_devoe,
	o => \DOUT[3]~output_o\);

\DOUT[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|REG_A|DOUT\(4),
	devoe => ww_devoe,
	o => \DOUT[4]~output_o\);

\DOUT[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|REG_A|DOUT\(5),
	devoe => ww_devoe,
	o => \DOUT[5]~output_o\);

\DOUT[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|REG_A|DOUT\(6),
	devoe => ww_devoe,
	o => \DOUT[6]~output_o\);

\DOUT[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|REG_A|DOUT\(7),
	devoe => ww_devoe,
	o => \DOUT[7]~output_o\);

\HAB_LEI~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|DECODER|ENABLE_READ~0_combout\,
	devoe => ww_devoe,
	o => \HAB_LEI~output_o\);

\HAB_ESC~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|DECODER|Equal10~0_combout\,
	devoe => ww_devoe,
	o => \HAB_ESC~output_o\);

\HAB_LEDR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER_ADDR|Equal6~0_combout\,
	devoe => ww_devoe,
	o => \HAB_LEDR[0]~output_o\);

\HAB_LEDR[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HAB_LEDR[1]~output_o\);

\HAB_LEDR[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|DECODER|Equal10~0_combout\,
	devoe => ww_devoe,
	o => \HAB_LEDR[2]~output_o\);

\HAB_LED8[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER_ADDR|Equal6~1_combout\,
	devoe => ww_devoe,
	o => \HAB_LED8[0]~output_o\);

\HAB_LED8[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HAB_LED8[1]~output_o\);

\HAB_LED8[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|DECODER|Equal10~0_combout\,
	devoe => ww_devoe,
	o => \HAB_LED8[2]~output_o\);

\HAB_LED9[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER_ADDR|Equal6~2_combout\,
	devoe => ww_devoe,
	o => \HAB_LED9[0]~output_o\);

\HAB_LED9[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HAB_LED9[1]~output_o\);

\HAB_LED9[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|DECODER|Equal10~0_combout\,
	devoe => ww_devoe,
	o => \HAB_LED9[2]~output_o\);

\ROM_ADDR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|INSTR|PC|DOUT\(0),
	devoe => ww_devoe,
	o => \ROM_ADDR[0]~output_o\);

\ROM_ADDR[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|INSTR|PC|DOUT\(1),
	devoe => ww_devoe,
	o => \ROM_ADDR[1]~output_o\);

\ROM_ADDR[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|INSTR|PC|DOUT\(2),
	devoe => ww_devoe,
	o => \ROM_ADDR[2]~output_o\);

\ROM_ADDR[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|INSTR|PC|DOUT\(3),
	devoe => ww_devoe,
	o => \ROM_ADDR[3]~output_o\);

\ROM_ADDR[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|INSTR|PC|DOUT\(4),
	devoe => ww_devoe,
	o => \ROM_ADDR[4]~output_o\);

\ROM_ADDR[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|INSTR|PC|DOUT\(5),
	devoe => ww_devoe,
	o => \ROM_ADDR[5]~output_o\);

\ROM_ADDR[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|INSTR|PC|DOUT\(6),
	devoe => ww_devoe,
	o => \ROM_ADDR[6]~output_o\);

\ROM_ADDR[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|INSTR|PC|DOUT\(7),
	devoe => ww_devoe,
	o => \ROM_ADDR[7]~output_o\);

\ROM_ADDR[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|INSTR|PC|DOUT\(8),
	devoe => ww_devoe,
	o => \ROM_ADDR[8]~output_o\);

\LED_R[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LED_R[0]~output_o\);

\LED_R[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LED_R[1]~output_o\);

\LED_R[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LED_R[2]~output_o\);

\LED_R[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LED_R[3]~output_o\);

\LED_R[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LED_R[4]~output_o\);

\LED_R[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LED_R[5]~output_o\);

\LED_R[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LED_R[6]~output_o\);

\LED_R[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LED_R[7]~output_o\);

\LED_R[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LED_R[8]~output_o\);

\LED_R[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LED_R[9]~output_o\);

\DEC_BLOCKS[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DEC_BLOCKS[0]~output_o\);

\DEC_BLOCKS[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DEC_BLOCKS[1]~output_o\);

\DEC_BLOCKS[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DEC_BLOCKS[2]~output_o\);

\DEC_BLOCKS[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DEC_BLOCKS[3]~output_o\);

\DEC_BLOCKS[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DEC_BLOCKS[4]~output_o\);

\DEC_BLOCKS[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DEC_BLOCKS[5]~output_o\);

\DEC_BLOCKS[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DEC_BLOCKS[6]~output_o\);

\DEC_BLOCKS[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DEC_BLOCKS[7]~output_o\);

\DEC_ADDRS[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER_ADDR|Equal6~0_combout\,
	devoe => ww_devoe,
	o => \DEC_ADDRS[0]~output_o\);

\DEC_ADDRS[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER_ADDR|Equal6~1_combout\,
	devoe => ww_devoe,
	o => \DEC_ADDRS[1]~output_o\);

\DEC_ADDRS[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER_ADDR|Equal6~2_combout\,
	devoe => ww_devoe,
	o => \DEC_ADDRS[2]~output_o\);

\DEC_ADDRS[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER_ADDR|Equal6~3_combout\,
	devoe => ww_devoe,
	o => \DEC_ADDRS[3]~output_o\);

\DEC_ADDRS[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER_ADDR|Equal6~4_combout\,
	devoe => ww_devoe,
	o => \DEC_ADDRS[4]~output_o\);

\DEC_ADDRS[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER_ADDR|SAIDA[5]~0_combout\,
	devoe => ww_devoe,
	o => \DEC_ADDRS[5]~output_o\);

\DEC_ADDRS[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER_ADDR|SAIDA[6]~1_combout\,
	devoe => ww_devoe,
	o => \DEC_ADDRS[6]~output_o\);

\DEC_ADDRS[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DEC_ADDRS[7]~output_o\);

\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

\ROM|memROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~7_combout\ = (!\CPU|INSTR|PC|DOUT\(0) & (((!\CPU|INSTR|PC|DOUT\(2) & !\CPU|INSTR|PC|DOUT\(3))))) # (\CPU|INSTR|PC|DOUT\(0) & (!\CPU|INSTR|PC|DOUT\(1) & (\CPU|INSTR|PC|DOUT\(2) & \CPU|INSTR|PC|DOUT\(3))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000100101000000000010010100000000001001010000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|PC|ALT_INV_DOUT\(0),
	datab => \CPU|INSTR|PC|ALT_INV_DOUT\(1),
	datac => \CPU|INSTR|PC|ALT_INV_DOUT\(2),
	datad => \CPU|INSTR|PC|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~7_combout\);

\ROM|memROM~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~8_combout\ = (!\CPU|INSTR|PC|DOUT\(8) & (\ROM|memROM~1_combout\ & \ROM|memROM~7_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|PC|ALT_INV_DOUT\(8),
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \ROM|ALT_INV_memROM~7_combout\,
	combout => \ROM|memROM~8_combout\);

\ROM|memROM~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~15_combout\ = (!\CPU|INSTR|PC|DOUT\(0) & (!\CPU|INSTR|PC|DOUT\(1) & (!\CPU|INSTR|PC|DOUT\(2) & !\CPU|INSTR|PC|DOUT\(3)))) # (\CPU|INSTR|PC|DOUT\(0) & (\CPU|INSTR|PC|DOUT\(1) & ((\CPU|INSTR|PC|DOUT\(3)) # (\CPU|INSTR|PC|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000100010001100000010001000110000001000100011000000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|PC|ALT_INV_DOUT\(0),
	datab => \CPU|INSTR|PC|ALT_INV_DOUT\(1),
	datac => \CPU|INSTR|PC|ALT_INV_DOUT\(2),
	datad => \CPU|INSTR|PC|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~15_combout\);

\ROM|memROM~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~16_combout\ = (!\CPU|INSTR|PC|DOUT\(8) & (\ROM|memROM~1_combout\ & \ROM|memROM~15_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|PC|ALT_INV_DOUT\(8),
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \ROM|ALT_INV_memROM~15_combout\,
	combout => \ROM|memROM~16_combout\);

\ROM|memROM~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~9_combout\ = (!\CPU|INSTR|PC|DOUT\(0) & (!\CPU|INSTR|PC|DOUT\(3) $ (((!\CPU|INSTR|PC|DOUT\(1) & \CPU|INSTR|PC|DOUT\(2))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010001000001000101000100000100010100010000010001010001000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|PC|ALT_INV_DOUT\(0),
	datab => \CPU|INSTR|PC|ALT_INV_DOUT\(1),
	datac => \CPU|INSTR|PC|ALT_INV_DOUT\(2),
	datad => \CPU|INSTR|PC|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~9_combout\);

\ROM|memROM~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~11_combout\ = (!\CPU|INSTR|PC|DOUT\(3) & (!\CPU|INSTR|PC|DOUT\(2) & (!\CPU|INSTR|PC|DOUT\(0) $ (!\CPU|INSTR|PC|DOUT\(1))))) # (\CPU|INSTR|PC|DOUT\(3) & ((!\CPU|INSTR|PC|DOUT\(0) & (!\CPU|INSTR|PC|DOUT\(1))) # (\CPU|INSTR|PC|DOUT\(0) & 
-- ((\CPU|INSTR|PC|DOUT\(2))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000010001101011000001000110101100000100011010110000010001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|PC|ALT_INV_DOUT\(0),
	datab => \CPU|INSTR|PC|ALT_INV_DOUT\(1),
	datac => \CPU|INSTR|PC|ALT_INV_DOUT\(2),
	datad => \CPU|INSTR|PC|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~11_combout\);

\CPU|DECODER|ENABLE_READ~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER|ENABLE_READ~0_combout\ = ( !\ROM|memROM~13_combout\ & ( \ROM|memROM~15_combout\ & ( (!\CPU|INSTR|PC|DOUT\(8) & (\ROM|memROM~1_combout\ & (!\ROM|memROM~9_combout\ & !\ROM|memROM~11_combout\))) ) ) ) # ( !\ROM|memROM~13_combout\ & ( 
-- !\ROM|memROM~15_combout\ & ( (!\CPU|INSTR|PC|DOUT\(8) & (\ROM|memROM~1_combout\ & ((\ROM|memROM~11_combout\) # (\ROM|memROM~9_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000100010000000000000000000100000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|PC|ALT_INV_DOUT\(8),
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \ROM|ALT_INV_memROM~9_combout\,
	datad => \ROM|ALT_INV_memROM~11_combout\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ROM|ALT_INV_memROM~15_combout\,
	combout => \CPU|DECODER|ENABLE_READ~0_combout\);

\ROM|memROM~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~20_combout\ = (\ROM|memROM~1_combout\ & \ROM|memROM~7_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \ROM|ALT_INV_memROM~7_combout\,
	combout => \ROM|memROM~20_combout\);

\ROM|memROM~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~19_combout\ = (\ROM|memROM~1_combout\ & \ROM|memROM~5_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \ROM|ALT_INV_memROM~5_combout\,
	combout => \ROM|memROM~19_combout\);

\ROM|memROM~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~18_combout\ = (\ROM|memROM~1_combout\ & \ROM|memROM~3_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \ROM|ALT_INV_memROM~3_combout\,
	combout => \ROM|memROM~18_combout\);

\RAM|dado_out[0]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[0]~8_combout\ = (!\CPU|DECODER|ENABLE_READ~0_combout\) # (\RAM|ram~144_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101110111011101110111011101110111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_ENABLE_READ~0_combout\,
	datab => \RAM|ALT_INV_ram~144_combout\,
	combout => \RAM|dado_out[0]~8_combout\);

\ROM|memROM~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~17_combout\ = (\ROM|memROM~0_combout\ & \ROM|memROM~1_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \ROM|ALT_INV_memROM~1_combout\,
	combout => \ROM|memROM~17_combout\);

\CPU|ULA1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~1_sumout\ = SUM(( (!\CPU|DECODER|Equal10~1_combout\ & (((\RAM|dado_out[0]~8_combout\)))) # (\CPU|DECODER|Equal10~1_combout\ & (!\CPU|INSTR|PC|DOUT\(8) & ((\ROM|memROM~17_combout\)))) ) + ( \CPU|REG_A|DOUT\(0) ) + ( !VCC ))
-- \CPU|ULA1|Add0~2\ = CARRY(( (!\CPU|DECODER|Equal10~1_combout\ & (((\RAM|dado_out[0]~8_combout\)))) # (\CPU|DECODER|Equal10~1_combout\ & (!\CPU|INSTR|PC|DOUT\(8) & ((\ROM|memROM~17_combout\)))) ) + ( \CPU|REG_A|DOUT\(0) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000101001001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal10~1_combout\,
	datab => \CPU|INSTR|PC|ALT_INV_DOUT\(8),
	datac => \RAM|ALT_INV_dado_out[0]~8_combout\,
	datad => \ROM|ALT_INV_memROM~17_combout\,
	dataf => \CPU|REG_A|ALT_INV_DOUT\(0),
	cin => GND,
	sumout => \CPU|ULA1|Add0~1_sumout\,
	cout => \CPU|ULA1|Add0~2\);

\CPU|ULA1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~5_sumout\ = SUM(( (!\CPU|DECODER|Equal10~1_combout\ & (((\RAM|dado_out[1]~9_combout\)))) # (\CPU|DECODER|Equal10~1_combout\ & (!\CPU|INSTR|PC|DOUT\(8) & (\ROM|memROM~18_combout\))) ) + ( \CPU|REG_A|DOUT\(1) ) + ( \CPU|ULA1|Add0~2\ ))
-- \CPU|ULA1|Add0~6\ = CARRY(( (!\CPU|DECODER|Equal10~1_combout\ & (((\RAM|dado_out[1]~9_combout\)))) # (\CPU|DECODER|Equal10~1_combout\ & (!\CPU|INSTR|PC|DOUT\(8) & (\ROM|memROM~18_combout\))) ) + ( \CPU|REG_A|DOUT\(1) ) + ( \CPU|ULA1|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal10~1_combout\,
	datab => \CPU|INSTR|PC|ALT_INV_DOUT\(8),
	datac => \ROM|ALT_INV_memROM~18_combout\,
	datad => \RAM|ALT_INV_dado_out[1]~9_combout\,
	dataf => \CPU|REG_A|ALT_INV_DOUT\(1),
	cin => \CPU|ULA1|Add0~2\,
	sumout => \CPU|ULA1|Add0~5_sumout\,
	cout => \CPU|ULA1|Add0~6\);

\CPU|DECODER|sinais_controle~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER|sinais_controle~0_combout\ = (!\ROM|memROM~16_combout\ & (!\ROM|memROM~12_combout\ & (!\ROM|memROM~14_combout\ $ (!\ROM|memROM~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000010000000001000001000000000100000100000000010000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~16_combout\,
	datab => \ROM|ALT_INV_memROM~14_combout\,
	datac => \ROM|ALT_INV_memROM~12_combout\,
	datad => \ROM|ALT_INV_memROM~10_combout\,
	combout => \CPU|DECODER|sinais_controle~0_combout\);

\CPU|ULA1|Add1~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~34_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \CPU|ULA1|Add1~34_cout\);

\CPU|ULA1|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~1_sumout\ = SUM(( (!\CPU|DECODER|Equal10~1_combout\ & (!\RAM|dado_out[0]~8_combout\)) # (\CPU|DECODER|Equal10~1_combout\ & (((!\ROM|memROM~17_combout\) # (\CPU|INSTR|PC|DOUT\(8))))) ) + ( \CPU|REG_A|DOUT\(0) ) + ( \CPU|ULA1|Add1~34_cout\ ))
-- \CPU|ULA1|Add1~2\ = CARRY(( (!\CPU|DECODER|Equal10~1_combout\ & (!\RAM|dado_out[0]~8_combout\)) # (\CPU|DECODER|Equal10~1_combout\ & (((!\ROM|memROM~17_combout\) # (\CPU|INSTR|PC|DOUT\(8))))) ) + ( \CPU|REG_A|DOUT\(0) ) + ( \CPU|ULA1|Add1~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001101110110001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal10~1_combout\,
	datab => \RAM|ALT_INV_dado_out[0]~8_combout\,
	datac => \CPU|INSTR|PC|ALT_INV_DOUT\(8),
	datad => \ROM|ALT_INV_memROM~17_combout\,
	dataf => \CPU|REG_A|ALT_INV_DOUT\(0),
	cin => \CPU|ULA1|Add1~34_cout\,
	sumout => \CPU|ULA1|Add1~1_sumout\,
	cout => \CPU|ULA1|Add1~2\);

\CPU|ULA1|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~5_sumout\ = SUM(( (!\CPU|DECODER|Equal10~1_combout\ & (((!\RAM|dado_out[1]~9_combout\)))) # (\CPU|DECODER|Equal10~1_combout\ & (((!\ROM|memROM~18_combout\)) # (\CPU|INSTR|PC|DOUT\(8)))) ) + ( \CPU|REG_A|DOUT\(1) ) + ( \CPU|ULA1|Add1~2\ ))
-- \CPU|ULA1|Add1~6\ = CARRY(( (!\CPU|DECODER|Equal10~1_combout\ & (((!\RAM|dado_out[1]~9_combout\)))) # (\CPU|DECODER|Equal10~1_combout\ & (((!\ROM|memROM~18_combout\)) # (\CPU|INSTR|PC|DOUT\(8)))) ) + ( \CPU|REG_A|DOUT\(1) ) + ( \CPU|ULA1|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111101101010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal10~1_combout\,
	datab => \CPU|INSTR|PC|ALT_INV_DOUT\(8),
	datac => \ROM|ALT_INV_memROM~18_combout\,
	datad => \RAM|ALT_INV_dado_out[1]~9_combout\,
	dataf => \CPU|REG_A|ALT_INV_DOUT\(1),
	cin => \CPU|ULA1|Add1~2\,
	sumout => \CPU|ULA1|Add1~5_sumout\,
	cout => \CPU|ULA1|Add1~6\);

\CPU|ULA1|saida[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[1]~1_combout\ = ( \CPU|ULA1|Add1~5_sumout\ & ( (!\CPU|DECODER|sinais_controle~0_combout\) # ((!\CPU|DECODER|Equal10~1_combout\ & ((\RAM|dado_out[1]~9_combout\))) # (\CPU|DECODER|Equal10~1_combout\ & (\ROM|memROM~4_combout\))) ) ) # ( 
-- !\CPU|ULA1|Add1~5_sumout\ & ( (\CPU|DECODER|sinais_controle~0_combout\ & ((!\CPU|DECODER|Equal10~1_combout\ & ((\RAM|dado_out[1]~9_combout\))) # (\CPU|DECODER|Equal10~1_combout\ & (\ROM|memROM~4_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100001101111100011111110100000001000011011111000111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~4_combout\,
	datab => \CPU|DECODER|ALT_INV_Equal10~1_combout\,
	datac => \CPU|DECODER|ALT_INV_sinais_controle~0_combout\,
	datad => \RAM|ALT_INV_dado_out[1]~9_combout\,
	datae => \CPU|ULA1|ALT_INV_Add1~5_sumout\,
	combout => \CPU|ULA1|saida[1]~1_combout\);

\CPU|DECODER|Equal10~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER|Equal10~2_combout\ = ((!\ROM|memROM~12_combout\) # ((\ROM|memROM~16_combout\) # (\ROM|memROM~14_combout\))) # (\ROM|memROM~10_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101111111111111110111111111111111011111111111111101111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~10_combout\,
	datab => \ROM|ALT_INV_memROM~12_combout\,
	datac => \ROM|ALT_INV_memROM~14_combout\,
	datad => \ROM|ALT_INV_memROM~16_combout\,
	combout => \CPU|DECODER|Equal10~2_combout\);

\CPU|DECODER|HAB_A~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER|HAB_A~0_combout\ = (!\ROM|memROM~16_combout\ & (!\ROM|memROM~14_combout\ $ (((!\ROM|memROM~10_combout\ & !\ROM|memROM~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111100000000000011110000000000001111000000000000111100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~10_combout\,
	datab => \ROM|ALT_INV_memROM~12_combout\,
	datac => \ROM|ALT_INV_memROM~14_combout\,
	datad => \ROM|ALT_INV_memROM~16_combout\,
	combout => \CPU|DECODER|HAB_A~0_combout\);

\CPU|REG_A|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|ULA1|Add0~5_sumout\,
	asdata => \CPU|ULA1|saida[1]~1_combout\,
	sload => \CPU|DECODER|Equal10~2_combout\,
	ena => \CPU|DECODER|HAB_A~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_A|DOUT\(1));

\CPU|DECODER|Equal10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER|Equal10~0_combout\ = ( \ROM|memROM~13_combout\ & ( !\ROM|memROM~15_combout\ & ( (!\CPU|INSTR|PC|DOUT\(8) & (\ROM|memROM~1_combout\ & (\ROM|memROM~9_combout\ & !\ROM|memROM~11_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000100000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|PC|ALT_INV_DOUT\(8),
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \ROM|ALT_INV_memROM~9_combout\,
	datad => \ROM|ALT_INV_memROM~11_combout\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ROM|ALT_INV_memROM~15_combout\,
	combout => \CPU|DECODER|Equal10~0_combout\);

\RAM|ram~159\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~159_combout\ = ( \CPU|DECODER|Equal10~0_combout\ & ( (!\ROM|memROM~2_combout\ & (!\ROM|memROM~4_combout\ & (!\ROM|memROM~6_combout\ & !\ROM|memROM~8_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000000000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ROM|ALT_INV_memROM~4_combout\,
	datac => \ROM|ALT_INV_memROM~6_combout\,
	datad => \ROM|ALT_INV_memROM~8_combout\,
	datae => \CPU|DECODER|ALT_INV_Equal10~0_combout\,
	combout => \RAM|ram~159_combout\);

\RAM|ram~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG_A|DOUT\(1),
	ena => \RAM|ram~159_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~16_q\);

\RAM|ram~145\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~145_combout\ = ( !\ROM|memROM~6_combout\ & ( !\ROM|memROM~8_combout\ & ( \RAM|ram~16_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~16_q\,
	datae => \ROM|ALT_INV_memROM~6_combout\,
	dataf => \ROM|ALT_INV_memROM~8_combout\,
	combout => \RAM|ram~145_combout\);

\RAM|ram~146\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~146_combout\ = ( !\ROM|memROM~2_combout\ & ( !\ROM|memROM~4_combout\ & ( \RAM|ram~145_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~145_combout\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	combout => \RAM|ram~146_combout\);

\RAM|dado_out[1]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[1]~9_combout\ = (!\CPU|DECODER|ENABLE_READ~0_combout\) # (\RAM|ram~146_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101110111011101110111011101110111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_ENABLE_READ~0_combout\,
	datab => \RAM|ALT_INV_ram~146_combout\,
	combout => \RAM|dado_out[1]~9_combout\);

\CPU|ULA1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~9_sumout\ = SUM(( (!\CPU|DECODER|Equal10~1_combout\ & (((\RAM|dado_out[2]~10_combout\)))) # (\CPU|DECODER|Equal10~1_combout\ & (!\CPU|INSTR|PC|DOUT\(8) & (\ROM|memROM~19_combout\))) ) + ( \CPU|REG_A|DOUT\(2) ) + ( \CPU|ULA1|Add0~6\ ))
-- \CPU|ULA1|Add0~10\ = CARRY(( (!\CPU|DECODER|Equal10~1_combout\ & (((\RAM|dado_out[2]~10_combout\)))) # (\CPU|DECODER|Equal10~1_combout\ & (!\CPU|INSTR|PC|DOUT\(8) & (\ROM|memROM~19_combout\))) ) + ( \CPU|REG_A|DOUT\(2) ) + ( \CPU|ULA1|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal10~1_combout\,
	datab => \CPU|INSTR|PC|ALT_INV_DOUT\(8),
	datac => \ROM|ALT_INV_memROM~19_combout\,
	datad => \RAM|ALT_INV_dado_out[2]~10_combout\,
	dataf => \CPU|REG_A|ALT_INV_DOUT\(2),
	cin => \CPU|ULA1|Add0~6\,
	sumout => \CPU|ULA1|Add0~9_sumout\,
	cout => \CPU|ULA1|Add0~10\);

\CPU|ULA1|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~9_sumout\ = SUM(( (!\CPU|DECODER|Equal10~1_combout\ & (((!\RAM|dado_out[2]~10_combout\)))) # (\CPU|DECODER|Equal10~1_combout\ & (((!\ROM|memROM~19_combout\)) # (\CPU|INSTR|PC|DOUT\(8)))) ) + ( \CPU|REG_A|DOUT\(2) ) + ( \CPU|ULA1|Add1~6\ ))
-- \CPU|ULA1|Add1~10\ = CARRY(( (!\CPU|DECODER|Equal10~1_combout\ & (((!\RAM|dado_out[2]~10_combout\)))) # (\CPU|DECODER|Equal10~1_combout\ & (((!\ROM|memROM~19_combout\)) # (\CPU|INSTR|PC|DOUT\(8)))) ) + ( \CPU|REG_A|DOUT\(2) ) + ( \CPU|ULA1|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111101101010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal10~1_combout\,
	datab => \CPU|INSTR|PC|ALT_INV_DOUT\(8),
	datac => \ROM|ALT_INV_memROM~19_combout\,
	datad => \RAM|ALT_INV_dado_out[2]~10_combout\,
	dataf => \CPU|REG_A|ALT_INV_DOUT\(2),
	cin => \CPU|ULA1|Add1~6\,
	sumout => \CPU|ULA1|Add1~9_sumout\,
	cout => \CPU|ULA1|Add1~10\);

\CPU|ULA1|saida[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[2]~2_combout\ = ( \CPU|ULA1|Add1~9_sumout\ & ( (!\CPU|DECODER|sinais_controle~0_combout\) # ((!\CPU|DECODER|Equal10~1_combout\ & ((\RAM|dado_out[2]~10_combout\))) # (\CPU|DECODER|Equal10~1_combout\ & (\ROM|memROM~6_combout\))) ) ) # ( 
-- !\CPU|ULA1|Add1~9_sumout\ & ( (\CPU|DECODER|sinais_controle~0_combout\ & ((!\CPU|DECODER|Equal10~1_combout\ & ((\RAM|dado_out[2]~10_combout\))) # (\CPU|DECODER|Equal10~1_combout\ & (\ROM|memROM~6_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100001101111100011111110100000001000011011111000111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~6_combout\,
	datab => \CPU|DECODER|ALT_INV_Equal10~1_combout\,
	datac => \CPU|DECODER|ALT_INV_sinais_controle~0_combout\,
	datad => \RAM|ALT_INV_dado_out[2]~10_combout\,
	datae => \CPU|ULA1|ALT_INV_Add1~9_sumout\,
	combout => \CPU|ULA1|saida[2]~2_combout\);

\CPU|REG_A|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|ULA1|Add0~9_sumout\,
	asdata => \CPU|ULA1|saida[2]~2_combout\,
	sload => \CPU|DECODER|Equal10~2_combout\,
	ena => \CPU|DECODER|HAB_A~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_A|DOUT\(2));

\RAM|ram~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG_A|DOUT\(2),
	ena => \RAM|ram~159_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~17_q\);

\RAM|ram~147\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~147_combout\ = ( !\ROM|memROM~2_combout\ & ( !\ROM|memROM~8_combout\ & ( \RAM|ram~17_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~17_q\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ROM|ALT_INV_memROM~8_combout\,
	combout => \RAM|ram~147_combout\);

\RAM|ram~148\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~148_combout\ = ( !\ROM|memROM~6_combout\ & ( !\ROM|memROM~4_combout\ & ( \RAM|ram~147_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~147_combout\,
	datae => \ROM|ALT_INV_memROM~6_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	combout => \RAM|ram~148_combout\);

\RAM|dado_out[2]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[2]~10_combout\ = (!\CPU|DECODER|ENABLE_READ~0_combout\) # (\RAM|ram~148_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101110111011101110111011101110111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_ENABLE_READ~0_combout\,
	datab => \RAM|ALT_INV_ram~148_combout\,
	combout => \RAM|dado_out[2]~10_combout\);

\CPU|ULA1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~13_sumout\ = SUM(( (!\CPU|DECODER|Equal10~1_combout\ & (((\RAM|dado_out[3]~11_combout\)))) # (\CPU|DECODER|Equal10~1_combout\ & (!\CPU|INSTR|PC|DOUT\(8) & ((\ROM|memROM~20_combout\)))) ) + ( \CPU|REG_A|DOUT\(3) ) + ( \CPU|ULA1|Add0~10\ ))
-- \CPU|ULA1|Add0~14\ = CARRY(( (!\CPU|DECODER|Equal10~1_combout\ & (((\RAM|dado_out[3]~11_combout\)))) # (\CPU|DECODER|Equal10~1_combout\ & (!\CPU|INSTR|PC|DOUT\(8) & ((\ROM|memROM~20_combout\)))) ) + ( \CPU|REG_A|DOUT\(3) ) + ( \CPU|ULA1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000101001001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal10~1_combout\,
	datab => \CPU|INSTR|PC|ALT_INV_DOUT\(8),
	datac => \RAM|ALT_INV_dado_out[3]~11_combout\,
	datad => \ROM|ALT_INV_memROM~20_combout\,
	dataf => \CPU|REG_A|ALT_INV_DOUT\(3),
	cin => \CPU|ULA1|Add0~10\,
	sumout => \CPU|ULA1|Add0~13_sumout\,
	cout => \CPU|ULA1|Add0~14\);

\CPU|ULA1|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~13_sumout\ = SUM(( (!\CPU|DECODER|Equal10~1_combout\ & (!\RAM|dado_out[3]~11_combout\)) # (\CPU|DECODER|Equal10~1_combout\ & (((!\ROM|memROM~20_combout\) # (\CPU|INSTR|PC|DOUT\(8))))) ) + ( \CPU|REG_A|DOUT\(3) ) + ( \CPU|ULA1|Add1~10\ ))
-- \CPU|ULA1|Add1~14\ = CARRY(( (!\CPU|DECODER|Equal10~1_combout\ & (!\RAM|dado_out[3]~11_combout\)) # (\CPU|DECODER|Equal10~1_combout\ & (((!\ROM|memROM~20_combout\) # (\CPU|INSTR|PC|DOUT\(8))))) ) + ( \CPU|REG_A|DOUT\(3) ) + ( \CPU|ULA1|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001101110110001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal10~1_combout\,
	datab => \RAM|ALT_INV_dado_out[3]~11_combout\,
	datac => \CPU|INSTR|PC|ALT_INV_DOUT\(8),
	datad => \ROM|ALT_INV_memROM~20_combout\,
	dataf => \CPU|REG_A|ALT_INV_DOUT\(3),
	cin => \CPU|ULA1|Add1~10\,
	sumout => \CPU|ULA1|Add1~13_sumout\,
	cout => \CPU|ULA1|Add1~14\);

\CPU|ULA1|saida[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[3]~3_combout\ = ( \CPU|ULA1|Add1~13_sumout\ & ( (!\CPU|DECODER|sinais_controle~0_combout\) # ((!\CPU|DECODER|Equal10~1_combout\ & ((\RAM|dado_out[3]~11_combout\))) # (\CPU|DECODER|Equal10~1_combout\ & (\ROM|memROM~8_combout\))) ) ) # ( 
-- !\CPU|ULA1|Add1~13_sumout\ & ( (\CPU|DECODER|sinais_controle~0_combout\ & ((!\CPU|DECODER|Equal10~1_combout\ & ((\RAM|dado_out[3]~11_combout\))) # (\CPU|DECODER|Equal10~1_combout\ & (\ROM|memROM~8_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100001101111100011111110100000001000011011111000111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~8_combout\,
	datab => \CPU|DECODER|ALT_INV_Equal10~1_combout\,
	datac => \CPU|DECODER|ALT_INV_sinais_controle~0_combout\,
	datad => \RAM|ALT_INV_dado_out[3]~11_combout\,
	datae => \CPU|ULA1|ALT_INV_Add1~13_sumout\,
	combout => \CPU|ULA1|saida[3]~3_combout\);

\CPU|REG_A|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|ULA1|Add0~13_sumout\,
	asdata => \CPU|ULA1|saida[3]~3_combout\,
	sload => \CPU|DECODER|Equal10~2_combout\,
	ena => \CPU|DECODER|HAB_A~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_A|DOUT\(3));

\RAM|ram~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG_A|DOUT\(3),
	ena => \RAM|ram~159_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~18_q\);

\RAM|ram~149\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~149_combout\ = ( !\ROM|memROM~8_combout\ & ( !\ROM|memROM~4_combout\ & ( \RAM|ram~18_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~18_q\,
	datae => \ROM|ALT_INV_memROM~8_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	combout => \RAM|ram~149_combout\);

\RAM|ram~150\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~150_combout\ = ( !\ROM|memROM~6_combout\ & ( !\ROM|memROM~2_combout\ & ( \RAM|ram~149_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~149_combout\,
	datae => \ROM|ALT_INV_memROM~6_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \RAM|ram~150_combout\);

\RAM|dado_out[3]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[3]~11_combout\ = (!\CPU|DECODER|ENABLE_READ~0_combout\) # (\RAM|ram~150_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101110111011101110111011101110111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_ENABLE_READ~0_combout\,
	datab => \RAM|ALT_INV_ram~150_combout\,
	combout => \RAM|dado_out[3]~11_combout\);

\CPU|ULA1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~17_sumout\ = SUM(( (!\CPU|DECODER|Equal10~1_combout\ & \RAM|dado_out[4]~12_combout\) ) + ( \CPU|REG_A|DOUT\(4) ) + ( \CPU|ULA1|Add0~14\ ))
-- \CPU|ULA1|Add0~18\ = CARRY(( (!\CPU|DECODER|Equal10~1_combout\ & \RAM|dado_out[4]~12_combout\) ) + ( \CPU|REG_A|DOUT\(4) ) + ( \CPU|ULA1|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal10~1_combout\,
	datad => \RAM|ALT_INV_dado_out[4]~12_combout\,
	dataf => \CPU|REG_A|ALT_INV_DOUT\(4),
	cin => \CPU|ULA1|Add0~14\,
	sumout => \CPU|ULA1|Add0~17_sumout\,
	cout => \CPU|ULA1|Add0~18\);

\CPU|ULA1|saida[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[4]~4_combout\ = (!\CPU|DECODER|sinais_controle~0_combout\ & (((\CPU|ULA1|Add1~17_sumout\)))) # (\CPU|DECODER|sinais_controle~0_combout\ & (!\CPU|DECODER|Equal10~1_combout\ & (\RAM|dado_out[4]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001011001110000000101100111000000010110011100000001011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal10~1_combout\,
	datab => \CPU|DECODER|ALT_INV_sinais_controle~0_combout\,
	datac => \RAM|ALT_INV_dado_out[4]~12_combout\,
	datad => \CPU|ULA1|ALT_INV_Add1~17_sumout\,
	combout => \CPU|ULA1|saida[4]~4_combout\);

\CPU|REG_A|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|ULA1|Add0~17_sumout\,
	asdata => \CPU|ULA1|saida[4]~4_combout\,
	sload => \CPU|DECODER|Equal10~2_combout\,
	ena => \CPU|DECODER|HAB_A~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_A|DOUT\(4));

\RAM|ram~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG_A|DOUT\(4),
	ena => \RAM|ram~159_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~19_q\);

\RAM|ram~151\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~151_combout\ = ( !\ROM|memROM~2_combout\ & ( !\ROM|memROM~6_combout\ & ( \RAM|ram~19_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~19_q\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ROM|ALT_INV_memROM~6_combout\,
	combout => \RAM|ram~151_combout\);

\RAM|ram~152\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~152_combout\ = ( !\ROM|memROM~8_combout\ & ( !\ROM|memROM~4_combout\ & ( \RAM|ram~151_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~151_combout\,
	datae => \ROM|ALT_INV_memROM~8_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	combout => \RAM|ram~152_combout\);

\RAM|dado_out[4]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[4]~12_combout\ = (!\CPU|DECODER|ENABLE_READ~0_combout\) # (\RAM|ram~152_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101110111011101110111011101110111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_ENABLE_READ~0_combout\,
	datab => \RAM|ALT_INV_ram~152_combout\,
	combout => \RAM|dado_out[4]~12_combout\);

\CPU|ULA1|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~17_sumout\ = SUM(( (!\RAM|dado_out[4]~12_combout\) # (\CPU|DECODER|Equal10~1_combout\) ) + ( \CPU|REG_A|DOUT\(4) ) + ( \CPU|ULA1|Add1~14\ ))
-- \CPU|ULA1|Add1~18\ = CARRY(( (!\RAM|dado_out[4]~12_combout\) # (\CPU|DECODER|Equal10~1_combout\) ) + ( \CPU|REG_A|DOUT\(4) ) + ( \CPU|ULA1|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal10~1_combout\,
	datad => \RAM|ALT_INV_dado_out[4]~12_combout\,
	dataf => \CPU|REG_A|ALT_INV_DOUT\(4),
	cin => \CPU|ULA1|Add1~14\,
	sumout => \CPU|ULA1|Add1~17_sumout\,
	cout => \CPU|ULA1|Add1~18\);

\CPU|ULA1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~21_sumout\ = SUM(( (!\CPU|DECODER|Equal10~1_combout\ & \RAM|dado_out[5]~13_combout\) ) + ( \CPU|REG_A|DOUT\(5) ) + ( \CPU|ULA1|Add0~18\ ))
-- \CPU|ULA1|Add0~22\ = CARRY(( (!\CPU|DECODER|Equal10~1_combout\ & \RAM|dado_out[5]~13_combout\) ) + ( \CPU|REG_A|DOUT\(5) ) + ( \CPU|ULA1|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal10~1_combout\,
	datad => \RAM|ALT_INV_dado_out[5]~13_combout\,
	dataf => \CPU|REG_A|ALT_INV_DOUT\(5),
	cin => \CPU|ULA1|Add0~18\,
	sumout => \CPU|ULA1|Add0~21_sumout\,
	cout => \CPU|ULA1|Add0~22\);

\CPU|ULA1|saida[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[5]~5_combout\ = (!\CPU|DECODER|sinais_controle~0_combout\ & (((\CPU|ULA1|Add1~21_sumout\)))) # (\CPU|DECODER|sinais_controle~0_combout\ & (!\CPU|DECODER|Equal10~1_combout\ & (\RAM|dado_out[5]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001011001110000000101100111000000010110011100000001011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal10~1_combout\,
	datab => \CPU|DECODER|ALT_INV_sinais_controle~0_combout\,
	datac => \RAM|ALT_INV_dado_out[5]~13_combout\,
	datad => \CPU|ULA1|ALT_INV_Add1~21_sumout\,
	combout => \CPU|ULA1|saida[5]~5_combout\);

\CPU|REG_A|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|ULA1|Add0~21_sumout\,
	asdata => \CPU|ULA1|saida[5]~5_combout\,
	sload => \CPU|DECODER|Equal10~2_combout\,
	ena => \CPU|DECODER|HAB_A~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_A|DOUT\(5));

\RAM|ram~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG_A|DOUT\(5),
	ena => \RAM|ram~159_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~20_q\);

\RAM|ram~153\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~153_combout\ = ( !\ROM|memROM~8_combout\ & ( !\ROM|memROM~4_combout\ & ( \RAM|ram~20_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~20_q\,
	datae => \ROM|ALT_INV_memROM~8_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	combout => \RAM|ram~153_combout\);

\RAM|ram~154\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~154_combout\ = ( !\ROM|memROM~6_combout\ & ( !\ROM|memROM~2_combout\ & ( \RAM|ram~153_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~153_combout\,
	datae => \ROM|ALT_INV_memROM~6_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \RAM|ram~154_combout\);

\RAM|dado_out[5]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[5]~13_combout\ = (!\CPU|DECODER|ENABLE_READ~0_combout\) # (\RAM|ram~154_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101110111011101110111011101110111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_ENABLE_READ~0_combout\,
	datab => \RAM|ALT_INV_ram~154_combout\,
	combout => \RAM|dado_out[5]~13_combout\);

\CPU|ULA1|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~21_sumout\ = SUM(( (!\RAM|dado_out[5]~13_combout\) # (\CPU|DECODER|Equal10~1_combout\) ) + ( \CPU|REG_A|DOUT\(5) ) + ( \CPU|ULA1|Add1~18\ ))
-- \CPU|ULA1|Add1~22\ = CARRY(( (!\RAM|dado_out[5]~13_combout\) # (\CPU|DECODER|Equal10~1_combout\) ) + ( \CPU|REG_A|DOUT\(5) ) + ( \CPU|ULA1|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal10~1_combout\,
	datad => \RAM|ALT_INV_dado_out[5]~13_combout\,
	dataf => \CPU|REG_A|ALT_INV_DOUT\(5),
	cin => \CPU|ULA1|Add1~18\,
	sumout => \CPU|ULA1|Add1~21_sumout\,
	cout => \CPU|ULA1|Add1~22\);

\CPU|ULA1|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~25_sumout\ = SUM(( (!\CPU|DECODER|Equal10~1_combout\ & \RAM|dado_out[6]~14_combout\) ) + ( \CPU|REG_A|DOUT\(6) ) + ( \CPU|ULA1|Add0~22\ ))
-- \CPU|ULA1|Add0~26\ = CARRY(( (!\CPU|DECODER|Equal10~1_combout\ & \RAM|dado_out[6]~14_combout\) ) + ( \CPU|REG_A|DOUT\(6) ) + ( \CPU|ULA1|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal10~1_combout\,
	datad => \RAM|ALT_INV_dado_out[6]~14_combout\,
	dataf => \CPU|REG_A|ALT_INV_DOUT\(6),
	cin => \CPU|ULA1|Add0~22\,
	sumout => \CPU|ULA1|Add0~25_sumout\,
	cout => \CPU|ULA1|Add0~26\);

\CPU|ULA1|saida[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[6]~6_combout\ = (!\CPU|DECODER|sinais_controle~0_combout\ & (((\CPU|ULA1|Add1~25_sumout\)))) # (\CPU|DECODER|sinais_controle~0_combout\ & (!\CPU|DECODER|Equal10~1_combout\ & (\RAM|dado_out[6]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001011001110000000101100111000000010110011100000001011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal10~1_combout\,
	datab => \CPU|DECODER|ALT_INV_sinais_controle~0_combout\,
	datac => \RAM|ALT_INV_dado_out[6]~14_combout\,
	datad => \CPU|ULA1|ALT_INV_Add1~25_sumout\,
	combout => \CPU|ULA1|saida[6]~6_combout\);

\CPU|REG_A|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|ULA1|Add0~25_sumout\,
	asdata => \CPU|ULA1|saida[6]~6_combout\,
	sload => \CPU|DECODER|Equal10~2_combout\,
	ena => \CPU|DECODER|HAB_A~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_A|DOUT\(6));

\RAM|ram~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG_A|DOUT\(6),
	ena => \RAM|ram~159_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~21_q\);

\RAM|ram~155\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~155_combout\ = ( !\ROM|memROM~2_combout\ & ( !\ROM|memROM~6_combout\ & ( \RAM|ram~21_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~21_q\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ROM|ALT_INV_memROM~6_combout\,
	combout => \RAM|ram~155_combout\);

\RAM|ram~156\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~156_combout\ = ( !\ROM|memROM~8_combout\ & ( !\ROM|memROM~4_combout\ & ( \RAM|ram~155_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~155_combout\,
	datae => \ROM|ALT_INV_memROM~8_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	combout => \RAM|ram~156_combout\);

\RAM|dado_out[6]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[6]~14_combout\ = (!\CPU|DECODER|ENABLE_READ~0_combout\) # (\RAM|ram~156_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101110111011101110111011101110111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_ENABLE_READ~0_combout\,
	datab => \RAM|ALT_INV_ram~156_combout\,
	combout => \RAM|dado_out[6]~14_combout\);

\CPU|ULA1|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~25_sumout\ = SUM(( (!\RAM|dado_out[6]~14_combout\) # (\CPU|DECODER|Equal10~1_combout\) ) + ( \CPU|REG_A|DOUT\(6) ) + ( \CPU|ULA1|Add1~22\ ))
-- \CPU|ULA1|Add1~26\ = CARRY(( (!\RAM|dado_out[6]~14_combout\) # (\CPU|DECODER|Equal10~1_combout\) ) + ( \CPU|REG_A|DOUT\(6) ) + ( \CPU|ULA1|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal10~1_combout\,
	datad => \RAM|ALT_INV_dado_out[6]~14_combout\,
	dataf => \CPU|REG_A|ALT_INV_DOUT\(6),
	cin => \CPU|ULA1|Add1~22\,
	sumout => \CPU|ULA1|Add1~25_sumout\,
	cout => \CPU|ULA1|Add1~26\);

\CPU|ULA1|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~29_sumout\ = SUM(( (!\CPU|DECODER|Equal10~1_combout\ & \RAM|dado_out[7]~15_combout\) ) + ( \CPU|REG_A|DOUT\(7) ) + ( \CPU|ULA1|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal10~1_combout\,
	datad => \RAM|ALT_INV_dado_out[7]~15_combout\,
	dataf => \CPU|REG_A|ALT_INV_DOUT\(7),
	cin => \CPU|ULA1|Add0~26\,
	sumout => \CPU|ULA1|Add0~29_sumout\);

\CPU|ULA1|saida[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[7]~7_combout\ = (!\CPU|DECODER|sinais_controle~0_combout\ & (((\CPU|ULA1|Add1~29_sumout\)))) # (\CPU|DECODER|sinais_controle~0_combout\ & (!\CPU|DECODER|Equal10~1_combout\ & (\RAM|dado_out[7]~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001011001110000000101100111000000010110011100000001011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal10~1_combout\,
	datab => \CPU|DECODER|ALT_INV_sinais_controle~0_combout\,
	datac => \RAM|ALT_INV_dado_out[7]~15_combout\,
	datad => \CPU|ULA1|ALT_INV_Add1~29_sumout\,
	combout => \CPU|ULA1|saida[7]~7_combout\);

\CPU|REG_A|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|ULA1|Add0~29_sumout\,
	asdata => \CPU|ULA1|saida[7]~7_combout\,
	sload => \CPU|DECODER|Equal10~2_combout\,
	ena => \CPU|DECODER|HAB_A~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_A|DOUT\(7));

\RAM|ram~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG_A|DOUT\(7),
	ena => \RAM|ram~159_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~22_q\);

\RAM|ram~157\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~157_combout\ = ( !\ROM|memROM~8_combout\ & ( !\ROM|memROM~4_combout\ & ( \RAM|ram~22_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~22_q\,
	datae => \ROM|ALT_INV_memROM~8_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	combout => \RAM|ram~157_combout\);

\RAM|ram~158\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~158_combout\ = ( !\ROM|memROM~6_combout\ & ( !\ROM|memROM~2_combout\ & ( \RAM|ram~157_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~157_combout\,
	datae => \ROM|ALT_INV_memROM~6_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \RAM|ram~158_combout\);

\RAM|dado_out[7]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[7]~15_combout\ = (!\CPU|DECODER|ENABLE_READ~0_combout\) # (\RAM|ram~158_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101110111011101110111011101110111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_ENABLE_READ~0_combout\,
	datab => \RAM|ALT_INV_ram~158_combout\,
	combout => \RAM|dado_out[7]~15_combout\);

\CPU|ULA1|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~29_sumout\ = SUM(( (!\RAM|dado_out[7]~15_combout\) # (\CPU|DECODER|Equal10~1_combout\) ) + ( \CPU|REG_A|DOUT\(7) ) + ( \CPU|ULA1|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal10~1_combout\,
	datad => \RAM|ALT_INV_dado_out[7]~15_combout\,
	dataf => \CPU|REG_A|ALT_INV_DOUT\(7),
	cin => \CPU|ULA1|Add1~26\,
	sumout => \CPU|ULA1|Add1~29_sumout\);

\CPU|FLAG|DOUT~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FLAG|DOUT~1_combout\ = ( !\ROM|memROM~13_combout\ & ( \ROM|memROM~15_combout\ & ( (!\CPU|INSTR|PC|DOUT\(8) & (\ROM|memROM~1_combout\ & (!\ROM|memROM~9_combout\ & !\ROM|memROM~11_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|PC|ALT_INV_DOUT\(8),
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \ROM|ALT_INV_memROM~9_combout\,
	datad => \ROM|ALT_INV_memROM~11_combout\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ROM|ALT_INV_memROM~15_combout\,
	combout => \CPU|FLAG|DOUT~1_combout\);

\CPU|FLAG|DOUT~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FLAG|DOUT~2_combout\ = ( \CPU|FLAG|DOUT~q\ & ( \CPU|FLAG|DOUT~1_combout\ & ( (!\CPU|ULA1|Add1~1_sumout\ & (!\CPU|ULA1|Add1~5_sumout\ & (!\CPU|ULA1|Add1~9_sumout\ & !\CPU|ULA1|Add1~13_sumout\))) ) ) ) # ( !\CPU|FLAG|DOUT~q\ & ( 
-- \CPU|FLAG|DOUT~1_combout\ & ( (!\CPU|ULA1|Add1~1_sumout\ & (!\CPU|ULA1|Add1~5_sumout\ & (!\CPU|ULA1|Add1~9_sumout\ & !\CPU|ULA1|Add1~13_sumout\))) ) ) ) # ( \CPU|FLAG|DOUT~q\ & ( !\CPU|FLAG|DOUT~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111110000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ULA1|ALT_INV_Add1~1_sumout\,
	datab => \CPU|ULA1|ALT_INV_Add1~5_sumout\,
	datac => \CPU|ULA1|ALT_INV_Add1~9_sumout\,
	datad => \CPU|ULA1|ALT_INV_Add1~13_sumout\,
	datae => \CPU|FLAG|ALT_INV_DOUT~q\,
	dataf => \CPU|FLAG|ALT_INV_DOUT~1_combout\,
	combout => \CPU|FLAG|DOUT~2_combout\);

\CPU|FLAG|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FLAG|DOUT~0_combout\ = ( \CPU|FLAG|DOUT~1_combout\ & ( \CPU|FLAG|DOUT~2_combout\ & ( (!\CPU|ULA1|Add1~17_sumout\ & (!\CPU|ULA1|Add1~21_sumout\ & (!\CPU|ULA1|Add1~25_sumout\ & !\CPU|ULA1|Add1~29_sumout\))) ) ) ) # ( !\CPU|FLAG|DOUT~1_combout\ & ( 
-- \CPU|FLAG|DOUT~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ULA1|ALT_INV_Add1~17_sumout\,
	datab => \CPU|ULA1|ALT_INV_Add1~21_sumout\,
	datac => \CPU|ULA1|ALT_INV_Add1~25_sumout\,
	datad => \CPU|ULA1|ALT_INV_Add1~29_sumout\,
	datae => \CPU|FLAG|ALT_INV_DOUT~1_combout\,
	dataf => \CPU|FLAG|ALT_INV_DOUT~2_combout\,
	combout => \CPU|FLAG|DOUT~0_combout\);

\CPU|FLAG|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|FLAG|DOUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|FLAG|DOUT~q\);

\CPU|INSTR|MUX2|MUX_OUT[8]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|INSTR|MUX2|MUX_OUT[8]~0_combout\ = ( \CPU|FLAG|DOUT~q\ & ( (!\ROM|memROM~12_combout\ & (\ROM|memROM~10_combout\ & (!\ROM|memROM~14_combout\ & \ROM|memROM~16_combout\))) # (\ROM|memROM~12_combout\ & (((\ROM|memROM~14_combout\ & 
-- !\ROM|memROM~16_combout\)))) ) ) # ( !\CPU|FLAG|DOUT~q\ & ( (!\ROM|memROM~10_combout\ & (\ROM|memROM~12_combout\ & (\ROM|memROM~14_combout\ & !\ROM|memROM~16_combout\))) # (\ROM|memROM~10_combout\ & (!\ROM|memROM~12_combout\ & (!\ROM|memROM~14_combout\ & 
-- \ROM|memROM~16_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001000000000000110100000000000010010000000000001101000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~10_combout\,
	datab => \ROM|ALT_INV_memROM~12_combout\,
	datac => \ROM|ALT_INV_memROM~14_combout\,
	datad => \ROM|ALT_INV_memROM~16_combout\,
	datae => \CPU|FLAG|ALT_INV_DOUT~q\,
	combout => \CPU|INSTR|MUX2|MUX_OUT[8]~0_combout\);

\CPU|INSTR|PC|DOUT[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|INSTR|PC|DOUT[0]~0_combout\ = (\CPU|LOG_DESVIO|Equal5~0_combout\ & \CPU|INSTR|MUX2|MUX_OUT[8]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|LOG_DESVIO|ALT_INV_Equal5~0_combout\,
	datab => \CPU|INSTR|MUX2|ALT_INV_MUX_OUT[8]~0_combout\,
	combout => \CPU|INSTR|PC|DOUT[0]~0_combout\);

\CPU|INSTR|SOMA_CONST|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|INSTR|SOMA_CONST|Add0~5_sumout\ = SUM(( \CPU|INSTR|PC|DOUT\(0) ) + ( VCC ) + ( !VCC ))
-- \CPU|INSTR|SOMA_CONST|Add0~6\ = CARRY(( \CPU|INSTR|PC|DOUT\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|INSTR|PC|ALT_INV_DOUT\(0),
	cin => GND,
	sumout => \CPU|INSTR|SOMA_CONST|Add0~5_sumout\,
	cout => \CPU|INSTR|SOMA_CONST|Add0~6\);

\CPU|INSTR|SOMA_CONST|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|INSTR|SOMA_CONST|Add0~9_sumout\ = SUM(( \CPU|INSTR|PC|DOUT\(1) ) + ( GND ) + ( \CPU|INSTR|SOMA_CONST|Add0~6\ ))
-- \CPU|INSTR|SOMA_CONST|Add0~10\ = CARRY(( \CPU|INSTR|PC|DOUT\(1) ) + ( GND ) + ( \CPU|INSTR|SOMA_CONST|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|INSTR|PC|ALT_INV_DOUT\(1),
	cin => \CPU|INSTR|SOMA_CONST|Add0~6\,
	sumout => \CPU|INSTR|SOMA_CONST|Add0~9_sumout\,
	cout => \CPU|INSTR|SOMA_CONST|Add0~10\);

\CPU|INSTR|SOMA_CONST|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|INSTR|SOMA_CONST|Add0~13_sumout\ = SUM(( \CPU|INSTR|PC|DOUT\(2) ) + ( GND ) + ( \CPU|INSTR|SOMA_CONST|Add0~10\ ))
-- \CPU|INSTR|SOMA_CONST|Add0~14\ = CARRY(( \CPU|INSTR|PC|DOUT\(2) ) + ( GND ) + ( \CPU|INSTR|SOMA_CONST|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|INSTR|PC|ALT_INV_DOUT\(2),
	cin => \CPU|INSTR|SOMA_CONST|Add0~10\,
	sumout => \CPU|INSTR|SOMA_CONST|Add0~13_sumout\,
	cout => \CPU|INSTR|SOMA_CONST|Add0~14\);

\CPU|INSTR|SOMA_CONST|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|INSTR|SOMA_CONST|Add0~17_sumout\ = SUM(( \CPU|INSTR|PC|DOUT\(3) ) + ( GND ) + ( \CPU|INSTR|SOMA_CONST|Add0~14\ ))
-- \CPU|INSTR|SOMA_CONST|Add0~18\ = CARRY(( \CPU|INSTR|PC|DOUT\(3) ) + ( GND ) + ( \CPU|INSTR|SOMA_CONST|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|INSTR|PC|ALT_INV_DOUT\(3),
	cin => \CPU|INSTR|SOMA_CONST|Add0~14\,
	sumout => \CPU|INSTR|SOMA_CONST|Add0~17_sumout\,
	cout => \CPU|INSTR|SOMA_CONST|Add0~18\);

\CPU|DECODER|Equal10~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER|Equal10~3_combout\ = ( !\ROM|memROM~13_combout\ & ( \ROM|memROM~15_combout\ & ( (!\CPU|INSTR|PC|DOUT\(8) & (\ROM|memROM~1_combout\ & (\ROM|memROM~9_combout\ & !\ROM|memROM~11_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000010000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|PC|ALT_INV_DOUT\(8),
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \ROM|ALT_INV_memROM~9_combout\,
	datad => \ROM|ALT_INV_memROM~11_combout\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ROM|ALT_INV_memROM~15_combout\,
	combout => \CPU|DECODER|Equal10~3_combout\);

\CPU|INSTR|END_RETORNO|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|INSTR|SOMA_CONST|Add0~17_sumout\,
	ena => \CPU|DECODER|Equal10~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|INSTR|END_RETORNO|DOUT\(3));

\CPU|INSTR|MUX2|MUX_OUT[3]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|INSTR|MUX2|MUX_OUT[3]~5_combout\ = ( \CPU|INSTR|SOMA_CONST|Add0~17_sumout\ & ( (!\CPU|LOG_DESVIO|DESV_JUMP~0_combout\ & (((!\CPU|INSTR|PC|DOUT[0]~0_combout\)) # (\ROM|memROM~8_combout\))) # (\CPU|LOG_DESVIO|DESV_JUMP~0_combout\ & 
-- (((\CPU|INSTR|END_RETORNO|DOUT\(3))))) ) ) # ( !\CPU|INSTR|SOMA_CONST|Add0~17_sumout\ & ( (!\CPU|LOG_DESVIO|DESV_JUMP~0_combout\ & (\ROM|memROM~8_combout\ & (\CPU|INSTR|PC|DOUT[0]~0_combout\))) # (\CPU|LOG_DESVIO|DESV_JUMP~0_combout\ & 
-- (((\CPU|INSTR|END_RETORNO|DOUT\(3))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000110111110001001111011100000100001101111100010011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~8_combout\,
	datab => \CPU|LOG_DESVIO|ALT_INV_DESV_JUMP~0_combout\,
	datac => \CPU|INSTR|PC|ALT_INV_DOUT[0]~0_combout\,
	datad => \CPU|INSTR|END_RETORNO|ALT_INV_DOUT\(3),
	datae => \CPU|INSTR|SOMA_CONST|ALT_INV_Add0~17_sumout\,
	combout => \CPU|INSTR|MUX2|MUX_OUT[3]~5_combout\);

\CPU|INSTR|PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|INSTR|MUX2|MUX_OUT[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|INSTR|PC|DOUT\(3));

\ROM|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~5_combout\ = (!\CPU|INSTR|PC|DOUT\(0) & (!\CPU|INSTR|PC|DOUT\(2) & (!\CPU|INSTR|PC|DOUT\(1) $ (\CPU|INSTR|PC|DOUT\(3))))) # (\CPU|INSTR|PC|DOUT\(0) & (!\CPU|INSTR|PC|DOUT\(1) & ((!\CPU|INSTR|PC|DOUT\(3)) # (\CPU|INSTR|PC|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100010000100100110001000010010011000100001001001100010000100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|PC|ALT_INV_DOUT\(0),
	datab => \CPU|INSTR|PC|ALT_INV_DOUT\(1),
	datac => \CPU|INSTR|PC|ALT_INV_DOUT\(2),
	datad => \CPU|INSTR|PC|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~5_combout\);

\ROM|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~6_combout\ = (!\CPU|INSTR|PC|DOUT\(8) & (\ROM|memROM~1_combout\ & \ROM|memROM~5_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|PC|ALT_INV_DOUT\(8),
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \ROM|ALT_INV_memROM~5_combout\,
	combout => \ROM|memROM~6_combout\);

\CPU|INSTR|END_RETORNO|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|INSTR|SOMA_CONST|Add0~13_sumout\,
	ena => \CPU|DECODER|Equal10~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|INSTR|END_RETORNO|DOUT\(2));

\CPU|INSTR|MUX2|MUX_OUT[2]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|INSTR|MUX2|MUX_OUT[2]~4_combout\ = ( \CPU|INSTR|SOMA_CONST|Add0~13_sumout\ & ( (!\CPU|LOG_DESVIO|DESV_JUMP~0_combout\ & (((!\CPU|INSTR|PC|DOUT[0]~0_combout\)) # (\ROM|memROM~6_combout\))) # (\CPU|LOG_DESVIO|DESV_JUMP~0_combout\ & 
-- (((\CPU|INSTR|END_RETORNO|DOUT\(2))))) ) ) # ( !\CPU|INSTR|SOMA_CONST|Add0~13_sumout\ & ( (!\CPU|LOG_DESVIO|DESV_JUMP~0_combout\ & (\ROM|memROM~6_combout\ & (\CPU|INSTR|PC|DOUT[0]~0_combout\))) # (\CPU|LOG_DESVIO|DESV_JUMP~0_combout\ & 
-- (((\CPU|INSTR|END_RETORNO|DOUT\(2))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000110111110001001111011100000100001101111100010011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~6_combout\,
	datab => \CPU|LOG_DESVIO|ALT_INV_DESV_JUMP~0_combout\,
	datac => \CPU|INSTR|PC|ALT_INV_DOUT[0]~0_combout\,
	datad => \CPU|INSTR|END_RETORNO|ALT_INV_DOUT\(2),
	datae => \CPU|INSTR|SOMA_CONST|ALT_INV_Add0~13_sumout\,
	combout => \CPU|INSTR|MUX2|MUX_OUT[2]~4_combout\);

\CPU|INSTR|PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|INSTR|MUX2|MUX_OUT[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|INSTR|PC|DOUT\(2));

\ROM|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~3_combout\ = (!\CPU|INSTR|PC|DOUT\(0) & (!\CPU|INSTR|PC|DOUT\(1) & ((!\CPU|INSTR|PC|DOUT\(2)) # (\CPU|INSTR|PC|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010001000100000001000100010000000100010001000000010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|PC|ALT_INV_DOUT\(0),
	datab => \CPU|INSTR|PC|ALT_INV_DOUT\(1),
	datac => \CPU|INSTR|PC|ALT_INV_DOUT\(2),
	datad => \CPU|INSTR|PC|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~3_combout\);

\ROM|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~4_combout\ = (!\CPU|INSTR|PC|DOUT\(8) & (\ROM|memROM~1_combout\ & \ROM|memROM~3_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|PC|ALT_INV_DOUT\(8),
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \ROM|ALT_INV_memROM~3_combout\,
	combout => \ROM|memROM~4_combout\);

\CPU|INSTR|END_RETORNO|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|INSTR|SOMA_CONST|Add0~9_sumout\,
	ena => \CPU|DECODER|Equal10~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|INSTR|END_RETORNO|DOUT\(1));

\CPU|INSTR|MUX2|MUX_OUT[1]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|INSTR|MUX2|MUX_OUT[1]~3_combout\ = ( \CPU|INSTR|SOMA_CONST|Add0~9_sumout\ & ( (!\CPU|LOG_DESVIO|DESV_JUMP~0_combout\ & (((!\CPU|INSTR|PC|DOUT[0]~0_combout\)) # (\ROM|memROM~4_combout\))) # (\CPU|LOG_DESVIO|DESV_JUMP~0_combout\ & 
-- (((\CPU|INSTR|END_RETORNO|DOUT\(1))))) ) ) # ( !\CPU|INSTR|SOMA_CONST|Add0~9_sumout\ & ( (!\CPU|LOG_DESVIO|DESV_JUMP~0_combout\ & (\ROM|memROM~4_combout\ & (\CPU|INSTR|PC|DOUT[0]~0_combout\))) # (\CPU|LOG_DESVIO|DESV_JUMP~0_combout\ & 
-- (((\CPU|INSTR|END_RETORNO|DOUT\(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000110111110001001111011100000100001101111100010011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~4_combout\,
	datab => \CPU|LOG_DESVIO|ALT_INV_DESV_JUMP~0_combout\,
	datac => \CPU|INSTR|PC|ALT_INV_DOUT[0]~0_combout\,
	datad => \CPU|INSTR|END_RETORNO|ALT_INV_DOUT\(1),
	datae => \CPU|INSTR|SOMA_CONST|ALT_INV_Add0~9_sumout\,
	combout => \CPU|INSTR|MUX2|MUX_OUT[1]~3_combout\);

\CPU|INSTR|PC|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|INSTR|MUX2|MUX_OUT[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|INSTR|PC|DOUT\(1));

\ROM|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~0_combout\ = (!\CPU|INSTR|PC|DOUT\(1) & ((!\CPU|INSTR|PC|DOUT\(3) & (\CPU|INSTR|PC|DOUT\(0))) # (\CPU|INSTR|PC|DOUT\(3) & ((\CPU|INSTR|PC|DOUT\(2)))))) # (\CPU|INSTR|PC|DOUT\(1) & (!\CPU|INSTR|PC|DOUT\(0) & (!\CPU|INSTR|PC|DOUT\(2) & 
-- !\CPU|INSTR|PC|DOUT\(3))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110010000001100011001000000110001100100000011000110010000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|PC|ALT_INV_DOUT\(0),
	datab => \CPU|INSTR|PC|ALT_INV_DOUT\(1),
	datac => \CPU|INSTR|PC|ALT_INV_DOUT\(2),
	datad => \CPU|INSTR|PC|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~0_combout\);

\ROM|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~2_combout\ = (!\CPU|INSTR|PC|DOUT\(8) & (\ROM|memROM~0_combout\ & \ROM|memROM~1_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|PC|ALT_INV_DOUT\(8),
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \ROM|ALT_INV_memROM~1_combout\,
	combout => \ROM|memROM~2_combout\);

\CPU|INSTR|END_RETORNO|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|INSTR|SOMA_CONST|Add0~5_sumout\,
	ena => \CPU|DECODER|Equal10~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|INSTR|END_RETORNO|DOUT\(0));

\CPU|INSTR|MUX2|MUX_OUT[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|INSTR|MUX2|MUX_OUT[0]~2_combout\ = ( \CPU|INSTR|SOMA_CONST|Add0~5_sumout\ & ( (!\CPU|LOG_DESVIO|DESV_JUMP~0_combout\ & (((!\CPU|INSTR|PC|DOUT[0]~0_combout\)) # (\ROM|memROM~2_combout\))) # (\CPU|LOG_DESVIO|DESV_JUMP~0_combout\ & 
-- (((\CPU|INSTR|END_RETORNO|DOUT\(0))))) ) ) # ( !\CPU|INSTR|SOMA_CONST|Add0~5_sumout\ & ( (!\CPU|LOG_DESVIO|DESV_JUMP~0_combout\ & (\ROM|memROM~2_combout\ & ((\CPU|INSTR|PC|DOUT[0]~0_combout\)))) # (\CPU|LOG_DESVIO|DESV_JUMP~0_combout\ & 
-- (((\CPU|INSTR|END_RETORNO|DOUT\(0))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101000111110011110100011100000011010001111100111101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \CPU|LOG_DESVIO|ALT_INV_DESV_JUMP~0_combout\,
	datac => \CPU|INSTR|END_RETORNO|ALT_INV_DOUT\(0),
	datad => \CPU|INSTR|PC|ALT_INV_DOUT[0]~0_combout\,
	datae => \CPU|INSTR|SOMA_CONST|ALT_INV_Add0~5_sumout\,
	combout => \CPU|INSTR|MUX2|MUX_OUT[0]~2_combout\);

\CPU|INSTR|PC|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|INSTR|MUX2|MUX_OUT[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|INSTR|PC|DOUT\(0));

\ROM|memROM~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~13_combout\ = (!\CPU|INSTR|PC|DOUT\(3) & (!\CPU|INSTR|PC|DOUT\(0) $ ((!\CPU|INSTR|PC|DOUT\(1))))) # (\CPU|INSTR|PC|DOUT\(3) & ((!\CPU|INSTR|PC|DOUT\(2) & (!\CPU|INSTR|PC|DOUT\(0))) # (\CPU|INSTR|PC|DOUT\(2) & ((!\CPU|INSTR|PC|DOUT\(1))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011010101100011001101010110001100110101011000110011010101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|PC|ALT_INV_DOUT\(0),
	datab => \CPU|INSTR|PC|ALT_INV_DOUT\(1),
	datac => \CPU|INSTR|PC|ALT_INV_DOUT\(2),
	datad => \CPU|INSTR|PC|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~13_combout\);

\ROM|memROM~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~14_combout\ = (!\CPU|INSTR|PC|DOUT\(8) & (\ROM|memROM~1_combout\ & \ROM|memROM~13_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|PC|ALT_INV_DOUT\(8),
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \ROM|ALT_INV_memROM~13_combout\,
	combout => \ROM|memROM~14_combout\);

\CPU|LOG_DESVIO|DESV_JUMP~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|LOG_DESVIO|DESV_JUMP~0_combout\ = (!\ROM|memROM~10_combout\ & (\ROM|memROM~12_combout\ & (!\ROM|memROM~14_combout\ & \ROM|memROM~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000000000010000000000000001000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~10_combout\,
	datab => \ROM|ALT_INV_memROM~12_combout\,
	datac => \ROM|ALT_INV_memROM~14_combout\,
	datad => \ROM|ALT_INV_memROM~16_combout\,
	combout => \CPU|LOG_DESVIO|DESV_JUMP~0_combout\);

\CPU|INSTR|SOMA_CONST|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|INSTR|SOMA_CONST|Add0~33_sumout\ = SUM(( \CPU|INSTR|PC|DOUT\(4) ) + ( GND ) + ( \CPU|INSTR|SOMA_CONST|Add0~18\ ))
-- \CPU|INSTR|SOMA_CONST|Add0~34\ = CARRY(( \CPU|INSTR|PC|DOUT\(4) ) + ( GND ) + ( \CPU|INSTR|SOMA_CONST|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|INSTR|PC|ALT_INV_DOUT\(4),
	cin => \CPU|INSTR|SOMA_CONST|Add0~18\,
	sumout => \CPU|INSTR|SOMA_CONST|Add0~33_sumout\,
	cout => \CPU|INSTR|SOMA_CONST|Add0~34\);

\CPU|INSTR|END_RETORNO|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|INSTR|SOMA_CONST|Add0~33_sumout\,
	ena => \CPU|DECODER|Equal10~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|INSTR|END_RETORNO|DOUT\(4));

\CPU|INSTR|MUX2|MUX_OUT[4]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|INSTR|MUX2|MUX_OUT[4]~9_combout\ = ( \CPU|INSTR|END_RETORNO|DOUT\(4) & ( (!\CPU|LOG_DESVIO|Equal5~0_combout\ & (((\CPU|INSTR|SOMA_CONST|Add0~33_sumout\)))) # (\CPU|LOG_DESVIO|Equal5~0_combout\ & (!\CPU|INSTR|MUX2|MUX_OUT[8]~0_combout\ & 
-- ((\CPU|INSTR|SOMA_CONST|Add0~33_sumout\) # (\CPU|LOG_DESVIO|DESV_JUMP~0_combout\)))) ) ) # ( !\CPU|INSTR|END_RETORNO|DOUT\(4) & ( (\CPU|INSTR|SOMA_CONST|Add0~33_sumout\ & ((!\CPU|LOG_DESVIO|Equal5~0_combout\) # ((!\CPU|LOG_DESVIO|DESV_JUMP~0_combout\ & 
-- !\CPU|INSTR|MUX2|MUX_OUT[8]~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011101010000100001111101000000000111010100001000011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|LOG_DESVIO|ALT_INV_Equal5~0_combout\,
	datab => \CPU|LOG_DESVIO|ALT_INV_DESV_JUMP~0_combout\,
	datac => \CPU|INSTR|MUX2|ALT_INV_MUX_OUT[8]~0_combout\,
	datad => \CPU|INSTR|SOMA_CONST|ALT_INV_Add0~33_sumout\,
	datae => \CPU|INSTR|END_RETORNO|ALT_INV_DOUT\(4),
	combout => \CPU|INSTR|MUX2|MUX_OUT[4]~9_combout\);

\CPU|INSTR|PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|INSTR|MUX2|MUX_OUT[4]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|INSTR|PC|DOUT\(4));

\CPU|INSTR|SOMA_CONST|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|INSTR|SOMA_CONST|Add0~29_sumout\ = SUM(( \CPU|INSTR|PC|DOUT\(5) ) + ( GND ) + ( \CPU|INSTR|SOMA_CONST|Add0~34\ ))
-- \CPU|INSTR|SOMA_CONST|Add0~30\ = CARRY(( \CPU|INSTR|PC|DOUT\(5) ) + ( GND ) + ( \CPU|INSTR|SOMA_CONST|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|INSTR|PC|ALT_INV_DOUT\(5),
	cin => \CPU|INSTR|SOMA_CONST|Add0~34\,
	sumout => \CPU|INSTR|SOMA_CONST|Add0~29_sumout\,
	cout => \CPU|INSTR|SOMA_CONST|Add0~30\);

\CPU|INSTR|END_RETORNO|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|INSTR|SOMA_CONST|Add0~29_sumout\,
	ena => \CPU|DECODER|Equal10~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|INSTR|END_RETORNO|DOUT\(5));

\CPU|INSTR|MUX2|MUX_OUT[5]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|INSTR|MUX2|MUX_OUT[5]~8_combout\ = ( \CPU|INSTR|END_RETORNO|DOUT\(5) & ( (!\CPU|LOG_DESVIO|Equal5~0_combout\ & (((\CPU|INSTR|SOMA_CONST|Add0~29_sumout\)))) # (\CPU|LOG_DESVIO|Equal5~0_combout\ & (!\CPU|INSTR|MUX2|MUX_OUT[8]~0_combout\ & 
-- ((\CPU|INSTR|SOMA_CONST|Add0~29_sumout\) # (\CPU|LOG_DESVIO|DESV_JUMP~0_combout\)))) ) ) # ( !\CPU|INSTR|END_RETORNO|DOUT\(5) & ( (\CPU|INSTR|SOMA_CONST|Add0~29_sumout\ & ((!\CPU|LOG_DESVIO|Equal5~0_combout\) # ((!\CPU|LOG_DESVIO|DESV_JUMP~0_combout\ & 
-- !\CPU|INSTR|MUX2|MUX_OUT[8]~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011101010000100001111101000000000111010100001000011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|LOG_DESVIO|ALT_INV_Equal5~0_combout\,
	datab => \CPU|LOG_DESVIO|ALT_INV_DESV_JUMP~0_combout\,
	datac => \CPU|INSTR|MUX2|ALT_INV_MUX_OUT[8]~0_combout\,
	datad => \CPU|INSTR|SOMA_CONST|ALT_INV_Add0~29_sumout\,
	datae => \CPU|INSTR|END_RETORNO|ALT_INV_DOUT\(5),
	combout => \CPU|INSTR|MUX2|MUX_OUT[5]~8_combout\);

\CPU|INSTR|PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|INSTR|MUX2|MUX_OUT[5]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|INSTR|PC|DOUT\(5));

\CPU|INSTR|SOMA_CONST|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|INSTR|SOMA_CONST|Add0~25_sumout\ = SUM(( \CPU|INSTR|PC|DOUT\(6) ) + ( GND ) + ( \CPU|INSTR|SOMA_CONST|Add0~30\ ))
-- \CPU|INSTR|SOMA_CONST|Add0~26\ = CARRY(( \CPU|INSTR|PC|DOUT\(6) ) + ( GND ) + ( \CPU|INSTR|SOMA_CONST|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|INSTR|PC|ALT_INV_DOUT\(6),
	cin => \CPU|INSTR|SOMA_CONST|Add0~30\,
	sumout => \CPU|INSTR|SOMA_CONST|Add0~25_sumout\,
	cout => \CPU|INSTR|SOMA_CONST|Add0~26\);

\CPU|INSTR|END_RETORNO|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|INSTR|SOMA_CONST|Add0~25_sumout\,
	ena => \CPU|DECODER|Equal10~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|INSTR|END_RETORNO|DOUT\(6));

\CPU|INSTR|MUX2|MUX_OUT[6]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|INSTR|MUX2|MUX_OUT[6]~7_combout\ = ( \CPU|INSTR|END_RETORNO|DOUT\(6) & ( (!\CPU|LOG_DESVIO|Equal5~0_combout\ & (((\CPU|INSTR|SOMA_CONST|Add0~25_sumout\)))) # (\CPU|LOG_DESVIO|Equal5~0_combout\ & (!\CPU|INSTR|MUX2|MUX_OUT[8]~0_combout\ & 
-- ((\CPU|INSTR|SOMA_CONST|Add0~25_sumout\) # (\CPU|LOG_DESVIO|DESV_JUMP~0_combout\)))) ) ) # ( !\CPU|INSTR|END_RETORNO|DOUT\(6) & ( (\CPU|INSTR|SOMA_CONST|Add0~25_sumout\ & ((!\CPU|LOG_DESVIO|Equal5~0_combout\) # ((!\CPU|LOG_DESVIO|DESV_JUMP~0_combout\ & 
-- !\CPU|INSTR|MUX2|MUX_OUT[8]~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011101010000100001111101000000000111010100001000011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|LOG_DESVIO|ALT_INV_Equal5~0_combout\,
	datab => \CPU|LOG_DESVIO|ALT_INV_DESV_JUMP~0_combout\,
	datac => \CPU|INSTR|MUX2|ALT_INV_MUX_OUT[8]~0_combout\,
	datad => \CPU|INSTR|SOMA_CONST|ALT_INV_Add0~25_sumout\,
	datae => \CPU|INSTR|END_RETORNO|ALT_INV_DOUT\(6),
	combout => \CPU|INSTR|MUX2|MUX_OUT[6]~7_combout\);

\CPU|INSTR|PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|INSTR|MUX2|MUX_OUT[6]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|INSTR|PC|DOUT\(6));

\CPU|INSTR|SOMA_CONST|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|INSTR|SOMA_CONST|Add0~21_sumout\ = SUM(( \CPU|INSTR|PC|DOUT\(7) ) + ( GND ) + ( \CPU|INSTR|SOMA_CONST|Add0~26\ ))
-- \CPU|INSTR|SOMA_CONST|Add0~22\ = CARRY(( \CPU|INSTR|PC|DOUT\(7) ) + ( GND ) + ( \CPU|INSTR|SOMA_CONST|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|INSTR|PC|ALT_INV_DOUT\(7),
	cin => \CPU|INSTR|SOMA_CONST|Add0~26\,
	sumout => \CPU|INSTR|SOMA_CONST|Add0~21_sumout\,
	cout => \CPU|INSTR|SOMA_CONST|Add0~22\);

\CPU|INSTR|END_RETORNO|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|INSTR|SOMA_CONST|Add0~21_sumout\,
	ena => \CPU|DECODER|Equal10~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|INSTR|END_RETORNO|DOUT\(7));

\CPU|INSTR|MUX2|MUX_OUT[7]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|INSTR|MUX2|MUX_OUT[7]~6_combout\ = ( \CPU|INSTR|END_RETORNO|DOUT\(7) & ( (!\CPU|LOG_DESVIO|Equal5~0_combout\ & (((\CPU|INSTR|SOMA_CONST|Add0~21_sumout\)))) # (\CPU|LOG_DESVIO|Equal5~0_combout\ & (!\CPU|INSTR|MUX2|MUX_OUT[8]~0_combout\ & 
-- ((\CPU|INSTR|SOMA_CONST|Add0~21_sumout\) # (\CPU|LOG_DESVIO|DESV_JUMP~0_combout\)))) ) ) # ( !\CPU|INSTR|END_RETORNO|DOUT\(7) & ( (\CPU|INSTR|SOMA_CONST|Add0~21_sumout\ & ((!\CPU|LOG_DESVIO|Equal5~0_combout\) # ((!\CPU|LOG_DESVIO|DESV_JUMP~0_combout\ & 
-- !\CPU|INSTR|MUX2|MUX_OUT[8]~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011101010000100001111101000000000111010100001000011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|LOG_DESVIO|ALT_INV_Equal5~0_combout\,
	datab => \CPU|LOG_DESVIO|ALT_INV_DESV_JUMP~0_combout\,
	datac => \CPU|INSTR|MUX2|ALT_INV_MUX_OUT[8]~0_combout\,
	datad => \CPU|INSTR|SOMA_CONST|ALT_INV_Add0~21_sumout\,
	datae => \CPU|INSTR|END_RETORNO|ALT_INV_DOUT\(7),
	combout => \CPU|INSTR|MUX2|MUX_OUT[7]~6_combout\);

\CPU|INSTR|PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|INSTR|MUX2|MUX_OUT[7]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|INSTR|PC|DOUT\(7));

\ROM|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~1_combout\ = (!\CPU|INSTR|PC|DOUT\(7) & (!\CPU|INSTR|PC|DOUT\(6) & (!\CPU|INSTR|PC|DOUT\(5) & !\CPU|INSTR|PC|DOUT\(4))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|PC|ALT_INV_DOUT\(7),
	datab => \CPU|INSTR|PC|ALT_INV_DOUT\(6),
	datac => \CPU|INSTR|PC|ALT_INV_DOUT\(5),
	datad => \CPU|INSTR|PC|ALT_INV_DOUT\(4),
	combout => \ROM|memROM~1_combout\);

\ROM|memROM~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~12_combout\ = (!\CPU|INSTR|PC|DOUT\(8) & (\ROM|memROM~1_combout\ & \ROM|memROM~11_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|PC|ALT_INV_DOUT\(8),
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \ROM|ALT_INV_memROM~11_combout\,
	combout => \ROM|memROM~12_combout\);

\CPU|LOG_DESVIO|Equal5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|LOG_DESVIO|Equal5~0_combout\ = (!\ROM|memROM~14_combout\ & (\ROM|memROM~16_combout\ & (!\ROM|memROM~10_combout\ $ (!\ROM|memROM~12_combout\)))) # (\ROM|memROM~14_combout\ & (((\ROM|memROM~12_combout\ & !\ROM|memROM~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101100000000000110110000000000011011000000000001101100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~10_combout\,
	datab => \ROM|ALT_INV_memROM~12_combout\,
	datac => \ROM|ALT_INV_memROM~14_combout\,
	datad => \ROM|ALT_INV_memROM~16_combout\,
	combout => \CPU|LOG_DESVIO|Equal5~0_combout\);

\CPU|INSTR|SOMA_CONST|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|INSTR|SOMA_CONST|Add0~1_sumout\ = SUM(( \CPU|INSTR|PC|DOUT\(8) ) + ( GND ) + ( \CPU|INSTR|SOMA_CONST|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|INSTR|PC|ALT_INV_DOUT\(8),
	cin => \CPU|INSTR|SOMA_CONST|Add0~22\,
	sumout => \CPU|INSTR|SOMA_CONST|Add0~1_sumout\);

\CPU|INSTR|END_RETORNO|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|INSTR|SOMA_CONST|Add0~1_sumout\,
	ena => \CPU|DECODER|Equal10~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|INSTR|END_RETORNO|DOUT\(8));

\CPU|INSTR|MUX2|MUX_OUT[8]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|INSTR|MUX2|MUX_OUT[8]~1_combout\ = ( \CPU|INSTR|MUX2|MUX_OUT[8]~0_combout\ & ( (!\CPU|LOG_DESVIO|Equal5~0_combout\ & \CPU|INSTR|SOMA_CONST|Add0~1_sumout\) ) ) # ( !\CPU|INSTR|MUX2|MUX_OUT[8]~0_combout\ & ( (!\CPU|LOG_DESVIO|Equal5~0_combout\ & 
-- (\CPU|INSTR|SOMA_CONST|Add0~1_sumout\)) # (\CPU|LOG_DESVIO|Equal5~0_combout\ & ((!\CPU|LOG_DESVIO|DESV_JUMP~0_combout\ & (\CPU|INSTR|SOMA_CONST|Add0~1_sumout\)) # (\CPU|LOG_DESVIO|DESV_JUMP~0_combout\ & ((\CPU|INSTR|END_RETORNO|DOUT\(8)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001000110111001000100010001000110010001101110010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|LOG_DESVIO|ALT_INV_Equal5~0_combout\,
	datab => \CPU|INSTR|SOMA_CONST|ALT_INV_Add0~1_sumout\,
	datac => \CPU|LOG_DESVIO|ALT_INV_DESV_JUMP~0_combout\,
	datad => \CPU|INSTR|END_RETORNO|ALT_INV_DOUT\(8),
	datae => \CPU|INSTR|MUX2|ALT_INV_MUX_OUT[8]~0_combout\,
	combout => \CPU|INSTR|MUX2|MUX_OUT[8]~1_combout\);

\CPU|INSTR|PC|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|INSTR|MUX2|MUX_OUT[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|INSTR|PC|DOUT\(8));

\ROM|memROM~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~10_combout\ = (!\CPU|INSTR|PC|DOUT\(8) & (\ROM|memROM~1_combout\ & \ROM|memROM~9_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|PC|ALT_INV_DOUT\(8),
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \ROM|ALT_INV_memROM~9_combout\,
	combout => \ROM|memROM~10_combout\);

\CPU|DECODER|Equal10~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER|Equal10~1_combout\ = (!\ROM|memROM~10_combout\ & (!\ROM|memROM~12_combout\ & (\ROM|memROM~14_combout\ & !\ROM|memROM~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000010000000000000001000000000000000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~10_combout\,
	datab => \ROM|ALT_INV_memROM~12_combout\,
	datac => \ROM|ALT_INV_memROM~14_combout\,
	datad => \ROM|ALT_INV_memROM~16_combout\,
	combout => \CPU|DECODER|Equal10~1_combout\);

\CPU|ULA1|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[0]~0_combout\ = ( \CPU|ULA1|Add1~1_sumout\ & ( (!\CPU|DECODER|sinais_controle~0_combout\) # ((!\CPU|DECODER|Equal10~1_combout\ & ((\RAM|dado_out[0]~8_combout\))) # (\CPU|DECODER|Equal10~1_combout\ & (\ROM|memROM~2_combout\))) ) ) # ( 
-- !\CPU|ULA1|Add1~1_sumout\ & ( (\CPU|DECODER|sinais_controle~0_combout\ & ((!\CPU|DECODER|Equal10~1_combout\ & ((\RAM|dado_out[0]~8_combout\))) # (\CPU|DECODER|Equal10~1_combout\ & (\ROM|memROM~2_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000011101111111110001110100000000000111011111111100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \CPU|DECODER|ALT_INV_Equal10~1_combout\,
	datac => \RAM|ALT_INV_dado_out[0]~8_combout\,
	datad => \CPU|DECODER|ALT_INV_sinais_controle~0_combout\,
	datae => \CPU|ULA1|ALT_INV_Add1~1_sumout\,
	combout => \CPU|ULA1|saida[0]~0_combout\);

\CPU|REG_A|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|ULA1|Add0~1_sumout\,
	asdata => \CPU|ULA1|saida[0]~0_combout\,
	sload => \CPU|DECODER|Equal10~2_combout\,
	ena => \CPU|DECODER|HAB_A~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_A|DOUT\(0));

\RAM|ram~15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG_A|DOUT\(0),
	ena => \RAM|ram~159_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~15_q\);

\RAM|ram~143\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~143_combout\ = ( !\ROM|memROM~8_combout\ & ( !\ROM|memROM~4_combout\ & ( \RAM|ram~15_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~15_q\,
	datae => \ROM|ALT_INV_memROM~8_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	combout => \RAM|ram~143_combout\);

\RAM|ram~144\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~144_combout\ = ( !\ROM|memROM~6_combout\ & ( !\ROM|memROM~2_combout\ & ( \RAM|ram~143_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~143_combout\,
	datae => \ROM|ALT_INV_memROM~6_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \RAM|ram~144_combout\);

\DECODER_ADDR|Equal6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_ADDR|Equal6~0_combout\ = ( \ROM|memROM~5_combout\ & ( (!\ROM|memROM~1_combout\) # (\CPU|INSTR|PC|DOUT\(8)) ) ) # ( !\ROM|memROM~5_combout\ & ( ((!\ROM|memROM~1_combout\) # ((!\ROM|memROM~0_combout\ & !\ROM|memROM~3_combout\))) # 
-- (\CPU|INSTR|PC|DOUT\(8)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110111110101111101011111010111111101111101011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|PC|ALT_INV_DOUT\(8),
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \ROM|ALT_INV_memROM~1_combout\,
	datad => \ROM|ALT_INV_memROM~3_combout\,
	datae => \ROM|ALT_INV_memROM~5_combout\,
	combout => \DECODER_ADDR|Equal6~0_combout\);

\DECODER_ADDR|Equal6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_ADDR|Equal6~1_combout\ = ( !\ROM|memROM~5_combout\ & ( (!\CPU|INSTR|PC|DOUT\(8) & (\ROM|memROM~0_combout\ & (\ROM|memROM~1_combout\ & !\ROM|memROM~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000000000000000000000000010000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|PC|ALT_INV_DOUT\(8),
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \ROM|ALT_INV_memROM~1_combout\,
	datad => \ROM|ALT_INV_memROM~3_combout\,
	datae => \ROM|ALT_INV_memROM~5_combout\,
	combout => \DECODER_ADDR|Equal6~1_combout\);

\DECODER_ADDR|Equal6~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_ADDR|Equal6~2_combout\ = ( !\ROM|memROM~5_combout\ & ( (!\CPU|INSTR|PC|DOUT\(8) & (!\ROM|memROM~0_combout\ & (\ROM|memROM~1_combout\ & \ROM|memROM~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000000000000000000010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|PC|ALT_INV_DOUT\(8),
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \ROM|ALT_INV_memROM~1_combout\,
	datad => \ROM|ALT_INV_memROM~3_combout\,
	datae => \ROM|ALT_INV_memROM~5_combout\,
	combout => \DECODER_ADDR|Equal6~2_combout\);

\DECODER_ADDR|Equal6~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_ADDR|Equal6~3_combout\ = ( !\ROM|memROM~5_combout\ & ( (!\CPU|INSTR|PC|DOUT\(8) & (\ROM|memROM~0_combout\ & (\ROM|memROM~1_combout\ & \ROM|memROM~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000000000000000000000000100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|PC|ALT_INV_DOUT\(8),
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \ROM|ALT_INV_memROM~1_combout\,
	datad => \ROM|ALT_INV_memROM~3_combout\,
	datae => \ROM|ALT_INV_memROM~5_combout\,
	combout => \DECODER_ADDR|Equal6~3_combout\);

\DECODER_ADDR|Equal6~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_ADDR|Equal6~4_combout\ = ( \ROM|memROM~5_combout\ & ( (!\CPU|INSTR|PC|DOUT\(8) & (!\ROM|memROM~0_combout\ & (\ROM|memROM~1_combout\ & !\ROM|memROM~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010000000000000000000000000000000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|PC|ALT_INV_DOUT\(8),
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \ROM|ALT_INV_memROM~1_combout\,
	datad => \ROM|ALT_INV_memROM~3_combout\,
	datae => \ROM|ALT_INV_memROM~5_combout\,
	combout => \DECODER_ADDR|Equal6~4_combout\);

\DECODER_ADDR|SAIDA[5]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_ADDR|SAIDA[5]~0_combout\ = ( \ROM|memROM~5_combout\ & ( (!\CPU|INSTR|PC|DOUT\(8) & (\ROM|memROM~0_combout\ & (\ROM|memROM~1_combout\ & !\ROM|memROM~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000100000000000000000000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|PC|ALT_INV_DOUT\(8),
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \ROM|ALT_INV_memROM~1_combout\,
	datad => \ROM|ALT_INV_memROM~3_combout\,
	datae => \ROM|ALT_INV_memROM~5_combout\,
	combout => \DECODER_ADDR|SAIDA[5]~0_combout\);

\DECODER_ADDR|SAIDA[6]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_ADDR|SAIDA[6]~1_combout\ = ( \ROM|memROM~5_combout\ & ( (!\CPU|INSTR|PC|DOUT\(8) & (!\ROM|memROM~0_combout\ & (\ROM|memROM~1_combout\ & \ROM|memROM~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000100000000000000000000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|PC|ALT_INV_DOUT\(8),
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \ROM|ALT_INV_memROM~1_combout\,
	datad => \ROM|ALT_INV_memROM~3_combout\,
	datae => \ROM|ALT_INV_memROM~5_combout\,
	combout => \DECODER_ADDR|SAIDA[6]~1_combout\);

\CLOCK~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK,
	o => \CLOCK~input_o\);

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

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_HEX1(0) <= \HEX1[0]~output_o\;

ww_HEX1(1) <= \HEX1[1]~output_o\;

ww_HEX1(2) <= \HEX1[2]~output_o\;

ww_HEX1(3) <= \HEX1[3]~output_o\;

ww_HEX1(4) <= \HEX1[4]~output_o\;

ww_HEX1(5) <= \HEX1[5]~output_o\;

ww_HEX1(6) <= \HEX1[6]~output_o\;

ww_HEX2(0) <= \HEX2[0]~output_o\;

ww_HEX2(1) <= \HEX2[1]~output_o\;

ww_HEX2(2) <= \HEX2[2]~output_o\;

ww_HEX2(3) <= \HEX2[3]~output_o\;

ww_HEX2(4) <= \HEX2[4]~output_o\;

ww_HEX2(5) <= \HEX2[5]~output_o\;

ww_HEX2(6) <= \HEX2[6]~output_o\;

ww_HEX3(0) <= \HEX3[0]~output_o\;

ww_HEX3(1) <= \HEX3[1]~output_o\;

ww_HEX3(2) <= \HEX3[2]~output_o\;

ww_HEX3(3) <= \HEX3[3]~output_o\;

ww_HEX3(4) <= \HEX3[4]~output_o\;

ww_HEX3(5) <= \HEX3[5]~output_o\;

ww_HEX3(6) <= \HEX3[6]~output_o\;

ww_HEX4(0) <= \HEX4[0]~output_o\;

ww_HEX4(1) <= \HEX4[1]~output_o\;

ww_HEX4(2) <= \HEX4[2]~output_o\;

ww_HEX4(3) <= \HEX4[3]~output_o\;

ww_HEX4(4) <= \HEX4[4]~output_o\;

ww_HEX4(5) <= \HEX4[5]~output_o\;

ww_HEX4(6) <= \HEX4[6]~output_o\;

ww_HEX5(0) <= \HEX5[0]~output_o\;

ww_HEX5(1) <= \HEX5[1]~output_o\;

ww_HEX5(2) <= \HEX5[2]~output_o\;

ww_HEX5(3) <= \HEX5[3]~output_o\;

ww_HEX5(4) <= \HEX5[4]~output_o\;

ww_HEX5(5) <= \HEX5[5]~output_o\;

ww_HEX5(6) <= \HEX5[6]~output_o\;

ww_VALOR_INST(0) <= \VALOR_INST[0]~output_o\;

ww_VALOR_INST(1) <= \VALOR_INST[1]~output_o\;

ww_VALOR_INST(2) <= \VALOR_INST[2]~output_o\;

ww_VALOR_INST(3) <= \VALOR_INST[3]~output_o\;

ww_VALOR_INST(4) <= \VALOR_INST[4]~output_o\;

ww_VALOR_INST(5) <= \VALOR_INST[5]~output_o\;

ww_VALOR_INST(6) <= \VALOR_INST[6]~output_o\;

ww_VALOR_INST(7) <= \VALOR_INST[7]~output_o\;

ww_VALOR_INST(8) <= \VALOR_INST[8]~output_o\;

ww_VALOR_INST(9) <= \VALOR_INST[9]~output_o\;

ww_VALOR_INST(10) <= \VALOR_INST[10]~output_o\;

ww_VALOR_INST(11) <= \VALOR_INST[11]~output_o\;

ww_VALOR_INST(12) <= \VALOR_INST[12]~output_o\;

ww_DOUT(0) <= \DOUT[0]~output_o\;

ww_DOUT(1) <= \DOUT[1]~output_o\;

ww_DOUT(2) <= \DOUT[2]~output_o\;

ww_DOUT(3) <= \DOUT[3]~output_o\;

ww_DOUT(4) <= \DOUT[4]~output_o\;

ww_DOUT(5) <= \DOUT[5]~output_o\;

ww_DOUT(6) <= \DOUT[6]~output_o\;

ww_DOUT(7) <= \DOUT[7]~output_o\;

ww_DIN(0) <= \DIN[0]~output_o\;

ww_DIN(1) <= \DIN[1]~output_o\;

ww_DIN(2) <= \DIN[2]~output_o\;

ww_DIN(3) <= \DIN[3]~output_o\;

ww_DIN(4) <= \DIN[4]~output_o\;

ww_DIN(5) <= \DIN[5]~output_o\;

ww_DIN(6) <= \DIN[6]~output_o\;

ww_DIN(7) <= \DIN[7]~output_o\;

ww_HAB_LEI <= \HAB_LEI~output_o\;

ww_HAB_ESC <= \HAB_ESC~output_o\;

ww_HAB_LEDR(0) <= \HAB_LEDR[0]~output_o\;

ww_HAB_LEDR(1) <= \HAB_LEDR[1]~output_o\;

ww_HAB_LEDR(2) <= \HAB_LEDR[2]~output_o\;

ww_HAB_LED8(0) <= \HAB_LED8[0]~output_o\;

ww_HAB_LED8(1) <= \HAB_LED8[1]~output_o\;

ww_HAB_LED8(2) <= \HAB_LED8[2]~output_o\;

ww_HAB_LED9(0) <= \HAB_LED9[0]~output_o\;

ww_HAB_LED9(1) <= \HAB_LED9[1]~output_o\;

ww_HAB_LED9(2) <= \HAB_LED9[2]~output_o\;

ww_ROM_ADDR(0) <= \ROM_ADDR[0]~output_o\;

ww_ROM_ADDR(1) <= \ROM_ADDR[1]~output_o\;

ww_ROM_ADDR(2) <= \ROM_ADDR[2]~output_o\;

ww_ROM_ADDR(3) <= \ROM_ADDR[3]~output_o\;

ww_ROM_ADDR(4) <= \ROM_ADDR[4]~output_o\;

ww_ROM_ADDR(5) <= \ROM_ADDR[5]~output_o\;

ww_ROM_ADDR(6) <= \ROM_ADDR[6]~output_o\;

ww_ROM_ADDR(7) <= \ROM_ADDR[7]~output_o\;

ww_ROM_ADDR(8) <= \ROM_ADDR[8]~output_o\;

ww_LED_R(0) <= \LED_R[0]~output_o\;

ww_LED_R(1) <= \LED_R[1]~output_o\;

ww_LED_R(2) <= \LED_R[2]~output_o\;

ww_LED_R(3) <= \LED_R[3]~output_o\;

ww_LED_R(4) <= \LED_R[4]~output_o\;

ww_LED_R(5) <= \LED_R[5]~output_o\;

ww_LED_R(6) <= \LED_R[6]~output_o\;

ww_LED_R(7) <= \LED_R[7]~output_o\;

ww_LED_R(8) <= \LED_R[8]~output_o\;

ww_LED_R(9) <= \LED_R[9]~output_o\;

ww_DEC_BLOCKS(0) <= \DEC_BLOCKS[0]~output_o\;

ww_DEC_BLOCKS(1) <= \DEC_BLOCKS[1]~output_o\;

ww_DEC_BLOCKS(2) <= \DEC_BLOCKS[2]~output_o\;

ww_DEC_BLOCKS(3) <= \DEC_BLOCKS[3]~output_o\;

ww_DEC_BLOCKS(4) <= \DEC_BLOCKS[4]~output_o\;

ww_DEC_BLOCKS(5) <= \DEC_BLOCKS[5]~output_o\;

ww_DEC_BLOCKS(6) <= \DEC_BLOCKS[6]~output_o\;

ww_DEC_BLOCKS(7) <= \DEC_BLOCKS[7]~output_o\;

ww_DEC_ADDRS(0) <= \DEC_ADDRS[0]~output_o\;

ww_DEC_ADDRS(1) <= \DEC_ADDRS[1]~output_o\;

ww_DEC_ADDRS(2) <= \DEC_ADDRS[2]~output_o\;

ww_DEC_ADDRS(3) <= \DEC_ADDRS[3]~output_o\;

ww_DEC_ADDRS(4) <= \DEC_ADDRS[4]~output_o\;

ww_DEC_ADDRS(5) <= \DEC_ADDRS[5]~output_o\;

ww_DEC_ADDRS(6) <= \DEC_ADDRS[6]~output_o\;

ww_DEC_ADDRS(7) <= \DEC_ADDRS[7]~output_o\;
END structure;


