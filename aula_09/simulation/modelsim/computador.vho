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

-- DATE "10/10/2021 18:54:52"

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
-- SW[0]	=>  Location: PIN_U13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_M7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_M6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AB13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- FPGA_RESET_N	=>  Location: PIN_P22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_T12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_T13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AA15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AB15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AA13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_U7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_W9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputCLKENA0_outclk\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \CPU|INSTR|PC|DOUT[8]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|INSTR|PC|DOUT[7]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM|memROM~39_combout\ : std_logic;
SIGNAL \CPU|INSTR|PC|DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM|memROM~40_combout\ : std_logic;
SIGNAL \ROM|memROM~42_combout\ : std_logic;
SIGNAL \ROM|memROM~41_combout\ : std_logic;
SIGNAL \ROM|memROM~43_combout\ : std_logic;
SIGNAL \ROM|memROM~157_combout\ : std_logic;
SIGNAL \ROM|memROM~44_combout\ : std_logic;
SIGNAL \ROM|memROM~153_combout\ : std_logic;
SIGNAL \CPU|INSTR|SOMA_CONST|Add0~13_sumout\ : std_logic;
SIGNAL \ROM|memROM~70_combout\ : std_logic;
SIGNAL \ROM|memROM~96_combout\ : std_logic;
SIGNAL \ROM|memROM~102_combout\ : std_logic;
SIGNAL \ROM|memROM~95_combout\ : std_logic;
SIGNAL \ROM|memROM~138_combout\ : std_logic;
SIGNAL \ROM|memROM~136_combout\ : std_logic;
SIGNAL \ROM|memROM~151_combout\ : std_logic;
SIGNAL \ROM|memROM~137_combout\ : std_logic;
SIGNAL \ROM|memROM~98_combout\ : std_logic;
SIGNAL \ROM|memROM~97_combout\ : std_logic;
SIGNAL \ROM|memROM~8_combout\ : std_logic;
SIGNAL \ROM|memROM~18_combout\ : std_logic;
SIGNAL \ROM|memROM~163_combout\ : std_logic;
SIGNAL \ROM|memROM~17_combout\ : std_logic;
SIGNAL \ROM|memROM~16_combout\ : std_logic;
SIGNAL \ROM|memROM~19_combout\ : std_logic;
SIGNAL \ROM|memROM~164_combout\ : std_logic;
SIGNAL \ROM|memROM~13_combout\ : std_logic;
SIGNAL \ROM|memROM~14_combout\ : std_logic;
SIGNAL \ROM|memROM~15_combout\ : std_logic;
SIGNAL \ROM|memROM~77_combout\ : std_logic;
SIGNAL \CPU|DECODER|sinais_controle~1_combout\ : std_logic;
SIGNAL \CPU|INSTR|MUX2|MUX_OUT[0]~3_combout\ : std_logic;
SIGNAL \CPU|INSTR|PC|DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|INSTR|SOMA_CONST|Add0~14\ : std_logic;
SIGNAL \CPU|INSTR|SOMA_CONST|Add0~17_sumout\ : std_logic;
SIGNAL \ROM|memROM~49_combout\ : std_logic;
SIGNAL \ROM|memROM~52_combout\ : std_logic;
SIGNAL \ROM|memROM~51_combout\ : std_logic;
SIGNAL \ROM|memROM~50_combout\ : std_logic;
SIGNAL \ROM|memROM~53_combout\ : std_logic;
SIGNAL \ROM|memROM~56_combout\ : std_logic;
SIGNAL \ROM|memROM~55_combout\ : std_logic;
SIGNAL \ROM|memROM~57_combout\ : std_logic;
SIGNAL \ROM|memROM~36_combout\ : std_logic;
SIGNAL \ROM|memROM~12_combout\ : std_logic;
SIGNAL \ROM|memROM~54_combout\ : std_logic;
SIGNAL \ROM|memROM~58_combout\ : std_logic;
SIGNAL \CPU|INSTR|MUX2|MUX_OUT[1]~4_combout\ : std_logic;
SIGNAL \CPU|INSTR|SOMA_CONST|Add0~18\ : std_logic;
SIGNAL \CPU|INSTR|SOMA_CONST|Add0~9_sumout\ : std_logic;
SIGNAL \ROM|memROM~80_combout\ : std_logic;
SIGNAL \ROM|memROM~79_combout\ : std_logic;
SIGNAL \ROM|memROM~86_combout\ : std_logic;
SIGNAL \ROM|memROM~128_combout\ : std_logic;
SIGNAL \ROM|memROM~129_combout\ : std_logic;
SIGNAL \ROM|memROM~131_combout\ : std_logic;
SIGNAL \ROM|memROM~130_combout\ : std_logic;
SIGNAL \ROM|memROM~82_combout\ : std_logic;
SIGNAL \ROM|memROM~81_combout\ : std_logic;
SIGNAL \ROM|memROM~0_combout\ : std_logic;
SIGNAL \CPU|INSTR|MUX2|MUX_OUT[2]~2_combout\ : std_logic;
SIGNAL \CPU|INSTR|SOMA_CONST|Add0~10\ : std_logic;
SIGNAL \CPU|INSTR|SOMA_CONST|Add0~25_sumout\ : std_logic;
SIGNAL \ROM|memROM~152_combout\ : std_logic;
SIGNAL \ROM|memROM~73_combout\ : std_logic;
SIGNAL \ROM|memROM~72_combout\ : std_logic;
SIGNAL \ROM|memROM~71_combout\ : std_logic;
SIGNAL \ROM|memROM~74_combout\ : std_logic;
SIGNAL \ROM|memROM~75_combout\ : std_logic;
SIGNAL \ROM|memROM~76_combout\ : std_logic;
SIGNAL \CPU|INSTR|MUX2|MUX_OUT[3]~6_combout\ : std_logic;
SIGNAL \CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|INSTR|SOMA_CONST|Add0~26\ : std_logic;
SIGNAL \CPU|INSTR|SOMA_CONST|Add0~22\ : std_logic;
SIGNAL \CPU|INSTR|SOMA_CONST|Add0~34\ : std_logic;
SIGNAL \CPU|INSTR|SOMA_CONST|Add0~29_sumout\ : std_logic;
SIGNAL \ROM|memROM~141_combout\ : std_logic;
SIGNAL \ROM|memROM~148_combout\ : std_logic;
SIGNAL \ROM|memROM~142_combout\ : std_logic;
SIGNAL \ROM|memROM~143_combout\ : std_logic;
SIGNAL \ROM|memROM~115_combout\ : std_logic;
SIGNAL \ROM|memROM~113_combout\ : std_logic;
SIGNAL \ROM|memROM~119_combout\ : std_logic;
SIGNAL \ROM|memROM~111_combout\ : std_logic;
SIGNAL \ROM|memROM~112_combout\ : std_logic;
SIGNAL \ROM|memROM~114_combout\ : std_logic;
SIGNAL \ROM|memROM~28_combout\ : std_logic;
SIGNAL \CPU|INSTR|MUX2|MUX_OUT[6]~7_combout\ : std_logic;
SIGNAL \CPU|INSTR|PC|DOUT[6]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM|memROM~120_combout\ : std_logic;
SIGNAL \ROM|memROM~121_combout\ : std_logic;
SIGNAL \ROM|memROM~127_combout\ : std_logic;
SIGNAL \ROM|memROM~144_combout\ : std_logic;
SIGNAL \ROM|memROM~145_combout\ : std_logic;
SIGNAL \ROM|memROM~147_combout\ : std_logic;
SIGNAL \ROM|memROM~146_combout\ : std_logic;
SIGNAL \ROM|memROM~123_combout\ : std_logic;
SIGNAL \ROM|memROM~122_combout\ : std_logic;
SIGNAL \ROM|memROM~45_combout\ : std_logic;
SIGNAL \CPU|INSTR|SOMA_CONST|Add0~33_sumout\ : std_logic;
SIGNAL \CPU|INSTR|MUX2|MUX_OUT[5]~8_combout\ : std_logic;
SIGNAL \ROM|memROM~160_combout\ : std_logic;
SIGNAL \ROM|memROM~159_combout\ : std_logic;
SIGNAL \ROM|memROM~161_combout\ : std_logic;
SIGNAL \ROM|memROM~162_combout\ : std_logic;
SIGNAL \ROM|memROM~21_combout\ : std_logic;
SIGNAL \ROM|memROM~20_combout\ : std_logic;
SIGNAL \ROM|memROM~22_combout\ : std_logic;
SIGNAL \ROM|memROM~23_combout\ : std_logic;
SIGNAL \ROM|memROM~78_combout\ : std_logic;
SIGNAL \CPU|LOG_DESVIO|DESV_JUMP~0_combout\ : std_logic;
SIGNAL \CPU|DECODER|Equal5~0_combout\ : std_logic;
SIGNAL \CPU|DECODER|sinais_controle~0_combout\ : std_logic;
SIGNAL \CPU|DECODER|Equal9~0_combout\ : std_logic;
SIGNAL \CPU|DECODER|OP_ULA[0]~2_combout\ : std_logic;
SIGNAL \ROM|memROM~66_combout\ : std_logic;
SIGNAL \ROM|memROM~67_combout\ : std_logic;
SIGNAL \ROM|memROM~68_combout\ : std_logic;
SIGNAL \ROM|memROM~64_combout\ : std_logic;
SIGNAL \ROM|memROM~65_combout\ : std_logic;
SIGNAL \ROM|memROM~60_combout\ : std_logic;
SIGNAL \ROM|memROM~59_combout\ : std_logic;
SIGNAL \ROM|memROM~61_combout\ : std_logic;
SIGNAL \ROM|memROM~62_combout\ : std_logic;
SIGNAL \ROM|memROM~63_combout\ : std_logic;
SIGNAL \ROM|memROM~69_combout\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \RAM|ram~795_combout\ : std_logic;
SIGNAL \ROM|memROM~158_combout\ : std_logic;
SIGNAL \ROM|memROM~33_combout\ : std_logic;
SIGNAL \ROM|memROM~32_combout\ : std_logic;
SIGNAL \ROM|memROM~34_combout\ : std_logic;
SIGNAL \ROM|memROM~35_combout\ : std_logic;
SIGNAL \ROM|memROM~37_combout\ : std_logic;
SIGNAL \ROM|memROM~38_combout\ : std_logic;
SIGNAL \RAM|process_0~0_combout\ : std_logic;
SIGNAL \RAM|ram~796_combout\ : std_logic;
SIGNAL \RAM|ram~450_q\ : std_logic;
SIGNAL \RAM|ram~735_combout\ : std_logic;
SIGNAL \RAM|ram~736_combout\ : std_logic;
SIGNAL \RAM|ram~434_q\ : std_logic;
SIGNAL \RAM|ram~739_combout\ : std_logic;
SIGNAL \RAM|ram~740_combout\ : std_logic;
SIGNAL \RAM|ram~442_q\ : std_logic;
SIGNAL \RAM|ram~803_combout\ : std_logic;
SIGNAL \RAM|ram~804_combout\ : std_logic;
SIGNAL \RAM|ram~458_q\ : std_logic;
SIGNAL \RAM|ram~564_combout\ : std_logic;
SIGNAL \RAM|ram~727_combout\ : std_logic;
SIGNAL \RAM|ram~728_combout\ : std_logic;
SIGNAL \RAM|ram~306_q\ : std_logic;
SIGNAL \RAM|ram~731_combout\ : std_logic;
SIGNAL \RAM|ram~732_combout\ : std_logic;
SIGNAL \RAM|ram~314_q\ : std_logic;
SIGNAL \RAM|ram~791_combout\ : std_logic;
SIGNAL \RAM|ram~792_combout\ : std_logic;
SIGNAL \RAM|ram~322_q\ : std_logic;
SIGNAL \RAM|ram~799_combout\ : std_logic;
SIGNAL \RAM|ram~800_combout\ : std_logic;
SIGNAL \RAM|ram~330_q\ : std_logic;
SIGNAL \RAM|ram~563_combout\ : std_logic;
SIGNAL \RAM|ram~811_combout\ : std_logic;
SIGNAL \RAM|ram~812_combout\ : std_logic;
SIGNAL \RAM|ram~514_q\ : std_logic;
SIGNAL \RAM|ram~751_combout\ : std_logic;
SIGNAL \RAM|ram~752_combout\ : std_logic;
SIGNAL \RAM|ram~498_q\ : std_logic;
SIGNAL \RAM|ram~755_combout\ : std_logic;
SIGNAL \RAM|ram~756_combout\ : std_logic;
SIGNAL \RAM|ram~506_q\ : std_logic;
SIGNAL \RAM|ram~819_combout\ : std_logic;
SIGNAL \RAM|ram~820_combout\ : std_logic;
SIGNAL \RAM|ram~522_q\ : std_logic;
SIGNAL \RAM|ram~566_combout\ : std_logic;
SIGNAL \RAM|ram~386feeder_combout\ : std_logic;
SIGNAL \RAM|ram~807_combout\ : std_logic;
SIGNAL \RAM|ram~808_combout\ : std_logic;
SIGNAL \RAM|ram~386_q\ : std_logic;
SIGNAL \RAM|ram~743_combout\ : std_logic;
SIGNAL \RAM|ram~744_combout\ : std_logic;
SIGNAL \RAM|ram~370_q\ : std_logic;
SIGNAL \RAM|ram~747_combout\ : std_logic;
SIGNAL \RAM|ram~748_combout\ : std_logic;
SIGNAL \RAM|ram~378_q\ : std_logic;
SIGNAL \RAM|ram~815_combout\ : std_logic;
SIGNAL \RAM|ram~816_combout\ : std_logic;
SIGNAL \RAM|ram~394_q\ : std_logic;
SIGNAL \RAM|ram~565_combout\ : std_logic;
SIGNAL \RAM|ram~567_combout\ : std_logic;
SIGNAL \RAM|ram~98feeder_combout\ : std_logic;
SIGNAL \RAM|ram~773_combout\ : std_logic;
SIGNAL \RAM|ram~774_combout\ : std_logic;
SIGNAL \RAM|ram~98_q\ : std_logic;
SIGNAL \RAM|ram~90feeder_combout\ : std_logic;
SIGNAL \RAM|ram~713_combout\ : std_logic;
SIGNAL \RAM|ram~714_combout\ : std_logic;
SIGNAL \RAM|ram~90_q\ : std_logic;
SIGNAL \RAM|ram~709_combout\ : std_logic;
SIGNAL \RAM|ram~710_combout\ : std_logic;
SIGNAL \RAM|ram~82_q\ : std_logic;
SIGNAL \RAM|ram~777_combout\ : std_logic;
SIGNAL \RAM|ram~778_combout\ : std_logic;
SIGNAL \RAM|ram~106_q\ : std_logic;
SIGNAL \RAM|ram~550_combout\ : std_logic;
SIGNAL \RAM|ram~721_combout\ : std_logic;
SIGNAL \RAM|ram~722_combout\ : std_logic;
SIGNAL \RAM|ram~218_q\ : std_logic;
SIGNAL \RAM|ram~210feeder_combout\ : std_logic;
SIGNAL \RAM|ram~717_combout\ : std_logic;
SIGNAL \RAM|ram~718_combout\ : std_logic;
SIGNAL \RAM|ram~210_q\ : std_logic;
SIGNAL \RAM|ram~781_combout\ : std_logic;
SIGNAL \RAM|ram~782_combout\ : std_logic;
SIGNAL \RAM|ram~226_q\ : std_logic;
SIGNAL \RAM|ram~785_combout\ : std_logic;
SIGNAL \RAM|ram~786_combout\ : std_logic;
SIGNAL \RAM|ram~234_q\ : std_logic;
SIGNAL \RAM|ram~551_combout\ : std_logic;
SIGNAL \RAM|ram~757_combout\ : std_logic;
SIGNAL \RAM|ram~758_combout\ : std_logic;
SIGNAL \RAM|ram~34_q\ : std_logic;
SIGNAL \RAM|ram~697_combout\ : std_logic;
SIGNAL \RAM|ram~698_combout\ : std_logic;
SIGNAL \RAM|ram~26_q\ : std_logic;
SIGNAL \RAM|ram~693_combout\ : std_logic;
SIGNAL \RAM|ram~694_combout\ : std_logic;
SIGNAL \RAM|ram~18_q\ : std_logic;
SIGNAL \RAM|ram~761_combout\ : std_logic;
SIGNAL \RAM|ram~762_combout\ : std_logic;
SIGNAL \RAM|ram~42_q\ : std_logic;
SIGNAL \RAM|ram~548_combout\ : std_logic;
SIGNAL \RAM|ram~146feeder_combout\ : std_logic;
SIGNAL \RAM|ram~701_combout\ : std_logic;
SIGNAL \RAM|ram~702_combout\ : std_logic;
SIGNAL \RAM|ram~146_q\ : std_logic;
SIGNAL \RAM|ram~769_combout\ : std_logic;
SIGNAL \RAM|ram~770_combout\ : std_logic;
SIGNAL \RAM|ram~170_q\ : std_logic;
SIGNAL \RAM|ram~705_combout\ : std_logic;
SIGNAL \RAM|ram~706_combout\ : std_logic;
SIGNAL \RAM|ram~154_q\ : std_logic;
SIGNAL \RAM|ram~765_combout\ : std_logic;
SIGNAL \RAM|ram~766_combout\ : std_logic;
SIGNAL \RAM|ram~162_q\ : std_logic;
SIGNAL \RAM|ram~549_combout\ : std_logic;
SIGNAL \RAM|ram~552_combout\ : std_logic;
SIGNAL \RAM|ram~711_combout\ : std_logic;
SIGNAL \RAM|ram~712_combout\ : std_logic;
SIGNAL \RAM|ram~338_q\ : std_logic;
SIGNAL \RAM|ram~775_combout\ : std_logic;
SIGNAL \RAM|ram~776_combout\ : std_logic;
SIGNAL \RAM|ram~354_q\ : std_logic;
SIGNAL \RAM|ram~719_combout\ : std_logic;
SIGNAL \RAM|ram~720_combout\ : std_logic;
SIGNAL \RAM|ram~466_q\ : std_logic;
SIGNAL \RAM|ram~783_combout\ : std_logic;
SIGNAL \RAM|ram~784_combout\ : std_logic;
SIGNAL \RAM|ram~482_q\ : std_logic;
SIGNAL \RAM|ram~555_combout\ : std_logic;
SIGNAL \RAM|ram~779_combout\ : std_logic;
SIGNAL \RAM|ram~780_combout\ : std_logic;
SIGNAL \RAM|ram~362_q\ : std_logic;
SIGNAL \RAM|ram~715_combout\ : std_logic;
SIGNAL \RAM|ram~716_combout\ : std_logic;
SIGNAL \RAM|ram~346_q\ : std_logic;
SIGNAL \RAM|ram~723_combout\ : std_logic;
SIGNAL \RAM|ram~724_combout\ : std_logic;
SIGNAL \RAM|ram~474_q\ : std_logic;
SIGNAL \RAM|ram~787_combout\ : std_logic;
SIGNAL \RAM|ram~788_combout\ : std_logic;
SIGNAL \RAM|ram~490_q\ : std_logic;
SIGNAL \RAM|ram~556_combout\ : std_logic;
SIGNAL \RAM|ram~699_combout\ : std_logic;
SIGNAL \RAM|ram~700_combout\ : std_logic;
SIGNAL \RAM|ram~282_q\ : std_logic;
SIGNAL \RAM|ram~707_combout\ : std_logic;
SIGNAL \RAM|ram~708_combout\ : std_logic;
SIGNAL \RAM|ram~410_q\ : std_logic;
SIGNAL \RAM|ram~763_combout\ : std_logic;
SIGNAL \RAM|ram~764_combout\ : std_logic;
SIGNAL \RAM|ram~298_q\ : std_logic;
SIGNAL \RAM|ram~771_combout\ : std_logic;
SIGNAL \RAM|ram~772_combout\ : std_logic;
SIGNAL \RAM|ram~426_q\ : std_logic;
SIGNAL \RAM|ram~554_combout\ : std_logic;
SIGNAL \RAM|ram~703_combout\ : std_logic;
SIGNAL \RAM|ram~704_combout\ : std_logic;
SIGNAL \RAM|ram~402_q\ : std_logic;
SIGNAL \RAM|ram~759_combout\ : std_logic;
SIGNAL \RAM|ram~760_combout\ : std_logic;
SIGNAL \RAM|ram~290_q\ : std_logic;
SIGNAL \RAM|ram~695_combout\ : std_logic;
SIGNAL \RAM|ram~696_combout\ : std_logic;
SIGNAL \RAM|ram~274_q\ : std_logic;
SIGNAL \RAM|ram~767_combout\ : std_logic;
SIGNAL \RAM|ram~768_combout\ : std_logic;
SIGNAL \RAM|ram~418_q\ : std_logic;
SIGNAL \RAM|ram~553_combout\ : std_logic;
SIGNAL \RAM|ram~557_combout\ : std_logic;
SIGNAL \RAM|ram~733_combout\ : std_logic;
SIGNAL \RAM|ram~734_combout\ : std_logic;
SIGNAL \RAM|ram~178_q\ : std_logic;
SIGNAL \RAM|ram~749_combout\ : std_logic;
SIGNAL \RAM|ram~750_combout\ : std_logic;
SIGNAL \RAM|ram~242_q\ : std_logic;
SIGNAL \RAM|ram~793_combout\ : std_logic;
SIGNAL \RAM|ram~794_combout\ : std_logic;
SIGNAL \RAM|ram~194_q\ : std_logic;
SIGNAL \RAM|ram~809_combout\ : std_logic;
SIGNAL \RAM|ram~810_combout\ : std_logic;
SIGNAL \RAM|ram~258_q\ : std_logic;
SIGNAL \RAM|ram~560_combout\ : std_logic;
SIGNAL \RAM|ram~745_combout\ : std_logic;
SIGNAL \RAM|ram~746_combout\ : std_logic;
SIGNAL \RAM|ram~122_q\ : std_logic;
SIGNAL \RAM|ram~729_combout\ : std_logic;
SIGNAL \RAM|ram~730_combout\ : std_logic;
SIGNAL \RAM|ram~58_q\ : std_logic;
SIGNAL \RAM|ram~797_combout\ : std_logic;
SIGNAL \RAM|ram~798_combout\ : std_logic;
SIGNAL \RAM|ram~74_q\ : std_logic;
SIGNAL \RAM|ram~813_combout\ : std_logic;
SIGNAL \RAM|ram~814_combout\ : std_logic;
SIGNAL \RAM|ram~138_q\ : std_logic;
SIGNAL \RAM|ram~559_combout\ : std_logic;
SIGNAL \RAM|ram~801_combout\ : std_logic;
SIGNAL \RAM|ram~802_combout\ : std_logic;
SIGNAL \RAM|ram~202_q\ : std_logic;
SIGNAL \RAM|ram~753_combout\ : std_logic;
SIGNAL \RAM|ram~754_combout\ : std_logic;
SIGNAL \RAM|ram~250_q\ : std_logic;
SIGNAL \RAM|ram~186feeder_combout\ : std_logic;
SIGNAL \RAM|ram~737_combout\ : std_logic;
SIGNAL \RAM|ram~738_combout\ : std_logic;
SIGNAL \RAM|ram~186_q\ : std_logic;
SIGNAL \RAM|ram~817_combout\ : std_logic;
SIGNAL \RAM|ram~818_combout\ : std_logic;
SIGNAL \RAM|ram~266_q\ : std_logic;
SIGNAL \RAM|ram~561_combout\ : std_logic;
SIGNAL \RAM|ram~789_combout\ : std_logic;
SIGNAL \RAM|ram~790_combout\ : std_logic;
SIGNAL \RAM|ram~66_q\ : std_logic;
SIGNAL \RAM|ram~805_combout\ : std_logic;
SIGNAL \RAM|ram~806_combout\ : std_logic;
SIGNAL \RAM|ram~130_q\ : std_logic;
SIGNAL \RAM|ram~725_combout\ : std_logic;
SIGNAL \RAM|ram~726_combout\ : std_logic;
SIGNAL \RAM|ram~50_q\ : std_logic;
SIGNAL \RAM|ram~741_combout\ : std_logic;
SIGNAL \RAM|ram~742_combout\ : std_logic;
SIGNAL \RAM|ram~114_q\ : std_logic;
SIGNAL \RAM|ram~558_combout\ : std_logic;
SIGNAL \RAM|ram~562_combout\ : std_logic;
SIGNAL \RAM|ram~568_combout\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[3]~0_combout\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \CPU|DECODER|SEL_MUX~0_combout\ : std_logic;
SIGNAL \CPU|DECODER|ENABLE_READ~0_combout\ : std_logic;
SIGNAL \READ_BUS[0]~0_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \FPGA_RESET_N~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \detectorSub1|saidaQ~0_combout\ : std_logic;
SIGNAL \detectorSub1|saidaQ~q\ : std_logic;
SIGNAL \detectorSub1|saida~combout\ : std_logic;
SIGNAL \DEBOUNCER_KEY1|DOUT~feeder_combout\ : std_logic;
SIGNAL \ADDR_510~0_combout\ : std_logic;
SIGNAL \ADDR_510~1_combout\ : std_logic;
SIGNAL \DEBOUNCER_KEY1|DOUT~q\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \detectorSub0|saidaQ~0_combout\ : std_logic;
SIGNAL \detectorSub0|saidaQ~q\ : std_logic;
SIGNAL \detectorSub0|saida~combout\ : std_logic;
SIGNAL \DEBOUNCER_KEY0|DOUT~feeder_combout\ : std_logic;
SIGNAL \ADDR_511~0_combout\ : std_logic;
SIGNAL \DEBOUNCER_KEY0|DOUT~q\ : std_logic;
SIGNAL \READ_BUS[0]~1_combout\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \READ_BUS[0]~2_combout\ : std_logic;
SIGNAL \READ_BUS[0]~4_combout\ : std_logic;
SIGNAL \ENABLE_SWR~0_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~1_sumout\ : std_logic;
SIGNAL \CPU|DECODER|OP_ULA[1]~0_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~34_cout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~1_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[0]~0_combout\ : std_logic;
SIGNAL \CPU|DECODER|OP_ULA[0]~1_combout\ : std_logic;
SIGNAL \CPU|DECODER|HAB_A~0_combout\ : std_logic;
SIGNAL \RAM|ram~151feeder_combout\ : std_logic;
SIGNAL \RAM|ram~151_q\ : std_logic;
SIGNAL \RAM|ram~143feeder_combout\ : std_logic;
SIGNAL \RAM|ram~143_q\ : std_logic;
SIGNAL \RAM|ram~407_q\ : std_logic;
SIGNAL \RAM|ram~399_q\ : std_logic;
SIGNAL \RAM|ram~528_combout\ : std_logic;
SIGNAL \RAM|ram~15_q\ : std_logic;
SIGNAL \RAM|ram~23_q\ : std_logic;
SIGNAL \RAM|ram~279_q\ : std_logic;
SIGNAL \RAM|ram~271_q\ : std_logic;
SIGNAL \RAM|ram~527_combout\ : std_logic;
SIGNAL \RAM|ram~207_q\ : std_logic;
SIGNAL \RAM|ram~463_q\ : std_logic;
SIGNAL \RAM|ram~215_q\ : std_logic;
SIGNAL \RAM|ram~471_q\ : std_logic;
SIGNAL \RAM|ram~530_combout\ : std_logic;
SIGNAL \RAM|ram~87feeder_combout\ : std_logic;
SIGNAL \RAM|ram~87_q\ : std_logic;
SIGNAL \RAM|ram~335_q\ : std_logic;
SIGNAL \RAM|ram~79_q\ : std_logic;
SIGNAL \RAM|ram~343_q\ : std_logic;
SIGNAL \RAM|ram~529_combout\ : std_logic;
SIGNAL \RAM|ram~531_combout\ : std_logic;
SIGNAL \RAM|ram~103_q\ : std_logic;
SIGNAL \RAM|ram~351_q\ : std_logic;
SIGNAL \RAM|ram~95_q\ : std_logic;
SIGNAL \RAM|ram~359_q\ : std_logic;
SIGNAL \RAM|ram~539_combout\ : std_logic;
SIGNAL \RAM|ram~231feeder_combout\ : std_logic;
SIGNAL \RAM|ram~231_q\ : std_logic;
SIGNAL \RAM|ram~479feeder_combout\ : std_logic;
SIGNAL \RAM|ram~479_q\ : std_logic;
SIGNAL \RAM|ram~223_q\ : std_logic;
SIGNAL \RAM|ram~487_q\ : std_logic;
SIGNAL \RAM|ram~540_combout\ : std_logic;
SIGNAL \RAM|ram~39_q\ : std_logic;
SIGNAL \RAM|ram~31_q\ : std_logic;
SIGNAL \RAM|ram~287_q\ : std_logic;
SIGNAL \RAM|ram~295_q\ : std_logic;
SIGNAL \RAM|ram~537_combout\ : std_logic;
SIGNAL \RAM|ram~159_q\ : std_logic;
SIGNAL \RAM|ram~415_q\ : std_logic;
SIGNAL \RAM|ram~167feeder_combout\ : std_logic;
SIGNAL \RAM|ram~167_q\ : std_logic;
SIGNAL \RAM|ram~423_q\ : std_logic;
SIGNAL \RAM|ram~538_combout\ : std_logic;
SIGNAL \RAM|ram~541_combout\ : std_logic;
SIGNAL \RAM|ram~127_q\ : std_logic;
SIGNAL \RAM|ram~255feeder_combout\ : std_logic;
SIGNAL \RAM|ram~255_q\ : std_logic;
SIGNAL \RAM|ram~383_q\ : std_logic;
SIGNAL \RAM|ram~511_q\ : std_logic;
SIGNAL \RAM|ram~544_combout\ : std_logic;
SIGNAL \RAM|ram~391_q\ : std_logic;
SIGNAL \RAM|ram~263feeder_combout\ : std_logic;
SIGNAL \RAM|ram~263_q\ : std_logic;
SIGNAL \RAM|ram~135feeder_combout\ : std_logic;
SIGNAL \RAM|ram~135_q\ : std_logic;
SIGNAL \RAM|ram~519_q\ : std_logic;
SIGNAL \RAM|ram~545_combout\ : std_logic;
SIGNAL \RAM|ram~71feeder_combout\ : std_logic;
SIGNAL \RAM|ram~71_q\ : std_logic;
SIGNAL \RAM|ram~199feeder_combout\ : std_logic;
SIGNAL \RAM|ram~199_q\ : std_logic;
SIGNAL \RAM|ram~327feeder_combout\ : std_logic;
SIGNAL \RAM|ram~327_q\ : std_logic;
SIGNAL \RAM|ram~455_q\ : std_logic;
SIGNAL \RAM|ram~543_combout\ : std_logic;
SIGNAL \RAM|ram~319feeder_combout\ : std_logic;
SIGNAL \RAM|ram~319_q\ : std_logic;
SIGNAL \RAM|ram~191feeder_combout\ : std_logic;
SIGNAL \RAM|ram~191_q\ : std_logic;
SIGNAL \RAM|ram~63_q\ : std_logic;
SIGNAL \RAM|ram~447_q\ : std_logic;
SIGNAL \RAM|ram~542_combout\ : std_logic;
SIGNAL \RAM|ram~546_combout\ : std_logic;
SIGNAL \RAM|ram~175_q\ : std_logic;
SIGNAL \RAM|ram~439feeder_combout\ : std_logic;
SIGNAL \RAM|ram~439_q\ : std_logic;
SIGNAL \RAM|ram~431_q\ : std_logic;
SIGNAL \RAM|ram~183feeder_combout\ : std_logic;
SIGNAL \RAM|ram~183_q\ : std_logic;
SIGNAL \RAM|ram~533_combout\ : std_logic;
SIGNAL \RAM|ram~119feeder_combout\ : std_logic;
SIGNAL \RAM|ram~119_q\ : std_logic;
SIGNAL \RAM|ram~367feeder_combout\ : std_logic;
SIGNAL \RAM|ram~367_q\ : std_logic;
SIGNAL \RAM|ram~111feeder_combout\ : std_logic;
SIGNAL \RAM|ram~111_q\ : std_logic;
SIGNAL \RAM|ram~375feeder_combout\ : std_logic;
SIGNAL \RAM|ram~375_q\ : std_logic;
SIGNAL \RAM|ram~534_combout\ : std_logic;
SIGNAL \RAM|ram~247_q\ : std_logic;
SIGNAL \RAM|ram~239feeder_combout\ : std_logic;
SIGNAL \RAM|ram~239_q\ : std_logic;
SIGNAL \RAM|ram~495_q\ : std_logic;
SIGNAL \RAM|ram~503_q\ : std_logic;
SIGNAL \RAM|ram~535_combout\ : std_logic;
SIGNAL \RAM|ram~55_q\ : std_logic;
SIGNAL \RAM|ram~311_q\ : std_logic;
SIGNAL \RAM|ram~47_q\ : std_logic;
SIGNAL \RAM|ram~303_q\ : std_logic;
SIGNAL \RAM|ram~532_combout\ : std_logic;
SIGNAL \RAM|ram~536_combout\ : std_logic;
SIGNAL \RAM|ram~547_combout\ : std_logic;
SIGNAL \READ_BUS[0]~3_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~2\ : std_logic;
SIGNAL \CPU|ULA1|Add0~10\ : std_logic;
SIGNAL \CPU|ULA1|Add0~13_sumout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~2\ : std_logic;
SIGNAL \CPU|ULA1|Add1~10\ : std_logic;
SIGNAL \CPU|ULA1|Add1~13_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[2]~3_combout\ : std_logic;
SIGNAL \RAM|ram~281_q\ : std_logic;
SIGNAL \RAM|ram~409_q\ : std_logic;
SIGNAL \RAM|ram~345feeder_combout\ : std_logic;
SIGNAL \RAM|ram~345_q\ : std_logic;
SIGNAL \RAM|ram~473_q\ : std_logic;
SIGNAL \RAM|ram~603_combout\ : std_logic;
SIGNAL \RAM|ram~377_q\ : std_logic;
SIGNAL \RAM|ram~441_q\ : std_logic;
SIGNAL \RAM|ram~313_q\ : std_logic;
SIGNAL \RAM|ram~505_q\ : std_logic;
SIGNAL \RAM|ram~604_combout\ : std_logic;
SIGNAL \RAM|ram~457_q\ : std_logic;
SIGNAL \RAM|ram~329_q\ : std_logic;
SIGNAL \RAM|ram~521_q\ : std_logic;
SIGNAL \RAM|ram~393_q\ : std_logic;
SIGNAL \RAM|ram~606_combout\ : std_logic;
SIGNAL \RAM|ram~425_q\ : std_logic;
SIGNAL \RAM|ram~361_q\ : std_logic;
SIGNAL \RAM|ram~297_q\ : std_logic;
SIGNAL \RAM|ram~489_q\ : std_logic;
SIGNAL \RAM|ram~605_combout\ : std_logic;
SIGNAL \RAM|ram~607_combout\ : std_logic;
SIGNAL \RAM|ram~153feeder_combout\ : std_logic;
SIGNAL \RAM|ram~153_q\ : std_logic;
SIGNAL \RAM|ram~169_q\ : std_logic;
SIGNAL \RAM|ram~185_q\ : std_logic;
SIGNAL \RAM|ram~201_q\ : std_logic;
SIGNAL \RAM|ram~599_combout\ : std_logic;
SIGNAL \RAM|ram~249_q\ : std_logic;
SIGNAL \RAM|ram~217_q\ : std_logic;
SIGNAL \RAM|ram~233feeder_combout\ : std_logic;
SIGNAL \RAM|ram~233_q\ : std_logic;
SIGNAL \RAM|ram~265_q\ : std_logic;
SIGNAL \RAM|ram~601_combout\ : std_logic;
SIGNAL \RAM|ram~25feeder_combout\ : std_logic;
SIGNAL \RAM|ram~25_q\ : std_logic;
SIGNAL \RAM|ram~41_q\ : std_logic;
SIGNAL \RAM|ram~57feeder_combout\ : std_logic;
SIGNAL \RAM|ram~57_q\ : std_logic;
SIGNAL \RAM|ram~73_q\ : std_logic;
SIGNAL \RAM|ram~598_combout\ : std_logic;
SIGNAL \RAM|ram~89feeder_combout\ : std_logic;
SIGNAL \RAM|ram~89_q\ : std_logic;
SIGNAL \RAM|ram~121_q\ : std_logic;
SIGNAL \RAM|ram~105feeder_combout\ : std_logic;
SIGNAL \RAM|ram~105_q\ : std_logic;
SIGNAL \RAM|ram~137_q\ : std_logic;
SIGNAL \RAM|ram~600_combout\ : std_logic;
SIGNAL \RAM|ram~602_combout\ : std_logic;
SIGNAL \RAM|ram~369_q\ : std_logic;
SIGNAL \RAM|ram~337_q\ : std_logic;
SIGNAL \RAM|ram~497feeder_combout\ : std_logic;
SIGNAL \RAM|ram~497_q\ : std_logic;
SIGNAL \RAM|ram~465_q\ : std_logic;
SIGNAL \RAM|ram~595_combout\ : std_logic;
SIGNAL \RAM|ram~305feeder_combout\ : std_logic;
SIGNAL \RAM|ram~305_q\ : std_logic;
SIGNAL \RAM|ram~273_q\ : std_logic;
SIGNAL \RAM|ram~401_q\ : std_logic;
SIGNAL \RAM|ram~433_q\ : std_logic;
SIGNAL \RAM|ram~593_combout\ : std_logic;
SIGNAL \RAM|ram~289_q\ : std_logic;
SIGNAL \RAM|ram~417feeder_combout\ : std_logic;
SIGNAL \RAM|ram~417_q\ : std_logic;
SIGNAL \RAM|ram~321_q\ : std_logic;
SIGNAL \RAM|ram~449_q\ : std_logic;
SIGNAL \RAM|ram~594_combout\ : std_logic;
SIGNAL \RAM|ram~353feeder_combout\ : std_logic;
SIGNAL \RAM|ram~353_q\ : std_logic;
SIGNAL \RAM|ram~481feeder_combout\ : std_logic;
SIGNAL \RAM|ram~481_q\ : std_logic;
SIGNAL \RAM|ram~385_q\ : std_logic;
SIGNAL \RAM|ram~513_q\ : std_logic;
SIGNAL \RAM|ram~596_combout\ : std_logic;
SIGNAL \RAM|ram~597_combout\ : std_logic;
SIGNAL \RAM|ram~225_q\ : std_logic;
SIGNAL \RAM|ram~193feeder_combout\ : std_logic;
SIGNAL \RAM|ram~193_q\ : std_logic;
SIGNAL \RAM|ram~161feeder_combout\ : std_logic;
SIGNAL \RAM|ram~161_q\ : std_logic;
SIGNAL \RAM|ram~257_q\ : std_logic;
SIGNAL \RAM|ram~591_combout\ : std_logic;
SIGNAL \RAM|ram~145feeder_combout\ : std_logic;
SIGNAL \RAM|ram~145_q\ : std_logic;
SIGNAL \RAM|ram~177_q\ : std_logic;
SIGNAL \RAM|ram~209_q\ : std_logic;
SIGNAL \RAM|ram~241_q\ : std_logic;
SIGNAL \RAM|ram~589_combout\ : std_logic;
SIGNAL \RAM|ram~49feeder_combout\ : std_logic;
SIGNAL \RAM|ram~49_q\ : std_logic;
SIGNAL \RAM|ram~17_q\ : std_logic;
SIGNAL \RAM|ram~81_q\ : std_logic;
SIGNAL \RAM|ram~113_q\ : std_logic;
SIGNAL \RAM|ram~588_combout\ : std_logic;
SIGNAL \RAM|ram~97_q\ : std_logic;
SIGNAL \RAM|ram~65_q\ : std_logic;
SIGNAL \RAM|ram~33feeder_combout\ : std_logic;
SIGNAL \RAM|ram~33_q\ : std_logic;
SIGNAL \RAM|ram~129_q\ : std_logic;
SIGNAL \RAM|ram~590_combout\ : std_logic;
SIGNAL \RAM|ram~592_combout\ : std_logic;
SIGNAL \RAM|ram~608_combout\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[2]~2_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~14\ : std_logic;
SIGNAL \CPU|ULA1|Add0~5_sumout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~14\ : std_logic;
SIGNAL \CPU|ULA1|Add1~5_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[3]~1_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~6\ : std_logic;
SIGNAL \CPU|ULA1|Add0~17_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[4]~4_combout\ : std_logic;
SIGNAL \RAM|ram~307_q\ : std_logic;
SIGNAL \RAM|ram~315_q\ : std_logic;
SIGNAL \RAM|ram~371_q\ : std_logic;
SIGNAL \RAM|ram~379_q\ : std_logic;
SIGNAL \RAM|ram~615_combout\ : std_logic;
SIGNAL \RAM|ram~499_q\ : std_logic;
SIGNAL \RAM|ram~507_q\ : std_logic;
SIGNAL \RAM|ram~435_q\ : std_logic;
SIGNAL \RAM|ram~443_q\ : std_logic;
SIGNAL \RAM|ram~617_combout\ : std_logic;
SIGNAL \RAM|ram~403_q\ : std_logic;
SIGNAL \RAM|ram~411feeder_combout\ : std_logic;
SIGNAL \RAM|ram~411_q\ : std_logic;
SIGNAL \RAM|ram~467_q\ : std_logic;
SIGNAL \RAM|ram~475_q\ : std_logic;
SIGNAL \RAM|ram~616_combout\ : std_logic;
SIGNAL \RAM|ram~339feeder_combout\ : std_logic;
SIGNAL \RAM|ram~339_q\ : std_logic;
SIGNAL \RAM|ram~275_q\ : std_logic;
SIGNAL \RAM|ram~283_q\ : std_logic;
SIGNAL \RAM|ram~347_q\ : std_logic;
SIGNAL \RAM|ram~614_combout\ : std_logic;
SIGNAL \RAM|ram~618_combout\ : std_logic;
SIGNAL \RAM|ram~51feeder_combout\ : std_logic;
SIGNAL \RAM|ram~51_q\ : std_logic;
SIGNAL \RAM|ram~27_q\ : std_logic;
SIGNAL \RAM|ram~19_q\ : std_logic;
SIGNAL \RAM|ram~59_q\ : std_logic;
SIGNAL \RAM|ram~609_combout\ : std_logic;
SIGNAL \RAM|ram~219_q\ : std_logic;
SIGNAL \RAM|ram~211_q\ : std_logic;
SIGNAL \RAM|ram~243_q\ : std_logic;
SIGNAL \RAM|ram~251_q\ : std_logic;
SIGNAL \RAM|ram~612_combout\ : std_logic;
SIGNAL \RAM|ram~83feeder_combout\ : std_logic;
SIGNAL \RAM|ram~83_q\ : std_logic;
SIGNAL \RAM|ram~91_q\ : std_logic;
SIGNAL \RAM|ram~115_q\ : std_logic;
SIGNAL \RAM|ram~123_q\ : std_logic;
SIGNAL \RAM|ram~611_combout\ : std_logic;
SIGNAL \RAM|ram~147_q\ : std_logic;
SIGNAL \RAM|ram~179_q\ : std_logic;
SIGNAL \RAM|ram~155feeder_combout\ : std_logic;
SIGNAL \RAM|ram~155_q\ : std_logic;
SIGNAL \RAM|ram~187_q\ : std_logic;
SIGNAL \RAM|ram~610_combout\ : std_logic;
SIGNAL \RAM|ram~613_combout\ : std_logic;
SIGNAL \RAM|ram~515_q\ : std_logic;
SIGNAL \RAM|ram~483_q\ : std_logic;
SIGNAL \RAM|ram~491_q\ : std_logic;
SIGNAL \RAM|ram~523_q\ : std_logic;
SIGNAL \RAM|ram~627_combout\ : std_logic;
SIGNAL \RAM|ram~363_q\ : std_logic;
SIGNAL \RAM|ram~387_q\ : std_logic;
SIGNAL \RAM|ram~355_q\ : std_logic;
SIGNAL \RAM|ram~395_q\ : std_logic;
SIGNAL \RAM|ram~626_combout\ : std_logic;
SIGNAL \RAM|ram~419_q\ : std_logic;
SIGNAL \RAM|ram~427feeder_combout\ : std_logic;
SIGNAL \RAM|ram~427_q\ : std_logic;
SIGNAL \RAM|ram~451_q\ : std_logic;
SIGNAL \RAM|ram~459_q\ : std_logic;
SIGNAL \RAM|ram~625_combout\ : std_logic;
SIGNAL \RAM|ram~291feeder_combout\ : std_logic;
SIGNAL \RAM|ram~291_q\ : std_logic;
SIGNAL \RAM|ram~323feeder_combout\ : std_logic;
SIGNAL \RAM|ram~323_q\ : std_logic;
SIGNAL \RAM|ram~299feeder_combout\ : std_logic;
SIGNAL \RAM|ram~299_q\ : std_logic;
SIGNAL \RAM|ram~331_q\ : std_logic;
SIGNAL \RAM|ram~624_combout\ : std_logic;
SIGNAL \RAM|ram~628_combout\ : std_logic;
SIGNAL \RAM|ram~67_q\ : std_logic;
SIGNAL \RAM|ram~195_q\ : std_logic;
SIGNAL \RAM|ram~75_q\ : std_logic;
SIGNAL \RAM|ram~203_q\ : std_logic;
SIGNAL \RAM|ram~620_combout\ : std_logic;
SIGNAL \RAM|ram~227_q\ : std_logic;
SIGNAL \RAM|ram~99feeder_combout\ : std_logic;
SIGNAL \RAM|ram~99_q\ : std_logic;
SIGNAL \RAM|ram~107_q\ : std_logic;
SIGNAL \RAM|ram~235_q\ : std_logic;
SIGNAL \RAM|ram~621_combout\ : std_logic;
SIGNAL \RAM|ram~139_q\ : std_logic;
SIGNAL \RAM|ram~259_q\ : std_logic;
SIGNAL \RAM|ram~131_q\ : std_logic;
SIGNAL \RAM|ram~267_q\ : std_logic;
SIGNAL \RAM|ram~622_combout\ : std_logic;
SIGNAL \RAM|ram~35_q\ : std_logic;
SIGNAL \RAM|ram~163_q\ : std_logic;
SIGNAL \RAM|ram~43_q\ : std_logic;
SIGNAL \RAM|ram~171_q\ : std_logic;
SIGNAL \RAM|ram~619_combout\ : std_logic;
SIGNAL \RAM|ram~623_combout\ : std_logic;
SIGNAL \RAM|ram~629_combout\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[4]~3_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~6\ : std_logic;
SIGNAL \CPU|ULA1|Add1~17_sumout\ : std_logic;
SIGNAL \CPU|FLAG|DOUT~1_combout\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \RAM|ram~60_q\ : std_logic;
SIGNAL \RAM|ram~28feeder_combout\ : std_logic;
SIGNAL \RAM|ram~28_q\ : std_logic;
SIGNAL \RAM|ram~44_q\ : std_logic;
SIGNAL \RAM|ram~76_q\ : std_logic;
SIGNAL \RAM|ram~640_combout\ : std_logic;
SIGNAL \RAM|ram~252feeder_combout\ : std_logic;
SIGNAL \RAM|ram~252_q\ : std_logic;
SIGNAL \RAM|ram~220_q\ : std_logic;
SIGNAL \RAM|ram~236_q\ : std_logic;
SIGNAL \RAM|ram~268_q\ : std_logic;
SIGNAL \RAM|ram~643_combout\ : std_logic;
SIGNAL \RAM|ram~124_q\ : std_logic;
SIGNAL \RAM|ram~92_q\ : std_logic;
SIGNAL \RAM|ram~108_q\ : std_logic;
SIGNAL \RAM|ram~140_q\ : std_logic;
SIGNAL \RAM|ram~642_combout\ : std_logic;
SIGNAL \RAM|ram~172_q\ : std_logic;
SIGNAL \RAM|ram~188feeder_combout\ : std_logic;
SIGNAL \RAM|ram~188_q\ : std_logic;
SIGNAL \RAM|ram~156feeder_combout\ : std_logic;
SIGNAL \RAM|ram~156_q\ : std_logic;
SIGNAL \RAM|ram~204_q\ : std_logic;
SIGNAL \RAM|ram~641_combout\ : std_logic;
SIGNAL \RAM|ram~644_combout\ : std_logic;
SIGNAL \RAM|ram~476_q\ : std_logic;
SIGNAL \RAM|ram~444feeder_combout\ : std_logic;
SIGNAL \RAM|ram~444_q\ : std_logic;
SIGNAL \RAM|ram~412_q\ : std_logic;
SIGNAL \RAM|ram~508_q\ : std_logic;
SIGNAL \RAM|ram~646_combout\ : std_logic;
SIGNAL \RAM|ram~428feeder_combout\ : std_logic;
SIGNAL \RAM|ram~428_q\ : std_logic;
SIGNAL \RAM|ram~492_q\ : std_logic;
SIGNAL \RAM|ram~460feeder_combout\ : std_logic;
SIGNAL \RAM|ram~460_q\ : std_logic;
SIGNAL \RAM|ram~524_q\ : std_logic;
SIGNAL \RAM|ram~648_combout\ : std_logic;
SIGNAL \RAM|ram~316_q\ : std_logic;
SIGNAL \RAM|ram~284_q\ : std_logic;
SIGNAL \RAM|ram~348_q\ : std_logic;
SIGNAL \RAM|ram~380_q\ : std_logic;
SIGNAL \RAM|ram~645_combout\ : std_logic;
SIGNAL \RAM|ram~332_q\ : std_logic;
SIGNAL \RAM|ram~364_q\ : std_logic;
SIGNAL \RAM|ram~300_q\ : std_logic;
SIGNAL \RAM|ram~396_q\ : std_logic;
SIGNAL \RAM|ram~647_combout\ : std_logic;
SIGNAL \RAM|ram~649_combout\ : std_logic;
SIGNAL \RAM|ram~212_q\ : std_logic;
SIGNAL \RAM|ram~228_q\ : std_logic;
SIGNAL \RAM|ram~244_q\ : std_logic;
SIGNAL \RAM|ram~260_q\ : std_logic;
SIGNAL \RAM|ram~633_combout\ : std_logic;
SIGNAL \RAM|ram~180_q\ : std_logic;
SIGNAL \RAM|ram~148_q\ : std_logic;
SIGNAL \RAM|ram~164_q\ : std_logic;
SIGNAL \RAM|ram~196_q\ : std_logic;
SIGNAL \RAM|ram~631_combout\ : std_logic;
SIGNAL \RAM|ram~116_q\ : std_logic;
SIGNAL \RAM|ram~100feeder_combout\ : std_logic;
SIGNAL \RAM|ram~100_q\ : std_logic;
SIGNAL \RAM|ram~84_q\ : std_logic;
SIGNAL \RAM|ram~132_q\ : std_logic;
SIGNAL \RAM|ram~632_combout\ : std_logic;
SIGNAL \RAM|ram~36_q\ : std_logic;
SIGNAL \RAM|ram~52feeder_combout\ : std_logic;
SIGNAL \RAM|ram~52_q\ : std_logic;
SIGNAL \RAM|ram~20feeder_combout\ : std_logic;
SIGNAL \RAM|ram~20_q\ : std_logic;
SIGNAL \RAM|ram~68_q\ : std_logic;
SIGNAL \RAM|ram~630_combout\ : std_logic;
SIGNAL \RAM|ram~634_combout\ : std_logic;
SIGNAL \RAM|ram~516_q\ : std_logic;
SIGNAL \RAM|ram~388_q\ : std_logic;
SIGNAL \RAM|ram~484_q\ : std_logic;
SIGNAL \RAM|ram~356feeder_combout\ : std_logic;
SIGNAL \RAM|ram~356_q\ : std_logic;
SIGNAL \RAM|ram~638_combout\ : std_logic;
SIGNAL \RAM|ram~468_q\ : std_logic;
SIGNAL \RAM|ram~372feeder_combout\ : std_logic;
SIGNAL \RAM|ram~372_q\ : std_logic;
SIGNAL \RAM|ram~340_q\ : std_logic;
SIGNAL \RAM|ram~500_q\ : std_logic;
SIGNAL \RAM|ram~637_combout\ : std_logic;
SIGNAL \RAM|ram~308_q\ : std_logic;
SIGNAL \RAM|ram~404_q\ : std_logic;
SIGNAL \RAM|ram~276_q\ : std_logic;
SIGNAL \RAM|ram~436_q\ : std_logic;
SIGNAL \RAM|ram~635_combout\ : std_logic;
SIGNAL \RAM|ram~292_q\ : std_logic;
SIGNAL \RAM|ram~420_q\ : std_logic;
SIGNAL \RAM|ram~324_q\ : std_logic;
SIGNAL \RAM|ram~452_q\ : std_logic;
SIGNAL \RAM|ram~636_combout\ : std_logic;
SIGNAL \RAM|ram~639_combout\ : std_logic;
SIGNAL \RAM|ram~650_combout\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[5]~4_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~18\ : std_logic;
SIGNAL \CPU|ULA1|Add0~21_sumout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~18\ : std_logic;
SIGNAL \CPU|ULA1|Add1~21_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[5]~5_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~22\ : std_logic;
SIGNAL \CPU|ULA1|Add0~25_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[6]~6_combout\ : std_logic;
SIGNAL \RAM|ram~285_q\ : std_logic;
SIGNAL \RAM|ram~413_q\ : std_logic;
SIGNAL \RAM|ram~301feeder_combout\ : std_logic;
SIGNAL \RAM|ram~301_q\ : std_logic;
SIGNAL \RAM|ram~429_q\ : std_logic;
SIGNAL \RAM|ram~657_combout\ : std_logic;
SIGNAL \RAM|ram~277_q\ : std_logic;
SIGNAL \RAM|ram~293_q\ : std_logic;
SIGNAL \RAM|ram~405_q\ : std_logic;
SIGNAL \RAM|ram~421_q\ : std_logic;
SIGNAL \RAM|ram~656_combout\ : std_logic;
SIGNAL \RAM|ram~349feeder_combout\ : std_logic;
SIGNAL \RAM|ram~349_q\ : std_logic;
SIGNAL \RAM|ram~477_q\ : std_logic;
SIGNAL \RAM|ram~365_q\ : std_logic;
SIGNAL \RAM|ram~493_q\ : std_logic;
SIGNAL \RAM|ram~659_combout\ : std_logic;
SIGNAL \RAM|ram~357feeder_combout\ : std_logic;
SIGNAL \RAM|ram~357_q\ : std_logic;
SIGNAL \RAM|ram~341feeder_combout\ : std_logic;
SIGNAL \RAM|ram~341_q\ : std_logic;
SIGNAL \RAM|ram~469_q\ : std_logic;
SIGNAL \RAM|ram~485_q\ : std_logic;
SIGNAL \RAM|ram~658_combout\ : std_logic;
SIGNAL \RAM|ram~660_combout\ : std_logic;
SIGNAL \RAM|ram~461_q\ : std_logic;
SIGNAL \RAM|ram~525_q\ : std_logic;
SIGNAL \RAM|ram~509_q\ : std_logic;
SIGNAL \RAM|ram~445_q\ : std_logic;
SIGNAL \RAM|ram~669_combout\ : std_logic;
SIGNAL \RAM|ram~381_q\ : std_logic;
SIGNAL \RAM|ram~333_q\ : std_logic;
SIGNAL \RAM|ram~317_q\ : std_logic;
SIGNAL \RAM|ram~397_q\ : std_logic;
SIGNAL \RAM|ram~667_combout\ : std_logic;
SIGNAL \RAM|ram~453_q\ : std_logic;
SIGNAL \RAM|ram~437_q\ : std_logic;
SIGNAL \RAM|ram~501_q\ : std_logic;
SIGNAL \RAM|ram~517_q\ : std_logic;
SIGNAL \RAM|ram~668_combout\ : std_logic;
SIGNAL \RAM|ram~325_q\ : std_logic;
SIGNAL \RAM|ram~309_q\ : std_logic;
SIGNAL \RAM|ram~373_q\ : std_logic;
SIGNAL \RAM|ram~389_q\ : std_logic;
SIGNAL \RAM|ram~666_combout\ : std_logic;
SIGNAL \RAM|ram~670_combout\ : std_logic;
SIGNAL \RAM|ram~189_q\ : std_logic;
SIGNAL \RAM|ram~181_q\ : std_logic;
SIGNAL \RAM|ram~197_q\ : std_logic;
SIGNAL \RAM|ram~205_q\ : std_logic;
SIGNAL \RAM|ram~662_combout\ : std_logic;
SIGNAL \RAM|ram~133_q\ : std_logic;
SIGNAL \RAM|ram~125_q\ : std_logic;
SIGNAL \RAM|ram~117_q\ : std_logic;
SIGNAL \RAM|ram~141_q\ : std_logic;
SIGNAL \RAM|ram~663_combout\ : std_logic;
SIGNAL \RAM|ram~53_q\ : std_logic;
SIGNAL \RAM|ram~61_q\ : std_logic;
SIGNAL \RAM|ram~69_q\ : std_logic;
SIGNAL \RAM|ram~77_q\ : std_logic;
SIGNAL \RAM|ram~661_combout\ : std_logic;
SIGNAL \RAM|ram~261feeder_combout\ : std_logic;
SIGNAL \RAM|ram~261_q\ : std_logic;
SIGNAL \RAM|ram~245feeder_combout\ : std_logic;
SIGNAL \RAM|ram~245_q\ : std_logic;
SIGNAL \RAM|ram~253_q\ : std_logic;
SIGNAL \RAM|ram~269_q\ : std_logic;
SIGNAL \RAM|ram~664_combout\ : std_logic;
SIGNAL \RAM|ram~665_combout\ : std_logic;
SIGNAL \RAM|ram~93_q\ : std_logic;
SIGNAL \RAM|ram~29feeder_combout\ : std_logic;
SIGNAL \RAM|ram~29_q\ : std_logic;
SIGNAL \RAM|ram~45feeder_combout\ : std_logic;
SIGNAL \RAM|ram~45_q\ : std_logic;
SIGNAL \RAM|ram~109_q\ : std_logic;
SIGNAL \RAM|ram~652_combout\ : std_logic;
SIGNAL \RAM|ram~85_q\ : std_logic;
SIGNAL \RAM|ram~21_q\ : std_logic;
SIGNAL \RAM|ram~37feeder_combout\ : std_logic;
SIGNAL \RAM|ram~37_q\ : std_logic;
SIGNAL \RAM|ram~101_q\ : std_logic;
SIGNAL \RAM|ram~651_combout\ : std_logic;
SIGNAL \RAM|ram~149_q\ : std_logic;
SIGNAL \RAM|ram~213feeder_combout\ : std_logic;
SIGNAL \RAM|ram~213_q\ : std_logic;
SIGNAL \RAM|ram~165_q\ : std_logic;
SIGNAL \RAM|ram~229_q\ : std_logic;
SIGNAL \RAM|ram~653_combout\ : std_logic;
SIGNAL \RAM|ram~237_q\ : std_logic;
SIGNAL \RAM|ram~221_q\ : std_logic;
SIGNAL \RAM|ram~157feeder_combout\ : std_logic;
SIGNAL \RAM|ram~157_q\ : std_logic;
SIGNAL \RAM|ram~173feeder_combout\ : std_logic;
SIGNAL \RAM|ram~173_q\ : std_logic;
SIGNAL \RAM|ram~654_combout\ : std_logic;
SIGNAL \RAM|ram~655_combout\ : std_logic;
SIGNAL \RAM|ram~671_combout\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[6]~5_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~22\ : std_logic;
SIGNAL \CPU|ULA1|Add1~25_sumout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~9_sumout\ : std_logic;
SIGNAL \CPU|FLAG|DOUT~2_combout\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \CPU|ULA1|Add0~26\ : std_logic;
SIGNAL \CPU|ULA1|Add0~29_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[7]~7_combout\ : std_logic;
SIGNAL \RAM|ram~374_q\ : std_logic;
SIGNAL \RAM|ram~342_q\ : std_logic;
SIGNAL \RAM|ram~310_q\ : std_logic;
SIGNAL \RAM|ram~278_q\ : std_logic;
SIGNAL \RAM|ram~682_combout\ : std_logic;
SIGNAL \RAM|ram~478_q\ : std_logic;
SIGNAL \RAM|ram~446_q\ : std_logic;
SIGNAL \RAM|ram~414feeder_combout\ : std_logic;
SIGNAL \RAM|ram~414_q\ : std_logic;
SIGNAL \RAM|ram~510_q\ : std_logic;
SIGNAL \RAM|ram~685_combout\ : std_logic;
SIGNAL \RAM|ram~286_q\ : std_logic;
SIGNAL \RAM|ram~382_q\ : std_logic;
SIGNAL \RAM|ram~350_q\ : std_logic;
SIGNAL \RAM|ram~318_q\ : std_logic;
SIGNAL \RAM|ram~683_combout\ : std_logic;
SIGNAL \RAM|ram~470_q\ : std_logic;
SIGNAL \RAM|ram~406_q\ : std_logic;
SIGNAL \RAM|ram~438_q\ : std_logic;
SIGNAL \RAM|ram~502_q\ : std_logic;
SIGNAL \RAM|ram~684_combout\ : std_logic;
SIGNAL \RAM|ram~686_combout\ : std_logic;
SIGNAL \RAM|ram~302_q\ : std_logic;
SIGNAL \RAM|ram~294feeder_combout\ : std_logic;
SIGNAL \RAM|ram~294_q\ : std_logic;
SIGNAL \RAM|ram~422_q\ : std_logic;
SIGNAL \RAM|ram~430_q\ : std_logic;
SIGNAL \RAM|ram~687_combout\ : std_logic;
SIGNAL \RAM|ram~518_q\ : std_logic;
SIGNAL \RAM|ram~398feeder_combout\ : std_logic;
SIGNAL \RAM|ram~398_q\ : std_logic;
SIGNAL \RAM|ram~390_q\ : std_logic;
SIGNAL \RAM|ram~526_q\ : std_logic;
SIGNAL \RAM|ram~690_combout\ : std_logic;
SIGNAL \RAM|ram~334_q\ : std_logic;
SIGNAL \RAM|ram~326_q\ : std_logic;
SIGNAL \RAM|ram~454_q\ : std_logic;
SIGNAL \RAM|ram~462_q\ : std_logic;
SIGNAL \RAM|ram~688_combout\ : std_logic;
SIGNAL \RAM|ram~486feeder_combout\ : std_logic;
SIGNAL \RAM|ram~486_q\ : std_logic;
SIGNAL \RAM|ram~358feeder_combout\ : std_logic;
SIGNAL \RAM|ram~358_q\ : std_logic;
SIGNAL \RAM|ram~366_q\ : std_logic;
SIGNAL \RAM|ram~494_q\ : std_logic;
SIGNAL \RAM|ram~689_combout\ : std_logic;
SIGNAL \RAM|ram~691_combout\ : std_logic;
SIGNAL \RAM|ram~206_q\ : std_logic;
SIGNAL \RAM|ram~78_q\ : std_logic;
SIGNAL \RAM|ram~198feeder_combout\ : std_logic;
SIGNAL \RAM|ram~198_q\ : std_logic;
SIGNAL \RAM|ram~70_q\ : std_logic;
SIGNAL \RAM|ram~678_combout\ : std_logic;
SIGNAL \RAM|ram~262_q\ : std_logic;
SIGNAL \RAM|ram~134_q\ : std_logic;
SIGNAL \RAM|ram~142_q\ : std_logic;
SIGNAL \RAM|ram~270_q\ : std_logic;
SIGNAL \RAM|ram~680_combout\ : std_logic;
SIGNAL \RAM|ram~110_q\ : std_logic;
SIGNAL \RAM|ram~230_q\ : std_logic;
SIGNAL \RAM|ram~102_q\ : std_logic;
SIGNAL \RAM|ram~238_q\ : std_logic;
SIGNAL \RAM|ram~679_combout\ : std_logic;
SIGNAL \RAM|ram~46_q\ : std_logic;
SIGNAL \RAM|ram~38_q\ : std_logic;
SIGNAL \RAM|ram~166feeder_combout\ : std_logic;
SIGNAL \RAM|ram~166_q\ : std_logic;
SIGNAL \RAM|ram~174_q\ : std_logic;
SIGNAL \RAM|ram~677_combout\ : std_logic;
SIGNAL \RAM|ram~681_combout\ : std_logic;
SIGNAL \RAM|ram~118_q\ : std_logic;
SIGNAL \RAM|ram~86feeder_combout\ : std_logic;
SIGNAL \RAM|ram~86_q\ : std_logic;
SIGNAL \RAM|ram~214_q\ : std_logic;
SIGNAL \RAM|ram~246_q\ : std_logic;
SIGNAL \RAM|ram~674_combout\ : std_logic;
SIGNAL \RAM|ram~222_q\ : std_logic;
SIGNAL \RAM|ram~126feeder_combout\ : std_logic;
SIGNAL \RAM|ram~126_q\ : std_logic;
SIGNAL \RAM|ram~94_q\ : std_logic;
SIGNAL \RAM|ram~254_q\ : std_logic;
SIGNAL \RAM|ram~675_combout\ : std_logic;
SIGNAL \RAM|ram~150_q\ : std_logic;
SIGNAL \RAM|ram~22_q\ : std_logic;
SIGNAL \RAM|ram~54feeder_combout\ : std_logic;
SIGNAL \RAM|ram~54_q\ : std_logic;
SIGNAL \RAM|ram~182_q\ : std_logic;
SIGNAL \RAM|ram~672_combout\ : std_logic;
SIGNAL \RAM|ram~158feeder_combout\ : std_logic;
SIGNAL \RAM|ram~158_q\ : std_logic;
SIGNAL \RAM|ram~62_q\ : std_logic;
SIGNAL \RAM|ram~30_q\ : std_logic;
SIGNAL \RAM|ram~190_q\ : std_logic;
SIGNAL \RAM|ram~673_combout\ : std_logic;
SIGNAL \RAM|ram~676_combout\ : std_logic;
SIGNAL \RAM|ram~692_combout\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[7]~6_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~26\ : std_logic;
SIGNAL \CPU|ULA1|Add1~29_sumout\ : std_logic;
SIGNAL \CPU|FLAG|DOUT~0_combout\ : std_logic;
SIGNAL \CPU|FLAG|DOUT~q\ : std_logic;
SIGNAL \CPU|INSTR|MUX2|Equal2~0_combout\ : std_logic;
SIGNAL \CPU|INSTR|SOMA_CONST|Add0~30\ : std_logic;
SIGNAL \CPU|INSTR|SOMA_CONST|Add0~1_sumout\ : std_logic;
SIGNAL \CPU|INSTR|MUX2|MUX_OUT[7]~0_combout\ : std_logic;
SIGNAL \CPU|INSTR|SOMA_CONST|Add0~2\ : std_logic;
SIGNAL \CPU|INSTR|SOMA_CONST|Add0~5_sumout\ : std_logic;
SIGNAL \CPU|INSTR|MUX2|MUX_OUT[8]~1_combout\ : std_logic;
SIGNAL \ROM|memROM~88_combout\ : std_logic;
SIGNAL \ROM|memROM~94_combout\ : std_logic;
SIGNAL \ROM|memROM~87_combout\ : std_logic;
SIGNAL \ROM|memROM~133_combout\ : std_logic;
SIGNAL \ROM|memROM~135_combout\ : std_logic;
SIGNAL \ROM|memROM~132_combout\ : std_logic;
SIGNAL \ROM|memROM~134_combout\ : std_logic;
SIGNAL \ROM|memROM~90_combout\ : std_logic;
SIGNAL \ROM|memROM~89_combout\ : std_logic;
SIGNAL \ROM|memROM~4_combout\ : std_logic;
SIGNAL \CPU|INSTR|MUX2|Equal1~0_combout\ : std_logic;
SIGNAL \CPU|INSTR|SOMA_CONST|Add0~21_sumout\ : std_logic;
SIGNAL \CPU|INSTR|MUX2|MUX_OUT[4]~5_combout\ : std_logic;
SIGNAL \CPU|INSTR|PC|DOUT[4]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM|memROM~104_combout\ : std_logic;
SIGNAL \ROM|memROM~103_combout\ : std_logic;
SIGNAL \ROM|memROM~110_combout\ : std_logic;
SIGNAL \ROM|memROM~150_combout\ : std_logic;
SIGNAL \ROM|memROM~149_combout\ : std_logic;
SIGNAL \ROM|memROM~139_combout\ : std_logic;
SIGNAL \ROM|memROM~140_combout\ : std_logic;
SIGNAL \ROM|memROM~106_combout\ : std_logic;
SIGNAL \ROM|memROM~105_combout\ : std_logic;
SIGNAL \ROM|memROM~24_combout\ : std_logic;
SIGNAL \ENABLE_SWR~1_combout\ : std_logic;
SIGNAL \ENABLE_SWR~2_combout\ : std_logic;
SIGNAL \RAM|ram~256feeder_combout\ : std_logic;
SIGNAL \RAM|ram~256_q\ : std_logic;
SIGNAL \RAM|ram~224_q\ : std_logic;
SIGNAL \RAM|ram~480_q\ : std_logic;
SIGNAL \RAM|ram~512_q\ : std_logic;
SIGNAL \RAM|ram~582_combout\ : std_logic;
SIGNAL \RAM|ram~240_q\ : std_logic;
SIGNAL \RAM|ram~496_q\ : std_logic;
SIGNAL \RAM|ram~208_q\ : std_logic;
SIGNAL \RAM|ram~464_q\ : std_logic;
SIGNAL \RAM|ram~581_combout\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[1]~8_combout\ : std_logic;
SIGNAL \RAM|ram~416_q\ : std_logic;
SIGNAL \RAM|ram~160feeder_combout\ : std_logic;
SIGNAL \RAM|ram~160_q\ : std_logic;
SIGNAL \RAM|ram~192_q\ : std_logic;
SIGNAL \RAM|ram~448_q\ : std_logic;
SIGNAL \RAM|ram~580_combout\ : std_logic;
SIGNAL \RAM|ram~144_q\ : std_logic;
SIGNAL \RAM|ram~400_q\ : std_logic;
SIGNAL \RAM|ram~176_q\ : std_logic;
SIGNAL \RAM|ram~432_q\ : std_logic;
SIGNAL \RAM|ram~579_combout\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[1]~9_combout\ : std_logic;
SIGNAL \RAM|ram~48_q\ : std_logic;
SIGNAL \RAM|ram~304_q\ : std_logic;
SIGNAL \RAM|ram~64_q\ : std_logic;
SIGNAL \RAM|ram~320_q\ : std_logic;
SIGNAL \RAM|ram~570_combout\ : std_logic;
SIGNAL \RAM|ram~96feeder_combout\ : std_logic;
SIGNAL \RAM|ram~96_q\ : std_logic;
SIGNAL \RAM|ram~336_q\ : std_logic;
SIGNAL \RAM|ram~80_q\ : std_logic;
SIGNAL \RAM|ram~352_q\ : std_logic;
SIGNAL \RAM|ram~571_combout\ : std_logic;
SIGNAL \RAM|ram~272_q\ : std_logic;
SIGNAL \RAM|ram~16_q\ : std_logic;
SIGNAL \RAM|ram~32_q\ : std_logic;
SIGNAL \RAM|ram~288_q\ : std_logic;
SIGNAL \RAM|ram~569_combout\ : std_logic;
SIGNAL \RAM|ram~112_q\ : std_logic;
SIGNAL \RAM|ram~128_q\ : std_logic;
SIGNAL \RAM|ram~368_q\ : std_logic;
SIGNAL \RAM|ram~384_q\ : std_logic;
SIGNAL \RAM|ram~572_combout\ : std_logic;
SIGNAL \RAM|ram~573_combout\ : std_logic;
SIGNAL \RAM|ram~248_q\ : std_logic;
SIGNAL \RAM|ram~504_q\ : std_logic;
SIGNAL \RAM|ram~264_q\ : std_logic;
SIGNAL \RAM|ram~520_q\ : std_logic;
SIGNAL \RAM|ram~586_combout\ : std_logic;
SIGNAL \RAM|ram~472_q\ : std_logic;
SIGNAL \RAM|ram~232feeder_combout\ : std_logic;
SIGNAL \RAM|ram~232_q\ : std_logic;
SIGNAL \RAM|ram~216_q\ : std_logic;
SIGNAL \RAM|ram~488_q\ : std_logic;
SIGNAL \RAM|ram~585_combout\ : std_logic;
SIGNAL \RAM|ram~184_q\ : std_logic;
SIGNAL \RAM|ram~440_q\ : std_logic;
SIGNAL \RAM|ram~200_q\ : std_logic;
SIGNAL \RAM|ram~456_q\ : std_logic;
SIGNAL \RAM|ram~584_combout\ : std_logic;
SIGNAL \RAM|ram~168_q\ : std_logic;
SIGNAL \RAM|ram~152_q\ : std_logic;
SIGNAL \RAM|ram~408_q\ : std_logic;
SIGNAL \RAM|ram~424_q\ : std_logic;
SIGNAL \RAM|ram~583_combout\ : std_logic;
SIGNAL \RAM|ram~587_combout\ : std_logic;
SIGNAL \RAM|ram~392_q\ : std_logic;
SIGNAL \RAM|ram~72_q\ : std_logic;
SIGNAL \RAM|ram~136_q\ : std_logic;
SIGNAL \RAM|ram~328_q\ : std_logic;
SIGNAL \RAM|ram~577_combout\ : std_logic;
SIGNAL \RAM|ram~104_q\ : std_logic;
SIGNAL \RAM|ram~296_q\ : std_logic;
SIGNAL \RAM|ram~40_q\ : std_logic;
SIGNAL \RAM|ram~360_q\ : std_logic;
SIGNAL \RAM|ram~576_combout\ : std_logic;
SIGNAL \RAM|ram~24_q\ : std_logic;
SIGNAL \RAM|ram~280_q\ : std_logic;
SIGNAL \RAM|ram~88_q\ : std_logic;
SIGNAL \RAM|ram~344_q\ : std_logic;
SIGNAL \RAM|ram~574_combout\ : std_logic;
SIGNAL \RAM|ram~56_q\ : std_logic;
SIGNAL \RAM|ram~312_q\ : std_logic;
SIGNAL \RAM|ram~120_q\ : std_logic;
SIGNAL \RAM|ram~376_q\ : std_logic;
SIGNAL \RAM|ram~575_combout\ : std_logic;
SIGNAL \RAM|ram~578_combout\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[1]~7_combout\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~9_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[1]~2_combout\ : std_logic;
SIGNAL \ENABLE_LEDR~0_combout\ : std_logic;
SIGNAL \ENABLE_HEX[0]~0_combout\ : std_logic;
SIGNAL \HEX0_DECODER|DECODER_7seg|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \HEX0_DECODER|DECODER_7seg|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \HEX0_DECODER|DECODER_7seg|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \HEX0_DECODER|DECODER_7seg|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \HEX0_DECODER|DECODER_7seg|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \HEX0_DECODER|DECODER_7seg|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \HEX0_DECODER|DECODER_7seg|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \ENABLE_HEX[1]~1_combout\ : std_logic;
SIGNAL \HEX1_DECODER|DECODER_7seg|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \HEX1_DECODER|DECODER_7seg|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \HEX1_DECODER|DECODER_7seg|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \HEX1_DECODER|DECODER_7seg|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \HEX1_DECODER|DECODER_7seg|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \HEX1_DECODER|DECODER_7seg|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \HEX1_DECODER|DECODER_7seg|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \ENABLE_HEX[2]~2_combout\ : std_logic;
SIGNAL \HEX2_DECODER|DECODER_7seg|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \HEX2_DECODER|DECODER_7seg|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \HEX2_DECODER|DECODER_7seg|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \HEX2_DECODER|DECODER_7seg|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \HEX2_DECODER|DECODER_7seg|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \HEX2_DECODER|DECODER_7seg|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \HEX2_DECODER|DECODER_7seg|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \ENABLE_HEX[3]~3_combout\ : std_logic;
SIGNAL \HEX3_DECODER|DECODER_7seg|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \HEX3_DECODER|DECODER_7seg|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \HEX3_DECODER|DECODER_7seg|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \HEX3_DECODER|DECODER_7seg|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \HEX3_DECODER|DECODER_7seg|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \HEX3_DECODER|DECODER_7seg|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \HEX3_DECODER|DECODER_7seg|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \ENABLE_HEX[4]~4_combout\ : std_logic;
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
SIGNAL \ENABLE_LEDR~1_combout\ : std_logic;
SIGNAL \ENABLE_LEDR~2_combout\ : std_logic;
SIGNAL \LED8|FLIPS|DOUT~0_combout\ : std_logic;
SIGNAL \LED8|FLIPS|DOUT~q\ : std_logic;
SIGNAL \LED9|FLIPS|DOUT~0_combout\ : std_logic;
SIGNAL \LED9|FLIPS|DOUT~q\ : std_logic;
SIGNAL \CPU|INSTR|PC|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \CPU|REG_A|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \HEX0_DECODER|REG_4bits|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \HEX1_DECODER|REG_4bits|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \HEX2_DECODER|REG_4bits|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \HEX3_DECODER|REG_4bits|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \HEX4_DECODER|REG_4bits|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \HEX5_DECODER|REG_4bits|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LED_R|REG_8bits|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL ENABLE_HEX : std_logic_vector(5 DOWNTO 0);
SIGNAL \CPU|INSTR|END_RETORNO|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \CPU|ULA1|ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~123_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~115_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~106_combout\ : std_logic;
SIGNAL \CPU|INSTR|SOMA_CONST|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \CPU|INSTR|SOMA_CONST|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \CPU|INSTR|SOMA_CONST|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \CPU|INSTR|SOMA_CONST|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \CPU|INSTR|SOMA_CONST|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \CPU|INSTR|SOMA_CONST|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \CPU|INSTR|SOMA_CONST|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \CPU|INSTR|SOMA_CONST|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \CPU|INSTR|SOMA_CONST|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~98_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~90_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~82_combout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add1~1_sumout\ : std_logic;
SIGNAL \CPU|REG_A|ALT_INV_DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ROM|ALT_INV_memROM~45_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~28_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~24_combout\ : std_logic;
SIGNAL \CPU|INSTR|PC|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \ROM|ALT_INV_memROM~8_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~4_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~50_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~49_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~44_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~43_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~42_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~41_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~40_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~39_combout\ : std_logic;
SIGNAL \ALT_INV_ENABLE_LEDR~0_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~38_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~37_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~36_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~35_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~34_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~33_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~32_combout\ : std_logic;
SIGNAL \CPU|LOG_DESVIO|ALT_INV_DESV_JUMP~0_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~23_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~22_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~21_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~20_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~19_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~18_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~17_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~16_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~15_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~14_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~13_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~12_combout\ : std_logic;
SIGNAL \LED9|FLIPS|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \LED8|FLIPS|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \HEX5_DECODER|REG_4bits|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \HEX4_DECODER|REG_4bits|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \HEX3_DECODER|REG_4bits|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \HEX2_DECODER|REG_4bits|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \HEX1_DECODER|REG_4bits|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \HEX0_DECODER|REG_4bits|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ROM|ALT_INV_memROM~153_combout\ : std_logic;
SIGNAL \ALT_INV_READ_BUS[0]~4_combout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add1~29_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add1~25_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add1~21_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add1~17_sumout\ : std_logic;
SIGNAL \CPU|INSTR|PC|ALT_INV_DOUT[5]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|INSTR|PC|ALT_INV_DOUT[6]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|INSTR|PC|ALT_INV_DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|INSTR|PC|ALT_INV_DOUT[4]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|INSTR|PC|ALT_INV_DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|INSTR|PC|ALT_INV_DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|INSTR|PC|ALT_INV_DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|INSTR|PC|ALT_INV_DOUT[8]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|INSTR|PC|ALT_INV_DOUT[7]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_KEY[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_FPGA_RESET_N~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[0]~input_o\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~164_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~163_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~162_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~161_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~160_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~159_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~158_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~157_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~152_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~151_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~150_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~149_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~148_combout\ : std_logic;
SIGNAL \CPU|MUX1|ALT_INV_saida_MUX[1]~9_combout\ : std_logic;
SIGNAL \CPU|MUX1|ALT_INV_saida_MUX[1]~8_combout\ : std_logic;
SIGNAL \CPU|MUX1|ALT_INV_saida_MUX[1]~7_combout\ : std_logic;
SIGNAL \CPU|FLAG|ALT_INV_DOUT~2_combout\ : std_logic;
SIGNAL \CPU|FLAG|ALT_INV_DOUT~1_combout\ : std_logic;
SIGNAL \detectorSub1|ALT_INV_saidaQ~q\ : std_logic;
SIGNAL \detectorSub0|ALT_INV_saidaQ~q\ : std_logic;
SIGNAL \CPU|DECODER|ALT_INV_OP_ULA[0]~2_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~147_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~146_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~145_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~144_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~143_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~142_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~141_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~140_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~139_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~138_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~137_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~136_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~135_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~134_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~133_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~132_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~131_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~130_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~129_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~128_combout\ : std_logic;
SIGNAL \ALT_INV_ADDR_510~1_combout\ : std_logic;
SIGNAL \ALT_INV_ADDR_511~0_combout\ : std_logic;
SIGNAL \ALT_INV_ADDR_510~0_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~819_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~817_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~815_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~813_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~811_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~809_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~807_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~805_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~803_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~801_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~799_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~797_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~795_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~793_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~791_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~789_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~787_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~785_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~783_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~781_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~779_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~777_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~775_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~773_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~771_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~769_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~767_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~765_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~763_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~761_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~759_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~757_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~755_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~753_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~751_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~749_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~747_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~745_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~743_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~741_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~739_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~737_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~735_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~733_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~731_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~729_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~727_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~725_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~723_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~721_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~719_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~717_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~715_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~713_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~711_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~709_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~707_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~705_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~703_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~701_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~699_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~697_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~695_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~693_combout\ : std_logic;
SIGNAL \CPU|MUX1|ALT_INV_saida_MUX[7]~6_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~692_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~691_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~690_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~526_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~518_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~398_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~390_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~689_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~494_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~486_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~366_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~358_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~688_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~462_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~454_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~334_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~326_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~687_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~430_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~422_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~302_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~294_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~686_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~685_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~510_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~478_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~446_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~414_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~684_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~502_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~470_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~438_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~406_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~683_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~382_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~350_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~318_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~286_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~682_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~374_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~342_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~310_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~278_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~681_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~680_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~270_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~262_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~142_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~134_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~679_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~238_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~230_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~110_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~102_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~678_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~206_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~198_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~78_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~70_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~677_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~174_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~166_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~46_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~38_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~676_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~675_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~254_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~222_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~126_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~94_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~674_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~246_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~214_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~118_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~86_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~673_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~190_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~158_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~62_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~30_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~672_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~182_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~150_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~54_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~22_q\ : std_logic;
SIGNAL \CPU|MUX1|ALT_INV_saida_MUX[6]~5_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~671_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~670_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~669_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~525_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~509_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~461_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~445_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~668_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~517_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~501_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~453_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~437_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~667_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~397_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~381_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~333_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~317_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~666_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~389_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~373_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~325_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~309_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~665_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~664_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~269_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~261_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~253_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~245_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~663_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~141_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~133_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~125_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~117_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~662_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~205_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~197_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~189_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~181_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~661_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~77_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~69_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~61_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~53_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~660_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~659_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~493_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~365_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~477_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~349_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~658_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~485_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~357_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~469_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~341_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~657_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~429_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~301_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~413_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~285_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~656_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~421_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~293_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~405_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~277_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~655_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~654_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~237_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~221_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~173_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~157_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~653_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~229_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~213_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~165_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~149_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~652_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~109_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~93_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~45_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~29_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~651_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~101_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~85_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~37_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~21_q\ : std_logic;
SIGNAL \CPU|MUX1|ALT_INV_saida_MUX[5]~4_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~650_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~649_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~648_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~524_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~492_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~460_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~428_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~647_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~396_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~364_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~332_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~300_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~646_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~508_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~476_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~444_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~412_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~645_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~380_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~348_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~316_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~284_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~644_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~643_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~268_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~236_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~252_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~220_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~642_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~140_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~108_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~124_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~92_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~641_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~204_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~172_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~188_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~156_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~640_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~76_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~44_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~60_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~28_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~639_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~638_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~516_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~484_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~388_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~356_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~637_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~500_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~468_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~372_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~340_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~636_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~452_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~420_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~324_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~292_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~635_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~436_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~404_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~308_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~276_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~634_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~633_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~260_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~228_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~244_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~212_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~632_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~132_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~100_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~116_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~84_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~631_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~196_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~164_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~180_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~148_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~630_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~68_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~36_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~52_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~20_q\ : std_logic;
SIGNAL \CPU|MUX1|ALT_INV_saida_MUX[4]~3_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~629_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~628_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~627_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~523_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~515_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~491_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~483_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~626_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~395_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~387_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~363_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~355_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~625_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~459_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~451_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~427_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~419_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~624_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~331_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~323_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~299_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~291_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~623_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~622_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~267_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~259_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~139_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~131_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~621_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~235_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~227_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~107_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~99_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~620_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~203_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~195_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~75_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~67_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~619_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~171_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~163_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~43_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~35_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~618_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~617_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~507_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~499_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~443_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~435_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~616_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~475_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~467_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~411_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~403_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~615_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~379_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~371_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~315_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~307_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~614_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~347_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~339_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~283_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~275_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~613_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~612_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~251_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~243_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~219_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~211_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~611_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~123_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~115_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~91_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~83_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~610_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~187_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~179_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~155_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~147_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~609_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~59_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~51_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~27_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~19_q\ : std_logic;
SIGNAL \CPU|MUX1|ALT_INV_saida_MUX[2]~2_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~608_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~607_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~606_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~521_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~393_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~457_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~329_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~605_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~489_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~361_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~425_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~297_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~604_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~505_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~377_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~441_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~313_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~603_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~473_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~345_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~409_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~281_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~602_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~601_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~265_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~233_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~249_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~217_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~600_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~137_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~105_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~121_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~89_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~599_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~201_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~169_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~185_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~153_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~598_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~73_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~41_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~57_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~25_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~597_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~596_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~513_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~481_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~385_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~353_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~595_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~497_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~465_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~369_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~337_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~594_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~449_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~417_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~321_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~289_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~593_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~433_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~401_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~305_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~273_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~592_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~591_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~257_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~225_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~193_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~161_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~590_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~129_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~97_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~65_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~33_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~589_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~241_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~209_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~177_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~145_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~588_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~113_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~81_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~49_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~17_q\ : std_logic;
SIGNAL \CPU|MUX1|ALT_INV_saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~587_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~586_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~520_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~264_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~504_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~248_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~585_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~488_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~232_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~472_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~216_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~584_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~456_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~200_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~440_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~184_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~583_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~424_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~168_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~408_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~152_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~582_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~512_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~256_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~480_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~224_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~581_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~496_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~240_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~464_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~208_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~580_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~448_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~192_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~416_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~160_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~579_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~432_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~176_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~400_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~144_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~578_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~577_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~392_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~136_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~328_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~72_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~576_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~360_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~104_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~296_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~40_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~575_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~376_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~120_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~312_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~56_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~574_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~344_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~88_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~280_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~24_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~573_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~572_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~384_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~128_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~368_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~112_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~571_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~352_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~96_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~336_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~80_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~570_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~320_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~64_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~304_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~48_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~569_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~288_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~32_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~272_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~16_q\ : std_logic;
SIGNAL \CPU|MUX1|ALT_INV_saida_MUX[3]~0_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~568_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~567_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~566_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~522_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~514_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~506_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~498_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~565_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~394_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~386_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~378_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~370_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~564_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~458_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~450_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~442_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~434_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~563_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~330_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~322_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~314_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~306_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~562_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~561_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~266_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~250_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~202_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~186_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~560_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~258_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~242_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~194_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~178_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~559_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~138_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~122_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~74_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~58_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~558_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~130_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~114_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~66_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~50_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~557_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~556_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~490_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~362_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~474_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~346_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~555_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~482_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~354_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~466_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~338_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~554_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~426_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~298_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~410_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~282_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~553_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~418_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~290_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~402_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~274_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~552_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~551_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~234_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~226_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~218_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~210_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~550_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~106_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~98_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~90_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~82_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~549_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~170_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~162_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~154_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~146_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~548_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~42_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~34_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~26_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~18_q\ : std_logic;
SIGNAL \CPU|DECODER|ALT_INV_SEL_MUX~0_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~127_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~122_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~121_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~120_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~119_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~114_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~113_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~112_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~111_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~110_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~105_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~104_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~103_combout\ : std_logic;
SIGNAL \CPU|INSTR|END_RETORNO|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \CPU|INSTR|MUX2|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \CPU|INSTR|MUX2|ALT_INV_Equal2~0_combout\ : std_logic;
SIGNAL \CPU|FLAG|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~102_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~97_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~96_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~95_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~94_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~89_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~88_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~87_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~86_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~81_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~80_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~79_combout\ : std_logic;
SIGNAL \CPU|DECODER|ALT_INV_Equal9~0_combout\ : std_logic;
SIGNAL \CPU|DECODER|ALT_INV_OP_ULA[1]~0_combout\ : std_logic;
SIGNAL \CPU|DECODER|ALT_INV_sinais_controle~0_combout\ : std_logic;
SIGNAL \CPU|DECODER|ALT_INV_Equal5~0_combout\ : std_logic;
SIGNAL \ALT_INV_READ_BUS[0]~3_combout\ : std_logic;
SIGNAL \ALT_INV_READ_BUS[0]~2_combout\ : std_logic;
SIGNAL \ALT_INV_READ_BUS[0]~1_combout\ : std_logic;
SIGNAL \DEBOUNCER_KEY1|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \DEBOUNCER_KEY0|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \ALT_INV_ENABLE_SWR~2_combout\ : std_logic;
SIGNAL \ALT_INV_ENABLE_SWR~1_combout\ : std_logic;
SIGNAL \ALT_INV_ENABLE_SWR~0_combout\ : std_logic;
SIGNAL \ALT_INV_READ_BUS[0]~0_combout\ : std_logic;
SIGNAL \CPU|DECODER|ALT_INV_ENABLE_READ~0_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~78_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~77_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~547_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~546_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~545_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~519_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~263_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~391_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~135_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~544_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~511_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~255_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~383_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~127_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~543_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~455_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~199_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~327_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~71_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~542_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~447_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~191_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~319_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~63_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~541_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~540_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~487_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~231_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~479_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~223_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~539_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~359_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~103_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~351_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~95_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~538_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~423_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~167_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~415_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~159_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~537_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~295_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~39_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~287_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~31_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~536_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~535_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~503_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~247_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~495_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~239_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~534_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~375_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~119_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~367_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~111_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~533_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~439_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~183_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~431_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~175_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~532_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~311_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~55_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~303_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~47_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~531_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~76_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~75_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~74_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~73_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~72_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~71_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~70_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~69_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~68_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~67_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~66_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~65_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~64_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~63_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~62_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~61_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~60_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~59_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~530_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~471_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~215_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~463_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~207_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~529_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~343_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~87_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~335_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~79_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~528_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~407_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~151_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~399_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~143_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~527_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~279_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~23_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~271_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~15_q\ : std_logic;
SIGNAL \ALT_INV_ENABLE_LEDR~2_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~58_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~57_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~56_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~55_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~54_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~53_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~52_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~51_combout\ : std_logic;

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
\CPU|ULA1|ALT_INV_Add1~13_sumout\ <= NOT \CPU|ULA1|Add1~13_sumout\;
\CPU|ULA1|ALT_INV_Add1~9_sumout\ <= NOT \CPU|ULA1|Add1~9_sumout\;
\CPU|ULA1|ALT_INV_Add1~5_sumout\ <= NOT \CPU|ULA1|Add1~5_sumout\;
\ROM|ALT_INV_memROM~123_combout\ <= NOT \ROM|memROM~123_combout\;
\ROM|ALT_INV_memROM~115_combout\ <= NOT \ROM|memROM~115_combout\;
\ROM|ALT_INV_memROM~106_combout\ <= NOT \ROM|memROM~106_combout\;
\CPU|INSTR|SOMA_CONST|ALT_INV_Add0~33_sumout\ <= NOT \CPU|INSTR|SOMA_CONST|Add0~33_sumout\;
\CPU|INSTR|SOMA_CONST|ALT_INV_Add0~29_sumout\ <= NOT \CPU|INSTR|SOMA_CONST|Add0~29_sumout\;
\CPU|INSTR|SOMA_CONST|ALT_INV_Add0~25_sumout\ <= NOT \CPU|INSTR|SOMA_CONST|Add0~25_sumout\;
\CPU|INSTR|SOMA_CONST|ALT_INV_Add0~21_sumout\ <= NOT \CPU|INSTR|SOMA_CONST|Add0~21_sumout\;
\CPU|INSTR|SOMA_CONST|ALT_INV_Add0~17_sumout\ <= NOT \CPU|INSTR|SOMA_CONST|Add0~17_sumout\;
\CPU|INSTR|SOMA_CONST|ALT_INV_Add0~13_sumout\ <= NOT \CPU|INSTR|SOMA_CONST|Add0~13_sumout\;
\CPU|INSTR|SOMA_CONST|ALT_INV_Add0~9_sumout\ <= NOT \CPU|INSTR|SOMA_CONST|Add0~9_sumout\;
\CPU|INSTR|SOMA_CONST|ALT_INV_Add0~5_sumout\ <= NOT \CPU|INSTR|SOMA_CONST|Add0~5_sumout\;
\CPU|INSTR|SOMA_CONST|ALT_INV_Add0~1_sumout\ <= NOT \CPU|INSTR|SOMA_CONST|Add0~1_sumout\;
\ROM|ALT_INV_memROM~98_combout\ <= NOT \ROM|memROM~98_combout\;
\ROM|ALT_INV_memROM~90_combout\ <= NOT \ROM|memROM~90_combout\;
\ROM|ALT_INV_memROM~82_combout\ <= NOT \ROM|memROM~82_combout\;
\CPU|ULA1|ALT_INV_Add1~1_sumout\ <= NOT \CPU|ULA1|Add1~1_sumout\;
\CPU|REG_A|ALT_INV_DOUT\(7) <= NOT \CPU|REG_A|DOUT\(7);
\CPU|REG_A|ALT_INV_DOUT\(6) <= NOT \CPU|REG_A|DOUT\(6);
\CPU|REG_A|ALT_INV_DOUT\(5) <= NOT \CPU|REG_A|DOUT\(5);
\CPU|REG_A|ALT_INV_DOUT\(4) <= NOT \CPU|REG_A|DOUT\(4);
\CPU|REG_A|ALT_INV_DOUT\(2) <= NOT \CPU|REG_A|DOUT\(2);
\CPU|REG_A|ALT_INV_DOUT\(1) <= NOT \CPU|REG_A|DOUT\(1);
\CPU|REG_A|ALT_INV_DOUT\(3) <= NOT \CPU|REG_A|DOUT\(3);
\ROM|ALT_INV_memROM~45_combout\ <= NOT \ROM|memROM~45_combout\;
\ROM|ALT_INV_memROM~28_combout\ <= NOT \ROM|memROM~28_combout\;
\ROM|ALT_INV_memROM~24_combout\ <= NOT \ROM|memROM~24_combout\;
\CPU|INSTR|PC|ALT_INV_DOUT\(5) <= NOT \CPU|INSTR|PC|DOUT\(5);
\CPU|INSTR|PC|ALT_INV_DOUT\(6) <= NOT \CPU|INSTR|PC|DOUT\(6);
\CPU|INSTR|PC|ALT_INV_DOUT\(3) <= NOT \CPU|INSTR|PC|DOUT\(3);
\CPU|INSTR|PC|ALT_INV_DOUT\(4) <= NOT \CPU|INSTR|PC|DOUT\(4);
\CPU|INSTR|PC|ALT_INV_DOUT\(1) <= NOT \CPU|INSTR|PC|DOUT\(1);
\CPU|INSTR|PC|ALT_INV_DOUT\(0) <= NOT \CPU|INSTR|PC|DOUT\(0);
\CPU|INSTR|PC|ALT_INV_DOUT\(2) <= NOT \CPU|INSTR|PC|DOUT\(2);
\CPU|INSTR|PC|ALT_INV_DOUT\(8) <= NOT \CPU|INSTR|PC|DOUT\(8);
\CPU|INSTR|PC|ALT_INV_DOUT\(7) <= NOT \CPU|INSTR|PC|DOUT\(7);
\ROM|ALT_INV_memROM~8_combout\ <= NOT \ROM|memROM~8_combout\;
\ROM|ALT_INV_memROM~4_combout\ <= NOT \ROM|memROM~4_combout\;
\ROM|ALT_INV_memROM~0_combout\ <= NOT \ROM|memROM~0_combout\;
\CPU|REG_A|ALT_INV_DOUT\(0) <= NOT \CPU|REG_A|DOUT\(0);
\ROM|ALT_INV_memROM~50_combout\ <= NOT \ROM|memROM~50_combout\;
\ROM|ALT_INV_memROM~49_combout\ <= NOT \ROM|memROM~49_combout\;
\ROM|ALT_INV_memROM~44_combout\ <= NOT \ROM|memROM~44_combout\;
\ROM|ALT_INV_memROM~43_combout\ <= NOT \ROM|memROM~43_combout\;
\ROM|ALT_INV_memROM~42_combout\ <= NOT \ROM|memROM~42_combout\;
\ROM|ALT_INV_memROM~41_combout\ <= NOT \ROM|memROM~41_combout\;
\ROM|ALT_INV_memROM~40_combout\ <= NOT \ROM|memROM~40_combout\;
\ROM|ALT_INV_memROM~39_combout\ <= NOT \ROM|memROM~39_combout\;
\ALT_INV_ENABLE_LEDR~0_combout\ <= NOT \ENABLE_LEDR~0_combout\;
\ROM|ALT_INV_memROM~38_combout\ <= NOT \ROM|memROM~38_combout\;
\ROM|ALT_INV_memROM~37_combout\ <= NOT \ROM|memROM~37_combout\;
\ROM|ALT_INV_memROM~36_combout\ <= NOT \ROM|memROM~36_combout\;
\ROM|ALT_INV_memROM~35_combout\ <= NOT \ROM|memROM~35_combout\;
\ROM|ALT_INV_memROM~34_combout\ <= NOT \ROM|memROM~34_combout\;
\ROM|ALT_INV_memROM~33_combout\ <= NOT \ROM|memROM~33_combout\;
\ROM|ALT_INV_memROM~32_combout\ <= NOT \ROM|memROM~32_combout\;
\CPU|LOG_DESVIO|ALT_INV_DESV_JUMP~0_combout\ <= NOT \CPU|LOG_DESVIO|DESV_JUMP~0_combout\;
\ROM|ALT_INV_memROM~23_combout\ <= NOT \ROM|memROM~23_combout\;
\ROM|ALT_INV_memROM~22_combout\ <= NOT \ROM|memROM~22_combout\;
\ROM|ALT_INV_memROM~21_combout\ <= NOT \ROM|memROM~21_combout\;
\ROM|ALT_INV_memROM~20_combout\ <= NOT \ROM|memROM~20_combout\;
\ROM|ALT_INV_memROM~19_combout\ <= NOT \ROM|memROM~19_combout\;
\ROM|ALT_INV_memROM~18_combout\ <= NOT \ROM|memROM~18_combout\;
\ROM|ALT_INV_memROM~17_combout\ <= NOT \ROM|memROM~17_combout\;
\ROM|ALT_INV_memROM~16_combout\ <= NOT \ROM|memROM~16_combout\;
\ROM|ALT_INV_memROM~15_combout\ <= NOT \ROM|memROM~15_combout\;
\ROM|ALT_INV_memROM~14_combout\ <= NOT \ROM|memROM~14_combout\;
\ROM|ALT_INV_memROM~13_combout\ <= NOT \ROM|memROM~13_combout\;
\ROM|ALT_INV_memROM~12_combout\ <= NOT \ROM|memROM~12_combout\;
\LED9|FLIPS|ALT_INV_DOUT~q\ <= NOT \LED9|FLIPS|DOUT~q\;
\LED8|FLIPS|ALT_INV_DOUT~q\ <= NOT \LED8|FLIPS|DOUT~q\;
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
\ROM|ALT_INV_memROM~153_combout\ <= NOT \ROM|memROM~153_combout\;
\ALT_INV_READ_BUS[0]~4_combout\ <= NOT \READ_BUS[0]~4_combout\;
\CPU|ULA1|ALT_INV_Add1~29_sumout\ <= NOT \CPU|ULA1|Add1~29_sumout\;
\CPU|ULA1|ALT_INV_Add1~25_sumout\ <= NOT \CPU|ULA1|Add1~25_sumout\;
\CPU|ULA1|ALT_INV_Add1~21_sumout\ <= NOT \CPU|ULA1|Add1~21_sumout\;
\CPU|ULA1|ALT_INV_Add1~17_sumout\ <= NOT \CPU|ULA1|Add1~17_sumout\;
\CPU|INSTR|PC|ALT_INV_DOUT[5]~DUPLICATE_q\ <= NOT \CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\;
\CPU|INSTR|PC|ALT_INV_DOUT[6]~DUPLICATE_q\ <= NOT \CPU|INSTR|PC|DOUT[6]~DUPLICATE_q\;
\CPU|INSTR|PC|ALT_INV_DOUT[3]~DUPLICATE_q\ <= NOT \CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\;
\CPU|INSTR|PC|ALT_INV_DOUT[4]~DUPLICATE_q\ <= NOT \CPU|INSTR|PC|DOUT[4]~DUPLICATE_q\;
\CPU|INSTR|PC|ALT_INV_DOUT[1]~DUPLICATE_q\ <= NOT \CPU|INSTR|PC|DOUT[1]~DUPLICATE_q\;
\CPU|INSTR|PC|ALT_INV_DOUT[0]~DUPLICATE_q\ <= NOT \CPU|INSTR|PC|DOUT[0]~DUPLICATE_q\;
\CPU|INSTR|PC|ALT_INV_DOUT[2]~DUPLICATE_q\ <= NOT \CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\;
\CPU|INSTR|PC|ALT_INV_DOUT[8]~DUPLICATE_q\ <= NOT \CPU|INSTR|PC|DOUT[8]~DUPLICATE_q\;
\CPU|INSTR|PC|ALT_INV_DOUT[7]~DUPLICATE_q\ <= NOT \CPU|INSTR|PC|DOUT[7]~DUPLICATE_q\;
\ALT_INV_KEY[1]~input_o\ <= NOT \KEY[1]~input_o\;
\ALT_INV_KEY[0]~input_o\ <= NOT \KEY[0]~input_o\;
\ALT_INV_SW[7]~input_o\ <= NOT \SW[7]~input_o\;
\ALT_INV_SW[6]~input_o\ <= NOT \SW[6]~input_o\;
\ALT_INV_SW[5]~input_o\ <= NOT \SW[5]~input_o\;
\ALT_INV_SW[4]~input_o\ <= NOT \SW[4]~input_o\;
\ALT_INV_SW[2]~input_o\ <= NOT \SW[2]~input_o\;
\ALT_INV_SW[1]~input_o\ <= NOT \SW[1]~input_o\;
\ALT_INV_SW[3]~input_o\ <= NOT \SW[3]~input_o\;
\ALT_INV_FPGA_RESET_N~input_o\ <= NOT \FPGA_RESET_N~input_o\;
\ALT_INV_SW[9]~input_o\ <= NOT \SW[9]~input_o\;
\ALT_INV_SW[8]~input_o\ <= NOT \SW[8]~input_o\;
\ALT_INV_KEY[3]~input_o\ <= NOT \KEY[3]~input_o\;
\ALT_INV_KEY[2]~input_o\ <= NOT \KEY[2]~input_o\;
\ALT_INV_SW[0]~input_o\ <= NOT \SW[0]~input_o\;
\ROM|ALT_INV_memROM~164_combout\ <= NOT \ROM|memROM~164_combout\;
\ROM|ALT_INV_memROM~163_combout\ <= NOT \ROM|memROM~163_combout\;
\ROM|ALT_INV_memROM~162_combout\ <= NOT \ROM|memROM~162_combout\;
\ROM|ALT_INV_memROM~161_combout\ <= NOT \ROM|memROM~161_combout\;
\ROM|ALT_INV_memROM~160_combout\ <= NOT \ROM|memROM~160_combout\;
\ROM|ALT_INV_memROM~159_combout\ <= NOT \ROM|memROM~159_combout\;
\ROM|ALT_INV_memROM~158_combout\ <= NOT \ROM|memROM~158_combout\;
\ROM|ALT_INV_memROM~157_combout\ <= NOT \ROM|memROM~157_combout\;
\ROM|ALT_INV_memROM~152_combout\ <= NOT \ROM|memROM~152_combout\;
\ROM|ALT_INV_memROM~151_combout\ <= NOT \ROM|memROM~151_combout\;
\ROM|ALT_INV_memROM~150_combout\ <= NOT \ROM|memROM~150_combout\;
\ROM|ALT_INV_memROM~149_combout\ <= NOT \ROM|memROM~149_combout\;
\ROM|ALT_INV_memROM~148_combout\ <= NOT \ROM|memROM~148_combout\;
\CPU|MUX1|ALT_INV_saida_MUX[1]~9_combout\ <= NOT \CPU|MUX1|saida_MUX[1]~9_combout\;
\CPU|MUX1|ALT_INV_saida_MUX[1]~8_combout\ <= NOT \CPU|MUX1|saida_MUX[1]~8_combout\;
\CPU|MUX1|ALT_INV_saida_MUX[1]~7_combout\ <= NOT \CPU|MUX1|saida_MUX[1]~7_combout\;
\CPU|FLAG|ALT_INV_DOUT~2_combout\ <= NOT \CPU|FLAG|DOUT~2_combout\;
\CPU|FLAG|ALT_INV_DOUT~1_combout\ <= NOT \CPU|FLAG|DOUT~1_combout\;
\detectorSub1|ALT_INV_saidaQ~q\ <= NOT \detectorSub1|saidaQ~q\;
\detectorSub0|ALT_INV_saidaQ~q\ <= NOT \detectorSub0|saidaQ~q\;
\CPU|DECODER|ALT_INV_OP_ULA[0]~2_combout\ <= NOT \CPU|DECODER|OP_ULA[0]~2_combout\;
\ROM|ALT_INV_memROM~147_combout\ <= NOT \ROM|memROM~147_combout\;
\ROM|ALT_INV_memROM~146_combout\ <= NOT \ROM|memROM~146_combout\;
\ROM|ALT_INV_memROM~145_combout\ <= NOT \ROM|memROM~145_combout\;
\ROM|ALT_INV_memROM~144_combout\ <= NOT \ROM|memROM~144_combout\;
\ROM|ALT_INV_memROM~143_combout\ <= NOT \ROM|memROM~143_combout\;
\ROM|ALT_INV_memROM~142_combout\ <= NOT \ROM|memROM~142_combout\;
\ROM|ALT_INV_memROM~141_combout\ <= NOT \ROM|memROM~141_combout\;
\ROM|ALT_INV_memROM~140_combout\ <= NOT \ROM|memROM~140_combout\;
\ROM|ALT_INV_memROM~139_combout\ <= NOT \ROM|memROM~139_combout\;
\ROM|ALT_INV_memROM~138_combout\ <= NOT \ROM|memROM~138_combout\;
\ROM|ALT_INV_memROM~137_combout\ <= NOT \ROM|memROM~137_combout\;
\ROM|ALT_INV_memROM~136_combout\ <= NOT \ROM|memROM~136_combout\;
\ROM|ALT_INV_memROM~135_combout\ <= NOT \ROM|memROM~135_combout\;
\ROM|ALT_INV_memROM~134_combout\ <= NOT \ROM|memROM~134_combout\;
\ROM|ALT_INV_memROM~133_combout\ <= NOT \ROM|memROM~133_combout\;
\ROM|ALT_INV_memROM~132_combout\ <= NOT \ROM|memROM~132_combout\;
\ROM|ALT_INV_memROM~131_combout\ <= NOT \ROM|memROM~131_combout\;
\ROM|ALT_INV_memROM~130_combout\ <= NOT \ROM|memROM~130_combout\;
\ROM|ALT_INV_memROM~129_combout\ <= NOT \ROM|memROM~129_combout\;
\ROM|ALT_INV_memROM~128_combout\ <= NOT \ROM|memROM~128_combout\;
\ALT_INV_ADDR_510~1_combout\ <= NOT \ADDR_510~1_combout\;
\ALT_INV_ADDR_511~0_combout\ <= NOT \ADDR_511~0_combout\;
\ALT_INV_ADDR_510~0_combout\ <= NOT \ADDR_510~0_combout\;
\RAM|ALT_INV_ram~819_combout\ <= NOT \RAM|ram~819_combout\;
\RAM|ALT_INV_ram~817_combout\ <= NOT \RAM|ram~817_combout\;
\RAM|ALT_INV_ram~815_combout\ <= NOT \RAM|ram~815_combout\;
\RAM|ALT_INV_ram~813_combout\ <= NOT \RAM|ram~813_combout\;
\RAM|ALT_INV_ram~811_combout\ <= NOT \RAM|ram~811_combout\;
\RAM|ALT_INV_ram~809_combout\ <= NOT \RAM|ram~809_combout\;
\RAM|ALT_INV_ram~807_combout\ <= NOT \RAM|ram~807_combout\;
\RAM|ALT_INV_ram~805_combout\ <= NOT \RAM|ram~805_combout\;
\RAM|ALT_INV_ram~803_combout\ <= NOT \RAM|ram~803_combout\;
\RAM|ALT_INV_ram~801_combout\ <= NOT \RAM|ram~801_combout\;
\RAM|ALT_INV_ram~799_combout\ <= NOT \RAM|ram~799_combout\;
\RAM|ALT_INV_ram~797_combout\ <= NOT \RAM|ram~797_combout\;
\RAM|ALT_INV_ram~795_combout\ <= NOT \RAM|ram~795_combout\;
\RAM|ALT_INV_ram~793_combout\ <= NOT \RAM|ram~793_combout\;
\RAM|ALT_INV_ram~791_combout\ <= NOT \RAM|ram~791_combout\;
\RAM|ALT_INV_ram~789_combout\ <= NOT \RAM|ram~789_combout\;
\RAM|ALT_INV_ram~787_combout\ <= NOT \RAM|ram~787_combout\;
\RAM|ALT_INV_ram~785_combout\ <= NOT \RAM|ram~785_combout\;
\RAM|ALT_INV_ram~783_combout\ <= NOT \RAM|ram~783_combout\;
\RAM|ALT_INV_ram~781_combout\ <= NOT \RAM|ram~781_combout\;
\RAM|ALT_INV_ram~779_combout\ <= NOT \RAM|ram~779_combout\;
\RAM|ALT_INV_ram~777_combout\ <= NOT \RAM|ram~777_combout\;
\RAM|ALT_INV_ram~775_combout\ <= NOT \RAM|ram~775_combout\;
\RAM|ALT_INV_ram~773_combout\ <= NOT \RAM|ram~773_combout\;
\RAM|ALT_INV_ram~771_combout\ <= NOT \RAM|ram~771_combout\;
\RAM|ALT_INV_ram~769_combout\ <= NOT \RAM|ram~769_combout\;
\RAM|ALT_INV_ram~767_combout\ <= NOT \RAM|ram~767_combout\;
\RAM|ALT_INV_ram~765_combout\ <= NOT \RAM|ram~765_combout\;
\RAM|ALT_INV_ram~763_combout\ <= NOT \RAM|ram~763_combout\;
\RAM|ALT_INV_ram~761_combout\ <= NOT \RAM|ram~761_combout\;
\RAM|ALT_INV_ram~759_combout\ <= NOT \RAM|ram~759_combout\;
\RAM|ALT_INV_ram~757_combout\ <= NOT \RAM|ram~757_combout\;
\RAM|ALT_INV_ram~755_combout\ <= NOT \RAM|ram~755_combout\;
\RAM|ALT_INV_ram~753_combout\ <= NOT \RAM|ram~753_combout\;
\RAM|ALT_INV_ram~751_combout\ <= NOT \RAM|ram~751_combout\;
\RAM|ALT_INV_ram~749_combout\ <= NOT \RAM|ram~749_combout\;
\RAM|ALT_INV_ram~747_combout\ <= NOT \RAM|ram~747_combout\;
\RAM|ALT_INV_ram~745_combout\ <= NOT \RAM|ram~745_combout\;
\RAM|ALT_INV_ram~743_combout\ <= NOT \RAM|ram~743_combout\;
\RAM|ALT_INV_ram~741_combout\ <= NOT \RAM|ram~741_combout\;
\RAM|ALT_INV_ram~739_combout\ <= NOT \RAM|ram~739_combout\;
\RAM|ALT_INV_ram~737_combout\ <= NOT \RAM|ram~737_combout\;
\RAM|ALT_INV_ram~735_combout\ <= NOT \RAM|ram~735_combout\;
\RAM|ALT_INV_ram~733_combout\ <= NOT \RAM|ram~733_combout\;
\RAM|ALT_INV_ram~731_combout\ <= NOT \RAM|ram~731_combout\;
\RAM|ALT_INV_ram~729_combout\ <= NOT \RAM|ram~729_combout\;
\RAM|ALT_INV_ram~727_combout\ <= NOT \RAM|ram~727_combout\;
\RAM|ALT_INV_ram~725_combout\ <= NOT \RAM|ram~725_combout\;
\RAM|ALT_INV_ram~723_combout\ <= NOT \RAM|ram~723_combout\;
\RAM|ALT_INV_ram~721_combout\ <= NOT \RAM|ram~721_combout\;
\RAM|ALT_INV_ram~719_combout\ <= NOT \RAM|ram~719_combout\;
\RAM|ALT_INV_ram~717_combout\ <= NOT \RAM|ram~717_combout\;
\RAM|ALT_INV_ram~715_combout\ <= NOT \RAM|ram~715_combout\;
\RAM|ALT_INV_ram~713_combout\ <= NOT \RAM|ram~713_combout\;
\RAM|ALT_INV_ram~711_combout\ <= NOT \RAM|ram~711_combout\;
\RAM|ALT_INV_ram~709_combout\ <= NOT \RAM|ram~709_combout\;
\RAM|ALT_INV_ram~707_combout\ <= NOT \RAM|ram~707_combout\;
\RAM|ALT_INV_ram~705_combout\ <= NOT \RAM|ram~705_combout\;
\RAM|ALT_INV_ram~703_combout\ <= NOT \RAM|ram~703_combout\;
\RAM|ALT_INV_ram~701_combout\ <= NOT \RAM|ram~701_combout\;
\RAM|ALT_INV_ram~699_combout\ <= NOT \RAM|ram~699_combout\;
\RAM|ALT_INV_ram~697_combout\ <= NOT \RAM|ram~697_combout\;
\RAM|ALT_INV_ram~695_combout\ <= NOT \RAM|ram~695_combout\;
\RAM|ALT_INV_process_0~0_combout\ <= NOT \RAM|process_0~0_combout\;
\RAM|ALT_INV_ram~693_combout\ <= NOT \RAM|ram~693_combout\;
\CPU|MUX1|ALT_INV_saida_MUX[7]~6_combout\ <= NOT \CPU|MUX1|saida_MUX[7]~6_combout\;
\RAM|ALT_INV_ram~692_combout\ <= NOT \RAM|ram~692_combout\;
\RAM|ALT_INV_ram~691_combout\ <= NOT \RAM|ram~691_combout\;
\RAM|ALT_INV_ram~690_combout\ <= NOT \RAM|ram~690_combout\;
\RAM|ALT_INV_ram~526_q\ <= NOT \RAM|ram~526_q\;
\RAM|ALT_INV_ram~518_q\ <= NOT \RAM|ram~518_q\;
\RAM|ALT_INV_ram~398_q\ <= NOT \RAM|ram~398_q\;
\RAM|ALT_INV_ram~390_q\ <= NOT \RAM|ram~390_q\;
\RAM|ALT_INV_ram~689_combout\ <= NOT \RAM|ram~689_combout\;
\RAM|ALT_INV_ram~494_q\ <= NOT \RAM|ram~494_q\;
\RAM|ALT_INV_ram~486_q\ <= NOT \RAM|ram~486_q\;
\RAM|ALT_INV_ram~366_q\ <= NOT \RAM|ram~366_q\;
\RAM|ALT_INV_ram~358_q\ <= NOT \RAM|ram~358_q\;
\RAM|ALT_INV_ram~688_combout\ <= NOT \RAM|ram~688_combout\;
\RAM|ALT_INV_ram~462_q\ <= NOT \RAM|ram~462_q\;
\RAM|ALT_INV_ram~454_q\ <= NOT \RAM|ram~454_q\;
\RAM|ALT_INV_ram~334_q\ <= NOT \RAM|ram~334_q\;
\RAM|ALT_INV_ram~326_q\ <= NOT \RAM|ram~326_q\;
\RAM|ALT_INV_ram~687_combout\ <= NOT \RAM|ram~687_combout\;
\RAM|ALT_INV_ram~430_q\ <= NOT \RAM|ram~430_q\;
\RAM|ALT_INV_ram~422_q\ <= NOT \RAM|ram~422_q\;
\RAM|ALT_INV_ram~302_q\ <= NOT \RAM|ram~302_q\;
\RAM|ALT_INV_ram~294_q\ <= NOT \RAM|ram~294_q\;
\RAM|ALT_INV_ram~686_combout\ <= NOT \RAM|ram~686_combout\;
\RAM|ALT_INV_ram~685_combout\ <= NOT \RAM|ram~685_combout\;
\RAM|ALT_INV_ram~510_q\ <= NOT \RAM|ram~510_q\;
\RAM|ALT_INV_ram~478_q\ <= NOT \RAM|ram~478_q\;
\RAM|ALT_INV_ram~446_q\ <= NOT \RAM|ram~446_q\;
\RAM|ALT_INV_ram~414_q\ <= NOT \RAM|ram~414_q\;
\RAM|ALT_INV_ram~684_combout\ <= NOT \RAM|ram~684_combout\;
\RAM|ALT_INV_ram~502_q\ <= NOT \RAM|ram~502_q\;
\RAM|ALT_INV_ram~470_q\ <= NOT \RAM|ram~470_q\;
\RAM|ALT_INV_ram~438_q\ <= NOT \RAM|ram~438_q\;
\RAM|ALT_INV_ram~406_q\ <= NOT \RAM|ram~406_q\;
\RAM|ALT_INV_ram~683_combout\ <= NOT \RAM|ram~683_combout\;
\RAM|ALT_INV_ram~382_q\ <= NOT \RAM|ram~382_q\;
\RAM|ALT_INV_ram~350_q\ <= NOT \RAM|ram~350_q\;
\RAM|ALT_INV_ram~318_q\ <= NOT \RAM|ram~318_q\;
\RAM|ALT_INV_ram~286_q\ <= NOT \RAM|ram~286_q\;
\RAM|ALT_INV_ram~682_combout\ <= NOT \RAM|ram~682_combout\;
\RAM|ALT_INV_ram~374_q\ <= NOT \RAM|ram~374_q\;
\RAM|ALT_INV_ram~342_q\ <= NOT \RAM|ram~342_q\;
\RAM|ALT_INV_ram~310_q\ <= NOT \RAM|ram~310_q\;
\RAM|ALT_INV_ram~278_q\ <= NOT \RAM|ram~278_q\;
\RAM|ALT_INV_ram~681_combout\ <= NOT \RAM|ram~681_combout\;
\RAM|ALT_INV_ram~680_combout\ <= NOT \RAM|ram~680_combout\;
\RAM|ALT_INV_ram~270_q\ <= NOT \RAM|ram~270_q\;
\RAM|ALT_INV_ram~262_q\ <= NOT \RAM|ram~262_q\;
\RAM|ALT_INV_ram~142_q\ <= NOT \RAM|ram~142_q\;
\RAM|ALT_INV_ram~134_q\ <= NOT \RAM|ram~134_q\;
\RAM|ALT_INV_ram~679_combout\ <= NOT \RAM|ram~679_combout\;
\RAM|ALT_INV_ram~238_q\ <= NOT \RAM|ram~238_q\;
\RAM|ALT_INV_ram~230_q\ <= NOT \RAM|ram~230_q\;
\RAM|ALT_INV_ram~110_q\ <= NOT \RAM|ram~110_q\;
\RAM|ALT_INV_ram~102_q\ <= NOT \RAM|ram~102_q\;
\RAM|ALT_INV_ram~678_combout\ <= NOT \RAM|ram~678_combout\;
\RAM|ALT_INV_ram~206_q\ <= NOT \RAM|ram~206_q\;
\RAM|ALT_INV_ram~198_q\ <= NOT \RAM|ram~198_q\;
\RAM|ALT_INV_ram~78_q\ <= NOT \RAM|ram~78_q\;
\RAM|ALT_INV_ram~70_q\ <= NOT \RAM|ram~70_q\;
\RAM|ALT_INV_ram~677_combout\ <= NOT \RAM|ram~677_combout\;
\RAM|ALT_INV_ram~174_q\ <= NOT \RAM|ram~174_q\;
\RAM|ALT_INV_ram~166_q\ <= NOT \RAM|ram~166_q\;
\RAM|ALT_INV_ram~46_q\ <= NOT \RAM|ram~46_q\;
\RAM|ALT_INV_ram~38_q\ <= NOT \RAM|ram~38_q\;
\RAM|ALT_INV_ram~676_combout\ <= NOT \RAM|ram~676_combout\;
\RAM|ALT_INV_ram~675_combout\ <= NOT \RAM|ram~675_combout\;
\RAM|ALT_INV_ram~254_q\ <= NOT \RAM|ram~254_q\;
\RAM|ALT_INV_ram~222_q\ <= NOT \RAM|ram~222_q\;
\RAM|ALT_INV_ram~126_q\ <= NOT \RAM|ram~126_q\;
\RAM|ALT_INV_ram~94_q\ <= NOT \RAM|ram~94_q\;
\RAM|ALT_INV_ram~674_combout\ <= NOT \RAM|ram~674_combout\;
\RAM|ALT_INV_ram~246_q\ <= NOT \RAM|ram~246_q\;
\RAM|ALT_INV_ram~214_q\ <= NOT \RAM|ram~214_q\;
\RAM|ALT_INV_ram~118_q\ <= NOT \RAM|ram~118_q\;
\RAM|ALT_INV_ram~86_q\ <= NOT \RAM|ram~86_q\;
\RAM|ALT_INV_ram~673_combout\ <= NOT \RAM|ram~673_combout\;
\RAM|ALT_INV_ram~190_q\ <= NOT \RAM|ram~190_q\;
\RAM|ALT_INV_ram~158_q\ <= NOT \RAM|ram~158_q\;
\RAM|ALT_INV_ram~62_q\ <= NOT \RAM|ram~62_q\;
\RAM|ALT_INV_ram~30_q\ <= NOT \RAM|ram~30_q\;
\RAM|ALT_INV_ram~672_combout\ <= NOT \RAM|ram~672_combout\;
\RAM|ALT_INV_ram~182_q\ <= NOT \RAM|ram~182_q\;
\RAM|ALT_INV_ram~150_q\ <= NOT \RAM|ram~150_q\;
\RAM|ALT_INV_ram~54_q\ <= NOT \RAM|ram~54_q\;
\RAM|ALT_INV_ram~22_q\ <= NOT \RAM|ram~22_q\;
\CPU|MUX1|ALT_INV_saida_MUX[6]~5_combout\ <= NOT \CPU|MUX1|saida_MUX[6]~5_combout\;
\RAM|ALT_INV_ram~671_combout\ <= NOT \RAM|ram~671_combout\;
\RAM|ALT_INV_ram~670_combout\ <= NOT \RAM|ram~670_combout\;
\RAM|ALT_INV_ram~669_combout\ <= NOT \RAM|ram~669_combout\;
\RAM|ALT_INV_ram~525_q\ <= NOT \RAM|ram~525_q\;
\RAM|ALT_INV_ram~509_q\ <= NOT \RAM|ram~509_q\;
\RAM|ALT_INV_ram~461_q\ <= NOT \RAM|ram~461_q\;
\RAM|ALT_INV_ram~445_q\ <= NOT \RAM|ram~445_q\;
\RAM|ALT_INV_ram~668_combout\ <= NOT \RAM|ram~668_combout\;
\RAM|ALT_INV_ram~517_q\ <= NOT \RAM|ram~517_q\;
\RAM|ALT_INV_ram~501_q\ <= NOT \RAM|ram~501_q\;
\RAM|ALT_INV_ram~453_q\ <= NOT \RAM|ram~453_q\;
\RAM|ALT_INV_ram~437_q\ <= NOT \RAM|ram~437_q\;
\RAM|ALT_INV_ram~667_combout\ <= NOT \RAM|ram~667_combout\;
\RAM|ALT_INV_ram~397_q\ <= NOT \RAM|ram~397_q\;
\RAM|ALT_INV_ram~381_q\ <= NOT \RAM|ram~381_q\;
\RAM|ALT_INV_ram~333_q\ <= NOT \RAM|ram~333_q\;
\RAM|ALT_INV_ram~317_q\ <= NOT \RAM|ram~317_q\;
\RAM|ALT_INV_ram~666_combout\ <= NOT \RAM|ram~666_combout\;
\RAM|ALT_INV_ram~389_q\ <= NOT \RAM|ram~389_q\;
\RAM|ALT_INV_ram~373_q\ <= NOT \RAM|ram~373_q\;
\RAM|ALT_INV_ram~325_q\ <= NOT \RAM|ram~325_q\;
\RAM|ALT_INV_ram~309_q\ <= NOT \RAM|ram~309_q\;
\RAM|ALT_INV_ram~665_combout\ <= NOT \RAM|ram~665_combout\;
\RAM|ALT_INV_ram~664_combout\ <= NOT \RAM|ram~664_combout\;
\RAM|ALT_INV_ram~269_q\ <= NOT \RAM|ram~269_q\;
\RAM|ALT_INV_ram~261_q\ <= NOT \RAM|ram~261_q\;
\RAM|ALT_INV_ram~253_q\ <= NOT \RAM|ram~253_q\;
\RAM|ALT_INV_ram~245_q\ <= NOT \RAM|ram~245_q\;
\RAM|ALT_INV_ram~663_combout\ <= NOT \RAM|ram~663_combout\;
\RAM|ALT_INV_ram~141_q\ <= NOT \RAM|ram~141_q\;
\RAM|ALT_INV_ram~133_q\ <= NOT \RAM|ram~133_q\;
\RAM|ALT_INV_ram~125_q\ <= NOT \RAM|ram~125_q\;
\RAM|ALT_INV_ram~117_q\ <= NOT \RAM|ram~117_q\;
\RAM|ALT_INV_ram~662_combout\ <= NOT \RAM|ram~662_combout\;
\RAM|ALT_INV_ram~205_q\ <= NOT \RAM|ram~205_q\;
\RAM|ALT_INV_ram~197_q\ <= NOT \RAM|ram~197_q\;
\RAM|ALT_INV_ram~189_q\ <= NOT \RAM|ram~189_q\;
\RAM|ALT_INV_ram~181_q\ <= NOT \RAM|ram~181_q\;
\RAM|ALT_INV_ram~661_combout\ <= NOT \RAM|ram~661_combout\;
\RAM|ALT_INV_ram~77_q\ <= NOT \RAM|ram~77_q\;
\RAM|ALT_INV_ram~69_q\ <= NOT \RAM|ram~69_q\;
\RAM|ALT_INV_ram~61_q\ <= NOT \RAM|ram~61_q\;
\RAM|ALT_INV_ram~53_q\ <= NOT \RAM|ram~53_q\;
\RAM|ALT_INV_ram~660_combout\ <= NOT \RAM|ram~660_combout\;
\RAM|ALT_INV_ram~659_combout\ <= NOT \RAM|ram~659_combout\;
\RAM|ALT_INV_ram~493_q\ <= NOT \RAM|ram~493_q\;
\RAM|ALT_INV_ram~365_q\ <= NOT \RAM|ram~365_q\;
\RAM|ALT_INV_ram~477_q\ <= NOT \RAM|ram~477_q\;
\RAM|ALT_INV_ram~349_q\ <= NOT \RAM|ram~349_q\;
\RAM|ALT_INV_ram~658_combout\ <= NOT \RAM|ram~658_combout\;
\RAM|ALT_INV_ram~485_q\ <= NOT \RAM|ram~485_q\;
\RAM|ALT_INV_ram~357_q\ <= NOT \RAM|ram~357_q\;
\RAM|ALT_INV_ram~469_q\ <= NOT \RAM|ram~469_q\;
\RAM|ALT_INV_ram~341_q\ <= NOT \RAM|ram~341_q\;
\RAM|ALT_INV_ram~657_combout\ <= NOT \RAM|ram~657_combout\;
\RAM|ALT_INV_ram~429_q\ <= NOT \RAM|ram~429_q\;
\RAM|ALT_INV_ram~301_q\ <= NOT \RAM|ram~301_q\;
\RAM|ALT_INV_ram~413_q\ <= NOT \RAM|ram~413_q\;
\RAM|ALT_INV_ram~285_q\ <= NOT \RAM|ram~285_q\;
\RAM|ALT_INV_ram~656_combout\ <= NOT \RAM|ram~656_combout\;
\RAM|ALT_INV_ram~421_q\ <= NOT \RAM|ram~421_q\;
\RAM|ALT_INV_ram~293_q\ <= NOT \RAM|ram~293_q\;
\RAM|ALT_INV_ram~405_q\ <= NOT \RAM|ram~405_q\;
\RAM|ALT_INV_ram~277_q\ <= NOT \RAM|ram~277_q\;
\RAM|ALT_INV_ram~655_combout\ <= NOT \RAM|ram~655_combout\;
\RAM|ALT_INV_ram~654_combout\ <= NOT \RAM|ram~654_combout\;
\RAM|ALT_INV_ram~237_q\ <= NOT \RAM|ram~237_q\;
\RAM|ALT_INV_ram~221_q\ <= NOT \RAM|ram~221_q\;
\RAM|ALT_INV_ram~173_q\ <= NOT \RAM|ram~173_q\;
\RAM|ALT_INV_ram~157_q\ <= NOT \RAM|ram~157_q\;
\RAM|ALT_INV_ram~653_combout\ <= NOT \RAM|ram~653_combout\;
\RAM|ALT_INV_ram~229_q\ <= NOT \RAM|ram~229_q\;
\RAM|ALT_INV_ram~213_q\ <= NOT \RAM|ram~213_q\;
\RAM|ALT_INV_ram~165_q\ <= NOT \RAM|ram~165_q\;
\RAM|ALT_INV_ram~149_q\ <= NOT \RAM|ram~149_q\;
\RAM|ALT_INV_ram~652_combout\ <= NOT \RAM|ram~652_combout\;
\RAM|ALT_INV_ram~109_q\ <= NOT \RAM|ram~109_q\;
\RAM|ALT_INV_ram~93_q\ <= NOT \RAM|ram~93_q\;
\RAM|ALT_INV_ram~45_q\ <= NOT \RAM|ram~45_q\;
\RAM|ALT_INV_ram~29_q\ <= NOT \RAM|ram~29_q\;
\RAM|ALT_INV_ram~651_combout\ <= NOT \RAM|ram~651_combout\;
\RAM|ALT_INV_ram~101_q\ <= NOT \RAM|ram~101_q\;
\RAM|ALT_INV_ram~85_q\ <= NOT \RAM|ram~85_q\;
\RAM|ALT_INV_ram~37_q\ <= NOT \RAM|ram~37_q\;
\RAM|ALT_INV_ram~21_q\ <= NOT \RAM|ram~21_q\;
\CPU|MUX1|ALT_INV_saida_MUX[5]~4_combout\ <= NOT \CPU|MUX1|saida_MUX[5]~4_combout\;
\RAM|ALT_INV_ram~650_combout\ <= NOT \RAM|ram~650_combout\;
\RAM|ALT_INV_ram~649_combout\ <= NOT \RAM|ram~649_combout\;
\RAM|ALT_INV_ram~648_combout\ <= NOT \RAM|ram~648_combout\;
\RAM|ALT_INV_ram~524_q\ <= NOT \RAM|ram~524_q\;
\RAM|ALT_INV_ram~492_q\ <= NOT \RAM|ram~492_q\;
\RAM|ALT_INV_ram~460_q\ <= NOT \RAM|ram~460_q\;
\RAM|ALT_INV_ram~428_q\ <= NOT \RAM|ram~428_q\;
\RAM|ALT_INV_ram~647_combout\ <= NOT \RAM|ram~647_combout\;
\RAM|ALT_INV_ram~396_q\ <= NOT \RAM|ram~396_q\;
\RAM|ALT_INV_ram~364_q\ <= NOT \RAM|ram~364_q\;
\RAM|ALT_INV_ram~332_q\ <= NOT \RAM|ram~332_q\;
\RAM|ALT_INV_ram~300_q\ <= NOT \RAM|ram~300_q\;
\RAM|ALT_INV_ram~646_combout\ <= NOT \RAM|ram~646_combout\;
\RAM|ALT_INV_ram~508_q\ <= NOT \RAM|ram~508_q\;
\RAM|ALT_INV_ram~476_q\ <= NOT \RAM|ram~476_q\;
\RAM|ALT_INV_ram~444_q\ <= NOT \RAM|ram~444_q\;
\RAM|ALT_INV_ram~412_q\ <= NOT \RAM|ram~412_q\;
\RAM|ALT_INV_ram~645_combout\ <= NOT \RAM|ram~645_combout\;
\RAM|ALT_INV_ram~380_q\ <= NOT \RAM|ram~380_q\;
\RAM|ALT_INV_ram~348_q\ <= NOT \RAM|ram~348_q\;
\RAM|ALT_INV_ram~316_q\ <= NOT \RAM|ram~316_q\;
\RAM|ALT_INV_ram~284_q\ <= NOT \RAM|ram~284_q\;
\RAM|ALT_INV_ram~644_combout\ <= NOT \RAM|ram~644_combout\;
\RAM|ALT_INV_ram~643_combout\ <= NOT \RAM|ram~643_combout\;
\RAM|ALT_INV_ram~268_q\ <= NOT \RAM|ram~268_q\;
\RAM|ALT_INV_ram~236_q\ <= NOT \RAM|ram~236_q\;
\RAM|ALT_INV_ram~252_q\ <= NOT \RAM|ram~252_q\;
\RAM|ALT_INV_ram~220_q\ <= NOT \RAM|ram~220_q\;
\RAM|ALT_INV_ram~642_combout\ <= NOT \RAM|ram~642_combout\;
\RAM|ALT_INV_ram~140_q\ <= NOT \RAM|ram~140_q\;
\RAM|ALT_INV_ram~108_q\ <= NOT \RAM|ram~108_q\;
\RAM|ALT_INV_ram~124_q\ <= NOT \RAM|ram~124_q\;
\RAM|ALT_INV_ram~92_q\ <= NOT \RAM|ram~92_q\;
\RAM|ALT_INV_ram~641_combout\ <= NOT \RAM|ram~641_combout\;
\RAM|ALT_INV_ram~204_q\ <= NOT \RAM|ram~204_q\;
\RAM|ALT_INV_ram~172_q\ <= NOT \RAM|ram~172_q\;
\RAM|ALT_INV_ram~188_q\ <= NOT \RAM|ram~188_q\;
\RAM|ALT_INV_ram~156_q\ <= NOT \RAM|ram~156_q\;
\RAM|ALT_INV_ram~640_combout\ <= NOT \RAM|ram~640_combout\;
\RAM|ALT_INV_ram~76_q\ <= NOT \RAM|ram~76_q\;
\RAM|ALT_INV_ram~44_q\ <= NOT \RAM|ram~44_q\;
\RAM|ALT_INV_ram~60_q\ <= NOT \RAM|ram~60_q\;
\RAM|ALT_INV_ram~28_q\ <= NOT \RAM|ram~28_q\;
\RAM|ALT_INV_ram~639_combout\ <= NOT \RAM|ram~639_combout\;
\RAM|ALT_INV_ram~638_combout\ <= NOT \RAM|ram~638_combout\;
\RAM|ALT_INV_ram~516_q\ <= NOT \RAM|ram~516_q\;
\RAM|ALT_INV_ram~484_q\ <= NOT \RAM|ram~484_q\;
\RAM|ALT_INV_ram~388_q\ <= NOT \RAM|ram~388_q\;
\RAM|ALT_INV_ram~356_q\ <= NOT \RAM|ram~356_q\;
\RAM|ALT_INV_ram~637_combout\ <= NOT \RAM|ram~637_combout\;
\RAM|ALT_INV_ram~500_q\ <= NOT \RAM|ram~500_q\;
\RAM|ALT_INV_ram~468_q\ <= NOT \RAM|ram~468_q\;
\RAM|ALT_INV_ram~372_q\ <= NOT \RAM|ram~372_q\;
\RAM|ALT_INV_ram~340_q\ <= NOT \RAM|ram~340_q\;
\RAM|ALT_INV_ram~636_combout\ <= NOT \RAM|ram~636_combout\;
\RAM|ALT_INV_ram~452_q\ <= NOT \RAM|ram~452_q\;
\RAM|ALT_INV_ram~420_q\ <= NOT \RAM|ram~420_q\;
\RAM|ALT_INV_ram~324_q\ <= NOT \RAM|ram~324_q\;
\RAM|ALT_INV_ram~292_q\ <= NOT \RAM|ram~292_q\;
\RAM|ALT_INV_ram~635_combout\ <= NOT \RAM|ram~635_combout\;
\RAM|ALT_INV_ram~436_q\ <= NOT \RAM|ram~436_q\;
\RAM|ALT_INV_ram~404_q\ <= NOT \RAM|ram~404_q\;
\RAM|ALT_INV_ram~308_q\ <= NOT \RAM|ram~308_q\;
\RAM|ALT_INV_ram~276_q\ <= NOT \RAM|ram~276_q\;
\RAM|ALT_INV_ram~634_combout\ <= NOT \RAM|ram~634_combout\;
\RAM|ALT_INV_ram~633_combout\ <= NOT \RAM|ram~633_combout\;
\RAM|ALT_INV_ram~260_q\ <= NOT \RAM|ram~260_q\;
\RAM|ALT_INV_ram~228_q\ <= NOT \RAM|ram~228_q\;
\RAM|ALT_INV_ram~244_q\ <= NOT \RAM|ram~244_q\;
\RAM|ALT_INV_ram~212_q\ <= NOT \RAM|ram~212_q\;
\RAM|ALT_INV_ram~632_combout\ <= NOT \RAM|ram~632_combout\;
\RAM|ALT_INV_ram~132_q\ <= NOT \RAM|ram~132_q\;
\RAM|ALT_INV_ram~100_q\ <= NOT \RAM|ram~100_q\;
\RAM|ALT_INV_ram~116_q\ <= NOT \RAM|ram~116_q\;
\RAM|ALT_INV_ram~84_q\ <= NOT \RAM|ram~84_q\;
\RAM|ALT_INV_ram~631_combout\ <= NOT \RAM|ram~631_combout\;
\RAM|ALT_INV_ram~196_q\ <= NOT \RAM|ram~196_q\;
\RAM|ALT_INV_ram~164_q\ <= NOT \RAM|ram~164_q\;
\RAM|ALT_INV_ram~180_q\ <= NOT \RAM|ram~180_q\;
\RAM|ALT_INV_ram~148_q\ <= NOT \RAM|ram~148_q\;
\RAM|ALT_INV_ram~630_combout\ <= NOT \RAM|ram~630_combout\;
\RAM|ALT_INV_ram~68_q\ <= NOT \RAM|ram~68_q\;
\RAM|ALT_INV_ram~36_q\ <= NOT \RAM|ram~36_q\;
\RAM|ALT_INV_ram~52_q\ <= NOT \RAM|ram~52_q\;
\RAM|ALT_INV_ram~20_q\ <= NOT \RAM|ram~20_q\;
\CPU|MUX1|ALT_INV_saida_MUX[4]~3_combout\ <= NOT \CPU|MUX1|saida_MUX[4]~3_combout\;
\RAM|ALT_INV_ram~629_combout\ <= NOT \RAM|ram~629_combout\;
\RAM|ALT_INV_ram~628_combout\ <= NOT \RAM|ram~628_combout\;
\RAM|ALT_INV_ram~627_combout\ <= NOT \RAM|ram~627_combout\;
\RAM|ALT_INV_ram~523_q\ <= NOT \RAM|ram~523_q\;
\RAM|ALT_INV_ram~515_q\ <= NOT \RAM|ram~515_q\;
\RAM|ALT_INV_ram~491_q\ <= NOT \RAM|ram~491_q\;
\RAM|ALT_INV_ram~483_q\ <= NOT \RAM|ram~483_q\;
\RAM|ALT_INV_ram~626_combout\ <= NOT \RAM|ram~626_combout\;
\RAM|ALT_INV_ram~395_q\ <= NOT \RAM|ram~395_q\;
\RAM|ALT_INV_ram~387_q\ <= NOT \RAM|ram~387_q\;
\RAM|ALT_INV_ram~363_q\ <= NOT \RAM|ram~363_q\;
\RAM|ALT_INV_ram~355_q\ <= NOT \RAM|ram~355_q\;
\RAM|ALT_INV_ram~625_combout\ <= NOT \RAM|ram~625_combout\;
\RAM|ALT_INV_ram~459_q\ <= NOT \RAM|ram~459_q\;
\RAM|ALT_INV_ram~451_q\ <= NOT \RAM|ram~451_q\;
\RAM|ALT_INV_ram~427_q\ <= NOT \RAM|ram~427_q\;
\RAM|ALT_INV_ram~419_q\ <= NOT \RAM|ram~419_q\;
\RAM|ALT_INV_ram~624_combout\ <= NOT \RAM|ram~624_combout\;
\RAM|ALT_INV_ram~331_q\ <= NOT \RAM|ram~331_q\;
\RAM|ALT_INV_ram~323_q\ <= NOT \RAM|ram~323_q\;
\RAM|ALT_INV_ram~299_q\ <= NOT \RAM|ram~299_q\;
\RAM|ALT_INV_ram~291_q\ <= NOT \RAM|ram~291_q\;
\RAM|ALT_INV_ram~623_combout\ <= NOT \RAM|ram~623_combout\;
\RAM|ALT_INV_ram~622_combout\ <= NOT \RAM|ram~622_combout\;
\RAM|ALT_INV_ram~267_q\ <= NOT \RAM|ram~267_q\;
\RAM|ALT_INV_ram~259_q\ <= NOT \RAM|ram~259_q\;
\RAM|ALT_INV_ram~139_q\ <= NOT \RAM|ram~139_q\;
\RAM|ALT_INV_ram~131_q\ <= NOT \RAM|ram~131_q\;
\RAM|ALT_INV_ram~621_combout\ <= NOT \RAM|ram~621_combout\;
\RAM|ALT_INV_ram~235_q\ <= NOT \RAM|ram~235_q\;
\RAM|ALT_INV_ram~227_q\ <= NOT \RAM|ram~227_q\;
\RAM|ALT_INV_ram~107_q\ <= NOT \RAM|ram~107_q\;
\RAM|ALT_INV_ram~99_q\ <= NOT \RAM|ram~99_q\;
\RAM|ALT_INV_ram~620_combout\ <= NOT \RAM|ram~620_combout\;
\RAM|ALT_INV_ram~203_q\ <= NOT \RAM|ram~203_q\;
\RAM|ALT_INV_ram~195_q\ <= NOT \RAM|ram~195_q\;
\RAM|ALT_INV_ram~75_q\ <= NOT \RAM|ram~75_q\;
\RAM|ALT_INV_ram~67_q\ <= NOT \RAM|ram~67_q\;
\RAM|ALT_INV_ram~619_combout\ <= NOT \RAM|ram~619_combout\;
\RAM|ALT_INV_ram~171_q\ <= NOT \RAM|ram~171_q\;
\RAM|ALT_INV_ram~163_q\ <= NOT \RAM|ram~163_q\;
\RAM|ALT_INV_ram~43_q\ <= NOT \RAM|ram~43_q\;
\RAM|ALT_INV_ram~35_q\ <= NOT \RAM|ram~35_q\;
\RAM|ALT_INV_ram~618_combout\ <= NOT \RAM|ram~618_combout\;
\RAM|ALT_INV_ram~617_combout\ <= NOT \RAM|ram~617_combout\;
\RAM|ALT_INV_ram~507_q\ <= NOT \RAM|ram~507_q\;
\RAM|ALT_INV_ram~499_q\ <= NOT \RAM|ram~499_q\;
\RAM|ALT_INV_ram~443_q\ <= NOT \RAM|ram~443_q\;
\RAM|ALT_INV_ram~435_q\ <= NOT \RAM|ram~435_q\;
\RAM|ALT_INV_ram~616_combout\ <= NOT \RAM|ram~616_combout\;
\RAM|ALT_INV_ram~475_q\ <= NOT \RAM|ram~475_q\;
\RAM|ALT_INV_ram~467_q\ <= NOT \RAM|ram~467_q\;
\RAM|ALT_INV_ram~411_q\ <= NOT \RAM|ram~411_q\;
\RAM|ALT_INV_ram~403_q\ <= NOT \RAM|ram~403_q\;
\RAM|ALT_INV_ram~615_combout\ <= NOT \RAM|ram~615_combout\;
\RAM|ALT_INV_ram~379_q\ <= NOT \RAM|ram~379_q\;
\RAM|ALT_INV_ram~371_q\ <= NOT \RAM|ram~371_q\;
\RAM|ALT_INV_ram~315_q\ <= NOT \RAM|ram~315_q\;
\RAM|ALT_INV_ram~307_q\ <= NOT \RAM|ram~307_q\;
\RAM|ALT_INV_ram~614_combout\ <= NOT \RAM|ram~614_combout\;
\RAM|ALT_INV_ram~347_q\ <= NOT \RAM|ram~347_q\;
\RAM|ALT_INV_ram~339_q\ <= NOT \RAM|ram~339_q\;
\RAM|ALT_INV_ram~283_q\ <= NOT \RAM|ram~283_q\;
\RAM|ALT_INV_ram~275_q\ <= NOT \RAM|ram~275_q\;
\RAM|ALT_INV_ram~613_combout\ <= NOT \RAM|ram~613_combout\;
\RAM|ALT_INV_ram~612_combout\ <= NOT \RAM|ram~612_combout\;
\RAM|ALT_INV_ram~251_q\ <= NOT \RAM|ram~251_q\;
\RAM|ALT_INV_ram~243_q\ <= NOT \RAM|ram~243_q\;
\RAM|ALT_INV_ram~219_q\ <= NOT \RAM|ram~219_q\;
\RAM|ALT_INV_ram~211_q\ <= NOT \RAM|ram~211_q\;
\RAM|ALT_INV_ram~611_combout\ <= NOT \RAM|ram~611_combout\;
\RAM|ALT_INV_ram~123_q\ <= NOT \RAM|ram~123_q\;
\RAM|ALT_INV_ram~115_q\ <= NOT \RAM|ram~115_q\;
\RAM|ALT_INV_ram~91_q\ <= NOT \RAM|ram~91_q\;
\RAM|ALT_INV_ram~83_q\ <= NOT \RAM|ram~83_q\;
\RAM|ALT_INV_ram~610_combout\ <= NOT \RAM|ram~610_combout\;
\RAM|ALT_INV_ram~187_q\ <= NOT \RAM|ram~187_q\;
\RAM|ALT_INV_ram~179_q\ <= NOT \RAM|ram~179_q\;
\RAM|ALT_INV_ram~155_q\ <= NOT \RAM|ram~155_q\;
\RAM|ALT_INV_ram~147_q\ <= NOT \RAM|ram~147_q\;
\RAM|ALT_INV_ram~609_combout\ <= NOT \RAM|ram~609_combout\;
\RAM|ALT_INV_ram~59_q\ <= NOT \RAM|ram~59_q\;
\RAM|ALT_INV_ram~51_q\ <= NOT \RAM|ram~51_q\;
\RAM|ALT_INV_ram~27_q\ <= NOT \RAM|ram~27_q\;
\RAM|ALT_INV_ram~19_q\ <= NOT \RAM|ram~19_q\;
\CPU|MUX1|ALT_INV_saida_MUX[2]~2_combout\ <= NOT \CPU|MUX1|saida_MUX[2]~2_combout\;
\RAM|ALT_INV_ram~608_combout\ <= NOT \RAM|ram~608_combout\;
\RAM|ALT_INV_ram~607_combout\ <= NOT \RAM|ram~607_combout\;
\RAM|ALT_INV_ram~606_combout\ <= NOT \RAM|ram~606_combout\;
\RAM|ALT_INV_ram~521_q\ <= NOT \RAM|ram~521_q\;
\RAM|ALT_INV_ram~393_q\ <= NOT \RAM|ram~393_q\;
\RAM|ALT_INV_ram~457_q\ <= NOT \RAM|ram~457_q\;
\RAM|ALT_INV_ram~329_q\ <= NOT \RAM|ram~329_q\;
\RAM|ALT_INV_ram~605_combout\ <= NOT \RAM|ram~605_combout\;
\RAM|ALT_INV_ram~489_q\ <= NOT \RAM|ram~489_q\;
\RAM|ALT_INV_ram~361_q\ <= NOT \RAM|ram~361_q\;
\RAM|ALT_INV_ram~425_q\ <= NOT \RAM|ram~425_q\;
\RAM|ALT_INV_ram~297_q\ <= NOT \RAM|ram~297_q\;
\RAM|ALT_INV_ram~604_combout\ <= NOT \RAM|ram~604_combout\;
\RAM|ALT_INV_ram~505_q\ <= NOT \RAM|ram~505_q\;
\RAM|ALT_INV_ram~377_q\ <= NOT \RAM|ram~377_q\;
\RAM|ALT_INV_ram~441_q\ <= NOT \RAM|ram~441_q\;
\RAM|ALT_INV_ram~313_q\ <= NOT \RAM|ram~313_q\;
\RAM|ALT_INV_ram~603_combout\ <= NOT \RAM|ram~603_combout\;
\RAM|ALT_INV_ram~473_q\ <= NOT \RAM|ram~473_q\;
\RAM|ALT_INV_ram~345_q\ <= NOT \RAM|ram~345_q\;
\RAM|ALT_INV_ram~409_q\ <= NOT \RAM|ram~409_q\;
\RAM|ALT_INV_ram~281_q\ <= NOT \RAM|ram~281_q\;
\RAM|ALT_INV_ram~602_combout\ <= NOT \RAM|ram~602_combout\;
\RAM|ALT_INV_ram~601_combout\ <= NOT \RAM|ram~601_combout\;
\RAM|ALT_INV_ram~265_q\ <= NOT \RAM|ram~265_q\;
\RAM|ALT_INV_ram~233_q\ <= NOT \RAM|ram~233_q\;
\RAM|ALT_INV_ram~249_q\ <= NOT \RAM|ram~249_q\;
\RAM|ALT_INV_ram~217_q\ <= NOT \RAM|ram~217_q\;
\RAM|ALT_INV_ram~600_combout\ <= NOT \RAM|ram~600_combout\;
\RAM|ALT_INV_ram~137_q\ <= NOT \RAM|ram~137_q\;
\RAM|ALT_INV_ram~105_q\ <= NOT \RAM|ram~105_q\;
\RAM|ALT_INV_ram~121_q\ <= NOT \RAM|ram~121_q\;
\RAM|ALT_INV_ram~89_q\ <= NOT \RAM|ram~89_q\;
\RAM|ALT_INV_ram~599_combout\ <= NOT \RAM|ram~599_combout\;
\RAM|ALT_INV_ram~201_q\ <= NOT \RAM|ram~201_q\;
\RAM|ALT_INV_ram~169_q\ <= NOT \RAM|ram~169_q\;
\RAM|ALT_INV_ram~185_q\ <= NOT \RAM|ram~185_q\;
\RAM|ALT_INV_ram~153_q\ <= NOT \RAM|ram~153_q\;
\RAM|ALT_INV_ram~598_combout\ <= NOT \RAM|ram~598_combout\;
\RAM|ALT_INV_ram~73_q\ <= NOT \RAM|ram~73_q\;
\RAM|ALT_INV_ram~41_q\ <= NOT \RAM|ram~41_q\;
\RAM|ALT_INV_ram~57_q\ <= NOT \RAM|ram~57_q\;
\RAM|ALT_INV_ram~25_q\ <= NOT \RAM|ram~25_q\;
\RAM|ALT_INV_ram~597_combout\ <= NOT \RAM|ram~597_combout\;
\RAM|ALT_INV_ram~596_combout\ <= NOT \RAM|ram~596_combout\;
\RAM|ALT_INV_ram~513_q\ <= NOT \RAM|ram~513_q\;
\RAM|ALT_INV_ram~481_q\ <= NOT \RAM|ram~481_q\;
\RAM|ALT_INV_ram~385_q\ <= NOT \RAM|ram~385_q\;
\RAM|ALT_INV_ram~353_q\ <= NOT \RAM|ram~353_q\;
\RAM|ALT_INV_ram~595_combout\ <= NOT \RAM|ram~595_combout\;
\RAM|ALT_INV_ram~497_q\ <= NOT \RAM|ram~497_q\;
\RAM|ALT_INV_ram~465_q\ <= NOT \RAM|ram~465_q\;
\RAM|ALT_INV_ram~369_q\ <= NOT \RAM|ram~369_q\;
\RAM|ALT_INV_ram~337_q\ <= NOT \RAM|ram~337_q\;
\RAM|ALT_INV_ram~594_combout\ <= NOT \RAM|ram~594_combout\;
\RAM|ALT_INV_ram~449_q\ <= NOT \RAM|ram~449_q\;
\RAM|ALT_INV_ram~417_q\ <= NOT \RAM|ram~417_q\;
\RAM|ALT_INV_ram~321_q\ <= NOT \RAM|ram~321_q\;
\RAM|ALT_INV_ram~289_q\ <= NOT \RAM|ram~289_q\;
\RAM|ALT_INV_ram~593_combout\ <= NOT \RAM|ram~593_combout\;
\RAM|ALT_INV_ram~433_q\ <= NOT \RAM|ram~433_q\;
\RAM|ALT_INV_ram~401_q\ <= NOT \RAM|ram~401_q\;
\RAM|ALT_INV_ram~305_q\ <= NOT \RAM|ram~305_q\;
\RAM|ALT_INV_ram~273_q\ <= NOT \RAM|ram~273_q\;
\RAM|ALT_INV_ram~592_combout\ <= NOT \RAM|ram~592_combout\;
\RAM|ALT_INV_ram~591_combout\ <= NOT \RAM|ram~591_combout\;
\RAM|ALT_INV_ram~257_q\ <= NOT \RAM|ram~257_q\;
\RAM|ALT_INV_ram~225_q\ <= NOT \RAM|ram~225_q\;
\RAM|ALT_INV_ram~193_q\ <= NOT \RAM|ram~193_q\;
\RAM|ALT_INV_ram~161_q\ <= NOT \RAM|ram~161_q\;
\RAM|ALT_INV_ram~590_combout\ <= NOT \RAM|ram~590_combout\;
\RAM|ALT_INV_ram~129_q\ <= NOT \RAM|ram~129_q\;
\RAM|ALT_INV_ram~97_q\ <= NOT \RAM|ram~97_q\;
\RAM|ALT_INV_ram~65_q\ <= NOT \RAM|ram~65_q\;
\RAM|ALT_INV_ram~33_q\ <= NOT \RAM|ram~33_q\;
\RAM|ALT_INV_ram~589_combout\ <= NOT \RAM|ram~589_combout\;
\RAM|ALT_INV_ram~241_q\ <= NOT \RAM|ram~241_q\;
\RAM|ALT_INV_ram~209_q\ <= NOT \RAM|ram~209_q\;
\RAM|ALT_INV_ram~177_q\ <= NOT \RAM|ram~177_q\;
\RAM|ALT_INV_ram~145_q\ <= NOT \RAM|ram~145_q\;
\RAM|ALT_INV_ram~588_combout\ <= NOT \RAM|ram~588_combout\;
\RAM|ALT_INV_ram~113_q\ <= NOT \RAM|ram~113_q\;
\RAM|ALT_INV_ram~81_q\ <= NOT \RAM|ram~81_q\;
\RAM|ALT_INV_ram~49_q\ <= NOT \RAM|ram~49_q\;
\RAM|ALT_INV_ram~17_q\ <= NOT \RAM|ram~17_q\;
\CPU|MUX1|ALT_INV_saida_MUX[1]~1_combout\ <= NOT \CPU|MUX1|saida_MUX[1]~1_combout\;
\RAM|ALT_INV_ram~587_combout\ <= NOT \RAM|ram~587_combout\;
\RAM|ALT_INV_ram~586_combout\ <= NOT \RAM|ram~586_combout\;
\RAM|ALT_INV_ram~520_q\ <= NOT \RAM|ram~520_q\;
\RAM|ALT_INV_ram~264_q\ <= NOT \RAM|ram~264_q\;
\RAM|ALT_INV_ram~504_q\ <= NOT \RAM|ram~504_q\;
\RAM|ALT_INV_ram~248_q\ <= NOT \RAM|ram~248_q\;
\RAM|ALT_INV_ram~585_combout\ <= NOT \RAM|ram~585_combout\;
\RAM|ALT_INV_ram~488_q\ <= NOT \RAM|ram~488_q\;
\RAM|ALT_INV_ram~232_q\ <= NOT \RAM|ram~232_q\;
\RAM|ALT_INV_ram~472_q\ <= NOT \RAM|ram~472_q\;
\RAM|ALT_INV_ram~216_q\ <= NOT \RAM|ram~216_q\;
\RAM|ALT_INV_ram~584_combout\ <= NOT \RAM|ram~584_combout\;
\RAM|ALT_INV_ram~456_q\ <= NOT \RAM|ram~456_q\;
\RAM|ALT_INV_ram~200_q\ <= NOT \RAM|ram~200_q\;
\RAM|ALT_INV_ram~440_q\ <= NOT \RAM|ram~440_q\;
\RAM|ALT_INV_ram~184_q\ <= NOT \RAM|ram~184_q\;
\RAM|ALT_INV_ram~583_combout\ <= NOT \RAM|ram~583_combout\;
\RAM|ALT_INV_ram~424_q\ <= NOT \RAM|ram~424_q\;
\RAM|ALT_INV_ram~168_q\ <= NOT \RAM|ram~168_q\;
\RAM|ALT_INV_ram~408_q\ <= NOT \RAM|ram~408_q\;
\RAM|ALT_INV_ram~152_q\ <= NOT \RAM|ram~152_q\;
\RAM|ALT_INV_ram~582_combout\ <= NOT \RAM|ram~582_combout\;
\RAM|ALT_INV_ram~512_q\ <= NOT \RAM|ram~512_q\;
\RAM|ALT_INV_ram~256_q\ <= NOT \RAM|ram~256_q\;
\RAM|ALT_INV_ram~480_q\ <= NOT \RAM|ram~480_q\;
\RAM|ALT_INV_ram~224_q\ <= NOT \RAM|ram~224_q\;
\RAM|ALT_INV_ram~581_combout\ <= NOT \RAM|ram~581_combout\;
\RAM|ALT_INV_ram~496_q\ <= NOT \RAM|ram~496_q\;
\RAM|ALT_INV_ram~240_q\ <= NOT \RAM|ram~240_q\;
\RAM|ALT_INV_ram~464_q\ <= NOT \RAM|ram~464_q\;
\RAM|ALT_INV_ram~208_q\ <= NOT \RAM|ram~208_q\;
\RAM|ALT_INV_ram~580_combout\ <= NOT \RAM|ram~580_combout\;
\RAM|ALT_INV_ram~448_q\ <= NOT \RAM|ram~448_q\;
\RAM|ALT_INV_ram~192_q\ <= NOT \RAM|ram~192_q\;
\RAM|ALT_INV_ram~416_q\ <= NOT \RAM|ram~416_q\;
\RAM|ALT_INV_ram~160_q\ <= NOT \RAM|ram~160_q\;
\RAM|ALT_INV_ram~579_combout\ <= NOT \RAM|ram~579_combout\;
\RAM|ALT_INV_ram~432_q\ <= NOT \RAM|ram~432_q\;
\RAM|ALT_INV_ram~176_q\ <= NOT \RAM|ram~176_q\;
\RAM|ALT_INV_ram~400_q\ <= NOT \RAM|ram~400_q\;
\RAM|ALT_INV_ram~144_q\ <= NOT \RAM|ram~144_q\;
\RAM|ALT_INV_ram~578_combout\ <= NOT \RAM|ram~578_combout\;
\RAM|ALT_INV_ram~577_combout\ <= NOT \RAM|ram~577_combout\;
\RAM|ALT_INV_ram~392_q\ <= NOT \RAM|ram~392_q\;
\RAM|ALT_INV_ram~136_q\ <= NOT \RAM|ram~136_q\;
\RAM|ALT_INV_ram~328_q\ <= NOT \RAM|ram~328_q\;
\RAM|ALT_INV_ram~72_q\ <= NOT \RAM|ram~72_q\;
\RAM|ALT_INV_ram~576_combout\ <= NOT \RAM|ram~576_combout\;
\RAM|ALT_INV_ram~360_q\ <= NOT \RAM|ram~360_q\;
\RAM|ALT_INV_ram~104_q\ <= NOT \RAM|ram~104_q\;
\RAM|ALT_INV_ram~296_q\ <= NOT \RAM|ram~296_q\;
\RAM|ALT_INV_ram~40_q\ <= NOT \RAM|ram~40_q\;
\RAM|ALT_INV_ram~575_combout\ <= NOT \RAM|ram~575_combout\;
\RAM|ALT_INV_ram~376_q\ <= NOT \RAM|ram~376_q\;
\RAM|ALT_INV_ram~120_q\ <= NOT \RAM|ram~120_q\;
\RAM|ALT_INV_ram~312_q\ <= NOT \RAM|ram~312_q\;
\RAM|ALT_INV_ram~56_q\ <= NOT \RAM|ram~56_q\;
\RAM|ALT_INV_ram~574_combout\ <= NOT \RAM|ram~574_combout\;
\RAM|ALT_INV_ram~344_q\ <= NOT \RAM|ram~344_q\;
\RAM|ALT_INV_ram~88_q\ <= NOT \RAM|ram~88_q\;
\RAM|ALT_INV_ram~280_q\ <= NOT \RAM|ram~280_q\;
\RAM|ALT_INV_ram~24_q\ <= NOT \RAM|ram~24_q\;
\RAM|ALT_INV_ram~573_combout\ <= NOT \RAM|ram~573_combout\;
\RAM|ALT_INV_ram~572_combout\ <= NOT \RAM|ram~572_combout\;
\RAM|ALT_INV_ram~384_q\ <= NOT \RAM|ram~384_q\;
\RAM|ALT_INV_ram~128_q\ <= NOT \RAM|ram~128_q\;
\RAM|ALT_INV_ram~368_q\ <= NOT \RAM|ram~368_q\;
\RAM|ALT_INV_ram~112_q\ <= NOT \RAM|ram~112_q\;
\RAM|ALT_INV_ram~571_combout\ <= NOT \RAM|ram~571_combout\;
\RAM|ALT_INV_ram~352_q\ <= NOT \RAM|ram~352_q\;
\RAM|ALT_INV_ram~96_q\ <= NOT \RAM|ram~96_q\;
\RAM|ALT_INV_ram~336_q\ <= NOT \RAM|ram~336_q\;
\RAM|ALT_INV_ram~80_q\ <= NOT \RAM|ram~80_q\;
\RAM|ALT_INV_ram~570_combout\ <= NOT \RAM|ram~570_combout\;
\RAM|ALT_INV_ram~320_q\ <= NOT \RAM|ram~320_q\;
\RAM|ALT_INV_ram~64_q\ <= NOT \RAM|ram~64_q\;
\RAM|ALT_INV_ram~304_q\ <= NOT \RAM|ram~304_q\;
\RAM|ALT_INV_ram~48_q\ <= NOT \RAM|ram~48_q\;
\RAM|ALT_INV_ram~569_combout\ <= NOT \RAM|ram~569_combout\;
\RAM|ALT_INV_ram~288_q\ <= NOT \RAM|ram~288_q\;
\RAM|ALT_INV_ram~32_q\ <= NOT \RAM|ram~32_q\;
\RAM|ALT_INV_ram~272_q\ <= NOT \RAM|ram~272_q\;
\RAM|ALT_INV_ram~16_q\ <= NOT \RAM|ram~16_q\;
\CPU|MUX1|ALT_INV_saida_MUX[3]~0_combout\ <= NOT \CPU|MUX1|saida_MUX[3]~0_combout\;
\RAM|ALT_INV_ram~568_combout\ <= NOT \RAM|ram~568_combout\;
\RAM|ALT_INV_ram~567_combout\ <= NOT \RAM|ram~567_combout\;
\RAM|ALT_INV_ram~566_combout\ <= NOT \RAM|ram~566_combout\;
\RAM|ALT_INV_ram~522_q\ <= NOT \RAM|ram~522_q\;
\RAM|ALT_INV_ram~514_q\ <= NOT \RAM|ram~514_q\;
\RAM|ALT_INV_ram~506_q\ <= NOT \RAM|ram~506_q\;
\RAM|ALT_INV_ram~498_q\ <= NOT \RAM|ram~498_q\;
\RAM|ALT_INV_ram~565_combout\ <= NOT \RAM|ram~565_combout\;
\RAM|ALT_INV_ram~394_q\ <= NOT \RAM|ram~394_q\;
\RAM|ALT_INV_ram~386_q\ <= NOT \RAM|ram~386_q\;
\RAM|ALT_INV_ram~378_q\ <= NOT \RAM|ram~378_q\;
\RAM|ALT_INV_ram~370_q\ <= NOT \RAM|ram~370_q\;
\RAM|ALT_INV_ram~564_combout\ <= NOT \RAM|ram~564_combout\;
\RAM|ALT_INV_ram~458_q\ <= NOT \RAM|ram~458_q\;
\RAM|ALT_INV_ram~450_q\ <= NOT \RAM|ram~450_q\;
\RAM|ALT_INV_ram~442_q\ <= NOT \RAM|ram~442_q\;
\RAM|ALT_INV_ram~434_q\ <= NOT \RAM|ram~434_q\;
\RAM|ALT_INV_ram~563_combout\ <= NOT \RAM|ram~563_combout\;
\RAM|ALT_INV_ram~330_q\ <= NOT \RAM|ram~330_q\;
\RAM|ALT_INV_ram~322_q\ <= NOT \RAM|ram~322_q\;
\RAM|ALT_INV_ram~314_q\ <= NOT \RAM|ram~314_q\;
\RAM|ALT_INV_ram~306_q\ <= NOT \RAM|ram~306_q\;
\RAM|ALT_INV_ram~562_combout\ <= NOT \RAM|ram~562_combout\;
\RAM|ALT_INV_ram~561_combout\ <= NOT \RAM|ram~561_combout\;
\RAM|ALT_INV_ram~266_q\ <= NOT \RAM|ram~266_q\;
\RAM|ALT_INV_ram~250_q\ <= NOT \RAM|ram~250_q\;
\RAM|ALT_INV_ram~202_q\ <= NOT \RAM|ram~202_q\;
\RAM|ALT_INV_ram~186_q\ <= NOT \RAM|ram~186_q\;
\RAM|ALT_INV_ram~560_combout\ <= NOT \RAM|ram~560_combout\;
\RAM|ALT_INV_ram~258_q\ <= NOT \RAM|ram~258_q\;
\RAM|ALT_INV_ram~242_q\ <= NOT \RAM|ram~242_q\;
\RAM|ALT_INV_ram~194_q\ <= NOT \RAM|ram~194_q\;
\RAM|ALT_INV_ram~178_q\ <= NOT \RAM|ram~178_q\;
\RAM|ALT_INV_ram~559_combout\ <= NOT \RAM|ram~559_combout\;
\RAM|ALT_INV_ram~138_q\ <= NOT \RAM|ram~138_q\;
\RAM|ALT_INV_ram~122_q\ <= NOT \RAM|ram~122_q\;
\RAM|ALT_INV_ram~74_q\ <= NOT \RAM|ram~74_q\;
\RAM|ALT_INV_ram~58_q\ <= NOT \RAM|ram~58_q\;
\RAM|ALT_INV_ram~558_combout\ <= NOT \RAM|ram~558_combout\;
\RAM|ALT_INV_ram~130_q\ <= NOT \RAM|ram~130_q\;
\RAM|ALT_INV_ram~114_q\ <= NOT \RAM|ram~114_q\;
\RAM|ALT_INV_ram~66_q\ <= NOT \RAM|ram~66_q\;
\RAM|ALT_INV_ram~50_q\ <= NOT \RAM|ram~50_q\;
\RAM|ALT_INV_ram~557_combout\ <= NOT \RAM|ram~557_combout\;
\RAM|ALT_INV_ram~556_combout\ <= NOT \RAM|ram~556_combout\;
\RAM|ALT_INV_ram~490_q\ <= NOT \RAM|ram~490_q\;
\RAM|ALT_INV_ram~362_q\ <= NOT \RAM|ram~362_q\;
\RAM|ALT_INV_ram~474_q\ <= NOT \RAM|ram~474_q\;
\RAM|ALT_INV_ram~346_q\ <= NOT \RAM|ram~346_q\;
\RAM|ALT_INV_ram~555_combout\ <= NOT \RAM|ram~555_combout\;
\RAM|ALT_INV_ram~482_q\ <= NOT \RAM|ram~482_q\;
\RAM|ALT_INV_ram~354_q\ <= NOT \RAM|ram~354_q\;
\RAM|ALT_INV_ram~466_q\ <= NOT \RAM|ram~466_q\;
\RAM|ALT_INV_ram~338_q\ <= NOT \RAM|ram~338_q\;
\RAM|ALT_INV_ram~554_combout\ <= NOT \RAM|ram~554_combout\;
\RAM|ALT_INV_ram~426_q\ <= NOT \RAM|ram~426_q\;
\RAM|ALT_INV_ram~298_q\ <= NOT \RAM|ram~298_q\;
\RAM|ALT_INV_ram~410_q\ <= NOT \RAM|ram~410_q\;
\RAM|ALT_INV_ram~282_q\ <= NOT \RAM|ram~282_q\;
\RAM|ALT_INV_ram~553_combout\ <= NOT \RAM|ram~553_combout\;
\RAM|ALT_INV_ram~418_q\ <= NOT \RAM|ram~418_q\;
\RAM|ALT_INV_ram~290_q\ <= NOT \RAM|ram~290_q\;
\RAM|ALT_INV_ram~402_q\ <= NOT \RAM|ram~402_q\;
\RAM|ALT_INV_ram~274_q\ <= NOT \RAM|ram~274_q\;
\RAM|ALT_INV_ram~552_combout\ <= NOT \RAM|ram~552_combout\;
\RAM|ALT_INV_ram~551_combout\ <= NOT \RAM|ram~551_combout\;
\RAM|ALT_INV_ram~234_q\ <= NOT \RAM|ram~234_q\;
\RAM|ALT_INV_ram~226_q\ <= NOT \RAM|ram~226_q\;
\RAM|ALT_INV_ram~218_q\ <= NOT \RAM|ram~218_q\;
\RAM|ALT_INV_ram~210_q\ <= NOT \RAM|ram~210_q\;
\RAM|ALT_INV_ram~550_combout\ <= NOT \RAM|ram~550_combout\;
\RAM|ALT_INV_ram~106_q\ <= NOT \RAM|ram~106_q\;
\RAM|ALT_INV_ram~98_q\ <= NOT \RAM|ram~98_q\;
\RAM|ALT_INV_ram~90_q\ <= NOT \RAM|ram~90_q\;
\RAM|ALT_INV_ram~82_q\ <= NOT \RAM|ram~82_q\;
\RAM|ALT_INV_ram~549_combout\ <= NOT \RAM|ram~549_combout\;
\RAM|ALT_INV_ram~170_q\ <= NOT \RAM|ram~170_q\;
\RAM|ALT_INV_ram~162_q\ <= NOT \RAM|ram~162_q\;
\RAM|ALT_INV_ram~154_q\ <= NOT \RAM|ram~154_q\;
\RAM|ALT_INV_ram~146_q\ <= NOT \RAM|ram~146_q\;
\RAM|ALT_INV_ram~548_combout\ <= NOT \RAM|ram~548_combout\;
\RAM|ALT_INV_ram~42_q\ <= NOT \RAM|ram~42_q\;
\RAM|ALT_INV_ram~34_q\ <= NOT \RAM|ram~34_q\;
\RAM|ALT_INV_ram~26_q\ <= NOT \RAM|ram~26_q\;
\RAM|ALT_INV_ram~18_q\ <= NOT \RAM|ram~18_q\;
\CPU|DECODER|ALT_INV_SEL_MUX~0_combout\ <= NOT \CPU|DECODER|SEL_MUX~0_combout\;
\ROM|ALT_INV_memROM~127_combout\ <= NOT \ROM|memROM~127_combout\;
\ROM|ALT_INV_memROM~122_combout\ <= NOT \ROM|memROM~122_combout\;
\ROM|ALT_INV_memROM~121_combout\ <= NOT \ROM|memROM~121_combout\;
\ROM|ALT_INV_memROM~120_combout\ <= NOT \ROM|memROM~120_combout\;
\ROM|ALT_INV_memROM~119_combout\ <= NOT \ROM|memROM~119_combout\;
\ROM|ALT_INV_memROM~114_combout\ <= NOT \ROM|memROM~114_combout\;
\ROM|ALT_INV_memROM~113_combout\ <= NOT \ROM|memROM~113_combout\;
\ROM|ALT_INV_memROM~112_combout\ <= NOT \ROM|memROM~112_combout\;
\ROM|ALT_INV_memROM~111_combout\ <= NOT \ROM|memROM~111_combout\;
\ROM|ALT_INV_memROM~110_combout\ <= NOT \ROM|memROM~110_combout\;
\ROM|ALT_INV_memROM~105_combout\ <= NOT \ROM|memROM~105_combout\;
\ROM|ALT_INV_memROM~104_combout\ <= NOT \ROM|memROM~104_combout\;
\ROM|ALT_INV_memROM~103_combout\ <= NOT \ROM|memROM~103_combout\;
\CPU|INSTR|END_RETORNO|ALT_INV_DOUT\(5) <= NOT \CPU|INSTR|END_RETORNO|DOUT\(5);
\CPU|INSTR|END_RETORNO|ALT_INV_DOUT\(6) <= NOT \CPU|INSTR|END_RETORNO|DOUT\(6);
\CPU|INSTR|END_RETORNO|ALT_INV_DOUT\(3) <= NOT \CPU|INSTR|END_RETORNO|DOUT\(3);
\CPU|INSTR|END_RETORNO|ALT_INV_DOUT\(4) <= NOT \CPU|INSTR|END_RETORNO|DOUT\(4);
\CPU|INSTR|END_RETORNO|ALT_INV_DOUT\(1) <= NOT \CPU|INSTR|END_RETORNO|DOUT\(1);
\CPU|INSTR|END_RETORNO|ALT_INV_DOUT\(0) <= NOT \CPU|INSTR|END_RETORNO|DOUT\(0);
\CPU|INSTR|END_RETORNO|ALT_INV_DOUT\(2) <= NOT \CPU|INSTR|END_RETORNO|DOUT\(2);
\CPU|INSTR|END_RETORNO|ALT_INV_DOUT\(8) <= NOT \CPU|INSTR|END_RETORNO|DOUT\(8);
\CPU|INSTR|END_RETORNO|ALT_INV_DOUT\(7) <= NOT \CPU|INSTR|END_RETORNO|DOUT\(7);
\CPU|INSTR|MUX2|ALT_INV_Equal1~0_combout\ <= NOT \CPU|INSTR|MUX2|Equal1~0_combout\;
\CPU|INSTR|MUX2|ALT_INV_Equal2~0_combout\ <= NOT \CPU|INSTR|MUX2|Equal2~0_combout\;
\CPU|FLAG|ALT_INV_DOUT~q\ <= NOT \CPU|FLAG|DOUT~q\;
\ROM|ALT_INV_memROM~102_combout\ <= NOT \ROM|memROM~102_combout\;
\ROM|ALT_INV_memROM~97_combout\ <= NOT \ROM|memROM~97_combout\;
\ROM|ALT_INV_memROM~96_combout\ <= NOT \ROM|memROM~96_combout\;
\ROM|ALT_INV_memROM~95_combout\ <= NOT \ROM|memROM~95_combout\;
\ROM|ALT_INV_memROM~94_combout\ <= NOT \ROM|memROM~94_combout\;
\ROM|ALT_INV_memROM~89_combout\ <= NOT \ROM|memROM~89_combout\;
\ROM|ALT_INV_memROM~88_combout\ <= NOT \ROM|memROM~88_combout\;
\ROM|ALT_INV_memROM~87_combout\ <= NOT \ROM|memROM~87_combout\;
\ROM|ALT_INV_memROM~86_combout\ <= NOT \ROM|memROM~86_combout\;
\ROM|ALT_INV_memROM~81_combout\ <= NOT \ROM|memROM~81_combout\;
\ROM|ALT_INV_memROM~80_combout\ <= NOT \ROM|memROM~80_combout\;
\ROM|ALT_INV_memROM~79_combout\ <= NOT \ROM|memROM~79_combout\;
\CPU|DECODER|ALT_INV_Equal9~0_combout\ <= NOT \CPU|DECODER|Equal9~0_combout\;
\CPU|DECODER|ALT_INV_OP_ULA[1]~0_combout\ <= NOT \CPU|DECODER|OP_ULA[1]~0_combout\;
\CPU|DECODER|ALT_INV_sinais_controle~0_combout\ <= NOT \CPU|DECODER|sinais_controle~0_combout\;
\CPU|DECODER|ALT_INV_Equal5~0_combout\ <= NOT \CPU|DECODER|Equal5~0_combout\;
\ALT_INV_READ_BUS[0]~3_combout\ <= NOT \READ_BUS[0]~3_combout\;
\ALT_INV_READ_BUS[0]~2_combout\ <= NOT \READ_BUS[0]~2_combout\;
\ALT_INV_READ_BUS[0]~1_combout\ <= NOT \READ_BUS[0]~1_combout\;
\DEBOUNCER_KEY1|ALT_INV_DOUT~q\ <= NOT \DEBOUNCER_KEY1|DOUT~q\;
\DEBOUNCER_KEY0|ALT_INV_DOUT~q\ <= NOT \DEBOUNCER_KEY0|DOUT~q\;
\ALT_INV_ENABLE_SWR~2_combout\ <= NOT \ENABLE_SWR~2_combout\;
\ALT_INV_ENABLE_SWR~1_combout\ <= NOT \ENABLE_SWR~1_combout\;
\ALT_INV_ENABLE_SWR~0_combout\ <= NOT \ENABLE_SWR~0_combout\;
\ALT_INV_READ_BUS[0]~0_combout\ <= NOT \READ_BUS[0]~0_combout\;
\CPU|DECODER|ALT_INV_ENABLE_READ~0_combout\ <= NOT \CPU|DECODER|ENABLE_READ~0_combout\;
\ROM|ALT_INV_memROM~78_combout\ <= NOT \ROM|memROM~78_combout\;
\ROM|ALT_INV_memROM~77_combout\ <= NOT \ROM|memROM~77_combout\;
\RAM|ALT_INV_ram~547_combout\ <= NOT \RAM|ram~547_combout\;
\RAM|ALT_INV_ram~546_combout\ <= NOT \RAM|ram~546_combout\;
\RAM|ALT_INV_ram~545_combout\ <= NOT \RAM|ram~545_combout\;
\RAM|ALT_INV_ram~519_q\ <= NOT \RAM|ram~519_q\;
\RAM|ALT_INV_ram~263_q\ <= NOT \RAM|ram~263_q\;
\RAM|ALT_INV_ram~391_q\ <= NOT \RAM|ram~391_q\;
\RAM|ALT_INV_ram~135_q\ <= NOT \RAM|ram~135_q\;
\RAM|ALT_INV_ram~544_combout\ <= NOT \RAM|ram~544_combout\;
\RAM|ALT_INV_ram~511_q\ <= NOT \RAM|ram~511_q\;
\RAM|ALT_INV_ram~255_q\ <= NOT \RAM|ram~255_q\;
\RAM|ALT_INV_ram~383_q\ <= NOT \RAM|ram~383_q\;
\RAM|ALT_INV_ram~127_q\ <= NOT \RAM|ram~127_q\;
\RAM|ALT_INV_ram~543_combout\ <= NOT \RAM|ram~543_combout\;
\RAM|ALT_INV_ram~455_q\ <= NOT \RAM|ram~455_q\;
\RAM|ALT_INV_ram~199_q\ <= NOT \RAM|ram~199_q\;
\RAM|ALT_INV_ram~327_q\ <= NOT \RAM|ram~327_q\;
\RAM|ALT_INV_ram~71_q\ <= NOT \RAM|ram~71_q\;
\RAM|ALT_INV_ram~542_combout\ <= NOT \RAM|ram~542_combout\;
\RAM|ALT_INV_ram~447_q\ <= NOT \RAM|ram~447_q\;
\RAM|ALT_INV_ram~191_q\ <= NOT \RAM|ram~191_q\;
\RAM|ALT_INV_ram~319_q\ <= NOT \RAM|ram~319_q\;
\RAM|ALT_INV_ram~63_q\ <= NOT \RAM|ram~63_q\;
\RAM|ALT_INV_ram~541_combout\ <= NOT \RAM|ram~541_combout\;
\RAM|ALT_INV_ram~540_combout\ <= NOT \RAM|ram~540_combout\;
\RAM|ALT_INV_ram~487_q\ <= NOT \RAM|ram~487_q\;
\RAM|ALT_INV_ram~231_q\ <= NOT \RAM|ram~231_q\;
\RAM|ALT_INV_ram~479_q\ <= NOT \RAM|ram~479_q\;
\RAM|ALT_INV_ram~223_q\ <= NOT \RAM|ram~223_q\;
\RAM|ALT_INV_ram~539_combout\ <= NOT \RAM|ram~539_combout\;
\RAM|ALT_INV_ram~359_q\ <= NOT \RAM|ram~359_q\;
\RAM|ALT_INV_ram~103_q\ <= NOT \RAM|ram~103_q\;
\RAM|ALT_INV_ram~351_q\ <= NOT \RAM|ram~351_q\;
\RAM|ALT_INV_ram~95_q\ <= NOT \RAM|ram~95_q\;
\RAM|ALT_INV_ram~538_combout\ <= NOT \RAM|ram~538_combout\;
\RAM|ALT_INV_ram~423_q\ <= NOT \RAM|ram~423_q\;
\RAM|ALT_INV_ram~167_q\ <= NOT \RAM|ram~167_q\;
\RAM|ALT_INV_ram~415_q\ <= NOT \RAM|ram~415_q\;
\RAM|ALT_INV_ram~159_q\ <= NOT \RAM|ram~159_q\;
\RAM|ALT_INV_ram~537_combout\ <= NOT \RAM|ram~537_combout\;
\RAM|ALT_INV_ram~295_q\ <= NOT \RAM|ram~295_q\;
\RAM|ALT_INV_ram~39_q\ <= NOT \RAM|ram~39_q\;
\RAM|ALT_INV_ram~287_q\ <= NOT \RAM|ram~287_q\;
\RAM|ALT_INV_ram~31_q\ <= NOT \RAM|ram~31_q\;
\RAM|ALT_INV_ram~536_combout\ <= NOT \RAM|ram~536_combout\;
\RAM|ALT_INV_ram~535_combout\ <= NOT \RAM|ram~535_combout\;
\RAM|ALT_INV_ram~503_q\ <= NOT \RAM|ram~503_q\;
\RAM|ALT_INV_ram~247_q\ <= NOT \RAM|ram~247_q\;
\RAM|ALT_INV_ram~495_q\ <= NOT \RAM|ram~495_q\;
\RAM|ALT_INV_ram~239_q\ <= NOT \RAM|ram~239_q\;
\RAM|ALT_INV_ram~534_combout\ <= NOT \RAM|ram~534_combout\;
\RAM|ALT_INV_ram~375_q\ <= NOT \RAM|ram~375_q\;
\RAM|ALT_INV_ram~119_q\ <= NOT \RAM|ram~119_q\;
\RAM|ALT_INV_ram~367_q\ <= NOT \RAM|ram~367_q\;
\RAM|ALT_INV_ram~111_q\ <= NOT \RAM|ram~111_q\;
\RAM|ALT_INV_ram~533_combout\ <= NOT \RAM|ram~533_combout\;
\RAM|ALT_INV_ram~439_q\ <= NOT \RAM|ram~439_q\;
\RAM|ALT_INV_ram~183_q\ <= NOT \RAM|ram~183_q\;
\RAM|ALT_INV_ram~431_q\ <= NOT \RAM|ram~431_q\;
\RAM|ALT_INV_ram~175_q\ <= NOT \RAM|ram~175_q\;
\RAM|ALT_INV_ram~532_combout\ <= NOT \RAM|ram~532_combout\;
\RAM|ALT_INV_ram~311_q\ <= NOT \RAM|ram~311_q\;
\RAM|ALT_INV_ram~55_q\ <= NOT \RAM|ram~55_q\;
\RAM|ALT_INV_ram~303_q\ <= NOT \RAM|ram~303_q\;
\RAM|ALT_INV_ram~47_q\ <= NOT \RAM|ram~47_q\;
\RAM|ALT_INV_ram~531_combout\ <= NOT \RAM|ram~531_combout\;
\ROM|ALT_INV_memROM~76_combout\ <= NOT \ROM|memROM~76_combout\;
\ROM|ALT_INV_memROM~75_combout\ <= NOT \ROM|memROM~75_combout\;
\ROM|ALT_INV_memROM~74_combout\ <= NOT \ROM|memROM~74_combout\;
\ROM|ALT_INV_memROM~73_combout\ <= NOT \ROM|memROM~73_combout\;
\ROM|ALT_INV_memROM~72_combout\ <= NOT \ROM|memROM~72_combout\;
\ROM|ALT_INV_memROM~71_combout\ <= NOT \ROM|memROM~71_combout\;
\ROM|ALT_INV_memROM~70_combout\ <= NOT \ROM|memROM~70_combout\;
\ROM|ALT_INV_memROM~69_combout\ <= NOT \ROM|memROM~69_combout\;
\ROM|ALT_INV_memROM~68_combout\ <= NOT \ROM|memROM~68_combout\;
\ROM|ALT_INV_memROM~67_combout\ <= NOT \ROM|memROM~67_combout\;
\ROM|ALT_INV_memROM~66_combout\ <= NOT \ROM|memROM~66_combout\;
\ROM|ALT_INV_memROM~65_combout\ <= NOT \ROM|memROM~65_combout\;
\ROM|ALT_INV_memROM~64_combout\ <= NOT \ROM|memROM~64_combout\;
\ROM|ALT_INV_memROM~63_combout\ <= NOT \ROM|memROM~63_combout\;
\ROM|ALT_INV_memROM~62_combout\ <= NOT \ROM|memROM~62_combout\;
\ROM|ALT_INV_memROM~61_combout\ <= NOT \ROM|memROM~61_combout\;
\ROM|ALT_INV_memROM~60_combout\ <= NOT \ROM|memROM~60_combout\;
\ROM|ALT_INV_memROM~59_combout\ <= NOT \ROM|memROM~59_combout\;
\RAM|ALT_INV_ram~530_combout\ <= NOT \RAM|ram~530_combout\;
\RAM|ALT_INV_ram~471_q\ <= NOT \RAM|ram~471_q\;
\RAM|ALT_INV_ram~215_q\ <= NOT \RAM|ram~215_q\;
\RAM|ALT_INV_ram~463_q\ <= NOT \RAM|ram~463_q\;
\RAM|ALT_INV_ram~207_q\ <= NOT \RAM|ram~207_q\;
\RAM|ALT_INV_ram~529_combout\ <= NOT \RAM|ram~529_combout\;
\RAM|ALT_INV_ram~343_q\ <= NOT \RAM|ram~343_q\;
\RAM|ALT_INV_ram~87_q\ <= NOT \RAM|ram~87_q\;
\RAM|ALT_INV_ram~335_q\ <= NOT \RAM|ram~335_q\;
\RAM|ALT_INV_ram~79_q\ <= NOT \RAM|ram~79_q\;
\RAM|ALT_INV_ram~528_combout\ <= NOT \RAM|ram~528_combout\;
\RAM|ALT_INV_ram~407_q\ <= NOT \RAM|ram~407_q\;
\RAM|ALT_INV_ram~151_q\ <= NOT \RAM|ram~151_q\;
\RAM|ALT_INV_ram~399_q\ <= NOT \RAM|ram~399_q\;
\RAM|ALT_INV_ram~143_q\ <= NOT \RAM|ram~143_q\;
\RAM|ALT_INV_ram~527_combout\ <= NOT \RAM|ram~527_combout\;
\RAM|ALT_INV_ram~279_q\ <= NOT \RAM|ram~279_q\;
\RAM|ALT_INV_ram~23_q\ <= NOT \RAM|ram~23_q\;
\RAM|ALT_INV_ram~271_q\ <= NOT \RAM|ram~271_q\;
\RAM|ALT_INV_ram~15_q\ <= NOT \RAM|ram~15_q\;
\ALT_INV_ENABLE_LEDR~2_combout\ <= NOT \ENABLE_LEDR~2_combout\;
\ROM|ALT_INV_memROM~58_combout\ <= NOT \ROM|memROM~58_combout\;
\ROM|ALT_INV_memROM~57_combout\ <= NOT \ROM|memROM~57_combout\;
\ROM|ALT_INV_memROM~56_combout\ <= NOT \ROM|memROM~56_combout\;
\ROM|ALT_INV_memROM~55_combout\ <= NOT \ROM|memROM~55_combout\;
\ROM|ALT_INV_memROM~54_combout\ <= NOT \ROM|memROM~54_combout\;
\ROM|ALT_INV_memROM~53_combout\ <= NOT \ROM|memROM~53_combout\;
\ROM|ALT_INV_memROM~52_combout\ <= NOT \ROM|memROM~52_combout\;
\ROM|ALT_INV_memROM~51_combout\ <= NOT \ROM|memROM~51_combout\;

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
	i => \HEX5_DECODER|DECODER_7seg|rascSaida7seg[0]~0_combout\,
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
	i => \HEX5_DECODER|DECODER_7seg|rascSaida7seg[1]~1_combout\,
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
	i => \HEX5_DECODER|DECODER_7seg|rascSaida7seg[2]~2_combout\,
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
	i => \HEX5_DECODER|DECODER_7seg|rascSaida7seg[3]~3_combout\,
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
	i => \HEX5_DECODER|DECODER_7seg|rascSaida7seg[4]~4_combout\,
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
	i => \HEX5_DECODER|DECODER_7seg|rascSaida7seg[5]~5_combout\,
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
	i => \HEX5_DECODER|DECODER_7seg|rascSaida7seg[6]~6_combout\,
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
	i => \LED_R|REG_8bits|DOUT\(0),
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
	i => \LED_R|REG_8bits|DOUT\(1),
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
	i => \LED_R|REG_8bits|DOUT\(2),
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
	i => \LED_R|REG_8bits|DOUT\(3),
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
	i => \LED_R|REG_8bits|DOUT\(4),
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
	i => \LED_R|REG_8bits|DOUT\(5),
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
	i => \LED_R|REG_8bits|DOUT\(6),
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
	i => \LED_R|REG_8bits|DOUT\(7),
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
	i => \LED8|FLIPS|DOUT~q\,
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
	i => \LED9|FLIPS|DOUT~q\,
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

-- Location: FF_X36_Y8_N8
\CPU|INSTR|PC|DOUT[8]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|INSTR|MUX2|MUX_OUT[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|INSTR|PC|DOUT[8]~DUPLICATE_q\);

-- Location: FF_X35_Y6_N19
\CPU|INSTR|PC|DOUT[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|INSTR|MUX2|MUX_OUT[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|INSTR|PC|DOUT[7]~DUPLICATE_q\);

-- Location: FF_X35_Y7_N47
\CPU|INSTR|PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|INSTR|MUX2|MUX_OUT[6]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|INSTR|PC|DOUT\(6));

-- Location: FF_X35_Y7_N4
\CPU|INSTR|PC|DOUT[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|INSTR|MUX2|MUX_OUT[5]~8_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\);

-- Location: FF_X35_Y6_N23
\CPU|INSTR|PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|INSTR|MUX2|MUX_OUT[4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|INSTR|PC|DOUT\(4));

-- Location: FF_X35_Y7_N43
\CPU|INSTR|PC|DOUT[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|INSTR|MUX2|MUX_OUT[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\);

-- Location: MLABCELL_X37_Y6_N51
\ROM|memROM~39\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~39_combout\ = ( \CPU|INSTR|PC|DOUT\(6) & ( \CPU|INSTR|PC|DOUT\(1) & ( (!\CPU|INSTR|PC|DOUT[4]~DUPLICATE_q\ & (((!\CPU|INSTR|PC|DOUT[0]~DUPLICATE_q\ & \CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\)) # (\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\))) # 
-- (\CPU|INSTR|PC|DOUT[4]~DUPLICATE_q\ & (\CPU|INSTR|PC|DOUT[0]~DUPLICATE_q\ & (!\CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\ & !\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\))) ) ) ) # ( !\CPU|INSTR|PC|DOUT\(6) & ( \CPU|INSTR|PC|DOUT\(1) & ( (!\CPU|INSTR|PC|DOUT[4]~DUPLICATE_q\ 
-- & (!\CPU|INSTR|PC|DOUT[0]~DUPLICATE_q\ $ (((!\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\))))) # (\CPU|INSTR|PC|DOUT[4]~DUPLICATE_q\ & (!\CPU|INSTR|PC|DOUT[0]~DUPLICATE_q\ & (!\CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\ $ (\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\)))) ) ) ) # ( 
-- \CPU|INSTR|PC|DOUT\(6) & ( !\CPU|INSTR|PC|DOUT\(1) & ( (!\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\ & ((!\CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\) # (!\CPU|INSTR|PC|DOUT[4]~DUPLICATE_q\ $ (\CPU|INSTR|PC|DOUT[0]~DUPLICATE_q\)))) ) ) ) # ( !\CPU|INSTR|PC|DOUT\(6) & ( 
-- !\CPU|INSTR|PC|DOUT\(1) & ( (!\CPU|INSTR|PC|DOUT[0]~DUPLICATE_q\ & (\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\ & ((!\CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\) # (\CPU|INSTR|PC|DOUT[4]~DUPLICATE_q\)))) # (\CPU|INSTR|PC|DOUT[0]~DUPLICATE_q\ & 
-- (!\CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\ $ (((!\CPU|INSTR|PC|DOUT[4]~DUPLICATE_q\ & !\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001011110100111110010000000001100010100011000001100010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datab => \CPU|INSTR|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datac => \CPU|INSTR|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datad => \CPU|INSTR|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datae => \CPU|INSTR|PC|ALT_INV_DOUT\(6),
	dataf => \CPU|INSTR|PC|ALT_INV_DOUT\(1),
	combout => \ROM|memROM~39_combout\);

-- Location: FF_X35_Y6_N56
\CPU|INSTR|PC|DOUT[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|INSTR|MUX2|MUX_OUT[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|INSTR|PC|DOUT[1]~DUPLICATE_q\);

-- Location: MLABCELL_X37_Y6_N42
\ROM|memROM~40\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~40_combout\ = ( \CPU|INSTR|PC|DOUT[1]~DUPLICATE_q\ & ( \CPU|INSTR|PC|DOUT\(4) & ( (!\CPU|INSTR|PC|DOUT[0]~DUPLICATE_q\ & (\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\ & (!\CPU|INSTR|PC|DOUT\(6) & \CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\))) ) ) ) # ( 
-- !\CPU|INSTR|PC|DOUT[1]~DUPLICATE_q\ & ( \CPU|INSTR|PC|DOUT\(4) & ( (\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\ & (!\CPU|INSTR|PC|DOUT\(6) & (!\CPU|INSTR|PC|DOUT[0]~DUPLICATE_q\ $ (\CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\)))) ) ) ) # ( \CPU|INSTR|PC|DOUT[1]~DUPLICATE_q\ 
-- & ( !\CPU|INSTR|PC|DOUT\(4) & ( (!\CPU|INSTR|PC|DOUT[0]~DUPLICATE_q\ & (!\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\ $ (!\CPU|INSTR|PC|DOUT\(6) $ (!\CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\)))) # (\CPU|INSTR|PC|DOUT[0]~DUPLICATE_q\ & (\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\ & 
-- (\CPU|INSTR|PC|DOUT\(6) & !\CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\))) ) ) ) # ( !\CPU|INSTR|PC|DOUT[1]~DUPLICATE_q\ & ( !\CPU|INSTR|PC|DOUT\(4) & ( (!\CPU|INSTR|PC|DOUT[0]~DUPLICATE_q\ & (!\CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\ & 
-- (!\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\ $ (!\CPU|INSTR|PC|DOUT\(6))))) # (\CPU|INSTR|PC|DOUT[0]~DUPLICATE_q\ & ((!\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\ & (!\CPU|INSTR|PC|DOUT\(6) $ (\CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\))) # (\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\ & 
-- (!\CPU|INSTR|PC|DOUT\(6) & \CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100000010100100000110010100000100000000100000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datab => \CPU|INSTR|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datac => \CPU|INSTR|PC|ALT_INV_DOUT\(6),
	datad => \CPU|INSTR|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datae => \CPU|INSTR|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	dataf => \CPU|INSTR|PC|ALT_INV_DOUT\(4),
	combout => \ROM|memROM~40_combout\);

-- Location: MLABCELL_X37_Y6_N0
\ROM|memROM~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~42_combout\ = ( \CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\ & ( \CPU|INSTR|PC|DOUT\(6) & ( (!\CPU|INSTR|PC|DOUT[1]~DUPLICATE_q\ & (\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\ & \CPU|INSTR|PC|DOUT[4]~DUPLICATE_q\)) ) ) ) # ( !\CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\ & 
-- ( \CPU|INSTR|PC|DOUT\(6) & ( (\CPU|INSTR|PC|DOUT[1]~DUPLICATE_q\ & (!\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\ & !\CPU|INSTR|PC|DOUT[4]~DUPLICATE_q\)) ) ) ) # ( \CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\ & ( !\CPU|INSTR|PC|DOUT\(6) & ( 
-- (\CPU|INSTR|PC|DOUT[4]~DUPLICATE_q\ & ((!\CPU|INSTR|PC|DOUT[0]~DUPLICATE_q\ & (\CPU|INSTR|PC|DOUT[1]~DUPLICATE_q\)) # (\CPU|INSTR|PC|DOUT[0]~DUPLICATE_q\ & (!\CPU|INSTR|PC|DOUT[1]~DUPLICATE_q\ & \CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\)))) ) ) ) # ( 
-- !\CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\ & ( !\CPU|INSTR|PC|DOUT\(6) & ( (!\CPU|INSTR|PC|DOUT[1]~DUPLICATE_q\ & (((!\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\ & \CPU|INSTR|PC|DOUT[4]~DUPLICATE_q\)))) # (\CPU|INSTR|PC|DOUT[1]~DUPLICATE_q\ & 
-- (\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\ & ((!\CPU|INSTR|PC|DOUT[0]~DUPLICATE_q\) # (\CPU|INSTR|PC|DOUT[4]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001011000011000000000010011000110000000000000000000000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datab => \CPU|INSTR|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datac => \CPU|INSTR|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datad => \CPU|INSTR|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datae => \CPU|INSTR|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \CPU|INSTR|PC|ALT_INV_DOUT\(6),
	combout => \ROM|memROM~42_combout\);

-- Location: MLABCELL_X37_Y6_N18
\ROM|memROM~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~41_combout\ = ( \CPU|INSTR|PC|DOUT\(6) & ( \CPU|INSTR|PC|DOUT\(4) & ( (!\CPU|INSTR|PC|DOUT[1]~DUPLICATE_q\ & ((!\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\ & (!\CPU|INSTR|PC|DOUT[0]~DUPLICATE_q\)) # (\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\ & 
-- ((\CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\))))) # (\CPU|INSTR|PC|DOUT[1]~DUPLICATE_q\ & (!\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\ & ((\CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\) # (\CPU|INSTR|PC|DOUT[0]~DUPLICATE_q\)))) ) ) ) # ( !\CPU|INSTR|PC|DOUT\(6) & ( 
-- \CPU|INSTR|PC|DOUT\(4) & ( (!\CPU|INSTR|PC|DOUT[0]~DUPLICATE_q\ & (!\CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\ & (!\CPU|INSTR|PC|DOUT[1]~DUPLICATE_q\ $ (!\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\)))) # (\CPU|INSTR|PC|DOUT[0]~DUPLICATE_q\ & 
-- (\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\ & (!\CPU|INSTR|PC|DOUT[1]~DUPLICATE_q\ $ (\CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\)))) ) ) ) # ( \CPU|INSTR|PC|DOUT\(6) & ( !\CPU|INSTR|PC|DOUT\(4) & ( (!\CPU|INSTR|PC|DOUT[0]~DUPLICATE_q\ & 
-- (!\CPU|INSTR|PC|DOUT[1]~DUPLICATE_q\ & (!\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\ & \CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\))) ) ) ) # ( !\CPU|INSTR|PC|DOUT\(6) & ( !\CPU|INSTR|PC|DOUT\(4) & ( (!\CPU|INSTR|PC|DOUT[1]~DUPLICATE_q\ & 
-- ((!\CPU|INSTR|PC|DOUT[0]~DUPLICATE_q\ & ((\CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\))) # (\CPU|INSTR|PC|DOUT[0]~DUPLICATE_q\ & (\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\)))) # (\CPU|INSTR|PC|DOUT[1]~DUPLICATE_q\ & ((!\CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\ & 
-- (!\CPU|INSTR|PC|DOUT[0]~DUPLICATE_q\)) # (\CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\ & ((!\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011010111100000000001000000000101100000000011001000010111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datab => \CPU|INSTR|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datac => \CPU|INSTR|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datad => \CPU|INSTR|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datae => \CPU|INSTR|PC|ALT_INV_DOUT\(6),
	dataf => \CPU|INSTR|PC|ALT_INV_DOUT\(4),
	combout => \ROM|memROM~41_combout\);

-- Location: MLABCELL_X37_Y6_N30
\ROM|memROM~43\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~43_combout\ = ( \ROM|memROM~42_combout\ & ( \ROM|memROM~41_combout\ & ( ((!\CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\ & (\ROM|memROM~39_combout\)) # (\CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\ & ((\ROM|memROM~40_combout\)))) # (\CPU|INSTR|PC|DOUT\(7)) ) ) ) # 
-- ( !\ROM|memROM~42_combout\ & ( \ROM|memROM~41_combout\ & ( (!\CPU|INSTR|PC|DOUT\(7) & ((!\CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\ & (\ROM|memROM~39_combout\)) # (\CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\ & ((\ROM|memROM~40_combout\))))) # (\CPU|INSTR|PC|DOUT\(7) & 
-- (((!\CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\)))) ) ) ) # ( \ROM|memROM~42_combout\ & ( !\ROM|memROM~41_combout\ & ( (!\CPU|INSTR|PC|DOUT\(7) & ((!\CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\ & (\ROM|memROM~39_combout\)) # (\CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\ & 
-- ((\ROM|memROM~40_combout\))))) # (\CPU|INSTR|PC|DOUT\(7) & (((\CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\)))) ) ) ) # ( !\ROM|memROM~42_combout\ & ( !\ROM|memROM~41_combout\ & ( (!\CPU|INSTR|PC|DOUT\(7) & ((!\CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\ & 
-- (\ROM|memROM~39_combout\)) # (\CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\ & ((\ROM|memROM~40_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000110000010100000011111101011111001100000101111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~39_combout\,
	datab => \ROM|ALT_INV_memROM~40_combout\,
	datac => \CPU|INSTR|PC|ALT_INV_DOUT\(7),
	datad => \CPU|INSTR|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datae => \ROM|ALT_INV_memROM~42_combout\,
	dataf => \ROM|ALT_INV_memROM~41_combout\,
	combout => \ROM|memROM~43_combout\);

-- Location: MLABCELL_X37_Y6_N12
\ROM|memROM~157\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~157_combout\ = ( !\CPU|INSTR|PC|DOUT\(6) & ( \CPU|INSTR|PC|DOUT\(4) & ( (!\CPU|INSTR|PC|DOUT[0]~DUPLICATE_q\ & (!\CPU|INSTR|PC|DOUT[1]~DUPLICATE_q\ & (\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\ & !\CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\))) ) ) ) # ( 
-- \CPU|INSTR|PC|DOUT\(6) & ( !\CPU|INSTR|PC|DOUT\(4) & ( (!\CPU|INSTR|PC|DOUT[0]~DUPLICATE_q\ & (\CPU|INSTR|PC|DOUT[1]~DUPLICATE_q\ & (!\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\ & !\CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\))) ) ) ) # ( !\CPU|INSTR|PC|DOUT\(6) & ( 
-- !\CPU|INSTR|PC|DOUT\(4) & ( (!\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\ & ((!\CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\ & (\CPU|INSTR|PC|DOUT[0]~DUPLICATE_q\)) # (\CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\ & ((!\CPU|INSTR|PC|DOUT[1]~DUPLICATE_q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000011000000001000000000000000001000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datab => \CPU|INSTR|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datac => \CPU|INSTR|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datad => \CPU|INSTR|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datae => \CPU|INSTR|PC|ALT_INV_DOUT\(6),
	dataf => \CPU|INSTR|PC|ALT_INV_DOUT\(4),
	combout => \ROM|memROM~157_combout\);

-- Location: FF_X35_Y6_N59
\CPU|INSTR|PC|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|INSTR|MUX2|MUX_OUT[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|INSTR|PC|DOUT\(0));

-- Location: LABCELL_X35_Y7_N12
\ROM|memROM~44\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~44_combout\ = ( \CPU|INSTR|PC|DOUT[6]~DUPLICATE_q\ & ( (!\CPU|INSTR|PC|DOUT\(1) & (!\CPU|INSTR|PC|DOUT\(5) & ((!\CPU|INSTR|PC|DOUT\(2)) # (!\CPU|INSTR|PC|DOUT\(0))))) ) ) # ( !\CPU|INSTR|PC|DOUT[6]~DUPLICATE_q\ & ( (!\CPU|INSTR|PC|DOUT\(1) & 
-- (!\CPU|INSTR|PC|DOUT\(2) $ (((!\CPU|INSTR|PC|DOUT\(5)) # (!\CPU|INSTR|PC|DOUT\(0)))))) # (\CPU|INSTR|PC|DOUT\(1) & (\CPU|INSTR|PC|DOUT\(2) & (!\CPU|INSTR|PC|DOUT\(5) & !\CPU|INSTR|PC|DOUT\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010001001000010101000100100011000000100000001100000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|PC|ALT_INV_DOUT\(2),
	datab => \CPU|INSTR|PC|ALT_INV_DOUT\(1),
	datac => \CPU|INSTR|PC|ALT_INV_DOUT\(5),
	datad => \CPU|INSTR|PC|ALT_INV_DOUT\(0),
	dataf => \CPU|INSTR|PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	combout => \ROM|memROM~44_combout\);

-- Location: MLABCELL_X37_Y6_N24
\ROM|memROM~153\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~153_combout\ = ( !\CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\ & ( (!\CPU|INSTR|PC|DOUT\(8) & (\ROM|memROM~43_combout\)) # (\CPU|INSTR|PC|DOUT\(8) & (((!\CPU|INSTR|PC|DOUT[4]~DUPLICATE_q\ & (!\CPU|INSTR|PC|DOUT[7]~DUPLICATE_q\ & 
-- \ROM|memROM~44_combout\))))) ) ) # ( \CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\ & ( (!\CPU|INSTR|PC|DOUT\(8) & (\ROM|memROM~43_combout\)) # (\CPU|INSTR|PC|DOUT\(8) & (((\ROM|memROM~157_combout\ & (!\CPU|INSTR|PC|DOUT[7]~DUPLICATE_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0010001000100010001001110010001001110010001000100010011100100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|PC|ALT_INV_DOUT\(8),
	datab => \ROM|ALT_INV_memROM~43_combout\,
	datac => \ROM|ALT_INV_memROM~157_combout\,
	datad => \CPU|INSTR|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datae => \CPU|INSTR|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	dataf => \ROM|ALT_INV_memROM~44_combout\,
	datag => \CPU|INSTR|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	combout => \ROM|memROM~153_combout\);

-- Location: LABCELL_X32_Y7_N30
\CPU|INSTR|SOMA_CONST|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|INSTR|SOMA_CONST|Add0~13_sumout\ = SUM(( \CPU|INSTR|PC|DOUT[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))
-- \CPU|INSTR|SOMA_CONST|Add0~14\ = CARRY(( \CPU|INSTR|PC|DOUT[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|INSTR|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	cin => GND,
	sumout => \CPU|INSTR|SOMA_CONST|Add0~13_sumout\,
	cout => \CPU|INSTR|SOMA_CONST|Add0~14\);

-- Location: LABCELL_X35_Y6_N0
\ROM|memROM~70\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~70_combout\ = ( !\CPU|INSTR|PC|DOUT[4]~DUPLICATE_q\ & ( !\CPU|INSTR|PC|DOUT\(7) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|INSTR|PC|ALT_INV_DOUT\(7),
	dataf => \CPU|INSTR|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	combout => \ROM|memROM~70_combout\);

-- Location: MLABCELL_X34_Y8_N15
\ROM|memROM~96\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~96_combout\ = ( \CPU|INSTR|PC|DOUT\(2) & ( \ROM|memROM~70_combout\ & ( (!\CPU|INSTR|PC|DOUT[6]~DUPLICATE_q\ & (\CPU|INSTR|PC|DOUT\(5) & !\CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\)) ) ) ) # ( !\CPU|INSTR|PC|DOUT\(2) & ( \ROM|memROM~70_combout\ & ( 
-- (!\CPU|INSTR|PC|DOUT\(5) & (!\CPU|INSTR|PC|DOUT[6]~DUPLICATE_q\ $ (\CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011000000001100000000110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|INSTR|PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	datac => \CPU|INSTR|PC|ALT_INV_DOUT\(5),
	datad => \CPU|INSTR|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datae => \CPU|INSTR|PC|ALT_INV_DOUT\(2),
	dataf => \ROM|ALT_INV_memROM~70_combout\,
	combout => \ROM|memROM~96_combout\);

-- Location: MLABCELL_X34_Y8_N51
\ROM|memROM~102\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~102_combout\ = ( !\CPU|INSTR|PC|DOUT[7]~DUPLICATE_q\ & ( \CPU|INSTR|PC|DOUT\(2) & ( (!\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\ & (\CPU|INSTR|PC|DOUT[6]~DUPLICATE_q\ & (!\CPU|INSTR|PC|DOUT\(4) & !\CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datab => \CPU|INSTR|PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	datac => \CPU|INSTR|PC|ALT_INV_DOUT\(4),
	datad => \CPU|INSTR|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datae => \CPU|INSTR|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	dataf => \CPU|INSTR|PC|ALT_INV_DOUT\(2),
	combout => \ROM|memROM~102_combout\);

-- Location: LABCELL_X35_Y8_N12
\ROM|memROM~95\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~95_combout\ = ( \CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\ & ( \ROM|memROM~70_combout\ & ( (!\CPU|INSTR|PC|DOUT[6]~DUPLICATE_q\ & ((!\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\) # (\CPU|INSTR|PC|DOUT\(2)))) ) ) ) # ( !\CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\ & ( 
-- \ROM|memROM~70_combout\ & ( (!\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\ & ((!\CPU|INSTR|PC|DOUT\(2)) # (!\CPU|INSTR|PC|DOUT[6]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101000001010111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datac => \CPU|INSTR|PC|ALT_INV_DOUT\(2),
	datad => \CPU|INSTR|PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	datae => \CPU|INSTR|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	dataf => \ROM|ALT_INV_memROM~70_combout\,
	combout => \ROM|memROM~95_combout\);

-- Location: MLABCELL_X34_Y8_N0
\ROM|memROM~138\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~138_combout\ = ( \CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\ & ( !\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\ & ( (!\CPU|INSTR|PC|DOUT[7]~DUPLICATE_q\ & (!\CPU|INSTR|PC|DOUT\(4) & (\CPU|INSTR|PC|DOUT\(2) & !\CPU|INSTR|PC|DOUT[6]~DUPLICATE_q\))) # 
-- (\CPU|INSTR|PC|DOUT[7]~DUPLICATE_q\ & (!\CPU|INSTR|PC|DOUT[6]~DUPLICATE_q\ $ (((\CPU|INSTR|PC|DOUT\(2)) # (\CPU|INSTR|PC|DOUT\(4)))))) ) ) ) # ( !\CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\ & ( !\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\ & ( 
-- (!\CPU|INSTR|PC|DOUT[7]~DUPLICATE_q\ & (\CPU|INSTR|PC|DOUT\(4) & (\CPU|INSTR|PC|DOUT\(2) & !\CPU|INSTR|PC|DOUT[6]~DUPLICATE_q\))) # (\CPU|INSTR|PC|DOUT[7]~DUPLICATE_q\ & (!\CPU|INSTR|PC|DOUT\(4) & (!\CPU|INSTR|PC|DOUT\(2) & 
-- \CPU|INSTR|PC|DOUT[6]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001000000010010000001010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datab => \CPU|INSTR|PC|ALT_INV_DOUT\(4),
	datac => \CPU|INSTR|PC|ALT_INV_DOUT\(2),
	datad => \CPU|INSTR|PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	datae => \CPU|INSTR|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	dataf => \CPU|INSTR|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	combout => \ROM|memROM~138_combout\);

-- Location: MLABCELL_X34_Y8_N42
\ROM|memROM~136\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~136_combout\ = ( \CPU|INSTR|PC|DOUT\(5) & ( \CPU|INSTR|PC|DOUT\(2) & ( (!\CPU|INSTR|PC|DOUT[6]~DUPLICATE_q\ & ((!\CPU|INSTR|PC|DOUT[7]~DUPLICATE_q\) # ((!\CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\ & !\CPU|INSTR|PC|DOUT\(4))))) # 
-- (\CPU|INSTR|PC|DOUT[6]~DUPLICATE_q\ & (((\CPU|INSTR|PC|DOUT[7]~DUPLICATE_q\ & \CPU|INSTR|PC|DOUT\(4))))) ) ) ) # ( !\CPU|INSTR|PC|DOUT\(5) & ( \CPU|INSTR|PC|DOUT\(2) & ( (\CPU|INSTR|PC|DOUT[6]~DUPLICATE_q\ & (!\CPU|INSTR|PC|DOUT[7]~DUPLICATE_q\ & 
-- ((!\CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\) # (!\CPU|INSTR|PC|DOUT\(4))))) ) ) ) # ( \CPU|INSTR|PC|DOUT\(5) & ( !\CPU|INSTR|PC|DOUT\(2) & ( (!\CPU|INSTR|PC|DOUT[6]~DUPLICATE_q\ & ((!\CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\ & ((\CPU|INSTR|PC|DOUT\(4)))) # 
-- (\CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\ & (!\CPU|INSTR|PC|DOUT[7]~DUPLICATE_q\)))) # (\CPU|INSTR|PC|DOUT[6]~DUPLICATE_q\ & (((\CPU|INSTR|PC|DOUT[7]~DUPLICATE_q\ & \CPU|INSTR|PC|DOUT\(4))))) ) ) ) # ( !\CPU|INSTR|PC|DOUT\(5) & ( !\CPU|INSTR|PC|DOUT\(2) & ( 
-- (!\CPU|INSTR|PC|DOUT[6]~DUPLICATE_q\ & (\CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\ & (\CPU|INSTR|PC|DOUT[7]~DUPLICATE_q\ & \CPU|INSTR|PC|DOUT\(4)))) # (\CPU|INSTR|PC|DOUT[6]~DUPLICATE_q\ & (!\CPU|INSTR|PC|DOUT[7]~DUPLICATE_q\ & 
-- ((!\CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\) # (!\CPU|INSTR|PC|DOUT\(4))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000100100010000001100101100110000001000001100100011000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datab => \CPU|INSTR|PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	datac => \CPU|INSTR|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datad => \CPU|INSTR|PC|ALT_INV_DOUT\(4),
	datae => \CPU|INSTR|PC|ALT_INV_DOUT\(5),
	dataf => \CPU|INSTR|PC|ALT_INV_DOUT\(2),
	combout => \ROM|memROM~136_combout\);

-- Location: MLABCELL_X34_Y8_N24
\ROM|memROM~151\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~151_combout\ = ( \CPU|INSTR|PC|DOUT[6]~DUPLICATE_q\ & ( \CPU|INSTR|PC|DOUT\(2) & ( (\CPU|INSTR|PC|DOUT[7]~DUPLICATE_q\ & (\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\ & \CPU|INSTR|PC|DOUT\(4))) ) ) ) # ( !\CPU|INSTR|PC|DOUT[6]~DUPLICATE_q\ & ( 
-- \CPU|INSTR|PC|DOUT\(2) & ( (\CPU|INSTR|PC|DOUT[7]~DUPLICATE_q\ & (!\CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\ & (\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\ & !\CPU|INSTR|PC|DOUT\(4)))) ) ) ) # ( \CPU|INSTR|PC|DOUT[6]~DUPLICATE_q\ & ( !\CPU|INSTR|PC|DOUT\(2) & ( 
-- (\CPU|INSTR|PC|DOUT[7]~DUPLICATE_q\ & (\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\ & \CPU|INSTR|PC|DOUT\(4))) ) ) ) # ( !\CPU|INSTR|PC|DOUT[6]~DUPLICATE_q\ & ( !\CPU|INSTR|PC|DOUT\(2) & ( (!\CPU|INSTR|PC|DOUT[7]~DUPLICATE_q\ & (!\CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\ 
-- & (\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\ & !\CPU|INSTR|PC|DOUT\(4)))) # (\CPU|INSTR|PC|DOUT[7]~DUPLICATE_q\ & (\CPU|INSTR|PC|DOUT\(4) & (!\CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\ $ (!\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000010100000000000000010100000100000000000000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datab => \CPU|INSTR|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datac => \CPU|INSTR|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datad => \CPU|INSTR|PC|ALT_INV_DOUT\(4),
	datae => \CPU|INSTR|PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	dataf => \CPU|INSTR|PC|ALT_INV_DOUT\(2),
	combout => \ROM|memROM~151_combout\);

-- Location: MLABCELL_X34_Y8_N36
\ROM|memROM~137\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~137_combout\ = ( !\CPU|INSTR|PC|DOUT[7]~DUPLICATE_q\ & ( \CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\ & ( (!\CPU|INSTR|PC|DOUT\(4) & (\CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\ & (!\CPU|INSTR|PC|DOUT[6]~DUPLICATE_q\ $ (\CPU|INSTR|PC|DOUT\(2))))) # 
-- (\CPU|INSTR|PC|DOUT\(4) & (((!\CPU|INSTR|PC|DOUT[6]~DUPLICATE_q\ & !\CPU|INSTR|PC|DOUT\(2))))) ) ) ) # ( \CPU|INSTR|PC|DOUT[7]~DUPLICATE_q\ & ( !\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\ & ( (\CPU|INSTR|PC|DOUT[6]~DUPLICATE_q\ & 
-- ((!\CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\ & (!\CPU|INSTR|PC|DOUT\(2) & !\CPU|INSTR|PC|DOUT\(4))) # (\CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\ & (!\CPU|INSTR|PC|DOUT\(2) $ (!\CPU|INSTR|PC|DOUT\(4)))))) ) ) ) # ( !\CPU|INSTR|PC|DOUT[7]~DUPLICATE_q\ & ( 
-- !\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\ & ( (!\CPU|INSTR|PC|DOUT\(2) & ((!\CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\ & ((!\CPU|INSTR|PC|DOUT\(4)) # (\CPU|INSTR|PC|DOUT[6]~DUPLICATE_q\))) # (\CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\ & (\CPU|INSTR|PC|DOUT[6]~DUPLICATE_q\ & 
-- !\CPU|INSTR|PC|DOUT\(4))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011000000100000001000010001000001000001110000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datab => \CPU|INSTR|PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	datac => \CPU|INSTR|PC|ALT_INV_DOUT\(2),
	datad => \CPU|INSTR|PC|ALT_INV_DOUT\(4),
	datae => \CPU|INSTR|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	dataf => \CPU|INSTR|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	combout => \ROM|memROM~137_combout\);

-- Location: MLABCELL_X34_Y8_N6
\ROM|memROM~98\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~98_combout\ = ( !\CPU|INSTR|PC|DOUT[0]~DUPLICATE_q\ & ( (!\CPU|INSTR|PC|DOUT[8]~DUPLICATE_q\ & ((!\CPU|INSTR|PC|DOUT\(1) & (\ROM|memROM~137_combout\)) # (\CPU|INSTR|PC|DOUT\(1) & (((\ROM|memROM~136_combout\)))))) # 
-- (\CPU|INSTR|PC|DOUT[8]~DUPLICATE_q\ & (\CPU|INSTR|PC|DOUT\(1))) ) ) # ( \CPU|INSTR|PC|DOUT[0]~DUPLICATE_q\ & ( (!\CPU|INSTR|PC|DOUT[8]~DUPLICATE_q\ & ((!\CPU|INSTR|PC|DOUT\(1) & (\ROM|memROM~138_combout\)) # (\CPU|INSTR|PC|DOUT\(1) & 
-- (((\ROM|memROM~151_combout\)))))) # (\CPU|INSTR|PC|DOUT[8]~DUPLICATE_q\ & (\CPU|INSTR|PC|DOUT\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001100100111011000110010001100100011001001110110011101100111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datab => \CPU|INSTR|PC|ALT_INV_DOUT\(1),
	datac => \ROM|ALT_INV_memROM~138_combout\,
	datad => \ROM|ALT_INV_memROM~136_combout\,
	datae => \CPU|INSTR|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	dataf => \ROM|ALT_INV_memROM~151_combout\,
	datag => \ROM|ALT_INV_memROM~137_combout\,
	combout => \ROM|memROM~98_combout\);

-- Location: LABCELL_X35_Y8_N42
\ROM|memROM~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~97_combout\ = ( !\CPU|INSTR|PC|DOUT[7]~DUPLICATE_q\ & ( !\CPU|INSTR|PC|DOUT\(2) & ( (\CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\ & ((!\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\ & (\CPU|INSTR|PC|DOUT[6]~DUPLICATE_q\ & !\CPU|INSTR|PC|DOUT\(4))) # 
-- (\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\ & (!\CPU|INSTR|PC|DOUT[6]~DUPLICATE_q\ & \CPU|INSTR|PC|DOUT\(4))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000010000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datab => \CPU|INSTR|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datac => \CPU|INSTR|PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	datad => \CPU|INSTR|PC|ALT_INV_DOUT\(4),
	datae => \CPU|INSTR|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	dataf => \CPU|INSTR|PC|ALT_INV_DOUT\(2),
	combout => \ROM|memROM~97_combout\);

-- Location: MLABCELL_X34_Y8_N54
\ROM|memROM~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~8_combout\ = ( !\CPU|INSTR|PC|DOUT[0]~DUPLICATE_q\ & ( (!\CPU|INSTR|PC|DOUT[8]~DUPLICATE_q\ & ((((\ROM|memROM~98_combout\))))) # (\CPU|INSTR|PC|DOUT[8]~DUPLICATE_q\ & (((!\ROM|memROM~98_combout\ & (\ROM|memROM~97_combout\)) # 
-- (\ROM|memROM~98_combout\ & ((\ROM|memROM~95_combout\)))))) ) ) # ( \CPU|INSTR|PC|DOUT[0]~DUPLICATE_q\ & ( (!\CPU|INSTR|PC|DOUT[8]~DUPLICATE_q\ & ((((\ROM|memROM~98_combout\))))) # (\CPU|INSTR|PC|DOUT[8]~DUPLICATE_q\ & (((!\ROM|memROM~98_combout\ & 
-- ((\ROM|memROM~102_combout\))) # (\ROM|memROM~98_combout\ & (\ROM|memROM~96_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000010100000101000001010000010110101010111111111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datab => \ROM|ALT_INV_memROM~96_combout\,
	datac => \ROM|ALT_INV_memROM~102_combout\,
	datad => \ROM|ALT_INV_memROM~95_combout\,
	datae => \CPU|INSTR|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	dataf => \ROM|ALT_INV_memROM~98_combout\,
	datag => \ROM|ALT_INV_memROM~97_combout\,
	combout => \ROM|memROM~8_combout\);

-- Location: LABCELL_X36_Y5_N42
\ROM|memROM~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~18_combout\ = ( \CPU|INSTR|PC|DOUT[4]~DUPLICATE_q\ & ( \CPU|INSTR|PC|DOUT[1]~DUPLICATE_q\ & ( (!\CPU|INSTR|PC|DOUT[6]~DUPLICATE_q\ & (\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\ & ((\CPU|INSTR|PC|DOUT\(0))))) # (\CPU|INSTR|PC|DOUT[6]~DUPLICATE_q\ & 
-- (!\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\ & (!\CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\ & !\CPU|INSTR|PC|DOUT\(0)))) ) ) ) # ( !\CPU|INSTR|PC|DOUT[4]~DUPLICATE_q\ & ( \CPU|INSTR|PC|DOUT[1]~DUPLICATE_q\ & ( (\CPU|INSTR|PC|DOUT\(0) & 
-- (!\CPU|INSTR|PC|DOUT[6]~DUPLICATE_q\ $ (!\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\))) ) ) ) # ( \CPU|INSTR|PC|DOUT[4]~DUPLICATE_q\ & ( !\CPU|INSTR|PC|DOUT[1]~DUPLICATE_q\ & ( (!\CPU|INSTR|PC|DOUT[6]~DUPLICATE_q\ & (!\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\ & 
-- (!\CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\ & \CPU|INSTR|PC|DOUT\(0)))) ) ) ) # ( !\CPU|INSTR|PC|DOUT[4]~DUPLICATE_q\ & ( !\CPU|INSTR|PC|DOUT[1]~DUPLICATE_q\ & ( (\CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\ & ((!\CPU|INSTR|PC|DOUT[6]~DUPLICATE_q\ & 
-- (!\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\ & \CPU|INSTR|PC|DOUT\(0))) # (\CPU|INSTR|PC|DOUT[6]~DUPLICATE_q\ & (\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\ & !\CPU|INSTR|PC|DOUT\(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100001000000000001000000000000000011001100100000000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	datab => \CPU|INSTR|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datac => \CPU|INSTR|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datad => \CPU|INSTR|PC|ALT_INV_DOUT\(0),
	datae => \CPU|INSTR|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	dataf => \CPU|INSTR|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	combout => \ROM|memROM~18_combout\);

-- Location: LABCELL_X36_Y5_N0
\ROM|memROM~163\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~163_combout\ = ( \CPU|INSTR|PC|DOUT\(1) & ( \CPU|INSTR|PC|DOUT[6]~DUPLICATE_q\ & ( (\CPU|INSTR|PC|DOUT[0]~DUPLICATE_q\ & (!\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\ & (!\CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\ & !\CPU|INSTR|PC|DOUT[4]~DUPLICATE_q\))) ) ) ) 
-- # ( !\CPU|INSTR|PC|DOUT\(1) & ( \CPU|INSTR|PC|DOUT[6]~DUPLICATE_q\ & ( (!\CPU|INSTR|PC|DOUT[0]~DUPLICATE_q\ & (!\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\ & (!\CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\ & !\CPU|INSTR|PC|DOUT[4]~DUPLICATE_q\))) ) ) ) # ( 
-- \CPU|INSTR|PC|DOUT\(1) & ( !\CPU|INSTR|PC|DOUT[6]~DUPLICATE_q\ & ( (!\CPU|INSTR|PC|DOUT[4]~DUPLICATE_q\ & (!\CPU|INSTR|PC|DOUT[0]~DUPLICATE_q\ & (!\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\ $ (!\CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\)))) # 
-- (\CPU|INSTR|PC|DOUT[4]~DUPLICATE_q\ & (((\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\ & !\CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\)))) ) ) ) # ( !\CPU|INSTR|PC|DOUT\(1) & ( !\CPU|INSTR|PC|DOUT[6]~DUPLICATE_q\ & ( (!\CPU|INSTR|PC|DOUT[4]~DUPLICATE_q\ & 
-- (!\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\ $ (((!\CPU|INSTR|PC|DOUT[0]~DUPLICATE_q\) # (\CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110001100000000001010000011000010000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datab => \CPU|INSTR|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datac => \CPU|INSTR|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datad => \CPU|INSTR|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datae => \CPU|INSTR|PC|ALT_INV_DOUT\(1),
	dataf => \CPU|INSTR|PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	combout => \ROM|memROM~163_combout\);

-- Location: LABCELL_X36_Y5_N36
\ROM|memROM~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~17_combout\ = ( !\CPU|INSTR|PC|DOUT[4]~DUPLICATE_q\ & ( \CPU|INSTR|PC|DOUT[1]~DUPLICATE_q\ & ( (!\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\ & (\CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\ & !\CPU|INSTR|PC|DOUT\(0))) ) ) ) # ( !\CPU|INSTR|PC|DOUT[4]~DUPLICATE_q\ 
-- & ( !\CPU|INSTR|PC|DOUT[1]~DUPLICATE_q\ & ( (!\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\ & (\CPU|INSTR|PC|DOUT\(0) & ((!\CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\) # (\CPU|INSTR|PC|DOUT[6]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000100000000000000000000001100000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	datab => \CPU|INSTR|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datac => \CPU|INSTR|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datad => \CPU|INSTR|PC|ALT_INV_DOUT\(0),
	datae => \CPU|INSTR|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	dataf => \CPU|INSTR|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	combout => \ROM|memROM~17_combout\);

-- Location: LABCELL_X36_Y5_N48
\ROM|memROM~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~16_combout\ = ( \CPU|INSTR|PC|DOUT[4]~DUPLICATE_q\ & ( \CPU|INSTR|PC|DOUT[1]~DUPLICATE_q\ & ( (!\CPU|INSTR|PC|DOUT\(0) & ((!\CPU|INSTR|PC|DOUT[6]~DUPLICATE_q\ & (\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\)) # (\CPU|INSTR|PC|DOUT[6]~DUPLICATE_q\ & 
-- (!\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\ & !\CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\)))) ) ) ) # ( !\CPU|INSTR|PC|DOUT[4]~DUPLICATE_q\ & ( \CPU|INSTR|PC|DOUT[1]~DUPLICATE_q\ & ( (!\CPU|INSTR|PC|DOUT\(0) & (!\CPU|INSTR|PC|DOUT[6]~DUPLICATE_q\ $ 
-- (!\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001100110000000000110001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	datab => \CPU|INSTR|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datac => \CPU|INSTR|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datad => \CPU|INSTR|PC|ALT_INV_DOUT\(0),
	datae => \CPU|INSTR|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	dataf => \CPU|INSTR|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	combout => \ROM|memROM~16_combout\);

-- Location: LABCELL_X36_Y5_N12
\ROM|memROM~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~19_combout\ = ( \ROM|memROM~17_combout\ & ( \ROM|memROM~16_combout\ & ( (!\CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\) # ((!\CPU|INSTR|PC|DOUT[8]~DUPLICATE_q\ & (\ROM|memROM~18_combout\)) # (\CPU|INSTR|PC|DOUT[8]~DUPLICATE_q\ & 
-- ((\ROM|memROM~163_combout\)))) ) ) ) # ( !\ROM|memROM~17_combout\ & ( \ROM|memROM~16_combout\ & ( (!\CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\ & (((!\CPU|INSTR|PC|DOUT[8]~DUPLICATE_q\)))) # (\CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\ & 
-- ((!\CPU|INSTR|PC|DOUT[8]~DUPLICATE_q\ & (\ROM|memROM~18_combout\)) # (\CPU|INSTR|PC|DOUT[8]~DUPLICATE_q\ & ((\ROM|memROM~163_combout\))))) ) ) ) # ( \ROM|memROM~17_combout\ & ( !\ROM|memROM~16_combout\ & ( (!\CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\ & 
-- (((\CPU|INSTR|PC|DOUT[8]~DUPLICATE_q\)))) # (\CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\ & ((!\CPU|INSTR|PC|DOUT[8]~DUPLICATE_q\ & (\ROM|memROM~18_combout\)) # (\CPU|INSTR|PC|DOUT[8]~DUPLICATE_q\ & ((\ROM|memROM~163_combout\))))) ) ) ) # ( !\ROM|memROM~17_combout\ 
-- & ( !\ROM|memROM~16_combout\ & ( (\CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\ & ((!\CPU|INSTR|PC|DOUT[8]~DUPLICATE_q\ & (\ROM|memROM~18_combout\)) # (\CPU|INSTR|PC|DOUT[8]~DUPLICATE_q\ & ((\ROM|memROM~163_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000101000100011010111110111011000001011011101110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datab => \ROM|ALT_INV_memROM~18_combout\,
	datac => \ROM|ALT_INV_memROM~163_combout\,
	datad => \CPU|INSTR|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datae => \ROM|ALT_INV_memROM~17_combout\,
	dataf => \ROM|ALT_INV_memROM~16_combout\,
	combout => \ROM|memROM~19_combout\);

-- Location: LABCELL_X35_Y5_N21
\ROM|memROM~164\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~164_combout\ = ( \CPU|INSTR|PC|DOUT[4]~DUPLICATE_q\ & ( \CPU|INSTR|PC|DOUT\(6) & ( (\CPU|INSTR|PC|DOUT\(0) & (!\CPU|INSTR|PC|DOUT[1]~DUPLICATE_q\ $ (((!\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\ & !\CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\))))) ) ) ) # ( 
-- \CPU|INSTR|PC|DOUT[4]~DUPLICATE_q\ & ( !\CPU|INSTR|PC|DOUT\(6) & ( (\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\ & (\CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\ & (!\CPU|INSTR|PC|DOUT\(0) & \CPU|INSTR|PC|DOUT[1]~DUPLICATE_q\))) ) ) ) # ( !\CPU|INSTR|PC|DOUT[4]~DUPLICATE_q\ & 
-- ( !\CPU|INSTR|PC|DOUT\(6) & ( (\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\ & (!\CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\ & (\CPU|INSTR|PC|DOUT\(0) & !\CPU|INSTR|PC|DOUT[1]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000000000000000001000000000000000000000000011100001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datab => \CPU|INSTR|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datac => \CPU|INSTR|PC|ALT_INV_DOUT\(0),
	datad => \CPU|INSTR|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datae => \CPU|INSTR|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	dataf => \CPU|INSTR|PC|ALT_INV_DOUT\(6),
	combout => \ROM|memROM~164_combout\);

-- Location: LABCELL_X36_Y5_N6
\ROM|memROM~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~13_combout\ = ( \CPU|INSTR|PC|DOUT[6]~DUPLICATE_q\ & ( (!\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\ & (\CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\ & !\CPU|INSTR|PC|DOUT[4]~DUPLICATE_q\)) # (\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\ & 
-- ((\CPU|INSTR|PC|DOUT[4]~DUPLICATE_q\))) ) ) # ( !\CPU|INSTR|PC|DOUT[6]~DUPLICATE_q\ & ( (\CPU|INSTR|PC|DOUT[4]~DUPLICATE_q\ & (!\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\ $ (!\CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000111100000000000011110000001100001100110000110000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|INSTR|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datac => \CPU|INSTR|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datad => \CPU|INSTR|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	dataf => \CPU|INSTR|PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	combout => \ROM|memROM~13_combout\);

-- Location: LABCELL_X36_Y5_N18
\ROM|memROM~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~14_combout\ = ( \ROM|memROM~13_combout\ & ( (\CPU|INSTR|PC|DOUT[0]~DUPLICATE_q\ & (!\CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\ & (!\CPU|INSTR|PC|DOUT\(4) $ (!\CPU|INSTR|PC|DOUT\(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010000001000000001000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|PC|ALT_INV_DOUT\(4),
	datab => \CPU|INSTR|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datac => \CPU|INSTR|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datad => \CPU|INSTR|PC|ALT_INV_DOUT\(1),
	dataf => \ROM|ALT_INV_memROM~13_combout\,
	combout => \ROM|memROM~14_combout\);

-- Location: LABCELL_X36_Y5_N30
\ROM|memROM~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~15_combout\ = ( \ROM|memROM~164_combout\ & ( \ROM|memROM~14_combout\ & ( (\CPU|INSTR|PC|DOUT\(7) & !\CPU|INSTR|PC|DOUT[8]~DUPLICATE_q\) ) ) ) # ( !\ROM|memROM~164_combout\ & ( \ROM|memROM~14_combout\ & ( (\CPU|INSTR|PC|DOUT\(7) & 
-- !\CPU|INSTR|PC|DOUT[8]~DUPLICATE_q\) ) ) ) # ( \ROM|memROM~164_combout\ & ( !\ROM|memROM~14_combout\ & ( (\CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\ & (\CPU|INSTR|PC|DOUT\(7) & !\CPU|INSTR|PC|DOUT[8]~DUPLICATE_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datac => \CPU|INSTR|PC|ALT_INV_DOUT\(7),
	datad => \CPU|INSTR|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datae => \ROM|ALT_INV_memROM~164_combout\,
	dataf => \ROM|ALT_INV_memROM~14_combout\,
	combout => \ROM|memROM~15_combout\);

-- Location: LABCELL_X36_Y5_N9
\ROM|memROM~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~77_combout\ = ( !\ROM|memROM~15_combout\ & ( (!\ROM|memROM~19_combout\) # (\CPU|INSTR|PC|DOUT\(7)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010111110101111101011111010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|PC|ALT_INV_DOUT\(7),
	datac => \ROM|ALT_INV_memROM~19_combout\,
	dataf => \ROM|ALT_INV_memROM~15_combout\,
	combout => \ROM|memROM~77_combout\);

-- Location: LABCELL_X39_Y7_N33
\CPU|DECODER|sinais_controle~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER|sinais_controle~1_combout\ = ( !\ROM|memROM~77_combout\ & ( \ROM|memROM~4_combout\ & ( (!\ROM|memROM~78_combout\ & !\ROM|memROM~8_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~78_combout\,
	datad => \ROM|ALT_INV_memROM~8_combout\,
	datae => \ROM|ALT_INV_memROM~77_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	combout => \CPU|DECODER|sinais_controle~1_combout\);

-- Location: FF_X32_Y7_N31
\CPU|INSTR|END_RETORNO|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|INSTR|SOMA_CONST|Add0~13_sumout\,
	ena => \CPU|DECODER|sinais_controle~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|INSTR|END_RETORNO|DOUT\(0));

-- Location: LABCELL_X35_Y6_N57
\CPU|INSTR|MUX2|MUX_OUT[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|INSTR|MUX2|MUX_OUT[0]~3_combout\ = ( \CPU|INSTR|SOMA_CONST|Add0~13_sumout\ & ( (!\CPU|INSTR|MUX2|Equal2~0_combout\) # ((!\CPU|INSTR|MUX2|Equal1~0_combout\ & ((\CPU|INSTR|END_RETORNO|DOUT\(0)))) # (\CPU|INSTR|MUX2|Equal1~0_combout\ & 
-- (\ROM|memROM~153_combout\))) ) ) # ( !\CPU|INSTR|SOMA_CONST|Add0~13_sumout\ & ( (\CPU|INSTR|MUX2|Equal2~0_combout\ & ((!\CPU|INSTR|MUX2|Equal1~0_combout\ & ((\CPU|INSTR|END_RETORNO|DOUT\(0)))) # (\CPU|INSTR|MUX2|Equal1~0_combout\ & 
-- (\ROM|memROM~153_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011000000010010001111001101111011111100110111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|MUX2|ALT_INV_Equal1~0_combout\,
	datab => \CPU|INSTR|MUX2|ALT_INV_Equal2~0_combout\,
	datac => \ROM|ALT_INV_memROM~153_combout\,
	datad => \CPU|INSTR|END_RETORNO|ALT_INV_DOUT\(0),
	dataf => \CPU|INSTR|SOMA_CONST|ALT_INV_Add0~13_sumout\,
	combout => \CPU|INSTR|MUX2|MUX_OUT[0]~3_combout\);

-- Location: FF_X35_Y6_N58
\CPU|INSTR|PC|DOUT[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|INSTR|MUX2|MUX_OUT[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|INSTR|PC|DOUT[0]~DUPLICATE_q\);

-- Location: LABCELL_X32_Y7_N33
\CPU|INSTR|SOMA_CONST|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|INSTR|SOMA_CONST|Add0~17_sumout\ = SUM(( \CPU|INSTR|PC|DOUT\(1) ) + ( GND ) + ( \CPU|INSTR|SOMA_CONST|Add0~14\ ))
-- \CPU|INSTR|SOMA_CONST|Add0~18\ = CARRY(( \CPU|INSTR|PC|DOUT\(1) ) + ( GND ) + ( \CPU|INSTR|SOMA_CONST|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|INSTR|PC|ALT_INV_DOUT\(1),
	cin => \CPU|INSTR|SOMA_CONST|Add0~14\,
	sumout => \CPU|INSTR|SOMA_CONST|Add0~17_sumout\,
	cout => \CPU|INSTR|SOMA_CONST|Add0~18\);

-- Location: FF_X32_Y7_N35
\CPU|INSTR|END_RETORNO|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|INSTR|SOMA_CONST|Add0~17_sumout\,
	ena => \CPU|DECODER|sinais_controle~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|INSTR|END_RETORNO|DOUT\(1));

-- Location: FF_X36_Y7_N2
\CPU|INSTR|PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|INSTR|MUX2|MUX_OUT[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|INSTR|PC|DOUT\(3));

-- Location: LABCELL_X36_Y7_N36
\ROM|memROM~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~49_combout\ = ( \CPU|INSTR|PC|DOUT[0]~DUPLICATE_q\ & ( \CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\ & ( (!\CPU|INSTR|PC|DOUT\(3) & (((\CPU|INSTR|PC|DOUT\(1)) # (\CPU|INSTR|PC|DOUT\(6))) # (\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\))) # (\CPU|INSTR|PC|DOUT\(3) 
-- & (!\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\ $ ((!\CPU|INSTR|PC|DOUT\(6))))) ) ) ) # ( !\CPU|INSTR|PC|DOUT[0]~DUPLICATE_q\ & ( \CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\ & ( (!\CPU|INSTR|PC|DOUT\(3) & (!\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\ & (!\CPU|INSTR|PC|DOUT\(6) & 
-- \CPU|INSTR|PC|DOUT\(1)))) # (\CPU|INSTR|PC|DOUT\(3) & (!\CPU|INSTR|PC|DOUT\(1) & ((!\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\) # (!\CPU|INSTR|PC|DOUT\(6))))) ) ) ) # ( \CPU|INSTR|PC|DOUT[0]~DUPLICATE_q\ & ( !\CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\ & ( 
-- (!\CPU|INSTR|PC|DOUT\(6) & (!\CPU|INSTR|PC|DOUT\(1) $ (((!\CPU|INSTR|PC|DOUT\(3)) # (!\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\))))) # (\CPU|INSTR|PC|DOUT\(6) & (\CPU|INSTR|PC|DOUT\(3) & (!\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\ & !\CPU|INSTR|PC|DOUT\(1)))) ) ) ) # ( 
-- !\CPU|INSTR|PC|DOUT[0]~DUPLICATE_q\ & ( !\CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\ & ( (!\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\ & ((!\CPU|INSTR|PC|DOUT\(6) & (!\CPU|INSTR|PC|DOUT\(3) & \CPU|INSTR|PC|DOUT\(1))) # (\CPU|INSTR|PC|DOUT\(6) & 
-- ((!\CPU|INSTR|PC|DOUT\(1)))))) # (\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\ & (((!\CPU|INSTR|PC|DOUT\(1)) # (\CPU|INSTR|PC|DOUT\(6))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111110000011000101001110000001010100100000000011111010111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|PC|ALT_INV_DOUT\(3),
	datab => \CPU|INSTR|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datac => \CPU|INSTR|PC|ALT_INV_DOUT\(6),
	datad => \CPU|INSTR|PC|ALT_INV_DOUT\(1),
	datae => \CPU|INSTR|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	dataf => \CPU|INSTR|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	combout => \ROM|memROM~49_combout\);

-- Location: LABCELL_X36_Y7_N6
\ROM|memROM~52\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~52_combout\ = ( \CPU|INSTR|PC|DOUT[0]~DUPLICATE_q\ & ( \CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\ & ( (\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\ & ((!\CPU|INSTR|PC|DOUT\(3) & (!\CPU|INSTR|PC|DOUT[6]~DUPLICATE_q\ & \CPU|INSTR|PC|DOUT\(1))) # 
-- (\CPU|INSTR|PC|DOUT\(3) & (\CPU|INSTR|PC|DOUT[6]~DUPLICATE_q\ & !\CPU|INSTR|PC|DOUT\(1))))) ) ) ) # ( !\CPU|INSTR|PC|DOUT[0]~DUPLICATE_q\ & ( \CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\ & ( (!\CPU|INSTR|PC|DOUT\(3) & (\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\ & 
-- ((!\CPU|INSTR|PC|DOUT\(1))))) # (\CPU|INSTR|PC|DOUT\(3) & (!\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\ & (!\CPU|INSTR|PC|DOUT[6]~DUPLICATE_q\))) ) ) ) # ( \CPU|INSTR|PC|DOUT[0]~DUPLICATE_q\ & ( !\CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\ & ( (\CPU|INSTR|PC|DOUT\(3) & 
-- (!\CPU|INSTR|PC|DOUT[6]~DUPLICATE_q\ $ (!\CPU|INSTR|PC|DOUT\(1)))) ) ) ) # ( !\CPU|INSTR|PC|DOUT[0]~DUPLICATE_q\ & ( !\CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\ & ( (!\CPU|INSTR|PC|DOUT\(3) & (!\CPU|INSTR|PC|DOUT\(1) & ((!\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\) # 
-- (\CPU|INSTR|PC|DOUT[6]~DUPLICATE_q\)))) # (\CPU|INSTR|PC|DOUT\(3) & ((!\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\ & (\CPU|INSTR|PC|DOUT[6]~DUPLICATE_q\)) # (\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\ & (!\CPU|INSTR|PC|DOUT[6]~DUPLICATE_q\ & \CPU|INSTR|PC|DOUT\(1))))) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000111000010100000001010101000001100010010000000000000100100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|PC|ALT_INV_DOUT\(3),
	datab => \CPU|INSTR|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datac => \CPU|INSTR|PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	datad => \CPU|INSTR|PC|ALT_INV_DOUT\(1),
	datae => \CPU|INSTR|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	dataf => \CPU|INSTR|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	combout => \ROM|memROM~52_combout\);

-- Location: LABCELL_X36_Y7_N48
\ROM|memROM~51\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~51_combout\ = ( \CPU|INSTR|PC|DOUT\(1) & ( \CPU|INSTR|PC|DOUT[0]~DUPLICATE_q\ & ( (!\CPU|INSTR|PC|DOUT[6]~DUPLICATE_q\ & (\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\ & \CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\)) ) ) ) # ( !\CPU|INSTR|PC|DOUT\(1) & ( 
-- \CPU|INSTR|PC|DOUT[0]~DUPLICATE_q\ & ( (!\CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\ & (!\CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\ & (!\CPU|INSTR|PC|DOUT[6]~DUPLICATE_q\ $ (!\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\)))) ) ) ) # ( !\CPU|INSTR|PC|DOUT\(1) & ( 
-- !\CPU|INSTR|PC|DOUT[0]~DUPLICATE_q\ & ( (!\CPU|INSTR|PC|DOUT[6]~DUPLICATE_q\ & ((!\CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\ & (\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\)) # (\CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\ & ((!\CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\))))) # 
-- (\CPU|INSTR|PC|DOUT[6]~DUPLICATE_q\ & (!\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\ & (!\CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\ & !\CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110001010100000000000000000000001100000000000000000000000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	datab => \CPU|INSTR|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datac => \CPU|INSTR|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datad => \CPU|INSTR|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datae => \CPU|INSTR|PC|ALT_INV_DOUT\(1),
	dataf => \CPU|INSTR|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	combout => \ROM|memROM~51_combout\);

-- Location: LABCELL_X36_Y7_N54
\ROM|memROM~50\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~50_combout\ = ( \CPU|INSTR|PC|DOUT\(1) & ( \CPU|INSTR|PC|DOUT\(6) & ( (!\CPU|INSTR|PC|DOUT[0]~DUPLICATE_q\ & (!\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\ & (!\CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\ $ (\CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\)))) ) ) ) # ( 
-- !\CPU|INSTR|PC|DOUT\(1) & ( \CPU|INSTR|PC|DOUT\(6) & ( (!\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\ & ((!\CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\ & ((!\CPU|INSTR|PC|DOUT[0]~DUPLICATE_q\))) # (\CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\ & (\CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\)))) 
-- ) ) ) # ( \CPU|INSTR|PC|DOUT\(1) & ( !\CPU|INSTR|PC|DOUT\(6) & ( (!\CPU|INSTR|PC|DOUT[0]~DUPLICATE_q\ & (!\CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\ $ (\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\))) ) ) ) # ( !\CPU|INSTR|PC|DOUT\(1) & ( !\CPU|INSTR|PC|DOUT\(6) & ( 
-- (!\CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\ & (((\CPU|INSTR|PC|DOUT[0]~DUPLICATE_q\ & !\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\)))) # (\CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\ & (\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\ & (!\CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\ $ 
-- (\CPU|INSTR|PC|DOUT[0]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001000001101000000101000010110001000000001001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datab => \CPU|INSTR|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datac => \CPU|INSTR|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datad => \CPU|INSTR|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datae => \CPU|INSTR|PC|ALT_INV_DOUT\(1),
	dataf => \CPU|INSTR|PC|ALT_INV_DOUT\(6),
	combout => \ROM|memROM~50_combout\);

-- Location: LABCELL_X36_Y7_N18
\ROM|memROM~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~53_combout\ = ( \ROM|memROM~51_combout\ & ( \ROM|memROM~50_combout\ & ( (!\CPU|INSTR|PC|DOUT\(7) & (((\CPU|INSTR|PC|DOUT[4]~DUPLICATE_q\)) # (\ROM|memROM~49_combout\))) # (\CPU|INSTR|PC|DOUT\(7) & (((!\CPU|INSTR|PC|DOUT[4]~DUPLICATE_q\) # 
-- (\ROM|memROM~52_combout\)))) ) ) ) # ( !\ROM|memROM~51_combout\ & ( \ROM|memROM~50_combout\ & ( (!\CPU|INSTR|PC|DOUT\(7) & (\ROM|memROM~49_combout\ & (!\CPU|INSTR|PC|DOUT[4]~DUPLICATE_q\))) # (\CPU|INSTR|PC|DOUT\(7) & 
-- (((!\CPU|INSTR|PC|DOUT[4]~DUPLICATE_q\) # (\ROM|memROM~52_combout\)))) ) ) ) # ( \ROM|memROM~51_combout\ & ( !\ROM|memROM~50_combout\ & ( (!\CPU|INSTR|PC|DOUT\(7) & (((\CPU|INSTR|PC|DOUT[4]~DUPLICATE_q\)) # (\ROM|memROM~49_combout\))) # 
-- (\CPU|INSTR|PC|DOUT\(7) & (((\CPU|INSTR|PC|DOUT[4]~DUPLICATE_q\ & \ROM|memROM~52_combout\)))) ) ) ) # ( !\ROM|memROM~51_combout\ & ( !\ROM|memROM~50_combout\ & ( (!\CPU|INSTR|PC|DOUT\(7) & (\ROM|memROM~49_combout\ & (!\CPU|INSTR|PC|DOUT[4]~DUPLICATE_q\))) 
-- # (\CPU|INSTR|PC|DOUT\(7) & (((\CPU|INSTR|PC|DOUT[4]~DUPLICATE_q\ & \ROM|memROM~52_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000011010011000100111101110000011100110111110001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~49_combout\,
	datab => \CPU|INSTR|PC|ALT_INV_DOUT\(7),
	datac => \CPU|INSTR|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datad => \ROM|ALT_INV_memROM~52_combout\,
	datae => \ROM|ALT_INV_memROM~51_combout\,
	dataf => \ROM|ALT_INV_memROM~50_combout\,
	combout => \ROM|memROM~53_combout\);

-- Location: LABCELL_X35_Y7_N39
\ROM|memROM~56\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~56_combout\ = ( !\CPU|INSTR|PC|DOUT\(2) & ( (\CPU|INSTR|PC|DOUT[6]~DUPLICATE_q\ & (!\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\ & \CPU|INSTR|PC|DOUT\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000000000000011000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|INSTR|PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	datac => \CPU|INSTR|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datad => \CPU|INSTR|PC|ALT_INV_DOUT\(1),
	dataf => \CPU|INSTR|PC|ALT_INV_DOUT\(2),
	combout => \ROM|memROM~56_combout\);

-- Location: LABCELL_X36_Y5_N24
\ROM|memROM~55\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~55_combout\ = ( \CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\ & ( (\CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\ & (\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\ & \CPU|INSTR|PC|DOUT\(1))) ) ) # ( !\CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\ & ( (!\CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\ & 
-- ((!\CPU|INSTR|PC|DOUT\(1)))) # (\CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\ & (!\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111001000100111011100100010000000000000100010000000000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datab => \CPU|INSTR|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datad => \CPU|INSTR|PC|ALT_INV_DOUT\(1),
	dataf => \CPU|INSTR|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	combout => \ROM|memROM~55_combout\);

-- Location: LABCELL_X36_Y5_N21
\ROM|memROM~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~57_combout\ = ( \ROM|memROM~55_combout\ & ( (!\CPU|INSTR|PC|DOUT\(4) & (!\CPU|INSTR|PC|DOUT[0]~DUPLICATE_q\ & ((!\CPU|INSTR|PC|DOUT\(6)) # (\ROM|memROM~56_combout\)))) ) ) # ( !\ROM|memROM~55_combout\ & ( (!\CPU|INSTR|PC|DOUT\(4) & 
-- (!\CPU|INSTR|PC|DOUT[0]~DUPLICATE_q\ & \ROM|memROM~56_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010001000000000001000100010000000100010001000000010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|PC|ALT_INV_DOUT\(4),
	datab => \CPU|INSTR|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datac => \CPU|INSTR|PC|ALT_INV_DOUT\(6),
	datad => \ROM|ALT_INV_memROM~56_combout\,
	dataf => \ROM|ALT_INV_memROM~55_combout\,
	combout => \ROM|memROM~57_combout\);

-- Location: LABCELL_X36_Y5_N27
\ROM|memROM~36\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~36_combout\ = ( !\CPU|INSTR|PC|DOUT[1]~DUPLICATE_q\ & ( !\CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \CPU|INSTR|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	combout => \ROM|memROM~36_combout\);

-- Location: LABCELL_X36_Y7_N3
\ROM|memROM~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~12_combout\ = ( !\CPU|INSTR|PC|DOUT\(6) & ( \CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|INSTR|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	dataf => \CPU|INSTR|PC|ALT_INV_DOUT\(6),
	combout => \ROM|memROM~12_combout\);

-- Location: LABCELL_X36_Y5_N54
\ROM|memROM~54\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~54_combout\ = ( \ROM|memROM~12_combout\ & ( \CPU|INSTR|PC|DOUT[4]~DUPLICATE_q\ & ( (\CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\ & (\ROM|memROM~36_combout\ & !\CPU|INSTR|PC|DOUT[0]~DUPLICATE_q\)) ) ) ) # ( \ROM|memROM~12_combout\ & ( 
-- !\CPU|INSTR|PC|DOUT[4]~DUPLICATE_q\ & ( (!\CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\ & (\ROM|memROM~36_combout\ & \CPU|INSTR|PC|DOUT[0]~DUPLICATE_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000010001000000000000000000001000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datab => \ROM|ALT_INV_memROM~36_combout\,
	datad => \CPU|INSTR|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datae => \ROM|ALT_INV_memROM~12_combout\,
	dataf => \CPU|INSTR|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	combout => \ROM|memROM~54_combout\);

-- Location: MLABCELL_X37_Y5_N51
\ROM|memROM~58\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~58_combout\ = ( \ROM|memROM~57_combout\ & ( \ROM|memROM~54_combout\ & ( (!\CPU|INSTR|PC|DOUT[8]~DUPLICATE_q\ & (\ROM|memROM~53_combout\)) # (\CPU|INSTR|PC|DOUT[8]~DUPLICATE_q\ & ((!\CPU|INSTR|PC|DOUT[7]~DUPLICATE_q\))) ) ) ) # ( 
-- !\ROM|memROM~57_combout\ & ( \ROM|memROM~54_combout\ & ( (!\CPU|INSTR|PC|DOUT[8]~DUPLICATE_q\ & (\ROM|memROM~53_combout\)) # (\CPU|INSTR|PC|DOUT[8]~DUPLICATE_q\ & ((!\CPU|INSTR|PC|DOUT[7]~DUPLICATE_q\))) ) ) ) # ( \ROM|memROM~57_combout\ & ( 
-- !\ROM|memROM~54_combout\ & ( (!\CPU|INSTR|PC|DOUT[8]~DUPLICATE_q\ & (\ROM|memROM~53_combout\)) # (\CPU|INSTR|PC|DOUT[8]~DUPLICATE_q\ & ((!\CPU|INSTR|PC|DOUT[7]~DUPLICATE_q\))) ) ) ) # ( !\ROM|memROM~57_combout\ & ( !\ROM|memROM~54_combout\ & ( 
-- (!\CPU|INSTR|PC|DOUT[8]~DUPLICATE_q\ & \ROM|memROM~53_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010011101110010001001110111001000100111011100100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datab => \ROM|ALT_INV_memROM~53_combout\,
	datad => \CPU|INSTR|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datae => \ROM|ALT_INV_memROM~57_combout\,
	dataf => \ROM|ALT_INV_memROM~54_combout\,
	combout => \ROM|memROM~58_combout\);

-- Location: LABCELL_X35_Y6_N54
\CPU|INSTR|MUX2|MUX_OUT[1]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|INSTR|MUX2|MUX_OUT[1]~4_combout\ = ( \ROM|memROM~58_combout\ & ( (!\CPU|INSTR|MUX2|Equal2~0_combout\ & (((\CPU|INSTR|SOMA_CONST|Add0~17_sumout\)))) # (\CPU|INSTR|MUX2|Equal2~0_combout\ & (((\CPU|INSTR|END_RETORNO|DOUT\(1))) # 
-- (\CPU|INSTR|MUX2|Equal1~0_combout\))) ) ) # ( !\ROM|memROM~58_combout\ & ( (!\CPU|INSTR|MUX2|Equal2~0_combout\ & (((\CPU|INSTR|SOMA_CONST|Add0~17_sumout\)))) # (\CPU|INSTR|MUX2|Equal2~0_combout\ & (!\CPU|INSTR|MUX2|Equal1~0_combout\ & 
-- (\CPU|INSTR|END_RETORNO|DOUT\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001011001110000000101100111000010011110111110001001111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|MUX2|ALT_INV_Equal1~0_combout\,
	datab => \CPU|INSTR|MUX2|ALT_INV_Equal2~0_combout\,
	datac => \CPU|INSTR|END_RETORNO|ALT_INV_DOUT\(1),
	datad => \CPU|INSTR|SOMA_CONST|ALT_INV_Add0~17_sumout\,
	dataf => \ROM|ALT_INV_memROM~58_combout\,
	combout => \CPU|INSTR|MUX2|MUX_OUT[1]~4_combout\);

-- Location: FF_X35_Y6_N55
\CPU|INSTR|PC|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|INSTR|MUX2|MUX_OUT[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|INSTR|PC|DOUT\(1));

-- Location: LABCELL_X32_Y7_N36
\CPU|INSTR|SOMA_CONST|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|INSTR|SOMA_CONST|Add0~9_sumout\ = SUM(( \CPU|INSTR|PC|DOUT\(2) ) + ( GND ) + ( \CPU|INSTR|SOMA_CONST|Add0~18\ ))
-- \CPU|INSTR|SOMA_CONST|Add0~10\ = CARRY(( \CPU|INSTR|PC|DOUT\(2) ) + ( GND ) + ( \CPU|INSTR|SOMA_CONST|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|INSTR|PC|ALT_INV_DOUT\(2),
	cin => \CPU|INSTR|SOMA_CONST|Add0~18\,
	sumout => \CPU|INSTR|SOMA_CONST|Add0~9_sumout\,
	cout => \CPU|INSTR|SOMA_CONST|Add0~10\);

-- Location: FF_X32_Y7_N37
\CPU|INSTR|END_RETORNO|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|INSTR|SOMA_CONST|Add0~9_sumout\,
	ena => \CPU|DECODER|sinais_controle~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|INSTR|END_RETORNO|DOUT\(2));

-- Location: LABCELL_X35_Y6_N39
\ROM|memROM~80\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~80_combout\ = ( !\CPU|INSTR|PC|DOUT\(6) & ( (!\CPU|INSTR|PC|DOUT[0]~DUPLICATE_q\ & (\ROM|memROM~70_combout\ & (!\CPU|INSTR|PC|DOUT\(1) $ (\CPU|INSTR|PC|DOUT\(5))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000010000010000000001000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datab => \CPU|INSTR|PC|ALT_INV_DOUT\(1),
	datac => \ROM|ALT_INV_memROM~70_combout\,
	datad => \CPU|INSTR|PC|ALT_INV_DOUT\(5),
	dataf => \CPU|INSTR|PC|ALT_INV_DOUT\(6),
	combout => \ROM|memROM~80_combout\);

-- Location: LABCELL_X35_Y5_N30
\ROM|memROM~79\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~79_combout\ = ( !\CPU|INSTR|PC|DOUT[1]~DUPLICATE_q\ & ( \CPU|INSTR|PC|DOUT[0]~DUPLICATE_q\ & ( (!\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\ & (!\CPU|INSTR|PC|DOUT\(7) & (\CPU|INSTR|PC|DOUT\(6) & !\CPU|INSTR|PC|DOUT[4]~DUPLICATE_q\))) ) ) ) # ( 
-- \CPU|INSTR|PC|DOUT[1]~DUPLICATE_q\ & ( !\CPU|INSTR|PC|DOUT[0]~DUPLICATE_q\ & ( (!\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\ & (!\CPU|INSTR|PC|DOUT\(7) & (\CPU|INSTR|PC|DOUT\(6) & !\CPU|INSTR|PC|DOUT[4]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010000000000000001000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datab => \CPU|INSTR|PC|ALT_INV_DOUT\(7),
	datac => \CPU|INSTR|PC|ALT_INV_DOUT\(6),
	datad => \CPU|INSTR|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datae => \CPU|INSTR|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	dataf => \CPU|INSTR|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	combout => \ROM|memROM~79_combout\);

-- Location: MLABCELL_X37_Y6_N54
\ROM|memROM~86\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~86_combout\ = ( !\CPU|INSTR|PC|DOUT\(0) & ( \CPU|INSTR|PC|DOUT\(1) & ( (!\CPU|INSTR|PC|DOUT[4]~DUPLICATE_q\ & (!\CPU|INSTR|PC|DOUT\(7) & (!\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\ & \CPU|INSTR|PC|DOUT\(6)))) ) ) ) # ( \CPU|INSTR|PC|DOUT\(0) & ( 
-- !\CPU|INSTR|PC|DOUT\(1) & ( (!\CPU|INSTR|PC|DOUT[4]~DUPLICATE_q\ & (!\CPU|INSTR|PC|DOUT\(7) & (!\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\ & !\CPU|INSTR|PC|DOUT\(6)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000000000000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datab => \CPU|INSTR|PC|ALT_INV_DOUT\(7),
	datac => \CPU|INSTR|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datad => \CPU|INSTR|PC|ALT_INV_DOUT\(6),
	datae => \CPU|INSTR|PC|ALT_INV_DOUT\(0),
	dataf => \CPU|INSTR|PC|ALT_INV_DOUT\(1),
	combout => \ROM|memROM~86_combout\);

-- Location: LABCELL_X35_Y6_N6
\ROM|memROM~128\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~128_combout\ = ( \CPU|INSTR|PC|DOUT\(6) & ( \CPU|INSTR|PC|DOUT[7]~DUPLICATE_q\ & ( (!\CPU|INSTR|PC|DOUT\(1) & ((!\CPU|INSTR|PC|DOUT\(5) & (!\CPU|INSTR|PC|DOUT[0]~DUPLICATE_q\)) # (\CPU|INSTR|PC|DOUT\(5) & 
-- ((\CPU|INSTR|PC|DOUT[4]~DUPLICATE_q\))))) ) ) ) # ( !\CPU|INSTR|PC|DOUT\(6) & ( \CPU|INSTR|PC|DOUT[7]~DUPLICATE_q\ & ( (!\CPU|INSTR|PC|DOUT[0]~DUPLICATE_q\ & (!\CPU|INSTR|PC|DOUT\(1) & (\CPU|INSTR|PC|DOUT[4]~DUPLICATE_q\ & \CPU|INSTR|PC|DOUT\(5)))) # 
-- (\CPU|INSTR|PC|DOUT[0]~DUPLICATE_q\ & (!\CPU|INSTR|PC|DOUT\(1) $ (((!\CPU|INSTR|PC|DOUT[4]~DUPLICATE_q\) # (\CPU|INSTR|PC|DOUT\(5)))))) ) ) ) # ( \CPU|INSTR|PC|DOUT\(6) & ( !\CPU|INSTR|PC|DOUT[7]~DUPLICATE_q\ & ( (!\CPU|INSTR|PC|DOUT\(1) & 
-- (\CPU|INSTR|PC|DOUT[4]~DUPLICATE_q\ & !\CPU|INSTR|PC|DOUT\(5))) ) ) ) # ( !\CPU|INSTR|PC|DOUT\(6) & ( !\CPU|INSTR|PC|DOUT[7]~DUPLICATE_q\ & ( (!\CPU|INSTR|PC|DOUT\(1) & (\CPU|INSTR|PC|DOUT\(5) & (!\CPU|INSTR|PC|DOUT[0]~DUPLICATE_q\ $ 
-- (!\CPU|INSTR|PC|DOUT[4]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001001000000011000000000000010100000110011000100000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datab => \CPU|INSTR|PC|ALT_INV_DOUT\(1),
	datac => \CPU|INSTR|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datad => \CPU|INSTR|PC|ALT_INV_DOUT\(5),
	datae => \CPU|INSTR|PC|ALT_INV_DOUT\(6),
	dataf => \CPU|INSTR|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	combout => \ROM|memROM~128_combout\);

-- Location: LABCELL_X35_Y6_N12
\ROM|memROM~129\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~129_combout\ = ( \CPU|INSTR|PC|DOUT[7]~DUPLICATE_q\ & ( \CPU|INSTR|PC|DOUT\(1) & ( (!\CPU|INSTR|PC|DOUT[0]~DUPLICATE_q\ & (!\CPU|INSTR|PC|DOUT[4]~DUPLICATE_q\ & (\CPU|INSTR|PC|DOUT\(6) & !\CPU|INSTR|PC|DOUT\(5)))) ) ) ) # ( 
-- \CPU|INSTR|PC|DOUT[7]~DUPLICATE_q\ & ( !\CPU|INSTR|PC|DOUT\(1) & ( (!\CPU|INSTR|PC|DOUT[0]~DUPLICATE_q\ & (!\CPU|INSTR|PC|DOUT\(5) & (!\CPU|INSTR|PC|DOUT[4]~DUPLICATE_q\ $ (!\CPU|INSTR|PC|DOUT\(6))))) # (\CPU|INSTR|PC|DOUT[0]~DUPLICATE_q\ & 
-- (\CPU|INSTR|PC|DOUT\(5) & (!\CPU|INSTR|PC|DOUT[4]~DUPLICATE_q\ $ (\CPU|INSTR|PC|DOUT\(6))))) ) ) ) # ( !\CPU|INSTR|PC|DOUT[7]~DUPLICATE_q\ & ( !\CPU|INSTR|PC|DOUT\(1) & ( (!\CPU|INSTR|PC|DOUT[4]~DUPLICATE_q\ & (!\CPU|INSTR|PC|DOUT\(6) & 
-- \CPU|INSTR|PC|DOUT\(5))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000001010000100000100000000000000000000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datab => \CPU|INSTR|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datac => \CPU|INSTR|PC|ALT_INV_DOUT\(6),
	datad => \CPU|INSTR|PC|ALT_INV_DOUT\(5),
	datae => \CPU|INSTR|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	dataf => \CPU|INSTR|PC|ALT_INV_DOUT\(1),
	combout => \ROM|memROM~129_combout\);

-- Location: LABCELL_X35_Y7_N48
\ROM|memROM~131\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~131_combout\ = ( \CPU|INSTR|PC|DOUT\(1) & ( \CPU|INSTR|PC|DOUT\(0) & ( (!\CPU|INSTR|PC|DOUT[4]~DUPLICATE_q\ & (\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\ & (\CPU|INSTR|PC|DOUT\(6) & !\CPU|INSTR|PC|DOUT[7]~DUPLICATE_q\))) ) ) ) # ( 
-- !\CPU|INSTR|PC|DOUT\(1) & ( \CPU|INSTR|PC|DOUT\(0) & ( (!\CPU|INSTR|PC|DOUT[4]~DUPLICATE_q\ & (\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\ & ((!\CPU|INSTR|PC|DOUT[7]~DUPLICATE_q\)))) # (\CPU|INSTR|PC|DOUT[4]~DUPLICATE_q\ & (((\CPU|INSTR|PC|DOUT\(6) & 
-- \CPU|INSTR|PC|DOUT[7]~DUPLICATE_q\)))) ) ) ) # ( \CPU|INSTR|PC|DOUT\(1) & ( !\CPU|INSTR|PC|DOUT\(0) & ( (\CPU|INSTR|PC|DOUT[7]~DUPLICATE_q\ & (((\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\ & !\CPU|INSTR|PC|DOUT\(6))) # (\CPU|INSTR|PC|DOUT[4]~DUPLICATE_q\))) ) ) ) 
-- # ( !\CPU|INSTR|PC|DOUT\(1) & ( !\CPU|INSTR|PC|DOUT\(0) & ( (!\CPU|INSTR|PC|DOUT[4]~DUPLICATE_q\ & (\CPU|INSTR|PC|DOUT[7]~DUPLICATE_q\ & ((!\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\) # (!\CPU|INSTR|PC|DOUT\(6))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101000000000000111010100100010000001010000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datab => \CPU|INSTR|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datac => \CPU|INSTR|PC|ALT_INV_DOUT\(6),
	datad => \CPU|INSTR|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datae => \CPU|INSTR|PC|ALT_INV_DOUT\(1),
	dataf => \CPU|INSTR|PC|ALT_INV_DOUT\(0),
	combout => \ROM|memROM~131_combout\);

-- Location: LABCELL_X35_Y6_N48
\ROM|memROM~130\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~130_combout\ = ( \CPU|INSTR|PC|DOUT\(5) & ( \CPU|INSTR|PC|DOUT\(6) & ( (!\CPU|INSTR|PC|DOUT[0]~DUPLICATE_q\ & ((!\CPU|INSTR|PC|DOUT[7]~DUPLICATE_q\ $ (\CPU|INSTR|PC|DOUT[4]~DUPLICATE_q\)))) # (\CPU|INSTR|PC|DOUT[0]~DUPLICATE_q\ & 
-- (!\CPU|INSTR|PC|DOUT\(1) & (\CPU|INSTR|PC|DOUT[7]~DUPLICATE_q\ & \CPU|INSTR|PC|DOUT[4]~DUPLICATE_q\))) ) ) ) # ( !\CPU|INSTR|PC|DOUT\(5) & ( \CPU|INSTR|PC|DOUT\(6) & ( (\CPU|INSTR|PC|DOUT[7]~DUPLICATE_q\ & ((!\CPU|INSTR|PC|DOUT[0]~DUPLICATE_q\ & 
-- (!\CPU|INSTR|PC|DOUT\(1) $ (!\CPU|INSTR|PC|DOUT[4]~DUPLICATE_q\))) # (\CPU|INSTR|PC|DOUT[0]~DUPLICATE_q\ & (!\CPU|INSTR|PC|DOUT\(1) & !\CPU|INSTR|PC|DOUT[4]~DUPLICATE_q\)))) ) ) ) # ( \CPU|INSTR|PC|DOUT\(5) & ( !\CPU|INSTR|PC|DOUT\(6) & ( 
-- (!\CPU|INSTR|PC|DOUT[0]~DUPLICATE_q\ & ((!\CPU|INSTR|PC|DOUT\(1) & (!\CPU|INSTR|PC|DOUT[7]~DUPLICATE_q\ & !\CPU|INSTR|PC|DOUT[4]~DUPLICATE_q\)) # (\CPU|INSTR|PC|DOUT\(1) & (\CPU|INSTR|PC|DOUT[7]~DUPLICATE_q\ & \CPU|INSTR|PC|DOUT[4]~DUPLICATE_q\)))) # 
-- (\CPU|INSTR|PC|DOUT[0]~DUPLICATE_q\ & ((!\CPU|INSTR|PC|DOUT\(1) & ((!\CPU|INSTR|PC|DOUT[7]~DUPLICATE_q\) # (!\CPU|INSTR|PC|DOUT[4]~DUPLICATE_q\))) # (\CPU|INSTR|PC|DOUT\(1) & (!\CPU|INSTR|PC|DOUT[7]~DUPLICATE_q\ & !\CPU|INSTR|PC|DOUT[4]~DUPLICATE_q\)))) ) 
-- ) ) # ( !\CPU|INSTR|PC|DOUT\(5) & ( !\CPU|INSTR|PC|DOUT\(6) & ( (!\CPU|INSTR|PC|DOUT[0]~DUPLICATE_q\ & ((!\CPU|INSTR|PC|DOUT\(1) & (\CPU|INSTR|PC|DOUT[7]~DUPLICATE_q\ & \CPU|INSTR|PC|DOUT[4]~DUPLICATE_q\)) # (\CPU|INSTR|PC|DOUT\(1) & 
-- ((!\CPU|INSTR|PC|DOUT[4]~DUPLICATE_q\))))) # (\CPU|INSTR|PC|DOUT[0]~DUPLICATE_q\ & (!\CPU|INSTR|PC|DOUT[7]~DUPLICATE_q\ $ (((!\CPU|INSTR|PC|DOUT\(1) & !\CPU|INSTR|PC|DOUT[4]~DUPLICATE_q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011001011000110101000100001000000110000010001010000000001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datab => \CPU|INSTR|PC|ALT_INV_DOUT\(1),
	datac => \CPU|INSTR|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datad => \CPU|INSTR|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datae => \CPU|INSTR|PC|ALT_INV_DOUT\(5),
	dataf => \CPU|INSTR|PC|ALT_INV_DOUT\(6),
	combout => \ROM|memROM~130_combout\);

-- Location: LABCELL_X36_Y6_N6
\ROM|memROM~82\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~82_combout\ = ( !\CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\ & ( ((!\CPU|INSTR|PC|DOUT\(8) & ((!\CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\ & ((\ROM|memROM~130_combout\))) # (\CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\ & (\ROM|memROM~128_combout\)))) # 
-- (\CPU|INSTR|PC|DOUT\(8) & (((\CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\))))) ) ) # ( \CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\ & ( ((!\CPU|INSTR|PC|DOUT\(8) & ((!\CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\ & ((\ROM|memROM~131_combout\))) # (\CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\ & 
-- (\ROM|memROM~129_combout\)))) # (\CPU|INSTR|PC|DOUT\(8) & (((\CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111100000000000011110000000001010101111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~128_combout\,
	datab => \ROM|ALT_INV_memROM~129_combout\,
	datac => \ROM|ALT_INV_memROM~131_combout\,
	datad => \CPU|INSTR|PC|ALT_INV_DOUT\(8),
	datae => \CPU|INSTR|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	dataf => \CPU|INSTR|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datag => \ROM|ALT_INV_memROM~130_combout\,
	combout => \ROM|memROM~82_combout\);

-- Location: LABCELL_X36_Y6_N30
\ROM|memROM~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~81_combout\ = ( \CPU|INSTR|PC|DOUT\(1) & ( (!\CPU|INSTR|PC|DOUT\(0) & (\ROM|memROM~70_combout\ & !\CPU|INSTR|PC|DOUT\(5))) ) ) # ( !\CPU|INSTR|PC|DOUT\(1) & ( (\ROM|memROM~70_combout\ & (\CPU|INSTR|PC|DOUT\(5) & !\CPU|INSTR|PC|DOUT\(6))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000000000000110000000000100000001000000010000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|PC|ALT_INV_DOUT\(0),
	datab => \ROM|ALT_INV_memROM~70_combout\,
	datac => \CPU|INSTR|PC|ALT_INV_DOUT\(5),
	datad => \CPU|INSTR|PC|ALT_INV_DOUT\(6),
	dataf => \CPU|INSTR|PC|ALT_INV_DOUT\(1),
	combout => \ROM|memROM~81_combout\);

-- Location: LABCELL_X36_Y6_N24
\ROM|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~0_combout\ = ( !\CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\ & ( ((!\CPU|INSTR|PC|DOUT\(8) & (((\ROM|memROM~82_combout\)))) # (\CPU|INSTR|PC|DOUT\(8) & ((!\ROM|memROM~82_combout\ & ((\ROM|memROM~81_combout\))) # (\ROM|memROM~82_combout\ & 
-- (\ROM|memROM~79_combout\))))) ) ) # ( \CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\ & ( ((!\CPU|INSTR|PC|DOUT\(8) & (((\ROM|memROM~82_combout\)))) # (\CPU|INSTR|PC|DOUT\(8) & ((!\ROM|memROM~82_combout\ & ((\ROM|memROM~86_combout\))) # (\ROM|memROM~82_combout\ & 
-- (\ROM|memROM~80_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111000000000000111111111111001100111111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~80_combout\,
	datab => \ROM|ALT_INV_memROM~79_combout\,
	datac => \ROM|ALT_INV_memROM~86_combout\,
	datad => \CPU|INSTR|PC|ALT_INV_DOUT\(8),
	datae => \CPU|INSTR|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	dataf => \ROM|ALT_INV_memROM~82_combout\,
	datag => \ROM|ALT_INV_memROM~81_combout\,
	combout => \ROM|memROM~0_combout\);

-- Location: LABCELL_X35_Y7_N42
\CPU|INSTR|MUX2|MUX_OUT[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|INSTR|MUX2|MUX_OUT[2]~2_combout\ = ( \ROM|memROM~0_combout\ & ( (!\CPU|INSTR|MUX2|Equal2~0_combout\ & (((\CPU|INSTR|SOMA_CONST|Add0~9_sumout\)))) # (\CPU|INSTR|MUX2|Equal2~0_combout\ & (((\CPU|INSTR|END_RETORNO|DOUT\(2))) # 
-- (\CPU|INSTR|MUX2|Equal1~0_combout\))) ) ) # ( !\ROM|memROM~0_combout\ & ( (!\CPU|INSTR|MUX2|Equal2~0_combout\ & (((\CPU|INSTR|SOMA_CONST|Add0~9_sumout\)))) # (\CPU|INSTR|MUX2|Equal2~0_combout\ & (!\CPU|INSTR|MUX2|Equal1~0_combout\ & 
-- (\CPU|INSTR|END_RETORNO|DOUT\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010101110000001001010111000010101101111110001010110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|MUX2|ALT_INV_Equal2~0_combout\,
	datab => \CPU|INSTR|MUX2|ALT_INV_Equal1~0_combout\,
	datac => \CPU|INSTR|END_RETORNO|ALT_INV_DOUT\(2),
	datad => \CPU|INSTR|SOMA_CONST|ALT_INV_Add0~9_sumout\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \CPU|INSTR|MUX2|MUX_OUT[2]~2_combout\);

-- Location: FF_X35_Y7_N44
\CPU|INSTR|PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|INSTR|MUX2|MUX_OUT[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|INSTR|PC|DOUT\(2));

-- Location: LABCELL_X32_Y7_N39
\CPU|INSTR|SOMA_CONST|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|INSTR|SOMA_CONST|Add0~25_sumout\ = SUM(( \CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|INSTR|SOMA_CONST|Add0~10\ ))
-- \CPU|INSTR|SOMA_CONST|Add0~26\ = CARRY(( \CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|INSTR|SOMA_CONST|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|INSTR|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	cin => \CPU|INSTR|SOMA_CONST|Add0~10\,
	sumout => \CPU|INSTR|SOMA_CONST|Add0~25_sumout\,
	cout => \CPU|INSTR|SOMA_CONST|Add0~26\);

-- Location: FF_X32_Y7_N40
\CPU|INSTR|END_RETORNO|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|INSTR|SOMA_CONST|Add0~25_sumout\,
	ena => \CPU|DECODER|sinais_controle~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|INSTR|END_RETORNO|DOUT\(3));

-- Location: LABCELL_X36_Y7_N30
\ROM|memROM~152\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~152_combout\ = ( \CPU|INSTR|PC|DOUT[0]~DUPLICATE_q\ & ( \CPU|INSTR|PC|DOUT[6]~DUPLICATE_q\ & ( (!\CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\ & (\CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\ & (!\CPU|INSTR|PC|DOUT\(5) & !\CPU|INSTR|PC|DOUT\(1)))) ) ) ) # ( 
-- !\CPU|INSTR|PC|DOUT[0]~DUPLICATE_q\ & ( \CPU|INSTR|PC|DOUT[6]~DUPLICATE_q\ & ( (\CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\ & (!\CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\ & (!\CPU|INSTR|PC|DOUT\(5) & \CPU|INSTR|PC|DOUT\(1)))) ) ) ) # ( \CPU|INSTR|PC|DOUT[0]~DUPLICATE_q\ & 
-- ( !\CPU|INSTR|PC|DOUT[6]~DUPLICATE_q\ & ( (!\CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\ & (!\CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\ & (!\CPU|INSTR|PC|DOUT\(5) $ (!\CPU|INSTR|PC|DOUT\(1))))) ) ) ) # ( !\CPU|INSTR|PC|DOUT[0]~DUPLICATE_q\ & ( 
-- !\CPU|INSTR|PC|DOUT[6]~DUPLICATE_q\ & ( (!\CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\ & ((!\CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\ & ((!\CPU|INSTR|PC|DOUT\(1)))) # (\CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\ & (!\CPU|INSTR|PC|DOUT\(5))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010100000100000000010001000000000000000010000000010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datab => \CPU|INSTR|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datac => \CPU|INSTR|PC|ALT_INV_DOUT\(5),
	datad => \CPU|INSTR|PC|ALT_INV_DOUT\(1),
	datae => \CPU|INSTR|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	dataf => \CPU|INSTR|PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	combout => \ROM|memROM~152_combout\);

-- Location: LABCELL_X36_Y7_N12
\ROM|memROM~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~73_combout\ = ( \CPU|INSTR|PC|DOUT[7]~DUPLICATE_q\ & ( \CPU|INSTR|PC|DOUT[0]~DUPLICATE_q\ & ( (!\CPU|INSTR|PC|DOUT[6]~DUPLICATE_q\ & (\CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\ & (!\CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\ & 
-- !\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\))) # (\CPU|INSTR|PC|DOUT[6]~DUPLICATE_q\ & (((!\CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\ & \CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\)) # (\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\))) ) ) ) # ( !\CPU|INSTR|PC|DOUT[7]~DUPLICATE_q\ & ( 
-- \CPU|INSTR|PC|DOUT[0]~DUPLICATE_q\ & ( (!\CPU|INSTR|PC|DOUT[6]~DUPLICATE_q\ & (\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\ & ((\CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\) # (\CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\)))) # (\CPU|INSTR|PC|DOUT[6]~DUPLICATE_q\ & 
-- (!\CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\ & (!\CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\ & !\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\))) ) ) ) # ( \CPU|INSTR|PC|DOUT[7]~DUPLICATE_q\ & ( !\CPU|INSTR|PC|DOUT[0]~DUPLICATE_q\ & ( (!\CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\ & 
-- ((!\CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\ & ((!\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\))) # (\CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\ & (!\CPU|INSTR|PC|DOUT[6]~DUPLICATE_q\ & \CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\)))) # (\CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\ & 
-- (!\CPU|INSTR|PC|DOUT[6]~DUPLICATE_q\ $ (((!\CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\) # (\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\))))) ) ) ) # ( !\CPU|INSTR|PC|DOUT[7]~DUPLICATE_q\ & ( !\CPU|INSTR|PC|DOUT[0]~DUPLICATE_q\ & ( (!\CPU|INSTR|PC|DOUT[6]~DUPLICATE_q\ & 
-- (\CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\ & \CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010110001100010010101000000001010100010010001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	datab => \CPU|INSTR|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datac => \CPU|INSTR|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datad => \CPU|INSTR|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datae => \CPU|INSTR|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	dataf => \CPU|INSTR|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	combout => \ROM|memROM~73_combout\);

-- Location: LABCELL_X36_Y7_N42
\ROM|memROM~72\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~72_combout\ = ( \CPU|INSTR|PC|DOUT[7]~DUPLICATE_q\ & ( \CPU|INSTR|PC|DOUT[0]~DUPLICATE_q\ & ( (!\CPU|INSTR|PC|DOUT[6]~DUPLICATE_q\ & (!\CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\ & (!\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\ $ 
-- (\CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\)))) ) ) ) # ( !\CPU|INSTR|PC|DOUT[7]~DUPLICATE_q\ & ( \CPU|INSTR|PC|DOUT[0]~DUPLICATE_q\ & ( (!\CPU|INSTR|PC|DOUT[6]~DUPLICATE_q\ & (!\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\ & (!\CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\ $ 
-- (!\CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\)))) ) ) ) # ( \CPU|INSTR|PC|DOUT[7]~DUPLICATE_q\ & ( !\CPU|INSTR|PC|DOUT[0]~DUPLICATE_q\ & ( (!\CPU|INSTR|PC|DOUT[6]~DUPLICATE_q\ & (((!\CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\ & \CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\)))) # 
-- (\CPU|INSTR|PC|DOUT[6]~DUPLICATE_q\ & (!\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\ & (!\CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\ $ (\CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\)))) ) ) ) # ( !\CPU|INSTR|PC|DOUT[7]~DUPLICATE_q\ & ( !\CPU|INSTR|PC|DOUT[0]~DUPLICATE_q\ & ( 
-- (!\CPU|INSTR|PC|DOUT[6]~DUPLICATE_q\ & (!\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\ & (!\CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\ & \CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\))) # (\CPU|INSTR|PC|DOUT[6]~DUPLICATE_q\ & (\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\ & 
-- (!\CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\ $ (!\CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110010000010000001010010000001000100000001000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	datab => \CPU|INSTR|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datac => \CPU|INSTR|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datad => \CPU|INSTR|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datae => \CPU|INSTR|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	dataf => \CPU|INSTR|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	combout => \ROM|memROM~72_combout\);

-- Location: MLABCELL_X37_Y7_N30
\ROM|memROM~71\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~71_combout\ = ( \CPU|INSTR|PC|DOUT[0]~DUPLICATE_q\ & ( \CPU|INSTR|PC|DOUT[7]~DUPLICATE_q\ & ( (!\CPU|INSTR|PC|DOUT[6]~DUPLICATE_q\ & ((!\CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\ & (!\CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\ & 
-- \CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\)) # (\CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\ & (!\CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\ $ (\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\))))) ) ) ) # ( !\CPU|INSTR|PC|DOUT[0]~DUPLICATE_q\ & ( \CPU|INSTR|PC|DOUT[7]~DUPLICATE_q\ & ( 
-- (!\CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\ & (\CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\ & (!\CPU|INSTR|PC|DOUT[6]~DUPLICATE_q\ & \CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\))) # (\CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\ & (!\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\ & 
-- ((!\CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\) # (\CPU|INSTR|PC|DOUT[6]~DUPLICATE_q\)))) ) ) ) # ( \CPU|INSTR|PC|DOUT[0]~DUPLICATE_q\ & ( !\CPU|INSTR|PC|DOUT[7]~DUPLICATE_q\ & ( (!\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\ & (((\CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\ & 
-- !\CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\)) # (\CPU|INSTR|PC|DOUT[6]~DUPLICATE_q\))) ) ) ) # ( !\CPU|INSTR|PC|DOUT[0]~DUPLICATE_q\ & ( !\CPU|INSTR|PC|DOUT[7]~DUPLICATE_q\ & ( (!\CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\ & (!\CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\ $ 
-- (((!\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\) # (\CPU|INSTR|PC|DOUT[6]~DUPLICATE_q\))))) # (\CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\ & ((!\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\ & ((\CPU|INSTR|PC|DOUT[6]~DUPLICATE_q\))) # (\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\ & 
-- (!\CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011110100110010011110000000001000101001000000100000010010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datab => \CPU|INSTR|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datac => \CPU|INSTR|PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	datad => \CPU|INSTR|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datae => \CPU|INSTR|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	dataf => \CPU|INSTR|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	combout => \ROM|memROM~71_combout\);

-- Location: LABCELL_X36_Y7_N24
\ROM|memROM~74\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~74_combout\ = ( \CPU|INSTR|PC|DOUT[0]~DUPLICATE_q\ & ( \CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\ & ( (\CPU|INSTR|PC|DOUT[7]~DUPLICATE_q\ & ((!\CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\) # (\CPU|INSTR|PC|DOUT[6]~DUPLICATE_q\))) ) ) ) # ( 
-- !\CPU|INSTR|PC|DOUT[0]~DUPLICATE_q\ & ( \CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\ & ( (\CPU|INSTR|PC|DOUT[7]~DUPLICATE_q\ & ((!\CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\ & ((\CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\))) # (\CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\ & 
-- (\CPU|INSTR|PC|DOUT[6]~DUPLICATE_q\ & !\CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\)))) ) ) ) # ( !\CPU|INSTR|PC|DOUT[0]~DUPLICATE_q\ & ( !\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\ & ( (!\CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\ & (\CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\ & 
-- \CPU|INSTR|PC|DOUT[7]~DUPLICATE_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100000000000000000000000000000111000000000011110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	datab => \CPU|INSTR|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datac => \CPU|INSTR|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datad => \CPU|INSTR|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datae => \CPU|INSTR|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	dataf => \CPU|INSTR|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	combout => \ROM|memROM~74_combout\);

-- Location: MLABCELL_X37_Y6_N36
\ROM|memROM~75\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~75_combout\ = ( \ROM|memROM~71_combout\ & ( \ROM|memROM~74_combout\ & ( (!\CPU|INSTR|PC|DOUT\(4) & ((!\CPU|INSTR|PC|DOUT\(1)) # ((\ROM|memROM~72_combout\)))) # (\CPU|INSTR|PC|DOUT\(4) & (((\ROM|memROM~73_combout\)) # (\CPU|INSTR|PC|DOUT\(1)))) 
-- ) ) ) # ( !\ROM|memROM~71_combout\ & ( \ROM|memROM~74_combout\ & ( (!\CPU|INSTR|PC|DOUT\(4) & (\CPU|INSTR|PC|DOUT\(1) & ((\ROM|memROM~72_combout\)))) # (\CPU|INSTR|PC|DOUT\(4) & (((\ROM|memROM~73_combout\)) # (\CPU|INSTR|PC|DOUT\(1)))) ) ) ) # ( 
-- \ROM|memROM~71_combout\ & ( !\ROM|memROM~74_combout\ & ( (!\CPU|INSTR|PC|DOUT\(4) & ((!\CPU|INSTR|PC|DOUT\(1)) # ((\ROM|memROM~72_combout\)))) # (\CPU|INSTR|PC|DOUT\(4) & (!\CPU|INSTR|PC|DOUT\(1) & (\ROM|memROM~73_combout\))) ) ) ) # ( 
-- !\ROM|memROM~71_combout\ & ( !\ROM|memROM~74_combout\ & ( (!\CPU|INSTR|PC|DOUT\(4) & (\CPU|INSTR|PC|DOUT\(1) & ((\ROM|memROM~72_combout\)))) # (\CPU|INSTR|PC|DOUT\(4) & (!\CPU|INSTR|PC|DOUT\(1) & (\ROM|memROM~73_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000100110100011001010111000010101001101111001110110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|PC|ALT_INV_DOUT\(4),
	datab => \CPU|INSTR|PC|ALT_INV_DOUT\(1),
	datac => \ROM|ALT_INV_memROM~73_combout\,
	datad => \ROM|ALT_INV_memROM~72_combout\,
	datae => \ROM|ALT_INV_memROM~71_combout\,
	dataf => \ROM|ALT_INV_memROM~74_combout\,
	combout => \ROM|memROM~75_combout\);

-- Location: LABCELL_X36_Y6_N12
\ROM|memROM~76\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~76_combout\ = ( \ROM|memROM~75_combout\ & ( (!\CPU|INSTR|PC|DOUT\(8)) # ((\ROM|memROM~70_combout\ & \ROM|memROM~152_combout\)) ) ) # ( !\ROM|memROM~75_combout\ & ( (\ROM|memROM~70_combout\ & (\ROM|memROM~152_combout\ & \CPU|INSTR|PC|DOUT\(8))) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001111111111000000111111111100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~70_combout\,
	datac => \ROM|ALT_INV_memROM~152_combout\,
	datad => \CPU|INSTR|PC|ALT_INV_DOUT\(8),
	dataf => \ROM|ALT_INV_memROM~75_combout\,
	combout => \ROM|memROM~76_combout\);

-- Location: LABCELL_X36_Y7_N0
\CPU|INSTR|MUX2|MUX_OUT[3]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|INSTR|MUX2|MUX_OUT[3]~6_combout\ = ( \CPU|INSTR|MUX2|Equal1~0_combout\ & ( (!\CPU|INSTR|MUX2|Equal2~0_combout\ & (\CPU|INSTR|SOMA_CONST|Add0~25_sumout\)) # (\CPU|INSTR|MUX2|Equal2~0_combout\ & ((\ROM|memROM~76_combout\))) ) ) # ( 
-- !\CPU|INSTR|MUX2|Equal1~0_combout\ & ( (!\CPU|INSTR|MUX2|Equal2~0_combout\ & ((\CPU|INSTR|SOMA_CONST|Add0~25_sumout\))) # (\CPU|INSTR|MUX2|Equal2~0_combout\ & (\CPU|INSTR|END_RETORNO|DOUT\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100001010010111110000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|MUX2|ALT_INV_Equal2~0_combout\,
	datab => \CPU|INSTR|END_RETORNO|ALT_INV_DOUT\(3),
	datac => \CPU|INSTR|SOMA_CONST|ALT_INV_Add0~25_sumout\,
	datad => \ROM|ALT_INV_memROM~76_combout\,
	dataf => \CPU|INSTR|MUX2|ALT_INV_Equal1~0_combout\,
	combout => \CPU|INSTR|MUX2|MUX_OUT[3]~6_combout\);

-- Location: FF_X36_Y7_N1
\CPU|INSTR|PC|DOUT[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|INSTR|MUX2|MUX_OUT[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\);

-- Location: LABCELL_X32_Y7_N42
\CPU|INSTR|SOMA_CONST|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|INSTR|SOMA_CONST|Add0~21_sumout\ = SUM(( \CPU|INSTR|PC|DOUT\(4) ) + ( GND ) + ( \CPU|INSTR|SOMA_CONST|Add0~26\ ))
-- \CPU|INSTR|SOMA_CONST|Add0~22\ = CARRY(( \CPU|INSTR|PC|DOUT\(4) ) + ( GND ) + ( \CPU|INSTR|SOMA_CONST|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|INSTR|PC|ALT_INV_DOUT\(4),
	cin => \CPU|INSTR|SOMA_CONST|Add0~26\,
	sumout => \CPU|INSTR|SOMA_CONST|Add0~21_sumout\,
	cout => \CPU|INSTR|SOMA_CONST|Add0~22\);

-- Location: LABCELL_X32_Y7_N45
\CPU|INSTR|SOMA_CONST|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|INSTR|SOMA_CONST|Add0~33_sumout\ = SUM(( \CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|INSTR|SOMA_CONST|Add0~22\ ))
-- \CPU|INSTR|SOMA_CONST|Add0~34\ = CARRY(( \CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|INSTR|SOMA_CONST|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|INSTR|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	cin => \CPU|INSTR|SOMA_CONST|Add0~22\,
	sumout => \CPU|INSTR|SOMA_CONST|Add0~33_sumout\,
	cout => \CPU|INSTR|SOMA_CONST|Add0~34\);

-- Location: LABCELL_X32_Y7_N48
\CPU|INSTR|SOMA_CONST|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|INSTR|SOMA_CONST|Add0~29_sumout\ = SUM(( \CPU|INSTR|PC|DOUT\(6) ) + ( GND ) + ( \CPU|INSTR|SOMA_CONST|Add0~34\ ))
-- \CPU|INSTR|SOMA_CONST|Add0~30\ = CARRY(( \CPU|INSTR|PC|DOUT\(6) ) + ( GND ) + ( \CPU|INSTR|SOMA_CONST|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|INSTR|PC|ALT_INV_DOUT\(6),
	cin => \CPU|INSTR|SOMA_CONST|Add0~34\,
	sumout => \CPU|INSTR|SOMA_CONST|Add0~29_sumout\,
	cout => \CPU|INSTR|SOMA_CONST|Add0~30\);

-- Location: FF_X32_Y7_N49
\CPU|INSTR|END_RETORNO|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|INSTR|SOMA_CONST|Add0~29_sumout\,
	ena => \CPU|DECODER|sinais_controle~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|INSTR|END_RETORNO|DOUT\(6));

-- Location: MLABCELL_X34_Y7_N42
\ROM|memROM~141\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~141_combout\ = ( \CPU|INSTR|PC|DOUT\(4) & ( \CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\ & ( (!\CPU|INSTR|PC|DOUT\(6) & (!\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\ & (\CPU|INSTR|PC|DOUT\(7) & !\CPU|INSTR|PC|DOUT\(1)))) ) ) ) # ( !\CPU|INSTR|PC|DOUT\(4) & ( 
-- \CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\ & ( (\CPU|INSTR|PC|DOUT\(7) & ((!\CPU|INSTR|PC|DOUT\(6) & (\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\ & !\CPU|INSTR|PC|DOUT\(1))) # (\CPU|INSTR|PC|DOUT\(6) & (!\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\)))) ) ) ) # ( 
-- \CPU|INSTR|PC|DOUT\(4) & ( !\CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\ & ( (\CPU|INSTR|PC|DOUT\(7) & (!\CPU|INSTR|PC|DOUT\(6) $ (\CPU|INSTR|PC|DOUT\(1)))) ) ) ) # ( !\CPU|INSTR|PC|DOUT\(4) & ( !\CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\ & ( (\CPU|INSTR|PC|DOUT\(7) & 
-- ((!\CPU|INSTR|PC|DOUT\(6) & (\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\ & !\CPU|INSTR|PC|DOUT\(1))) # (\CPU|INSTR|PC|DOUT\(6) & (!\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\ & \CPU|INSTR|PC|DOUT\(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000100000010100000010100000110000001000000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|PC|ALT_INV_DOUT\(6),
	datab => \CPU|INSTR|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datac => \CPU|INSTR|PC|ALT_INV_DOUT\(7),
	datad => \CPU|INSTR|PC|ALT_INV_DOUT\(1),
	datae => \CPU|INSTR|PC|ALT_INV_DOUT\(4),
	dataf => \CPU|INSTR|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	combout => \ROM|memROM~141_combout\);

-- Location: MLABCELL_X34_Y7_N0
\ROM|memROM~148\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~148_combout\ = ( !\CPU|INSTR|PC|DOUT\(7) & ( \CPU|INSTR|PC|DOUT\(1) & ( (!\CPU|INSTR|PC|DOUT\(6) & (\CPU|INSTR|PC|DOUT\(5) & (!\CPU|INSTR|PC|DOUT\(4) & !\CPU|INSTR|PC|DOUT\(3)))) ) ) ) # ( \CPU|INSTR|PC|DOUT\(7) & ( !\CPU|INSTR|PC|DOUT\(1) & ( 
-- (\CPU|INSTR|PC|DOUT\(3) & ((!\CPU|INSTR|PC|DOUT\(6) & (!\CPU|INSTR|PC|DOUT\(5) $ (\CPU|INSTR|PC|DOUT\(4)))) # (\CPU|INSTR|PC|DOUT\(6) & (!\CPU|INSTR|PC|DOUT\(5) & \CPU|INSTR|PC|DOUT\(4))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001000011000100000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|PC|ALT_INV_DOUT\(6),
	datab => \CPU|INSTR|PC|ALT_INV_DOUT\(5),
	datac => \CPU|INSTR|PC|ALT_INV_DOUT\(4),
	datad => \CPU|INSTR|PC|ALT_INV_DOUT\(3),
	datae => \CPU|INSTR|PC|ALT_INV_DOUT\(7),
	dataf => \CPU|INSTR|PC|ALT_INV_DOUT\(1),
	combout => \ROM|memROM~148_combout\);

-- Location: MLABCELL_X34_Y7_N54
\ROM|memROM~142\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~142_combout\ = ( \CPU|INSTR|PC|DOUT[7]~DUPLICATE_q\ & ( \CPU|INSTR|PC|DOUT[4]~DUPLICATE_q\ & ( (!\CPU|INSTR|PC|DOUT\(6) & (\CPU|INSTR|PC|DOUT\(5) & (\CPU|INSTR|PC|DOUT\(3) & !\CPU|INSTR|PC|DOUT\(1)))) ) ) ) # ( 
-- \CPU|INSTR|PC|DOUT[7]~DUPLICATE_q\ & ( !\CPU|INSTR|PC|DOUT[4]~DUPLICATE_q\ & ( (\CPU|INSTR|PC|DOUT\(6) & (!\CPU|INSTR|PC|DOUT\(5) & (\CPU|INSTR|PC|DOUT\(3) & !\CPU|INSTR|PC|DOUT\(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001000000000000000000000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|PC|ALT_INV_DOUT\(6),
	datab => \CPU|INSTR|PC|ALT_INV_DOUT\(5),
	datac => \CPU|INSTR|PC|ALT_INV_DOUT\(3),
	datad => \CPU|INSTR|PC|ALT_INV_DOUT\(1),
	datae => \CPU|INSTR|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	dataf => \CPU|INSTR|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	combout => \ROM|memROM~142_combout\);

-- Location: MLABCELL_X34_Y7_N24
\ROM|memROM~143\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~143_combout\ = ( \CPU|INSTR|PC|DOUT\(7) & ( \CPU|INSTR|PC|DOUT\(4) & ( (!\CPU|INSTR|PC|DOUT\(1) & ((!\CPU|INSTR|PC|DOUT\(3) & ((!\CPU|INSTR|PC|DOUT\(6)))) # (\CPU|INSTR|PC|DOUT\(3) & (!\CPU|INSTR|PC|DOUT\(5))))) # (\CPU|INSTR|PC|DOUT\(1) & 
-- (((\CPU|INSTR|PC|DOUT\(6))))) ) ) ) # ( !\CPU|INSTR|PC|DOUT\(7) & ( \CPU|INSTR|PC|DOUT\(4) & ( (!\CPU|INSTR|PC|DOUT\(5) & (!\CPU|INSTR|PC|DOUT\(3) & (\CPU|INSTR|PC|DOUT\(6) & !\CPU|INSTR|PC|DOUT\(1)))) ) ) ) # ( \CPU|INSTR|PC|DOUT\(7) & ( 
-- !\CPU|INSTR|PC|DOUT\(4) & ( (!\CPU|INSTR|PC|DOUT\(5) & (\CPU|INSTR|PC|DOUT\(6) & ((!\CPU|INSTR|PC|DOUT\(3)) # (\CPU|INSTR|PC|DOUT\(1))))) # (\CPU|INSTR|PC|DOUT\(5) & (((!\CPU|INSTR|PC|DOUT\(6) & !\CPU|INSTR|PC|DOUT\(1))))) ) ) ) # ( 
-- !\CPU|INSTR|PC|DOUT\(7) & ( !\CPU|INSTR|PC|DOUT\(4) & ( (!\CPU|INSTR|PC|DOUT\(1) & ((!\CPU|INSTR|PC|DOUT\(5) & ((\CPU|INSTR|PC|DOUT\(6)))) # (\CPU|INSTR|PC|DOUT\(5) & (!\CPU|INSTR|PC|DOUT\(3) & !\CPU|INSTR|PC|DOUT\(6))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100101000000000010110000000101000001000000000001110001000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|PC|ALT_INV_DOUT\(5),
	datab => \CPU|INSTR|PC|ALT_INV_DOUT\(3),
	datac => \CPU|INSTR|PC|ALT_INV_DOUT\(6),
	datad => \CPU|INSTR|PC|ALT_INV_DOUT\(1),
	datae => \CPU|INSTR|PC|ALT_INV_DOUT\(7),
	dataf => \CPU|INSTR|PC|ALT_INV_DOUT\(4),
	combout => \ROM|memROM~143_combout\);

-- Location: MLABCELL_X34_Y7_N18
\ROM|memROM~115\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~115_combout\ = ( !\CPU|INSTR|PC|DOUT\(0) & ( (!\CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\ & (((\ROM|memROM~143_combout\ & (!\CPU|INSTR|PC|DOUT\(8)))))) # (\CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\ & ((((\CPU|INSTR|PC|DOUT\(8)))) # 
-- (\ROM|memROM~141_combout\))) ) ) # ( \CPU|INSTR|PC|DOUT\(0) & ( (!\CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\ & (((\ROM|memROM~148_combout\ & (!\CPU|INSTR|PC|DOUT\(8)))))) # (\CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\ & ((((\ROM|memROM~142_combout\) # 
-- (\CPU|INSTR|PC|DOUT\(8)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001101101010101000010100101010100011011010101010101111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datab => \ROM|ALT_INV_memROM~141_combout\,
	datac => \ROM|ALT_INV_memROM~148_combout\,
	datad => \CPU|INSTR|PC|ALT_INV_DOUT\(8),
	datae => \CPU|INSTR|PC|ALT_INV_DOUT\(0),
	dataf => \ROM|ALT_INV_memROM~142_combout\,
	datag => \ROM|ALT_INV_memROM~143_combout\,
	combout => \ROM|memROM~115_combout\);

-- Location: MLABCELL_X34_Y7_N36
\ROM|memROM~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~113_combout\ = ( \CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\ & ( !\CPU|INSTR|PC|DOUT[6]~DUPLICATE_q\ & ( (!\CPU|INSTR|PC|DOUT[7]~DUPLICATE_q\ & (!\CPU|INSTR|PC|DOUT\(4) & (!\CPU|INSTR|PC|DOUT\(1) $ (!\CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datab => \CPU|INSTR|PC|ALT_INV_DOUT\(4),
	datac => \CPU|INSTR|PC|ALT_INV_DOUT\(1),
	datad => \CPU|INSTR|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datae => \CPU|INSTR|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	dataf => \CPU|INSTR|PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	combout => \ROM|memROM~113_combout\);

-- Location: MLABCELL_X34_Y7_N12
\ROM|memROM~119\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~119_combout\ = ( \CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\ & ( (!\CPU|INSTR|PC|DOUT\(6) & (!\CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\ & (!\CPU|INSTR|PC|DOUT\(1) & \ROM|memROM~70_combout\))) ) ) # ( !\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\ & ( 
-- (\CPU|INSTR|PC|DOUT\(6) & (\ROM|memROM~70_combout\ & ((\CPU|INSTR|PC|DOUT\(1)) # (\CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010101000000000001010100000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|PC|ALT_INV_DOUT\(6),
	datab => \CPU|INSTR|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datac => \CPU|INSTR|PC|ALT_INV_DOUT\(1),
	datad => \ROM|ALT_INV_memROM~70_combout\,
	dataf => \CPU|INSTR|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	combout => \ROM|memROM~119_combout\);

-- Location: LABCELL_X35_Y7_N36
\ROM|memROM~111\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~111_combout\ = ( \CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\ & ( (\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\ & (!\CPU|INSTR|PC|DOUT\(6) & !\CPU|INSTR|PC|DOUT[7]~DUPLICATE_q\)) ) ) # ( !\CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\ & ( (!\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\ 
-- & (\CPU|INSTR|PC|DOUT\(6) & !\CPU|INSTR|PC|DOUT[7]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000010100000000001010000000000000101000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datac => \CPU|INSTR|PC|ALT_INV_DOUT\(6),
	datad => \CPU|INSTR|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	dataf => \CPU|INSTR|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	combout => \ROM|memROM~111_combout\);

-- Location: MLABCELL_X34_Y7_N33
\ROM|memROM~112\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~112_combout\ = ( \ROM|memROM~111_combout\ & ( (!\CPU|INSTR|PC|DOUT\(4) & \CPU|INSTR|PC|DOUT\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|INSTR|PC|ALT_INV_DOUT\(4),
	datad => \CPU|INSTR|PC|ALT_INV_DOUT\(1),
	dataf => \ROM|ALT_INV_memROM~111_combout\,
	combout => \ROM|memROM~112_combout\);

-- Location: MLABCELL_X34_Y7_N6
\ROM|memROM~114\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~114_combout\ = ( !\CPU|INSTR|PC|DOUT[7]~DUPLICATE_q\ & ( \CPU|INSTR|PC|DOUT[4]~DUPLICATE_q\ & ( (!\CPU|INSTR|PC|DOUT\(6) & (\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\ & (\CPU|INSTR|PC|DOUT\(3) & !\CPU|INSTR|PC|DOUT\(1)))) ) ) ) # ( 
-- !\CPU|INSTR|PC|DOUT[7]~DUPLICATE_q\ & ( !\CPU|INSTR|PC|DOUT[4]~DUPLICATE_q\ & ( (!\CPU|INSTR|PC|DOUT\(3) & (!\CPU|INSTR|PC|DOUT\(1) & (!\CPU|INSTR|PC|DOUT\(6) $ (!\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000000000000000000000000000000000010000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|PC|ALT_INV_DOUT\(6),
	datab => \CPU|INSTR|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datac => \CPU|INSTR|PC|ALT_INV_DOUT\(3),
	datad => \CPU|INSTR|PC|ALT_INV_DOUT\(1),
	datae => \CPU|INSTR|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	dataf => \CPU|INSTR|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	combout => \ROM|memROM~114_combout\);

-- Location: MLABCELL_X34_Y7_N48
\ROM|memROM~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~28_combout\ = ( !\CPU|INSTR|PC|DOUT[0]~DUPLICATE_q\ & ( (!\ROM|memROM~115_combout\ & (((\ROM|memROM~114_combout\ & (\CPU|INSTR|PC|DOUT\(8)))))) # (\ROM|memROM~115_combout\ & ((((!\CPU|INSTR|PC|DOUT\(8)) # (\ROM|memROM~112_combout\))))) ) ) # ( 
-- \CPU|INSTR|PC|DOUT[0]~DUPLICATE_q\ & ( (!\ROM|memROM~115_combout\ & (((\ROM|memROM~119_combout\ & (\CPU|INSTR|PC|DOUT\(8)))))) # (\ROM|memROM~115_combout\ & ((((!\CPU|INSTR|PC|DOUT\(8)))) # (\ROM|memROM~113_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0101010100001010010101010001101101010101010111110101010100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~115_combout\,
	datab => \ROM|ALT_INV_memROM~113_combout\,
	datac => \ROM|ALT_INV_memROM~119_combout\,
	datad => \CPU|INSTR|PC|ALT_INV_DOUT\(8),
	datae => \CPU|INSTR|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	dataf => \ROM|ALT_INV_memROM~112_combout\,
	datag => \ROM|ALT_INV_memROM~114_combout\,
	combout => \ROM|memROM~28_combout\);

-- Location: LABCELL_X35_Y7_N45
\CPU|INSTR|MUX2|MUX_OUT[6]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|INSTR|MUX2|MUX_OUT[6]~7_combout\ = ( \ROM|memROM~28_combout\ & ( (!\CPU|INSTR|MUX2|Equal2~0_combout\ & (((\CPU|INSTR|SOMA_CONST|Add0~29_sumout\)))) # (\CPU|INSTR|MUX2|Equal2~0_combout\ & (((\CPU|INSTR|END_RETORNO|DOUT\(6))) # 
-- (\CPU|INSTR|MUX2|Equal1~0_combout\))) ) ) # ( !\ROM|memROM~28_combout\ & ( (!\CPU|INSTR|MUX2|Equal2~0_combout\ & (((\CPU|INSTR|SOMA_CONST|Add0~29_sumout\)))) # (\CPU|INSTR|MUX2|Equal2~0_combout\ & (!\CPU|INSTR|MUX2|Equal1~0_combout\ & 
-- (\CPU|INSTR|END_RETORNO|DOUT\(6)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010101110000001001010111000010101101111110001010110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|MUX2|ALT_INV_Equal2~0_combout\,
	datab => \CPU|INSTR|MUX2|ALT_INV_Equal1~0_combout\,
	datac => \CPU|INSTR|END_RETORNO|ALT_INV_DOUT\(6),
	datad => \CPU|INSTR|SOMA_CONST|ALT_INV_Add0~29_sumout\,
	dataf => \ROM|ALT_INV_memROM~28_combout\,
	combout => \CPU|INSTR|MUX2|MUX_OUT[6]~7_combout\);

-- Location: FF_X35_Y7_N46
\CPU|INSTR|PC|DOUT[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|INSTR|MUX2|MUX_OUT[6]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|INSTR|PC|DOUT[6]~DUPLICATE_q\);

-- Location: MLABCELL_X34_Y6_N54
\ROM|memROM~120\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~120_combout\ = ( \ROM|memROM~70_combout\ & ( \CPU|INSTR|PC|DOUT\(1) & ( (\CPU|INSTR|PC|DOUT[6]~DUPLICATE_q\ & (!\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\ & !\CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\)) ) ) ) # ( \ROM|memROM~70_combout\ & ( 
-- !\CPU|INSTR|PC|DOUT\(1) & ( (!\CPU|INSTR|PC|DOUT[6]~DUPLICATE_q\ & (\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\ & \CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000010001000000000000000000100010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	datab => \CPU|INSTR|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datad => \CPU|INSTR|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datae => \ROM|ALT_INV_memROM~70_combout\,
	dataf => \CPU|INSTR|PC|ALT_INV_DOUT\(1),
	combout => \ROM|memROM~120_combout\);

-- Location: LABCELL_X35_Y7_N15
\ROM|memROM~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~121_combout\ = ( \ROM|memROM~111_combout\ & ( (!\CPU|INSTR|PC|DOUT\(4) & !\CPU|INSTR|PC|DOUT\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|INSTR|PC|ALT_INV_DOUT\(4),
	datad => \CPU|INSTR|PC|ALT_INV_DOUT\(1),
	dataf => \ROM|ALT_INV_memROM~111_combout\,
	combout => \ROM|memROM~121_combout\);

-- Location: MLABCELL_X34_Y6_N9
\ROM|memROM~127\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~127_combout\ = ( \CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\ & ( \ROM|memROM~70_combout\ & ( (!\CPU|INSTR|PC|DOUT\(5) & (!\CPU|INSTR|PC|DOUT\(1) & \CPU|INSTR|PC|DOUT[6]~DUPLICATE_q\)) ) ) ) # ( !\CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\ & ( 
-- \ROM|memROM~70_combout\ & ( (!\CPU|INSTR|PC|DOUT\(5) & (\CPU|INSTR|PC|DOUT\(1) & \CPU|INSTR|PC|DOUT[6]~DUPLICATE_q\)) # (\CPU|INSTR|PC|DOUT\(5) & (!\CPU|INSTR|PC|DOUT\(1) & !\CPU|INSTR|PC|DOUT[6]~DUPLICATE_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000100001000100000000010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|PC|ALT_INV_DOUT\(5),
	datab => \CPU|INSTR|PC|ALT_INV_DOUT\(1),
	datad => \CPU|INSTR|PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	datae => \CPU|INSTR|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	dataf => \ROM|ALT_INV_memROM~70_combout\,
	combout => \ROM|memROM~127_combout\);

-- Location: LABCELL_X35_Y7_N24
\ROM|memROM~144\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~144_combout\ = ( \CPU|INSTR|PC|DOUT[7]~DUPLICATE_q\ & ( \CPU|INSTR|PC|DOUT[4]~DUPLICATE_q\ & ( (!\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\ & (!\CPU|INSTR|PC|DOUT\(3) $ (((!\CPU|INSTR|PC|DOUT[6]~DUPLICATE_q\ & !\CPU|INSTR|PC|DOUT\(1)))))) # 
-- (\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\ & (!\CPU|INSTR|PC|DOUT\(3) & (!\CPU|INSTR|PC|DOUT[6]~DUPLICATE_q\ $ (\CPU|INSTR|PC|DOUT\(1))))) ) ) ) # ( \CPU|INSTR|PC|DOUT[7]~DUPLICATE_q\ & ( !\CPU|INSTR|PC|DOUT[4]~DUPLICATE_q\ & ( (!\CPU|INSTR|PC|DOUT\(3) & 
-- (\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\ & (!\CPU|INSTR|PC|DOUT[6]~DUPLICATE_q\))) # (\CPU|INSTR|PC|DOUT\(3) & (\CPU|INSTR|PC|DOUT\(1) & (!\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\ $ (!\CPU|INSTR|PC|DOUT[6]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010000000100011000000000000000000110100010110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datab => \CPU|INSTR|PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	datac => \CPU|INSTR|PC|ALT_INV_DOUT\(3),
	datad => \CPU|INSTR|PC|ALT_INV_DOUT\(1),
	datae => \CPU|INSTR|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	dataf => \CPU|INSTR|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	combout => \ROM|memROM~144_combout\);

-- Location: LABCELL_X35_Y7_N30
\ROM|memROM~145\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~145_combout\ = ( \CPU|INSTR|PC|DOUT[7]~DUPLICATE_q\ & ( \CPU|INSTR|PC|DOUT[4]~DUPLICATE_q\ & ( (\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\ & (!\CPU|INSTR|PC|DOUT[6]~DUPLICATE_q\ & (\CPU|INSTR|PC|DOUT\(3) & !\CPU|INSTR|PC|DOUT\(1)))) ) ) ) # ( 
-- !\CPU|INSTR|PC|DOUT[7]~DUPLICATE_q\ & ( !\CPU|INSTR|PC|DOUT[4]~DUPLICATE_q\ & ( (\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\ & (\CPU|INSTR|PC|DOUT[6]~DUPLICATE_q\ & !\CPU|INSTR|PC|DOUT\(3))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000000000000000000000000000000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datab => \CPU|INSTR|PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	datac => \CPU|INSTR|PC|ALT_INV_DOUT\(3),
	datad => \CPU|INSTR|PC|ALT_INV_DOUT\(1),
	datae => \CPU|INSTR|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	dataf => \CPU|INSTR|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	combout => \ROM|memROM~145_combout\);

-- Location: LABCELL_X35_Y7_N0
\ROM|memROM~147\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~147_combout\ = ( \CPU|INSTR|PC|DOUT[7]~DUPLICATE_q\ & ( \CPU|INSTR|PC|DOUT[4]~DUPLICATE_q\ & ( (!\CPU|INSTR|PC|DOUT\(6) & (\CPU|INSTR|PC|DOUT[1]~DUPLICATE_q\ & \CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\)) ) ) ) # ( \CPU|INSTR|PC|DOUT[7]~DUPLICATE_q\ & 
-- ( !\CPU|INSTR|PC|DOUT[4]~DUPLICATE_q\ & ( (!\CPU|INSTR|PC|DOUT[1]~DUPLICATE_q\ & (!\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\ & (!\CPU|INSTR|PC|DOUT\(3) $ (!\CPU|INSTR|PC|DOUT\(6))))) ) ) ) # ( !\CPU|INSTR|PC|DOUT[7]~DUPLICATE_q\ & ( 
-- !\CPU|INSTR|PC|DOUT[4]~DUPLICATE_q\ & ( (\CPU|INSTR|PC|DOUT\(6) & \CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011011000000000000000000000000000000000000000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|PC|ALT_INV_DOUT\(3),
	datab => \CPU|INSTR|PC|ALT_INV_DOUT\(6),
	datac => \CPU|INSTR|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datad => \CPU|INSTR|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datae => \CPU|INSTR|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	dataf => \CPU|INSTR|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	combout => \ROM|memROM~147_combout\);

-- Location: LABCELL_X35_Y7_N6
\ROM|memROM~146\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~146_combout\ = ( \CPU|INSTR|PC|DOUT\(1) & ( \CPU|INSTR|PC|DOUT\(3) & ( (\CPU|INSTR|PC|DOUT\(6) & (\CPU|INSTR|PC|DOUT[7]~DUPLICATE_q\ & ((!\CPU|INSTR|PC|DOUT\(5)) # (\CPU|INSTR|PC|DOUT[4]~DUPLICATE_q\)))) ) ) ) # ( !\CPU|INSTR|PC|DOUT\(1) & ( 
-- \CPU|INSTR|PC|DOUT\(3) & ( (!\CPU|INSTR|PC|DOUT\(5) & (\CPU|INSTR|PC|DOUT[7]~DUPLICATE_q\ & (!\CPU|INSTR|PC|DOUT\(6) $ (!\CPU|INSTR|PC|DOUT[4]~DUPLICATE_q\)))) # (\CPU|INSTR|PC|DOUT\(5) & (!\CPU|INSTR|PC|DOUT\(6) & ((!\CPU|INSTR|PC|DOUT[4]~DUPLICATE_q\) # 
-- (!\CPU|INSTR|PC|DOUT[7]~DUPLICATE_q\)))) ) ) ) # ( \CPU|INSTR|PC|DOUT\(1) & ( !\CPU|INSTR|PC|DOUT\(3) & ( (\CPU|INSTR|PC|DOUT[7]~DUPLICATE_q\ & (!\CPU|INSTR|PC|DOUT\(5) $ (((!\CPU|INSTR|PC|DOUT\(6)) # (\CPU|INSTR|PC|DOUT[4]~DUPLICATE_q\))))) ) ) ) # ( 
-- !\CPU|INSTR|PC|DOUT\(1) & ( !\CPU|INSTR|PC|DOUT\(3) & ( (!\CPU|INSTR|PC|DOUT[4]~DUPLICATE_q\ & (((!\CPU|INSTR|PC|DOUT\(6) & !\CPU|INSTR|PC|DOUT[7]~DUPLICATE_q\)))) # (\CPU|INSTR|PC|DOUT[4]~DUPLICATE_q\ & ((!\CPU|INSTR|PC|DOUT\(5) & 
-- ((\CPU|INSTR|PC|DOUT[7]~DUPLICATE_q\))) # (\CPU|INSTR|PC|DOUT\(5) & (!\CPU|INSTR|PC|DOUT\(6))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100010000001110000000000110010101000100011010000000000000100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|PC|ALT_INV_DOUT\(5),
	datab => \CPU|INSTR|PC|ALT_INV_DOUT\(6),
	datac => \CPU|INSTR|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datad => \CPU|INSTR|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datae => \CPU|INSTR|PC|ALT_INV_DOUT\(1),
	dataf => \CPU|INSTR|PC|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~146_combout\);

-- Location: LABCELL_X35_Y7_N18
\ROM|memROM~123\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~123_combout\ = ( !\CPU|INSTR|PC|DOUT\(0) & ( ((!\CPU|INSTR|PC|DOUT[8]~DUPLICATE_q\ & ((!\CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\ & ((\ROM|memROM~146_combout\))) # (\CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\ & (\ROM|memROM~144_combout\)))) # 
-- (\CPU|INSTR|PC|DOUT[8]~DUPLICATE_q\ & (((\CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\))))) ) ) # ( \CPU|INSTR|PC|DOUT\(0) & ( ((!\CPU|INSTR|PC|DOUT[8]~DUPLICATE_q\ & ((!\CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\ & ((\ROM|memROM~147_combout\))) # 
-- (\CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\ & (\ROM|memROM~145_combout\)))) # (\CPU|INSTR|PC|DOUT[8]~DUPLICATE_q\ & (((\CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111100000000000011110000000001010101111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~144_combout\,
	datab => \ROM|ALT_INV_memROM~145_combout\,
	datac => \ROM|ALT_INV_memROM~147_combout\,
	datad => \CPU|INSTR|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datae => \CPU|INSTR|PC|ALT_INV_DOUT\(0),
	dataf => \CPU|INSTR|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datag => \ROM|ALT_INV_memROM~146_combout\,
	combout => \ROM|memROM~123_combout\);

-- Location: MLABCELL_X34_Y6_N18
\ROM|memROM~122\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~122_combout\ = ( \ROM|memROM~70_combout\ & ( \CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\ & ( (!\CPU|INSTR|PC|DOUT\(5) & (!\CPU|INSTR|PC|DOUT\(1) & \CPU|INSTR|PC|DOUT[6]~DUPLICATE_q\)) ) ) ) # ( \ROM|memROM~70_combout\ & ( 
-- !\CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\ & ( (!\CPU|INSTR|PC|DOUT\(5) & ((\CPU|INSTR|PC|DOUT[6]~DUPLICATE_q\))) # (\CPU|INSTR|PC|DOUT\(5) & (!\CPU|INSTR|PC|DOUT\(1) & !\CPU|INSTR|PC|DOUT[6]~DUPLICATE_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010010100100101000000000000000000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|PC|ALT_INV_DOUT\(5),
	datab => \CPU|INSTR|PC|ALT_INV_DOUT\(1),
	datac => \CPU|INSTR|PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	datae => \ROM|ALT_INV_memROM~70_combout\,
	dataf => \CPU|INSTR|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	combout => \ROM|memROM~122_combout\);

-- Location: LABCELL_X35_Y7_N54
\ROM|memROM~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~45_combout\ = ( !\CPU|INSTR|PC|DOUT[0]~DUPLICATE_q\ & ( ((!\CPU|INSTR|PC|DOUT\(8) & (((\ROM|memROM~123_combout\)))) # (\CPU|INSTR|PC|DOUT\(8) & ((!\ROM|memROM~123_combout\ & ((\ROM|memROM~122_combout\))) # (\ROM|memROM~123_combout\ & 
-- (\ROM|memROM~120_combout\))))) ) ) # ( \CPU|INSTR|PC|DOUT[0]~DUPLICATE_q\ & ( ((!\CPU|INSTR|PC|DOUT\(8) & (((\ROM|memROM~123_combout\)))) # (\CPU|INSTR|PC|DOUT\(8) & ((!\ROM|memROM~123_combout\ & ((\ROM|memROM~127_combout\))) # (\ROM|memROM~123_combout\ & 
-- (\ROM|memROM~121_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111000000000000111111111111010101011111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~120_combout\,
	datab => \ROM|ALT_INV_memROM~121_combout\,
	datac => \ROM|ALT_INV_memROM~127_combout\,
	datad => \CPU|INSTR|PC|ALT_INV_DOUT\(8),
	datae => \CPU|INSTR|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	dataf => \ROM|ALT_INV_memROM~123_combout\,
	datag => \ROM|ALT_INV_memROM~122_combout\,
	combout => \ROM|memROM~45_combout\);

-- Location: FF_X32_Y7_N46
\CPU|INSTR|END_RETORNO|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|INSTR|SOMA_CONST|Add0~33_sumout\,
	ena => \CPU|DECODER|sinais_controle~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|INSTR|END_RETORNO|DOUT\(5));

-- Location: MLABCELL_X34_Y7_N30
\CPU|INSTR|MUX2|MUX_OUT[5]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|INSTR|MUX2|MUX_OUT[5]~8_combout\ = ( \CPU|INSTR|MUX2|Equal1~0_combout\ & ( (!\CPU|INSTR|MUX2|Equal2~0_combout\ & ((\CPU|INSTR|SOMA_CONST|Add0~33_sumout\))) # (\CPU|INSTR|MUX2|Equal2~0_combout\ & (\ROM|memROM~45_combout\)) ) ) # ( 
-- !\CPU|INSTR|MUX2|Equal1~0_combout\ & ( (!\CPU|INSTR|MUX2|Equal2~0_combout\ & (\CPU|INSTR|SOMA_CONST|Add0~33_sumout\)) # (\CPU|INSTR|MUX2|Equal2~0_combout\ & ((\CPU|INSTR|END_RETORNO|DOUT\(5)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001111001100110000111100110011010101010011001101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~45_combout\,
	datab => \CPU|INSTR|SOMA_CONST|ALT_INV_Add0~33_sumout\,
	datac => \CPU|INSTR|END_RETORNO|ALT_INV_DOUT\(5),
	datad => \CPU|INSTR|MUX2|ALT_INV_Equal2~0_combout\,
	dataf => \CPU|INSTR|MUX2|ALT_INV_Equal1~0_combout\,
	combout => \CPU|INSTR|MUX2|MUX_OUT[5]~8_combout\);

-- Location: FF_X35_Y7_N5
\CPU|INSTR|PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|INSTR|MUX2|MUX_OUT[5]~8_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|INSTR|PC|DOUT\(5));

-- Location: MLABCELL_X37_Y7_N6
\ROM|memROM~160\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~160_combout\ = ( \CPU|INSTR|PC|DOUT[0]~DUPLICATE_q\ & ( \CPU|INSTR|PC|DOUT\(1) & ( (!\CPU|INSTR|PC|DOUT\(5) & (!\CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\ & (!\CPU|INSTR|PC|DOUT\(4) & \CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\))) ) ) ) # ( 
-- !\CPU|INSTR|PC|DOUT[0]~DUPLICATE_q\ & ( \CPU|INSTR|PC|DOUT\(1) & ( (!\CPU|INSTR|PC|DOUT\(5) & (!\CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\ & (!\CPU|INSTR|PC|DOUT\(4) & !\CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\))) ) ) ) # ( \CPU|INSTR|PC|DOUT[0]~DUPLICATE_q\ & ( 
-- !\CPU|INSTR|PC|DOUT\(1) & ( (!\CPU|INSTR|PC|DOUT\(5) & (\CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\ & (!\CPU|INSTR|PC|DOUT\(4) & !\CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\))) ) ) ) # ( !\CPU|INSTR|PC|DOUT[0]~DUPLICATE_q\ & ( !\CPU|INSTR|PC|DOUT\(1) & ( 
-- (!\CPU|INSTR|PC|DOUT\(5) & (!\CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\ & (!\CPU|INSTR|PC|DOUT\(4) & \CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000001000000000000010000000000000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|PC|ALT_INV_DOUT\(5),
	datab => \CPU|INSTR|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datac => \CPU|INSTR|PC|ALT_INV_DOUT\(4),
	datad => \CPU|INSTR|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datae => \CPU|INSTR|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	dataf => \CPU|INSTR|PC|ALT_INV_DOUT\(1),
	combout => \ROM|memROM~160_combout\);

-- Location: MLABCELL_X37_Y7_N24
\ROM|memROM~159\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~159_combout\ = ( \CPU|INSTR|PC|DOUT[0]~DUPLICATE_q\ & ( \CPU|INSTR|PC|DOUT\(1) & ( (!\CPU|INSTR|PC|DOUT\(4) & ((!\CPU|INSTR|PC|DOUT\(5) & (!\CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\)) # (\CPU|INSTR|PC|DOUT\(5) & (\CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\ & 
-- !\CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\)))) ) ) ) # ( !\CPU|INSTR|PC|DOUT[0]~DUPLICATE_q\ & ( \CPU|INSTR|PC|DOUT\(1) & ( (!\CPU|INSTR|PC|DOUT\(4) & ((!\CPU|INSTR|PC|DOUT\(5) & ((!\CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\))) # (\CPU|INSTR|PC|DOUT\(5) & 
-- (\CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\ & \CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\)))) ) ) ) # ( \CPU|INSTR|PC|DOUT[0]~DUPLICATE_q\ & ( !\CPU|INSTR|PC|DOUT\(1) & ( (!\CPU|INSTR|PC|DOUT\(4) & ((!\CPU|INSTR|PC|DOUT\(5) & ((\CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\))) # 
-- (\CPU|INSTR|PC|DOUT\(5) & (!\CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\ & !\CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\)))) ) ) ) # ( !\CPU|INSTR|PC|DOUT[0]~DUPLICATE_q\ & ( !\CPU|INSTR|PC|DOUT\(1) & ( (!\CPU|INSTR|PC|DOUT\(5) & (((!\CPU|INSTR|PC|DOUT\(4) & 
-- \CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\)))) # (\CPU|INSTR|PC|DOUT\(5) & (!\CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\ & (!\CPU|INSTR|PC|DOUT\(4) $ (\CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000010100100010000001010000010100000000100001001000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|PC|ALT_INV_DOUT\(5),
	datab => \CPU|INSTR|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datac => \CPU|INSTR|PC|ALT_INV_DOUT\(4),
	datad => \CPU|INSTR|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datae => \CPU|INSTR|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	dataf => \CPU|INSTR|PC|ALT_INV_DOUT\(1),
	combout => \ROM|memROM~159_combout\);

-- Location: MLABCELL_X37_Y7_N57
\ROM|memROM~161\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~161_combout\ = ( \ROM|memROM~159_combout\ & ( (!\CPU|INSTR|PC|DOUT\(6)) # (\ROM|memROM~160_combout\) ) ) # ( !\ROM|memROM~159_combout\ & ( (\ROM|memROM~160_combout\ & \CPU|INSTR|PC|DOUT\(6)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~160_combout\,
	datad => \CPU|INSTR|PC|ALT_INV_DOUT\(6),
	dataf => \ROM|ALT_INV_memROM~159_combout\,
	combout => \ROM|memROM~161_combout\);

-- Location: MLABCELL_X37_Y7_N36
\ROM|memROM~162\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~162_combout\ = ( \CPU|INSTR|PC|DOUT[0]~DUPLICATE_q\ & ( \CPU|INSTR|PC|DOUT\(1) & ( (!\CPU|INSTR|PC|DOUT[7]~DUPLICATE_q\ & (!\CPU|INSTR|PC|DOUT\(4) & ((!\CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\) # (!\CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\)))) # 
-- (\CPU|INSTR|PC|DOUT[7]~DUPLICATE_q\ & (((\CPU|INSTR|PC|DOUT\(4))))) ) ) ) # ( !\CPU|INSTR|PC|DOUT[0]~DUPLICATE_q\ & ( \CPU|INSTR|PC|DOUT\(1) & ( (\CPU|INSTR|PC|DOUT[7]~DUPLICATE_q\ & \CPU|INSTR|PC|DOUT\(4)) ) ) ) # ( \CPU|INSTR|PC|DOUT[0]~DUPLICATE_q\ & ( 
-- !\CPU|INSTR|PC|DOUT\(1) & ( (!\CPU|INSTR|PC|DOUT[7]~DUPLICATE_q\ & (!\CPU|INSTR|PC|DOUT\(4) & ((!\CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\) # (!\CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110000001000000000000011000000111100001110000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datab => \CPU|INSTR|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datac => \CPU|INSTR|PC|ALT_INV_DOUT\(4),
	datad => \CPU|INSTR|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datae => \CPU|INSTR|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	dataf => \CPU|INSTR|PC|ALT_INV_DOUT\(1),
	combout => \ROM|memROM~162_combout\);

-- Location: MLABCELL_X37_Y7_N42
\ROM|memROM~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~21_combout\ = ( \CPU|INSTR|PC|DOUT[0]~DUPLICATE_q\ & ( \CPU|INSTR|PC|DOUT\(1) & ( (!\CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\ & ((!\CPU|INSTR|PC|DOUT[7]~DUPLICATE_q\) # ((\CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\) # (\CPU|INSTR|PC|DOUT\(4))))) # 
-- (\CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\ & (\CPU|INSTR|PC|DOUT[7]~DUPLICATE_q\ & ((!\CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\)))) ) ) ) # ( !\CPU|INSTR|PC|DOUT[0]~DUPLICATE_q\ & ( \CPU|INSTR|PC|DOUT\(1) & ( (\CPU|INSTR|PC|DOUT[7]~DUPLICATE_q\ & 
-- ((!\CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\) # (!\CPU|INSTR|PC|DOUT\(4)))) ) ) ) # ( \CPU|INSTR|PC|DOUT[0]~DUPLICATE_q\ & ( !\CPU|INSTR|PC|DOUT\(1) & ( (!\CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\ & (!\CPU|INSTR|PC|DOUT[7]~DUPLICATE_q\ $ (((!\CPU|INSTR|PC|DOUT\(4) & 
-- !\CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\))))) # (\CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\ & (\CPU|INSTR|PC|DOUT[7]~DUPLICATE_q\ & (!\CPU|INSTR|PC|DOUT\(4) & \CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\))) ) ) ) # ( !\CPU|INSTR|PC|DOUT[0]~DUPLICATE_q\ & ( 
-- !\CPU|INSTR|PC|DOUT\(1) & ( (!\CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\ & ((!\CPU|INSTR|PC|DOUT[7]~DUPLICATE_q\) # ((\CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\)))) # (\CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\ & ((!\CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\ & 
-- ((\CPU|INSTR|PC|DOUT\(4)))) # (\CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\ & (!\CPU|INSTR|PC|DOUT[7]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000110111101110001010001001100000110010001100101001101110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datab => \CPU|INSTR|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datac => \CPU|INSTR|PC|ALT_INV_DOUT\(4),
	datad => \CPU|INSTR|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datae => \CPU|INSTR|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	dataf => \CPU|INSTR|PC|ALT_INV_DOUT\(1),
	combout => \ROM|memROM~21_combout\);

-- Location: MLABCELL_X37_Y7_N0
\ROM|memROM~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~20_combout\ = ( \CPU|INSTR|PC|DOUT[0]~DUPLICATE_q\ & ( \CPU|INSTR|PC|DOUT\(1) & ( (!\CPU|INSTR|PC|DOUT[7]~DUPLICATE_q\ & (((\CPU|INSTR|PC|DOUT\(4))))) # (\CPU|INSTR|PC|DOUT[7]~DUPLICATE_q\ & ((!\CPU|INSTR|PC|DOUT\(4) & 
-- ((\CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\))) # (\CPU|INSTR|PC|DOUT\(4) & (\CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\ & !\CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\)))) ) ) ) # ( !\CPU|INSTR|PC|DOUT[0]~DUPLICATE_q\ & ( \CPU|INSTR|PC|DOUT\(1) & ( 
-- (!\CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\ & (\CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\ & (!\CPU|INSTR|PC|DOUT[7]~DUPLICATE_q\ $ (!\CPU|INSTR|PC|DOUT\(4))))) # (\CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\ & ((!\CPU|INSTR|PC|DOUT\(4) & ((\CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\))) # 
-- (\CPU|INSTR|PC|DOUT\(4) & (!\CPU|INSTR|PC|DOUT[7]~DUPLICATE_q\)))) ) ) ) # ( \CPU|INSTR|PC|DOUT[0]~DUPLICATE_q\ & ( !\CPU|INSTR|PC|DOUT\(1) & ( (!\CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\ & (((\CPU|INSTR|PC|DOUT\(4))))) # (\CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\ & 
-- (((!\CPU|INSTR|PC|DOUT[7]~DUPLICATE_q\ & \CPU|INSTR|PC|DOUT\(4))) # (\CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\))) ) ) ) # ( !\CPU|INSTR|PC|DOUT[0]~DUPLICATE_q\ & ( !\CPU|INSTR|PC|DOUT\(1) & ( (!\CPU|INSTR|PC|DOUT\(4) & (\CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\ & 
-- (\CPU|INSTR|PC|DOUT[7]~DUPLICATE_q\ & \CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\))) # (\CPU|INSTR|PC|DOUT\(4) & (!\CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\ $ (((!\CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\) # (!\CPU|INSTR|PC|DOUT[7]~DUPLICATE_q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100011110000011100101111100000100011111000000110100111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datab => \CPU|INSTR|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datac => \CPU|INSTR|PC|ALT_INV_DOUT\(4),
	datad => \CPU|INSTR|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datae => \CPU|INSTR|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	dataf => \CPU|INSTR|PC|ALT_INV_DOUT\(1),
	combout => \ROM|memROM~20_combout\);

-- Location: MLABCELL_X37_Y7_N18
\ROM|memROM~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~22_combout\ = ( \CPU|INSTR|PC|DOUT[0]~DUPLICATE_q\ & ( \CPU|INSTR|PC|DOUT\(1) & ( (!\CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\ & ((!\CPU|INSTR|PC|DOUT\(4) & (!\CPU|INSTR|PC|DOUT[7]~DUPLICATE_q\)) # (\CPU|INSTR|PC|DOUT\(4) & 
-- ((!\CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\))))) # (\CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\ & (\CPU|INSTR|PC|DOUT[7]~DUPLICATE_q\ & (!\CPU|INSTR|PC|DOUT\(4) & !\CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\))) ) ) ) # ( !\CPU|INSTR|PC|DOUT[0]~DUPLICATE_q\ & ( 
-- \CPU|INSTR|PC|DOUT\(1) & ( (\CPU|INSTR|PC|DOUT[7]~DUPLICATE_q\ & ((!\CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\ & (!\CPU|INSTR|PC|DOUT\(4) $ (\CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\))) # (\CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\ & (!\CPU|INSTR|PC|DOUT\(4) & 
-- \CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\)))) ) ) ) # ( \CPU|INSTR|PC|DOUT[0]~DUPLICATE_q\ & ( !\CPU|INSTR|PC|DOUT\(1) & ( (!\CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\ & ((!\CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\) # (!\CPU|INSTR|PC|DOUT[7]~DUPLICATE_q\ $ 
-- (\CPU|INSTR|PC|DOUT\(4))))) # (\CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\ & ((!\CPU|INSTR|PC|DOUT[7]~DUPLICATE_q\ & (\CPU|INSTR|PC|DOUT\(4) & !\CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\)) # (\CPU|INSTR|PC|DOUT[7]~DUPLICATE_q\ & (!\CPU|INSTR|PC|DOUT\(4))))) ) ) ) # ( 
-- !\CPU|INSTR|PC|DOUT[0]~DUPLICATE_q\ & ( !\CPU|INSTR|PC|DOUT\(1) & ( ((!\CPU|INSTR|PC|DOUT\(4)) # (!\CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\)) # (\CPU|INSTR|PC|DOUT[7]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110011101111101001001000100000000100101001101010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datab => \CPU|INSTR|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datac => \CPU|INSTR|PC|ALT_INV_DOUT\(4),
	datad => \CPU|INSTR|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datae => \CPU|INSTR|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	dataf => \CPU|INSTR|PC|ALT_INV_DOUT\(1),
	combout => \ROM|memROM~22_combout\);

-- Location: MLABCELL_X37_Y7_N12
\ROM|memROM~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~23_combout\ = ( \ROM|memROM~20_combout\ & ( \ROM|memROM~22_combout\ & ( (!\CPU|INSTR|PC|DOUT[6]~DUPLICATE_q\ & (\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\ & ((\ROM|memROM~21_combout\)))) # (\CPU|INSTR|PC|DOUT[6]~DUPLICATE_q\ & 
-- ((!\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\) # ((\ROM|memROM~162_combout\)))) ) ) ) # ( !\ROM|memROM~20_combout\ & ( \ROM|memROM~22_combout\ & ( (!\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\) # ((!\CPU|INSTR|PC|DOUT[6]~DUPLICATE_q\ & ((\ROM|memROM~21_combout\))) # 
-- (\CPU|INSTR|PC|DOUT[6]~DUPLICATE_q\ & (\ROM|memROM~162_combout\))) ) ) ) # ( \ROM|memROM~20_combout\ & ( !\ROM|memROM~22_combout\ & ( (\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\ & ((!\CPU|INSTR|PC|DOUT[6]~DUPLICATE_q\ & ((\ROM|memROM~21_combout\))) # 
-- (\CPU|INSTR|PC|DOUT[6]~DUPLICATE_q\ & (\ROM|memROM~162_combout\)))) ) ) ) # ( !\ROM|memROM~20_combout\ & ( !\ROM|memROM~22_combout\ & ( (!\CPU|INSTR|PC|DOUT[6]~DUPLICATE_q\ & ((!\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\) # ((\ROM|memROM~21_combout\)))) # 
-- (\CPU|INSTR|PC|DOUT[6]~DUPLICATE_q\ & (\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\ & (\ROM|memROM~162_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100110101011000000010010001111001101111011110100010101100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	datab => \CPU|INSTR|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datac => \ROM|ALT_INV_memROM~162_combout\,
	datad => \ROM|ALT_INV_memROM~21_combout\,
	datae => \ROM|ALT_INV_memROM~20_combout\,
	dataf => \ROM|ALT_INV_memROM~22_combout\,
	combout => \ROM|memROM~23_combout\);

-- Location: MLABCELL_X37_Y7_N51
\ROM|memROM~78\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~78_combout\ = ( \ROM|memROM~161_combout\ & ( \ROM|memROM~23_combout\ & ( (!\CPU|INSTR|PC|DOUT[8]~DUPLICATE_q\) # (!\CPU|INSTR|PC|DOUT[7]~DUPLICATE_q\) ) ) ) # ( !\ROM|memROM~161_combout\ & ( \ROM|memROM~23_combout\ & ( 
-- !\CPU|INSTR|PC|DOUT[8]~DUPLICATE_q\ ) ) ) # ( \ROM|memROM~161_combout\ & ( !\ROM|memROM~23_combout\ & ( (\CPU|INSTR|PC|DOUT[8]~DUPLICATE_q\ & !\CPU|INSTR|PC|DOUT[7]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100000101000010101010101010101111101011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datac => \CPU|INSTR|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datae => \ROM|ALT_INV_memROM~161_combout\,
	dataf => \ROM|ALT_INV_memROM~23_combout\,
	combout => \ROM|memROM~78_combout\);

-- Location: LABCELL_X35_Y3_N27
\CPU|LOG_DESVIO|DESV_JUMP~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|LOG_DESVIO|DESV_JUMP~0_combout\ = ( \ROM|memROM~161_combout\ & ( !\ROM|memROM~15_combout\ & ( (!\CPU|INSTR|PC|DOUT[8]~DUPLICATE_q\ & (\ROM|memROM~23_combout\ & ((!\ROM|memROM~19_combout\) # (\CPU|INSTR|PC|DOUT\(7))))) # 
-- (\CPU|INSTR|PC|DOUT[8]~DUPLICATE_q\ & (!\ROM|memROM~19_combout\ & ((!\CPU|INSTR|PC|DOUT\(7))))) ) ) ) # ( !\ROM|memROM~161_combout\ & ( !\ROM|memROM~15_combout\ & ( (!\CPU|INSTR|PC|DOUT[8]~DUPLICATE_q\ & (\ROM|memROM~23_combout\ & 
-- ((!\ROM|memROM~19_combout\) # (\CPU|INSTR|PC|DOUT\(7))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001100001010100000110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~19_combout\,
	datab => \CPU|INSTR|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datac => \ROM|ALT_INV_memROM~23_combout\,
	datad => \CPU|INSTR|PC|ALT_INV_DOUT\(7),
	datae => \ROM|ALT_INV_memROM~161_combout\,
	dataf => \ROM|ALT_INV_memROM~15_combout\,
	combout => \CPU|LOG_DESVIO|DESV_JUMP~0_combout\);

-- Location: LABCELL_X35_Y3_N42
\CPU|DECODER|Equal5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER|Equal5~0_combout\ = ( !\ROM|memROM~8_combout\ & ( \CPU|LOG_DESVIO|DESV_JUMP~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|LOG_DESVIO|ALT_INV_DESV_JUMP~0_combout\,
	dataf => \ROM|ALT_INV_memROM~8_combout\,
	combout => \CPU|DECODER|Equal5~0_combout\);

-- Location: LABCELL_X35_Y3_N9
\CPU|DECODER|sinais_controle~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER|sinais_controle~0_combout\ = ( \CPU|DECODER|Equal5~0_combout\ & ( !\ROM|memROM~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \CPU|DECODER|ALT_INV_Equal5~0_combout\,
	combout => \CPU|DECODER|sinais_controle~0_combout\);

-- Location: LABCELL_X41_Y6_N30
\CPU|DECODER|Equal9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER|Equal9~0_combout\ = ( \ROM|memROM~77_combout\ & ( !\ROM|memROM~78_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~78_combout\,
	dataf => \ROM|ALT_INV_memROM~77_combout\,
	combout => \CPU|DECODER|Equal9~0_combout\);

-- Location: LABCELL_X41_Y6_N21
\CPU|DECODER|OP_ULA[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER|OP_ULA[0]~2_combout\ = ( !\ROM|memROM~8_combout\ & ( \CPU|DECODER|Equal9~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ROM|ALT_INV_memROM~8_combout\,
	dataf => \CPU|DECODER|ALT_INV_Equal9~0_combout\,
	combout => \CPU|DECODER|OP_ULA[0]~2_combout\);

-- Location: LABCELL_X36_Y6_N18
\ROM|memROM~66\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~66_combout\ = ( \CPU|INSTR|PC|DOUT\(5) & ( (!\CPU|INSTR|PC|DOUT[1]~DUPLICATE_q\ & !\CPU|INSTR|PC|DOUT\(6)) ) ) # ( !\CPU|INSTR|PC|DOUT\(5) & ( (!\CPU|INSTR|PC|DOUT[1]~DUPLICATE_q\ & (\CPU|INSTR|PC|DOUT\(0) & !\CPU|INSTR|PC|DOUT\(6))) # 
-- (\CPU|INSTR|PC|DOUT[1]~DUPLICATE_q\ & (!\CPU|INSTR|PC|DOUT\(0) & \CPU|INSTR|PC|DOUT\(6))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000110000000011000011000011001100000000001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|INSTR|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datac => \CPU|INSTR|PC|ALT_INV_DOUT\(0),
	datad => \CPU|INSTR|PC|ALT_INV_DOUT\(6),
	dataf => \CPU|INSTR|PC|ALT_INV_DOUT\(5),
	combout => \ROM|memROM~66_combout\);

-- Location: LABCELL_X35_Y6_N36
\ROM|memROM~67\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~67_combout\ = ( \CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\ & ( (\CPU|INSTR|PC|DOUT[0]~DUPLICATE_q\ & (!\CPU|INSTR|PC|DOUT\(1) & (\CPU|INSTR|PC|DOUT\(6) & !\CPU|INSTR|PC|DOUT\(5)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000100000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datab => \CPU|INSTR|PC|ALT_INV_DOUT\(1),
	datac => \CPU|INSTR|PC|ALT_INV_DOUT\(6),
	datad => \CPU|INSTR|PC|ALT_INV_DOUT\(5),
	dataf => \CPU|INSTR|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	combout => \ROM|memROM~67_combout\);

-- Location: LABCELL_X36_Y6_N51
\ROM|memROM~68\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~68_combout\ = ( \ROM|memROM~67_combout\ & ( (!\CPU|INSTR|PC|DOUT\(4) & !\CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\) ) ) # ( !\ROM|memROM~67_combout\ & ( (\ROM|memROM~66_combout\ & (!\CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\ & (!\CPU|INSTR|PC|DOUT\(4) & 
-- !\CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000010000000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~66_combout\,
	datab => \CPU|INSTR|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datac => \CPU|INSTR|PC|ALT_INV_DOUT\(4),
	datad => \CPU|INSTR|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \ROM|ALT_INV_memROM~67_combout\,
	combout => \ROM|memROM~68_combout\);

-- Location: LABCELL_X36_Y6_N15
\ROM|memROM~64\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~64_combout\ = ( \CPU|INSTR|PC|DOUT[4]~DUPLICATE_q\ & ( (\CPU|INSTR|PC|DOUT\(5) & (\CPU|INSTR|PC|DOUT[1]~DUPLICATE_q\ & !\CPU|INSTR|PC|DOUT\(0))) ) ) # ( !\CPU|INSTR|PC|DOUT[4]~DUPLICATE_q\ & ( (!\CPU|INSTR|PC|DOUT\(5) & 
-- (!\CPU|INSTR|PC|DOUT[1]~DUPLICATE_q\ & \CPU|INSTR|PC|DOUT\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000000000001010000000000101000000000000010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|PC|ALT_INV_DOUT\(5),
	datac => \CPU|INSTR|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datad => \CPU|INSTR|PC|ALT_INV_DOUT\(0),
	dataf => \CPU|INSTR|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	combout => \ROM|memROM~64_combout\);

-- Location: LABCELL_X35_Y6_N3
\ROM|memROM~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~65_combout\ = ( !\CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\ & ( (\ROM|memROM~64_combout\ & (!\CPU|INSTR|PC|DOUT\(6) & \CPU|INSTR|PC|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~64_combout\,
	datab => \CPU|INSTR|PC|ALT_INV_DOUT\(6),
	datac => \CPU|INSTR|PC|ALT_INV_DOUT\(2),
	dataf => \CPU|INSTR|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	combout => \ROM|memROM~65_combout\);

-- Location: LABCELL_X35_Y6_N27
\ROM|memROM~60\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~60_combout\ = ( \CPU|INSTR|PC|DOUT[4]~DUPLICATE_q\ & ( \CPU|INSTR|PC|DOUT\(6) & ( (\CPU|INSTR|PC|DOUT[7]~DUPLICATE_q\ & (!\CPU|INSTR|PC|DOUT[0]~DUPLICATE_q\ & ((!\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\) # (\CPU|INSTR|PC|DOUT\(1))))) ) ) ) # ( 
-- \CPU|INSTR|PC|DOUT[4]~DUPLICATE_q\ & ( !\CPU|INSTR|PC|DOUT\(6) & ( (!\CPU|INSTR|PC|DOUT[7]~DUPLICATE_q\ & (!\CPU|INSTR|PC|DOUT\(1) & (\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\ & !\CPU|INSTR|PC|DOUT[0]~DUPLICATE_q\))) # (\CPU|INSTR|PC|DOUT[7]~DUPLICATE_q\ & 
-- (\CPU|INSTR|PC|DOUT\(1) & (!\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\))) ) ) ) # ( !\CPU|INSTR|PC|DOUT[4]~DUPLICATE_q\ & ( !\CPU|INSTR|PC|DOUT\(6) & ( (\CPU|INSTR|PC|DOUT[7]~DUPLICATE_q\ & (!\CPU|INSTR|PC|DOUT\(1) & (\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\ & 
-- !\CPU|INSTR|PC|DOUT[0]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000000000110000001000000000000000000000101000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datab => \CPU|INSTR|PC|ALT_INV_DOUT\(1),
	datac => \CPU|INSTR|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datad => \CPU|INSTR|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datae => \CPU|INSTR|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	dataf => \CPU|INSTR|PC|ALT_INV_DOUT\(6),
	combout => \ROM|memROM~60_combout\);

-- Location: LABCELL_X35_Y6_N30
\ROM|memROM~59\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~59_combout\ = ( \CPU|INSTR|PC|DOUT[4]~DUPLICATE_q\ & ( \CPU|INSTR|PC|DOUT\(6) & ( (!\CPU|INSTR|PC|DOUT\(1) & (((!\CPU|INSTR|PC|DOUT[0]~DUPLICATE_q\ & !\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\)))) # (\CPU|INSTR|PC|DOUT\(1) & 
-- (\CPU|INSTR|PC|DOUT[7]~DUPLICATE_q\ & (!\CPU|INSTR|PC|DOUT[0]~DUPLICATE_q\ $ (!\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\)))) ) ) ) # ( !\CPU|INSTR|PC|DOUT[4]~DUPLICATE_q\ & ( \CPU|INSTR|PC|DOUT\(6) & ( (\CPU|INSTR|PC|DOUT[7]~DUPLICATE_q\ & 
-- (!\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\ & (!\CPU|INSTR|PC|DOUT\(1) $ (!\CPU|INSTR|PC|DOUT[0]~DUPLICATE_q\)))) ) ) ) # ( \CPU|INSTR|PC|DOUT[4]~DUPLICATE_q\ & ( !\CPU|INSTR|PC|DOUT\(6) & ( (!\CPU|INSTR|PC|DOUT[0]~DUPLICATE_q\ & 
-- ((!\CPU|INSTR|PC|DOUT[7]~DUPLICATE_q\ & (!\CPU|INSTR|PC|DOUT\(1) & \CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\)) # (\CPU|INSTR|PC|DOUT[7]~DUPLICATE_q\ & (!\CPU|INSTR|PC|DOUT\(1) $ (\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\))))) ) ) ) # ( 
-- !\CPU|INSTR|PC|DOUT[4]~DUPLICATE_q\ & ( !\CPU|INSTR|PC|DOUT\(6) & ( (!\CPU|INSTR|PC|DOUT[7]~DUPLICATE_q\ & (\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\ & (!\CPU|INSTR|PC|DOUT\(1) $ (\CPU|INSTR|PC|DOUT[0]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000010010000001001000000010100000000001100000100010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datab => \CPU|INSTR|PC|ALT_INV_DOUT\(1),
	datac => \CPU|INSTR|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datad => \CPU|INSTR|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datae => \CPU|INSTR|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	dataf => \CPU|INSTR|PC|ALT_INV_DOUT\(6),
	combout => \ROM|memROM~59_combout\);

-- Location: MLABCELL_X34_Y6_N12
\ROM|memROM~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~61_combout\ = ( \CPU|INSTR|PC|DOUT[4]~DUPLICATE_q\ & ( \CPU|INSTR|PC|DOUT\(6) & ( (\CPU|INSTR|PC|DOUT\(5) & (\CPU|INSTR|PC|DOUT\(7) & (!\CPU|INSTR|PC|DOUT\(0) & \CPU|INSTR|PC|DOUT\(1)))) ) ) ) # ( !\CPU|INSTR|PC|DOUT[4]~DUPLICATE_q\ & ( 
-- \CPU|INSTR|PC|DOUT\(6) & ( (!\CPU|INSTR|PC|DOUT\(5) & (\CPU|INSTR|PC|DOUT\(7) & (!\CPU|INSTR|PC|DOUT\(0) $ (\CPU|INSTR|PC|DOUT\(1))))) ) ) ) # ( \CPU|INSTR|PC|DOUT[4]~DUPLICATE_q\ & ( !\CPU|INSTR|PC|DOUT\(6) & ( (\CPU|INSTR|PC|DOUT\(5) & 
-- (\CPU|INSTR|PC|DOUT\(7) & (!\CPU|INSTR|PC|DOUT\(0) & !\CPU|INSTR|PC|DOUT\(1)))) ) ) ) # ( !\CPU|INSTR|PC|DOUT[4]~DUPLICATE_q\ & ( !\CPU|INSTR|PC|DOUT\(6) & ( (\CPU|INSTR|PC|DOUT\(5) & (\CPU|INSTR|PC|DOUT\(7) & (\CPU|INSTR|PC|DOUT\(0) & 
-- \CPU|INSTR|PC|DOUT\(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000100000000000000100000000000100000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|PC|ALT_INV_DOUT\(5),
	datab => \CPU|INSTR|PC|ALT_INV_DOUT\(7),
	datac => \CPU|INSTR|PC|ALT_INV_DOUT\(0),
	datad => \CPU|INSTR|PC|ALT_INV_DOUT\(1),
	datae => \CPU|INSTR|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	dataf => \CPU|INSTR|PC|ALT_INV_DOUT\(6),
	combout => \ROM|memROM~61_combout\);

-- Location: MLABCELL_X34_Y6_N27
\ROM|memROM~62\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~62_combout\ = ( !\CPU|INSTR|PC|DOUT[4]~DUPLICATE_q\ & ( \CPU|INSTR|PC|DOUT\(6) & ( (!\CPU|INSTR|PC|DOUT\(0) & (\CPU|INSTR|PC|DOUT\(7) & (\CPU|INSTR|PC|DOUT\(1) & !\CPU|INSTR|PC|DOUT\(5)))) ) ) ) # ( \CPU|INSTR|PC|DOUT[4]~DUPLICATE_q\ & ( 
-- !\CPU|INSTR|PC|DOUT\(6) & ( (!\CPU|INSTR|PC|DOUT\(0) & (\CPU|INSTR|PC|DOUT\(7) & (!\CPU|INSTR|PC|DOUT\(1) & !\CPU|INSTR|PC|DOUT\(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000000000000000000010000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|PC|ALT_INV_DOUT\(0),
	datab => \CPU|INSTR|PC|ALT_INV_DOUT\(7),
	datac => \CPU|INSTR|PC|ALT_INV_DOUT\(1),
	datad => \CPU|INSTR|PC|ALT_INV_DOUT\(5),
	datae => \CPU|INSTR|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	dataf => \CPU|INSTR|PC|ALT_INV_DOUT\(6),
	combout => \ROM|memROM~62_combout\);

-- Location: LABCELL_X35_Y6_N42
\ROM|memROM~63\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~63_combout\ = ( \CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\ & ( \ROM|memROM~62_combout\ & ( (\CPU|INSTR|PC|DOUT\(2)) # (\ROM|memROM~60_combout\) ) ) ) # ( !\CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\ & ( \ROM|memROM~62_combout\ & ( (!\CPU|INSTR|PC|DOUT\(2) & 
-- (\ROM|memROM~59_combout\)) # (\CPU|INSTR|PC|DOUT\(2) & ((\ROM|memROM~61_combout\))) ) ) ) # ( \CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\ & ( !\ROM|memROM~62_combout\ & ( (\ROM|memROM~60_combout\ & !\CPU|INSTR|PC|DOUT\(2)) ) ) ) # ( 
-- !\CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\ & ( !\ROM|memROM~62_combout\ & ( (!\CPU|INSTR|PC|DOUT\(2) & (\ROM|memROM~59_combout\)) # (\CPU|INSTR|PC|DOUT\(2) & ((\ROM|memROM~61_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001111010101010000000000110011000011110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~60_combout\,
	datab => \ROM|ALT_INV_memROM~59_combout\,
	datac => \ROM|ALT_INV_memROM~61_combout\,
	datad => \CPU|INSTR|PC|ALT_INV_DOUT\(2),
	datae => \CPU|INSTR|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	dataf => \ROM|ALT_INV_memROM~62_combout\,
	combout => \ROM|memROM~63_combout\);

-- Location: LABCELL_X36_Y6_N36
\ROM|memROM~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~69_combout\ = ( \CPU|INSTR|PC|DOUT\(8) & ( \ROM|memROM~63_combout\ & ( (!\CPU|INSTR|PC|DOUT[7]~DUPLICATE_q\ & ((\ROM|memROM~65_combout\) # (\ROM|memROM~68_combout\))) ) ) ) # ( !\CPU|INSTR|PC|DOUT\(8) & ( \ROM|memROM~63_combout\ ) ) # ( 
-- \CPU|INSTR|PC|DOUT\(8) & ( !\ROM|memROM~63_combout\ & ( (!\CPU|INSTR|PC|DOUT[7]~DUPLICATE_q\ & ((\ROM|memROM~65_combout\) # (\ROM|memROM~68_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100001111000011111111111111110101000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~68_combout\,
	datac => \CPU|INSTR|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datad => \ROM|ALT_INV_memROM~65_combout\,
	datae => \CPU|INSTR|PC|ALT_INV_DOUT\(8),
	dataf => \ROM|ALT_INV_memROM~63_combout\,
	combout => \ROM|memROM~69_combout\);

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

-- Location: LABCELL_X36_Y3_N57
\RAM|ram~795\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~795_combout\ = ( !\ROM|memROM~76_combout\ & ( \ROM|memROM~0_combout\ & ( (\ROM|memROM~45_combout\ & (\ROM|memROM~69_combout\ & (\ROM|memROM~58_combout\ & !\ROM|memROM~153_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~45_combout\,
	datab => \ROM|ALT_INV_memROM~69_combout\,
	datac => \ROM|ALT_INV_memROM~58_combout\,
	datad => \ROM|ALT_INV_memROM~153_combout\,
	datae => \ROM|ALT_INV_memROM~76_combout\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \RAM|ram~795_combout\);

-- Location: LABCELL_X36_Y8_N12
\ROM|memROM~158\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~158_combout\ = ( !\CPU|INSTR|PC|DOUT\(6) & ( \CPU|INSTR|PC|DOUT[8]~DUPLICATE_q\ & ( (!\CPU|INSTR|PC|DOUT\(2) & (!\CPU|INSTR|PC|DOUT\(4) & ((!\CPU|INSTR|PC|DOUT[1]~DUPLICATE_q\)))) # (\CPU|INSTR|PC|DOUT\(2) & (\CPU|INSTR|PC|DOUT[1]~DUPLICATE_q\ 
-- & ((!\CPU|INSTR|PC|DOUT[0]~DUPLICATE_q\) # (\CPU|INSTR|PC|DOUT\(4))))) ) ) ) # ( !\CPU|INSTR|PC|DOUT\(6) & ( !\CPU|INSTR|PC|DOUT[8]~DUPLICATE_q\ & ( (!\CPU|INSTR|PC|DOUT\(4) & (!\CPU|INSTR|PC|DOUT\(2) & (!\CPU|INSTR|PC|DOUT[0]~DUPLICATE_q\ & 
-- !\CPU|INSTR|PC|DOUT[1]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000010001000001100010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|PC|ALT_INV_DOUT\(4),
	datab => \CPU|INSTR|PC|ALT_INV_DOUT\(2),
	datac => \CPU|INSTR|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datad => \CPU|INSTR|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datae => \CPU|INSTR|PC|ALT_INV_DOUT\(6),
	dataf => \CPU|INSTR|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	combout => \ROM|memROM~158_combout\);

-- Location: LABCELL_X36_Y8_N54
\ROM|memROM~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~33_combout\ = ( \CPU|INSTR|PC|DOUT\(6) & ( \CPU|INSTR|PC|DOUT\(2) & ( (!\CPU|INSTR|PC|DOUT\(4) & (!\CPU|INSTR|PC|DOUT[1]~DUPLICATE_q\ & (!\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\ & \CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\))) ) ) ) # ( 
-- !\CPU|INSTR|PC|DOUT\(6) & ( \CPU|INSTR|PC|DOUT\(2) & ( (!\CPU|INSTR|PC|DOUT\(4) & (\CPU|INSTR|PC|DOUT[1]~DUPLICATE_q\ & (\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\ & !\CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\))) ) ) ) # ( \CPU|INSTR|PC|DOUT\(6) & ( 
-- !\CPU|INSTR|PC|DOUT\(2) & ( (!\CPU|INSTR|PC|DOUT[1]~DUPLICATE_q\ & (!\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\ & (!\CPU|INSTR|PC|DOUT\(4) $ (\CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\)))) ) ) ) # ( !\CPU|INSTR|PC|DOUT\(6) & ( !\CPU|INSTR|PC|DOUT\(2) & ( 
-- (\CPU|INSTR|PC|DOUT\(4) & (\CPU|INSTR|PC|DOUT[1]~DUPLICATE_q\ & (!\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\ $ (!\CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100010000100000000100000000000010000000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|PC|ALT_INV_DOUT\(4),
	datab => \CPU|INSTR|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datac => \CPU|INSTR|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datad => \CPU|INSTR|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datae => \CPU|INSTR|PC|ALT_INV_DOUT\(6),
	dataf => \CPU|INSTR|PC|ALT_INV_DOUT\(2),
	combout => \ROM|memROM~33_combout\);

-- Location: LABCELL_X36_Y8_N18
\ROM|memROM~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~32_combout\ = ( \CPU|INSTR|PC|DOUT\(6) & ( \CPU|INSTR|PC|DOUT\(2) & ( (!\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\ & (\CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\ & (!\CPU|INSTR|PC|DOUT\(4)))) # (\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\ & 
-- (!\CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\ & (\CPU|INSTR|PC|DOUT\(4) & \CPU|INSTR|PC|DOUT[1]~DUPLICATE_q\))) ) ) ) # ( !\CPU|INSTR|PC|DOUT\(6) & ( \CPU|INSTR|PC|DOUT\(2) & ( (!\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\ & (\CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\ & 
-- (\CPU|INSTR|PC|DOUT\(4) & !\CPU|INSTR|PC|DOUT[1]~DUPLICATE_q\))) # (\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\ & (!\CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\ & (!\CPU|INSTR|PC|DOUT\(4) $ (!\CPU|INSTR|PC|DOUT[1]~DUPLICATE_q\)))) ) ) ) # ( \CPU|INSTR|PC|DOUT\(6) & ( 
-- !\CPU|INSTR|PC|DOUT\(2) & ( (!\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\ & (!\CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\ $ ((\CPU|INSTR|PC|DOUT\(4))))) # (\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\ & (((\CPU|INSTR|PC|DOUT\(4) & \CPU|INSTR|PC|DOUT[1]~DUPLICATE_q\)))) ) ) ) # ( 
-- !\CPU|INSTR|PC|DOUT\(6) & ( !\CPU|INSTR|PC|DOUT\(2) & ( (!\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\ & (\CPU|INSTR|PC|DOUT\(4) & (!\CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\ $ (\CPU|INSTR|PC|DOUT[1]~DUPLICATE_q\)))) # (\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\ & 
-- ((!\CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\ & (\CPU|INSTR|PC|DOUT\(4) & \CPU|INSTR|PC|DOUT[1]~DUPLICATE_q\)) # (\CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\ & (!\CPU|INSTR|PC|DOUT\(4) & !\CPU|INSTR|PC|DOUT[1]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001100000000110100000101000011100000110010000000010000000100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datab => \CPU|INSTR|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datac => \CPU|INSTR|PC|ALT_INV_DOUT\(4),
	datad => \CPU|INSTR|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datae => \CPU|INSTR|PC|ALT_INV_DOUT\(6),
	dataf => \CPU|INSTR|PC|ALT_INV_DOUT\(2),
	combout => \ROM|memROM~32_combout\);

-- Location: LABCELL_X36_Y8_N33
\ROM|memROM~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~34_combout\ = ( \CPU|INSTR|PC|DOUT[7]~DUPLICATE_q\ & ( \ROM|memROM~32_combout\ & ( (!\CPU|INSTR|PC|DOUT\(8) & ((!\CPU|INSTR|PC|DOUT[0]~DUPLICATE_q\) # (\ROM|memROM~33_combout\))) ) ) ) # ( \CPU|INSTR|PC|DOUT[7]~DUPLICATE_q\ & ( 
-- !\ROM|memROM~32_combout\ & ( (\CPU|INSTR|PC|DOUT[0]~DUPLICATE_q\ & (!\CPU|INSTR|PC|DOUT\(8) & \ROM|memROM~33_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000100010000000000000000001000100011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datab => \CPU|INSTR|PC|ALT_INV_DOUT\(8),
	datad => \ROM|ALT_INV_memROM~33_combout\,
	datae => \CPU|INSTR|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	dataf => \ROM|ALT_INV_memROM~32_combout\,
	combout => \ROM|memROM~34_combout\);

-- Location: LABCELL_X36_Y8_N36
\ROM|memROM~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~35_combout\ = ( !\CPU|INSTR|PC|DOUT\(4) & ( \CPU|INSTR|PC|DOUT\(6) & ( (!\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\ & \CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000110011000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|INSTR|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datad => \CPU|INSTR|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datae => \CPU|INSTR|PC|ALT_INV_DOUT\(4),
	dataf => \CPU|INSTR|PC|ALT_INV_DOUT\(6),
	combout => \ROM|memROM~35_combout\);

-- Location: LABCELL_X36_Y8_N27
\ROM|memROM~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~37_combout\ = ( \ROM|memROM~35_combout\ & ( \ROM|memROM~36_combout\ & ( (\CPU|INSTR|PC|DOUT[0]~DUPLICATE_q\ & \CPU|INSTR|PC|DOUT\(8)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datab => \CPU|INSTR|PC|ALT_INV_DOUT\(8),
	datae => \ROM|ALT_INV_memROM~35_combout\,
	dataf => \ROM|ALT_INV_memROM~36_combout\,
	combout => \ROM|memROM~37_combout\);

-- Location: LABCELL_X36_Y8_N48
\ROM|memROM~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~38_combout\ = ( \CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\ & ( \ROM|memROM~37_combout\ & ( (!\CPU|INSTR|PC|DOUT[7]~DUPLICATE_q\) # (\ROM|memROM~34_combout\) ) ) ) # ( !\CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\ & ( \ROM|memROM~37_combout\ & ( 
-- (!\CPU|INSTR|PC|DOUT[7]~DUPLICATE_q\) # (\ROM|memROM~34_combout\) ) ) ) # ( \CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\ & ( !\ROM|memROM~37_combout\ & ( \ROM|memROM~34_combout\ ) ) ) # ( !\CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\ & ( !\ROM|memROM~37_combout\ & ( 
-- ((!\CPU|INSTR|PC|DOUT[7]~DUPLICATE_q\ & (\ROM|memROM~158_combout\ & \CPU|INSTR|PC|DOUT\(5)))) # (\ROM|memROM~34_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100101111000011110000111110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datab => \ROM|ALT_INV_memROM~158_combout\,
	datac => \ROM|ALT_INV_memROM~34_combout\,
	datad => \CPU|INSTR|PC|ALT_INV_DOUT\(5),
	datae => \CPU|INSTR|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	dataf => \ROM|ALT_INV_memROM~37_combout\,
	combout => \ROM|memROM~38_combout\);

-- Location: LABCELL_X36_Y4_N15
\RAM|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|process_0~0_combout\ = ( !\ROM|memROM~24_combout\ & ( \ROM|memROM~4_combout\ & ( (!\ROM|memROM~28_combout\ & (!\ROM|memROM~38_combout\ & (\CPU|LOG_DESVIO|DESV_JUMP~0_combout\ & !\ROM|memROM~8_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~28_combout\,
	datab => \ROM|ALT_INV_memROM~38_combout\,
	datac => \CPU|LOG_DESVIO|ALT_INV_DESV_JUMP~0_combout\,
	datad => \ROM|ALT_INV_memROM~8_combout\,
	datae => \ROM|ALT_INV_memROM~24_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	combout => \RAM|process_0~0_combout\);

-- Location: LABCELL_X36_Y3_N27
\RAM|ram~796\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~796_combout\ = ( \RAM|process_0~0_combout\ & ( \RAM|ram~795_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM|ALT_INV_ram~795_combout\,
	datae => \RAM|ALT_INV_process_0~0_combout\,
	combout => \RAM|ram~796_combout\);

-- Location: FF_X37_Y3_N29
\RAM|ram~450\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(3),
	sload => VCC,
	ena => \RAM|ram~796_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~450_q\);

-- Location: MLABCELL_X37_Y4_N3
\RAM|ram~735\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~735_combout\ = ( \ROM|memROM~69_combout\ & ( \ROM|memROM~45_combout\ & ( (!\ROM|memROM~58_combout\ & (!\ROM|memROM~76_combout\ & (!\ROM|memROM~153_combout\ & \ROM|memROM~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~58_combout\,
	datab => \ROM|ALT_INV_memROM~76_combout\,
	datac => \ROM|ALT_INV_memROM~153_combout\,
	datad => \ROM|ALT_INV_memROM~0_combout\,
	datae => \ROM|ALT_INV_memROM~69_combout\,
	dataf => \ROM|ALT_INV_memROM~45_combout\,
	combout => \RAM|ram~735_combout\);

-- Location: MLABCELL_X37_Y4_N51
\RAM|ram~736\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~736_combout\ = ( \RAM|process_0~0_combout\ & ( \RAM|ram~735_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~735_combout\,
	dataf => \RAM|ALT_INV_process_0~0_combout\,
	combout => \RAM|ram~736_combout\);

-- Location: FF_X37_Y4_N4
\RAM|ram~434\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(3),
	sload => VCC,
	ena => \RAM|ram~736_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~434_q\);

-- Location: LABCELL_X40_Y6_N48
\RAM|ram~739\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~739_combout\ = ( \ROM|memROM~45_combout\ & ( !\ROM|memROM~76_combout\ & ( (\ROM|memROM~0_combout\ & (\ROM|memROM~153_combout\ & (!\ROM|memROM~58_combout\ & \ROM|memROM~69_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \ROM|ALT_INV_memROM~153_combout\,
	datac => \ROM|ALT_INV_memROM~58_combout\,
	datad => \ROM|ALT_INV_memROM~69_combout\,
	datae => \ROM|ALT_INV_memROM~45_combout\,
	dataf => \ROM|ALT_INV_memROM~76_combout\,
	combout => \RAM|ram~739_combout\);

-- Location: LABCELL_X40_Y6_N27
\RAM|ram~740\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~740_combout\ = ( \RAM|process_0~0_combout\ & ( \RAM|ram~739_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~739_combout\,
	dataf => \RAM|ALT_INV_process_0~0_combout\,
	combout => \RAM|ram~740_combout\);

-- Location: FF_X40_Y6_N41
\RAM|ram~442\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(3),
	sload => VCC,
	ena => \RAM|ram~740_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~442_q\);

-- Location: LABCELL_X36_Y2_N18
\RAM|ram~803\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~803_combout\ = ( \ROM|memROM~69_combout\ & ( \ROM|memROM~0_combout\ & ( (\ROM|memROM~153_combout\ & (\ROM|memROM~58_combout\ & (!\ROM|memROM~76_combout\ & \ROM|memROM~45_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~153_combout\,
	datab => \ROM|ALT_INV_memROM~58_combout\,
	datac => \ROM|ALT_INV_memROM~76_combout\,
	datad => \ROM|ALT_INV_memROM~45_combout\,
	datae => \ROM|ALT_INV_memROM~69_combout\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \RAM|ram~803_combout\);

-- Location: LABCELL_X36_Y2_N3
\RAM|ram~804\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~804_combout\ = ( \RAM|process_0~0_combout\ & ( \RAM|ram~803_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~803_combout\,
	dataf => \RAM|ALT_INV_process_0~0_combout\,
	combout => \RAM|ram~804_combout\);

-- Location: FF_X37_Y3_N50
\RAM|ram~458\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(3),
	sload => VCC,
	ena => \RAM|ram~804_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~458_q\);

-- Location: MLABCELL_X37_Y3_N48
\RAM|ram~564\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~564_combout\ = ( \RAM|ram~458_q\ & ( \ROM|memROM~153_combout\ & ( (\ROM|memROM~58_combout\) # (\RAM|ram~442_q\) ) ) ) # ( !\RAM|ram~458_q\ & ( \ROM|memROM~153_combout\ & ( (\RAM|ram~442_q\ & !\ROM|memROM~58_combout\) ) ) ) # ( \RAM|ram~458_q\ & ( 
-- !\ROM|memROM~153_combout\ & ( (!\ROM|memROM~58_combout\ & ((\RAM|ram~434_q\))) # (\ROM|memROM~58_combout\ & (\RAM|ram~450_q\)) ) ) ) # ( !\RAM|ram~458_q\ & ( !\ROM|memROM~153_combout\ & ( (!\ROM|memROM~58_combout\ & ((\RAM|ram~434_q\))) # 
-- (\ROM|memROM~58_combout\ & (\RAM|ram~450_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101010101001100110101010100001111000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~450_q\,
	datab => \RAM|ALT_INV_ram~434_q\,
	datac => \RAM|ALT_INV_ram~442_q\,
	datad => \ROM|ALT_INV_memROM~58_combout\,
	datae => \RAM|ALT_INV_ram~458_q\,
	dataf => \ROM|ALT_INV_memROM~153_combout\,
	combout => \RAM|ram~564_combout\);

-- Location: LABCELL_X39_Y2_N42
\RAM|ram~727\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~727_combout\ = ( !\ROM|memROM~76_combout\ & ( \ROM|memROM~0_combout\ & ( (\ROM|memROM~45_combout\ & (!\ROM|memROM~58_combout\ & (!\ROM|memROM~69_combout\ & !\ROM|memROM~153_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~45_combout\,
	datab => \ROM|ALT_INV_memROM~58_combout\,
	datac => \ROM|ALT_INV_memROM~69_combout\,
	datad => \ROM|ALT_INV_memROM~153_combout\,
	datae => \ROM|ALT_INV_memROM~76_combout\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \RAM|ram~727_combout\);

-- Location: LABCELL_X39_Y2_N15
\RAM|ram~728\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~728_combout\ = ( \RAM|process_0~0_combout\ & ( \RAM|ram~727_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \RAM|ALT_INV_process_0~0_combout\,
	dataf => \RAM|ALT_INV_ram~727_combout\,
	combout => \RAM|ram~728_combout\);

-- Location: FF_X39_Y2_N47
\RAM|ram~306\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(3),
	sload => VCC,
	ena => \RAM|ram~728_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~306_q\);

-- Location: MLABCELL_X42_Y6_N21
\RAM|ram~731\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~731_combout\ = ( \ROM|memROM~45_combout\ & ( \ROM|memROM~0_combout\ & ( (\ROM|memROM~153_combout\ & (!\ROM|memROM~76_combout\ & (!\ROM|memROM~69_combout\ & !\ROM|memROM~58_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~153_combout\,
	datab => \ROM|ALT_INV_memROM~76_combout\,
	datac => \ROM|ALT_INV_memROM~69_combout\,
	datad => \ROM|ALT_INV_memROM~58_combout\,
	datae => \ROM|ALT_INV_memROM~45_combout\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \RAM|ram~731_combout\);

-- Location: LABCELL_X41_Y6_N15
\RAM|ram~732\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~732_combout\ = ( \RAM|ram~731_combout\ & ( \RAM|process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \RAM|ALT_INV_ram~731_combout\,
	dataf => \RAM|ALT_INV_process_0~0_combout\,
	combout => \RAM|ram~732_combout\);

-- Location: FF_X41_Y6_N1
\RAM|ram~314\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(3),
	sload => VCC,
	ena => \RAM|ram~732_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~314_q\);

-- Location: LABCELL_X41_Y2_N54
\RAM|ram~791\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~791_combout\ = ( !\ROM|memROM~76_combout\ & ( \ROM|memROM~45_combout\ & ( (!\ROM|memROM~69_combout\ & (!\ROM|memROM~153_combout\ & (\ROM|memROM~58_combout\ & \ROM|memROM~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~69_combout\,
	datab => \ROM|ALT_INV_memROM~153_combout\,
	datac => \ROM|ALT_INV_memROM~58_combout\,
	datad => \ROM|ALT_INV_memROM~0_combout\,
	datae => \ROM|ALT_INV_memROM~76_combout\,
	dataf => \ROM|ALT_INV_memROM~45_combout\,
	combout => \RAM|ram~791_combout\);

-- Location: LABCELL_X41_Y2_N36
\RAM|ram~792\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~792_combout\ = ( \RAM|ram~791_combout\ & ( \RAM|process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \RAM|ALT_INV_ram~791_combout\,
	dataf => \RAM|ALT_INV_process_0~0_combout\,
	combout => \RAM|ram~792_combout\);

-- Location: FF_X41_Y2_N7
\RAM|ram~322\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(3),
	sload => VCC,
	ena => \RAM|ram~792_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~322_q\);

-- Location: LABCELL_X39_Y3_N36
\RAM|ram~799\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~799_combout\ = ( !\ROM|memROM~76_combout\ & ( \ROM|memROM~0_combout\ & ( (\ROM|memROM~153_combout\ & (\ROM|memROM~58_combout\ & (!\ROM|memROM~69_combout\ & \ROM|memROM~45_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~153_combout\,
	datab => \ROM|ALT_INV_memROM~58_combout\,
	datac => \ROM|ALT_INV_memROM~69_combout\,
	datad => \ROM|ALT_INV_memROM~45_combout\,
	datae => \ROM|ALT_INV_memROM~76_combout\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \RAM|ram~799_combout\);

-- Location: MLABCELL_X37_Y3_N33
\RAM|ram~800\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~800_combout\ = ( \RAM|ram~799_combout\ & ( \RAM|process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RAM|ALT_INV_process_0~0_combout\,
	dataf => \RAM|ALT_INV_ram~799_combout\,
	combout => \RAM|ram~800_combout\);

-- Location: FF_X37_Y3_N14
\RAM|ram~330\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(3),
	sload => VCC,
	ena => \RAM|ram~800_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~330_q\);

-- Location: MLABCELL_X37_Y3_N12
\RAM|ram~563\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~563_combout\ = ( \RAM|ram~330_q\ & ( \ROM|memROM~153_combout\ & ( (\ROM|memROM~58_combout\) # (\RAM|ram~314_q\) ) ) ) # ( !\RAM|ram~330_q\ & ( \ROM|memROM~153_combout\ & ( (\RAM|ram~314_q\ & !\ROM|memROM~58_combout\) ) ) ) # ( \RAM|ram~330_q\ & ( 
-- !\ROM|memROM~153_combout\ & ( (!\ROM|memROM~58_combout\ & (\RAM|ram~306_q\)) # (\ROM|memROM~58_combout\ & ((\RAM|ram~322_q\))) ) ) ) # ( !\RAM|ram~330_q\ & ( !\ROM|memROM~153_combout\ & ( (!\ROM|memROM~58_combout\ & (\RAM|ram~306_q\)) # 
-- (\ROM|memROM~58_combout\ & ((\RAM|ram~322_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111010101010000111100110011000000000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~306_q\,
	datab => \RAM|ALT_INV_ram~314_q\,
	datac => \RAM|ALT_INV_ram~322_q\,
	datad => \ROM|ALT_INV_memROM~58_combout\,
	datae => \RAM|ALT_INV_ram~330_q\,
	dataf => \ROM|ALT_INV_memROM~153_combout\,
	combout => \RAM|ram~563_combout\);

-- Location: LABCELL_X39_Y5_N12
\RAM|ram~811\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~811_combout\ = ( \ROM|memROM~0_combout\ & ( \ROM|memROM~45_combout\ & ( (\ROM|memROM~69_combout\ & (!\ROM|memROM~153_combout\ & (\ROM|memROM~58_combout\ & \ROM|memROM~76_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~69_combout\,
	datab => \ROM|ALT_INV_memROM~153_combout\,
	datac => \ROM|ALT_INV_memROM~58_combout\,
	datad => \ROM|ALT_INV_memROM~76_combout\,
	datae => \ROM|ALT_INV_memROM~0_combout\,
	dataf => \ROM|ALT_INV_memROM~45_combout\,
	combout => \RAM|ram~811_combout\);

-- Location: LABCELL_X39_Y4_N12
\RAM|ram~812\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~812_combout\ = ( \RAM|process_0~0_combout\ & ( \RAM|ram~811_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM|ALT_INV_ram~811_combout\,
	dataf => \RAM|ALT_INV_process_0~0_combout\,
	combout => \RAM|ram~812_combout\);

-- Location: FF_X39_Y4_N41
\RAM|ram~514\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(3),
	sload => VCC,
	ena => \RAM|ram~812_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~514_q\);

-- Location: MLABCELL_X34_Y6_N36
\RAM|ram~751\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~751_combout\ = ( !\ROM|memROM~153_combout\ & ( \ROM|memROM~0_combout\ & ( (\ROM|memROM~76_combout\ & (!\ROM|memROM~58_combout\ & (\ROM|memROM~69_combout\ & \ROM|memROM~45_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~76_combout\,
	datab => \ROM|ALT_INV_memROM~58_combout\,
	datac => \ROM|ALT_INV_memROM~69_combout\,
	datad => \ROM|ALT_INV_memROM~45_combout\,
	datae => \ROM|ALT_INV_memROM~153_combout\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \RAM|ram~751_combout\);

-- Location: MLABCELL_X42_Y4_N24
\RAM|ram~752\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~752_combout\ = ( \RAM|ram~751_combout\ & ( \RAM|process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RAM|ALT_INV_process_0~0_combout\,
	dataf => \RAM|ALT_INV_ram~751_combout\,
	combout => \RAM|ram~752_combout\);

-- Location: FF_X42_Y4_N22
\RAM|ram~498\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(3),
	sload => VCC,
	ena => \RAM|ram~752_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~498_q\);

-- Location: MLABCELL_X34_Y4_N45
\RAM|ram~755\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~755_combout\ = ( \ROM|memROM~0_combout\ & ( \ROM|memROM~45_combout\ & ( (\ROM|memROM~76_combout\ & (\ROM|memROM~153_combout\ & (!\ROM|memROM~58_combout\ & \ROM|memROM~69_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~76_combout\,
	datab => \ROM|ALT_INV_memROM~153_combout\,
	datac => \ROM|ALT_INV_memROM~58_combout\,
	datad => \ROM|ALT_INV_memROM~69_combout\,
	datae => \ROM|ALT_INV_memROM~0_combout\,
	dataf => \ROM|ALT_INV_memROM~45_combout\,
	combout => \RAM|ram~755_combout\);

-- Location: MLABCELL_X34_Y4_N3
\RAM|ram~756\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~756_combout\ = ( \RAM|ram~755_combout\ & ( \RAM|process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \RAM|ALT_INV_ram~755_combout\,
	dataf => \RAM|ALT_INV_process_0~0_combout\,
	combout => \RAM|ram~756_combout\);

-- Location: FF_X40_Y6_N1
\RAM|ram~506\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(3),
	sload => VCC,
	ena => \RAM|ram~756_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~506_q\);

-- Location: LABCELL_X35_Y3_N48
\RAM|ram~819\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~819_combout\ = ( \ROM|memROM~45_combout\ & ( \ROM|memROM~153_combout\ & ( (\ROM|memROM~0_combout\ & (\ROM|memROM~76_combout\ & (\ROM|memROM~58_combout\ & \ROM|memROM~69_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \ROM|ALT_INV_memROM~76_combout\,
	datac => \ROM|ALT_INV_memROM~58_combout\,
	datad => \ROM|ALT_INV_memROM~69_combout\,
	datae => \ROM|ALT_INV_memROM~45_combout\,
	dataf => \ROM|ALT_INV_memROM~153_combout\,
	combout => \RAM|ram~819_combout\);

-- Location: LABCELL_X36_Y3_N51
\RAM|ram~820\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~820_combout\ = ( \RAM|process_0~0_combout\ & ( \RAM|ram~819_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM|ALT_INV_ram~819_combout\,
	dataf => \RAM|ALT_INV_process_0~0_combout\,
	combout => \RAM|ram~820_combout\);

-- Location: FF_X36_Y3_N11
\RAM|ram~522\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(3),
	sload => VCC,
	ena => \RAM|ram~820_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~522_q\);

-- Location: LABCELL_X36_Y3_N9
\RAM|ram~566\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~566_combout\ = ( \RAM|ram~522_q\ & ( \ROM|memROM~153_combout\ & ( (\RAM|ram~506_q\) # (\ROM|memROM~58_combout\) ) ) ) # ( !\RAM|ram~522_q\ & ( \ROM|memROM~153_combout\ & ( (!\ROM|memROM~58_combout\ & \RAM|ram~506_q\) ) ) ) # ( \RAM|ram~522_q\ & ( 
-- !\ROM|memROM~153_combout\ & ( (!\ROM|memROM~58_combout\ & ((\RAM|ram~498_q\))) # (\ROM|memROM~58_combout\ & (\RAM|ram~514_q\)) ) ) ) # ( !\RAM|ram~522_q\ & ( !\ROM|memROM~153_combout\ & ( (!\ROM|memROM~58_combout\ & ((\RAM|ram~498_q\))) # 
-- (\ROM|memROM~58_combout\ & (\RAM|ram~514_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101001101010011010100000000111100000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~514_q\,
	datab => \RAM|ALT_INV_ram~498_q\,
	datac => \ROM|ALT_INV_memROM~58_combout\,
	datad => \RAM|ALT_INV_ram~506_q\,
	datae => \RAM|ALT_INV_ram~522_q\,
	dataf => \ROM|ALT_INV_memROM~153_combout\,
	combout => \RAM|ram~566_combout\);

-- Location: MLABCELL_X42_Y5_N48
\RAM|ram~386feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~386feeder_combout\ = ( \CPU|REG_A|DOUT\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG_A|ALT_INV_DOUT\(3),
	combout => \RAM|ram~386feeder_combout\);

-- Location: MLABCELL_X42_Y2_N24
\RAM|ram~807\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~807_combout\ = ( !\ROM|memROM~69_combout\ & ( \ROM|memROM~45_combout\ & ( (!\ROM|memROM~153_combout\ & (\ROM|memROM~58_combout\ & (\ROM|memROM~76_combout\ & \ROM|memROM~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~153_combout\,
	datab => \ROM|ALT_INV_memROM~58_combout\,
	datac => \ROM|ALT_INV_memROM~76_combout\,
	datad => \ROM|ALT_INV_memROM~0_combout\,
	datae => \ROM|ALT_INV_memROM~69_combout\,
	dataf => \ROM|ALT_INV_memROM~45_combout\,
	combout => \RAM|ram~807_combout\);

-- Location: MLABCELL_X42_Y2_N0
\RAM|ram~808\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~808_combout\ = ( \RAM|process_0~0_combout\ & ( \RAM|ram~807_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM|ALT_INV_ram~807_combout\,
	dataf => \RAM|ALT_INV_process_0~0_combout\,
	combout => \RAM|ram~808_combout\);

-- Location: FF_X42_Y5_N49
\RAM|ram~386\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~386feeder_combout\,
	ena => \RAM|ram~808_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~386_q\);

-- Location: LABCELL_X39_Y6_N48
\RAM|ram~743\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~743_combout\ = ( \ROM|memROM~45_combout\ & ( \ROM|memROM~0_combout\ & ( (!\ROM|memROM~153_combout\ & (\ROM|memROM~76_combout\ & (!\ROM|memROM~58_combout\ & !\ROM|memROM~69_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~153_combout\,
	datab => \ROM|ALT_INV_memROM~76_combout\,
	datac => \ROM|ALT_INV_memROM~58_combout\,
	datad => \ROM|ALT_INV_memROM~69_combout\,
	datae => \ROM|ALT_INV_memROM~45_combout\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \RAM|ram~743_combout\);

-- Location: LABCELL_X36_Y4_N57
\RAM|ram~744\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~744_combout\ = ( \RAM|ram~743_combout\ & ( \RAM|process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM|ALT_INV_process_0~0_combout\,
	dataf => \RAM|ALT_INV_ram~743_combout\,
	combout => \RAM|ram~744_combout\);

-- Location: FF_X32_Y4_N37
\RAM|ram~370\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(3),
	sload => VCC,
	ena => \RAM|ram~744_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~370_q\);

-- Location: LABCELL_X36_Y2_N27
\RAM|ram~747\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~747_combout\ = ( \ROM|memROM~153_combout\ & ( \ROM|memROM~0_combout\ & ( (!\ROM|memROM~58_combout\ & (!\ROM|memROM~69_combout\ & (\ROM|memROM~45_combout\ & \ROM|memROM~76_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~58_combout\,
	datab => \ROM|ALT_INV_memROM~69_combout\,
	datac => \ROM|ALT_INV_memROM~45_combout\,
	datad => \ROM|ALT_INV_memROM~76_combout\,
	datae => \ROM|ALT_INV_memROM~153_combout\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \RAM|ram~747_combout\);

-- Location: LABCELL_X35_Y2_N9
\RAM|ram~748\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~748_combout\ = ( \RAM|ram~747_combout\ & ( \RAM|process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \RAM|ALT_INV_ram~747_combout\,
	dataf => \RAM|ALT_INV_process_0~0_combout\,
	combout => \RAM|ram~748_combout\);

-- Location: FF_X41_Y6_N19
\RAM|ram~378\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(3),
	sload => VCC,
	ena => \RAM|ram~748_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~378_q\);

-- Location: MLABCELL_X34_Y3_N57
\RAM|ram~815\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~815_combout\ = ( \ROM|memROM~45_combout\ & ( \ROM|memROM~0_combout\ & ( (\ROM|memROM~58_combout\ & (!\ROM|memROM~69_combout\ & (\ROM|memROM~153_combout\ & \ROM|memROM~76_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~58_combout\,
	datab => \ROM|ALT_INV_memROM~69_combout\,
	datac => \ROM|ALT_INV_memROM~153_combout\,
	datad => \ROM|ALT_INV_memROM~76_combout\,
	datae => \ROM|ALT_INV_memROM~45_combout\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \RAM|ram~815_combout\);

-- Location: LABCELL_X35_Y3_N45
\RAM|ram~816\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~816_combout\ = ( \RAM|process_0~0_combout\ & ( \RAM|ram~815_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RAM|ALT_INV_ram~815_combout\,
	dataf => \RAM|ALT_INV_process_0~0_combout\,
	combout => \RAM|ram~816_combout\);

-- Location: FF_X41_Y5_N14
\RAM|ram~394\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(3),
	sload => VCC,
	ena => \RAM|ram~816_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~394_q\);

-- Location: LABCELL_X41_Y5_N12
\RAM|ram~565\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~565_combout\ = ( \RAM|ram~394_q\ & ( \ROM|memROM~153_combout\ & ( (\RAM|ram~378_q\) # (\ROM|memROM~58_combout\) ) ) ) # ( !\RAM|ram~394_q\ & ( \ROM|memROM~153_combout\ & ( (!\ROM|memROM~58_combout\ & \RAM|ram~378_q\) ) ) ) # ( \RAM|ram~394_q\ & ( 
-- !\ROM|memROM~153_combout\ & ( (!\ROM|memROM~58_combout\ & ((\RAM|ram~370_q\))) # (\ROM|memROM~58_combout\ & (\RAM|ram~386_q\)) ) ) ) # ( !\RAM|ram~394_q\ & ( !\ROM|memROM~153_combout\ & ( (!\ROM|memROM~58_combout\ & ((\RAM|ram~370_q\))) # 
-- (\ROM|memROM~58_combout\ & (\RAM|ram~386_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101001101010011010100000000111100000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~386_q\,
	datab => \RAM|ALT_INV_ram~370_q\,
	datac => \ROM|ALT_INV_memROM~58_combout\,
	datad => \RAM|ALT_INV_ram~378_q\,
	datae => \RAM|ALT_INV_ram~394_q\,
	dataf => \ROM|ALT_INV_memROM~153_combout\,
	combout => \RAM|ram~565_combout\);

-- Location: LABCELL_X43_Y3_N12
\RAM|ram~567\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~567_combout\ = ( \RAM|ram~566_combout\ & ( \RAM|ram~565_combout\ & ( ((!\ROM|memROM~69_combout\ & ((\RAM|ram~563_combout\))) # (\ROM|memROM~69_combout\ & (\RAM|ram~564_combout\))) # (\ROM|memROM~76_combout\) ) ) ) # ( !\RAM|ram~566_combout\ & ( 
-- \RAM|ram~565_combout\ & ( (!\ROM|memROM~69_combout\ & (((\ROM|memROM~76_combout\) # (\RAM|ram~563_combout\)))) # (\ROM|memROM~69_combout\ & (\RAM|ram~564_combout\ & ((!\ROM|memROM~76_combout\)))) ) ) ) # ( \RAM|ram~566_combout\ & ( !\RAM|ram~565_combout\ 
-- & ( (!\ROM|memROM~69_combout\ & (((\RAM|ram~563_combout\ & !\ROM|memROM~76_combout\)))) # (\ROM|memROM~69_combout\ & (((\ROM|memROM~76_combout\)) # (\RAM|ram~564_combout\))) ) ) ) # ( !\RAM|ram~566_combout\ & ( !\RAM|ram~565_combout\ & ( 
-- (!\ROM|memROM~76_combout\ & ((!\ROM|memROM~69_combout\ & ((\RAM|ram~563_combout\))) # (\ROM|memROM~69_combout\ & (\RAM|ram~564_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100000000000111010011001100011101110011000001110111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~564_combout\,
	datab => \ROM|ALT_INV_memROM~69_combout\,
	datac => \RAM|ALT_INV_ram~563_combout\,
	datad => \ROM|ALT_INV_memROM~76_combout\,
	datae => \RAM|ALT_INV_ram~566_combout\,
	dataf => \RAM|ALT_INV_ram~565_combout\,
	combout => \RAM|ram~567_combout\);

-- Location: LABCELL_X43_Y5_N18
\RAM|ram~98feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~98feeder_combout\ = ( \CPU|REG_A|DOUT\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG_A|ALT_INV_DOUT\(3),
	combout => \RAM|ram~98feeder_combout\);

-- Location: MLABCELL_X42_Y5_N27
\RAM|ram~773\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~773_combout\ = ( !\ROM|memROM~153_combout\ & ( !\ROM|memROM~0_combout\ & ( (\ROM|memROM~76_combout\ & (!\ROM|memROM~69_combout\ & (!\ROM|memROM~45_combout\ & \ROM|memROM~58_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~76_combout\,
	datab => \ROM|ALT_INV_memROM~69_combout\,
	datac => \ROM|ALT_INV_memROM~45_combout\,
	datad => \ROM|ALT_INV_memROM~58_combout\,
	datae => \ROM|ALT_INV_memROM~153_combout\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \RAM|ram~773_combout\);

-- Location: MLABCELL_X42_Y5_N57
\RAM|ram~774\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~774_combout\ = ( \RAM|ram~773_combout\ & ( \RAM|process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \RAM|ALT_INV_ram~773_combout\,
	dataf => \RAM|ALT_INV_process_0~0_combout\,
	combout => \RAM|ram~774_combout\);

-- Location: FF_X43_Y5_N19
\RAM|ram~98\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~98feeder_combout\,
	ena => \RAM|ram~774_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~98_q\);

-- Location: MLABCELL_X45_Y5_N57
\RAM|ram~90feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~90feeder_combout\ = ( \CPU|REG_A|DOUT\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG_A|ALT_INV_DOUT\(3),
	combout => \RAM|ram~90feeder_combout\);

-- Location: MLABCELL_X42_Y7_N45
\RAM|ram~713\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~713_combout\ = ( \ROM|memROM~76_combout\ & ( !\ROM|memROM~45_combout\ & ( (!\ROM|memROM~0_combout\ & (\ROM|memROM~153_combout\ & (!\ROM|memROM~69_combout\ & !\ROM|memROM~58_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \ROM|ALT_INV_memROM~153_combout\,
	datac => \ROM|ALT_INV_memROM~69_combout\,
	datad => \ROM|ALT_INV_memROM~58_combout\,
	datae => \ROM|ALT_INV_memROM~76_combout\,
	dataf => \ROM|ALT_INV_memROM~45_combout\,
	combout => \RAM|ram~713_combout\);

-- Location: MLABCELL_X45_Y5_N48
\RAM|ram~714\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~714_combout\ = ( \RAM|process_0~0_combout\ & ( \RAM|ram~713_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM|ALT_INV_ram~713_combout\,
	dataf => \RAM|ALT_INV_process_0~0_combout\,
	combout => \RAM|ram~714_combout\);

-- Location: FF_X45_Y5_N58
\RAM|ram~90\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~90feeder_combout\,
	ena => \RAM|ram~714_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~90_q\);

-- Location: LABCELL_X44_Y6_N33
\RAM|ram~709\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~709_combout\ = ( \ROM|memROM~76_combout\ & ( !\ROM|memROM~0_combout\ & ( (!\ROM|memROM~69_combout\ & (!\ROM|memROM~58_combout\ & (!\ROM|memROM~45_combout\ & !\ROM|memROM~153_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~69_combout\,
	datab => \ROM|ALT_INV_memROM~58_combout\,
	datac => \ROM|ALT_INV_memROM~45_combout\,
	datad => \ROM|ALT_INV_memROM~153_combout\,
	datae => \ROM|ALT_INV_memROM~76_combout\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \RAM|ram~709_combout\);

-- Location: LABCELL_X43_Y6_N54
\RAM|ram~710\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~710_combout\ = ( \RAM|process_0~0_combout\ & ( \RAM|ram~709_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM|ALT_INV_ram~709_combout\,
	dataf => \RAM|ALT_INV_process_0~0_combout\,
	combout => \RAM|ram~710_combout\);

-- Location: FF_X43_Y6_N58
\RAM|ram~82\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(3),
	sload => VCC,
	ena => \RAM|ram~710_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~82_q\);

-- Location: LABCELL_X39_Y7_N15
\RAM|ram~777\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~777_combout\ = ( !\ROM|memROM~0_combout\ & ( \ROM|memROM~76_combout\ & ( (\ROM|memROM~58_combout\ & (!\ROM|memROM~69_combout\ & (!\ROM|memROM~45_combout\ & \ROM|memROM~153_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~58_combout\,
	datab => \ROM|ALT_INV_memROM~69_combout\,
	datac => \ROM|ALT_INV_memROM~45_combout\,
	datad => \ROM|ALT_INV_memROM~153_combout\,
	datae => \ROM|ALT_INV_memROM~0_combout\,
	dataf => \ROM|ALT_INV_memROM~76_combout\,
	combout => \RAM|ram~777_combout\);

-- Location: LABCELL_X39_Y7_N48
\RAM|ram~778\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~778_combout\ = ( \RAM|process_0~0_combout\ & ( \RAM|ram~777_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM|ALT_INV_ram~777_combout\,
	dataf => \RAM|ALT_INV_process_0~0_combout\,
	combout => \RAM|ram~778_combout\);

-- Location: FF_X43_Y3_N50
\RAM|ram~106\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(3),
	sload => VCC,
	ena => \RAM|ram~778_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~106_q\);

-- Location: LABCELL_X43_Y3_N48
\RAM|ram~550\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~550_combout\ = ( \RAM|ram~106_q\ & ( \ROM|memROM~153_combout\ & ( (\ROM|memROM~58_combout\) # (\RAM|ram~90_q\) ) ) ) # ( !\RAM|ram~106_q\ & ( \ROM|memROM~153_combout\ & ( (\RAM|ram~90_q\ & !\ROM|memROM~58_combout\) ) ) ) # ( \RAM|ram~106_q\ & ( 
-- !\ROM|memROM~153_combout\ & ( (!\ROM|memROM~58_combout\ & ((\RAM|ram~82_q\))) # (\ROM|memROM~58_combout\ & (\RAM|ram~98_q\)) ) ) ) # ( !\RAM|ram~106_q\ & ( !\ROM|memROM~153_combout\ & ( (!\ROM|memROM~58_combout\ & ((\RAM|ram~82_q\))) # 
-- (\ROM|memROM~58_combout\ & (\RAM|ram~98_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000011110101010100110011000000000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~98_q\,
	datab => \RAM|ALT_INV_ram~90_q\,
	datac => \RAM|ALT_INV_ram~82_q\,
	datad => \ROM|ALT_INV_memROM~58_combout\,
	datae => \RAM|ALT_INV_ram~106_q\,
	dataf => \ROM|ALT_INV_memROM~153_combout\,
	combout => \RAM|ram~550_combout\);

-- Location: LABCELL_X44_Y4_N27
\RAM|ram~721\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~721_combout\ = ( \ROM|memROM~69_combout\ & ( !\ROM|memROM~0_combout\ & ( (\ROM|memROM~76_combout\ & (!\ROM|memROM~45_combout\ & (\ROM|memROM~153_combout\ & !\ROM|memROM~58_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~76_combout\,
	datab => \ROM|ALT_INV_memROM~45_combout\,
	datac => \ROM|ALT_INV_memROM~153_combout\,
	datad => \ROM|ALT_INV_memROM~58_combout\,
	datae => \ROM|ALT_INV_memROM~69_combout\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \RAM|ram~721_combout\);

-- Location: LABCELL_X44_Y4_N21
\RAM|ram~722\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~722_combout\ = ( \RAM|ram~721_combout\ & ( \RAM|process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \RAM|ALT_INV_ram~721_combout\,
	dataf => \RAM|ALT_INV_process_0~0_combout\,
	combout => \RAM|ram~722_combout\);

-- Location: FF_X44_Y4_N20
\RAM|ram~218\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(3),
	sload => VCC,
	ena => \RAM|ram~722_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~218_q\);

-- Location: MLABCELL_X42_Y6_N45
\RAM|ram~210feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~210feeder_combout\ = ( \CPU|REG_A|DOUT\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG_A|ALT_INV_DOUT\(3),
	combout => \RAM|ram~210feeder_combout\);

-- Location: LABCELL_X41_Y7_N42
\RAM|ram~717\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~717_combout\ = ( \ROM|memROM~76_combout\ & ( !\ROM|memROM~0_combout\ & ( (!\ROM|memROM~58_combout\ & (\ROM|memROM~69_combout\ & (!\ROM|memROM~153_combout\ & !\ROM|memROM~45_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~58_combout\,
	datab => \ROM|ALT_INV_memROM~69_combout\,
	datac => \ROM|ALT_INV_memROM~153_combout\,
	datad => \ROM|ALT_INV_memROM~45_combout\,
	datae => \ROM|ALT_INV_memROM~76_combout\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \RAM|ram~717_combout\);

-- Location: LABCELL_X41_Y7_N21
\RAM|ram~718\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~718_combout\ = ( \RAM|process_0~0_combout\ & ( \RAM|ram~717_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM|ALT_INV_ram~717_combout\,
	dataf => \RAM|ALT_INV_process_0~0_combout\,
	combout => \RAM|ram~718_combout\);

-- Location: FF_X42_Y6_N46
\RAM|ram~210\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~210feeder_combout\,
	ena => \RAM|ram~718_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~210_q\);

-- Location: LABCELL_X44_Y4_N3
\RAM|ram~781\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~781_combout\ = ( \ROM|memROM~69_combout\ & ( !\ROM|memROM~0_combout\ & ( (\ROM|memROM~58_combout\ & (!\ROM|memROM~45_combout\ & (!\ROM|memROM~153_combout\ & \ROM|memROM~76_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~58_combout\,
	datab => \ROM|ALT_INV_memROM~45_combout\,
	datac => \ROM|ALT_INV_memROM~153_combout\,
	datad => \ROM|ALT_INV_memROM~76_combout\,
	datae => \ROM|ALT_INV_memROM~69_combout\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \RAM|ram~781_combout\);

-- Location: LABCELL_X44_Y4_N48
\RAM|ram~782\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~782_combout\ = ( \RAM|ram~781_combout\ & ( \RAM|process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \RAM|ALT_INV_ram~781_combout\,
	dataf => \RAM|ALT_INV_process_0~0_combout\,
	combout => \RAM|ram~782_combout\);

-- Location: FF_X44_Y4_N50
\RAM|ram~226\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(3),
	sload => VCC,
	ena => \RAM|ram~782_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~226_q\);

-- Location: LABCELL_X43_Y4_N0
\RAM|ram~785\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~785_combout\ = ( \ROM|memROM~153_combout\ & ( \ROM|memROM~69_combout\ & ( (!\ROM|memROM~45_combout\ & (\ROM|memROM~76_combout\ & (\ROM|memROM~58_combout\ & !\ROM|memROM~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~45_combout\,
	datab => \ROM|ALT_INV_memROM~76_combout\,
	datac => \ROM|ALT_INV_memROM~58_combout\,
	datad => \ROM|ALT_INV_memROM~0_combout\,
	datae => \ROM|ALT_INV_memROM~153_combout\,
	dataf => \ROM|ALT_INV_memROM~69_combout\,
	combout => \RAM|ram~785_combout\);

-- Location: LABCELL_X43_Y4_N39
\RAM|ram~786\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~786_combout\ = ( \RAM|ram~785_combout\ & ( \RAM|process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RAM|ALT_INV_process_0~0_combout\,
	datae => \RAM|ALT_INV_ram~785_combout\,
	combout => \RAM|ram~786_combout\);

-- Location: FF_X44_Y4_N32
\RAM|ram~234\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(3),
	sload => VCC,
	ena => \RAM|ram~786_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~234_q\);

-- Location: LABCELL_X44_Y4_N30
\RAM|ram~551\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~551_combout\ = ( \RAM|ram~234_q\ & ( \ROM|memROM~153_combout\ & ( (\ROM|memROM~58_combout\) # (\RAM|ram~218_q\) ) ) ) # ( !\RAM|ram~234_q\ & ( \ROM|memROM~153_combout\ & ( (\RAM|ram~218_q\ & !\ROM|memROM~58_combout\) ) ) ) # ( \RAM|ram~234_q\ & ( 
-- !\ROM|memROM~153_combout\ & ( (!\ROM|memROM~58_combout\ & (\RAM|ram~210_q\)) # (\ROM|memROM~58_combout\ & ((\RAM|ram~226_q\))) ) ) ) # ( !\RAM|ram~234_q\ & ( !\ROM|memROM~153_combout\ & ( (!\ROM|memROM~58_combout\ & (\RAM|ram~210_q\)) # 
-- (\ROM|memROM~58_combout\ & ((\RAM|ram~226_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001111001100110000111101010101000000000101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~218_q\,
	datab => \RAM|ALT_INV_ram~210_q\,
	datac => \RAM|ALT_INV_ram~226_q\,
	datad => \ROM|ALT_INV_memROM~58_combout\,
	datae => \RAM|ALT_INV_ram~234_q\,
	dataf => \ROM|ALT_INV_memROM~153_combout\,
	combout => \RAM|ram~551_combout\);

-- Location: LABCELL_X44_Y4_N54
\RAM|ram~757\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~757_combout\ = ( !\ROM|memROM~153_combout\ & ( !\ROM|memROM~0_combout\ & ( (\ROM|memROM~58_combout\ & (!\ROM|memROM~69_combout\ & (!\ROM|memROM~76_combout\ & !\ROM|memROM~45_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~58_combout\,
	datab => \ROM|ALT_INV_memROM~69_combout\,
	datac => \ROM|ALT_INV_memROM~76_combout\,
	datad => \ROM|ALT_INV_memROM~45_combout\,
	datae => \ROM|ALT_INV_memROM~153_combout\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \RAM|ram~757_combout\);

-- Location: LABCELL_X44_Y4_N12
\RAM|ram~758\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~758_combout\ = ( \RAM|ram~757_combout\ & ( \RAM|process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \RAM|ALT_INV_ram~757_combout\,
	dataf => \RAM|ALT_INV_process_0~0_combout\,
	combout => \RAM|ram~758_combout\);

-- Location: FF_X39_Y3_N58
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
	ena => \RAM|ram~758_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~34_q\);

-- Location: LABCELL_X44_Y5_N12
\RAM|ram~697\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~697_combout\ = ( \ROM|memROM~153_combout\ & ( !\ROM|memROM~0_combout\ & ( (!\ROM|memROM~76_combout\ & (!\ROM|memROM~45_combout\ & (!\ROM|memROM~58_combout\ & !\ROM|memROM~69_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~76_combout\,
	datab => \ROM|ALT_INV_memROM~45_combout\,
	datac => \ROM|ALT_INV_memROM~58_combout\,
	datad => \ROM|ALT_INV_memROM~69_combout\,
	datae => \ROM|ALT_INV_memROM~153_combout\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \RAM|ram~697_combout\);

-- Location: LABCELL_X39_Y5_N27
\RAM|ram~698\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~698_combout\ = ( \RAM|process_0~0_combout\ & ( \RAM|ram~697_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RAM|ALT_INV_ram~697_combout\,
	dataf => \RAM|ALT_INV_process_0~0_combout\,
	combout => \RAM|ram~698_combout\);

-- Location: FF_X42_Y7_N8
\RAM|ram~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(3),
	sload => VCC,
	ena => \RAM|ram~698_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~26_q\);

-- Location: MLABCELL_X34_Y4_N51
\RAM|ram~693\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~693_combout\ = ( !\ROM|memROM~0_combout\ & ( !\ROM|memROM~45_combout\ & ( (!\ROM|memROM~76_combout\ & (!\ROM|memROM~69_combout\ & (!\ROM|memROM~58_combout\ & !\ROM|memROM~153_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~76_combout\,
	datab => \ROM|ALT_INV_memROM~69_combout\,
	datac => \ROM|ALT_INV_memROM~58_combout\,
	datad => \ROM|ALT_INV_memROM~153_combout\,
	datae => \ROM|ALT_INV_memROM~0_combout\,
	dataf => \ROM|ALT_INV_memROM~45_combout\,
	combout => \RAM|ram~693_combout\);

-- Location: LABCELL_X41_Y4_N0
\RAM|ram~694\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~694_combout\ = ( \RAM|ram~693_combout\ & ( \RAM|process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM|ALT_INV_process_0~0_combout\,
	dataf => \RAM|ALT_INV_ram~693_combout\,
	combout => \RAM|ram~694_combout\);

-- Location: FF_X41_Y4_N31
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
	ena => \RAM|ram~694_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~18_q\);

-- Location: MLABCELL_X42_Y7_N3
\RAM|ram~761\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~761_combout\ = ( !\ROM|memROM~76_combout\ & ( !\ROM|memROM~0_combout\ & ( (!\ROM|memROM~45_combout\ & (!\ROM|memROM~69_combout\ & (\ROM|memROM~153_combout\ & \ROM|memROM~58_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~45_combout\,
	datab => \ROM|ALT_INV_memROM~69_combout\,
	datac => \ROM|ALT_INV_memROM~153_combout\,
	datad => \ROM|ALT_INV_memROM~58_combout\,
	datae => \ROM|ALT_INV_memROM~76_combout\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \RAM|ram~761_combout\);

-- Location: MLABCELL_X42_Y7_N57
\RAM|ram~762\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~762_combout\ = ( \RAM|ram~761_combout\ & ( \RAM|process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \RAM|ALT_INV_ram~761_combout\,
	dataf => \RAM|ALT_INV_process_0~0_combout\,
	combout => \RAM|ram~762_combout\);

-- Location: FF_X42_Y7_N14
\RAM|ram~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(3),
	sload => VCC,
	ena => \RAM|ram~762_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~42_q\);

-- Location: MLABCELL_X42_Y7_N12
\RAM|ram~548\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~548_combout\ = ( \RAM|ram~42_q\ & ( \ROM|memROM~153_combout\ & ( (\ROM|memROM~58_combout\) # (\RAM|ram~26_q\) ) ) ) # ( !\RAM|ram~42_q\ & ( \ROM|memROM~153_combout\ & ( (\RAM|ram~26_q\ & !\ROM|memROM~58_combout\) ) ) ) # ( \RAM|ram~42_q\ & ( 
-- !\ROM|memROM~153_combout\ & ( (!\ROM|memROM~58_combout\ & ((\RAM|ram~18_q\))) # (\ROM|memROM~58_combout\ & (\RAM|ram~34_q\)) ) ) ) # ( !\RAM|ram~42_q\ & ( !\ROM|memROM~153_combout\ & ( (!\ROM|memROM~58_combout\ & ((\RAM|ram~18_q\))) # 
-- (\ROM|memROM~58_combout\ & (\RAM|ram~34_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000001011111010100110000001100000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~34_q\,
	datab => \RAM|ALT_INV_ram~26_q\,
	datac => \ROM|ALT_INV_memROM~58_combout\,
	datad => \RAM|ALT_INV_ram~18_q\,
	datae => \RAM|ALT_INV_ram~42_q\,
	dataf => \ROM|ALT_INV_memROM~153_combout\,
	combout => \RAM|ram~548_combout\);

-- Location: MLABCELL_X42_Y8_N3
\RAM|ram~146feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~146feeder_combout\ = ( \CPU|REG_A|DOUT\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG_A|ALT_INV_DOUT\(3),
	combout => \RAM|ram~146feeder_combout\);

-- Location: MLABCELL_X42_Y8_N33
\RAM|ram~701\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~701_combout\ = ( !\ROM|memROM~153_combout\ & ( !\ROM|memROM~0_combout\ & ( (\ROM|memROM~69_combout\ & (!\ROM|memROM~76_combout\ & (!\ROM|memROM~45_combout\ & !\ROM|memROM~58_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~69_combout\,
	datab => \ROM|ALT_INV_memROM~76_combout\,
	datac => \ROM|ALT_INV_memROM~45_combout\,
	datad => \ROM|ALT_INV_memROM~58_combout\,
	datae => \ROM|ALT_INV_memROM~153_combout\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \RAM|ram~701_combout\);

-- Location: MLABCELL_X42_Y8_N54
\RAM|ram~702\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~702_combout\ = ( \RAM|process_0~0_combout\ & ( \RAM|ram~701_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM|ALT_INV_ram~701_combout\,
	dataf => \RAM|ALT_INV_process_0~0_combout\,
	combout => \RAM|ram~702_combout\);

-- Location: FF_X42_Y8_N4
\RAM|ram~146\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~146feeder_combout\,
	ena => \RAM|ram~702_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~146_q\);

-- Location: LABCELL_X43_Y3_N6
\RAM|ram~769\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~769_combout\ = ( !\ROM|memROM~0_combout\ & ( \ROM|memROM~153_combout\ & ( (!\ROM|memROM~76_combout\ & (\ROM|memROM~69_combout\ & (!\ROM|memROM~45_combout\ & \ROM|memROM~58_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~76_combout\,
	datab => \ROM|ALT_INV_memROM~69_combout\,
	datac => \ROM|ALT_INV_memROM~45_combout\,
	datad => \ROM|ALT_INV_memROM~58_combout\,
	datae => \ROM|ALT_INV_memROM~0_combout\,
	dataf => \ROM|ALT_INV_memROM~153_combout\,
	combout => \RAM|ram~769_combout\);

-- Location: LABCELL_X43_Y5_N12
\RAM|ram~770\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~770_combout\ = ( \RAM|ram~769_combout\ & ( \RAM|process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \RAM|ALT_INV_ram~769_combout\,
	dataf => \RAM|ALT_INV_process_0~0_combout\,
	combout => \RAM|ram~770_combout\);

-- Location: FF_X44_Y6_N58
\RAM|ram~170\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(3),
	sload => VCC,
	ena => \RAM|ram~770_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~170_q\);

-- Location: LABCELL_X44_Y6_N9
\RAM|ram~705\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~705_combout\ = ( !\ROM|memROM~45_combout\ & ( !\ROM|memROM~0_combout\ & ( (!\ROM|memROM~76_combout\ & (!\ROM|memROM~58_combout\ & (\ROM|memROM~153_combout\ & \ROM|memROM~69_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~76_combout\,
	datab => \ROM|ALT_INV_memROM~58_combout\,
	datac => \ROM|ALT_INV_memROM~153_combout\,
	datad => \ROM|ALT_INV_memROM~69_combout\,
	datae => \ROM|ALT_INV_memROM~45_combout\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \RAM|ram~705_combout\);

-- Location: LABCELL_X44_Y6_N54
\RAM|ram~706\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~706_combout\ = ( \RAM|process_0~0_combout\ & ( \RAM|ram~705_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM|ALT_INV_ram~705_combout\,
	dataf => \RAM|ALT_INV_process_0~0_combout\,
	combout => \RAM|ram~706_combout\);

-- Location: FF_X44_Y6_N7
\RAM|ram~154\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(3),
	sload => VCC,
	ena => \RAM|ram~706_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~154_q\);

-- Location: LABCELL_X43_Y4_N18
\RAM|ram~765\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~765_combout\ = ( !\ROM|memROM~153_combout\ & ( !\ROM|memROM~0_combout\ & ( (!\ROM|memROM~45_combout\ & (!\ROM|memROM~76_combout\ & (\ROM|memROM~58_combout\ & \ROM|memROM~69_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~45_combout\,
	datab => \ROM|ALT_INV_memROM~76_combout\,
	datac => \ROM|ALT_INV_memROM~58_combout\,
	datad => \ROM|ALT_INV_memROM~69_combout\,
	datae => \ROM|ALT_INV_memROM~153_combout\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \RAM|ram~765_combout\);

-- Location: LABCELL_X43_Y4_N9
\RAM|ram~766\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~766_combout\ = ( \RAM|process_0~0_combout\ & ( \RAM|ram~765_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \RAM|ALT_INV_process_0~0_combout\,
	dataf => \RAM|ALT_INV_ram~765_combout\,
	combout => \RAM|ram~766_combout\);

-- Location: FF_X44_Y6_N1
\RAM|ram~162\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(3),
	sload => VCC,
	ena => \RAM|ram~766_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~162_q\);

-- Location: MLABCELL_X42_Y6_N0
\RAM|ram~549\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~549_combout\ = ( \ROM|memROM~153_combout\ & ( \ROM|memROM~58_combout\ & ( \RAM|ram~170_q\ ) ) ) # ( !\ROM|memROM~153_combout\ & ( \ROM|memROM~58_combout\ & ( \RAM|ram~162_q\ ) ) ) # ( \ROM|memROM~153_combout\ & ( !\ROM|memROM~58_combout\ & ( 
-- \RAM|ram~154_q\ ) ) ) # ( !\ROM|memROM~153_combout\ & ( !\ROM|memROM~58_combout\ & ( \RAM|ram~146_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000011110000111100000000111111110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~146_q\,
	datab => \RAM|ALT_INV_ram~170_q\,
	datac => \RAM|ALT_INV_ram~154_q\,
	datad => \RAM|ALT_INV_ram~162_q\,
	datae => \ROM|ALT_INV_memROM~153_combout\,
	dataf => \ROM|ALT_INV_memROM~58_combout\,
	combout => \RAM|ram~549_combout\);

-- Location: LABCELL_X43_Y3_N18
\RAM|ram~552\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~552_combout\ = ( \RAM|ram~548_combout\ & ( \RAM|ram~549_combout\ & ( (!\ROM|memROM~76_combout\) # ((!\ROM|memROM~69_combout\ & (\RAM|ram~550_combout\)) # (\ROM|memROM~69_combout\ & ((\RAM|ram~551_combout\)))) ) ) ) # ( !\RAM|ram~548_combout\ & ( 
-- \RAM|ram~549_combout\ & ( (!\ROM|memROM~69_combout\ & (\RAM|ram~550_combout\ & ((\ROM|memROM~76_combout\)))) # (\ROM|memROM~69_combout\ & (((!\ROM|memROM~76_combout\) # (\RAM|ram~551_combout\)))) ) ) ) # ( \RAM|ram~548_combout\ & ( !\RAM|ram~549_combout\ 
-- & ( (!\ROM|memROM~69_combout\ & (((!\ROM|memROM~76_combout\)) # (\RAM|ram~550_combout\))) # (\ROM|memROM~69_combout\ & (((\RAM|ram~551_combout\ & \ROM|memROM~76_combout\)))) ) ) ) # ( !\RAM|ram~548_combout\ & ( !\RAM|ram~549_combout\ & ( 
-- (\ROM|memROM~76_combout\ & ((!\ROM|memROM~69_combout\ & (\RAM|ram~550_combout\)) # (\ROM|memROM~69_combout\ & ((\RAM|ram~551_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000111110011000100011100110011010001111111111101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~550_combout\,
	datab => \ROM|ALT_INV_memROM~69_combout\,
	datac => \RAM|ALT_INV_ram~551_combout\,
	datad => \ROM|ALT_INV_memROM~76_combout\,
	datae => \RAM|ALT_INV_ram~548_combout\,
	dataf => \RAM|ALT_INV_ram~549_combout\,
	combout => \RAM|ram~552_combout\);

-- Location: LABCELL_X41_Y7_N24
\RAM|ram~711\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~711_combout\ = ( !\ROM|memROM~69_combout\ & ( !\ROM|memROM~0_combout\ & ( (!\ROM|memROM~58_combout\ & (\ROM|memROM~45_combout\ & (!\ROM|memROM~153_combout\ & \ROM|memROM~76_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~58_combout\,
	datab => \ROM|ALT_INV_memROM~45_combout\,
	datac => \ROM|ALT_INV_memROM~153_combout\,
	datad => \ROM|ALT_INV_memROM~76_combout\,
	datae => \ROM|ALT_INV_memROM~69_combout\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \RAM|ram~711_combout\);

-- Location: LABCELL_X41_Y7_N51
\RAM|ram~712\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~712_combout\ = ( \RAM|process_0~0_combout\ & ( \RAM|ram~711_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~711_combout\,
	dataf => \RAM|ALT_INV_process_0~0_combout\,
	combout => \RAM|ram~712_combout\);

-- Location: FF_X41_Y7_N16
\RAM|ram~338\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(3),
	sload => VCC,
	ena => \RAM|ram~712_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~338_q\);

-- Location: LABCELL_X39_Y7_N21
\RAM|ram~775\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~775_combout\ = ( !\ROM|memROM~0_combout\ & ( \ROM|memROM~76_combout\ & ( (\ROM|memROM~58_combout\ & (!\ROM|memROM~69_combout\ & (\ROM|memROM~45_combout\ & !\ROM|memROM~153_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000100000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~58_combout\,
	datab => \ROM|ALT_INV_memROM~69_combout\,
	datac => \ROM|ALT_INV_memROM~45_combout\,
	datad => \ROM|ALT_INV_memROM~153_combout\,
	datae => \ROM|ALT_INV_memROM~0_combout\,
	dataf => \ROM|ALT_INV_memROM~76_combout\,
	combout => \RAM|ram~775_combout\);

-- Location: LABCELL_X39_Y7_N3
\RAM|ram~776\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~776_combout\ = ( \RAM|ram~775_combout\ & ( \RAM|process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \RAM|ALT_INV_ram~775_combout\,
	dataf => \RAM|ALT_INV_process_0~0_combout\,
	combout => \RAM|ram~776_combout\);

-- Location: FF_X41_Y7_N58
\RAM|ram~354\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(3),
	sload => VCC,
	ena => \RAM|ram~776_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~354_q\);

-- Location: MLABCELL_X42_Y3_N12
\RAM|ram~719\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~719_combout\ = ( !\ROM|memROM~58_combout\ & ( \ROM|memROM~45_combout\ & ( (!\ROM|memROM~0_combout\ & (!\ROM|memROM~153_combout\ & (\ROM|memROM~76_combout\ & \ROM|memROM~69_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \ROM|ALT_INV_memROM~153_combout\,
	datac => \ROM|ALT_INV_memROM~76_combout\,
	datad => \ROM|ALT_INV_memROM~69_combout\,
	datae => \ROM|ALT_INV_memROM~58_combout\,
	dataf => \ROM|ALT_INV_memROM~45_combout\,
	combout => \RAM|ram~719_combout\);

-- Location: MLABCELL_X42_Y4_N0
\RAM|ram~720\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~720_combout\ = ( \RAM|ram~719_combout\ & ( \RAM|process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RAM|ALT_INV_process_0~0_combout\,
	dataf => \RAM|ALT_INV_ram~719_combout\,
	combout => \RAM|ram~720_combout\);

-- Location: FF_X40_Y3_N22
\RAM|ram~466\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(3),
	sload => VCC,
	ena => \RAM|ram~720_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~466_q\);

-- Location: LABCELL_X36_Y4_N36
\RAM|ram~783\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~783_combout\ = ( !\ROM|memROM~153_combout\ & ( \ROM|memROM~45_combout\ & ( (\ROM|memROM~69_combout\ & (\ROM|memROM~58_combout\ & (\ROM|memROM~76_combout\ & !\ROM|memROM~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~69_combout\,
	datab => \ROM|ALT_INV_memROM~58_combout\,
	datac => \ROM|ALT_INV_memROM~76_combout\,
	datad => \ROM|ALT_INV_memROM~0_combout\,
	datae => \ROM|ALT_INV_memROM~153_combout\,
	dataf => \ROM|ALT_INV_memROM~45_combout\,
	combout => \RAM|ram~783_combout\);

-- Location: LABCELL_X36_Y4_N51
\RAM|ram~784\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~784_combout\ = ( \RAM|ram~783_combout\ & ( \RAM|process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \RAM|ALT_INV_ram~783_combout\,
	dataf => \RAM|ALT_INV_process_0~0_combout\,
	combout => \RAM|ram~784_combout\);

-- Location: FF_X42_Y5_N41
\RAM|ram~482\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(3),
	sload => VCC,
	ena => \RAM|ram~784_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~482_q\);

-- Location: MLABCELL_X42_Y5_N39
\RAM|ram~555\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~555_combout\ = ( \RAM|ram~482_q\ & ( \ROM|memROM~69_combout\ & ( (\ROM|memROM~58_combout\) # (\RAM|ram~466_q\) ) ) ) # ( !\RAM|ram~482_q\ & ( \ROM|memROM~69_combout\ & ( (\RAM|ram~466_q\ & !\ROM|memROM~58_combout\) ) ) ) # ( \RAM|ram~482_q\ & ( 
-- !\ROM|memROM~69_combout\ & ( (!\ROM|memROM~58_combout\ & (\RAM|ram~338_q\)) # (\ROM|memROM~58_combout\ & ((\RAM|ram~354_q\))) ) ) ) # ( !\RAM|ram~482_q\ & ( !\ROM|memROM~69_combout\ & ( (!\ROM|memROM~58_combout\ & (\RAM|ram~338_q\)) # 
-- (\ROM|memROM~58_combout\ & ((\RAM|ram~354_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110011010101010011001100001111000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~338_q\,
	datab => \RAM|ALT_INV_ram~354_q\,
	datac => \RAM|ALT_INV_ram~466_q\,
	datad => \ROM|ALT_INV_memROM~58_combout\,
	datae => \RAM|ALT_INV_ram~482_q\,
	dataf => \ROM|ALT_INV_memROM~69_combout\,
	combout => \RAM|ram~555_combout\);

-- Location: LABCELL_X39_Y7_N42
\RAM|ram~779\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~779_combout\ = ( \ROM|memROM~76_combout\ & ( \ROM|memROM~45_combout\ & ( (\ROM|memROM~58_combout\ & (!\ROM|memROM~0_combout\ & (\ROM|memROM~153_combout\ & !\ROM|memROM~69_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~58_combout\,
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \ROM|ALT_INV_memROM~153_combout\,
	datad => \ROM|ALT_INV_memROM~69_combout\,
	datae => \ROM|ALT_INV_memROM~76_combout\,
	dataf => \ROM|ALT_INV_memROM~45_combout\,
	combout => \RAM|ram~779_combout\);

-- Location: LABCELL_X39_Y7_N36
\RAM|ram~780\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~780_combout\ = ( \RAM|process_0~0_combout\ & ( \RAM|ram~779_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM|ALT_INV_ram~779_combout\,
	dataf => \RAM|ALT_INV_process_0~0_combout\,
	combout => \RAM|ram~780_combout\);

-- Location: FF_X39_Y7_N37
\RAM|ram~362\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(3),
	sload => VCC,
	ena => \RAM|ram~780_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~362_q\);

-- Location: LABCELL_X39_Y3_N6
\RAM|ram~715\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~715_combout\ = ( \ROM|memROM~76_combout\ & ( !\ROM|memROM~58_combout\ & ( (!\ROM|memROM~69_combout\ & (!\ROM|memROM~0_combout\ & (\ROM|memROM~153_combout\ & \ROM|memROM~45_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~69_combout\,
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \ROM|ALT_INV_memROM~153_combout\,
	datad => \ROM|ALT_INV_memROM~45_combout\,
	datae => \ROM|ALT_INV_memROM~76_combout\,
	dataf => \ROM|ALT_INV_memROM~58_combout\,
	combout => \RAM|ram~715_combout\);

-- Location: LABCELL_X39_Y5_N57
\RAM|ram~716\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~716_combout\ = ( \RAM|process_0~0_combout\ & ( \RAM|ram~715_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~715_combout\,
	dataf => \RAM|ALT_INV_process_0~0_combout\,
	combout => \RAM|ram~716_combout\);

-- Location: FF_X39_Y5_N47
\RAM|ram~346\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(3),
	sload => VCC,
	ena => \RAM|ram~716_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~346_q\);

-- Location: LABCELL_X39_Y6_N36
\RAM|ram~723\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~723_combout\ = ( \ROM|memROM~69_combout\ & ( !\ROM|memROM~58_combout\ & ( (\ROM|memROM~76_combout\ & (\ROM|memROM~153_combout\ & (!\ROM|memROM~0_combout\ & \ROM|memROM~45_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~76_combout\,
	datab => \ROM|ALT_INV_memROM~153_combout\,
	datac => \ROM|ALT_INV_memROM~0_combout\,
	datad => \ROM|ALT_INV_memROM~45_combout\,
	datae => \ROM|ALT_INV_memROM~69_combout\,
	dataf => \ROM|ALT_INV_memROM~58_combout\,
	combout => \RAM|ram~723_combout\);

-- Location: LABCELL_X39_Y6_N6
\RAM|ram~724\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~724_combout\ = ( \RAM|ram~723_combout\ & ( \RAM|process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \RAM|ALT_INV_ram~723_combout\,
	dataf => \RAM|ALT_INV_process_0~0_combout\,
	combout => \RAM|ram~724_combout\);

-- Location: FF_X39_Y6_N8
\RAM|ram~474\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(3),
	sload => VCC,
	ena => \RAM|ram~724_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~474_q\);

-- Location: MLABCELL_X34_Y4_N33
\RAM|ram~787\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~787_combout\ = ( \ROM|memROM~69_combout\ & ( \ROM|memROM~45_combout\ & ( (\ROM|memROM~153_combout\ & (\ROM|memROM~76_combout\ & (\ROM|memROM~58_combout\ & !\ROM|memROM~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~153_combout\,
	datab => \ROM|ALT_INV_memROM~76_combout\,
	datac => \ROM|ALT_INV_memROM~58_combout\,
	datad => \ROM|ALT_INV_memROM~0_combout\,
	datae => \ROM|ALT_INV_memROM~69_combout\,
	dataf => \ROM|ALT_INV_memROM~45_combout\,
	combout => \RAM|ram~787_combout\);

-- Location: MLABCELL_X34_Y4_N9
\RAM|ram~788\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~788_combout\ = ( \RAM|process_0~0_combout\ & ( \RAM|ram~787_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RAM|ALT_INV_ram~787_combout\,
	dataf => \RAM|ALT_INV_process_0~0_combout\,
	combout => \RAM|ram~788_combout\);

-- Location: FF_X39_Y5_N32
\RAM|ram~490\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(3),
	sload => VCC,
	ena => \RAM|ram~788_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~490_q\);

-- Location: LABCELL_X39_Y5_N30
\RAM|ram~556\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~556_combout\ = ( \RAM|ram~490_q\ & ( \ROM|memROM~69_combout\ & ( (\ROM|memROM~58_combout\) # (\RAM|ram~474_q\) ) ) ) # ( !\RAM|ram~490_q\ & ( \ROM|memROM~69_combout\ & ( (\RAM|ram~474_q\ & !\ROM|memROM~58_combout\) ) ) ) # ( \RAM|ram~490_q\ & ( 
-- !\ROM|memROM~69_combout\ & ( (!\ROM|memROM~58_combout\ & ((\RAM|ram~346_q\))) # (\ROM|memROM~58_combout\ & (\RAM|ram~362_q\)) ) ) ) # ( !\RAM|ram~490_q\ & ( !\ROM|memROM~69_combout\ & ( (!\ROM|memROM~58_combout\ & ((\RAM|ram~346_q\))) # 
-- (\ROM|memROM~58_combout\ & (\RAM|ram~362_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101010101001100110101010100001111000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~362_q\,
	datab => \RAM|ALT_INV_ram~346_q\,
	datac => \RAM|ALT_INV_ram~474_q\,
	datad => \ROM|ALT_INV_memROM~58_combout\,
	datae => \RAM|ALT_INV_ram~490_q\,
	dataf => \ROM|ALT_INV_memROM~69_combout\,
	combout => \RAM|ram~556_combout\);

-- Location: MLABCELL_X34_Y4_N18
\RAM|ram~699\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~699_combout\ = ( !\ROM|memROM~0_combout\ & ( \ROM|memROM~153_combout\ & ( (!\ROM|memROM~76_combout\ & (!\ROM|memROM~58_combout\ & (!\ROM|memROM~69_combout\ & \ROM|memROM~45_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~76_combout\,
	datab => \ROM|ALT_INV_memROM~58_combout\,
	datac => \ROM|ALT_INV_memROM~69_combout\,
	datad => \ROM|ALT_INV_memROM~45_combout\,
	datae => \ROM|ALT_INV_memROM~0_combout\,
	dataf => \ROM|ALT_INV_memROM~153_combout\,
	combout => \RAM|ram~699_combout\);

-- Location: LABCELL_X35_Y4_N45
\RAM|ram~700\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~700_combout\ = ( \RAM|process_0~0_combout\ & ( \RAM|ram~699_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \RAM|ALT_INV_process_0~0_combout\,
	dataf => \RAM|ALT_INV_ram~699_combout\,
	combout => \RAM|ram~700_combout\);

-- Location: FF_X35_Y3_N26
\RAM|ram~282\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(3),
	sload => VCC,
	ena => \RAM|ram~700_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~282_q\);

-- Location: MLABCELL_X34_Y4_N36
\RAM|ram~707\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~707_combout\ = ( !\ROM|memROM~0_combout\ & ( \ROM|memROM~153_combout\ & ( (!\ROM|memROM~76_combout\ & (!\ROM|memROM~58_combout\ & (\ROM|memROM~69_combout\ & \ROM|memROM~45_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~76_combout\,
	datab => \ROM|ALT_INV_memROM~58_combout\,
	datac => \ROM|ALT_INV_memROM~69_combout\,
	datad => \ROM|ALT_INV_memROM~45_combout\,
	datae => \ROM|ALT_INV_memROM~0_combout\,
	dataf => \ROM|ALT_INV_memROM~153_combout\,
	combout => \RAM|ram~707_combout\);

-- Location: MLABCELL_X34_Y4_N24
\RAM|ram~708\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~708_combout\ = ( \RAM|ram~707_combout\ & ( \RAM|process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \RAM|ALT_INV_ram~707_combout\,
	dataf => \RAM|ALT_INV_process_0~0_combout\,
	combout => \RAM|ram~708_combout\);

-- Location: FF_X39_Y6_N53
\RAM|ram~410\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(3),
	sload => VCC,
	ena => \RAM|ram~708_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~410_q\);

-- Location: LABCELL_X35_Y3_N54
\RAM|ram~763\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~763_combout\ = ( !\ROM|memROM~76_combout\ & ( \ROM|memROM~153_combout\ & ( (\ROM|memROM~58_combout\ & (!\ROM|memROM~69_combout\ & (!\ROM|memROM~0_combout\ & \ROM|memROM~45_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~58_combout\,
	datab => \ROM|ALT_INV_memROM~69_combout\,
	datac => \ROM|ALT_INV_memROM~0_combout\,
	datad => \ROM|ALT_INV_memROM~45_combout\,
	datae => \ROM|ALT_INV_memROM~76_combout\,
	dataf => \ROM|ALT_INV_memROM~153_combout\,
	combout => \RAM|ram~763_combout\);

-- Location: LABCELL_X39_Y3_N21
\RAM|ram~764\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~764_combout\ = ( \RAM|ram~763_combout\ & ( \RAM|process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \RAM|ALT_INV_ram~763_combout\,
	dataf => \RAM|ALT_INV_process_0~0_combout\,
	combout => \RAM|ram~764_combout\);

-- Location: FF_X39_Y3_N34
\RAM|ram~298\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(3),
	sload => VCC,
	ena => \RAM|ram~764_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~298_q\);

-- Location: LABCELL_X36_Y4_N33
\RAM|ram~771\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~771_combout\ = ( !\ROM|memROM~76_combout\ & ( \ROM|memROM~58_combout\ & ( (\ROM|memROM~45_combout\ & (!\ROM|memROM~0_combout\ & (\ROM|memROM~69_combout\ & \ROM|memROM~153_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~45_combout\,
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \ROM|ALT_INV_memROM~69_combout\,
	datad => \ROM|ALT_INV_memROM~153_combout\,
	datae => \ROM|ALT_INV_memROM~76_combout\,
	dataf => \ROM|ALT_INV_memROM~58_combout\,
	combout => \RAM|ram~771_combout\);

-- Location: LABCELL_X36_Y4_N18
\RAM|ram~772\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~772_combout\ = ( \RAM|ram~771_combout\ & ( \RAM|process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM|ALT_INV_process_0~0_combout\,
	dataf => \RAM|ALT_INV_ram~771_combout\,
	combout => \RAM|ram~772_combout\);

-- Location: FF_X35_Y3_N38
\RAM|ram~426\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(3),
	sload => VCC,
	ena => \RAM|ram~772_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~426_q\);

-- Location: LABCELL_X35_Y3_N36
\RAM|ram~554\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~554_combout\ = ( \RAM|ram~426_q\ & ( \ROM|memROM~69_combout\ & ( (\ROM|memROM~58_combout\) # (\RAM|ram~410_q\) ) ) ) # ( !\RAM|ram~426_q\ & ( \ROM|memROM~69_combout\ & ( (\RAM|ram~410_q\ & !\ROM|memROM~58_combout\) ) ) ) # ( \RAM|ram~426_q\ & ( 
-- !\ROM|memROM~69_combout\ & ( (!\ROM|memROM~58_combout\ & (\RAM|ram~282_q\)) # (\ROM|memROM~58_combout\ & ((\RAM|ram~298_q\))) ) ) ) # ( !\RAM|ram~426_q\ & ( !\ROM|memROM~69_combout\ & ( (!\ROM|memROM~58_combout\ & (\RAM|ram~282_q\)) # 
-- (\ROM|memROM~58_combout\ & ((\RAM|ram~298_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111010100000101111100110000001100000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~282_q\,
	datab => \RAM|ALT_INV_ram~410_q\,
	datac => \ROM|ALT_INV_memROM~58_combout\,
	datad => \RAM|ALT_INV_ram~298_q\,
	datae => \RAM|ALT_INV_ram~426_q\,
	dataf => \ROM|ALT_INV_memROM~69_combout\,
	combout => \RAM|ram~554_combout\);

-- Location: LABCELL_X39_Y6_N24
\RAM|ram~703\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~703_combout\ = ( \ROM|memROM~45_combout\ & ( !\ROM|memROM~0_combout\ & ( (!\ROM|memROM~76_combout\ & (!\ROM|memROM~153_combout\ & (!\ROM|memROM~58_combout\ & \ROM|memROM~69_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~76_combout\,
	datab => \ROM|ALT_INV_memROM~153_combout\,
	datac => \ROM|ALT_INV_memROM~58_combout\,
	datad => \ROM|ALT_INV_memROM~69_combout\,
	datae => \ROM|ALT_INV_memROM~45_combout\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \RAM|ram~703_combout\);

-- Location: LABCELL_X39_Y6_N30
\RAM|ram~704\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~704_combout\ = ( \RAM|process_0~0_combout\ & ( \RAM|ram~703_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM|ALT_INV_ram~703_combout\,
	dataf => \RAM|ALT_INV_process_0~0_combout\,
	combout => \RAM|ram~704_combout\);

-- Location: FF_X39_Y6_N38
\RAM|ram~402\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(3),
	sload => VCC,
	ena => \RAM|ram~704_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~402_q\);

-- Location: MLABCELL_X34_Y4_N54
\RAM|ram~759\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~759_combout\ = ( !\ROM|memROM~0_combout\ & ( !\ROM|memROM~76_combout\ & ( (!\ROM|memROM~153_combout\ & (\ROM|memROM~58_combout\ & (!\ROM|memROM~69_combout\ & \ROM|memROM~45_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~153_combout\,
	datab => \ROM|ALT_INV_memROM~58_combout\,
	datac => \ROM|ALT_INV_memROM~69_combout\,
	datad => \ROM|ALT_INV_memROM~45_combout\,
	datae => \ROM|ALT_INV_memROM~0_combout\,
	dataf => \ROM|ALT_INV_memROM~76_combout\,
	combout => \RAM|ram~759_combout\);

-- Location: LABCELL_X35_Y5_N42
\RAM|ram~760\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~760_combout\ = ( \RAM|process_0~0_combout\ & ( \RAM|ram~759_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM|ALT_INV_ram~759_combout\,
	dataf => \RAM|ALT_INV_process_0~0_combout\,
	combout => \RAM|ram~760_combout\);

-- Location: FF_X35_Y5_N14
\RAM|ram~290\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(3),
	sload => VCC,
	ena => \RAM|ram~760_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~290_q\);

-- Location: LABCELL_X35_Y4_N12
\RAM|ram~695\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~695_combout\ = ( !\ROM|memROM~0_combout\ & ( \ROM|memROM~45_combout\ & ( (!\ROM|memROM~76_combout\ & (!\ROM|memROM~58_combout\ & (!\ROM|memROM~153_combout\ & !\ROM|memROM~69_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~76_combout\,
	datab => \ROM|ALT_INV_memROM~58_combout\,
	datac => \ROM|ALT_INV_memROM~153_combout\,
	datad => \ROM|ALT_INV_memROM~69_combout\,
	datae => \ROM|ALT_INV_memROM~0_combout\,
	dataf => \ROM|ALT_INV_memROM~45_combout\,
	combout => \RAM|ram~695_combout\);

-- Location: LABCELL_X35_Y4_N54
\RAM|ram~696\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~696_combout\ = ( \RAM|process_0~0_combout\ & ( \RAM|ram~695_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \RAM|ALT_INV_process_0~0_combout\,
	dataf => \RAM|ALT_INV_ram~695_combout\,
	combout => \RAM|ram~696_combout\);

-- Location: FF_X41_Y4_N47
\RAM|ram~274\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(3),
	sload => VCC,
	ena => \RAM|ram~696_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~274_q\);

-- Location: LABCELL_X41_Y5_N3
\RAM|ram~767\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~767_combout\ = ( \ROM|memROM~69_combout\ & ( !\ROM|memROM~0_combout\ & ( (\ROM|memROM~58_combout\ & (\ROM|memROM~45_combout\ & (!\ROM|memROM~76_combout\ & !\ROM|memROM~153_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~58_combout\,
	datab => \ROM|ALT_INV_memROM~45_combout\,
	datac => \ROM|ALT_INV_memROM~76_combout\,
	datad => \ROM|ALT_INV_memROM~153_combout\,
	datae => \ROM|ALT_INV_memROM~69_combout\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \RAM|ram~767_combout\);

-- Location: MLABCELL_X42_Y5_N21
\RAM|ram~768\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~768_combout\ = ( \RAM|process_0~0_combout\ & ( \RAM|ram~767_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM|ALT_INV_ram~767_combout\,
	dataf => \RAM|ALT_INV_process_0~0_combout\,
	combout => \RAM|ram~768_combout\);

-- Location: FF_X35_Y5_N56
\RAM|ram~418\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(3),
	sload => VCC,
	ena => \RAM|ram~768_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~418_q\);

-- Location: LABCELL_X35_Y5_N54
\RAM|ram~553\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~553_combout\ = ( \RAM|ram~418_q\ & ( \ROM|memROM~69_combout\ & ( (\ROM|memROM~58_combout\) # (\RAM|ram~402_q\) ) ) ) # ( !\RAM|ram~418_q\ & ( \ROM|memROM~69_combout\ & ( (\RAM|ram~402_q\ & !\ROM|memROM~58_combout\) ) ) ) # ( \RAM|ram~418_q\ & ( 
-- !\ROM|memROM~69_combout\ & ( (!\ROM|memROM~58_combout\ & ((\RAM|ram~274_q\))) # (\ROM|memROM~58_combout\ & (\RAM|ram~290_q\)) ) ) ) # ( !\RAM|ram~418_q\ & ( !\ROM|memROM~69_combout\ & ( (!\ROM|memROM~58_combout\ & ((\RAM|ram~274_q\))) # 
-- (\ROM|memROM~58_combout\ & (\RAM|ram~290_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011000000111111001101010000010100000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~402_q\,
	datab => \RAM|ALT_INV_ram~290_q\,
	datac => \ROM|ALT_INV_memROM~58_combout\,
	datad => \RAM|ALT_INV_ram~274_q\,
	datae => \RAM|ALT_INV_ram~418_q\,
	dataf => \ROM|ALT_INV_memROM~69_combout\,
	combout => \RAM|ram~553_combout\);

-- Location: LABCELL_X43_Y3_N36
\RAM|ram~557\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~557_combout\ = ( \RAM|ram~554_combout\ & ( \RAM|ram~553_combout\ & ( (!\ROM|memROM~76_combout\) # ((!\ROM|memROM~153_combout\ & (\RAM|ram~555_combout\)) # (\ROM|memROM~153_combout\ & ((\RAM|ram~556_combout\)))) ) ) ) # ( !\RAM|ram~554_combout\ & 
-- ( \RAM|ram~553_combout\ & ( (!\ROM|memROM~153_combout\ & ((!\ROM|memROM~76_combout\) # ((\RAM|ram~555_combout\)))) # (\ROM|memROM~153_combout\ & (\ROM|memROM~76_combout\ & ((\RAM|ram~556_combout\)))) ) ) ) # ( \RAM|ram~554_combout\ & ( 
-- !\RAM|ram~553_combout\ & ( (!\ROM|memROM~153_combout\ & (\ROM|memROM~76_combout\ & (\RAM|ram~555_combout\))) # (\ROM|memROM~153_combout\ & ((!\ROM|memROM~76_combout\) # ((\RAM|ram~556_combout\)))) ) ) ) # ( !\RAM|ram~554_combout\ & ( 
-- !\RAM|ram~553_combout\ & ( (\ROM|memROM~76_combout\ & ((!\ROM|memROM~153_combout\ & (\RAM|ram~555_combout\)) # (\ROM|memROM~153_combout\ & ((\RAM|ram~556_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000010011010001100101011110001010100110111100111011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~153_combout\,
	datab => \ROM|ALT_INV_memROM~76_combout\,
	datac => \RAM|ALT_INV_ram~555_combout\,
	datad => \RAM|ALT_INV_ram~556_combout\,
	datae => \RAM|ALT_INV_ram~554_combout\,
	dataf => \RAM|ALT_INV_ram~553_combout\,
	combout => \RAM|ram~557_combout\);

-- Location: LABCELL_X36_Y2_N48
\RAM|ram~733\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~733_combout\ = ( !\ROM|memROM~153_combout\ & ( \ROM|memROM~0_combout\ & ( (!\ROM|memROM~58_combout\ & (!\ROM|memROM~45_combout\ & (!\ROM|memROM~76_combout\ & \ROM|memROM~69_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~58_combout\,
	datab => \ROM|ALT_INV_memROM~45_combout\,
	datac => \ROM|ALT_INV_memROM~76_combout\,
	datad => \ROM|ALT_INV_memROM~69_combout\,
	datae => \ROM|ALT_INV_memROM~153_combout\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \RAM|ram~733_combout\);

-- Location: LABCELL_X36_Y2_N42
\RAM|ram~734\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~734_combout\ = ( \RAM|process_0~0_combout\ & ( \RAM|ram~733_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM|ALT_INV_ram~733_combout\,
	dataf => \RAM|ALT_INV_process_0~0_combout\,
	combout => \RAM|ram~734_combout\);

-- Location: FF_X36_Y5_N53
\RAM|ram~178\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(3),
	sload => VCC,
	ena => \RAM|ram~734_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~178_q\);

-- Location: MLABCELL_X42_Y8_N12
\RAM|ram~749\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~749_combout\ = ( !\ROM|memROM~153_combout\ & ( \ROM|memROM~0_combout\ & ( (\ROM|memROM~69_combout\ & (\ROM|memROM~76_combout\ & (!\ROM|memROM~58_combout\ & !\ROM|memROM~45_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~69_combout\,
	datab => \ROM|ALT_INV_memROM~76_combout\,
	datac => \ROM|ALT_INV_memROM~58_combout\,
	datad => \ROM|ALT_INV_memROM~45_combout\,
	datae => \ROM|ALT_INV_memROM~153_combout\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \RAM|ram~749_combout\);

-- Location: MLABCELL_X42_Y8_N51
\RAM|ram~750\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~750_combout\ = ( \RAM|process_0~0_combout\ & ( \RAM|ram~749_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM|ALT_INV_ram~749_combout\,
	dataf => \RAM|ALT_INV_process_0~0_combout\,
	combout => \RAM|ram~750_combout\);

-- Location: FF_X42_Y6_N34
\RAM|ram~242\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(3),
	sload => VCC,
	ena => \RAM|ram~750_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~242_q\);

-- Location: MLABCELL_X37_Y5_N18
\RAM|ram~793\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~793_combout\ = ( !\ROM|memROM~153_combout\ & ( !\ROM|memROM~45_combout\ & ( (!\ROM|memROM~76_combout\ & (\ROM|memROM~69_combout\ & (\ROM|memROM~58_combout\ & \ROM|memROM~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~76_combout\,
	datab => \ROM|ALT_INV_memROM~69_combout\,
	datac => \ROM|ALT_INV_memROM~58_combout\,
	datad => \ROM|ALT_INV_memROM~0_combout\,
	datae => \ROM|ALT_INV_memROM~153_combout\,
	dataf => \ROM|ALT_INV_memROM~45_combout\,
	combout => \RAM|ram~793_combout\);

-- Location: LABCELL_X40_Y8_N12
\RAM|ram~794\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~794_combout\ = ( \RAM|ram~793_combout\ & ( \RAM|process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \RAM|ALT_INV_ram~793_combout\,
	dataf => \RAM|ALT_INV_process_0~0_combout\,
	combout => \RAM|ram~794_combout\);

-- Location: FF_X40_Y8_N50
\RAM|ram~194\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(3),
	sload => VCC,
	ena => \RAM|ram~794_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~194_q\);

-- Location: LABCELL_X44_Y5_N45
\RAM|ram~809\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~809_combout\ = ( !\ROM|memROM~153_combout\ & ( \ROM|memROM~58_combout\ & ( (\ROM|memROM~76_combout\ & (!\ROM|memROM~45_combout\ & (\ROM|memROM~69_combout\ & \ROM|memROM~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~76_combout\,
	datab => \ROM|ALT_INV_memROM~45_combout\,
	datac => \ROM|ALT_INV_memROM~69_combout\,
	datad => \ROM|ALT_INV_memROM~0_combout\,
	datae => \ROM|ALT_INV_memROM~153_combout\,
	dataf => \ROM|ALT_INV_memROM~58_combout\,
	combout => \RAM|ram~809_combout\);

-- Location: LABCELL_X44_Y5_N21
\RAM|ram~810\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~810_combout\ = ( \RAM|ram~809_combout\ & ( \RAM|process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \RAM|ALT_INV_ram~809_combout\,
	dataf => \RAM|ALT_INV_process_0~0_combout\,
	combout => \RAM|ram~810_combout\);

-- Location: FF_X43_Y3_N56
\RAM|ram~258\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(3),
	sload => VCC,
	ena => \RAM|ram~810_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~258_q\);

-- Location: LABCELL_X43_Y3_N54
\RAM|ram~560\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~560_combout\ = ( \RAM|ram~258_q\ & ( \ROM|memROM~76_combout\ & ( (\ROM|memROM~58_combout\) # (\RAM|ram~242_q\) ) ) ) # ( !\RAM|ram~258_q\ & ( \ROM|memROM~76_combout\ & ( (\RAM|ram~242_q\ & !\ROM|memROM~58_combout\) ) ) ) # ( \RAM|ram~258_q\ & ( 
-- !\ROM|memROM~76_combout\ & ( (!\ROM|memROM~58_combout\ & (\RAM|ram~178_q\)) # (\ROM|memROM~58_combout\ & ((\RAM|ram~194_q\))) ) ) ) # ( !\RAM|ram~258_q\ & ( !\ROM|memROM~76_combout\ & ( (!\ROM|memROM~58_combout\ & (\RAM|ram~178_q\)) # 
-- (\ROM|memROM~58_combout\ & ((\RAM|ram~194_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111010101010000111100110011000000000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~178_q\,
	datab => \RAM|ALT_INV_ram~242_q\,
	datac => \RAM|ALT_INV_ram~194_q\,
	datad => \ROM|ALT_INV_memROM~58_combout\,
	datae => \RAM|ALT_INV_ram~258_q\,
	dataf => \ROM|ALT_INV_memROM~76_combout\,
	combout => \RAM|ram~560_combout\);

-- Location: LABCELL_X43_Y4_N33
\RAM|ram~745\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~745_combout\ = ( !\ROM|memROM~45_combout\ & ( \ROM|memROM~0_combout\ & ( (!\ROM|memROM~69_combout\ & (\ROM|memROM~153_combout\ & (\ROM|memROM~76_combout\ & !\ROM|memROM~58_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000010000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~69_combout\,
	datab => \ROM|ALT_INV_memROM~153_combout\,
	datac => \ROM|ALT_INV_memROM~76_combout\,
	datad => \ROM|ALT_INV_memROM~58_combout\,
	datae => \ROM|ALT_INV_memROM~45_combout\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \RAM|ram~745_combout\);

-- Location: MLABCELL_X37_Y4_N6
\RAM|ram~746\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~746_combout\ = ( \RAM|process_0~0_combout\ & ( \RAM|ram~745_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM|ALT_INV_ram~745_combout\,
	dataf => \RAM|ALT_INV_process_0~0_combout\,
	combout => \RAM|ram~746_combout\);

-- Location: FF_X37_Y5_N50
\RAM|ram~122\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(3),
	sload => VCC,
	ena => \RAM|ram~746_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~122_q\);

-- Location: LABCELL_X43_Y5_N42
\RAM|ram~729\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~729_combout\ = ( \ROM|memROM~0_combout\ & ( !\ROM|memROM~76_combout\ & ( (!\ROM|memROM~58_combout\ & (!\ROM|memROM~69_combout\ & (!\ROM|memROM~45_combout\ & \ROM|memROM~153_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~58_combout\,
	datab => \ROM|ALT_INV_memROM~69_combout\,
	datac => \ROM|ALT_INV_memROM~45_combout\,
	datad => \ROM|ALT_INV_memROM~153_combout\,
	datae => \ROM|ALT_INV_memROM~0_combout\,
	dataf => \ROM|ALT_INV_memROM~76_combout\,
	combout => \RAM|ram~729_combout\);

-- Location: LABCELL_X41_Y5_N9
\RAM|ram~730\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~730_combout\ = ( \RAM|ram~729_combout\ & ( \RAM|process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM|ALT_INV_process_0~0_combout\,
	dataf => \RAM|ALT_INV_ram~729_combout\,
	combout => \RAM|ram~730_combout\);

-- Location: FF_X41_Y5_N10
\RAM|ram~58\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(3),
	sload => VCC,
	ena => \RAM|ram~730_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~58_q\);

-- Location: LABCELL_X41_Y5_N42
\RAM|ram~797\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~797_combout\ = ( !\ROM|memROM~45_combout\ & ( \ROM|memROM~0_combout\ & ( (\ROM|memROM~58_combout\ & (!\ROM|memROM~69_combout\ & (\ROM|memROM~153_combout\ & !\ROM|memROM~76_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000100000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~58_combout\,
	datab => \ROM|ALT_INV_memROM~69_combout\,
	datac => \ROM|ALT_INV_memROM~153_combout\,
	datad => \ROM|ALT_INV_memROM~76_combout\,
	datae => \ROM|ALT_INV_memROM~45_combout\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \RAM|ram~797_combout\);

-- Location: LABCELL_X41_Y5_N6
\RAM|ram~798\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~798_combout\ = ( \RAM|ram~797_combout\ & ( \RAM|process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RAM|ALT_INV_process_0~0_combout\,
	dataf => \RAM|ALT_INV_ram~797_combout\,
	combout => \RAM|ram~798_combout\);

-- Location: FF_X41_Y5_N19
\RAM|ram~74\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(3),
	sload => VCC,
	ena => \RAM|ram~798_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~74_q\);

-- Location: LABCELL_X44_Y5_N54
\RAM|ram~813\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~813_combout\ = ( !\ROM|memROM~45_combout\ & ( \ROM|memROM~0_combout\ & ( (\ROM|memROM~58_combout\ & (!\ROM|memROM~69_combout\ & (\ROM|memROM~76_combout\ & \ROM|memROM~153_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~58_combout\,
	datab => \ROM|ALT_INV_memROM~69_combout\,
	datac => \ROM|ALT_INV_memROM~76_combout\,
	datad => \ROM|ALT_INV_memROM~153_combout\,
	datae => \ROM|ALT_INV_memROM~45_combout\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \RAM|ram~813_combout\);

-- Location: LABCELL_X44_Y5_N0
\RAM|ram~814\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~814_combout\ = ( \RAM|ram~813_combout\ & ( \RAM|process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \RAM|ALT_INV_ram~813_combout\,
	dataf => \RAM|ALT_INV_process_0~0_combout\,
	combout => \RAM|ram~814_combout\);

-- Location: FF_X37_Y5_N38
\RAM|ram~138\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(3),
	sload => VCC,
	ena => \RAM|ram~814_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~138_q\);

-- Location: MLABCELL_X37_Y5_N36
\RAM|ram~559\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~559_combout\ = ( \RAM|ram~138_q\ & ( \ROM|memROM~76_combout\ & ( (\ROM|memROM~58_combout\) # (\RAM|ram~122_q\) ) ) ) # ( !\RAM|ram~138_q\ & ( \ROM|memROM~76_combout\ & ( (\RAM|ram~122_q\ & !\ROM|memROM~58_combout\) ) ) ) # ( \RAM|ram~138_q\ & ( 
-- !\ROM|memROM~76_combout\ & ( (!\ROM|memROM~58_combout\ & (\RAM|ram~58_q\)) # (\ROM|memROM~58_combout\ & ((\RAM|ram~74_q\))) ) ) ) # ( !\RAM|ram~138_q\ & ( !\ROM|memROM~76_combout\ & ( (!\ROM|memROM~58_combout\ & (\RAM|ram~58_q\)) # 
-- (\ROM|memROM~58_combout\ & ((\RAM|ram~74_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111001100000011111101010000010100000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~122_q\,
	datab => \RAM|ALT_INV_ram~58_q\,
	datac => \ROM|ALT_INV_memROM~58_combout\,
	datad => \RAM|ALT_INV_ram~74_q\,
	datae => \RAM|ALT_INV_ram~138_q\,
	dataf => \ROM|ALT_INV_memROM~76_combout\,
	combout => \RAM|ram~559_combout\);

-- Location: LABCELL_X40_Y2_N48
\RAM|ram~801\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~801_combout\ = ( \ROM|memROM~58_combout\ & ( !\ROM|memROM~45_combout\ & ( (\ROM|memROM~0_combout\ & (\ROM|memROM~69_combout\ & (\ROM|memROM~153_combout\ & !\ROM|memROM~76_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \ROM|ALT_INV_memROM~69_combout\,
	datac => \ROM|ALT_INV_memROM~153_combout\,
	datad => \ROM|ALT_INV_memROM~76_combout\,
	datae => \ROM|ALT_INV_memROM~58_combout\,
	dataf => \ROM|ALT_INV_memROM~45_combout\,
	combout => \RAM|ram~801_combout\);

-- Location: LABCELL_X40_Y2_N27
\RAM|ram~802\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~802_combout\ = ( \RAM|process_0~0_combout\ & ( \RAM|ram~801_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \RAM|ALT_INV_process_0~0_combout\,
	dataf => \RAM|ALT_INV_ram~801_combout\,
	combout => \RAM|ram~802_combout\);

-- Location: FF_X40_Y2_N29
\RAM|ram~202\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(3),
	sload => VCC,
	ena => \RAM|ram~802_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~202_q\);

-- Location: LABCELL_X36_Y2_N54
\RAM|ram~753\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~753_combout\ = ( \ROM|memROM~153_combout\ & ( !\ROM|memROM~58_combout\ & ( (\ROM|memROM~0_combout\ & (!\ROM|memROM~45_combout\ & (\ROM|memROM~76_combout\ & \ROM|memROM~69_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \ROM|ALT_INV_memROM~45_combout\,
	datac => \ROM|ALT_INV_memROM~76_combout\,
	datad => \ROM|ALT_INV_memROM~69_combout\,
	datae => \ROM|ALT_INV_memROM~153_combout\,
	dataf => \ROM|ALT_INV_memROM~58_combout\,
	combout => \RAM|ram~753_combout\);

-- Location: MLABCELL_X37_Y2_N54
\RAM|ram~754\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~754_combout\ = ( \RAM|process_0~0_combout\ & ( \RAM|ram~753_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \RAM|ALT_INV_process_0~0_combout\,
	dataf => \RAM|ALT_INV_ram~753_combout\,
	combout => \RAM|ram~754_combout\);

-- Location: FF_X37_Y2_N58
\RAM|ram~250\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(3),
	sload => VCC,
	ena => \RAM|ram~754_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~250_q\);

-- Location: MLABCELL_X34_Y5_N39
\RAM|ram~186feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~186feeder_combout\ = ( \CPU|REG_A|DOUT\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG_A|ALT_INV_DOUT\(3),
	combout => \RAM|ram~186feeder_combout\);

-- Location: MLABCELL_X34_Y6_N3
\RAM|ram~737\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~737_combout\ = ( \ROM|memROM~153_combout\ & ( \ROM|memROM~0_combout\ & ( (\ROM|memROM~69_combout\ & (!\ROM|memROM~45_combout\ & (!\ROM|memROM~58_combout\ & !\ROM|memROM~76_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~69_combout\,
	datab => \ROM|ALT_INV_memROM~45_combout\,
	datac => \ROM|ALT_INV_memROM~58_combout\,
	datad => \ROM|ALT_INV_memROM~76_combout\,
	datae => \ROM|ALT_INV_memROM~153_combout\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \RAM|ram~737_combout\);

-- Location: MLABCELL_X34_Y5_N57
\RAM|ram~738\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~738_combout\ = ( \RAM|ram~737_combout\ & ( \RAM|process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \RAM|ALT_INV_ram~737_combout\,
	dataf => \RAM|ALT_INV_process_0~0_combout\,
	combout => \RAM|ram~738_combout\);

-- Location: FF_X34_Y5_N41
\RAM|ram~186\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~186feeder_combout\,
	ena => \RAM|ram~738_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~186_q\);

-- Location: LABCELL_X35_Y4_N36
\RAM|ram~817\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~817_combout\ = ( \ROM|memROM~0_combout\ & ( \ROM|memROM~69_combout\ & ( (!\ROM|memROM~45_combout\ & (\ROM|memROM~58_combout\ & (\ROM|memROM~76_combout\ & \ROM|memROM~153_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~45_combout\,
	datab => \ROM|ALT_INV_memROM~58_combout\,
	datac => \ROM|ALT_INV_memROM~76_combout\,
	datad => \ROM|ALT_INV_memROM~153_combout\,
	datae => \ROM|ALT_INV_memROM~0_combout\,
	dataf => \ROM|ALT_INV_memROM~69_combout\,
	combout => \RAM|ram~817_combout\);

-- Location: LABCELL_X36_Y4_N21
\RAM|ram~818\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~818_combout\ = ( \RAM|ram~817_combout\ & ( \RAM|process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM|ALT_INV_process_0~0_combout\,
	dataf => \RAM|ALT_INV_ram~817_combout\,
	combout => \RAM|ram~818_combout\);

-- Location: FF_X43_Y3_N2
\RAM|ram~266\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(3),
	sload => VCC,
	ena => \RAM|ram~818_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~266_q\);

-- Location: LABCELL_X43_Y3_N0
\RAM|ram~561\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~561_combout\ = ( \RAM|ram~266_q\ & ( \ROM|memROM~76_combout\ & ( (\ROM|memROM~58_combout\) # (\RAM|ram~250_q\) ) ) ) # ( !\RAM|ram~266_q\ & ( \ROM|memROM~76_combout\ & ( (\RAM|ram~250_q\ & !\ROM|memROM~58_combout\) ) ) ) # ( \RAM|ram~266_q\ & ( 
-- !\ROM|memROM~76_combout\ & ( (!\ROM|memROM~58_combout\ & ((\RAM|ram~186_q\))) # (\ROM|memROM~58_combout\ & (\RAM|ram~202_q\)) ) ) ) # ( !\RAM|ram~266_q\ & ( !\ROM|memROM~76_combout\ & ( (!\ROM|memROM~58_combout\ & ((\RAM|ram~186_q\))) # 
-- (\ROM|memROM~58_combout\ & (\RAM|ram~202_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000011110101010100110011000000000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~202_q\,
	datab => \RAM|ALT_INV_ram~250_q\,
	datac => \RAM|ALT_INV_ram~186_q\,
	datad => \ROM|ALT_INV_memROM~58_combout\,
	datae => \RAM|ALT_INV_ram~266_q\,
	dataf => \ROM|ALT_INV_memROM~76_combout\,
	combout => \RAM|ram~561_combout\);

-- Location: LABCELL_X41_Y2_N0
\RAM|ram~789\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~789_combout\ = ( !\ROM|memROM~153_combout\ & ( !\ROM|memROM~45_combout\ & ( (\ROM|memROM~58_combout\ & (!\ROM|memROM~76_combout\ & (!\ROM|memROM~69_combout\ & \ROM|memROM~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~58_combout\,
	datab => \ROM|ALT_INV_memROM~76_combout\,
	datac => \ROM|ALT_INV_memROM~69_combout\,
	datad => \ROM|ALT_INV_memROM~0_combout\,
	datae => \ROM|ALT_INV_memROM~153_combout\,
	dataf => \ROM|ALT_INV_memROM~45_combout\,
	combout => \RAM|ram~789_combout\);

-- Location: LABCELL_X41_Y2_N51
\RAM|ram~790\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~790_combout\ = ( \RAM|ram~789_combout\ & ( \RAM|process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \RAM|ALT_INV_ram~789_combout\,
	dataf => \RAM|ALT_INV_process_0~0_combout\,
	combout => \RAM|ram~790_combout\);

-- Location: FF_X41_Y2_N40
\RAM|ram~66\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(3),
	sload => VCC,
	ena => \RAM|ram~790_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~66_q\);

-- Location: MLABCELL_X42_Y2_N51
\RAM|ram~805\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~805_combout\ = ( !\ROM|memROM~153_combout\ & ( \ROM|memROM~0_combout\ & ( (\ROM|memROM~76_combout\ & (!\ROM|memROM~69_combout\ & (\ROM|memROM~58_combout\ & !\ROM|memROM~45_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000100000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~76_combout\,
	datab => \ROM|ALT_INV_memROM~69_combout\,
	datac => \ROM|ALT_INV_memROM~58_combout\,
	datad => \ROM|ALT_INV_memROM~45_combout\,
	datae => \ROM|ALT_INV_memROM~153_combout\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \RAM|ram~805_combout\);

-- Location: MLABCELL_X42_Y2_N39
\RAM|ram~806\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~806_combout\ = ( \RAM|process_0~0_combout\ & ( \RAM|ram~805_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RAM|ALT_INV_ram~805_combout\,
	dataf => \RAM|ALT_INV_process_0~0_combout\,
	combout => \RAM|ram~806_combout\);

-- Location: FF_X37_Y5_N19
\RAM|ram~130\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(3),
	sload => VCC,
	ena => \RAM|ram~806_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~130_q\);

-- Location: LABCELL_X39_Y2_N9
\RAM|ram~725\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~725_combout\ = ( !\ROM|memROM~76_combout\ & ( \ROM|memROM~0_combout\ & ( (!\ROM|memROM~69_combout\ & (!\ROM|memROM~153_combout\ & (!\ROM|memROM~58_combout\ & !\ROM|memROM~45_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~69_combout\,
	datab => \ROM|ALT_INV_memROM~153_combout\,
	datac => \ROM|ALT_INV_memROM~58_combout\,
	datad => \ROM|ALT_INV_memROM~45_combout\,
	datae => \ROM|ALT_INV_memROM~76_combout\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \RAM|ram~725_combout\);

-- Location: LABCELL_X39_Y2_N51
\RAM|ram~726\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~726_combout\ = ( \RAM|process_0~0_combout\ & ( \RAM|ram~725_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \RAM|ALT_INV_process_0~0_combout\,
	dataf => \RAM|ALT_INV_ram~725_combout\,
	combout => \RAM|ram~726_combout\);

-- Location: FF_X39_Y2_N55
\RAM|ram~50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(3),
	sload => VCC,
	ena => \RAM|ram~726_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~50_q\);

-- Location: MLABCELL_X42_Y2_N54
\RAM|ram~741\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~741_combout\ = ( !\ROM|memROM~69_combout\ & ( !\ROM|memROM~45_combout\ & ( (\ROM|memROM~76_combout\ & (!\ROM|memROM~58_combout\ & (!\ROM|memROM~153_combout\ & \ROM|memROM~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~76_combout\,
	datab => \ROM|ALT_INV_memROM~58_combout\,
	datac => \ROM|ALT_INV_memROM~153_combout\,
	datad => \ROM|ALT_INV_memROM~0_combout\,
	datae => \ROM|ALT_INV_memROM~69_combout\,
	dataf => \ROM|ALT_INV_memROM~45_combout\,
	combout => \RAM|ram~741_combout\);

-- Location: MLABCELL_X42_Y2_N12
\RAM|ram~742\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~742_combout\ = ( \RAM|process_0~0_combout\ & ( \RAM|ram~741_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM|ALT_INV_ram~741_combout\,
	dataf => \RAM|ALT_INV_process_0~0_combout\,
	combout => \RAM|ram~742_combout\);

-- Location: FF_X37_Y2_N34
\RAM|ram~114\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(3),
	sload => VCC,
	ena => \RAM|ram~742_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~114_q\);

-- Location: MLABCELL_X42_Y5_N33
\RAM|ram~558\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~558_combout\ = ( \RAM|ram~114_q\ & ( \ROM|memROM~76_combout\ & ( (!\ROM|memROM~58_combout\) # (\RAM|ram~130_q\) ) ) ) # ( !\RAM|ram~114_q\ & ( \ROM|memROM~76_combout\ & ( (\RAM|ram~130_q\ & \ROM|memROM~58_combout\) ) ) ) # ( \RAM|ram~114_q\ & ( 
-- !\ROM|memROM~76_combout\ & ( (!\ROM|memROM~58_combout\ & ((\RAM|ram~50_q\))) # (\ROM|memROM~58_combout\ & (\RAM|ram~66_q\)) ) ) ) # ( !\RAM|ram~114_q\ & ( !\ROM|memROM~76_combout\ & ( (!\ROM|memROM~58_combout\ & ((\RAM|ram~50_q\))) # 
-- (\ROM|memROM~58_combout\ & (\RAM|ram~66_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000011110101010100000000001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~66_q\,
	datab => \RAM|ALT_INV_ram~130_q\,
	datac => \RAM|ALT_INV_ram~50_q\,
	datad => \ROM|ALT_INV_memROM~58_combout\,
	datae => \RAM|ALT_INV_ram~114_q\,
	dataf => \ROM|ALT_INV_memROM~76_combout\,
	combout => \RAM|ram~558_combout\);

-- Location: LABCELL_X43_Y3_N42
\RAM|ram~562\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~562_combout\ = ( \RAM|ram~561_combout\ & ( \RAM|ram~558_combout\ & ( (!\ROM|memROM~153_combout\ & (((!\ROM|memROM~69_combout\)) # (\RAM|ram~560_combout\))) # (\ROM|memROM~153_combout\ & (((\ROM|memROM~69_combout\) # (\RAM|ram~559_combout\)))) ) ) 
-- ) # ( !\RAM|ram~561_combout\ & ( \RAM|ram~558_combout\ & ( (!\ROM|memROM~153_combout\ & (((!\ROM|memROM~69_combout\)) # (\RAM|ram~560_combout\))) # (\ROM|memROM~153_combout\ & (((\RAM|ram~559_combout\ & !\ROM|memROM~69_combout\)))) ) ) ) # ( 
-- \RAM|ram~561_combout\ & ( !\RAM|ram~558_combout\ & ( (!\ROM|memROM~153_combout\ & (\RAM|ram~560_combout\ & ((\ROM|memROM~69_combout\)))) # (\ROM|memROM~153_combout\ & (((\ROM|memROM~69_combout\) # (\RAM|ram~559_combout\)))) ) ) ) # ( 
-- !\RAM|ram~561_combout\ & ( !\RAM|ram~558_combout\ & ( (!\ROM|memROM~153_combout\ & (\RAM|ram~560_combout\ & ((\ROM|memROM~69_combout\)))) # (\ROM|memROM~153_combout\ & (((\RAM|ram~559_combout\ & !\ROM|memROM~69_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101000100000000110111011111001111010001001100111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~560_combout\,
	datab => \ROM|ALT_INV_memROM~153_combout\,
	datac => \RAM|ALT_INV_ram~559_combout\,
	datad => \ROM|ALT_INV_memROM~69_combout\,
	datae => \RAM|ALT_INV_ram~561_combout\,
	dataf => \RAM|ALT_INV_ram~558_combout\,
	combout => \RAM|ram~562_combout\);

-- Location: LABCELL_X43_Y3_N30
\RAM|ram~568\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~568_combout\ = ( \RAM|ram~557_combout\ & ( \RAM|ram~562_combout\ & ( (!\ROM|memROM~45_combout\ & (((\ROM|memROM~0_combout\) # (\RAM|ram~552_combout\)))) # (\ROM|memROM~45_combout\ & (((!\ROM|memROM~0_combout\)) # (\RAM|ram~567_combout\))) ) ) ) # 
-- ( !\RAM|ram~557_combout\ & ( \RAM|ram~562_combout\ & ( (!\ROM|memROM~45_combout\ & (((\ROM|memROM~0_combout\) # (\RAM|ram~552_combout\)))) # (\ROM|memROM~45_combout\ & (\RAM|ram~567_combout\ & ((\ROM|memROM~0_combout\)))) ) ) ) # ( \RAM|ram~557_combout\ & 
-- ( !\RAM|ram~562_combout\ & ( (!\ROM|memROM~45_combout\ & (((\RAM|ram~552_combout\ & !\ROM|memROM~0_combout\)))) # (\ROM|memROM~45_combout\ & (((!\ROM|memROM~0_combout\)) # (\RAM|ram~567_combout\))) ) ) ) # ( !\RAM|ram~557_combout\ & ( 
-- !\RAM|ram~562_combout\ & ( (!\ROM|memROM~45_combout\ & (((\RAM|ram~552_combout\ & !\ROM|memROM~0_combout\)))) # (\ROM|memROM~45_combout\ & (\RAM|ram~567_combout\ & ((\ROM|memROM~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000010001010111110001000100001010101110110101111110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~45_combout\,
	datab => \RAM|ALT_INV_ram~567_combout\,
	datac => \RAM|ALT_INV_ram~552_combout\,
	datad => \ROM|ALT_INV_memROM~0_combout\,
	datae => \RAM|ALT_INV_ram~557_combout\,
	dataf => \RAM|ALT_INV_ram~562_combout\,
	combout => \RAM|ram~568_combout\);

-- Location: MLABCELL_X42_Y3_N6
\CPU|MUX1|saida_MUX[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[3]~0_combout\ = ( \RAM|ram~568_combout\ & ( (!\ENABLE_SWR~2_combout\) # (\SW[3]~input_o\) ) ) # ( !\RAM|ram~568_combout\ & ( (\SW[3]~input_o\ & \ENABLE_SWR~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SW[3]~input_o\,
	datad => \ALT_INV_ENABLE_SWR~2_combout\,
	dataf => \RAM|ALT_INV_ram~568_combout\,
	combout => \CPU|MUX1|saida_MUX[3]~0_combout\);

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

-- Location: LABCELL_X40_Y3_N9
\CPU|DECODER|SEL_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER|SEL_MUX~0_combout\ = ( !\ROM|memROM~8_combout\ & ( (!\ROM|memROM~4_combout\ & (\ROM|memROM~77_combout\ & \ROM|memROM~78_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000000000000101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~4_combout\,
	datac => \ROM|ALT_INV_memROM~77_combout\,
	datad => \ROM|ALT_INV_memROM~78_combout\,
	dataf => \ROM|ALT_INV_memROM~8_combout\,
	combout => \CPU|DECODER|SEL_MUX~0_combout\);

-- Location: LABCELL_X40_Y4_N48
\CPU|DECODER|ENABLE_READ~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER|ENABLE_READ~0_combout\ = ( \ROM|memROM~8_combout\ & ( (\ROM|memROM~77_combout\ & !\ROM|memROM~78_combout\) ) ) # ( !\ROM|memROM~8_combout\ & ( (!\ROM|memROM~78_combout\ & (!\ROM|memROM~77_combout\ $ (\ROM|memROM~4_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010010100000000101001010000000001010101000000000101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~77_combout\,
	datac => \ROM|ALT_INV_memROM~4_combout\,
	datad => \ROM|ALT_INV_memROM~78_combout\,
	dataf => \ROM|ALT_INV_memROM~8_combout\,
	combout => \CPU|DECODER|ENABLE_READ~0_combout\);

-- Location: LABCELL_X40_Y4_N51
\READ_BUS[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \READ_BUS[0]~0_combout\ = ( \CPU|DECODER|ENABLE_READ~0_combout\ & ( (!\ROM|memROM~24_combout\ & (!\ROM|memROM~38_combout\ & !\ROM|memROM~28_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011000000000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~24_combout\,
	datac => \ROM|ALT_INV_memROM~38_combout\,
	datad => \ROM|ALT_INV_memROM~28_combout\,
	dataf => \CPU|DECODER|ALT_INV_ENABLE_READ~0_combout\,
	combout => \READ_BUS[0]~0_combout\);

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

-- Location: LABCELL_X14_Y2_N42
\detectorSub1|saidaQ~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \detectorSub1|saidaQ~0_combout\ = ( !\KEY[1]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_KEY[1]~input_o\,
	combout => \detectorSub1|saidaQ~0_combout\);

-- Location: FF_X14_Y2_N44
\detectorSub1|saidaQ\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \detectorSub1|saidaQ~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \detectorSub1|saidaQ~q\);

-- Location: LABCELL_X14_Y2_N33
\detectorSub1|saida\ : cyclonev_lcell_comb
-- Equation(s):
-- \detectorSub1|saida~combout\ = LCELL(( !\KEY[1]~input_o\ & ( !\detectorSub1|saidaQ~q\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_KEY[1]~input_o\,
	dataf => \detectorSub1|ALT_INV_saidaQ~q\,
	combout => \detectorSub1|saida~combout\);

-- Location: LABCELL_X36_Y6_N48
\DEBOUNCER_KEY1|DOUT~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEBOUNCER_KEY1|DOUT~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \DEBOUNCER_KEY1|DOUT~feeder_combout\);

-- Location: LABCELL_X36_Y6_N21
\ADDR_510~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ADDR_510~0_combout\ = ( \ROM|memROM~0_combout\ & ( (\ROM|memROM~69_combout\ & (\ROM|memROM~76_combout\ & \ROM|memROM~38_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~69_combout\,
	datac => \ROM|ALT_INV_memROM~76_combout\,
	datad => \ROM|ALT_INV_memROM~38_combout\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \ADDR_510~0_combout\);

-- Location: LABCELL_X36_Y6_N0
\ADDR_510~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ADDR_510~1_combout\ = ( \ROM|memROM~28_combout\ & ( \ADDR_510~0_combout\ & ( (\ROM|memROM~45_combout\ & (!\ROM|memROM~153_combout\ & (\ROM|memROM~58_combout\ & \ROM|memROM~24_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~45_combout\,
	datab => \ROM|ALT_INV_memROM~153_combout\,
	datac => \ROM|ALT_INV_memROM~58_combout\,
	datad => \ROM|ALT_INV_memROM~24_combout\,
	datae => \ROM|ALT_INV_memROM~28_combout\,
	dataf => \ALT_INV_ADDR_510~0_combout\,
	combout => \ADDR_510~1_combout\);

-- Location: FF_X36_Y6_N49
\DEBOUNCER_KEY1|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub1|saida~combout\,
	d => \DEBOUNCER_KEY1|DOUT~feeder_combout\,
	clrn => \ALT_INV_ADDR_510~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DEBOUNCER_KEY1|DOUT~q\);

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

-- Location: LABCELL_X10_Y2_N42
\detectorSub0|saidaQ~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \detectorSub0|saidaQ~0_combout\ = ( !\KEY[0]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_KEY[0]~input_o\,
	combout => \detectorSub0|saidaQ~0_combout\);

-- Location: FF_X10_Y2_N44
\detectorSub0|saidaQ\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \detectorSub0|saidaQ~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \detectorSub0|saidaQ~q\);

-- Location: LABCELL_X10_Y2_N21
\detectorSub0|saida\ : cyclonev_lcell_comb
-- Equation(s):
-- \detectorSub0|saida~combout\ = LCELL(( !\KEY[0]~input_o\ & ( !\detectorSub0|saidaQ~q\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_KEY[0]~input_o\,
	dataf => \detectorSub0|ALT_INV_saidaQ~q\,
	combout => \detectorSub0|saida~combout\);

-- Location: LABCELL_X36_Y6_N33
\DEBOUNCER_KEY0|DOUT~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEBOUNCER_KEY0|DOUT~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \DEBOUNCER_KEY0|DOUT~feeder_combout\);

-- Location: LABCELL_X36_Y6_N54
\ADDR_511~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ADDR_511~0_combout\ = ( \ROM|memROM~28_combout\ & ( \ADDR_510~0_combout\ & ( (\ROM|memROM~58_combout\ & (\ROM|memROM~153_combout\ & (\ROM|memROM~45_combout\ & \ROM|memROM~24_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~58_combout\,
	datab => \ROM|ALT_INV_memROM~153_combout\,
	datac => \ROM|ALT_INV_memROM~45_combout\,
	datad => \ROM|ALT_INV_memROM~24_combout\,
	datae => \ROM|ALT_INV_memROM~28_combout\,
	dataf => \ALT_INV_ADDR_510~0_combout\,
	combout => \ADDR_511~0_combout\);

-- Location: FF_X36_Y6_N34
\DEBOUNCER_KEY0|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \DEBOUNCER_KEY0|DOUT~feeder_combout\,
	clrn => \ALT_INV_ADDR_511~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DEBOUNCER_KEY0|DOUT~q\);

-- Location: LABCELL_X39_Y4_N21
\READ_BUS[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \READ_BUS[0]~1_combout\ = ( \DEBOUNCER_KEY1|DOUT~q\ & ( \DEBOUNCER_KEY0|DOUT~q\ & ( (!\ROM|memROM~58_combout\) # ((!\ROM|memROM~153_combout\ & (\KEY[2]~input_o\)) # (\ROM|memROM~153_combout\ & ((\KEY[3]~input_o\)))) ) ) ) # ( !\DEBOUNCER_KEY1|DOUT~q\ & ( 
-- \DEBOUNCER_KEY0|DOUT~q\ & ( (!\ROM|memROM~153_combout\ & (((!\ROM|memROM~58_combout\)) # (\KEY[2]~input_o\))) # (\ROM|memROM~153_combout\ & (((\KEY[3]~input_o\ & \ROM|memROM~58_combout\)))) ) ) ) # ( \DEBOUNCER_KEY1|DOUT~q\ & ( !\DEBOUNCER_KEY0|DOUT~q\ & 
-- ( (!\ROM|memROM~153_combout\ & (\KEY[2]~input_o\ & ((\ROM|memROM~58_combout\)))) # (\ROM|memROM~153_combout\ & (((!\ROM|memROM~58_combout\) # (\KEY[3]~input_o\)))) ) ) ) # ( !\DEBOUNCER_KEY1|DOUT~q\ & ( !\DEBOUNCER_KEY0|DOUT~q\ & ( 
-- (\ROM|memROM~58_combout\ & ((!\ROM|memROM~153_combout\ & (\KEY[2]~input_o\)) # (\ROM|memROM~153_combout\ & ((\KEY[3]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010011000011110101001111110000010100111111111101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[2]~input_o\,
	datab => \ALT_INV_KEY[3]~input_o\,
	datac => \ROM|ALT_INV_memROM~153_combout\,
	datad => \ROM|ALT_INV_memROM~58_combout\,
	datae => \DEBOUNCER_KEY1|ALT_INV_DOUT~q\,
	dataf => \DEBOUNCER_KEY0|ALT_INV_DOUT~q\,
	combout => \READ_BUS[0]~1_combout\);

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

-- Location: LABCELL_X40_Y4_N57
\READ_BUS[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \READ_BUS[0]~2_combout\ = ( \ROM|memROM~58_combout\ & ( (\SW[9]~input_o\ & !\ROM|memROM~153_combout\) ) ) # ( !\ROM|memROM~58_combout\ & ( (\SW[8]~input_o\ & \ROM|memROM~153_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100110011000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[9]~input_o\,
	datac => \ALT_INV_SW[8]~input_o\,
	datad => \ROM|ALT_INV_memROM~153_combout\,
	dataf => \ROM|ALT_INV_memROM~58_combout\,
	combout => \READ_BUS[0]~2_combout\);

-- Location: LABCELL_X40_Y4_N12
\READ_BUS[0]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \READ_BUS[0]~4_combout\ = ( !\ROM|memROM~45_combout\ & ( (((\READ_BUS[0]~2_combout\ & ((!\ROM|memROM~0_combout\))))) ) ) # ( \ROM|memROM~45_combout\ & ( (!\ROM|memROM~0_combout\ & ((((\READ_BUS[0]~1_combout\))))) # (\ROM|memROM~0_combout\ & 
-- (\FPGA_RESET_N~input_o\ & (!\ROM|memROM~153_combout\ & ((!\ROM|memROM~58_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111100001111000011110000111100000000000000000100010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_FPGA_RESET_N~input_o\,
	datab => \ROM|ALT_INV_memROM~153_combout\,
	datac => \ALT_INV_READ_BUS[0]~1_combout\,
	datad => \ROM|ALT_INV_memROM~58_combout\,
	datae => \ROM|ALT_INV_memROM~45_combout\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	datag => \ALT_INV_READ_BUS[0]~2_combout\,
	combout => \READ_BUS[0]~4_combout\);

-- Location: LABCELL_X40_Y4_N54
\ENABLE_SWR~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ENABLE_SWR~0_combout\ = ( \CPU|DECODER|ENABLE_READ~0_combout\ & ( (\ROM|memROM~24_combout\ & (\ROM|memROM~28_combout\ & !\ROM|memROM~38_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101000000000000010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~24_combout\,
	datac => \ROM|ALT_INV_memROM~28_combout\,
	datad => \ROM|ALT_INV_memROM~38_combout\,
	dataf => \CPU|DECODER|ALT_INV_ENABLE_READ~0_combout\,
	combout => \ENABLE_SWR~0_combout\);

-- Location: LABCELL_X41_Y3_N30
\CPU|ULA1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~1_sumout\ = SUM(( \CPU|REG_A|DOUT\(0) ) + ( (!\ROM|memROM~4_combout\ & ((!\CPU|DECODER|Equal5~0_combout\ & (\READ_BUS[0]~3_combout\)) # (\CPU|DECODER|Equal5~0_combout\ & ((\ROM|memROM~153_combout\))))) # (\ROM|memROM~4_combout\ & 
-- (\READ_BUS[0]~3_combout\)) ) + ( !VCC ))
-- \CPU|ULA1|Add0~2\ = CARRY(( \CPU|REG_A|DOUT\(0) ) + ( (!\ROM|memROM~4_combout\ & ((!\CPU|DECODER|Equal5~0_combout\ & (\READ_BUS[0]~3_combout\)) # (\CPU|DECODER|Equal5~0_combout\ & ((\ROM|memROM~153_combout\))))) # (\ROM|memROM~4_combout\ & 
-- (\READ_BUS[0]~3_combout\)) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101110001000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_READ_BUS[0]~3_combout\,
	datab => \ROM|ALT_INV_memROM~4_combout\,
	datac => \ROM|ALT_INV_memROM~153_combout\,
	datad => \CPU|REG_A|ALT_INV_DOUT\(0),
	dataf => \CPU|DECODER|ALT_INV_Equal5~0_combout\,
	cin => GND,
	sumout => \CPU|ULA1|Add0~1_sumout\,
	cout => \CPU|ULA1|Add0~2\);

-- Location: LABCELL_X40_Y3_N15
\CPU|DECODER|OP_ULA[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER|OP_ULA[1]~0_combout\ = ( !\ROM|memROM~8_combout\ & ( (\ROM|memROM~77_combout\ & (!\ROM|memROM~4_combout\ $ (!\ROM|memROM~78_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100100010000100010010001000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~4_combout\,
	datab => \ROM|ALT_INV_memROM~77_combout\,
	datad => \ROM|ALT_INV_memROM~78_combout\,
	dataf => \ROM|ALT_INV_memROM~8_combout\,
	combout => \CPU|DECODER|OP_ULA[1]~0_combout\);

-- Location: LABCELL_X41_Y3_N0
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

-- Location: LABCELL_X41_Y3_N3
\CPU|ULA1|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~1_sumout\ = SUM(( (!\ROM|memROM~4_combout\ & ((!\CPU|DECODER|Equal5~0_combout\ & ((!\READ_BUS[0]~3_combout\))) # (\CPU|DECODER|Equal5~0_combout\ & (!\ROM|memROM~153_combout\)))) # (\ROM|memROM~4_combout\ & (((!\READ_BUS[0]~3_combout\)))) ) 
-- + ( \CPU|REG_A|DOUT\(0) ) + ( \CPU|ULA1|Add1~34_cout\ ))
-- \CPU|ULA1|Add1~2\ = CARRY(( (!\ROM|memROM~4_combout\ & ((!\CPU|DECODER|Equal5~0_combout\ & ((!\READ_BUS[0]~3_combout\))) # (\CPU|DECODER|Equal5~0_combout\ & (!\ROM|memROM~153_combout\)))) # (\ROM|memROM~4_combout\ & (((!\READ_BUS[0]~3_combout\)))) ) + ( 
-- \CPU|REG_A|DOUT\(0) ) + ( \CPU|ULA1|Add1~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111000010111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~153_combout\,
	datab => \ROM|ALT_INV_memROM~4_combout\,
	datac => \ALT_INV_READ_BUS[0]~3_combout\,
	datad => \CPU|DECODER|ALT_INV_Equal5~0_combout\,
	dataf => \CPU|REG_A|ALT_INV_DOUT\(0),
	cin => \CPU|ULA1|Add1~34_cout\,
	sumout => \CPU|ULA1|Add1~1_sumout\,
	cout => \CPU|ULA1|Add1~2\);

-- Location: LABCELL_X41_Y4_N3
\CPU|ULA1|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[0]~0_combout\ = ( \CPU|ULA1|Add1~1_sumout\ & ( (!\CPU|DECODER|OP_ULA[1]~0_combout\) # ((!\CPU|DECODER|sinais_controle~0_combout\ & (\READ_BUS[0]~3_combout\)) # (\CPU|DECODER|sinais_controle~0_combout\ & ((\ROM|memROM~153_combout\)))) ) ) # 
-- ( !\CPU|ULA1|Add1~1_sumout\ & ( (\CPU|DECODER|OP_ULA[1]~0_combout\ & ((!\CPU|DECODER|sinais_controle~0_combout\ & (\READ_BUS[0]~3_combout\)) # (\CPU|DECODER|sinais_controle~0_combout\ & ((\ROM|memROM~153_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000111000000000100011111111111010001111111111101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_READ_BUS[0]~3_combout\,
	datab => \CPU|DECODER|ALT_INV_sinais_controle~0_combout\,
	datac => \ROM|ALT_INV_memROM~153_combout\,
	datad => \CPU|DECODER|ALT_INV_OP_ULA[1]~0_combout\,
	dataf => \CPU|ULA1|ALT_INV_Add1~1_sumout\,
	combout => \CPU|ULA1|saida[0]~0_combout\);

-- Location: LABCELL_X41_Y6_N33
\CPU|DECODER|OP_ULA[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER|OP_ULA[0]~1_combout\ = ( \CPU|DECODER|Equal9~0_combout\ & ( (!\ROM|memROM~8_combout\) # (\ROM|memROM~4_combout\) ) ) # ( !\CPU|DECODER|Equal9~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~4_combout\,
	datad => \ROM|ALT_INV_memROM~8_combout\,
	dataf => \CPU|DECODER|ALT_INV_Equal9~0_combout\,
	combout => \CPU|DECODER|OP_ULA[0]~1_combout\);

-- Location: LABCELL_X40_Y7_N21
\CPU|DECODER|HAB_A~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER|HAB_A~0_combout\ = ( \ROM|memROM~8_combout\ & ( \ROM|memROM~77_combout\ & ( !\ROM|memROM~78_combout\ ) ) ) # ( !\ROM|memROM~8_combout\ & ( \ROM|memROM~77_combout\ & ( !\ROM|memROM~4_combout\ $ (!\ROM|memROM~78_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001011010010110101111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~4_combout\,
	datac => \ROM|ALT_INV_memROM~78_combout\,
	datae => \ROM|ALT_INV_memROM~8_combout\,
	dataf => \ROM|ALT_INV_memROM~77_combout\,
	combout => \CPU|DECODER|HAB_A~0_combout\);

-- Location: FF_X41_Y3_N32
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
	sload => \CPU|DECODER|OP_ULA[0]~1_combout\,
	ena => \CPU|DECODER|HAB_A~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_A|DOUT\(0));

-- Location: LABCELL_X44_Y6_N24
\RAM|ram~151feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~151feeder_combout\ = ( \CPU|REG_A|DOUT\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG_A|ALT_INV_DOUT\(0),
	combout => \RAM|ram~151feeder_combout\);

-- Location: FF_X44_Y6_N26
\RAM|ram~151\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~151feeder_combout\,
	ena => \RAM|ram~706_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~151_q\);

-- Location: LABCELL_X40_Y8_N39
\RAM|ram~143feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~143feeder_combout\ = ( \CPU|REG_A|DOUT\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG_A|ALT_INV_DOUT\(0),
	combout => \RAM|ram~143feeder_combout\);

-- Location: FF_X40_Y8_N40
\RAM|ram~143\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~143feeder_combout\,
	ena => \RAM|ram~702_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~143_q\);

-- Location: FF_X39_Y6_N35
\RAM|ram~407\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(0),
	sload => VCC,
	ena => \RAM|ram~708_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~407_q\);

-- Location: FF_X39_Y6_N2
\RAM|ram~399\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(0),
	sload => VCC,
	ena => \RAM|ram~704_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~399_q\);

-- Location: LABCELL_X39_Y6_N0
\RAM|ram~528\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~528_combout\ = ( \RAM|ram~399_q\ & ( \ROM|memROM~45_combout\ & ( (!\ROM|memROM~153_combout\) # (\RAM|ram~407_q\) ) ) ) # ( !\RAM|ram~399_q\ & ( \ROM|memROM~45_combout\ & ( (\RAM|ram~407_q\ & \ROM|memROM~153_combout\) ) ) ) # ( \RAM|ram~399_q\ & ( 
-- !\ROM|memROM~45_combout\ & ( (!\ROM|memROM~153_combout\ & ((\RAM|ram~143_q\))) # (\ROM|memROM~153_combout\ & (\RAM|ram~151_q\)) ) ) ) # ( !\RAM|ram~399_q\ & ( !\ROM|memROM~45_combout\ & ( (!\ROM|memROM~153_combout\ & ((\RAM|ram~143_q\))) # 
-- (\ROM|memROM~153_combout\ & (\RAM|ram~151_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101010101001100110101010100000000000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~151_q\,
	datab => \RAM|ALT_INV_ram~143_q\,
	datac => \RAM|ALT_INV_ram~407_q\,
	datad => \ROM|ALT_INV_memROM~153_combout\,
	datae => \RAM|ALT_INV_ram~399_q\,
	dataf => \ROM|ALT_INV_memROM~45_combout\,
	combout => \RAM|ram~528_combout\);

-- Location: FF_X41_Y4_N20
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
	ena => \RAM|ram~694_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~15_q\);

-- Location: FF_X39_Y5_N55
\RAM|ram~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(0),
	sload => VCC,
	ena => \RAM|ram~698_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~23_q\);

-- Location: FF_X41_Y4_N38
\RAM|ram~279\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(0),
	sload => VCC,
	ena => \RAM|ram~700_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~279_q\);

-- Location: FF_X41_Y4_N44
\RAM|ram~271\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(0),
	sload => VCC,
	ena => \RAM|ram~696_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~271_q\);

-- Location: LABCELL_X41_Y4_N42
\RAM|ram~527\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~527_combout\ = ( \RAM|ram~271_q\ & ( \ROM|memROM~45_combout\ & ( (!\ROM|memROM~153_combout\) # (\RAM|ram~279_q\) ) ) ) # ( !\RAM|ram~271_q\ & ( \ROM|memROM~45_combout\ & ( (\RAM|ram~279_q\ & \ROM|memROM~153_combout\) ) ) ) # ( \RAM|ram~271_q\ & ( 
-- !\ROM|memROM~45_combout\ & ( (!\ROM|memROM~153_combout\ & (\RAM|ram~15_q\)) # (\ROM|memROM~153_combout\ & ((\RAM|ram~23_q\))) ) ) ) # ( !\RAM|ram~271_q\ & ( !\ROM|memROM~45_combout\ & ( (!\ROM|memROM~153_combout\ & (\RAM|ram~15_q\)) # 
-- (\ROM|memROM~153_combout\ & ((\RAM|ram~23_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110011010101010011001100000000000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~15_q\,
	datab => \RAM|ALT_INV_ram~23_q\,
	datac => \RAM|ALT_INV_ram~279_q\,
	datad => \ROM|ALT_INV_memROM~153_combout\,
	datae => \RAM|ALT_INV_ram~271_q\,
	dataf => \ROM|ALT_INV_memROM~45_combout\,
	combout => \RAM|ram~527_combout\);

-- Location: FF_X40_Y3_N35
\RAM|ram~207\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(0),
	sload => VCC,
	ena => \RAM|ram~718_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~207_q\);

-- Location: FF_X40_Y3_N59
\RAM|ram~463\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(0),
	sload => VCC,
	ena => \RAM|ram~720_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~463_q\);

-- Location: FF_X43_Y4_N26
\RAM|ram~215\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(0),
	sload => VCC,
	ena => \RAM|ram~722_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~215_q\);

-- Location: FF_X39_Y6_N56
\RAM|ram~471\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(0),
	sload => VCC,
	ena => \RAM|ram~724_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~471_q\);

-- Location: LABCELL_X39_Y6_N54
\RAM|ram~530\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~530_combout\ = ( \RAM|ram~471_q\ & ( \ROM|memROM~153_combout\ & ( (\ROM|memROM~45_combout\) # (\RAM|ram~215_q\) ) ) ) # ( !\RAM|ram~471_q\ & ( \ROM|memROM~153_combout\ & ( (\RAM|ram~215_q\ & !\ROM|memROM~45_combout\) ) ) ) # ( \RAM|ram~471_q\ & ( 
-- !\ROM|memROM~153_combout\ & ( (!\ROM|memROM~45_combout\ & (\RAM|ram~207_q\)) # (\ROM|memROM~45_combout\ & ((\RAM|ram~463_q\))) ) ) ) # ( !\RAM|ram~471_q\ & ( !\ROM|memROM~153_combout\ & ( (!\ROM|memROM~45_combout\ & (\RAM|ram~207_q\)) # 
-- (\ROM|memROM~45_combout\ & ((\RAM|ram~463_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110011010101010011001100001111000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~207_q\,
	datab => \RAM|ALT_INV_ram~463_q\,
	datac => \RAM|ALT_INV_ram~215_q\,
	datad => \ROM|ALT_INV_memROM~45_combout\,
	datae => \RAM|ALT_INV_ram~471_q\,
	dataf => \ROM|ALT_INV_memROM~153_combout\,
	combout => \RAM|ram~530_combout\);

-- Location: MLABCELL_X45_Y5_N42
\RAM|ram~87feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~87feeder_combout\ = ( \CPU|REG_A|DOUT\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG_A|ALT_INV_DOUT\(0),
	combout => \RAM|ram~87feeder_combout\);

-- Location: FF_X45_Y5_N43
\RAM|ram~87\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~87feeder_combout\,
	ena => \RAM|ram~714_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~87_q\);

-- Location: FF_X41_Y7_N49
\RAM|ram~335\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(0),
	sload => VCC,
	ena => \RAM|ram~712_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~335_q\);

-- Location: FF_X43_Y6_N4
\RAM|ram~79\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(0),
	sload => VCC,
	ena => \RAM|ram~710_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~79_q\);

-- Location: FF_X39_Y5_N2
\RAM|ram~343\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(0),
	sload => VCC,
	ena => \RAM|ram~716_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~343_q\);

-- Location: LABCELL_X39_Y5_N0
\RAM|ram~529\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~529_combout\ = ( \RAM|ram~343_q\ & ( \ROM|memROM~45_combout\ & ( (\ROM|memROM~153_combout\) # (\RAM|ram~335_q\) ) ) ) # ( !\RAM|ram~343_q\ & ( \ROM|memROM~45_combout\ & ( (\RAM|ram~335_q\ & !\ROM|memROM~153_combout\) ) ) ) # ( \RAM|ram~343_q\ & ( 
-- !\ROM|memROM~45_combout\ & ( (!\ROM|memROM~153_combout\ & ((\RAM|ram~79_q\))) # (\ROM|memROM~153_combout\ & (\RAM|ram~87_q\)) ) ) ) # ( !\RAM|ram~343_q\ & ( !\ROM|memROM~45_combout\ & ( (!\ROM|memROM~153_combout\ & ((\RAM|ram~79_q\))) # 
-- (\ROM|memROM~153_combout\ & (\RAM|ram~87_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000001011111010100110000001100000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~87_q\,
	datab => \RAM|ALT_INV_ram~335_q\,
	datac => \ROM|ALT_INV_memROM~153_combout\,
	datad => \RAM|ALT_INV_ram~79_q\,
	datae => \RAM|ALT_INV_ram~343_q\,
	dataf => \ROM|ALT_INV_memROM~45_combout\,
	combout => \RAM|ram~529_combout\);

-- Location: LABCELL_X40_Y4_N36
\RAM|ram~531\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~531_combout\ = ( \RAM|ram~530_combout\ & ( \RAM|ram~529_combout\ & ( ((!\ROM|memROM~69_combout\ & ((\RAM|ram~527_combout\))) # (\ROM|memROM~69_combout\ & (\RAM|ram~528_combout\))) # (\ROM|memROM~76_combout\) ) ) ) # ( !\RAM|ram~530_combout\ & ( 
-- \RAM|ram~529_combout\ & ( (!\ROM|memROM~69_combout\ & (((\RAM|ram~527_combout\)) # (\ROM|memROM~76_combout\))) # (\ROM|memROM~69_combout\ & (!\ROM|memROM~76_combout\ & (\RAM|ram~528_combout\))) ) ) ) # ( \RAM|ram~530_combout\ & ( !\RAM|ram~529_combout\ & 
-- ( (!\ROM|memROM~69_combout\ & (!\ROM|memROM~76_combout\ & ((\RAM|ram~527_combout\)))) # (\ROM|memROM~69_combout\ & (((\RAM|ram~528_combout\)) # (\ROM|memROM~76_combout\))) ) ) ) # ( !\RAM|ram~530_combout\ & ( !\RAM|ram~529_combout\ & ( 
-- (!\ROM|memROM~76_combout\ & ((!\ROM|memROM~69_combout\ & ((\RAM|ram~527_combout\))) # (\ROM|memROM~69_combout\ & (\RAM|ram~528_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100000101011001110100100110101011100011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~69_combout\,
	datab => \ROM|ALT_INV_memROM~76_combout\,
	datac => \RAM|ALT_INV_ram~528_combout\,
	datad => \RAM|ALT_INV_ram~527_combout\,
	datae => \RAM|ALT_INV_ram~530_combout\,
	dataf => \RAM|ALT_INV_ram~529_combout\,
	combout => \RAM|ram~531_combout\);

-- Location: FF_X39_Y7_N13
\RAM|ram~103\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(0),
	sload => VCC,
	ena => \RAM|ram~778_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~103_q\);

-- Location: FF_X39_Y7_N32
\RAM|ram~351\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(0),
	sload => VCC,
	ena => \RAM|ram~776_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~351_q\);

-- Location: FF_X41_Y7_N34
\RAM|ram~95\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(0),
	sload => VCC,
	ena => \RAM|ram~774_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~95_q\);

-- Location: FF_X39_Y7_N56
\RAM|ram~359\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(0),
	sload => VCC,
	ena => \RAM|ram~780_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~359_q\);

-- Location: LABCELL_X39_Y7_N54
\RAM|ram~539\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~539_combout\ = ( \RAM|ram~359_q\ & ( \ROM|memROM~153_combout\ & ( (\ROM|memROM~45_combout\) # (\RAM|ram~103_q\) ) ) ) # ( !\RAM|ram~359_q\ & ( \ROM|memROM~153_combout\ & ( (\RAM|ram~103_q\ & !\ROM|memROM~45_combout\) ) ) ) # ( \RAM|ram~359_q\ & ( 
-- !\ROM|memROM~153_combout\ & ( (!\ROM|memROM~45_combout\ & ((\RAM|ram~95_q\))) # (\ROM|memROM~45_combout\ & (\RAM|ram~351_q\)) ) ) ) # ( !\RAM|ram~359_q\ & ( !\ROM|memROM~153_combout\ & ( (!\ROM|memROM~45_combout\ & ((\RAM|ram~95_q\))) # 
-- (\ROM|memROM~45_combout\ & (\RAM|ram~351_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100110011000011110011001101010101000000000101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~103_q\,
	datab => \RAM|ALT_INV_ram~351_q\,
	datac => \RAM|ALT_INV_ram~95_q\,
	datad => \ROM|ALT_INV_memROM~45_combout\,
	datae => \RAM|ALT_INV_ram~359_q\,
	dataf => \ROM|ALT_INV_memROM~153_combout\,
	combout => \RAM|ram~539_combout\);

-- Location: LABCELL_X43_Y2_N51
\RAM|ram~231feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~231feeder_combout\ = ( \CPU|REG_A|DOUT\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG_A|ALT_INV_DOUT\(0),
	combout => \RAM|ram~231feeder_combout\);

-- Location: FF_X43_Y2_N52
\RAM|ram~231\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~231feeder_combout\,
	ena => \RAM|ram~786_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~231_q\);

-- Location: LABCELL_X39_Y4_N30
\RAM|ram~479feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~479feeder_combout\ = ( \CPU|REG_A|DOUT\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG_A|ALT_INV_DOUT\(0),
	combout => \RAM|ram~479feeder_combout\);

-- Location: FF_X39_Y4_N31
\RAM|ram~479\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~479feeder_combout\,
	ena => \RAM|ram~784_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~479_q\);

-- Location: FF_X34_Y4_N32
\RAM|ram~223\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(0),
	sload => VCC,
	ena => \RAM|ram~782_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~223_q\);

-- Location: FF_X34_Y4_N14
\RAM|ram~487\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(0),
	sload => VCC,
	ena => \RAM|ram~788_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~487_q\);

-- Location: MLABCELL_X34_Y4_N12
\RAM|ram~540\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~540_combout\ = ( \RAM|ram~487_q\ & ( \ROM|memROM~153_combout\ & ( (\ROM|memROM~45_combout\) # (\RAM|ram~231_q\) ) ) ) # ( !\RAM|ram~487_q\ & ( \ROM|memROM~153_combout\ & ( (\RAM|ram~231_q\ & !\ROM|memROM~45_combout\) ) ) ) # ( \RAM|ram~487_q\ & ( 
-- !\ROM|memROM~153_combout\ & ( (!\ROM|memROM~45_combout\ & ((\RAM|ram~223_q\))) # (\ROM|memROM~45_combout\ & (\RAM|ram~479_q\)) ) ) ) # ( !\RAM|ram~487_q\ & ( !\ROM|memROM~153_combout\ & ( (!\ROM|memROM~45_combout\ & ((\RAM|ram~223_q\))) # 
-- (\ROM|memROM~45_combout\ & (\RAM|ram~479_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011000000111111001101010000010100000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~231_q\,
	datab => \RAM|ALT_INV_ram~479_q\,
	datac => \ROM|ALT_INV_memROM~45_combout\,
	datad => \RAM|ALT_INV_ram~223_q\,
	datae => \RAM|ALT_INV_ram~487_q\,
	dataf => \ROM|ALT_INV_memROM~153_combout\,
	combout => \RAM|ram~540_combout\);

-- Location: FF_X42_Y7_N55
\RAM|ram~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(0),
	sload => VCC,
	ena => \RAM|ram~762_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~39_q\);

-- Location: FF_X39_Y3_N41
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
	ena => \RAM|ram~758_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~31_q\);

-- Location: FF_X35_Y5_N1
\RAM|ram~287\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(0),
	sload => VCC,
	ena => \RAM|ram~760_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~287_q\);

-- Location: FF_X39_Y3_N32
\RAM|ram~295\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(0),
	sload => VCC,
	ena => \RAM|ram~764_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~295_q\);

-- Location: LABCELL_X39_Y3_N30
\RAM|ram~537\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~537_combout\ = ( \RAM|ram~295_q\ & ( \ROM|memROM~45_combout\ & ( (\RAM|ram~287_q\) # (\ROM|memROM~153_combout\) ) ) ) # ( !\RAM|ram~295_q\ & ( \ROM|memROM~45_combout\ & ( (!\ROM|memROM~153_combout\ & \RAM|ram~287_q\) ) ) ) # ( \RAM|ram~295_q\ & ( 
-- !\ROM|memROM~45_combout\ & ( (!\ROM|memROM~153_combout\ & ((\RAM|ram~31_q\))) # (\ROM|memROM~153_combout\ & (\RAM|ram~39_q\)) ) ) ) # ( !\RAM|ram~295_q\ & ( !\ROM|memROM~45_combout\ & ( (!\ROM|memROM~153_combout\ & ((\RAM|ram~31_q\))) # 
-- (\ROM|memROM~153_combout\ & (\RAM|ram~39_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101001101010011010100000000111100000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~39_q\,
	datab => \RAM|ALT_INV_ram~31_q\,
	datac => \ROM|ALT_INV_memROM~153_combout\,
	datad => \RAM|ALT_INV_ram~287_q\,
	datae => \RAM|ALT_INV_ram~295_q\,
	dataf => \ROM|ALT_INV_memROM~45_combout\,
	combout => \RAM|ram~537_combout\);

-- Location: FF_X35_Y4_N1
\RAM|ram~159\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(0),
	sload => VCC,
	ena => \RAM|ram~766_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~159_q\);

-- Location: FF_X36_Y7_N16
\RAM|ram~415\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(0),
	sload => VCC,
	ena => \RAM|ram~768_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~415_q\);

-- Location: MLABCELL_X37_Y8_N48
\RAM|ram~167feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~167feeder_combout\ = ( \CPU|REG_A|DOUT\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG_A|ALT_INV_DOUT\(0),
	combout => \RAM|ram~167feeder_combout\);

-- Location: FF_X37_Y8_N49
\RAM|ram~167\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~167feeder_combout\,
	ena => \RAM|ram~770_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~167_q\);

-- Location: FF_X34_Y3_N20
\RAM|ram~423\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(0),
	sload => VCC,
	ena => \RAM|ram~772_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~423_q\);

-- Location: MLABCELL_X34_Y3_N18
\RAM|ram~538\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~538_combout\ = ( \RAM|ram~423_q\ & ( \ROM|memROM~45_combout\ & ( (\ROM|memROM~153_combout\) # (\RAM|ram~415_q\) ) ) ) # ( !\RAM|ram~423_q\ & ( \ROM|memROM~45_combout\ & ( (\RAM|ram~415_q\ & !\ROM|memROM~153_combout\) ) ) ) # ( \RAM|ram~423_q\ & ( 
-- !\ROM|memROM~45_combout\ & ( (!\ROM|memROM~153_combout\ & (\RAM|ram~159_q\)) # (\ROM|memROM~153_combout\ & ((\RAM|ram~167_q\))) ) ) ) # ( !\RAM|ram~423_q\ & ( !\ROM|memROM~45_combout\ & ( (!\ROM|memROM~153_combout\ & (\RAM|ram~159_q\)) # 
-- (\ROM|memROM~153_combout\ & ((\RAM|ram~167_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111010101010000111100110011000000000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~159_q\,
	datab => \RAM|ALT_INV_ram~415_q\,
	datac => \RAM|ALT_INV_ram~167_q\,
	datad => \ROM|ALT_INV_memROM~153_combout\,
	datae => \RAM|ALT_INV_ram~423_q\,
	dataf => \ROM|ALT_INV_memROM~45_combout\,
	combout => \RAM|ram~538_combout\);

-- Location: LABCELL_X40_Y4_N18
\RAM|ram~541\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~541_combout\ = ( \RAM|ram~537_combout\ & ( \RAM|ram~538_combout\ & ( (!\ROM|memROM~76_combout\) # ((!\ROM|memROM~69_combout\ & (\RAM|ram~539_combout\)) # (\ROM|memROM~69_combout\ & ((\RAM|ram~540_combout\)))) ) ) ) # ( !\RAM|ram~537_combout\ & ( 
-- \RAM|ram~538_combout\ & ( (!\ROM|memROM~69_combout\ & (\RAM|ram~539_combout\ & (\ROM|memROM~76_combout\))) # (\ROM|memROM~69_combout\ & (((!\ROM|memROM~76_combout\) # (\RAM|ram~540_combout\)))) ) ) ) # ( \RAM|ram~537_combout\ & ( !\RAM|ram~538_combout\ & 
-- ( (!\ROM|memROM~69_combout\ & (((!\ROM|memROM~76_combout\)) # (\RAM|ram~539_combout\))) # (\ROM|memROM~69_combout\ & (((\ROM|memROM~76_combout\ & \RAM|ram~540_combout\)))) ) ) ) # ( !\RAM|ram~537_combout\ & ( !\RAM|ram~538_combout\ & ( 
-- (\ROM|memROM~76_combout\ & ((!\ROM|memROM~69_combout\ & (\RAM|ram~539_combout\)) # (\ROM|memROM~69_combout\ & ((\RAM|ram~540_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000111101000101010011101010010010101111111001011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~69_combout\,
	datab => \RAM|ALT_INV_ram~539_combout\,
	datac => \ROM|ALT_INV_memROM~76_combout\,
	datad => \RAM|ALT_INV_ram~540_combout\,
	datae => \RAM|ALT_INV_ram~537_combout\,
	dataf => \RAM|ALT_INV_ram~538_combout\,
	combout => \RAM|ram~541_combout\);

-- Location: FF_X42_Y2_N10
\RAM|ram~127\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(0),
	sload => VCC,
	ena => \RAM|ram~806_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~127_q\);

-- Location: LABCELL_X44_Y5_N6
\RAM|ram~255feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~255feeder_combout\ = ( \CPU|REG_A|DOUT\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG_A|ALT_INV_DOUT\(0),
	combout => \RAM|ram~255feeder_combout\);

-- Location: FF_X44_Y5_N7
\RAM|ram~255\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~255feeder_combout\,
	ena => \RAM|ram~810_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~255_q\);

-- Location: FF_X42_Y2_N5
\RAM|ram~383\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(0),
	sload => VCC,
	ena => \RAM|ram~808_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~383_q\);

-- Location: FF_X39_Y4_N8
\RAM|ram~511\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(0),
	sload => VCC,
	ena => \RAM|ram~812_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~511_q\);

-- Location: LABCELL_X39_Y4_N6
\RAM|ram~544\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~544_combout\ = ( \RAM|ram~511_q\ & ( \ROM|memROM~69_combout\ & ( (\ROM|memROM~45_combout\) # (\RAM|ram~255_q\) ) ) ) # ( !\RAM|ram~511_q\ & ( \ROM|memROM~69_combout\ & ( (\RAM|ram~255_q\ & !\ROM|memROM~45_combout\) ) ) ) # ( \RAM|ram~511_q\ & ( 
-- !\ROM|memROM~69_combout\ & ( (!\ROM|memROM~45_combout\ & (\RAM|ram~127_q\)) # (\ROM|memROM~45_combout\ & ((\RAM|ram~383_q\))) ) ) ) # ( !\RAM|ram~511_q\ & ( !\ROM|memROM~69_combout\ & ( (!\ROM|memROM~45_combout\ & (\RAM|ram~127_q\)) # 
-- (\ROM|memROM~45_combout\ & ((\RAM|ram~383_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111010100000101111100110000001100000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~127_q\,
	datab => \RAM|ALT_INV_ram~255_q\,
	datac => \ROM|ALT_INV_memROM~45_combout\,
	datad => \RAM|ALT_INV_ram~383_q\,
	datae => \RAM|ALT_INV_ram~511_q\,
	dataf => \ROM|ALT_INV_memROM~69_combout\,
	combout => \RAM|ram~544_combout\);

-- Location: FF_X36_Y4_N50
\RAM|ram~391\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(0),
	sload => VCC,
	ena => \RAM|ram~816_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~391_q\);

-- Location: LABCELL_X32_Y4_N21
\RAM|ram~263feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~263feeder_combout\ = ( \CPU|REG_A|DOUT\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG_A|ALT_INV_DOUT\(0),
	combout => \RAM|ram~263feeder_combout\);

-- Location: FF_X32_Y4_N22
\RAM|ram~263\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~263feeder_combout\,
	ena => \RAM|ram~818_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~263_q\);

-- Location: MLABCELL_X45_Y5_N3
\RAM|ram~135feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~135feeder_combout\ = ( \CPU|REG_A|DOUT\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG_A|ALT_INV_DOUT\(0),
	combout => \RAM|ram~135feeder_combout\);

-- Location: FF_X45_Y5_N4
\RAM|ram~135\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~135feeder_combout\,
	ena => \RAM|ram~814_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~135_q\);

-- Location: FF_X36_Y4_N44
\RAM|ram~519\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(0),
	sload => VCC,
	ena => \RAM|ram~820_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~519_q\);

-- Location: LABCELL_X36_Y4_N42
\RAM|ram~545\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~545_combout\ = ( \RAM|ram~519_q\ & ( \ROM|memROM~69_combout\ & ( (\ROM|memROM~45_combout\) # (\RAM|ram~263_q\) ) ) ) # ( !\RAM|ram~519_q\ & ( \ROM|memROM~69_combout\ & ( (\RAM|ram~263_q\ & !\ROM|memROM~45_combout\) ) ) ) # ( \RAM|ram~519_q\ & ( 
-- !\ROM|memROM~69_combout\ & ( (!\ROM|memROM~45_combout\ & ((\RAM|ram~135_q\))) # (\ROM|memROM~45_combout\ & (\RAM|ram~391_q\)) ) ) ) # ( !\RAM|ram~519_q\ & ( !\ROM|memROM~69_combout\ & ( (!\ROM|memROM~45_combout\ & ((\RAM|ram~135_q\))) # 
-- (\ROM|memROM~45_combout\ & (\RAM|ram~391_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000001011111010100110000001100000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~391_q\,
	datab => \RAM|ALT_INV_ram~263_q\,
	datac => \ROM|ALT_INV_memROM~45_combout\,
	datad => \RAM|ALT_INV_ram~135_q\,
	datae => \RAM|ALT_INV_ram~519_q\,
	dataf => \ROM|ALT_INV_memROM~69_combout\,
	combout => \RAM|ram~545_combout\);

-- Location: MLABCELL_X34_Y5_N33
\RAM|ram~71feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~71feeder_combout\ = ( \CPU|REG_A|DOUT\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG_A|ALT_INV_DOUT\(0),
	combout => \RAM|ram~71feeder_combout\);

-- Location: FF_X34_Y5_N34
\RAM|ram~71\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~71feeder_combout\,
	ena => \RAM|ram~798_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~71_q\);

-- Location: LABCELL_X40_Y2_N0
\RAM|ram~199feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~199feeder_combout\ = ( \CPU|REG_A|DOUT\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG_A|ALT_INV_DOUT\(0),
	combout => \RAM|ram~199feeder_combout\);

-- Location: FF_X40_Y2_N1
\RAM|ram~199\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~199feeder_combout\,
	ena => \RAM|ram~802_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~199_q\);

-- Location: MLABCELL_X37_Y3_N18
\RAM|ram~327feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~327feeder_combout\ = \CPU|REG_A|DOUT\(0)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|REG_A|ALT_INV_DOUT\(0),
	combout => \RAM|ram~327feeder_combout\);

-- Location: FF_X37_Y3_N19
\RAM|ram~327\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~327feeder_combout\,
	ena => \RAM|ram~800_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~327_q\);

-- Location: FF_X35_Y4_N8
\RAM|ram~455\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(0),
	sload => VCC,
	ena => \RAM|ram~804_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~455_q\);

-- Location: LABCELL_X35_Y4_N6
\RAM|ram~543\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~543_combout\ = ( \RAM|ram~455_q\ & ( \ROM|memROM~69_combout\ & ( (\ROM|memROM~45_combout\) # (\RAM|ram~199_q\) ) ) ) # ( !\RAM|ram~455_q\ & ( \ROM|memROM~69_combout\ & ( (\RAM|ram~199_q\ & !\ROM|memROM~45_combout\) ) ) ) # ( \RAM|ram~455_q\ & ( 
-- !\ROM|memROM~69_combout\ & ( (!\ROM|memROM~45_combout\ & (\RAM|ram~71_q\)) # (\ROM|memROM~45_combout\ & ((\RAM|ram~327_q\))) ) ) ) # ( !\RAM|ram~455_q\ & ( !\ROM|memROM~69_combout\ & ( (!\ROM|memROM~45_combout\ & (\RAM|ram~71_q\)) # 
-- (\ROM|memROM~45_combout\ & ((\RAM|ram~327_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111010100000101111100110000001100000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~71_q\,
	datab => \RAM|ALT_INV_ram~199_q\,
	datac => \ROM|ALT_INV_memROM~45_combout\,
	datad => \RAM|ALT_INV_ram~327_q\,
	datae => \RAM|ALT_INV_ram~455_q\,
	dataf => \ROM|ALT_INV_memROM~69_combout\,
	combout => \RAM|ram~543_combout\);

-- Location: LABCELL_X41_Y2_N30
\RAM|ram~319feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~319feeder_combout\ = ( \CPU|REG_A|DOUT\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG_A|ALT_INV_DOUT\(0),
	combout => \RAM|ram~319feeder_combout\);

-- Location: FF_X41_Y2_N31
\RAM|ram~319\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~319feeder_combout\,
	ena => \RAM|ram~792_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~319_q\);

-- Location: LABCELL_X40_Y8_N54
\RAM|ram~191feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~191feeder_combout\ = ( \CPU|REG_A|DOUT\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG_A|ALT_INV_DOUT\(0),
	combout => \RAM|ram~191feeder_combout\);

-- Location: FF_X40_Y8_N55
\RAM|ram~191\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~191feeder_combout\,
	ena => \RAM|ram~794_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~191_q\);

-- Location: FF_X41_Y2_N52
\RAM|ram~63\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(0),
	sload => VCC,
	ena => \RAM|ram~790_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~63_q\);

-- Location: FF_X37_Y3_N38
\RAM|ram~447\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(0),
	sload => VCC,
	ena => \RAM|ram~796_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~447_q\);

-- Location: MLABCELL_X37_Y3_N36
\RAM|ram~542\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~542_combout\ = ( \RAM|ram~447_q\ & ( \ROM|memROM~69_combout\ & ( (\ROM|memROM~45_combout\) # (\RAM|ram~191_q\) ) ) ) # ( !\RAM|ram~447_q\ & ( \ROM|memROM~69_combout\ & ( (\RAM|ram~191_q\ & !\ROM|memROM~45_combout\) ) ) ) # ( \RAM|ram~447_q\ & ( 
-- !\ROM|memROM~69_combout\ & ( (!\ROM|memROM~45_combout\ & ((\RAM|ram~63_q\))) # (\ROM|memROM~45_combout\ & (\RAM|ram~319_q\)) ) ) ) # ( !\RAM|ram~447_q\ & ( !\ROM|memROM~69_combout\ & ( (!\ROM|memROM~45_combout\ & ((\RAM|ram~63_q\))) # 
-- (\ROM|memROM~45_combout\ & (\RAM|ram~319_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000011110101010100110011000000000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~319_q\,
	datab => \RAM|ALT_INV_ram~191_q\,
	datac => \RAM|ALT_INV_ram~63_q\,
	datad => \ROM|ALT_INV_memROM~45_combout\,
	datae => \RAM|ALT_INV_ram~447_q\,
	dataf => \ROM|ALT_INV_memROM~69_combout\,
	combout => \RAM|ram~542_combout\);

-- Location: LABCELL_X40_Y4_N0
\RAM|ram~546\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~546_combout\ = ( \RAM|ram~543_combout\ & ( \RAM|ram~542_combout\ & ( (!\ROM|memROM~76_combout\) # ((!\ROM|memROM~153_combout\ & (\RAM|ram~544_combout\)) # (\ROM|memROM~153_combout\ & ((\RAM|ram~545_combout\)))) ) ) ) # ( !\RAM|ram~543_combout\ & 
-- ( \RAM|ram~542_combout\ & ( (!\ROM|memROM~153_combout\ & ((!\ROM|memROM~76_combout\) # ((\RAM|ram~544_combout\)))) # (\ROM|memROM~153_combout\ & (\ROM|memROM~76_combout\ & ((\RAM|ram~545_combout\)))) ) ) ) # ( \RAM|ram~543_combout\ & ( 
-- !\RAM|ram~542_combout\ & ( (!\ROM|memROM~153_combout\ & (\ROM|memROM~76_combout\ & (\RAM|ram~544_combout\))) # (\ROM|memROM~153_combout\ & ((!\ROM|memROM~76_combout\) # ((\RAM|ram~545_combout\)))) ) ) ) # ( !\RAM|ram~543_combout\ & ( 
-- !\RAM|ram~542_combout\ & ( (\ROM|memROM~76_combout\ & ((!\ROM|memROM~153_combout\ & (\RAM|ram~544_combout\)) # (\ROM|memROM~153_combout\ & ((\RAM|ram~545_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000010011010001100101011110001010100110111100111011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~153_combout\,
	datab => \ROM|ALT_INV_memROM~76_combout\,
	datac => \RAM|ALT_INV_ram~544_combout\,
	datad => \RAM|ALT_INV_ram~545_combout\,
	datae => \RAM|ALT_INV_ram~543_combout\,
	dataf => \RAM|ALT_INV_ram~542_combout\,
	combout => \RAM|ram~546_combout\);

-- Location: FF_X37_Y6_N34
\RAM|ram~175\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(0),
	sload => VCC,
	ena => \RAM|ram~734_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~175_q\);

-- Location: LABCELL_X40_Y6_N39
\RAM|ram~439feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~439feeder_combout\ = ( \CPU|REG_A|DOUT\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG_A|ALT_INV_DOUT\(0),
	combout => \RAM|ram~439feeder_combout\);

-- Location: FF_X40_Y6_N40
\RAM|ram~439\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~439feeder_combout\,
	ena => \RAM|ram~740_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~439_q\);

-- Location: FF_X37_Y4_N1
\RAM|ram~431\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(0),
	sload => VCC,
	ena => \RAM|ram~736_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~431_q\);

-- Location: MLABCELL_X34_Y5_N36
\RAM|ram~183feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~183feeder_combout\ = ( \CPU|REG_A|DOUT\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG_A|ALT_INV_DOUT\(0),
	combout => \RAM|ram~183feeder_combout\);

-- Location: FF_X34_Y5_N37
\RAM|ram~183\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~183feeder_combout\,
	ena => \RAM|ram~738_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~183_q\);

-- Location: LABCELL_X39_Y4_N27
\RAM|ram~533\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~533_combout\ = ( \ROM|memROM~153_combout\ & ( \ROM|memROM~45_combout\ & ( \RAM|ram~439_q\ ) ) ) # ( !\ROM|memROM~153_combout\ & ( \ROM|memROM~45_combout\ & ( \RAM|ram~431_q\ ) ) ) # ( \ROM|memROM~153_combout\ & ( !\ROM|memROM~45_combout\ & ( 
-- \RAM|ram~183_q\ ) ) ) # ( !\ROM|memROM~153_combout\ & ( !\ROM|memROM~45_combout\ & ( \RAM|ram~175_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000001111111100001111000011110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~175_q\,
	datab => \RAM|ALT_INV_ram~439_q\,
	datac => \RAM|ALT_INV_ram~431_q\,
	datad => \RAM|ALT_INV_ram~183_q\,
	datae => \ROM|ALT_INV_memROM~153_combout\,
	dataf => \ROM|ALT_INV_memROM~45_combout\,
	combout => \RAM|ram~533_combout\);

-- Location: LABCELL_X41_Y6_N39
\RAM|ram~119feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~119feeder_combout\ = ( \CPU|REG_A|DOUT\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG_A|ALT_INV_DOUT\(0),
	combout => \RAM|ram~119feeder_combout\);

-- Location: FF_X41_Y6_N40
\RAM|ram~119\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~119feeder_combout\,
	ena => \RAM|ram~746_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~119_q\);

-- Location: LABCELL_X32_Y4_N12
\RAM|ram~367feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~367feeder_combout\ = ( \CPU|REG_A|DOUT\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG_A|ALT_INV_DOUT\(0),
	combout => \RAM|ram~367feeder_combout\);

-- Location: FF_X32_Y4_N13
\RAM|ram~367\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~367feeder_combout\,
	ena => \RAM|ram~744_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~367_q\);

-- Location: MLABCELL_X42_Y2_N15
\RAM|ram~111feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~111feeder_combout\ = \CPU|REG_A|DOUT\(0)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|REG_A|ALT_INV_DOUT\(0),
	combout => \RAM|ram~111feeder_combout\);

-- Location: FF_X42_Y2_N17
\RAM|ram~111\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~111feeder_combout\,
	ena => \RAM|ram~742_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~111_q\);

-- Location: LABCELL_X40_Y6_N9
\RAM|ram~375feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~375feeder_combout\ = ( \CPU|REG_A|DOUT\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG_A|ALT_INV_DOUT\(0),
	combout => \RAM|ram~375feeder_combout\);

-- Location: FF_X40_Y6_N10
\RAM|ram~375\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~375feeder_combout\,
	ena => \RAM|ram~748_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~375_q\);

-- Location: LABCELL_X39_Y4_N0
\RAM|ram~534\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~534_combout\ = ( \ROM|memROM~153_combout\ & ( \ROM|memROM~45_combout\ & ( \RAM|ram~375_q\ ) ) ) # ( !\ROM|memROM~153_combout\ & ( \ROM|memROM~45_combout\ & ( \RAM|ram~367_q\ ) ) ) # ( \ROM|memROM~153_combout\ & ( !\ROM|memROM~45_combout\ & ( 
-- \RAM|ram~119_q\ ) ) ) # ( !\ROM|memROM~153_combout\ & ( !\ROM|memROM~45_combout\ & ( \RAM|ram~111_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111010101010101010100110011001100110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~119_q\,
	datab => \RAM|ALT_INV_ram~367_q\,
	datac => \RAM|ALT_INV_ram~111_q\,
	datad => \RAM|ALT_INV_ram~375_q\,
	datae => \ROM|ALT_INV_memROM~153_combout\,
	dataf => \ROM|ALT_INV_memROM~45_combout\,
	combout => \RAM|ram~534_combout\);

-- Location: FF_X37_Y2_N56
\RAM|ram~247\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(0),
	sload => VCC,
	ena => \RAM|ram~754_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~247_q\);

-- Location: MLABCELL_X42_Y8_N24
\RAM|ram~239feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~239feeder_combout\ = ( \CPU|REG_A|DOUT\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG_A|ALT_INV_DOUT\(0),
	combout => \RAM|ram~239feeder_combout\);

-- Location: FF_X42_Y8_N25
\RAM|ram~239\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~239feeder_combout\,
	ena => \RAM|ram~750_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~239_q\);

-- Location: FF_X35_Y6_N16
\RAM|ram~495\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(0),
	sload => VCC,
	ena => \RAM|ram~752_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~495_q\);

-- Location: FF_X40_Y2_N17
\RAM|ram~503\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(0),
	sload => VCC,
	ena => \RAM|ram~756_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~503_q\);

-- Location: LABCELL_X40_Y2_N15
\RAM|ram~535\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~535_combout\ = ( \RAM|ram~503_q\ & ( \ROM|memROM~45_combout\ & ( (\RAM|ram~495_q\) # (\ROM|memROM~153_combout\) ) ) ) # ( !\RAM|ram~503_q\ & ( \ROM|memROM~45_combout\ & ( (!\ROM|memROM~153_combout\ & \RAM|ram~495_q\) ) ) ) # ( \RAM|ram~503_q\ & ( 
-- !\ROM|memROM~45_combout\ & ( (!\ROM|memROM~153_combout\ & ((\RAM|ram~239_q\))) # (\ROM|memROM~153_combout\ & (\RAM|ram~247_q\)) ) ) ) # ( !\RAM|ram~503_q\ & ( !\ROM|memROM~45_combout\ & ( (!\ROM|memROM~153_combout\ & ((\RAM|ram~239_q\))) # 
-- (\ROM|memROM~153_combout\ & (\RAM|ram~247_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101001101010011010100000000111100000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~247_q\,
	datab => \RAM|ALT_INV_ram~239_q\,
	datac => \ROM|ALT_INV_memROM~153_combout\,
	datad => \RAM|ALT_INV_ram~495_q\,
	datae => \RAM|ALT_INV_ram~503_q\,
	dataf => \ROM|ALT_INV_memROM~45_combout\,
	combout => \RAM|ram~535_combout\);

-- Location: FF_X34_Y6_N53
\RAM|ram~55\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(0),
	sload => VCC,
	ena => \RAM|ram~730_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~55_q\);

-- Location: FF_X39_Y2_N14
\RAM|ram~311\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(0),
	sload => VCC,
	ena => \RAM|ram~732_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~311_q\);

-- Location: FF_X39_Y2_N52
\RAM|ram~47\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(0),
	sload => VCC,
	ena => \RAM|ram~726_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~47_q\);

-- Location: FF_X39_Y2_N32
\RAM|ram~303\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(0),
	sload => VCC,
	ena => \RAM|ram~728_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~303_q\);

-- Location: LABCELL_X39_Y2_N30
\RAM|ram~532\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~532_combout\ = ( \RAM|ram~303_q\ & ( \ROM|memROM~45_combout\ & ( (!\ROM|memROM~153_combout\) # (\RAM|ram~311_q\) ) ) ) # ( !\RAM|ram~303_q\ & ( \ROM|memROM~45_combout\ & ( (\RAM|ram~311_q\ & \ROM|memROM~153_combout\) ) ) ) # ( \RAM|ram~303_q\ & ( 
-- !\ROM|memROM~45_combout\ & ( (!\ROM|memROM~153_combout\ & ((\RAM|ram~47_q\))) # (\ROM|memROM~153_combout\ & (\RAM|ram~55_q\)) ) ) ) # ( !\RAM|ram~303_q\ & ( !\ROM|memROM~45_combout\ & ( (!\ROM|memROM~153_combout\ & ((\RAM|ram~47_q\))) # 
-- (\ROM|memROM~153_combout\ & (\RAM|ram~55_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000001011111010100000011000000111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~55_q\,
	datab => \RAM|ALT_INV_ram~311_q\,
	datac => \ROM|ALT_INV_memROM~153_combout\,
	datad => \RAM|ALT_INV_ram~47_q\,
	datae => \RAM|ALT_INV_ram~303_q\,
	dataf => \ROM|ALT_INV_memROM~45_combout\,
	combout => \RAM|ram~532_combout\);

-- Location: LABCELL_X40_Y4_N42
\RAM|ram~536\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~536_combout\ = ( \RAM|ram~535_combout\ & ( \RAM|ram~532_combout\ & ( (!\ROM|memROM~69_combout\ & ((!\ROM|memROM~76_combout\) # ((\RAM|ram~534_combout\)))) # (\ROM|memROM~69_combout\ & (((\RAM|ram~533_combout\)) # (\ROM|memROM~76_combout\))) ) ) ) 
-- # ( !\RAM|ram~535_combout\ & ( \RAM|ram~532_combout\ & ( (!\ROM|memROM~69_combout\ & ((!\ROM|memROM~76_combout\) # ((\RAM|ram~534_combout\)))) # (\ROM|memROM~69_combout\ & (!\ROM|memROM~76_combout\ & (\RAM|ram~533_combout\))) ) ) ) # ( 
-- \RAM|ram~535_combout\ & ( !\RAM|ram~532_combout\ & ( (!\ROM|memROM~69_combout\ & (\ROM|memROM~76_combout\ & ((\RAM|ram~534_combout\)))) # (\ROM|memROM~69_combout\ & (((\RAM|ram~533_combout\)) # (\ROM|memROM~76_combout\))) ) ) ) # ( !\RAM|ram~535_combout\ 
-- & ( !\RAM|ram~532_combout\ & ( (!\ROM|memROM~69_combout\ & (\ROM|memROM~76_combout\ & ((\RAM|ram~534_combout\)))) # (\ROM|memROM~69_combout\ & (!\ROM|memROM~76_combout\ & (\RAM|ram~533_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000100110000101010011011110001100101011101001110110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~69_combout\,
	datab => \ROM|ALT_INV_memROM~76_combout\,
	datac => \RAM|ALT_INV_ram~533_combout\,
	datad => \RAM|ALT_INV_ram~534_combout\,
	datae => \RAM|ALT_INV_ram~535_combout\,
	dataf => \RAM|ALT_INV_ram~532_combout\,
	combout => \RAM|ram~536_combout\);

-- Location: LABCELL_X40_Y4_N24
\RAM|ram~547\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~547_combout\ = ( \RAM|ram~546_combout\ & ( \RAM|ram~536_combout\ & ( ((!\ROM|memROM~58_combout\ & (\RAM|ram~531_combout\)) # (\ROM|memROM~58_combout\ & ((\RAM|ram~541_combout\)))) # (\ROM|memROM~0_combout\) ) ) ) # ( !\RAM|ram~546_combout\ & ( 
-- \RAM|ram~536_combout\ & ( (!\ROM|memROM~58_combout\ & (((\ROM|memROM~0_combout\)) # (\RAM|ram~531_combout\))) # (\ROM|memROM~58_combout\ & (((\RAM|ram~541_combout\ & !\ROM|memROM~0_combout\)))) ) ) ) # ( \RAM|ram~546_combout\ & ( !\RAM|ram~536_combout\ & 
-- ( (!\ROM|memROM~58_combout\ & (\RAM|ram~531_combout\ & ((!\ROM|memROM~0_combout\)))) # (\ROM|memROM~58_combout\ & (((\ROM|memROM~0_combout\) # (\RAM|ram~541_combout\)))) ) ) ) # ( !\RAM|ram~546_combout\ & ( !\RAM|ram~536_combout\ & ( 
-- (!\ROM|memROM~0_combout\ & ((!\ROM|memROM~58_combout\ & (\RAM|ram~531_combout\)) # (\ROM|memROM~58_combout\ & ((\RAM|ram~541_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011100000000010001110011001101000111110011000100011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~531_combout\,
	datab => \ROM|ALT_INV_memROM~58_combout\,
	datac => \RAM|ALT_INV_ram~541_combout\,
	datad => \ROM|ALT_INV_memROM~0_combout\,
	datae => \RAM|ALT_INV_ram~546_combout\,
	dataf => \RAM|ALT_INV_ram~536_combout\,
	combout => \RAM|ram~547_combout\);

-- Location: LABCELL_X40_Y4_N30
\READ_BUS[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \READ_BUS[0]~3_combout\ = ( \ENABLE_SWR~0_combout\ & ( \RAM|ram~547_combout\ & ( (((\ENABLE_SWR~2_combout\ & \SW[0]~input_o\)) # (\READ_BUS[0]~4_combout\)) # (\READ_BUS[0]~0_combout\) ) ) ) # ( !\ENABLE_SWR~0_combout\ & ( \RAM|ram~547_combout\ & ( 
-- ((\ENABLE_SWR~2_combout\ & \SW[0]~input_o\)) # (\READ_BUS[0]~0_combout\) ) ) ) # ( \ENABLE_SWR~0_combout\ & ( !\RAM|ram~547_combout\ & ( ((\ENABLE_SWR~2_combout\ & \SW[0]~input_o\)) # (\READ_BUS[0]~4_combout\) ) ) ) # ( !\ENABLE_SWR~0_combout\ & ( 
-- !\RAM|ram~547_combout\ & ( (\ENABLE_SWR~2_combout\ & \SW[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000111111111101010111010101110101011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_READ_BUS[0]~0_combout\,
	datab => \ALT_INV_ENABLE_SWR~2_combout\,
	datac => \ALT_INV_SW[0]~input_o\,
	datad => \ALT_INV_READ_BUS[0]~4_combout\,
	datae => \ALT_INV_ENABLE_SWR~0_combout\,
	dataf => \RAM|ALT_INV_ram~547_combout\,
	combout => \READ_BUS[0]~3_combout\);

-- Location: LABCELL_X41_Y3_N33
\CPU|ULA1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~9_sumout\ = SUM(( \CPU|REG_A|DOUT\(1) ) + ( \CPU|MUX1|saida_MUX[1]~1_combout\ ) + ( \CPU|ULA1|Add0~2\ ))
-- \CPU|ULA1|Add0~10\ = CARRY(( \CPU|REG_A|DOUT\(1) ) + ( \CPU|MUX1|saida_MUX[1]~1_combout\ ) + ( \CPU|ULA1|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|MUX1|ALT_INV_saida_MUX[1]~1_combout\,
	datad => \CPU|REG_A|ALT_INV_DOUT\(1),
	cin => \CPU|ULA1|Add0~2\,
	sumout => \CPU|ULA1|Add0~9_sumout\,
	cout => \CPU|ULA1|Add0~10\);

-- Location: LABCELL_X41_Y3_N36
\CPU|ULA1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~13_sumout\ = SUM(( \CPU|REG_A|DOUT\(2) ) + ( \CPU|MUX1|saida_MUX[2]~2_combout\ ) + ( \CPU|ULA1|Add0~10\ ))
-- \CPU|ULA1|Add0~14\ = CARRY(( \CPU|REG_A|DOUT\(2) ) + ( \CPU|MUX1|saida_MUX[2]~2_combout\ ) + ( \CPU|ULA1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|MUX1|ALT_INV_saida_MUX[2]~2_combout\,
	datad => \CPU|REG_A|ALT_INV_DOUT\(2),
	cin => \CPU|ULA1|Add0~10\,
	sumout => \CPU|ULA1|Add0~13_sumout\,
	cout => \CPU|ULA1|Add0~14\);

-- Location: LABCELL_X41_Y3_N6
\CPU|ULA1|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~9_sumout\ = SUM(( !\CPU|MUX1|saida_MUX[1]~1_combout\ ) + ( \CPU|REG_A|DOUT\(1) ) + ( \CPU|ULA1|Add1~2\ ))
-- \CPU|ULA1|Add1~10\ = CARRY(( !\CPU|MUX1|saida_MUX[1]~1_combout\ ) + ( \CPU|REG_A|DOUT\(1) ) + ( \CPU|ULA1|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|REG_A|ALT_INV_DOUT\(1),
	datad => \CPU|MUX1|ALT_INV_saida_MUX[1]~1_combout\,
	cin => \CPU|ULA1|Add1~2\,
	sumout => \CPU|ULA1|Add1~9_sumout\,
	cout => \CPU|ULA1|Add1~10\);

-- Location: LABCELL_X41_Y3_N9
\CPU|ULA1|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~13_sumout\ = SUM(( !\CPU|MUX1|saida_MUX[2]~2_combout\ ) + ( \CPU|REG_A|DOUT\(2) ) + ( \CPU|ULA1|Add1~10\ ))
-- \CPU|ULA1|Add1~14\ = CARRY(( !\CPU|MUX1|saida_MUX[2]~2_combout\ ) + ( \CPU|REG_A|DOUT\(2) ) + ( \CPU|ULA1|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|REG_A|ALT_INV_DOUT\(2),
	datad => \CPU|MUX1|ALT_INV_saida_MUX[2]~2_combout\,
	cin => \CPU|ULA1|Add1~10\,
	sumout => \CPU|ULA1|Add1~13_sumout\,
	cout => \CPU|ULA1|Add1~14\);

-- Location: LABCELL_X40_Y3_N27
\CPU|ULA1|saida[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[2]~3_combout\ = ( \CPU|ULA1|Add1~13_sumout\ & ( (!\CPU|DECODER|OP_ULA[1]~0_combout\) # (\CPU|MUX1|saida_MUX[2]~2_combout\) ) ) # ( !\CPU|ULA1|Add1~13_sumout\ & ( (\CPU|DECODER|OP_ULA[1]~0_combout\ & \CPU|MUX1|saida_MUX[2]~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|DECODER|ALT_INV_OP_ULA[1]~0_combout\,
	datad => \CPU|MUX1|ALT_INV_saida_MUX[2]~2_combout\,
	dataf => \CPU|ULA1|ALT_INV_Add1~13_sumout\,
	combout => \CPU|ULA1|saida[2]~3_combout\);

-- Location: FF_X41_Y3_N38
\CPU|REG_A|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|ULA1|Add0~13_sumout\,
	asdata => \CPU|ULA1|saida[2]~3_combout\,
	sload => \CPU|DECODER|OP_ULA[0]~1_combout\,
	ena => \CPU|DECODER|HAB_A~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_A|DOUT\(2));

-- Location: FF_X41_Y4_N49
\RAM|ram~281\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(2),
	sload => VCC,
	ena => \RAM|ram~700_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~281_q\);

-- Location: FF_X39_Y6_N32
\RAM|ram~409\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(2),
	sload => VCC,
	ena => \RAM|ram~708_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~409_q\);

-- Location: LABCELL_X39_Y5_N51
\RAM|ram~345feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~345feeder_combout\ = ( \CPU|REG_A|DOUT\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG_A|ALT_INV_DOUT\(2),
	combout => \RAM|ram~345feeder_combout\);

-- Location: FF_X39_Y5_N52
\RAM|ram~345\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~345feeder_combout\,
	ena => \RAM|ram~716_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~345_q\);

-- Location: FF_X39_Y6_N17
\RAM|ram~473\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(2),
	sload => VCC,
	ena => \RAM|ram~724_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~473_q\);

-- Location: LABCELL_X39_Y6_N15
\RAM|ram~603\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~603_combout\ = ( \RAM|ram~473_q\ & ( \ROM|memROM~76_combout\ & ( (\RAM|ram~345_q\) # (\ROM|memROM~69_combout\) ) ) ) # ( !\RAM|ram~473_q\ & ( \ROM|memROM~76_combout\ & ( (!\ROM|memROM~69_combout\ & \RAM|ram~345_q\) ) ) ) # ( \RAM|ram~473_q\ & ( 
-- !\ROM|memROM~76_combout\ & ( (!\ROM|memROM~69_combout\ & (\RAM|ram~281_q\)) # (\ROM|memROM~69_combout\ & ((\RAM|ram~409_q\))) ) ) ) # ( !\RAM|ram~473_q\ & ( !\ROM|memROM~76_combout\ & ( (!\ROM|memROM~69_combout\ & (\RAM|ram~281_q\)) # 
-- (\ROM|memROM~69_combout\ & ((\RAM|ram~409_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011010100110101001100000000111100000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~281_q\,
	datab => \RAM|ALT_INV_ram~409_q\,
	datac => \ROM|ALT_INV_memROM~69_combout\,
	datad => \RAM|ALT_INV_ram~345_q\,
	datae => \RAM|ALT_INV_ram~473_q\,
	dataf => \ROM|ALT_INV_memROM~76_combout\,
	combout => \RAM|ram~603_combout\);

-- Location: FF_X40_Y6_N56
\RAM|ram~377\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(2),
	sload => VCC,
	ena => \RAM|ram~748_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~377_q\);

-- Location: FF_X40_Y6_N28
\RAM|ram~441\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(2),
	sload => VCC,
	ena => \RAM|ram~740_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~441_q\);

-- Location: FF_X41_Y6_N16
\RAM|ram~313\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(2),
	sload => VCC,
	ena => \RAM|ram~732_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~313_q\);

-- Location: FF_X40_Y6_N17
\RAM|ram~505\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(2),
	sload => VCC,
	ena => \RAM|ram~756_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~505_q\);

-- Location: LABCELL_X40_Y6_N15
\RAM|ram~604\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~604_combout\ = ( \RAM|ram~505_q\ & ( \ROM|memROM~69_combout\ & ( (\ROM|memROM~76_combout\) # (\RAM|ram~441_q\) ) ) ) # ( !\RAM|ram~505_q\ & ( \ROM|memROM~69_combout\ & ( (\RAM|ram~441_q\ & !\ROM|memROM~76_combout\) ) ) ) # ( \RAM|ram~505_q\ & ( 
-- !\ROM|memROM~69_combout\ & ( (!\ROM|memROM~76_combout\ & ((\RAM|ram~313_q\))) # (\ROM|memROM~76_combout\ & (\RAM|ram~377_q\)) ) ) ) # ( !\RAM|ram~505_q\ & ( !\ROM|memROM~69_combout\ & ( (!\ROM|memROM~76_combout\ & ((\RAM|ram~313_q\))) # 
-- (\ROM|memROM~76_combout\ & (\RAM|ram~377_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000001011111010100110000001100000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~377_q\,
	datab => \RAM|ALT_INV_ram~441_q\,
	datac => \ROM|ALT_INV_memROM~76_combout\,
	datad => \RAM|ALT_INV_ram~313_q\,
	datae => \RAM|ALT_INV_ram~505_q\,
	dataf => \ROM|ALT_INV_memROM~69_combout\,
	combout => \RAM|ram~604_combout\);

-- Location: FF_X36_Y3_N34
\RAM|ram~457\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(2),
	sload => VCC,
	ena => \RAM|ram~804_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~457_q\);

-- Location: FF_X37_Y3_N16
\RAM|ram~329\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(2),
	sload => VCC,
	ena => \RAM|ram~800_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~329_q\);

-- Location: FF_X36_Y4_N55
\RAM|ram~521\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(2),
	sload => VCC,
	ena => \RAM|ram~820_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~521_q\);

-- Location: FF_X36_Y4_N25
\RAM|ram~393\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(2),
	sload => VCC,
	ena => \RAM|ram~816_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~393_q\);

-- Location: MLABCELL_X37_Y4_N18
\RAM|ram~606\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~606_combout\ = ( \ROM|memROM~76_combout\ & ( \ROM|memROM~69_combout\ & ( \RAM|ram~521_q\ ) ) ) # ( !\ROM|memROM~76_combout\ & ( \ROM|memROM~69_combout\ & ( \RAM|ram~457_q\ ) ) ) # ( \ROM|memROM~76_combout\ & ( !\ROM|memROM~69_combout\ & ( 
-- \RAM|ram~393_q\ ) ) ) # ( !\ROM|memROM~76_combout\ & ( !\ROM|memROM~69_combout\ & ( \RAM|ram~329_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000001111111101010101010101010000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~457_q\,
	datab => \RAM|ALT_INV_ram~329_q\,
	datac => \RAM|ALT_INV_ram~521_q\,
	datad => \RAM|ALT_INV_ram~393_q\,
	datae => \ROM|ALT_INV_memROM~76_combout\,
	dataf => \ROM|ALT_INV_memROM~69_combout\,
	combout => \RAM|ram~606_combout\);

-- Location: FF_X35_Y3_N35
\RAM|ram~425\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(2),
	sload => VCC,
	ena => \RAM|ram~772_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~425_q\);

-- Location: FF_X39_Y7_N41
\RAM|ram~361\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(2),
	sload => VCC,
	ena => \RAM|ram~780_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~361_q\);

-- Location: FF_X39_Y3_N2
\RAM|ram~297\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(2),
	sload => VCC,
	ena => \RAM|ram~764_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~297_q\);

-- Location: FF_X34_Y5_N17
\RAM|ram~489\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(2),
	sload => VCC,
	ena => \RAM|ram~788_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~489_q\);

-- Location: MLABCELL_X34_Y5_N15
\RAM|ram~605\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~605_combout\ = ( \RAM|ram~489_q\ & ( \ROM|memROM~76_combout\ & ( (\ROM|memROM~69_combout\) # (\RAM|ram~361_q\) ) ) ) # ( !\RAM|ram~489_q\ & ( \ROM|memROM~76_combout\ & ( (\RAM|ram~361_q\ & !\ROM|memROM~69_combout\) ) ) ) # ( \RAM|ram~489_q\ & ( 
-- !\ROM|memROM~76_combout\ & ( (!\ROM|memROM~69_combout\ & ((\RAM|ram~297_q\))) # (\ROM|memROM~69_combout\ & (\RAM|ram~425_q\)) ) ) ) # ( !\RAM|ram~489_q\ & ( !\ROM|memROM~76_combout\ & ( (!\ROM|memROM~69_combout\ & ((\RAM|ram~297_q\))) # 
-- (\ROM|memROM~69_combout\ & (\RAM|ram~425_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000001011111010100110000001100000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~425_q\,
	datab => \RAM|ALT_INV_ram~361_q\,
	datac => \ROM|ALT_INV_memROM~69_combout\,
	datad => \RAM|ALT_INV_ram~297_q\,
	datae => \RAM|ALT_INV_ram~489_q\,
	dataf => \ROM|ALT_INV_memROM~76_combout\,
	combout => \RAM|ram~605_combout\);

-- Location: LABCELL_X40_Y5_N54
\RAM|ram~607\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~607_combout\ = ( \RAM|ram~606_combout\ & ( \RAM|ram~605_combout\ & ( ((!\ROM|memROM~0_combout\ & (\RAM|ram~603_combout\)) # (\ROM|memROM~0_combout\ & ((\RAM|ram~604_combout\)))) # (\ROM|memROM~58_combout\) ) ) ) # ( !\RAM|ram~606_combout\ & ( 
-- \RAM|ram~605_combout\ & ( (!\ROM|memROM~58_combout\ & ((!\ROM|memROM~0_combout\ & (\RAM|ram~603_combout\)) # (\ROM|memROM~0_combout\ & ((\RAM|ram~604_combout\))))) # (\ROM|memROM~58_combout\ & (!\ROM|memROM~0_combout\)) ) ) ) # ( \RAM|ram~606_combout\ & ( 
-- !\RAM|ram~605_combout\ & ( (!\ROM|memROM~58_combout\ & ((!\ROM|memROM~0_combout\ & (\RAM|ram~603_combout\)) # (\ROM|memROM~0_combout\ & ((\RAM|ram~604_combout\))))) # (\ROM|memROM~58_combout\ & (\ROM|memROM~0_combout\)) ) ) ) # ( !\RAM|ram~606_combout\ & 
-- ( !\RAM|ram~605_combout\ & ( (!\ROM|memROM~58_combout\ & ((!\ROM|memROM~0_combout\ & (\RAM|ram~603_combout\)) # (\ROM|memROM~0_combout\ & ((\RAM|ram~604_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010000110010011101101001100011011100101110101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~58_combout\,
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \RAM|ALT_INV_ram~603_combout\,
	datad => \RAM|ALT_INV_ram~604_combout\,
	datae => \RAM|ALT_INV_ram~606_combout\,
	dataf => \RAM|ALT_INV_ram~605_combout\,
	combout => \RAM|ram~607_combout\);

-- Location: LABCELL_X44_Y6_N27
\RAM|ram~153feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~153feeder_combout\ = ( \CPU|REG_A|DOUT\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG_A|ALT_INV_DOUT\(2),
	combout => \RAM|ram~153feeder_combout\);

-- Location: FF_X44_Y6_N28
\RAM|ram~153\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~153feeder_combout\,
	ena => \RAM|ram~706_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~153_q\);

-- Location: FF_X41_Y3_N29
\RAM|ram~169\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(2),
	sload => VCC,
	ena => \RAM|ram~770_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~169_q\);

-- Location: FF_X34_Y6_N43
\RAM|ram~185\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(2),
	sload => VCC,
	ena => \RAM|ram~738_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~185_q\);

-- Location: FF_X40_Y5_N50
\RAM|ram~201\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(2),
	sload => VCC,
	ena => \RAM|ram~802_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~201_q\);

-- Location: LABCELL_X40_Y5_N48
\RAM|ram~599\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~599_combout\ = ( \RAM|ram~201_q\ & ( \ROM|memROM~0_combout\ & ( (\RAM|ram~185_q\) # (\ROM|memROM~58_combout\) ) ) ) # ( !\RAM|ram~201_q\ & ( \ROM|memROM~0_combout\ & ( (!\ROM|memROM~58_combout\ & \RAM|ram~185_q\) ) ) ) # ( \RAM|ram~201_q\ & ( 
-- !\ROM|memROM~0_combout\ & ( (!\ROM|memROM~58_combout\ & (\RAM|ram~153_q\)) # (\ROM|memROM~58_combout\ & ((\RAM|ram~169_q\))) ) ) ) # ( !\RAM|ram~201_q\ & ( !\ROM|memROM~0_combout\ & ( (!\ROM|memROM~58_combout\ & (\RAM|ram~153_q\)) # 
-- (\ROM|memROM~58_combout\ & ((\RAM|ram~169_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100000000101010100101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~58_combout\,
	datab => \RAM|ALT_INV_ram~153_q\,
	datac => \RAM|ALT_INV_ram~169_q\,
	datad => \RAM|ALT_INV_ram~185_q\,
	datae => \RAM|ALT_INV_ram~201_q\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \RAM|ram~599_combout\);

-- Location: FF_X43_Y6_N34
\RAM|ram~249\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(2),
	sload => VCC,
	ena => \RAM|ram~754_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~249_q\);

-- Location: FF_X44_Y4_N25
\RAM|ram~217\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(2),
	sload => VCC,
	ena => \RAM|ram~722_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~217_q\);

-- Location: MLABCELL_X42_Y6_N54
\RAM|ram~233feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~233feeder_combout\ = ( \CPU|REG_A|DOUT\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG_A|ALT_INV_DOUT\(2),
	combout => \RAM|ram~233feeder_combout\);

-- Location: FF_X42_Y6_N56
\RAM|ram~233\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~233feeder_combout\,
	ena => \RAM|ram~786_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~233_q\);

-- Location: FF_X40_Y5_N32
\RAM|ram~265\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(2),
	sload => VCC,
	ena => \RAM|ram~818_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~265_q\);

-- Location: LABCELL_X40_Y5_N30
\RAM|ram~601\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~601_combout\ = ( \RAM|ram~265_q\ & ( \ROM|memROM~0_combout\ & ( (\ROM|memROM~58_combout\) # (\RAM|ram~249_q\) ) ) ) # ( !\RAM|ram~265_q\ & ( \ROM|memROM~0_combout\ & ( (\RAM|ram~249_q\ & !\ROM|memROM~58_combout\) ) ) ) # ( \RAM|ram~265_q\ & ( 
-- !\ROM|memROM~0_combout\ & ( (!\ROM|memROM~58_combout\ & (\RAM|ram~217_q\)) # (\ROM|memROM~58_combout\ & ((\RAM|ram~233_q\))) ) ) ) # ( !\RAM|ram~265_q\ & ( !\ROM|memROM~0_combout\ & ( (!\ROM|memROM~58_combout\ & (\RAM|ram~217_q\)) # 
-- (\ROM|memROM~58_combout\ & ((\RAM|ram~233_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111001100000011111101010000010100000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~249_q\,
	datab => \RAM|ALT_INV_ram~217_q\,
	datac => \ROM|ALT_INV_memROM~58_combout\,
	datad => \RAM|ALT_INV_ram~233_q\,
	datae => \RAM|ALT_INV_ram~265_q\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \RAM|ram~601_combout\);

-- Location: MLABCELL_X42_Y7_N21
\RAM|ram~25feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~25feeder_combout\ = ( \CPU|REG_A|DOUT\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG_A|ALT_INV_DOUT\(2),
	combout => \RAM|ram~25feeder_combout\);

-- Location: FF_X42_Y7_N22
\RAM|ram~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~25feeder_combout\,
	ena => \RAM|ram~698_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~25_q\);

-- Location: FF_X42_Y7_N59
\RAM|ram~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(2),
	sload => VCC,
	ena => \RAM|ram~762_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~41_q\);

-- Location: LABCELL_X41_Y5_N30
\RAM|ram~57feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~57feeder_combout\ = ( \CPU|REG_A|DOUT\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG_A|ALT_INV_DOUT\(2),
	combout => \RAM|ram~57feeder_combout\);

-- Location: FF_X41_Y5_N32
\RAM|ram~57\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~57feeder_combout\,
	ena => \RAM|ram~730_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~57_q\);

-- Location: FF_X41_Y5_N50
\RAM|ram~73\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(2),
	sload => VCC,
	ena => \RAM|ram~798_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~73_q\);

-- Location: LABCELL_X41_Y5_N48
\RAM|ram~598\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~598_combout\ = ( \RAM|ram~73_q\ & ( \ROM|memROM~0_combout\ & ( (\RAM|ram~57_q\) # (\ROM|memROM~58_combout\) ) ) ) # ( !\RAM|ram~73_q\ & ( \ROM|memROM~0_combout\ & ( (!\ROM|memROM~58_combout\ & \RAM|ram~57_q\) ) ) ) # ( \RAM|ram~73_q\ & ( 
-- !\ROM|memROM~0_combout\ & ( (!\ROM|memROM~58_combout\ & (\RAM|ram~25_q\)) # (\ROM|memROM~58_combout\ & ((\RAM|ram~41_q\))) ) ) ) # ( !\RAM|ram~73_q\ & ( !\ROM|memROM~0_combout\ & ( (!\ROM|memROM~58_combout\ & (\RAM|ram~25_q\)) # (\ROM|memROM~58_combout\ & 
-- ((\RAM|ram~41_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011010100110101001100000000111100000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~25_q\,
	datab => \RAM|ALT_INV_ram~41_q\,
	datac => \ROM|ALT_INV_memROM~58_combout\,
	datad => \RAM|ALT_INV_ram~57_q\,
	datae => \RAM|ALT_INV_ram~73_q\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \RAM|ram~598_combout\);

-- Location: MLABCELL_X45_Y5_N33
\RAM|ram~89feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~89feeder_combout\ = ( \CPU|REG_A|DOUT\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG_A|ALT_INV_DOUT\(2),
	combout => \RAM|ram~89feeder_combout\);

-- Location: FF_X45_Y5_N34
\RAM|ram~89\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~89feeder_combout\,
	ena => \RAM|ram~714_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~89_q\);

-- Location: FF_X37_Y5_N58
\RAM|ram~121\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(2),
	sload => VCC,
	ena => \RAM|ram~746_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~121_q\);

-- Location: LABCELL_X43_Y3_N27
\RAM|ram~105feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~105feeder_combout\ = ( \CPU|REG_A|DOUT\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG_A|ALT_INV_DOUT\(2),
	combout => \RAM|ram~105feeder_combout\);

-- Location: FF_X43_Y3_N28
\RAM|ram~105\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~105feeder_combout\,
	ena => \RAM|ram~778_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~105_q\);

-- Location: FF_X40_Y5_N26
\RAM|ram~137\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(2),
	sload => VCC,
	ena => \RAM|ram~814_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~137_q\);

-- Location: LABCELL_X40_Y5_N24
\RAM|ram~600\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~600_combout\ = ( \RAM|ram~137_q\ & ( \ROM|memROM~0_combout\ & ( (\ROM|memROM~58_combout\) # (\RAM|ram~121_q\) ) ) ) # ( !\RAM|ram~137_q\ & ( \ROM|memROM~0_combout\ & ( (\RAM|ram~121_q\ & !\ROM|memROM~58_combout\) ) ) ) # ( \RAM|ram~137_q\ & ( 
-- !\ROM|memROM~0_combout\ & ( (!\ROM|memROM~58_combout\ & (\RAM|ram~89_q\)) # (\ROM|memROM~58_combout\ & ((\RAM|ram~105_q\))) ) ) ) # ( !\RAM|ram~137_q\ & ( !\ROM|memROM~0_combout\ & ( (!\ROM|memROM~58_combout\ & (\RAM|ram~89_q\)) # (\ROM|memROM~58_combout\ 
-- & ((\RAM|ram~105_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111010100000101111100110000001100000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~89_q\,
	datab => \RAM|ALT_INV_ram~121_q\,
	datac => \ROM|ALT_INV_memROM~58_combout\,
	datad => \RAM|ALT_INV_ram~105_q\,
	datae => \RAM|ALT_INV_ram~137_q\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \RAM|ram~600_combout\);

-- Location: LABCELL_X40_Y5_N36
\RAM|ram~602\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~602_combout\ = ( \RAM|ram~598_combout\ & ( \RAM|ram~600_combout\ & ( (!\ROM|memROM~69_combout\) # ((!\ROM|memROM~76_combout\ & (\RAM|ram~599_combout\)) # (\ROM|memROM~76_combout\ & ((\RAM|ram~601_combout\)))) ) ) ) # ( !\RAM|ram~598_combout\ & ( 
-- \RAM|ram~600_combout\ & ( (!\ROM|memROM~76_combout\ & (\ROM|memROM~69_combout\ & (\RAM|ram~599_combout\))) # (\ROM|memROM~76_combout\ & ((!\ROM|memROM~69_combout\) # ((\RAM|ram~601_combout\)))) ) ) ) # ( \RAM|ram~598_combout\ & ( !\RAM|ram~600_combout\ & 
-- ( (!\ROM|memROM~76_combout\ & ((!\ROM|memROM~69_combout\) # ((\RAM|ram~599_combout\)))) # (\ROM|memROM~76_combout\ & (\ROM|memROM~69_combout\ & ((\RAM|ram~601_combout\)))) ) ) ) # ( !\RAM|ram~598_combout\ & ( !\RAM|ram~600_combout\ & ( 
-- (\ROM|memROM~69_combout\ & ((!\ROM|memROM~76_combout\ & (\RAM|ram~599_combout\)) # (\ROM|memROM~76_combout\ & ((\RAM|ram~601_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000010011100010101001101101000110010101111100111011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~76_combout\,
	datab => \ROM|ALT_INV_memROM~69_combout\,
	datac => \RAM|ALT_INV_ram~599_combout\,
	datad => \RAM|ALT_INV_ram~601_combout\,
	datae => \RAM|ALT_INV_ram~598_combout\,
	dataf => \RAM|ALT_INV_ram~600_combout\,
	combout => \RAM|ram~602_combout\);

-- Location: FF_X42_Y4_N25
\RAM|ram~369\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(2),
	sload => VCC,
	ena => \RAM|ram~744_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~369_q\);

-- Location: FF_X41_Y7_N40
\RAM|ram~337\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(2),
	sload => VCC,
	ena => \RAM|ram~712_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~337_q\);

-- Location: MLABCELL_X45_Y8_N39
\RAM|ram~497feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~497feeder_combout\ = ( \CPU|REG_A|DOUT\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG_A|ALT_INV_DOUT\(2),
	combout => \RAM|ram~497feeder_combout\);

-- Location: FF_X45_Y8_N41
\RAM|ram~497\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~497feeder_combout\,
	ena => \RAM|ram~752_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~497_q\);

-- Location: FF_X42_Y4_N50
\RAM|ram~465\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(2),
	sload => VCC,
	ena => \RAM|ram~720_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~465_q\);

-- Location: LABCELL_X39_Y6_N42
\RAM|ram~595\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~595_combout\ = ( \ROM|memROM~69_combout\ & ( \ROM|memROM~0_combout\ & ( \RAM|ram~497_q\ ) ) ) # ( !\ROM|memROM~69_combout\ & ( \ROM|memROM~0_combout\ & ( \RAM|ram~369_q\ ) ) ) # ( \ROM|memROM~69_combout\ & ( !\ROM|memROM~0_combout\ & ( 
-- \RAM|ram~465_q\ ) ) ) # ( !\ROM|memROM~69_combout\ & ( !\ROM|memROM~0_combout\ & ( \RAM|ram~337_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000001111111101010101010101010000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~369_q\,
	datab => \RAM|ALT_INV_ram~337_q\,
	datac => \RAM|ALT_INV_ram~497_q\,
	datad => \RAM|ALT_INV_ram~465_q\,
	datae => \ROM|ALT_INV_memROM~69_combout\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \RAM|ram~595_combout\);

-- Location: LABCELL_X39_Y2_N18
\RAM|ram~305feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~305feeder_combout\ = ( \CPU|REG_A|DOUT\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG_A|ALT_INV_DOUT\(2),
	combout => \RAM|ram~305feeder_combout\);

-- Location: FF_X39_Y2_N20
\RAM|ram~305\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~305feeder_combout\,
	ena => \RAM|ram~728_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~305_q\);

-- Location: FF_X35_Y4_N55
\RAM|ram~273\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(2),
	sload => VCC,
	ena => \RAM|ram~696_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~273_q\);

-- Location: FF_X39_Y6_N26
\RAM|ram~401\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(2),
	sload => VCC,
	ena => \RAM|ram~704_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~401_q\);

-- Location: FF_X37_Y4_N38
\RAM|ram~433\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(2),
	sload => VCC,
	ena => \RAM|ram~736_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~433_q\);

-- Location: MLABCELL_X37_Y4_N36
\RAM|ram~593\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~593_combout\ = ( \RAM|ram~433_q\ & ( \ROM|memROM~0_combout\ & ( (\ROM|memROM~69_combout\) # (\RAM|ram~305_q\) ) ) ) # ( !\RAM|ram~433_q\ & ( \ROM|memROM~0_combout\ & ( (\RAM|ram~305_q\ & !\ROM|memROM~69_combout\) ) ) ) # ( \RAM|ram~433_q\ & ( 
-- !\ROM|memROM~0_combout\ & ( (!\ROM|memROM~69_combout\ & (\RAM|ram~273_q\)) # (\ROM|memROM~69_combout\ & ((\RAM|ram~401_q\))) ) ) ) # ( !\RAM|ram~433_q\ & ( !\ROM|memROM~0_combout\ & ( (!\ROM|memROM~69_combout\ & (\RAM|ram~273_q\)) # 
-- (\ROM|memROM~69_combout\ & ((\RAM|ram~401_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001111001100110000111101010101000000000101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~305_q\,
	datab => \RAM|ALT_INV_ram~273_q\,
	datac => \RAM|ALT_INV_ram~401_q\,
	datad => \ROM|ALT_INV_memROM~69_combout\,
	datae => \RAM|ALT_INV_ram~433_q\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \RAM|ram~593_combout\);

-- Location: FF_X35_Y5_N5
\RAM|ram~289\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(2),
	sload => VCC,
	ena => \RAM|ram~760_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~289_q\);

-- Location: LABCELL_X43_Y1_N3
\RAM|ram~417feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~417feeder_combout\ = ( \CPU|REG_A|DOUT\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG_A|ALT_INV_DOUT\(2),
	combout => \RAM|ram~417feeder_combout\);

-- Location: FF_X43_Y1_N5
\RAM|ram~417\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~417feeder_combout\,
	ena => \RAM|ram~768_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~417_q\);

-- Location: FF_X41_Y2_N58
\RAM|ram~321\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(2),
	sload => VCC,
	ena => \RAM|ram~792_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~321_q\);

-- Location: FF_X37_Y3_N26
\RAM|ram~449\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(2),
	sload => VCC,
	ena => \RAM|ram~796_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~449_q\);

-- Location: MLABCELL_X37_Y3_N24
\RAM|ram~594\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~594_combout\ = ( \RAM|ram~449_q\ & ( \ROM|memROM~0_combout\ & ( (\ROM|memROM~69_combout\) # (\RAM|ram~321_q\) ) ) ) # ( !\RAM|ram~449_q\ & ( \ROM|memROM~0_combout\ & ( (\RAM|ram~321_q\ & !\ROM|memROM~69_combout\) ) ) ) # ( \RAM|ram~449_q\ & ( 
-- !\ROM|memROM~0_combout\ & ( (!\ROM|memROM~69_combout\ & (\RAM|ram~289_q\)) # (\ROM|memROM~69_combout\ & ((\RAM|ram~417_q\))) ) ) ) # ( !\RAM|ram~449_q\ & ( !\ROM|memROM~0_combout\ & ( (!\ROM|memROM~69_combout\ & (\RAM|ram~289_q\)) # 
-- (\ROM|memROM~69_combout\ & ((\RAM|ram~417_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110011010101010011001100001111000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~289_q\,
	datab => \RAM|ALT_INV_ram~417_q\,
	datac => \RAM|ALT_INV_ram~321_q\,
	datad => \ROM|ALT_INV_memROM~69_combout\,
	datae => \RAM|ALT_INV_ram~449_q\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \RAM|ram~594_combout\);

-- Location: LABCELL_X40_Y2_N54
\RAM|ram~353feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~353feeder_combout\ = ( \CPU|REG_A|DOUT\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG_A|ALT_INV_DOUT\(2),
	combout => \RAM|ram~353feeder_combout\);

-- Location: FF_X40_Y2_N55
\RAM|ram~353\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~353feeder_combout\,
	ena => \RAM|ram~776_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~353_q\);

-- Location: LABCELL_X39_Y4_N42
\RAM|ram~481feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~481feeder_combout\ = ( \CPU|REG_A|DOUT\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG_A|ALT_INV_DOUT\(2),
	combout => \RAM|ram~481feeder_combout\);

-- Location: FF_X39_Y4_N44
\RAM|ram~481\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~481feeder_combout\,
	ena => \RAM|ram~784_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~481_q\);

-- Location: FF_X39_Y4_N20
\RAM|ram~385\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(2),
	sload => VCC,
	ena => \RAM|ram~808_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~385_q\);

-- Location: FF_X39_Y4_N38
\RAM|ram~513\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(2),
	sload => VCC,
	ena => \RAM|ram~812_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~513_q\);

-- Location: LABCELL_X39_Y4_N36
\RAM|ram~596\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~596_combout\ = ( \RAM|ram~513_q\ & ( \ROM|memROM~0_combout\ & ( (\ROM|memROM~69_combout\) # (\RAM|ram~385_q\) ) ) ) # ( !\RAM|ram~513_q\ & ( \ROM|memROM~0_combout\ & ( (\RAM|ram~385_q\ & !\ROM|memROM~69_combout\) ) ) ) # ( \RAM|ram~513_q\ & ( 
-- !\ROM|memROM~0_combout\ & ( (!\ROM|memROM~69_combout\ & (\RAM|ram~353_q\)) # (\ROM|memROM~69_combout\ & ((\RAM|ram~481_q\))) ) ) ) # ( !\RAM|ram~513_q\ & ( !\ROM|memROM~0_combout\ & ( (!\ROM|memROM~69_combout\ & (\RAM|ram~353_q\)) # 
-- (\ROM|memROM~69_combout\ & ((\RAM|ram~481_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110011010101010011001100001111000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~353_q\,
	datab => \RAM|ALT_INV_ram~481_q\,
	datac => \RAM|ALT_INV_ram~385_q\,
	datad => \ROM|ALT_INV_memROM~69_combout\,
	datae => \RAM|ALT_INV_ram~513_q\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \RAM|ram~596_combout\);

-- Location: LABCELL_X40_Y5_N0
\RAM|ram~597\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~597_combout\ = ( \RAM|ram~594_combout\ & ( \RAM|ram~596_combout\ & ( ((!\ROM|memROM~76_combout\ & ((\RAM|ram~593_combout\))) # (\ROM|memROM~76_combout\ & (\RAM|ram~595_combout\))) # (\ROM|memROM~58_combout\) ) ) ) # ( !\RAM|ram~594_combout\ & ( 
-- \RAM|ram~596_combout\ & ( (!\ROM|memROM~76_combout\ & (!\ROM|memROM~58_combout\ & ((\RAM|ram~593_combout\)))) # (\ROM|memROM~76_combout\ & (((\RAM|ram~595_combout\)) # (\ROM|memROM~58_combout\))) ) ) ) # ( \RAM|ram~594_combout\ & ( !\RAM|ram~596_combout\ 
-- & ( (!\ROM|memROM~76_combout\ & (((\RAM|ram~593_combout\)) # (\ROM|memROM~58_combout\))) # (\ROM|memROM~76_combout\ & (!\ROM|memROM~58_combout\ & (\RAM|ram~595_combout\))) ) ) ) # ( !\RAM|ram~594_combout\ & ( !\RAM|ram~596_combout\ & ( 
-- (!\ROM|memROM~58_combout\ & ((!\ROM|memROM~76_combout\ & ((\RAM|ram~593_combout\))) # (\ROM|memROM~76_combout\ & (\RAM|ram~595_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100001001101010111000010101100111010011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~76_combout\,
	datab => \ROM|ALT_INV_memROM~58_combout\,
	datac => \RAM|ALT_INV_ram~595_combout\,
	datad => \RAM|ALT_INV_ram~593_combout\,
	datae => \RAM|ALT_INV_ram~594_combout\,
	dataf => \RAM|ALT_INV_ram~596_combout\,
	combout => \RAM|ram~597_combout\);

-- Location: FF_X44_Y5_N20
\RAM|ram~225\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(2),
	sload => VCC,
	ena => \RAM|ram~782_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~225_q\);

-- Location: LABCELL_X43_Y8_N48
\RAM|ram~193feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~193feeder_combout\ = ( \CPU|REG_A|DOUT\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG_A|ALT_INV_DOUT\(2),
	combout => \RAM|ram~193feeder_combout\);

-- Location: FF_X43_Y8_N49
\RAM|ram~193\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~193feeder_combout\,
	ena => \RAM|ram~794_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~193_q\);

-- Location: LABCELL_X40_Y8_N27
\RAM|ram~161feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~161feeder_combout\ = ( \CPU|REG_A|DOUT\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG_A|ALT_INV_DOUT\(2),
	combout => \RAM|ram~161feeder_combout\);

-- Location: FF_X40_Y8_N28
\RAM|ram~161\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~161feeder_combout\,
	ena => \RAM|ram~766_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~161_q\);

-- Location: FF_X44_Y5_N32
\RAM|ram~257\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(2),
	sload => VCC,
	ena => \RAM|ram~810_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~257_q\);

-- Location: LABCELL_X44_Y5_N30
\RAM|ram~591\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~591_combout\ = ( \RAM|ram~257_q\ & ( \ROM|memROM~0_combout\ & ( (\ROM|memROM~76_combout\) # (\RAM|ram~193_q\) ) ) ) # ( !\RAM|ram~257_q\ & ( \ROM|memROM~0_combout\ & ( (\RAM|ram~193_q\ & !\ROM|memROM~76_combout\) ) ) ) # ( \RAM|ram~257_q\ & ( 
-- !\ROM|memROM~0_combout\ & ( (!\ROM|memROM~76_combout\ & ((\RAM|ram~161_q\))) # (\ROM|memROM~76_combout\ & (\RAM|ram~225_q\)) ) ) ) # ( !\RAM|ram~257_q\ & ( !\ROM|memROM~0_combout\ & ( (!\ROM|memROM~76_combout\ & ((\RAM|ram~161_q\))) # 
-- (\ROM|memROM~76_combout\ & (\RAM|ram~225_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000001011111010100110000001100000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~225_q\,
	datab => \RAM|ALT_INV_ram~193_q\,
	datac => \ROM|ALT_INV_memROM~76_combout\,
	datad => \RAM|ALT_INV_ram~161_q\,
	datae => \RAM|ALT_INV_ram~257_q\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \RAM|ram~591_combout\);

-- Location: LABCELL_X40_Y8_N42
\RAM|ram~145feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~145feeder_combout\ = ( \CPU|REG_A|DOUT\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG_A|ALT_INV_DOUT\(2),
	combout => \RAM|ram~145feeder_combout\);

-- Location: FF_X40_Y8_N43
\RAM|ram~145\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~145feeder_combout\,
	ena => \RAM|ram~702_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~145_q\);

-- Location: FF_X37_Y6_N17
\RAM|ram~177\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(2),
	sload => VCC,
	ena => \RAM|ram~734_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~177_q\);

-- Location: FF_X42_Y6_N2
\RAM|ram~209\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(2),
	sload => VCC,
	ena => \RAM|ram~718_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~209_q\);

-- Location: FF_X42_Y6_N32
\RAM|ram~241\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(2),
	sload => VCC,
	ena => \RAM|ram~750_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~241_q\);

-- Location: MLABCELL_X42_Y6_N30
\RAM|ram~589\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~589_combout\ = ( \RAM|ram~241_q\ & ( \ROM|memROM~0_combout\ & ( (\RAM|ram~177_q\) # (\ROM|memROM~76_combout\) ) ) ) # ( !\RAM|ram~241_q\ & ( \ROM|memROM~0_combout\ & ( (!\ROM|memROM~76_combout\ & \RAM|ram~177_q\) ) ) ) # ( \RAM|ram~241_q\ & ( 
-- !\ROM|memROM~0_combout\ & ( (!\ROM|memROM~76_combout\ & (\RAM|ram~145_q\)) # (\ROM|memROM~76_combout\ & ((\RAM|ram~209_q\))) ) ) ) # ( !\RAM|ram~241_q\ & ( !\ROM|memROM~0_combout\ & ( (!\ROM|memROM~76_combout\ & (\RAM|ram~145_q\)) # 
-- (\ROM|memROM~76_combout\ & ((\RAM|ram~209_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001110111010001000111011100001100000011000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~145_q\,
	datab => \ROM|ALT_INV_memROM~76_combout\,
	datac => \RAM|ALT_INV_ram~177_q\,
	datad => \RAM|ALT_INV_ram~209_q\,
	datae => \RAM|ALT_INV_ram~241_q\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \RAM|ram~589_combout\);

-- Location: LABCELL_X39_Y2_N27
\RAM|ram~49feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~49feeder_combout\ = ( \CPU|REG_A|DOUT\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG_A|ALT_INV_DOUT\(2),
	combout => \RAM|ram~49feeder_combout\);

-- Location: FF_X39_Y2_N28
\RAM|ram~49\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~49feeder_combout\,
	ena => \RAM|ram~726_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~49_q\);

-- Location: FF_X41_Y4_N13
\RAM|ram~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(2),
	sload => VCC,
	ena => \RAM|ram~694_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~17_q\);

-- Location: FF_X43_Y6_N1
\RAM|ram~81\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(2),
	sload => VCC,
	ena => \RAM|ram~710_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~81_q\);

-- Location: FF_X37_Y2_N14
\RAM|ram~113\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(2),
	sload => VCC,
	ena => \RAM|ram~742_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~113_q\);

-- Location: MLABCELL_X37_Y2_N12
\RAM|ram~588\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~588_combout\ = ( \RAM|ram~113_q\ & ( \ROM|memROM~0_combout\ & ( (\ROM|memROM~76_combout\) # (\RAM|ram~49_q\) ) ) ) # ( !\RAM|ram~113_q\ & ( \ROM|memROM~0_combout\ & ( (\RAM|ram~49_q\ & !\ROM|memROM~76_combout\) ) ) ) # ( \RAM|ram~113_q\ & ( 
-- !\ROM|memROM~0_combout\ & ( (!\ROM|memROM~76_combout\ & (\RAM|ram~17_q\)) # (\ROM|memROM~76_combout\ & ((\RAM|ram~81_q\))) ) ) ) # ( !\RAM|ram~113_q\ & ( !\ROM|memROM~0_combout\ & ( (!\ROM|memROM~76_combout\ & (\RAM|ram~17_q\)) # (\ROM|memROM~76_combout\ 
-- & ((\RAM|ram~81_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111001100000011111101010000010100000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~49_q\,
	datab => \RAM|ALT_INV_ram~17_q\,
	datac => \ROM|ALT_INV_memROM~76_combout\,
	datad => \RAM|ALT_INV_ram~81_q\,
	datae => \RAM|ALT_INV_ram~113_q\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \RAM|ram~588_combout\);

-- Location: FF_X41_Y7_N19
\RAM|ram~97\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(2),
	sload => VCC,
	ena => \RAM|ram~774_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~97_q\);

-- Location: FF_X41_Y2_N25
\RAM|ram~65\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(2),
	sload => VCC,
	ena => \RAM|ram~790_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~65_q\);

-- Location: MLABCELL_X45_Y5_N21
\RAM|ram~33feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~33feeder_combout\ = ( \CPU|REG_A|DOUT\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG_A|ALT_INV_DOUT\(2),
	combout => \RAM|ram~33feeder_combout\);

-- Location: FF_X45_Y5_N22
\RAM|ram~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~33feeder_combout\,
	ena => \RAM|ram~758_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~33_q\);

-- Location: FF_X42_Y2_N32
\RAM|ram~129\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(2),
	sload => VCC,
	ena => \RAM|ram~806_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~129_q\);

-- Location: MLABCELL_X42_Y2_N30
\RAM|ram~590\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~590_combout\ = ( \RAM|ram~129_q\ & ( \ROM|memROM~0_combout\ & ( (\ROM|memROM~76_combout\) # (\RAM|ram~65_q\) ) ) ) # ( !\RAM|ram~129_q\ & ( \ROM|memROM~0_combout\ & ( (\RAM|ram~65_q\ & !\ROM|memROM~76_combout\) ) ) ) # ( \RAM|ram~129_q\ & ( 
-- !\ROM|memROM~0_combout\ & ( (!\ROM|memROM~76_combout\ & ((\RAM|ram~33_q\))) # (\ROM|memROM~76_combout\ & (\RAM|ram~97_q\)) ) ) ) # ( !\RAM|ram~129_q\ & ( !\ROM|memROM~0_combout\ & ( (!\ROM|memROM~76_combout\ & ((\RAM|ram~33_q\))) # 
-- (\ROM|memROM~76_combout\ & (\RAM|ram~97_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000011110101010100110011000000000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~97_q\,
	datab => \RAM|ALT_INV_ram~65_q\,
	datac => \RAM|ALT_INV_ram~33_q\,
	datad => \ROM|ALT_INV_memROM~76_combout\,
	datae => \RAM|ALT_INV_ram~129_q\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \RAM|ram~590_combout\);

-- Location: LABCELL_X40_Y5_N42
\RAM|ram~592\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~592_combout\ = ( \RAM|ram~588_combout\ & ( \RAM|ram~590_combout\ & ( (!\ROM|memROM~69_combout\) # ((!\ROM|memROM~58_combout\ & ((\RAM|ram~589_combout\))) # (\ROM|memROM~58_combout\ & (\RAM|ram~591_combout\))) ) ) ) # ( !\RAM|ram~588_combout\ & ( 
-- \RAM|ram~590_combout\ & ( (!\ROM|memROM~58_combout\ & (\ROM|memROM~69_combout\ & ((\RAM|ram~589_combout\)))) # (\ROM|memROM~58_combout\ & ((!\ROM|memROM~69_combout\) # ((\RAM|ram~591_combout\)))) ) ) ) # ( \RAM|ram~588_combout\ & ( !\RAM|ram~590_combout\ 
-- & ( (!\ROM|memROM~58_combout\ & ((!\ROM|memROM~69_combout\) # ((\RAM|ram~589_combout\)))) # (\ROM|memROM~58_combout\ & (\ROM|memROM~69_combout\ & (\RAM|ram~591_combout\))) ) ) ) # ( !\RAM|ram~588_combout\ & ( !\RAM|ram~590_combout\ & ( 
-- (\ROM|memROM~69_combout\ & ((!\ROM|memROM~58_combout\ & ((\RAM|ram~589_combout\))) # (\ROM|memROM~58_combout\ & (\RAM|ram~591_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011100010011010101101000101011001111100110111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~58_combout\,
	datab => \ROM|ALT_INV_memROM~69_combout\,
	datac => \RAM|ALT_INV_ram~591_combout\,
	datad => \RAM|ALT_INV_ram~589_combout\,
	datae => \RAM|ALT_INV_ram~588_combout\,
	dataf => \RAM|ALT_INV_ram~590_combout\,
	combout => \RAM|ram~592_combout\);

-- Location: LABCELL_X40_Y5_N18
\RAM|ram~608\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~608_combout\ = ( \RAM|ram~597_combout\ & ( \RAM|ram~592_combout\ & ( (!\ROM|memROM~153_combout\) # ((!\ROM|memROM~45_combout\ & ((\RAM|ram~602_combout\))) # (\ROM|memROM~45_combout\ & (\RAM|ram~607_combout\))) ) ) ) # ( !\RAM|ram~597_combout\ & ( 
-- \RAM|ram~592_combout\ & ( (!\ROM|memROM~153_combout\ & (((!\ROM|memROM~45_combout\)))) # (\ROM|memROM~153_combout\ & ((!\ROM|memROM~45_combout\ & ((\RAM|ram~602_combout\))) # (\ROM|memROM~45_combout\ & (\RAM|ram~607_combout\)))) ) ) ) # ( 
-- \RAM|ram~597_combout\ & ( !\RAM|ram~592_combout\ & ( (!\ROM|memROM~153_combout\ & (((\ROM|memROM~45_combout\)))) # (\ROM|memROM~153_combout\ & ((!\ROM|memROM~45_combout\ & ((\RAM|ram~602_combout\))) # (\ROM|memROM~45_combout\ & (\RAM|ram~607_combout\)))) 
-- ) ) ) # ( !\RAM|ram~597_combout\ & ( !\RAM|ram~592_combout\ & ( (\ROM|memROM~153_combout\ & ((!\ROM|memROM~45_combout\ & ((\RAM|ram~602_combout\))) # (\ROM|memROM~45_combout\ & (\RAM|ram~607_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100010001000000111101110111001111000100011100111111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~607_combout\,
	datab => \ROM|ALT_INV_memROM~153_combout\,
	datac => \RAM|ALT_INV_ram~602_combout\,
	datad => \ROM|ALT_INV_memROM~45_combout\,
	datae => \RAM|ALT_INV_ram~597_combout\,
	dataf => \RAM|ALT_INV_ram~592_combout\,
	combout => \RAM|ram~608_combout\);

-- Location: LABCELL_X40_Y5_N12
\CPU|MUX1|saida_MUX[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[2]~2_combout\ = ( \ENABLE_SWR~2_combout\ & ( \RAM|ram~608_combout\ & ( (!\CPU|DECODER|SEL_MUX~0_combout\ & ((\SW[2]~input_o\))) # (\CPU|DECODER|SEL_MUX~0_combout\ & (\ROM|memROM~0_combout\)) ) ) ) # ( !\ENABLE_SWR~2_combout\ & ( 
-- \RAM|ram~608_combout\ & ( (!\CPU|DECODER|SEL_MUX~0_combout\) # (\ROM|memROM~0_combout\) ) ) ) # ( \ENABLE_SWR~2_combout\ & ( !\RAM|ram~608_combout\ & ( (!\CPU|DECODER|SEL_MUX~0_combout\ & ((\SW[2]~input_o\))) # (\CPU|DECODER|SEL_MUX~0_combout\ & 
-- (\ROM|memROM~0_combout\)) ) ) ) # ( !\ENABLE_SWR~2_combout\ & ( !\RAM|ram~608_combout\ & ( (\ROM|memROM~0_combout\ & \CPU|DECODER|SEL_MUX~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000011110011001111111111001100110000111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \ALT_INV_SW[2]~input_o\,
	datad => \CPU|DECODER|ALT_INV_SEL_MUX~0_combout\,
	datae => \ALT_INV_ENABLE_SWR~2_combout\,
	dataf => \RAM|ALT_INV_ram~608_combout\,
	combout => \CPU|MUX1|saida_MUX[2]~2_combout\);

-- Location: LABCELL_X41_Y3_N39
\CPU|ULA1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~5_sumout\ = SUM(( \CPU|REG_A|DOUT\(3) ) + ( (!\CPU|DECODER|sinais_controle~0_combout\ & (((\CPU|MUX1|saida_MUX[3]~0_combout\)))) # (\CPU|DECODER|sinais_controle~0_combout\ & ((!\CPU|DECODER|OP_ULA[0]~2_combout\ & (\ROM|memROM~76_combout\)) 
-- # (\CPU|DECODER|OP_ULA[0]~2_combout\ & ((\CPU|MUX1|saida_MUX[3]~0_combout\))))) ) + ( \CPU|ULA1|Add0~14\ ))
-- \CPU|ULA1|Add0~6\ = CARRY(( \CPU|REG_A|DOUT\(3) ) + ( (!\CPU|DECODER|sinais_controle~0_combout\ & (((\CPU|MUX1|saida_MUX[3]~0_combout\)))) # (\CPU|DECODER|sinais_controle~0_combout\ & ((!\CPU|DECODER|OP_ULA[0]~2_combout\ & (\ROM|memROM~76_combout\)) # 
-- (\CPU|DECODER|OP_ULA[0]~2_combout\ & ((\CPU|MUX1|saida_MUX[3]~0_combout\))))) ) + ( \CPU|ULA1|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011110010000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~76_combout\,
	datab => \CPU|DECODER|ALT_INV_sinais_controle~0_combout\,
	datac => \CPU|DECODER|ALT_INV_OP_ULA[0]~2_combout\,
	datad => \CPU|REG_A|ALT_INV_DOUT\(3),
	dataf => \CPU|MUX1|ALT_INV_saida_MUX[3]~0_combout\,
	cin => \CPU|ULA1|Add0~14\,
	sumout => \CPU|ULA1|Add0~5_sumout\,
	cout => \CPU|ULA1|Add0~6\);

-- Location: LABCELL_X41_Y3_N12
\CPU|ULA1|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~5_sumout\ = SUM(( (!\CPU|DECODER|sinais_controle~0_combout\ & (((!\CPU|MUX1|saida_MUX[3]~0_combout\)))) # (\CPU|DECODER|sinais_controle~0_combout\ & ((!\CPU|DECODER|OP_ULA[0]~2_combout\ & (!\ROM|memROM~76_combout\)) # 
-- (\CPU|DECODER|OP_ULA[0]~2_combout\ & ((!\CPU|MUX1|saida_MUX[3]~0_combout\))))) ) + ( \CPU|REG_A|DOUT\(3) ) + ( \CPU|ULA1|Add1~14\ ))
-- \CPU|ULA1|Add1~6\ = CARRY(( (!\CPU|DECODER|sinais_controle~0_combout\ & (((!\CPU|MUX1|saida_MUX[3]~0_combout\)))) # (\CPU|DECODER|sinais_controle~0_combout\ & ((!\CPU|DECODER|OP_ULA[0]~2_combout\ & (!\ROM|memROM~76_combout\)) # 
-- (\CPU|DECODER|OP_ULA[0]~2_combout\ & ((!\CPU|MUX1|saida_MUX[3]~0_combout\))))) ) + ( \CPU|REG_A|DOUT\(3) ) + ( \CPU|ULA1|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111101101000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_sinais_controle~0_combout\,
	datab => \CPU|DECODER|ALT_INV_OP_ULA[0]~2_combout\,
	datac => \ROM|ALT_INV_memROM~76_combout\,
	datad => \CPU|MUX1|ALT_INV_saida_MUX[3]~0_combout\,
	dataf => \CPU|REG_A|ALT_INV_DOUT\(3),
	cin => \CPU|ULA1|Add1~14\,
	sumout => \CPU|ULA1|Add1~5_sumout\,
	cout => \CPU|ULA1|Add1~6\);

-- Location: MLABCELL_X42_Y3_N51
\CPU|ULA1|saida[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[3]~1_combout\ = ( \CPU|ULA1|Add1~5_sumout\ & ( (!\CPU|DECODER|OP_ULA[1]~0_combout\) # ((!\CPU|DECODER|SEL_MUX~0_combout\ & (\CPU|MUX1|saida_MUX[3]~0_combout\)) # (\CPU|DECODER|SEL_MUX~0_combout\ & ((\ROM|memROM~76_combout\)))) ) ) # ( 
-- !\CPU|ULA1|Add1~5_sumout\ & ( (\CPU|DECODER|OP_ULA[1]~0_combout\ & ((!\CPU|DECODER|SEL_MUX~0_combout\ & (\CPU|MUX1|saida_MUX[3]~0_combout\)) # (\CPU|DECODER|SEL_MUX~0_combout\ & ((\ROM|memROM~76_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000111000000100000011111110010111101111111001011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_SEL_MUX~0_combout\,
	datab => \CPU|MUX1|ALT_INV_saida_MUX[3]~0_combout\,
	datac => \CPU|DECODER|ALT_INV_OP_ULA[1]~0_combout\,
	datad => \ROM|ALT_INV_memROM~76_combout\,
	dataf => \CPU|ULA1|ALT_INV_Add1~5_sumout\,
	combout => \CPU|ULA1|saida[3]~1_combout\);

-- Location: FF_X41_Y3_N41
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
	sload => \CPU|DECODER|OP_ULA[0]~1_combout\,
	ena => \CPU|DECODER|HAB_A~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_A|DOUT\(3));

-- Location: LABCELL_X41_Y3_N42
\CPU|ULA1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~17_sumout\ = SUM(( \CPU|REG_A|DOUT\(4) ) + ( (!\CPU|DECODER|OP_ULA[0]~2_combout\ & ((!\CPU|DECODER|sinais_controle~0_combout\ & ((\CPU|MUX1|saida_MUX[4]~3_combout\))) # (\CPU|DECODER|sinais_controle~0_combout\ & (\ROM|memROM~69_combout\)))) 
-- # (\CPU|DECODER|OP_ULA[0]~2_combout\ & (((\CPU|MUX1|saida_MUX[4]~3_combout\)))) ) + ( \CPU|ULA1|Add0~6\ ))
-- \CPU|ULA1|Add0~18\ = CARRY(( \CPU|REG_A|DOUT\(4) ) + ( (!\CPU|DECODER|OP_ULA[0]~2_combout\ & ((!\CPU|DECODER|sinais_controle~0_combout\ & ((\CPU|MUX1|saida_MUX[4]~3_combout\))) # (\CPU|DECODER|sinais_controle~0_combout\ & (\ROM|memROM~69_combout\)))) # 
-- (\CPU|DECODER|OP_ULA[0]~2_combout\ & (((\CPU|MUX1|saida_MUX[4]~3_combout\)))) ) + ( \CPU|ULA1|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111010000100000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_OP_ULA[0]~2_combout\,
	datab => \ROM|ALT_INV_memROM~69_combout\,
	datac => \CPU|DECODER|ALT_INV_sinais_controle~0_combout\,
	datad => \CPU|REG_A|ALT_INV_DOUT\(4),
	dataf => \CPU|MUX1|ALT_INV_saida_MUX[4]~3_combout\,
	cin => \CPU|ULA1|Add0~6\,
	sumout => \CPU|ULA1|Add0~17_sumout\,
	cout => \CPU|ULA1|Add0~18\);

-- Location: MLABCELL_X42_Y3_N9
\CPU|ULA1|saida[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[4]~4_combout\ = ( \CPU|ULA1|Add1~17_sumout\ & ( (!\CPU|DECODER|OP_ULA[1]~0_combout\) # ((!\CPU|DECODER|SEL_MUX~0_combout\ & (\CPU|MUX1|saida_MUX[4]~3_combout\)) # (\CPU|DECODER|SEL_MUX~0_combout\ & ((\ROM|memROM~69_combout\)))) ) ) # ( 
-- !\CPU|ULA1|Add1~17_sumout\ & ( (\CPU|DECODER|OP_ULA[1]~0_combout\ & ((!\CPU|DECODER|SEL_MUX~0_combout\ & (\CPU|MUX1|saida_MUX[4]~3_combout\)) # (\CPU|DECODER|SEL_MUX~0_combout\ & ((\ROM|memROM~69_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000011000001010000001111110101111100111111010111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MUX1|ALT_INV_saida_MUX[4]~3_combout\,
	datab => \ROM|ALT_INV_memROM~69_combout\,
	datac => \CPU|DECODER|ALT_INV_OP_ULA[1]~0_combout\,
	datad => \CPU|DECODER|ALT_INV_SEL_MUX~0_combout\,
	dataf => \CPU|ULA1|ALT_INV_Add1~17_sumout\,
	combout => \CPU|ULA1|saida[4]~4_combout\);

-- Location: FF_X41_Y3_N44
\CPU|REG_A|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|ULA1|Add0~17_sumout\,
	asdata => \CPU|ULA1|saida[4]~4_combout\,
	sload => \CPU|DECODER|OP_ULA[0]~1_combout\,
	ena => \CPU|DECODER|HAB_A~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_A|DOUT\(4));

-- Location: FF_X39_Y2_N10
\RAM|ram~307\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(4),
	sload => VCC,
	ena => \RAM|ram~728_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~307_q\);

-- Location: FF_X41_Y6_N4
\RAM|ram~315\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(4),
	sload => VCC,
	ena => \RAM|ram~732_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~315_q\);

-- Location: FF_X42_Y4_N11
\RAM|ram~371\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(4),
	sload => VCC,
	ena => \RAM|ram~744_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~371_q\);

-- Location: FF_X41_Y6_N26
\RAM|ram~379\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(4),
	sload => VCC,
	ena => \RAM|ram~748_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~379_q\);

-- Location: LABCELL_X41_Y6_N24
\RAM|ram~615\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~615_combout\ = ( \RAM|ram~379_q\ & ( \ROM|memROM~76_combout\ & ( (\ROM|memROM~153_combout\) # (\RAM|ram~371_q\) ) ) ) # ( !\RAM|ram~379_q\ & ( \ROM|memROM~76_combout\ & ( (\RAM|ram~371_q\ & !\ROM|memROM~153_combout\) ) ) ) # ( \RAM|ram~379_q\ & ( 
-- !\ROM|memROM~76_combout\ & ( (!\ROM|memROM~153_combout\ & (\RAM|ram~307_q\)) # (\ROM|memROM~153_combout\ & ((\RAM|ram~315_q\))) ) ) ) # ( !\RAM|ram~379_q\ & ( !\ROM|memROM~76_combout\ & ( (!\ROM|memROM~153_combout\ & (\RAM|ram~307_q\)) # 
-- (\ROM|memROM~153_combout\ & ((\RAM|ram~315_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110011010101010011001100001111000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~307_q\,
	datab => \RAM|ALT_INV_ram~315_q\,
	datac => \RAM|ALT_INV_ram~371_q\,
	datad => \ROM|ALT_INV_memROM~153_combout\,
	datae => \RAM|ALT_INV_ram~379_q\,
	dataf => \ROM|ALT_INV_memROM~76_combout\,
	combout => \RAM|ram~615_combout\);

-- Location: FF_X42_Y4_N46
\RAM|ram~499\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(4),
	sload => VCC,
	ena => \RAM|ram~752_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~499_q\);

-- Location: FF_X40_Y6_N19
\RAM|ram~507\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(4),
	sload => VCC,
	ena => \RAM|ram~756_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~507_q\);

-- Location: FF_X37_Y4_N40
\RAM|ram~435\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(4),
	sload => VCC,
	ena => \RAM|ram~736_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~435_q\);

-- Location: FF_X40_Y6_N26
\RAM|ram~443\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(4),
	sload => VCC,
	ena => \RAM|ram~740_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~443_q\);

-- Location: LABCELL_X41_Y6_N45
\RAM|ram~617\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~617_combout\ = ( \ROM|memROM~76_combout\ & ( \RAM|ram~443_q\ & ( (!\ROM|memROM~153_combout\ & (\RAM|ram~499_q\)) # (\ROM|memROM~153_combout\ & ((\RAM|ram~507_q\))) ) ) ) # ( !\ROM|memROM~76_combout\ & ( \RAM|ram~443_q\ & ( (\RAM|ram~435_q\) # 
-- (\ROM|memROM~153_combout\) ) ) ) # ( \ROM|memROM~76_combout\ & ( !\RAM|ram~443_q\ & ( (!\ROM|memROM~153_combout\ & (\RAM|ram~499_q\)) # (\ROM|memROM~153_combout\ & ((\RAM|ram~507_q\))) ) ) ) # ( !\ROM|memROM~76_combout\ & ( !\RAM|ram~443_q\ & ( 
-- (!\ROM|memROM~153_combout\ & \RAM|ram~435_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000010100110101001100001111111111110101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~499_q\,
	datab => \RAM|ALT_INV_ram~507_q\,
	datac => \ROM|ALT_INV_memROM~153_combout\,
	datad => \RAM|ALT_INV_ram~435_q\,
	datae => \ROM|ALT_INV_memROM~76_combout\,
	dataf => \RAM|ALT_INV_ram~443_q\,
	combout => \RAM|ram~617_combout\);

-- Location: FF_X39_Y6_N5
\RAM|ram~403\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(4),
	sload => VCC,
	ena => \RAM|ram~704_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~403_q\);

-- Location: LABCELL_X39_Y6_N33
\RAM|ram~411feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~411feeder_combout\ = \CPU|REG_A|DOUT\(4)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|REG_A|ALT_INV_DOUT\(4),
	combout => \RAM|ram~411feeder_combout\);

-- Location: FF_X39_Y6_N34
\RAM|ram~411\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~411feeder_combout\,
	ena => \RAM|ram~708_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~411_q\);

-- Location: FF_X40_Y3_N53
\RAM|ram~467\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(4),
	sload => VCC,
	ena => \RAM|ram~720_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~467_q\);

-- Location: FF_X39_Y6_N20
\RAM|ram~475\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(4),
	sload => VCC,
	ena => \RAM|ram~724_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~475_q\);

-- Location: LABCELL_X39_Y6_N18
\RAM|ram~616\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~616_combout\ = ( \RAM|ram~475_q\ & ( \ROM|memROM~76_combout\ & ( (\ROM|memROM~153_combout\) # (\RAM|ram~467_q\) ) ) ) # ( !\RAM|ram~475_q\ & ( \ROM|memROM~76_combout\ & ( (\RAM|ram~467_q\ & !\ROM|memROM~153_combout\) ) ) ) # ( \RAM|ram~475_q\ & ( 
-- !\ROM|memROM~76_combout\ & ( (!\ROM|memROM~153_combout\ & (\RAM|ram~403_q\)) # (\ROM|memROM~153_combout\ & ((\RAM|ram~411_q\))) ) ) ) # ( !\RAM|ram~475_q\ & ( !\ROM|memROM~76_combout\ & ( (!\ROM|memROM~153_combout\ & (\RAM|ram~403_q\)) # 
-- (\ROM|memROM~153_combout\ & ((\RAM|ram~411_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110011010101010011001100001111000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~403_q\,
	datab => \RAM|ALT_INV_ram~411_q\,
	datac => \RAM|ALT_INV_ram~467_q\,
	datad => \ROM|ALT_INV_memROM~153_combout\,
	datae => \RAM|ALT_INV_ram~475_q\,
	dataf => \ROM|ALT_INV_memROM~76_combout\,
	combout => \RAM|ram~616_combout\);

-- Location: LABCELL_X41_Y7_N9
\RAM|ram~339feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~339feeder_combout\ = ( \CPU|REG_A|DOUT\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG_A|ALT_INV_DOUT\(4),
	combout => \RAM|ram~339feeder_combout\);

-- Location: FF_X41_Y7_N10
\RAM|ram~339\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~339feeder_combout\,
	ena => \RAM|ram~712_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~339_q\);

-- Location: FF_X36_Y5_N4
\RAM|ram~275\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(4),
	sload => VCC,
	ena => \RAM|ram~696_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~275_q\);

-- Location: FF_X36_Y5_N46
\RAM|ram~283\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(4),
	sload => VCC,
	ena => \RAM|ram~700_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~283_q\);

-- Location: FF_X39_Y5_N8
\RAM|ram~347\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(4),
	sload => VCC,
	ena => \RAM|ram~716_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~347_q\);

-- Location: LABCELL_X39_Y5_N6
\RAM|ram~614\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~614_combout\ = ( \RAM|ram~347_q\ & ( \ROM|memROM~76_combout\ & ( (\ROM|memROM~153_combout\) # (\RAM|ram~339_q\) ) ) ) # ( !\RAM|ram~347_q\ & ( \ROM|memROM~76_combout\ & ( (\RAM|ram~339_q\ & !\ROM|memROM~153_combout\) ) ) ) # ( \RAM|ram~347_q\ & ( 
-- !\ROM|memROM~76_combout\ & ( (!\ROM|memROM~153_combout\ & (\RAM|ram~275_q\)) # (\ROM|memROM~153_combout\ & ((\RAM|ram~283_q\))) ) ) ) # ( !\RAM|ram~347_q\ & ( !\ROM|memROM~76_combout\ & ( (!\ROM|memROM~153_combout\ & (\RAM|ram~275_q\)) # 
-- (\ROM|memROM~153_combout\ & ((\RAM|ram~283_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111001100000011111101010000010100000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~339_q\,
	datab => \RAM|ALT_INV_ram~275_q\,
	datac => \ROM|ALT_INV_memROM~153_combout\,
	datad => \RAM|ALT_INV_ram~283_q\,
	datae => \RAM|ALT_INV_ram~347_q\,
	dataf => \ROM|ALT_INV_memROM~76_combout\,
	combout => \RAM|ram~614_combout\);

-- Location: MLABCELL_X42_Y3_N0
\RAM|ram~618\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~618_combout\ = ( \RAM|ram~616_combout\ & ( \RAM|ram~614_combout\ & ( (!\ROM|memROM~0_combout\) # ((!\ROM|memROM~69_combout\ & (\RAM|ram~615_combout\)) # (\ROM|memROM~69_combout\ & ((\RAM|ram~617_combout\)))) ) ) ) # ( !\RAM|ram~616_combout\ & ( 
-- \RAM|ram~614_combout\ & ( (!\ROM|memROM~69_combout\ & (((!\ROM|memROM~0_combout\)) # (\RAM|ram~615_combout\))) # (\ROM|memROM~69_combout\ & (((\RAM|ram~617_combout\ & \ROM|memROM~0_combout\)))) ) ) ) # ( \RAM|ram~616_combout\ & ( !\RAM|ram~614_combout\ & 
-- ( (!\ROM|memROM~69_combout\ & (\RAM|ram~615_combout\ & ((\ROM|memROM~0_combout\)))) # (\ROM|memROM~69_combout\ & (((!\ROM|memROM~0_combout\) # (\RAM|ram~617_combout\)))) ) ) ) # ( !\RAM|ram~616_combout\ & ( !\RAM|ram~614_combout\ & ( 
-- (\ROM|memROM~0_combout\ & ((!\ROM|memROM~69_combout\ & (\RAM|ram~615_combout\)) # (\ROM|memROM~69_combout\ & ((\RAM|ram~617_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000111001100110100011111001100010001111111111101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~615_combout\,
	datab => \ROM|ALT_INV_memROM~69_combout\,
	datac => \RAM|ALT_INV_ram~617_combout\,
	datad => \ROM|ALT_INV_memROM~0_combout\,
	datae => \RAM|ALT_INV_ram~616_combout\,
	dataf => \RAM|ALT_INV_ram~614_combout\,
	combout => \RAM|ram~618_combout\);

-- Location: LABCELL_X39_Y2_N36
\RAM|ram~51feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~51feeder_combout\ = ( \CPU|REG_A|DOUT\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG_A|ALT_INV_DOUT\(4),
	combout => \RAM|ram~51feeder_combout\);

-- Location: FF_X39_Y2_N37
\RAM|ram~51\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~51feeder_combout\,
	ena => \RAM|ram~726_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~51_q\);

-- Location: FF_X39_Y5_N58
\RAM|ram~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(4),
	sload => VCC,
	ena => \RAM|ram~698_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~27_q\);

-- Location: FF_X41_Y4_N34
\RAM|ram~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(4),
	sload => VCC,
	ena => \RAM|ram~694_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~19_q\);

-- Location: FF_X34_Y6_N37
\RAM|ram~59\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(4),
	sload => VCC,
	ena => \RAM|ram~730_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~59_q\);

-- Location: MLABCELL_X42_Y5_N9
\RAM|ram~609\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~609_combout\ = ( \ROM|memROM~153_combout\ & ( \ROM|memROM~0_combout\ & ( \RAM|ram~59_q\ ) ) ) # ( !\ROM|memROM~153_combout\ & ( \ROM|memROM~0_combout\ & ( \RAM|ram~51_q\ ) ) ) # ( \ROM|memROM~153_combout\ & ( !\ROM|memROM~0_combout\ & ( 
-- \RAM|ram~27_q\ ) ) ) # ( !\ROM|memROM~153_combout\ & ( !\ROM|memROM~0_combout\ & ( \RAM|ram~19_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111001100110011001101010101010101010000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~51_q\,
	datab => \RAM|ALT_INV_ram~27_q\,
	datac => \RAM|ALT_INV_ram~19_q\,
	datad => \RAM|ALT_INV_ram~59_q\,
	datae => \ROM|ALT_INV_memROM~153_combout\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \RAM|ram~609_combout\);

-- Location: FF_X44_Y4_N22
\RAM|ram~219\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(4),
	sload => VCC,
	ena => \RAM|ram~722_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~219_q\);

-- Location: FF_X42_Y6_N19
\RAM|ram~211\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(4),
	sload => VCC,
	ena => \RAM|ram~718_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~211_q\);

-- Location: FF_X42_Y6_N40
\RAM|ram~243\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(4),
	sload => VCC,
	ena => \RAM|ram~750_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~243_q\);

-- Location: FF_X43_Y6_N14
\RAM|ram~251\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(4),
	sload => VCC,
	ena => \RAM|ram~754_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~251_q\);

-- Location: LABCELL_X43_Y6_N12
\RAM|ram~612\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~612_combout\ = ( \RAM|ram~251_q\ & ( \ROM|memROM~0_combout\ & ( (\ROM|memROM~153_combout\) # (\RAM|ram~243_q\) ) ) ) # ( !\RAM|ram~251_q\ & ( \ROM|memROM~0_combout\ & ( (\RAM|ram~243_q\ & !\ROM|memROM~153_combout\) ) ) ) # ( \RAM|ram~251_q\ & ( 
-- !\ROM|memROM~0_combout\ & ( (!\ROM|memROM~153_combout\ & ((\RAM|ram~211_q\))) # (\ROM|memROM~153_combout\ & (\RAM|ram~219_q\)) ) ) ) # ( !\RAM|ram~251_q\ & ( !\ROM|memROM~0_combout\ & ( (!\ROM|memROM~153_combout\ & ((\RAM|ram~211_q\))) # 
-- (\ROM|memROM~153_combout\ & (\RAM|ram~219_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101010101001100110101010100001111000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~219_q\,
	datab => \RAM|ALT_INV_ram~211_q\,
	datac => \RAM|ALT_INV_ram~243_q\,
	datad => \ROM|ALT_INV_memROM~153_combout\,
	datae => \RAM|ALT_INV_ram~251_q\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \RAM|ram~612_combout\);

-- Location: LABCELL_X43_Y6_N48
\RAM|ram~83feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~83feeder_combout\ = ( \CPU|REG_A|DOUT\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG_A|ALT_INV_DOUT\(4),
	combout => \RAM|ram~83feeder_combout\);

-- Location: FF_X43_Y6_N50
\RAM|ram~83\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~83feeder_combout\,
	ena => \RAM|ram~710_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~83_q\);

-- Location: FF_X45_Y5_N49
\RAM|ram~91\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(4),
	sload => VCC,
	ena => \RAM|ram~714_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~91_q\);

-- Location: FF_X42_Y2_N13
\RAM|ram~115\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(4),
	sload => VCC,
	ena => \RAM|ram~742_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~115_q\);

-- Location: FF_X43_Y6_N20
\RAM|ram~123\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(4),
	sload => VCC,
	ena => \RAM|ram~746_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~123_q\);

-- Location: LABCELL_X43_Y6_N18
\RAM|ram~611\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~611_combout\ = ( \RAM|ram~123_q\ & ( \ROM|memROM~0_combout\ & ( (\ROM|memROM~153_combout\) # (\RAM|ram~115_q\) ) ) ) # ( !\RAM|ram~123_q\ & ( \ROM|memROM~0_combout\ & ( (\RAM|ram~115_q\ & !\ROM|memROM~153_combout\) ) ) ) # ( \RAM|ram~123_q\ & ( 
-- !\ROM|memROM~0_combout\ & ( (!\ROM|memROM~153_combout\ & (\RAM|ram~83_q\)) # (\ROM|memROM~153_combout\ & ((\RAM|ram~91_q\))) ) ) ) # ( !\RAM|ram~123_q\ & ( !\ROM|memROM~0_combout\ & ( (!\ROM|memROM~153_combout\ & (\RAM|ram~83_q\)) # 
-- (\ROM|memROM~153_combout\ & ((\RAM|ram~91_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110011010101010011001100001111000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~83_q\,
	datab => \RAM|ALT_INV_ram~91_q\,
	datac => \RAM|ALT_INV_ram~115_q\,
	datad => \ROM|ALT_INV_memROM~153_combout\,
	datae => \RAM|ALT_INV_ram~123_q\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \RAM|ram~611_combout\);

-- Location: FF_X40_Y8_N46
\RAM|ram~147\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(4),
	sload => VCC,
	ena => \RAM|ram~702_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~147_q\);

-- Location: FF_X40_Y7_N28
\RAM|ram~179\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(4),
	sload => VCC,
	ena => \RAM|ram~734_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~179_q\);

-- Location: LABCELL_X44_Y6_N36
\RAM|ram~155feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~155feeder_combout\ = ( \CPU|REG_A|DOUT\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG_A|ALT_INV_DOUT\(4),
	combout => \RAM|ram~155feeder_combout\);

-- Location: FF_X44_Y6_N37
\RAM|ram~155\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~155feeder_combout\,
	ena => \RAM|ram~706_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~155_q\);

-- Location: FF_X42_Y7_N38
\RAM|ram~187\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(4),
	sload => VCC,
	ena => \RAM|ram~738_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~187_q\);

-- Location: MLABCELL_X42_Y7_N36
\RAM|ram~610\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~610_combout\ = ( \RAM|ram~187_q\ & ( \ROM|memROM~0_combout\ & ( (\ROM|memROM~153_combout\) # (\RAM|ram~179_q\) ) ) ) # ( !\RAM|ram~187_q\ & ( \ROM|memROM~0_combout\ & ( (\RAM|ram~179_q\ & !\ROM|memROM~153_combout\) ) ) ) # ( \RAM|ram~187_q\ & ( 
-- !\ROM|memROM~0_combout\ & ( (!\ROM|memROM~153_combout\ & (\RAM|ram~147_q\)) # (\ROM|memROM~153_combout\ & ((\RAM|ram~155_q\))) ) ) ) # ( !\RAM|ram~187_q\ & ( !\ROM|memROM~0_combout\ & ( (!\ROM|memROM~153_combout\ & (\RAM|ram~147_q\)) # 
-- (\ROM|memROM~153_combout\ & ((\RAM|ram~155_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111010100000101111100110000001100000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~147_q\,
	datab => \RAM|ALT_INV_ram~179_q\,
	datac => \ROM|ALT_INV_memROM~153_combout\,
	datad => \RAM|ALT_INV_ram~155_q\,
	datae => \RAM|ALT_INV_ram~187_q\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \RAM|ram~610_combout\);

-- Location: MLABCELL_X42_Y3_N24
\RAM|ram~613\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~613_combout\ = ( \RAM|ram~611_combout\ & ( \RAM|ram~610_combout\ & ( (!\ROM|memROM~76_combout\ & (((\ROM|memROM~69_combout\)) # (\RAM|ram~609_combout\))) # (\ROM|memROM~76_combout\ & (((!\ROM|memROM~69_combout\) # (\RAM|ram~612_combout\)))) ) ) ) 
-- # ( !\RAM|ram~611_combout\ & ( \RAM|ram~610_combout\ & ( (!\ROM|memROM~76_combout\ & (((\ROM|memROM~69_combout\)) # (\RAM|ram~609_combout\))) # (\ROM|memROM~76_combout\ & (((\RAM|ram~612_combout\ & \ROM|memROM~69_combout\)))) ) ) ) # ( 
-- \RAM|ram~611_combout\ & ( !\RAM|ram~610_combout\ & ( (!\ROM|memROM~76_combout\ & (\RAM|ram~609_combout\ & ((!\ROM|memROM~69_combout\)))) # (\ROM|memROM~76_combout\ & (((!\ROM|memROM~69_combout\) # (\RAM|ram~612_combout\)))) ) ) ) # ( 
-- !\RAM|ram~611_combout\ & ( !\RAM|ram~610_combout\ & ( (!\ROM|memROM~76_combout\ & (\RAM|ram~609_combout\ & ((!\ROM|memROM~69_combout\)))) # (\ROM|memROM~76_combout\ & (((\RAM|ram~612_combout\ & \ROM|memROM~69_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000000011011101110000001101000100110011110111011111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~609_combout\,
	datab => \ROM|ALT_INV_memROM~76_combout\,
	datac => \RAM|ALT_INV_ram~612_combout\,
	datad => \ROM|ALT_INV_memROM~69_combout\,
	datae => \RAM|ALT_INV_ram~611_combout\,
	dataf => \RAM|ALT_INV_ram~610_combout\,
	combout => \RAM|ram~613_combout\);

-- Location: FF_X39_Y4_N14
\RAM|ram~515\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(4),
	sload => VCC,
	ena => \RAM|ram~812_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~515_q\);

-- Location: FF_X34_Y3_N37
\RAM|ram~483\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(4),
	sload => VCC,
	ena => \RAM|ram~784_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~483_q\);

-- Location: FF_X34_Y4_N10
\RAM|ram~491\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(4),
	sload => VCC,
	ena => \RAM|ram~788_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~491_q\);

-- Location: FF_X42_Y3_N38
\RAM|ram~523\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(4),
	sload => VCC,
	ena => \RAM|ram~820_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~523_q\);

-- Location: MLABCELL_X42_Y3_N36
\RAM|ram~627\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~627_combout\ = ( \RAM|ram~523_q\ & ( \ROM|memROM~0_combout\ & ( (\ROM|memROM~153_combout\) # (\RAM|ram~515_q\) ) ) ) # ( !\RAM|ram~523_q\ & ( \ROM|memROM~0_combout\ & ( (\RAM|ram~515_q\ & !\ROM|memROM~153_combout\) ) ) ) # ( \RAM|ram~523_q\ & ( 
-- !\ROM|memROM~0_combout\ & ( (!\ROM|memROM~153_combout\ & (\RAM|ram~483_q\)) # (\ROM|memROM~153_combout\ & ((\RAM|ram~491_q\))) ) ) ) # ( !\RAM|ram~523_q\ & ( !\ROM|memROM~0_combout\ & ( (!\ROM|memROM~153_combout\ & (\RAM|ram~483_q\)) # 
-- (\ROM|memROM~153_combout\ & ((\RAM|ram~491_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111001100000011111101010000010100000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~515_q\,
	datab => \RAM|ALT_INV_ram~483_q\,
	datac => \ROM|ALT_INV_memROM~153_combout\,
	datad => \RAM|ALT_INV_ram~491_q\,
	datae => \RAM|ALT_INV_ram~523_q\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \RAM|ram~627_combout\);

-- Location: FF_X39_Y7_N58
\RAM|ram~363\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(4),
	sload => VCC,
	ena => \RAM|ram~780_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~363_q\);

-- Location: FF_X42_Y3_N17
\RAM|ram~387\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(4),
	sload => VCC,
	ena => \RAM|ram~808_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~387_q\);

-- Location: FF_X39_Y7_N19
\RAM|ram~355\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(4),
	sload => VCC,
	ena => \RAM|ram~776_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~355_q\);

-- Location: FF_X42_Y3_N44
\RAM|ram~395\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(4),
	sload => VCC,
	ena => \RAM|ram~816_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~395_q\);

-- Location: MLABCELL_X42_Y3_N42
\RAM|ram~626\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~626_combout\ = ( \RAM|ram~395_q\ & ( \ROM|memROM~0_combout\ & ( (\ROM|memROM~153_combout\) # (\RAM|ram~387_q\) ) ) ) # ( !\RAM|ram~395_q\ & ( \ROM|memROM~0_combout\ & ( (\RAM|ram~387_q\ & !\ROM|memROM~153_combout\) ) ) ) # ( \RAM|ram~395_q\ & ( 
-- !\ROM|memROM~0_combout\ & ( (!\ROM|memROM~153_combout\ & ((\RAM|ram~355_q\))) # (\ROM|memROM~153_combout\ & (\RAM|ram~363_q\)) ) ) ) # ( !\RAM|ram~395_q\ & ( !\ROM|memROM~0_combout\ & ( (!\ROM|memROM~153_combout\ & ((\RAM|ram~355_q\))) # 
-- (\ROM|memROM~153_combout\ & (\RAM|ram~363_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000001011111010100110000001100000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~363_q\,
	datab => \RAM|ALT_INV_ram~387_q\,
	datac => \ROM|ALT_INV_memROM~153_combout\,
	datad => \RAM|ALT_INV_ram~355_q\,
	datae => \RAM|ALT_INV_ram~395_q\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \RAM|ram~626_combout\);

-- Location: FF_X36_Y7_N46
\RAM|ram~419\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(4),
	sload => VCC,
	ena => \RAM|ram~768_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~419_q\);

-- Location: MLABCELL_X34_Y3_N42
\RAM|ram~427feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~427feeder_combout\ = ( \CPU|REG_A|DOUT\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG_A|ALT_INV_DOUT\(4),
	combout => \RAM|ram~427feeder_combout\);

-- Location: FF_X34_Y3_N43
\RAM|ram~427\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~427feeder_combout\,
	ena => \RAM|ram~772_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~427_q\);

-- Location: FF_X37_Y3_N41
\RAM|ram~451\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(4),
	sload => VCC,
	ena => \RAM|ram~796_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~451_q\);

-- Location: FF_X37_Y3_N2
\RAM|ram~459\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(4),
	sload => VCC,
	ena => \RAM|ram~804_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~459_q\);

-- Location: MLABCELL_X37_Y3_N0
\RAM|ram~625\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~625_combout\ = ( \RAM|ram~459_q\ & ( \ROM|memROM~0_combout\ & ( (\RAM|ram~451_q\) # (\ROM|memROM~153_combout\) ) ) ) # ( !\RAM|ram~459_q\ & ( \ROM|memROM~0_combout\ & ( (!\ROM|memROM~153_combout\ & \RAM|ram~451_q\) ) ) ) # ( \RAM|ram~459_q\ & ( 
-- !\ROM|memROM~0_combout\ & ( (!\ROM|memROM~153_combout\ & (\RAM|ram~419_q\)) # (\ROM|memROM~153_combout\ & ((\RAM|ram~427_q\))) ) ) ) # ( !\RAM|ram~459_q\ & ( !\ROM|memROM~0_combout\ & ( (!\ROM|memROM~153_combout\ & (\RAM|ram~419_q\)) # 
-- (\ROM|memROM~153_combout\ & ((\RAM|ram~427_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100000000101010100101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~153_combout\,
	datab => \RAM|ALT_INV_ram~419_q\,
	datac => \RAM|ALT_INV_ram~427_q\,
	datad => \RAM|ALT_INV_ram~451_q\,
	datae => \RAM|ALT_INV_ram~459_q\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \RAM|ram~625_combout\);

-- Location: LABCELL_X35_Y5_N36
\RAM|ram~291feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~291feeder_combout\ = ( \CPU|REG_A|DOUT\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG_A|ALT_INV_DOUT\(4),
	combout => \RAM|ram~291feeder_combout\);

-- Location: FF_X35_Y5_N37
\RAM|ram~291\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~291feeder_combout\,
	ena => \RAM|ram~760_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~291_q\);

-- Location: LABCELL_X41_Y2_N33
\RAM|ram~323feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~323feeder_combout\ = ( \CPU|REG_A|DOUT\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG_A|ALT_INV_DOUT\(4),
	combout => \RAM|ram~323feeder_combout\);

-- Location: FF_X41_Y2_N34
\RAM|ram~323\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~323feeder_combout\,
	ena => \RAM|ram~792_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~323_q\);

-- Location: LABCELL_X39_Y3_N12
\RAM|ram~299feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~299feeder_combout\ = ( \CPU|REG_A|DOUT\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG_A|ALT_INV_DOUT\(4),
	combout => \RAM|ram~299feeder_combout\);

-- Location: FF_X39_Y3_N14
\RAM|ram~299\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~299feeder_combout\,
	ena => \RAM|ram~764_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~299_q\);

-- Location: FF_X39_Y3_N50
\RAM|ram~331\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(4),
	sload => VCC,
	ena => \RAM|ram~800_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~331_q\);

-- Location: LABCELL_X39_Y3_N48
\RAM|ram~624\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~624_combout\ = ( \RAM|ram~331_q\ & ( \ROM|memROM~0_combout\ & ( (\ROM|memROM~153_combout\) # (\RAM|ram~323_q\) ) ) ) # ( !\RAM|ram~331_q\ & ( \ROM|memROM~0_combout\ & ( (\RAM|ram~323_q\ & !\ROM|memROM~153_combout\) ) ) ) # ( \RAM|ram~331_q\ & ( 
-- !\ROM|memROM~0_combout\ & ( (!\ROM|memROM~153_combout\ & (\RAM|ram~291_q\)) # (\ROM|memROM~153_combout\ & ((\RAM|ram~299_q\))) ) ) ) # ( !\RAM|ram~331_q\ & ( !\ROM|memROM~0_combout\ & ( (!\ROM|memROM~153_combout\ & (\RAM|ram~291_q\)) # 
-- (\ROM|memROM~153_combout\ & ((\RAM|ram~299_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111010100000101111100110000001100000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~291_q\,
	datab => \RAM|ALT_INV_ram~323_q\,
	datac => \ROM|ALT_INV_memROM~153_combout\,
	datad => \RAM|ALT_INV_ram~299_q\,
	datae => \RAM|ALT_INV_ram~331_q\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \RAM|ram~624_combout\);

-- Location: MLABCELL_X42_Y3_N54
\RAM|ram~628\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~628_combout\ = ( \RAM|ram~625_combout\ & ( \RAM|ram~624_combout\ & ( (!\ROM|memROM~76_combout\) # ((!\ROM|memROM~69_combout\ & ((\RAM|ram~626_combout\))) # (\ROM|memROM~69_combout\ & (\RAM|ram~627_combout\))) ) ) ) # ( !\RAM|ram~625_combout\ & ( 
-- \RAM|ram~624_combout\ & ( (!\ROM|memROM~76_combout\ & (!\ROM|memROM~69_combout\)) # (\ROM|memROM~76_combout\ & ((!\ROM|memROM~69_combout\ & ((\RAM|ram~626_combout\))) # (\ROM|memROM~69_combout\ & (\RAM|ram~627_combout\)))) ) ) ) # ( \RAM|ram~625_combout\ 
-- & ( !\RAM|ram~624_combout\ & ( (!\ROM|memROM~76_combout\ & (\ROM|memROM~69_combout\)) # (\ROM|memROM~76_combout\ & ((!\ROM|memROM~69_combout\ & ((\RAM|ram~626_combout\))) # (\ROM|memROM~69_combout\ & (\RAM|ram~627_combout\)))) ) ) ) # ( 
-- !\RAM|ram~625_combout\ & ( !\RAM|ram~624_combout\ & ( (\ROM|memROM~76_combout\ & ((!\ROM|memROM~69_combout\ & ((\RAM|ram~626_combout\))) # (\ROM|memROM~69_combout\ & (\RAM|ram~627_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101001000110110011110001001110011011010101111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~76_combout\,
	datab => \ROM|ALT_INV_memROM~69_combout\,
	datac => \RAM|ALT_INV_ram~627_combout\,
	datad => \RAM|ALT_INV_ram~626_combout\,
	datae => \RAM|ALT_INV_ram~625_combout\,
	dataf => \RAM|ALT_INV_ram~624_combout\,
	combout => \RAM|ram~628_combout\);

-- Location: FF_X41_Y2_N5
\RAM|ram~67\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(4),
	sload => VCC,
	ena => \RAM|ram~790_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~67_q\);

-- Location: FF_X40_Y8_N58
\RAM|ram~195\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(4),
	sload => VCC,
	ena => \RAM|ram~794_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~195_q\);

-- Location: FF_X41_Y5_N52
\RAM|ram~75\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(4),
	sload => VCC,
	ena => \RAM|ram~798_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~75_q\);

-- Location: FF_X40_Y2_N8
\RAM|ram~203\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(4),
	sload => VCC,
	ena => \RAM|ram~802_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~203_q\);

-- Location: LABCELL_X40_Y2_N6
\RAM|ram~620\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~620_combout\ = ( \RAM|ram~203_q\ & ( \ROM|memROM~153_combout\ & ( (\ROM|memROM~69_combout\) # (\RAM|ram~75_q\) ) ) ) # ( !\RAM|ram~203_q\ & ( \ROM|memROM~153_combout\ & ( (\RAM|ram~75_q\ & !\ROM|memROM~69_combout\) ) ) ) # ( \RAM|ram~203_q\ & ( 
-- !\ROM|memROM~153_combout\ & ( (!\ROM|memROM~69_combout\ & (\RAM|ram~67_q\)) # (\ROM|memROM~69_combout\ & ((\RAM|ram~195_q\))) ) ) ) # ( !\RAM|ram~203_q\ & ( !\ROM|memROM~153_combout\ & ( (!\ROM|memROM~69_combout\ & (\RAM|ram~67_q\)) # 
-- (\ROM|memROM~69_combout\ & ((\RAM|ram~195_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110011010101010011001100001111000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~67_q\,
	datab => \RAM|ALT_INV_ram~195_q\,
	datac => \RAM|ALT_INV_ram~75_q\,
	datad => \ROM|ALT_INV_memROM~69_combout\,
	datae => \RAM|ALT_INV_ram~203_q\,
	dataf => \ROM|ALT_INV_memROM~153_combout\,
	combout => \RAM|ram~620_combout\);

-- Location: FF_X44_Y4_N52
\RAM|ram~227\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(4),
	sload => VCC,
	ena => \RAM|ram~782_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~227_q\);

-- Location: LABCELL_X41_Y7_N3
\RAM|ram~99feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~99feeder_combout\ = ( \CPU|REG_A|DOUT\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG_A|ALT_INV_DOUT\(4),
	combout => \RAM|ram~99feeder_combout\);

-- Location: FF_X41_Y7_N4
\RAM|ram~99\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~99feeder_combout\,
	ena => \RAM|ram~774_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~99_q\);

-- Location: FF_X39_Y7_N7
\RAM|ram~107\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(4),
	sload => VCC,
	ena => \RAM|ram~778_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~107_q\);

-- Location: FF_X42_Y6_N26
\RAM|ram~235\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(4),
	sload => VCC,
	ena => \RAM|ram~786_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~235_q\);

-- Location: MLABCELL_X42_Y6_N24
\RAM|ram~621\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~621_combout\ = ( \RAM|ram~235_q\ & ( \ROM|memROM~153_combout\ & ( (\ROM|memROM~69_combout\) # (\RAM|ram~107_q\) ) ) ) # ( !\RAM|ram~235_q\ & ( \ROM|memROM~153_combout\ & ( (\RAM|ram~107_q\ & !\ROM|memROM~69_combout\) ) ) ) # ( \RAM|ram~235_q\ & ( 
-- !\ROM|memROM~153_combout\ & ( (!\ROM|memROM~69_combout\ & ((\RAM|ram~99_q\))) # (\ROM|memROM~69_combout\ & (\RAM|ram~227_q\)) ) ) ) # ( !\RAM|ram~235_q\ & ( !\ROM|memROM~153_combout\ & ( (!\ROM|memROM~69_combout\ & ((\RAM|ram~99_q\))) # 
-- (\ROM|memROM~69_combout\ & (\RAM|ram~227_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101010101001100110101010100001111000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~227_q\,
	datab => \RAM|ALT_INV_ram~99_q\,
	datac => \RAM|ALT_INV_ram~107_q\,
	datad => \ROM|ALT_INV_memROM~69_combout\,
	datae => \RAM|ALT_INV_ram~235_q\,
	dataf => \ROM|ALT_INV_memROM~153_combout\,
	combout => \RAM|ram~621_combout\);

-- Location: FF_X45_Y5_N10
\RAM|ram~139\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(4),
	sload => VCC,
	ena => \RAM|ram~814_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~139_q\);

-- Location: FF_X44_Y5_N34
\RAM|ram~259\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(4),
	sload => VCC,
	ena => \RAM|ram~810_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~259_q\);

-- Location: FF_X42_Y2_N7
\RAM|ram~131\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(4),
	sload => VCC,
	ena => \RAM|ram~806_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~131_q\);

-- Location: FF_X43_Y4_N44
\RAM|ram~267\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(4),
	sload => VCC,
	ena => \RAM|ram~818_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~267_q\);

-- Location: LABCELL_X43_Y4_N42
\RAM|ram~622\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~622_combout\ = ( \RAM|ram~267_q\ & ( \ROM|memROM~69_combout\ & ( (\ROM|memROM~153_combout\) # (\RAM|ram~259_q\) ) ) ) # ( !\RAM|ram~267_q\ & ( \ROM|memROM~69_combout\ & ( (\RAM|ram~259_q\ & !\ROM|memROM~153_combout\) ) ) ) # ( \RAM|ram~267_q\ & ( 
-- !\ROM|memROM~69_combout\ & ( (!\ROM|memROM~153_combout\ & ((\RAM|ram~131_q\))) # (\ROM|memROM~153_combout\ & (\RAM|ram~139_q\)) ) ) ) # ( !\RAM|ram~267_q\ & ( !\ROM|memROM~69_combout\ & ( (!\ROM|memROM~153_combout\ & ((\RAM|ram~131_q\))) # 
-- (\ROM|memROM~153_combout\ & (\RAM|ram~139_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000011110101010100110011000000000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~139_q\,
	datab => \RAM|ALT_INV_ram~259_q\,
	datac => \RAM|ALT_INV_ram~131_q\,
	datad => \ROM|ALT_INV_memROM~153_combout\,
	datae => \RAM|ALT_INV_ram~267_q\,
	dataf => \ROM|ALT_INV_memROM~69_combout\,
	combout => \RAM|ram~622_combout\);

-- Location: FF_X39_Y8_N50
\RAM|ram~35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(4),
	sload => VCC,
	ena => \RAM|ram~758_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~35_q\);

-- Location: FF_X39_Y8_N11
\RAM|ram~163\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(4),
	sload => VCC,
	ena => \RAM|ram~766_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~163_q\);

-- Location: FF_X42_Y7_N16
\RAM|ram~43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(4),
	sload => VCC,
	ena => \RAM|ram~762_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~43_q\);

-- Location: FF_X39_Y8_N26
\RAM|ram~171\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(4),
	sload => VCC,
	ena => \RAM|ram~770_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~171_q\);

-- Location: LABCELL_X39_Y8_N24
\RAM|ram~619\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~619_combout\ = ( \RAM|ram~171_q\ & ( \ROM|memROM~69_combout\ & ( (\ROM|memROM~153_combout\) # (\RAM|ram~163_q\) ) ) ) # ( !\RAM|ram~171_q\ & ( \ROM|memROM~69_combout\ & ( (\RAM|ram~163_q\ & !\ROM|memROM~153_combout\) ) ) ) # ( \RAM|ram~171_q\ & ( 
-- !\ROM|memROM~69_combout\ & ( (!\ROM|memROM~153_combout\ & (\RAM|ram~35_q\)) # (\ROM|memROM~153_combout\ & ((\RAM|ram~43_q\))) ) ) ) # ( !\RAM|ram~171_q\ & ( !\ROM|memROM~69_combout\ & ( (!\ROM|memROM~153_combout\ & (\RAM|ram~35_q\)) # 
-- (\ROM|memROM~153_combout\ & ((\RAM|ram~43_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111010100000101111100110000001100000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~35_q\,
	datab => \RAM|ALT_INV_ram~163_q\,
	datac => \ROM|ALT_INV_memROM~153_combout\,
	datad => \RAM|ALT_INV_ram~43_q\,
	datae => \RAM|ALT_INV_ram~171_q\,
	dataf => \ROM|ALT_INV_memROM~69_combout\,
	combout => \RAM|ram~619_combout\);

-- Location: MLABCELL_X42_Y3_N30
\RAM|ram~623\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~623_combout\ = ( \RAM|ram~622_combout\ & ( \RAM|ram~619_combout\ & ( (!\ROM|memROM~76_combout\ & ((!\ROM|memROM~0_combout\) # ((\RAM|ram~620_combout\)))) # (\ROM|memROM~76_combout\ & (((\RAM|ram~621_combout\)) # (\ROM|memROM~0_combout\))) ) ) ) # 
-- ( !\RAM|ram~622_combout\ & ( \RAM|ram~619_combout\ & ( (!\ROM|memROM~76_combout\ & ((!\ROM|memROM~0_combout\) # ((\RAM|ram~620_combout\)))) # (\ROM|memROM~76_combout\ & (!\ROM|memROM~0_combout\ & ((\RAM|ram~621_combout\)))) ) ) ) # ( \RAM|ram~622_combout\ 
-- & ( !\RAM|ram~619_combout\ & ( (!\ROM|memROM~76_combout\ & (\ROM|memROM~0_combout\ & (\RAM|ram~620_combout\))) # (\ROM|memROM~76_combout\ & (((\RAM|ram~621_combout\)) # (\ROM|memROM~0_combout\))) ) ) ) # ( !\RAM|ram~622_combout\ & ( !\RAM|ram~619_combout\ 
-- & ( (!\ROM|memROM~76_combout\ & (\ROM|memROM~0_combout\ & (\RAM|ram~620_combout\))) # (\ROM|memROM~76_combout\ & (!\ROM|memROM~0_combout\ & ((\RAM|ram~621_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001000110000100110101011110001010110011101001101111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~76_combout\,
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \RAM|ALT_INV_ram~620_combout\,
	datad => \RAM|ALT_INV_ram~621_combout\,
	datae => \RAM|ALT_INV_ram~622_combout\,
	dataf => \RAM|ALT_INV_ram~619_combout\,
	combout => \RAM|ram~623_combout\);

-- Location: MLABCELL_X42_Y3_N18
\RAM|ram~629\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~629_combout\ = ( \RAM|ram~628_combout\ & ( \RAM|ram~623_combout\ & ( ((!\ROM|memROM~45_combout\ & ((\RAM|ram~613_combout\))) # (\ROM|memROM~45_combout\ & (\RAM|ram~618_combout\))) # (\ROM|memROM~58_combout\) ) ) ) # ( !\RAM|ram~628_combout\ & ( 
-- \RAM|ram~623_combout\ & ( (!\ROM|memROM~45_combout\ & (((\ROM|memROM~58_combout\) # (\RAM|ram~613_combout\)))) # (\ROM|memROM~45_combout\ & (\RAM|ram~618_combout\ & ((!\ROM|memROM~58_combout\)))) ) ) ) # ( \RAM|ram~628_combout\ & ( !\RAM|ram~623_combout\ 
-- & ( (!\ROM|memROM~45_combout\ & (((\RAM|ram~613_combout\ & !\ROM|memROM~58_combout\)))) # (\ROM|memROM~45_combout\ & (((\ROM|memROM~58_combout\)) # (\RAM|ram~618_combout\))) ) ) ) # ( !\RAM|ram~628_combout\ & ( !\RAM|ram~623_combout\ & ( 
-- (!\ROM|memROM~58_combout\ & ((!\ROM|memROM~45_combout\ & ((\RAM|ram~613_combout\))) # (\ROM|memROM~45_combout\ & (\RAM|ram~618_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100000000000111010011001100011101110011000001110111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~618_combout\,
	datab => \ROM|ALT_INV_memROM~45_combout\,
	datac => \RAM|ALT_INV_ram~613_combout\,
	datad => \ROM|ALT_INV_memROM~58_combout\,
	datae => \RAM|ALT_INV_ram~628_combout\,
	dataf => \RAM|ALT_INV_ram~623_combout\,
	combout => \RAM|ram~629_combout\);

-- Location: MLABCELL_X42_Y3_N48
\CPU|MUX1|saida_MUX[4]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[4]~3_combout\ = ( \RAM|ram~629_combout\ & ( (!\ENABLE_SWR~2_combout\) # (\SW[4]~input_o\) ) ) # ( !\RAM|ram~629_combout\ & ( (\SW[4]~input_o\ & \ENABLE_SWR~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SW[4]~input_o\,
	datad => \ALT_INV_ENABLE_SWR~2_combout\,
	dataf => \RAM|ALT_INV_ram~629_combout\,
	combout => \CPU|MUX1|saida_MUX[4]~3_combout\);

-- Location: LABCELL_X41_Y3_N15
\CPU|ULA1|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~17_sumout\ = SUM(( (!\CPU|DECODER|sinais_controle~0_combout\ & (((!\CPU|MUX1|saida_MUX[4]~3_combout\)))) # (\CPU|DECODER|sinais_controle~0_combout\ & ((!\CPU|DECODER|OP_ULA[0]~2_combout\ & (!\ROM|memROM~69_combout\)) # 
-- (\CPU|DECODER|OP_ULA[0]~2_combout\ & ((!\CPU|MUX1|saida_MUX[4]~3_combout\))))) ) + ( \CPU|REG_A|DOUT\(4) ) + ( \CPU|ULA1|Add1~6\ ))
-- \CPU|ULA1|Add1~18\ = CARRY(( (!\CPU|DECODER|sinais_controle~0_combout\ & (((!\CPU|MUX1|saida_MUX[4]~3_combout\)))) # (\CPU|DECODER|sinais_controle~0_combout\ & ((!\CPU|DECODER|OP_ULA[0]~2_combout\ & (!\ROM|memROM~69_combout\)) # 
-- (\CPU|DECODER|OP_ULA[0]~2_combout\ & ((!\CPU|MUX1|saida_MUX[4]~3_combout\))))) ) + ( \CPU|REG_A|DOUT\(4) ) + ( \CPU|ULA1|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111101101000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_sinais_controle~0_combout\,
	datab => \CPU|DECODER|ALT_INV_OP_ULA[0]~2_combout\,
	datac => \ROM|ALT_INV_memROM~69_combout\,
	datad => \CPU|MUX1|ALT_INV_saida_MUX[4]~3_combout\,
	dataf => \CPU|REG_A|ALT_INV_DOUT\(4),
	cin => \CPU|ULA1|Add1~6\,
	sumout => \CPU|ULA1|Add1~17_sumout\,
	cout => \CPU|ULA1|Add1~18\);

-- Location: LABCELL_X40_Y3_N6
\CPU|FLAG|DOUT~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FLAG|DOUT~1_combout\ = ( !\ROM|memROM~8_combout\ & ( (!\ROM|memROM~4_combout\ & (!\ROM|memROM~77_combout\ & !\ROM|memROM~78_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100000000000100010000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~4_combout\,
	datab => \ROM|ALT_INV_memROM~77_combout\,
	datad => \ROM|ALT_INV_memROM~78_combout\,
	dataf => \ROM|ALT_INV_memROM~8_combout\,
	combout => \CPU|FLAG|DOUT~1_combout\);

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

-- Location: FF_X41_Y5_N40
\RAM|ram~60\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(5),
	sload => VCC,
	ena => \RAM|ram~730_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~60_q\);

-- Location: LABCELL_X44_Y7_N3
\RAM|ram~28feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~28feeder_combout\ = ( \CPU|REG_A|DOUT\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG_A|ALT_INV_DOUT\(5),
	combout => \RAM|ram~28feeder_combout\);

-- Location: FF_X44_Y7_N5
\RAM|ram~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~28feeder_combout\,
	ena => \RAM|ram~698_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~28_q\);

-- Location: FF_X42_Y7_N31
\RAM|ram~44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(5),
	sload => VCC,
	ena => \RAM|ram~762_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~44_q\);

-- Location: FF_X41_Y5_N23
\RAM|ram~76\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(5),
	sload => VCC,
	ena => \RAM|ram~798_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~76_q\);

-- Location: LABCELL_X41_Y5_N21
\RAM|ram~640\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~640_combout\ = ( \RAM|ram~76_q\ & ( \ROM|memROM~0_combout\ & ( (\ROM|memROM~58_combout\) # (\RAM|ram~60_q\) ) ) ) # ( !\RAM|ram~76_q\ & ( \ROM|memROM~0_combout\ & ( (\RAM|ram~60_q\ & !\ROM|memROM~58_combout\) ) ) ) # ( \RAM|ram~76_q\ & ( 
-- !\ROM|memROM~0_combout\ & ( (!\ROM|memROM~58_combout\ & (\RAM|ram~28_q\)) # (\ROM|memROM~58_combout\ & ((\RAM|ram~44_q\))) ) ) ) # ( !\RAM|ram~76_q\ & ( !\ROM|memROM~0_combout\ & ( (!\ROM|memROM~58_combout\ & (\RAM|ram~28_q\)) # (\ROM|memROM~58_combout\ & 
-- ((\RAM|ram~44_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001111001100110000111101010101000000000101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~60_q\,
	datab => \RAM|ALT_INV_ram~28_q\,
	datac => \RAM|ALT_INV_ram~44_q\,
	datad => \ROM|ALT_INV_memROM~58_combout\,
	datae => \RAM|ALT_INV_ram~76_q\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \RAM|ram~640_combout\);

-- Location: LABCELL_X43_Y6_N42
\RAM|ram~252feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~252feeder_combout\ = ( \CPU|REG_A|DOUT\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG_A|ALT_INV_DOUT\(5),
	combout => \RAM|ram~252feeder_combout\);

-- Location: FF_X43_Y6_N43
\RAM|ram~252\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~252feeder_combout\,
	ena => \RAM|ram~754_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~252_q\);

-- Location: FF_X43_Y4_N8
\RAM|ram~220\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(5),
	sload => VCC,
	ena => \RAM|ram~722_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~220_q\);

-- Location: FF_X43_Y4_N41
\RAM|ram~236\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(5),
	sload => VCC,
	ena => \RAM|ram~786_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~236_q\);

-- Location: FF_X43_Y4_N50
\RAM|ram~268\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(5),
	sload => VCC,
	ena => \RAM|ram~818_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~268_q\);

-- Location: LABCELL_X43_Y4_N48
\RAM|ram~643\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~643_combout\ = ( \RAM|ram~268_q\ & ( \ROM|memROM~0_combout\ & ( (\ROM|memROM~58_combout\) # (\RAM|ram~252_q\) ) ) ) # ( !\RAM|ram~268_q\ & ( \ROM|memROM~0_combout\ & ( (\RAM|ram~252_q\ & !\ROM|memROM~58_combout\) ) ) ) # ( \RAM|ram~268_q\ & ( 
-- !\ROM|memROM~0_combout\ & ( (!\ROM|memROM~58_combout\ & (\RAM|ram~220_q\)) # (\ROM|memROM~58_combout\ & ((\RAM|ram~236_q\))) ) ) ) # ( !\RAM|ram~268_q\ & ( !\ROM|memROM~0_combout\ & ( (!\ROM|memROM~58_combout\ & (\RAM|ram~220_q\)) # 
-- (\ROM|memROM~58_combout\ & ((\RAM|ram~236_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111001100000011111101010000010100000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~252_q\,
	datab => \RAM|ALT_INV_ram~220_q\,
	datac => \ROM|ALT_INV_memROM~58_combout\,
	datad => \RAM|ALT_INV_ram~236_q\,
	datae => \RAM|ALT_INV_ram~268_q\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \RAM|ram~643_combout\);

-- Location: FF_X37_Y5_N28
\RAM|ram~124\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(5),
	sload => VCC,
	ena => \RAM|ram~746_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~124_q\);

-- Location: FF_X45_Y5_N55
\RAM|ram~92\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(5),
	sload => VCC,
	ena => \RAM|ram~714_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~92_q\);

-- Location: FF_X39_Y7_N10
\RAM|ram~108\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(5),
	sload => VCC,
	ena => \RAM|ram~778_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~108_q\);

-- Location: FF_X45_Y5_N8
\RAM|ram~140\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(5),
	sload => VCC,
	ena => \RAM|ram~814_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~140_q\);

-- Location: MLABCELL_X45_Y5_N6
\RAM|ram~642\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~642_combout\ = ( \RAM|ram~140_q\ & ( \ROM|memROM~0_combout\ & ( (\ROM|memROM~58_combout\) # (\RAM|ram~124_q\) ) ) ) # ( !\RAM|ram~140_q\ & ( \ROM|memROM~0_combout\ & ( (\RAM|ram~124_q\ & !\ROM|memROM~58_combout\) ) ) ) # ( \RAM|ram~140_q\ & ( 
-- !\ROM|memROM~0_combout\ & ( (!\ROM|memROM~58_combout\ & (\RAM|ram~92_q\)) # (\ROM|memROM~58_combout\ & ((\RAM|ram~108_q\))) ) ) ) # ( !\RAM|ram~140_q\ & ( !\ROM|memROM~0_combout\ & ( (!\ROM|memROM~58_combout\ & (\RAM|ram~92_q\)) # (\ROM|memROM~58_combout\ 
-- & ((\RAM|ram~108_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111001100000011111101010000010100000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~124_q\,
	datab => \RAM|ALT_INV_ram~92_q\,
	datac => \ROM|ALT_INV_memROM~58_combout\,
	datad => \RAM|ALT_INV_ram~108_q\,
	datae => \RAM|ALT_INV_ram~140_q\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \RAM|ram~642_combout\);

-- Location: FF_X41_Y3_N1
\RAM|ram~172\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(5),
	sload => VCC,
	ena => \RAM|ram~770_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~172_q\);

-- Location: MLABCELL_X34_Y5_N21
\RAM|ram~188feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~188feeder_combout\ = ( \CPU|REG_A|DOUT\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG_A|ALT_INV_DOUT\(5),
	combout => \RAM|ram~188feeder_combout\);

-- Location: FF_X34_Y5_N22
\RAM|ram~188\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~188feeder_combout\,
	ena => \RAM|ram~738_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~188_q\);

-- Location: LABCELL_X44_Y6_N48
\RAM|ram~156feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~156feeder_combout\ = ( \CPU|REG_A|DOUT\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG_A|ALT_INV_DOUT\(5),
	combout => \RAM|ram~156feeder_combout\);

-- Location: FF_X44_Y6_N49
\RAM|ram~156\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~156feeder_combout\,
	ena => \RAM|ram~706_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~156_q\);

-- Location: FF_X40_Y2_N38
\RAM|ram~204\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(5),
	sload => VCC,
	ena => \RAM|ram~802_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~204_q\);

-- Location: LABCELL_X40_Y2_N36
\RAM|ram~641\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~641_combout\ = ( \RAM|ram~204_q\ & ( \ROM|memROM~0_combout\ & ( (\ROM|memROM~58_combout\) # (\RAM|ram~188_q\) ) ) ) # ( !\RAM|ram~204_q\ & ( \ROM|memROM~0_combout\ & ( (\RAM|ram~188_q\ & !\ROM|memROM~58_combout\) ) ) ) # ( \RAM|ram~204_q\ & ( 
-- !\ROM|memROM~0_combout\ & ( (!\ROM|memROM~58_combout\ & ((\RAM|ram~156_q\))) # (\ROM|memROM~58_combout\ & (\RAM|ram~172_q\)) ) ) ) # ( !\RAM|ram~204_q\ & ( !\ROM|memROM~0_combout\ & ( (!\ROM|memROM~58_combout\ & ((\RAM|ram~156_q\))) # 
-- (\ROM|memROM~58_combout\ & (\RAM|ram~172_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000011110101010100110011000000000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~172_q\,
	datab => \RAM|ALT_INV_ram~188_q\,
	datac => \RAM|ALT_INV_ram~156_q\,
	datad => \ROM|ALT_INV_memROM~58_combout\,
	datae => \RAM|ALT_INV_ram~204_q\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \RAM|ram~641_combout\);

-- Location: LABCELL_X41_Y5_N36
\RAM|ram~644\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~644_combout\ = ( \RAM|ram~642_combout\ & ( \RAM|ram~641_combout\ & ( (!\ROM|memROM~76_combout\ & (((\RAM|ram~640_combout\)) # (\ROM|memROM~69_combout\))) # (\ROM|memROM~76_combout\ & ((!\ROM|memROM~69_combout\) # ((\RAM|ram~643_combout\)))) ) ) ) 
-- # ( !\RAM|ram~642_combout\ & ( \RAM|ram~641_combout\ & ( (!\ROM|memROM~76_combout\ & (((\RAM|ram~640_combout\)) # (\ROM|memROM~69_combout\))) # (\ROM|memROM~76_combout\ & (\ROM|memROM~69_combout\ & ((\RAM|ram~643_combout\)))) ) ) ) # ( 
-- \RAM|ram~642_combout\ & ( !\RAM|ram~641_combout\ & ( (!\ROM|memROM~76_combout\ & (!\ROM|memROM~69_combout\ & (\RAM|ram~640_combout\))) # (\ROM|memROM~76_combout\ & ((!\ROM|memROM~69_combout\) # ((\RAM|ram~643_combout\)))) ) ) ) # ( !\RAM|ram~642_combout\ 
-- & ( !\RAM|ram~641_combout\ & ( (!\ROM|memROM~76_combout\ & (!\ROM|memROM~69_combout\ & (\RAM|ram~640_combout\))) # (\ROM|memROM~76_combout\ & (\ROM|memROM~69_combout\ & ((\RAM|ram~643_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000011001010011000101110100101010001110110110111001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~76_combout\,
	datab => \ROM|ALT_INV_memROM~69_combout\,
	datac => \RAM|ALT_INV_ram~640_combout\,
	datad => \RAM|ALT_INV_ram~643_combout\,
	datae => \RAM|ALT_INV_ram~642_combout\,
	dataf => \RAM|ALT_INV_ram~641_combout\,
	combout => \RAM|ram~644_combout\);

-- Location: FF_X39_Y6_N10
\RAM|ram~476\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(5),
	sload => VCC,
	ena => \RAM|ram~724_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~476_q\);

-- Location: LABCELL_X40_Y6_N24
\RAM|ram~444feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~444feeder_combout\ = ( \CPU|REG_A|DOUT\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG_A|ALT_INV_DOUT\(5),
	combout => \RAM|ram~444feeder_combout\);

-- Location: FF_X40_Y6_N25
\RAM|ram~444\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~444feeder_combout\,
	ena => \RAM|ram~740_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~444_q\);

-- Location: FF_X35_Y3_N13
\RAM|ram~412\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(5),
	sload => VCC,
	ena => \RAM|ram~708_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~412_q\);

-- Location: FF_X40_Y6_N5
\RAM|ram~508\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(5),
	sload => VCC,
	ena => \RAM|ram~756_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~508_q\);

-- Location: LABCELL_X40_Y6_N3
\RAM|ram~646\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~646_combout\ = ( \RAM|ram~508_q\ & ( \ROM|memROM~0_combout\ & ( (\ROM|memROM~76_combout\) # (\RAM|ram~444_q\) ) ) ) # ( !\RAM|ram~508_q\ & ( \ROM|memROM~0_combout\ & ( (\RAM|ram~444_q\ & !\ROM|memROM~76_combout\) ) ) ) # ( \RAM|ram~508_q\ & ( 
-- !\ROM|memROM~0_combout\ & ( (!\ROM|memROM~76_combout\ & ((\RAM|ram~412_q\))) # (\ROM|memROM~76_combout\ & (\RAM|ram~476_q\)) ) ) ) # ( !\RAM|ram~508_q\ & ( !\ROM|memROM~0_combout\ & ( (!\ROM|memROM~76_combout\ & ((\RAM|ram~412_q\))) # 
-- (\ROM|memROM~76_combout\ & (\RAM|ram~476_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000001011111010100110000001100000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~476_q\,
	datab => \RAM|ALT_INV_ram~444_q\,
	datac => \ROM|ALT_INV_memROM~76_combout\,
	datad => \RAM|ALT_INV_ram~412_q\,
	datae => \RAM|ALT_INV_ram~508_q\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \RAM|ram~646_combout\);

-- Location: MLABCELL_X34_Y3_N9
\RAM|ram~428feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~428feeder_combout\ = ( \CPU|REG_A|DOUT\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG_A|ALT_INV_DOUT\(5),
	combout => \RAM|ram~428feeder_combout\);

-- Location: FF_X34_Y3_N10
\RAM|ram~428\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~428feeder_combout\,
	ena => \RAM|ram~772_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~428_q\);

-- Location: FF_X34_Y4_N16
\RAM|ram~492\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(5),
	sload => VCC,
	ena => \RAM|ram~788_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~492_q\);

-- Location: LABCELL_X35_Y2_N12
\RAM|ram~460feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~460feeder_combout\ = ( \CPU|REG_A|DOUT\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG_A|ALT_INV_DOUT\(5),
	combout => \RAM|ram~460feeder_combout\);

-- Location: FF_X35_Y2_N13
\RAM|ram~460\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~460feeder_combout\,
	ena => \RAM|ram~804_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~460_q\);

-- Location: FF_X36_Y4_N13
\RAM|ram~524\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(5),
	sload => VCC,
	ena => \RAM|ram~820_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~524_q\);

-- Location: LABCELL_X40_Y6_N57
\RAM|ram~648\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~648_combout\ = ( \RAM|ram~524_q\ & ( \ROM|memROM~0_combout\ & ( (\RAM|ram~460_q\) # (\ROM|memROM~76_combout\) ) ) ) # ( !\RAM|ram~524_q\ & ( \ROM|memROM~0_combout\ & ( (!\ROM|memROM~76_combout\ & \RAM|ram~460_q\) ) ) ) # ( \RAM|ram~524_q\ & ( 
-- !\ROM|memROM~0_combout\ & ( (!\ROM|memROM~76_combout\ & (\RAM|ram~428_q\)) # (\ROM|memROM~76_combout\ & ((\RAM|ram~492_q\))) ) ) ) # ( !\RAM|ram~524_q\ & ( !\ROM|memROM~0_combout\ & ( (!\ROM|memROM~76_combout\ & (\RAM|ram~428_q\)) # 
-- (\ROM|memROM~76_combout\ & ((\RAM|ram~492_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011010100110101001100000000111100000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~428_q\,
	datab => \RAM|ALT_INV_ram~492_q\,
	datac => \ROM|ALT_INV_memROM~76_combout\,
	datad => \RAM|ALT_INV_ram~460_q\,
	datae => \RAM|ALT_INV_ram~524_q\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \RAM|ram~648_combout\);

-- Location: FF_X41_Y6_N50
\RAM|ram~316\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(5),
	sload => VCC,
	ena => \RAM|ram~732_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~316_q\);

-- Location: FF_X41_Y4_N53
\RAM|ram~284\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(5),
	sload => VCC,
	ena => \RAM|ram~700_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~284_q\);

-- Location: FF_X39_Y5_N4
\RAM|ram~348\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(5),
	sload => VCC,
	ena => \RAM|ram~716_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~348_q\);

-- Location: FF_X41_Y6_N8
\RAM|ram~380\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(5),
	sload => VCC,
	ena => \RAM|ram~748_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~380_q\);

-- Location: LABCELL_X41_Y6_N6
\RAM|ram~645\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~645_combout\ = ( \RAM|ram~380_q\ & ( \ROM|memROM~0_combout\ & ( (\ROM|memROM~76_combout\) # (\RAM|ram~316_q\) ) ) ) # ( !\RAM|ram~380_q\ & ( \ROM|memROM~0_combout\ & ( (\RAM|ram~316_q\ & !\ROM|memROM~76_combout\) ) ) ) # ( \RAM|ram~380_q\ & ( 
-- !\ROM|memROM~0_combout\ & ( (!\ROM|memROM~76_combout\ & (\RAM|ram~284_q\)) # (\ROM|memROM~76_combout\ & ((\RAM|ram~348_q\))) ) ) ) # ( !\RAM|ram~380_q\ & ( !\ROM|memROM~0_combout\ & ( (!\ROM|memROM~76_combout\ & (\RAM|ram~284_q\)) # 
-- (\ROM|memROM~76_combout\ & ((\RAM|ram~348_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001111001100110000111101010101000000000101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~316_q\,
	datab => \RAM|ALT_INV_ram~284_q\,
	datac => \RAM|ALT_INV_ram~348_q\,
	datad => \ROM|ALT_INV_memROM~76_combout\,
	datae => \RAM|ALT_INV_ram~380_q\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \RAM|ram~645_combout\);

-- Location: FF_X37_Y3_N31
\RAM|ram~332\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(5),
	sload => VCC,
	ena => \RAM|ram~800_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~332_q\);

-- Location: FF_X39_Y7_N47
\RAM|ram~364\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(5),
	sload => VCC,
	ena => \RAM|ram~780_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~364_q\);

-- Location: FF_X39_Y3_N23
\RAM|ram~300\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(5),
	sload => VCC,
	ena => \RAM|ram~764_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~300_q\);

-- Location: FF_X34_Y6_N32
\RAM|ram~396\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(5),
	sload => VCC,
	ena => \RAM|ram~816_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~396_q\);

-- Location: MLABCELL_X34_Y6_N30
\RAM|ram~647\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~647_combout\ = ( \RAM|ram~396_q\ & ( \ROM|memROM~0_combout\ & ( (\ROM|memROM~76_combout\) # (\RAM|ram~332_q\) ) ) ) # ( !\RAM|ram~396_q\ & ( \ROM|memROM~0_combout\ & ( (\RAM|ram~332_q\ & !\ROM|memROM~76_combout\) ) ) ) # ( \RAM|ram~396_q\ & ( 
-- !\ROM|memROM~0_combout\ & ( (!\ROM|memROM~76_combout\ & ((\RAM|ram~300_q\))) # (\ROM|memROM~76_combout\ & (\RAM|ram~364_q\)) ) ) ) # ( !\RAM|ram~396_q\ & ( !\ROM|memROM~0_combout\ & ( (!\ROM|memROM~76_combout\ & ((\RAM|ram~300_q\))) # 
-- (\ROM|memROM~76_combout\ & (\RAM|ram~364_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011000000111111001101010000010100000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~332_q\,
	datab => \RAM|ALT_INV_ram~364_q\,
	datac => \ROM|ALT_INV_memROM~76_combout\,
	datad => \RAM|ALT_INV_ram~300_q\,
	datae => \RAM|ALT_INV_ram~396_q\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \RAM|ram~647_combout\);

-- Location: LABCELL_X40_Y6_N42
\RAM|ram~649\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~649_combout\ = ( \RAM|ram~645_combout\ & ( \RAM|ram~647_combout\ & ( (!\ROM|memROM~69_combout\) # ((!\ROM|memROM~58_combout\ & (\RAM|ram~646_combout\)) # (\ROM|memROM~58_combout\ & ((\RAM|ram~648_combout\)))) ) ) ) # ( !\RAM|ram~645_combout\ & ( 
-- \RAM|ram~647_combout\ & ( (!\ROM|memROM~58_combout\ & (\ROM|memROM~69_combout\ & (\RAM|ram~646_combout\))) # (\ROM|memROM~58_combout\ & ((!\ROM|memROM~69_combout\) # ((\RAM|ram~648_combout\)))) ) ) ) # ( \RAM|ram~645_combout\ & ( !\RAM|ram~647_combout\ & 
-- ( (!\ROM|memROM~58_combout\ & ((!\ROM|memROM~69_combout\) # ((\RAM|ram~646_combout\)))) # (\ROM|memROM~58_combout\ & (\ROM|memROM~69_combout\ & ((\RAM|ram~648_combout\)))) ) ) ) # ( !\RAM|ram~645_combout\ & ( !\RAM|ram~647_combout\ & ( 
-- (\ROM|memROM~69_combout\ & ((!\ROM|memROM~58_combout\ & (\RAM|ram~646_combout\)) # (\ROM|memROM~58_combout\ & ((\RAM|ram~648_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000010011100010101001101101000110010101111100111011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~58_combout\,
	datab => \ROM|ALT_INV_memROM~69_combout\,
	datac => \RAM|ALT_INV_ram~646_combout\,
	datad => \RAM|ALT_INV_ram~648_combout\,
	datae => \RAM|ALT_INV_ram~645_combout\,
	dataf => \RAM|ALT_INV_ram~647_combout\,
	combout => \RAM|ram~649_combout\);

-- Location: FF_X37_Y7_N40
\RAM|ram~212\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(5),
	sload => VCC,
	ena => \RAM|ram~718_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~212_q\);

-- Location: FF_X44_Y5_N41
\RAM|ram~228\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(5),
	sload => VCC,
	ena => \RAM|ram~782_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~228_q\);

-- Location: FF_X37_Y7_N28
\RAM|ram~244\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(5),
	sload => VCC,
	ena => \RAM|ram~750_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~244_q\);

-- Location: FF_X42_Y5_N5
\RAM|ram~260\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(5),
	sload => VCC,
	ena => \RAM|ram~810_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~260_q\);

-- Location: MLABCELL_X42_Y5_N3
\RAM|ram~633\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~633_combout\ = ( \RAM|ram~260_q\ & ( \ROM|memROM~0_combout\ & ( (\RAM|ram~244_q\) # (\ROM|memROM~58_combout\) ) ) ) # ( !\RAM|ram~260_q\ & ( \ROM|memROM~0_combout\ & ( (!\ROM|memROM~58_combout\ & \RAM|ram~244_q\) ) ) ) # ( \RAM|ram~260_q\ & ( 
-- !\ROM|memROM~0_combout\ & ( (!\ROM|memROM~58_combout\ & (\RAM|ram~212_q\)) # (\ROM|memROM~58_combout\ & ((\RAM|ram~228_q\))) ) ) ) # ( !\RAM|ram~260_q\ & ( !\ROM|memROM~0_combout\ & ( (!\ROM|memROM~58_combout\ & (\RAM|ram~212_q\)) # 
-- (\ROM|memROM~58_combout\ & ((\RAM|ram~228_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100000000101010100101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~58_combout\,
	datab => \RAM|ALT_INV_ram~212_q\,
	datac => \RAM|ALT_INV_ram~228_q\,
	datad => \RAM|ALT_INV_ram~244_q\,
	datae => \RAM|ALT_INV_ram~260_q\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \RAM|ram~633_combout\);

-- Location: FF_X37_Y6_N49
\RAM|ram~180\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(5),
	sload => VCC,
	ena => \RAM|ram~734_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~180_q\);

-- Location: FF_X40_Y8_N8
\RAM|ram~148\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(5),
	sload => VCC,
	ena => \RAM|ram~702_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~148_q\);

-- Location: FF_X40_Y8_N19
\RAM|ram~164\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(5),
	sload => VCC,
	ena => \RAM|ram~766_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~164_q\);

-- Location: FF_X40_Y8_N2
\RAM|ram~196\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(5),
	sload => VCC,
	ena => \RAM|ram~794_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~196_q\);

-- Location: LABCELL_X40_Y8_N0
\RAM|ram~631\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~631_combout\ = ( \RAM|ram~196_q\ & ( \ROM|memROM~0_combout\ & ( (\ROM|memROM~58_combout\) # (\RAM|ram~180_q\) ) ) ) # ( !\RAM|ram~196_q\ & ( \ROM|memROM~0_combout\ & ( (\RAM|ram~180_q\ & !\ROM|memROM~58_combout\) ) ) ) # ( \RAM|ram~196_q\ & ( 
-- !\ROM|memROM~0_combout\ & ( (!\ROM|memROM~58_combout\ & (\RAM|ram~148_q\)) # (\ROM|memROM~58_combout\ & ((\RAM|ram~164_q\))) ) ) ) # ( !\RAM|ram~196_q\ & ( !\ROM|memROM~0_combout\ & ( (!\ROM|memROM~58_combout\ & (\RAM|ram~148_q\)) # 
-- (\ROM|memROM~58_combout\ & ((\RAM|ram~164_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111001100000011111101010000010100000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~180_q\,
	datab => \RAM|ALT_INV_ram~148_q\,
	datac => \ROM|ALT_INV_memROM~58_combout\,
	datad => \RAM|ALT_INV_ram~164_q\,
	datae => \RAM|ALT_INV_ram~196_q\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \RAM|ram~631_combout\);

-- Location: FF_X42_Y2_N58
\RAM|ram~116\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(5),
	sload => VCC,
	ena => \RAM|ram~742_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~116_q\);

-- Location: LABCELL_X43_Y5_N51
\RAM|ram~100feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~100feeder_combout\ = ( \CPU|REG_A|DOUT\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG_A|ALT_INV_DOUT\(5),
	combout => \RAM|ram~100feeder_combout\);

-- Location: FF_X43_Y5_N52
\RAM|ram~100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~100feeder_combout\,
	ena => \RAM|ram~774_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~100_q\);

-- Location: FF_X43_Y6_N55
\RAM|ram~84\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(5),
	sload => VCC,
	ena => \RAM|ram~710_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~84_q\);

-- Location: FF_X42_Y2_N44
\RAM|ram~132\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(5),
	sload => VCC,
	ena => \RAM|ram~806_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~132_q\);

-- Location: MLABCELL_X42_Y2_N42
\RAM|ram~632\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~632_combout\ = ( \RAM|ram~132_q\ & ( \ROM|memROM~0_combout\ & ( (\ROM|memROM~58_combout\) # (\RAM|ram~116_q\) ) ) ) # ( !\RAM|ram~132_q\ & ( \ROM|memROM~0_combout\ & ( (\RAM|ram~116_q\ & !\ROM|memROM~58_combout\) ) ) ) # ( \RAM|ram~132_q\ & ( 
-- !\ROM|memROM~0_combout\ & ( (!\ROM|memROM~58_combout\ & ((\RAM|ram~84_q\))) # (\ROM|memROM~58_combout\ & (\RAM|ram~100_q\)) ) ) ) # ( !\RAM|ram~132_q\ & ( !\ROM|memROM~0_combout\ & ( (!\ROM|memROM~58_combout\ & ((\RAM|ram~84_q\))) # 
-- (\ROM|memROM~58_combout\ & (\RAM|ram~100_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100110011000011110011001101010101000000000101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~116_q\,
	datab => \RAM|ALT_INV_ram~100_q\,
	datac => \RAM|ALT_INV_ram~84_q\,
	datad => \ROM|ALT_INV_memROM~58_combout\,
	datae => \RAM|ALT_INV_ram~132_q\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \RAM|ram~632_combout\);

-- Location: FF_X39_Y3_N43
\RAM|ram~36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(5),
	sload => VCC,
	ena => \RAM|ram~758_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~36_q\);

-- Location: LABCELL_X39_Y2_N57
\RAM|ram~52feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~52feeder_combout\ = ( \CPU|REG_A|DOUT\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG_A|ALT_INV_DOUT\(5),
	combout => \RAM|ram~52feeder_combout\);

-- Location: FF_X39_Y2_N58
\RAM|ram~52\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~52feeder_combout\,
	ena => \RAM|ram~726_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~52_q\);

-- Location: LABCELL_X41_Y4_N15
\RAM|ram~20feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~20feeder_combout\ = ( \CPU|REG_A|DOUT\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG_A|ALT_INV_DOUT\(5),
	combout => \RAM|ram~20feeder_combout\);

-- Location: FF_X41_Y4_N17
\RAM|ram~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~20feeder_combout\,
	ena => \RAM|ram~694_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~20_q\);

-- Location: FF_X41_Y2_N17
\RAM|ram~68\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(5),
	sload => VCC,
	ena => \RAM|ram~790_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~68_q\);

-- Location: LABCELL_X41_Y2_N15
\RAM|ram~630\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~630_combout\ = ( \RAM|ram~68_q\ & ( \ROM|memROM~0_combout\ & ( (\ROM|memROM~58_combout\) # (\RAM|ram~52_q\) ) ) ) # ( !\RAM|ram~68_q\ & ( \ROM|memROM~0_combout\ & ( (\RAM|ram~52_q\ & !\ROM|memROM~58_combout\) ) ) ) # ( \RAM|ram~68_q\ & ( 
-- !\ROM|memROM~0_combout\ & ( (!\ROM|memROM~58_combout\ & ((\RAM|ram~20_q\))) # (\ROM|memROM~58_combout\ & (\RAM|ram~36_q\)) ) ) ) # ( !\RAM|ram~68_q\ & ( !\ROM|memROM~0_combout\ & ( (!\ROM|memROM~58_combout\ & ((\RAM|ram~20_q\))) # (\ROM|memROM~58_combout\ 
-- & (\RAM|ram~36_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000001011111010100110000001100000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~36_q\,
	datab => \RAM|ALT_INV_ram~52_q\,
	datac => \ROM|ALT_INV_memROM~58_combout\,
	datad => \RAM|ALT_INV_ram~20_q\,
	datae => \RAM|ALT_INV_ram~68_q\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \RAM|ram~630_combout\);

-- Location: LABCELL_X41_Y5_N54
\RAM|ram~634\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~634_combout\ = ( \RAM|ram~632_combout\ & ( \RAM|ram~630_combout\ & ( (!\ROM|memROM~69_combout\) # ((!\ROM|memROM~76_combout\ & ((\RAM|ram~631_combout\))) # (\ROM|memROM~76_combout\ & (\RAM|ram~633_combout\))) ) ) ) # ( !\RAM|ram~632_combout\ & ( 
-- \RAM|ram~630_combout\ & ( (!\ROM|memROM~76_combout\ & (((!\ROM|memROM~69_combout\) # (\RAM|ram~631_combout\)))) # (\ROM|memROM~76_combout\ & (\RAM|ram~633_combout\ & ((\ROM|memROM~69_combout\)))) ) ) ) # ( \RAM|ram~632_combout\ & ( !\RAM|ram~630_combout\ 
-- & ( (!\ROM|memROM~76_combout\ & (((\RAM|ram~631_combout\ & \ROM|memROM~69_combout\)))) # (\ROM|memROM~76_combout\ & (((!\ROM|memROM~69_combout\)) # (\RAM|ram~633_combout\))) ) ) ) # ( !\RAM|ram~632_combout\ & ( !\RAM|ram~630_combout\ & ( 
-- (\ROM|memROM~69_combout\ & ((!\ROM|memROM~76_combout\ & ((\RAM|ram~631_combout\))) # (\ROM|memROM~76_combout\ & (\RAM|ram~633_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000011101001100110001110111001100000111011111111100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~633_combout\,
	datab => \ROM|ALT_INV_memROM~76_combout\,
	datac => \RAM|ALT_INV_ram~631_combout\,
	datad => \ROM|ALT_INV_memROM~69_combout\,
	datae => \RAM|ALT_INV_ram~632_combout\,
	dataf => \RAM|ALT_INV_ram~630_combout\,
	combout => \RAM|ram~634_combout\);

-- Location: FF_X39_Y4_N10
\RAM|ram~516\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(5),
	sload => VCC,
	ena => \RAM|ram~812_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~516_q\);

-- Location: FF_X39_Y4_N55
\RAM|ram~388\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(5),
	sload => VCC,
	ena => \RAM|ram~808_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~388_q\);

-- Location: FF_X39_Y4_N35
\RAM|ram~484\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(5),
	sload => VCC,
	ena => \RAM|ram~784_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~484_q\);

-- Location: LABCELL_X40_Y2_N33
\RAM|ram~356feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~356feeder_combout\ = ( \CPU|REG_A|DOUT\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG_A|ALT_INV_DOUT\(5),
	combout => \RAM|ram~356feeder_combout\);

-- Location: FF_X40_Y2_N34
\RAM|ram~356\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~356feeder_combout\,
	ena => \RAM|ram~776_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~356_q\);

-- Location: MLABCELL_X42_Y4_N48
\RAM|ram~638\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~638_combout\ = ( \ROM|memROM~69_combout\ & ( \ROM|memROM~0_combout\ & ( \RAM|ram~516_q\ ) ) ) # ( !\ROM|memROM~69_combout\ & ( \ROM|memROM~0_combout\ & ( \RAM|ram~388_q\ ) ) ) # ( \ROM|memROM~69_combout\ & ( !\ROM|memROM~0_combout\ & ( 
-- \RAM|ram~484_q\ ) ) ) # ( !\ROM|memROM~69_combout\ & ( !\ROM|memROM~0_combout\ & ( \RAM|ram~356_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111100110011001100110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~516_q\,
	datab => \RAM|ALT_INV_ram~388_q\,
	datac => \RAM|ALT_INV_ram~484_q\,
	datad => \RAM|ALT_INV_ram~356_q\,
	datae => \ROM|ALT_INV_memROM~69_combout\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \RAM|ram~638_combout\);

-- Location: FF_X42_Y4_N5
\RAM|ram~468\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(5),
	sload => VCC,
	ena => \RAM|ram~720_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~468_q\);

-- Location: LABCELL_X32_Y4_N33
\RAM|ram~372feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~372feeder_combout\ = ( \CPU|REG_A|DOUT\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG_A|ALT_INV_DOUT\(5),
	combout => \RAM|ram~372feeder_combout\);

-- Location: FF_X32_Y4_N34
\RAM|ram~372\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~372feeder_combout\,
	ena => \RAM|ram~744_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~372_q\);

-- Location: FF_X41_Y7_N52
\RAM|ram~340\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(5),
	sload => VCC,
	ena => \RAM|ram~712_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~340_q\);

-- Location: FF_X42_Y4_N59
\RAM|ram~500\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(5),
	sload => VCC,
	ena => \RAM|ram~752_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~500_q\);

-- Location: MLABCELL_X42_Y4_N57
\RAM|ram~637\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~637_combout\ = ( \RAM|ram~500_q\ & ( \ROM|memROM~0_combout\ & ( (\ROM|memROM~69_combout\) # (\RAM|ram~372_q\) ) ) ) # ( !\RAM|ram~500_q\ & ( \ROM|memROM~0_combout\ & ( (\RAM|ram~372_q\ & !\ROM|memROM~69_combout\) ) ) ) # ( \RAM|ram~500_q\ & ( 
-- !\ROM|memROM~0_combout\ & ( (!\ROM|memROM~69_combout\ & ((\RAM|ram~340_q\))) # (\ROM|memROM~69_combout\ & (\RAM|ram~468_q\)) ) ) ) # ( !\RAM|ram~500_q\ & ( !\ROM|memROM~0_combout\ & ( (!\ROM|memROM~69_combout\ & ((\RAM|ram~340_q\))) # 
-- (\ROM|memROM~69_combout\ & (\RAM|ram~468_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000001011111010100110000001100000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~468_q\,
	datab => \RAM|ALT_INV_ram~372_q\,
	datac => \ROM|ALT_INV_memROM~69_combout\,
	datad => \RAM|ALT_INV_ram~340_q\,
	datae => \RAM|ALT_INV_ram~500_q\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \RAM|ram~637_combout\);

-- Location: FF_X37_Y4_N13
\RAM|ram~308\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(5),
	sload => VCC,
	ena => \RAM|ram~728_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~308_q\);

-- Location: FF_X37_Y4_N44
\RAM|ram~404\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(5),
	sload => VCC,
	ena => \RAM|ram~704_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~404_q\);

-- Location: FF_X35_Y4_N16
\RAM|ram~276\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(5),
	sload => VCC,
	ena => \RAM|ram~696_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~276_q\);

-- Location: FF_X37_Y4_N26
\RAM|ram~436\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(5),
	sload => VCC,
	ena => \RAM|ram~736_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~436_q\);

-- Location: MLABCELL_X37_Y4_N24
\RAM|ram~635\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~635_combout\ = ( \RAM|ram~436_q\ & ( \ROM|memROM~0_combout\ & ( (\ROM|memROM~69_combout\) # (\RAM|ram~308_q\) ) ) ) # ( !\RAM|ram~436_q\ & ( \ROM|memROM~0_combout\ & ( (\RAM|ram~308_q\ & !\ROM|memROM~69_combout\) ) ) ) # ( \RAM|ram~436_q\ & ( 
-- !\ROM|memROM~0_combout\ & ( (!\ROM|memROM~69_combout\ & ((\RAM|ram~276_q\))) # (\ROM|memROM~69_combout\ & (\RAM|ram~404_q\)) ) ) ) # ( !\RAM|ram~436_q\ & ( !\ROM|memROM~0_combout\ & ( (!\ROM|memROM~69_combout\ & ((\RAM|ram~276_q\))) # 
-- (\ROM|memROM~69_combout\ & (\RAM|ram~404_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100110011000011110011001101010101000000000101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~308_q\,
	datab => \RAM|ALT_INV_ram~404_q\,
	datac => \RAM|ALT_INV_ram~276_q\,
	datad => \ROM|ALT_INV_memROM~69_combout\,
	datae => \RAM|ALT_INV_ram~436_q\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \RAM|ram~635_combout\);

-- Location: FF_X35_Y5_N44
\RAM|ram~292\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(5),
	sload => VCC,
	ena => \RAM|ram~760_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~292_q\);

-- Location: FF_X43_Y1_N56
\RAM|ram~420\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(5),
	sload => VCC,
	ena => \RAM|ram~768_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~420_q\);

-- Location: FF_X36_Y7_N34
\RAM|ram~324\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(5),
	sload => VCC,
	ena => \RAM|ram~792_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~324_q\);

-- Location: FF_X37_Y3_N8
\RAM|ram~452\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(5),
	sload => VCC,
	ena => \RAM|ram~796_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~452_q\);

-- Location: MLABCELL_X37_Y3_N6
\RAM|ram~636\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~636_combout\ = ( \RAM|ram~452_q\ & ( \ROM|memROM~0_combout\ & ( (\ROM|memROM~69_combout\) # (\RAM|ram~324_q\) ) ) ) # ( !\RAM|ram~452_q\ & ( \ROM|memROM~0_combout\ & ( (\RAM|ram~324_q\ & !\ROM|memROM~69_combout\) ) ) ) # ( \RAM|ram~452_q\ & ( 
-- !\ROM|memROM~0_combout\ & ( (!\ROM|memROM~69_combout\ & (\RAM|ram~292_q\)) # (\ROM|memROM~69_combout\ & ((\RAM|ram~420_q\))) ) ) ) # ( !\RAM|ram~452_q\ & ( !\ROM|memROM~0_combout\ & ( (!\ROM|memROM~69_combout\ & (\RAM|ram~292_q\)) # 
-- (\ROM|memROM~69_combout\ & ((\RAM|ram~420_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110011010101010011001100001111000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~292_q\,
	datab => \RAM|ALT_INV_ram~420_q\,
	datac => \RAM|ALT_INV_ram~324_q\,
	datad => \ROM|ALT_INV_memROM~69_combout\,
	datae => \RAM|ALT_INV_ram~452_q\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \RAM|ram~636_combout\);

-- Location: MLABCELL_X42_Y4_N42
\RAM|ram~639\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~639_combout\ = ( \RAM|ram~635_combout\ & ( \RAM|ram~636_combout\ & ( (!\ROM|memROM~76_combout\) # ((!\ROM|memROM~58_combout\ & ((\RAM|ram~637_combout\))) # (\ROM|memROM~58_combout\ & (\RAM|ram~638_combout\))) ) ) ) # ( !\RAM|ram~635_combout\ & ( 
-- \RAM|ram~636_combout\ & ( (!\ROM|memROM~58_combout\ & (\ROM|memROM~76_combout\ & ((\RAM|ram~637_combout\)))) # (\ROM|memROM~58_combout\ & ((!\ROM|memROM~76_combout\) # ((\RAM|ram~638_combout\)))) ) ) ) # ( \RAM|ram~635_combout\ & ( !\RAM|ram~636_combout\ 
-- & ( (!\ROM|memROM~58_combout\ & ((!\ROM|memROM~76_combout\) # ((\RAM|ram~637_combout\)))) # (\ROM|memROM~58_combout\ & (\ROM|memROM~76_combout\ & (\RAM|ram~638_combout\))) ) ) ) # ( !\RAM|ram~635_combout\ & ( !\RAM|ram~636_combout\ & ( 
-- (\ROM|memROM~76_combout\ & ((!\ROM|memROM~58_combout\ & ((\RAM|ram~637_combout\))) # (\ROM|memROM~58_combout\ & (\RAM|ram~638_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011100010011010101101000101011001111100110111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~58_combout\,
	datab => \ROM|ALT_INV_memROM~76_combout\,
	datac => \RAM|ALT_INV_ram~638_combout\,
	datad => \RAM|ALT_INV_ram~637_combout\,
	datae => \RAM|ALT_INV_ram~635_combout\,
	dataf => \RAM|ALT_INV_ram~636_combout\,
	combout => \RAM|ram~639_combout\);

-- Location: LABCELL_X41_Y5_N24
\RAM|ram~650\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~650_combout\ = ( \RAM|ram~634_combout\ & ( \RAM|ram~639_combout\ & ( (!\ROM|memROM~153_combout\) # ((!\ROM|memROM~45_combout\ & (\RAM|ram~644_combout\)) # (\ROM|memROM~45_combout\ & ((\RAM|ram~649_combout\)))) ) ) ) # ( !\RAM|ram~634_combout\ & ( 
-- \RAM|ram~639_combout\ & ( (!\ROM|memROM~153_combout\ & (\ROM|memROM~45_combout\)) # (\ROM|memROM~153_combout\ & ((!\ROM|memROM~45_combout\ & (\RAM|ram~644_combout\)) # (\ROM|memROM~45_combout\ & ((\RAM|ram~649_combout\))))) ) ) ) # ( \RAM|ram~634_combout\ 
-- & ( !\RAM|ram~639_combout\ & ( (!\ROM|memROM~153_combout\ & (!\ROM|memROM~45_combout\)) # (\ROM|memROM~153_combout\ & ((!\ROM|memROM~45_combout\ & (\RAM|ram~644_combout\)) # (\ROM|memROM~45_combout\ & ((\RAM|ram~649_combout\))))) ) ) ) # ( 
-- !\RAM|ram~634_combout\ & ( !\RAM|ram~639_combout\ & ( (\ROM|memROM~153_combout\ & ((!\ROM|memROM~45_combout\ & (\RAM|ram~644_combout\)) # (\ROM|memROM~45_combout\ & ((\RAM|ram~649_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000010101100011001001110100100110001101111010111010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~153_combout\,
	datab => \ROM|ALT_INV_memROM~45_combout\,
	datac => \RAM|ALT_INV_ram~644_combout\,
	datad => \RAM|ALT_INV_ram~649_combout\,
	datae => \RAM|ALT_INV_ram~634_combout\,
	dataf => \RAM|ALT_INV_ram~639_combout\,
	combout => \RAM|ram~650_combout\);

-- Location: LABCELL_X41_Y5_N33
\CPU|MUX1|saida_MUX[5]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[5]~4_combout\ = ( \RAM|ram~650_combout\ & ( (!\CPU|DECODER|SEL_MUX~0_combout\ & (((!\ENABLE_SWR~2_combout\)) # (\SW[5]~input_o\))) # (\CPU|DECODER|SEL_MUX~0_combout\ & (((\ROM|memROM~45_combout\)))) ) ) # ( !\RAM|ram~650_combout\ & ( 
-- (!\CPU|DECODER|SEL_MUX~0_combout\ & (\SW[5]~input_o\ & ((\ENABLE_SWR~2_combout\)))) # (\CPU|DECODER|SEL_MUX~0_combout\ & (((\ROM|memROM~45_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110011000001010011001111110101001100111111010100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[5]~input_o\,
	datab => \ROM|ALT_INV_memROM~45_combout\,
	datac => \ALT_INV_ENABLE_SWR~2_combout\,
	datad => \CPU|DECODER|ALT_INV_SEL_MUX~0_combout\,
	dataf => \RAM|ALT_INV_ram~650_combout\,
	combout => \CPU|MUX1|saida_MUX[5]~4_combout\);

-- Location: LABCELL_X41_Y3_N45
\CPU|ULA1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~21_sumout\ = SUM(( \CPU|REG_A|DOUT\(5) ) + ( \CPU|MUX1|saida_MUX[5]~4_combout\ ) + ( \CPU|ULA1|Add0~18\ ))
-- \CPU|ULA1|Add0~22\ = CARRY(( \CPU|REG_A|DOUT\(5) ) + ( \CPU|MUX1|saida_MUX[5]~4_combout\ ) + ( \CPU|ULA1|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|REG_A|ALT_INV_DOUT\(5),
	dataf => \CPU|MUX1|ALT_INV_saida_MUX[5]~4_combout\,
	cin => \CPU|ULA1|Add0~18\,
	sumout => \CPU|ULA1|Add0~21_sumout\,
	cout => \CPU|ULA1|Add0~22\);

-- Location: LABCELL_X41_Y3_N18
\CPU|ULA1|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~21_sumout\ = SUM(( \CPU|REG_A|DOUT\(5) ) + ( !\CPU|MUX1|saida_MUX[5]~4_combout\ ) + ( \CPU|ULA1|Add1~18\ ))
-- \CPU|ULA1|Add1~22\ = CARRY(( \CPU|REG_A|DOUT\(5) ) + ( !\CPU|MUX1|saida_MUX[5]~4_combout\ ) + ( \CPU|ULA1|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|MUX1|ALT_INV_saida_MUX[5]~4_combout\,
	datad => \CPU|REG_A|ALT_INV_DOUT\(5),
	cin => \CPU|ULA1|Add1~18\,
	sumout => \CPU|ULA1|Add1~21_sumout\,
	cout => \CPU|ULA1|Add1~22\);

-- Location: LABCELL_X40_Y3_N39
\CPU|ULA1|saida[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[5]~5_combout\ = ( \CPU|ULA1|Add1~21_sumout\ & ( (!\CPU|DECODER|OP_ULA[1]~0_combout\) # (\CPU|MUX1|saida_MUX[5]~4_combout\) ) ) # ( !\CPU|ULA1|Add1~21_sumout\ & ( (\CPU|DECODER|OP_ULA[1]~0_combout\ & \CPU|MUX1|saida_MUX[5]~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|DECODER|ALT_INV_OP_ULA[1]~0_combout\,
	datad => \CPU|MUX1|ALT_INV_saida_MUX[5]~4_combout\,
	dataf => \CPU|ULA1|ALT_INV_Add1~21_sumout\,
	combout => \CPU|ULA1|saida[5]~5_combout\);

-- Location: FF_X41_Y3_N47
\CPU|REG_A|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|ULA1|Add0~21_sumout\,
	asdata => \CPU|ULA1|saida[5]~5_combout\,
	sload => \CPU|DECODER|OP_ULA[0]~1_combout\,
	ena => \CPU|DECODER|HAB_A~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_A|DOUT\(5));

-- Location: LABCELL_X41_Y3_N48
\CPU|ULA1|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~25_sumout\ = SUM(( \CPU|REG_A|DOUT\(6) ) + ( (!\CPU|DECODER|sinais_controle~0_combout\ & (((\CPU|MUX1|saida_MUX[6]~5_combout\)))) # (\CPU|DECODER|sinais_controle~0_combout\ & ((!\CPU|DECODER|OP_ULA[0]~2_combout\ & (\ROM|memROM~28_combout\)) 
-- # (\CPU|DECODER|OP_ULA[0]~2_combout\ & ((\CPU|MUX1|saida_MUX[6]~5_combout\))))) ) + ( \CPU|ULA1|Add0~22\ ))
-- \CPU|ULA1|Add0~26\ = CARRY(( \CPU|REG_A|DOUT\(6) ) + ( (!\CPU|DECODER|sinais_controle~0_combout\ & (((\CPU|MUX1|saida_MUX[6]~5_combout\)))) # (\CPU|DECODER|sinais_controle~0_combout\ & ((!\CPU|DECODER|OP_ULA[0]~2_combout\ & (\ROM|memROM~28_combout\)) # 
-- (\CPU|DECODER|OP_ULA[0]~2_combout\ & ((\CPU|MUX1|saida_MUX[6]~5_combout\))))) ) + ( \CPU|ULA1|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110110100000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_sinais_controle~0_combout\,
	datab => \CPU|DECODER|ALT_INV_OP_ULA[0]~2_combout\,
	datac => \ROM|ALT_INV_memROM~28_combout\,
	datad => \CPU|REG_A|ALT_INV_DOUT\(6),
	dataf => \CPU|MUX1|ALT_INV_saida_MUX[6]~5_combout\,
	cin => \CPU|ULA1|Add0~22\,
	sumout => \CPU|ULA1|Add0~25_sumout\,
	cout => \CPU|ULA1|Add0~26\);

-- Location: LABCELL_X41_Y3_N54
\CPU|ULA1|saida[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[6]~6_combout\ = ( \CPU|ULA1|Add1~25_sumout\ & ( (!\CPU|DECODER|OP_ULA[1]~0_combout\) # ((!\CPU|DECODER|SEL_MUX~0_combout\ & (\CPU|MUX1|saida_MUX[6]~5_combout\)) # (\CPU|DECODER|SEL_MUX~0_combout\ & ((\ROM|memROM~28_combout\)))) ) ) # ( 
-- !\CPU|ULA1|Add1~25_sumout\ & ( (\CPU|DECODER|OP_ULA[1]~0_combout\ & ((!\CPU|DECODER|SEL_MUX~0_combout\ & (\CPU|MUX1|saida_MUX[6]~5_combout\)) # (\CPU|DECODER|SEL_MUX~0_combout\ & ((\ROM|memROM~28_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000010011000000100001001111001110110111111100111011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_SEL_MUX~0_combout\,
	datab => \CPU|DECODER|ALT_INV_OP_ULA[1]~0_combout\,
	datac => \CPU|MUX1|ALT_INV_saida_MUX[6]~5_combout\,
	datad => \ROM|ALT_INV_memROM~28_combout\,
	dataf => \CPU|ULA1|ALT_INV_Add1~25_sumout\,
	combout => \CPU|ULA1|saida[6]~6_combout\);

-- Location: FF_X41_Y3_N50
\CPU|REG_A|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|ULA1|Add0~25_sumout\,
	asdata => \CPU|ULA1|saida[6]~6_combout\,
	sload => \CPU|DECODER|OP_ULA[0]~1_combout\,
	ena => \CPU|DECODER|HAB_A~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_A|DOUT\(6));

-- Location: FF_X36_Y5_N58
\RAM|ram~285\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(6),
	sload => VCC,
	ena => \RAM|ram~700_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~285_q\);

-- Location: FF_X35_Y3_N50
\RAM|ram~413\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(6),
	sload => VCC,
	ena => \RAM|ram~708_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~413_q\);

-- Location: LABCELL_X39_Y3_N3
\RAM|ram~301feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~301feeder_combout\ = ( \CPU|REG_A|DOUT\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG_A|ALT_INV_DOUT\(6),
	combout => \RAM|ram~301feeder_combout\);

-- Location: FF_X39_Y3_N4
\RAM|ram~301\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~301feeder_combout\,
	ena => \RAM|ram~764_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~301_q\);

-- Location: FF_X35_Y5_N8
\RAM|ram~429\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(6),
	sload => VCC,
	ena => \RAM|ram~772_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~429_q\);

-- Location: LABCELL_X35_Y5_N6
\RAM|ram~657\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~657_combout\ = ( \RAM|ram~429_q\ & ( \ROM|memROM~69_combout\ & ( (\ROM|memROM~58_combout\) # (\RAM|ram~413_q\) ) ) ) # ( !\RAM|ram~429_q\ & ( \ROM|memROM~69_combout\ & ( (\RAM|ram~413_q\ & !\ROM|memROM~58_combout\) ) ) ) # ( \RAM|ram~429_q\ & ( 
-- !\ROM|memROM~69_combout\ & ( (!\ROM|memROM~58_combout\ & (\RAM|ram~285_q\)) # (\ROM|memROM~58_combout\ & ((\RAM|ram~301_q\))) ) ) ) # ( !\RAM|ram~429_q\ & ( !\ROM|memROM~69_combout\ & ( (!\ROM|memROM~58_combout\ & (\RAM|ram~285_q\)) # 
-- (\ROM|memROM~58_combout\ & ((\RAM|ram~301_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111010100000101111100110000001100000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~285_q\,
	datab => \RAM|ALT_INV_ram~413_q\,
	datac => \ROM|ALT_INV_memROM~58_combout\,
	datad => \RAM|ALT_INV_ram~301_q\,
	datae => \RAM|ALT_INV_ram~429_q\,
	dataf => \ROM|ALT_INV_memROM~69_combout\,
	combout => \RAM|ram~657_combout\);

-- Location: FF_X35_Y4_N58
\RAM|ram~277\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(6),
	sload => VCC,
	ena => \RAM|ram~696_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~277_q\);

-- Location: FF_X35_Y5_N47
\RAM|ram~293\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(6),
	sload => VCC,
	ena => \RAM|ram~760_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~293_q\);

-- Location: FF_X39_Y6_N28
\RAM|ram~405\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(6),
	sload => VCC,
	ena => \RAM|ram~704_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~405_q\);

-- Location: FF_X35_Y5_N26
\RAM|ram~421\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(6),
	sload => VCC,
	ena => \RAM|ram~768_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~421_q\);

-- Location: LABCELL_X35_Y5_N24
\RAM|ram~656\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~656_combout\ = ( \RAM|ram~421_q\ & ( \ROM|memROM~69_combout\ & ( (\RAM|ram~405_q\) # (\ROM|memROM~58_combout\) ) ) ) # ( !\RAM|ram~421_q\ & ( \ROM|memROM~69_combout\ & ( (!\ROM|memROM~58_combout\ & \RAM|ram~405_q\) ) ) ) # ( \RAM|ram~421_q\ & ( 
-- !\ROM|memROM~69_combout\ & ( (!\ROM|memROM~58_combout\ & (\RAM|ram~277_q\)) # (\ROM|memROM~58_combout\ & ((\RAM|ram~293_q\))) ) ) ) # ( !\RAM|ram~421_q\ & ( !\ROM|memROM~69_combout\ & ( (!\ROM|memROM~58_combout\ & (\RAM|ram~277_q\)) # 
-- (\ROM|memROM~58_combout\ & ((\RAM|ram~293_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011010100110101001100000000111100000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~277_q\,
	datab => \RAM|ALT_INV_ram~293_q\,
	datac => \ROM|ALT_INV_memROM~58_combout\,
	datad => \RAM|ALT_INV_ram~405_q\,
	datae => \RAM|ALT_INV_ram~421_q\,
	dataf => \ROM|ALT_INV_memROM~69_combout\,
	combout => \RAM|ram~656_combout\);

-- Location: LABCELL_X39_Y5_N48
\RAM|ram~349feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~349feeder_combout\ = ( \CPU|REG_A|DOUT\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG_A|ALT_INV_DOUT\(6),
	combout => \RAM|ram~349feeder_combout\);

-- Location: FF_X39_Y5_N50
\RAM|ram~349\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~349feeder_combout\,
	ena => \RAM|ram~716_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~349_q\);

-- Location: FF_X39_Y6_N14
\RAM|ram~477\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(6),
	sload => VCC,
	ena => \RAM|ram~724_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~477_q\);

-- Location: FF_X39_Y7_N1
\RAM|ram~365\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(6),
	sload => VCC,
	ena => \RAM|ram~780_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~365_q\);

-- Location: FF_X39_Y5_N38
\RAM|ram~493\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(6),
	sload => VCC,
	ena => \RAM|ram~788_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~493_q\);

-- Location: LABCELL_X39_Y5_N36
\RAM|ram~659\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~659_combout\ = ( \RAM|ram~493_q\ & ( \ROM|memROM~69_combout\ & ( (\ROM|memROM~58_combout\) # (\RAM|ram~477_q\) ) ) ) # ( !\RAM|ram~493_q\ & ( \ROM|memROM~69_combout\ & ( (\RAM|ram~477_q\ & !\ROM|memROM~58_combout\) ) ) ) # ( \RAM|ram~493_q\ & ( 
-- !\ROM|memROM~69_combout\ & ( (!\ROM|memROM~58_combout\ & (\RAM|ram~349_q\)) # (\ROM|memROM~58_combout\ & ((\RAM|ram~365_q\))) ) ) ) # ( !\RAM|ram~493_q\ & ( !\ROM|memROM~69_combout\ & ( (!\ROM|memROM~58_combout\ & (\RAM|ram~349_q\)) # 
-- (\ROM|memROM~58_combout\ & ((\RAM|ram~365_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111010101010000111100110011000000000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~349_q\,
	datab => \RAM|ALT_INV_ram~477_q\,
	datac => \RAM|ALT_INV_ram~365_q\,
	datad => \ROM|ALT_INV_memROM~58_combout\,
	datae => \RAM|ALT_INV_ram~493_q\,
	dataf => \ROM|ALT_INV_memROM~69_combout\,
	combout => \RAM|ram~659_combout\);

-- Location: LABCELL_X40_Y2_N45
\RAM|ram~357feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~357feeder_combout\ = ( \CPU|REG_A|DOUT\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG_A|ALT_INV_DOUT\(6),
	combout => \RAM|ram~357feeder_combout\);

-- Location: FF_X40_Y2_N46
\RAM|ram~357\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~357feeder_combout\,
	ena => \RAM|ram~776_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~357_q\);

-- Location: LABCELL_X41_Y7_N36
\RAM|ram~341feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~341feeder_combout\ = ( \CPU|REG_A|DOUT\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG_A|ALT_INV_DOUT\(6),
	combout => \RAM|ram~341feeder_combout\);

-- Location: FF_X41_Y7_N38
\RAM|ram~341\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~341feeder_combout\,
	ena => \RAM|ram~712_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~341_q\);

-- Location: FF_X42_Y4_N1
\RAM|ram~469\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(6),
	sload => VCC,
	ena => \RAM|ram~720_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~469_q\);

-- Location: FF_X37_Y2_N38
\RAM|ram~485\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(6),
	sload => VCC,
	ena => \RAM|ram~784_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~485_q\);

-- Location: MLABCELL_X37_Y2_N36
\RAM|ram~658\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~658_combout\ = ( \RAM|ram~485_q\ & ( \ROM|memROM~69_combout\ & ( (\ROM|memROM~58_combout\) # (\RAM|ram~469_q\) ) ) ) # ( !\RAM|ram~485_q\ & ( \ROM|memROM~69_combout\ & ( (\RAM|ram~469_q\ & !\ROM|memROM~58_combout\) ) ) ) # ( \RAM|ram~485_q\ & ( 
-- !\ROM|memROM~69_combout\ & ( (!\ROM|memROM~58_combout\ & ((\RAM|ram~341_q\))) # (\ROM|memROM~58_combout\ & (\RAM|ram~357_q\)) ) ) ) # ( !\RAM|ram~485_q\ & ( !\ROM|memROM~69_combout\ & ( (!\ROM|memROM~58_combout\ & ((\RAM|ram~341_q\))) # 
-- (\ROM|memROM~58_combout\ & (\RAM|ram~357_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101010101001100110101010100001111000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~357_q\,
	datab => \RAM|ALT_INV_ram~341_q\,
	datac => \RAM|ALT_INV_ram~469_q\,
	datad => \ROM|ALT_INV_memROM~58_combout\,
	datae => \RAM|ALT_INV_ram~485_q\,
	dataf => \ROM|ALT_INV_memROM~69_combout\,
	combout => \RAM|ram~658_combout\);

-- Location: MLABCELL_X37_Y5_N54
\RAM|ram~660\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~660_combout\ = ( \RAM|ram~659_combout\ & ( \RAM|ram~658_combout\ & ( ((!\ROM|memROM~153_combout\ & ((\RAM|ram~656_combout\))) # (\ROM|memROM~153_combout\ & (\RAM|ram~657_combout\))) # (\ROM|memROM~76_combout\) ) ) ) # ( !\RAM|ram~659_combout\ & ( 
-- \RAM|ram~658_combout\ & ( (!\ROM|memROM~76_combout\ & ((!\ROM|memROM~153_combout\ & ((\RAM|ram~656_combout\))) # (\ROM|memROM~153_combout\ & (\RAM|ram~657_combout\)))) # (\ROM|memROM~76_combout\ & (!\ROM|memROM~153_combout\)) ) ) ) # ( 
-- \RAM|ram~659_combout\ & ( !\RAM|ram~658_combout\ & ( (!\ROM|memROM~76_combout\ & ((!\ROM|memROM~153_combout\ & ((\RAM|ram~656_combout\))) # (\ROM|memROM~153_combout\ & (\RAM|ram~657_combout\)))) # (\ROM|memROM~76_combout\ & (\ROM|memROM~153_combout\)) ) ) 
-- ) # ( !\RAM|ram~659_combout\ & ( !\RAM|ram~658_combout\ & ( (!\ROM|memROM~76_combout\ & ((!\ROM|memROM~153_combout\ & ((\RAM|ram~656_combout\))) # (\ROM|memROM~153_combout\ & (\RAM|ram~657_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000100111001101101000110110011100101011111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~76_combout\,
	datab => \ROM|ALT_INV_memROM~153_combout\,
	datac => \RAM|ALT_INV_ram~657_combout\,
	datad => \RAM|ALT_INV_ram~656_combout\,
	datae => \RAM|ALT_INV_ram~659_combout\,
	dataf => \RAM|ALT_INV_ram~658_combout\,
	combout => \RAM|ram~660_combout\);

-- Location: FF_X36_Y3_N17
\RAM|ram~461\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(6),
	sload => VCC,
	ena => \RAM|ram~804_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~461_q\);

-- Location: FF_X36_Y3_N53
\RAM|ram~525\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(6),
	sload => VCC,
	ena => \RAM|ram~820_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~525_q\);

-- Location: FF_X36_Y2_N1
\RAM|ram~509\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(6),
	sload => VCC,
	ena => \RAM|ram~756_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~509_q\);

-- Location: FF_X40_Y6_N53
\RAM|ram~445\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(6),
	sload => VCC,
	ena => \RAM|ram~740_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~445_q\);

-- Location: MLABCELL_X37_Y4_N30
\RAM|ram~669\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~669_combout\ = ( \ROM|memROM~76_combout\ & ( \ROM|memROM~58_combout\ & ( \RAM|ram~525_q\ ) ) ) # ( !\ROM|memROM~76_combout\ & ( \ROM|memROM~58_combout\ & ( \RAM|ram~461_q\ ) ) ) # ( \ROM|memROM~76_combout\ & ( !\ROM|memROM~58_combout\ & ( 
-- \RAM|ram~509_q\ ) ) ) # ( !\ROM|memROM~76_combout\ & ( !\ROM|memROM~58_combout\ & ( \RAM|ram~445_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111101010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~461_q\,
	datab => \RAM|ALT_INV_ram~525_q\,
	datac => \RAM|ALT_INV_ram~509_q\,
	datad => \RAM|ALT_INV_ram~445_q\,
	datae => \ROM|ALT_INV_memROM~76_combout\,
	dataf => \ROM|ALT_INV_memROM~58_combout\,
	combout => \RAM|ram~669_combout\);

-- Location: FF_X35_Y2_N10
\RAM|ram~381\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(6),
	sload => VCC,
	ena => \RAM|ram~748_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~381_q\);

-- Location: FF_X37_Y3_N20
\RAM|ram~333\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(6),
	sload => VCC,
	ena => \RAM|ram~800_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~333_q\);

-- Location: FF_X36_Y4_N8
\RAM|ram~317\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(6),
	sload => VCC,
	ena => \RAM|ram~732_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~317_q\);

-- Location: FF_X36_Y4_N29
\RAM|ram~397\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(6),
	sload => VCC,
	ena => \RAM|ram~816_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~397_q\);

-- Location: LABCELL_X36_Y4_N27
\RAM|ram~667\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~667_combout\ = ( \RAM|ram~397_q\ & ( \ROM|memROM~76_combout\ & ( (\ROM|memROM~58_combout\) # (\RAM|ram~381_q\) ) ) ) # ( !\RAM|ram~397_q\ & ( \ROM|memROM~76_combout\ & ( (\RAM|ram~381_q\ & !\ROM|memROM~58_combout\) ) ) ) # ( \RAM|ram~397_q\ & ( 
-- !\ROM|memROM~76_combout\ & ( (!\ROM|memROM~58_combout\ & ((\RAM|ram~317_q\))) # (\ROM|memROM~58_combout\ & (\RAM|ram~333_q\)) ) ) ) # ( !\RAM|ram~397_q\ & ( !\ROM|memROM~76_combout\ & ( (!\ROM|memROM~58_combout\ & ((\RAM|ram~317_q\))) # 
-- (\ROM|memROM~58_combout\ & (\RAM|ram~333_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100110011000011110011001101010101000000000101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~381_q\,
	datab => \RAM|ALT_INV_ram~333_q\,
	datac => \RAM|ALT_INV_ram~317_q\,
	datad => \ROM|ALT_INV_memROM~58_combout\,
	datae => \RAM|ALT_INV_ram~397_q\,
	dataf => \ROM|ALT_INV_memROM~76_combout\,
	combout => \RAM|ram~667_combout\);

-- Location: FF_X37_Y3_N55
\RAM|ram~453\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(6),
	sload => VCC,
	ena => \RAM|ram~796_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~453_q\);

-- Location: FF_X37_Y4_N58
\RAM|ram~437\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(6),
	sload => VCC,
	ena => \RAM|ram~736_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~437_q\);

-- Location: FF_X42_Y4_N55
\RAM|ram~501\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(6),
	sload => VCC,
	ena => \RAM|ram~752_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~501_q\);

-- Location: FF_X39_Y4_N16
\RAM|ram~517\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(6),
	sload => VCC,
	ena => \RAM|ram~812_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~517_q\);

-- Location: LABCELL_X39_Y5_N21
\RAM|ram~668\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~668_combout\ = ( \ROM|memROM~58_combout\ & ( \ROM|memROM~76_combout\ & ( \RAM|ram~517_q\ ) ) ) # ( !\ROM|memROM~58_combout\ & ( \ROM|memROM~76_combout\ & ( \RAM|ram~501_q\ ) ) ) # ( \ROM|memROM~58_combout\ & ( !\ROM|memROM~76_combout\ & ( 
-- \RAM|ram~453_q\ ) ) ) # ( !\ROM|memROM~58_combout\ & ( !\ROM|memROM~76_combout\ & ( \RAM|ram~437_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011010101010101010100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~453_q\,
	datab => \RAM|ALT_INV_ram~437_q\,
	datac => \RAM|ALT_INV_ram~501_q\,
	datad => \RAM|ALT_INV_ram~517_q\,
	datae => \ROM|ALT_INV_memROM~58_combout\,
	dataf => \ROM|ALT_INV_memROM~76_combout\,
	combout => \RAM|ram~668_combout\);

-- Location: FF_X41_Y2_N11
\RAM|ram~325\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(6),
	sload => VCC,
	ena => \RAM|ram~792_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~325_q\);

-- Location: FF_X39_Y2_N23
\RAM|ram~309\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(6),
	sload => VCC,
	ena => \RAM|ram~728_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~309_q\);

-- Location: FF_X42_Y4_N31
\RAM|ram~373\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(6),
	sload => VCC,
	ena => \RAM|ram~744_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~373_q\);

-- Location: FF_X42_Y5_N47
\RAM|ram~389\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(6),
	sload => VCC,
	ena => \RAM|ram~808_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~389_q\);

-- Location: MLABCELL_X42_Y5_N45
\RAM|ram~666\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~666_combout\ = ( \RAM|ram~389_q\ & ( \ROM|memROM~76_combout\ & ( (\ROM|memROM~58_combout\) # (\RAM|ram~373_q\) ) ) ) # ( !\RAM|ram~389_q\ & ( \ROM|memROM~76_combout\ & ( (\RAM|ram~373_q\ & !\ROM|memROM~58_combout\) ) ) ) # ( \RAM|ram~389_q\ & ( 
-- !\ROM|memROM~76_combout\ & ( (!\ROM|memROM~58_combout\ & ((\RAM|ram~309_q\))) # (\ROM|memROM~58_combout\ & (\RAM|ram~325_q\)) ) ) ) # ( !\RAM|ram~389_q\ & ( !\ROM|memROM~76_combout\ & ( (!\ROM|memROM~58_combout\ & ((\RAM|ram~309_q\))) # 
-- (\ROM|memROM~58_combout\ & (\RAM|ram~325_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101010101001100110101010100001111000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~325_q\,
	datab => \RAM|ALT_INV_ram~309_q\,
	datac => \RAM|ALT_INV_ram~373_q\,
	datad => \ROM|ALT_INV_memROM~58_combout\,
	datae => \RAM|ALT_INV_ram~389_q\,
	dataf => \ROM|ALT_INV_memROM~76_combout\,
	combout => \RAM|ram~666_combout\);

-- Location: MLABCELL_X37_Y5_N12
\RAM|ram~670\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~670_combout\ = ( \RAM|ram~668_combout\ & ( \RAM|ram~666_combout\ & ( (!\ROM|memROM~153_combout\) # ((!\ROM|memROM~69_combout\ & ((\RAM|ram~667_combout\))) # (\ROM|memROM~69_combout\ & (\RAM|ram~669_combout\))) ) ) ) # ( !\RAM|ram~668_combout\ & ( 
-- \RAM|ram~666_combout\ & ( (!\ROM|memROM~69_combout\ & ((!\ROM|memROM~153_combout\) # ((\RAM|ram~667_combout\)))) # (\ROM|memROM~69_combout\ & (\ROM|memROM~153_combout\ & (\RAM|ram~669_combout\))) ) ) ) # ( \RAM|ram~668_combout\ & ( !\RAM|ram~666_combout\ 
-- & ( (!\ROM|memROM~69_combout\ & (\ROM|memROM~153_combout\ & ((\RAM|ram~667_combout\)))) # (\ROM|memROM~69_combout\ & ((!\ROM|memROM~153_combout\) # ((\RAM|ram~669_combout\)))) ) ) ) # ( !\RAM|ram~668_combout\ & ( !\RAM|ram~666_combout\ & ( 
-- (\ROM|memROM~153_combout\ & ((!\ROM|memROM~69_combout\ & ((\RAM|ram~667_combout\))) # (\ROM|memROM~69_combout\ & (\RAM|ram~669_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011010001010110011110001001101010111100110111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~69_combout\,
	datab => \ROM|ALT_INV_memROM~153_combout\,
	datac => \RAM|ALT_INV_ram~669_combout\,
	datad => \RAM|ALT_INV_ram~667_combout\,
	datae => \RAM|ALT_INV_ram~668_combout\,
	dataf => \RAM|ALT_INV_ram~666_combout\,
	combout => \RAM|ram~670_combout\);

-- Location: FF_X37_Y6_N47
\RAM|ram~189\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(6),
	sload => VCC,
	ena => \RAM|ram~738_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~189_q\);

-- Location: FF_X37_Y6_N53
\RAM|ram~181\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(6),
	sload => VCC,
	ena => \RAM|ram~734_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~181_q\);

-- Location: FF_X40_Y8_N52
\RAM|ram~197\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(6),
	sload => VCC,
	ena => \RAM|ram~794_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~197_q\);

-- Location: FF_X37_Y6_N8
\RAM|ram~205\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(6),
	sload => VCC,
	ena => \RAM|ram~802_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~205_q\);

-- Location: MLABCELL_X37_Y6_N6
\RAM|ram~662\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~662_combout\ = ( \RAM|ram~205_q\ & ( \ROM|memROM~58_combout\ & ( (\RAM|ram~197_q\) # (\ROM|memROM~153_combout\) ) ) ) # ( !\RAM|ram~205_q\ & ( \ROM|memROM~58_combout\ & ( (!\ROM|memROM~153_combout\ & \RAM|ram~197_q\) ) ) ) # ( \RAM|ram~205_q\ & ( 
-- !\ROM|memROM~58_combout\ & ( (!\ROM|memROM~153_combout\ & ((\RAM|ram~181_q\))) # (\ROM|memROM~153_combout\ & (\RAM|ram~189_q\)) ) ) ) # ( !\RAM|ram~205_q\ & ( !\ROM|memROM~58_combout\ & ( (!\ROM|memROM~153_combout\ & ((\RAM|ram~181_q\))) # 
-- (\ROM|memROM~153_combout\ & (\RAM|ram~189_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100000000101010100101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~153_combout\,
	datab => \RAM|ALT_INV_ram~189_q\,
	datac => \RAM|ALT_INV_ram~181_q\,
	datad => \RAM|ALT_INV_ram~197_q\,
	datae => \RAM|ALT_INV_ram~205_q\,
	dataf => \ROM|ALT_INV_memROM~58_combout\,
	combout => \RAM|ram~662_combout\);

-- Location: FF_X37_Y5_N47
\RAM|ram~133\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(6),
	sload => VCC,
	ena => \RAM|ram~806_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~133_q\);

-- Location: FF_X37_Y5_N5
\RAM|ram~125\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(6),
	sload => VCC,
	ena => \RAM|ram~746_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~125_q\);

-- Location: FF_X37_Y2_N43
\RAM|ram~117\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(6),
	sload => VCC,
	ena => \RAM|ram~742_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~117_q\);

-- Location: FF_X37_Y5_N32
\RAM|ram~141\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(6),
	sload => VCC,
	ena => \RAM|ram~814_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~141_q\);

-- Location: MLABCELL_X37_Y5_N30
\RAM|ram~663\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~663_combout\ = ( \RAM|ram~141_q\ & ( \ROM|memROM~153_combout\ & ( (\RAM|ram~125_q\) # (\ROM|memROM~58_combout\) ) ) ) # ( !\RAM|ram~141_q\ & ( \ROM|memROM~153_combout\ & ( (!\ROM|memROM~58_combout\ & \RAM|ram~125_q\) ) ) ) # ( \RAM|ram~141_q\ & ( 
-- !\ROM|memROM~153_combout\ & ( (!\ROM|memROM~58_combout\ & ((\RAM|ram~117_q\))) # (\ROM|memROM~58_combout\ & (\RAM|ram~133_q\)) ) ) ) # ( !\RAM|ram~141_q\ & ( !\ROM|memROM~153_combout\ & ( (!\ROM|memROM~58_combout\ & ((\RAM|ram~117_q\))) # 
-- (\ROM|memROM~58_combout\ & (\RAM|ram~133_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000110111011000100011011101100001010000010100101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~58_combout\,
	datab => \RAM|ALT_INV_ram~133_q\,
	datac => \RAM|ALT_INV_ram~125_q\,
	datad => \RAM|ALT_INV_ram~117_q\,
	datae => \RAM|ALT_INV_ram~141_q\,
	dataf => \ROM|ALT_INV_memROM~153_combout\,
	combout => \RAM|ram~663_combout\);

-- Location: FF_X39_Y2_N50
\RAM|ram~53\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(6),
	sload => VCC,
	ena => \RAM|ram~726_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~53_q\);

-- Location: FF_X34_Y6_N1
\RAM|ram~61\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(6),
	sload => VCC,
	ena => \RAM|ram~730_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~61_q\);

-- Location: FF_X41_Y2_N13
\RAM|ram~69\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(6),
	sload => VCC,
	ena => \RAM|ram~790_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~69_q\);

-- Location: FF_X34_Y5_N53
\RAM|ram~77\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(6),
	sload => VCC,
	ena => \RAM|ram~798_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~77_q\);

-- Location: MLABCELL_X34_Y5_N51
\RAM|ram~661\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~661_combout\ = ( \RAM|ram~77_q\ & ( \ROM|memROM~153_combout\ & ( (\ROM|memROM~58_combout\) # (\RAM|ram~61_q\) ) ) ) # ( !\RAM|ram~77_q\ & ( \ROM|memROM~153_combout\ & ( (\RAM|ram~61_q\ & !\ROM|memROM~58_combout\) ) ) ) # ( \RAM|ram~77_q\ & ( 
-- !\ROM|memROM~153_combout\ & ( (!\ROM|memROM~58_combout\ & (\RAM|ram~53_q\)) # (\ROM|memROM~58_combout\ & ((\RAM|ram~69_q\))) ) ) ) # ( !\RAM|ram~77_q\ & ( !\ROM|memROM~153_combout\ & ( (!\ROM|memROM~58_combout\ & (\RAM|ram~53_q\)) # 
-- (\ROM|memROM~58_combout\ & ((\RAM|ram~69_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111010100000101111100110000001100000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~53_q\,
	datab => \RAM|ALT_INV_ram~61_q\,
	datac => \ROM|ALT_INV_memROM~58_combout\,
	datad => \RAM|ALT_INV_ram~69_q\,
	datae => \RAM|ALT_INV_ram~77_q\,
	dataf => \ROM|ALT_INV_memROM~153_combout\,
	combout => \RAM|ram~661_combout\);

-- Location: LABCELL_X44_Y5_N9
\RAM|ram~261feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~261feeder_combout\ = ( \CPU|REG_A|DOUT\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG_A|ALT_INV_DOUT\(6),
	combout => \RAM|ram~261feeder_combout\);

-- Location: FF_X44_Y5_N11
\RAM|ram~261\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~261feeder_combout\,
	ena => \RAM|ram~810_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~261_q\);

-- Location: LABCELL_X43_Y7_N42
\RAM|ram~245feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~245feeder_combout\ = ( \CPU|REG_A|DOUT\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG_A|ALT_INV_DOUT\(6),
	combout => \RAM|ram~245feeder_combout\);

-- Location: FF_X43_Y7_N44
\RAM|ram~245\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~245feeder_combout\,
	ena => \RAM|ram~750_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~245_q\);

-- Location: FF_X43_Y6_N46
\RAM|ram~253\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(6),
	sload => VCC,
	ena => \RAM|ram~754_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~253_q\);

-- Location: FF_X43_Y7_N2
\RAM|ram~269\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(6),
	sload => VCC,
	ena => \RAM|ram~818_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~269_q\);

-- Location: LABCELL_X43_Y7_N0
\RAM|ram~664\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~664_combout\ = ( \RAM|ram~269_q\ & ( \ROM|memROM~153_combout\ & ( (\RAM|ram~253_q\) # (\ROM|memROM~58_combout\) ) ) ) # ( !\RAM|ram~269_q\ & ( \ROM|memROM~153_combout\ & ( (!\ROM|memROM~58_combout\ & \RAM|ram~253_q\) ) ) ) # ( \RAM|ram~269_q\ & ( 
-- !\ROM|memROM~153_combout\ & ( (!\ROM|memROM~58_combout\ & ((\RAM|ram~245_q\))) # (\ROM|memROM~58_combout\ & (\RAM|ram~261_q\)) ) ) ) # ( !\RAM|ram~269_q\ & ( !\ROM|memROM~153_combout\ & ( (!\ROM|memROM~58_combout\ & ((\RAM|ram~245_q\))) # 
-- (\ROM|memROM~58_combout\ & (\RAM|ram~261_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101001101010011010100000000111100000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~261_q\,
	datab => \RAM|ALT_INV_ram~245_q\,
	datac => \ROM|ALT_INV_memROM~58_combout\,
	datad => \RAM|ALT_INV_ram~253_q\,
	datae => \RAM|ALT_INV_ram~269_q\,
	dataf => \ROM|ALT_INV_memROM~153_combout\,
	combout => \RAM|ram~664_combout\);

-- Location: MLABCELL_X37_Y5_N0
\RAM|ram~665\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~665_combout\ = ( \RAM|ram~661_combout\ & ( \RAM|ram~664_combout\ & ( (!\ROM|memROM~76_combout\ & ((!\ROM|memROM~69_combout\) # ((\RAM|ram~662_combout\)))) # (\ROM|memROM~76_combout\ & (((\RAM|ram~663_combout\)) # (\ROM|memROM~69_combout\))) ) ) ) 
-- # ( !\RAM|ram~661_combout\ & ( \RAM|ram~664_combout\ & ( (!\ROM|memROM~76_combout\ & (\ROM|memROM~69_combout\ & (\RAM|ram~662_combout\))) # (\ROM|memROM~76_combout\ & (((\RAM|ram~663_combout\)) # (\ROM|memROM~69_combout\))) ) ) ) # ( \RAM|ram~661_combout\ 
-- & ( !\RAM|ram~664_combout\ & ( (!\ROM|memROM~76_combout\ & ((!\ROM|memROM~69_combout\) # ((\RAM|ram~662_combout\)))) # (\ROM|memROM~76_combout\ & (!\ROM|memROM~69_combout\ & ((\RAM|ram~663_combout\)))) ) ) ) # ( !\RAM|ram~661_combout\ & ( 
-- !\RAM|ram~664_combout\ & ( (!\ROM|memROM~76_combout\ & (\ROM|memROM~69_combout\ & (\RAM|ram~662_combout\))) # (\ROM|memROM~76_combout\ & (!\ROM|memROM~69_combout\ & ((\RAM|ram~663_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001000110100010101100111000010011010101111001101111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~76_combout\,
	datab => \ROM|ALT_INV_memROM~69_combout\,
	datac => \RAM|ALT_INV_ram~662_combout\,
	datad => \RAM|ALT_INV_ram~663_combout\,
	datae => \RAM|ALT_INV_ram~661_combout\,
	dataf => \RAM|ALT_INV_ram~664_combout\,
	combout => \RAM|ram~665_combout\);

-- Location: FF_X45_Y5_N13
\RAM|ram~93\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(6),
	sload => VCC,
	ena => \RAM|ram~714_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~93_q\);

-- Location: MLABCELL_X42_Y7_N24
\RAM|ram~29feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~29feeder_combout\ = ( \CPU|REG_A|DOUT\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG_A|ALT_INV_DOUT\(6),
	combout => \RAM|ram~29feeder_combout\);

-- Location: FF_X42_Y7_N25
\RAM|ram~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~29feeder_combout\,
	ena => \RAM|ram~698_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~29_q\);

-- Location: MLABCELL_X42_Y7_N33
\RAM|ram~45feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~45feeder_combout\ = ( \CPU|REG_A|DOUT\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG_A|ALT_INV_DOUT\(6),
	combout => \RAM|ram~45feeder_combout\);

-- Location: FF_X42_Y7_N34
\RAM|ram~45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~45feeder_combout\,
	ena => \RAM|ram~762_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~45_q\);

-- Location: FF_X43_Y5_N8
\RAM|ram~109\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(6),
	sload => VCC,
	ena => \RAM|ram~778_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~109_q\);

-- Location: LABCELL_X43_Y5_N6
\RAM|ram~652\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~652_combout\ = ( \RAM|ram~109_q\ & ( \ROM|memROM~76_combout\ & ( (\ROM|memROM~58_combout\) # (\RAM|ram~93_q\) ) ) ) # ( !\RAM|ram~109_q\ & ( \ROM|memROM~76_combout\ & ( (\RAM|ram~93_q\ & !\ROM|memROM~58_combout\) ) ) ) # ( \RAM|ram~109_q\ & ( 
-- !\ROM|memROM~76_combout\ & ( (!\ROM|memROM~58_combout\ & (\RAM|ram~29_q\)) # (\ROM|memROM~58_combout\ & ((\RAM|ram~45_q\))) ) ) ) # ( !\RAM|ram~109_q\ & ( !\ROM|memROM~76_combout\ & ( (!\ROM|memROM~58_combout\ & (\RAM|ram~29_q\)) # 
-- (\ROM|memROM~58_combout\ & ((\RAM|ram~45_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111001100000011111101010000010100000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~93_q\,
	datab => \RAM|ALT_INV_ram~29_q\,
	datac => \ROM|ALT_INV_memROM~58_combout\,
	datad => \RAM|ALT_INV_ram~45_q\,
	datae => \RAM|ALT_INV_ram~109_q\,
	dataf => \ROM|ALT_INV_memROM~76_combout\,
	combout => \RAM|ram~652_combout\);

-- Location: FF_X43_Y6_N28
\RAM|ram~85\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(6),
	sload => VCC,
	ena => \RAM|ram~710_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~85_q\);

-- Location: FF_X41_Y4_N55
\RAM|ram~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(6),
	sload => VCC,
	ena => \RAM|ram~694_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~21_q\);

-- Location: LABCELL_X39_Y3_N27
\RAM|ram~37feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~37feeder_combout\ = ( \CPU|REG_A|DOUT\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG_A|ALT_INV_DOUT\(6),
	combout => \RAM|ram~37feeder_combout\);

-- Location: FF_X39_Y3_N28
\RAM|ram~37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~37feeder_combout\,
	ena => \RAM|ram~758_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~37_q\);

-- Location: FF_X43_Y5_N38
\RAM|ram~101\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(6),
	sload => VCC,
	ena => \RAM|ram~774_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~101_q\);

-- Location: LABCELL_X43_Y5_N36
\RAM|ram~651\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~651_combout\ = ( \RAM|ram~101_q\ & ( \ROM|memROM~76_combout\ & ( (\ROM|memROM~58_combout\) # (\RAM|ram~85_q\) ) ) ) # ( !\RAM|ram~101_q\ & ( \ROM|memROM~76_combout\ & ( (\RAM|ram~85_q\ & !\ROM|memROM~58_combout\) ) ) ) # ( \RAM|ram~101_q\ & ( 
-- !\ROM|memROM~76_combout\ & ( (!\ROM|memROM~58_combout\ & (\RAM|ram~21_q\)) # (\ROM|memROM~58_combout\ & ((\RAM|ram~37_q\))) ) ) ) # ( !\RAM|ram~101_q\ & ( !\ROM|memROM~76_combout\ & ( (!\ROM|memROM~58_combout\ & (\RAM|ram~21_q\)) # 
-- (\ROM|memROM~58_combout\ & ((\RAM|ram~37_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111001100000011111101010000010100000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~85_q\,
	datab => \RAM|ALT_INV_ram~21_q\,
	datac => \ROM|ALT_INV_memROM~58_combout\,
	datad => \RAM|ALT_INV_ram~37_q\,
	datae => \RAM|ALT_INV_ram~101_q\,
	dataf => \ROM|ALT_INV_memROM~76_combout\,
	combout => \RAM|ram~651_combout\);

-- Location: FF_X40_Y8_N16
\RAM|ram~149\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(6),
	sload => VCC,
	ena => \RAM|ram~702_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~149_q\);

-- Location: MLABCELL_X42_Y6_N48
\RAM|ram~213feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~213feeder_combout\ = ( \CPU|REG_A|DOUT\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG_A|ALT_INV_DOUT\(6),
	combout => \RAM|ram~213feeder_combout\);

-- Location: FF_X42_Y6_N49
\RAM|ram~213\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~213feeder_combout\,
	ena => \RAM|ram~718_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~213_q\);

-- Location: FF_X44_Y6_N31
\RAM|ram~165\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(6),
	sload => VCC,
	ena => \RAM|ram~766_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~165_q\);

-- Location: FF_X43_Y5_N2
\RAM|ram~229\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(6),
	sload => VCC,
	ena => \RAM|ram~782_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~229_q\);

-- Location: LABCELL_X43_Y5_N0
\RAM|ram~653\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~653_combout\ = ( \RAM|ram~229_q\ & ( \ROM|memROM~76_combout\ & ( (\ROM|memROM~58_combout\) # (\RAM|ram~213_q\) ) ) ) # ( !\RAM|ram~229_q\ & ( \ROM|memROM~76_combout\ & ( (\RAM|ram~213_q\ & !\ROM|memROM~58_combout\) ) ) ) # ( \RAM|ram~229_q\ & ( 
-- !\ROM|memROM~76_combout\ & ( (!\ROM|memROM~58_combout\ & (\RAM|ram~149_q\)) # (\ROM|memROM~58_combout\ & ((\RAM|ram~165_q\))) ) ) ) # ( !\RAM|ram~229_q\ & ( !\ROM|memROM~76_combout\ & ( (!\ROM|memROM~58_combout\ & (\RAM|ram~149_q\)) # 
-- (\ROM|memROM~58_combout\ & ((\RAM|ram~165_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111010100000101111100110000001100000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~149_q\,
	datab => \RAM|ALT_INV_ram~213_q\,
	datac => \ROM|ALT_INV_memROM~58_combout\,
	datad => \RAM|ALT_INV_ram~165_q\,
	datae => \RAM|ALT_INV_ram~229_q\,
	dataf => \ROM|ALT_INV_memROM~76_combout\,
	combout => \RAM|ram~653_combout\);

-- Location: FF_X43_Y4_N34
\RAM|ram~237\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(6),
	sload => VCC,
	ena => \RAM|ram~786_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~237_q\);

-- Location: FF_X43_Y4_N22
\RAM|ram~221\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(6),
	sload => VCC,
	ena => \RAM|ram~722_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~221_q\);

-- Location: LABCELL_X44_Y6_N51
\RAM|ram~157feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~157feeder_combout\ = ( \CPU|REG_A|DOUT\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG_A|ALT_INV_DOUT\(6),
	combout => \RAM|ram~157feeder_combout\);

-- Location: FF_X44_Y6_N52
\RAM|ram~157\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~157feeder_combout\,
	ena => \RAM|ram~706_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~157_q\);

-- Location: LABCELL_X44_Y6_N12
\RAM|ram~173feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~173feeder_combout\ = ( \CPU|REG_A|DOUT\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG_A|ALT_INV_DOUT\(6),
	combout => \RAM|ram~173feeder_combout\);

-- Location: FF_X44_Y6_N13
\RAM|ram~173\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~173feeder_combout\,
	ena => \RAM|ram~770_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~173_q\);

-- Location: LABCELL_X43_Y5_N54
\RAM|ram~654\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~654_combout\ = ( \RAM|ram~173_q\ & ( \ROM|memROM~76_combout\ & ( (!\ROM|memROM~58_combout\ & ((\RAM|ram~221_q\))) # (\ROM|memROM~58_combout\ & (\RAM|ram~237_q\)) ) ) ) # ( !\RAM|ram~173_q\ & ( \ROM|memROM~76_combout\ & ( (!\ROM|memROM~58_combout\ 
-- & ((\RAM|ram~221_q\))) # (\ROM|memROM~58_combout\ & (\RAM|ram~237_q\)) ) ) ) # ( \RAM|ram~173_q\ & ( !\ROM|memROM~76_combout\ & ( (\RAM|ram~157_q\) # (\ROM|memROM~58_combout\) ) ) ) # ( !\RAM|ram~173_q\ & ( !\ROM|memROM~76_combout\ & ( 
-- (!\ROM|memROM~58_combout\ & \RAM|ram~157_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000011111111111100110101001101010011010100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~237_q\,
	datab => \RAM|ALT_INV_ram~221_q\,
	datac => \ROM|ALT_INV_memROM~58_combout\,
	datad => \RAM|ALT_INV_ram~157_q\,
	datae => \RAM|ALT_INV_ram~173_q\,
	dataf => \ROM|ALT_INV_memROM~76_combout\,
	combout => \RAM|ram~654_combout\);

-- Location: MLABCELL_X37_Y5_N42
\RAM|ram~655\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~655_combout\ = ( \RAM|ram~653_combout\ & ( \RAM|ram~654_combout\ & ( ((!\ROM|memROM~153_combout\ & ((\RAM|ram~651_combout\))) # (\ROM|memROM~153_combout\ & (\RAM|ram~652_combout\))) # (\ROM|memROM~69_combout\) ) ) ) # ( !\RAM|ram~653_combout\ & ( 
-- \RAM|ram~654_combout\ & ( (!\ROM|memROM~153_combout\ & (((!\ROM|memROM~69_combout\ & \RAM|ram~651_combout\)))) # (\ROM|memROM~153_combout\ & (((\ROM|memROM~69_combout\)) # (\RAM|ram~652_combout\))) ) ) ) # ( \RAM|ram~653_combout\ & ( 
-- !\RAM|ram~654_combout\ & ( (!\ROM|memROM~153_combout\ & (((\RAM|ram~651_combout\) # (\ROM|memROM~69_combout\)))) # (\ROM|memROM~153_combout\ & (\RAM|ram~652_combout\ & (!\ROM|memROM~69_combout\))) ) ) ) # ( !\RAM|ram~653_combout\ & ( 
-- !\RAM|ram~654_combout\ & ( (!\ROM|memROM~69_combout\ & ((!\ROM|memROM~153_combout\ & ((\RAM|ram~651_combout\))) # (\ROM|memROM~153_combout\ & (\RAM|ram~652_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000010110000000110101011101000010101101101010001111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~153_combout\,
	datab => \RAM|ALT_INV_ram~652_combout\,
	datac => \ROM|ALT_INV_memROM~69_combout\,
	datad => \RAM|ALT_INV_ram~651_combout\,
	datae => \RAM|ALT_INV_ram~653_combout\,
	dataf => \RAM|ALT_INV_ram~654_combout\,
	combout => \RAM|ram~655_combout\);

-- Location: MLABCELL_X37_Y5_N24
\RAM|ram~671\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~671_combout\ = ( \RAM|ram~665_combout\ & ( \RAM|ram~655_combout\ & ( (!\ROM|memROM~45_combout\) # ((!\ROM|memROM~0_combout\ & (\RAM|ram~660_combout\)) # (\ROM|memROM~0_combout\ & ((\RAM|ram~670_combout\)))) ) ) ) # ( !\RAM|ram~665_combout\ & ( 
-- \RAM|ram~655_combout\ & ( (!\ROM|memROM~45_combout\ & (!\ROM|memROM~0_combout\)) # (\ROM|memROM~45_combout\ & ((!\ROM|memROM~0_combout\ & (\RAM|ram~660_combout\)) # (\ROM|memROM~0_combout\ & ((\RAM|ram~670_combout\))))) ) ) ) # ( \RAM|ram~665_combout\ & ( 
-- !\RAM|ram~655_combout\ & ( (!\ROM|memROM~45_combout\ & (\ROM|memROM~0_combout\)) # (\ROM|memROM~45_combout\ & ((!\ROM|memROM~0_combout\ & (\RAM|ram~660_combout\)) # (\ROM|memROM~0_combout\ & ((\RAM|ram~670_combout\))))) ) ) ) # ( !\RAM|ram~665_combout\ & 
-- ( !\RAM|ram~655_combout\ & ( (\ROM|memROM~45_combout\ & ((!\ROM|memROM~0_combout\ & (\RAM|ram~660_combout\)) # (\ROM|memROM~0_combout\ & ((\RAM|ram~670_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000010101001001100011011110001100100111011010111010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~45_combout\,
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \RAM|ALT_INV_ram~660_combout\,
	datad => \RAM|ALT_INV_ram~670_combout\,
	datae => \RAM|ALT_INV_ram~665_combout\,
	dataf => \RAM|ALT_INV_ram~655_combout\,
	combout => \RAM|ram~671_combout\);

-- Location: MLABCELL_X37_Y5_N6
\CPU|MUX1|saida_MUX[6]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[6]~5_combout\ = ( \ENABLE_SWR~2_combout\ & ( \RAM|ram~671_combout\ & ( \SW[6]~input_o\ ) ) ) # ( !\ENABLE_SWR~2_combout\ & ( \RAM|ram~671_combout\ ) ) # ( \ENABLE_SWR~2_combout\ & ( !\RAM|ram~671_combout\ & ( \SW[6]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111111111111111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SW[6]~input_o\,
	datae => \ALT_INV_ENABLE_SWR~2_combout\,
	dataf => \RAM|ALT_INV_ram~671_combout\,
	combout => \CPU|MUX1|saida_MUX[6]~5_combout\);

-- Location: LABCELL_X41_Y3_N21
\CPU|ULA1|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~25_sumout\ = SUM(( (!\CPU|DECODER|sinais_controle~0_combout\ & (((!\CPU|MUX1|saida_MUX[6]~5_combout\)))) # (\CPU|DECODER|sinais_controle~0_combout\ & ((!\CPU|DECODER|OP_ULA[0]~2_combout\ & (!\ROM|memROM~28_combout\)) # 
-- (\CPU|DECODER|OP_ULA[0]~2_combout\ & ((!\CPU|MUX1|saida_MUX[6]~5_combout\))))) ) + ( \CPU|REG_A|DOUT\(6) ) + ( \CPU|ULA1|Add1~22\ ))
-- \CPU|ULA1|Add1~26\ = CARRY(( (!\CPU|DECODER|sinais_controle~0_combout\ & (((!\CPU|MUX1|saida_MUX[6]~5_combout\)))) # (\CPU|DECODER|sinais_controle~0_combout\ & ((!\CPU|DECODER|OP_ULA[0]~2_combout\ & (!\ROM|memROM~28_combout\)) # 
-- (\CPU|DECODER|OP_ULA[0]~2_combout\ & ((!\CPU|MUX1|saida_MUX[6]~5_combout\))))) ) + ( \CPU|REG_A|DOUT\(6) ) + ( \CPU|ULA1|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001110111101000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_sinais_controle~0_combout\,
	datab => \ROM|ALT_INV_memROM~28_combout\,
	datac => \CPU|DECODER|ALT_INV_OP_ULA[0]~2_combout\,
	datad => \CPU|MUX1|ALT_INV_saida_MUX[6]~5_combout\,
	dataf => \CPU|REG_A|ALT_INV_DOUT\(6),
	cin => \CPU|ULA1|Add1~22\,
	sumout => \CPU|ULA1|Add1~25_sumout\,
	cout => \CPU|ULA1|Add1~26\);

-- Location: LABCELL_X40_Y3_N54
\CPU|FLAG|DOUT~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FLAG|DOUT~2_combout\ = ( \CPU|ULA1|Add1~13_sumout\ & ( \CPU|ULA1|Add1~5_sumout\ & ( (!\CPU|FLAG|DOUT~1_combout\ & \CPU|FLAG|DOUT~q\) ) ) ) # ( !\CPU|ULA1|Add1~13_sumout\ & ( \CPU|ULA1|Add1~5_sumout\ & ( (!\CPU|FLAG|DOUT~1_combout\ & 
-- \CPU|FLAG|DOUT~q\) ) ) ) # ( \CPU|ULA1|Add1~13_sumout\ & ( !\CPU|ULA1|Add1~5_sumout\ & ( (!\CPU|FLAG|DOUT~1_combout\ & \CPU|FLAG|DOUT~q\) ) ) ) # ( !\CPU|ULA1|Add1~13_sumout\ & ( !\CPU|ULA1|Add1~5_sumout\ & ( (!\CPU|FLAG|DOUT~1_combout\ & 
-- (((\CPU|FLAG|DOUT~q\)))) # (\CPU|FLAG|DOUT~1_combout\ & (!\CPU|ULA1|Add1~1_sumout\ & (!\CPU|ULA1|Add1~9_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000011101100000000001100110000000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ULA1|ALT_INV_Add1~1_sumout\,
	datab => \CPU|FLAG|ALT_INV_DOUT~1_combout\,
	datac => \CPU|ULA1|ALT_INV_Add1~9_sumout\,
	datad => \CPU|FLAG|ALT_INV_DOUT~q\,
	datae => \CPU|ULA1|ALT_INV_Add1~13_sumout\,
	dataf => \CPU|ULA1|ALT_INV_Add1~5_sumout\,
	combout => \CPU|FLAG|DOUT~2_combout\);

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

-- Location: LABCELL_X41_Y3_N51
\CPU|ULA1|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~29_sumout\ = SUM(( \CPU|REG_A|DOUT\(7) ) + ( (!\CPU|DECODER|sinais_controle~0_combout\ & (((\CPU|MUX1|saida_MUX[7]~6_combout\)))) # (\CPU|DECODER|sinais_controle~0_combout\ & ((!\CPU|DECODER|OP_ULA[0]~2_combout\ & (\ROM|memROM~38_combout\)) 
-- # (\CPU|DECODER|OP_ULA[0]~2_combout\ & ((\CPU|MUX1|saida_MUX[7]~6_combout\))))) ) + ( \CPU|ULA1|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110110100000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_sinais_controle~0_combout\,
	datab => \CPU|DECODER|ALT_INV_OP_ULA[0]~2_combout\,
	datac => \ROM|ALT_INV_memROM~38_combout\,
	datad => \CPU|REG_A|ALT_INV_DOUT\(7),
	dataf => \CPU|MUX1|ALT_INV_saida_MUX[7]~6_combout\,
	cin => \CPU|ULA1|Add0~26\,
	sumout => \CPU|ULA1|Add0~29_sumout\);

-- Location: LABCELL_X41_Y3_N57
\CPU|ULA1|saida[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[7]~7_combout\ = ( \CPU|ULA1|Add1~29_sumout\ & ( (!\CPU|DECODER|OP_ULA[1]~0_combout\) # ((!\CPU|DECODER|SEL_MUX~0_combout\ & ((\CPU|MUX1|saida_MUX[7]~6_combout\))) # (\CPU|DECODER|SEL_MUX~0_combout\ & (\ROM|memROM~38_combout\))) ) ) # ( 
-- !\CPU|ULA1|Add1~29_sumout\ & ( (\CPU|DECODER|OP_ULA[1]~0_combout\ & ((!\CPU|DECODER|SEL_MUX~0_combout\ & ((\CPU|MUX1|saida_MUX[7]~6_combout\))) # (\CPU|DECODER|SEL_MUX~0_combout\ & (\ROM|memROM~38_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011000000010010001111001101111011111100110111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_SEL_MUX~0_combout\,
	datab => \CPU|DECODER|ALT_INV_OP_ULA[1]~0_combout\,
	datac => \ROM|ALT_INV_memROM~38_combout\,
	datad => \CPU|MUX1|ALT_INV_saida_MUX[7]~6_combout\,
	dataf => \CPU|ULA1|ALT_INV_Add1~29_sumout\,
	combout => \CPU|ULA1|saida[7]~7_combout\);

-- Location: FF_X41_Y3_N53
\CPU|REG_A|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|ULA1|Add0~29_sumout\,
	asdata => \CPU|ULA1|saida[7]~7_combout\,
	sload => \CPU|DECODER|OP_ULA[0]~1_combout\,
	ena => \CPU|DECODER|HAB_A~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_A|DOUT\(7));

-- Location: FF_X42_Y4_N29
\RAM|ram~374\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(7),
	sload => VCC,
	ena => \RAM|ram~744_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~374_q\);

-- Location: FF_X41_Y7_N8
\RAM|ram~342\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(7),
	sload => VCC,
	ena => \RAM|ram~712_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~342_q\);

-- Location: FF_X39_Y2_N19
\RAM|ram~310\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(7),
	sload => VCC,
	ena => \RAM|ram~728_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~310_q\);

-- Location: FF_X35_Y4_N49
\RAM|ram~278\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(7),
	sload => VCC,
	ena => \RAM|ram~696_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~278_q\);

-- Location: LABCELL_X41_Y4_N9
\RAM|ram~682\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~682_combout\ = ( \ROM|memROM~76_combout\ & ( \ROM|memROM~0_combout\ & ( \RAM|ram~374_q\ ) ) ) # ( !\ROM|memROM~76_combout\ & ( \ROM|memROM~0_combout\ & ( \RAM|ram~310_q\ ) ) ) # ( \ROM|memROM~76_combout\ & ( !\ROM|memROM~0_combout\ & ( 
-- \RAM|ram~342_q\ ) ) ) # ( !\ROM|memROM~76_combout\ & ( !\ROM|memROM~0_combout\ & ( \RAM|ram~278_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111001100110011001100001111000011110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~374_q\,
	datab => \RAM|ALT_INV_ram~342_q\,
	datac => \RAM|ALT_INV_ram~310_q\,
	datad => \RAM|ALT_INV_ram~278_q\,
	datae => \ROM|ALT_INV_memROM~76_combout\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \RAM|ram~682_combout\);

-- Location: FF_X39_Y6_N22
\RAM|ram~478\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(7),
	sload => VCC,
	ena => \RAM|ram~724_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~478_q\);

-- Location: FF_X40_Y6_N49
\RAM|ram~446\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(7),
	sload => VCC,
	ena => \RAM|ram~740_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~446_q\);

-- Location: LABCELL_X36_Y2_N33
\RAM|ram~414feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~414feeder_combout\ = ( \CPU|REG_A|DOUT\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG_A|ALT_INV_DOUT\(7),
	combout => \RAM|ram~414feeder_combout\);

-- Location: FF_X36_Y2_N34
\RAM|ram~414\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~414feeder_combout\,
	ena => \RAM|ram~708_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~414_q\);

-- Location: FF_X40_Y6_N32
\RAM|ram~510\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(7),
	sload => VCC,
	ena => \RAM|ram~756_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~510_q\);

-- Location: LABCELL_X40_Y6_N30
\RAM|ram~685\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~685_combout\ = ( \RAM|ram~510_q\ & ( \ROM|memROM~0_combout\ & ( (\ROM|memROM~76_combout\) # (\RAM|ram~446_q\) ) ) ) # ( !\RAM|ram~510_q\ & ( \ROM|memROM~0_combout\ & ( (\RAM|ram~446_q\ & !\ROM|memROM~76_combout\) ) ) ) # ( \RAM|ram~510_q\ & ( 
-- !\ROM|memROM~0_combout\ & ( (!\ROM|memROM~76_combout\ & ((\RAM|ram~414_q\))) # (\ROM|memROM~76_combout\ & (\RAM|ram~478_q\)) ) ) ) # ( !\RAM|ram~510_q\ & ( !\ROM|memROM~0_combout\ & ( (!\ROM|memROM~76_combout\ & ((\RAM|ram~414_q\))) # 
-- (\ROM|memROM~76_combout\ & (\RAM|ram~478_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000011110101010100110011000000000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~478_q\,
	datab => \RAM|ALT_INV_ram~446_q\,
	datac => \RAM|ALT_INV_ram~414_q\,
	datad => \ROM|ALT_INV_memROM~76_combout\,
	datae => \RAM|ALT_INV_ram~510_q\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \RAM|ram~685_combout\);

-- Location: FF_X41_Y4_N25
\RAM|ram~286\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(7),
	sload => VCC,
	ena => \RAM|ram~700_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~286_q\);

-- Location: FF_X41_Y6_N28
\RAM|ram~382\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(7),
	sload => VCC,
	ena => \RAM|ram~748_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~382_q\);

-- Location: FF_X39_Y5_N11
\RAM|ram~350\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(7),
	sload => VCC,
	ena => \RAM|ram~716_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~350_q\);

-- Location: FF_X41_Y6_N53
\RAM|ram~318\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(7),
	sload => VCC,
	ena => \RAM|ram~732_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~318_q\);

-- Location: LABCELL_X41_Y6_N51
\RAM|ram~683\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~683_combout\ = ( \RAM|ram~318_q\ & ( \ROM|memROM~0_combout\ & ( (!\ROM|memROM~76_combout\) # (\RAM|ram~382_q\) ) ) ) # ( !\RAM|ram~318_q\ & ( \ROM|memROM~0_combout\ & ( (\ROM|memROM~76_combout\ & \RAM|ram~382_q\) ) ) ) # ( \RAM|ram~318_q\ & ( 
-- !\ROM|memROM~0_combout\ & ( (!\ROM|memROM~76_combout\ & (\RAM|ram~286_q\)) # (\ROM|memROM~76_combout\ & ((\RAM|ram~350_q\))) ) ) ) # ( !\RAM|ram~318_q\ & ( !\ROM|memROM~0_combout\ & ( (!\ROM|memROM~76_combout\ & (\RAM|ram~286_q\)) # 
-- (\ROM|memROM~76_combout\ & ((\RAM|ram~350_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001110111010001000111011100000011000000111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~286_q\,
	datab => \ROM|ALT_INV_memROM~76_combout\,
	datac => \RAM|ALT_INV_ram~382_q\,
	datad => \RAM|ALT_INV_ram~350_q\,
	datae => \RAM|ALT_INV_ram~318_q\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \RAM|ram~683_combout\);

-- Location: FF_X42_Y4_N53
\RAM|ram~470\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(7),
	sload => VCC,
	ena => \RAM|ram~720_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~470_q\);

-- Location: FF_X39_Y6_N46
\RAM|ram~406\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(7),
	sload => VCC,
	ena => \RAM|ram~704_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~406_q\);

-- Location: FF_X37_Y4_N52
\RAM|ram~438\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(7),
	sload => VCC,
	ena => \RAM|ram~736_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~438_q\);

-- Location: FF_X42_Y4_N20
\RAM|ram~502\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(7),
	sload => VCC,
	ena => \RAM|ram~752_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~502_q\);

-- Location: MLABCELL_X42_Y4_N18
\RAM|ram~684\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~684_combout\ = ( \RAM|ram~502_q\ & ( \ROM|memROM~0_combout\ & ( (\ROM|memROM~76_combout\) # (\RAM|ram~438_q\) ) ) ) # ( !\RAM|ram~502_q\ & ( \ROM|memROM~0_combout\ & ( (\RAM|ram~438_q\ & !\ROM|memROM~76_combout\) ) ) ) # ( \RAM|ram~502_q\ & ( 
-- !\ROM|memROM~0_combout\ & ( (!\ROM|memROM~76_combout\ & ((\RAM|ram~406_q\))) # (\ROM|memROM~76_combout\ & (\RAM|ram~470_q\)) ) ) ) # ( !\RAM|ram~502_q\ & ( !\ROM|memROM~0_combout\ & ( (!\ROM|memROM~76_combout\ & ((\RAM|ram~406_q\))) # 
-- (\ROM|memROM~76_combout\ & (\RAM|ram~470_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101010101001100110101010100001111000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~470_q\,
	datab => \RAM|ALT_INV_ram~406_q\,
	datac => \RAM|ALT_INV_ram~438_q\,
	datad => \ROM|ALT_INV_memROM~76_combout\,
	datae => \RAM|ALT_INV_ram~502_q\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \RAM|ram~684_combout\);

-- Location: LABCELL_X41_Y4_N39
\RAM|ram~686\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~686_combout\ = ( \RAM|ram~683_combout\ & ( \RAM|ram~684_combout\ & ( (!\ROM|memROM~69_combout\ & (((\RAM|ram~682_combout\)) # (\ROM|memROM~153_combout\))) # (\ROM|memROM~69_combout\ & ((!\ROM|memROM~153_combout\) # ((\RAM|ram~685_combout\)))) ) ) 
-- ) # ( !\RAM|ram~683_combout\ & ( \RAM|ram~684_combout\ & ( (!\ROM|memROM~69_combout\ & (!\ROM|memROM~153_combout\ & (\RAM|ram~682_combout\))) # (\ROM|memROM~69_combout\ & ((!\ROM|memROM~153_combout\) # ((\RAM|ram~685_combout\)))) ) ) ) # ( 
-- \RAM|ram~683_combout\ & ( !\RAM|ram~684_combout\ & ( (!\ROM|memROM~69_combout\ & (((\RAM|ram~682_combout\)) # (\ROM|memROM~153_combout\))) # (\ROM|memROM~69_combout\ & (\ROM|memROM~153_combout\ & ((\RAM|ram~685_combout\)))) ) ) ) # ( 
-- !\RAM|ram~683_combout\ & ( !\RAM|ram~684_combout\ & ( (!\ROM|memROM~69_combout\ & (!\ROM|memROM~153_combout\ & (\RAM|ram~682_combout\))) # (\ROM|memROM~69_combout\ & (\ROM|memROM~153_combout\ & ((\RAM|ram~685_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000011001001010100011101101001100010111010110111001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~69_combout\,
	datab => \ROM|ALT_INV_memROM~153_combout\,
	datac => \RAM|ALT_INV_ram~682_combout\,
	datad => \RAM|ALT_INV_ram~685_combout\,
	datae => \RAM|ALT_INV_ram~683_combout\,
	dataf => \RAM|ALT_INV_ram~684_combout\,
	combout => \RAM|ram~686_combout\);

-- Location: FF_X39_Y3_N16
\RAM|ram~302\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(7),
	sload => VCC,
	ena => \RAM|ram~764_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~302_q\);

-- Location: LABCELL_X35_Y5_N39
\RAM|ram~294feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~294feeder_combout\ = ( \CPU|REG_A|DOUT\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG_A|ALT_INV_DOUT\(7),
	combout => \RAM|ram~294feeder_combout\);

-- Location: FF_X35_Y5_N41
\RAM|ram~294\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~294feeder_combout\,
	ena => \RAM|ram~760_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~294_q\);

-- Location: FF_X36_Y7_N40
\RAM|ram~422\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(7),
	sload => VCC,
	ena => \RAM|ram~768_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~422_q\);

-- Location: FF_X35_Y5_N50
\RAM|ram~430\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(7),
	sload => VCC,
	ena => \RAM|ram~772_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~430_q\);

-- Location: LABCELL_X35_Y5_N48
\RAM|ram~687\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~687_combout\ = ( \RAM|ram~430_q\ & ( \ROM|memROM~69_combout\ & ( (\RAM|ram~422_q\) # (\ROM|memROM~153_combout\) ) ) ) # ( !\RAM|ram~430_q\ & ( \ROM|memROM~69_combout\ & ( (!\ROM|memROM~153_combout\ & \RAM|ram~422_q\) ) ) ) # ( \RAM|ram~430_q\ & ( 
-- !\ROM|memROM~69_combout\ & ( (!\ROM|memROM~153_combout\ & ((\RAM|ram~294_q\))) # (\ROM|memROM~153_combout\ & (\RAM|ram~302_q\)) ) ) ) # ( !\RAM|ram~430_q\ & ( !\ROM|memROM~69_combout\ & ( (!\ROM|memROM~153_combout\ & ((\RAM|ram~294_q\))) # 
-- (\ROM|memROM~153_combout\ & (\RAM|ram~302_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101001101010011010100000000111100000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~302_q\,
	datab => \RAM|ALT_INV_ram~294_q\,
	datac => \ROM|ALT_INV_memROM~153_combout\,
	datad => \RAM|ALT_INV_ram~422_q\,
	datae => \RAM|ALT_INV_ram~430_q\,
	dataf => \ROM|ALT_INV_memROM~69_combout\,
	combout => \RAM|ram~687_combout\);

-- Location: FF_X39_Y4_N52
\RAM|ram~518\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(7),
	sload => VCC,
	ena => \RAM|ram~812_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~518_q\);

-- Location: LABCELL_X35_Y2_N51
\RAM|ram~398feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~398feeder_combout\ = ( \CPU|REG_A|DOUT\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG_A|ALT_INV_DOUT\(7),
	combout => \RAM|ram~398feeder_combout\);

-- Location: FF_X35_Y2_N52
\RAM|ram~398\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~398feeder_combout\,
	ena => \RAM|ram~816_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~398_q\);

-- Location: FF_X39_Y4_N59
\RAM|ram~390\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(7),
	sload => VCC,
	ena => \RAM|ram~808_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~390_q\);

-- Location: FF_X36_Y4_N31
\RAM|ram~526\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(7),
	sload => VCC,
	ena => \RAM|ram~820_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~526_q\);

-- Location: MLABCELL_X37_Y4_N45
\RAM|ram~690\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~690_combout\ = ( \ROM|memROM~69_combout\ & ( \ROM|memROM~153_combout\ & ( \RAM|ram~526_q\ ) ) ) # ( !\ROM|memROM~69_combout\ & ( \ROM|memROM~153_combout\ & ( \RAM|ram~398_q\ ) ) ) # ( \ROM|memROM~69_combout\ & ( !\ROM|memROM~153_combout\ & ( 
-- \RAM|ram~518_q\ ) ) ) # ( !\ROM|memROM~69_combout\ & ( !\ROM|memROM~153_combout\ & ( \RAM|ram~390_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111010101010101010100110011001100110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~518_q\,
	datab => \RAM|ALT_INV_ram~398_q\,
	datac => \RAM|ALT_INV_ram~390_q\,
	datad => \RAM|ALT_INV_ram~526_q\,
	datae => \ROM|ALT_INV_memROM~69_combout\,
	dataf => \ROM|ALT_INV_memROM~153_combout\,
	combout => \RAM|ram~690_combout\);

-- Location: FF_X37_Y3_N35
\RAM|ram~334\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(7),
	sload => VCC,
	ena => \RAM|ram~800_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~334_q\);

-- Location: FF_X36_Y7_N58
\RAM|ram~326\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(7),
	sload => VCC,
	ena => \RAM|ram~792_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~326_q\);

-- Location: FF_X37_Y3_N10
\RAM|ram~454\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(7),
	sload => VCC,
	ena => \RAM|ram~796_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~454_q\);

-- Location: FF_X37_Y3_N44
\RAM|ram~462\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(7),
	sload => VCC,
	ena => \RAM|ram~804_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~462_q\);

-- Location: MLABCELL_X37_Y3_N42
\RAM|ram~688\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~688_combout\ = ( \RAM|ram~462_q\ & ( \ROM|memROM~153_combout\ & ( (\ROM|memROM~69_combout\) # (\RAM|ram~334_q\) ) ) ) # ( !\RAM|ram~462_q\ & ( \ROM|memROM~153_combout\ & ( (\RAM|ram~334_q\ & !\ROM|memROM~69_combout\) ) ) ) # ( \RAM|ram~462_q\ & ( 
-- !\ROM|memROM~153_combout\ & ( (!\ROM|memROM~69_combout\ & (\RAM|ram~326_q\)) # (\ROM|memROM~69_combout\ & ((\RAM|ram~454_q\))) ) ) ) # ( !\RAM|ram~462_q\ & ( !\ROM|memROM~153_combout\ & ( (!\ROM|memROM~69_combout\ & (\RAM|ram~326_q\)) # 
-- (\ROM|memROM~69_combout\ & ((\RAM|ram~454_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001111001100110000111101010101000000000101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~334_q\,
	datab => \RAM|ALT_INV_ram~326_q\,
	datac => \RAM|ALT_INV_ram~454_q\,
	datad => \ROM|ALT_INV_memROM~69_combout\,
	datae => \RAM|ALT_INV_ram~462_q\,
	dataf => \ROM|ALT_INV_memROM~153_combout\,
	combout => \RAM|ram~688_combout\);

-- Location: MLABCELL_X42_Y5_N12
\RAM|ram~486feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~486feeder_combout\ = ( \CPU|REG_A|DOUT\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG_A|ALT_INV_DOUT\(7),
	combout => \RAM|ram~486feeder_combout\);

-- Location: FF_X42_Y5_N13
\RAM|ram~486\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~486feeder_combout\,
	ena => \RAM|ram~784_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~486_q\);

-- Location: LABCELL_X41_Y8_N42
\RAM|ram~358feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~358feeder_combout\ = ( \CPU|REG_A|DOUT\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG_A|ALT_INV_DOUT\(7),
	combout => \RAM|ram~358feeder_combout\);

-- Location: FF_X41_Y8_N43
\RAM|ram~358\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~358feeder_combout\,
	ena => \RAM|ram~776_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~358_q\);

-- Location: FF_X39_Y7_N28
\RAM|ram~366\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(7),
	sload => VCC,
	ena => \RAM|ram~780_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~366_q\);

-- Location: FF_X41_Y8_N26
\RAM|ram~494\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(7),
	sload => VCC,
	ena => \RAM|ram~788_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~494_q\);

-- Location: LABCELL_X41_Y8_N24
\RAM|ram~689\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~689_combout\ = ( \RAM|ram~494_q\ & ( \ROM|memROM~69_combout\ & ( (\ROM|memROM~153_combout\) # (\RAM|ram~486_q\) ) ) ) # ( !\RAM|ram~494_q\ & ( \ROM|memROM~69_combout\ & ( (\RAM|ram~486_q\ & !\ROM|memROM~153_combout\) ) ) ) # ( \RAM|ram~494_q\ & ( 
-- !\ROM|memROM~69_combout\ & ( (!\ROM|memROM~153_combout\ & (\RAM|ram~358_q\)) # (\ROM|memROM~153_combout\ & ((\RAM|ram~366_q\))) ) ) ) # ( !\RAM|ram~494_q\ & ( !\ROM|memROM~69_combout\ & ( (!\ROM|memROM~153_combout\ & (\RAM|ram~358_q\)) # 
-- (\ROM|memROM~153_combout\ & ((\RAM|ram~366_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111001100000011111101010000010100000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~486_q\,
	datab => \RAM|ALT_INV_ram~358_q\,
	datac => \ROM|ALT_INV_memROM~153_combout\,
	datad => \RAM|ALT_INV_ram~366_q\,
	datae => \RAM|ALT_INV_ram~494_q\,
	dataf => \ROM|ALT_INV_memROM~69_combout\,
	combout => \RAM|ram~689_combout\);

-- Location: LABCELL_X41_Y4_N51
\RAM|ram~691\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~691_combout\ = ( \RAM|ram~688_combout\ & ( \RAM|ram~689_combout\ & ( (!\ROM|memROM~76_combout\ & (((\ROM|memROM~0_combout\)) # (\RAM|ram~687_combout\))) # (\ROM|memROM~76_combout\ & (((!\ROM|memROM~0_combout\) # (\RAM|ram~690_combout\)))) ) ) ) # 
-- ( !\RAM|ram~688_combout\ & ( \RAM|ram~689_combout\ & ( (!\ROM|memROM~76_combout\ & (\RAM|ram~687_combout\ & (!\ROM|memROM~0_combout\))) # (\ROM|memROM~76_combout\ & (((!\ROM|memROM~0_combout\) # (\RAM|ram~690_combout\)))) ) ) ) # ( \RAM|ram~688_combout\ & 
-- ( !\RAM|ram~689_combout\ & ( (!\ROM|memROM~76_combout\ & (((\ROM|memROM~0_combout\)) # (\RAM|ram~687_combout\))) # (\ROM|memROM~76_combout\ & (((\ROM|memROM~0_combout\ & \RAM|ram~690_combout\)))) ) ) ) # ( !\RAM|ram~688_combout\ & ( !\RAM|ram~689_combout\ 
-- & ( (!\ROM|memROM~76_combout\ & (\RAM|ram~687_combout\ & (!\ROM|memROM~0_combout\))) # (\ROM|memROM~76_combout\ & (((\ROM|memROM~0_combout\ & \RAM|ram~690_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000011010011000100111101110000011100110111110001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~687_combout\,
	datab => \ROM|ALT_INV_memROM~76_combout\,
	datac => \ROM|ALT_INV_memROM~0_combout\,
	datad => \RAM|ALT_INV_ram~690_combout\,
	datae => \RAM|ALT_INV_ram~688_combout\,
	dataf => \RAM|ALT_INV_ram~689_combout\,
	combout => \RAM|ram~691_combout\);

-- Location: FF_X40_Y2_N52
\RAM|ram~206\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(7),
	sload => VCC,
	ena => \RAM|ram~802_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~206_q\);

-- Location: FF_X34_Y5_N55
\RAM|ram~78\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(7),
	sload => VCC,
	ena => \RAM|ram~798_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~78_q\);

-- Location: LABCELL_X40_Y8_N48
\RAM|ram~198feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~198feeder_combout\ = ( \CPU|REG_A|DOUT\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG_A|ALT_INV_DOUT\(7),
	combout => \RAM|ram~198feeder_combout\);

-- Location: FF_X40_Y8_N49
\RAM|ram~198\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~198feeder_combout\,
	ena => \RAM|ram~794_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~198_q\);

-- Location: FF_X41_Y2_N28
\RAM|ram~70\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(7),
	sload => VCC,
	ena => \RAM|ram~790_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~70_q\);

-- Location: MLABCELL_X42_Y4_N6
\RAM|ram~678\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~678_combout\ = ( \ROM|memROM~69_combout\ & ( \ROM|memROM~153_combout\ & ( \RAM|ram~206_q\ ) ) ) # ( !\ROM|memROM~69_combout\ & ( \ROM|memROM~153_combout\ & ( \RAM|ram~78_q\ ) ) ) # ( \ROM|memROM~69_combout\ & ( !\ROM|memROM~153_combout\ & ( 
-- \RAM|ram~198_q\ ) ) ) # ( !\ROM|memROM~69_combout\ & ( !\ROM|memROM~153_combout\ & ( \RAM|ram~70_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111100110011001100110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~206_q\,
	datab => \RAM|ALT_INV_ram~78_q\,
	datac => \RAM|ALT_INV_ram~198_q\,
	datad => \RAM|ALT_INV_ram~70_q\,
	datae => \ROM|ALT_INV_memROM~69_combout\,
	dataf => \ROM|ALT_INV_memROM~153_combout\,
	combout => \RAM|ram~678_combout\);

-- Location: FF_X44_Y5_N52
\RAM|ram~262\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(7),
	sload => VCC,
	ena => \RAM|ram~810_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~262_q\);

-- Location: FF_X42_Y2_N34
\RAM|ram~134\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(7),
	sload => VCC,
	ena => \RAM|ram~806_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~134_q\);

-- Location: FF_X45_Y5_N37
\RAM|ram~142\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(7),
	sload => VCC,
	ena => \RAM|ram~814_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~142_q\);

-- Location: FF_X43_Y4_N56
\RAM|ram~270\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(7),
	sload => VCC,
	ena => \RAM|ram~818_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~270_q\);

-- Location: LABCELL_X43_Y4_N54
\RAM|ram~680\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~680_combout\ = ( \RAM|ram~270_q\ & ( \ROM|memROM~69_combout\ & ( (\ROM|memROM~153_combout\) # (\RAM|ram~262_q\) ) ) ) # ( !\RAM|ram~270_q\ & ( \ROM|memROM~69_combout\ & ( (\RAM|ram~262_q\ & !\ROM|memROM~153_combout\) ) ) ) # ( \RAM|ram~270_q\ & ( 
-- !\ROM|memROM~69_combout\ & ( (!\ROM|memROM~153_combout\ & (\RAM|ram~134_q\)) # (\ROM|memROM~153_combout\ & ((\RAM|ram~142_q\))) ) ) ) # ( !\RAM|ram~270_q\ & ( !\ROM|memROM~69_combout\ & ( (!\ROM|memROM~153_combout\ & (\RAM|ram~134_q\)) # 
-- (\ROM|memROM~153_combout\ & ((\RAM|ram~142_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001111001100110000111101010101000000000101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~262_q\,
	datab => \RAM|ALT_INV_ram~134_q\,
	datac => \RAM|ALT_INV_ram~142_q\,
	datad => \ROM|ALT_INV_memROM~153_combout\,
	datae => \RAM|ALT_INV_ram~270_q\,
	dataf => \ROM|ALT_INV_memROM~69_combout\,
	combout => \RAM|ram~680_combout\);

-- Location: FF_X43_Y5_N10
\RAM|ram~110\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(7),
	sload => VCC,
	ena => \RAM|ram~778_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~110_q\);

-- Location: FF_X44_Y5_N4
\RAM|ram~230\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(7),
	sload => VCC,
	ena => \RAM|ram~782_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~230_q\);

-- Location: FF_X41_Y7_N1
\RAM|ram~102\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(7),
	sload => VCC,
	ena => \RAM|ram~774_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~102_q\);

-- Location: FF_X43_Y4_N17
\RAM|ram~238\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(7),
	sload => VCC,
	ena => \RAM|ram~786_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~238_q\);

-- Location: LABCELL_X43_Y4_N15
\RAM|ram~679\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~679_combout\ = ( \RAM|ram~238_q\ & ( \ROM|memROM~69_combout\ & ( (\ROM|memROM~153_combout\) # (\RAM|ram~230_q\) ) ) ) # ( !\RAM|ram~238_q\ & ( \ROM|memROM~69_combout\ & ( (\RAM|ram~230_q\ & !\ROM|memROM~153_combout\) ) ) ) # ( \RAM|ram~238_q\ & ( 
-- !\ROM|memROM~69_combout\ & ( (!\ROM|memROM~153_combout\ & ((\RAM|ram~102_q\))) # (\ROM|memROM~153_combout\ & (\RAM|ram~110_q\)) ) ) ) # ( !\RAM|ram~238_q\ & ( !\ROM|memROM~69_combout\ & ( (!\ROM|memROM~153_combout\ & ((\RAM|ram~102_q\))) # 
-- (\ROM|memROM~153_combout\ & (\RAM|ram~110_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000001011111010100110000001100000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~110_q\,
	datab => \RAM|ALT_INV_ram~230_q\,
	datac => \ROM|ALT_INV_memROM~153_combout\,
	datad => \RAM|ALT_INV_ram~102_q\,
	datae => \RAM|ALT_INV_ram~238_q\,
	dataf => \ROM|ALT_INV_memROM~69_combout\,
	combout => \RAM|ram~679_combout\);

-- Location: FF_X42_Y7_N2
\RAM|ram~46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(7),
	sload => VCC,
	ena => \RAM|ram~762_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~46_q\);

-- Location: FF_X39_Y3_N11
\RAM|ram~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(7),
	sload => VCC,
	ena => \RAM|ram~758_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~38_q\);

-- Location: LABCELL_X40_Y8_N33
\RAM|ram~166feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~166feeder_combout\ = ( \CPU|REG_A|DOUT\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG_A|ALT_INV_DOUT\(7),
	combout => \RAM|ram~166feeder_combout\);

-- Location: FF_X40_Y8_N34
\RAM|ram~166\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~166feeder_combout\,
	ena => \RAM|ram~766_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~166_q\);

-- Location: FF_X41_Y8_N17
\RAM|ram~174\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(7),
	sload => VCC,
	ena => \RAM|ram~770_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~174_q\);

-- Location: LABCELL_X41_Y8_N15
\RAM|ram~677\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~677_combout\ = ( \RAM|ram~174_q\ & ( \ROM|memROM~69_combout\ & ( (\ROM|memROM~153_combout\) # (\RAM|ram~166_q\) ) ) ) # ( !\RAM|ram~174_q\ & ( \ROM|memROM~69_combout\ & ( (\RAM|ram~166_q\ & !\ROM|memROM~153_combout\) ) ) ) # ( \RAM|ram~174_q\ & ( 
-- !\ROM|memROM~69_combout\ & ( (!\ROM|memROM~153_combout\ & ((\RAM|ram~38_q\))) # (\ROM|memROM~153_combout\ & (\RAM|ram~46_q\)) ) ) ) # ( !\RAM|ram~174_q\ & ( !\ROM|memROM~69_combout\ & ( (!\ROM|memROM~153_combout\ & ((\RAM|ram~38_q\))) # 
-- (\ROM|memROM~153_combout\ & (\RAM|ram~46_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101010101001100110101010100001111000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~46_q\,
	datab => \RAM|ALT_INV_ram~38_q\,
	datac => \RAM|ALT_INV_ram~166_q\,
	datad => \ROM|ALT_INV_memROM~153_combout\,
	datae => \RAM|ALT_INV_ram~174_q\,
	dataf => \ROM|ALT_INV_memROM~69_combout\,
	combout => \RAM|ram~677_combout\);

-- Location: MLABCELL_X42_Y4_N15
\RAM|ram~681\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~681_combout\ = ( \RAM|ram~677_combout\ & ( \ROM|memROM~0_combout\ & ( (!\ROM|memROM~76_combout\ & (\RAM|ram~678_combout\)) # (\ROM|memROM~76_combout\ & ((\RAM|ram~680_combout\))) ) ) ) # ( !\RAM|ram~677_combout\ & ( \ROM|memROM~0_combout\ & ( 
-- (!\ROM|memROM~76_combout\ & (\RAM|ram~678_combout\)) # (\ROM|memROM~76_combout\ & ((\RAM|ram~680_combout\))) ) ) ) # ( \RAM|ram~677_combout\ & ( !\ROM|memROM~0_combout\ & ( (!\ROM|memROM~76_combout\) # (\RAM|ram~679_combout\) ) ) ) # ( 
-- !\RAM|ram~677_combout\ & ( !\ROM|memROM~0_combout\ & ( (\ROM|memROM~76_combout\ & \RAM|ram~679_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011110011001111111101000111010001110100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~678_combout\,
	datab => \ROM|ALT_INV_memROM~76_combout\,
	datac => \RAM|ALT_INV_ram~680_combout\,
	datad => \RAM|ALT_INV_ram~679_combout\,
	datae => \RAM|ALT_INV_ram~677_combout\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \RAM|ram~681_combout\);

-- Location: FF_X42_Y2_N16
\RAM|ram~118\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(7),
	sload => VCC,
	ena => \RAM|ram~742_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~118_q\);

-- Location: LABCELL_X43_Y6_N51
\RAM|ram~86feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~86feeder_combout\ = ( \CPU|REG_A|DOUT\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG_A|ALT_INV_DOUT\(7),
	combout => \RAM|ram~86feeder_combout\);

-- Location: FF_X43_Y6_N53
\RAM|ram~86\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~86feeder_combout\,
	ena => \RAM|ram~710_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~86_q\);

-- Location: FF_X42_Y6_N17
\RAM|ram~214\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(7),
	sload => VCC,
	ena => \RAM|ram~718_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~214_q\);

-- Location: FF_X42_Y6_N38
\RAM|ram~246\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(7),
	sload => VCC,
	ena => \RAM|ram~750_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~246_q\);

-- Location: MLABCELL_X42_Y6_N36
\RAM|ram~674\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~674_combout\ = ( \RAM|ram~246_q\ & ( \ROM|memROM~0_combout\ & ( (\ROM|memROM~69_combout\) # (\RAM|ram~118_q\) ) ) ) # ( !\RAM|ram~246_q\ & ( \ROM|memROM~0_combout\ & ( (\RAM|ram~118_q\ & !\ROM|memROM~69_combout\) ) ) ) # ( \RAM|ram~246_q\ & ( 
-- !\ROM|memROM~0_combout\ & ( (!\ROM|memROM~69_combout\ & (\RAM|ram~86_q\)) # (\ROM|memROM~69_combout\ & ((\RAM|ram~214_q\))) ) ) ) # ( !\RAM|ram~246_q\ & ( !\ROM|memROM~0_combout\ & ( (!\ROM|memROM~69_combout\ & (\RAM|ram~86_q\)) # (\ROM|memROM~69_combout\ 
-- & ((\RAM|ram~214_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111111000011000011111101000100010001000111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~118_q\,
	datab => \ROM|ALT_INV_memROM~69_combout\,
	datac => \RAM|ALT_INV_ram~86_q\,
	datad => \RAM|ALT_INV_ram~214_q\,
	datae => \RAM|ALT_INV_ram~246_q\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \RAM|ram~674_combout\);

-- Location: FF_X43_Y4_N28
\RAM|ram~222\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(7),
	sload => VCC,
	ena => \RAM|ram~722_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~222_q\);

-- Location: LABCELL_X43_Y6_N39
\RAM|ram~126feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~126feeder_combout\ = ( \CPU|REG_A|DOUT\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG_A|ALT_INV_DOUT\(7),
	combout => \RAM|ram~126feeder_combout\);

-- Location: FF_X43_Y6_N41
\RAM|ram~126\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~126feeder_combout\,
	ena => \RAM|ram~746_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~126_q\);

-- Location: FF_X45_Y5_N52
\RAM|ram~94\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(7),
	sload => VCC,
	ena => \RAM|ram~714_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~94_q\);

-- Location: FF_X43_Y6_N8
\RAM|ram~254\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(7),
	sload => VCC,
	ena => \RAM|ram~754_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~254_q\);

-- Location: LABCELL_X43_Y6_N6
\RAM|ram~675\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~675_combout\ = ( \RAM|ram~254_q\ & ( \ROM|memROM~0_combout\ & ( (\ROM|memROM~69_combout\) # (\RAM|ram~126_q\) ) ) ) # ( !\RAM|ram~254_q\ & ( \ROM|memROM~0_combout\ & ( (\RAM|ram~126_q\ & !\ROM|memROM~69_combout\) ) ) ) # ( \RAM|ram~254_q\ & ( 
-- !\ROM|memROM~0_combout\ & ( (!\ROM|memROM~69_combout\ & ((\RAM|ram~94_q\))) # (\ROM|memROM~69_combout\ & (\RAM|ram~222_q\)) ) ) ) # ( !\RAM|ram~254_q\ & ( !\ROM|memROM~0_combout\ & ( (!\ROM|memROM~69_combout\ & ((\RAM|ram~94_q\))) # 
-- (\ROM|memROM~69_combout\ & (\RAM|ram~222_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000011110101010100110011000000000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~222_q\,
	datab => \RAM|ALT_INV_ram~126_q\,
	datac => \RAM|ALT_INV_ram~94_q\,
	datad => \ROM|ALT_INV_memROM~69_combout\,
	datae => \RAM|ALT_INV_ram~254_q\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \RAM|ram~675_combout\);

-- Location: FF_X42_Y8_N56
\RAM|ram~150\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(7),
	sload => VCC,
	ena => \RAM|ram~702_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~150_q\);

-- Location: FF_X41_Y4_N58
\RAM|ram~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(7),
	sload => VCC,
	ena => \RAM|ram~694_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~22_q\);

-- Location: LABCELL_X39_Y2_N39
\RAM|ram~54feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~54feeder_combout\ = ( \CPU|REG_A|DOUT\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG_A|ALT_INV_DOUT\(7),
	combout => \RAM|ram~54feeder_combout\);

-- Location: FF_X39_Y2_N41
\RAM|ram~54\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~54feeder_combout\,
	ena => \RAM|ram~726_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~54_q\);

-- Location: FF_X42_Y8_N11
\RAM|ram~182\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(7),
	sload => VCC,
	ena => \RAM|ram~734_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~182_q\);

-- Location: MLABCELL_X42_Y8_N9
\RAM|ram~672\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~672_combout\ = ( \RAM|ram~182_q\ & ( \ROM|memROM~0_combout\ & ( (\ROM|memROM~69_combout\) # (\RAM|ram~54_q\) ) ) ) # ( !\RAM|ram~182_q\ & ( \ROM|memROM~0_combout\ & ( (\RAM|ram~54_q\ & !\ROM|memROM~69_combout\) ) ) ) # ( \RAM|ram~182_q\ & ( 
-- !\ROM|memROM~0_combout\ & ( (!\ROM|memROM~69_combout\ & ((\RAM|ram~22_q\))) # (\ROM|memROM~69_combout\ & (\RAM|ram~150_q\)) ) ) ) # ( !\RAM|ram~182_q\ & ( !\ROM|memROM~0_combout\ & ( (!\ROM|memROM~69_combout\ & ((\RAM|ram~22_q\))) # 
-- (\ROM|memROM~69_combout\ & (\RAM|ram~150_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101010101001100110101010100001111000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~150_q\,
	datab => \RAM|ALT_INV_ram~22_q\,
	datac => \RAM|ALT_INV_ram~54_q\,
	datad => \ROM|ALT_INV_memROM~69_combout\,
	datae => \RAM|ALT_INV_ram~182_q\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \RAM|ram~672_combout\);

-- Location: LABCELL_X44_Y6_N42
\RAM|ram~158feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~158feeder_combout\ = ( \CPU|REG_A|DOUT\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG_A|ALT_INV_DOUT\(7),
	combout => \RAM|ram~158feeder_combout\);

-- Location: FF_X44_Y6_N43
\RAM|ram~158\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~158feeder_combout\,
	ena => \RAM|ram~706_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~158_q\);

-- Location: FF_X41_Y5_N28
\RAM|ram~62\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(7),
	sload => VCC,
	ena => \RAM|ram~730_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~62_q\);

-- Location: FF_X39_Y5_N28
\RAM|ram~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(7),
	sload => VCC,
	ena => \RAM|ram~698_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~30_q\);

-- Location: FF_X42_Y7_N50
\RAM|ram~190\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(7),
	sload => VCC,
	ena => \RAM|ram~738_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~190_q\);

-- Location: MLABCELL_X42_Y7_N48
\RAM|ram~673\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~673_combout\ = ( \RAM|ram~190_q\ & ( \ROM|memROM~0_combout\ & ( (\ROM|memROM~69_combout\) # (\RAM|ram~62_q\) ) ) ) # ( !\RAM|ram~190_q\ & ( \ROM|memROM~0_combout\ & ( (\RAM|ram~62_q\ & !\ROM|memROM~69_combout\) ) ) ) # ( \RAM|ram~190_q\ & ( 
-- !\ROM|memROM~0_combout\ & ( (!\ROM|memROM~69_combout\ & ((\RAM|ram~30_q\))) # (\ROM|memROM~69_combout\ & (\RAM|ram~158_q\)) ) ) ) # ( !\RAM|ram~190_q\ & ( !\ROM|memROM~0_combout\ & ( (!\ROM|memROM~69_combout\ & ((\RAM|ram~30_q\))) # 
-- (\ROM|memROM~69_combout\ & (\RAM|ram~158_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000011110101010100110011000000000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~158_q\,
	datab => \RAM|ALT_INV_ram~62_q\,
	datac => \RAM|ALT_INV_ram~30_q\,
	datad => \ROM|ALT_INV_memROM~69_combout\,
	datae => \RAM|ALT_INV_ram~190_q\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \RAM|ram~673_combout\);

-- Location: MLABCELL_X42_Y6_N12
\RAM|ram~676\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~676_combout\ = ( \RAM|ram~672_combout\ & ( \RAM|ram~673_combout\ & ( (!\ROM|memROM~76_combout\) # ((!\ROM|memROM~153_combout\ & (\RAM|ram~674_combout\)) # (\ROM|memROM~153_combout\ & ((\RAM|ram~675_combout\)))) ) ) ) # ( !\RAM|ram~672_combout\ & 
-- ( \RAM|ram~673_combout\ & ( (!\ROM|memROM~153_combout\ & (\RAM|ram~674_combout\ & ((\ROM|memROM~76_combout\)))) # (\ROM|memROM~153_combout\ & (((!\ROM|memROM~76_combout\) # (\RAM|ram~675_combout\)))) ) ) ) # ( \RAM|ram~672_combout\ & ( 
-- !\RAM|ram~673_combout\ & ( (!\ROM|memROM~153_combout\ & (((!\ROM|memROM~76_combout\)) # (\RAM|ram~674_combout\))) # (\ROM|memROM~153_combout\ & (((\RAM|ram~675_combout\ & \ROM|memROM~76_combout\)))) ) ) ) # ( !\RAM|ram~672_combout\ & ( 
-- !\RAM|ram~673_combout\ & ( (\ROM|memROM~76_combout\ & ((!\ROM|memROM~153_combout\ & (\RAM|ram~674_combout\)) # (\ROM|memROM~153_combout\ & ((\RAM|ram~675_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000111110011000100011100110011010001111111111101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~674_combout\,
	datab => \ROM|ALT_INV_memROM~153_combout\,
	datac => \RAM|ALT_INV_ram~675_combout\,
	datad => \ROM|ALT_INV_memROM~76_combout\,
	datae => \RAM|ALT_INV_ram~672_combout\,
	dataf => \RAM|ALT_INV_ram~673_combout\,
	combout => \RAM|ram~676_combout\);

-- Location: LABCELL_X41_Y4_N27
\RAM|ram~692\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~692_combout\ = ( \RAM|ram~681_combout\ & ( \RAM|ram~676_combout\ & ( (!\ROM|memROM~45_combout\) # ((!\ROM|memROM~58_combout\ & (\RAM|ram~686_combout\)) # (\ROM|memROM~58_combout\ & ((\RAM|ram~691_combout\)))) ) ) ) # ( !\RAM|ram~681_combout\ & ( 
-- \RAM|ram~676_combout\ & ( (!\ROM|memROM~45_combout\ & (!\ROM|memROM~58_combout\)) # (\ROM|memROM~45_combout\ & ((!\ROM|memROM~58_combout\ & (\RAM|ram~686_combout\)) # (\ROM|memROM~58_combout\ & ((\RAM|ram~691_combout\))))) ) ) ) # ( \RAM|ram~681_combout\ 
-- & ( !\RAM|ram~676_combout\ & ( (!\ROM|memROM~45_combout\ & (\ROM|memROM~58_combout\)) # (\ROM|memROM~45_combout\ & ((!\ROM|memROM~58_combout\ & (\RAM|ram~686_combout\)) # (\ROM|memROM~58_combout\ & ((\RAM|ram~691_combout\))))) ) ) ) # ( 
-- !\RAM|ram~681_combout\ & ( !\RAM|ram~676_combout\ & ( (\ROM|memROM~45_combout\ & ((!\ROM|memROM~58_combout\ & (\RAM|ram~686_combout\)) # (\ROM|memROM~58_combout\ & ((\RAM|ram~691_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000010101001001100011011110001100100111011010111010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~45_combout\,
	datab => \ROM|ALT_INV_memROM~58_combout\,
	datac => \RAM|ALT_INV_ram~686_combout\,
	datad => \RAM|ALT_INV_ram~691_combout\,
	datae => \RAM|ALT_INV_ram~681_combout\,
	dataf => \RAM|ALT_INV_ram~676_combout\,
	combout => \RAM|ram~692_combout\);

-- Location: LABCELL_X41_Y4_N21
\CPU|MUX1|saida_MUX[7]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[7]~6_combout\ = ( \ENABLE_SWR~2_combout\ & ( \RAM|ram~692_combout\ & ( \SW[7]~input_o\ ) ) ) # ( !\ENABLE_SWR~2_combout\ & ( \RAM|ram~692_combout\ ) ) # ( \ENABLE_SWR~2_combout\ & ( !\RAM|ram~692_combout\ & ( \SW[7]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010111111111111111110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[7]~input_o\,
	datae => \ALT_INV_ENABLE_SWR~2_combout\,
	dataf => \RAM|ALT_INV_ram~692_combout\,
	combout => \CPU|MUX1|saida_MUX[7]~6_combout\);

-- Location: LABCELL_X41_Y3_N24
\CPU|ULA1|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~29_sumout\ = SUM(( (!\CPU|DECODER|OP_ULA[0]~2_combout\ & ((!\CPU|DECODER|sinais_controle~0_combout\ & ((!\CPU|MUX1|saida_MUX[7]~6_combout\))) # (\CPU|DECODER|sinais_controle~0_combout\ & (!\ROM|memROM~38_combout\)))) # 
-- (\CPU|DECODER|OP_ULA[0]~2_combout\ & (((!\CPU|MUX1|saida_MUX[7]~6_combout\)))) ) + ( \CPU|REG_A|DOUT\(7) ) + ( \CPU|ULA1|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111101100001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~38_combout\,
	datab => \CPU|DECODER|ALT_INV_OP_ULA[0]~2_combout\,
	datac => \CPU|DECODER|ALT_INV_sinais_controle~0_combout\,
	datad => \CPU|MUX1|ALT_INV_saida_MUX[7]~6_combout\,
	dataf => \CPU|REG_A|ALT_INV_DOUT\(7),
	cin => \CPU|ULA1|Add1~26\,
	sumout => \CPU|ULA1|Add1~29_sumout\);

-- Location: LABCELL_X40_Y3_N0
\CPU|FLAG|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FLAG|DOUT~0_combout\ = ( \CPU|FLAG|DOUT~2_combout\ & ( \CPU|ULA1|Add1~29_sumout\ & ( !\CPU|FLAG|DOUT~1_combout\ ) ) ) # ( \CPU|FLAG|DOUT~2_combout\ & ( !\CPU|ULA1|Add1~29_sumout\ & ( (!\CPU|FLAG|DOUT~1_combout\) # ((!\CPU|ULA1|Add1~17_sumout\ & 
-- (!\CPU|ULA1|Add1~25_sumout\ & !\CPU|ULA1|Add1~21_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011001100110000000000000000001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ULA1|ALT_INV_Add1~17_sumout\,
	datab => \CPU|FLAG|ALT_INV_DOUT~1_combout\,
	datac => \CPU|ULA1|ALT_INV_Add1~25_sumout\,
	datad => \CPU|ULA1|ALT_INV_Add1~21_sumout\,
	datae => \CPU|FLAG|ALT_INV_DOUT~2_combout\,
	dataf => \CPU|ULA1|ALT_INV_Add1~29_sumout\,
	combout => \CPU|FLAG|DOUT~0_combout\);

-- Location: FF_X40_Y3_N2
\CPU|FLAG|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|FLAG|DOUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|FLAG|DOUT~q\);

-- Location: LABCELL_X40_Y3_N42
\CPU|INSTR|MUX2|Equal2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|INSTR|MUX2|Equal2~0_combout\ = ( \ROM|memROM~4_combout\ & ( (!\ROM|memROM~78_combout\ & (!\ROM|memROM~77_combout\ & ((!\ROM|memROM~8_combout\)))) # (\ROM|memROM~78_combout\ & (\ROM|memROM~77_combout\ & (\CPU|FLAG|DOUT~q\ & \ROM|memROM~8_combout\))) ) 
-- ) # ( !\ROM|memROM~4_combout\ & ( (\ROM|memROM~8_combout\ & (!\ROM|memROM~78_combout\ $ (\ROM|memROM~77_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010011001000000001001100110001000000000011000100000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~78_combout\,
	datab => \ROM|ALT_INV_memROM~77_combout\,
	datac => \CPU|FLAG|ALT_INV_DOUT~q\,
	datad => \ROM|ALT_INV_memROM~8_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	combout => \CPU|INSTR|MUX2|Equal2~0_combout\);

-- Location: LABCELL_X32_Y7_N51
\CPU|INSTR|SOMA_CONST|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|INSTR|SOMA_CONST|Add0~1_sumout\ = SUM(( \CPU|INSTR|PC|DOUT\(7) ) + ( GND ) + ( \CPU|INSTR|SOMA_CONST|Add0~30\ ))
-- \CPU|INSTR|SOMA_CONST|Add0~2\ = CARRY(( \CPU|INSTR|PC|DOUT\(7) ) + ( GND ) + ( \CPU|INSTR|SOMA_CONST|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|INSTR|PC|ALT_INV_DOUT\(7),
	cin => \CPU|INSTR|SOMA_CONST|Add0~30\,
	sumout => \CPU|INSTR|SOMA_CONST|Add0~1_sumout\,
	cout => \CPU|INSTR|SOMA_CONST|Add0~2\);

-- Location: FF_X32_Y7_N52
\CPU|INSTR|END_RETORNO|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|INSTR|SOMA_CONST|Add0~1_sumout\,
	ena => \CPU|DECODER|sinais_controle~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|INSTR|END_RETORNO|DOUT\(7));

-- Location: LABCELL_X35_Y6_N18
\CPU|INSTR|MUX2|MUX_OUT[7]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|INSTR|MUX2|MUX_OUT[7]~0_combout\ = ( \CPU|INSTR|SOMA_CONST|Add0~1_sumout\ & ( (!\CPU|INSTR|MUX2|Equal2~0_combout\) # ((!\CPU|INSTR|MUX2|Equal1~0_combout\ & (\CPU|INSTR|END_RETORNO|DOUT\(7))) # (\CPU|INSTR|MUX2|Equal1~0_combout\ & 
-- ((\ROM|memROM~38_combout\)))) ) ) # ( !\CPU|INSTR|SOMA_CONST|Add0~1_sumout\ & ( (\CPU|INSTR|MUX2|Equal2~0_combout\ & ((!\CPU|INSTR|MUX2|Equal1~0_combout\ & (\CPU|INSTR|END_RETORNO|DOUT\(7))) # (\CPU|INSTR|MUX2|Equal1~0_combout\ & 
-- ((\ROM|memROM~38_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000010011000000100001001111001110110111111100111011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|MUX2|ALT_INV_Equal1~0_combout\,
	datab => \CPU|INSTR|MUX2|ALT_INV_Equal2~0_combout\,
	datac => \CPU|INSTR|END_RETORNO|ALT_INV_DOUT\(7),
	datad => \ROM|ALT_INV_memROM~38_combout\,
	dataf => \CPU|INSTR|SOMA_CONST|ALT_INV_Add0~1_sumout\,
	combout => \CPU|INSTR|MUX2|MUX_OUT[7]~0_combout\);

-- Location: FF_X35_Y6_N20
\CPU|INSTR|PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|INSTR|MUX2|MUX_OUT[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|INSTR|PC|DOUT\(7));

-- Location: LABCELL_X32_Y7_N54
\CPU|INSTR|SOMA_CONST|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|INSTR|SOMA_CONST|Add0~5_sumout\ = SUM(( \CPU|INSTR|PC|DOUT[8]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|INSTR|SOMA_CONST|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|INSTR|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	cin => \CPU|INSTR|SOMA_CONST|Add0~2\,
	sumout => \CPU|INSTR|SOMA_CONST|Add0~5_sumout\);

-- Location: FF_X32_Y7_N56
\CPU|INSTR|END_RETORNO|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|INSTR|SOMA_CONST|Add0~5_sumout\,
	ena => \CPU|DECODER|sinais_controle~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|INSTR|END_RETORNO|DOUT\(8));

-- Location: LABCELL_X36_Y8_N6
\CPU|INSTR|MUX2|MUX_OUT[8]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|INSTR|MUX2|MUX_OUT[8]~1_combout\ = ( \CPU|INSTR|MUX2|Equal2~0_combout\ & ( \CPU|INSTR|MUX2|Equal1~0_combout\ & ( \ROM|memROM~24_combout\ ) ) ) # ( !\CPU|INSTR|MUX2|Equal2~0_combout\ & ( \CPU|INSTR|MUX2|Equal1~0_combout\ & ( 
-- \CPU|INSTR|SOMA_CONST|Add0~5_sumout\ ) ) ) # ( \CPU|INSTR|MUX2|Equal2~0_combout\ & ( !\CPU|INSTR|MUX2|Equal1~0_combout\ & ( \CPU|INSTR|END_RETORNO|DOUT\(8) ) ) ) # ( !\CPU|INSTR|MUX2|Equal2~0_combout\ & ( !\CPU|INSTR|MUX2|Equal1~0_combout\ & ( 
-- \CPU|INSTR|SOMA_CONST|Add0~5_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000011110000111101010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|SOMA_CONST|ALT_INV_Add0~5_sumout\,
	datab => \ROM|ALT_INV_memROM~24_combout\,
	datac => \CPU|INSTR|END_RETORNO|ALT_INV_DOUT\(8),
	datae => \CPU|INSTR|MUX2|ALT_INV_Equal2~0_combout\,
	dataf => \CPU|INSTR|MUX2|ALT_INV_Equal1~0_combout\,
	combout => \CPU|INSTR|MUX2|MUX_OUT[8]~1_combout\);

-- Location: FF_X36_Y8_N7
\CPU|INSTR|PC|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|INSTR|MUX2|MUX_OUT[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|INSTR|PC|DOUT\(8));

-- Location: LABCELL_X40_Y7_N42
\ROM|memROM~88\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~88_combout\ = ( !\CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\ & ( \CPU|INSTR|PC|DOUT[6]~DUPLICATE_q\ & ( (!\CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\ & (!\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\ & (!\CPU|INSTR|PC|DOUT\(4) & !\CPU|INSTR|PC|DOUT[7]~DUPLICATE_q\))) ) ) 
-- ) # ( \CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\ & ( !\CPU|INSTR|PC|DOUT[6]~DUPLICATE_q\ & ( (!\CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\ & (\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\ & (\CPU|INSTR|PC|DOUT\(4) & !\CPU|INSTR|PC|DOUT[7]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000100000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datab => \CPU|INSTR|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datac => \CPU|INSTR|PC|ALT_INV_DOUT\(4),
	datad => \CPU|INSTR|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datae => \CPU|INSTR|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \CPU|INSTR|PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	combout => \ROM|memROM~88_combout\);

-- Location: LABCELL_X36_Y8_N42
\ROM|memROM~94\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~94_combout\ = ( \CPU|INSTR|PC|DOUT[6]~DUPLICATE_q\ & ( !\CPU|INSTR|PC|DOUT[7]~DUPLICATE_q\ & ( (!\CPU|INSTR|PC|DOUT\(4) & (!\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\ & ((!\CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\) # (!\CPU|INSTR|PC|DOUT\(2))))) ) ) ) # ( 
-- !\CPU|INSTR|PC|DOUT[6]~DUPLICATE_q\ & ( !\CPU|INSTR|PC|DOUT[7]~DUPLICATE_q\ & ( (!\CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\ & ((!\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\ & (!\CPU|INSTR|PC|DOUT\(4))) # (\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\ & ((\CPU|INSTR|PC|DOUT\(2)))))) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010001100101000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|PC|ALT_INV_DOUT\(4),
	datab => \CPU|INSTR|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datac => \CPU|INSTR|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datad => \CPU|INSTR|PC|ALT_INV_DOUT\(2),
	datae => \CPU|INSTR|PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	dataf => \CPU|INSTR|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	combout => \ROM|memROM~94_combout\);

-- Location: MLABCELL_X34_Y7_N15
\ROM|memROM~87\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~87_combout\ = ( \ROM|memROM~70_combout\ & ( (!\CPU|INSTR|PC|DOUT\(6) & (!\CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\ $ (((!\CPU|INSTR|PC|DOUT\(5)) # (\CPU|INSTR|PC|DOUT\(2)))))) # (\CPU|INSTR|PC|DOUT\(6) & (!\CPU|INSTR|PC|DOUT\(5) & 
-- (!\CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\ $ (!\CPU|INSTR|PC|DOUT\(2))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110110100000100011011010000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|PC|ALT_INV_DOUT\(6),
	datab => \CPU|INSTR|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datac => \CPU|INSTR|PC|ALT_INV_DOUT\(2),
	datad => \CPU|INSTR|PC|ALT_INV_DOUT\(5),
	dataf => \ROM|ALT_INV_memROM~70_combout\,
	combout => \ROM|memROM~87_combout\);

-- Location: LABCELL_X40_Y7_N6
\ROM|memROM~133\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~133_combout\ = ( \CPU|INSTR|PC|DOUT[7]~DUPLICATE_q\ & ( \CPU|INSTR|PC|DOUT\(4) & ( (!\CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\ & (!\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\ $ (((\CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\ & !\CPU|INSTR|PC|DOUT[6]~DUPLICATE_q\))))) # 
-- (\CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\ & (\CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\ & (!\CPU|INSTR|PC|DOUT[6]~DUPLICATE_q\ & !\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\))) ) ) ) # ( !\CPU|INSTR|PC|DOUT[7]~DUPLICATE_q\ & ( \CPU|INSTR|PC|DOUT\(4) & ( 
-- (!\CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\ & (!\CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\ & (!\CPU|INSTR|PC|DOUT[6]~DUPLICATE_q\ & !\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\))) ) ) ) # ( \CPU|INSTR|PC|DOUT[7]~DUPLICATE_q\ & ( !\CPU|INSTR|PC|DOUT\(4) & ( 
-- (!\CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\ & (!\CPU|INSTR|PC|DOUT[6]~DUPLICATE_q\ & (!\CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\ $ (\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\)))) # (\CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\ & (!\CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\ & 
-- ((!\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\)))) ) ) ) # ( !\CPU|INSTR|PC|DOUT[7]~DUPLICATE_q\ & ( !\CPU|INSTR|PC|DOUT\(4) & ( (!\CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\ & ((!\CPU|INSTR|PC|DOUT[6]~DUPLICATE_q\ & (!\CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\)) # 
-- (\CPU|INSTR|PC|DOUT[6]~DUPLICATE_q\ & ((\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\))))) # (\CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\ & (!\CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\ & (!\CPU|INSTR|PC|DOUT[6]~DUPLICATE_q\ $ (\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010001110101000100100000010000000000000001001110001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datab => \CPU|INSTR|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datac => \CPU|INSTR|PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	datad => \CPU|INSTR|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datae => \CPU|INSTR|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	dataf => \CPU|INSTR|PC|ALT_INV_DOUT\(4),
	combout => \ROM|memROM~133_combout\);

-- Location: LABCELL_X40_Y7_N0
\ROM|memROM~135\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~135_combout\ = ( \CPU|INSTR|PC|DOUT[7]~DUPLICATE_q\ & ( \CPU|INSTR|PC|DOUT\(4) & ( (!\CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\ & ((!\CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\ $ (!\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\)) # (\CPU|INSTR|PC|DOUT\(6)))) # 
-- (\CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\ & ((!\CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\) # ((\CPU|INSTR|PC|DOUT\(6) & \CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\)))) ) ) ) # ( !\CPU|INSTR|PC|DOUT[7]~DUPLICATE_q\ & ( \CPU|INSTR|PC|DOUT\(4) & ( 
-- (!\CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\ & (!\CPU|INSTR|PC|DOUT\(6) & (!\CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\ & !\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\))) ) ) ) # ( \CPU|INSTR|PC|DOUT[7]~DUPLICATE_q\ & ( !\CPU|INSTR|PC|DOUT\(4) & ( (!\CPU|INSTR|PC|DOUT\(6) & 
-- ((!\CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\) # ((\CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\ & \CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\)))) # (\CPU|INSTR|PC|DOUT\(6) & (((!\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\)))) ) ) ) # ( !\CPU|INSTR|PC|DOUT[7]~DUPLICATE_q\ & ( 
-- !\CPU|INSTR|PC|DOUT\(4) & ( (!\CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\ & (!\CPU|INSTR|PC|DOUT\(6) $ (((\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\))))) # (\CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\ & (!\CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\ & (!\CPU|INSTR|PC|DOUT\(6) $ 
-- (\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100100000110010101110111000110010000000000000000111101011110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datab => \CPU|INSTR|PC|ALT_INV_DOUT\(6),
	datac => \CPU|INSTR|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datad => \CPU|INSTR|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datae => \CPU|INSTR|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	dataf => \CPU|INSTR|PC|ALT_INV_DOUT\(4),
	combout => \ROM|memROM~135_combout\);

-- Location: LABCELL_X40_Y7_N30
\ROM|memROM~132\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~132_combout\ = ( \CPU|INSTR|PC|DOUT[7]~DUPLICATE_q\ & ( \CPU|INSTR|PC|DOUT\(4) & ( (!\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\ & (!\CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\ & (!\CPU|INSTR|PC|DOUT[6]~DUPLICATE_q\ $ (!\CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\)))) # 
-- (\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\ & (!\CPU|INSTR|PC|DOUT[6]~DUPLICATE_q\ & (\CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\))) ) ) ) # ( !\CPU|INSTR|PC|DOUT[7]~DUPLICATE_q\ & ( \CPU|INSTR|PC|DOUT\(4) & ( (!\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\ & 
-- (!\CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\ & ((!\CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\) # (\CPU|INSTR|PC|DOUT[6]~DUPLICATE_q\)))) # (\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\ & (!\CPU|INSTR|PC|DOUT[6]~DUPLICATE_q\)) ) ) ) # ( \CPU|INSTR|PC|DOUT[7]~DUPLICATE_q\ & ( 
-- !\CPU|INSTR|PC|DOUT\(4) & ( (!\CPU|INSTR|PC|DOUT[6]~DUPLICATE_q\ & (!\CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\ $ (((\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\ & \CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\))))) # (\CPU|INSTR|PC|DOUT[6]~DUPLICATE_q\ & 
-- (!\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\ & (!\CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\ & \CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\))) ) ) ) # ( !\CPU|INSTR|PC|DOUT[7]~DUPLICATE_q\ & ( !\CPU|INSTR|PC|DOUT\(4) & ( (!\CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\ & 
-- (((\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\)) # (\CPU|INSTR|PC|DOUT[6]~DUPLICATE_q\))) # (\CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\ & ((!\CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\) # (!\CPU|INSTR|PC|DOUT[6]~DUPLICATE_q\ $ (!\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011111110110101000001100001011100010011000100100001010000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	datab => \CPU|INSTR|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datac => \CPU|INSTR|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datad => \CPU|INSTR|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datae => \CPU|INSTR|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	dataf => \CPU|INSTR|PC|ALT_INV_DOUT\(4),
	combout => \ROM|memROM~132_combout\);

-- Location: LABCELL_X40_Y7_N54
\ROM|memROM~134\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~134_combout\ = ( \CPU|INSTR|PC|DOUT[7]~DUPLICATE_q\ & ( \CPU|INSTR|PC|DOUT\(4) & ( (!\CPU|INSTR|PC|DOUT[6]~DUPLICATE_q\ & ((!\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\) # ((!\CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\) # 
-- (!\CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\)))) # (\CPU|INSTR|PC|DOUT[6]~DUPLICATE_q\ & (((\CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\) # (\CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\)) # (\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\))) ) ) ) # ( !\CPU|INSTR|PC|DOUT[7]~DUPLICATE_q\ & ( 
-- \CPU|INSTR|PC|DOUT\(4) & ( (!\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\ & ((!\CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\))) # (\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\ & (!\CPU|INSTR|PC|DOUT[6]~DUPLICATE_q\)) ) ) ) # ( \CPU|INSTR|PC|DOUT[7]~DUPLICATE_q\ & ( 
-- !\CPU|INSTR|PC|DOUT\(4) & ( (!\CPU|INSTR|PC|DOUT[6]~DUPLICATE_q\ & ((!\CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\ $ (!\CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\)) # (\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\))) # (\CPU|INSTR|PC|DOUT[6]~DUPLICATE_q\ & 
-- (!\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\ & ((!\CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\) # (\CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\)))) ) ) ) # ( !\CPU|INSTR|PC|DOUT[7]~DUPLICATE_q\ & ( !\CPU|INSTR|PC|DOUT\(4) & ( (!\CPU|INSTR|PC|DOUT[6]~DUPLICATE_q\ & 
-- ((!\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\ $ (!\CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\)) # (\CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\))) # (\CPU|INSTR|PC|DOUT[6]~DUPLICATE_q\ & ((!\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\) # ((!\CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\) # 
-- (!\CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111111011110011011101010011011100010111000101011111111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	datab => \CPU|INSTR|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datac => \CPU|INSTR|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datad => \CPU|INSTR|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datae => \CPU|INSTR|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	dataf => \CPU|INSTR|PC|ALT_INV_DOUT\(4),
	combout => \ROM|memROM~134_combout\);

-- Location: LABCELL_X40_Y7_N12
\ROM|memROM~90\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~90_combout\ = ( !\CPU|INSTR|PC|DOUT\(1) & ( (!\CPU|INSTR|PC|DOUT\(8) & (((!\CPU|INSTR|PC|DOUT[0]~DUPLICATE_q\ & (\ROM|memROM~134_combout\)) # (\CPU|INSTR|PC|DOUT[0]~DUPLICATE_q\ & ((\ROM|memROM~132_combout\)))))) # (\CPU|INSTR|PC|DOUT\(8) & 
-- ((((\CPU|INSTR|PC|DOUT[0]~DUPLICATE_q\))))) ) ) # ( \CPU|INSTR|PC|DOUT\(1) & ( (!\CPU|INSTR|PC|DOUT\(8) & ((!\CPU|INSTR|PC|DOUT[0]~DUPLICATE_q\ & (((\ROM|memROM~135_combout\)))) # (\CPU|INSTR|PC|DOUT[0]~DUPLICATE_q\ & (\ROM|memROM~133_combout\)))) # 
-- (\CPU|INSTR|PC|DOUT\(8) & ((((\CPU|INSTR|PC|DOUT[0]~DUPLICATE_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000101001010101000010100111011100001010111111110000101001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|PC|ALT_INV_DOUT\(8),
	datab => \ROM|ALT_INV_memROM~133_combout\,
	datac => \ROM|ALT_INV_memROM~135_combout\,
	datad => \CPU|INSTR|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datae => \CPU|INSTR|PC|ALT_INV_DOUT\(1),
	dataf => \ROM|ALT_INV_memROM~132_combout\,
	datag => \ROM|ALT_INV_memROM~134_combout\,
	combout => \ROM|memROM~90_combout\);

-- Location: LABCELL_X40_Y7_N36
\ROM|memROM~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~89_combout\ = ( \CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\ & ( \ROM|memROM~70_combout\ & ( !\CPU|INSTR|PC|DOUT[6]~DUPLICATE_q\ ) ) ) # ( !\CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\ & ( \ROM|memROM~70_combout\ & ( (!\CPU|INSTR|PC|DOUT[6]~DUPLICATE_q\ & 
-- (!\CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\)) # (\CPU|INSTR|PC|DOUT[6]~DUPLICATE_q\ & ((!\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110101101000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	datac => \CPU|INSTR|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datad => \CPU|INSTR|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datae => \CPU|INSTR|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \ROM|ALT_INV_memROM~70_combout\,
	combout => \ROM|memROM~89_combout\);

-- Location: LABCELL_X40_Y7_N48
\ROM|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~4_combout\ = ( !\CPU|INSTR|PC|DOUT\(1) & ( (!\CPU|INSTR|PC|DOUT\(8) & ((((\ROM|memROM~90_combout\))))) # (\CPU|INSTR|PC|DOUT\(8) & (((!\ROM|memROM~90_combout\ & (\ROM|memROM~89_combout\)) # (\ROM|memROM~90_combout\ & 
-- ((\ROM|memROM~87_combout\)))))) ) ) # ( \CPU|INSTR|PC|DOUT\(1) & ( (!\CPU|INSTR|PC|DOUT\(8) & ((((\ROM|memROM~90_combout\))))) # (\CPU|INSTR|PC|DOUT\(8) & (((!\ROM|memROM~90_combout\ & ((\ROM|memROM~94_combout\))) # (\ROM|memROM~90_combout\ & 
-- (\ROM|memROM~88_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000010100000101000001010000010110101010111111111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|PC|ALT_INV_DOUT\(8),
	datab => \ROM|ALT_INV_memROM~88_combout\,
	datac => \ROM|ALT_INV_memROM~94_combout\,
	datad => \ROM|ALT_INV_memROM~87_combout\,
	datae => \CPU|INSTR|PC|ALT_INV_DOUT\(1),
	dataf => \ROM|ALT_INV_memROM~90_combout\,
	datag => \ROM|ALT_INV_memROM~89_combout\,
	combout => \ROM|memROM~4_combout\);

-- Location: LABCELL_X40_Y3_N12
\CPU|INSTR|MUX2|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|INSTR|MUX2|Equal1~0_combout\ = ( \ROM|memROM~8_combout\ & ( (\ROM|memROM~77_combout\ & (\ROM|memROM~78_combout\ & ((!\ROM|memROM~4_combout\) # (\CPU|FLAG|DOUT~q\)))) ) ) # ( !\ROM|memROM~8_combout\ & ( (\ROM|memROM~4_combout\ & 
-- (!\ROM|memROM~77_combout\ & !\ROM|memROM~78_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000000000010001000000000000000000001000110000000000100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~4_combout\,
	datab => \ROM|ALT_INV_memROM~77_combout\,
	datac => \CPU|FLAG|ALT_INV_DOUT~q\,
	datad => \ROM|ALT_INV_memROM~78_combout\,
	dataf => \ROM|ALT_INV_memROM~8_combout\,
	combout => \CPU|INSTR|MUX2|Equal1~0_combout\);

-- Location: FF_X32_Y7_N43
\CPU|INSTR|END_RETORNO|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|INSTR|SOMA_CONST|Add0~21_sumout\,
	ena => \CPU|DECODER|sinais_controle~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|INSTR|END_RETORNO|DOUT\(4));

-- Location: LABCELL_X35_Y6_N21
\CPU|INSTR|MUX2|MUX_OUT[4]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|INSTR|MUX2|MUX_OUT[4]~5_combout\ = ( \CPU|INSTR|END_RETORNO|DOUT\(4) & ( (!\CPU|INSTR|MUX2|Equal2~0_combout\ & (((\CPU|INSTR|SOMA_CONST|Add0~21_sumout\)))) # (\CPU|INSTR|MUX2|Equal2~0_combout\ & ((!\CPU|INSTR|MUX2|Equal1~0_combout\) # 
-- ((\ROM|memROM~69_combout\)))) ) ) # ( !\CPU|INSTR|END_RETORNO|DOUT\(4) & ( (!\CPU|INSTR|MUX2|Equal2~0_combout\ & (((\CPU|INSTR|SOMA_CONST|Add0~21_sumout\)))) # (\CPU|INSTR|MUX2|Equal2~0_combout\ & (\CPU|INSTR|MUX2|Equal1~0_combout\ & 
-- ((\ROM|memROM~69_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000011101000011000001110100101110001111110010111000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|MUX2|ALT_INV_Equal1~0_combout\,
	datab => \CPU|INSTR|MUX2|ALT_INV_Equal2~0_combout\,
	datac => \CPU|INSTR|SOMA_CONST|ALT_INV_Add0~21_sumout\,
	datad => \ROM|ALT_INV_memROM~69_combout\,
	dataf => \CPU|INSTR|END_RETORNO|ALT_INV_DOUT\(4),
	combout => \CPU|INSTR|MUX2|MUX_OUT[4]~5_combout\);

-- Location: FF_X35_Y6_N22
\CPU|INSTR|PC|DOUT[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|INSTR|MUX2|MUX_OUT[4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|INSTR|PC|DOUT[4]~DUPLICATE_q\);

-- Location: MLABCELL_X34_Y6_N48
\ROM|memROM~104\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~104_combout\ = ( \CPU|INSTR|PC|DOUT\(1) & ( !\CPU|INSTR|PC|DOUT[7]~DUPLICATE_q\ & ( (!\CPU|INSTR|PC|DOUT[4]~DUPLICATE_q\ & (!\CPU|INSTR|PC|DOUT\(2) & (\CPU|INSTR|PC|DOUT\(6) & !\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\))) ) ) ) # ( 
-- !\CPU|INSTR|PC|DOUT\(1) & ( !\CPU|INSTR|PC|DOUT[7]~DUPLICATE_q\ & ( (!\CPU|INSTR|PC|DOUT[4]~DUPLICATE_q\ & (\CPU|INSTR|PC|DOUT\(2) & (!\CPU|INSTR|PC|DOUT\(6) & !\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000000010000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datab => \CPU|INSTR|PC|ALT_INV_DOUT\(2),
	datac => \CPU|INSTR|PC|ALT_INV_DOUT\(6),
	datad => \CPU|INSTR|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datae => \CPU|INSTR|PC|ALT_INV_DOUT\(1),
	dataf => \CPU|INSTR|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	combout => \ROM|memROM~104_combout\);

-- Location: LABCELL_X35_Y8_N27
\ROM|memROM~103\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~103_combout\ = ( !\CPU|INSTR|PC|DOUT[7]~DUPLICATE_q\ & ( \CPU|INSTR|PC|DOUT\(6) & ( (!\CPU|INSTR|PC|DOUT\(2) & (!\CPU|INSTR|PC|DOUT\(5) & (!\CPU|INSTR|PC|DOUT\(1) & !\CPU|INSTR|PC|DOUT[4]~DUPLICATE_q\))) ) ) ) # ( 
-- !\CPU|INSTR|PC|DOUT[7]~DUPLICATE_q\ & ( !\CPU|INSTR|PC|DOUT\(6) & ( (\CPU|INSTR|PC|DOUT\(5) & ((!\CPU|INSTR|PC|DOUT\(2) & (!\CPU|INSTR|PC|DOUT\(1) & \CPU|INSTR|PC|DOUT[4]~DUPLICATE_q\)) # (\CPU|INSTR|PC|DOUT\(2) & (\CPU|INSTR|PC|DOUT\(1) & 
-- !\CPU|INSTR|PC|DOUT[4]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|PC|ALT_INV_DOUT\(2),
	datab => \CPU|INSTR|PC|ALT_INV_DOUT\(5),
	datac => \CPU|INSTR|PC|ALT_INV_DOUT\(1),
	datad => \CPU|INSTR|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datae => \CPU|INSTR|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	dataf => \CPU|INSTR|PC|ALT_INV_DOUT\(6),
	combout => \ROM|memROM~103_combout\);

-- Location: LABCELL_X35_Y8_N9
\ROM|memROM~110\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~110_combout\ = ( \ROM|memROM~70_combout\ & ( \CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\ & ( (!\CPU|INSTR|PC|DOUT\(6) & (!\CPU|INSTR|PC|DOUT\(2) $ (\CPU|INSTR|PC|DOUT\(1)))) ) ) ) # ( \ROM|memROM~70_combout\ & ( !\CPU|INSTR|PC|DOUT[5]~DUPLICATE_q\ & ( 
-- (!\CPU|INSTR|PC|DOUT\(2) & (\CPU|INSTR|PC|DOUT\(1))) # (\CPU|INSTR|PC|DOUT\(2) & (!\CPU|INSTR|PC|DOUT\(1) & \CPU|INSTR|PC|DOUT\(6))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000100110011000000000000000001001100100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|PC|ALT_INV_DOUT\(2),
	datab => \CPU|INSTR|PC|ALT_INV_DOUT\(1),
	datad => \CPU|INSTR|PC|ALT_INV_DOUT\(6),
	datae => \ROM|ALT_INV_memROM~70_combout\,
	dataf => \CPU|INSTR|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	combout => \ROM|memROM~110_combout\);

-- Location: LABCELL_X35_Y9_N6
\ROM|memROM~150\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~150_combout\ = ( \CPU|INSTR|PC|DOUT\(6) & ( \CPU|INSTR|PC|DOUT\(4) & ( (\CPU|INSTR|PC|DOUT\(5) & (\CPU|INSTR|PC|DOUT[7]~DUPLICATE_q\ & \CPU|INSTR|PC|DOUT\(1))) ) ) ) # ( !\CPU|INSTR|PC|DOUT\(6) & ( \CPU|INSTR|PC|DOUT\(4) & ( 
-- (\CPU|INSTR|PC|DOUT[7]~DUPLICATE_q\ & (!\CPU|INSTR|PC|DOUT\(5) $ (((!\CPU|INSTR|PC|DOUT\(2)) # (!\CPU|INSTR|PC|DOUT\(1)))))) ) ) ) # ( \CPU|INSTR|PC|DOUT\(6) & ( !\CPU|INSTR|PC|DOUT\(4) & ( (!\CPU|INSTR|PC|DOUT\(2) & (\CPU|INSTR|PC|DOUT\(5) & 
-- !\CPU|INSTR|PC|DOUT[7]~DUPLICATE_q\)) ) ) ) # ( !\CPU|INSTR|PC|DOUT\(6) & ( !\CPU|INSTR|PC|DOUT\(4) & ( (!\CPU|INSTR|PC|DOUT\(2) & (\CPU|INSTR|PC|DOUT\(5) & (\CPU|INSTR|PC|DOUT[7]~DUPLICATE_q\ & \CPU|INSTR|PC|DOUT\(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010001000000010000000000011000001100000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|PC|ALT_INV_DOUT\(2),
	datab => \CPU|INSTR|PC|ALT_INV_DOUT\(5),
	datac => \CPU|INSTR|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datad => \CPU|INSTR|PC|ALT_INV_DOUT\(1),
	datae => \CPU|INSTR|PC|ALT_INV_DOUT\(6),
	dataf => \CPU|INSTR|PC|ALT_INV_DOUT\(4),
	combout => \ROM|memROM~150_combout\);

-- Location: LABCELL_X35_Y9_N18
\ROM|memROM~149\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~149_combout\ = ( \CPU|INSTR|PC|DOUT\(1) & ( \CPU|INSTR|PC|DOUT[4]~DUPLICATE_q\ & ( (\CPU|INSTR|PC|DOUT[7]~DUPLICATE_q\ & ((!\CPU|INSTR|PC|DOUT[6]~DUPLICATE_q\ & (!\CPU|INSTR|PC|DOUT\(5) & !\CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\)) # 
-- (\CPU|INSTR|PC|DOUT[6]~DUPLICATE_q\ & (\CPU|INSTR|PC|DOUT\(5))))) ) ) ) # ( !\CPU|INSTR|PC|DOUT\(1) & ( \CPU|INSTR|PC|DOUT[4]~DUPLICATE_q\ & ( (\CPU|INSTR|PC|DOUT[6]~DUPLICATE_q\ & (!\CPU|INSTR|PC|DOUT\(5) & (\CPU|INSTR|PC|DOUT[7]~DUPLICATE_q\ & 
-- !\CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\))) ) ) ) # ( \CPU|INSTR|PC|DOUT\(1) & ( !\CPU|INSTR|PC|DOUT[4]~DUPLICATE_q\ & ( (\CPU|INSTR|PC|DOUT[6]~DUPLICATE_q\ & (\CPU|INSTR|PC|DOUT\(5) & !\CPU|INSTR|PC|DOUT[7]~DUPLICATE_q\)) ) ) ) # ( !\CPU|INSTR|PC|DOUT\(1) & ( 
-- !\CPU|INSTR|PC|DOUT[4]~DUPLICATE_q\ & ( (\CPU|INSTR|PC|DOUT[6]~DUPLICATE_q\ & ((!\CPU|INSTR|PC|DOUT\(5) & (\CPU|INSTR|PC|DOUT[7]~DUPLICATE_q\ & \CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\)) # (\CPU|INSTR|PC|DOUT\(5) & (!\CPU|INSTR|PC|DOUT[7]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010100000100000001000000000100000000000000100100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	datab => \CPU|INSTR|PC|ALT_INV_DOUT\(5),
	datac => \CPU|INSTR|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datad => \CPU|INSTR|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datae => \CPU|INSTR|PC|ALT_INV_DOUT\(1),
	dataf => \CPU|INSTR|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	combout => \ROM|memROM~149_combout\);

-- Location: LABCELL_X35_Y9_N54
\ROM|memROM~139\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~139_combout\ = ( \CPU|INSTR|PC|DOUT\(4) & ( \CPU|INSTR|PC|DOUT[7]~DUPLICATE_q\ & ( (!\CPU|INSTR|PC|DOUT\(1) & ((!\CPU|INSTR|PC|DOUT\(2) & ((!\CPU|INSTR|PC|DOUT\(6)))) # (\CPU|INSTR|PC|DOUT\(2) & (!\CPU|INSTR|PC|DOUT\(5))))) # 
-- (\CPU|INSTR|PC|DOUT\(1) & (\CPU|INSTR|PC|DOUT\(6) & (!\CPU|INSTR|PC|DOUT\(2) $ (\CPU|INSTR|PC|DOUT\(5))))) ) ) ) # ( !\CPU|INSTR|PC|DOUT\(4) & ( \CPU|INSTR|PC|DOUT[7]~DUPLICATE_q\ & ( (!\CPU|INSTR|PC|DOUT\(5) & (\CPU|INSTR|PC|DOUT\(6) & 
-- ((!\CPU|INSTR|PC|DOUT\(2)) # (\CPU|INSTR|PC|DOUT\(1))))) # (\CPU|INSTR|PC|DOUT\(5) & (!\CPU|INSTR|PC|DOUT\(6) & ((!\CPU|INSTR|PC|DOUT\(1)) # (\CPU|INSTR|PC|DOUT\(2))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000111000000111001110010000001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|PC|ALT_INV_DOUT\(2),
	datab => \CPU|INSTR|PC|ALT_INV_DOUT\(5),
	datac => \CPU|INSTR|PC|ALT_INV_DOUT\(6),
	datad => \CPU|INSTR|PC|ALT_INV_DOUT\(1),
	datae => \CPU|INSTR|PC|ALT_INV_DOUT\(4),
	dataf => \CPU|INSTR|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	combout => \ROM|memROM~139_combout\);

-- Location: LABCELL_X35_Y9_N24
\ROM|memROM~140\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~140_combout\ = ( \CPU|INSTR|PC|DOUT\(4) & ( \CPU|INSTR|PC|DOUT[7]~DUPLICATE_q\ & ( (!\CPU|INSTR|PC|DOUT\(5) & ((!\CPU|INSTR|PC|DOUT[6]~DUPLICATE_q\ $ (\CPU|INSTR|PC|DOUT\(1))) # (\CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\))) # (\CPU|INSTR|PC|DOUT\(5) 
-- & (!\CPU|INSTR|PC|DOUT[6]~DUPLICATE_q\ & ((!\CPU|INSTR|PC|DOUT\(1))))) ) ) ) # ( !\CPU|INSTR|PC|DOUT\(4) & ( \CPU|INSTR|PC|DOUT[7]~DUPLICATE_q\ & ( (!\CPU|INSTR|PC|DOUT[6]~DUPLICATE_q\ & (\CPU|INSTR|PC|DOUT\(5) & ((!\CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\) # 
-- (!\CPU|INSTR|PC|DOUT\(1))))) # (\CPU|INSTR|PC|DOUT[6]~DUPLICATE_q\ & (((\CPU|INSTR|PC|DOUT\(1) & !\CPU|INSTR|PC|DOUT\(5))))) ) ) ) # ( \CPU|INSTR|PC|DOUT\(4) & ( !\CPU|INSTR|PC|DOUT[7]~DUPLICATE_q\ & ( (!\CPU|INSTR|PC|DOUT[6]~DUPLICATE_q\ & 
-- (!\CPU|INSTR|PC|DOUT\(5) & ((!\CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\) # (!\CPU|INSTR|PC|DOUT\(1))))) ) ) ) # ( !\CPU|INSTR|PC|DOUT\(4) & ( !\CPU|INSTR|PC|DOUT[7]~DUPLICATE_q\ & ( (!\CPU|INSTR|PC|DOUT[6]~DUPLICATE_q\ & (!\CPU|INSTR|PC|DOUT[2]~DUPLICATE_q\ & 
-- !\CPU|INSTR|PC|DOUT\(1))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000101010000000000000000101101010001011011110100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	datab => \CPU|INSTR|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datac => \CPU|INSTR|PC|ALT_INV_DOUT\(1),
	datad => \CPU|INSTR|PC|ALT_INV_DOUT\(5),
	datae => \CPU|INSTR|PC|ALT_INV_DOUT\(4),
	dataf => \CPU|INSTR|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	combout => \ROM|memROM~140_combout\);

-- Location: LABCELL_X35_Y9_N0
\ROM|memROM~106\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~106_combout\ = ( !\CPU|INSTR|PC|DOUT\(0) & ( (!\CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\ & (((\ROM|memROM~140_combout\ & (!\CPU|INSTR|PC|DOUT[8]~DUPLICATE_q\))))) # (\CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\ & ((((\ROM|memROM~139_combout\) # 
-- (\CPU|INSTR|PC|DOUT[8]~DUPLICATE_q\))))) ) ) # ( \CPU|INSTR|PC|DOUT\(0) & ( (!\CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\ & (((\ROM|memROM~149_combout\ & (!\CPU|INSTR|PC|DOUT[8]~DUPLICATE_q\))))) # (\CPU|INSTR|PC|DOUT[3]~DUPLICATE_q\ & 
-- ((((\CPU|INSTR|PC|DOUT[8]~DUPLICATE_q\))) # (\ROM|memROM~150_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000101001010101000110110101010101011111010101010001101101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datab => \ROM|ALT_INV_memROM~150_combout\,
	datac => \ROM|ALT_INV_memROM~149_combout\,
	datad => \CPU|INSTR|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datae => \CPU|INSTR|PC|ALT_INV_DOUT\(0),
	dataf => \ROM|ALT_INV_memROM~139_combout\,
	datag => \ROM|ALT_INV_memROM~140_combout\,
	combout => \ROM|memROM~106_combout\);

-- Location: MLABCELL_X37_Y7_N54
\ROM|memROM~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~105_combout\ = ( \CPU|INSTR|PC|DOUT\(5) & ( (!\CPU|INSTR|PC|DOUT[1]~DUPLICATE_q\ & (!\CPU|INSTR|PC|DOUT\(6) & (\ROM|memROM~70_combout\ & !\CPU|INSTR|PC|DOUT\(2)))) ) ) # ( !\CPU|INSTR|PC|DOUT\(5) & ( (\ROM|memROM~70_combout\ & 
-- (((\CPU|INSTR|PC|DOUT\(6) & !\CPU|INSTR|PC|DOUT\(2))) # (\CPU|INSTR|PC|DOUT[1]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011100000101000001110000010100001000000000000000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datab => \CPU|INSTR|PC|ALT_INV_DOUT\(6),
	datac => \ROM|ALT_INV_memROM~70_combout\,
	datad => \CPU|INSTR|PC|ALT_INV_DOUT\(2),
	dataf => \CPU|INSTR|PC|ALT_INV_DOUT\(5),
	combout => \ROM|memROM~105_combout\);

-- Location: LABCELL_X36_Y6_N42
\ROM|memROM~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~24_combout\ = ( !\CPU|INSTR|PC|DOUT\(0) & ( ((!\CPU|INSTR|PC|DOUT\(8) & (((\ROM|memROM~106_combout\)))) # (\CPU|INSTR|PC|DOUT\(8) & ((!\ROM|memROM~106_combout\ & ((\ROM|memROM~105_combout\))) # (\ROM|memROM~106_combout\ & 
-- (\ROM|memROM~103_combout\))))) ) ) # ( \CPU|INSTR|PC|DOUT\(0) & ( ((!\CPU|INSTR|PC|DOUT\(8) & (((\ROM|memROM~106_combout\)))) # (\CPU|INSTR|PC|DOUT\(8) & ((!\ROM|memROM~106_combout\ & ((\ROM|memROM~110_combout\))) # (\ROM|memROM~106_combout\ & 
-- (\ROM|memROM~104_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111000000000000111111111111001100111111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~104_combout\,
	datab => \ROM|ALT_INV_memROM~103_combout\,
	datac => \ROM|ALT_INV_memROM~110_combout\,
	datad => \CPU|INSTR|PC|ALT_INV_DOUT\(8),
	datae => \CPU|INSTR|PC|ALT_INV_DOUT\(0),
	dataf => \ROM|ALT_INV_memROM~106_combout\,
	datag => \ROM|ALT_INV_memROM~105_combout\,
	combout => \ROM|memROM~24_combout\);

-- Location: LABCELL_X36_Y4_N9
\ENABLE_SWR~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ENABLE_SWR~1_combout\ = ( !\ROM|memROM~153_combout\ & ( !\ROM|memROM~0_combout\ & ( (!\ROM|memROM~58_combout\ & !\ROM|memROM~45_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~58_combout\,
	datad => \ROM|ALT_INV_memROM~45_combout\,
	datae => \ROM|ALT_INV_memROM~153_combout\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \ENABLE_SWR~1_combout\);

-- Location: LABCELL_X40_Y4_N6
\ENABLE_SWR~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ENABLE_SWR~2_combout\ = ( \CPU|DECODER|ENABLE_READ~0_combout\ & ( (\ROM|memROM~24_combout\ & (\ENABLE_SWR~1_combout\ & (\ROM|memROM~28_combout\ & !\ROM|memROM~38_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~24_combout\,
	datab => \ALT_INV_ENABLE_SWR~1_combout\,
	datac => \ROM|ALT_INV_memROM~28_combout\,
	datad => \ROM|ALT_INV_memROM~38_combout\,
	dataf => \CPU|DECODER|ALT_INV_ENABLE_READ~0_combout\,
	combout => \ENABLE_SWR~2_combout\);

-- Location: LABCELL_X44_Y5_N48
\RAM|ram~256feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~256feeder_combout\ = ( \CPU|REG_A|DOUT\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG_A|ALT_INV_DOUT\(1),
	combout => \RAM|ram~256feeder_combout\);

-- Location: FF_X44_Y5_N50
\RAM|ram~256\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~256feeder_combout\,
	ena => \RAM|ram~810_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~256_q\);

-- Location: FF_X44_Y4_N4
\RAM|ram~224\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(1),
	sload => VCC,
	ena => \RAM|ram~782_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~224_q\);

-- Location: FF_X39_Y4_N47
\RAM|ram~480\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(1),
	sload => VCC,
	ena => \RAM|ram~784_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~480_q\);

-- Location: FF_X39_Y4_N50
\RAM|ram~512\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(1),
	sload => VCC,
	ena => \RAM|ram~812_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~512_q\);

-- Location: LABCELL_X39_Y4_N48
\RAM|ram~582\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~582_combout\ = ( \RAM|ram~512_q\ & ( \ROM|memROM~0_combout\ & ( (\ROM|memROM~45_combout\) # (\RAM|ram~256_q\) ) ) ) # ( !\RAM|ram~512_q\ & ( \ROM|memROM~0_combout\ & ( (\RAM|ram~256_q\ & !\ROM|memROM~45_combout\) ) ) ) # ( \RAM|ram~512_q\ & ( 
-- !\ROM|memROM~0_combout\ & ( (!\ROM|memROM~45_combout\ & (\RAM|ram~224_q\)) # (\ROM|memROM~45_combout\ & ((\RAM|ram~480_q\))) ) ) ) # ( !\RAM|ram~512_q\ & ( !\ROM|memROM~0_combout\ & ( (!\ROM|memROM~45_combout\ & (\RAM|ram~224_q\)) # 
-- (\ROM|memROM~45_combout\ & ((\RAM|ram~480_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111001100000011111101010000010100000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~256_q\,
	datab => \RAM|ALT_INV_ram~224_q\,
	datac => \ROM|ALT_INV_memROM~45_combout\,
	datad => \RAM|ALT_INV_ram~480_q\,
	datae => \RAM|ALT_INV_ram~512_q\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \RAM|ram~582_combout\);

-- Location: FF_X37_Y7_N4
\RAM|ram~240\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(1),
	sload => VCC,
	ena => \RAM|ram~750_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~240_q\);

-- Location: FF_X42_Y4_N14
\RAM|ram~496\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(1),
	sload => VCC,
	ena => \RAM|ram~752_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~496_q\);

-- Location: FF_X42_Y6_N52
\RAM|ram~208\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(1),
	sload => VCC,
	ena => \RAM|ram~718_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~208_q\);

-- Location: FF_X42_Y4_N38
\RAM|ram~464\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(1),
	sload => VCC,
	ena => \RAM|ram~720_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~464_q\);

-- Location: MLABCELL_X42_Y4_N36
\RAM|ram~581\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~581_combout\ = ( \RAM|ram~464_q\ & ( \ROM|memROM~0_combout\ & ( (!\ROM|memROM~45_combout\ & (\RAM|ram~240_q\)) # (\ROM|memROM~45_combout\ & ((\RAM|ram~496_q\))) ) ) ) # ( !\RAM|ram~464_q\ & ( \ROM|memROM~0_combout\ & ( (!\ROM|memROM~45_combout\ & 
-- (\RAM|ram~240_q\)) # (\ROM|memROM~45_combout\ & ((\RAM|ram~496_q\))) ) ) ) # ( \RAM|ram~464_q\ & ( !\ROM|memROM~0_combout\ & ( (\RAM|ram~208_q\) # (\ROM|memROM~45_combout\) ) ) ) # ( !\RAM|ram~464_q\ & ( !\ROM|memROM~0_combout\ & ( 
-- (!\ROM|memROM~45_combout\ & \RAM|ram~208_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000011111111111101010011010100110101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~240_q\,
	datab => \RAM|ALT_INV_ram~496_q\,
	datac => \ROM|ALT_INV_memROM~45_combout\,
	datad => \RAM|ALT_INV_ram~208_q\,
	datae => \RAM|ALT_INV_ram~464_q\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \RAM|ram~581_combout\);

-- Location: LABCELL_X39_Y3_N54
\CPU|MUX1|saida_MUX[1]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[1]~8_combout\ = ( \ROM|memROM~76_combout\ & ( \RAM|ram~581_combout\ & ( (!\ROM|memROM~153_combout\ & (\ROM|memROM~58_combout\ & (!\RAM|ram~582_combout\ & \ROM|memROM~69_combout\))) ) ) ) # ( !\ROM|memROM~76_combout\ & ( 
-- \RAM|ram~581_combout\ & ( (!\ROM|memROM~153_combout\ & \ROM|memROM~69_combout\) ) ) ) # ( \ROM|memROM~76_combout\ & ( !\RAM|ram~581_combout\ & ( (!\ROM|memROM~153_combout\ & (\ROM|memROM~69_combout\ & ((!\ROM|memROM~58_combout\) # 
-- (!\RAM|ram~582_combout\)))) ) ) ) # ( !\ROM|memROM~76_combout\ & ( !\RAM|ram~581_combout\ & ( (!\ROM|memROM~153_combout\ & \ROM|memROM~69_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010100000000000101010100000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~153_combout\,
	datab => \ROM|ALT_INV_memROM~58_combout\,
	datac => \RAM|ALT_INV_ram~582_combout\,
	datad => \ROM|ALT_INV_memROM~69_combout\,
	datae => \ROM|ALT_INV_memROM~76_combout\,
	dataf => \RAM|ALT_INV_ram~581_combout\,
	combout => \CPU|MUX1|saida_MUX[1]~8_combout\);

-- Location: FF_X36_Y7_N10
\RAM|ram~416\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(1),
	sload => VCC,
	ena => \RAM|ram~768_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~416_q\);

-- Location: LABCELL_X44_Y5_N24
\RAM|ram~160feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~160feeder_combout\ = ( \CPU|REG_A|DOUT\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG_A|ALT_INV_DOUT\(1),
	combout => \RAM|ram~160feeder_combout\);

-- Location: FF_X44_Y5_N26
\RAM|ram~160\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~160feeder_combout\,
	ena => \RAM|ram~766_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~160_q\);

-- Location: FF_X40_Y8_N4
\RAM|ram~192\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(1),
	sload => VCC,
	ena => \RAM|ram~794_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~192_q\);

-- Location: FF_X37_Y3_N59
\RAM|ram~448\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(1),
	sload => VCC,
	ena => \RAM|ram~796_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~448_q\);

-- Location: MLABCELL_X37_Y3_N57
\RAM|ram~580\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~580_combout\ = ( \RAM|ram~448_q\ & ( \ROM|memROM~0_combout\ & ( (\RAM|ram~192_q\) # (\ROM|memROM~45_combout\) ) ) ) # ( !\RAM|ram~448_q\ & ( \ROM|memROM~0_combout\ & ( (!\ROM|memROM~45_combout\ & \RAM|ram~192_q\) ) ) ) # ( \RAM|ram~448_q\ & ( 
-- !\ROM|memROM~0_combout\ & ( (!\ROM|memROM~45_combout\ & ((\RAM|ram~160_q\))) # (\ROM|memROM~45_combout\ & (\RAM|ram~416_q\)) ) ) ) # ( !\RAM|ram~448_q\ & ( !\ROM|memROM~0_combout\ & ( (!\ROM|memROM~45_combout\ & ((\RAM|ram~160_q\))) # 
-- (\ROM|memROM~45_combout\ & (\RAM|ram~416_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101001101010011010100000000111100000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~416_q\,
	datab => \RAM|ALT_INV_ram~160_q\,
	datac => \ROM|ALT_INV_memROM~45_combout\,
	datad => \RAM|ALT_INV_ram~192_q\,
	datae => \RAM|ALT_INV_ram~448_q\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \RAM|ram~580_combout\);

-- Location: FF_X40_Y8_N10
\RAM|ram~144\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(1),
	sload => VCC,
	ena => \RAM|ram~702_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~144_q\);

-- Location: FF_X39_Y6_N40
\RAM|ram~400\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(1),
	sload => VCC,
	ena => \RAM|ram~704_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~400_q\);

-- Location: FF_X37_Y6_N22
\RAM|ram~176\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(1),
	sload => VCC,
	ena => \RAM|ram~734_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~176_q\);

-- Location: FF_X37_Y4_N56
\RAM|ram~432\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(1),
	sload => VCC,
	ena => \RAM|ram~736_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~432_q\);

-- Location: MLABCELL_X37_Y4_N54
\RAM|ram~579\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~579_combout\ = ( \RAM|ram~432_q\ & ( \ROM|memROM~0_combout\ & ( (\ROM|memROM~45_combout\) # (\RAM|ram~176_q\) ) ) ) # ( !\RAM|ram~432_q\ & ( \ROM|memROM~0_combout\ & ( (\RAM|ram~176_q\ & !\ROM|memROM~45_combout\) ) ) ) # ( \RAM|ram~432_q\ & ( 
-- !\ROM|memROM~0_combout\ & ( (!\ROM|memROM~45_combout\ & (\RAM|ram~144_q\)) # (\ROM|memROM~45_combout\ & ((\RAM|ram~400_q\))) ) ) ) # ( !\RAM|ram~432_q\ & ( !\ROM|memROM~0_combout\ & ( (!\ROM|memROM~45_combout\ & (\RAM|ram~144_q\)) # 
-- (\ROM|memROM~45_combout\ & ((\RAM|ram~400_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110011010101010011001100001111000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~144_q\,
	datab => \RAM|ALT_INV_ram~400_q\,
	datac => \RAM|ALT_INV_ram~176_q\,
	datad => \ROM|ALT_INV_memROM~45_combout\,
	datae => \RAM|ALT_INV_ram~432_q\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \RAM|ram~579_combout\);

-- Location: LABCELL_X40_Y3_N36
\CPU|MUX1|saida_MUX[1]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[1]~9_combout\ = ( \CPU|DECODER|SEL_MUX~0_combout\ & ( \ROM|memROM~58_combout\ ) ) # ( !\CPU|DECODER|SEL_MUX~0_combout\ & ( (!\ROM|memROM~76_combout\ & ((!\ROM|memROM~58_combout\ & ((\RAM|ram~579_combout\))) # (\ROM|memROM~58_combout\ & 
-- (\RAM|ram~580_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010100010000000101010001000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~76_combout\,
	datab => \RAM|ALT_INV_ram~580_combout\,
	datac => \ROM|ALT_INV_memROM~58_combout\,
	datad => \RAM|ALT_INV_ram~579_combout\,
	dataf => \CPU|DECODER|ALT_INV_SEL_MUX~0_combout\,
	combout => \CPU|MUX1|saida_MUX[1]~9_combout\);

-- Location: FF_X39_Y2_N25
\RAM|ram~48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(1),
	sload => VCC,
	ena => \RAM|ram~726_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~48_q\);

-- Location: FF_X39_Y2_N34
\RAM|ram~304\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(1),
	sload => VCC,
	ena => \RAM|ram~728_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~304_q\);

-- Location: FF_X41_Y2_N50
\RAM|ram~64\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(1),
	sload => VCC,
	ena => \RAM|ram~790_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~64_q\);

-- Location: FF_X41_Y2_N20
\RAM|ram~320\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(1),
	sload => VCC,
	ena => \RAM|ram~792_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~320_q\);

-- Location: LABCELL_X41_Y2_N18
\RAM|ram~570\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~570_combout\ = ( \RAM|ram~320_q\ & ( \ROM|memROM~58_combout\ & ( (\ROM|memROM~45_combout\) # (\RAM|ram~64_q\) ) ) ) # ( !\RAM|ram~320_q\ & ( \ROM|memROM~58_combout\ & ( (\RAM|ram~64_q\ & !\ROM|memROM~45_combout\) ) ) ) # ( \RAM|ram~320_q\ & ( 
-- !\ROM|memROM~58_combout\ & ( (!\ROM|memROM~45_combout\ & (\RAM|ram~48_q\)) # (\ROM|memROM~45_combout\ & ((\RAM|ram~304_q\))) ) ) ) # ( !\RAM|ram~320_q\ & ( !\ROM|memROM~58_combout\ & ( (!\ROM|memROM~45_combout\ & (\RAM|ram~48_q\)) # 
-- (\ROM|memROM~45_combout\ & ((\RAM|ram~304_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110011010101010011001100001111000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~48_q\,
	datab => \RAM|ALT_INV_ram~304_q\,
	datac => \RAM|ALT_INV_ram~64_q\,
	datad => \ROM|ALT_INV_memROM~45_combout\,
	datae => \RAM|ALT_INV_ram~320_q\,
	dataf => \ROM|ALT_INV_memROM~58_combout\,
	combout => \RAM|ram~570_combout\);

-- Location: LABCELL_X43_Y5_N21
\RAM|ram~96feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~96feeder_combout\ = ( \CPU|REG_A|DOUT\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG_A|ALT_INV_DOUT\(1),
	combout => \RAM|ram~96feeder_combout\);

-- Location: FF_X43_Y5_N22
\RAM|ram~96\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~96feeder_combout\,
	ena => \RAM|ram~774_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~96_q\);

-- Location: FF_X41_Y7_N26
\RAM|ram~336\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(1),
	sload => VCC,
	ena => \RAM|ram~712_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~336_q\);

-- Location: FF_X43_Y6_N25
\RAM|ram~80\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(1),
	sload => VCC,
	ena => \RAM|ram~710_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~80_q\);

-- Location: FF_X41_Y7_N56
\RAM|ram~352\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(1),
	sload => VCC,
	ena => \RAM|ram~776_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~352_q\);

-- Location: LABCELL_X41_Y7_N54
\RAM|ram~571\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~571_combout\ = ( \RAM|ram~352_q\ & ( \ROM|memROM~58_combout\ & ( (\ROM|memROM~45_combout\) # (\RAM|ram~96_q\) ) ) ) # ( !\RAM|ram~352_q\ & ( \ROM|memROM~58_combout\ & ( (\RAM|ram~96_q\ & !\ROM|memROM~45_combout\) ) ) ) # ( \RAM|ram~352_q\ & ( 
-- !\ROM|memROM~58_combout\ & ( (!\ROM|memROM~45_combout\ & ((\RAM|ram~80_q\))) # (\ROM|memROM~45_combout\ & (\RAM|ram~336_q\)) ) ) ) # ( !\RAM|ram~352_q\ & ( !\ROM|memROM~58_combout\ & ( (!\ROM|memROM~45_combout\ & ((\RAM|ram~80_q\))) # 
-- (\ROM|memROM~45_combout\ & (\RAM|ram~336_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100110011000011110011001101010101000000000101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~96_q\,
	datab => \RAM|ALT_INV_ram~336_q\,
	datac => \RAM|ALT_INV_ram~80_q\,
	datad => \ROM|ALT_INV_memROM~45_combout\,
	datae => \RAM|ALT_INV_ram~352_q\,
	dataf => \ROM|ALT_INV_memROM~58_combout\,
	combout => \RAM|ram~571_combout\);

-- Location: FF_X41_Y4_N7
\RAM|ram~272\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(1),
	sload => VCC,
	ena => \RAM|ram~696_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~272_q\);

-- Location: FF_X41_Y4_N1
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
	ena => \RAM|ram~694_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~16_q\);

-- Location: FF_X39_Y3_N25
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
	ena => \RAM|ram~758_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~32_q\);

-- Location: FF_X41_Y2_N44
\RAM|ram~288\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(1),
	sload => VCC,
	ena => \RAM|ram~760_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~288_q\);

-- Location: LABCELL_X41_Y2_N42
\RAM|ram~569\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~569_combout\ = ( \RAM|ram~288_q\ & ( \ROM|memROM~58_combout\ & ( (\ROM|memROM~45_combout\) # (\RAM|ram~32_q\) ) ) ) # ( !\RAM|ram~288_q\ & ( \ROM|memROM~58_combout\ & ( (\RAM|ram~32_q\ & !\ROM|memROM~45_combout\) ) ) ) # ( \RAM|ram~288_q\ & ( 
-- !\ROM|memROM~58_combout\ & ( (!\ROM|memROM~45_combout\ & ((\RAM|ram~16_q\))) # (\ROM|memROM~45_combout\ & (\RAM|ram~272_q\)) ) ) ) # ( !\RAM|ram~288_q\ & ( !\ROM|memROM~58_combout\ & ( (!\ROM|memROM~45_combout\ & ((\RAM|ram~16_q\))) # 
-- (\ROM|memROM~45_combout\ & (\RAM|ram~272_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101010101001100110101010100001111000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~272_q\,
	datab => \RAM|ALT_INV_ram~16_q\,
	datac => \RAM|ALT_INV_ram~32_q\,
	datad => \ROM|ALT_INV_memROM~45_combout\,
	datae => \RAM|ALT_INV_ram~288_q\,
	dataf => \ROM|ALT_INV_memROM~58_combout\,
	combout => \RAM|ram~569_combout\);

-- Location: FF_X42_Y2_N50
\RAM|ram~112\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(1),
	sload => VCC,
	ena => \RAM|ram~742_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~112_q\);

-- Location: FF_X42_Y2_N40
\RAM|ram~128\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(1),
	sload => VCC,
	ena => \RAM|ram~806_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~128_q\);

-- Location: FF_X42_Y4_N34
\RAM|ram~368\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(1),
	sload => VCC,
	ena => \RAM|ram~744_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~368_q\);

-- Location: FF_X42_Y2_N20
\RAM|ram~384\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(1),
	sload => VCC,
	ena => \RAM|ram~808_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~384_q\);

-- Location: MLABCELL_X42_Y2_N18
\RAM|ram~572\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~572_combout\ = ( \RAM|ram~384_q\ & ( \ROM|memROM~45_combout\ & ( (\ROM|memROM~58_combout\) # (\RAM|ram~368_q\) ) ) ) # ( !\RAM|ram~384_q\ & ( \ROM|memROM~45_combout\ & ( (\RAM|ram~368_q\ & !\ROM|memROM~58_combout\) ) ) ) # ( \RAM|ram~384_q\ & ( 
-- !\ROM|memROM~45_combout\ & ( (!\ROM|memROM~58_combout\ & (\RAM|ram~112_q\)) # (\ROM|memROM~58_combout\ & ((\RAM|ram~128_q\))) ) ) ) # ( !\RAM|ram~384_q\ & ( !\ROM|memROM~45_combout\ & ( (!\ROM|memROM~58_combout\ & (\RAM|ram~112_q\)) # 
-- (\ROM|memROM~58_combout\ & ((\RAM|ram~128_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110011010101010011001100001111000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~112_q\,
	datab => \RAM|ALT_INV_ram~128_q\,
	datac => \RAM|ALT_INV_ram~368_q\,
	datad => \ROM|ALT_INV_memROM~58_combout\,
	datae => \RAM|ALT_INV_ram~384_q\,
	dataf => \ROM|ALT_INV_memROM~45_combout\,
	combout => \RAM|ram~572_combout\);

-- Location: LABCELL_X40_Y3_N30
\RAM|ram~573\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~573_combout\ = ( \RAM|ram~569_combout\ & ( \RAM|ram~572_combout\ & ( (!\ROM|memROM~76_combout\ & ((!\ROM|memROM~0_combout\) # ((\RAM|ram~570_combout\)))) # (\ROM|memROM~76_combout\ & (((\RAM|ram~571_combout\)) # (\ROM|memROM~0_combout\))) ) ) ) # 
-- ( !\RAM|ram~569_combout\ & ( \RAM|ram~572_combout\ & ( (!\ROM|memROM~76_combout\ & (\ROM|memROM~0_combout\ & (\RAM|ram~570_combout\))) # (\ROM|memROM~76_combout\ & (((\RAM|ram~571_combout\)) # (\ROM|memROM~0_combout\))) ) ) ) # ( \RAM|ram~569_combout\ & ( 
-- !\RAM|ram~572_combout\ & ( (!\ROM|memROM~76_combout\ & ((!\ROM|memROM~0_combout\) # ((\RAM|ram~570_combout\)))) # (\ROM|memROM~76_combout\ & (!\ROM|memROM~0_combout\ & ((\RAM|ram~571_combout\)))) ) ) ) # ( !\RAM|ram~569_combout\ & ( !\RAM|ram~572_combout\ 
-- & ( (!\ROM|memROM~76_combout\ & (\ROM|memROM~0_combout\ & (\RAM|ram~570_combout\))) # (\ROM|memROM~76_combout\ & (!\ROM|memROM~0_combout\ & ((\RAM|ram~571_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001000110100010101100111000010011010101111001101111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~76_combout\,
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \RAM|ALT_INV_ram~570_combout\,
	datad => \RAM|ALT_INV_ram~571_combout\,
	datae => \RAM|ALT_INV_ram~569_combout\,
	dataf => \RAM|ALT_INV_ram~572_combout\,
	combout => \RAM|ram~573_combout\);

-- Location: FF_X36_Y2_N40
\RAM|ram~248\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(1),
	sload => VCC,
	ena => \RAM|ram~754_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~248_q\);

-- Location: FF_X36_Y2_N22
\RAM|ram~504\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(1),
	sload => VCC,
	ena => \RAM|ram~756_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~504_q\);

-- Location: FF_X40_Y5_N40
\RAM|ram~264\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(1),
	sload => VCC,
	ena => \RAM|ram~818_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~264_q\);

-- Location: FF_X36_Y3_N38
\RAM|ram~520\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(1),
	sload => VCC,
	ena => \RAM|ram~820_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~520_q\);

-- Location: LABCELL_X36_Y3_N36
\RAM|ram~586\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~586_combout\ = ( \RAM|ram~520_q\ & ( \ROM|memROM~45_combout\ & ( (\ROM|memROM~58_combout\) # (\RAM|ram~504_q\) ) ) ) # ( !\RAM|ram~520_q\ & ( \ROM|memROM~45_combout\ & ( (\RAM|ram~504_q\ & !\ROM|memROM~58_combout\) ) ) ) # ( \RAM|ram~520_q\ & ( 
-- !\ROM|memROM~45_combout\ & ( (!\ROM|memROM~58_combout\ & (\RAM|ram~248_q\)) # (\ROM|memROM~58_combout\ & ((\RAM|ram~264_q\))) ) ) ) # ( !\RAM|ram~520_q\ & ( !\ROM|memROM~45_combout\ & ( (!\ROM|memROM~58_combout\ & (\RAM|ram~248_q\)) # 
-- (\ROM|memROM~58_combout\ & ((\RAM|ram~264_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111010101010000111100110011000000000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~248_q\,
	datab => \RAM|ALT_INV_ram~504_q\,
	datac => \RAM|ALT_INV_ram~264_q\,
	datad => \ROM|ALT_INV_memROM~58_combout\,
	datae => \RAM|ALT_INV_ram~520_q\,
	dataf => \ROM|ALT_INV_memROM~45_combout\,
	combout => \RAM|ram~586_combout\);

-- Location: FF_X39_Y6_N59
\RAM|ram~472\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(1),
	sload => VCC,
	ena => \RAM|ram~724_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~472_q\);

-- Location: LABCELL_X44_Y4_N45
\RAM|ram~232feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~232feeder_combout\ = ( \CPU|REG_A|DOUT\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG_A|ALT_INV_DOUT\(1),
	combout => \RAM|ram~232feeder_combout\);

-- Location: FF_X44_Y4_N46
\RAM|ram~232\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~232feeder_combout\,
	ena => \RAM|ram~786_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~232_q\);

-- Location: FF_X43_Y4_N5
\RAM|ram~216\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(1),
	sload => VCC,
	ena => \RAM|ram~722_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~216_q\);

-- Location: FF_X36_Y3_N44
\RAM|ram~488\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(1),
	sload => VCC,
	ena => \RAM|ram~788_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~488_q\);

-- Location: LABCELL_X36_Y3_N42
\RAM|ram~585\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~585_combout\ = ( \RAM|ram~488_q\ & ( \ROM|memROM~45_combout\ & ( (\ROM|memROM~58_combout\) # (\RAM|ram~472_q\) ) ) ) # ( !\RAM|ram~488_q\ & ( \ROM|memROM~45_combout\ & ( (\RAM|ram~472_q\ & !\ROM|memROM~58_combout\) ) ) ) # ( \RAM|ram~488_q\ & ( 
-- !\ROM|memROM~45_combout\ & ( (!\ROM|memROM~58_combout\ & ((\RAM|ram~216_q\))) # (\ROM|memROM~58_combout\ & (\RAM|ram~232_q\)) ) ) ) # ( !\RAM|ram~488_q\ & ( !\ROM|memROM~45_combout\ & ( (!\ROM|memROM~58_combout\ & ((\RAM|ram~216_q\))) # 
-- (\ROM|memROM~58_combout\ & (\RAM|ram~232_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100110011000011110011001101010101000000000101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~472_q\,
	datab => \RAM|ALT_INV_ram~232_q\,
	datac => \RAM|ALT_INV_ram~216_q\,
	datad => \ROM|ALT_INV_memROM~58_combout\,
	datae => \RAM|ALT_INV_ram~488_q\,
	dataf => \ROM|ALT_INV_memROM~45_combout\,
	combout => \RAM|ram~585_combout\);

-- Location: FF_X37_Y6_N5
\RAM|ram~184\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(1),
	sload => VCC,
	ena => \RAM|ram~738_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~184_q\);

-- Location: FF_X40_Y6_N46
\RAM|ram~440\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(1),
	sload => VCC,
	ena => \RAM|ram~740_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~440_q\);

-- Location: FF_X40_Y5_N5
\RAM|ram~200\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(1),
	sload => VCC,
	ena => \RAM|ram~802_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~200_q\);

-- Location: FF_X36_Y3_N2
\RAM|ram~456\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(1),
	sload => VCC,
	ena => \RAM|ram~804_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~456_q\);

-- Location: LABCELL_X36_Y3_N0
\RAM|ram~584\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~584_combout\ = ( \RAM|ram~456_q\ & ( \ROM|memROM~45_combout\ & ( (\ROM|memROM~58_combout\) # (\RAM|ram~440_q\) ) ) ) # ( !\RAM|ram~456_q\ & ( \ROM|memROM~45_combout\ & ( (\RAM|ram~440_q\ & !\ROM|memROM~58_combout\) ) ) ) # ( \RAM|ram~456_q\ & ( 
-- !\ROM|memROM~45_combout\ & ( (!\ROM|memROM~58_combout\ & (\RAM|ram~184_q\)) # (\ROM|memROM~58_combout\ & ((\RAM|ram~200_q\))) ) ) ) # ( !\RAM|ram~456_q\ & ( !\ROM|memROM~45_combout\ & ( (!\ROM|memROM~58_combout\ & (\RAM|ram~184_q\)) # 
-- (\ROM|memROM~58_combout\ & ((\RAM|ram~200_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111010101010000111100110011000000000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~184_q\,
	datab => \RAM|ALT_INV_ram~440_q\,
	datac => \RAM|ALT_INV_ram~200_q\,
	datad => \ROM|ALT_INV_memROM~58_combout\,
	datae => \RAM|ALT_INV_ram~456_q\,
	dataf => \ROM|ALT_INV_memROM~45_combout\,
	combout => \RAM|ram~584_combout\);

-- Location: FF_X44_Y6_N22
\RAM|ram~168\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(1),
	sload => VCC,
	ena => \RAM|ram~770_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~168_q\);

-- Location: FF_X44_Y6_N41
\RAM|ram~152\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(1),
	sload => VCC,
	ena => \RAM|ram~706_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~152_q\);

-- Location: FF_X35_Y3_N52
\RAM|ram~408\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(1),
	sload => VCC,
	ena => \RAM|ram~708_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~408_q\);

-- Location: FF_X35_Y3_N20
\RAM|ram~424\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(1),
	sload => VCC,
	ena => \RAM|ram~772_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~424_q\);

-- Location: LABCELL_X35_Y3_N18
\RAM|ram~583\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~583_combout\ = ( \RAM|ram~424_q\ & ( \ROM|memROM~58_combout\ & ( (\ROM|memROM~45_combout\) # (\RAM|ram~168_q\) ) ) ) # ( !\RAM|ram~424_q\ & ( \ROM|memROM~58_combout\ & ( (\RAM|ram~168_q\ & !\ROM|memROM~45_combout\) ) ) ) # ( \RAM|ram~424_q\ & ( 
-- !\ROM|memROM~58_combout\ & ( (!\ROM|memROM~45_combout\ & (\RAM|ram~152_q\)) # (\ROM|memROM~45_combout\ & ((\RAM|ram~408_q\))) ) ) ) # ( !\RAM|ram~424_q\ & ( !\ROM|memROM~58_combout\ & ( (!\ROM|memROM~45_combout\ & (\RAM|ram~152_q\)) # 
-- (\ROM|memROM~45_combout\ & ((\RAM|ram~408_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111001100000011111101010000010100000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~168_q\,
	datab => \RAM|ALT_INV_ram~152_q\,
	datac => \ROM|ALT_INV_memROM~45_combout\,
	datad => \RAM|ALT_INV_ram~408_q\,
	datae => \RAM|ALT_INV_ram~424_q\,
	dataf => \ROM|ALT_INV_memROM~58_combout\,
	combout => \RAM|ram~583_combout\);

-- Location: LABCELL_X36_Y3_N30
\RAM|ram~587\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~587_combout\ = ( \RAM|ram~584_combout\ & ( \RAM|ram~583_combout\ & ( (!\ROM|memROM~76_combout\) # ((!\ROM|memROM~0_combout\ & ((\RAM|ram~585_combout\))) # (\ROM|memROM~0_combout\ & (\RAM|ram~586_combout\))) ) ) ) # ( !\RAM|ram~584_combout\ & ( 
-- \RAM|ram~583_combout\ & ( (!\ROM|memROM~0_combout\ & ((!\ROM|memROM~76_combout\) # ((\RAM|ram~585_combout\)))) # (\ROM|memROM~0_combout\ & (\ROM|memROM~76_combout\ & (\RAM|ram~586_combout\))) ) ) ) # ( \RAM|ram~584_combout\ & ( !\RAM|ram~583_combout\ & ( 
-- (!\ROM|memROM~0_combout\ & (\ROM|memROM~76_combout\ & ((\RAM|ram~585_combout\)))) # (\ROM|memROM~0_combout\ & ((!\ROM|memROM~76_combout\) # ((\RAM|ram~586_combout\)))) ) ) ) # ( !\RAM|ram~584_combout\ & ( !\RAM|ram~583_combout\ & ( 
-- (\ROM|memROM~76_combout\ & ((!\ROM|memROM~0_combout\ & ((\RAM|ram~585_combout\))) # (\ROM|memROM~0_combout\ & (\RAM|ram~586_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011010001010110011110001001101010111100110111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \ROM|ALT_INV_memROM~76_combout\,
	datac => \RAM|ALT_INV_ram~586_combout\,
	datad => \RAM|ALT_INV_ram~585_combout\,
	datae => \RAM|ALT_INV_ram~584_combout\,
	dataf => \RAM|ALT_INV_ram~583_combout\,
	combout => \RAM|ram~587_combout\);

-- Location: FF_X41_Y5_N1
\RAM|ram~392\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(1),
	sload => VCC,
	ena => \RAM|ram~816_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~392_q\);

-- Location: FF_X41_Y5_N46
\RAM|ram~72\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(1),
	sload => VCC,
	ena => \RAM|ram~798_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~72_q\);

-- Location: FF_X40_Y5_N10
\RAM|ram~136\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(1),
	sload => VCC,
	ena => \RAM|ram~814_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~136_q\);

-- Location: FF_X37_Y3_N22
\RAM|ram~328\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(1),
	sload => VCC,
	ena => \RAM|ram~800_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~328_q\);

-- Location: LABCELL_X39_Y3_N45
\RAM|ram~577\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~577_combout\ = ( \ROM|memROM~76_combout\ & ( \ROM|memROM~45_combout\ & ( \RAM|ram~392_q\ ) ) ) # ( !\ROM|memROM~76_combout\ & ( \ROM|memROM~45_combout\ & ( \RAM|ram~328_q\ ) ) ) # ( \ROM|memROM~76_combout\ & ( !\ROM|memROM~45_combout\ & ( 
-- \RAM|ram~136_q\ ) ) ) # ( !\ROM|memROM~76_combout\ & ( !\ROM|memROM~45_combout\ & ( \RAM|ram~72_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000011110000111100000000111111110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~392_q\,
	datab => \RAM|ALT_INV_ram~72_q\,
	datac => \RAM|ALT_INV_ram~136_q\,
	datad => \RAM|ALT_INV_ram~328_q\,
	datae => \ROM|ALT_INV_memROM~76_combout\,
	dataf => \ROM|ALT_INV_memROM~45_combout\,
	combout => \RAM|ram~577_combout\);

-- Location: FF_X39_Y7_N50
\RAM|ram~104\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(1),
	sload => VCC,
	ena => \RAM|ram~778_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~104_q\);

-- Location: FF_X39_Y3_N20
\RAM|ram~296\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(1),
	sload => VCC,
	ena => \RAM|ram~764_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~296_q\);

-- Location: FF_X42_Y7_N4
\RAM|ram~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(1),
	sload => VCC,
	ena => \RAM|ram~762_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~40_q\);

-- Location: FF_X39_Y7_N26
\RAM|ram~360\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(1),
	sload => VCC,
	ena => \RAM|ram~780_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~360_q\);

-- Location: LABCELL_X39_Y7_N24
\RAM|ram~576\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~576_combout\ = ( \RAM|ram~360_q\ & ( \ROM|memROM~76_combout\ & ( (\ROM|memROM~45_combout\) # (\RAM|ram~104_q\) ) ) ) # ( !\RAM|ram~360_q\ & ( \ROM|memROM~76_combout\ & ( (\RAM|ram~104_q\ & !\ROM|memROM~45_combout\) ) ) ) # ( \RAM|ram~360_q\ & ( 
-- !\ROM|memROM~76_combout\ & ( (!\ROM|memROM~45_combout\ & ((\RAM|ram~40_q\))) # (\ROM|memROM~45_combout\ & (\RAM|ram~296_q\)) ) ) ) # ( !\RAM|ram~360_q\ & ( !\ROM|memROM~76_combout\ & ( (!\ROM|memROM~45_combout\ & ((\RAM|ram~40_q\))) # 
-- (\ROM|memROM~45_combout\ & (\RAM|ram~296_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100110011000011110011001101010101000000000101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~104_q\,
	datab => \RAM|ALT_INV_ram~296_q\,
	datac => \RAM|ALT_INV_ram~40_q\,
	datad => \ROM|ALT_INV_memROM~45_combout\,
	datae => \RAM|ALT_INV_ram~360_q\,
	dataf => \ROM|ALT_INV_memROM~76_combout\,
	combout => \RAM|ram~576_combout\);

-- Location: FF_X39_Y5_N26
\RAM|ram~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(1),
	sload => VCC,
	ena => \RAM|ram~698_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~24_q\);

-- Location: FF_X35_Y3_N59
\RAM|ram~280\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(1),
	sload => VCC,
	ena => \RAM|ram~700_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~280_q\);

-- Location: FF_X45_Y5_N32
\RAM|ram~88\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(1),
	sload => VCC,
	ena => \RAM|ram~714_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~88_q\);

-- Location: FF_X39_Y5_N44
\RAM|ram~344\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(1),
	sload => VCC,
	ena => \RAM|ram~716_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~344_q\);

-- Location: LABCELL_X39_Y5_N42
\RAM|ram~574\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~574_combout\ = ( \RAM|ram~344_q\ & ( \ROM|memROM~45_combout\ & ( (\ROM|memROM~76_combout\) # (\RAM|ram~280_q\) ) ) ) # ( !\RAM|ram~344_q\ & ( \ROM|memROM~45_combout\ & ( (\RAM|ram~280_q\ & !\ROM|memROM~76_combout\) ) ) ) # ( \RAM|ram~344_q\ & ( 
-- !\ROM|memROM~45_combout\ & ( (!\ROM|memROM~76_combout\ & (\RAM|ram~24_q\)) # (\ROM|memROM~76_combout\ & ((\RAM|ram~88_q\))) ) ) ) # ( !\RAM|ram~344_q\ & ( !\ROM|memROM~45_combout\ & ( (!\ROM|memROM~76_combout\ & (\RAM|ram~24_q\)) # 
-- (\ROM|memROM~76_combout\ & ((\RAM|ram~88_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111010101010000111100110011000000000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~24_q\,
	datab => \RAM|ALT_INV_ram~280_q\,
	datac => \RAM|ALT_INV_ram~88_q\,
	datad => \ROM|ALT_INV_memROM~76_combout\,
	datae => \RAM|ALT_INV_ram~344_q\,
	dataf => \ROM|ALT_INV_memROM~45_combout\,
	combout => \RAM|ram~574_combout\);

-- Location: FF_X41_Y5_N31
\RAM|ram~56\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(1),
	sload => VCC,
	ena => \RAM|ram~730_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~56_q\);

-- Location: FF_X41_Y6_N14
\RAM|ram~312\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(1),
	sload => VCC,
	ena => \RAM|ram~732_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~312_q\);

-- Location: FF_X41_Y6_N38
\RAM|ram~120\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(1),
	sload => VCC,
	ena => \RAM|ram~746_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~120_q\);

-- Location: FF_X41_Y6_N56
\RAM|ram~376\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(1),
	sload => VCC,
	ena => \RAM|ram~748_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~376_q\);

-- Location: LABCELL_X41_Y6_N54
\RAM|ram~575\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~575_combout\ = ( \RAM|ram~376_q\ & ( \ROM|memROM~76_combout\ & ( (\ROM|memROM~45_combout\) # (\RAM|ram~120_q\) ) ) ) # ( !\RAM|ram~376_q\ & ( \ROM|memROM~76_combout\ & ( (\RAM|ram~120_q\ & !\ROM|memROM~45_combout\) ) ) ) # ( \RAM|ram~376_q\ & ( 
-- !\ROM|memROM~76_combout\ & ( (!\ROM|memROM~45_combout\ & (\RAM|ram~56_q\)) # (\ROM|memROM~45_combout\ & ((\RAM|ram~312_q\))) ) ) ) # ( !\RAM|ram~376_q\ & ( !\ROM|memROM~76_combout\ & ( (!\ROM|memROM~45_combout\ & (\RAM|ram~56_q\)) # 
-- (\ROM|memROM~45_combout\ & ((\RAM|ram~312_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110011010101010011001100001111000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~56_q\,
	datab => \RAM|ALT_INV_ram~312_q\,
	datac => \RAM|ALT_INV_ram~120_q\,
	datad => \ROM|ALT_INV_memROM~45_combout\,
	datae => \RAM|ALT_INV_ram~376_q\,
	dataf => \ROM|ALT_INV_memROM~76_combout\,
	combout => \RAM|ram~575_combout\);

-- Location: LABCELL_X40_Y3_N18
\RAM|ram~578\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~578_combout\ = ( \RAM|ram~574_combout\ & ( \RAM|ram~575_combout\ & ( (!\ROM|memROM~58_combout\) # ((!\ROM|memROM~0_combout\ & ((\RAM|ram~576_combout\))) # (\ROM|memROM~0_combout\ & (\RAM|ram~577_combout\))) ) ) ) # ( !\RAM|ram~574_combout\ & ( 
-- \RAM|ram~575_combout\ & ( (!\ROM|memROM~58_combout\ & (\ROM|memROM~0_combout\)) # (\ROM|memROM~58_combout\ & ((!\ROM|memROM~0_combout\ & ((\RAM|ram~576_combout\))) # (\ROM|memROM~0_combout\ & (\RAM|ram~577_combout\)))) ) ) ) # ( \RAM|ram~574_combout\ & ( 
-- !\RAM|ram~575_combout\ & ( (!\ROM|memROM~58_combout\ & (!\ROM|memROM~0_combout\)) # (\ROM|memROM~58_combout\ & ((!\ROM|memROM~0_combout\ & ((\RAM|ram~576_combout\))) # (\ROM|memROM~0_combout\ & (\RAM|ram~577_combout\)))) ) ) ) # ( !\RAM|ram~574_combout\ & 
-- ( !\RAM|ram~575_combout\ & ( (\ROM|memROM~58_combout\ & ((!\ROM|memROM~0_combout\ & ((\RAM|ram~576_combout\))) # (\ROM|memROM~0_combout\ & (\RAM|ram~577_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101100010011100110100100011011001111010101111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~58_combout\,
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \RAM|ALT_INV_ram~577_combout\,
	datad => \RAM|ALT_INV_ram~576_combout\,
	datae => \RAM|ALT_INV_ram~574_combout\,
	dataf => \RAM|ALT_INV_ram~575_combout\,
	combout => \RAM|ram~578_combout\);

-- Location: LABCELL_X40_Y3_N24
\CPU|MUX1|saida_MUX[1]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[1]~7_combout\ = ( \RAM|ram~578_combout\ & ( (!\ROM|memROM~153_combout\ & (!\RAM|ram~573_combout\ & ((!\ROM|memROM~69_combout\)))) # (\ROM|memROM~153_combout\ & (((!\RAM|ram~587_combout\ & \ROM|memROM~69_combout\)))) ) ) # ( 
-- !\RAM|ram~578_combout\ & ( (!\ROM|memROM~153_combout\ & (!\RAM|ram~573_combout\ & ((!\ROM|memROM~69_combout\)))) # (\ROM|memROM~153_combout\ & (((!\RAM|ram~587_combout\) # (!\ROM|memROM~69_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110101010000110111010101000010001000010100001000100001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~153_combout\,
	datab => \RAM|ALT_INV_ram~573_combout\,
	datac => \RAM|ALT_INV_ram~587_combout\,
	datad => \ROM|ALT_INV_memROM~69_combout\,
	dataf => \RAM|ALT_INV_ram~578_combout\,
	combout => \CPU|MUX1|saida_MUX[1]~7_combout\);

-- Location: LABCELL_X40_Y3_N48
\CPU|MUX1|saida_MUX[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[1]~1_combout\ = ( \CPU|MUX1|saida_MUX[1]~9_combout\ & ( \CPU|MUX1|saida_MUX[1]~7_combout\ & ( ((\SW[1]~input_o\ & \ENABLE_SWR~2_combout\)) # (\CPU|DECODER|SEL_MUX~0_combout\) ) ) ) # ( !\CPU|MUX1|saida_MUX[1]~9_combout\ & ( 
-- \CPU|MUX1|saida_MUX[1]~7_combout\ & ( (\SW[1]~input_o\ & (\ENABLE_SWR~2_combout\ & !\CPU|DECODER|SEL_MUX~0_combout\)) ) ) ) # ( \CPU|MUX1|saida_MUX[1]~9_combout\ & ( !\CPU|MUX1|saida_MUX[1]~7_combout\ & ( ((!\ENABLE_SWR~2_combout\) # 
-- (\CPU|DECODER|SEL_MUX~0_combout\)) # (\SW[1]~input_o\) ) ) ) # ( !\CPU|MUX1|saida_MUX[1]~9_combout\ & ( !\CPU|MUX1|saida_MUX[1]~7_combout\ & ( (!\CPU|DECODER|SEL_MUX~0_combout\ & ((!\ENABLE_SWR~2_combout\ & ((!\CPU|MUX1|saida_MUX[1]~8_combout\))) # 
-- (\ENABLE_SWR~2_combout\ & (\SW[1]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101000100000000110111011111111100010001000000000001000111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[1]~input_o\,
	datab => \ALT_INV_ENABLE_SWR~2_combout\,
	datac => \CPU|MUX1|ALT_INV_saida_MUX[1]~8_combout\,
	datad => \CPU|DECODER|ALT_INV_SEL_MUX~0_combout\,
	datae => \CPU|MUX1|ALT_INV_saida_MUX[1]~9_combout\,
	dataf => \CPU|MUX1|ALT_INV_saida_MUX[1]~7_combout\,
	combout => \CPU|MUX1|saida_MUX[1]~1_combout\);

-- Location: LABCELL_X40_Y3_N45
\CPU|ULA1|saida[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[1]~2_combout\ = ( \CPU|ULA1|Add1~9_sumout\ & ( (!\CPU|DECODER|OP_ULA[1]~0_combout\) # (\CPU|MUX1|saida_MUX[1]~1_combout\) ) ) # ( !\CPU|ULA1|Add1~9_sumout\ & ( (\CPU|DECODER|OP_ULA[1]~0_combout\ & \CPU|MUX1|saida_MUX[1]~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|DECODER|ALT_INV_OP_ULA[1]~0_combout\,
	datad => \CPU|MUX1|ALT_INV_saida_MUX[1]~1_combout\,
	dataf => \CPU|ULA1|ALT_INV_Add1~9_sumout\,
	combout => \CPU|ULA1|saida[1]~2_combout\);

-- Location: FF_X41_Y3_N35
\CPU|REG_A|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|ULA1|Add0~9_sumout\,
	asdata => \CPU|ULA1|saida[1]~2_combout\,
	sload => \CPU|DECODER|OP_ULA[0]~1_combout\,
	ena => \CPU|DECODER|HAB_A~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_A|DOUT\(1));

-- Location: LABCELL_X35_Y3_N30
\ENABLE_LEDR~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ENABLE_LEDR~0_combout\ = ( \CPU|LOG_DESVIO|DESV_JUMP~0_combout\ & ( \ROM|memROM~4_combout\ & ( (!\ROM|memROM~28_combout\ & (!\ROM|memROM~38_combout\ & (!\ROM|memROM~8_combout\ & \ROM|memROM~24_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~28_combout\,
	datab => \ROM|ALT_INV_memROM~38_combout\,
	datac => \ROM|ALT_INV_memROM~8_combout\,
	datad => \ROM|ALT_INV_memROM~24_combout\,
	datae => \CPU|LOG_DESVIO|ALT_INV_DESV_JUMP~0_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	combout => \ENABLE_LEDR~0_combout\);

-- Location: LABCELL_X35_Y3_N15
\ENABLE_HEX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ENABLE_HEX[0]~0_combout\ = ( !\ROM|memROM~0_combout\ & ( \ENABLE_LEDR~0_combout\ & ( (!\ROM|memROM~153_combout\ & (!\ROM|memROM~58_combout\ & \ROM|memROM~45_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000100010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~153_combout\,
	datab => \ROM|ALT_INV_memROM~58_combout\,
	datad => \ROM|ALT_INV_memROM~45_combout\,
	datae => \ROM|ALT_INV_memROM~0_combout\,
	dataf => \ALT_INV_ENABLE_LEDR~0_combout\,
	combout => \ENABLE_HEX[0]~0_combout\);

-- Location: FF_X44_Y1_N53
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
	ena => \ENABLE_HEX[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX0_DECODER|REG_4bits|DOUT\(1));

-- Location: FF_X44_Y1_N23
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
	ena => \ENABLE_HEX[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX0_DECODER|REG_4bits|DOUT\(2));

-- Location: FF_X44_Y1_N20
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
	ena => \ENABLE_HEX[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX0_DECODER|REG_4bits|DOUT\(3));

-- Location: FF_X44_Y1_N50
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
	ena => \ENABLE_HEX[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX0_DECODER|REG_4bits|DOUT\(0));

-- Location: LABCELL_X44_Y1_N27
\HEX0_DECODER|DECODER_7seg|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX0_DECODER|DECODER_7seg|rascSaida7seg[0]~0_combout\ = ( \HEX0_DECODER|REG_4bits|DOUT\(0) & ( (!\HEX0_DECODER|REG_4bits|DOUT\(1) & (!\HEX0_DECODER|REG_4bits|DOUT\(2) $ (\HEX0_DECODER|REG_4bits|DOUT\(3)))) # (\HEX0_DECODER|REG_4bits|DOUT\(1) & 
-- (!\HEX0_DECODER|REG_4bits|DOUT\(2) & \HEX0_DECODER|REG_4bits|DOUT\(3))) ) ) # ( !\HEX0_DECODER|REG_4bits|DOUT\(0) & ( (!\HEX0_DECODER|REG_4bits|DOUT\(1) & (\HEX0_DECODER|REG_4bits|DOUT\(2) & !\HEX0_DECODER|REG_4bits|DOUT\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000010100000000010100000010110101010000001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX0_DECODER|REG_4bits|ALT_INV_DOUT\(1),
	datac => \HEX0_DECODER|REG_4bits|ALT_INV_DOUT\(2),
	datad => \HEX0_DECODER|REG_4bits|ALT_INV_DOUT\(3),
	dataf => \HEX0_DECODER|REG_4bits|ALT_INV_DOUT\(0),
	combout => \HEX0_DECODER|DECODER_7seg|rascSaida7seg[0]~0_combout\);

-- Location: LABCELL_X44_Y1_N42
\HEX0_DECODER|DECODER_7seg|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX0_DECODER|DECODER_7seg|rascSaida7seg[1]~1_combout\ = ( \HEX0_DECODER|REG_4bits|DOUT\(0) & ( (!\HEX0_DECODER|REG_4bits|DOUT\(1) & (\HEX0_DECODER|REG_4bits|DOUT\(2) & !\HEX0_DECODER|REG_4bits|DOUT\(3))) # (\HEX0_DECODER|REG_4bits|DOUT\(1) & 
-- ((\HEX0_DECODER|REG_4bits|DOUT\(3)))) ) ) # ( !\HEX0_DECODER|REG_4bits|DOUT\(0) & ( (\HEX0_DECODER|REG_4bits|DOUT\(2) & ((\HEX0_DECODER|REG_4bits|DOUT\(3)) # (\HEX0_DECODER|REG_4bits|DOUT\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100110011000000110011001100110000000011110011000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \HEX0_DECODER|REG_4bits|ALT_INV_DOUT\(2),
	datac => \HEX0_DECODER|REG_4bits|ALT_INV_DOUT\(1),
	datad => \HEX0_DECODER|REG_4bits|ALT_INV_DOUT\(3),
	dataf => \HEX0_DECODER|REG_4bits|ALT_INV_DOUT\(0),
	combout => \HEX0_DECODER|DECODER_7seg|rascSaida7seg[1]~1_combout\);

-- Location: MLABCELL_X45_Y5_N24
\HEX0_DECODER|DECODER_7seg|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX0_DECODER|DECODER_7seg|rascSaida7seg[2]~2_combout\ = ( \HEX0_DECODER|REG_4bits|DOUT\(1) & ( \HEX0_DECODER|REG_4bits|DOUT\(0) & ( (\HEX0_DECODER|REG_4bits|DOUT\(2) & \HEX0_DECODER|REG_4bits|DOUT\(3)) ) ) ) # ( \HEX0_DECODER|REG_4bits|DOUT\(1) & ( 
-- !\HEX0_DECODER|REG_4bits|DOUT\(0) & ( !\HEX0_DECODER|REG_4bits|DOUT\(2) $ (\HEX0_DECODER|REG_4bits|DOUT\(3)) ) ) ) # ( !\HEX0_DECODER|REG_4bits|DOUT\(1) & ( !\HEX0_DECODER|REG_4bits|DOUT\(0) & ( (\HEX0_DECODER|REG_4bits|DOUT\(2) & 
-- \HEX0_DECODER|REG_4bits|DOUT\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001100110011001100100000000000000000001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX0_DECODER|REG_4bits|ALT_INV_DOUT\(2),
	datab => \HEX0_DECODER|REG_4bits|ALT_INV_DOUT\(3),
	datae => \HEX0_DECODER|REG_4bits|ALT_INV_DOUT\(1),
	dataf => \HEX0_DECODER|REG_4bits|ALT_INV_DOUT\(0),
	combout => \HEX0_DECODER|DECODER_7seg|rascSaida7seg[2]~2_combout\);

-- Location: LABCELL_X44_Y1_N48
\HEX0_DECODER|DECODER_7seg|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX0_DECODER|DECODER_7seg|rascSaida7seg[3]~3_combout\ = (!\HEX0_DECODER|REG_4bits|DOUT\(1) & (!\HEX0_DECODER|REG_4bits|DOUT\(3) & (!\HEX0_DECODER|REG_4bits|DOUT\(2) $ (!\HEX0_DECODER|REG_4bits|DOUT\(0))))) # (\HEX0_DECODER|REG_4bits|DOUT\(1) & 
-- ((!\HEX0_DECODER|REG_4bits|DOUT\(2) & (\HEX0_DECODER|REG_4bits|DOUT\(3) & !\HEX0_DECODER|REG_4bits|DOUT\(0))) # (\HEX0_DECODER|REG_4bits|DOUT\(2) & ((\HEX0_DECODER|REG_4bits|DOUT\(0))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010010010000011001001001000001100100100100000110010010010000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX0_DECODER|REG_4bits|ALT_INV_DOUT\(3),
	datab => \HEX0_DECODER|REG_4bits|ALT_INV_DOUT\(2),
	datac => \HEX0_DECODER|REG_4bits|ALT_INV_DOUT\(1),
	datad => \HEX0_DECODER|REG_4bits|ALT_INV_DOUT\(0),
	combout => \HEX0_DECODER|DECODER_7seg|rascSaida7seg[3]~3_combout\);

-- Location: LABCELL_X44_Y1_N18
\HEX0_DECODER|DECODER_7seg|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX0_DECODER|DECODER_7seg|rascSaida7seg[4]~4_combout\ = ( \HEX0_DECODER|REG_4bits|DOUT\(0) & ( (!\HEX0_DECODER|REG_4bits|DOUT\(3)) # ((!\HEX0_DECODER|REG_4bits|DOUT\(1) & !\HEX0_DECODER|REG_4bits|DOUT\(2))) ) ) # ( !\HEX0_DECODER|REG_4bits|DOUT\(0) & ( 
-- (!\HEX0_DECODER|REG_4bits|DOUT\(1) & (\HEX0_DECODER|REG_4bits|DOUT\(2) & !\HEX0_DECODER|REG_4bits|DOUT\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000000011000000000011111111110000001111111111000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \HEX0_DECODER|REG_4bits|ALT_INV_DOUT\(1),
	datac => \HEX0_DECODER|REG_4bits|ALT_INV_DOUT\(2),
	datad => \HEX0_DECODER|REG_4bits|ALT_INV_DOUT\(3),
	dataf => \HEX0_DECODER|REG_4bits|ALT_INV_DOUT\(0),
	combout => \HEX0_DECODER|DECODER_7seg|rascSaida7seg[4]~4_combout\);

-- Location: LABCELL_X44_Y1_N51
\HEX0_DECODER|DECODER_7seg|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX0_DECODER|DECODER_7seg|rascSaida7seg[5]~5_combout\ = ( \HEX0_DECODER|REG_4bits|DOUT\(0) & ( !\HEX0_DECODER|REG_4bits|DOUT\(3) $ (((\HEX0_DECODER|REG_4bits|DOUT\(2) & !\HEX0_DECODER|REG_4bits|DOUT\(1)))) ) ) # ( !\HEX0_DECODER|REG_4bits|DOUT\(0) & ( 
-- (!\HEX0_DECODER|REG_4bits|DOUT\(3) & (!\HEX0_DECODER|REG_4bits|DOUT\(2) & \HEX0_DECODER|REG_4bits|DOUT\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010001000000000001000100010011001101010101001100110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX0_DECODER|REG_4bits|ALT_INV_DOUT\(3),
	datab => \HEX0_DECODER|REG_4bits|ALT_INV_DOUT\(2),
	datad => \HEX0_DECODER|REG_4bits|ALT_INV_DOUT\(1),
	dataf => \HEX0_DECODER|REG_4bits|ALT_INV_DOUT\(0),
	combout => \HEX0_DECODER|DECODER_7seg|rascSaida7seg[5]~5_combout\);

-- Location: LABCELL_X44_Y1_N21
\HEX0_DECODER|DECODER_7seg|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX0_DECODER|DECODER_7seg|rascSaida7seg[6]~6_combout\ = ( \HEX0_DECODER|REG_4bits|DOUT\(3) & ( (!\HEX0_DECODER|REG_4bits|DOUT\(0) & (!\HEX0_DECODER|REG_4bits|DOUT\(1) & \HEX0_DECODER|REG_4bits|DOUT\(2))) ) ) # ( !\HEX0_DECODER|REG_4bits|DOUT\(3) & ( 
-- (!\HEX0_DECODER|REG_4bits|DOUT\(1) & ((!\HEX0_DECODER|REG_4bits|DOUT\(2)))) # (\HEX0_DECODER|REG_4bits|DOUT\(1) & (\HEX0_DECODER|REG_4bits|DOUT\(0) & \HEX0_DECODER|REG_4bits|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000010001110011000001000100000000100010000000000010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX0_DECODER|REG_4bits|ALT_INV_DOUT\(0),
	datab => \HEX0_DECODER|REG_4bits|ALT_INV_DOUT\(1),
	datad => \HEX0_DECODER|REG_4bits|ALT_INV_DOUT\(2),
	dataf => \HEX0_DECODER|REG_4bits|ALT_INV_DOUT\(3),
	combout => \HEX0_DECODER|DECODER_7seg|rascSaida7seg[6]~6_combout\);

-- Location: LABCELL_X44_Y4_N39
\ENABLE_HEX[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ENABLE_HEX[1]~1_combout\ = ( \ROM|memROM~153_combout\ & ( \ENABLE_LEDR~0_combout\ & ( (!\ROM|memROM~0_combout\ & (\ROM|memROM~45_combout\ & !\ROM|memROM~58_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \ROM|ALT_INV_memROM~45_combout\,
	datad => \ROM|ALT_INV_memROM~58_combout\,
	datae => \ROM|ALT_INV_memROM~153_combout\,
	dataf => \ALT_INV_ENABLE_LEDR~0_combout\,
	combout => \ENABLE_HEX[1]~1_combout\);

-- Location: FF_X44_Y3_N44
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
	ena => \ENABLE_HEX[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX1_DECODER|REG_4bits|DOUT\(1));

-- Location: FF_X44_Y3_N17
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
	ena => \ENABLE_HEX[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX1_DECODER|REG_4bits|DOUT\(3));

-- Location: FF_X44_Y3_N47
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
	ena => \ENABLE_HEX[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX1_DECODER|REG_4bits|DOUT\(2));

-- Location: FF_X44_Y3_N14
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
	ena => \ENABLE_HEX[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX1_DECODER|REG_4bits|DOUT\(0));

-- Location: LABCELL_X44_Y3_N36
\HEX1_DECODER|DECODER_7seg|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX1_DECODER|DECODER_7seg|rascSaida7seg[0]~0_combout\ = ( \HEX1_DECODER|REG_4bits|DOUT\(0) & ( (!\HEX1_DECODER|REG_4bits|DOUT\(1) & (!\HEX1_DECODER|REG_4bits|DOUT\(3) $ (\HEX1_DECODER|REG_4bits|DOUT\(2)))) # (\HEX1_DECODER|REG_4bits|DOUT\(1) & 
-- (\HEX1_DECODER|REG_4bits|DOUT\(3) & !\HEX1_DECODER|REG_4bits|DOUT\(2))) ) ) # ( !\HEX1_DECODER|REG_4bits|DOUT\(0) & ( (!\HEX1_DECODER|REG_4bits|DOUT\(1) & (!\HEX1_DECODER|REG_4bits|DOUT\(3) & \HEX1_DECODER|REG_4bits|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000001100000011000011000011001100001100001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \HEX1_DECODER|REG_4bits|ALT_INV_DOUT\(1),
	datac => \HEX1_DECODER|REG_4bits|ALT_INV_DOUT\(3),
	datad => \HEX1_DECODER|REG_4bits|ALT_INV_DOUT\(2),
	dataf => \HEX1_DECODER|REG_4bits|ALT_INV_DOUT\(0),
	combout => \HEX1_DECODER|DECODER_7seg|rascSaida7seg[0]~0_combout\);

-- Location: LABCELL_X44_Y3_N33
\HEX1_DECODER|DECODER_7seg|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX1_DECODER|DECODER_7seg|rascSaida7seg[1]~1_combout\ = ( \HEX1_DECODER|REG_4bits|DOUT\(3) & ( (!\HEX1_DECODER|REG_4bits|DOUT\(0) & ((\HEX1_DECODER|REG_4bits|DOUT\(2)))) # (\HEX1_DECODER|REG_4bits|DOUT\(0) & (\HEX1_DECODER|REG_4bits|DOUT\(1))) ) ) # ( 
-- !\HEX1_DECODER|REG_4bits|DOUT\(3) & ( (\HEX1_DECODER|REG_4bits|DOUT\(2) & (!\HEX1_DECODER|REG_4bits|DOUT\(0) $ (!\HEX1_DECODER|REG_4bits|DOUT\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000111100000000000011110000000011110011110000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \HEX1_DECODER|REG_4bits|ALT_INV_DOUT\(0),
	datac => \HEX1_DECODER|REG_4bits|ALT_INV_DOUT\(1),
	datad => \HEX1_DECODER|REG_4bits|ALT_INV_DOUT\(2),
	dataf => \HEX1_DECODER|REG_4bits|ALT_INV_DOUT\(3),
	combout => \HEX1_DECODER|DECODER_7seg|rascSaida7seg[1]~1_combout\);

-- Location: LABCELL_X44_Y3_N39
\HEX1_DECODER|DECODER_7seg|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX1_DECODER|DECODER_7seg|rascSaida7seg[2]~2_combout\ = ( \HEX1_DECODER|REG_4bits|DOUT\(0) & ( (\HEX1_DECODER|REG_4bits|DOUT\(3) & (\HEX1_DECODER|REG_4bits|DOUT\(1) & \HEX1_DECODER|REG_4bits|DOUT\(2))) ) ) # ( !\HEX1_DECODER|REG_4bits|DOUT\(0) & ( 
-- (!\HEX1_DECODER|REG_4bits|DOUT\(3) & (\HEX1_DECODER|REG_4bits|DOUT\(1) & !\HEX1_DECODER|REG_4bits|DOUT\(2))) # (\HEX1_DECODER|REG_4bits|DOUT\(3) & ((\HEX1_DECODER|REG_4bits|DOUT\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001010101000010100101010100000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX1_DECODER|REG_4bits|ALT_INV_DOUT\(3),
	datac => \HEX1_DECODER|REG_4bits|ALT_INV_DOUT\(1),
	datad => \HEX1_DECODER|REG_4bits|ALT_INV_DOUT\(2),
	dataf => \HEX1_DECODER|REG_4bits|ALT_INV_DOUT\(0),
	combout => \HEX1_DECODER|DECODER_7seg|rascSaida7seg[2]~2_combout\);

-- Location: LABCELL_X44_Y3_N24
\HEX1_DECODER|DECODER_7seg|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX1_DECODER|DECODER_7seg|rascSaida7seg[3]~3_combout\ = ( \HEX1_DECODER|REG_4bits|DOUT\(0) & ( (!\HEX1_DECODER|REG_4bits|DOUT\(1) & (!\HEX1_DECODER|REG_4bits|DOUT\(3) & !\HEX1_DECODER|REG_4bits|DOUT\(2))) # (\HEX1_DECODER|REG_4bits|DOUT\(1) & 
-- ((\HEX1_DECODER|REG_4bits|DOUT\(2)))) ) ) # ( !\HEX1_DECODER|REG_4bits|DOUT\(0) & ( (!\HEX1_DECODER|REG_4bits|DOUT\(1) & (!\HEX1_DECODER|REG_4bits|DOUT\(3) & \HEX1_DECODER|REG_4bits|DOUT\(2))) # (\HEX1_DECODER|REG_4bits|DOUT\(1) & 
-- (\HEX1_DECODER|REG_4bits|DOUT\(3) & !\HEX1_DECODER|REG_4bits|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111000000000000111100000011000000001100111100000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \HEX1_DECODER|REG_4bits|ALT_INV_DOUT\(1),
	datac => \HEX1_DECODER|REG_4bits|ALT_INV_DOUT\(3),
	datad => \HEX1_DECODER|REG_4bits|ALT_INV_DOUT\(2),
	dataf => \HEX1_DECODER|REG_4bits|ALT_INV_DOUT\(0),
	combout => \HEX1_DECODER|DECODER_7seg|rascSaida7seg[3]~3_combout\);

-- Location: LABCELL_X44_Y3_N27
\HEX1_DECODER|DECODER_7seg|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX1_DECODER|DECODER_7seg|rascSaida7seg[4]~4_combout\ = ( \HEX1_DECODER|REG_4bits|DOUT\(0) & ( (!\HEX1_DECODER|REG_4bits|DOUT\(3)) # ((!\HEX1_DECODER|REG_4bits|DOUT\(1) & !\HEX1_DECODER|REG_4bits|DOUT\(2))) ) ) # ( !\HEX1_DECODER|REG_4bits|DOUT\(0) & ( 
-- (!\HEX1_DECODER|REG_4bits|DOUT\(3) & (!\HEX1_DECODER|REG_4bits|DOUT\(1) & \HEX1_DECODER|REG_4bits|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000000000001010000011111010101010101111101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX1_DECODER|REG_4bits|ALT_INV_DOUT\(3),
	datac => \HEX1_DECODER|REG_4bits|ALT_INV_DOUT\(1),
	datad => \HEX1_DECODER|REG_4bits|ALT_INV_DOUT\(2),
	dataf => \HEX1_DECODER|REG_4bits|ALT_INV_DOUT\(0),
	combout => \HEX1_DECODER|DECODER_7seg|rascSaida7seg[4]~4_combout\);

-- Location: LABCELL_X44_Y3_N42
\HEX1_DECODER|DECODER_7seg|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX1_DECODER|DECODER_7seg|rascSaida7seg[5]~5_combout\ = (!\HEX1_DECODER|REG_4bits|DOUT\(0) & (!\HEX1_DECODER|REG_4bits|DOUT\(3) & (!\HEX1_DECODER|REG_4bits|DOUT\(2) & \HEX1_DECODER|REG_4bits|DOUT\(1)))) # (\HEX1_DECODER|REG_4bits|DOUT\(0) & 
-- (!\HEX1_DECODER|REG_4bits|DOUT\(3) $ (((\HEX1_DECODER|REG_4bits|DOUT\(2) & !\HEX1_DECODER|REG_4bits|DOUT\(1))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000110100010001000011010001000100001101000100010000110100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX1_DECODER|REG_4bits|ALT_INV_DOUT\(3),
	datab => \HEX1_DECODER|REG_4bits|ALT_INV_DOUT\(0),
	datac => \HEX1_DECODER|REG_4bits|ALT_INV_DOUT\(2),
	datad => \HEX1_DECODER|REG_4bits|ALT_INV_DOUT\(1),
	combout => \HEX1_DECODER|DECODER_7seg|rascSaida7seg[5]~5_combout\);

-- Location: LABCELL_X44_Y3_N45
\HEX1_DECODER|DECODER_7seg|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX1_DECODER|DECODER_7seg|rascSaida7seg[6]~6_combout\ = ( \HEX1_DECODER|REG_4bits|DOUT\(1) & ( (\HEX1_DECODER|REG_4bits|DOUT\(0) & (!\HEX1_DECODER|REG_4bits|DOUT\(3) & \HEX1_DECODER|REG_4bits|DOUT\(2))) ) ) # ( !\HEX1_DECODER|REG_4bits|DOUT\(1) & ( 
-- (!\HEX1_DECODER|REG_4bits|DOUT\(3) & ((!\HEX1_DECODER|REG_4bits|DOUT\(2)))) # (\HEX1_DECODER|REG_4bits|DOUT\(3) & (!\HEX1_DECODER|REG_4bits|DOUT\(0) & \HEX1_DECODER|REG_4bits|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000001100111100000000110000000000001100000000000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \HEX1_DECODER|REG_4bits|ALT_INV_DOUT\(0),
	datac => \HEX1_DECODER|REG_4bits|ALT_INV_DOUT\(3),
	datad => \HEX1_DECODER|REG_4bits|ALT_INV_DOUT\(2),
	dataf => \HEX1_DECODER|REG_4bits|ALT_INV_DOUT\(1),
	combout => \HEX1_DECODER|DECODER_7seg|rascSaida7seg[6]~6_combout\);

-- Location: MLABCELL_X34_Y3_N36
\ENABLE_HEX[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ENABLE_HEX[2]~2_combout\ = ( \ROM|memROM~58_combout\ & ( \ENABLE_LEDR~0_combout\ & ( (!\ROM|memROM~153_combout\ & (!\ROM|memROM~0_combout\ & \ROM|memROM~45_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~153_combout\,
	datac => \ROM|ALT_INV_memROM~0_combout\,
	datad => \ROM|ALT_INV_memROM~45_combout\,
	datae => \ROM|ALT_INV_memROM~58_combout\,
	dataf => \ALT_INV_ENABLE_LEDR~0_combout\,
	combout => \ENABLE_HEX[2]~2_combout\);

-- Location: FF_X44_Y3_N5
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
	ena => \ENABLE_HEX[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX2_DECODER|REG_4bits|DOUT\(2));

-- Location: FF_X44_Y3_N56
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
	ena => \ENABLE_HEX[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX2_DECODER|REG_4bits|DOUT\(1));

-- Location: FF_X44_Y3_N59
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
	ena => \ENABLE_HEX[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX2_DECODER|REG_4bits|DOUT\(0));

-- Location: FF_X44_Y3_N2
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
	ena => \ENABLE_HEX[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX2_DECODER|REG_4bits|DOUT\(3));

-- Location: LABCELL_X44_Y3_N30
\HEX2_DECODER|DECODER_7seg|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX2_DECODER|DECODER_7seg|rascSaida7seg[0]~0_combout\ = ( \HEX2_DECODER|REG_4bits|DOUT\(3) & ( (\HEX2_DECODER|REG_4bits|DOUT\(0) & (!\HEX2_DECODER|REG_4bits|DOUT\(2) $ (!\HEX2_DECODER|REG_4bits|DOUT\(1)))) ) ) # ( !\HEX2_DECODER|REG_4bits|DOUT\(3) & ( 
-- (!\HEX2_DECODER|REG_4bits|DOUT\(1) & (!\HEX2_DECODER|REG_4bits|DOUT\(2) $ (!\HEX2_DECODER|REG_4bits|DOUT\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000010100000010100001010000000000000010110100000000001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX2_DECODER|REG_4bits|ALT_INV_DOUT\(2),
	datac => \HEX2_DECODER|REG_4bits|ALT_INV_DOUT\(1),
	datad => \HEX2_DECODER|REG_4bits|ALT_INV_DOUT\(0),
	dataf => \HEX2_DECODER|REG_4bits|ALT_INV_DOUT\(3),
	combout => \HEX2_DECODER|DECODER_7seg|rascSaida7seg[0]~0_combout\);

-- Location: LABCELL_X44_Y3_N6
\HEX2_DECODER|DECODER_7seg|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX2_DECODER|DECODER_7seg|rascSaida7seg[1]~1_combout\ = ( \HEX2_DECODER|REG_4bits|DOUT\(1) & ( (!\HEX2_DECODER|REG_4bits|DOUT\(0) & ((\HEX2_DECODER|REG_4bits|DOUT\(2)))) # (\HEX2_DECODER|REG_4bits|DOUT\(0) & (\HEX2_DECODER|REG_4bits|DOUT\(3))) ) ) # ( 
-- !\HEX2_DECODER|REG_4bits|DOUT\(1) & ( (\HEX2_DECODER|REG_4bits|DOUT\(2) & (!\HEX2_DECODER|REG_4bits|DOUT\(0) $ (!\HEX2_DECODER|REG_4bits|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000111100000000000011110000000011110011110000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \HEX2_DECODER|REG_4bits|ALT_INV_DOUT\(0),
	datac => \HEX2_DECODER|REG_4bits|ALT_INV_DOUT\(3),
	datad => \HEX2_DECODER|REG_4bits|ALT_INV_DOUT\(2),
	dataf => \HEX2_DECODER|REG_4bits|ALT_INV_DOUT\(1),
	combout => \HEX2_DECODER|DECODER_7seg|rascSaida7seg[1]~1_combout\);

-- Location: LABCELL_X44_Y3_N9
\HEX2_DECODER|DECODER_7seg|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX2_DECODER|DECODER_7seg|rascSaida7seg[2]~2_combout\ = ( \HEX2_DECODER|REG_4bits|DOUT\(1) & ( (!\HEX2_DECODER|REG_4bits|DOUT\(3) & (!\HEX2_DECODER|REG_4bits|DOUT\(0) & !\HEX2_DECODER|REG_4bits|DOUT\(2))) # (\HEX2_DECODER|REG_4bits|DOUT\(3) & 
-- ((\HEX2_DECODER|REG_4bits|DOUT\(2)))) ) ) # ( !\HEX2_DECODER|REG_4bits|DOUT\(1) & ( (\HEX2_DECODER|REG_4bits|DOUT\(3) & (!\HEX2_DECODER|REG_4bits|DOUT\(0) & \HEX2_DECODER|REG_4bits|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000101000010100000010101011010000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX2_DECODER|REG_4bits|ALT_INV_DOUT\(3),
	datac => \HEX2_DECODER|REG_4bits|ALT_INV_DOUT\(0),
	datad => \HEX2_DECODER|REG_4bits|ALT_INV_DOUT\(2),
	dataf => \HEX2_DECODER|REG_4bits|ALT_INV_DOUT\(1),
	combout => \HEX2_DECODER|DECODER_7seg|rascSaida7seg[2]~2_combout\);

-- Location: LABCELL_X44_Y3_N57
\HEX2_DECODER|DECODER_7seg|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX2_DECODER|DECODER_7seg|rascSaida7seg[3]~3_combout\ = ( \HEX2_DECODER|REG_4bits|DOUT\(1) & ( (!\HEX2_DECODER|REG_4bits|DOUT\(2) & (\HEX2_DECODER|REG_4bits|DOUT\(3) & !\HEX2_DECODER|REG_4bits|DOUT\(0))) # (\HEX2_DECODER|REG_4bits|DOUT\(2) & 
-- ((\HEX2_DECODER|REG_4bits|DOUT\(0)))) ) ) # ( !\HEX2_DECODER|REG_4bits|DOUT\(1) & ( (!\HEX2_DECODER|REG_4bits|DOUT\(3) & (!\HEX2_DECODER|REG_4bits|DOUT\(2) $ (!\HEX2_DECODER|REG_4bits|DOUT\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000010100000010100001010000000001010010101010000101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX2_DECODER|REG_4bits|ALT_INV_DOUT\(2),
	datac => \HEX2_DECODER|REG_4bits|ALT_INV_DOUT\(3),
	datad => \HEX2_DECODER|REG_4bits|ALT_INV_DOUT\(0),
	dataf => \HEX2_DECODER|REG_4bits|ALT_INV_DOUT\(1),
	combout => \HEX2_DECODER|DECODER_7seg|rascSaida7seg[3]~3_combout\);

-- Location: LABCELL_X44_Y3_N0
\HEX2_DECODER|DECODER_7seg|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX2_DECODER|DECODER_7seg|rascSaida7seg[4]~4_combout\ = (!\HEX2_DECODER|REG_4bits|DOUT\(1) & ((!\HEX2_DECODER|REG_4bits|DOUT\(2) & (\HEX2_DECODER|REG_4bits|DOUT\(0))) # (\HEX2_DECODER|REG_4bits|DOUT\(2) & ((!\HEX2_DECODER|REG_4bits|DOUT\(3)))))) # 
-- (\HEX2_DECODER|REG_4bits|DOUT\(1) & (\HEX2_DECODER|REG_4bits|DOUT\(0) & ((!\HEX2_DECODER|REG_4bits|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011101100100000001110110010000000111011001000000011101100100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX2_DECODER|REG_4bits|ALT_INV_DOUT\(1),
	datab => \HEX2_DECODER|REG_4bits|ALT_INV_DOUT\(0),
	datac => \HEX2_DECODER|REG_4bits|ALT_INV_DOUT\(2),
	datad => \HEX2_DECODER|REG_4bits|ALT_INV_DOUT\(3),
	combout => \HEX2_DECODER|DECODER_7seg|rascSaida7seg[4]~4_combout\);

-- Location: LABCELL_X44_Y3_N54
\HEX2_DECODER|DECODER_7seg|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX2_DECODER|DECODER_7seg|rascSaida7seg[5]~5_combout\ = (!\HEX2_DECODER|REG_4bits|DOUT\(2) & (!\HEX2_DECODER|REG_4bits|DOUT\(3) & ((\HEX2_DECODER|REG_4bits|DOUT\(1)) # (\HEX2_DECODER|REG_4bits|DOUT\(0))))) # (\HEX2_DECODER|REG_4bits|DOUT\(2) & 
-- (\HEX2_DECODER|REG_4bits|DOUT\(0) & (!\HEX2_DECODER|REG_4bits|DOUT\(3) $ (!\HEX2_DECODER|REG_4bits|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000110110000001000011011000000100001101100000010000110110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX2_DECODER|REG_4bits|ALT_INV_DOUT\(2),
	datab => \HEX2_DECODER|REG_4bits|ALT_INV_DOUT\(0),
	datac => \HEX2_DECODER|REG_4bits|ALT_INV_DOUT\(3),
	datad => \HEX2_DECODER|REG_4bits|ALT_INV_DOUT\(1),
	combout => \HEX2_DECODER|DECODER_7seg|rascSaida7seg[5]~5_combout\);

-- Location: LABCELL_X44_Y3_N3
\HEX2_DECODER|DECODER_7seg|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX2_DECODER|DECODER_7seg|rascSaida7seg[6]~6_combout\ = (!\HEX2_DECODER|REG_4bits|DOUT\(0) & (!\HEX2_DECODER|REG_4bits|DOUT\(1) & (!\HEX2_DECODER|REG_4bits|DOUT\(3) $ (\HEX2_DECODER|REG_4bits|DOUT\(2))))) # (\HEX2_DECODER|REG_4bits|DOUT\(0) & 
-- (!\HEX2_DECODER|REG_4bits|DOUT\(3) & (!\HEX2_DECODER|REG_4bits|DOUT\(1) $ (\HEX2_DECODER|REG_4bits|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000011000101000000001100010100000000110001010000000011000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX2_DECODER|REG_4bits|ALT_INV_DOUT\(1),
	datab => \HEX2_DECODER|REG_4bits|ALT_INV_DOUT\(0),
	datac => \HEX2_DECODER|REG_4bits|ALT_INV_DOUT\(3),
	datad => \HEX2_DECODER|REG_4bits|ALT_INV_DOUT\(2),
	combout => \HEX2_DECODER|DECODER_7seg|rascSaida7seg[6]~6_combout\);

-- Location: LABCELL_X35_Y3_N6
\ENABLE_HEX[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ENABLE_HEX[3]~3_combout\ = ( \ENABLE_LEDR~0_combout\ & ( (\ROM|memROM~58_combout\ & (\ROM|memROM~45_combout\ & (\ROM|memROM~153_combout\ & !\ROM|memROM~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~58_combout\,
	datab => \ROM|ALT_INV_memROM~45_combout\,
	datac => \ROM|ALT_INV_memROM~153_combout\,
	datad => \ROM|ALT_INV_memROM~0_combout\,
	dataf => \ALT_INV_ENABLE_LEDR~0_combout\,
	combout => \ENABLE_HEX[3]~3_combout\);

-- Location: FF_X44_Y1_N41
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
	ena => \ENABLE_HEX[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX3_DECODER|REG_4bits|DOUT\(3));

-- Location: FF_X44_Y1_N35
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
	ena => \ENABLE_HEX[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX3_DECODER|REG_4bits|DOUT\(2));

-- Location: FF_X44_Y1_N38
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
	ena => \ENABLE_HEX[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX3_DECODER|REG_4bits|DOUT\(0));

-- Location: FF_X44_Y1_N32
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
	ena => \ENABLE_HEX[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX3_DECODER|REG_4bits|DOUT\(1));

-- Location: LABCELL_X44_Y1_N24
\HEX3_DECODER|DECODER_7seg|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX3_DECODER|DECODER_7seg|rascSaida7seg[0]~0_combout\ = ( \HEX3_DECODER|REG_4bits|DOUT\(1) & ( (\HEX3_DECODER|REG_4bits|DOUT\(3) & (!\HEX3_DECODER|REG_4bits|DOUT\(2) & \HEX3_DECODER|REG_4bits|DOUT\(0))) ) ) # ( !\HEX3_DECODER|REG_4bits|DOUT\(1) & ( 
-- (!\HEX3_DECODER|REG_4bits|DOUT\(3) & (!\HEX3_DECODER|REG_4bits|DOUT\(2) $ (!\HEX3_DECODER|REG_4bits|DOUT\(0)))) # (\HEX3_DECODER|REG_4bits|DOUT\(3) & (\HEX3_DECODER|REG_4bits|DOUT\(2) & \HEX3_DECODER|REG_4bits|DOUT\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110011000011000011001100001100000000001100000000000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \HEX3_DECODER|REG_4bits|ALT_INV_DOUT\(3),
	datac => \HEX3_DECODER|REG_4bits|ALT_INV_DOUT\(2),
	datad => \HEX3_DECODER|REG_4bits|ALT_INV_DOUT\(0),
	dataf => \HEX3_DECODER|REG_4bits|ALT_INV_DOUT\(1),
	combout => \HEX3_DECODER|DECODER_7seg|rascSaida7seg[0]~0_combout\);

-- Location: LABCELL_X44_Y1_N15
\HEX3_DECODER|DECODER_7seg|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX3_DECODER|DECODER_7seg|rascSaida7seg[1]~1_combout\ = ( \HEX3_DECODER|REG_4bits|DOUT\(1) & ( (!\HEX3_DECODER|REG_4bits|DOUT\(0) & (\HEX3_DECODER|REG_4bits|DOUT\(2))) # (\HEX3_DECODER|REG_4bits|DOUT\(0) & ((\HEX3_DECODER|REG_4bits|DOUT\(3)))) ) ) # ( 
-- !\HEX3_DECODER|REG_4bits|DOUT\(1) & ( (\HEX3_DECODER|REG_4bits|DOUT\(2) & (!\HEX3_DECODER|REG_4bits|DOUT\(3) $ (!\HEX3_DECODER|REG_4bits|DOUT\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101010000000001010101000001010101000011110101010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX3_DECODER|REG_4bits|ALT_INV_DOUT\(2),
	datac => \HEX3_DECODER|REG_4bits|ALT_INV_DOUT\(3),
	datad => \HEX3_DECODER|REG_4bits|ALT_INV_DOUT\(0),
	dataf => \HEX3_DECODER|REG_4bits|ALT_INV_DOUT\(1),
	combout => \HEX3_DECODER|DECODER_7seg|rascSaida7seg[1]~1_combout\);

-- Location: LABCELL_X44_Y1_N54
\HEX3_DECODER|DECODER_7seg|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX3_DECODER|DECODER_7seg|rascSaida7seg[2]~2_combout\ = ( \HEX3_DECODER|REG_4bits|DOUT\(3) & ( (\HEX3_DECODER|REG_4bits|DOUT\(2) & ((!\HEX3_DECODER|REG_4bits|DOUT\(0)) # (\HEX3_DECODER|REG_4bits|DOUT\(1)))) ) ) # ( !\HEX3_DECODER|REG_4bits|DOUT\(3) & ( 
-- (\HEX3_DECODER|REG_4bits|DOUT\(1) & (!\HEX3_DECODER|REG_4bits|DOUT\(2) & !\HEX3_DECODER|REG_4bits|DOUT\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000001100000000000000001111000000110000111100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \HEX3_DECODER|REG_4bits|ALT_INV_DOUT\(1),
	datac => \HEX3_DECODER|REG_4bits|ALT_INV_DOUT\(2),
	datad => \HEX3_DECODER|REG_4bits|ALT_INV_DOUT\(0),
	dataf => \HEX3_DECODER|REG_4bits|ALT_INV_DOUT\(3),
	combout => \HEX3_DECODER|DECODER_7seg|rascSaida7seg[2]~2_combout\);

-- Location: LABCELL_X44_Y1_N36
\HEX3_DECODER|DECODER_7seg|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX3_DECODER|DECODER_7seg|rascSaida7seg[3]~3_combout\ = ( \HEX3_DECODER|REG_4bits|DOUT\(3) & ( (\HEX3_DECODER|REG_4bits|DOUT\(1) & (!\HEX3_DECODER|REG_4bits|DOUT\(2) $ (\HEX3_DECODER|REG_4bits|DOUT\(0)))) ) ) # ( !\HEX3_DECODER|REG_4bits|DOUT\(3) & ( 
-- (!\HEX3_DECODER|REG_4bits|DOUT\(1) & (!\HEX3_DECODER|REG_4bits|DOUT\(2) $ (!\HEX3_DECODER|REG_4bits|DOUT\(0)))) # (\HEX3_DECODER|REG_4bits|DOUT\(1) & (\HEX3_DECODER|REG_4bits|DOUT\(2) & \HEX3_DECODER|REG_4bits|DOUT\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110011000011000011001100001100110000000000110011000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \HEX3_DECODER|REG_4bits|ALT_INV_DOUT\(1),
	datac => \HEX3_DECODER|REG_4bits|ALT_INV_DOUT\(2),
	datad => \HEX3_DECODER|REG_4bits|ALT_INV_DOUT\(0),
	dataf => \HEX3_DECODER|REG_4bits|ALT_INV_DOUT\(3),
	combout => \HEX3_DECODER|DECODER_7seg|rascSaida7seg[3]~3_combout\);

-- Location: LABCELL_X44_Y1_N39
\HEX3_DECODER|DECODER_7seg|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX3_DECODER|DECODER_7seg|rascSaida7seg[4]~4_combout\ = ( \HEX3_DECODER|REG_4bits|DOUT\(0) & ( (!\HEX3_DECODER|REG_4bits|DOUT\(3)) # ((!\HEX3_DECODER|REG_4bits|DOUT\(2) & !\HEX3_DECODER|REG_4bits|DOUT\(1))) ) ) # ( !\HEX3_DECODER|REG_4bits|DOUT\(0) & ( 
-- (\HEX3_DECODER|REG_4bits|DOUT\(2) & (!\HEX3_DECODER|REG_4bits|DOUT\(1) & !\HEX3_DECODER|REG_4bits|DOUT\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000000000010001000000000011111111100010001111111110001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX3_DECODER|REG_4bits|ALT_INV_DOUT\(2),
	datab => \HEX3_DECODER|REG_4bits|ALT_INV_DOUT\(1),
	datad => \HEX3_DECODER|REG_4bits|ALT_INV_DOUT\(3),
	dataf => \HEX3_DECODER|REG_4bits|ALT_INV_DOUT\(0),
	combout => \HEX3_DECODER|DECODER_7seg|rascSaida7seg[4]~4_combout\);

-- Location: LABCELL_X44_Y1_N30
\HEX3_DECODER|DECODER_7seg|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX3_DECODER|DECODER_7seg|rascSaida7seg[5]~5_combout\ = ( \HEX3_DECODER|REG_4bits|DOUT\(2) & ( (\HEX3_DECODER|REG_4bits|DOUT\(0) & (!\HEX3_DECODER|REG_4bits|DOUT\(3) $ (!\HEX3_DECODER|REG_4bits|DOUT\(1)))) ) ) # ( !\HEX3_DECODER|REG_4bits|DOUT\(2) & ( 
-- (!\HEX3_DECODER|REG_4bits|DOUT\(3) & ((\HEX3_DECODER|REG_4bits|DOUT\(1)) # (\HEX3_DECODER|REG_4bits|DOUT\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110011001100000011001100110000000011000011000000001100001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \HEX3_DECODER|REG_4bits|ALT_INV_DOUT\(3),
	datac => \HEX3_DECODER|REG_4bits|ALT_INV_DOUT\(0),
	datad => \HEX3_DECODER|REG_4bits|ALT_INV_DOUT\(1),
	dataf => \HEX3_DECODER|REG_4bits|ALT_INV_DOUT\(2),
	combout => \HEX3_DECODER|DECODER_7seg|rascSaida7seg[5]~5_combout\);

-- Location: LABCELL_X44_Y1_N33
\HEX3_DECODER|DECODER_7seg|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX3_DECODER|DECODER_7seg|rascSaida7seg[6]~6_combout\ = ( \HEX3_DECODER|REG_4bits|DOUT\(0) & ( (!\HEX3_DECODER|REG_4bits|DOUT\(3) & (!\HEX3_DECODER|REG_4bits|DOUT\(1) $ (\HEX3_DECODER|REG_4bits|DOUT\(2)))) ) ) # ( !\HEX3_DECODER|REG_4bits|DOUT\(0) & ( 
-- (!\HEX3_DECODER|REG_4bits|DOUT\(1) & (!\HEX3_DECODER|REG_4bits|DOUT\(3) $ (\HEX3_DECODER|REG_4bits|DOUT\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000110000110000000011000011000000000011001100000000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \HEX3_DECODER|REG_4bits|ALT_INV_DOUT\(3),
	datac => \HEX3_DECODER|REG_4bits|ALT_INV_DOUT\(1),
	datad => \HEX3_DECODER|REG_4bits|ALT_INV_DOUT\(2),
	dataf => \HEX3_DECODER|REG_4bits|ALT_INV_DOUT\(0),
	combout => \HEX3_DECODER|DECODER_7seg|rascSaida7seg[6]~6_combout\);

-- Location: LABCELL_X35_Y3_N3
\ENABLE_HEX[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ENABLE_HEX[4]~4_combout\ = ( \ROM|memROM~0_combout\ & ( \ENABLE_LEDR~0_combout\ & ( (!\ROM|memROM~153_combout\ & (!\ROM|memROM~58_combout\ & \ROM|memROM~45_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~153_combout\,
	datab => \ROM|ALT_INV_memROM~58_combout\,
	datad => \ROM|ALT_INV_memROM~45_combout\,
	datae => \ROM|ALT_INV_memROM~0_combout\,
	dataf => \ALT_INV_ENABLE_LEDR~0_combout\,
	combout => \ENABLE_HEX[4]~4_combout\);

-- Location: FF_X44_Y1_N11
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
	ena => \ENABLE_HEX[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX4_DECODER|REG_4bits|DOUT\(2));

-- Location: FF_X44_Y1_N5
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
	ena => \ENABLE_HEX[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX4_DECODER|REG_4bits|DOUT\(3));

-- Location: FF_X44_Y1_N2
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
	ena => \ENABLE_HEX[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX4_DECODER|REG_4bits|DOUT\(0));

-- Location: FF_X44_Y1_N8
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
	ena => \ENABLE_HEX[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX4_DECODER|REG_4bits|DOUT\(1));

-- Location: LABCELL_X44_Y1_N12
\HEX4_DECODER|DECODER_7seg|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX4_DECODER|DECODER_7seg|rascSaida7seg[0]~0_combout\ = ( \HEX4_DECODER|REG_4bits|DOUT\(1) & ( (!\HEX4_DECODER|REG_4bits|DOUT\(2) & (\HEX4_DECODER|REG_4bits|DOUT\(3) & \HEX4_DECODER|REG_4bits|DOUT\(0))) ) ) # ( !\HEX4_DECODER|REG_4bits|DOUT\(1) & ( 
-- (!\HEX4_DECODER|REG_4bits|DOUT\(2) & (!\HEX4_DECODER|REG_4bits|DOUT\(3) & \HEX4_DECODER|REG_4bits|DOUT\(0))) # (\HEX4_DECODER|REG_4bits|DOUT\(2) & (!\HEX4_DECODER|REG_4bits|DOUT\(3) $ (\HEX4_DECODER|REG_4bits|DOUT\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000011000011001100001100001100000000000011000000000000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \HEX4_DECODER|REG_4bits|ALT_INV_DOUT\(2),
	datac => \HEX4_DECODER|REG_4bits|ALT_INV_DOUT\(3),
	datad => \HEX4_DECODER|REG_4bits|ALT_INV_DOUT\(0),
	dataf => \HEX4_DECODER|REG_4bits|ALT_INV_DOUT\(1),
	combout => \HEX4_DECODER|DECODER_7seg|rascSaida7seg[0]~0_combout\);

-- Location: LABCELL_X44_Y1_N57
\HEX4_DECODER|DECODER_7seg|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX4_DECODER|DECODER_7seg|rascSaida7seg[1]~1_combout\ = ( \HEX4_DECODER|REG_4bits|DOUT\(1) & ( (!\HEX4_DECODER|REG_4bits|DOUT\(0) & (\HEX4_DECODER|REG_4bits|DOUT\(2))) # (\HEX4_DECODER|REG_4bits|DOUT\(0) & ((\HEX4_DECODER|REG_4bits|DOUT\(3)))) ) ) # ( 
-- !\HEX4_DECODER|REG_4bits|DOUT\(1) & ( (\HEX4_DECODER|REG_4bits|DOUT\(2) & (!\HEX4_DECODER|REG_4bits|DOUT\(0) $ (!\HEX4_DECODER|REG_4bits|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100001010000001010000101000001010010111110000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX4_DECODER|REG_4bits|ALT_INV_DOUT\(0),
	datac => \HEX4_DECODER|REG_4bits|ALT_INV_DOUT\(2),
	datad => \HEX4_DECODER|REG_4bits|ALT_INV_DOUT\(3),
	dataf => \HEX4_DECODER|REG_4bits|ALT_INV_DOUT\(1),
	combout => \HEX4_DECODER|DECODER_7seg|rascSaida7seg[1]~1_combout\);

-- Location: LABCELL_X44_Y1_N45
\HEX4_DECODER|DECODER_7seg|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX4_DECODER|DECODER_7seg|rascSaida7seg[2]~2_combout\ = ( \HEX4_DECODER|REG_4bits|DOUT\(1) & ( (!\HEX4_DECODER|REG_4bits|DOUT\(2) & (!\HEX4_DECODER|REG_4bits|DOUT\(0) & !\HEX4_DECODER|REG_4bits|DOUT\(3))) # (\HEX4_DECODER|REG_4bits|DOUT\(2) & 
-- ((\HEX4_DECODER|REG_4bits|DOUT\(3)))) ) ) # ( !\HEX4_DECODER|REG_4bits|DOUT\(1) & ( (!\HEX4_DECODER|REG_4bits|DOUT\(0) & (\HEX4_DECODER|REG_4bits|DOUT\(2) & \HEX4_DECODER|REG_4bits|DOUT\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000000000000101010100000000011111010000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX4_DECODER|REG_4bits|ALT_INV_DOUT\(0),
	datac => \HEX4_DECODER|REG_4bits|ALT_INV_DOUT\(2),
	datad => \HEX4_DECODER|REG_4bits|ALT_INV_DOUT\(3),
	dataf => \HEX4_DECODER|REG_4bits|ALT_INV_DOUT\(1),
	combout => \HEX4_DECODER|DECODER_7seg|rascSaida7seg[2]~2_combout\);

-- Location: LABCELL_X44_Y1_N0
\HEX4_DECODER|DECODER_7seg|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX4_DECODER|DECODER_7seg|rascSaida7seg[3]~3_combout\ = ( \HEX4_DECODER|REG_4bits|DOUT\(1) & ( (!\HEX4_DECODER|REG_4bits|DOUT\(2) & (\HEX4_DECODER|REG_4bits|DOUT\(3) & !\HEX4_DECODER|REG_4bits|DOUT\(0))) # (\HEX4_DECODER|REG_4bits|DOUT\(2) & 
-- ((\HEX4_DECODER|REG_4bits|DOUT\(0)))) ) ) # ( !\HEX4_DECODER|REG_4bits|DOUT\(1) & ( (!\HEX4_DECODER|REG_4bits|DOUT\(3) & (!\HEX4_DECODER|REG_4bits|DOUT\(2) $ (!\HEX4_DECODER|REG_4bits|DOUT\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000011000000001100001100000000001100001100110000110000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \HEX4_DECODER|REG_4bits|ALT_INV_DOUT\(2),
	datac => \HEX4_DECODER|REG_4bits|ALT_INV_DOUT\(3),
	datad => \HEX4_DECODER|REG_4bits|ALT_INV_DOUT\(0),
	dataf => \HEX4_DECODER|REG_4bits|ALT_INV_DOUT\(1),
	combout => \HEX4_DECODER|DECODER_7seg|rascSaida7seg[3]~3_combout\);

-- Location: LABCELL_X44_Y1_N3
\HEX4_DECODER|DECODER_7seg|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX4_DECODER|DECODER_7seg|rascSaida7seg[4]~4_combout\ = ( \HEX4_DECODER|REG_4bits|DOUT\(1) & ( (\HEX4_DECODER|REG_4bits|DOUT\(0) & !\HEX4_DECODER|REG_4bits|DOUT\(3)) ) ) # ( !\HEX4_DECODER|REG_4bits|DOUT\(1) & ( (!\HEX4_DECODER|REG_4bits|DOUT\(2) & 
-- (\HEX4_DECODER|REG_4bits|DOUT\(0))) # (\HEX4_DECODER|REG_4bits|DOUT\(2) & ((!\HEX4_DECODER|REG_4bits|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100001100001111110000110000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \HEX4_DECODER|REG_4bits|ALT_INV_DOUT\(2),
	datac => \HEX4_DECODER|REG_4bits|ALT_INV_DOUT\(0),
	datad => \HEX4_DECODER|REG_4bits|ALT_INV_DOUT\(3),
	dataf => \HEX4_DECODER|REG_4bits|ALT_INV_DOUT\(1),
	combout => \HEX4_DECODER|DECODER_7seg|rascSaida7seg[4]~4_combout\);

-- Location: LABCELL_X44_Y1_N6
\HEX4_DECODER|DECODER_7seg|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX4_DECODER|DECODER_7seg|rascSaida7seg[5]~5_combout\ = ( \HEX4_DECODER|REG_4bits|DOUT\(2) & ( (\HEX4_DECODER|REG_4bits|DOUT\(0) & (!\HEX4_DECODER|REG_4bits|DOUT\(3) $ (!\HEX4_DECODER|REG_4bits|DOUT\(1)))) ) ) # ( !\HEX4_DECODER|REG_4bits|DOUT\(2) & ( 
-- (!\HEX4_DECODER|REG_4bits|DOUT\(3) & ((\HEX4_DECODER|REG_4bits|DOUT\(1)) # (\HEX4_DECODER|REG_4bits|DOUT\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000011110000001100001111000000000011001100000000001100110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \HEX4_DECODER|REG_4bits|ALT_INV_DOUT\(0),
	datac => \HEX4_DECODER|REG_4bits|ALT_INV_DOUT\(3),
	datad => \HEX4_DECODER|REG_4bits|ALT_INV_DOUT\(1),
	dataf => \HEX4_DECODER|REG_4bits|ALT_INV_DOUT\(2),
	combout => \HEX4_DECODER|DECODER_7seg|rascSaida7seg[5]~5_combout\);

-- Location: LABCELL_X44_Y1_N9
\HEX4_DECODER|DECODER_7seg|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX4_DECODER|DECODER_7seg|rascSaida7seg[6]~6_combout\ = ( \HEX4_DECODER|REG_4bits|DOUT\(1) & ( (!\HEX4_DECODER|REG_4bits|DOUT\(3) & (\HEX4_DECODER|REG_4bits|DOUT\(0) & \HEX4_DECODER|REG_4bits|DOUT\(2))) ) ) # ( !\HEX4_DECODER|REG_4bits|DOUT\(1) & ( 
-- (!\HEX4_DECODER|REG_4bits|DOUT\(3) & ((!\HEX4_DECODER|REG_4bits|DOUT\(2)))) # (\HEX4_DECODER|REG_4bits|DOUT\(3) & (!\HEX4_DECODER|REG_4bits|DOUT\(0) & \HEX4_DECODER|REG_4bits|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101001000100101010100100010000000000001000100000000000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX4_DECODER|REG_4bits|ALT_INV_DOUT\(3),
	datab => \HEX4_DECODER|REG_4bits|ALT_INV_DOUT\(0),
	datad => \HEX4_DECODER|REG_4bits|ALT_INV_DOUT\(2),
	dataf => \HEX4_DECODER|REG_4bits|ALT_INV_DOUT\(1),
	combout => \HEX4_DECODER|DECODER_7seg|rascSaida7seg[6]~6_combout\);

-- Location: LABCELL_X44_Y3_N12
\ENABLE_HEX[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- ENABLE_HEX(5) = ( \ENABLE_LEDR~0_combout\ & ( (\ROM|memROM~45_combout\ & (\ROM|memROM~153_combout\ & (\ROM|memROM~0_combout\ & !\ROM|memROM~58_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010000000000000000000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~45_combout\,
	datab => \ROM|ALT_INV_memROM~153_combout\,
	datac => \ROM|ALT_INV_memROM~0_combout\,
	datad => \ROM|ALT_INV_memROM~58_combout\,
	datae => \ALT_INV_ENABLE_LEDR~0_combout\,
	combout => ENABLE_HEX(5));

-- Location: FF_X44_Y3_N50
\HEX5_DECODER|REG_4bits|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(0),
	sload => VCC,
	ena => ENABLE_HEX(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX5_DECODER|REG_4bits|DOUT\(0));

-- Location: FF_X44_Y3_N23
\HEX5_DECODER|REG_4bits|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(2),
	sload => VCC,
	ena => ENABLE_HEX(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX5_DECODER|REG_4bits|DOUT\(2));

-- Location: FF_X44_Y3_N20
\HEX5_DECODER|REG_4bits|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(1),
	sload => VCC,
	ena => ENABLE_HEX(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX5_DECODER|REG_4bits|DOUT\(1));

-- Location: FF_X44_Y3_N53
\HEX5_DECODER|REG_4bits|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(3),
	sload => VCC,
	ena => ENABLE_HEX(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX5_DECODER|REG_4bits|DOUT\(3));

-- Location: LABCELL_X43_Y4_N27
\HEX5_DECODER|DECODER_7seg|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX5_DECODER|DECODER_7seg|rascSaida7seg[0]~0_combout\ = ( \HEX5_DECODER|REG_4bits|DOUT\(3) & ( (\HEX5_DECODER|REG_4bits|DOUT\(0) & (!\HEX5_DECODER|REG_4bits|DOUT\(2) $ (!\HEX5_DECODER|REG_4bits|DOUT\(1)))) ) ) # ( !\HEX5_DECODER|REG_4bits|DOUT\(3) & ( 
-- (!\HEX5_DECODER|REG_4bits|DOUT\(1) & (!\HEX5_DECODER|REG_4bits|DOUT\(0) $ (!\HEX5_DECODER|REG_4bits|DOUT\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101000000000010110100000000000000101010100000000010101010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX5_DECODER|REG_4bits|ALT_INV_DOUT\(0),
	datac => \HEX5_DECODER|REG_4bits|ALT_INV_DOUT\(2),
	datad => \HEX5_DECODER|REG_4bits|ALT_INV_DOUT\(1),
	dataf => \HEX5_DECODER|REG_4bits|ALT_INV_DOUT\(3),
	combout => \HEX5_DECODER|DECODER_7seg|rascSaida7seg[0]~0_combout\);

-- Location: LABCELL_X43_Y5_N27
\HEX5_DECODER|DECODER_7seg|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX5_DECODER|DECODER_7seg|rascSaida7seg[1]~1_combout\ = ( \HEX5_DECODER|REG_4bits|DOUT\(1) & ( \HEX5_DECODER|REG_4bits|DOUT\(0) & ( \HEX5_DECODER|REG_4bits|DOUT\(3) ) ) ) # ( !\HEX5_DECODER|REG_4bits|DOUT\(1) & ( \HEX5_DECODER|REG_4bits|DOUT\(0) & ( 
-- (\HEX5_DECODER|REG_4bits|DOUT\(2) & !\HEX5_DECODER|REG_4bits|DOUT\(3)) ) ) ) # ( \HEX5_DECODER|REG_4bits|DOUT\(1) & ( !\HEX5_DECODER|REG_4bits|DOUT\(0) & ( \HEX5_DECODER|REG_4bits|DOUT\(2) ) ) ) # ( !\HEX5_DECODER|REG_4bits|DOUT\(1) & ( 
-- !\HEX5_DECODER|REG_4bits|DOUT\(0) & ( (\HEX5_DECODER|REG_4bits|DOUT\(2) & \HEX5_DECODER|REG_4bits|DOUT\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011001100110011001100110000001100000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \HEX5_DECODER|REG_4bits|ALT_INV_DOUT\(2),
	datac => \HEX5_DECODER|REG_4bits|ALT_INV_DOUT\(3),
	datae => \HEX5_DECODER|REG_4bits|ALT_INV_DOUT\(1),
	dataf => \HEX5_DECODER|REG_4bits|ALT_INV_DOUT\(0),
	combout => \HEX5_DECODER|DECODER_7seg|rascSaida7seg[1]~1_combout\);

-- Location: LABCELL_X44_Y3_N51
\HEX5_DECODER|DECODER_7seg|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX5_DECODER|DECODER_7seg|rascSaida7seg[2]~2_combout\ = ( \HEX5_DECODER|REG_4bits|DOUT\(0) & ( (\HEX5_DECODER|REG_4bits|DOUT\(2) & (\HEX5_DECODER|REG_4bits|DOUT\(1) & \HEX5_DECODER|REG_4bits|DOUT\(3))) ) ) # ( !\HEX5_DECODER|REG_4bits|DOUT\(0) & ( 
-- (!\HEX5_DECODER|REG_4bits|DOUT\(2) & (\HEX5_DECODER|REG_4bits|DOUT\(1) & !\HEX5_DECODER|REG_4bits|DOUT\(3))) # (\HEX5_DECODER|REG_4bits|DOUT\(2) & ((\HEX5_DECODER|REG_4bits|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001001010101001000100101010100000000000100010000000000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX5_DECODER|REG_4bits|ALT_INV_DOUT\(2),
	datab => \HEX5_DECODER|REG_4bits|ALT_INV_DOUT\(1),
	datad => \HEX5_DECODER|REG_4bits|ALT_INV_DOUT\(3),
	dataf => \HEX5_DECODER|REG_4bits|ALT_INV_DOUT\(0),
	combout => \HEX5_DECODER|DECODER_7seg|rascSaida7seg[2]~2_combout\);

-- Location: LABCELL_X44_Y3_N48
\HEX5_DECODER|DECODER_7seg|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX5_DECODER|DECODER_7seg|rascSaida7seg[3]~3_combout\ = (!\HEX5_DECODER|REG_4bits|DOUT\(1) & (!\HEX5_DECODER|REG_4bits|DOUT\(3) & (!\HEX5_DECODER|REG_4bits|DOUT\(2) $ (!\HEX5_DECODER|REG_4bits|DOUT\(0))))) # (\HEX5_DECODER|REG_4bits|DOUT\(1) & 
-- ((!\HEX5_DECODER|REG_4bits|DOUT\(2) & (\HEX5_DECODER|REG_4bits|DOUT\(3) & !\HEX5_DECODER|REG_4bits|DOUT\(0))) # (\HEX5_DECODER|REG_4bits|DOUT\(2) & ((\HEX5_DECODER|REG_4bits|DOUT\(0))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100001010010001010000101001000101000010100100010100001010010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX5_DECODER|REG_4bits|ALT_INV_DOUT\(2),
	datab => \HEX5_DECODER|REG_4bits|ALT_INV_DOUT\(1),
	datac => \HEX5_DECODER|REG_4bits|ALT_INV_DOUT\(3),
	datad => \HEX5_DECODER|REG_4bits|ALT_INV_DOUT\(0),
	combout => \HEX5_DECODER|DECODER_7seg|rascSaida7seg[3]~3_combout\);

-- Location: LABCELL_X44_Y3_N18
\HEX5_DECODER|DECODER_7seg|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX5_DECODER|DECODER_7seg|rascSaida7seg[4]~4_combout\ = (!\HEX5_DECODER|REG_4bits|DOUT\(1) & ((!\HEX5_DECODER|REG_4bits|DOUT\(2) & (\HEX5_DECODER|REG_4bits|DOUT\(0))) # (\HEX5_DECODER|REG_4bits|DOUT\(2) & ((!\HEX5_DECODER|REG_4bits|DOUT\(3)))))) # 
-- (\HEX5_DECODER|REG_4bits|DOUT\(1) & (\HEX5_DECODER|REG_4bits|DOUT\(0) & (!\HEX5_DECODER|REG_4bits|DOUT\(3))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101110001000100010111000100010001011100010001000101110001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX5_DECODER|REG_4bits|ALT_INV_DOUT\(0),
	datab => \HEX5_DECODER|REG_4bits|ALT_INV_DOUT\(3),
	datac => \HEX5_DECODER|REG_4bits|ALT_INV_DOUT\(2),
	datad => \HEX5_DECODER|REG_4bits|ALT_INV_DOUT\(1),
	combout => \HEX5_DECODER|DECODER_7seg|rascSaida7seg[4]~4_combout\);

-- Location: LABCELL_X43_Y5_N30
\HEX5_DECODER|DECODER_7seg|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX5_DECODER|DECODER_7seg|rascSaida7seg[5]~5_combout\ = ( \HEX5_DECODER|REG_4bits|DOUT\(1) & ( \HEX5_DECODER|REG_4bits|DOUT\(2) & ( (!\HEX5_DECODER|REG_4bits|DOUT\(3) & \HEX5_DECODER|REG_4bits|DOUT\(0)) ) ) ) # ( !\HEX5_DECODER|REG_4bits|DOUT\(1) & ( 
-- \HEX5_DECODER|REG_4bits|DOUT\(2) & ( (\HEX5_DECODER|REG_4bits|DOUT\(3) & \HEX5_DECODER|REG_4bits|DOUT\(0)) ) ) ) # ( \HEX5_DECODER|REG_4bits|DOUT\(1) & ( !\HEX5_DECODER|REG_4bits|DOUT\(2) & ( !\HEX5_DECODER|REG_4bits|DOUT\(3) ) ) ) # ( 
-- !\HEX5_DECODER|REG_4bits|DOUT\(1) & ( !\HEX5_DECODER|REG_4bits|DOUT\(2) & ( (!\HEX5_DECODER|REG_4bits|DOUT\(3) & \HEX5_DECODER|REG_4bits|DOUT\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100110011001100110000000011000000110000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \HEX5_DECODER|REG_4bits|ALT_INV_DOUT\(3),
	datac => \HEX5_DECODER|REG_4bits|ALT_INV_DOUT\(0),
	datae => \HEX5_DECODER|REG_4bits|ALT_INV_DOUT\(1),
	dataf => \HEX5_DECODER|REG_4bits|ALT_INV_DOUT\(2),
	combout => \HEX5_DECODER|DECODER_7seg|rascSaida7seg[5]~5_combout\);

-- Location: LABCELL_X44_Y3_N21
\HEX5_DECODER|DECODER_7seg|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX5_DECODER|DECODER_7seg|rascSaida7seg[6]~6_combout\ = ( \HEX5_DECODER|REG_4bits|DOUT\(1) & ( (\HEX5_DECODER|REG_4bits|DOUT\(0) & (!\HEX5_DECODER|REG_4bits|DOUT\(3) & \HEX5_DECODER|REG_4bits|DOUT\(2))) ) ) # ( !\HEX5_DECODER|REG_4bits|DOUT\(1) & ( 
-- (!\HEX5_DECODER|REG_4bits|DOUT\(3) & ((!\HEX5_DECODER|REG_4bits|DOUT\(2)))) # (\HEX5_DECODER|REG_4bits|DOUT\(3) & (!\HEX5_DECODER|REG_4bits|DOUT\(0) & \HEX5_DECODER|REG_4bits|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000100010110011000010001000000000010001000000000001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX5_DECODER|REG_4bits|ALT_INV_DOUT\(0),
	datab => \HEX5_DECODER|REG_4bits|ALT_INV_DOUT\(3),
	datad => \HEX5_DECODER|REG_4bits|ALT_INV_DOUT\(2),
	dataf => \HEX5_DECODER|REG_4bits|ALT_INV_DOUT\(1),
	combout => \HEX5_DECODER|DECODER_7seg|rascSaida7seg[6]~6_combout\);

-- Location: LABCELL_X36_Y3_N48
\ENABLE_LEDR~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ENABLE_LEDR~1_combout\ = ( \ENABLE_LEDR~0_combout\ & ( (!\ROM|memROM~0_combout\ & (!\ROM|memROM~153_combout\ & (!\ROM|memROM~45_combout\ & !\ROM|memROM~58_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \ROM|ALT_INV_memROM~153_combout\,
	datac => \ROM|ALT_INV_memROM~45_combout\,
	datad => \ROM|ALT_INV_memROM~58_combout\,
	dataf => \ALT_INV_ENABLE_LEDR~0_combout\,
	combout => \ENABLE_LEDR~1_combout\);

-- Location: FF_X35_Y7_N52
\LED_R|REG_8bits|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(0),
	sload => VCC,
	ena => \ENABLE_LEDR~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED_R|REG_8bits|DOUT\(0));

-- Location: FF_X37_Y7_N46
\LED_R|REG_8bits|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(1),
	sload => VCC,
	ena => \ENABLE_LEDR~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED_R|REG_8bits|DOUT\(1));

-- Location: FF_X35_Y7_N29
\LED_R|REG_8bits|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(2),
	sload => VCC,
	ena => \ENABLE_LEDR~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED_R|REG_8bits|DOUT\(2));

-- Location: FF_X35_Y7_N35
\LED_R|REG_8bits|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(3),
	sload => VCC,
	ena => \ENABLE_LEDR~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED_R|REG_8bits|DOUT\(3));

-- Location: FF_X37_Y7_N16
\LED_R|REG_8bits|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(4),
	sload => VCC,
	ena => \ENABLE_LEDR~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED_R|REG_8bits|DOUT\(4));

-- Location: FF_X37_Y7_N10
\LED_R|REG_8bits|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(5),
	sload => VCC,
	ena => \ENABLE_LEDR~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED_R|REG_8bits|DOUT\(5));

-- Location: FF_X37_Y7_N35
\LED_R|REG_8bits|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(6),
	sload => VCC,
	ena => \ENABLE_LEDR~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED_R|REG_8bits|DOUT\(6));

-- Location: FF_X37_Y7_N49
\LED_R|REG_8bits|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(7),
	sload => VCC,
	ena => \ENABLE_LEDR~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED_R|REG_8bits|DOUT\(7));

-- Location: MLABCELL_X34_Y3_N51
\ENABLE_LEDR~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ENABLE_LEDR~2_combout\ = ( \ENABLE_LEDR~0_combout\ & ( !\ROM|memROM~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	dataf => \ALT_INV_ENABLE_LEDR~0_combout\,
	combout => \ENABLE_LEDR~2_combout\);

-- Location: MLABCELL_X34_Y3_N30
\LED8|FLIPS|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LED8|FLIPS|DOUT~0_combout\ = ( \LED8|FLIPS|DOUT~q\ & ( \ENABLE_LEDR~2_combout\ & ( ((!\ROM|memROM~153_combout\) # ((\ROM|memROM~45_combout\) # (\CPU|REG_A|DOUT\(0)))) # (\ROM|memROM~58_combout\) ) ) ) # ( !\LED8|FLIPS|DOUT~q\ & ( \ENABLE_LEDR~2_combout\ 
-- & ( (!\ROM|memROM~58_combout\ & (\ROM|memROM~153_combout\ & (\CPU|REG_A|DOUT\(0) & !\ROM|memROM~45_combout\))) ) ) ) # ( \LED8|FLIPS|DOUT~q\ & ( !\ENABLE_LEDR~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000010000000001101111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~58_combout\,
	datab => \ROM|ALT_INV_memROM~153_combout\,
	datac => \CPU|REG_A|ALT_INV_DOUT\(0),
	datad => \ROM|ALT_INV_memROM~45_combout\,
	datae => \LED8|FLIPS|ALT_INV_DOUT~q\,
	dataf => \ALT_INV_ENABLE_LEDR~2_combout\,
	combout => \LED8|FLIPS|DOUT~0_combout\);

-- Location: FF_X34_Y3_N32
\LED8|FLIPS|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \LED8|FLIPS|DOUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED8|FLIPS|DOUT~q\);

-- Location: MLABCELL_X34_Y3_N12
\LED9|FLIPS|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LED9|FLIPS|DOUT~0_combout\ = ( \LED9|FLIPS|DOUT~q\ & ( \ENABLE_LEDR~2_combout\ & ( (!\ROM|memROM~58_combout\) # (((\ROM|memROM~45_combout\) # (\CPU|REG_A|DOUT\(0))) # (\ROM|memROM~153_combout\)) ) ) ) # ( !\LED9|FLIPS|DOUT~q\ & ( \ENABLE_LEDR~2_combout\ 
-- & ( (\ROM|memROM~58_combout\ & (!\ROM|memROM~153_combout\ & (\CPU|REG_A|DOUT\(0) & !\ROM|memROM~45_combout\))) ) ) ) # ( \LED9|FLIPS|DOUT~q\ & ( !\ENABLE_LEDR~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000100000000001011111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~58_combout\,
	datab => \ROM|ALT_INV_memROM~153_combout\,
	datac => \CPU|REG_A|ALT_INV_DOUT\(0),
	datad => \ROM|ALT_INV_memROM~45_combout\,
	datae => \LED9|FLIPS|ALT_INV_DOUT~q\,
	dataf => \ALT_INV_ENABLE_LEDR~2_combout\,
	combout => \LED9|FLIPS|DOUT~0_combout\);

-- Location: FF_X34_Y3_N13
\LED9|FLIPS|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \LED9|FLIPS|DOUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED9|FLIPS|DOUT~q\);

-- Location: LABCELL_X35_Y1_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


