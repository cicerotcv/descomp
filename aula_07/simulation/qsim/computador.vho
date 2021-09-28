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

-- DATE "09/28/2021 04:11:48"

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
	PC : OUT std_logic_vector(8 DOWNTO 0);
	SAIDA : OUT std_logic_vector(12 DOWNTO 0);
	DOUT : OUT std_logic_vector(7 DOWNTO 0);
	HAB_LEI : OUT std_logic;
	HAB_ESC : OUT std_logic;
	LED_R : OUT std_logic_vector(9 DOWNTO 0)
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
SIGNAL ww_PC : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_SAIDA : std_logic_vector(12 DOWNTO 0);
SIGNAL ww_DOUT : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_HAB_LEI : std_logic;
SIGNAL ww_HAB_ESC : std_logic;
SIGNAL ww_LED_R : std_logic_vector(9 DOWNTO 0);
SIGNAL \CLOCK~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \PC[0]~output_o\ : std_logic;
SIGNAL \PC[1]~output_o\ : std_logic;
SIGNAL \PC[2]~output_o\ : std_logic;
SIGNAL \PC[3]~output_o\ : std_logic;
SIGNAL \PC[4]~output_o\ : std_logic;
SIGNAL \PC[5]~output_o\ : std_logic;
SIGNAL \PC[6]~output_o\ : std_logic;
SIGNAL \PC[7]~output_o\ : std_logic;
SIGNAL \PC[8]~output_o\ : std_logic;
SIGNAL \SAIDA[0]~output_o\ : std_logic;
SIGNAL \SAIDA[1]~output_o\ : std_logic;
SIGNAL \SAIDA[2]~output_o\ : std_logic;
SIGNAL \SAIDA[3]~output_o\ : std_logic;
SIGNAL \SAIDA[4]~output_o\ : std_logic;
SIGNAL \SAIDA[5]~output_o\ : std_logic;
SIGNAL \SAIDA[6]~output_o\ : std_logic;
SIGNAL \SAIDA[7]~output_o\ : std_logic;
SIGNAL \SAIDA[8]~output_o\ : std_logic;
SIGNAL \SAIDA[9]~output_o\ : std_logic;
SIGNAL \SAIDA[10]~output_o\ : std_logic;
SIGNAL \SAIDA[11]~output_o\ : std_logic;
SIGNAL \SAIDA[12]~output_o\ : std_logic;
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
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \CPU|INSTR|SOMA_CONST|Add0~5_sumout\ : std_logic;
SIGNAL \ROM|memROM~1_combout\ : std_logic;
SIGNAL \ROM|memROM~5_combout\ : std_logic;
SIGNAL \ROM|memROM~11_combout\ : std_logic;
SIGNAL \ROM|memROM~12_combout\ : std_logic;
SIGNAL \ROM|memROM~13_combout\ : std_logic;
SIGNAL \ROM|memROM~15_combout\ : std_logic;
SIGNAL \ROM|memROM~16_combout\ : std_logic;
SIGNAL \CPU|LOG_DESVIO|DESV_JUMP[0]~0_combout\ : std_logic;
SIGNAL \CPU|INSTR|SOMA_CONST|Add0~6\ : std_logic;
SIGNAL \CPU|INSTR|SOMA_CONST|Add0~9_sumout\ : std_logic;
SIGNAL \ROM|memROM~3_combout\ : std_logic;
SIGNAL \ROM|memROM~4_combout\ : std_logic;
SIGNAL \CPU|INSTR|SOMA_CONST|Add0~10\ : std_logic;
SIGNAL \CPU|INSTR|SOMA_CONST|Add0~13_sumout\ : std_logic;
SIGNAL \ROM|memROM~6_combout\ : std_logic;
SIGNAL \CPU|INSTR|SOMA_CONST|Add0~14\ : std_logic;
SIGNAL \CPU|INSTR|SOMA_CONST|Add0~17_sumout\ : std_logic;
SIGNAL \ROM|memROM~7_combout\ : std_logic;
SIGNAL \CPU|INSTR|SOMA_CONST|Add0~18\ : std_logic;
SIGNAL \CPU|INSTR|SOMA_CONST|Add0~21_sumout\ : std_logic;
SIGNAL \CPU|INSTR|SOMA_CONST|Add0~22\ : std_logic;
SIGNAL \CPU|INSTR|SOMA_CONST|Add0~25_sumout\ : std_logic;
SIGNAL \ROM|memROM~8_combout\ : std_logic;
SIGNAL \CPU|INSTR|SOMA_CONST|Add0~26\ : std_logic;
SIGNAL \CPU|INSTR|SOMA_CONST|Add0~29_sumout\ : std_logic;
SIGNAL \CPU|INSTR|SOMA_CONST|Add0~30\ : std_logic;
SIGNAL \CPU|INSTR|SOMA_CONST|Add0~33_sumout\ : std_logic;
SIGNAL \CPU|INSTR|SOMA_CONST|Add0~34\ : std_logic;
SIGNAL \CPU|INSTR|SOMA_CONST|Add0~1_sumout\ : std_logic;
SIGNAL \ROM|memROM~9_combout\ : std_logic;
SIGNAL \ROM|memROM~10_combout\ : std_logic;
SIGNAL \ROM|memROM~0_combout\ : std_logic;
SIGNAL \ROM|memROM~2_combout\ : std_logic;
SIGNAL \ROM|memROM~14_combout\ : std_logic;
SIGNAL \CPU|DECODER|Equal10~1_combout\ : std_logic;
SIGNAL \ROM|memROM~17_combout\ : std_logic;
SIGNAL \RAM|ram~558_combout\ : std_logic;
SIGNAL \RAM|ram~15_q\ : std_logic;
SIGNAL \RAM|ram~557_combout\ : std_logic;
SIGNAL \RAM|ram~23_q\ : std_logic;
SIGNAL \RAM|ram~527_combout\ : std_logic;
SIGNAL \RAM|ram~556_combout\ : std_logic;
SIGNAL \RAM|ram~31_q\ : std_logic;
SIGNAL \RAM|ram~528_combout\ : std_logic;
SIGNAL \RAM|ram~529_combout\ : std_logic;
SIGNAL \RAM|ram~530_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~1_sumout\ : std_logic;
SIGNAL \CPU|DECODER|sinais_controle~1_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~34_cout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~1_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[0]~0_combout\ : std_logic;
SIGNAL \CPU|DECODER|Equal10~2_combout\ : std_logic;
SIGNAL \CPU|DECODER|sinais_controle~2_combout\ : std_logic;
SIGNAL \ROM|memROM~18_combout\ : std_logic;
SIGNAL \RAM|ram~16_q\ : std_logic;
SIGNAL \RAM|ram~24_q\ : std_logic;
SIGNAL \RAM|ram~531_combout\ : std_logic;
SIGNAL \RAM|ram~32_q\ : std_logic;
SIGNAL \RAM|ram~532_combout\ : std_logic;
SIGNAL \RAM|ram~533_combout\ : std_logic;
SIGNAL \RAM|ram~534_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~2\ : std_logic;
SIGNAL \CPU|ULA1|Add0~5_sumout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~2\ : std_logic;
SIGNAL \CPU|ULA1|Add1~5_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[1]~1_combout\ : std_logic;
SIGNAL \RAM|ram~17_q\ : std_logic;
SIGNAL \RAM|ram~25_q\ : std_logic;
SIGNAL \RAM|ram~535_combout\ : std_logic;
SIGNAL \RAM|ram~33_q\ : std_logic;
SIGNAL \RAM|ram~536_combout\ : std_logic;
SIGNAL \RAM|ram~537_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~6\ : std_logic;
SIGNAL \CPU|ULA1|Add0~9_sumout\ : std_logic;
SIGNAL \RAM|ram~538_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~6\ : std_logic;
SIGNAL \CPU|ULA1|Add1~9_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[2]~2_combout\ : std_logic;
SIGNAL \RAM|ram~18_q\ : std_logic;
SIGNAL \RAM|ram~26_q\ : std_logic;
SIGNAL \RAM|ram~539_combout\ : std_logic;
SIGNAL \RAM|ram~34_q\ : std_logic;
SIGNAL \RAM|ram~540_combout\ : std_logic;
SIGNAL \RAM|ram~541_combout\ : std_logic;
SIGNAL \RAM|ram~542_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~10\ : std_logic;
SIGNAL \CPU|ULA1|Add0~13_sumout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~10\ : std_logic;
SIGNAL \CPU|ULA1|Add1~13_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[3]~3_combout\ : std_logic;
SIGNAL \RAM|ram~19_q\ : std_logic;
SIGNAL \RAM|ram~27_q\ : std_logic;
SIGNAL \RAM|ram~543_combout\ : std_logic;
SIGNAL \RAM|ram~35_q\ : std_logic;
SIGNAL \RAM|ram~544_combout\ : std_logic;
SIGNAL \RAM|ram~545_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~14\ : std_logic;
SIGNAL \CPU|ULA1|Add0~17_sumout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~14\ : std_logic;
SIGNAL \CPU|ULA1|Add1~17_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[4]~4_combout\ : std_logic;
SIGNAL \RAM|ram~20_q\ : std_logic;
SIGNAL \RAM|ram~28_q\ : std_logic;
SIGNAL \RAM|ram~546_combout\ : std_logic;
SIGNAL \RAM|ram~36_q\ : std_logic;
SIGNAL \RAM|ram~547_combout\ : std_logic;
SIGNAL \RAM|ram~548_combout\ : std_logic;
SIGNAL \RAM|ram~549_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~18\ : std_logic;
SIGNAL \CPU|ULA1|Add0~21_sumout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~18\ : std_logic;
SIGNAL \CPU|ULA1|Add1~21_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[5]~5_combout\ : std_logic;
SIGNAL \RAM|ram~21_q\ : std_logic;
SIGNAL \RAM|ram~29_q\ : std_logic;
SIGNAL \RAM|ram~550_combout\ : std_logic;
SIGNAL \RAM|ram~37_q\ : std_logic;
SIGNAL \RAM|ram~551_combout\ : std_logic;
SIGNAL \RAM|ram~552_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~22\ : std_logic;
SIGNAL \CPU|ULA1|Add0~25_sumout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~22\ : std_logic;
SIGNAL \CPU|ULA1|Add1~25_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[6]~6_combout\ : std_logic;
SIGNAL \RAM|ram~22_q\ : std_logic;
SIGNAL \RAM|ram~30_q\ : std_logic;
SIGNAL \RAM|ram~38_q\ : std_logic;
SIGNAL \RAM|ram~553_combout\ : std_logic;
SIGNAL \RAM|ram~554_combout\ : std_logic;
SIGNAL \RAM|ram~555_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~26\ : std_logic;
SIGNAL \CPU|ULA1|Add0~29_sumout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~26\ : std_logic;
SIGNAL \CPU|ULA1|Add1~29_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[7]~7_combout\ : std_logic;
SIGNAL \CPU|DECODER|sinais_controle~0_combout\ : std_logic;
SIGNAL \CPU|DECODER|Equal10~0_combout\ : std_logic;
SIGNAL \LED8|FLIPS|DOUT~q\ : std_logic;
SIGNAL \LED9|FLIPS|DOUT~q\ : std_logic;
SIGNAL \CPU|INSTR|PC|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \CPU|REG_A|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \LEDR|REG_8bits|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ROM|ALT_INV_memROM~18_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~17_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~555_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~554_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~553_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~38_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~30_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~22_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~552_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~551_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~37_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~550_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~29_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~21_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~549_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~548_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~547_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~36_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~546_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~28_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~20_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~545_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~544_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~35_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~543_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~27_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~19_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~542_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~541_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~540_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~34_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~539_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~26_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~18_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~538_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~537_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~536_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~33_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~535_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~25_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~17_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~534_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~533_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~532_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~32_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~531_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~24_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~16_q\ : std_logic;
SIGNAL \CPU|DECODER|ALT_INV_sinais_controle~1_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~530_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~529_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~528_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~31_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~527_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~23_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~15_q\ : std_logic;
SIGNAL \CPU|DECODER|ALT_INV_Equal10~1_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~16_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~15_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~14_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~13_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~12_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~11_combout\ : std_logic;
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
PC <= ww_PC;
SAIDA <= ww_SAIDA;
DOUT <= ww_DOUT;
HAB_LEI <= ww_HAB_LEI;
HAB_ESC <= ww_HAB_ESC;
LED_R <= ww_LED_R;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ROM|ALT_INV_memROM~18_combout\ <= NOT \ROM|memROM~18_combout\;
\ROM|ALT_INV_memROM~17_combout\ <= NOT \ROM|memROM~17_combout\;
\RAM|ALT_INV_ram~555_combout\ <= NOT \RAM|ram~555_combout\;
\RAM|ALT_INV_ram~554_combout\ <= NOT \RAM|ram~554_combout\;
\RAM|ALT_INV_ram~553_combout\ <= NOT \RAM|ram~553_combout\;
\RAM|ALT_INV_ram~38_q\ <= NOT \RAM|ram~38_q\;
\RAM|ALT_INV_ram~30_q\ <= NOT \RAM|ram~30_q\;
\RAM|ALT_INV_ram~22_q\ <= NOT \RAM|ram~22_q\;
\RAM|ALT_INV_ram~552_combout\ <= NOT \RAM|ram~552_combout\;
\RAM|ALT_INV_ram~551_combout\ <= NOT \RAM|ram~551_combout\;
\RAM|ALT_INV_ram~37_q\ <= NOT \RAM|ram~37_q\;
\RAM|ALT_INV_ram~550_combout\ <= NOT \RAM|ram~550_combout\;
\RAM|ALT_INV_ram~29_q\ <= NOT \RAM|ram~29_q\;
\RAM|ALT_INV_ram~21_q\ <= NOT \RAM|ram~21_q\;
\RAM|ALT_INV_ram~549_combout\ <= NOT \RAM|ram~549_combout\;
\RAM|ALT_INV_ram~548_combout\ <= NOT \RAM|ram~548_combout\;
\RAM|ALT_INV_ram~547_combout\ <= NOT \RAM|ram~547_combout\;
\RAM|ALT_INV_ram~36_q\ <= NOT \RAM|ram~36_q\;
\RAM|ALT_INV_ram~546_combout\ <= NOT \RAM|ram~546_combout\;
\RAM|ALT_INV_ram~28_q\ <= NOT \RAM|ram~28_q\;
\RAM|ALT_INV_ram~20_q\ <= NOT \RAM|ram~20_q\;
\RAM|ALT_INV_ram~545_combout\ <= NOT \RAM|ram~545_combout\;
\RAM|ALT_INV_ram~544_combout\ <= NOT \RAM|ram~544_combout\;
\RAM|ALT_INV_ram~35_q\ <= NOT \RAM|ram~35_q\;
\RAM|ALT_INV_ram~543_combout\ <= NOT \RAM|ram~543_combout\;
\RAM|ALT_INV_ram~27_q\ <= NOT \RAM|ram~27_q\;
\RAM|ALT_INV_ram~19_q\ <= NOT \RAM|ram~19_q\;
\RAM|ALT_INV_ram~542_combout\ <= NOT \RAM|ram~542_combout\;
\RAM|ALT_INV_ram~541_combout\ <= NOT \RAM|ram~541_combout\;
\RAM|ALT_INV_ram~540_combout\ <= NOT \RAM|ram~540_combout\;
\RAM|ALT_INV_ram~34_q\ <= NOT \RAM|ram~34_q\;
\RAM|ALT_INV_ram~539_combout\ <= NOT \RAM|ram~539_combout\;
\RAM|ALT_INV_ram~26_q\ <= NOT \RAM|ram~26_q\;
\RAM|ALT_INV_ram~18_q\ <= NOT \RAM|ram~18_q\;
\RAM|ALT_INV_ram~538_combout\ <= NOT \RAM|ram~538_combout\;
\RAM|ALT_INV_ram~537_combout\ <= NOT \RAM|ram~537_combout\;
\RAM|ALT_INV_ram~536_combout\ <= NOT \RAM|ram~536_combout\;
\RAM|ALT_INV_ram~33_q\ <= NOT \RAM|ram~33_q\;
\RAM|ALT_INV_ram~535_combout\ <= NOT \RAM|ram~535_combout\;
\RAM|ALT_INV_ram~25_q\ <= NOT \RAM|ram~25_q\;
\RAM|ALT_INV_ram~17_q\ <= NOT \RAM|ram~17_q\;
\RAM|ALT_INV_ram~534_combout\ <= NOT \RAM|ram~534_combout\;
\RAM|ALT_INV_ram~533_combout\ <= NOT \RAM|ram~533_combout\;
\RAM|ALT_INV_ram~532_combout\ <= NOT \RAM|ram~532_combout\;
\RAM|ALT_INV_ram~32_q\ <= NOT \RAM|ram~32_q\;
\RAM|ALT_INV_ram~531_combout\ <= NOT \RAM|ram~531_combout\;
\RAM|ALT_INV_ram~24_q\ <= NOT \RAM|ram~24_q\;
\RAM|ALT_INV_ram~16_q\ <= NOT \RAM|ram~16_q\;
\CPU|DECODER|ALT_INV_sinais_controle~1_combout\ <= NOT \CPU|DECODER|sinais_controle~1_combout\;
\RAM|ALT_INV_ram~530_combout\ <= NOT \RAM|ram~530_combout\;
\RAM|ALT_INV_ram~529_combout\ <= NOT \RAM|ram~529_combout\;
\RAM|ALT_INV_ram~528_combout\ <= NOT \RAM|ram~528_combout\;
\RAM|ALT_INV_ram~31_q\ <= NOT \RAM|ram~31_q\;
\RAM|ALT_INV_ram~527_combout\ <= NOT \RAM|ram~527_combout\;
\RAM|ALT_INV_ram~23_q\ <= NOT \RAM|ram~23_q\;
\RAM|ALT_INV_ram~15_q\ <= NOT \RAM|ram~15_q\;
\CPU|DECODER|ALT_INV_Equal10~1_combout\ <= NOT \CPU|DECODER|Equal10~1_combout\;
\ROM|ALT_INV_memROM~16_combout\ <= NOT \ROM|memROM~16_combout\;
\ROM|ALT_INV_memROM~15_combout\ <= NOT \ROM|memROM~15_combout\;
\ROM|ALT_INV_memROM~14_combout\ <= NOT \ROM|memROM~14_combout\;
\ROM|ALT_INV_memROM~13_combout\ <= NOT \ROM|memROM~13_combout\;
\ROM|ALT_INV_memROM~12_combout\ <= NOT \ROM|memROM~12_combout\;
\ROM|ALT_INV_memROM~11_combout\ <= NOT \ROM|memROM~11_combout\;
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
\CPU|INSTR|PC|ALT_INV_DOUT\(7) <= NOT \CPU|INSTR|PC|DOUT\(7);
\CPU|INSTR|PC|ALT_INV_DOUT\(6) <= NOT \CPU|INSTR|PC|DOUT\(6);
\CPU|INSTR|PC|ALT_INV_DOUT\(5) <= NOT \CPU|INSTR|PC|DOUT\(5);
\CPU|INSTR|PC|ALT_INV_DOUT\(4) <= NOT \CPU|INSTR|PC|DOUT\(4);
\CPU|INSTR|PC|ALT_INV_DOUT\(3) <= NOT \CPU|INSTR|PC|DOUT\(3);
\CPU|INSTR|PC|ALT_INV_DOUT\(2) <= NOT \CPU|INSTR|PC|DOUT\(2);
\CPU|INSTR|PC|ALT_INV_DOUT\(1) <= NOT \CPU|INSTR|PC|DOUT\(1);
\CPU|INSTR|PC|ALT_INV_DOUT\(0) <= NOT \CPU|INSTR|PC|DOUT\(0);
\CPU|INSTR|PC|ALT_INV_DOUT\(8) <= NOT \CPU|INSTR|PC|DOUT\(8);

\PC[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
	devoe => ww_devoe,
	o => \PC[8]~output_o\);

\SAIDA[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~2_combout\,
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
	i => \ROM|memROM~4_combout\,
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
	i => \ROM|memROM~6_combout\,
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
	i => \ROM|memROM~7_combout\,
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
	i => \ROM|memROM~6_combout\,
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
	i => \ROM|memROM~8_combout\,
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
	i => \ROM|memROM~6_combout\,
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
	i => \ROM|memROM~8_combout\,
	devoe => ww_devoe,
	o => \SAIDA[7]~output_o\);

\SAIDA[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~10_combout\,
	devoe => ww_devoe,
	o => \SAIDA[8]~output_o\);

\SAIDA[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~12_combout\,
	devoe => ww_devoe,
	o => \SAIDA[9]~output_o\);

\SAIDA[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~14_combout\,
	devoe => ww_devoe,
	o => \SAIDA[10]~output_o\);

\SAIDA[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~16_combout\,
	devoe => ww_devoe,
	o => \SAIDA[11]~output_o\);

\SAIDA[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SAIDA[12]~output_o\);

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
	i => \CPU|DECODER|sinais_controle~0_combout\,
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

\LED_R[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDR|REG_8bits|DOUT\(0),
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
	i => \LEDR|REG_8bits|DOUT\(1),
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
	i => \LEDR|REG_8bits|DOUT\(2),
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
	i => \LEDR|REG_8bits|DOUT\(3),
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
	i => \LEDR|REG_8bits|DOUT\(4),
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
	i => \LEDR|REG_8bits|DOUT\(5),
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
	i => \LEDR|REG_8bits|DOUT\(6),
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
	i => \LEDR|REG_8bits|DOUT\(7),
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
	i => \LED8|FLIPS|DOUT~q\,
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
	i => \LED9|FLIPS|DOUT~q\,
	devoe => ww_devoe,
	o => \LED_R[9]~output_o\);

\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

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

\ROM|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~5_combout\ = ( !\CPU|INSTR|PC|DOUT\(7) & ( (!\CPU|INSTR|PC|DOUT\(8) & (!\CPU|INSTR|PC|DOUT\(4) & (!\CPU|INSTR|PC|DOUT\(5) & !\CPU|INSTR|PC|DOUT\(6)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|PC|ALT_INV_DOUT\(8),
	datab => \CPU|INSTR|PC|ALT_INV_DOUT\(4),
	datac => \CPU|INSTR|PC|ALT_INV_DOUT\(5),
	datad => \CPU|INSTR|PC|ALT_INV_DOUT\(6),
	datae => \CPU|INSTR|PC|ALT_INV_DOUT\(7),
	combout => \ROM|memROM~5_combout\);

\ROM|memROM~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~11_combout\ = (!\CPU|INSTR|PC|DOUT\(0) & ((!\CPU|INSTR|PC|DOUT\(2) $ (!\CPU|INSTR|PC|DOUT\(3))))) # (\CPU|INSTR|PC|DOUT\(0) & (!\CPU|INSTR|PC|DOUT\(3) & ((!\CPU|INSTR|PC|DOUT\(1)) # (!\CPU|INSTR|PC|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111010100000010111101010000001011110101000000101111010100000",
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
-- \ROM|memROM~12_combout\ = (\ROM|memROM~5_combout\ & \ROM|memROM~11_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~5_combout\,
	datab => \ROM|ALT_INV_memROM~11_combout\,
	combout => \ROM|memROM~12_combout\);

\ROM|memROM~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~13_combout\ = (\CPU|INSTR|PC|DOUT\(1) & (!\CPU|INSTR|PC|DOUT\(2) & (!\CPU|INSTR|PC|DOUT\(0) $ (\CPU|INSTR|PC|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000010000001000000001000000100000000100000010000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|PC|ALT_INV_DOUT\(0),
	datab => \CPU|INSTR|PC|ALT_INV_DOUT\(1),
	datac => \CPU|INSTR|PC|ALT_INV_DOUT\(2),
	datad => \CPU|INSTR|PC|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~13_combout\);

\ROM|memROM~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~15_combout\ = (!\CPU|INSTR|PC|DOUT\(3) & (!\CPU|INSTR|PC|DOUT\(0) & (!\CPU|INSTR|PC|DOUT\(1) $ (!\CPU|INSTR|PC|DOUT\(2))))) # (\CPU|INSTR|PC|DOUT\(3) & (((\CPU|INSTR|PC|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010100000001111001010000000111100101000000011110010100000001111",
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
-- \ROM|memROM~16_combout\ = (\ROM|memROM~5_combout\ & !\ROM|memROM~15_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~5_combout\,
	datab => \ROM|ALT_INV_memROM~15_combout\,
	combout => \ROM|memROM~16_combout\);

\CPU|LOG_DESVIO|DESV_JUMP[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|LOG_DESVIO|DESV_JUMP[0]~0_combout\ = (\ROM|memROM~1_combout\ & (!\ROM|memROM~12_combout\ & (\ROM|memROM~13_combout\ & \ROM|memROM~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000010000000000000001000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \ROM|ALT_INV_memROM~12_combout\,
	datac => \ROM|ALT_INV_memROM~13_combout\,
	datad => \ROM|ALT_INV_memROM~16_combout\,
	combout => \CPU|LOG_DESVIO|DESV_JUMP[0]~0_combout\);

\CPU|INSTR|PC|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|INSTR|SOMA_CONST|Add0~5_sumout\,
	asdata => \ROM|memROM~2_combout\,
	sload => \CPU|LOG_DESVIO|DESV_JUMP[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|INSTR|PC|DOUT\(0));

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

\ROM|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~3_combout\ = (!\CPU|INSTR|PC|DOUT\(0) & (\CPU|INSTR|PC|DOUT\(1) & (\CPU|INSTR|PC|DOUT\(2) & !\CPU|INSTR|PC|DOUT\(3)))) # (\CPU|INSTR|PC|DOUT\(0) & (((!\CPU|INSTR|PC|DOUT\(2) & \CPU|INSTR|PC|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001010000000000100101000000000010010100000000001001010000",
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

\CPU|INSTR|PC|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|INSTR|SOMA_CONST|Add0~9_sumout\,
	asdata => \ROM|memROM~4_combout\,
	sload => \CPU|LOG_DESVIO|DESV_JUMP[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|INSTR|PC|DOUT\(1));

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

\ROM|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~6_combout\ = ( \ROM|memROM~5_combout\ & ( (\CPU|INSTR|PC|DOUT\(0) & (\CPU|INSTR|PC|DOUT\(1) & (\CPU|INSTR|PC|DOUT\(2) & !\CPU|INSTR|PC|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010000000000000000000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|PC|ALT_INV_DOUT\(0),
	datab => \CPU|INSTR|PC|ALT_INV_DOUT\(1),
	datac => \CPU|INSTR|PC|ALT_INV_DOUT\(2),
	datad => \CPU|INSTR|PC|ALT_INV_DOUT\(3),
	datae => \ROM|ALT_INV_memROM~5_combout\,
	combout => \ROM|memROM~6_combout\);

\CPU|INSTR|PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|INSTR|SOMA_CONST|Add0~13_sumout\,
	asdata => \ROM|memROM~6_combout\,
	sload => \CPU|LOG_DESVIO|DESV_JUMP[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|INSTR|PC|DOUT\(2));

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

\ROM|memROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~7_combout\ = (\CPU|INSTR|PC|DOUT\(0) & (!\CPU|INSTR|PC|DOUT\(2) & (\CPU|INSTR|PC|DOUT\(3) & \ROM|memROM~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000010000000000000001000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|PC|ALT_INV_DOUT\(0),
	datab => \CPU|INSTR|PC|ALT_INV_DOUT\(2),
	datac => \CPU|INSTR|PC|ALT_INV_DOUT\(3),
	datad => \ROM|ALT_INV_memROM~5_combout\,
	combout => \ROM|memROM~7_combout\);

\CPU|INSTR|PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|INSTR|SOMA_CONST|Add0~17_sumout\,
	asdata => \ROM|memROM~7_combout\,
	sload => \CPU|LOG_DESVIO|DESV_JUMP[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|INSTR|PC|DOUT\(3));

\CPU|INSTR|SOMA_CONST|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|INSTR|SOMA_CONST|Add0~21_sumout\ = SUM(( \CPU|INSTR|PC|DOUT\(4) ) + ( GND ) + ( \CPU|INSTR|SOMA_CONST|Add0~18\ ))
-- \CPU|INSTR|SOMA_CONST|Add0~22\ = CARRY(( \CPU|INSTR|PC|DOUT\(4) ) + ( GND ) + ( \CPU|INSTR|SOMA_CONST|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|INSTR|PC|ALT_INV_DOUT\(4),
	cin => \CPU|INSTR|SOMA_CONST|Add0~18\,
	sumout => \CPU|INSTR|SOMA_CONST|Add0~21_sumout\,
	cout => \CPU|INSTR|SOMA_CONST|Add0~22\);

\CPU|INSTR|PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|INSTR|SOMA_CONST|Add0~21_sumout\,
	asdata => \ROM|memROM~6_combout\,
	sload => \CPU|LOG_DESVIO|DESV_JUMP[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|INSTR|PC|DOUT\(4));

\CPU|INSTR|SOMA_CONST|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|INSTR|SOMA_CONST|Add0~25_sumout\ = SUM(( \CPU|INSTR|PC|DOUT\(5) ) + ( GND ) + ( \CPU|INSTR|SOMA_CONST|Add0~22\ ))
-- \CPU|INSTR|SOMA_CONST|Add0~26\ = CARRY(( \CPU|INSTR|PC|DOUT\(5) ) + ( GND ) + ( \CPU|INSTR|SOMA_CONST|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|INSTR|PC|ALT_INV_DOUT\(5),
	cin => \CPU|INSTR|SOMA_CONST|Add0~22\,
	sumout => \CPU|INSTR|SOMA_CONST|Add0~25_sumout\,
	cout => \CPU|INSTR|SOMA_CONST|Add0~26\);

\ROM|memROM~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~8_combout\ = ( \ROM|memROM~5_combout\ & ( (\CPU|INSTR|PC|DOUT\(0) & (!\CPU|INSTR|PC|DOUT\(1) & (!\CPU|INSTR|PC|DOUT\(2) & \CPU|INSTR|PC|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000100000000000000000000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|PC|ALT_INV_DOUT\(0),
	datab => \CPU|INSTR|PC|ALT_INV_DOUT\(1),
	datac => \CPU|INSTR|PC|ALT_INV_DOUT\(2),
	datad => \CPU|INSTR|PC|ALT_INV_DOUT\(3),
	datae => \ROM|ALT_INV_memROM~5_combout\,
	combout => \ROM|memROM~8_combout\);

\CPU|INSTR|PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|INSTR|SOMA_CONST|Add0~25_sumout\,
	asdata => \ROM|memROM~8_combout\,
	sload => \CPU|LOG_DESVIO|DESV_JUMP[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|INSTR|PC|DOUT\(5));

\CPU|INSTR|SOMA_CONST|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|INSTR|SOMA_CONST|Add0~29_sumout\ = SUM(( \CPU|INSTR|PC|DOUT\(6) ) + ( GND ) + ( \CPU|INSTR|SOMA_CONST|Add0~26\ ))
-- \CPU|INSTR|SOMA_CONST|Add0~30\ = CARRY(( \CPU|INSTR|PC|DOUT\(6) ) + ( GND ) + ( \CPU|INSTR|SOMA_CONST|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|INSTR|PC|ALT_INV_DOUT\(6),
	cin => \CPU|INSTR|SOMA_CONST|Add0~26\,
	sumout => \CPU|INSTR|SOMA_CONST|Add0~29_sumout\,
	cout => \CPU|INSTR|SOMA_CONST|Add0~30\);

\CPU|INSTR|PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|INSTR|SOMA_CONST|Add0~29_sumout\,
	asdata => \ROM|memROM~6_combout\,
	sload => \CPU|LOG_DESVIO|DESV_JUMP[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|INSTR|PC|DOUT\(6));

\CPU|INSTR|SOMA_CONST|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|INSTR|SOMA_CONST|Add0~33_sumout\ = SUM(( \CPU|INSTR|PC|DOUT\(7) ) + ( GND ) + ( \CPU|INSTR|SOMA_CONST|Add0~30\ ))
-- \CPU|INSTR|SOMA_CONST|Add0~34\ = CARRY(( \CPU|INSTR|PC|DOUT\(7) ) + ( GND ) + ( \CPU|INSTR|SOMA_CONST|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|INSTR|PC|ALT_INV_DOUT\(7),
	cin => \CPU|INSTR|SOMA_CONST|Add0~30\,
	sumout => \CPU|INSTR|SOMA_CONST|Add0~33_sumout\,
	cout => \CPU|INSTR|SOMA_CONST|Add0~34\);

\CPU|INSTR|PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|INSTR|SOMA_CONST|Add0~33_sumout\,
	asdata => \ROM|memROM~8_combout\,
	sload => \CPU|LOG_DESVIO|DESV_JUMP[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|INSTR|PC|DOUT\(7));

\CPU|INSTR|SOMA_CONST|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|INSTR|SOMA_CONST|Add0~1_sumout\ = SUM(( \CPU|INSTR|PC|DOUT\(8) ) + ( GND ) + ( \CPU|INSTR|SOMA_CONST|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|INSTR|PC|ALT_INV_DOUT\(8),
	cin => \CPU|INSTR|SOMA_CONST|Add0~34\,
	sumout => \CPU|INSTR|SOMA_CONST|Add0~1_sumout\);

\ROM|memROM~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~9_combout\ = (!\CPU|INSTR|PC|DOUT\(2) & (!\CPU|INSTR|PC|DOUT\(0) & ((\CPU|INSTR|PC|DOUT\(3))))) # (\CPU|INSTR|PC|DOUT\(2) & (!\CPU|INSTR|PC|DOUT\(3) & (!\CPU|INSTR|PC|DOUT\(0) $ (!\CPU|INSTR|PC|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011010100000000001101010000000000110101000000000011010100000",
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
-- \ROM|memROM~10_combout\ = (\ROM|memROM~5_combout\ & \ROM|memROM~9_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~5_combout\,
	datab => \ROM|ALT_INV_memROM~9_combout\,
	combout => \ROM|memROM~10_combout\);

\CPU|INSTR|PC|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|INSTR|SOMA_CONST|Add0~1_sumout\,
	asdata => \ROM|memROM~10_combout\,
	sload => \CPU|LOG_DESVIO|DESV_JUMP[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|INSTR|PC|DOUT\(8));

\ROM|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~0_combout\ = (!\CPU|INSTR|PC|DOUT\(0) & (!\CPU|INSTR|PC|DOUT\(1) & (!\CPU|INSTR|PC|DOUT\(2) & !\CPU|INSTR|PC|DOUT\(3)))) # (\CPU|INSTR|PC|DOUT\(0) & ((!\CPU|INSTR|PC|DOUT\(2) & (\CPU|INSTR|PC|DOUT\(1))) # (\CPU|INSTR|PC|DOUT\(2) & 
-- ((!\CPU|INSTR|PC|DOUT\(3))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001010100010000100101010001000010010101000100001001010100010000",
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

\CPU|DECODER|Equal10~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER|Equal10~1_combout\ = (!\ROM|memROM~12_combout\ & (!\ROM|memROM~14_combout\ & \ROM|memROM~16_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000001000000010000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~12_combout\,
	datab => \ROM|ALT_INV_memROM~14_combout\,
	datac => \ROM|ALT_INV_memROM~16_combout\,
	combout => \CPU|DECODER|Equal10~1_combout\);

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

\RAM|ram~558\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~558_combout\ = ( \ROM|memROM~1_combout\ & ( !\CPU|INSTR|PC|DOUT\(8) & ( (!\CPU|INSTR|PC|DOUT\(2) & ((!\CPU|INSTR|PC|DOUT\(3) & (!\CPU|INSTR|PC|DOUT\(1) & \CPU|INSTR|PC|DOUT\(0))) # (\CPU|INSTR|PC|DOUT\(3) & ((!\CPU|INSTR|PC|DOUT\(0)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010001001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|PC|ALT_INV_DOUT\(3),
	datab => \CPU|INSTR|PC|ALT_INV_DOUT\(2),
	datac => \CPU|INSTR|PC|ALT_INV_DOUT\(1),
	datad => \CPU|INSTR|PC|ALT_INV_DOUT\(0),
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \CPU|INSTR|PC|ALT_INV_DOUT\(8),
	combout => \RAM|ram~558_combout\);

\RAM|ram~15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG_A|DOUT\(0),
	ena => \RAM|ram~558_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~15_q\);

\RAM|ram~557\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~557_combout\ = ( \ROM|memROM~1_combout\ & ( !\CPU|INSTR|PC|DOUT\(8) & ( (!\CPU|INSTR|PC|DOUT\(3) & (\CPU|INSTR|PC|DOUT\(0) & (!\CPU|INSTR|PC|DOUT\(2) $ (!\CPU|INSTR|PC|DOUT\(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000010100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|PC|ALT_INV_DOUT\(3),
	datab => \CPU|INSTR|PC|ALT_INV_DOUT\(2),
	datac => \CPU|INSTR|PC|ALT_INV_DOUT\(1),
	datad => \CPU|INSTR|PC|ALT_INV_DOUT\(0),
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \CPU|INSTR|PC|ALT_INV_DOUT\(8),
	combout => \RAM|ram~557_combout\);

\RAM|ram~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG_A|DOUT\(0),
	ena => \RAM|ram~557_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~23_q\);

\RAM|ram~527\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~527_combout\ = ( \ROM|memROM~2_combout\ & ( !\ROM|memROM~7_combout\ & ( \RAM|ram~23_q\ ) ) ) # ( !\ROM|memROM~2_combout\ & ( !\ROM|memROM~7_combout\ & ( \RAM|ram~15_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~15_q\,
	datab => \RAM|ALT_INV_ram~23_q\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ROM|ALT_INV_memROM~7_combout\,
	combout => \RAM|ram~527_combout\);

\RAM|ram~556\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~556_combout\ = ( \ROM|memROM~1_combout\ & ( !\CPU|INSTR|PC|DOUT\(8) & ( (!\CPU|INSTR|PC|DOUT\(3) & (\CPU|INSTR|PC|DOUT\(2) & (\CPU|INSTR|PC|DOUT\(1) & !\CPU|INSTR|PC|DOUT\(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000100000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|PC|ALT_INV_DOUT\(3),
	datab => \CPU|INSTR|PC|ALT_INV_DOUT\(2),
	datac => \CPU|INSTR|PC|ALT_INV_DOUT\(1),
	datad => \CPU|INSTR|PC|ALT_INV_DOUT\(0),
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \CPU|INSTR|PC|ALT_INV_DOUT\(8),
	combout => \RAM|ram~556_combout\);

\RAM|ram~31\ : dffeas
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
	q => \RAM|ram~31_q\);

\RAM|ram~528\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~528_combout\ = ( !\ROM|memROM~2_combout\ & ( !\ROM|memROM~7_combout\ & ( \RAM|ram~31_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~31_q\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ROM|ALT_INV_memROM~7_combout\,
	combout => \RAM|ram~528_combout\);

\RAM|ram~529\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~529_combout\ = ( !\ROM|memROM~8_combout\ & ( \ROM|memROM~4_combout\ & ( \RAM|ram~528_combout\ ) ) ) # ( !\ROM|memROM~8_combout\ & ( !\ROM|memROM~4_combout\ & ( \RAM|ram~527_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~527_combout\,
	datac => \RAM|ALT_INV_ram~528_combout\,
	datae => \ROM|ALT_INV_memROM~8_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	combout => \RAM|ram~529_combout\);

\RAM|ram~530\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~530_combout\ = (!\ROM|memROM~6_combout\ & \RAM|ram~529_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~6_combout\,
	datac => \RAM|ALT_INV_ram~529_combout\,
	combout => \RAM|ram~530_combout\);

\CPU|ULA1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~1_sumout\ = SUM(( (!\CPU|DECODER|Equal10~1_combout\ & (((\RAM|ram~530_combout\)))) # (\CPU|DECODER|Equal10~1_combout\ & (!\CPU|INSTR|PC|DOUT\(8) & (\ROM|memROM~17_combout\))) ) + ( \CPU|REG_A|DOUT\(0) ) + ( !VCC ))
-- \CPU|ULA1|Add0~2\ = CARRY(( (!\CPU|DECODER|Equal10~1_combout\ & (((\RAM|ram~530_combout\)))) # (\CPU|DECODER|Equal10~1_combout\ & (!\CPU|INSTR|PC|DOUT\(8) & (\ROM|memROM~17_combout\))) ) + ( \CPU|REG_A|DOUT\(0) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal10~1_combout\,
	datab => \CPU|INSTR|PC|ALT_INV_DOUT\(8),
	datac => \ROM|ALT_INV_memROM~17_combout\,
	datad => \RAM|ALT_INV_ram~530_combout\,
	dataf => \CPU|REG_A|ALT_INV_DOUT\(0),
	cin => GND,
	sumout => \CPU|ULA1|Add0~1_sumout\,
	cout => \CPU|ULA1|Add0~2\);

\CPU|DECODER|sinais_controle~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER|sinais_controle~1_combout\ = (!\ROM|memROM~14_combout\ & (!\ROM|memROM~12_combout\ $ (!\ROM|memROM~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100001001000010010000100100001001000010010000100100001001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~12_combout\,
	datab => \ROM|ALT_INV_memROM~14_combout\,
	datac => \ROM|ALT_INV_memROM~16_combout\,
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
-- \CPU|ULA1|Add1~1_sumout\ = SUM(( (!\CPU|DECODER|Equal10~1_combout\ & (((!\RAM|ram~530_combout\)))) # (\CPU|DECODER|Equal10~1_combout\ & (((!\ROM|memROM~17_combout\)) # (\CPU|INSTR|PC|DOUT\(8)))) ) + ( \CPU|REG_A|DOUT\(0) ) + ( \CPU|ULA1|Add1~34_cout\ ))
-- \CPU|ULA1|Add1~2\ = CARRY(( (!\CPU|DECODER|Equal10~1_combout\ & (((!\RAM|ram~530_combout\)))) # (\CPU|DECODER|Equal10~1_combout\ & (((!\ROM|memROM~17_combout\)) # (\CPU|INSTR|PC|DOUT\(8)))) ) + ( \CPU|REG_A|DOUT\(0) ) + ( \CPU|ULA1|Add1~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111101101010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal10~1_combout\,
	datab => \CPU|INSTR|PC|ALT_INV_DOUT\(8),
	datac => \ROM|ALT_INV_memROM~17_combout\,
	datad => \RAM|ALT_INV_ram~530_combout\,
	dataf => \CPU|REG_A|ALT_INV_DOUT\(0),
	cin => \CPU|ULA1|Add1~34_cout\,
	sumout => \CPU|ULA1|Add1~1_sumout\,
	cout => \CPU|ULA1|Add1~2\);

\CPU|ULA1|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[0]~0_combout\ = ( \CPU|ULA1|Add1~1_sumout\ & ( (!\CPU|DECODER|sinais_controle~1_combout\) # ((!\CPU|DECODER|Equal10~1_combout\ & ((\RAM|ram~530_combout\))) # (\CPU|DECODER|Equal10~1_combout\ & (\ROM|memROM~2_combout\))) ) ) # ( 
-- !\CPU|ULA1|Add1~1_sumout\ & ( (\CPU|DECODER|sinais_controle~1_combout\ & ((!\CPU|DECODER|Equal10~1_combout\ & ((\RAM|ram~530_combout\))) # (\CPU|DECODER|Equal10~1_combout\ & (\ROM|memROM~2_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000011101111111110001110100000000000111011111111100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \CPU|DECODER|ALT_INV_Equal10~1_combout\,
	datac => \RAM|ALT_INV_ram~530_combout\,
	datad => \CPU|DECODER|ALT_INV_sinais_controle~1_combout\,
	datae => \CPU|ULA1|ALT_INV_Add1~1_sumout\,
	combout => \CPU|ULA1|saida[0]~0_combout\);

\CPU|DECODER|Equal10~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER|Equal10~2_combout\ = ((!\ROM|memROM~14_combout\) # (\ROM|memROM~16_combout\)) # (\ROM|memROM~12_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101111111011111110111111101111111011111110111111101111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~12_combout\,
	datab => \ROM|ALT_INV_memROM~14_combout\,
	datac => \ROM|ALT_INV_memROM~16_combout\,
	combout => \CPU|DECODER|Equal10~2_combout\);

\CPU|DECODER|sinais_controle~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER|sinais_controle~2_combout\ = !\ROM|memROM~16_combout\ $ (((!\ROM|memROM~12_combout\ & !\ROM|memROM~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111100001111000011110000111100001111000011110000111100001111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~12_combout\,
	datab => \ROM|ALT_INV_memROM~14_combout\,
	datac => \ROM|ALT_INV_memROM~16_combout\,
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
	sload => \CPU|DECODER|Equal10~2_combout\,
	ena => \CPU|DECODER|sinais_controle~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_A|DOUT\(0));

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

\RAM|ram~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG_A|DOUT\(1),
	ena => \RAM|ram~558_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~16_q\);

\RAM|ram~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG_A|DOUT\(1),
	ena => \RAM|ram~557_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~24_q\);

\RAM|ram~531\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~531_combout\ = ( \ROM|memROM~2_combout\ & ( !\ROM|memROM~7_combout\ & ( \RAM|ram~24_q\ ) ) ) # ( !\ROM|memROM~2_combout\ & ( !\ROM|memROM~7_combout\ & ( \RAM|ram~16_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~16_q\,
	datab => \RAM|ALT_INV_ram~24_q\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ROM|ALT_INV_memROM~7_combout\,
	combout => \RAM|ram~531_combout\);

\RAM|ram~32\ : dffeas
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
	q => \RAM|ram~32_q\);

\RAM|ram~532\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~532_combout\ = ( !\ROM|memROM~2_combout\ & ( !\ROM|memROM~7_combout\ & ( \RAM|ram~32_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~32_q\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ROM|ALT_INV_memROM~7_combout\,
	combout => \RAM|ram~532_combout\);

\RAM|ram~533\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~533_combout\ = ( !\ROM|memROM~8_combout\ & ( \ROM|memROM~4_combout\ & ( \RAM|ram~532_combout\ ) ) ) # ( !\ROM|memROM~8_combout\ & ( !\ROM|memROM~4_combout\ & ( \RAM|ram~531_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~531_combout\,
	datac => \RAM|ALT_INV_ram~532_combout\,
	datae => \ROM|ALT_INV_memROM~8_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	combout => \RAM|ram~533_combout\);

\RAM|ram~534\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~534_combout\ = (!\ROM|memROM~6_combout\ & \RAM|ram~533_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~6_combout\,
	datac => \RAM|ALT_INV_ram~533_combout\,
	combout => \RAM|ram~534_combout\);

\CPU|ULA1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~5_sumout\ = SUM(( (!\CPU|DECODER|Equal10~1_combout\ & (((\RAM|ram~534_combout\)))) # (\CPU|DECODER|Equal10~1_combout\ & (!\CPU|INSTR|PC|DOUT\(8) & (\ROM|memROM~18_combout\))) ) + ( \CPU|REG_A|DOUT\(1) ) + ( \CPU|ULA1|Add0~2\ ))
-- \CPU|ULA1|Add0~6\ = CARRY(( (!\CPU|DECODER|Equal10~1_combout\ & (((\RAM|ram~534_combout\)))) # (\CPU|DECODER|Equal10~1_combout\ & (!\CPU|INSTR|PC|DOUT\(8) & (\ROM|memROM~18_combout\))) ) + ( \CPU|REG_A|DOUT\(1) ) + ( \CPU|ULA1|Add0~2\ ))

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
	datad => \RAM|ALT_INV_ram~534_combout\,
	dataf => \CPU|REG_A|ALT_INV_DOUT\(1),
	cin => \CPU|ULA1|Add0~2\,
	sumout => \CPU|ULA1|Add0~5_sumout\,
	cout => \CPU|ULA1|Add0~6\);

\CPU|ULA1|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~5_sumout\ = SUM(( (!\CPU|DECODER|Equal10~1_combout\ & (((!\RAM|ram~534_combout\)))) # (\CPU|DECODER|Equal10~1_combout\ & (((!\ROM|memROM~18_combout\)) # (\CPU|INSTR|PC|DOUT\(8)))) ) + ( \CPU|REG_A|DOUT\(1) ) + ( \CPU|ULA1|Add1~2\ ))
-- \CPU|ULA1|Add1~6\ = CARRY(( (!\CPU|DECODER|Equal10~1_combout\ & (((!\RAM|ram~534_combout\)))) # (\CPU|DECODER|Equal10~1_combout\ & (((!\ROM|memROM~18_combout\)) # (\CPU|INSTR|PC|DOUT\(8)))) ) + ( \CPU|REG_A|DOUT\(1) ) + ( \CPU|ULA1|Add1~2\ ))

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
	datad => \RAM|ALT_INV_ram~534_combout\,
	dataf => \CPU|REG_A|ALT_INV_DOUT\(1),
	cin => \CPU|ULA1|Add1~2\,
	sumout => \CPU|ULA1|Add1~5_sumout\,
	cout => \CPU|ULA1|Add1~6\);

\CPU|ULA1|saida[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[1]~1_combout\ = ( \CPU|ULA1|Add1~5_sumout\ & ( (!\CPU|DECODER|sinais_controle~1_combout\) # ((!\CPU|DECODER|Equal10~1_combout\ & ((\RAM|ram~534_combout\))) # (\CPU|DECODER|Equal10~1_combout\ & (\ROM|memROM~4_combout\))) ) ) # ( 
-- !\CPU|ULA1|Add1~5_sumout\ & ( (\CPU|DECODER|sinais_controle~1_combout\ & ((!\CPU|DECODER|Equal10~1_combout\ & ((\RAM|ram~534_combout\))) # (\CPU|DECODER|Equal10~1_combout\ & (\ROM|memROM~4_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100001101111100011111110100000001000011011111000111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~4_combout\,
	datab => \CPU|DECODER|ALT_INV_Equal10~1_combout\,
	datac => \CPU|DECODER|ALT_INV_sinais_controle~1_combout\,
	datad => \RAM|ALT_INV_ram~534_combout\,
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
	sload => \CPU|DECODER|Equal10~2_combout\,
	ena => \CPU|DECODER|sinais_controle~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_A|DOUT\(1));

\RAM|ram~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG_A|DOUT\(2),
	ena => \RAM|ram~558_combout\,
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
	ena => \RAM|ram~557_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~25_q\);

\RAM|ram~535\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~535_combout\ = ( \ROM|memROM~2_combout\ & ( !\ROM|memROM~7_combout\ & ( \RAM|ram~25_q\ ) ) ) # ( !\ROM|memROM~2_combout\ & ( !\ROM|memROM~7_combout\ & ( \RAM|ram~17_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~17_q\,
	datab => \RAM|ALT_INV_ram~25_q\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ROM|ALT_INV_memROM~7_combout\,
	combout => \RAM|ram~535_combout\);

\RAM|ram~33\ : dffeas
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
	q => \RAM|ram~33_q\);

\RAM|ram~536\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~536_combout\ = ( !\ROM|memROM~2_combout\ & ( !\ROM|memROM~7_combout\ & ( \RAM|ram~33_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~33_q\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ROM|ALT_INV_memROM~7_combout\,
	combout => \RAM|ram~536_combout\);

\RAM|ram~537\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~537_combout\ = ( !\ROM|memROM~8_combout\ & ( \ROM|memROM~4_combout\ & ( \RAM|ram~536_combout\ ) ) ) # ( !\ROM|memROM~8_combout\ & ( !\ROM|memROM~4_combout\ & ( \RAM|ram~535_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~535_combout\,
	datac => \RAM|ALT_INV_ram~536_combout\,
	datae => \ROM|ALT_INV_memROM~8_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	combout => \RAM|ram~537_combout\);

\CPU|ULA1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~9_sumout\ = SUM(( (!\CPU|DECODER|Equal10~1_combout\ & (!\ROM|memROM~6_combout\ & \RAM|ram~537_combout\)) # (\CPU|DECODER|Equal10~1_combout\ & (\ROM|memROM~6_combout\)) ) + ( \CPU|REG_A|DOUT\(2) ) + ( \CPU|ULA1|Add0~6\ ))
-- \CPU|ULA1|Add0~10\ = CARRY(( (!\CPU|DECODER|Equal10~1_combout\ & (!\ROM|memROM~6_combout\ & \RAM|ram~537_combout\)) # (\CPU|DECODER|Equal10~1_combout\ & (\ROM|memROM~6_combout\)) ) + ( \CPU|REG_A|DOUT\(2) ) + ( \CPU|ULA1|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000001000110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal10~1_combout\,
	datab => \ROM|ALT_INV_memROM~6_combout\,
	datad => \RAM|ALT_INV_ram~537_combout\,
	dataf => \CPU|REG_A|ALT_INV_DOUT\(2),
	cin => \CPU|ULA1|Add0~6\,
	sumout => \CPU|ULA1|Add0~9_sumout\,
	cout => \CPU|ULA1|Add0~10\);

\RAM|ram~538\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~538_combout\ = (!\ROM|memROM~6_combout\ & \RAM|ram~537_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~6_combout\,
	datac => \RAM|ALT_INV_ram~537_combout\,
	combout => \RAM|ram~538_combout\);

\CPU|ULA1|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~9_sumout\ = SUM(( (!\CPU|DECODER|Equal10~1_combout\ & ((!\RAM|ram~538_combout\))) # (\CPU|DECODER|Equal10~1_combout\ & (!\ROM|memROM~6_combout\)) ) + ( \CPU|REG_A|DOUT\(2) ) + ( \CPU|ULA1|Add1~6\ ))
-- \CPU|ULA1|Add1~10\ = CARRY(( (!\CPU|DECODER|Equal10~1_combout\ & ((!\RAM|ram~538_combout\))) # (\CPU|DECODER|Equal10~1_combout\ & (!\ROM|memROM~6_combout\)) ) + ( \CPU|REG_A|DOUT\(2) ) + ( \CPU|ULA1|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111101001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal10~1_combout\,
	datac => \ROM|ALT_INV_memROM~6_combout\,
	datad => \RAM|ALT_INV_ram~538_combout\,
	dataf => \CPU|REG_A|ALT_INV_DOUT\(2),
	cin => \CPU|ULA1|Add1~6\,
	sumout => \CPU|ULA1|Add1~9_sumout\,
	cout => \CPU|ULA1|Add1~10\);

\CPU|ULA1|saida[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[2]~2_combout\ = ( \CPU|ULA1|Add1~9_sumout\ & ( (!\CPU|DECODER|sinais_controle~1_combout\) # ((!\CPU|DECODER|Equal10~1_combout\ & ((\RAM|ram~538_combout\))) # (\CPU|DECODER|Equal10~1_combout\ & (\ROM|memROM~6_combout\))) ) ) # ( 
-- !\CPU|ULA1|Add1~9_sumout\ & ( (\CPU|DECODER|sinais_controle~1_combout\ & ((!\CPU|DECODER|Equal10~1_combout\ & ((\RAM|ram~538_combout\))) # (\CPU|DECODER|Equal10~1_combout\ & (\ROM|memROM~6_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100001011111100011111101100000001000010111111000111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal10~1_combout\,
	datab => \ROM|ALT_INV_memROM~6_combout\,
	datac => \CPU|DECODER|ALT_INV_sinais_controle~1_combout\,
	datad => \RAM|ALT_INV_ram~538_combout\,
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
	ena => \CPU|DECODER|sinais_controle~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_A|DOUT\(2));

\RAM|ram~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG_A|DOUT\(3),
	ena => \RAM|ram~558_combout\,
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
	ena => \RAM|ram~557_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~26_q\);

\RAM|ram~539\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~539_combout\ = ( \ROM|memROM~2_combout\ & ( !\ROM|memROM~7_combout\ & ( \RAM|ram~26_q\ ) ) ) # ( !\ROM|memROM~2_combout\ & ( !\ROM|memROM~7_combout\ & ( \RAM|ram~18_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~18_q\,
	datab => \RAM|ALT_INV_ram~26_q\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ROM|ALT_INV_memROM~7_combout\,
	combout => \RAM|ram~539_combout\);

\RAM|ram~34\ : dffeas
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
	q => \RAM|ram~34_q\);

\RAM|ram~540\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~540_combout\ = ( !\ROM|memROM~2_combout\ & ( !\ROM|memROM~7_combout\ & ( \RAM|ram~34_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~34_q\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ROM|ALT_INV_memROM~7_combout\,
	combout => \RAM|ram~540_combout\);

\RAM|ram~541\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~541_combout\ = ( !\ROM|memROM~8_combout\ & ( \ROM|memROM~4_combout\ & ( \RAM|ram~540_combout\ ) ) ) # ( !\ROM|memROM~8_combout\ & ( !\ROM|memROM~4_combout\ & ( \RAM|ram~539_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~539_combout\,
	datac => \RAM|ALT_INV_ram~540_combout\,
	datae => \ROM|ALT_INV_memROM~8_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	combout => \RAM|ram~541_combout\);

\RAM|ram~542\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~542_combout\ = (!\ROM|memROM~6_combout\ & \RAM|ram~541_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~6_combout\,
	datac => \RAM|ALT_INV_ram~541_combout\,
	combout => \RAM|ram~542_combout\);

\CPU|ULA1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~13_sumout\ = SUM(( (!\CPU|DECODER|Equal10~1_combout\ & ((\RAM|ram~542_combout\))) # (\CPU|DECODER|Equal10~1_combout\ & (\ROM|memROM~7_combout\)) ) + ( \CPU|REG_A|DOUT\(3) ) + ( \CPU|ULA1|Add0~10\ ))
-- \CPU|ULA1|Add0~14\ = CARRY(( (!\CPU|DECODER|Equal10~1_combout\ & ((\RAM|ram~542_combout\))) # (\CPU|DECODER|Equal10~1_combout\ & (\ROM|memROM~7_combout\)) ) + ( \CPU|REG_A|DOUT\(3) ) + ( \CPU|ULA1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal10~1_combout\,
	datac => \ROM|ALT_INV_memROM~7_combout\,
	datad => \RAM|ALT_INV_ram~542_combout\,
	dataf => \CPU|REG_A|ALT_INV_DOUT\(3),
	cin => \CPU|ULA1|Add0~10\,
	sumout => \CPU|ULA1|Add0~13_sumout\,
	cout => \CPU|ULA1|Add0~14\);

\CPU|ULA1|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~13_sumout\ = SUM(( (!\CPU|DECODER|Equal10~1_combout\ & ((!\RAM|ram~542_combout\))) # (\CPU|DECODER|Equal10~1_combout\ & (!\ROM|memROM~7_combout\)) ) + ( \CPU|REG_A|DOUT\(3) ) + ( \CPU|ULA1|Add1~10\ ))
-- \CPU|ULA1|Add1~14\ = CARRY(( (!\CPU|DECODER|Equal10~1_combout\ & ((!\RAM|ram~542_combout\))) # (\CPU|DECODER|Equal10~1_combout\ & (!\ROM|memROM~7_combout\)) ) + ( \CPU|REG_A|DOUT\(3) ) + ( \CPU|ULA1|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111101001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal10~1_combout\,
	datac => \ROM|ALT_INV_memROM~7_combout\,
	datad => \RAM|ALT_INV_ram~542_combout\,
	dataf => \CPU|REG_A|ALT_INV_DOUT\(3),
	cin => \CPU|ULA1|Add1~10\,
	sumout => \CPU|ULA1|Add1~13_sumout\,
	cout => \CPU|ULA1|Add1~14\);

\CPU|ULA1|saida[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[3]~3_combout\ = ( \CPU|ULA1|Add1~13_sumout\ & ( (!\CPU|DECODER|sinais_controle~1_combout\) # ((!\CPU|DECODER|Equal10~1_combout\ & ((\RAM|ram~542_combout\))) # (\CPU|DECODER|Equal10~1_combout\ & (\ROM|memROM~7_combout\))) ) ) # ( 
-- !\CPU|ULA1|Add1~13_sumout\ & ( (\CPU|DECODER|sinais_controle~1_combout\ & ((!\CPU|DECODER|Equal10~1_combout\ & ((\RAM|ram~542_combout\))) # (\CPU|DECODER|Equal10~1_combout\ & (\ROM|memROM~7_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100001101111100011111110100000001000011011111000111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~7_combout\,
	datab => \CPU|DECODER|ALT_INV_Equal10~1_combout\,
	datac => \CPU|DECODER|ALT_INV_sinais_controle~1_combout\,
	datad => \RAM|ALT_INV_ram~542_combout\,
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
	ena => \CPU|DECODER|sinais_controle~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_A|DOUT\(3));

\RAM|ram~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG_A|DOUT\(4),
	ena => \RAM|ram~558_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~19_q\);

\RAM|ram~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG_A|DOUT\(4),
	ena => \RAM|ram~557_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~27_q\);

\RAM|ram~543\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~543_combout\ = ( \ROM|memROM~2_combout\ & ( !\ROM|memROM~7_combout\ & ( \RAM|ram~27_q\ ) ) ) # ( !\ROM|memROM~2_combout\ & ( !\ROM|memROM~7_combout\ & ( \RAM|ram~19_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~19_q\,
	datab => \RAM|ALT_INV_ram~27_q\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ROM|ALT_INV_memROM~7_combout\,
	combout => \RAM|ram~543_combout\);

\RAM|ram~35\ : dffeas
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
	q => \RAM|ram~35_q\);

\RAM|ram~544\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~544_combout\ = ( !\ROM|memROM~2_combout\ & ( !\ROM|memROM~7_combout\ & ( \RAM|ram~35_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~35_q\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ROM|ALT_INV_memROM~7_combout\,
	combout => \RAM|ram~544_combout\);

\RAM|ram~545\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~545_combout\ = ( !\ROM|memROM~8_combout\ & ( \ROM|memROM~4_combout\ & ( \RAM|ram~544_combout\ ) ) ) # ( !\ROM|memROM~8_combout\ & ( !\ROM|memROM~4_combout\ & ( \RAM|ram~543_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~543_combout\,
	datac => \RAM|ALT_INV_ram~544_combout\,
	datae => \ROM|ALT_INV_memROM~8_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	combout => \RAM|ram~545_combout\);

\CPU|ULA1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~17_sumout\ = SUM(( (!\CPU|DECODER|Equal10~1_combout\ & (!\ROM|memROM~6_combout\ & \RAM|ram~545_combout\)) # (\CPU|DECODER|Equal10~1_combout\ & (\ROM|memROM~6_combout\)) ) + ( \CPU|REG_A|DOUT\(4) ) + ( \CPU|ULA1|Add0~14\ ))
-- \CPU|ULA1|Add0~18\ = CARRY(( (!\CPU|DECODER|Equal10~1_combout\ & (!\ROM|memROM~6_combout\ & \RAM|ram~545_combout\)) # (\CPU|DECODER|Equal10~1_combout\ & (\ROM|memROM~6_combout\)) ) + ( \CPU|REG_A|DOUT\(4) ) + ( \CPU|ULA1|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000001000110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal10~1_combout\,
	datab => \ROM|ALT_INV_memROM~6_combout\,
	datad => \RAM|ALT_INV_ram~545_combout\,
	dataf => \CPU|REG_A|ALT_INV_DOUT\(4),
	cin => \CPU|ULA1|Add0~14\,
	sumout => \CPU|ULA1|Add0~17_sumout\,
	cout => \CPU|ULA1|Add0~18\);

\CPU|ULA1|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~17_sumout\ = SUM(( (!\CPU|DECODER|Equal10~1_combout\ & ((!\RAM|ram~545_combout\) # (\ROM|memROM~6_combout\))) # (\CPU|DECODER|Equal10~1_combout\ & (!\ROM|memROM~6_combout\)) ) + ( \CPU|REG_A|DOUT\(4) ) + ( \CPU|ULA1|Add1~14\ ))
-- \CPU|ULA1|Add1~18\ = CARRY(( (!\CPU|DECODER|Equal10~1_combout\ & ((!\RAM|ram~545_combout\) # (\ROM|memROM~6_combout\))) # (\CPU|DECODER|Equal10~1_combout\ & (!\ROM|memROM~6_combout\)) ) + ( \CPU|REG_A|DOUT\(4) ) + ( \CPU|ULA1|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001110111001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal10~1_combout\,
	datab => \ROM|ALT_INV_memROM~6_combout\,
	datad => \RAM|ALT_INV_ram~545_combout\,
	dataf => \CPU|REG_A|ALT_INV_DOUT\(4),
	cin => \CPU|ULA1|Add1~14\,
	sumout => \CPU|ULA1|Add1~17_sumout\,
	cout => \CPU|ULA1|Add1~18\);

\CPU|ULA1|saida[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[4]~4_combout\ = ( \RAM|ram~545_combout\ & ( \CPU|ULA1|Add1~17_sumout\ & ( (!\CPU|DECODER|sinais_controle~1_combout\) # (!\CPU|DECODER|Equal10~1_combout\ $ (\ROM|memROM~6_combout\)) ) ) ) # ( !\RAM|ram~545_combout\ & ( 
-- \CPU|ULA1|Add1~17_sumout\ & ( (!\CPU|DECODER|sinais_controle~1_combout\) # ((\CPU|DECODER|Equal10~1_combout\ & \ROM|memROM~6_combout\)) ) ) ) # ( \RAM|ram~545_combout\ & ( !\CPU|ULA1|Add1~17_sumout\ & ( (\CPU|DECODER|sinais_controle~1_combout\ & 
-- (!\CPU|DECODER|Equal10~1_combout\ $ (\ROM|memROM~6_combout\))) ) ) ) # ( !\RAM|ram~545_combout\ & ( !\CPU|ULA1|Add1~17_sumout\ & ( (\CPU|DECODER|Equal10~1_combout\ & (\ROM|memROM~6_combout\ & \CPU|DECODER|sinais_controle~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000010010000100111110001111100011111100111111001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal10~1_combout\,
	datab => \ROM|ALT_INV_memROM~6_combout\,
	datac => \CPU|DECODER|ALT_INV_sinais_controle~1_combout\,
	datae => \RAM|ALT_INV_ram~545_combout\,
	dataf => \CPU|ULA1|ALT_INV_Add1~17_sumout\,
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
	ena => \CPU|DECODER|sinais_controle~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_A|DOUT\(4));

\RAM|ram~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG_A|DOUT\(5),
	ena => \RAM|ram~558_combout\,
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
	ena => \RAM|ram~557_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~28_q\);

\RAM|ram~546\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~546_combout\ = ( \ROM|memROM~2_combout\ & ( !\ROM|memROM~7_combout\ & ( \RAM|ram~28_q\ ) ) ) # ( !\ROM|memROM~2_combout\ & ( !\ROM|memROM~7_combout\ & ( \RAM|ram~20_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~20_q\,
	datab => \RAM|ALT_INV_ram~28_q\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ROM|ALT_INV_memROM~7_combout\,
	combout => \RAM|ram~546_combout\);

\RAM|ram~36\ : dffeas
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
	q => \RAM|ram~36_q\);

\RAM|ram~547\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~547_combout\ = ( !\ROM|memROM~2_combout\ & ( !\ROM|memROM~7_combout\ & ( \RAM|ram~36_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~36_q\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ROM|ALT_INV_memROM~7_combout\,
	combout => \RAM|ram~547_combout\);

\RAM|ram~548\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~548_combout\ = ( !\ROM|memROM~8_combout\ & ( \ROM|memROM~4_combout\ & ( \RAM|ram~547_combout\ ) ) ) # ( !\ROM|memROM~8_combout\ & ( !\ROM|memROM~4_combout\ & ( \RAM|ram~546_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~546_combout\,
	datac => \RAM|ALT_INV_ram~547_combout\,
	datae => \ROM|ALT_INV_memROM~8_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	combout => \RAM|ram~548_combout\);

\RAM|ram~549\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~549_combout\ = (!\ROM|memROM~6_combout\ & \RAM|ram~548_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~6_combout\,
	datac => \RAM|ALT_INV_ram~548_combout\,
	combout => \RAM|ram~549_combout\);

\CPU|ULA1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~21_sumout\ = SUM(( (!\CPU|DECODER|Equal10~1_combout\ & ((\RAM|ram~549_combout\))) # (\CPU|DECODER|Equal10~1_combout\ & (\ROM|memROM~8_combout\)) ) + ( \CPU|REG_A|DOUT\(5) ) + ( \CPU|ULA1|Add0~18\ ))
-- \CPU|ULA1|Add0~22\ = CARRY(( (!\CPU|DECODER|Equal10~1_combout\ & ((\RAM|ram~549_combout\))) # (\CPU|DECODER|Equal10~1_combout\ & (\ROM|memROM~8_combout\)) ) + ( \CPU|REG_A|DOUT\(5) ) + ( \CPU|ULA1|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal10~1_combout\,
	datac => \ROM|ALT_INV_memROM~8_combout\,
	datad => \RAM|ALT_INV_ram~549_combout\,
	dataf => \CPU|REG_A|ALT_INV_DOUT\(5),
	cin => \CPU|ULA1|Add0~18\,
	sumout => \CPU|ULA1|Add0~21_sumout\,
	cout => \CPU|ULA1|Add0~22\);

\CPU|ULA1|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~21_sumout\ = SUM(( (!\CPU|DECODER|Equal10~1_combout\ & ((!\RAM|ram~549_combout\))) # (\CPU|DECODER|Equal10~1_combout\ & (!\ROM|memROM~8_combout\)) ) + ( \CPU|REG_A|DOUT\(5) ) + ( \CPU|ULA1|Add1~18\ ))
-- \CPU|ULA1|Add1~22\ = CARRY(( (!\CPU|DECODER|Equal10~1_combout\ & ((!\RAM|ram~549_combout\))) # (\CPU|DECODER|Equal10~1_combout\ & (!\ROM|memROM~8_combout\)) ) + ( \CPU|REG_A|DOUT\(5) ) + ( \CPU|ULA1|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111101001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal10~1_combout\,
	datac => \ROM|ALT_INV_memROM~8_combout\,
	datad => \RAM|ALT_INV_ram~549_combout\,
	dataf => \CPU|REG_A|ALT_INV_DOUT\(5),
	cin => \CPU|ULA1|Add1~18\,
	sumout => \CPU|ULA1|Add1~21_sumout\,
	cout => \CPU|ULA1|Add1~22\);

\CPU|ULA1|saida[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[5]~5_combout\ = ( \CPU|ULA1|Add1~21_sumout\ & ( (!\CPU|DECODER|sinais_controle~1_combout\) # ((!\CPU|DECODER|Equal10~1_combout\ & ((\RAM|ram~549_combout\))) # (\CPU|DECODER|Equal10~1_combout\ & (\ROM|memROM~8_combout\))) ) ) # ( 
-- !\CPU|ULA1|Add1~21_sumout\ & ( (\CPU|DECODER|sinais_controle~1_combout\ & ((!\CPU|DECODER|Equal10~1_combout\ & ((\RAM|ram~549_combout\))) # (\CPU|DECODER|Equal10~1_combout\ & (\ROM|memROM~8_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100001101111100011111110100000001000011011111000111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~8_combout\,
	datab => \CPU|DECODER|ALT_INV_Equal10~1_combout\,
	datac => \CPU|DECODER|ALT_INV_sinais_controle~1_combout\,
	datad => \RAM|ALT_INV_ram~549_combout\,
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
	sload => \CPU|DECODER|Equal10~2_combout\,
	ena => \CPU|DECODER|sinais_controle~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_A|DOUT\(5));

\RAM|ram~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG_A|DOUT\(6),
	ena => \RAM|ram~558_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~21_q\);

\RAM|ram~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG_A|DOUT\(6),
	ena => \RAM|ram~557_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~29_q\);

\RAM|ram~550\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~550_combout\ = ( \ROM|memROM~2_combout\ & ( !\ROM|memROM~7_combout\ & ( \RAM|ram~29_q\ ) ) ) # ( !\ROM|memROM~2_combout\ & ( !\ROM|memROM~7_combout\ & ( \RAM|ram~21_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~21_q\,
	datab => \RAM|ALT_INV_ram~29_q\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ROM|ALT_INV_memROM~7_combout\,
	combout => \RAM|ram~550_combout\);

\RAM|ram~37\ : dffeas
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
	q => \RAM|ram~37_q\);

\RAM|ram~551\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~551_combout\ = ( !\ROM|memROM~2_combout\ & ( !\ROM|memROM~7_combout\ & ( \RAM|ram~37_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~37_q\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ROM|ALT_INV_memROM~7_combout\,
	combout => \RAM|ram~551_combout\);

\RAM|ram~552\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~552_combout\ = ( !\ROM|memROM~8_combout\ & ( \ROM|memROM~4_combout\ & ( \RAM|ram~551_combout\ ) ) ) # ( !\ROM|memROM~8_combout\ & ( !\ROM|memROM~4_combout\ & ( \RAM|ram~550_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~550_combout\,
	datac => \RAM|ALT_INV_ram~551_combout\,
	datae => \ROM|ALT_INV_memROM~8_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	combout => \RAM|ram~552_combout\);

\CPU|ULA1|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~25_sumout\ = SUM(( (!\CPU|DECODER|Equal10~1_combout\ & (!\ROM|memROM~6_combout\ & \RAM|ram~552_combout\)) # (\CPU|DECODER|Equal10~1_combout\ & (\ROM|memROM~6_combout\)) ) + ( \CPU|REG_A|DOUT\(6) ) + ( \CPU|ULA1|Add0~22\ ))
-- \CPU|ULA1|Add0~26\ = CARRY(( (!\CPU|DECODER|Equal10~1_combout\ & (!\ROM|memROM~6_combout\ & \RAM|ram~552_combout\)) # (\CPU|DECODER|Equal10~1_combout\ & (\ROM|memROM~6_combout\)) ) + ( \CPU|REG_A|DOUT\(6) ) + ( \CPU|ULA1|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000001000110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal10~1_combout\,
	datab => \ROM|ALT_INV_memROM~6_combout\,
	datad => \RAM|ALT_INV_ram~552_combout\,
	dataf => \CPU|REG_A|ALT_INV_DOUT\(6),
	cin => \CPU|ULA1|Add0~22\,
	sumout => \CPU|ULA1|Add0~25_sumout\,
	cout => \CPU|ULA1|Add0~26\);

\CPU|ULA1|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~25_sumout\ = SUM(( (!\CPU|DECODER|Equal10~1_combout\ & ((!\RAM|ram~552_combout\) # (\ROM|memROM~6_combout\))) # (\CPU|DECODER|Equal10~1_combout\ & (!\ROM|memROM~6_combout\)) ) + ( \CPU|REG_A|DOUT\(6) ) + ( \CPU|ULA1|Add1~22\ ))
-- \CPU|ULA1|Add1~26\ = CARRY(( (!\CPU|DECODER|Equal10~1_combout\ & ((!\RAM|ram~552_combout\) # (\ROM|memROM~6_combout\))) # (\CPU|DECODER|Equal10~1_combout\ & (!\ROM|memROM~6_combout\)) ) + ( \CPU|REG_A|DOUT\(6) ) + ( \CPU|ULA1|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001110111001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal10~1_combout\,
	datab => \ROM|ALT_INV_memROM~6_combout\,
	datad => \RAM|ALT_INV_ram~552_combout\,
	dataf => \CPU|REG_A|ALT_INV_DOUT\(6),
	cin => \CPU|ULA1|Add1~22\,
	sumout => \CPU|ULA1|Add1~25_sumout\,
	cout => \CPU|ULA1|Add1~26\);

\CPU|ULA1|saida[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[6]~6_combout\ = ( \RAM|ram~552_combout\ & ( \CPU|ULA1|Add1~25_sumout\ & ( (!\CPU|DECODER|sinais_controle~1_combout\) # (!\CPU|DECODER|Equal10~1_combout\ $ (\ROM|memROM~6_combout\)) ) ) ) # ( !\RAM|ram~552_combout\ & ( 
-- \CPU|ULA1|Add1~25_sumout\ & ( (!\CPU|DECODER|sinais_controle~1_combout\) # ((\CPU|DECODER|Equal10~1_combout\ & \ROM|memROM~6_combout\)) ) ) ) # ( \RAM|ram~552_combout\ & ( !\CPU|ULA1|Add1~25_sumout\ & ( (\CPU|DECODER|sinais_controle~1_combout\ & 
-- (!\CPU|DECODER|Equal10~1_combout\ $ (\ROM|memROM~6_combout\))) ) ) ) # ( !\RAM|ram~552_combout\ & ( !\CPU|ULA1|Add1~25_sumout\ & ( (\CPU|DECODER|Equal10~1_combout\ & (\ROM|memROM~6_combout\ & \CPU|DECODER|sinais_controle~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000010010000100111110001111100011111100111111001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal10~1_combout\,
	datab => \ROM|ALT_INV_memROM~6_combout\,
	datac => \CPU|DECODER|ALT_INV_sinais_controle~1_combout\,
	datae => \RAM|ALT_INV_ram~552_combout\,
	dataf => \CPU|ULA1|ALT_INV_Add1~25_sumout\,
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
	ena => \CPU|DECODER|sinais_controle~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_A|DOUT\(6));

\RAM|ram~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG_A|DOUT\(7),
	ena => \RAM|ram~558_combout\,
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
	ena => \RAM|ram~557_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~30_q\);

\RAM|ram~38\ : dffeas
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
	q => \RAM|ram~38_q\);

\RAM|ram~553\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~553_combout\ = ( !\ROM|memROM~2_combout\ & ( \ROM|memROM~4_combout\ & ( \RAM|ram~38_q\ ) ) ) # ( \ROM|memROM~2_combout\ & ( !\ROM|memROM~4_combout\ & ( \RAM|ram~30_q\ ) ) ) # ( !\ROM|memROM~2_combout\ & ( !\ROM|memROM~4_combout\ & ( 
-- \RAM|ram~22_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~22_q\,
	datab => \RAM|ALT_INV_ram~30_q\,
	datac => \RAM|ALT_INV_ram~38_q\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	combout => \RAM|ram~553_combout\);

\RAM|ram~554\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~554_combout\ = ( \RAM|ram~553_combout\ & ( !\ROM|memROM~7_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \RAM|ALT_INV_ram~553_combout\,
	combout => \RAM|ram~554_combout\);

\RAM|ram~555\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~555_combout\ = (!\ROM|memROM~6_combout\ & \RAM|ram~554_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~6_combout\,
	datac => \RAM|ALT_INV_ram~554_combout\,
	combout => \RAM|ram~555_combout\);

\CPU|ULA1|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~29_sumout\ = SUM(( (!\CPU|DECODER|Equal10~1_combout\ & ((\RAM|ram~555_combout\))) # (\CPU|DECODER|Equal10~1_combout\ & (\ROM|memROM~8_combout\)) ) + ( \CPU|REG_A|DOUT\(7) ) + ( \CPU|ULA1|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal10~1_combout\,
	datac => \ROM|ALT_INV_memROM~8_combout\,
	datad => \RAM|ALT_INV_ram~555_combout\,
	dataf => \CPU|REG_A|ALT_INV_DOUT\(7),
	cin => \CPU|ULA1|Add0~26\,
	sumout => \CPU|ULA1|Add0~29_sumout\);

\CPU|ULA1|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~29_sumout\ = SUM(( (!\CPU|DECODER|Equal10~1_combout\ & ((!\RAM|ram~555_combout\))) # (\CPU|DECODER|Equal10~1_combout\ & (!\ROM|memROM~8_combout\)) ) + ( \CPU|REG_A|DOUT\(7) ) + ( \CPU|ULA1|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001110111001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal10~1_combout\,
	datab => \ROM|ALT_INV_memROM~8_combout\,
	datad => \RAM|ALT_INV_ram~555_combout\,
	dataf => \CPU|REG_A|ALT_INV_DOUT\(7),
	cin => \CPU|ULA1|Add1~26\,
	sumout => \CPU|ULA1|Add1~29_sumout\);

\CPU|ULA1|saida[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[7]~7_combout\ = ( \CPU|ULA1|Add1~29_sumout\ & ( (!\CPU|DECODER|sinais_controle~1_combout\) # ((!\CPU|DECODER|Equal10~1_combout\ & ((\RAM|ram~555_combout\))) # (\CPU|DECODER|Equal10~1_combout\ & (\ROM|memROM~8_combout\))) ) ) # ( 
-- !\CPU|ULA1|Add1~29_sumout\ & ( (\CPU|DECODER|sinais_controle~1_combout\ & ((!\CPU|DECODER|Equal10~1_combout\ & ((\RAM|ram~555_combout\))) # (\CPU|DECODER|Equal10~1_combout\ & (\ROM|memROM~8_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100001101111100011111110100000001000011011111000111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~8_combout\,
	datab => \CPU|DECODER|ALT_INV_Equal10~1_combout\,
	datac => \CPU|DECODER|ALT_INV_sinais_controle~1_combout\,
	datad => \RAM|ALT_INV_ram~555_combout\,
	datae => \CPU|ULA1|ALT_INV_Add1~29_sumout\,
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
	ena => \CPU|DECODER|sinais_controle~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_A|DOUT\(7));

\CPU|DECODER|sinais_controle~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER|sinais_controle~0_combout\ = ( \ROM|memROM~15_combout\ & ( (!\CPU|INSTR|PC|DOUT\(8) & (\ROM|memROM~1_combout\ & ((\ROM|memROM~13_combout\) # (\ROM|memROM~11_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000100010001000000000000000000000001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|PC|ALT_INV_DOUT\(8),
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \ROM|ALT_INV_memROM~11_combout\,
	datad => \ROM|ALT_INV_memROM~13_combout\,
	datae => \ROM|ALT_INV_memROM~15_combout\,
	combout => \CPU|DECODER|sinais_controle~0_combout\);

\CPU|DECODER|Equal10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER|Equal10~0_combout\ = ( !\ROM|memROM~15_combout\ & ( (!\CPU|INSTR|PC|DOUT\(8) & (\ROM|memROM~1_combout\ & (\ROM|memROM~11_combout\ & !\ROM|memROM~13_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000000000000000000000000010000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|PC|ALT_INV_DOUT\(8),
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \ROM|ALT_INV_memROM~11_combout\,
	datad => \ROM|ALT_INV_memROM~13_combout\,
	datae => \ROM|ALT_INV_memROM~15_combout\,
	combout => \CPU|DECODER|Equal10~0_combout\);

\LEDR|REG_8bits|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG_A|DOUT\(0),
	ena => \CPU|DECODER|Equal10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LEDR|REG_8bits|DOUT\(0));

\LEDR|REG_8bits|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG_A|DOUT\(1),
	ena => \CPU|DECODER|Equal10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LEDR|REG_8bits|DOUT\(1));

\LEDR|REG_8bits|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG_A|DOUT\(2),
	ena => \CPU|DECODER|Equal10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LEDR|REG_8bits|DOUT\(2));

\LEDR|REG_8bits|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG_A|DOUT\(3),
	ena => \CPU|DECODER|Equal10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LEDR|REG_8bits|DOUT\(3));

\LEDR|REG_8bits|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG_A|DOUT\(4),
	ena => \CPU|DECODER|Equal10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LEDR|REG_8bits|DOUT\(4));

\LEDR|REG_8bits|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG_A|DOUT\(5),
	ena => \CPU|DECODER|Equal10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LEDR|REG_8bits|DOUT\(5));

\LEDR|REG_8bits|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG_A|DOUT\(6),
	ena => \CPU|DECODER|Equal10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LEDR|REG_8bits|DOUT\(6));

\LEDR|REG_8bits|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG_A|DOUT\(7),
	ena => \CPU|DECODER|Equal10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LEDR|REG_8bits|DOUT\(7));

\LED8|FLIPS|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG_A|DOUT\(0),
	ena => \CPU|DECODER|Equal10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED8|FLIPS|DOUT~q\);

\LED9|FLIPS|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG_A|DOUT\(0),
	ena => \CPU|DECODER|Equal10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED9|FLIPS|DOUT~q\);

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

ww_PC(0) <= \PC[0]~output_o\;

ww_PC(1) <= \PC[1]~output_o\;

ww_PC(2) <= \PC[2]~output_o\;

ww_PC(3) <= \PC[3]~output_o\;

ww_PC(4) <= \PC[4]~output_o\;

ww_PC(5) <= \PC[5]~output_o\;

ww_PC(6) <= \PC[6]~output_o\;

ww_PC(7) <= \PC[7]~output_o\;

ww_PC(8) <= \PC[8]~output_o\;

ww_SAIDA(0) <= \SAIDA[0]~output_o\;

ww_SAIDA(1) <= \SAIDA[1]~output_o\;

ww_SAIDA(2) <= \SAIDA[2]~output_o\;

ww_SAIDA(3) <= \SAIDA[3]~output_o\;

ww_SAIDA(4) <= \SAIDA[4]~output_o\;

ww_SAIDA(5) <= \SAIDA[5]~output_o\;

ww_SAIDA(6) <= \SAIDA[6]~output_o\;

ww_SAIDA(7) <= \SAIDA[7]~output_o\;

ww_SAIDA(8) <= \SAIDA[8]~output_o\;

ww_SAIDA(9) <= \SAIDA[9]~output_o\;

ww_SAIDA(10) <= \SAIDA[10]~output_o\;

ww_SAIDA(11) <= \SAIDA[11]~output_o\;

ww_SAIDA(12) <= \SAIDA[12]~output_o\;

ww_DOUT(0) <= \DOUT[0]~output_o\;

ww_DOUT(1) <= \DOUT[1]~output_o\;

ww_DOUT(2) <= \DOUT[2]~output_o\;

ww_DOUT(3) <= \DOUT[3]~output_o\;

ww_DOUT(4) <= \DOUT[4]~output_o\;

ww_DOUT(5) <= \DOUT[5]~output_o\;

ww_DOUT(6) <= \DOUT[6]~output_o\;

ww_DOUT(7) <= \DOUT[7]~output_o\;

ww_HAB_LEI <= \HAB_LEI~output_o\;

ww_HAB_ESC <= \HAB_ESC~output_o\;

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
END structure;


