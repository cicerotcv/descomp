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

-- DATE "10/08/2021 12:46:29"

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
	FPGA_RESET_N : IN std_logic;
	SW : IN std_logic_vector(9 DOWNTO 0);
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX3 : OUT std_logic_vector(6 DOWNTO 0);
	HEX4 : OUT std_logic_vector(6 DOWNTO 0);
	HEX5 : OUT std_logic_vector(6 DOWNTO 0);
	LEDR : OUT std_logic_vector(9 DOWNTO 0)
	);
END computador;

-- Design Ports Information
-- KEY[0]	=>  Location: PIN_U7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_W9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_M7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_M6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- FPGA_RESET_N	=>  Location: PIN_P22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_U13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_T13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_T12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AA15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AB15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AA13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AB13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_U21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[1]	=>  Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[2]	=>  Location: PIN_W22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[3]	=>  Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[4]	=>  Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[5]	=>  Location: PIN_Y21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[6]	=>  Location: PIN_AA22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[0]	=>  Location: PIN_AA20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[1]	=>  Location: PIN_AB20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[2]	=>  Location: PIN_AA19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[3]	=>  Location: PIN_AA18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[4]	=>  Location: PIN_AB18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[5]	=>  Location: PIN_AA17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[6]	=>  Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[0]	=>  Location: PIN_Y19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[1]	=>  Location: PIN_AB17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[2]	=>  Location: PIN_AA10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[3]	=>  Location: PIN_Y14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[4]	=>  Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[5]	=>  Location: PIN_AB22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[6]	=>  Location: PIN_AB21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[0]	=>  Location: PIN_Y16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[1]	=>  Location: PIN_W16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[2]	=>  Location: PIN_Y17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[3]	=>  Location: PIN_V16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[4]	=>  Location: PIN_U17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[5]	=>  Location: PIN_V18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[6]	=>  Location: PIN_V19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX4[0]	=>  Location: PIN_U20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX4[1]	=>  Location: PIN_Y20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX4[2]	=>  Location: PIN_V20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX4[3]	=>  Location: PIN_U16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX4[4]	=>  Location: PIN_U15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX4[5]	=>  Location: PIN_Y15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX4[6]	=>  Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX5[0]	=>  Location: PIN_N9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX5[1]	=>  Location: PIN_M8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX5[2]	=>  Location: PIN_T14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX5[3]	=>  Location: PIN_P14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX5[4]	=>  Location: PIN_C1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX5[5]	=>  Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX5[6]	=>  Location: PIN_W19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[0]	=>  Location: PIN_AA2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[1]	=>  Location: PIN_AA1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[2]	=>  Location: PIN_W2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[3]	=>  Location: PIN_Y3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[4]	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[5]	=>  Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[6]	=>  Location: PIN_U2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[7]	=>  Location: PIN_U1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[8]	=>  Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[9]	=>  Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- CLOCK_50	=>  Location: PIN_M9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL ww_FPGA_RESET_N : std_logic;
SIGNAL ww_SW : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(9 DOWNTO 0);
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \FPGA_RESET_N~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputCLKENA0_outclk\ : std_logic;
SIGNAL \CPU|INSTR|SOMA_CONST|Add0~5_sumout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \CPU|INSTR|PC|DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM|memROM~9_combout\ : std_logic;
SIGNAL \CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM|memROM~5_combout\ : std_logic;
SIGNAL \ROM|memROM~6_combout\ : std_logic;
SIGNAL \CPU|DECODER|Equal10~2_combout\ : std_logic;
SIGNAL \CPU|INSTR|PC|DOUT[4]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|INSTR|SOMA_CONST|Add0~26\ : std_logic;
SIGNAL \CPU|INSTR|SOMA_CONST|Add0~9_sumout\ : std_logic;
SIGNAL \ROM|memROM~4_combout\ : std_logic;
SIGNAL \ROM|memROM~10_combout\ : std_logic;
SIGNAL \ROM|memROM~0_combout\ : std_logic;
SIGNAL \ROM|memROM~1_combout\ : std_logic;
SIGNAL \CPU|INSTR|SOMA_CONST|Add0~6\ : std_logic;
SIGNAL \CPU|INSTR|SOMA_CONST|Add0~2\ : std_logic;
SIGNAL \CPU|INSTR|SOMA_CONST|Add0~30\ : std_logic;
SIGNAL \CPU|INSTR|SOMA_CONST|Add0~33_sumout\ : std_logic;
SIGNAL \CPU|INSTR|SOMA_CONST|Add0~34\ : std_logic;
SIGNAL \CPU|INSTR|SOMA_CONST|Add0~13_sumout\ : std_logic;
SIGNAL \CPU|INSTR|SOMA_CONST|Add0~14\ : std_logic;
SIGNAL \CPU|INSTR|SOMA_CONST|Add0~17_sumout\ : std_logic;
SIGNAL \CPU|INSTR|SOMA_CONST|Add0~18\ : std_logic;
SIGNAL \CPU|INSTR|SOMA_CONST|Add0~21_sumout\ : std_logic;
SIGNAL \CPU|INSTR|SOMA_CONST|Add0~22\ : std_logic;
SIGNAL \CPU|INSTR|SOMA_CONST|Add0~25_sumout\ : std_logic;
SIGNAL \ROM|memROM~2_combout\ : std_logic;
SIGNAL \ROM|memROM~3_combout\ : std_logic;
SIGNAL \CPU|INSTR|SOMA_CONST|Add0~1_sumout\ : std_logic;
SIGNAL \CPU|INSTR|PC|DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM|memROM~8_combout\ : std_logic;
SIGNAL \CPU|INSTR|SOMA_CONST|Add0~29_sumout\ : std_logic;
SIGNAL \CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM|memROM~7_combout\ : std_logic;
SIGNAL \CPU|DECODER|Equal10~0_combout\ : std_logic;
SIGNAL \CPU|INSTR|PC|DOUT[6]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM|memROM~11_combout\ : std_logic;
SIGNAL \RAM|ram~651_combout\ : std_logic;
SIGNAL \RAM|ram~586_combout\ : std_logic;
SIGNAL \RAM|ram~655_combout\ : std_logic;
SIGNAL \RAM|ram~590_combout\ : std_logic;
SIGNAL \RAM|ram~647_combout\ : std_logic;
SIGNAL \RAM|ram~582_combout\ : std_logic;
SIGNAL \RAM|ram~660_combout\ : std_logic;
SIGNAL \RAM|ram~16_q\ : std_logic;
SIGNAL \RAM|ram~659_combout\ : std_logic;
SIGNAL \RAM|ram~32_q\ : std_logic;
SIGNAL \RAM|ram~643_combout\ : std_logic;
SIGNAL \RAM|ram~578_combout\ : std_logic;
SIGNAL \RAM|ram~594_combout\ : std_logic;
SIGNAL \RAM|ram~607_combout\ : std_logic;
SIGNAL \RAM|ram~539_combout\ : std_logic;
SIGNAL \RAM|ram~599_combout\ : std_logic;
SIGNAL \RAM|ram~531_combout\ : std_logic;
SIGNAL \RAM|ram~603_combout\ : std_logic;
SIGNAL \RAM|ram~535_combout\ : std_logic;
SIGNAL \RAM|ram~15_q\ : std_logic;
SIGNAL \RAM|ram~31_q\ : std_logic;
SIGNAL \RAM|ram~595_combout\ : std_logic;
SIGNAL \RAM|ram~527_combout\ : std_logic;
SIGNAL \RAM|ram~543_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~1_sumout\ : std_logic;
SIGNAL \CPU|DECODER|sinais_controle~0_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~18_cout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~1_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[0]~0_combout\ : std_logic;
SIGNAL \CPU|DECODER|Equal10~1_combout\ : std_logic;
SIGNAL \CPU|DECODER|sinais_controle~1_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~2\ : std_logic;
SIGNAL \CPU|ULA1|Add0~13_sumout\ : std_logic;
SIGNAL \CPU|REG_A|DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|ULA1|Add1~2\ : std_logic;
SIGNAL \CPU|ULA1|Add1~13_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[1]~3_combout\ : std_logic;
SIGNAL \DECODER_ADDR|Equal6~0_combout\ : std_logic;
SIGNAL \DECODER_ADDR|Equal6~1_combout\ : std_logic;
SIGNAL \RAM|ram~619_combout\ : std_logic;
SIGNAL \RAM|ram~552_combout\ : std_logic;
SIGNAL \RAM|ram~623_combout\ : std_logic;
SIGNAL \RAM|ram~556_combout\ : std_logic;
SIGNAL \RAM|ram~18_q\ : std_logic;
SIGNAL \RAM|ram~34_q\ : std_logic;
SIGNAL \RAM|ram~611_combout\ : std_logic;
SIGNAL \RAM|ram~544_combout\ : std_logic;
SIGNAL \RAM|ram~615_combout\ : std_logic;
SIGNAL \RAM|ram~548_combout\ : std_logic;
SIGNAL \RAM|ram~560_combout\ : std_logic;
SIGNAL \RAM|ram~639_combout\ : std_logic;
SIGNAL \RAM|ram~573_combout\ : std_logic;
SIGNAL \RAM|ram~635_combout\ : std_logic;
SIGNAL \RAM|ram~569_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~14\ : std_logic;
SIGNAL \CPU|ULA1|Add1~9_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[2]~2_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~14\ : std_logic;
SIGNAL \CPU|ULA1|Add0~9_sumout\ : std_logic;
SIGNAL \CPU|REG_A|DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \RAM|ram~33_q\ : std_logic;
SIGNAL \RAM|ram~17_q\ : std_logic;
SIGNAL \RAM|ram~627_combout\ : std_logic;
SIGNAL \RAM|ram~561_combout\ : std_logic;
SIGNAL \RAM|ram~631_combout\ : std_logic;
SIGNAL \RAM|ram~565_combout\ : std_logic;
SIGNAL \RAM|ram~577_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~10\ : std_logic;
SIGNAL \CPU|ULA1|Add0~5_sumout\ : std_logic;
SIGNAL \CPU|REG_A|DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|ULA1|Add1~10\ : std_logic;
SIGNAL \CPU|ULA1|Add1~5_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[3]~1_combout\ : std_logic;
SIGNAL \HEX0_DECODER|DECODER_7seg|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \HEX0_DECODER|DECODER_7seg|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \HEX0_DECODER|DECODER_7seg|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \HEX0_DECODER|DECODER_7seg|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \HEX0_DECODER|DECODER_7seg|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \HEX0_DECODER|DECODER_7seg|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \HEX0_DECODER|DECODER_7seg|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \DECODER_ADDR|Equal6~2_combout\ : std_logic;
SIGNAL \HEX1_DECODER|DECODER_7seg|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \HEX1_DECODER|DECODER_7seg|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \HEX1_DECODER|DECODER_7seg|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \HEX1_DECODER|DECODER_7seg|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \HEX1_DECODER|DECODER_7seg|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \HEX1_DECODER|DECODER_7seg|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \HEX1_DECODER|DECODER_7seg|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \DECODER_ADDR|Equal6~3_combout\ : std_logic;
SIGNAL \HEX2_DECODER|DECODER_7seg|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \HEX2_DECODER|DECODER_7seg|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \HEX2_DECODER|DECODER_7seg|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \HEX2_DECODER|DECODER_7seg|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \HEX2_DECODER|DECODER_7seg|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \HEX2_DECODER|DECODER_7seg|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \HEX2_DECODER|DECODER_7seg|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \DECODER_ADDR|Equal6~4_combout\ : std_logic;
SIGNAL \HEX3_DECODER|DECODER_7seg|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \HEX3_DECODER|DECODER_7seg|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \HEX3_DECODER|DECODER_7seg|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \HEX3_DECODER|DECODER_7seg|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \HEX3_DECODER|DECODER_7seg|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \HEX3_DECODER|DECODER_7seg|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \HEX3_DECODER|DECODER_7seg|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \DECODER_ADDR|Equal6~5_combout\ : std_logic;
SIGNAL \HEX4_DECODER|DECODER_7seg|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \HEX4_DECODER|DECODER_7seg|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \HEX4_DECODER|DECODER_7seg|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \HEX4_DECODER|DECODER_7seg|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \HEX4_DECODER|DECODER_7seg|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \HEX4_DECODER|DECODER_7seg|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \HEX4_DECODER|DECODER_7seg|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \CPU|REG_A|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \HEX4_DECODER|REG_4bits|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \HEX0_DECODER|REG_4bits|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CPU|INSTR|PC|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \HEX1_DECODER|REG_4bits|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \HEX2_DECODER|REG_4bits|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \HEX3_DECODER|REG_4bits|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CPU|REG_A|ALT_INV_DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|REG_A|ALT_INV_DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|REG_A|ALT_INV_DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|INSTR|PC|ALT_INV_DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|INSTR|PC|ALT_INV_DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|INSTR|PC|ALT_INV_DOUT[6]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|INSTR|PC|ALT_INV_DOUT[4]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|INSTR|PC|ALT_INV_DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|INSTR|PC|ALT_INV_DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~32_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~16_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~33_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~17_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~34_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~18_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~31_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~15_q\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~11_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~594_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~577_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~560_combout\ : std_logic;
SIGNAL \CPU|DECODER|ALT_INV_sinais_controle~0_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~543_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~10_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~9_combout\ : std_logic;
SIGNAL \CPU|DECODER|ALT_INV_Equal10~0_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~8_combout\ : std_logic;
SIGNAL \DECODER_ADDR|ALT_INV_Equal6~0_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~7_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~6_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~5_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~4_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~3_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~2_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \HEX4_DECODER|REG_4bits|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CPU|INSTR|PC|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \CPU|REG_A|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \HEX3_DECODER|REG_4bits|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \HEX2_DECODER|REG_4bits|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \HEX1_DECODER|REG_4bits|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \HEX0_DECODER|REG_4bits|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RAM|ALT_INV_ram~655_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~651_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~647_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~643_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~639_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~635_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~631_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~627_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~623_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~619_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~615_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~611_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~607_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~603_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~599_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~595_combout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~590_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~586_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~582_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~578_combout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~573_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~569_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~565_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~561_combout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~556_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~552_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~548_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~544_combout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add1~1_sumout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~539_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~535_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~531_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~527_combout\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
ww_FPGA_RESET_N <= FPGA_RESET_N;
ww_SW <= SW;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\CPU|REG_A|ALT_INV_DOUT[1]~DUPLICATE_q\ <= NOT \CPU|REG_A|DOUT[1]~DUPLICATE_q\;
\CPU|REG_A|ALT_INV_DOUT[2]~DUPLICATE_q\ <= NOT \CPU|REG_A|DOUT[2]~DUPLICATE_q\;
\CPU|REG_A|ALT_INV_DOUT[3]~DUPLICATE_q\ <= NOT \CPU|REG_A|DOUT[3]~DUPLICATE_q\;
\CPU|INSTR|PC|ALT_INV_DOUT[3]~DUPLICATE_q\ <= NOT \CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\;
\CPU|INSTR|PC|ALT_INV_DOUT[2]~DUPLICATE_q\ <= NOT \CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\;
\CPU|INSTR|PC|ALT_INV_DOUT[6]~DUPLICATE_q\ <= NOT \CPU|INSTR|PC|DOUT[6]~DUPLICATE_q\;
\CPU|INSTR|PC|ALT_INV_DOUT[4]~DUPLICATE_q\ <= NOT \CPU|INSTR|PC|DOUT[4]~DUPLICATE_q\;
\CPU|INSTR|PC|ALT_INV_DOUT[0]~DUPLICATE_q\ <= NOT \CPU|INSTR|PC|DOUT[0]~DUPLICATE_q\;
\CPU|INSTR|PC|ALT_INV_DOUT[1]~DUPLICATE_q\ <= NOT \CPU|INSTR|PC|DOUT[1]~DUPLICATE_q\;
\RAM|ALT_INV_ram~32_q\ <= NOT \RAM|ram~32_q\;
\RAM|ALT_INV_ram~16_q\ <= NOT \RAM|ram~16_q\;
\RAM|ALT_INV_ram~33_q\ <= NOT \RAM|ram~33_q\;
\RAM|ALT_INV_ram~17_q\ <= NOT \RAM|ram~17_q\;
\RAM|ALT_INV_ram~34_q\ <= NOT \RAM|ram~34_q\;
\RAM|ALT_INV_ram~18_q\ <= NOT \RAM|ram~18_q\;
\RAM|ALT_INV_ram~31_q\ <= NOT \RAM|ram~31_q\;
\RAM|ALT_INV_ram~15_q\ <= NOT \RAM|ram~15_q\;
\ROM|ALT_INV_memROM~11_combout\ <= NOT \ROM|memROM~11_combout\;
\RAM|ALT_INV_ram~594_combout\ <= NOT \RAM|ram~594_combout\;
\RAM|ALT_INV_ram~577_combout\ <= NOT \RAM|ram~577_combout\;
\RAM|ALT_INV_ram~560_combout\ <= NOT \RAM|ram~560_combout\;
\CPU|DECODER|ALT_INV_sinais_controle~0_combout\ <= NOT \CPU|DECODER|sinais_controle~0_combout\;
\RAM|ALT_INV_ram~543_combout\ <= NOT \RAM|ram~543_combout\;
\ROM|ALT_INV_memROM~10_combout\ <= NOT \ROM|memROM~10_combout\;
\ROM|ALT_INV_memROM~9_combout\ <= NOT \ROM|memROM~9_combout\;
\CPU|DECODER|ALT_INV_Equal10~0_combout\ <= NOT \CPU|DECODER|Equal10~0_combout\;
\ROM|ALT_INV_memROM~8_combout\ <= NOT \ROM|memROM~8_combout\;
\DECODER_ADDR|ALT_INV_Equal6~0_combout\ <= NOT \DECODER_ADDR|Equal6~0_combout\;
\ROM|ALT_INV_memROM~7_combout\ <= NOT \ROM|memROM~7_combout\;
\ROM|ALT_INV_memROM~6_combout\ <= NOT \ROM|memROM~6_combout\;
\ROM|ALT_INV_memROM~5_combout\ <= NOT \ROM|memROM~5_combout\;
\ROM|ALT_INV_memROM~4_combout\ <= NOT \ROM|memROM~4_combout\;
\ROM|ALT_INV_memROM~3_combout\ <= NOT \ROM|memROM~3_combout\;
\ROM|ALT_INV_memROM~2_combout\ <= NOT \ROM|memROM~2_combout\;
\ROM|ALT_INV_memROM~1_combout\ <= NOT \ROM|memROM~1_combout\;
\ROM|ALT_INV_memROM~0_combout\ <= NOT \ROM|memROM~0_combout\;
\HEX4_DECODER|REG_4bits|ALT_INV_DOUT\(1) <= NOT \HEX4_DECODER|REG_4bits|DOUT\(1);
\HEX4_DECODER|REG_4bits|ALT_INV_DOUT\(2) <= NOT \HEX4_DECODER|REG_4bits|DOUT\(2);
\CPU|INSTR|PC|ALT_INV_DOUT\(1) <= NOT \CPU|INSTR|PC|DOUT\(1);
\CPU|REG_A|ALT_INV_DOUT\(0) <= NOT \CPU|REG_A|DOUT\(0);
\HEX4_DECODER|REG_4bits|ALT_INV_DOUT\(3) <= NOT \HEX4_DECODER|REG_4bits|DOUT\(3);
\HEX4_DECODER|REG_4bits|ALT_INV_DOUT\(0) <= NOT \HEX4_DECODER|REG_4bits|DOUT\(0);
\HEX3_DECODER|REG_4bits|ALT_INV_DOUT\(1) <= NOT \HEX3_DECODER|REG_4bits|DOUT\(1);
\HEX3_DECODER|REG_4bits|ALT_INV_DOUT\(2) <= NOT \HEX3_DECODER|REG_4bits|DOUT\(2);
\HEX3_DECODER|REG_4bits|ALT_INV_DOUT\(3) <= NOT \HEX3_DECODER|REG_4bits|DOUT\(3);
\HEX3_DECODER|REG_4bits|ALT_INV_DOUT\(0) <= NOT \HEX3_DECODER|REG_4bits|DOUT\(0);
\HEX2_DECODER|REG_4bits|ALT_INV_DOUT\(1) <= NOT \HEX2_DECODER|REG_4bits|DOUT\(1);
\HEX2_DECODER|REG_4bits|ALT_INV_DOUT\(2) <= NOT \HEX2_DECODER|REG_4bits|DOUT\(2);
\HEX2_DECODER|REG_4bits|ALT_INV_DOUT\(3) <= NOT \HEX2_DECODER|REG_4bits|DOUT\(3);
\HEX2_DECODER|REG_4bits|ALT_INV_DOUT\(0) <= NOT \HEX2_DECODER|REG_4bits|DOUT\(0);
\HEX1_DECODER|REG_4bits|ALT_INV_DOUT\(1) <= NOT \HEX1_DECODER|REG_4bits|DOUT\(1);
\HEX1_DECODER|REG_4bits|ALT_INV_DOUT\(2) <= NOT \HEX1_DECODER|REG_4bits|DOUT\(2);
\HEX1_DECODER|REG_4bits|ALT_INV_DOUT\(3) <= NOT \HEX1_DECODER|REG_4bits|DOUT\(3);
\HEX1_DECODER|REG_4bits|ALT_INV_DOUT\(0) <= NOT \HEX1_DECODER|REG_4bits|DOUT\(0);
\HEX0_DECODER|REG_4bits|ALT_INV_DOUT\(1) <= NOT \HEX0_DECODER|REG_4bits|DOUT\(1);
\HEX0_DECODER|REG_4bits|ALT_INV_DOUT\(2) <= NOT \HEX0_DECODER|REG_4bits|DOUT\(2);
\HEX0_DECODER|REG_4bits|ALT_INV_DOUT\(3) <= NOT \HEX0_DECODER|REG_4bits|DOUT\(3);
\HEX0_DECODER|REG_4bits|ALT_INV_DOUT\(0) <= NOT \HEX0_DECODER|REG_4bits|DOUT\(0);
\RAM|ALT_INV_ram~655_combout\ <= NOT \RAM|ram~655_combout\;
\RAM|ALT_INV_ram~651_combout\ <= NOT \RAM|ram~651_combout\;
\RAM|ALT_INV_ram~647_combout\ <= NOT \RAM|ram~647_combout\;
\RAM|ALT_INV_ram~643_combout\ <= NOT \RAM|ram~643_combout\;
\RAM|ALT_INV_ram~639_combout\ <= NOT \RAM|ram~639_combout\;
\RAM|ALT_INV_ram~635_combout\ <= NOT \RAM|ram~635_combout\;
\RAM|ALT_INV_ram~631_combout\ <= NOT \RAM|ram~631_combout\;
\RAM|ALT_INV_ram~627_combout\ <= NOT \RAM|ram~627_combout\;
\RAM|ALT_INV_ram~623_combout\ <= NOT \RAM|ram~623_combout\;
\RAM|ALT_INV_ram~619_combout\ <= NOT \RAM|ram~619_combout\;
\RAM|ALT_INV_ram~615_combout\ <= NOT \RAM|ram~615_combout\;
\RAM|ALT_INV_ram~611_combout\ <= NOT \RAM|ram~611_combout\;
\RAM|ALT_INV_ram~607_combout\ <= NOT \RAM|ram~607_combout\;
\RAM|ALT_INV_ram~603_combout\ <= NOT \RAM|ram~603_combout\;
\RAM|ALT_INV_ram~599_combout\ <= NOT \RAM|ram~599_combout\;
\RAM|ALT_INV_ram~595_combout\ <= NOT \RAM|ram~595_combout\;
\CPU|ULA1|ALT_INV_Add1~13_sumout\ <= NOT \CPU|ULA1|Add1~13_sumout\;
\RAM|ALT_INV_ram~590_combout\ <= NOT \RAM|ram~590_combout\;
\RAM|ALT_INV_ram~586_combout\ <= NOT \RAM|ram~586_combout\;
\RAM|ALT_INV_ram~582_combout\ <= NOT \RAM|ram~582_combout\;
\RAM|ALT_INV_ram~578_combout\ <= NOT \RAM|ram~578_combout\;
\CPU|ULA1|ALT_INV_Add1~9_sumout\ <= NOT \CPU|ULA1|Add1~9_sumout\;
\RAM|ALT_INV_ram~573_combout\ <= NOT \RAM|ram~573_combout\;
\RAM|ALT_INV_ram~569_combout\ <= NOT \RAM|ram~569_combout\;
\RAM|ALT_INV_ram~565_combout\ <= NOT \RAM|ram~565_combout\;
\RAM|ALT_INV_ram~561_combout\ <= NOT \RAM|ram~561_combout\;
\CPU|ULA1|ALT_INV_Add1~5_sumout\ <= NOT \CPU|ULA1|Add1~5_sumout\;
\RAM|ALT_INV_ram~556_combout\ <= NOT \RAM|ram~556_combout\;
\RAM|ALT_INV_ram~552_combout\ <= NOT \RAM|ram~552_combout\;
\RAM|ALT_INV_ram~548_combout\ <= NOT \RAM|ram~548_combout\;
\RAM|ALT_INV_ram~544_combout\ <= NOT \RAM|ram~544_combout\;
\CPU|ULA1|ALT_INV_Add1~1_sumout\ <= NOT \CPU|ULA1|Add1~1_sumout\;
\RAM|ALT_INV_ram~539_combout\ <= NOT \RAM|ram~539_combout\;
\RAM|ALT_INV_ram~535_combout\ <= NOT \RAM|ram~535_combout\;
\RAM|ALT_INV_ram~531_combout\ <= NOT \RAM|ram~531_combout\;
\RAM|ALT_INV_ram~527_combout\ <= NOT \RAM|ram~527_combout\;
\CPU|REG_A|ALT_INV_DOUT\(1) <= NOT \CPU|REG_A|DOUT\(1);
\CPU|REG_A|ALT_INV_DOUT\(2) <= NOT \CPU|REG_A|DOUT\(2);
\CPU|REG_A|ALT_INV_DOUT\(3) <= NOT \CPU|REG_A|DOUT\(3);
\CPU|INSTR|PC|ALT_INV_DOUT\(3) <= NOT \CPU|INSTR|PC|DOUT\(3);
\CPU|INSTR|PC|ALT_INV_DOUT\(2) <= NOT \CPU|INSTR|PC|DOUT\(2);
\CPU|INSTR|PC|ALT_INV_DOUT\(7) <= NOT \CPU|INSTR|PC|DOUT\(7);
\CPU|INSTR|PC|ALT_INV_DOUT\(6) <= NOT \CPU|INSTR|PC|DOUT\(6);
\CPU|INSTR|PC|ALT_INV_DOUT\(5) <= NOT \CPU|INSTR|PC|DOUT\(5);
\CPU|INSTR|PC|ALT_INV_DOUT\(4) <= NOT \CPU|INSTR|PC|DOUT\(4);
\CPU|INSTR|PC|ALT_INV_DOUT\(8) <= NOT \CPU|INSTR|PC|DOUT\(8);
\CPU|INSTR|PC|ALT_INV_DOUT\(0) <= NOT \CPU|INSTR|PC|DOUT\(0);

-- Location: IOOBUF_X52_Y0_N53
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

-- Location: IOOBUF_X51_Y0_N36
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

-- Location: IOOBUF_X48_Y0_N76
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

-- Location: IOOBUF_X50_Y0_N36
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

-- Location: IOOBUF_X48_Y0_N93
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

-- Location: IOOBUF_X50_Y0_N53
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

-- Location: IOOBUF_X46_Y0_N36
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

-- Location: IOOBUF_X44_Y0_N36
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

-- Location: IOOBUF_X40_Y0_N93
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

-- Location: IOOBUF_X44_Y0_N53
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

-- Location: IOOBUF_X43_Y0_N36
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

-- Location: IOOBUF_X38_Y0_N36
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

-- Location: IOOBUF_X43_Y0_N53
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

-- Location: IOOBUF_X51_Y0_N53
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

-- Location: IOOBUF_X48_Y0_N42
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

-- Location: IOOBUF_X38_Y0_N53
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

-- Location: IOOBUF_X22_Y0_N53
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

-- Location: IOOBUF_X36_Y0_N19
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

-- Location: IOOBUF_X38_Y0_N19
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

-- Location: IOOBUF_X46_Y0_N53
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

-- Location: IOOBUF_X40_Y0_N76
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

-- Location: IOOBUF_X40_Y0_N59
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

-- Location: IOOBUF_X46_Y0_N2
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

-- Location: IOOBUF_X40_Y0_N42
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

-- Location: IOOBUF_X46_Y0_N19
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

-- Location: IOOBUF_X52_Y0_N2
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

-- Location: IOOBUF_X51_Y0_N2
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

-- Location: IOOBUF_X51_Y0_N19
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

-- Location: IOOBUF_X52_Y0_N36
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

-- Location: IOOBUF_X48_Y0_N59
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

-- Location: IOOBUF_X44_Y0_N19
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

-- Location: IOOBUF_X52_Y0_N19
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

-- Location: IOOBUF_X43_Y0_N2
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

-- Location: IOOBUF_X36_Y0_N2
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

-- Location: IOOBUF_X29_Y0_N19
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

-- Location: IOOBUF_X29_Y0_N2
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
	o => ww_HEX5(0));

-- Location: IOOBUF_X22_Y0_N19
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
	o => ww_HEX5(1));

-- Location: IOOBUF_X43_Y0_N19
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
	o => ww_HEX5(2));

-- Location: IOOBUF_X50_Y0_N19
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
	o => ww_HEX5(3));

-- Location: IOOBUF_X0_Y21_N56
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
	o => ww_HEX5(4));

-- Location: IOOBUF_X0_Y21_N39
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
	o => ww_HEX5(5));

-- Location: IOOBUF_X44_Y0_N2
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
	o => ww_HEX5(6));

-- Location: IOOBUF_X0_Y18_N79
\LEDR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(0));

-- Location: IOOBUF_X0_Y18_N96
\LEDR[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(1));

-- Location: IOOBUF_X0_Y18_N62
\LEDR[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(2));

-- Location: IOOBUF_X0_Y18_N45
\LEDR[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(3));

-- Location: IOOBUF_X0_Y19_N39
\LEDR[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(4));

-- Location: IOOBUF_X0_Y19_N56
\LEDR[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(5));

-- Location: IOOBUF_X0_Y19_N5
\LEDR[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(6));

-- Location: IOOBUF_X0_Y19_N22
\LEDR[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(7));

-- Location: IOOBUF_X0_Y20_N39
\LEDR[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(8));

-- Location: IOOBUF_X0_Y20_N56
\LEDR[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(9));

-- Location: IOIBUF_X22_Y0_N1
\CLOCK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G6
\CLOCK_50~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~input_o\,
	outclk => \CLOCK_50~inputCLKENA0_outclk\);

-- Location: MLABCELL_X34_Y1_N30
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

-- Location: MLABCELL_X37_Y1_N24
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

-- Location: FF_X34_Y1_N31
\CPU|INSTR|PC|DOUT[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|INSTR|SOMA_CONST|Add0~5_sumout\,
	asdata => \ROM|memROM~1_combout\,
	sload => \CPU|DECODER|Equal10~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|INSTR|PC|DOUT[0]~DUPLICATE_q\);

-- Location: LABCELL_X35_Y1_N36
\ROM|memROM~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~9_combout\ = ( \ROM|memROM~0_combout\ & ( (!\CPU|INSTR|PC|DOUT[0]~DUPLICATE_q\ & (!\CPU|INSTR|PC|DOUT\(1) & (\CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\ & \CPU|INSTR|PC|DOUT\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000010000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datab => \CPU|INSTR|PC|ALT_INV_DOUT\(1),
	datac => \CPU|INSTR|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datad => \CPU|INSTR|PC|ALT_INV_DOUT\(2),
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \ROM|memROM~9_combout\);

-- Location: FF_X34_Y1_N40
\CPU|INSTR|PC|DOUT[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|INSTR|SOMA_CONST|Add0~33_sumout\,
	asdata => \ROM|memROM~9_combout\,
	sload => \CPU|DECODER|Equal10~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\);

-- Location: LABCELL_X35_Y2_N21
\ROM|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~5_combout\ = ( !\CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\ & ( \CPU|INSTR|PC|DOUT[0]~DUPLICATE_q\ & ( (!\CPU|INSTR|PC|DOUT[1]~DUPLICATE_q\ & !\CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\) ) ) ) # ( \CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\ & ( 
-- !\CPU|INSTR|PC|DOUT[0]~DUPLICATE_q\ & ( !\CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\ ) ) ) # ( !\CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\ & ( !\CPU|INSTR|PC|DOUT[0]~DUPLICATE_q\ & ( (\CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\) # (\CPU|INSTR|PC|DOUT[1]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111111111110000000011110000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|INSTR|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datad => \CPU|INSTR|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datae => \CPU|INSTR|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	dataf => \CPU|INSTR|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	combout => \ROM|memROM~5_combout\);

-- Location: LABCELL_X35_Y2_N6
\ROM|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~6_combout\ = ( \CPU|INSTR|PC|DOUT[1]~DUPLICATE_q\ & ( (\CPU|INSTR|PC|DOUT[0]~DUPLICATE_q\ & ((!\CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\) # (!\CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\))) ) ) # ( !\CPU|INSTR|PC|DOUT[1]~DUPLICATE_q\ & ( 
-- (!\CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\ & (\CPU|INSTR|PC|DOUT[0]~DUPLICATE_q\ & \CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\)) # (\CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\ & (!\CPU|INSTR|PC|DOUT[0]~DUPLICATE_q\ $ (!\CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100111100000000110011110000001111000011000000111100001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|INSTR|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datac => \CPU|INSTR|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datad => \CPU|INSTR|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	dataf => \CPU|INSTR|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	combout => \ROM|memROM~6_combout\);

-- Location: LABCELL_X35_Y2_N39
\CPU|DECODER|Equal10~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER|Equal10~2_combout\ = ( \ROM|memROM~6_combout\ & ( (!\ROM|memROM~5_combout\ & (\ROM|memROM~0_combout\ & !\ROM|memROM~7_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001010000000000000101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~5_combout\,
	datac => \ROM|ALT_INV_memROM~0_combout\,
	datad => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \ROM|ALT_INV_memROM~6_combout\,
	combout => \CPU|DECODER|Equal10~2_combout\);

-- Location: FF_X34_Y1_N44
\CPU|INSTR|PC|DOUT[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|INSTR|SOMA_CONST|Add0~13_sumout\,
	asdata => \~GND~combout\,
	sload => \CPU|DECODER|Equal10~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|INSTR|PC|DOUT[4]~DUPLICATE_q\);

-- Location: MLABCELL_X34_Y1_N51
\CPU|INSTR|SOMA_CONST|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|INSTR|SOMA_CONST|Add0~25_sumout\ = SUM(( \CPU|INSTR|PC|DOUT\(7) ) + ( GND ) + ( \CPU|INSTR|SOMA_CONST|Add0~22\ ))
-- \CPU|INSTR|SOMA_CONST|Add0~26\ = CARRY(( \CPU|INSTR|PC|DOUT\(7) ) + ( GND ) + ( \CPU|INSTR|SOMA_CONST|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|INSTR|PC|ALT_INV_DOUT\(7),
	cin => \CPU|INSTR|SOMA_CONST|Add0~22\,
	sumout => \CPU|INSTR|SOMA_CONST|Add0~25_sumout\,
	cout => \CPU|INSTR|SOMA_CONST|Add0~26\);

-- Location: MLABCELL_X34_Y1_N54
\CPU|INSTR|SOMA_CONST|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|INSTR|SOMA_CONST|Add0~9_sumout\ = SUM(( \CPU|INSTR|PC|DOUT\(8) ) + ( GND ) + ( \CPU|INSTR|SOMA_CONST|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|INSTR|PC|ALT_INV_DOUT\(8),
	cin => \CPU|INSTR|SOMA_CONST|Add0~26\,
	sumout => \CPU|INSTR|SOMA_CONST|Add0~9_sumout\);

-- Location: LABCELL_X35_Y2_N54
\ROM|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~4_combout\ = ( \CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\ & ( (!\CPU|INSTR|PC|DOUT[0]~DUPLICATE_q\ & !\CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\) ) ) # ( !\CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\ & ( (!\CPU|INSTR|PC|DOUT[0]~DUPLICATE_q\ & 
-- ((\CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\) # (\CPU|INSTR|PC|DOUT\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000011110000001100001111000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|INSTR|PC|ALT_INV_DOUT\(1),
	datac => \CPU|INSTR|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datad => \CPU|INSTR|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \CPU|INSTR|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	combout => \ROM|memROM~4_combout\);

-- Location: LABCELL_X35_Y1_N54
\ROM|memROM~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~10_combout\ = ( \ROM|memROM~4_combout\ & ( \ROM|memROM~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM|ALT_INV_memROM~0_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	combout => \ROM|memROM~10_combout\);

-- Location: FF_X34_Y1_N56
\CPU|INSTR|PC|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|INSTR|SOMA_CONST|Add0~9_sumout\,
	asdata => \ROM|memROM~10_combout\,
	sload => \CPU|DECODER|Equal10~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|INSTR|PC|DOUT\(8));

-- Location: MLABCELL_X34_Y1_N12
\ROM|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~0_combout\ = ( !\CPU|INSTR|PC|DOUT\(6) & ( (!\CPU|INSTR|PC|DOUT\(7) & (!\CPU|INSTR|PC|DOUT[4]~DUPLICATE_q\ & (!\CPU|INSTR|PC|DOUT\(8) & !\CPU|INSTR|PC|DOUT\(5)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|PC|ALT_INV_DOUT\(7),
	datab => \CPU|INSTR|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datac => \CPU|INSTR|PC|ALT_INV_DOUT\(8),
	datad => \CPU|INSTR|PC|ALT_INV_DOUT\(5),
	dataf => \CPU|INSTR|PC|ALT_INV_DOUT\(6),
	combout => \ROM|memROM~0_combout\);

-- Location: MLABCELL_X34_Y1_N9
\ROM|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~1_combout\ = ( \ROM|memROM~0_combout\ & ( (!\CPU|INSTR|PC|DOUT\(0) & !\CPU|INSTR|PC|DOUT\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|INSTR|PC|ALT_INV_DOUT\(0),
	datad => \CPU|INSTR|PC|ALT_INV_DOUT\(1),
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \ROM|memROM~1_combout\);

-- Location: FF_X34_Y1_N32
\CPU|INSTR|PC|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|INSTR|SOMA_CONST|Add0~5_sumout\,
	asdata => \ROM|memROM~1_combout\,
	sload => \CPU|DECODER|Equal10~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|INSTR|PC|DOUT\(0));

-- Location: MLABCELL_X34_Y1_N33
\CPU|INSTR|SOMA_CONST|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|INSTR|SOMA_CONST|Add0~1_sumout\ = SUM(( \CPU|INSTR|PC|DOUT\(1) ) + ( GND ) + ( \CPU|INSTR|SOMA_CONST|Add0~6\ ))
-- \CPU|INSTR|SOMA_CONST|Add0~2\ = CARRY(( \CPU|INSTR|PC|DOUT\(1) ) + ( GND ) + ( \CPU|INSTR|SOMA_CONST|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|INSTR|PC|ALT_INV_DOUT\(1),
	cin => \CPU|INSTR|SOMA_CONST|Add0~6\,
	sumout => \CPU|INSTR|SOMA_CONST|Add0~1_sumout\,
	cout => \CPU|INSTR|SOMA_CONST|Add0~2\);

-- Location: MLABCELL_X34_Y1_N36
\CPU|INSTR|SOMA_CONST|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|INSTR|SOMA_CONST|Add0~29_sumout\ = SUM(( \CPU|INSTR|PC|DOUT\(2) ) + ( GND ) + ( \CPU|INSTR|SOMA_CONST|Add0~2\ ))
-- \CPU|INSTR|SOMA_CONST|Add0~30\ = CARRY(( \CPU|INSTR|PC|DOUT\(2) ) + ( GND ) + ( \CPU|INSTR|SOMA_CONST|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|INSTR|PC|ALT_INV_DOUT\(2),
	cin => \CPU|INSTR|SOMA_CONST|Add0~2\,
	sumout => \CPU|INSTR|SOMA_CONST|Add0~29_sumout\,
	cout => \CPU|INSTR|SOMA_CONST|Add0~30\);

-- Location: MLABCELL_X34_Y1_N39
\CPU|INSTR|SOMA_CONST|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|INSTR|SOMA_CONST|Add0~33_sumout\ = SUM(( \CPU|INSTR|PC|DOUT\(3) ) + ( GND ) + ( \CPU|INSTR|SOMA_CONST|Add0~30\ ))
-- \CPU|INSTR|SOMA_CONST|Add0~34\ = CARRY(( \CPU|INSTR|PC|DOUT\(3) ) + ( GND ) + ( \CPU|INSTR|SOMA_CONST|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|INSTR|PC|ALT_INV_DOUT\(3),
	cin => \CPU|INSTR|SOMA_CONST|Add0~30\,
	sumout => \CPU|INSTR|SOMA_CONST|Add0~33_sumout\,
	cout => \CPU|INSTR|SOMA_CONST|Add0~34\);

-- Location: FF_X34_Y1_N41
\CPU|INSTR|PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|INSTR|SOMA_CONST|Add0~33_sumout\,
	asdata => \ROM|memROM~9_combout\,
	sload => \CPU|DECODER|Equal10~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|INSTR|PC|DOUT\(3));

-- Location: MLABCELL_X34_Y1_N42
\CPU|INSTR|SOMA_CONST|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|INSTR|SOMA_CONST|Add0~13_sumout\ = SUM(( \CPU|INSTR|PC|DOUT\(4) ) + ( GND ) + ( \CPU|INSTR|SOMA_CONST|Add0~34\ ))
-- \CPU|INSTR|SOMA_CONST|Add0~14\ = CARRY(( \CPU|INSTR|PC|DOUT\(4) ) + ( GND ) + ( \CPU|INSTR|SOMA_CONST|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|INSTR|PC|ALT_INV_DOUT\(4),
	cin => \CPU|INSTR|SOMA_CONST|Add0~34\,
	sumout => \CPU|INSTR|SOMA_CONST|Add0~13_sumout\,
	cout => \CPU|INSTR|SOMA_CONST|Add0~14\);

-- Location: FF_X34_Y1_N43
\CPU|INSTR|PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|INSTR|SOMA_CONST|Add0~13_sumout\,
	asdata => \~GND~combout\,
	sload => \CPU|DECODER|Equal10~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|INSTR|PC|DOUT\(4));

-- Location: MLABCELL_X34_Y1_N45
\CPU|INSTR|SOMA_CONST|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|INSTR|SOMA_CONST|Add0~17_sumout\ = SUM(( \CPU|INSTR|PC|DOUT\(5) ) + ( GND ) + ( \CPU|INSTR|SOMA_CONST|Add0~14\ ))
-- \CPU|INSTR|SOMA_CONST|Add0~18\ = CARRY(( \CPU|INSTR|PC|DOUT\(5) ) + ( GND ) + ( \CPU|INSTR|SOMA_CONST|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|INSTR|PC|ALT_INV_DOUT\(5),
	cin => \CPU|INSTR|SOMA_CONST|Add0~14\,
	sumout => \CPU|INSTR|SOMA_CONST|Add0~17_sumout\,
	cout => \CPU|INSTR|SOMA_CONST|Add0~18\);

-- Location: FF_X34_Y1_N47
\CPU|INSTR|PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|INSTR|SOMA_CONST|Add0~17_sumout\,
	asdata => \ROM|memROM~10_combout\,
	sload => \CPU|DECODER|Equal10~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|INSTR|PC|DOUT\(5));

-- Location: MLABCELL_X34_Y1_N48
\CPU|INSTR|SOMA_CONST|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|INSTR|SOMA_CONST|Add0~21_sumout\ = SUM(( \CPU|INSTR|PC|DOUT\(6) ) + ( GND ) + ( \CPU|INSTR|SOMA_CONST|Add0~18\ ))
-- \CPU|INSTR|SOMA_CONST|Add0~22\ = CARRY(( \CPU|INSTR|PC|DOUT\(6) ) + ( GND ) + ( \CPU|INSTR|SOMA_CONST|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|INSTR|PC|ALT_INV_DOUT\(6),
	cin => \CPU|INSTR|SOMA_CONST|Add0~18\,
	sumout => \CPU|INSTR|SOMA_CONST|Add0~21_sumout\,
	cout => \CPU|INSTR|SOMA_CONST|Add0~22\);

-- Location: FF_X34_Y1_N50
\CPU|INSTR|PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|INSTR|SOMA_CONST|Add0~21_sumout\,
	asdata => \~GND~combout\,
	sload => \CPU|DECODER|Equal10~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|INSTR|PC|DOUT\(6));

-- Location: FF_X34_Y1_N53
\CPU|INSTR|PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|INSTR|SOMA_CONST|Add0~25_sumout\,
	asdata => \~GND~combout\,
	sload => \CPU|DECODER|Equal10~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|INSTR|PC|DOUT\(7));

-- Location: MLABCELL_X34_Y1_N18
\ROM|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~2_combout\ = ( !\CPU|INSTR|PC|DOUT[0]~DUPLICATE_q\ & ( (!\CPU|INSTR|PC|DOUT\(3) & (\CPU|INSTR|PC|DOUT[1]~DUPLICATE_q\ & \CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\)) # (\CPU|INSTR|PC|DOUT\(3) & (!\CPU|INSTR|PC|DOUT[1]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111100001100000011110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|INSTR|PC|ALT_INV_DOUT\(3),
	datac => \CPU|INSTR|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datad => \CPU|INSTR|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \CPU|INSTR|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	combout => \ROM|memROM~2_combout\);

-- Location: MLABCELL_X34_Y1_N0
\ROM|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~3_combout\ = ( !\CPU|INSTR|PC|DOUT\(8) & ( \ROM|memROM~2_combout\ & ( (!\CPU|INSTR|PC|DOUT\(7) & (!\CPU|INSTR|PC|DOUT\(5) & (!\CPU|INSTR|PC|DOUT\(6) & !\CPU|INSTR|PC|DOUT[4]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|PC|ALT_INV_DOUT\(7),
	datab => \CPU|INSTR|PC|ALT_INV_DOUT\(5),
	datac => \CPU|INSTR|PC|ALT_INV_DOUT\(6),
	datad => \CPU|INSTR|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datae => \CPU|INSTR|PC|ALT_INV_DOUT\(8),
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \ROM|memROM~3_combout\);

-- Location: FF_X34_Y1_N34
\CPU|INSTR|PC|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|INSTR|SOMA_CONST|Add0~1_sumout\,
	asdata => \ROM|memROM~3_combout\,
	sload => \CPU|DECODER|Equal10~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|INSTR|PC|DOUT\(1));

-- Location: FF_X34_Y1_N35
\CPU|INSTR|PC|DOUT[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|INSTR|SOMA_CONST|Add0~1_sumout\,
	asdata => \ROM|memROM~3_combout\,
	sload => \CPU|DECODER|Equal10~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|INSTR|PC|DOUT[1]~DUPLICATE_q\);

-- Location: MLABCELL_X34_Y1_N24
\ROM|memROM~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~8_combout\ = ( \ROM|memROM~0_combout\ & ( (\CPU|INSTR|PC|DOUT[1]~DUPLICATE_q\ & (\CPU|INSTR|PC|DOUT\(3) & (!\CPU|INSTR|PC|DOUT[0]~DUPLICATE_q\ & !\CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datab => \CPU|INSTR|PC|ALT_INV_DOUT\(3),
	datac => \CPU|INSTR|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datad => \CPU|INSTR|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \ROM|memROM~8_combout\);

-- Location: FF_X34_Y1_N37
\CPU|INSTR|PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|INSTR|SOMA_CONST|Add0~29_sumout\,
	asdata => \ROM|memROM~8_combout\,
	sload => \CPU|DECODER|Equal10~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|INSTR|PC|DOUT\(2));

-- Location: FF_X34_Y1_N38
\CPU|INSTR|PC|DOUT[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|INSTR|SOMA_CONST|Add0~29_sumout\,
	asdata => \ROM|memROM~8_combout\,
	sload => \CPU|DECODER|Equal10~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\);

-- Location: LABCELL_X35_Y2_N36
\ROM|memROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~7_combout\ = ( \CPU|INSTR|PC|DOUT[1]~DUPLICATE_q\ & ( ((\CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\ & \CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\)) # (\CPU|INSTR|PC|DOUT[0]~DUPLICATE_q\) ) ) # ( !\CPU|INSTR|PC|DOUT[1]~DUPLICATE_q\ & ( 
-- (\CPU|INSTR|PC|DOUT[0]~DUPLICATE_q\ & ((\CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\) # (\CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100001111000000110000111100001111001111110000111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|INSTR|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datac => \CPU|INSTR|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datad => \CPU|INSTR|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	dataf => \CPU|INSTR|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	combout => \ROM|memROM~7_combout\);

-- Location: LABCELL_X35_Y2_N42
\CPU|DECODER|Equal10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER|Equal10~0_combout\ = ( !\ROM|memROM~5_combout\ & ( \ROM|memROM~0_combout\ & ( (!\ROM|memROM~7_combout\ & !\ROM|memROM~6_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~7_combout\,
	datad => \ROM|ALT_INV_memROM~6_combout\,
	datae => \ROM|ALT_INV_memROM~5_combout\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \CPU|DECODER|Equal10~0_combout\);

-- Location: FF_X34_Y1_N49
\CPU|INSTR|PC|DOUT[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|INSTR|SOMA_CONST|Add0~21_sumout\,
	asdata => \~GND~combout\,
	sload => \CPU|DECODER|Equal10~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|INSTR|PC|DOUT[6]~DUPLICATE_q\);

-- Location: MLABCELL_X37_Y1_N45
\ROM|memROM~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~11_combout\ = ( \ROM|memROM~2_combout\ & ( (!\CPU|INSTR|PC|DOUT\(4) & (!\CPU|INSTR|PC|DOUT[6]~DUPLICATE_q\ & (!\CPU|INSTR|PC|DOUT\(7) & !\CPU|INSTR|PC|DOUT\(5)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|PC|ALT_INV_DOUT\(4),
	datab => \CPU|INSTR|PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	datac => \CPU|INSTR|PC|ALT_INV_DOUT\(7),
	datad => \CPU|INSTR|PC|ALT_INV_DOUT\(5),
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \ROM|memROM~11_combout\);

-- Location: LABCELL_X35_Y1_N12
\RAM|ram~651\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~651_combout\ = ( \ROM|memROM~1_combout\ & ( \ROM|memROM~8_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~8_combout\,
	dataf => \ROM|ALT_INV_memROM~1_combout\,
	combout => \RAM|ram~651_combout\);

-- Location: LABCELL_X35_Y1_N27
\RAM|ram~586\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~586_combout\ = ( \RAM|ram~651_combout\ & ( !\ROM|memROM~8_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~8_combout\,
	dataf => \RAM|ALT_INV_ram~651_combout\,
	combout => \RAM|ram~586_combout\);

-- Location: LABCELL_X35_Y1_N30
\RAM|ram~655\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~655_combout\ = ( \ROM|memROM~8_combout\ & ( \ROM|memROM~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ROM|ALT_INV_memROM~8_combout\,
	combout => \RAM|ram~655_combout\);

-- Location: LABCELL_X35_Y1_N9
\RAM|ram~590\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~590_combout\ = ( \RAM|ram~655_combout\ & ( !\ROM|memROM~8_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~8_combout\,
	dataf => \RAM|ALT_INV_ram~655_combout\,
	combout => \RAM|ram~590_combout\);

-- Location: LABCELL_X35_Y1_N24
\RAM|ram~647\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~647_combout\ = ( \ROM|memROM~8_combout\ & ( \ROM|memROM~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ROM|ALT_INV_memROM~8_combout\,
	combout => \RAM|ram~647_combout\);

-- Location: LABCELL_X35_Y1_N57
\RAM|ram~582\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~582_combout\ = ( \RAM|ram~647_combout\ & ( !\ROM|memROM~8_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~8_combout\,
	dataf => \RAM|ALT_INV_ram~647_combout\,
	combout => \RAM|ram~582_combout\);

-- Location: MLABCELL_X37_Y1_N0
\RAM|ram~660\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~660_combout\ = ( !\CPU|INSTR|PC|DOUT\(3) & ( !\ROM|memROM~3_combout\ & ( (\CPU|INSTR|PC|DOUT[0]~DUPLICATE_q\ & (\ROM|memROM~0_combout\ & (!\CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\ & !\CPU|INSTR|PC|DOUT[1]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \CPU|INSTR|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datad => \CPU|INSTR|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datae => \CPU|INSTR|PC|ALT_INV_DOUT\(3),
	dataf => \ROM|ALT_INV_memROM~3_combout\,
	combout => \RAM|ram~660_combout\);

-- Location: FF_X35_Y1_N25
\RAM|ram~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(1),
	sload => VCC,
	ena => \RAM|ram~660_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~16_q\);

-- Location: MLABCELL_X34_Y2_N0
\RAM|ram~659\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~659_combout\ = ( !\CPU|INSTR|PC|DOUT[1]~DUPLICATE_q\ & ( \ROM|memROM~3_combout\ & ( (!\CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\ & (\ROM|memROM~0_combout\ & (!\CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\ & \CPU|INSTR|PC|DOUT[0]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \CPU|INSTR|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datad => \CPU|INSTR|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datae => \CPU|INSTR|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	dataf => \ROM|ALT_INV_memROM~3_combout\,
	combout => \RAM|ram~659_combout\);

-- Location: FF_X35_Y1_N35
\RAM|ram~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(1),
	sload => VCC,
	ena => \RAM|ram~659_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~32_q\);

-- Location: LABCELL_X35_Y1_N33
\RAM|ram~643\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~643_combout\ = ( \ROM|memROM~3_combout\ & ( (!\ROM|memROM~1_combout\ & (!\ROM|memROM~8_combout\ & \RAM|ram~32_q\)) # (\ROM|memROM~1_combout\ & (\ROM|memROM~8_combout\)) ) ) # ( !\ROM|memROM~3_combout\ & ( (!\ROM|memROM~1_combout\ & 
-- (\RAM|ram~16_q\ & !\ROM|memROM~8_combout\)) # (\ROM|memROM~1_combout\ & ((\ROM|memROM~8_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100001101000011010000110100001100000011110000110000001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~16_q\,
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \ROM|ALT_INV_memROM~8_combout\,
	datad => \RAM|ALT_INV_ram~32_q\,
	dataf => \ROM|ALT_INV_memROM~3_combout\,
	combout => \RAM|ram~643_combout\);

-- Location: LABCELL_X35_Y1_N6
\RAM|ram~578\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~578_combout\ = ( \RAM|ram~643_combout\ & ( !\ROM|memROM~8_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~8_combout\,
	dataf => \RAM|ALT_INV_ram~643_combout\,
	combout => \RAM|ram~578_combout\);

-- Location: LABCELL_X35_Y1_N48
\RAM|ram~594\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~594_combout\ = ( \RAM|ram~582_combout\ & ( \RAM|ram~578_combout\ & ( (!\ROM|memROM~10_combout\) # ((!\ROM|memROM~9_combout\ & (\RAM|ram~586_combout\)) # (\ROM|memROM~9_combout\ & ((\RAM|ram~590_combout\)))) ) ) ) # ( !\RAM|ram~582_combout\ & ( 
-- \RAM|ram~578_combout\ & ( (!\ROM|memROM~10_combout\ & (!\ROM|memROM~9_combout\)) # (\ROM|memROM~10_combout\ & ((!\ROM|memROM~9_combout\ & (\RAM|ram~586_combout\)) # (\ROM|memROM~9_combout\ & ((\RAM|ram~590_combout\))))) ) ) ) # ( \RAM|ram~582_combout\ & ( 
-- !\RAM|ram~578_combout\ & ( (!\ROM|memROM~10_combout\ & (\ROM|memROM~9_combout\)) # (\ROM|memROM~10_combout\ & ((!\ROM|memROM~9_combout\ & (\RAM|ram~586_combout\)) # (\ROM|memROM~9_combout\ & ((\RAM|ram~590_combout\))))) ) ) ) # ( !\RAM|ram~582_combout\ & 
-- ( !\RAM|ram~578_combout\ & ( (\ROM|memROM~10_combout\ & ((!\ROM|memROM~9_combout\ & (\RAM|ram~586_combout\)) # (\ROM|memROM~9_combout\ & ((\RAM|ram~590_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000010101001001100011011110001100100111011010111010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~10_combout\,
	datab => \ROM|ALT_INV_memROM~9_combout\,
	datac => \RAM|ALT_INV_ram~586_combout\,
	datad => \RAM|ALT_INV_ram~590_combout\,
	datae => \RAM|ALT_INV_ram~582_combout\,
	dataf => \RAM|ALT_INV_ram~578_combout\,
	combout => \RAM|ram~594_combout\);

-- Location: LABCELL_X35_Y1_N39
\RAM|ram~607\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~607_combout\ = ( \ROM|memROM~8_combout\ & ( \ROM|memROM~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ROM|ALT_INV_memROM~8_combout\,
	combout => \RAM|ram~607_combout\);

-- Location: LABCELL_X35_Y1_N45
\RAM|ram~539\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~539_combout\ = ( \RAM|ram~607_combout\ & ( !\ROM|memROM~8_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~8_combout\,
	dataf => \RAM|ALT_INV_ram~607_combout\,
	combout => \RAM|ram~539_combout\);

-- Location: LABCELL_X35_Y1_N18
\RAM|ram~599\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~599_combout\ = ( \ROM|memROM~8_combout\ & ( \ROM|memROM~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ROM|ALT_INV_memROM~8_combout\,
	combout => \RAM|ram~599_combout\);

-- Location: LABCELL_X35_Y1_N15
\RAM|ram~531\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~531_combout\ = ( \RAM|ram~599_combout\ & ( !\ROM|memROM~8_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~8_combout\,
	dataf => \RAM|ALT_INV_ram~599_combout\,
	combout => \RAM|ram~531_combout\);

-- Location: MLABCELL_X34_Y1_N27
\RAM|ram~603\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~603_combout\ = ( \ROM|memROM~8_combout\ & ( \ROM|memROM~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ROM|ALT_INV_memROM~8_combout\,
	combout => \RAM|ram~603_combout\);

-- Location: MLABCELL_X34_Y1_N21
\RAM|ram~535\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~535_combout\ = ( \RAM|ram~603_combout\ & ( !\ROM|memROM~8_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~8_combout\,
	dataf => \RAM|ALT_INV_ram~603_combout\,
	combout => \RAM|ram~535_combout\);

-- Location: FF_X35_Y1_N5
\RAM|ram~15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(0),
	sload => VCC,
	ena => \RAM|ram~660_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~15_q\);

-- Location: FF_X34_Y1_N8
\RAM|ram~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(0),
	sload => VCC,
	ena => \RAM|ram~659_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~31_q\);

-- Location: MLABCELL_X34_Y1_N6
\RAM|ram~595\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~595_combout\ = ( \ROM|memROM~1_combout\ & ( \ROM|memROM~8_combout\ ) ) # ( !\ROM|memROM~1_combout\ & ( (!\ROM|memROM~8_combout\ & ((!\ROM|memROM~3_combout\ & (\RAM|ram~15_q\)) # (\ROM|memROM~3_combout\ & ((\RAM|ram~31_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000001110000001000000111000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~3_combout\,
	datab => \RAM|ALT_INV_ram~15_q\,
	datac => \ROM|ALT_INV_memROM~8_combout\,
	datad => \RAM|ALT_INV_ram~31_q\,
	dataf => \ROM|ALT_INV_memROM~1_combout\,
	combout => \RAM|ram~595_combout\);

-- Location: MLABCELL_X34_Y1_N15
\RAM|ram~527\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~527_combout\ = ( \RAM|ram~595_combout\ & ( !\ROM|memROM~8_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~8_combout\,
	dataf => \RAM|ALT_INV_ram~595_combout\,
	combout => \RAM|ram~527_combout\);

-- Location: LABCELL_X35_Y1_N0
\RAM|ram~543\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~543_combout\ = ( \RAM|ram~535_combout\ & ( \RAM|ram~527_combout\ & ( (!\ROM|memROM~9_combout\) # ((!\ROM|memROM~10_combout\ & ((\RAM|ram~531_combout\))) # (\ROM|memROM~10_combout\ & (\RAM|ram~539_combout\))) ) ) ) # ( !\RAM|ram~535_combout\ & ( 
-- \RAM|ram~527_combout\ & ( (!\ROM|memROM~9_combout\ & (((!\ROM|memROM~10_combout\)))) # (\ROM|memROM~9_combout\ & ((!\ROM|memROM~10_combout\ & ((\RAM|ram~531_combout\))) # (\ROM|memROM~10_combout\ & (\RAM|ram~539_combout\)))) ) ) ) # ( 
-- \RAM|ram~535_combout\ & ( !\RAM|ram~527_combout\ & ( (!\ROM|memROM~9_combout\ & (((\ROM|memROM~10_combout\)))) # (\ROM|memROM~9_combout\ & ((!\ROM|memROM~10_combout\ & ((\RAM|ram~531_combout\))) # (\ROM|memROM~10_combout\ & (\RAM|ram~539_combout\)))) ) ) 
-- ) # ( !\RAM|ram~535_combout\ & ( !\RAM|ram~527_combout\ & ( (\ROM|memROM~9_combout\ & ((!\ROM|memROM~10_combout\ & ((\RAM|ram~531_combout\))) # (\ROM|memROM~10_combout\ & (\RAM|ram~539_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101010001000010110101101110100001111100011010101111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~9_combout\,
	datab => \RAM|ALT_INV_ram~539_combout\,
	datac => \ROM|ALT_INV_memROM~10_combout\,
	datad => \RAM|ALT_INV_ram~531_combout\,
	datae => \RAM|ALT_INV_ram~535_combout\,
	dataf => \RAM|ALT_INV_ram~527_combout\,
	combout => \RAM|ram~543_combout\);

-- Location: LABCELL_X36_Y1_N30
\CPU|ULA1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~1_sumout\ = SUM(( \CPU|REG_A|DOUT\(0) ) + ( (!\CPU|DECODER|Equal10~0_combout\ & ((\RAM|ram~543_combout\))) # (\CPU|DECODER|Equal10~0_combout\ & (\ROM|memROM~1_combout\)) ) + ( !VCC ))
-- \CPU|ULA1|Add0~2\ = CARRY(( \CPU|REG_A|DOUT\(0) ) + ( (!\CPU|DECODER|Equal10~0_combout\ & ((\RAM|ram~543_combout\))) # (\CPU|DECODER|Equal10~0_combout\ & (\ROM|memROM~1_combout\)) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100101000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal10~0_combout\,
	datac => \ROM|ALT_INV_memROM~1_combout\,
	datad => \CPU|REG_A|ALT_INV_DOUT\(0),
	dataf => \RAM|ALT_INV_ram~543_combout\,
	cin => GND,
	sumout => \CPU|ULA1|Add0~1_sumout\,
	cout => \CPU|ULA1|Add0~2\);

-- Location: LABCELL_X35_Y2_N24
\CPU|DECODER|sinais_controle~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER|sinais_controle~0_combout\ = ( \ROM|memROM~0_combout\ & ( (!\ROM|memROM~6_combout\ & (!\ROM|memROM~7_combout\ $ (\ROM|memROM~5_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011000000000011001100000000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~6_combout\,
	datac => \ROM|ALT_INV_memROM~7_combout\,
	datad => \ROM|ALT_INV_memROM~5_combout\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \CPU|DECODER|sinais_controle~0_combout\);

-- Location: LABCELL_X36_Y1_N42
\CPU|ULA1|Add1~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~18_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \CPU|ULA1|Add1~18_cout\);

-- Location: LABCELL_X36_Y1_N45
\CPU|ULA1|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~1_sumout\ = SUM(( \CPU|REG_A|DOUT\(0) ) + ( (!\CPU|DECODER|Equal10~0_combout\ & ((!\RAM|ram~543_combout\))) # (\CPU|DECODER|Equal10~0_combout\ & (!\ROM|memROM~1_combout\)) ) + ( \CPU|ULA1|Add1~18_cout\ ))
-- \CPU|ULA1|Add1~2\ = CARRY(( \CPU|REG_A|DOUT\(0) ) + ( (!\CPU|DECODER|Equal10~0_combout\ & ((!\RAM|ram~543_combout\))) # (\CPU|DECODER|Equal10~0_combout\ & (!\ROM|memROM~1_combout\)) ) + ( \CPU|ULA1|Add1~18_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000110110001101100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal10~0_combout\,
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \RAM|ALT_INV_ram~543_combout\,
	datad => \CPU|REG_A|ALT_INV_DOUT\(0),
	cin => \CPU|ULA1|Add1~18_cout\,
	sumout => \CPU|ULA1|Add1~1_sumout\,
	cout => \CPU|ULA1|Add1~2\);

-- Location: LABCELL_X36_Y1_N27
\CPU|ULA1|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[0]~0_combout\ = ( \RAM|ram~543_combout\ & ( (!\CPU|DECODER|sinais_controle~0_combout\ & (((\CPU|ULA1|Add1~1_sumout\)))) # (\CPU|DECODER|sinais_controle~0_combout\ & ((!\CPU|DECODER|Equal10~0_combout\) # ((\ROM|memROM~1_combout\)))) ) ) # ( 
-- !\RAM|ram~543_combout\ & ( (!\CPU|DECODER|sinais_controle~0_combout\ & (((\CPU|ULA1|Add1~1_sumout\)))) # (\CPU|DECODER|sinais_controle~0_combout\ & (\CPU|DECODER|Equal10~0_combout\ & (\ROM|memROM~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111001101000000011100110100100011111011110010001111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal10~0_combout\,
	datab => \CPU|DECODER|ALT_INV_sinais_controle~0_combout\,
	datac => \ROM|ALT_INV_memROM~1_combout\,
	datad => \CPU|ULA1|ALT_INV_Add1~1_sumout\,
	dataf => \RAM|ALT_INV_ram~543_combout\,
	combout => \CPU|ULA1|saida[0]~0_combout\);

-- Location: LABCELL_X35_Y2_N9
\CPU|DECODER|Equal10~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER|Equal10~1_combout\ = ( \ROM|memROM~6_combout\ & ( ((!\ROM|memROM~0_combout\) # (!\ROM|memROM~7_combout\)) # (\ROM|memROM~5_combout\) ) ) # ( !\ROM|memROM~6_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111101011111111111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~5_combout\,
	datac => \ROM|ALT_INV_memROM~0_combout\,
	datad => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \ROM|ALT_INV_memROM~6_combout\,
	combout => \CPU|DECODER|Equal10~1_combout\);

-- Location: LABCELL_X35_Y2_N57
\CPU|DECODER|sinais_controle~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER|sinais_controle~1_combout\ = ( \ROM|memROM~6_combout\ & ( (\ROM|memROM~0_combout\ & \ROM|memROM~7_combout\) ) ) # ( !\ROM|memROM~6_combout\ & ( (\ROM|memROM~0_combout\ & (!\ROM|memROM~5_combout\ $ (\ROM|memROM~7_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000101000010100000010100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~5_combout\,
	datac => \ROM|ALT_INV_memROM~0_combout\,
	datad => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \ROM|ALT_INV_memROM~6_combout\,
	combout => \CPU|DECODER|sinais_controle~1_combout\);

-- Location: FF_X36_Y1_N31
\CPU|REG_A|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|ULA1|Add0~1_sumout\,
	asdata => \CPU|ULA1|saida[0]~0_combout\,
	sload => \CPU|DECODER|Equal10~1_combout\,
	ena => \CPU|DECODER|sinais_controle~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_A|DOUT\(0));

-- Location: LABCELL_X36_Y1_N33
\CPU|ULA1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~13_sumout\ = SUM(( \CPU|REG_A|DOUT\(1) ) + ( (!\CPU|DECODER|Equal10~0_combout\ & (((\RAM|ram~594_combout\)))) # (\CPU|DECODER|Equal10~0_combout\ & (\ROM|memROM~11_combout\ & (!\CPU|INSTR|PC|DOUT\(8)))) ) + ( \CPU|ULA1|Add0~2\ ))
-- \CPU|ULA1|Add0~14\ = CARRY(( \CPU|REG_A|DOUT\(1) ) + ( (!\CPU|DECODER|Equal10~0_combout\ & (((\RAM|ram~594_combout\)))) # (\CPU|DECODER|Equal10~0_combout\ & (\ROM|memROM~11_combout\ & (!\CPU|INSTR|PC|DOUT\(8)))) ) + ( \CPU|ULA1|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011110100010100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal10~0_combout\,
	datab => \ROM|ALT_INV_memROM~11_combout\,
	datac => \CPU|INSTR|PC|ALT_INV_DOUT\(8),
	datad => \CPU|REG_A|ALT_INV_DOUT\(1),
	dataf => \RAM|ALT_INV_ram~594_combout\,
	cin => \CPU|ULA1|Add0~2\,
	sumout => \CPU|ULA1|Add0~13_sumout\,
	cout => \CPU|ULA1|Add0~14\);

-- Location: FF_X36_Y1_N35
\CPU|REG_A|DOUT[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|ULA1|Add0~13_sumout\,
	asdata => \CPU|ULA1|saida[1]~3_combout\,
	sload => \CPU|DECODER|Equal10~1_combout\,
	ena => \CPU|DECODER|sinais_controle~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_A|DOUT[1]~DUPLICATE_q\);

-- Location: LABCELL_X36_Y1_N48
\CPU|ULA1|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~13_sumout\ = SUM(( (!\CPU|DECODER|Equal10~0_combout\ & (((!\RAM|ram~594_combout\)))) # (\CPU|DECODER|Equal10~0_combout\ & (((!\ROM|memROM~11_combout\)) # (\CPU|INSTR|PC|DOUT\(8)))) ) + ( \CPU|REG_A|DOUT[1]~DUPLICATE_q\ ) + ( 
-- \CPU|ULA1|Add1~2\ ))
-- \CPU|ULA1|Add1~14\ = CARRY(( (!\CPU|DECODER|Equal10~0_combout\ & (((!\RAM|ram~594_combout\)))) # (\CPU|DECODER|Equal10~0_combout\ & (((!\ROM|memROM~11_combout\)) # (\CPU|INSTR|PC|DOUT\(8)))) ) + ( \CPU|REG_A|DOUT[1]~DUPLICATE_q\ ) + ( \CPU|ULA1|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111101101010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal10~0_combout\,
	datab => \CPU|INSTR|PC|ALT_INV_DOUT\(8),
	datac => \ROM|ALT_INV_memROM~11_combout\,
	datad => \RAM|ALT_INV_ram~594_combout\,
	dataf => \CPU|REG_A|ALT_INV_DOUT[1]~DUPLICATE_q\,
	cin => \CPU|ULA1|Add1~2\,
	sumout => \CPU|ULA1|Add1~13_sumout\,
	cout => \CPU|ULA1|Add1~14\);

-- Location: LABCELL_X36_Y1_N24
\CPU|ULA1|saida[1]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[1]~3_combout\ = ( \CPU|ULA1|Add1~13_sumout\ & ( (!\CPU|DECODER|sinais_controle~0_combout\) # ((!\CPU|DECODER|Equal10~0_combout\ & ((\RAM|ram~594_combout\))) # (\CPU|DECODER|Equal10~0_combout\ & (\ROM|memROM~3_combout\))) ) ) # ( 
-- !\CPU|ULA1|Add1~13_sumout\ & ( (\CPU|DECODER|sinais_controle~0_combout\ & ((!\CPU|DECODER|Equal10~0_combout\ & ((\RAM|ram~594_combout\))) # (\CPU|DECODER|Equal10~0_combout\ & (\ROM|memROM~3_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011000000010010001111001101111011111100110111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal10~0_combout\,
	datab => \CPU|DECODER|ALT_INV_sinais_controle~0_combout\,
	datac => \ROM|ALT_INV_memROM~3_combout\,
	datad => \RAM|ALT_INV_ram~594_combout\,
	dataf => \CPU|ULA1|ALT_INV_Add1~13_sumout\,
	combout => \CPU|ULA1|saida[1]~3_combout\);

-- Location: FF_X36_Y1_N34
\CPU|REG_A|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|ULA1|Add0~13_sumout\,
	asdata => \CPU|ULA1|saida[1]~3_combout\,
	sload => \CPU|DECODER|Equal10~1_combout\,
	ena => \CPU|DECODER|sinais_controle~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_A|DOUT\(1));

-- Location: LABCELL_X35_Y2_N51
\DECODER_ADDR|Equal6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_ADDR|Equal6~0_combout\ = ( \ROM|memROM~5_combout\ & ( !\ROM|memROM~6_combout\ & ( (!\ROM|memROM~7_combout\ & (\ROM|memROM~0_combout\ & \ROM|memROM~4_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000100000001000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~7_combout\,
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \ROM|ALT_INV_memROM~4_combout\,
	datae => \ROM|ALT_INV_memROM~5_combout\,
	dataf => \ROM|ALT_INV_memROM~6_combout\,
	combout => \DECODER_ADDR|Equal6~0_combout\);

-- Location: LABCELL_X35_Y2_N3
\DECODER_ADDR|Equal6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_ADDR|Equal6~1_combout\ = ( !\ROM|memROM~8_combout\ & ( !\ROM|memROM~1_combout\ & ( (\DECODER_ADDR|Equal6~0_combout\ & !\ROM|memROM~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER_ADDR|ALT_INV_Equal6~0_combout\,
	datac => \ROM|ALT_INV_memROM~3_combout\,
	datae => \ROM|ALT_INV_memROM~8_combout\,
	dataf => \ROM|ALT_INV_memROM~1_combout\,
	combout => \DECODER_ADDR|Equal6~1_combout\);

-- Location: FF_X40_Y2_N11
\HEX0_DECODER|REG_4bits|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(1),
	sload => VCC,
	ena => \DECODER_ADDR|Equal6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX0_DECODER|REG_4bits|DOUT\(1));

-- Location: FF_X40_Y2_N5
\HEX0_DECODER|REG_4bits|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(0),
	sload => VCC,
	ena => \DECODER_ADDR|Equal6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX0_DECODER|REG_4bits|DOUT\(0));

-- Location: MLABCELL_X37_Y1_N39
\RAM|ram~619\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~619_combout\ = ( \ROM|memROM~1_combout\ & ( \ROM|memROM~8_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM|ALT_INV_memROM~8_combout\,
	dataf => \ROM|ALT_INV_memROM~1_combout\,
	combout => \RAM|ram~619_combout\);

-- Location: MLABCELL_X37_Y1_N36
\RAM|ram~552\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~552_combout\ = ( \RAM|ram~619_combout\ & ( !\ROM|memROM~8_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM|ALT_INV_memROM~8_combout\,
	dataf => \RAM|ALT_INV_ram~619_combout\,
	combout => \RAM|ram~552_combout\);

-- Location: MLABCELL_X37_Y1_N6
\RAM|ram~623\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~623_combout\ = ( \ROM|memROM~8_combout\ & ( \ROM|memROM~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ROM|ALT_INV_memROM~8_combout\,
	dataf => \ROM|ALT_INV_memROM~1_combout\,
	combout => \RAM|ram~623_combout\);

-- Location: MLABCELL_X37_Y1_N21
\RAM|ram~556\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~556_combout\ = ( \RAM|ram~623_combout\ & ( !\ROM|memROM~8_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM|ALT_INV_memROM~8_combout\,
	dataf => \RAM|ALT_INV_ram~623_combout\,
	combout => \RAM|ram~556_combout\);

-- Location: FF_X37_Y1_N58
\RAM|ram~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(3),
	sload => VCC,
	ena => \RAM|ram~660_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~18_q\);

-- Location: FF_X37_Y1_N20
\RAM|ram~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(3),
	sload => VCC,
	ena => \RAM|ram~659_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~34_q\);

-- Location: MLABCELL_X37_Y1_N18
\RAM|ram~611\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~611_combout\ = ( \ROM|memROM~1_combout\ & ( \ROM|memROM~8_combout\ ) ) # ( !\ROM|memROM~1_combout\ & ( (!\ROM|memROM~8_combout\ & ((!\ROM|memROM~3_combout\ & (\RAM|ram~18_q\)) # (\ROM|memROM~3_combout\ & ((\RAM|ram~34_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001001100010000000100110000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~18_q\,
	datab => \ROM|ALT_INV_memROM~8_combout\,
	datac => \ROM|ALT_INV_memROM~3_combout\,
	datad => \RAM|ALT_INV_ram~34_q\,
	dataf => \ROM|ALT_INV_memROM~1_combout\,
	combout => \RAM|ram~611_combout\);

-- Location: MLABCELL_X37_Y1_N51
\RAM|ram~544\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~544_combout\ = ( \RAM|ram~611_combout\ & ( !\ROM|memROM~8_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM|ALT_INV_memROM~8_combout\,
	dataf => \RAM|ALT_INV_ram~611_combout\,
	combout => \RAM|ram~544_combout\);

-- Location: MLABCELL_X37_Y1_N15
\RAM|ram~615\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~615_combout\ = ( \ROM|memROM~1_combout\ & ( \ROM|memROM~8_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ROM|ALT_INV_memROM~8_combout\,
	combout => \RAM|ram~615_combout\);

-- Location: MLABCELL_X37_Y1_N42
\RAM|ram~548\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~548_combout\ = ( \RAM|ram~615_combout\ & ( !\ROM|memROM~8_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM|ALT_INV_memROM~8_combout\,
	dataf => \RAM|ALT_INV_ram~615_combout\,
	combout => \RAM|ram~548_combout\);

-- Location: MLABCELL_X37_Y1_N54
\RAM|ram~560\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~560_combout\ = ( \RAM|ram~544_combout\ & ( \RAM|ram~548_combout\ & ( (!\ROM|memROM~10_combout\) # ((!\ROM|memROM~9_combout\ & (\RAM|ram~552_combout\)) # (\ROM|memROM~9_combout\ & ((\RAM|ram~556_combout\)))) ) ) ) # ( !\RAM|ram~544_combout\ & ( 
-- \RAM|ram~548_combout\ & ( (!\ROM|memROM~9_combout\ & (\RAM|ram~552_combout\ & ((\ROM|memROM~10_combout\)))) # (\ROM|memROM~9_combout\ & (((!\ROM|memROM~10_combout\) # (\RAM|ram~556_combout\)))) ) ) ) # ( \RAM|ram~544_combout\ & ( !\RAM|ram~548_combout\ & 
-- ( (!\ROM|memROM~9_combout\ & (((!\ROM|memROM~10_combout\)) # (\RAM|ram~552_combout\))) # (\ROM|memROM~9_combout\ & (((\RAM|ram~556_combout\ & \ROM|memROM~10_combout\)))) ) ) ) # ( !\RAM|ram~544_combout\ & ( !\RAM|ram~548_combout\ & ( 
-- (\ROM|memROM~10_combout\ & ((!\ROM|memROM~9_combout\ & (\RAM|ram~552_combout\)) # (\ROM|memROM~9_combout\ & ((\RAM|ram~556_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000111110011000100011100110011010001111111111101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~552_combout\,
	datab => \ROM|ALT_INV_memROM~9_combout\,
	datac => \RAM|ALT_INV_ram~556_combout\,
	datad => \ROM|ALT_INV_memROM~10_combout\,
	datae => \RAM|ALT_INV_ram~544_combout\,
	dataf => \RAM|ALT_INV_ram~548_combout\,
	combout => \RAM|ram~560_combout\);

-- Location: LABCELL_X35_Y1_N42
\RAM|ram~639\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~639_combout\ = ( \ROM|memROM~1_combout\ & ( \ROM|memROM~8_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~8_combout\,
	dataf => \ROM|ALT_INV_memROM~1_combout\,
	combout => \RAM|ram~639_combout\);

-- Location: LABCELL_X35_Y1_N21
\RAM|ram~573\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~573_combout\ = ( \RAM|ram~639_combout\ & ( !\ROM|memROM~8_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~8_combout\,
	dataf => \RAM|ALT_INV_ram~639_combout\,
	combout => \RAM|ram~573_combout\);

-- Location: LABCELL_X36_Y1_N6
\RAM|ram~635\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~635_combout\ = ( \ROM|memROM~1_combout\ & ( \ROM|memROM~8_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM|ALT_INV_memROM~8_combout\,
	dataf => \ROM|ALT_INV_memROM~1_combout\,
	combout => \RAM|ram~635_combout\);

-- Location: LABCELL_X36_Y1_N15
\RAM|ram~569\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~569_combout\ = ( \RAM|ram~635_combout\ & ( !\ROM|memROM~8_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM|ALT_INV_memROM~8_combout\,
	dataf => \RAM|ALT_INV_ram~635_combout\,
	combout => \RAM|ram~569_combout\);

-- Location: LABCELL_X36_Y1_N51
\CPU|ULA1|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~9_sumout\ = SUM(( (!\CPU|DECODER|Equal10~0_combout\ & ((!\RAM|ram~577_combout\))) # (\CPU|DECODER|Equal10~0_combout\ & (!\ROM|memROM~8_combout\)) ) + ( \CPU|REG_A|DOUT[2]~DUPLICATE_q\ ) + ( \CPU|ULA1|Add1~14\ ))
-- \CPU|ULA1|Add1~10\ = CARRY(( (!\CPU|DECODER|Equal10~0_combout\ & ((!\RAM|ram~577_combout\))) # (\CPU|DECODER|Equal10~0_combout\ & (!\ROM|memROM~8_combout\)) ) + ( \CPU|REG_A|DOUT[2]~DUPLICATE_q\ ) + ( \CPU|ULA1|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111101001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal10~0_combout\,
	datac => \ROM|ALT_INV_memROM~8_combout\,
	datad => \RAM|ALT_INV_ram~577_combout\,
	dataf => \CPU|REG_A|ALT_INV_DOUT[2]~DUPLICATE_q\,
	cin => \CPU|ULA1|Add1~14\,
	sumout => \CPU|ULA1|Add1~9_sumout\,
	cout => \CPU|ULA1|Add1~10\);

-- Location: LABCELL_X36_Y1_N9
\CPU|ULA1|saida[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[2]~2_combout\ = ( \CPU|ULA1|Add1~9_sumout\ & ( (!\CPU|DECODER|sinais_controle~0_combout\) # ((!\CPU|DECODER|Equal10~0_combout\ & (\RAM|ram~577_combout\)) # (\CPU|DECODER|Equal10~0_combout\ & ((\ROM|memROM~8_combout\)))) ) ) # ( 
-- !\CPU|ULA1|Add1~9_sumout\ & ( (\CPU|DECODER|sinais_controle~0_combout\ & ((!\CPU|DECODER|Equal10~0_combout\ & (\RAM|ram~577_combout\)) # (\CPU|DECODER|Equal10~0_combout\ & ((\ROM|memROM~8_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000011000001010000001111110101111100111111010111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~577_combout\,
	datab => \ROM|ALT_INV_memROM~8_combout\,
	datac => \CPU|DECODER|ALT_INV_sinais_controle~0_combout\,
	datad => \CPU|DECODER|ALT_INV_Equal10~0_combout\,
	dataf => \CPU|ULA1|ALT_INV_Add1~9_sumout\,
	combout => \CPU|ULA1|saida[2]~2_combout\);

-- Location: FF_X36_Y1_N38
\CPU|REG_A|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|ULA1|Add0~9_sumout\,
	asdata => \CPU|ULA1|saida[2]~2_combout\,
	sload => \CPU|DECODER|Equal10~1_combout\,
	ena => \CPU|DECODER|sinais_controle~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_A|DOUT\(2));

-- Location: LABCELL_X36_Y1_N36
\CPU|ULA1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~9_sumout\ = SUM(( \CPU|REG_A|DOUT\(2) ) + ( (!\CPU|DECODER|Equal10~0_combout\ & ((\RAM|ram~577_combout\))) # (\CPU|DECODER|Equal10~0_combout\ & (\ROM|memROM~8_combout\)) ) + ( \CPU|ULA1|Add0~14\ ))
-- \CPU|ULA1|Add0~10\ = CARRY(( \CPU|REG_A|DOUT\(2) ) + ( (!\CPU|DECODER|Equal10~0_combout\ & ((\RAM|ram~577_combout\))) # (\CPU|DECODER|Equal10~0_combout\ & (\ROM|memROM~8_combout\)) ) + ( \CPU|ULA1|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111001001110010000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal10~0_combout\,
	datab => \ROM|ALT_INV_memROM~8_combout\,
	datac => \RAM|ALT_INV_ram~577_combout\,
	datad => \CPU|REG_A|ALT_INV_DOUT\(2),
	cin => \CPU|ULA1|Add0~14\,
	sumout => \CPU|ULA1|Add0~9_sumout\,
	cout => \CPU|ULA1|Add0~10\);

-- Location: FF_X36_Y1_N37
\CPU|REG_A|DOUT[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|ULA1|Add0~9_sumout\,
	asdata => \CPU|ULA1|saida[2]~2_combout\,
	sload => \CPU|DECODER|Equal10~1_combout\,
	ena => \CPU|DECODER|sinais_controle~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_A|DOUT[2]~DUPLICATE_q\);

-- Location: FF_X36_Y1_N5
\RAM|ram~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT[2]~DUPLICATE_q\,
	sload => VCC,
	ena => \RAM|ram~659_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~33_q\);

-- Location: FF_X36_Y1_N14
\RAM|ram~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT[2]~DUPLICATE_q\,
	sload => VCC,
	ena => \RAM|ram~660_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~17_q\);

-- Location: LABCELL_X36_Y1_N12
\RAM|ram~627\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~627_combout\ = ( \ROM|memROM~1_combout\ & ( \ROM|memROM~8_combout\ ) ) # ( !\ROM|memROM~1_combout\ & ( (!\ROM|memROM~8_combout\ & ((!\ROM|memROM~3_combout\ & ((\RAM|ram~17_q\))) # (\ROM|memROM~3_combout\ & (\RAM|ram~33_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000011010000000100001101000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~33_q\,
	datab => \ROM|ALT_INV_memROM~3_combout\,
	datac => \ROM|ALT_INV_memROM~8_combout\,
	datad => \RAM|ALT_INV_ram~17_q\,
	dataf => \ROM|ALT_INV_memROM~1_combout\,
	combout => \RAM|ram~627_combout\);

-- Location: LABCELL_X36_Y1_N21
\RAM|ram~561\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~561_combout\ = ( \RAM|ram~627_combout\ & ( !\ROM|memROM~8_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM|ALT_INV_memROM~8_combout\,
	dataf => \RAM|ALT_INV_ram~627_combout\,
	combout => \RAM|ram~561_combout\);

-- Location: MLABCELL_X37_Y1_N48
\RAM|ram~631\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~631_combout\ = ( \ROM|memROM~8_combout\ & ( \ROM|memROM~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ROM|ALT_INV_memROM~8_combout\,
	combout => \RAM|ram~631_combout\);

-- Location: MLABCELL_X37_Y1_N33
\RAM|ram~565\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~565_combout\ = ( !\ROM|memROM~8_combout\ & ( \RAM|ram~631_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ROM|ALT_INV_memROM~8_combout\,
	dataf => \RAM|ALT_INV_ram~631_combout\,
	combout => \RAM|ram~565_combout\);

-- Location: LABCELL_X36_Y1_N0
\RAM|ram~577\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~577_combout\ = ( \RAM|ram~561_combout\ & ( \RAM|ram~565_combout\ & ( (!\ROM|memROM~10_combout\) # ((!\ROM|memROM~9_combout\ & ((\RAM|ram~569_combout\))) # (\ROM|memROM~9_combout\ & (\RAM|ram~573_combout\))) ) ) ) # ( !\RAM|ram~561_combout\ & ( 
-- \RAM|ram~565_combout\ & ( (!\ROM|memROM~9_combout\ & (\ROM|memROM~10_combout\ & ((\RAM|ram~569_combout\)))) # (\ROM|memROM~9_combout\ & ((!\ROM|memROM~10_combout\) # ((\RAM|ram~573_combout\)))) ) ) ) # ( \RAM|ram~561_combout\ & ( !\RAM|ram~565_combout\ & 
-- ( (!\ROM|memROM~9_combout\ & ((!\ROM|memROM~10_combout\) # ((\RAM|ram~569_combout\)))) # (\ROM|memROM~9_combout\ & (\ROM|memROM~10_combout\ & (\RAM|ram~573_combout\))) ) ) ) # ( !\RAM|ram~561_combout\ & ( !\RAM|ram~565_combout\ & ( 
-- (\ROM|memROM~10_combout\ & ((!\ROM|memROM~9_combout\ & ((\RAM|ram~569_combout\))) # (\ROM|memROM~9_combout\ & (\RAM|ram~573_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011100010011010101101000101011001111100110111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~9_combout\,
	datab => \ROM|ALT_INV_memROM~10_combout\,
	datac => \RAM|ALT_INV_ram~573_combout\,
	datad => \RAM|ALT_INV_ram~569_combout\,
	datae => \RAM|ALT_INV_ram~561_combout\,
	dataf => \RAM|ALT_INV_ram~565_combout\,
	combout => \RAM|ram~577_combout\);

-- Location: LABCELL_X36_Y1_N39
\CPU|ULA1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~5_sumout\ = SUM(( \CPU|REG_A|DOUT\(3) ) + ( (!\CPU|DECODER|Equal10~0_combout\ & ((\RAM|ram~560_combout\))) # (\CPU|DECODER|Equal10~0_combout\ & (\ROM|memROM~9_combout\)) ) + ( \CPU|ULA1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100101000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal10~0_combout\,
	datac => \ROM|ALT_INV_memROM~9_combout\,
	datad => \CPU|REG_A|ALT_INV_DOUT\(3),
	dataf => \RAM|ALT_INV_ram~560_combout\,
	cin => \CPU|ULA1|Add0~10\,
	sumout => \CPU|ULA1|Add0~5_sumout\);

-- Location: FF_X36_Y1_N41
\CPU|REG_A|DOUT[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|ULA1|Add0~5_sumout\,
	asdata => \CPU|ULA1|saida[3]~1_combout\,
	sload => \CPU|DECODER|Equal10~1_combout\,
	ena => \CPU|DECODER|sinais_controle~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_A|DOUT[3]~DUPLICATE_q\);

-- Location: LABCELL_X36_Y1_N54
\CPU|ULA1|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~5_sumout\ = SUM(( (!\CPU|DECODER|Equal10~0_combout\ & ((!\RAM|ram~560_combout\))) # (\CPU|DECODER|Equal10~0_combout\ & (!\ROM|memROM~9_combout\)) ) + ( \CPU|REG_A|DOUT[3]~DUPLICATE_q\ ) + ( \CPU|ULA1|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000001111101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~9_combout\,
	datab => \CPU|REG_A|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datac => \CPU|DECODER|ALT_INV_Equal10~0_combout\,
	datad => \RAM|ALT_INV_ram~560_combout\,
	cin => \CPU|ULA1|Add1~10\,
	sumout => \CPU|ULA1|Add1~5_sumout\);

-- Location: LABCELL_X36_Y1_N18
\CPU|ULA1|saida[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[3]~1_combout\ = ( \CPU|ULA1|Add1~5_sumout\ & ( (!\CPU|DECODER|sinais_controle~0_combout\) # ((!\CPU|DECODER|Equal10~0_combout\ & ((\RAM|ram~560_combout\))) # (\CPU|DECODER|Equal10~0_combout\ & (\ROM|memROM~9_combout\))) ) ) # ( 
-- !\CPU|ULA1|Add1~5_sumout\ & ( (\CPU|DECODER|sinais_controle~0_combout\ & ((!\CPU|DECODER|Equal10~0_combout\ & ((\RAM|ram~560_combout\))) # (\CPU|DECODER|Equal10~0_combout\ & (\ROM|memROM~9_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011000000010010001111001101111011111100110111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal10~0_combout\,
	datab => \CPU|DECODER|ALT_INV_sinais_controle~0_combout\,
	datac => \ROM|ALT_INV_memROM~9_combout\,
	datad => \RAM|ALT_INV_ram~560_combout\,
	dataf => \CPU|ULA1|ALT_INV_Add1~5_sumout\,
	combout => \CPU|ULA1|saida[3]~1_combout\);

-- Location: FF_X36_Y1_N40
\CPU|REG_A|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|ULA1|Add0~5_sumout\,
	asdata => \CPU|ULA1|saida[3]~1_combout\,
	sload => \CPU|DECODER|Equal10~1_combout\,
	ena => \CPU|DECODER|sinais_controle~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_A|DOUT\(3));

-- Location: FF_X40_Y2_N2
\HEX0_DECODER|REG_4bits|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(3),
	sload => VCC,
	ena => \DECODER_ADDR|Equal6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX0_DECODER|REG_4bits|DOUT\(3));

-- Location: FF_X40_Y2_N8
\HEX0_DECODER|REG_4bits|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(2),
	sload => VCC,
	ena => \DECODER_ADDR|Equal6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX0_DECODER|REG_4bits|DOUT\(2));

-- Location: LABCELL_X40_Y2_N24
\HEX0_DECODER|DECODER_7seg|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX0_DECODER|DECODER_7seg|rascSaida7seg[0]~0_combout\ = ( \HEX0_DECODER|REG_4bits|DOUT\(2) & ( (!\HEX0_DECODER|REG_4bits|DOUT\(1) & (!\HEX0_DECODER|REG_4bits|DOUT\(0) $ (\HEX0_DECODER|REG_4bits|DOUT\(3)))) ) ) # ( !\HEX0_DECODER|REG_4bits|DOUT\(2) & ( 
-- (\HEX0_DECODER|REG_4bits|DOUT\(0) & (!\HEX0_DECODER|REG_4bits|DOUT\(1) $ (\HEX0_DECODER|REG_4bits|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000011000011000000001111000000000011001100000000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \HEX0_DECODER|REG_4bits|ALT_INV_DOUT\(1),
	datac => \HEX0_DECODER|REG_4bits|ALT_INV_DOUT\(0),
	datad => \HEX0_DECODER|REG_4bits|ALT_INV_DOUT\(3),
	dataf => \HEX0_DECODER|REG_4bits|ALT_INV_DOUT\(2),
	combout => \HEX0_DECODER|DECODER_7seg|rascSaida7seg[0]~0_combout\);

-- Location: LABCELL_X40_Y2_N27
\HEX0_DECODER|DECODER_7seg|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX0_DECODER|DECODER_7seg|rascSaida7seg[1]~1_combout\ = ( \HEX0_DECODER|REG_4bits|DOUT\(2) & ( (!\HEX0_DECODER|REG_4bits|DOUT\(0) & ((\HEX0_DECODER|REG_4bits|DOUT\(3)) # (\HEX0_DECODER|REG_4bits|DOUT\(1)))) # (\HEX0_DECODER|REG_4bits|DOUT\(0) & 
-- (!\HEX0_DECODER|REG_4bits|DOUT\(1) $ (\HEX0_DECODER|REG_4bits|DOUT\(3)))) ) ) # ( !\HEX0_DECODER|REG_4bits|DOUT\(2) & ( (\HEX0_DECODER|REG_4bits|DOUT\(0) & (\HEX0_DECODER|REG_4bits|DOUT\(1) & \HEX0_DECODER|REG_4bits|DOUT\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000101100110101110110110011010111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX0_DECODER|REG_4bits|ALT_INV_DOUT\(0),
	datab => \HEX0_DECODER|REG_4bits|ALT_INV_DOUT\(1),
	datad => \HEX0_DECODER|REG_4bits|ALT_INV_DOUT\(3),
	dataf => \HEX0_DECODER|REG_4bits|ALT_INV_DOUT\(2),
	combout => \HEX0_DECODER|DECODER_7seg|rascSaida7seg[1]~1_combout\);

-- Location: LABCELL_X40_Y2_N30
\HEX0_DECODER|DECODER_7seg|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX0_DECODER|DECODER_7seg|rascSaida7seg[2]~2_combout\ = ( \HEX0_DECODER|REG_4bits|DOUT\(2) & ( (\HEX0_DECODER|REG_4bits|DOUT\(3) & ((!\HEX0_DECODER|REG_4bits|DOUT\(0)) # (\HEX0_DECODER|REG_4bits|DOUT\(1)))) ) ) # ( !\HEX0_DECODER|REG_4bits|DOUT\(2) & ( 
-- (\HEX0_DECODER|REG_4bits|DOUT\(1) & (!\HEX0_DECODER|REG_4bits|DOUT\(3) & !\HEX0_DECODER|REG_4bits|DOUT\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000001100000000000000001111000000110000111100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \HEX0_DECODER|REG_4bits|ALT_INV_DOUT\(1),
	datac => \HEX0_DECODER|REG_4bits|ALT_INV_DOUT\(3),
	datad => \HEX0_DECODER|REG_4bits|ALT_INV_DOUT\(0),
	dataf => \HEX0_DECODER|REG_4bits|ALT_INV_DOUT\(2),
	combout => \HEX0_DECODER|DECODER_7seg|rascSaida7seg[2]~2_combout\);

-- Location: LABCELL_X40_Y2_N3
\HEX0_DECODER|DECODER_7seg|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX0_DECODER|DECODER_7seg|rascSaida7seg[3]~3_combout\ = ( \HEX0_DECODER|REG_4bits|DOUT\(2) & ( (!\HEX0_DECODER|REG_4bits|DOUT\(1) & (!\HEX0_DECODER|REG_4bits|DOUT\(3) & !\HEX0_DECODER|REG_4bits|DOUT\(0))) # (\HEX0_DECODER|REG_4bits|DOUT\(1) & 
-- ((\HEX0_DECODER|REG_4bits|DOUT\(0)))) ) ) # ( !\HEX0_DECODER|REG_4bits|DOUT\(2) & ( (!\HEX0_DECODER|REG_4bits|DOUT\(3) & (!\HEX0_DECODER|REG_4bits|DOUT\(1) & \HEX0_DECODER|REG_4bits|DOUT\(0))) # (\HEX0_DECODER|REG_4bits|DOUT\(3) & 
-- (\HEX0_DECODER|REG_4bits|DOUT\(1) & !\HEX0_DECODER|REG_4bits|DOUT\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000110001000000100011000100010001000001100111000100000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX0_DECODER|REG_4bits|ALT_INV_DOUT\(3),
	datab => \HEX0_DECODER|REG_4bits|ALT_INV_DOUT\(1),
	datad => \HEX0_DECODER|REG_4bits|ALT_INV_DOUT\(0),
	dataf => \HEX0_DECODER|REG_4bits|ALT_INV_DOUT\(2),
	combout => \HEX0_DECODER|DECODER_7seg|rascSaida7seg[3]~3_combout\);

-- Location: LABCELL_X40_Y2_N0
\HEX0_DECODER|DECODER_7seg|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX0_DECODER|DECODER_7seg|rascSaida7seg[4]~4_combout\ = ( \HEX0_DECODER|REG_4bits|DOUT\(2) & ( (!\HEX0_DECODER|REG_4bits|DOUT\(3) & ((!\HEX0_DECODER|REG_4bits|DOUT\(1)) # (\HEX0_DECODER|REG_4bits|DOUT\(0)))) ) ) # ( !\HEX0_DECODER|REG_4bits|DOUT\(2) & ( 
-- (\HEX0_DECODER|REG_4bits|DOUT\(0) & ((!\HEX0_DECODER|REG_4bits|DOUT\(1)) # (!\HEX0_DECODER|REG_4bits|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001100000011110000110011001111000000001100111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \HEX0_DECODER|REG_4bits|ALT_INV_DOUT\(1),
	datac => \HEX0_DECODER|REG_4bits|ALT_INV_DOUT\(0),
	datad => \HEX0_DECODER|REG_4bits|ALT_INV_DOUT\(3),
	dataf => \HEX0_DECODER|REG_4bits|ALT_INV_DOUT\(2),
	combout => \HEX0_DECODER|DECODER_7seg|rascSaida7seg[4]~4_combout\);

-- Location: LABCELL_X40_Y2_N6
\HEX0_DECODER|DECODER_7seg|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX0_DECODER|DECODER_7seg|rascSaida7seg[5]~5_combout\ = ( \HEX0_DECODER|REG_4bits|DOUT\(1) & ( (!\HEX0_DECODER|REG_4bits|DOUT\(3) & ((!\HEX0_DECODER|REG_4bits|DOUT\(2)) # (\HEX0_DECODER|REG_4bits|DOUT\(0)))) ) ) # ( !\HEX0_DECODER|REG_4bits|DOUT\(1) & ( 
-- (\HEX0_DECODER|REG_4bits|DOUT\(0) & (!\HEX0_DECODER|REG_4bits|DOUT\(3) $ (\HEX0_DECODER|REG_4bits|DOUT\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000101010100000000010111110000010100001111000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX0_DECODER|REG_4bits|ALT_INV_DOUT\(0),
	datac => \HEX0_DECODER|REG_4bits|ALT_INV_DOUT\(3),
	datad => \HEX0_DECODER|REG_4bits|ALT_INV_DOUT\(2),
	dataf => \HEX0_DECODER|REG_4bits|ALT_INV_DOUT\(1),
	combout => \HEX0_DECODER|DECODER_7seg|rascSaida7seg[5]~5_combout\);

-- Location: LABCELL_X40_Y2_N9
\HEX0_DECODER|DECODER_7seg|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX0_DECODER|DECODER_7seg|rascSaida7seg[6]~6_combout\ = (!\HEX0_DECODER|REG_4bits|DOUT\(0) & (!\HEX0_DECODER|REG_4bits|DOUT\(1) & (!\HEX0_DECODER|REG_4bits|DOUT\(3) $ (\HEX0_DECODER|REG_4bits|DOUT\(2))))) # (\HEX0_DECODER|REG_4bits|DOUT\(0) & 
-- (!\HEX0_DECODER|REG_4bits|DOUT\(3) & (!\HEX0_DECODER|REG_4bits|DOUT\(2) $ (\HEX0_DECODER|REG_4bits|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001000000100110000100000010011000010000001001100001000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX0_DECODER|REG_4bits|ALT_INV_DOUT\(0),
	datab => \HEX0_DECODER|REG_4bits|ALT_INV_DOUT\(3),
	datac => \HEX0_DECODER|REG_4bits|ALT_INV_DOUT\(2),
	datad => \HEX0_DECODER|REG_4bits|ALT_INV_DOUT\(1),
	combout => \HEX0_DECODER|DECODER_7seg|rascSaida7seg[6]~6_combout\);

-- Location: LABCELL_X35_Y2_N27
\DECODER_ADDR|Equal6~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_ADDR|Equal6~2_combout\ = ( \ROM|memROM~1_combout\ & ( (\DECODER_ADDR|Equal6~0_combout\ & (!\ROM|memROM~3_combout\ & !\ROM|memROM~8_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010000000000000101000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER_ADDR|ALT_INV_Equal6~0_combout\,
	datac => \ROM|ALT_INV_memROM~3_combout\,
	datad => \ROM|ALT_INV_memROM~8_combout\,
	dataf => \ROM|ALT_INV_memROM~1_combout\,
	combout => \DECODER_ADDR|Equal6~2_combout\);

-- Location: FF_X39_Y2_N2
\HEX1_DECODER|REG_4bits|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(2),
	sload => VCC,
	ena => \DECODER_ADDR|Equal6~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX1_DECODER|REG_4bits|DOUT\(2));

-- Location: FF_X39_Y2_N11
\HEX1_DECODER|REG_4bits|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(1),
	sload => VCC,
	ena => \DECODER_ADDR|Equal6~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX1_DECODER|REG_4bits|DOUT\(1));

-- Location: FF_X39_Y2_N56
\HEX1_DECODER|REG_4bits|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(3),
	sload => VCC,
	ena => \DECODER_ADDR|Equal6~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX1_DECODER|REG_4bits|DOUT\(3));

-- Location: FF_X39_Y2_N38
\HEX1_DECODER|REG_4bits|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(0),
	sload => VCC,
	ena => \DECODER_ADDR|Equal6~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX1_DECODER|REG_4bits|DOUT\(0));

-- Location: LABCELL_X39_Y2_N3
\HEX1_DECODER|DECODER_7seg|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX1_DECODER|DECODER_7seg|rascSaida7seg[0]~0_combout\ = ( \HEX1_DECODER|REG_4bits|DOUT\(0) & ( (!\HEX1_DECODER|REG_4bits|DOUT\(2) & (!\HEX1_DECODER|REG_4bits|DOUT\(1) $ (\HEX1_DECODER|REG_4bits|DOUT\(3)))) # (\HEX1_DECODER|REG_4bits|DOUT\(2) & 
-- (!\HEX1_DECODER|REG_4bits|DOUT\(1) & \HEX1_DECODER|REG_4bits|DOUT\(3))) ) ) # ( !\HEX1_DECODER|REG_4bits|DOUT\(0) & ( (\HEX1_DECODER|REG_4bits|DOUT\(2) & (!\HEX1_DECODER|REG_4bits|DOUT\(1) & !\HEX1_DECODER|REG_4bits|DOUT\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000101000000101101001010000000000001010000001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX1_DECODER|REG_4bits|ALT_INV_DOUT\(2),
	datac => \HEX1_DECODER|REG_4bits|ALT_INV_DOUT\(1),
	datad => \HEX1_DECODER|REG_4bits|ALT_INV_DOUT\(3),
	datae => \HEX1_DECODER|REG_4bits|ALT_INV_DOUT\(0),
	combout => \HEX1_DECODER|DECODER_7seg|rascSaida7seg[0]~0_combout\);

-- Location: LABCELL_X39_Y2_N6
\HEX1_DECODER|DECODER_7seg|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX1_DECODER|DECODER_7seg|rascSaida7seg[1]~1_combout\ = ( \HEX1_DECODER|REG_4bits|DOUT\(2) & ( (!\HEX1_DECODER|REG_4bits|DOUT\(0) & ((\HEX1_DECODER|REG_4bits|DOUT\(3)) # (\HEX1_DECODER|REG_4bits|DOUT\(1)))) # (\HEX1_DECODER|REG_4bits|DOUT\(0) & 
-- (!\HEX1_DECODER|REG_4bits|DOUT\(1) $ (\HEX1_DECODER|REG_4bits|DOUT\(3)))) ) ) # ( !\HEX1_DECODER|REG_4bits|DOUT\(2) & ( (\HEX1_DECODER|REG_4bits|DOUT\(0) & (\HEX1_DECODER|REG_4bits|DOUT\(1) & \HEX1_DECODER|REG_4bits|DOUT\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001011010110110101100000001000000010110101101101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX1_DECODER|REG_4bits|ALT_INV_DOUT\(0),
	datab => \HEX1_DECODER|REG_4bits|ALT_INV_DOUT\(1),
	datac => \HEX1_DECODER|REG_4bits|ALT_INV_DOUT\(3),
	datae => \HEX1_DECODER|REG_4bits|ALT_INV_DOUT\(2),
	combout => \HEX1_DECODER|DECODER_7seg|rascSaida7seg[1]~1_combout\);

-- Location: LABCELL_X39_Y2_N51
\HEX1_DECODER|DECODER_7seg|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX1_DECODER|DECODER_7seg|rascSaida7seg[2]~2_combout\ = ( \HEX1_DECODER|REG_4bits|DOUT\(2) & ( (\HEX1_DECODER|REG_4bits|DOUT\(3) & ((!\HEX1_DECODER|REG_4bits|DOUT\(0)) # (\HEX1_DECODER|REG_4bits|DOUT\(1)))) ) ) # ( !\HEX1_DECODER|REG_4bits|DOUT\(2) & ( 
-- (!\HEX1_DECODER|REG_4bits|DOUT\(3) & (\HEX1_DECODER|REG_4bits|DOUT\(1) & !\HEX1_DECODER|REG_4bits|DOUT\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000000000001000100000000001010101000100010101010100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX1_DECODER|REG_4bits|ALT_INV_DOUT\(3),
	datab => \HEX1_DECODER|REG_4bits|ALT_INV_DOUT\(1),
	datad => \HEX1_DECODER|REG_4bits|ALT_INV_DOUT\(0),
	dataf => \HEX1_DECODER|REG_4bits|ALT_INV_DOUT\(2),
	combout => \HEX1_DECODER|DECODER_7seg|rascSaida7seg[2]~2_combout\);

-- Location: LABCELL_X39_Y2_N18
\HEX1_DECODER|DECODER_7seg|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX1_DECODER|DECODER_7seg|rascSaida7seg[3]~3_combout\ = ( \HEX1_DECODER|REG_4bits|DOUT\(2) & ( (!\HEX1_DECODER|REG_4bits|DOUT\(1) & (!\HEX1_DECODER|REG_4bits|DOUT\(0) & !\HEX1_DECODER|REG_4bits|DOUT\(3))) # (\HEX1_DECODER|REG_4bits|DOUT\(1) & 
-- (\HEX1_DECODER|REG_4bits|DOUT\(0))) ) ) # ( !\HEX1_DECODER|REG_4bits|DOUT\(2) & ( (!\HEX1_DECODER|REG_4bits|DOUT\(1) & (\HEX1_DECODER|REG_4bits|DOUT\(0) & !\HEX1_DECODER|REG_4bits|DOUT\(3))) # (\HEX1_DECODER|REG_4bits|DOUT\(1) & 
-- (!\HEX1_DECODER|REG_4bits|DOUT\(0) & \HEX1_DECODER|REG_4bits|DOUT\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000110000000011000011000011000011000000111100001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \HEX1_DECODER|REG_4bits|ALT_INV_DOUT\(1),
	datac => \HEX1_DECODER|REG_4bits|ALT_INV_DOUT\(0),
	datad => \HEX1_DECODER|REG_4bits|ALT_INV_DOUT\(3),
	dataf => \HEX1_DECODER|REG_4bits|ALT_INV_DOUT\(2),
	combout => \HEX1_DECODER|DECODER_7seg|rascSaida7seg[3]~3_combout\);

-- Location: LABCELL_X39_Y2_N48
\HEX1_DECODER|DECODER_7seg|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX1_DECODER|DECODER_7seg|rascSaida7seg[4]~4_combout\ = (!\HEX1_DECODER|REG_4bits|DOUT\(1) & ((!\HEX1_DECODER|REG_4bits|DOUT\(2) & ((\HEX1_DECODER|REG_4bits|DOUT\(0)))) # (\HEX1_DECODER|REG_4bits|DOUT\(2) & (!\HEX1_DECODER|REG_4bits|DOUT\(3))))) # 
-- (\HEX1_DECODER|REG_4bits|DOUT\(1) & (!\HEX1_DECODER|REG_4bits|DOUT\(3) & (\HEX1_DECODER|REG_4bits|DOUT\(0))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111010001010000011101000101000001110100010100000111010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX1_DECODER|REG_4bits|ALT_INV_DOUT\(3),
	datab => \HEX1_DECODER|REG_4bits|ALT_INV_DOUT\(1),
	datac => \HEX1_DECODER|REG_4bits|ALT_INV_DOUT\(0),
	datad => \HEX1_DECODER|REG_4bits|ALT_INV_DOUT\(2),
	combout => \HEX1_DECODER|DECODER_7seg|rascSaida7seg[4]~4_combout\);

-- Location: LABCELL_X39_Y2_N21
\HEX1_DECODER|DECODER_7seg|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX1_DECODER|DECODER_7seg|rascSaida7seg[5]~5_combout\ = ( \HEX1_DECODER|REG_4bits|DOUT\(2) & ( (\HEX1_DECODER|REG_4bits|DOUT\(0) & (!\HEX1_DECODER|REG_4bits|DOUT\(3) $ (!\HEX1_DECODER|REG_4bits|DOUT\(1)))) ) ) # ( !\HEX1_DECODER|REG_4bits|DOUT\(2) & ( 
-- (!\HEX1_DECODER|REG_4bits|DOUT\(3) & ((\HEX1_DECODER|REG_4bits|DOUT\(0)) # (\HEX1_DECODER|REG_4bits|DOUT\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001010101010001000101010101000000000011001100000000001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX1_DECODER|REG_4bits|ALT_INV_DOUT\(3),
	datab => \HEX1_DECODER|REG_4bits|ALT_INV_DOUT\(1),
	datad => \HEX1_DECODER|REG_4bits|ALT_INV_DOUT\(0),
	dataf => \HEX1_DECODER|REG_4bits|ALT_INV_DOUT\(2),
	combout => \HEX1_DECODER|DECODER_7seg|rascSaida7seg[5]~5_combout\);

-- Location: LABCELL_X39_Y2_N57
\HEX1_DECODER|DECODER_7seg|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX1_DECODER|DECODER_7seg|rascSaida7seg[6]~6_combout\ = ( \HEX1_DECODER|REG_4bits|DOUT\(0) & ( (!\HEX1_DECODER|REG_4bits|DOUT\(3) & (!\HEX1_DECODER|REG_4bits|DOUT\(2) $ (\HEX1_DECODER|REG_4bits|DOUT\(1)))) ) ) # ( !\HEX1_DECODER|REG_4bits|DOUT\(0) & ( 
-- (!\HEX1_DECODER|REG_4bits|DOUT\(1) & (!\HEX1_DECODER|REG_4bits|DOUT\(2) $ (\HEX1_DECODER|REG_4bits|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000001010000101001010000000010100000010100001010010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX1_DECODER|REG_4bits|ALT_INV_DOUT\(2),
	datac => \HEX1_DECODER|REG_4bits|ALT_INV_DOUT\(1),
	datad => \HEX1_DECODER|REG_4bits|ALT_INV_DOUT\(3),
	datae => \HEX1_DECODER|REG_4bits|ALT_INV_DOUT\(0),
	combout => \HEX1_DECODER|DECODER_7seg|rascSaida7seg[6]~6_combout\);

-- Location: LABCELL_X35_Y2_N12
\DECODER_ADDR|Equal6~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_ADDR|Equal6~3_combout\ = ( !\ROM|memROM~1_combout\ & ( (\DECODER_ADDR|Equal6~0_combout\ & (\ROM|memROM~3_combout\ & !\ROM|memROM~8_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000000100000001000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER_ADDR|ALT_INV_Equal6~0_combout\,
	datab => \ROM|ALT_INV_memROM~3_combout\,
	datac => \ROM|ALT_INV_memROM~8_combout\,
	dataf => \ROM|ALT_INV_memROM~1_combout\,
	combout => \DECODER_ADDR|Equal6~3_combout\);

-- Location: FF_X39_Y2_N29
\HEX2_DECODER|REG_4bits|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(0),
	sload => VCC,
	ena => \DECODER_ADDR|Equal6~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX2_DECODER|REG_4bits|DOUT\(0));

-- Location: FF_X39_Y2_N25
\HEX2_DECODER|REG_4bits|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(3),
	sload => VCC,
	ena => \DECODER_ADDR|Equal6~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX2_DECODER|REG_4bits|DOUT\(3));

-- Location: FF_X39_Y2_N35
\HEX2_DECODER|REG_4bits|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(2),
	sload => VCC,
	ena => \DECODER_ADDR|Equal6~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX2_DECODER|REG_4bits|DOUT\(2));

-- Location: FF_X39_Y2_N17
\HEX2_DECODER|REG_4bits|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(1),
	sload => VCC,
	ena => \DECODER_ADDR|Equal6~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX2_DECODER|REG_4bits|DOUT\(1));

-- Location: LABCELL_X39_Y2_N12
\HEX2_DECODER|DECODER_7seg|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX2_DECODER|DECODER_7seg|rascSaida7seg[0]~0_combout\ = ( \HEX2_DECODER|REG_4bits|DOUT\(1) & ( (\HEX2_DECODER|REG_4bits|DOUT\(0) & (\HEX2_DECODER|REG_4bits|DOUT\(3) & !\HEX2_DECODER|REG_4bits|DOUT\(2))) ) ) # ( !\HEX2_DECODER|REG_4bits|DOUT\(1) & ( 
-- (!\HEX2_DECODER|REG_4bits|DOUT\(0) & (!\HEX2_DECODER|REG_4bits|DOUT\(3) & \HEX2_DECODER|REG_4bits|DOUT\(2))) # (\HEX2_DECODER|REG_4bits|DOUT\(0) & (!\HEX2_DECODER|REG_4bits|DOUT\(3) $ (\HEX2_DECODER|REG_4bits|DOUT\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100101001001010010010100100100010000000100000001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX2_DECODER|REG_4bits|ALT_INV_DOUT\(0),
	datab => \HEX2_DECODER|REG_4bits|ALT_INV_DOUT\(3),
	datac => \HEX2_DECODER|REG_4bits|ALT_INV_DOUT\(2),
	dataf => \HEX2_DECODER|REG_4bits|ALT_INV_DOUT\(1),
	combout => \HEX2_DECODER|DECODER_7seg|rascSaida7seg[0]~0_combout\);

-- Location: LABCELL_X39_Y2_N45
\HEX2_DECODER|DECODER_7seg|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX2_DECODER|DECODER_7seg|rascSaida7seg[1]~1_combout\ = ( \HEX2_DECODER|REG_4bits|DOUT\(3) & ( (!\HEX2_DECODER|REG_4bits|DOUT\(0) & (\HEX2_DECODER|REG_4bits|DOUT\(2))) # (\HEX2_DECODER|REG_4bits|DOUT\(0) & ((\HEX2_DECODER|REG_4bits|DOUT\(1)))) ) ) # ( 
-- !\HEX2_DECODER|REG_4bits|DOUT\(3) & ( (\HEX2_DECODER|REG_4bits|DOUT\(2) & (!\HEX2_DECODER|REG_4bits|DOUT\(1) $ (!\HEX2_DECODER|REG_4bits|DOUT\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101010000000001010101000001010101000011110101010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX2_DECODER|REG_4bits|ALT_INV_DOUT\(2),
	datac => \HEX2_DECODER|REG_4bits|ALT_INV_DOUT\(1),
	datad => \HEX2_DECODER|REG_4bits|ALT_INV_DOUT\(0),
	dataf => \HEX2_DECODER|REG_4bits|ALT_INV_DOUT\(3),
	combout => \HEX2_DECODER|DECODER_7seg|rascSaida7seg[1]~1_combout\);

-- Location: LABCELL_X39_Y2_N30
\HEX2_DECODER|DECODER_7seg|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX2_DECODER|DECODER_7seg|rascSaida7seg[2]~2_combout\ = ( \HEX2_DECODER|REG_4bits|DOUT\(1) & ( (!\HEX2_DECODER|REG_4bits|DOUT\(3) & (!\HEX2_DECODER|REG_4bits|DOUT\(0) & !\HEX2_DECODER|REG_4bits|DOUT\(2))) # (\HEX2_DECODER|REG_4bits|DOUT\(3) & 
-- ((\HEX2_DECODER|REG_4bits|DOUT\(2)))) ) ) # ( !\HEX2_DECODER|REG_4bits|DOUT\(1) & ( (!\HEX2_DECODER|REG_4bits|DOUT\(0) & (\HEX2_DECODER|REG_4bits|DOUT\(3) & \HEX2_DECODER|REG_4bits|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001010000011100000111000001110000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX2_DECODER|REG_4bits|ALT_INV_DOUT\(0),
	datab => \HEX2_DECODER|REG_4bits|ALT_INV_DOUT\(3),
	datac => \HEX2_DECODER|REG_4bits|ALT_INV_DOUT\(2),
	dataf => \HEX2_DECODER|REG_4bits|ALT_INV_DOUT\(1),
	combout => \HEX2_DECODER|DECODER_7seg|rascSaida7seg[2]~2_combout\);

-- Location: LABCELL_X39_Y2_N27
\HEX2_DECODER|DECODER_7seg|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX2_DECODER|DECODER_7seg|rascSaida7seg[3]~3_combout\ = ( \HEX2_DECODER|REG_4bits|DOUT\(0) & ( (!\HEX2_DECODER|REG_4bits|DOUT\(2) & (!\HEX2_DECODER|REG_4bits|DOUT\(1) & !\HEX2_DECODER|REG_4bits|DOUT\(3))) # (\HEX2_DECODER|REG_4bits|DOUT\(2) & 
-- (\HEX2_DECODER|REG_4bits|DOUT\(1))) ) ) # ( !\HEX2_DECODER|REG_4bits|DOUT\(0) & ( (!\HEX2_DECODER|REG_4bits|DOUT\(2) & (\HEX2_DECODER|REG_4bits|DOUT\(1) & \HEX2_DECODER|REG_4bits|DOUT\(3))) # (\HEX2_DECODER|REG_4bits|DOUT\(2) & 
-- (!\HEX2_DECODER|REG_4bits|DOUT\(1) & !\HEX2_DECODER|REG_4bits|DOUT\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100001001000010100100011001000101000010010000101001000110010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX2_DECODER|REG_4bits|ALT_INV_DOUT\(2),
	datab => \HEX2_DECODER|REG_4bits|ALT_INV_DOUT\(1),
	datac => \HEX2_DECODER|REG_4bits|ALT_INV_DOUT\(3),
	datae => \HEX2_DECODER|REG_4bits|ALT_INV_DOUT\(0),
	combout => \HEX2_DECODER|DECODER_7seg|rascSaida7seg[3]~3_combout\);

-- Location: LABCELL_X39_Y2_N39
\HEX2_DECODER|DECODER_7seg|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX2_DECODER|DECODER_7seg|rascSaida7seg[4]~4_combout\ = ( \HEX2_DECODER|REG_4bits|DOUT\(0) & ( (!\HEX2_DECODER|REG_4bits|DOUT\(3)) # ((!\HEX2_DECODER|REG_4bits|DOUT\(2) & !\HEX2_DECODER|REG_4bits|DOUT\(1))) ) ) # ( !\HEX2_DECODER|REG_4bits|DOUT\(0) & ( 
-- (\HEX2_DECODER|REG_4bits|DOUT\(2) & (!\HEX2_DECODER|REG_4bits|DOUT\(1) & !\HEX2_DECODER|REG_4bits|DOUT\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000111110001111100001000000010000001111100011111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX2_DECODER|REG_4bits|ALT_INV_DOUT\(2),
	datab => \HEX2_DECODER|REG_4bits|ALT_INV_DOUT\(1),
	datac => \HEX2_DECODER|REG_4bits|ALT_INV_DOUT\(3),
	datae => \HEX2_DECODER|REG_4bits|ALT_INV_DOUT\(0),
	combout => \HEX2_DECODER|DECODER_7seg|rascSaida7seg[4]~4_combout\);

-- Location: LABCELL_X39_Y2_N33
\HEX2_DECODER|DECODER_7seg|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX2_DECODER|DECODER_7seg|rascSaida7seg[5]~5_combout\ = ( \HEX2_DECODER|REG_4bits|DOUT\(1) & ( (!\HEX2_DECODER|REG_4bits|DOUT\(3) & ((!\HEX2_DECODER|REG_4bits|DOUT\(2)) # (\HEX2_DECODER|REG_4bits|DOUT\(0)))) ) ) # ( !\HEX2_DECODER|REG_4bits|DOUT\(1) & ( 
-- (\HEX2_DECODER|REG_4bits|DOUT\(0) & (!\HEX2_DECODER|REG_4bits|DOUT\(3) $ (\HEX2_DECODER|REG_4bits|DOUT\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000101010100000000010111110000010100001111000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX2_DECODER|REG_4bits|ALT_INV_DOUT\(0),
	datac => \HEX2_DECODER|REG_4bits|ALT_INV_DOUT\(3),
	datad => \HEX2_DECODER|REG_4bits|ALT_INV_DOUT\(2),
	dataf => \HEX2_DECODER|REG_4bits|ALT_INV_DOUT\(1),
	combout => \HEX2_DECODER|DECODER_7seg|rascSaida7seg[5]~5_combout\);

-- Location: LABCELL_X39_Y2_N15
\HEX2_DECODER|DECODER_7seg|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX2_DECODER|DECODER_7seg|rascSaida7seg[6]~6_combout\ = ( \HEX2_DECODER|REG_4bits|DOUT\(2) & ( (!\HEX2_DECODER|REG_4bits|DOUT\(0) & (\HEX2_DECODER|REG_4bits|DOUT\(3) & !\HEX2_DECODER|REG_4bits|DOUT\(1))) # (\HEX2_DECODER|REG_4bits|DOUT\(0) & 
-- (!\HEX2_DECODER|REG_4bits|DOUT\(3) & \HEX2_DECODER|REG_4bits|DOUT\(1))) ) ) # ( !\HEX2_DECODER|REG_4bits|DOUT\(2) & ( (!\HEX2_DECODER|REG_4bits|DOUT\(3) & !\HEX2_DECODER|REG_4bits|DOUT\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000000000110011000000000000100010010001000010001001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX2_DECODER|REG_4bits|ALT_INV_DOUT\(0),
	datab => \HEX2_DECODER|REG_4bits|ALT_INV_DOUT\(3),
	datad => \HEX2_DECODER|REG_4bits|ALT_INV_DOUT\(1),
	dataf => \HEX2_DECODER|REG_4bits|ALT_INV_DOUT\(2),
	combout => \HEX2_DECODER|DECODER_7seg|rascSaida7seg[6]~6_combout\);

-- Location: LABCELL_X35_Y2_N15
\DECODER_ADDR|Equal6~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_ADDR|Equal6~4_combout\ = ( \ROM|memROM~1_combout\ & ( (\DECODER_ADDR|Equal6~0_combout\ & (\ROM|memROM~3_combout\ & !\ROM|memROM~8_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101000000000000010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER_ADDR|ALT_INV_Equal6~0_combout\,
	datac => \ROM|ALT_INV_memROM~3_combout\,
	datad => \ROM|ALT_INV_memROM~8_combout\,
	dataf => \ROM|ALT_INV_memROM~1_combout\,
	combout => \DECODER_ADDR|Equal6~4_combout\);

-- Location: FF_X40_Y2_N56
\HEX3_DECODER|REG_4bits|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(1),
	sload => VCC,
	ena => \DECODER_ADDR|Equal6~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX3_DECODER|REG_4bits|DOUT\(1));

-- Location: FF_X40_Y2_N59
\HEX3_DECODER|REG_4bits|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(3),
	sload => VCC,
	ena => \DECODER_ADDR|Equal6~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX3_DECODER|REG_4bits|DOUT\(3));

-- Location: FF_X40_Y2_N38
\HEX3_DECODER|REG_4bits|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(0),
	sload => VCC,
	ena => \DECODER_ADDR|Equal6~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX3_DECODER|REG_4bits|DOUT\(0));

-- Location: FF_X40_Y2_N35
\HEX3_DECODER|REG_4bits|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(2),
	sload => VCC,
	ena => \DECODER_ADDR|Equal6~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX3_DECODER|REG_4bits|DOUT\(2));

-- Location: LABCELL_X40_Y2_N39
\HEX3_DECODER|DECODER_7seg|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX3_DECODER|DECODER_7seg|rascSaida7seg[0]~0_combout\ = ( \HEX3_DECODER|REG_4bits|DOUT\(2) & ( (!\HEX3_DECODER|REG_4bits|DOUT\(1) & (!\HEX3_DECODER|REG_4bits|DOUT\(3) $ (\HEX3_DECODER|REG_4bits|DOUT\(0)))) ) ) # ( !\HEX3_DECODER|REG_4bits|DOUT\(2) & ( 
-- (\HEX3_DECODER|REG_4bits|DOUT\(0) & (!\HEX3_DECODER|REG_4bits|DOUT\(1) $ (\HEX3_DECODER|REG_4bits|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010011001000000001001100110001000001000101000100000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX3_DECODER|REG_4bits|ALT_INV_DOUT\(1),
	datab => \HEX3_DECODER|REG_4bits|ALT_INV_DOUT\(3),
	datad => \HEX3_DECODER|REG_4bits|ALT_INV_DOUT\(0),
	dataf => \HEX3_DECODER|REG_4bits|ALT_INV_DOUT\(2),
	combout => \HEX3_DECODER|DECODER_7seg|rascSaida7seg[0]~0_combout\);

-- Location: LABCELL_X40_Y2_N15
\HEX3_DECODER|DECODER_7seg|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX3_DECODER|DECODER_7seg|rascSaida7seg[1]~1_combout\ = ( \HEX3_DECODER|REG_4bits|DOUT\(2) & ( (!\HEX3_DECODER|REG_4bits|DOUT\(0) & ((\HEX3_DECODER|REG_4bits|DOUT\(1)) # (\HEX3_DECODER|REG_4bits|DOUT\(3)))) # (\HEX3_DECODER|REG_4bits|DOUT\(0) & 
-- (!\HEX3_DECODER|REG_4bits|DOUT\(3) $ (\HEX3_DECODER|REG_4bits|DOUT\(1)))) ) ) # ( !\HEX3_DECODER|REG_4bits|DOUT\(2) & ( (\HEX3_DECODER|REG_4bits|DOUT\(0) & (\HEX3_DECODER|REG_4bits|DOUT\(3) & \HEX3_DECODER|REG_4bits|DOUT\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010101011010101011110101101010101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX3_DECODER|REG_4bits|ALT_INV_DOUT\(0),
	datac => \HEX3_DECODER|REG_4bits|ALT_INV_DOUT\(3),
	datad => \HEX3_DECODER|REG_4bits|ALT_INV_DOUT\(1),
	dataf => \HEX3_DECODER|REG_4bits|ALT_INV_DOUT\(2),
	combout => \HEX3_DECODER|DECODER_7seg|rascSaida7seg[1]~1_combout\);

-- Location: LABCELL_X39_Y2_N42
\HEX3_DECODER|DECODER_7seg|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX3_DECODER|DECODER_7seg|rascSaida7seg[2]~2_combout\ = ( \HEX3_DECODER|REG_4bits|DOUT\(2) & ( (\HEX3_DECODER|REG_4bits|DOUT\(3) & ((!\HEX3_DECODER|REG_4bits|DOUT\(0)) # (\HEX3_DECODER|REG_4bits|DOUT\(1)))) ) ) # ( !\HEX3_DECODER|REG_4bits|DOUT\(2) & ( 
-- (!\HEX3_DECODER|REG_4bits|DOUT\(0) & (!\HEX3_DECODER|REG_4bits|DOUT\(3) & \HEX3_DECODER|REG_4bits|DOUT\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000001100000000001100000011110000110000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \HEX3_DECODER|REG_4bits|ALT_INV_DOUT\(0),
	datac => \HEX3_DECODER|REG_4bits|ALT_INV_DOUT\(3),
	datad => \HEX3_DECODER|REG_4bits|ALT_INV_DOUT\(1),
	dataf => \HEX3_DECODER|REG_4bits|ALT_INV_DOUT\(2),
	combout => \HEX3_DECODER|DECODER_7seg|rascSaida7seg[2]~2_combout\);

-- Location: LABCELL_X40_Y2_N36
\HEX3_DECODER|DECODER_7seg|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX3_DECODER|DECODER_7seg|rascSaida7seg[3]~3_combout\ = ( \HEX3_DECODER|REG_4bits|DOUT\(2) & ( (!\HEX3_DECODER|REG_4bits|DOUT\(1) & (!\HEX3_DECODER|REG_4bits|DOUT\(3) & !\HEX3_DECODER|REG_4bits|DOUT\(0))) # (\HEX3_DECODER|REG_4bits|DOUT\(1) & 
-- ((\HEX3_DECODER|REG_4bits|DOUT\(0)))) ) ) # ( !\HEX3_DECODER|REG_4bits|DOUT\(2) & ( (!\HEX3_DECODER|REG_4bits|DOUT\(1) & (!\HEX3_DECODER|REG_4bits|DOUT\(3) & \HEX3_DECODER|REG_4bits|DOUT\(0))) # (\HEX3_DECODER|REG_4bits|DOUT\(1) & 
-- (\HEX3_DECODER|REG_4bits|DOUT\(3) & !\HEX3_DECODER|REG_4bits|DOUT\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000110001000000100011000100010001000010101011000100001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX3_DECODER|REG_4bits|ALT_INV_DOUT\(1),
	datab => \HEX3_DECODER|REG_4bits|ALT_INV_DOUT\(3),
	datad => \HEX3_DECODER|REG_4bits|ALT_INV_DOUT\(0),
	dataf => \HEX3_DECODER|REG_4bits|ALT_INV_DOUT\(2),
	combout => \HEX3_DECODER|DECODER_7seg|rascSaida7seg[3]~3_combout\);

-- Location: LABCELL_X40_Y2_N57
\HEX3_DECODER|DECODER_7seg|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX3_DECODER|DECODER_7seg|rascSaida7seg[4]~4_combout\ = ( \HEX3_DECODER|REG_4bits|DOUT\(2) & ( (!\HEX3_DECODER|REG_4bits|DOUT\(3) & ((!\HEX3_DECODER|REG_4bits|DOUT\(1)) # (\HEX3_DECODER|REG_4bits|DOUT\(0)))) ) ) # ( !\HEX3_DECODER|REG_4bits|DOUT\(2) & ( 
-- (\HEX3_DECODER|REG_4bits|DOUT\(0) & ((!\HEX3_DECODER|REG_4bits|DOUT\(1)) # (!\HEX3_DECODER|REG_4bits|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010000010101010101000011110101000000001111010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX3_DECODER|REG_4bits|ALT_INV_DOUT\(0),
	datac => \HEX3_DECODER|REG_4bits|ALT_INV_DOUT\(1),
	datad => \HEX3_DECODER|REG_4bits|ALT_INV_DOUT\(3),
	dataf => \HEX3_DECODER|REG_4bits|ALT_INV_DOUT\(2),
	combout => \HEX3_DECODER|DECODER_7seg|rascSaida7seg[4]~4_combout\);

-- Location: LABCELL_X40_Y2_N33
\HEX3_DECODER|DECODER_7seg|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX3_DECODER|DECODER_7seg|rascSaida7seg[5]~5_combout\ = ( \HEX3_DECODER|REG_4bits|DOUT\(1) & ( (!\HEX3_DECODER|REG_4bits|DOUT\(3) & ((!\HEX3_DECODER|REG_4bits|DOUT\(2)) # (\HEX3_DECODER|REG_4bits|DOUT\(0)))) ) ) # ( !\HEX3_DECODER|REG_4bits|DOUT\(1) & ( 
-- (\HEX3_DECODER|REG_4bits|DOUT\(0) & (!\HEX3_DECODER|REG_4bits|DOUT\(3) $ (\HEX3_DECODER|REG_4bits|DOUT\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000101010100000000010111110000010100001111000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX3_DECODER|REG_4bits|ALT_INV_DOUT\(0),
	datac => \HEX3_DECODER|REG_4bits|ALT_INV_DOUT\(3),
	datad => \HEX3_DECODER|REG_4bits|ALT_INV_DOUT\(2),
	dataf => \HEX3_DECODER|REG_4bits|ALT_INV_DOUT\(1),
	combout => \HEX3_DECODER|DECODER_7seg|rascSaida7seg[5]~5_combout\);

-- Location: LABCELL_X40_Y2_N54
\HEX3_DECODER|DECODER_7seg|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX3_DECODER|DECODER_7seg|rascSaida7seg[6]~6_combout\ = ( \HEX3_DECODER|REG_4bits|DOUT\(2) & ( (!\HEX3_DECODER|REG_4bits|DOUT\(0) & (\HEX3_DECODER|REG_4bits|DOUT\(3) & !\HEX3_DECODER|REG_4bits|DOUT\(1))) # (\HEX3_DECODER|REG_4bits|DOUT\(0) & 
-- (!\HEX3_DECODER|REG_4bits|DOUT\(3) & \HEX3_DECODER|REG_4bits|DOUT\(1))) ) ) # ( !\HEX3_DECODER|REG_4bits|DOUT\(2) & ( (!\HEX3_DECODER|REG_4bits|DOUT\(3) & !\HEX3_DECODER|REG_4bits|DOUT\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000000000110011000000000000100010010001000010001001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX3_DECODER|REG_4bits|ALT_INV_DOUT\(0),
	datab => \HEX3_DECODER|REG_4bits|ALT_INV_DOUT\(3),
	datad => \HEX3_DECODER|REG_4bits|ALT_INV_DOUT\(1),
	dataf => \HEX3_DECODER|REG_4bits|ALT_INV_DOUT\(2),
	combout => \HEX3_DECODER|DECODER_7seg|rascSaida7seg[6]~6_combout\);

-- Location: LABCELL_X35_Y2_N33
\DECODER_ADDR|Equal6~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_ADDR|Equal6~5_combout\ = ( \ROM|memROM~8_combout\ & ( !\ROM|memROM~1_combout\ & ( (\DECODER_ADDR|Equal6~0_combout\ & !\ROM|memROM~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100000101000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER_ADDR|ALT_INV_Equal6~0_combout\,
	datac => \ROM|ALT_INV_memROM~3_combout\,
	datae => \ROM|ALT_INV_memROM~8_combout\,
	dataf => \ROM|ALT_INV_memROM~1_combout\,
	combout => \DECODER_ADDR|Equal6~5_combout\);

-- Location: FF_X40_Y2_N20
\HEX4_DECODER|REG_4bits|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(2),
	sload => VCC,
	ena => \DECODER_ADDR|Equal6~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX4_DECODER|REG_4bits|DOUT\(2));

-- Location: FF_X40_Y2_N44
\HEX4_DECODER|REG_4bits|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(0),
	sload => VCC,
	ena => \DECODER_ADDR|Equal6~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX4_DECODER|REG_4bits|DOUT\(0));

-- Location: FF_X40_Y2_N23
\HEX4_DECODER|REG_4bits|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(1),
	sload => VCC,
	ena => \DECODER_ADDR|Equal6~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX4_DECODER|REG_4bits|DOUT\(1));

-- Location: FF_X40_Y2_N50
\HEX4_DECODER|REG_4bits|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(3),
	sload => VCC,
	ena => \DECODER_ADDR|Equal6~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX4_DECODER|REG_4bits|DOUT\(3));

-- Location: LABCELL_X40_Y2_N45
\HEX4_DECODER|DECODER_7seg|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX4_DECODER|DECODER_7seg|rascSaida7seg[0]~0_combout\ = ( \HEX4_DECODER|REG_4bits|DOUT\(3) & ( (\HEX4_DECODER|REG_4bits|DOUT\(0) & (!\HEX4_DECODER|REG_4bits|DOUT\(2) $ (!\HEX4_DECODER|REG_4bits|DOUT\(1)))) ) ) # ( !\HEX4_DECODER|REG_4bits|DOUT\(3) & ( 
-- (!\HEX4_DECODER|REG_4bits|DOUT\(1) & (!\HEX4_DECODER|REG_4bits|DOUT\(2) $ (!\HEX4_DECODER|REG_4bits|DOUT\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101000000000010110100000000000000101000010100000010100001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX4_DECODER|REG_4bits|ALT_INV_DOUT\(2),
	datac => \HEX4_DECODER|REG_4bits|ALT_INV_DOUT\(0),
	datad => \HEX4_DECODER|REG_4bits|ALT_INV_DOUT\(1),
	dataf => \HEX4_DECODER|REG_4bits|ALT_INV_DOUT\(3),
	combout => \HEX4_DECODER|DECODER_7seg|rascSaida7seg[0]~0_combout\);

-- Location: LABCELL_X40_Y2_N12
\HEX4_DECODER|DECODER_7seg|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX4_DECODER|DECODER_7seg|rascSaida7seg[1]~1_combout\ = ( \HEX4_DECODER|REG_4bits|DOUT\(3) & ( (!\HEX4_DECODER|REG_4bits|DOUT\(0) & (\HEX4_DECODER|REG_4bits|DOUT\(2))) # (\HEX4_DECODER|REG_4bits|DOUT\(0) & ((\HEX4_DECODER|REG_4bits|DOUT\(1)))) ) ) # ( 
-- !\HEX4_DECODER|REG_4bits|DOUT\(3) & ( (\HEX4_DECODER|REG_4bits|DOUT\(2) & (!\HEX4_DECODER|REG_4bits|DOUT\(0) $ (!\HEX4_DECODER|REG_4bits|DOUT\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100001100000000110000110000001100001111110000110000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \HEX4_DECODER|REG_4bits|ALT_INV_DOUT\(0),
	datac => \HEX4_DECODER|REG_4bits|ALT_INV_DOUT\(2),
	datad => \HEX4_DECODER|REG_4bits|ALT_INV_DOUT\(1),
	dataf => \HEX4_DECODER|REG_4bits|ALT_INV_DOUT\(3),
	combout => \HEX4_DECODER|DECODER_7seg|rascSaida7seg[1]~1_combout\);

-- Location: LABCELL_X40_Y2_N51
\HEX4_DECODER|DECODER_7seg|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX4_DECODER|DECODER_7seg|rascSaida7seg[2]~2_combout\ = ( \HEX4_DECODER|REG_4bits|DOUT\(3) & ( (\HEX4_DECODER|REG_4bits|DOUT\(2) & ((!\HEX4_DECODER|REG_4bits|DOUT\(0)) # (\HEX4_DECODER|REG_4bits|DOUT\(1)))) ) ) # ( !\HEX4_DECODER|REG_4bits|DOUT\(3) & ( 
-- (!\HEX4_DECODER|REG_4bits|DOUT\(2) & (!\HEX4_DECODER|REG_4bits|DOUT\(0) & \HEX4_DECODER|REG_4bits|DOUT\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010001000000000001000100001000100010101010100010001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX4_DECODER|REG_4bits|ALT_INV_DOUT\(2),
	datab => \HEX4_DECODER|REG_4bits|ALT_INV_DOUT\(0),
	datad => \HEX4_DECODER|REG_4bits|ALT_INV_DOUT\(1),
	dataf => \HEX4_DECODER|REG_4bits|ALT_INV_DOUT\(3),
	combout => \HEX4_DECODER|DECODER_7seg|rascSaida7seg[2]~2_combout\);

-- Location: LABCELL_X40_Y2_N42
\HEX4_DECODER|DECODER_7seg|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX4_DECODER|DECODER_7seg|rascSaida7seg[3]~3_combout\ = ( \HEX4_DECODER|REG_4bits|DOUT\(3) & ( (\HEX4_DECODER|REG_4bits|DOUT\(1) & (!\HEX4_DECODER|REG_4bits|DOUT\(2) $ (\HEX4_DECODER|REG_4bits|DOUT\(0)))) ) ) # ( !\HEX4_DECODER|REG_4bits|DOUT\(3) & ( 
-- (!\HEX4_DECODER|REG_4bits|DOUT\(2) & (!\HEX4_DECODER|REG_4bits|DOUT\(1) & \HEX4_DECODER|REG_4bits|DOUT\(0))) # (\HEX4_DECODER|REG_4bits|DOUT\(2) & (!\HEX4_DECODER|REG_4bits|DOUT\(1) $ (\HEX4_DECODER|REG_4bits|DOUT\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000010100101010100001010010100001010000001010000101000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX4_DECODER|REG_4bits|ALT_INV_DOUT\(2),
	datac => \HEX4_DECODER|REG_4bits|ALT_INV_DOUT\(1),
	datad => \HEX4_DECODER|REG_4bits|ALT_INV_DOUT\(0),
	dataf => \HEX4_DECODER|REG_4bits|ALT_INV_DOUT\(3),
	combout => \HEX4_DECODER|DECODER_7seg|rascSaida7seg[3]~3_combout\);

-- Location: LABCELL_X40_Y2_N48
\HEX4_DECODER|DECODER_7seg|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX4_DECODER|DECODER_7seg|rascSaida7seg[4]~4_combout\ = (!\HEX4_DECODER|REG_4bits|DOUT\(1) & ((!\HEX4_DECODER|REG_4bits|DOUT\(2) & (\HEX4_DECODER|REG_4bits|DOUT\(0))) # (\HEX4_DECODER|REG_4bits|DOUT\(2) & ((!\HEX4_DECODER|REG_4bits|DOUT\(3)))))) # 
-- (\HEX4_DECODER|REG_4bits|DOUT\(1) & (((\HEX4_DECODER|REG_4bits|DOUT\(0) & !\HEX4_DECODER|REG_4bits|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111001100100000011100110010000001110011001000000111001100100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX4_DECODER|REG_4bits|ALT_INV_DOUT\(2),
	datab => \HEX4_DECODER|REG_4bits|ALT_INV_DOUT\(0),
	datac => \HEX4_DECODER|REG_4bits|ALT_INV_DOUT\(1),
	datad => \HEX4_DECODER|REG_4bits|ALT_INV_DOUT\(3),
	combout => \HEX4_DECODER|DECODER_7seg|rascSaida7seg[4]~4_combout\);

-- Location: LABCELL_X40_Y2_N18
\HEX4_DECODER|DECODER_7seg|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX4_DECODER|DECODER_7seg|rascSaida7seg[5]~5_combout\ = ( \HEX4_DECODER|REG_4bits|DOUT\(3) & ( (\HEX4_DECODER|REG_4bits|DOUT\(0) & (!\HEX4_DECODER|REG_4bits|DOUT\(1) & \HEX4_DECODER|REG_4bits|DOUT\(2))) ) ) # ( !\HEX4_DECODER|REG_4bits|DOUT\(3) & ( 
-- (!\HEX4_DECODER|REG_4bits|DOUT\(0) & (\HEX4_DECODER|REG_4bits|DOUT\(1) & !\HEX4_DECODER|REG_4bits|DOUT\(2))) # (\HEX4_DECODER|REG_4bits|DOUT\(0) & ((!\HEX4_DECODER|REG_4bits|DOUT\(2)) # (\HEX4_DECODER|REG_4bits|DOUT\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100000011001111110000001100000000001100000000000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \HEX4_DECODER|REG_4bits|ALT_INV_DOUT\(0),
	datac => \HEX4_DECODER|REG_4bits|ALT_INV_DOUT\(1),
	datad => \HEX4_DECODER|REG_4bits|ALT_INV_DOUT\(2),
	dataf => \HEX4_DECODER|REG_4bits|ALT_INV_DOUT\(3),
	combout => \HEX4_DECODER|DECODER_7seg|rascSaida7seg[5]~5_combout\);

-- Location: LABCELL_X40_Y2_N21
\HEX4_DECODER|DECODER_7seg|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX4_DECODER|DECODER_7seg|rascSaida7seg[6]~6_combout\ = ( \HEX4_DECODER|REG_4bits|DOUT\(2) & ( (!\HEX4_DECODER|REG_4bits|DOUT\(3) & (\HEX4_DECODER|REG_4bits|DOUT\(0) & \HEX4_DECODER|REG_4bits|DOUT\(1))) # (\HEX4_DECODER|REG_4bits|DOUT\(3) & 
-- (!\HEX4_DECODER|REG_4bits|DOUT\(0) & !\HEX4_DECODER|REG_4bits|DOUT\(1))) ) ) # ( !\HEX4_DECODER|REG_4bits|DOUT\(2) & ( (!\HEX4_DECODER|REG_4bits|DOUT\(3) & !\HEX4_DECODER|REG_4bits|DOUT\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000000101010100000000001000100001000100100010000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX4_DECODER|REG_4bits|ALT_INV_DOUT\(3),
	datab => \HEX4_DECODER|REG_4bits|ALT_INV_DOUT\(0),
	datad => \HEX4_DECODER|REG_4bits|ALT_INV_DOUT\(1),
	dataf => \HEX4_DECODER|REG_4bits|ALT_INV_DOUT\(2),
	combout => \HEX4_DECODER|DECODER_7seg|rascSaida7seg[6]~6_combout\);

-- Location: IOIBUF_X10_Y0_N92
\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: IOIBUF_X11_Y0_N35
\KEY[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: IOIBUF_X14_Y0_N1
\KEY[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: IOIBUF_X14_Y0_N18
\KEY[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

-- Location: IOIBUF_X54_Y16_N55
\FPGA_RESET_N~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FPGA_RESET_N,
	o => \FPGA_RESET_N~input_o\);

-- Location: IOIBUF_X33_Y0_N41
\SW[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: IOIBUF_X33_Y0_N58
\SW[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: IOIBUF_X34_Y0_N1
\SW[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: IOIBUF_X34_Y0_N18
\SW[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: IOIBUF_X36_Y0_N35
\SW[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: IOIBUF_X36_Y0_N52
\SW[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: IOIBUF_X34_Y0_N52
\SW[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: IOIBUF_X34_Y0_N35
\SW[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: IOIBUF_X33_Y0_N92
\SW[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: IOIBUF_X33_Y0_N75
\SW[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);
END structure;


