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

-- DATE "09/29/2021 14:19:33"

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
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \CPU|INSTR|SOMA_CONST|Add0~1_sumout\ : std_logic;
SIGNAL \ROM|memROM~0_combout\ : std_logic;
SIGNAL \CPU|INSTR|SOMA_CONST|Add0~18\ : std_logic;
SIGNAL \CPU|INSTR|SOMA_CONST|Add0~21_sumout\ : std_logic;
SIGNAL \ROM|memROM~7_combout\ : std_logic;
SIGNAL \ROM|memROM~8_combout\ : std_logic;
SIGNAL \ROM|memROM~11_combout\ : std_logic;
SIGNAL \ROM|memROM~12_combout\ : std_logic;
SIGNAL \ROM|memROM~13_combout\ : std_logic;
SIGNAL \ROM|memROM~14_combout\ : std_logic;
SIGNAL \CPU|DECODER|Equal10~1_combout\ : std_logic;
SIGNAL \CPU|INSTR|SOMA_CONST|Add0~22\ : std_logic;
SIGNAL \CPU|INSTR|SOMA_CONST|Add0~25_sumout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \CPU|INSTR|SOMA_CONST|Add0~26\ : std_logic;
SIGNAL \CPU|INSTR|SOMA_CONST|Add0~29_sumout\ : std_logic;
SIGNAL \CPU|INSTR|SOMA_CONST|Add0~30\ : std_logic;
SIGNAL \CPU|INSTR|SOMA_CONST|Add0~33_sumout\ : std_logic;
SIGNAL \ROM|memROM~2_combout\ : std_logic;
SIGNAL \CPU|INSTR|SOMA_CONST|Add0~2\ : std_logic;
SIGNAL \CPU|INSTR|SOMA_CONST|Add0~5_sumout\ : std_logic;
SIGNAL \ROM|memROM~3_combout\ : std_logic;
SIGNAL \ROM|memROM~4_combout\ : std_logic;
SIGNAL \CPU|INSTR|SOMA_CONST|Add0~6\ : std_logic;
SIGNAL \CPU|INSTR|SOMA_CONST|Add0~9_sumout\ : std_logic;
SIGNAL \ROM|memROM~5_combout\ : std_logic;
SIGNAL \ROM|memROM~6_combout\ : std_logic;
SIGNAL \CPU|INSTR|SOMA_CONST|Add0~10\ : std_logic;
SIGNAL \CPU|INSTR|SOMA_CONST|Add0~13_sumout\ : std_logic;
SIGNAL \CPU|INSTR|SOMA_CONST|Add0~14\ : std_logic;
SIGNAL \CPU|INSTR|SOMA_CONST|Add0~17_sumout\ : std_logic;
SIGNAL \ROM|memROM~1_combout\ : std_logic;
SIGNAL \ROM|memROM~9_combout\ : std_logic;
SIGNAL \ROM|memROM~10_combout\ : std_logic;
SIGNAL \CPU|DECODER|Equal10~2_combout\ : std_logic;
SIGNAL \RAM|dado_out~8_combout\ : std_logic;
SIGNAL \CPU|DECODER|Equal10~0_combout\ : std_logic;
SIGNAL \DECODER_ADDR|SAIDA[5]~0_combout\ : std_logic;
SIGNAL \RAM|ram~556_combout\ : std_logic;
SIGNAL \RAM|ram~55_q\ : std_logic;
SIGNAL \RAM|ram~528_combout\ : std_logic;
SIGNAL \RAM|dado_out[0]~9_combout\ : std_logic;
SIGNAL \ROM|memROM~15_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~1_sumout\ : std_logic;
SIGNAL \CPU|DECODER|sinais_controle~1_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~34_cout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~1_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[0]~0_combout\ : std_logic;
SIGNAL \CPU|DECODER|Equal10~3_combout\ : std_logic;
SIGNAL \CPU|DECODER|sinais_controle~2_combout\ : std_logic;
SIGNAL \RAM|ram~553_combout\ : std_logic;
SIGNAL \RAM|ram~15_q\ : std_logic;
SIGNAL \DECODER_ADDR|Equal6~1_combout\ : std_logic;
SIGNAL \RAM|ram~554_combout\ : std_logic;
SIGNAL \RAM|ram~23_q\ : std_logic;
SIGNAL \DECODER_ADDR|Equal6~3_combout\ : std_logic;
SIGNAL \RAM|ram~555_combout\ : std_logic;
SIGNAL \RAM|ram~39_q\ : std_logic;
SIGNAL \RAM|ram~527_combout\ : std_logic;
SIGNAL \RAM|ram~529_combout\ : std_logic;
SIGNAL \ROM|memROM~16_combout\ : std_logic;
SIGNAL \RAM|ram~24_q\ : std_logic;
SIGNAL \RAM|ram~56_q\ : std_logic;
SIGNAL \RAM|ram~40_q\ : std_logic;
SIGNAL \RAM|ram~531_combout\ : std_logic;
SIGNAL \RAM|dado_out[1]~10_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~2\ : std_logic;
SIGNAL \CPU|ULA1|Add0~5_sumout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~2\ : std_logic;
SIGNAL \CPU|ULA1|Add1~5_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[1]~1_combout\ : std_logic;
SIGNAL \RAM|ram~16_q\ : std_logic;
SIGNAL \RAM|ram~530_combout\ : std_logic;
SIGNAL \RAM|ram~532_combout\ : std_logic;
SIGNAL \ROM|memROM~17_combout\ : std_logic;
SIGNAL \RAM|dado_out[2]~11_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~6\ : std_logic;
SIGNAL \CPU|ULA1|Add0~9_sumout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~6\ : std_logic;
SIGNAL \CPU|ULA1|Add1~9_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[2]~2_combout\ : std_logic;
SIGNAL \RAM|ram~17_q\ : std_logic;
SIGNAL \RAM|ram~25_q\ : std_logic;
SIGNAL \RAM|ram~57_q\ : std_logic;
SIGNAL \RAM|ram~533_combout\ : std_logic;
SIGNAL \RAM|ram~41_q\ : std_logic;
SIGNAL \RAM|ram~534_combout\ : std_logic;
SIGNAL \RAM|ram~535_combout\ : std_logic;
SIGNAL \RAM|dado_out[3]~12_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~10\ : std_logic;
SIGNAL \CPU|ULA1|Add0~13_sumout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~10\ : std_logic;
SIGNAL \CPU|ULA1|Add1~13_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[3]~3_combout\ : std_logic;
SIGNAL \RAM|ram~18_q\ : std_logic;
SIGNAL \RAM|ram~26_q\ : std_logic;
SIGNAL \RAM|ram~42_q\ : std_logic;
SIGNAL \RAM|ram~536_combout\ : std_logic;
SIGNAL \RAM|ram~58_q\ : std_logic;
SIGNAL \RAM|ram~537_combout\ : std_logic;
SIGNAL \RAM|ram~538_combout\ : std_logic;
SIGNAL \RAM|dado_out[4]~13_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~14\ : std_logic;
SIGNAL \CPU|ULA1|Add0~17_sumout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~14\ : std_logic;
SIGNAL \CPU|ULA1|Add1~17_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[4]~4_combout\ : std_logic;
SIGNAL \RAM|ram~19_q\ : std_logic;
SIGNAL \RAM|ram~539_combout\ : std_logic;
SIGNAL \RAM|ram~27_q\ : std_logic;
SIGNAL \RAM|ram~59_q\ : std_logic;
SIGNAL \RAM|ram~540_combout\ : std_logic;
SIGNAL \RAM|ram~43_q\ : std_logic;
SIGNAL \RAM|ram~541_combout\ : std_logic;
SIGNAL \RAM|ram~542_combout\ : std_logic;
SIGNAL \RAM|ram~60_q\ : std_logic;
SIGNAL \RAM|ram~544_combout\ : std_logic;
SIGNAL \RAM|dado_out[5]~14_combout\ : std_logic;
SIGNAL \ROM|memROM~18_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~18\ : std_logic;
SIGNAL \CPU|ULA1|Add0~21_sumout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~18\ : std_logic;
SIGNAL \CPU|ULA1|Add1~21_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[5]~5_combout\ : std_logic;
SIGNAL \RAM|ram~20_q\ : std_logic;
SIGNAL \RAM|ram~28_q\ : std_logic;
SIGNAL \RAM|ram~44_q\ : std_logic;
SIGNAL \RAM|ram~543_combout\ : std_logic;
SIGNAL \RAM|ram~545_combout\ : std_logic;
SIGNAL \RAM|dado_out[6]~15_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~22\ : std_logic;
SIGNAL \CPU|ULA1|Add0~25_sumout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~22\ : std_logic;
SIGNAL \CPU|ULA1|Add1~25_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[6]~6_combout\ : std_logic;
SIGNAL \RAM|ram~21_q\ : std_logic;
SIGNAL \RAM|ram~546_combout\ : std_logic;
SIGNAL \RAM|ram~29_q\ : std_logic;
SIGNAL \RAM|ram~61_q\ : std_logic;
SIGNAL \RAM|ram~547_combout\ : std_logic;
SIGNAL \RAM|ram~45_q\ : std_logic;
SIGNAL \RAM|ram~548_combout\ : std_logic;
SIGNAL \RAM|ram~549_combout\ : std_logic;
SIGNAL \RAM|dado_out[7]~16_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~26\ : std_logic;
SIGNAL \CPU|ULA1|Add0~29_sumout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~26\ : std_logic;
SIGNAL \CPU|ULA1|Add1~29_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[7]~7_combout\ : std_logic;
SIGNAL \RAM|ram~22_q\ : std_logic;
SIGNAL \RAM|ram~30_q\ : std_logic;
SIGNAL \RAM|ram~46_q\ : std_logic;
SIGNAL \RAM|ram~550_combout\ : std_logic;
SIGNAL \RAM|ram~62_q\ : std_logic;
SIGNAL \RAM|ram~551_combout\ : std_logic;
SIGNAL \RAM|ram~552_combout\ : std_logic;
SIGNAL \DECODER_ADDR|Equal6~0_combout\ : std_logic;
SIGNAL \HEX0_DECODER|DECODER_7seg|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \HEX0_DECODER|DECODER_7seg|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \HEX0_DECODER|DECODER_7seg|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \HEX0_DECODER|DECODER_7seg|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \HEX0_DECODER|DECODER_7seg|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \HEX0_DECODER|DECODER_7seg|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \HEX0_DECODER|DECODER_7seg|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \HEX1_DECODER|DECODER_7seg|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \HEX1_DECODER|DECODER_7seg|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \HEX1_DECODER|DECODER_7seg|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \HEX1_DECODER|DECODER_7seg|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \HEX1_DECODER|DECODER_7seg|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \HEX1_DECODER|DECODER_7seg|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \HEX1_DECODER|DECODER_7seg|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \DECODER_ADDR|Equal6~2_combout\ : std_logic;
SIGNAL \HEX2_DECODER|DECODER_7seg|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \HEX2_DECODER|DECODER_7seg|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \HEX2_DECODER|DECODER_7seg|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \HEX2_DECODER|DECODER_7seg|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \HEX2_DECODER|DECODER_7seg|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \HEX2_DECODER|DECODER_7seg|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \HEX2_DECODER|DECODER_7seg|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \HEX3_DECODER|DECODER_7seg|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \HEX3_DECODER|DECODER_7seg|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \HEX3_DECODER|DECODER_7seg|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \HEX3_DECODER|DECODER_7seg|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \HEX3_DECODER|DECODER_7seg|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \HEX3_DECODER|DECODER_7seg|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \HEX3_DECODER|DECODER_7seg|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \DECODER_ADDR|Equal6~4_combout\ : std_logic;
SIGNAL \HEX4_DECODER|DECODER_7seg|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \HEX4_DECODER|DECODER_7seg|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \HEX4_DECODER|DECODER_7seg|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \HEX4_DECODER|DECODER_7seg|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \HEX4_DECODER|DECODER_7seg|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \HEX4_DECODER|DECODER_7seg|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \HEX4_DECODER|DECODER_7seg|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \HEX5_DECODER|DECODER_7seg|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \HEX5_DECODER|DECODER_7seg|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \HEX5_DECODER|DECODER_7seg|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \HEX5_DECODER|DECODER_7seg|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \HEX5_DECODER|DECODER_7seg|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \HEX5_DECODER|DECODER_7seg|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \HEX5_DECODER|DECODER_7seg|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \CPU|DECODER|sinais_controle~0_combout\ : std_logic;
SIGNAL ENABLE_HEX : std_logic_vector(5 DOWNTO 0);
SIGNAL \CPU|INSTR|PC|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \HEX0_DECODER|REG_4bits|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \HEX5_DECODER|REG_4bits|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CPU|REG_A|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \HEX1_DECODER|REG_4bits|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \HEX2_DECODER|REG_4bits|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \HEX3_DECODER|REG_4bits|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \HEX4_DECODER|REG_4bits|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ROM|ALT_INV_memROM~18_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~17_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~16_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~15_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_dado_out[7]~16_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~552_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~551_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~62_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~550_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~46_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~30_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~22_q\ : std_logic;
SIGNAL \RAM|ALT_INV_dado_out[6]~15_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~549_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~548_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~45_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~547_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~61_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~29_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~546_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~21_q\ : std_logic;
SIGNAL \RAM|ALT_INV_dado_out[5]~14_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~544_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~60_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~543_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~44_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~28_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~20_q\ : std_logic;
SIGNAL \RAM|ALT_INV_dado_out[4]~13_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~542_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~541_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~43_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~540_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~59_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~27_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~539_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~19_q\ : std_logic;
SIGNAL \RAM|ALT_INV_dado_out[3]~12_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~538_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~537_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~58_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~536_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~42_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~26_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~18_q\ : std_logic;
SIGNAL \RAM|ALT_INV_dado_out[2]~11_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~535_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~534_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~41_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~533_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~57_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~25_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~17_q\ : std_logic;
SIGNAL \RAM|ALT_INV_dado_out[1]~10_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~531_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~40_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~56_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~24_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~530_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~16_q\ : std_logic;
SIGNAL \CPU|DECODER|ALT_INV_sinais_controle~1_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_dado_out[0]~9_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~528_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~55_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~527_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~39_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~23_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~15_q\ : std_logic;
SIGNAL \RAM|ALT_INV_dado_out~8_combout\ : std_logic;
SIGNAL \CPU|DECODER|ALT_INV_Equal10~2_combout\ : std_logic;
SIGNAL \DECODER_ADDR|ALT_INV_SAIDA[5]~0_combout\ : std_logic;
SIGNAL \DECODER_ADDR|ALT_INV_Equal6~4_combout\ : std_logic;
SIGNAL \DECODER_ADDR|ALT_INV_Equal6~3_combout\ : std_logic;
SIGNAL \DECODER_ADDR|ALT_INV_Equal6~2_combout\ : std_logic;
SIGNAL \DECODER_ADDR|ALT_INV_Equal6~1_combout\ : std_logic;
SIGNAL \DECODER_ADDR|ALT_INV_Equal6~0_combout\ : std_logic;
SIGNAL \CPU|DECODER|ALT_INV_Equal10~0_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~14_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~13_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~12_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~11_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~10_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~9_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~8_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~7_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~6_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~5_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~4_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~3_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~2_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \HEX5_DECODER|REG_4bits|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \HEX4_DECODER|REG_4bits|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \HEX3_DECODER|REG_4bits|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \HEX2_DECODER|REG_4bits|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \HEX1_DECODER|REG_4bits|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \HEX0_DECODER|REG_4bits|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CPU|ULA1|ALT_INV_Add1~29_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add1~25_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add1~21_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add1~17_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add1~1_sumout\ : std_logic;
SIGNAL \CPU|REG_A|ALT_INV_DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \CPU|INSTR|PC|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);

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
\ROM|ALT_INV_memROM~18_combout\ <= NOT \ROM|memROM~18_combout\;
\ROM|ALT_INV_memROM~17_combout\ <= NOT \ROM|memROM~17_combout\;
\ROM|ALT_INV_memROM~16_combout\ <= NOT \ROM|memROM~16_combout\;
\ROM|ALT_INV_memROM~15_combout\ <= NOT \ROM|memROM~15_combout\;
\RAM|ALT_INV_dado_out[7]~16_combout\ <= NOT \RAM|dado_out[7]~16_combout\;
\RAM|ALT_INV_ram~552_combout\ <= NOT \RAM|ram~552_combout\;
\RAM|ALT_INV_ram~551_combout\ <= NOT \RAM|ram~551_combout\;
\RAM|ALT_INV_ram~62_q\ <= NOT \RAM|ram~62_q\;
\RAM|ALT_INV_ram~550_combout\ <= NOT \RAM|ram~550_combout\;
\RAM|ALT_INV_ram~46_q\ <= NOT \RAM|ram~46_q\;
\RAM|ALT_INV_ram~30_q\ <= NOT \RAM|ram~30_q\;
\RAM|ALT_INV_ram~22_q\ <= NOT \RAM|ram~22_q\;
\RAM|ALT_INV_dado_out[6]~15_combout\ <= NOT \RAM|dado_out[6]~15_combout\;
\RAM|ALT_INV_ram~549_combout\ <= NOT \RAM|ram~549_combout\;
\RAM|ALT_INV_ram~548_combout\ <= NOT \RAM|ram~548_combout\;
\RAM|ALT_INV_ram~45_q\ <= NOT \RAM|ram~45_q\;
\RAM|ALT_INV_ram~547_combout\ <= NOT \RAM|ram~547_combout\;
\RAM|ALT_INV_ram~61_q\ <= NOT \RAM|ram~61_q\;
\RAM|ALT_INV_ram~29_q\ <= NOT \RAM|ram~29_q\;
\RAM|ALT_INV_ram~546_combout\ <= NOT \RAM|ram~546_combout\;
\RAM|ALT_INV_ram~21_q\ <= NOT \RAM|ram~21_q\;
\RAM|ALT_INV_dado_out[5]~14_combout\ <= NOT \RAM|dado_out[5]~14_combout\;
\RAM|ALT_INV_ram~544_combout\ <= NOT \RAM|ram~544_combout\;
\RAM|ALT_INV_ram~60_q\ <= NOT \RAM|ram~60_q\;
\RAM|ALT_INV_ram~543_combout\ <= NOT \RAM|ram~543_combout\;
\RAM|ALT_INV_ram~44_q\ <= NOT \RAM|ram~44_q\;
\RAM|ALT_INV_ram~28_q\ <= NOT \RAM|ram~28_q\;
\RAM|ALT_INV_ram~20_q\ <= NOT \RAM|ram~20_q\;
\RAM|ALT_INV_dado_out[4]~13_combout\ <= NOT \RAM|dado_out[4]~13_combout\;
\RAM|ALT_INV_ram~542_combout\ <= NOT \RAM|ram~542_combout\;
\RAM|ALT_INV_ram~541_combout\ <= NOT \RAM|ram~541_combout\;
\RAM|ALT_INV_ram~43_q\ <= NOT \RAM|ram~43_q\;
\RAM|ALT_INV_ram~540_combout\ <= NOT \RAM|ram~540_combout\;
\RAM|ALT_INV_ram~59_q\ <= NOT \RAM|ram~59_q\;
\RAM|ALT_INV_ram~27_q\ <= NOT \RAM|ram~27_q\;
\RAM|ALT_INV_ram~539_combout\ <= NOT \RAM|ram~539_combout\;
\RAM|ALT_INV_ram~19_q\ <= NOT \RAM|ram~19_q\;
\RAM|ALT_INV_dado_out[3]~12_combout\ <= NOT \RAM|dado_out[3]~12_combout\;
\RAM|ALT_INV_ram~538_combout\ <= NOT \RAM|ram~538_combout\;
\RAM|ALT_INV_ram~537_combout\ <= NOT \RAM|ram~537_combout\;
\RAM|ALT_INV_ram~58_q\ <= NOT \RAM|ram~58_q\;
\RAM|ALT_INV_ram~536_combout\ <= NOT \RAM|ram~536_combout\;
\RAM|ALT_INV_ram~42_q\ <= NOT \RAM|ram~42_q\;
\RAM|ALT_INV_ram~26_q\ <= NOT \RAM|ram~26_q\;
\RAM|ALT_INV_ram~18_q\ <= NOT \RAM|ram~18_q\;
\RAM|ALT_INV_dado_out[2]~11_combout\ <= NOT \RAM|dado_out[2]~11_combout\;
\RAM|ALT_INV_ram~535_combout\ <= NOT \RAM|ram~535_combout\;
\RAM|ALT_INV_ram~534_combout\ <= NOT \RAM|ram~534_combout\;
\RAM|ALT_INV_ram~41_q\ <= NOT \RAM|ram~41_q\;
\RAM|ALT_INV_ram~533_combout\ <= NOT \RAM|ram~533_combout\;
\RAM|ALT_INV_ram~57_q\ <= NOT \RAM|ram~57_q\;
\RAM|ALT_INV_ram~25_q\ <= NOT \RAM|ram~25_q\;
\RAM|ALT_INV_ram~17_q\ <= NOT \RAM|ram~17_q\;
\RAM|ALT_INV_dado_out[1]~10_combout\ <= NOT \RAM|dado_out[1]~10_combout\;
\RAM|ALT_INV_ram~531_combout\ <= NOT \RAM|ram~531_combout\;
\RAM|ALT_INV_ram~40_q\ <= NOT \RAM|ram~40_q\;
\RAM|ALT_INV_ram~56_q\ <= NOT \RAM|ram~56_q\;
\RAM|ALT_INV_ram~24_q\ <= NOT \RAM|ram~24_q\;
\RAM|ALT_INV_ram~530_combout\ <= NOT \RAM|ram~530_combout\;
\RAM|ALT_INV_ram~16_q\ <= NOT \RAM|ram~16_q\;
\CPU|DECODER|ALT_INV_sinais_controle~1_combout\ <= NOT \CPU|DECODER|sinais_controle~1_combout\;
\RAM|ALT_INV_dado_out[0]~9_combout\ <= NOT \RAM|dado_out[0]~9_combout\;
\RAM|ALT_INV_ram~528_combout\ <= NOT \RAM|ram~528_combout\;
\RAM|ALT_INV_ram~55_q\ <= NOT \RAM|ram~55_q\;
\RAM|ALT_INV_ram~527_combout\ <= NOT \RAM|ram~527_combout\;
\RAM|ALT_INV_ram~39_q\ <= NOT \RAM|ram~39_q\;
\RAM|ALT_INV_ram~23_q\ <= NOT \RAM|ram~23_q\;
\RAM|ALT_INV_ram~15_q\ <= NOT \RAM|ram~15_q\;
\RAM|ALT_INV_dado_out~8_combout\ <= NOT \RAM|dado_out~8_combout\;
\CPU|DECODER|ALT_INV_Equal10~2_combout\ <= NOT \CPU|DECODER|Equal10~2_combout\;
\DECODER_ADDR|ALT_INV_SAIDA[5]~0_combout\ <= NOT \DECODER_ADDR|SAIDA[5]~0_combout\;
\DECODER_ADDR|ALT_INV_Equal6~4_combout\ <= NOT \DECODER_ADDR|Equal6~4_combout\;
\DECODER_ADDR|ALT_INV_Equal6~3_combout\ <= NOT \DECODER_ADDR|Equal6~3_combout\;
\DECODER_ADDR|ALT_INV_Equal6~2_combout\ <= NOT \DECODER_ADDR|Equal6~2_combout\;
\DECODER_ADDR|ALT_INV_Equal6~1_combout\ <= NOT \DECODER_ADDR|Equal6~1_combout\;
\DECODER_ADDR|ALT_INV_Equal6~0_combout\ <= NOT \DECODER_ADDR|Equal6~0_combout\;
\CPU|DECODER|ALT_INV_Equal10~0_combout\ <= NOT \CPU|DECODER|Equal10~0_combout\;
\ROM|ALT_INV_memROM~14_combout\ <= NOT \ROM|memROM~14_combout\;
\ROM|ALT_INV_memROM~13_combout\ <= NOT \ROM|memROM~13_combout\;
\ROM|ALT_INV_memROM~12_combout\ <= NOT \ROM|memROM~12_combout\;
\ROM|ALT_INV_memROM~11_combout\ <= NOT \ROM|memROM~11_combout\;
\ROM|ALT_INV_memROM~10_combout\ <= NOT \ROM|memROM~10_combout\;
\ROM|ALT_INV_memROM~9_combout\ <= NOT \ROM|memROM~9_combout\;
\ROM|ALT_INV_memROM~8_combout\ <= NOT \ROM|memROM~8_combout\;
\ROM|ALT_INV_memROM~7_combout\ <= NOT \ROM|memROM~7_combout\;
\ROM|ALT_INV_memROM~6_combout\ <= NOT \ROM|memROM~6_combout\;
\ROM|ALT_INV_memROM~5_combout\ <= NOT \ROM|memROM~5_combout\;
\ROM|ALT_INV_memROM~4_combout\ <= NOT \ROM|memROM~4_combout\;
\ROM|ALT_INV_memROM~3_combout\ <= NOT \ROM|memROM~3_combout\;
\ROM|ALT_INV_memROM~2_combout\ <= NOT \ROM|memROM~2_combout\;
\ROM|ALT_INV_memROM~1_combout\ <= NOT \ROM|memROM~1_combout\;
\ROM|ALT_INV_memROM~0_combout\ <= NOT \ROM|memROM~0_combout\;
\HEX5_DECODER|REG_4bits|ALT_INV_DOUT\(2) <= NOT \HEX5_DECODER|REG_4bits|DOUT\(2);
\HEX5_DECODER|REG_4bits|ALT_INV_DOUT\(1) <= NOT \HEX5_DECODER|REG_4bits|DOUT\(1);
\HEX5_DECODER|REG_4bits|ALT_INV_DOUT\(3) <= NOT \HEX5_DECODER|REG_4bits|DOUT\(3);
\HEX5_DECODER|REG_4bits|ALT_INV_DOUT\(0) <= NOT \HEX5_DECODER|REG_4bits|DOUT\(0);
\HEX4_DECODER|REG_4bits|ALT_INV_DOUT\(2) <= NOT \HEX4_DECODER|REG_4bits|DOUT\(2);
\HEX4_DECODER|REG_4bits|ALT_INV_DOUT\(1) <= NOT \HEX4_DECODER|REG_4bits|DOUT\(1);
\HEX4_DECODER|REG_4bits|ALT_INV_DOUT\(3) <= NOT \HEX4_DECODER|REG_4bits|DOUT\(3);
\HEX4_DECODER|REG_4bits|ALT_INV_DOUT\(0) <= NOT \HEX4_DECODER|REG_4bits|DOUT\(0);
\HEX3_DECODER|REG_4bits|ALT_INV_DOUT\(2) <= NOT \HEX3_DECODER|REG_4bits|DOUT\(2);
\HEX3_DECODER|REG_4bits|ALT_INV_DOUT\(1) <= NOT \HEX3_DECODER|REG_4bits|DOUT\(1);
\HEX3_DECODER|REG_4bits|ALT_INV_DOUT\(3) <= NOT \HEX3_DECODER|REG_4bits|DOUT\(3);
\HEX3_DECODER|REG_4bits|ALT_INV_DOUT\(0) <= NOT \HEX3_DECODER|REG_4bits|DOUT\(0);
\HEX2_DECODER|REG_4bits|ALT_INV_DOUT\(2) <= NOT \HEX2_DECODER|REG_4bits|DOUT\(2);
\HEX2_DECODER|REG_4bits|ALT_INV_DOUT\(1) <= NOT \HEX2_DECODER|REG_4bits|DOUT\(1);
\HEX2_DECODER|REG_4bits|ALT_INV_DOUT\(3) <= NOT \HEX2_DECODER|REG_4bits|DOUT\(3);
\HEX2_DECODER|REG_4bits|ALT_INV_DOUT\(0) <= NOT \HEX2_DECODER|REG_4bits|DOUT\(0);
\HEX1_DECODER|REG_4bits|ALT_INV_DOUT\(2) <= NOT \HEX1_DECODER|REG_4bits|DOUT\(2);
\HEX1_DECODER|REG_4bits|ALT_INV_DOUT\(1) <= NOT \HEX1_DECODER|REG_4bits|DOUT\(1);
\HEX1_DECODER|REG_4bits|ALT_INV_DOUT\(3) <= NOT \HEX1_DECODER|REG_4bits|DOUT\(3);
\HEX1_DECODER|REG_4bits|ALT_INV_DOUT\(0) <= NOT \HEX1_DECODER|REG_4bits|DOUT\(0);
\HEX0_DECODER|REG_4bits|ALT_INV_DOUT\(2) <= NOT \HEX0_DECODER|REG_4bits|DOUT\(2);
\HEX0_DECODER|REG_4bits|ALT_INV_DOUT\(1) <= NOT \HEX0_DECODER|REG_4bits|DOUT\(1);
\HEX0_DECODER|REG_4bits|ALT_INV_DOUT\(3) <= NOT \HEX0_DECODER|REG_4bits|DOUT\(3);
\HEX0_DECODER|REG_4bits|ALT_INV_DOUT\(0) <= NOT \HEX0_DECODER|REG_4bits|DOUT\(0);
\CPU|ULA1|ALT_INV_Add1~29_sumout\ <= NOT \CPU|ULA1|Add1~29_sumout\;
\CPU|ULA1|ALT_INV_Add1~25_sumout\ <= NOT \CPU|ULA1|Add1~25_sumout\;
\CPU|ULA1|ALT_INV_Add1~21_sumout\ <= NOT \CPU|ULA1|Add1~21_sumout\;
\CPU|ULA1|ALT_INV_Add1~17_sumout\ <= NOT \CPU|ULA1|Add1~17_sumout\;
\CPU|ULA1|ALT_INV_Add1~13_sumout\ <= NOT \CPU|ULA1|Add1~13_sumout\;
\CPU|ULA1|ALT_INV_Add1~9_sumout\ <= NOT \CPU|ULA1|Add1~9_sumout\;
\CPU|ULA1|ALT_INV_Add1~5_sumout\ <= NOT \CPU|ULA1|Add1~5_sumout\;
\CPU|ULA1|ALT_INV_Add1~1_sumout\ <= NOT \CPU|ULA1|Add1~1_sumout\;
\CPU|REG_A|ALT_INV_DOUT\(7) <= NOT \CPU|REG_A|DOUT\(7);
\CPU|REG_A|ALT_INV_DOUT\(6) <= NOT \CPU|REG_A|DOUT\(6);
\CPU|REG_A|ALT_INV_DOUT\(5) <= NOT \CPU|REG_A|DOUT\(5);
\CPU|REG_A|ALT_INV_DOUT\(4) <= NOT \CPU|REG_A|DOUT\(4);
\CPU|REG_A|ALT_INV_DOUT\(3) <= NOT \CPU|REG_A|DOUT\(3);
\CPU|REG_A|ALT_INV_DOUT\(2) <= NOT \CPU|REG_A|DOUT\(2);
\CPU|REG_A|ALT_INV_DOUT\(1) <= NOT \CPU|REG_A|DOUT\(1);
\CPU|REG_A|ALT_INV_DOUT\(0) <= NOT \CPU|REG_A|DOUT\(0);
\CPU|INSTR|PC|ALT_INV_DOUT\(8) <= NOT \CPU|INSTR|PC|DOUT\(8);
\CPU|INSTR|PC|ALT_INV_DOUT\(7) <= NOT \CPU|INSTR|PC|DOUT\(7);
\CPU|INSTR|PC|ALT_INV_DOUT\(6) <= NOT \CPU|INSTR|PC|DOUT\(6);
\CPU|INSTR|PC|ALT_INV_DOUT\(5) <= NOT \CPU|INSTR|PC|DOUT\(5);
\CPU|INSTR|PC|ALT_INV_DOUT\(4) <= NOT \CPU|INSTR|PC|DOUT\(4);
\CPU|INSTR|PC|ALT_INV_DOUT\(3) <= NOT \CPU|INSTR|PC|DOUT\(3);
\CPU|INSTR|PC|ALT_INV_DOUT\(2) <= NOT \CPU|INSTR|PC|DOUT\(2);
\CPU|INSTR|PC|ALT_INV_DOUT\(1) <= NOT \CPU|INSTR|PC|DOUT\(1);
\CPU|INSTR|PC|ALT_INV_DOUT\(0) <= NOT \CPU|INSTR|PC|DOUT\(0);

\DIN[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|ram~529_combout\,
	oe => \RAM|dado_out~8_combout\,
	devoe => ww_devoe,
	o => ww_DIN(0));

\DIN[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|ram~532_combout\,
	oe => \RAM|dado_out~8_combout\,
	devoe => ww_devoe,
	o => ww_DIN(1));

\DIN[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|ram~535_combout\,
	oe => \RAM|dado_out~8_combout\,
	devoe => ww_devoe,
	o => ww_DIN(2));

\DIN[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|ram~538_combout\,
	oe => \RAM|dado_out~8_combout\,
	devoe => ww_devoe,
	o => ww_DIN(3));

\DIN[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|ram~542_combout\,
	oe => \RAM|dado_out~8_combout\,
	devoe => ww_devoe,
	o => ww_DIN(4));

\DIN[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|ram~545_combout\,
	oe => \RAM|dado_out~8_combout\,
	devoe => ww_devoe,
	o => ww_DIN(5));

\DIN[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|ram~549_combout\,
	oe => \RAM|dado_out~8_combout\,
	devoe => ww_devoe,
	o => ww_DIN(6));

\DIN[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|ram~552_combout\,
	oe => \RAM|dado_out~8_combout\,
	devoe => ww_devoe,
	o => ww_DIN(7));

\HEX0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX0_DECODER|DECODER_7seg|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(0));

\HEX0[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX0_DECODER|DECODER_7seg|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(1));

\HEX0[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX0_DECODER|DECODER_7seg|rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(2));

\HEX0[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX0_DECODER|DECODER_7seg|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(3));

\HEX0[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX0_DECODER|DECODER_7seg|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(4));

\HEX0[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX0_DECODER|DECODER_7seg|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(5));

\HEX0[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX0_DECODER|DECODER_7seg|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(6));

\HEX1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX1_DECODER|DECODER_7seg|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(0));

\HEX1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX1_DECODER|DECODER_7seg|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(1));

\HEX1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX1_DECODER|DECODER_7seg|rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(2));

\HEX1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX1_DECODER|DECODER_7seg|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(3));

\HEX1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX1_DECODER|DECODER_7seg|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(4));

\HEX1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX1_DECODER|DECODER_7seg|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(5));

\HEX1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX1_DECODER|DECODER_7seg|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(6));

\HEX2[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX2_DECODER|DECODER_7seg|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(0));

\HEX2[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX2_DECODER|DECODER_7seg|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(1));

\HEX2[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX2_DECODER|DECODER_7seg|rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(2));

\HEX2[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX2_DECODER|DECODER_7seg|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(3));

\HEX2[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX2_DECODER|DECODER_7seg|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(4));

\HEX2[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX2_DECODER|DECODER_7seg|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(5));

\HEX2[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX2_DECODER|DECODER_7seg|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(6));

\HEX3[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX3_DECODER|DECODER_7seg|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(0));

\HEX3[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX3_DECODER|DECODER_7seg|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(1));

\HEX3[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX3_DECODER|DECODER_7seg|rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(2));

\HEX3[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX3_DECODER|DECODER_7seg|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(3));

\HEX3[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX3_DECODER|DECODER_7seg|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(4));

\HEX3[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX3_DECODER|DECODER_7seg|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(5));

\HEX3[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX3_DECODER|DECODER_7seg|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(6));

\HEX4[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX4_DECODER|DECODER_7seg|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(0));

\HEX4[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX4_DECODER|DECODER_7seg|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(1));

\HEX4[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX4_DECODER|DECODER_7seg|rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(2));

\HEX4[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX4_DECODER|DECODER_7seg|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(3));

\HEX4[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX4_DECODER|DECODER_7seg|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(4));

\HEX4[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX4_DECODER|DECODER_7seg|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(5));

\HEX4[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX4_DECODER|DECODER_7seg|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(6));

\HEX5[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX5_DECODER|DECODER_7seg|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(0));

\HEX5[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX5_DECODER|DECODER_7seg|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(1));

\HEX5[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX5_DECODER|DECODER_7seg|rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(2));

\HEX5[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX5_DECODER|DECODER_7seg|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(3));

\HEX5[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX5_DECODER|DECODER_7seg|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(4));

\HEX5[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX5_DECODER|DECODER_7seg|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(5));

\HEX5[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX5_DECODER|DECODER_7seg|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(6));

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
	o => ww_VALOR_INST(0));

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
	o => ww_VALOR_INST(1));

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
	o => ww_VALOR_INST(2));

\VALOR_INST[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_VALOR_INST(3));

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
	o => ww_VALOR_INST(4));

\VALOR_INST[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~8_combout\,
	devoe => ww_devoe,
	o => ww_VALOR_INST(5));

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
	o => ww_VALOR_INST(6));

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
	o => ww_VALOR_INST(7));

\VALOR_INST[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~8_combout\,
	devoe => ww_devoe,
	o => ww_VALOR_INST(8));

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
	o => ww_VALOR_INST(9));

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
	o => ww_VALOR_INST(10));

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
	o => ww_VALOR_INST(11));

\VALOR_INST[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_VALOR_INST(12));

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
	o => ww_DOUT(0));

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
	o => ww_DOUT(1));

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
	o => ww_DOUT(2));

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
	o => ww_DOUT(3));

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
	o => ww_DOUT(4));

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
	o => ww_DOUT(5));

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
	o => ww_DOUT(6));

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
	o => ww_DOUT(7));

\HAB_LEI~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|DECODER|sinais_controle~0_combout\,
	devoe => ww_devoe,
	o => ww_HAB_LEI);

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
	o => ww_HAB_ESC);

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
	o => ww_HAB_LEDR(0));

\HAB_LEDR[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~8_combout\,
	devoe => ww_devoe,
	o => ww_HAB_LEDR(1));

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
	o => ww_HAB_LEDR(2));

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
	o => ww_HAB_LED8(0));

\HAB_LED8[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~8_combout\,
	devoe => ww_devoe,
	o => ww_HAB_LED8(1));

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
	o => ww_HAB_LED8(2));

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
	o => ww_HAB_LED9(0));

\HAB_LED9[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~8_combout\,
	devoe => ww_devoe,
	o => ww_HAB_LED9(1));

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
	o => ww_HAB_LED9(2));

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
	o => ww_ROM_ADDR(0));

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
	o => ww_ROM_ADDR(1));

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
	o => ww_ROM_ADDR(2));

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
	o => ww_ROM_ADDR(3));

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
	o => ww_ROM_ADDR(4));

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
	o => ww_ROM_ADDR(5));

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
	o => ww_ROM_ADDR(6));

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
	o => ww_ROM_ADDR(7));

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
	o => ww_ROM_ADDR(8));

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
	o => ww_LED_R(0));

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
	o => ww_LED_R(1));

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
	o => ww_LED_R(2));

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
	o => ww_LED_R(3));

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
	o => ww_LED_R(4));

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
	o => ww_LED_R(5));

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
	o => ww_LED_R(6));

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
	o => ww_LED_R(7));

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
	o => ww_LED_R(8));

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
	o => ww_LED_R(9));

\DEC_BLOCKS[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|ALT_INV_memROM~8_combout\,
	devoe => ww_devoe,
	o => ww_DEC_BLOCKS(0));

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
	o => ww_DEC_BLOCKS(1));

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
	o => ww_DEC_BLOCKS(2));

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
	o => ww_DEC_BLOCKS(3));

\DEC_BLOCKS[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~8_combout\,
	devoe => ww_devoe,
	o => ww_DEC_BLOCKS(4));

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
	o => ww_DEC_BLOCKS(5));

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
	o => ww_DEC_BLOCKS(6));

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
	o => ww_DEC_BLOCKS(7));

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
	o => ww_DEC_ADDRS(0));

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
	o => ww_DEC_ADDRS(1));

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
	o => ww_DEC_ADDRS(2));

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
	o => ww_DEC_ADDRS(3));

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
	o => ww_DEC_ADDRS(4));

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
	o => ww_DEC_ADDRS(5));

\DEC_ADDRS[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_DEC_ADDRS(6));

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
	o => ww_DEC_ADDRS(7));

\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

\CPU|INSTR|SOMA_CONST|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|INSTR|SOMA_CONST|Add0~1_sumout\ = SUM(( \CPU|INSTR|PC|DOUT\(0) ) + ( VCC ) + ( !VCC ))
-- \CPU|INSTR|SOMA_CONST|Add0~2\ = CARRY(( \CPU|INSTR|PC|DOUT\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|INSTR|PC|ALT_INV_DOUT\(0),
	cin => GND,
	sumout => \CPU|INSTR|SOMA_CONST|Add0~1_sumout\,
	cout => \CPU|INSTR|SOMA_CONST|Add0~2\);

\ROM|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~0_combout\ = (!\CPU|INSTR|PC|DOUT\(1) & (!\CPU|INSTR|PC|DOUT\(0) $ (((\CPU|INSTR|PC|DOUT\(3)) # (\CPU|INSTR|PC|DOUT\(2))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000010001000100100001000100010010000100010001001000010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|PC|ALT_INV_DOUT\(0),
	datab => \CPU|INSTR|PC|ALT_INV_DOUT\(1),
	datac => \CPU|INSTR|PC|ALT_INV_DOUT\(2),
	datad => \CPU|INSTR|PC|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~0_combout\);

\CPU|INSTR|SOMA_CONST|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|INSTR|SOMA_CONST|Add0~17_sumout\ = SUM(( \CPU|INSTR|PC|DOUT\(4) ) + ( GND ) + ( \CPU|INSTR|SOMA_CONST|Add0~14\ ))
-- \CPU|INSTR|SOMA_CONST|Add0~18\ = CARRY(( \CPU|INSTR|PC|DOUT\(4) ) + ( GND ) + ( \CPU|INSTR|SOMA_CONST|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|INSTR|PC|ALT_INV_DOUT\(4),
	cin => \CPU|INSTR|SOMA_CONST|Add0~14\,
	sumout => \CPU|INSTR|SOMA_CONST|Add0~17_sumout\,
	cout => \CPU|INSTR|SOMA_CONST|Add0~18\);

\CPU|INSTR|SOMA_CONST|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|INSTR|SOMA_CONST|Add0~21_sumout\ = SUM(( \CPU|INSTR|PC|DOUT\(5) ) + ( GND ) + ( \CPU|INSTR|SOMA_CONST|Add0~18\ ))
-- \CPU|INSTR|SOMA_CONST|Add0~22\ = CARRY(( \CPU|INSTR|PC|DOUT\(5) ) + ( GND ) + ( \CPU|INSTR|SOMA_CONST|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|INSTR|PC|ALT_INV_DOUT\(5),
	cin => \CPU|INSTR|SOMA_CONST|Add0~18\,
	sumout => \CPU|INSTR|SOMA_CONST|Add0~21_sumout\,
	cout => \CPU|INSTR|SOMA_CONST|Add0~22\);

\ROM|memROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~7_combout\ = (\CPU|INSTR|PC|DOUT\(0) & ((!\CPU|INSTR|PC|DOUT\(1) & ((\CPU|INSTR|PC|DOUT\(3)) # (\CPU|INSTR|PC|DOUT\(2)))) # (\CPU|INSTR|PC|DOUT\(1) & ((!\CPU|INSTR|PC|DOUT\(2)) # (!\CPU|INSTR|PC|DOUT\(3))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010101010100000101010101010000010101010101000001010101010100",
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
-- \ROM|memROM~8_combout\ = (\ROM|memROM~1_combout\ & (!\CPU|INSTR|PC|DOUT\(8) & \ROM|memROM~7_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \CPU|INSTR|PC|ALT_INV_DOUT\(8),
	datac => \ROM|ALT_INV_memROM~7_combout\,
	combout => \ROM|memROM~8_combout\);

\ROM|memROM~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~11_combout\ = (!\CPU|INSTR|PC|DOUT\(0) & (((\CPU|INSTR|PC|DOUT\(3)) # (\CPU|INSTR|PC|DOUT\(2))) # (\CPU|INSTR|PC|DOUT\(1))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101010101010001010101010101000101010101010100010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|PC|ALT_INV_DOUT\(0),
	datab => \CPU|INSTR|PC|ALT_INV_DOUT\(1),
	datac => \CPU|INSTR|PC|ALT_INV_DOUT\(2),
	datad => \CPU|INSTR|PC|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~11_combout\);

\ROM|memROM~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~12_combout\ = (\ROM|memROM~1_combout\ & (!\CPU|INSTR|PC|DOUT\(8) & \ROM|memROM~11_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \CPU|INSTR|PC|ALT_INV_DOUT\(8),
	datac => \ROM|ALT_INV_memROM~11_combout\,
	combout => \ROM|memROM~12_combout\);

\ROM|memROM~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~13_combout\ = (!\CPU|INSTR|PC|DOUT\(1) & (!\CPU|INSTR|PC|DOUT\(0) & ((\CPU|INSTR|PC|DOUT\(3)) # (\CPU|INSTR|PC|DOUT\(2))))) # (\CPU|INSTR|PC|DOUT\(1) & (!\CPU|INSTR|PC|DOUT\(0) $ (((\CPU|INSTR|PC|DOUT\(2) & \CPU|INSTR|PC|DOUT\(3))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101010101001001010101010100100101010101010010010101010101001",
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
-- \ROM|memROM~14_combout\ = (\ROM|memROM~1_combout\ & (!\CPU|INSTR|PC|DOUT\(8) & !\ROM|memROM~13_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000010000000100000001000000010000000100000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \CPU|INSTR|PC|ALT_INV_DOUT\(8),
	datac => \ROM|ALT_INV_memROM~13_combout\,
	combout => \ROM|memROM~14_combout\);

\CPU|DECODER|Equal10~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER|Equal10~1_combout\ = (!\ROM|memROM~10_combout\ & (\ROM|memROM~12_combout\ & \ROM|memROM~14_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~10_combout\,
	datab => \ROM|ALT_INV_memROM~12_combout\,
	datac => \ROM|ALT_INV_memROM~14_combout\,
	combout => \CPU|DECODER|Equal10~1_combout\);

\CPU|INSTR|PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|INSTR|SOMA_CONST|Add0~21_sumout\,
	asdata => \ROM|memROM~8_combout\,
	sload => \CPU|DECODER|Equal10~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|INSTR|PC|DOUT\(5));

\CPU|INSTR|SOMA_CONST|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|INSTR|SOMA_CONST|Add0~25_sumout\ = SUM(( \CPU|INSTR|PC|DOUT\(6) ) + ( GND ) + ( \CPU|INSTR|SOMA_CONST|Add0~22\ ))
-- \CPU|INSTR|SOMA_CONST|Add0~26\ = CARRY(( \CPU|INSTR|PC|DOUT\(6) ) + ( GND ) + ( \CPU|INSTR|SOMA_CONST|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|INSTR|PC|ALT_INV_DOUT\(6),
	cin => \CPU|INSTR|SOMA_CONST|Add0~22\,
	sumout => \CPU|INSTR|SOMA_CONST|Add0~25_sumout\,
	cout => \CPU|INSTR|SOMA_CONST|Add0~26\);

\~GND\ : cyclonev_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

\CPU|INSTR|PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|INSTR|SOMA_CONST|Add0~25_sumout\,
	asdata => \~GND~combout\,
	sload => \CPU|DECODER|Equal10~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|INSTR|PC|DOUT\(6));

\CPU|INSTR|SOMA_CONST|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|INSTR|SOMA_CONST|Add0~29_sumout\ = SUM(( \CPU|INSTR|PC|DOUT\(7) ) + ( GND ) + ( \CPU|INSTR|SOMA_CONST|Add0~26\ ))
-- \CPU|INSTR|SOMA_CONST|Add0~30\ = CARRY(( \CPU|INSTR|PC|DOUT\(7) ) + ( GND ) + ( \CPU|INSTR|SOMA_CONST|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|INSTR|PC|ALT_INV_DOUT\(7),
	cin => \CPU|INSTR|SOMA_CONST|Add0~26\,
	sumout => \CPU|INSTR|SOMA_CONST|Add0~29_sumout\,
	cout => \CPU|INSTR|SOMA_CONST|Add0~30\);

\CPU|INSTR|PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|INSTR|SOMA_CONST|Add0~29_sumout\,
	asdata => \~GND~combout\,
	sload => \CPU|DECODER|Equal10~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|INSTR|PC|DOUT\(7));

\CPU|INSTR|SOMA_CONST|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|INSTR|SOMA_CONST|Add0~33_sumout\ = SUM(( \CPU|INSTR|PC|DOUT\(8) ) + ( GND ) + ( \CPU|INSTR|SOMA_CONST|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|INSTR|PC|ALT_INV_DOUT\(8),
	cin => \CPU|INSTR|SOMA_CONST|Add0~30\,
	sumout => \CPU|INSTR|SOMA_CONST|Add0~33_sumout\);

\CPU|INSTR|PC|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|INSTR|SOMA_CONST|Add0~33_sumout\,
	asdata => \ROM|memROM~8_combout\,
	sload => \CPU|DECODER|Equal10~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|INSTR|PC|DOUT\(8));

\ROM|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~2_combout\ = (\ROM|memROM~0_combout\ & (\ROM|memROM~1_combout\ & !\CPU|INSTR|PC|DOUT\(8)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000000100000001000000010000000100000001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \CPU|INSTR|PC|ALT_INV_DOUT\(8),
	combout => \ROM|memROM~2_combout\);

\CPU|INSTR|PC|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|INSTR|SOMA_CONST|Add0~1_sumout\,
	asdata => \ROM|memROM~2_combout\,
	sload => \CPU|DECODER|Equal10~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|INSTR|PC|DOUT\(0));

\CPU|INSTR|SOMA_CONST|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|INSTR|SOMA_CONST|Add0~5_sumout\ = SUM(( \CPU|INSTR|PC|DOUT\(1) ) + ( GND ) + ( \CPU|INSTR|SOMA_CONST|Add0~2\ ))
-- \CPU|INSTR|SOMA_CONST|Add0~6\ = CARRY(( \CPU|INSTR|PC|DOUT\(1) ) + ( GND ) + ( \CPU|INSTR|SOMA_CONST|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|INSTR|PC|ALT_INV_DOUT\(1),
	cin => \CPU|INSTR|SOMA_CONST|Add0~2\,
	sumout => \CPU|INSTR|SOMA_CONST|Add0~5_sumout\,
	cout => \CPU|INSTR|SOMA_CONST|Add0~6\);

\ROM|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~3_combout\ = (!\CPU|INSTR|PC|DOUT\(1) & (\CPU|INSTR|PC|DOUT\(0) & (!\CPU|INSTR|PC|DOUT\(2) & \CPU|INSTR|PC|DOUT\(3)))) # (\CPU|INSTR|PC|DOUT\(1) & (\CPU|INSTR|PC|DOUT\(2) & (!\CPU|INSTR|PC|DOUT\(0) $ (!\CPU|INSTR|PC|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000010000000010100001000000001010000100000000101000010",
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
-- \ROM|memROM~4_combout\ = (\ROM|memROM~1_combout\ & (!\CPU|INSTR|PC|DOUT\(8) & \ROM|memROM~3_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \CPU|INSTR|PC|ALT_INV_DOUT\(8),
	datac => \ROM|ALT_INV_memROM~3_combout\,
	combout => \ROM|memROM~4_combout\);

\CPU|INSTR|PC|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|INSTR|SOMA_CONST|Add0~5_sumout\,
	asdata => \ROM|memROM~4_combout\,
	sload => \CPU|DECODER|Equal10~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|INSTR|PC|DOUT\(1));

\CPU|INSTR|SOMA_CONST|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|INSTR|SOMA_CONST|Add0~9_sumout\ = SUM(( \CPU|INSTR|PC|DOUT\(2) ) + ( GND ) + ( \CPU|INSTR|SOMA_CONST|Add0~6\ ))
-- \CPU|INSTR|SOMA_CONST|Add0~10\ = CARRY(( \CPU|INSTR|PC|DOUT\(2) ) + ( GND ) + ( \CPU|INSTR|SOMA_CONST|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|INSTR|PC|ALT_INV_DOUT\(2),
	cin => \CPU|INSTR|SOMA_CONST|Add0~6\,
	sumout => \CPU|INSTR|SOMA_CONST|Add0~9_sumout\,
	cout => \CPU|INSTR|SOMA_CONST|Add0~10\);

\ROM|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~5_combout\ = (\CPU|INSTR|PC|DOUT\(0) & (\CPU|INSTR|PC|DOUT\(3) & (!\CPU|INSTR|PC|DOUT\(1) $ (!\CPU|INSTR|PC|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010100000000000001010000000000000101000000000000010100",
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
-- \ROM|memROM~6_combout\ = (\ROM|memROM~1_combout\ & (!\CPU|INSTR|PC|DOUT\(8) & \ROM|memROM~5_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \CPU|INSTR|PC|ALT_INV_DOUT\(8),
	datac => \ROM|ALT_INV_memROM~5_combout\,
	combout => \ROM|memROM~6_combout\);

\CPU|INSTR|PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|INSTR|SOMA_CONST|Add0~9_sumout\,
	asdata => \ROM|memROM~6_combout\,
	sload => \CPU|DECODER|Equal10~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|INSTR|PC|DOUT\(2));

\CPU|INSTR|SOMA_CONST|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|INSTR|SOMA_CONST|Add0~13_sumout\ = SUM(( \CPU|INSTR|PC|DOUT\(3) ) + ( GND ) + ( \CPU|INSTR|SOMA_CONST|Add0~10\ ))
-- \CPU|INSTR|SOMA_CONST|Add0~14\ = CARRY(( \CPU|INSTR|PC|DOUT\(3) ) + ( GND ) + ( \CPU|INSTR|SOMA_CONST|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|INSTR|PC|ALT_INV_DOUT\(3),
	cin => \CPU|INSTR|SOMA_CONST|Add0~10\,
	sumout => \CPU|INSTR|SOMA_CONST|Add0~13_sumout\,
	cout => \CPU|INSTR|SOMA_CONST|Add0~14\);

\CPU|INSTR|PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|INSTR|SOMA_CONST|Add0~13_sumout\,
	asdata => \~GND~combout\,
	sload => \CPU|DECODER|Equal10~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|INSTR|PC|DOUT\(3));

\CPU|INSTR|PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|INSTR|SOMA_CONST|Add0~17_sumout\,
	asdata => \~GND~combout\,
	sload => \CPU|DECODER|Equal10~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|INSTR|PC|DOUT\(4));

\ROM|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~1_combout\ = (!\CPU|INSTR|PC|DOUT\(4) & (!\CPU|INSTR|PC|DOUT\(5) & (!\CPU|INSTR|PC|DOUT\(6) & !\CPU|INSTR|PC|DOUT\(7))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|PC|ALT_INV_DOUT\(4),
	datab => \CPU|INSTR|PC|ALT_INV_DOUT\(5),
	datac => \CPU|INSTR|PC|ALT_INV_DOUT\(6),
	datad => \CPU|INSTR|PC|ALT_INV_DOUT\(7),
	combout => \ROM|memROM~1_combout\);

\ROM|memROM~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~9_combout\ = (\CPU|INSTR|PC|DOUT\(0) & ((!\CPU|INSTR|PC|DOUT\(1)) # ((!\CPU|INSTR|PC|DOUT\(2)) # (!\CPU|INSTR|PC|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010100010101010101010001010101010101000101010101010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|PC|ALT_INV_DOUT\(0),
	datab => \CPU|INSTR|PC|ALT_INV_DOUT\(1),
	datac => \CPU|INSTR|PC|ALT_INV_DOUT\(2),
	datad => \CPU|INSTR|PC|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~9_combout\);

\ROM|memROM~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~10_combout\ = (\ROM|memROM~1_combout\ & (!\CPU|INSTR|PC|DOUT\(8) & \ROM|memROM~9_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \CPU|INSTR|PC|ALT_INV_DOUT\(8),
	datac => \ROM|ALT_INV_memROM~9_combout\,
	combout => \ROM|memROM~10_combout\);

\CPU|DECODER|Equal10~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER|Equal10~2_combout\ = (!\ROM|memROM~10_combout\ & (!\ROM|memROM~12_combout\ & \ROM|memROM~14_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000001000000010000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~10_combout\,
	datab => \ROM|ALT_INV_memROM~12_combout\,
	datac => \ROM|ALT_INV_memROM~14_combout\,
	combout => \CPU|DECODER|Equal10~2_combout\);

\RAM|dado_out~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out~8_combout\ = ( \ROM|memROM~11_combout\ & ( \ROM|memROM~13_combout\ & ( (\ROM|memROM~1_combout\ & (!\CPU|INSTR|PC|DOUT\(8) & !\ROM|memROM~7_combout\)) ) ) ) # ( !\ROM|memROM~11_combout\ & ( \ROM|memROM~13_combout\ & ( (\ROM|memROM~1_combout\ 
-- & (!\CPU|INSTR|PC|DOUT\(8) & (!\ROM|memROM~7_combout\ & \ROM|memROM~9_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010000000100000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \CPU|INSTR|PC|ALT_INV_DOUT\(8),
	datac => \ROM|ALT_INV_memROM~7_combout\,
	datad => \ROM|ALT_INV_memROM~9_combout\,
	datae => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \ROM|ALT_INV_memROM~13_combout\,
	combout => \RAM|dado_out~8_combout\);

\CPU|DECODER|Equal10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER|Equal10~0_combout\ = ( !\ROM|memROM~13_combout\ & ( (\ROM|memROM~1_combout\ & (!\CPU|INSTR|PC|DOUT\(8) & (\ROM|memROM~9_combout\ & !\ROM|memROM~11_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000000000000000000000000000100000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \CPU|INSTR|PC|ALT_INV_DOUT\(8),
	datac => \ROM|ALT_INV_memROM~9_combout\,
	datad => \ROM|ALT_INV_memROM~11_combout\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	combout => \CPU|DECODER|Equal10~0_combout\);

\DECODER_ADDR|SAIDA[5]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_ADDR|SAIDA[5]~0_combout\ = ( \ROM|memROM~5_combout\ & ( (\ROM|memROM~0_combout\ & (\ROM|memROM~1_combout\ & (!\CPU|INSTR|PC|DOUT\(8) & !\ROM|memROM~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100000000000000000000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \CPU|INSTR|PC|ALT_INV_DOUT\(8),
	datad => \ROM|ALT_INV_memROM~3_combout\,
	datae => \ROM|ALT_INV_memROM~5_combout\,
	combout => \DECODER_ADDR|SAIDA[5]~0_combout\);

\RAM|ram~556\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~556_combout\ = (!\ROM|memROM~8_combout\ & (\CPU|DECODER|Equal10~0_combout\ & \DECODER_ADDR|SAIDA[5]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~8_combout\,
	datab => \CPU|DECODER|ALT_INV_Equal10~0_combout\,
	datac => \DECODER_ADDR|ALT_INV_SAIDA[5]~0_combout\,
	combout => \RAM|ram~556_combout\);

\RAM|ram~55\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG_A|DOUT\(0),
	ena => \RAM|ram~556_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~55_q\);

\RAM|ram~528\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~528_combout\ = ( \ROM|memROM~2_combout\ & ( !\ROM|memROM~4_combout\ & ( \RAM|ram~55_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM|ALT_INV_ram~55_q\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	combout => \RAM|ram~528_combout\);

\RAM|dado_out[0]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[0]~9_combout\ = ( \ROM|memROM~8_combout\ & ( !\RAM|dado_out~8_combout\ ) ) # ( !\ROM|memROM~8_combout\ & ( (!\RAM|dado_out~8_combout\) # ((!\ROM|memROM~6_combout\ & (\RAM|ram~527_combout\)) # (\ROM|memROM~6_combout\ & 
-- ((\RAM|ram~528_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101110101111101010101010101010111011101011111010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_dado_out~8_combout\,
	datab => \RAM|ALT_INV_ram~527_combout\,
	datac => \RAM|ALT_INV_ram~528_combout\,
	datad => \ROM|ALT_INV_memROM~6_combout\,
	datae => \ROM|ALT_INV_memROM~8_combout\,
	combout => \RAM|dado_out[0]~9_combout\);

\ROM|memROM~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~15_combout\ = (\ROM|memROM~0_combout\ & \ROM|memROM~1_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \ROM|ALT_INV_memROM~1_combout\,
	combout => \ROM|memROM~15_combout\);

\CPU|ULA1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~1_sumout\ = SUM(( (!\CPU|DECODER|Equal10~2_combout\ & (((\RAM|dado_out[0]~9_combout\)))) # (\CPU|DECODER|Equal10~2_combout\ & (!\CPU|INSTR|PC|DOUT\(8) & ((\ROM|memROM~15_combout\)))) ) + ( \CPU|REG_A|DOUT\(0) ) + ( !VCC ))
-- \CPU|ULA1|Add0~2\ = CARRY(( (!\CPU|DECODER|Equal10~2_combout\ & (((\RAM|dado_out[0]~9_combout\)))) # (\CPU|DECODER|Equal10~2_combout\ & (!\CPU|INSTR|PC|DOUT\(8) & ((\ROM|memROM~15_combout\)))) ) + ( \CPU|REG_A|DOUT\(0) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000101001001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal10~2_combout\,
	datab => \CPU|INSTR|PC|ALT_INV_DOUT\(8),
	datac => \RAM|ALT_INV_dado_out[0]~9_combout\,
	datad => \ROM|ALT_INV_memROM~15_combout\,
	dataf => \CPU|REG_A|ALT_INV_DOUT\(0),
	cin => GND,
	sumout => \CPU|ULA1|Add0~1_sumout\,
	cout => \CPU|ULA1|Add0~2\);

\CPU|DECODER|sinais_controle~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER|sinais_controle~1_combout\ = (!\ROM|memROM~12_combout\ & (!\ROM|memROM~10_combout\ $ (!\ROM|memROM~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100001001000010010000100100001001000010010000100100001001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~10_combout\,
	datab => \ROM|ALT_INV_memROM~12_combout\,
	datac => \ROM|ALT_INV_memROM~14_combout\,
	combout => \CPU|DECODER|sinais_controle~1_combout\);

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
-- \CPU|ULA1|Add1~1_sumout\ = SUM(( (!\CPU|DECODER|Equal10~2_combout\ & (!\RAM|dado_out[0]~9_combout\)) # (\CPU|DECODER|Equal10~2_combout\ & (((!\ROM|memROM~15_combout\) # (\CPU|INSTR|PC|DOUT\(8))))) ) + ( \CPU|REG_A|DOUT\(0) ) + ( \CPU|ULA1|Add1~34_cout\ ))
-- \CPU|ULA1|Add1~2\ = CARRY(( (!\CPU|DECODER|Equal10~2_combout\ & (!\RAM|dado_out[0]~9_combout\)) # (\CPU|DECODER|Equal10~2_combout\ & (((!\ROM|memROM~15_combout\) # (\CPU|INSTR|PC|DOUT\(8))))) ) + ( \CPU|REG_A|DOUT\(0) ) + ( \CPU|ULA1|Add1~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001101110110001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal10~2_combout\,
	datab => \RAM|ALT_INV_dado_out[0]~9_combout\,
	datac => \CPU|INSTR|PC|ALT_INV_DOUT\(8),
	datad => \ROM|ALT_INV_memROM~15_combout\,
	dataf => \CPU|REG_A|ALT_INV_DOUT\(0),
	cin => \CPU|ULA1|Add1~34_cout\,
	sumout => \CPU|ULA1|Add1~1_sumout\,
	cout => \CPU|ULA1|Add1~2\);

\CPU|ULA1|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[0]~0_combout\ = ( \CPU|ULA1|Add1~1_sumout\ & ( (!\CPU|DECODER|sinais_controle~1_combout\) # ((!\CPU|DECODER|Equal10~2_combout\ & ((\RAM|dado_out[0]~9_combout\))) # (\CPU|DECODER|Equal10~2_combout\ & (\ROM|memROM~2_combout\))) ) ) # ( 
-- !\CPU|ULA1|Add1~1_sumout\ & ( (\CPU|DECODER|sinais_controle~1_combout\ & ((!\CPU|DECODER|Equal10~2_combout\ & ((\RAM|dado_out[0]~9_combout\))) # (\CPU|DECODER|Equal10~2_combout\ & (\ROM|memROM~2_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000011101111111110001110100000000000111011111111100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \CPU|DECODER|ALT_INV_Equal10~2_combout\,
	datac => \RAM|ALT_INV_dado_out[0]~9_combout\,
	datad => \CPU|DECODER|ALT_INV_sinais_controle~1_combout\,
	datae => \CPU|ULA1|ALT_INV_Add1~1_sumout\,
	combout => \CPU|ULA1|saida[0]~0_combout\);

\CPU|DECODER|Equal10~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER|Equal10~3_combout\ = ((!\ROM|memROM~12_combout\) # (\ROM|memROM~14_combout\)) # (\ROM|memROM~10_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101111111011111110111111101111111011111110111111101111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~10_combout\,
	datab => \ROM|ALT_INV_memROM~12_combout\,
	datac => \ROM|ALT_INV_memROM~14_combout\,
	combout => \CPU|DECODER|Equal10~3_combout\);

\CPU|DECODER|sinais_controle~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER|sinais_controle~2_combout\ = !\ROM|memROM~14_combout\ $ (((!\ROM|memROM~10_combout\ & !\ROM|memROM~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111100001111000011110000111100001111000011110000111100001111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~10_combout\,
	datab => \ROM|ALT_INV_memROM~12_combout\,
	datac => \ROM|ALT_INV_memROM~14_combout\,
	combout => \CPU|DECODER|sinais_controle~2_combout\);

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
	sload => \CPU|DECODER|Equal10~3_combout\,
	ena => \CPU|DECODER|sinais_controle~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_A|DOUT\(0));

\RAM|ram~553\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~553_combout\ = ( \CPU|DECODER|Equal10~0_combout\ & ( (!\ROM|memROM~2_combout\ & (!\ROM|memROM~4_combout\ & (!\ROM|memROM~6_combout\ & !\ROM|memROM~8_combout\))) ) )

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
	combout => \RAM|ram~553_combout\);

\RAM|ram~15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG_A|DOUT\(0),
	ena => \RAM|ram~553_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~15_q\);

\DECODER_ADDR|Equal6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_ADDR|Equal6~1_combout\ = ( !\ROM|memROM~5_combout\ & ( (\ROM|memROM~0_combout\ & (\ROM|memROM~1_combout\ & (!\CPU|INSTR|PC|DOUT\(8) & !\ROM|memROM~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000000000000000000000000010000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \CPU|INSTR|PC|ALT_INV_DOUT\(8),
	datad => \ROM|ALT_INV_memROM~3_combout\,
	datae => \ROM|ALT_INV_memROM~5_combout\,
	combout => \DECODER_ADDR|Equal6~1_combout\);

\RAM|ram~554\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~554_combout\ = (!\ROM|memROM~8_combout\ & (\CPU|DECODER|Equal10~0_combout\ & \DECODER_ADDR|Equal6~1_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~8_combout\,
	datab => \CPU|DECODER|ALT_INV_Equal10~0_combout\,
	datac => \DECODER_ADDR|ALT_INV_Equal6~1_combout\,
	combout => \RAM|ram~554_combout\);

\RAM|ram~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG_A|DOUT\(0),
	ena => \RAM|ram~554_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~23_q\);

\DECODER_ADDR|Equal6~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_ADDR|Equal6~3_combout\ = ( !\ROM|memROM~5_combout\ & ( (\ROM|memROM~0_combout\ & (\ROM|memROM~1_combout\ & (!\CPU|INSTR|PC|DOUT\(8) & \ROM|memROM~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000000000000000000000100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \CPU|INSTR|PC|ALT_INV_DOUT\(8),
	datad => \ROM|ALT_INV_memROM~3_combout\,
	datae => \ROM|ALT_INV_memROM~5_combout\,
	combout => \DECODER_ADDR|Equal6~3_combout\);

\RAM|ram~555\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~555_combout\ = (!\ROM|memROM~8_combout\ & (\CPU|DECODER|Equal10~0_combout\ & \DECODER_ADDR|Equal6~3_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~8_combout\,
	datab => \CPU|DECODER|ALT_INV_Equal10~0_combout\,
	datac => \DECODER_ADDR|ALT_INV_Equal6~3_combout\,
	combout => \RAM|ram~555_combout\);

\RAM|ram~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG_A|DOUT\(0),
	ena => \RAM|ram~555_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~39_q\);

\RAM|ram~527\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~527_combout\ = ( \ROM|memROM~2_combout\ & ( \ROM|memROM~4_combout\ & ( \RAM|ram~39_q\ ) ) ) # ( \ROM|memROM~2_combout\ & ( !\ROM|memROM~4_combout\ & ( \RAM|ram~23_q\ ) ) ) # ( !\ROM|memROM~2_combout\ & ( !\ROM|memROM~4_combout\ & ( \RAM|ram~15_q\ 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~15_q\,
	datab => \RAM|ALT_INV_ram~23_q\,
	datad => \RAM|ALT_INV_ram~39_q\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	combout => \RAM|ram~527_combout\);

\RAM|ram~529\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~529_combout\ = ( \ROM|memROM~6_combout\ & ( !\ROM|memROM~8_combout\ & ( \RAM|ram~528_combout\ ) ) ) # ( !\ROM|memROM~6_combout\ & ( !\ROM|memROM~8_combout\ & ( \RAM|ram~527_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~527_combout\,
	datab => \RAM|ALT_INV_ram~528_combout\,
	datae => \ROM|ALT_INV_memROM~6_combout\,
	dataf => \ROM|ALT_INV_memROM~8_combout\,
	combout => \RAM|ram~529_combout\);

\ROM|memROM~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~16_combout\ = (\ROM|memROM~1_combout\ & \ROM|memROM~3_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \ROM|ALT_INV_memROM~3_combout\,
	combout => \ROM|memROM~16_combout\);

\RAM|ram~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG_A|DOUT\(1),
	ena => \RAM|ram~554_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~24_q\);

\RAM|ram~56\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG_A|DOUT\(1),
	ena => \RAM|ram~556_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~56_q\);

\RAM|ram~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG_A|DOUT\(1),
	ena => \RAM|ram~555_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~40_q\);

\RAM|ram~531\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~531_combout\ = ( !\ROM|memROM~6_combout\ & ( \ROM|memROM~4_combout\ & ( \RAM|ram~40_q\ ) ) ) # ( \ROM|memROM~6_combout\ & ( !\ROM|memROM~4_combout\ & ( \RAM|ram~56_q\ ) ) ) # ( !\ROM|memROM~6_combout\ & ( !\ROM|memROM~4_combout\ & ( 
-- \RAM|ram~24_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~24_q\,
	datab => \RAM|ALT_INV_ram~56_q\,
	datac => \RAM|ALT_INV_ram~40_q\,
	datae => \ROM|ALT_INV_memROM~6_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	combout => \RAM|ram~531_combout\);

\RAM|dado_out[1]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[1]~10_combout\ = ( \ROM|memROM~2_combout\ & ( (!\RAM|dado_out~8_combout\) # ((\RAM|ram~531_combout\ & !\ROM|memROM~8_combout\)) ) ) # ( !\ROM|memROM~2_combout\ & ( (!\RAM|dado_out~8_combout\) # ((\RAM|ram~530_combout\ & 
-- !\ROM|memROM~8_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101110101010101011111010101010111011101010101010111110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_dado_out~8_combout\,
	datab => \RAM|ALT_INV_ram~530_combout\,
	datac => \RAM|ALT_INV_ram~531_combout\,
	datad => \ROM|ALT_INV_memROM~8_combout\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	combout => \RAM|dado_out[1]~10_combout\);

\CPU|ULA1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~5_sumout\ = SUM(( (!\CPU|DECODER|Equal10~2_combout\ & (((\RAM|dado_out[1]~10_combout\)))) # (\CPU|DECODER|Equal10~2_combout\ & (!\CPU|INSTR|PC|DOUT\(8) & (\ROM|memROM~16_combout\))) ) + ( \CPU|REG_A|DOUT\(1) ) + ( \CPU|ULA1|Add0~2\ ))
-- \CPU|ULA1|Add0~6\ = CARRY(( (!\CPU|DECODER|Equal10~2_combout\ & (((\RAM|dado_out[1]~10_combout\)))) # (\CPU|DECODER|Equal10~2_combout\ & (!\CPU|INSTR|PC|DOUT\(8) & (\ROM|memROM~16_combout\))) ) + ( \CPU|REG_A|DOUT\(1) ) + ( \CPU|ULA1|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal10~2_combout\,
	datab => \CPU|INSTR|PC|ALT_INV_DOUT\(8),
	datac => \ROM|ALT_INV_memROM~16_combout\,
	datad => \RAM|ALT_INV_dado_out[1]~10_combout\,
	dataf => \CPU|REG_A|ALT_INV_DOUT\(1),
	cin => \CPU|ULA1|Add0~2\,
	sumout => \CPU|ULA1|Add0~5_sumout\,
	cout => \CPU|ULA1|Add0~6\);

\CPU|ULA1|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~5_sumout\ = SUM(( (!\CPU|DECODER|Equal10~2_combout\ & (((!\RAM|dado_out[1]~10_combout\)))) # (\CPU|DECODER|Equal10~2_combout\ & (((!\ROM|memROM~16_combout\)) # (\CPU|INSTR|PC|DOUT\(8)))) ) + ( \CPU|REG_A|DOUT\(1) ) + ( \CPU|ULA1|Add1~2\ ))
-- \CPU|ULA1|Add1~6\ = CARRY(( (!\CPU|DECODER|Equal10~2_combout\ & (((!\RAM|dado_out[1]~10_combout\)))) # (\CPU|DECODER|Equal10~2_combout\ & (((!\ROM|memROM~16_combout\)) # (\CPU|INSTR|PC|DOUT\(8)))) ) + ( \CPU|REG_A|DOUT\(1) ) + ( \CPU|ULA1|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111101101010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal10~2_combout\,
	datab => \CPU|INSTR|PC|ALT_INV_DOUT\(8),
	datac => \ROM|ALT_INV_memROM~16_combout\,
	datad => \RAM|ALT_INV_dado_out[1]~10_combout\,
	dataf => \CPU|REG_A|ALT_INV_DOUT\(1),
	cin => \CPU|ULA1|Add1~2\,
	sumout => \CPU|ULA1|Add1~5_sumout\,
	cout => \CPU|ULA1|Add1~6\);

\CPU|ULA1|saida[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[1]~1_combout\ = ( \CPU|ULA1|Add1~5_sumout\ & ( (!\CPU|DECODER|sinais_controle~1_combout\) # ((!\CPU|DECODER|Equal10~2_combout\ & ((\RAM|dado_out[1]~10_combout\))) # (\CPU|DECODER|Equal10~2_combout\ & (\ROM|memROM~4_combout\))) ) ) # ( 
-- !\CPU|ULA1|Add1~5_sumout\ & ( (\CPU|DECODER|sinais_controle~1_combout\ & ((!\CPU|DECODER|Equal10~2_combout\ & ((\RAM|dado_out[1]~10_combout\))) # (\CPU|DECODER|Equal10~2_combout\ & (\ROM|memROM~4_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100001101111100011111110100000001000011011111000111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~4_combout\,
	datab => \CPU|DECODER|ALT_INV_Equal10~2_combout\,
	datac => \CPU|DECODER|ALT_INV_sinais_controle~1_combout\,
	datad => \RAM|ALT_INV_dado_out[1]~10_combout\,
	datae => \CPU|ULA1|ALT_INV_Add1~5_sumout\,
	combout => \CPU|ULA1|saida[1]~1_combout\);

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
	sload => \CPU|DECODER|Equal10~3_combout\,
	ena => \CPU|DECODER|sinais_controle~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_A|DOUT\(1));

\RAM|ram~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG_A|DOUT\(1),
	ena => \RAM|ram~553_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~16_q\);

\RAM|ram~530\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~530_combout\ = ( !\ROM|memROM~6_combout\ & ( !\ROM|memROM~4_combout\ & ( \RAM|ram~16_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~16_q\,
	datae => \ROM|ALT_INV_memROM~6_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	combout => \RAM|ram~530_combout\);

\RAM|ram~532\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~532_combout\ = ( !\ROM|memROM~8_combout\ & ( \ROM|memROM~2_combout\ & ( \RAM|ram~531_combout\ ) ) ) # ( !\ROM|memROM~8_combout\ & ( !\ROM|memROM~2_combout\ & ( \RAM|ram~530_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~530_combout\,
	datac => \RAM|ALT_INV_ram~531_combout\,
	datae => \ROM|ALT_INV_memROM~8_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \RAM|ram~532_combout\);

\ROM|memROM~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~17_combout\ = (\ROM|memROM~1_combout\ & \ROM|memROM~5_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \ROM|ALT_INV_memROM~5_combout\,
	combout => \ROM|memROM~17_combout\);

\RAM|dado_out[2]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[2]~11_combout\ = (!\RAM|dado_out~8_combout\) # (\RAM|ram~535_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101110111011101110111011101110111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_dado_out~8_combout\,
	datab => \RAM|ALT_INV_ram~535_combout\,
	combout => \RAM|dado_out[2]~11_combout\);

\CPU|ULA1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~9_sumout\ = SUM(( (!\CPU|DECODER|Equal10~2_combout\ & (((\RAM|dado_out[2]~11_combout\)))) # (\CPU|DECODER|Equal10~2_combout\ & (\ROM|memROM~17_combout\ & (!\CPU|INSTR|PC|DOUT\(8)))) ) + ( \CPU|REG_A|DOUT\(2) ) + ( \CPU|ULA1|Add0~6\ ))
-- \CPU|ULA1|Add0~10\ = CARRY(( (!\CPU|DECODER|Equal10~2_combout\ & (((\RAM|dado_out[2]~11_combout\)))) # (\CPU|DECODER|Equal10~2_combout\ & (\ROM|memROM~17_combout\ & (!\CPU|INSTR|PC|DOUT\(8)))) ) + ( \CPU|REG_A|DOUT\(2) ) + ( \CPU|ULA1|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000001000010111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal10~2_combout\,
	datab => \ROM|ALT_INV_memROM~17_combout\,
	datac => \CPU|INSTR|PC|ALT_INV_DOUT\(8),
	datad => \RAM|ALT_INV_dado_out[2]~11_combout\,
	dataf => \CPU|REG_A|ALT_INV_DOUT\(2),
	cin => \CPU|ULA1|Add0~6\,
	sumout => \CPU|ULA1|Add0~9_sumout\,
	cout => \CPU|ULA1|Add0~10\);

\CPU|ULA1|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~9_sumout\ = SUM(( (!\CPU|DECODER|Equal10~2_combout\ & (((!\RAM|dado_out[2]~11_combout\)))) # (\CPU|DECODER|Equal10~2_combout\ & (((!\ROM|memROM~17_combout\)) # (\CPU|INSTR|PC|DOUT\(8)))) ) + ( \CPU|REG_A|DOUT\(2) ) + ( \CPU|ULA1|Add1~6\ ))
-- \CPU|ULA1|Add1~10\ = CARRY(( (!\CPU|DECODER|Equal10~2_combout\ & (((!\RAM|dado_out[2]~11_combout\)))) # (\CPU|DECODER|Equal10~2_combout\ & (((!\ROM|memROM~17_combout\)) # (\CPU|INSTR|PC|DOUT\(8)))) ) + ( \CPU|REG_A|DOUT\(2) ) + ( \CPU|ULA1|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111101101010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal10~2_combout\,
	datab => \CPU|INSTR|PC|ALT_INV_DOUT\(8),
	datac => \ROM|ALT_INV_memROM~17_combout\,
	datad => \RAM|ALT_INV_dado_out[2]~11_combout\,
	dataf => \CPU|REG_A|ALT_INV_DOUT\(2),
	cin => \CPU|ULA1|Add1~6\,
	sumout => \CPU|ULA1|Add1~9_sumout\,
	cout => \CPU|ULA1|Add1~10\);

\CPU|ULA1|saida[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[2]~2_combout\ = ( \CPU|ULA1|Add1~9_sumout\ & ( (!\CPU|DECODER|sinais_controle~1_combout\) # ((!\CPU|DECODER|Equal10~2_combout\ & ((\RAM|dado_out[2]~11_combout\))) # (\CPU|DECODER|Equal10~2_combout\ & (\ROM|memROM~6_combout\))) ) ) # ( 
-- !\CPU|ULA1|Add1~9_sumout\ & ( (\CPU|DECODER|sinais_controle~1_combout\ & ((!\CPU|DECODER|Equal10~2_combout\ & ((\RAM|dado_out[2]~11_combout\))) # (\CPU|DECODER|Equal10~2_combout\ & (\ROM|memROM~6_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100001101111100011111110100000001000011011111000111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~6_combout\,
	datab => \CPU|DECODER|ALT_INV_Equal10~2_combout\,
	datac => \CPU|DECODER|ALT_INV_sinais_controle~1_combout\,
	datad => \RAM|ALT_INV_dado_out[2]~11_combout\,
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
	sload => \CPU|DECODER|Equal10~3_combout\,
	ena => \CPU|DECODER|sinais_controle~2_combout\,
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
	ena => \RAM|ram~553_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~17_q\);

\RAM|ram~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG_A|DOUT\(2),
	ena => \RAM|ram~554_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~25_q\);

\RAM|ram~57\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG_A|DOUT\(2),
	ena => \RAM|ram~556_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~57_q\);

\RAM|ram~533\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~533_combout\ = ( \ROM|memROM~6_combout\ & ( \ROM|memROM~2_combout\ & ( \RAM|ram~57_q\ ) ) ) # ( !\ROM|memROM~6_combout\ & ( \ROM|memROM~2_combout\ & ( \RAM|ram~25_q\ ) ) ) # ( !\ROM|memROM~6_combout\ & ( !\ROM|memROM~2_combout\ & ( \RAM|ram~17_q\ 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~17_q\,
	datac => \RAM|ALT_INV_ram~25_q\,
	datad => \RAM|ALT_INV_ram~57_q\,
	datae => \ROM|ALT_INV_memROM~6_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \RAM|ram~533_combout\);

\RAM|ram~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG_A|DOUT\(2),
	ena => \RAM|ram~555_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~41_q\);

\RAM|ram~534\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~534_combout\ = ( !\ROM|memROM~6_combout\ & ( \ROM|memROM~2_combout\ & ( \RAM|ram~41_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM|ALT_INV_ram~41_q\,
	datae => \ROM|ALT_INV_memROM~6_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \RAM|ram~534_combout\);

\RAM|ram~535\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~535_combout\ = ( !\ROM|memROM~8_combout\ & ( \ROM|memROM~4_combout\ & ( \RAM|ram~534_combout\ ) ) ) # ( !\ROM|memROM~8_combout\ & ( !\ROM|memROM~4_combout\ & ( \RAM|ram~533_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~533_combout\,
	datac => \RAM|ALT_INV_ram~534_combout\,
	datae => \ROM|ALT_INV_memROM~8_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	combout => \RAM|ram~535_combout\);

\RAM|dado_out[3]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[3]~12_combout\ = (!\RAM|dado_out~8_combout\) # (\RAM|ram~538_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101110111011101110111011101110111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_dado_out~8_combout\,
	datab => \RAM|ALT_INV_ram~538_combout\,
	combout => \RAM|dado_out[3]~12_combout\);

\CPU|ULA1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~13_sumout\ = SUM(( (!\CPU|DECODER|Equal10~2_combout\ & \RAM|dado_out[3]~12_combout\) ) + ( \CPU|REG_A|DOUT\(3) ) + ( \CPU|ULA1|Add0~10\ ))
-- \CPU|ULA1|Add0~14\ = CARRY(( (!\CPU|DECODER|Equal10~2_combout\ & \RAM|dado_out[3]~12_combout\) ) + ( \CPU|REG_A|DOUT\(3) ) + ( \CPU|ULA1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal10~2_combout\,
	datad => \RAM|ALT_INV_dado_out[3]~12_combout\,
	dataf => \CPU|REG_A|ALT_INV_DOUT\(3),
	cin => \CPU|ULA1|Add0~10\,
	sumout => \CPU|ULA1|Add0~13_sumout\,
	cout => \CPU|ULA1|Add0~14\);

\CPU|ULA1|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~13_sumout\ = SUM(( (!\RAM|dado_out[3]~12_combout\) # (\CPU|DECODER|Equal10~2_combout\) ) + ( \CPU|REG_A|DOUT\(3) ) + ( \CPU|ULA1|Add1~10\ ))
-- \CPU|ULA1|Add1~14\ = CARRY(( (!\RAM|dado_out[3]~12_combout\) # (\CPU|DECODER|Equal10~2_combout\) ) + ( \CPU|REG_A|DOUT\(3) ) + ( \CPU|ULA1|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal10~2_combout\,
	datad => \RAM|ALT_INV_dado_out[3]~12_combout\,
	dataf => \CPU|REG_A|ALT_INV_DOUT\(3),
	cin => \CPU|ULA1|Add1~10\,
	sumout => \CPU|ULA1|Add1~13_sumout\,
	cout => \CPU|ULA1|Add1~14\);

\CPU|ULA1|saida[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[3]~3_combout\ = (!\CPU|DECODER|sinais_controle~1_combout\ & (((\CPU|ULA1|Add1~13_sumout\)))) # (\CPU|DECODER|sinais_controle~1_combout\ & (!\CPU|DECODER|Equal10~2_combout\ & (\RAM|dado_out[3]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001011001110000000101100111000000010110011100000001011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal10~2_combout\,
	datab => \CPU|DECODER|ALT_INV_sinais_controle~1_combout\,
	datac => \RAM|ALT_INV_dado_out[3]~12_combout\,
	datad => \CPU|ULA1|ALT_INV_Add1~13_sumout\,
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
	sload => \CPU|DECODER|Equal10~3_combout\,
	ena => \CPU|DECODER|sinais_controle~2_combout\,
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
	ena => \RAM|ram~553_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~18_q\);

\RAM|ram~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG_A|DOUT\(3),
	ena => \RAM|ram~554_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~26_q\);

\RAM|ram~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG_A|DOUT\(3),
	ena => \RAM|ram~555_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~42_q\);

\RAM|ram~536\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~536_combout\ = ( \ROM|memROM~2_combout\ & ( \ROM|memROM~4_combout\ & ( \RAM|ram~42_q\ ) ) ) # ( \ROM|memROM~2_combout\ & ( !\ROM|memROM~4_combout\ & ( \RAM|ram~26_q\ ) ) ) # ( !\ROM|memROM~2_combout\ & ( !\ROM|memROM~4_combout\ & ( \RAM|ram~18_q\ 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~18_q\,
	datab => \RAM|ALT_INV_ram~26_q\,
	datad => \RAM|ALT_INV_ram~42_q\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	combout => \RAM|ram~536_combout\);

\RAM|ram~58\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG_A|DOUT\(3),
	ena => \RAM|ram~556_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~58_q\);

\RAM|ram~537\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~537_combout\ = ( \ROM|memROM~2_combout\ & ( !\ROM|memROM~4_combout\ & ( \RAM|ram~58_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM|ALT_INV_ram~58_q\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	combout => \RAM|ram~537_combout\);

\RAM|ram~538\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~538_combout\ = ( \ROM|memROM~6_combout\ & ( !\ROM|memROM~8_combout\ & ( \RAM|ram~537_combout\ ) ) ) # ( !\ROM|memROM~6_combout\ & ( !\ROM|memROM~8_combout\ & ( \RAM|ram~536_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~536_combout\,
	datab => \RAM|ALT_INV_ram~537_combout\,
	datae => \ROM|ALT_INV_memROM~6_combout\,
	dataf => \ROM|ALT_INV_memROM~8_combout\,
	combout => \RAM|ram~538_combout\);

\RAM|dado_out[4]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[4]~13_combout\ = (!\RAM|dado_out~8_combout\) # (\RAM|ram~542_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101110111011101110111011101110111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_dado_out~8_combout\,
	datab => \RAM|ALT_INV_ram~542_combout\,
	combout => \RAM|dado_out[4]~13_combout\);

\CPU|ULA1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~17_sumout\ = SUM(( (!\CPU|DECODER|Equal10~2_combout\ & \RAM|dado_out[4]~13_combout\) ) + ( \CPU|REG_A|DOUT\(4) ) + ( \CPU|ULA1|Add0~14\ ))
-- \CPU|ULA1|Add0~18\ = CARRY(( (!\CPU|DECODER|Equal10~2_combout\ & \RAM|dado_out[4]~13_combout\) ) + ( \CPU|REG_A|DOUT\(4) ) + ( \CPU|ULA1|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal10~2_combout\,
	datad => \RAM|ALT_INV_dado_out[4]~13_combout\,
	dataf => \CPU|REG_A|ALT_INV_DOUT\(4),
	cin => \CPU|ULA1|Add0~14\,
	sumout => \CPU|ULA1|Add0~17_sumout\,
	cout => \CPU|ULA1|Add0~18\);

\CPU|ULA1|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~17_sumout\ = SUM(( (!\RAM|dado_out[4]~13_combout\) # (\CPU|DECODER|Equal10~2_combout\) ) + ( \CPU|REG_A|DOUT\(4) ) + ( \CPU|ULA1|Add1~14\ ))
-- \CPU|ULA1|Add1~18\ = CARRY(( (!\RAM|dado_out[4]~13_combout\) # (\CPU|DECODER|Equal10~2_combout\) ) + ( \CPU|REG_A|DOUT\(4) ) + ( \CPU|ULA1|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal10~2_combout\,
	datad => \RAM|ALT_INV_dado_out[4]~13_combout\,
	dataf => \CPU|REG_A|ALT_INV_DOUT\(4),
	cin => \CPU|ULA1|Add1~14\,
	sumout => \CPU|ULA1|Add1~17_sumout\,
	cout => \CPU|ULA1|Add1~18\);

\CPU|ULA1|saida[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[4]~4_combout\ = (!\CPU|DECODER|sinais_controle~1_combout\ & (((\CPU|ULA1|Add1~17_sumout\)))) # (\CPU|DECODER|sinais_controle~1_combout\ & (!\CPU|DECODER|Equal10~2_combout\ & (\RAM|dado_out[4]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001011001110000000101100111000000010110011100000001011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal10~2_combout\,
	datab => \CPU|DECODER|ALT_INV_sinais_controle~1_combout\,
	datac => \RAM|ALT_INV_dado_out[4]~13_combout\,
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
	sload => \CPU|DECODER|Equal10~3_combout\,
	ena => \CPU|DECODER|sinais_controle~2_combout\,
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
	ena => \RAM|ram~553_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~19_q\);

\RAM|ram~539\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~539_combout\ = ( !\ROM|memROM~6_combout\ & ( !\ROM|memROM~8_combout\ & ( \RAM|ram~19_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~19_q\,
	datae => \ROM|ALT_INV_memROM~6_combout\,
	dataf => \ROM|ALT_INV_memROM~8_combout\,
	combout => \RAM|ram~539_combout\);

\RAM|ram~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG_A|DOUT\(4),
	ena => \RAM|ram~554_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~27_q\);

\RAM|ram~59\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG_A|DOUT\(4),
	ena => \RAM|ram~556_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~59_q\);

\RAM|ram~540\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~540_combout\ = ( \ROM|memROM~6_combout\ & ( !\ROM|memROM~8_combout\ & ( \RAM|ram~59_q\ ) ) ) # ( !\ROM|memROM~6_combout\ & ( !\ROM|memROM~8_combout\ & ( \RAM|ram~27_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~27_q\,
	datab => \RAM|ALT_INV_ram~59_q\,
	datae => \ROM|ALT_INV_memROM~6_combout\,
	dataf => \ROM|ALT_INV_memROM~8_combout\,
	combout => \RAM|ram~540_combout\);

\RAM|ram~43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG_A|DOUT\(4),
	ena => \RAM|ram~555_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~43_q\);

\RAM|ram~541\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~541_combout\ = ( !\ROM|memROM~6_combout\ & ( !\ROM|memROM~8_combout\ & ( \RAM|ram~43_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~43_q\,
	datae => \ROM|ALT_INV_memROM~6_combout\,
	dataf => \ROM|ALT_INV_memROM~8_combout\,
	combout => \RAM|ram~541_combout\);

\RAM|ram~542\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~542_combout\ = ( \ROM|memROM~2_combout\ & ( \ROM|memROM~4_combout\ & ( \RAM|ram~541_combout\ ) ) ) # ( \ROM|memROM~2_combout\ & ( !\ROM|memROM~4_combout\ & ( \RAM|ram~540_combout\ ) ) ) # ( !\ROM|memROM~2_combout\ & ( !\ROM|memROM~4_combout\ & ( 
-- \RAM|ram~539_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~539_combout\,
	datab => \RAM|ALT_INV_ram~540_combout\,
	datad => \RAM|ALT_INV_ram~541_combout\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	combout => \RAM|ram~542_combout\);

\RAM|ram~60\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG_A|DOUT\(5),
	ena => \RAM|ram~556_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~60_q\);

\RAM|ram~544\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~544_combout\ = ( \ROM|memROM~2_combout\ & ( !\ROM|memROM~4_combout\ & ( \RAM|ram~60_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM|ALT_INV_ram~60_q\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	combout => \RAM|ram~544_combout\);

\RAM|dado_out[5]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[5]~14_combout\ = ( \ROM|memROM~8_combout\ & ( !\RAM|dado_out~8_combout\ ) ) # ( !\ROM|memROM~8_combout\ & ( (!\RAM|dado_out~8_combout\) # ((!\ROM|memROM~6_combout\ & (\RAM|ram~543_combout\)) # (\ROM|memROM~6_combout\ & 
-- ((\RAM|ram~544_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101110101111101010101010101010111011101011111010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_dado_out~8_combout\,
	datab => \RAM|ALT_INV_ram~543_combout\,
	datac => \RAM|ALT_INV_ram~544_combout\,
	datad => \ROM|ALT_INV_memROM~6_combout\,
	datae => \ROM|ALT_INV_memROM~8_combout\,
	combout => \RAM|dado_out[5]~14_combout\);

\ROM|memROM~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~18_combout\ = (\ROM|memROM~1_combout\ & \ROM|memROM~7_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \ROM|ALT_INV_memROM~7_combout\,
	combout => \ROM|memROM~18_combout\);

\CPU|ULA1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~21_sumout\ = SUM(( (!\CPU|DECODER|Equal10~2_combout\ & (\RAM|dado_out[5]~14_combout\)) # (\CPU|DECODER|Equal10~2_combout\ & (((!\CPU|INSTR|PC|DOUT\(8) & \ROM|memROM~18_combout\)))) ) + ( \CPU|REG_A|DOUT\(5) ) + ( \CPU|ULA1|Add0~18\ ))
-- \CPU|ULA1|Add0~22\ = CARRY(( (!\CPU|DECODER|Equal10~2_combout\ & (\RAM|dado_out[5]~14_combout\)) # (\CPU|DECODER|Equal10~2_combout\ & (((!\CPU|INSTR|PC|DOUT\(8) & \ROM|memROM~18_combout\)))) ) + ( \CPU|REG_A|DOUT\(5) ) + ( \CPU|ULA1|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000010001001110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal10~2_combout\,
	datab => \RAM|ALT_INV_dado_out[5]~14_combout\,
	datac => \CPU|INSTR|PC|ALT_INV_DOUT\(8),
	datad => \ROM|ALT_INV_memROM~18_combout\,
	dataf => \CPU|REG_A|ALT_INV_DOUT\(5),
	cin => \CPU|ULA1|Add0~18\,
	sumout => \CPU|ULA1|Add0~21_sumout\,
	cout => \CPU|ULA1|Add0~22\);

\CPU|ULA1|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~21_sumout\ = SUM(( (!\CPU|DECODER|Equal10~2_combout\ & (!\RAM|dado_out[5]~14_combout\)) # (\CPU|DECODER|Equal10~2_combout\ & (((!\ROM|memROM~18_combout\) # (\CPU|INSTR|PC|DOUT\(8))))) ) + ( \CPU|REG_A|DOUT\(5) ) + ( \CPU|ULA1|Add1~18\ ))
-- \CPU|ULA1|Add1~22\ = CARRY(( (!\CPU|DECODER|Equal10~2_combout\ & (!\RAM|dado_out[5]~14_combout\)) # (\CPU|DECODER|Equal10~2_combout\ & (((!\ROM|memROM~18_combout\) # (\CPU|INSTR|PC|DOUT\(8))))) ) + ( \CPU|REG_A|DOUT\(5) ) + ( \CPU|ULA1|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001101110110001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal10~2_combout\,
	datab => \RAM|ALT_INV_dado_out[5]~14_combout\,
	datac => \CPU|INSTR|PC|ALT_INV_DOUT\(8),
	datad => \ROM|ALT_INV_memROM~18_combout\,
	dataf => \CPU|REG_A|ALT_INV_DOUT\(5),
	cin => \CPU|ULA1|Add1~18\,
	sumout => \CPU|ULA1|Add1~21_sumout\,
	cout => \CPU|ULA1|Add1~22\);

\CPU|ULA1|saida[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[5]~5_combout\ = ( \CPU|ULA1|Add1~21_sumout\ & ( (!\CPU|DECODER|sinais_controle~1_combout\) # ((!\CPU|DECODER|Equal10~2_combout\ & ((\RAM|dado_out[5]~14_combout\))) # (\CPU|DECODER|Equal10~2_combout\ & (\ROM|memROM~8_combout\))) ) ) # ( 
-- !\CPU|ULA1|Add1~21_sumout\ & ( (\CPU|DECODER|sinais_controle~1_combout\ & ((!\CPU|DECODER|Equal10~2_combout\ & ((\RAM|dado_out[5]~14_combout\))) # (\CPU|DECODER|Equal10~2_combout\ & (\ROM|memROM~8_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100001101111100011111110100000001000011011111000111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~8_combout\,
	datab => \CPU|DECODER|ALT_INV_Equal10~2_combout\,
	datac => \CPU|DECODER|ALT_INV_sinais_controle~1_combout\,
	datad => \RAM|ALT_INV_dado_out[5]~14_combout\,
	datae => \CPU|ULA1|ALT_INV_Add1~21_sumout\,
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
	sload => \CPU|DECODER|Equal10~3_combout\,
	ena => \CPU|DECODER|sinais_controle~2_combout\,
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
	ena => \RAM|ram~553_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~20_q\);

\RAM|ram~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG_A|DOUT\(5),
	ena => \RAM|ram~554_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~28_q\);

\RAM|ram~44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG_A|DOUT\(5),
	ena => \RAM|ram~555_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~44_q\);

\RAM|ram~543\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~543_combout\ = ( \ROM|memROM~2_combout\ & ( \ROM|memROM~4_combout\ & ( \RAM|ram~44_q\ ) ) ) # ( \ROM|memROM~2_combout\ & ( !\ROM|memROM~4_combout\ & ( \RAM|ram~28_q\ ) ) ) # ( !\ROM|memROM~2_combout\ & ( !\ROM|memROM~4_combout\ & ( \RAM|ram~20_q\ 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~20_q\,
	datab => \RAM|ALT_INV_ram~28_q\,
	datad => \RAM|ALT_INV_ram~44_q\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	combout => \RAM|ram~543_combout\);

\RAM|ram~545\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~545_combout\ = ( \ROM|memROM~6_combout\ & ( !\ROM|memROM~8_combout\ & ( \RAM|ram~544_combout\ ) ) ) # ( !\ROM|memROM~6_combout\ & ( !\ROM|memROM~8_combout\ & ( \RAM|ram~543_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~543_combout\,
	datab => \RAM|ALT_INV_ram~544_combout\,
	datae => \ROM|ALT_INV_memROM~6_combout\,
	dataf => \ROM|ALT_INV_memROM~8_combout\,
	combout => \RAM|ram~545_combout\);

\RAM|dado_out[6]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[6]~15_combout\ = (!\RAM|dado_out~8_combout\) # (\RAM|ram~549_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101110111011101110111011101110111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_dado_out~8_combout\,
	datab => \RAM|ALT_INV_ram~549_combout\,
	combout => \RAM|dado_out[6]~15_combout\);

\CPU|ULA1|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~25_sumout\ = SUM(( (!\CPU|DECODER|Equal10~2_combout\ & \RAM|dado_out[6]~15_combout\) ) + ( \CPU|REG_A|DOUT\(6) ) + ( \CPU|ULA1|Add0~22\ ))
-- \CPU|ULA1|Add0~26\ = CARRY(( (!\CPU|DECODER|Equal10~2_combout\ & \RAM|dado_out[6]~15_combout\) ) + ( \CPU|REG_A|DOUT\(6) ) + ( \CPU|ULA1|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal10~2_combout\,
	datad => \RAM|ALT_INV_dado_out[6]~15_combout\,
	dataf => \CPU|REG_A|ALT_INV_DOUT\(6),
	cin => \CPU|ULA1|Add0~22\,
	sumout => \CPU|ULA1|Add0~25_sumout\,
	cout => \CPU|ULA1|Add0~26\);

\CPU|ULA1|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~25_sumout\ = SUM(( (!\RAM|dado_out[6]~15_combout\) # (\CPU|DECODER|Equal10~2_combout\) ) + ( \CPU|REG_A|DOUT\(6) ) + ( \CPU|ULA1|Add1~22\ ))
-- \CPU|ULA1|Add1~26\ = CARRY(( (!\RAM|dado_out[6]~15_combout\) # (\CPU|DECODER|Equal10~2_combout\) ) + ( \CPU|REG_A|DOUT\(6) ) + ( \CPU|ULA1|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal10~2_combout\,
	datad => \RAM|ALT_INV_dado_out[6]~15_combout\,
	dataf => \CPU|REG_A|ALT_INV_DOUT\(6),
	cin => \CPU|ULA1|Add1~22\,
	sumout => \CPU|ULA1|Add1~25_sumout\,
	cout => \CPU|ULA1|Add1~26\);

\CPU|ULA1|saida[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[6]~6_combout\ = (!\CPU|DECODER|sinais_controle~1_combout\ & (((\CPU|ULA1|Add1~25_sumout\)))) # (\CPU|DECODER|sinais_controle~1_combout\ & (!\CPU|DECODER|Equal10~2_combout\ & (\RAM|dado_out[6]~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001011001110000000101100111000000010110011100000001011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal10~2_combout\,
	datab => \CPU|DECODER|ALT_INV_sinais_controle~1_combout\,
	datac => \RAM|ALT_INV_dado_out[6]~15_combout\,
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
	sload => \CPU|DECODER|Equal10~3_combout\,
	ena => \CPU|DECODER|sinais_controle~2_combout\,
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
	ena => \RAM|ram~553_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~21_q\);

\RAM|ram~546\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~546_combout\ = ( !\ROM|memROM~6_combout\ & ( !\ROM|memROM~8_combout\ & ( \RAM|ram~21_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~21_q\,
	datae => \ROM|ALT_INV_memROM~6_combout\,
	dataf => \ROM|ALT_INV_memROM~8_combout\,
	combout => \RAM|ram~546_combout\);

\RAM|ram~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG_A|DOUT\(6),
	ena => \RAM|ram~554_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~29_q\);

\RAM|ram~61\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG_A|DOUT\(6),
	ena => \RAM|ram~556_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~61_q\);

\RAM|ram~547\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~547_combout\ = ( \ROM|memROM~6_combout\ & ( !\ROM|memROM~8_combout\ & ( \RAM|ram~61_q\ ) ) ) # ( !\ROM|memROM~6_combout\ & ( !\ROM|memROM~8_combout\ & ( \RAM|ram~29_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~29_q\,
	datab => \RAM|ALT_INV_ram~61_q\,
	datae => \ROM|ALT_INV_memROM~6_combout\,
	dataf => \ROM|ALT_INV_memROM~8_combout\,
	combout => \RAM|ram~547_combout\);

\RAM|ram~45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG_A|DOUT\(6),
	ena => \RAM|ram~555_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~45_q\);

\RAM|ram~548\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~548_combout\ = ( !\ROM|memROM~6_combout\ & ( !\ROM|memROM~8_combout\ & ( \RAM|ram~45_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~45_q\,
	datae => \ROM|ALT_INV_memROM~6_combout\,
	dataf => \ROM|ALT_INV_memROM~8_combout\,
	combout => \RAM|ram~548_combout\);

\RAM|ram~549\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~549_combout\ = ( \ROM|memROM~2_combout\ & ( \ROM|memROM~4_combout\ & ( \RAM|ram~548_combout\ ) ) ) # ( \ROM|memROM~2_combout\ & ( !\ROM|memROM~4_combout\ & ( \RAM|ram~547_combout\ ) ) ) # ( !\ROM|memROM~2_combout\ & ( !\ROM|memROM~4_combout\ & ( 
-- \RAM|ram~546_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~546_combout\,
	datab => \RAM|ALT_INV_ram~547_combout\,
	datad => \RAM|ALT_INV_ram~548_combout\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	combout => \RAM|ram~549_combout\);

\RAM|dado_out[7]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[7]~16_combout\ = (!\RAM|dado_out~8_combout\) # (\RAM|ram~552_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101110111011101110111011101110111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_dado_out~8_combout\,
	datab => \RAM|ALT_INV_ram~552_combout\,
	combout => \RAM|dado_out[7]~16_combout\);

\CPU|ULA1|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~29_sumout\ = SUM(( (!\CPU|DECODER|Equal10~2_combout\ & \RAM|dado_out[7]~16_combout\) ) + ( \CPU|REG_A|DOUT\(7) ) + ( \CPU|ULA1|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal10~2_combout\,
	datad => \RAM|ALT_INV_dado_out[7]~16_combout\,
	dataf => \CPU|REG_A|ALT_INV_DOUT\(7),
	cin => \CPU|ULA1|Add0~26\,
	sumout => \CPU|ULA1|Add0~29_sumout\);

\CPU|ULA1|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~29_sumout\ = SUM(( (!\RAM|dado_out[7]~16_combout\) # (\CPU|DECODER|Equal10~2_combout\) ) + ( \CPU|REG_A|DOUT\(7) ) + ( \CPU|ULA1|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal10~2_combout\,
	datad => \RAM|ALT_INV_dado_out[7]~16_combout\,
	dataf => \CPU|REG_A|ALT_INV_DOUT\(7),
	cin => \CPU|ULA1|Add1~26\,
	sumout => \CPU|ULA1|Add1~29_sumout\);

\CPU|ULA1|saida[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[7]~7_combout\ = (!\CPU|DECODER|sinais_controle~1_combout\ & (((\CPU|ULA1|Add1~29_sumout\)))) # (\CPU|DECODER|sinais_controle~1_combout\ & (!\CPU|DECODER|Equal10~2_combout\ & (\RAM|dado_out[7]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001011001110000000101100111000000010110011100000001011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal10~2_combout\,
	datab => \CPU|DECODER|ALT_INV_sinais_controle~1_combout\,
	datac => \RAM|ALT_INV_dado_out[7]~16_combout\,
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
	sload => \CPU|DECODER|Equal10~3_combout\,
	ena => \CPU|DECODER|sinais_controle~2_combout\,
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
	ena => \RAM|ram~553_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~22_q\);

\RAM|ram~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG_A|DOUT\(7),
	ena => \RAM|ram~554_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~30_q\);

\RAM|ram~46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG_A|DOUT\(7),
	ena => \RAM|ram~555_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~46_q\);

\RAM|ram~550\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~550_combout\ = ( \ROM|memROM~2_combout\ & ( \ROM|memROM~4_combout\ & ( \RAM|ram~46_q\ ) ) ) # ( \ROM|memROM~2_combout\ & ( !\ROM|memROM~4_combout\ & ( \RAM|ram~30_q\ ) ) ) # ( !\ROM|memROM~2_combout\ & ( !\ROM|memROM~4_combout\ & ( \RAM|ram~22_q\ 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~22_q\,
	datab => \RAM|ALT_INV_ram~30_q\,
	datad => \RAM|ALT_INV_ram~46_q\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	combout => \RAM|ram~550_combout\);

\RAM|ram~62\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG_A|DOUT\(7),
	ena => \RAM|ram~556_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~62_q\);

\RAM|ram~551\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~551_combout\ = ( \ROM|memROM~2_combout\ & ( !\ROM|memROM~4_combout\ & ( \RAM|ram~62_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM|ALT_INV_ram~62_q\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	combout => \RAM|ram~551_combout\);

\RAM|ram~552\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~552_combout\ = ( \ROM|memROM~6_combout\ & ( !\ROM|memROM~8_combout\ & ( \RAM|ram~551_combout\ ) ) ) # ( !\ROM|memROM~6_combout\ & ( !\ROM|memROM~8_combout\ & ( \RAM|ram~550_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~550_combout\,
	datab => \RAM|ALT_INV_ram~551_combout\,
	datae => \ROM|ALT_INV_memROM~6_combout\,
	dataf => \ROM|ALT_INV_memROM~8_combout\,
	combout => \RAM|ram~552_combout\);

\DECODER_ADDR|Equal6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_ADDR|Equal6~0_combout\ = ( \ROM|memROM~5_combout\ & ( (!\ROM|memROM~1_combout\) # (\CPU|INSTR|PC|DOUT\(8)) ) ) # ( !\ROM|memROM~5_combout\ & ( (!\ROM|memROM~1_combout\) # (((!\ROM|memROM~0_combout\ & !\ROM|memROM~3_combout\)) # 
-- (\CPU|INSTR|PC|DOUT\(8))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111111001111110011111100111111101111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \CPU|INSTR|PC|ALT_INV_DOUT\(8),
	datad => \ROM|ALT_INV_memROM~3_combout\,
	datae => \ROM|ALT_INV_memROM~5_combout\,
	combout => \DECODER_ADDR|Equal6~0_combout\);

\ENABLE_HEX[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- ENABLE_HEX(0) = (\ROM|memROM~8_combout\ & (\CPU|DECODER|Equal10~0_combout\ & \DECODER_ADDR|Equal6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~8_combout\,
	datab => \CPU|DECODER|ALT_INV_Equal10~0_combout\,
	datac => \DECODER_ADDR|ALT_INV_Equal6~0_combout\,
	combout => ENABLE_HEX(0));

\HEX0_DECODER|REG_4bits|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG_A|DOUT\(0),
	ena => ENABLE_HEX(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX0_DECODER|REG_4bits|DOUT\(0));

\HEX0_DECODER|REG_4bits|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG_A|DOUT\(3),
	ena => ENABLE_HEX(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX0_DECODER|REG_4bits|DOUT\(3));

\HEX0_DECODER|REG_4bits|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG_A|DOUT\(1),
	ena => ENABLE_HEX(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX0_DECODER|REG_4bits|DOUT\(1));

\HEX0_DECODER|REG_4bits|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG_A|DOUT\(2),
	ena => ENABLE_HEX(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX0_DECODER|REG_4bits|DOUT\(2));

\HEX0_DECODER|DECODER_7seg|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX0_DECODER|DECODER_7seg|rascSaida7seg[0]~0_combout\ = (!\HEX0_DECODER|REG_4bits|DOUT\(3) & (!\HEX0_DECODER|REG_4bits|DOUT\(1) & (!\HEX0_DECODER|REG_4bits|DOUT\(0) $ (!\HEX0_DECODER|REG_4bits|DOUT\(2))))) # (\HEX0_DECODER|REG_4bits|DOUT\(3) & 
-- (\HEX0_DECODER|REG_4bits|DOUT\(0) & (!\HEX0_DECODER|REG_4bits|DOUT\(1) $ (!\HEX0_DECODER|REG_4bits|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000110010000010000011001000001000001100100000100000110010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX0_DECODER|REG_4bits|ALT_INV_DOUT\(0),
	datab => \HEX0_DECODER|REG_4bits|ALT_INV_DOUT\(3),
	datac => \HEX0_DECODER|REG_4bits|ALT_INV_DOUT\(1),
	datad => \HEX0_DECODER|REG_4bits|ALT_INV_DOUT\(2),
	combout => \HEX0_DECODER|DECODER_7seg|rascSaida7seg[0]~0_combout\);

\HEX0_DECODER|DECODER_7seg|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX0_DECODER|DECODER_7seg|rascSaida7seg[1]~1_combout\ = (!\HEX0_DECODER|REG_4bits|DOUT\(3) & (\HEX0_DECODER|REG_4bits|DOUT\(2) & (!\HEX0_DECODER|REG_4bits|DOUT\(0) $ (!\HEX0_DECODER|REG_4bits|DOUT\(1))))) # (\HEX0_DECODER|REG_4bits|DOUT\(3) & 
-- ((!\HEX0_DECODER|REG_4bits|DOUT\(0) & ((\HEX0_DECODER|REG_4bits|DOUT\(2)))) # (\HEX0_DECODER|REG_4bits|DOUT\(0) & (\HEX0_DECODER|REG_4bits|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101101011000000010110101100000001011010110000000101101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX0_DECODER|REG_4bits|ALT_INV_DOUT\(0),
	datab => \HEX0_DECODER|REG_4bits|ALT_INV_DOUT\(3),
	datac => \HEX0_DECODER|REG_4bits|ALT_INV_DOUT\(1),
	datad => \HEX0_DECODER|REG_4bits|ALT_INV_DOUT\(2),
	combout => \HEX0_DECODER|DECODER_7seg|rascSaida7seg[1]~1_combout\);

\HEX0_DECODER|DECODER_7seg|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX0_DECODER|DECODER_7seg|rascSaida7seg[2]~2_combout\ = (!\HEX0_DECODER|REG_4bits|DOUT\(3) & (!\HEX0_DECODER|REG_4bits|DOUT\(0) & (\HEX0_DECODER|REG_4bits|DOUT\(1) & !\HEX0_DECODER|REG_4bits|DOUT\(2)))) # (\HEX0_DECODER|REG_4bits|DOUT\(3) & 
-- (\HEX0_DECODER|REG_4bits|DOUT\(2) & ((!\HEX0_DECODER|REG_4bits|DOUT\(0)) # (\HEX0_DECODER|REG_4bits|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000100011000010000010001100001000001000110000100000100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX0_DECODER|REG_4bits|ALT_INV_DOUT\(0),
	datab => \HEX0_DECODER|REG_4bits|ALT_INV_DOUT\(3),
	datac => \HEX0_DECODER|REG_4bits|ALT_INV_DOUT\(1),
	datad => \HEX0_DECODER|REG_4bits|ALT_INV_DOUT\(2),
	combout => \HEX0_DECODER|DECODER_7seg|rascSaida7seg[2]~2_combout\);

\HEX0_DECODER|DECODER_7seg|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX0_DECODER|DECODER_7seg|rascSaida7seg[3]~3_combout\ = (!\HEX0_DECODER|REG_4bits|DOUT\(1) & (!\HEX0_DECODER|REG_4bits|DOUT\(3) & (!\HEX0_DECODER|REG_4bits|DOUT\(0) $ (!\HEX0_DECODER|REG_4bits|DOUT\(2))))) # (\HEX0_DECODER|REG_4bits|DOUT\(1) & 
-- ((!\HEX0_DECODER|REG_4bits|DOUT\(0) & (!\HEX0_DECODER|REG_4bits|DOUT\(2) & \HEX0_DECODER|REG_4bits|DOUT\(3))) # (\HEX0_DECODER|REG_4bits|DOUT\(0) & (\HEX0_DECODER|REG_4bits|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100100001010010010010000101001001001000010100100100100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX0_DECODER|REG_4bits|ALT_INV_DOUT\(0),
	datab => \HEX0_DECODER|REG_4bits|ALT_INV_DOUT\(1),
	datac => \HEX0_DECODER|REG_4bits|ALT_INV_DOUT\(2),
	datad => \HEX0_DECODER|REG_4bits|ALT_INV_DOUT\(3),
	combout => \HEX0_DECODER|DECODER_7seg|rascSaida7seg[3]~3_combout\);

\HEX0_DECODER|DECODER_7seg|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX0_DECODER|DECODER_7seg|rascSaida7seg[4]~4_combout\ = (!\HEX0_DECODER|REG_4bits|DOUT\(1) & ((!\HEX0_DECODER|REG_4bits|DOUT\(2) & ((\HEX0_DECODER|REG_4bits|DOUT\(0)))) # (\HEX0_DECODER|REG_4bits|DOUT\(2) & (!\HEX0_DECODER|REG_4bits|DOUT\(3))))) # 
-- (\HEX0_DECODER|REG_4bits|DOUT\(1) & (!\HEX0_DECODER|REG_4bits|DOUT\(3) & ((\HEX0_DECODER|REG_4bits|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100011101010000010001110101000001000111010100000100011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX0_DECODER|REG_4bits|ALT_INV_DOUT\(3),
	datab => \HEX0_DECODER|REG_4bits|ALT_INV_DOUT\(1),
	datac => \HEX0_DECODER|REG_4bits|ALT_INV_DOUT\(2),
	datad => \HEX0_DECODER|REG_4bits|ALT_INV_DOUT\(0),
	combout => \HEX0_DECODER|DECODER_7seg|rascSaida7seg[4]~4_combout\);

\HEX0_DECODER|DECODER_7seg|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX0_DECODER|DECODER_7seg|rascSaida7seg[5]~5_combout\ = (!\HEX0_DECODER|REG_4bits|DOUT\(0) & (\HEX0_DECODER|REG_4bits|DOUT\(1) & (!\HEX0_DECODER|REG_4bits|DOUT\(2) & !\HEX0_DECODER|REG_4bits|DOUT\(3)))) # (\HEX0_DECODER|REG_4bits|DOUT\(0) & 
-- (!\HEX0_DECODER|REG_4bits|DOUT\(3) $ (((!\HEX0_DECODER|REG_4bits|DOUT\(1) & \HEX0_DECODER|REG_4bits|DOUT\(2))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000100000100011100010000010001110001000001000111000100000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX0_DECODER|REG_4bits|ALT_INV_DOUT\(0),
	datab => \HEX0_DECODER|REG_4bits|ALT_INV_DOUT\(1),
	datac => \HEX0_DECODER|REG_4bits|ALT_INV_DOUT\(2),
	datad => \HEX0_DECODER|REG_4bits|ALT_INV_DOUT\(3),
	combout => \HEX0_DECODER|DECODER_7seg|rascSaida7seg[5]~5_combout\);

\HEX0_DECODER|DECODER_7seg|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX0_DECODER|DECODER_7seg|rascSaida7seg[6]~6_combout\ = (!\HEX0_DECODER|REG_4bits|DOUT\(0) & (!\HEX0_DECODER|REG_4bits|DOUT\(1) & (!\HEX0_DECODER|REG_4bits|DOUT\(3) $ (\HEX0_DECODER|REG_4bits|DOUT\(2))))) # (\HEX0_DECODER|REG_4bits|DOUT\(0) & 
-- (!\HEX0_DECODER|REG_4bits|DOUT\(3) & (!\HEX0_DECODER|REG_4bits|DOUT\(1) $ (\HEX0_DECODER|REG_4bits|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000100100110000000010010011000000001001001100000000100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX0_DECODER|REG_4bits|ALT_INV_DOUT\(0),
	datab => \HEX0_DECODER|REG_4bits|ALT_INV_DOUT\(3),
	datac => \HEX0_DECODER|REG_4bits|ALT_INV_DOUT\(1),
	datad => \HEX0_DECODER|REG_4bits|ALT_INV_DOUT\(2),
	combout => \HEX0_DECODER|DECODER_7seg|rascSaida7seg[6]~6_combout\);

\ENABLE_HEX[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- ENABLE_HEX(1) = (\ROM|memROM~8_combout\ & (\CPU|DECODER|Equal10~0_combout\ & \DECODER_ADDR|Equal6~1_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~8_combout\,
	datab => \CPU|DECODER|ALT_INV_Equal10~0_combout\,
	datac => \DECODER_ADDR|ALT_INV_Equal6~1_combout\,
	combout => ENABLE_HEX(1));

\HEX1_DECODER|REG_4bits|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG_A|DOUT\(0),
	ena => ENABLE_HEX(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX1_DECODER|REG_4bits|DOUT\(0));

\HEX1_DECODER|REG_4bits|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG_A|DOUT\(3),
	ena => ENABLE_HEX(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX1_DECODER|REG_4bits|DOUT\(3));

\HEX1_DECODER|REG_4bits|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG_A|DOUT\(1),
	ena => ENABLE_HEX(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX1_DECODER|REG_4bits|DOUT\(1));

\HEX1_DECODER|REG_4bits|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG_A|DOUT\(2),
	ena => ENABLE_HEX(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX1_DECODER|REG_4bits|DOUT\(2));

\HEX1_DECODER|DECODER_7seg|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX1_DECODER|DECODER_7seg|rascSaida7seg[0]~0_combout\ = (!\HEX1_DECODER|REG_4bits|DOUT\(3) & (!\HEX1_DECODER|REG_4bits|DOUT\(1) & (!\HEX1_DECODER|REG_4bits|DOUT\(0) $ (!\HEX1_DECODER|REG_4bits|DOUT\(2))))) # (\HEX1_DECODER|REG_4bits|DOUT\(3) & 
-- (\HEX1_DECODER|REG_4bits|DOUT\(0) & (!\HEX1_DECODER|REG_4bits|DOUT\(1) $ (!\HEX1_DECODER|REG_4bits|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000110010000010000011001000001000001100100000100000110010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX1_DECODER|REG_4bits|ALT_INV_DOUT\(0),
	datab => \HEX1_DECODER|REG_4bits|ALT_INV_DOUT\(3),
	datac => \HEX1_DECODER|REG_4bits|ALT_INV_DOUT\(1),
	datad => \HEX1_DECODER|REG_4bits|ALT_INV_DOUT\(2),
	combout => \HEX1_DECODER|DECODER_7seg|rascSaida7seg[0]~0_combout\);

\HEX1_DECODER|DECODER_7seg|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX1_DECODER|DECODER_7seg|rascSaida7seg[1]~1_combout\ = (!\HEX1_DECODER|REG_4bits|DOUT\(3) & (\HEX1_DECODER|REG_4bits|DOUT\(2) & (!\HEX1_DECODER|REG_4bits|DOUT\(0) $ (!\HEX1_DECODER|REG_4bits|DOUT\(1))))) # (\HEX1_DECODER|REG_4bits|DOUT\(3) & 
-- ((!\HEX1_DECODER|REG_4bits|DOUT\(0) & ((\HEX1_DECODER|REG_4bits|DOUT\(2)))) # (\HEX1_DECODER|REG_4bits|DOUT\(0) & (\HEX1_DECODER|REG_4bits|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101101011000000010110101100000001011010110000000101101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX1_DECODER|REG_4bits|ALT_INV_DOUT\(0),
	datab => \HEX1_DECODER|REG_4bits|ALT_INV_DOUT\(3),
	datac => \HEX1_DECODER|REG_4bits|ALT_INV_DOUT\(1),
	datad => \HEX1_DECODER|REG_4bits|ALT_INV_DOUT\(2),
	combout => \HEX1_DECODER|DECODER_7seg|rascSaida7seg[1]~1_combout\);

\HEX1_DECODER|DECODER_7seg|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX1_DECODER|DECODER_7seg|rascSaida7seg[2]~2_combout\ = (!\HEX1_DECODER|REG_4bits|DOUT\(3) & (!\HEX1_DECODER|REG_4bits|DOUT\(0) & (\HEX1_DECODER|REG_4bits|DOUT\(1) & !\HEX1_DECODER|REG_4bits|DOUT\(2)))) # (\HEX1_DECODER|REG_4bits|DOUT\(3) & 
-- (\HEX1_DECODER|REG_4bits|DOUT\(2) & ((!\HEX1_DECODER|REG_4bits|DOUT\(0)) # (\HEX1_DECODER|REG_4bits|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000100011000010000010001100001000001000110000100000100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX1_DECODER|REG_4bits|ALT_INV_DOUT\(0),
	datab => \HEX1_DECODER|REG_4bits|ALT_INV_DOUT\(3),
	datac => \HEX1_DECODER|REG_4bits|ALT_INV_DOUT\(1),
	datad => \HEX1_DECODER|REG_4bits|ALT_INV_DOUT\(2),
	combout => \HEX1_DECODER|DECODER_7seg|rascSaida7seg[2]~2_combout\);

\HEX1_DECODER|DECODER_7seg|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX1_DECODER|DECODER_7seg|rascSaida7seg[3]~3_combout\ = (!\HEX1_DECODER|REG_4bits|DOUT\(1) & (!\HEX1_DECODER|REG_4bits|DOUT\(3) & (!\HEX1_DECODER|REG_4bits|DOUT\(0) $ (!\HEX1_DECODER|REG_4bits|DOUT\(2))))) # (\HEX1_DECODER|REG_4bits|DOUT\(1) & 
-- ((!\HEX1_DECODER|REG_4bits|DOUT\(0) & (!\HEX1_DECODER|REG_4bits|DOUT\(2) & \HEX1_DECODER|REG_4bits|DOUT\(3))) # (\HEX1_DECODER|REG_4bits|DOUT\(0) & (\HEX1_DECODER|REG_4bits|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100100001010010010010000101001001001000010100100100100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX1_DECODER|REG_4bits|ALT_INV_DOUT\(0),
	datab => \HEX1_DECODER|REG_4bits|ALT_INV_DOUT\(1),
	datac => \HEX1_DECODER|REG_4bits|ALT_INV_DOUT\(2),
	datad => \HEX1_DECODER|REG_4bits|ALT_INV_DOUT\(3),
	combout => \HEX1_DECODER|DECODER_7seg|rascSaida7seg[3]~3_combout\);

\HEX1_DECODER|DECODER_7seg|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX1_DECODER|DECODER_7seg|rascSaida7seg[4]~4_combout\ = (!\HEX1_DECODER|REG_4bits|DOUT\(1) & ((!\HEX1_DECODER|REG_4bits|DOUT\(2) & ((\HEX1_DECODER|REG_4bits|DOUT\(0)))) # (\HEX1_DECODER|REG_4bits|DOUT\(2) & (!\HEX1_DECODER|REG_4bits|DOUT\(3))))) # 
-- (\HEX1_DECODER|REG_4bits|DOUT\(1) & (!\HEX1_DECODER|REG_4bits|DOUT\(3) & ((\HEX1_DECODER|REG_4bits|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100011101010000010001110101000001000111010100000100011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX1_DECODER|REG_4bits|ALT_INV_DOUT\(3),
	datab => \HEX1_DECODER|REG_4bits|ALT_INV_DOUT\(1),
	datac => \HEX1_DECODER|REG_4bits|ALT_INV_DOUT\(2),
	datad => \HEX1_DECODER|REG_4bits|ALT_INV_DOUT\(0),
	combout => \HEX1_DECODER|DECODER_7seg|rascSaida7seg[4]~4_combout\);

\HEX1_DECODER|DECODER_7seg|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX1_DECODER|DECODER_7seg|rascSaida7seg[5]~5_combout\ = (!\HEX1_DECODER|REG_4bits|DOUT\(0) & (\HEX1_DECODER|REG_4bits|DOUT\(1) & (!\HEX1_DECODER|REG_4bits|DOUT\(2) & !\HEX1_DECODER|REG_4bits|DOUT\(3)))) # (\HEX1_DECODER|REG_4bits|DOUT\(0) & 
-- (!\HEX1_DECODER|REG_4bits|DOUT\(3) $ (((!\HEX1_DECODER|REG_4bits|DOUT\(1) & \HEX1_DECODER|REG_4bits|DOUT\(2))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000100000100011100010000010001110001000001000111000100000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX1_DECODER|REG_4bits|ALT_INV_DOUT\(0),
	datab => \HEX1_DECODER|REG_4bits|ALT_INV_DOUT\(1),
	datac => \HEX1_DECODER|REG_4bits|ALT_INV_DOUT\(2),
	datad => \HEX1_DECODER|REG_4bits|ALT_INV_DOUT\(3),
	combout => \HEX1_DECODER|DECODER_7seg|rascSaida7seg[5]~5_combout\);

\HEX1_DECODER|DECODER_7seg|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX1_DECODER|DECODER_7seg|rascSaida7seg[6]~6_combout\ = (!\HEX1_DECODER|REG_4bits|DOUT\(0) & (!\HEX1_DECODER|REG_4bits|DOUT\(1) & (!\HEX1_DECODER|REG_4bits|DOUT\(3) $ (\HEX1_DECODER|REG_4bits|DOUT\(2))))) # (\HEX1_DECODER|REG_4bits|DOUT\(0) & 
-- (!\HEX1_DECODER|REG_4bits|DOUT\(3) & (!\HEX1_DECODER|REG_4bits|DOUT\(1) $ (\HEX1_DECODER|REG_4bits|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000100100110000000010010011000000001001001100000000100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX1_DECODER|REG_4bits|ALT_INV_DOUT\(0),
	datab => \HEX1_DECODER|REG_4bits|ALT_INV_DOUT\(3),
	datac => \HEX1_DECODER|REG_4bits|ALT_INV_DOUT\(1),
	datad => \HEX1_DECODER|REG_4bits|ALT_INV_DOUT\(2),
	combout => \HEX1_DECODER|DECODER_7seg|rascSaida7seg[6]~6_combout\);

\DECODER_ADDR|Equal6~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_ADDR|Equal6~2_combout\ = ( !\ROM|memROM~5_combout\ & ( (!\ROM|memROM~0_combout\ & (\ROM|memROM~1_combout\ & (!\CPU|INSTR|PC|DOUT\(8) & \ROM|memROM~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000000000000000000000000001000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \CPU|INSTR|PC|ALT_INV_DOUT\(8),
	datad => \ROM|ALT_INV_memROM~3_combout\,
	datae => \ROM|ALT_INV_memROM~5_combout\,
	combout => \DECODER_ADDR|Equal6~2_combout\);

\ENABLE_HEX[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- ENABLE_HEX(2) = (\ROM|memROM~8_combout\ & (\CPU|DECODER|Equal10~0_combout\ & \DECODER_ADDR|Equal6~2_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~8_combout\,
	datab => \CPU|DECODER|ALT_INV_Equal10~0_combout\,
	datac => \DECODER_ADDR|ALT_INV_Equal6~2_combout\,
	combout => ENABLE_HEX(2));

\HEX2_DECODER|REG_4bits|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG_A|DOUT\(0),
	ena => ENABLE_HEX(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX2_DECODER|REG_4bits|DOUT\(0));

\HEX2_DECODER|REG_4bits|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG_A|DOUT\(3),
	ena => ENABLE_HEX(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX2_DECODER|REG_4bits|DOUT\(3));

\HEX2_DECODER|REG_4bits|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG_A|DOUT\(1),
	ena => ENABLE_HEX(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX2_DECODER|REG_4bits|DOUT\(1));

\HEX2_DECODER|REG_4bits|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG_A|DOUT\(2),
	ena => ENABLE_HEX(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX2_DECODER|REG_4bits|DOUT\(2));

\HEX2_DECODER|DECODER_7seg|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX2_DECODER|DECODER_7seg|rascSaida7seg[0]~0_combout\ = (!\HEX2_DECODER|REG_4bits|DOUT\(3) & (!\HEX2_DECODER|REG_4bits|DOUT\(1) & (!\HEX2_DECODER|REG_4bits|DOUT\(0) $ (!\HEX2_DECODER|REG_4bits|DOUT\(2))))) # (\HEX2_DECODER|REG_4bits|DOUT\(3) & 
-- (\HEX2_DECODER|REG_4bits|DOUT\(0) & (!\HEX2_DECODER|REG_4bits|DOUT\(1) $ (!\HEX2_DECODER|REG_4bits|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000110010000010000011001000001000001100100000100000110010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX2_DECODER|REG_4bits|ALT_INV_DOUT\(0),
	datab => \HEX2_DECODER|REG_4bits|ALT_INV_DOUT\(3),
	datac => \HEX2_DECODER|REG_4bits|ALT_INV_DOUT\(1),
	datad => \HEX2_DECODER|REG_4bits|ALT_INV_DOUT\(2),
	combout => \HEX2_DECODER|DECODER_7seg|rascSaida7seg[0]~0_combout\);

\HEX2_DECODER|DECODER_7seg|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX2_DECODER|DECODER_7seg|rascSaida7seg[1]~1_combout\ = (!\HEX2_DECODER|REG_4bits|DOUT\(3) & (\HEX2_DECODER|REG_4bits|DOUT\(2) & (!\HEX2_DECODER|REG_4bits|DOUT\(0) $ (!\HEX2_DECODER|REG_4bits|DOUT\(1))))) # (\HEX2_DECODER|REG_4bits|DOUT\(3) & 
-- ((!\HEX2_DECODER|REG_4bits|DOUT\(0) & ((\HEX2_DECODER|REG_4bits|DOUT\(2)))) # (\HEX2_DECODER|REG_4bits|DOUT\(0) & (\HEX2_DECODER|REG_4bits|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101101011000000010110101100000001011010110000000101101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX2_DECODER|REG_4bits|ALT_INV_DOUT\(0),
	datab => \HEX2_DECODER|REG_4bits|ALT_INV_DOUT\(3),
	datac => \HEX2_DECODER|REG_4bits|ALT_INV_DOUT\(1),
	datad => \HEX2_DECODER|REG_4bits|ALT_INV_DOUT\(2),
	combout => \HEX2_DECODER|DECODER_7seg|rascSaida7seg[1]~1_combout\);

\HEX2_DECODER|DECODER_7seg|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX2_DECODER|DECODER_7seg|rascSaida7seg[2]~2_combout\ = (!\HEX2_DECODER|REG_4bits|DOUT\(3) & (!\HEX2_DECODER|REG_4bits|DOUT\(0) & (\HEX2_DECODER|REG_4bits|DOUT\(1) & !\HEX2_DECODER|REG_4bits|DOUT\(2)))) # (\HEX2_DECODER|REG_4bits|DOUT\(3) & 
-- (\HEX2_DECODER|REG_4bits|DOUT\(2) & ((!\HEX2_DECODER|REG_4bits|DOUT\(0)) # (\HEX2_DECODER|REG_4bits|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000100011000010000010001100001000001000110000100000100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX2_DECODER|REG_4bits|ALT_INV_DOUT\(0),
	datab => \HEX2_DECODER|REG_4bits|ALT_INV_DOUT\(3),
	datac => \HEX2_DECODER|REG_4bits|ALT_INV_DOUT\(1),
	datad => \HEX2_DECODER|REG_4bits|ALT_INV_DOUT\(2),
	combout => \HEX2_DECODER|DECODER_7seg|rascSaida7seg[2]~2_combout\);

\HEX2_DECODER|DECODER_7seg|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX2_DECODER|DECODER_7seg|rascSaida7seg[3]~3_combout\ = (!\HEX2_DECODER|REG_4bits|DOUT\(1) & (!\HEX2_DECODER|REG_4bits|DOUT\(3) & (!\HEX2_DECODER|REG_4bits|DOUT\(0) $ (!\HEX2_DECODER|REG_4bits|DOUT\(2))))) # (\HEX2_DECODER|REG_4bits|DOUT\(1) & 
-- ((!\HEX2_DECODER|REG_4bits|DOUT\(0) & (!\HEX2_DECODER|REG_4bits|DOUT\(2) & \HEX2_DECODER|REG_4bits|DOUT\(3))) # (\HEX2_DECODER|REG_4bits|DOUT\(0) & (\HEX2_DECODER|REG_4bits|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100100001010010010010000101001001001000010100100100100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX2_DECODER|REG_4bits|ALT_INV_DOUT\(0),
	datab => \HEX2_DECODER|REG_4bits|ALT_INV_DOUT\(1),
	datac => \HEX2_DECODER|REG_4bits|ALT_INV_DOUT\(2),
	datad => \HEX2_DECODER|REG_4bits|ALT_INV_DOUT\(3),
	combout => \HEX2_DECODER|DECODER_7seg|rascSaida7seg[3]~3_combout\);

\HEX2_DECODER|DECODER_7seg|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX2_DECODER|DECODER_7seg|rascSaida7seg[4]~4_combout\ = (!\HEX2_DECODER|REG_4bits|DOUT\(1) & ((!\HEX2_DECODER|REG_4bits|DOUT\(2) & ((\HEX2_DECODER|REG_4bits|DOUT\(0)))) # (\HEX2_DECODER|REG_4bits|DOUT\(2) & (!\HEX2_DECODER|REG_4bits|DOUT\(3))))) # 
-- (\HEX2_DECODER|REG_4bits|DOUT\(1) & (!\HEX2_DECODER|REG_4bits|DOUT\(3) & ((\HEX2_DECODER|REG_4bits|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100011101010000010001110101000001000111010100000100011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX2_DECODER|REG_4bits|ALT_INV_DOUT\(3),
	datab => \HEX2_DECODER|REG_4bits|ALT_INV_DOUT\(1),
	datac => \HEX2_DECODER|REG_4bits|ALT_INV_DOUT\(2),
	datad => \HEX2_DECODER|REG_4bits|ALT_INV_DOUT\(0),
	combout => \HEX2_DECODER|DECODER_7seg|rascSaida7seg[4]~4_combout\);

\HEX2_DECODER|DECODER_7seg|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX2_DECODER|DECODER_7seg|rascSaida7seg[5]~5_combout\ = (!\HEX2_DECODER|REG_4bits|DOUT\(0) & (\HEX2_DECODER|REG_4bits|DOUT\(1) & (!\HEX2_DECODER|REG_4bits|DOUT\(2) & !\HEX2_DECODER|REG_4bits|DOUT\(3)))) # (\HEX2_DECODER|REG_4bits|DOUT\(0) & 
-- (!\HEX2_DECODER|REG_4bits|DOUT\(3) $ (((!\HEX2_DECODER|REG_4bits|DOUT\(1) & \HEX2_DECODER|REG_4bits|DOUT\(2))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000100000100011100010000010001110001000001000111000100000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX2_DECODER|REG_4bits|ALT_INV_DOUT\(0),
	datab => \HEX2_DECODER|REG_4bits|ALT_INV_DOUT\(1),
	datac => \HEX2_DECODER|REG_4bits|ALT_INV_DOUT\(2),
	datad => \HEX2_DECODER|REG_4bits|ALT_INV_DOUT\(3),
	combout => \HEX2_DECODER|DECODER_7seg|rascSaida7seg[5]~5_combout\);

\HEX2_DECODER|DECODER_7seg|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX2_DECODER|DECODER_7seg|rascSaida7seg[6]~6_combout\ = (!\HEX2_DECODER|REG_4bits|DOUT\(0) & (!\HEX2_DECODER|REG_4bits|DOUT\(1) & (!\HEX2_DECODER|REG_4bits|DOUT\(3) $ (\HEX2_DECODER|REG_4bits|DOUT\(2))))) # (\HEX2_DECODER|REG_4bits|DOUT\(0) & 
-- (!\HEX2_DECODER|REG_4bits|DOUT\(3) & (!\HEX2_DECODER|REG_4bits|DOUT\(1) $ (\HEX2_DECODER|REG_4bits|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000100100110000000010010011000000001001001100000000100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX2_DECODER|REG_4bits|ALT_INV_DOUT\(0),
	datab => \HEX2_DECODER|REG_4bits|ALT_INV_DOUT\(3),
	datac => \HEX2_DECODER|REG_4bits|ALT_INV_DOUT\(1),
	datad => \HEX2_DECODER|REG_4bits|ALT_INV_DOUT\(2),
	combout => \HEX2_DECODER|DECODER_7seg|rascSaida7seg[6]~6_combout\);

\ENABLE_HEX[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- ENABLE_HEX(3) = (\ROM|memROM~8_combout\ & (\CPU|DECODER|Equal10~0_combout\ & \DECODER_ADDR|Equal6~3_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~8_combout\,
	datab => \CPU|DECODER|ALT_INV_Equal10~0_combout\,
	datac => \DECODER_ADDR|ALT_INV_Equal6~3_combout\,
	combout => ENABLE_HEX(3));

\HEX3_DECODER|REG_4bits|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG_A|DOUT\(0),
	ena => ENABLE_HEX(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX3_DECODER|REG_4bits|DOUT\(0));

\HEX3_DECODER|REG_4bits|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG_A|DOUT\(3),
	ena => ENABLE_HEX(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX3_DECODER|REG_4bits|DOUT\(3));

\HEX3_DECODER|REG_4bits|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG_A|DOUT\(1),
	ena => ENABLE_HEX(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX3_DECODER|REG_4bits|DOUT\(1));

\HEX3_DECODER|REG_4bits|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG_A|DOUT\(2),
	ena => ENABLE_HEX(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX3_DECODER|REG_4bits|DOUT\(2));

\HEX3_DECODER|DECODER_7seg|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX3_DECODER|DECODER_7seg|rascSaida7seg[0]~0_combout\ = (!\HEX3_DECODER|REG_4bits|DOUT\(3) & (!\HEX3_DECODER|REG_4bits|DOUT\(1) & (!\HEX3_DECODER|REG_4bits|DOUT\(0) $ (!\HEX3_DECODER|REG_4bits|DOUT\(2))))) # (\HEX3_DECODER|REG_4bits|DOUT\(3) & 
-- (\HEX3_DECODER|REG_4bits|DOUT\(0) & (!\HEX3_DECODER|REG_4bits|DOUT\(1) $ (!\HEX3_DECODER|REG_4bits|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000110010000010000011001000001000001100100000100000110010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX3_DECODER|REG_4bits|ALT_INV_DOUT\(0),
	datab => \HEX3_DECODER|REG_4bits|ALT_INV_DOUT\(3),
	datac => \HEX3_DECODER|REG_4bits|ALT_INV_DOUT\(1),
	datad => \HEX3_DECODER|REG_4bits|ALT_INV_DOUT\(2),
	combout => \HEX3_DECODER|DECODER_7seg|rascSaida7seg[0]~0_combout\);

\HEX3_DECODER|DECODER_7seg|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX3_DECODER|DECODER_7seg|rascSaida7seg[1]~1_combout\ = (!\HEX3_DECODER|REG_4bits|DOUT\(3) & (\HEX3_DECODER|REG_4bits|DOUT\(2) & (!\HEX3_DECODER|REG_4bits|DOUT\(0) $ (!\HEX3_DECODER|REG_4bits|DOUT\(1))))) # (\HEX3_DECODER|REG_4bits|DOUT\(3) & 
-- ((!\HEX3_DECODER|REG_4bits|DOUT\(0) & ((\HEX3_DECODER|REG_4bits|DOUT\(2)))) # (\HEX3_DECODER|REG_4bits|DOUT\(0) & (\HEX3_DECODER|REG_4bits|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101101011000000010110101100000001011010110000000101101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX3_DECODER|REG_4bits|ALT_INV_DOUT\(0),
	datab => \HEX3_DECODER|REG_4bits|ALT_INV_DOUT\(3),
	datac => \HEX3_DECODER|REG_4bits|ALT_INV_DOUT\(1),
	datad => \HEX3_DECODER|REG_4bits|ALT_INV_DOUT\(2),
	combout => \HEX3_DECODER|DECODER_7seg|rascSaida7seg[1]~1_combout\);

\HEX3_DECODER|DECODER_7seg|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX3_DECODER|DECODER_7seg|rascSaida7seg[2]~2_combout\ = (!\HEX3_DECODER|REG_4bits|DOUT\(3) & (!\HEX3_DECODER|REG_4bits|DOUT\(0) & (\HEX3_DECODER|REG_4bits|DOUT\(1) & !\HEX3_DECODER|REG_4bits|DOUT\(2)))) # (\HEX3_DECODER|REG_4bits|DOUT\(3) & 
-- (\HEX3_DECODER|REG_4bits|DOUT\(2) & ((!\HEX3_DECODER|REG_4bits|DOUT\(0)) # (\HEX3_DECODER|REG_4bits|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000100011000010000010001100001000001000110000100000100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX3_DECODER|REG_4bits|ALT_INV_DOUT\(0),
	datab => \HEX3_DECODER|REG_4bits|ALT_INV_DOUT\(3),
	datac => \HEX3_DECODER|REG_4bits|ALT_INV_DOUT\(1),
	datad => \HEX3_DECODER|REG_4bits|ALT_INV_DOUT\(2),
	combout => \HEX3_DECODER|DECODER_7seg|rascSaida7seg[2]~2_combout\);

\HEX3_DECODER|DECODER_7seg|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX3_DECODER|DECODER_7seg|rascSaida7seg[3]~3_combout\ = (!\HEX3_DECODER|REG_4bits|DOUT\(1) & (!\HEX3_DECODER|REG_4bits|DOUT\(3) & (!\HEX3_DECODER|REG_4bits|DOUT\(0) $ (!\HEX3_DECODER|REG_4bits|DOUT\(2))))) # (\HEX3_DECODER|REG_4bits|DOUT\(1) & 
-- ((!\HEX3_DECODER|REG_4bits|DOUT\(0) & (!\HEX3_DECODER|REG_4bits|DOUT\(2) & \HEX3_DECODER|REG_4bits|DOUT\(3))) # (\HEX3_DECODER|REG_4bits|DOUT\(0) & (\HEX3_DECODER|REG_4bits|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100100001010010010010000101001001001000010100100100100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX3_DECODER|REG_4bits|ALT_INV_DOUT\(0),
	datab => \HEX3_DECODER|REG_4bits|ALT_INV_DOUT\(1),
	datac => \HEX3_DECODER|REG_4bits|ALT_INV_DOUT\(2),
	datad => \HEX3_DECODER|REG_4bits|ALT_INV_DOUT\(3),
	combout => \HEX3_DECODER|DECODER_7seg|rascSaida7seg[3]~3_combout\);

\HEX3_DECODER|DECODER_7seg|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX3_DECODER|DECODER_7seg|rascSaida7seg[4]~4_combout\ = (!\HEX3_DECODER|REG_4bits|DOUT\(1) & ((!\HEX3_DECODER|REG_4bits|DOUT\(2) & ((\HEX3_DECODER|REG_4bits|DOUT\(0)))) # (\HEX3_DECODER|REG_4bits|DOUT\(2) & (!\HEX3_DECODER|REG_4bits|DOUT\(3))))) # 
-- (\HEX3_DECODER|REG_4bits|DOUT\(1) & (!\HEX3_DECODER|REG_4bits|DOUT\(3) & ((\HEX3_DECODER|REG_4bits|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100011101010000010001110101000001000111010100000100011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX3_DECODER|REG_4bits|ALT_INV_DOUT\(3),
	datab => \HEX3_DECODER|REG_4bits|ALT_INV_DOUT\(1),
	datac => \HEX3_DECODER|REG_4bits|ALT_INV_DOUT\(2),
	datad => \HEX3_DECODER|REG_4bits|ALT_INV_DOUT\(0),
	combout => \HEX3_DECODER|DECODER_7seg|rascSaida7seg[4]~4_combout\);

\HEX3_DECODER|DECODER_7seg|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX3_DECODER|DECODER_7seg|rascSaida7seg[5]~5_combout\ = (!\HEX3_DECODER|REG_4bits|DOUT\(0) & (\HEX3_DECODER|REG_4bits|DOUT\(1) & (!\HEX3_DECODER|REG_4bits|DOUT\(2) & !\HEX3_DECODER|REG_4bits|DOUT\(3)))) # (\HEX3_DECODER|REG_4bits|DOUT\(0) & 
-- (!\HEX3_DECODER|REG_4bits|DOUT\(3) $ (((!\HEX3_DECODER|REG_4bits|DOUT\(1) & \HEX3_DECODER|REG_4bits|DOUT\(2))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000100000100011100010000010001110001000001000111000100000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX3_DECODER|REG_4bits|ALT_INV_DOUT\(0),
	datab => \HEX3_DECODER|REG_4bits|ALT_INV_DOUT\(1),
	datac => \HEX3_DECODER|REG_4bits|ALT_INV_DOUT\(2),
	datad => \HEX3_DECODER|REG_4bits|ALT_INV_DOUT\(3),
	combout => \HEX3_DECODER|DECODER_7seg|rascSaida7seg[5]~5_combout\);

\HEX3_DECODER|DECODER_7seg|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX3_DECODER|DECODER_7seg|rascSaida7seg[6]~6_combout\ = (!\HEX3_DECODER|REG_4bits|DOUT\(0) & (!\HEX3_DECODER|REG_4bits|DOUT\(1) & (!\HEX3_DECODER|REG_4bits|DOUT\(3) $ (\HEX3_DECODER|REG_4bits|DOUT\(2))))) # (\HEX3_DECODER|REG_4bits|DOUT\(0) & 
-- (!\HEX3_DECODER|REG_4bits|DOUT\(3) & (!\HEX3_DECODER|REG_4bits|DOUT\(1) $ (\HEX3_DECODER|REG_4bits|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000100100110000000010010011000000001001001100000000100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX3_DECODER|REG_4bits|ALT_INV_DOUT\(0),
	datab => \HEX3_DECODER|REG_4bits|ALT_INV_DOUT\(3),
	datac => \HEX3_DECODER|REG_4bits|ALT_INV_DOUT\(1),
	datad => \HEX3_DECODER|REG_4bits|ALT_INV_DOUT\(2),
	combout => \HEX3_DECODER|DECODER_7seg|rascSaida7seg[6]~6_combout\);

\DECODER_ADDR|Equal6~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_ADDR|Equal6~4_combout\ = ( \ROM|memROM~5_combout\ & ( (!\ROM|memROM~0_combout\ & (\ROM|memROM~1_combout\ & (!\CPU|INSTR|PC|DOUT\(8) & !\ROM|memROM~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000000000000000000000000000000010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \CPU|INSTR|PC|ALT_INV_DOUT\(8),
	datad => \ROM|ALT_INV_memROM~3_combout\,
	datae => \ROM|ALT_INV_memROM~5_combout\,
	combout => \DECODER_ADDR|Equal6~4_combout\);

\ENABLE_HEX[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- ENABLE_HEX(4) = (\ROM|memROM~8_combout\ & (\CPU|DECODER|Equal10~0_combout\ & \DECODER_ADDR|Equal6~4_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~8_combout\,
	datab => \CPU|DECODER|ALT_INV_Equal10~0_combout\,
	datac => \DECODER_ADDR|ALT_INV_Equal6~4_combout\,
	combout => ENABLE_HEX(4));

\HEX4_DECODER|REG_4bits|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG_A|DOUT\(0),
	ena => ENABLE_HEX(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX4_DECODER|REG_4bits|DOUT\(0));

\HEX4_DECODER|REG_4bits|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG_A|DOUT\(3),
	ena => ENABLE_HEX(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX4_DECODER|REG_4bits|DOUT\(3));

\HEX4_DECODER|REG_4bits|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG_A|DOUT\(1),
	ena => ENABLE_HEX(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX4_DECODER|REG_4bits|DOUT\(1));

\HEX4_DECODER|REG_4bits|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG_A|DOUT\(2),
	ena => ENABLE_HEX(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX4_DECODER|REG_4bits|DOUT\(2));

\HEX4_DECODER|DECODER_7seg|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX4_DECODER|DECODER_7seg|rascSaida7seg[0]~0_combout\ = (!\HEX4_DECODER|REG_4bits|DOUT\(3) & (!\HEX4_DECODER|REG_4bits|DOUT\(1) & (!\HEX4_DECODER|REG_4bits|DOUT\(0) $ (!\HEX4_DECODER|REG_4bits|DOUT\(2))))) # (\HEX4_DECODER|REG_4bits|DOUT\(3) & 
-- (\HEX4_DECODER|REG_4bits|DOUT\(0) & (!\HEX4_DECODER|REG_4bits|DOUT\(1) $ (!\HEX4_DECODER|REG_4bits|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000110010000010000011001000001000001100100000100000110010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX4_DECODER|REG_4bits|ALT_INV_DOUT\(0),
	datab => \HEX4_DECODER|REG_4bits|ALT_INV_DOUT\(3),
	datac => \HEX4_DECODER|REG_4bits|ALT_INV_DOUT\(1),
	datad => \HEX4_DECODER|REG_4bits|ALT_INV_DOUT\(2),
	combout => \HEX4_DECODER|DECODER_7seg|rascSaida7seg[0]~0_combout\);

\HEX4_DECODER|DECODER_7seg|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX4_DECODER|DECODER_7seg|rascSaida7seg[1]~1_combout\ = (!\HEX4_DECODER|REG_4bits|DOUT\(3) & (\HEX4_DECODER|REG_4bits|DOUT\(2) & (!\HEX4_DECODER|REG_4bits|DOUT\(0) $ (!\HEX4_DECODER|REG_4bits|DOUT\(1))))) # (\HEX4_DECODER|REG_4bits|DOUT\(3) & 
-- ((!\HEX4_DECODER|REG_4bits|DOUT\(0) & ((\HEX4_DECODER|REG_4bits|DOUT\(2)))) # (\HEX4_DECODER|REG_4bits|DOUT\(0) & (\HEX4_DECODER|REG_4bits|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101101011000000010110101100000001011010110000000101101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX4_DECODER|REG_4bits|ALT_INV_DOUT\(0),
	datab => \HEX4_DECODER|REG_4bits|ALT_INV_DOUT\(3),
	datac => \HEX4_DECODER|REG_4bits|ALT_INV_DOUT\(1),
	datad => \HEX4_DECODER|REG_4bits|ALT_INV_DOUT\(2),
	combout => \HEX4_DECODER|DECODER_7seg|rascSaida7seg[1]~1_combout\);

\HEX4_DECODER|DECODER_7seg|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX4_DECODER|DECODER_7seg|rascSaida7seg[2]~2_combout\ = (!\HEX4_DECODER|REG_4bits|DOUT\(3) & (!\HEX4_DECODER|REG_4bits|DOUT\(0) & (\HEX4_DECODER|REG_4bits|DOUT\(1) & !\HEX4_DECODER|REG_4bits|DOUT\(2)))) # (\HEX4_DECODER|REG_4bits|DOUT\(3) & 
-- (\HEX4_DECODER|REG_4bits|DOUT\(2) & ((!\HEX4_DECODER|REG_4bits|DOUT\(0)) # (\HEX4_DECODER|REG_4bits|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000100011000010000010001100001000001000110000100000100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX4_DECODER|REG_4bits|ALT_INV_DOUT\(0),
	datab => \HEX4_DECODER|REG_4bits|ALT_INV_DOUT\(3),
	datac => \HEX4_DECODER|REG_4bits|ALT_INV_DOUT\(1),
	datad => \HEX4_DECODER|REG_4bits|ALT_INV_DOUT\(2),
	combout => \HEX4_DECODER|DECODER_7seg|rascSaida7seg[2]~2_combout\);

\HEX4_DECODER|DECODER_7seg|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX4_DECODER|DECODER_7seg|rascSaida7seg[3]~3_combout\ = (!\HEX4_DECODER|REG_4bits|DOUT\(1) & (!\HEX4_DECODER|REG_4bits|DOUT\(3) & (!\HEX4_DECODER|REG_4bits|DOUT\(0) $ (!\HEX4_DECODER|REG_4bits|DOUT\(2))))) # (\HEX4_DECODER|REG_4bits|DOUT\(1) & 
-- ((!\HEX4_DECODER|REG_4bits|DOUT\(0) & (!\HEX4_DECODER|REG_4bits|DOUT\(2) & \HEX4_DECODER|REG_4bits|DOUT\(3))) # (\HEX4_DECODER|REG_4bits|DOUT\(0) & (\HEX4_DECODER|REG_4bits|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100100001010010010010000101001001001000010100100100100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX4_DECODER|REG_4bits|ALT_INV_DOUT\(0),
	datab => \HEX4_DECODER|REG_4bits|ALT_INV_DOUT\(1),
	datac => \HEX4_DECODER|REG_4bits|ALT_INV_DOUT\(2),
	datad => \HEX4_DECODER|REG_4bits|ALT_INV_DOUT\(3),
	combout => \HEX4_DECODER|DECODER_7seg|rascSaida7seg[3]~3_combout\);

\HEX4_DECODER|DECODER_7seg|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX4_DECODER|DECODER_7seg|rascSaida7seg[4]~4_combout\ = (!\HEX4_DECODER|REG_4bits|DOUT\(1) & ((!\HEX4_DECODER|REG_4bits|DOUT\(2) & ((\HEX4_DECODER|REG_4bits|DOUT\(0)))) # (\HEX4_DECODER|REG_4bits|DOUT\(2) & (!\HEX4_DECODER|REG_4bits|DOUT\(3))))) # 
-- (\HEX4_DECODER|REG_4bits|DOUT\(1) & (!\HEX4_DECODER|REG_4bits|DOUT\(3) & ((\HEX4_DECODER|REG_4bits|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100011101010000010001110101000001000111010100000100011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX4_DECODER|REG_4bits|ALT_INV_DOUT\(3),
	datab => \HEX4_DECODER|REG_4bits|ALT_INV_DOUT\(1),
	datac => \HEX4_DECODER|REG_4bits|ALT_INV_DOUT\(2),
	datad => \HEX4_DECODER|REG_4bits|ALT_INV_DOUT\(0),
	combout => \HEX4_DECODER|DECODER_7seg|rascSaida7seg[4]~4_combout\);

\HEX4_DECODER|DECODER_7seg|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX4_DECODER|DECODER_7seg|rascSaida7seg[5]~5_combout\ = (!\HEX4_DECODER|REG_4bits|DOUT\(0) & (\HEX4_DECODER|REG_4bits|DOUT\(1) & (!\HEX4_DECODER|REG_4bits|DOUT\(2) & !\HEX4_DECODER|REG_4bits|DOUT\(3)))) # (\HEX4_DECODER|REG_4bits|DOUT\(0) & 
-- (!\HEX4_DECODER|REG_4bits|DOUT\(3) $ (((!\HEX4_DECODER|REG_4bits|DOUT\(1) & \HEX4_DECODER|REG_4bits|DOUT\(2))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000100000100011100010000010001110001000001000111000100000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX4_DECODER|REG_4bits|ALT_INV_DOUT\(0),
	datab => \HEX4_DECODER|REG_4bits|ALT_INV_DOUT\(1),
	datac => \HEX4_DECODER|REG_4bits|ALT_INV_DOUT\(2),
	datad => \HEX4_DECODER|REG_4bits|ALT_INV_DOUT\(3),
	combout => \HEX4_DECODER|DECODER_7seg|rascSaida7seg[5]~5_combout\);

\HEX4_DECODER|DECODER_7seg|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX4_DECODER|DECODER_7seg|rascSaida7seg[6]~6_combout\ = (!\HEX4_DECODER|REG_4bits|DOUT\(0) & (!\HEX4_DECODER|REG_4bits|DOUT\(1) & (!\HEX4_DECODER|REG_4bits|DOUT\(3) $ (\HEX4_DECODER|REG_4bits|DOUT\(2))))) # (\HEX4_DECODER|REG_4bits|DOUT\(0) & 
-- (!\HEX4_DECODER|REG_4bits|DOUT\(3) & (!\HEX4_DECODER|REG_4bits|DOUT\(1) $ (\HEX4_DECODER|REG_4bits|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000100100110000000010010011000000001001001100000000100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX4_DECODER|REG_4bits|ALT_INV_DOUT\(0),
	datab => \HEX4_DECODER|REG_4bits|ALT_INV_DOUT\(3),
	datac => \HEX4_DECODER|REG_4bits|ALT_INV_DOUT\(1),
	datad => \HEX4_DECODER|REG_4bits|ALT_INV_DOUT\(2),
	combout => \HEX4_DECODER|DECODER_7seg|rascSaida7seg[6]~6_combout\);

\ENABLE_HEX[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- ENABLE_HEX(5) = (\ROM|memROM~8_combout\ & (\CPU|DECODER|Equal10~0_combout\ & \DECODER_ADDR|SAIDA[5]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~8_combout\,
	datab => \CPU|DECODER|ALT_INV_Equal10~0_combout\,
	datac => \DECODER_ADDR|ALT_INV_SAIDA[5]~0_combout\,
	combout => ENABLE_HEX(5));

\HEX5_DECODER|REG_4bits|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG_A|DOUT\(0),
	ena => ENABLE_HEX(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX5_DECODER|REG_4bits|DOUT\(0));

\HEX5_DECODER|REG_4bits|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG_A|DOUT\(3),
	ena => ENABLE_HEX(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX5_DECODER|REG_4bits|DOUT\(3));

\HEX5_DECODER|REG_4bits|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG_A|DOUT\(1),
	ena => ENABLE_HEX(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX5_DECODER|REG_4bits|DOUT\(1));

\HEX5_DECODER|REG_4bits|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG_A|DOUT\(2),
	ena => ENABLE_HEX(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX5_DECODER|REG_4bits|DOUT\(2));

\HEX5_DECODER|DECODER_7seg|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX5_DECODER|DECODER_7seg|rascSaida7seg[0]~0_combout\ = (!\HEX5_DECODER|REG_4bits|DOUT\(3) & (!\HEX5_DECODER|REG_4bits|DOUT\(1) & (!\HEX5_DECODER|REG_4bits|DOUT\(0) $ (!\HEX5_DECODER|REG_4bits|DOUT\(2))))) # (\HEX5_DECODER|REG_4bits|DOUT\(3) & 
-- (\HEX5_DECODER|REG_4bits|DOUT\(0) & (!\HEX5_DECODER|REG_4bits|DOUT\(1) $ (!\HEX5_DECODER|REG_4bits|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000110010000010000011001000001000001100100000100000110010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX5_DECODER|REG_4bits|ALT_INV_DOUT\(0),
	datab => \HEX5_DECODER|REG_4bits|ALT_INV_DOUT\(3),
	datac => \HEX5_DECODER|REG_4bits|ALT_INV_DOUT\(1),
	datad => \HEX5_DECODER|REG_4bits|ALT_INV_DOUT\(2),
	combout => \HEX5_DECODER|DECODER_7seg|rascSaida7seg[0]~0_combout\);

\HEX5_DECODER|DECODER_7seg|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX5_DECODER|DECODER_7seg|rascSaida7seg[1]~1_combout\ = (!\HEX5_DECODER|REG_4bits|DOUT\(3) & (\HEX5_DECODER|REG_4bits|DOUT\(2) & (!\HEX5_DECODER|REG_4bits|DOUT\(0) $ (!\HEX5_DECODER|REG_4bits|DOUT\(1))))) # (\HEX5_DECODER|REG_4bits|DOUT\(3) & 
-- ((!\HEX5_DECODER|REG_4bits|DOUT\(0) & ((\HEX5_DECODER|REG_4bits|DOUT\(2)))) # (\HEX5_DECODER|REG_4bits|DOUT\(0) & (\HEX5_DECODER|REG_4bits|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101101011000000010110101100000001011010110000000101101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX5_DECODER|REG_4bits|ALT_INV_DOUT\(0),
	datab => \HEX5_DECODER|REG_4bits|ALT_INV_DOUT\(3),
	datac => \HEX5_DECODER|REG_4bits|ALT_INV_DOUT\(1),
	datad => \HEX5_DECODER|REG_4bits|ALT_INV_DOUT\(2),
	combout => \HEX5_DECODER|DECODER_7seg|rascSaida7seg[1]~1_combout\);

\HEX5_DECODER|DECODER_7seg|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX5_DECODER|DECODER_7seg|rascSaida7seg[2]~2_combout\ = (!\HEX5_DECODER|REG_4bits|DOUT\(3) & (!\HEX5_DECODER|REG_4bits|DOUT\(0) & (\HEX5_DECODER|REG_4bits|DOUT\(1) & !\HEX5_DECODER|REG_4bits|DOUT\(2)))) # (\HEX5_DECODER|REG_4bits|DOUT\(3) & 
-- (\HEX5_DECODER|REG_4bits|DOUT\(2) & ((!\HEX5_DECODER|REG_4bits|DOUT\(0)) # (\HEX5_DECODER|REG_4bits|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000100011000010000010001100001000001000110000100000100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX5_DECODER|REG_4bits|ALT_INV_DOUT\(0),
	datab => \HEX5_DECODER|REG_4bits|ALT_INV_DOUT\(3),
	datac => \HEX5_DECODER|REG_4bits|ALT_INV_DOUT\(1),
	datad => \HEX5_DECODER|REG_4bits|ALT_INV_DOUT\(2),
	combout => \HEX5_DECODER|DECODER_7seg|rascSaida7seg[2]~2_combout\);

\HEX5_DECODER|DECODER_7seg|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX5_DECODER|DECODER_7seg|rascSaida7seg[3]~3_combout\ = (!\HEX5_DECODER|REG_4bits|DOUT\(1) & (!\HEX5_DECODER|REG_4bits|DOUT\(3) & (!\HEX5_DECODER|REG_4bits|DOUT\(0) $ (!\HEX5_DECODER|REG_4bits|DOUT\(2))))) # (\HEX5_DECODER|REG_4bits|DOUT\(1) & 
-- ((!\HEX5_DECODER|REG_4bits|DOUT\(0) & (!\HEX5_DECODER|REG_4bits|DOUT\(2) & \HEX5_DECODER|REG_4bits|DOUT\(3))) # (\HEX5_DECODER|REG_4bits|DOUT\(0) & (\HEX5_DECODER|REG_4bits|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100100001010010010010000101001001001000010100100100100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX5_DECODER|REG_4bits|ALT_INV_DOUT\(0),
	datab => \HEX5_DECODER|REG_4bits|ALT_INV_DOUT\(1),
	datac => \HEX5_DECODER|REG_4bits|ALT_INV_DOUT\(2),
	datad => \HEX5_DECODER|REG_4bits|ALT_INV_DOUT\(3),
	combout => \HEX5_DECODER|DECODER_7seg|rascSaida7seg[3]~3_combout\);

\HEX5_DECODER|DECODER_7seg|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX5_DECODER|DECODER_7seg|rascSaida7seg[4]~4_combout\ = (!\HEX5_DECODER|REG_4bits|DOUT\(1) & ((!\HEX5_DECODER|REG_4bits|DOUT\(2) & ((\HEX5_DECODER|REG_4bits|DOUT\(0)))) # (\HEX5_DECODER|REG_4bits|DOUT\(2) & (!\HEX5_DECODER|REG_4bits|DOUT\(3))))) # 
-- (\HEX5_DECODER|REG_4bits|DOUT\(1) & (!\HEX5_DECODER|REG_4bits|DOUT\(3) & ((\HEX5_DECODER|REG_4bits|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100011101010000010001110101000001000111010100000100011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX5_DECODER|REG_4bits|ALT_INV_DOUT\(3),
	datab => \HEX5_DECODER|REG_4bits|ALT_INV_DOUT\(1),
	datac => \HEX5_DECODER|REG_4bits|ALT_INV_DOUT\(2),
	datad => \HEX5_DECODER|REG_4bits|ALT_INV_DOUT\(0),
	combout => \HEX5_DECODER|DECODER_7seg|rascSaida7seg[4]~4_combout\);

\HEX5_DECODER|DECODER_7seg|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX5_DECODER|DECODER_7seg|rascSaida7seg[5]~5_combout\ = (!\HEX5_DECODER|REG_4bits|DOUT\(0) & (\HEX5_DECODER|REG_4bits|DOUT\(1) & (!\HEX5_DECODER|REG_4bits|DOUT\(2) & !\HEX5_DECODER|REG_4bits|DOUT\(3)))) # (\HEX5_DECODER|REG_4bits|DOUT\(0) & 
-- (!\HEX5_DECODER|REG_4bits|DOUT\(3) $ (((!\HEX5_DECODER|REG_4bits|DOUT\(1) & \HEX5_DECODER|REG_4bits|DOUT\(2))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000100000100011100010000010001110001000001000111000100000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX5_DECODER|REG_4bits|ALT_INV_DOUT\(0),
	datab => \HEX5_DECODER|REG_4bits|ALT_INV_DOUT\(1),
	datac => \HEX5_DECODER|REG_4bits|ALT_INV_DOUT\(2),
	datad => \HEX5_DECODER|REG_4bits|ALT_INV_DOUT\(3),
	combout => \HEX5_DECODER|DECODER_7seg|rascSaida7seg[5]~5_combout\);

\HEX5_DECODER|DECODER_7seg|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX5_DECODER|DECODER_7seg|rascSaida7seg[6]~6_combout\ = (!\HEX5_DECODER|REG_4bits|DOUT\(0) & (!\HEX5_DECODER|REG_4bits|DOUT\(1) & (!\HEX5_DECODER|REG_4bits|DOUT\(3) $ (\HEX5_DECODER|REG_4bits|DOUT\(2))))) # (\HEX5_DECODER|REG_4bits|DOUT\(0) & 
-- (!\HEX5_DECODER|REG_4bits|DOUT\(3) & (!\HEX5_DECODER|REG_4bits|DOUT\(1) $ (\HEX5_DECODER|REG_4bits|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000100100110000000010010011000000001001001100000000100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX5_DECODER|REG_4bits|ALT_INV_DOUT\(0),
	datab => \HEX5_DECODER|REG_4bits|ALT_INV_DOUT\(3),
	datac => \HEX5_DECODER|REG_4bits|ALT_INV_DOUT\(1),
	datad => \HEX5_DECODER|REG_4bits|ALT_INV_DOUT\(2),
	combout => \HEX5_DECODER|DECODER_7seg|rascSaida7seg[6]~6_combout\);

\CPU|DECODER|sinais_controle~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER|sinais_controle~0_combout\ = ( \ROM|memROM~13_combout\ & ( (\ROM|memROM~1_combout\ & (!\CPU|INSTR|PC|DOUT\(8) & ((\ROM|memROM~11_combout\) # (\ROM|memROM~9_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001000100010000000000000000000000010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \CPU|INSTR|PC|ALT_INV_DOUT\(8),
	datac => \ROM|ALT_INV_memROM~9_combout\,
	datad => \ROM|ALT_INV_memROM~11_combout\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	combout => \CPU|DECODER|sinais_controle~0_combout\);

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
END structure;


