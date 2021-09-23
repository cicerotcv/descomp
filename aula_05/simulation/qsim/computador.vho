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

-- DATE "09/23/2021 01:34:39"

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
	SAIDA : OUT std_logic_vector(7 DOWNTO 0)
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
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \INSTR|SOMA_CONST|Add0~1_sumout\ : std_logic;
SIGNAL \INSTR|SOMA_CONST|Add0~2\ : std_logic;
SIGNAL \INSTR|SOMA_CONST|Add0~5_sumout\ : std_logic;
SIGNAL \INSTR|SOMA_CONST|Add0~18\ : std_logic;
SIGNAL \INSTR|SOMA_CONST|Add0~29_sumout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \INSTR|ROM|memROM~1_combout\ : std_logic;
SIGNAL \INSTR|ROM|memROM~2_combout\ : std_logic;
SIGNAL \INSTR|ROM|memROM~3_combout\ : std_logic;
SIGNAL \DECODER|comb~1_combout\ : std_logic;
SIGNAL \DECODER|comb~0_combout\ : std_logic;
SIGNAL \DECODER|JUMP~combout\ : std_logic;
SIGNAL \INSTR|SOMA_CONST|Add0~30\ : std_logic;
SIGNAL \INSTR|SOMA_CONST|Add0~33_sumout\ : std_logic;
SIGNAL \INSTR|SOMA_CONST|Add0~34\ : std_logic;
SIGNAL \INSTR|SOMA_CONST|Add0~25_sumout\ : std_logic;
SIGNAL \INSTR|SOMA_CONST|Add0~26\ : std_logic;
SIGNAL \INSTR|SOMA_CONST|Add0~21_sumout\ : std_logic;
SIGNAL \INSTR|ROM|memROM~8_combout\ : std_logic;
SIGNAL \INSTR|ROM|memROM~9_combout\ : std_logic;
SIGNAL \INSTR|ROM|memROM~11_combout\ : std_logic;
SIGNAL \INSTR|ROM|memROM~5_combout\ : std_logic;
SIGNAL \INSTR|ROM|memROM~5_wirecell_combout\ : std_logic;
SIGNAL \INSTR|SOMA_CONST|Add0~6\ : std_logic;
SIGNAL \INSTR|SOMA_CONST|Add0~9_sumout\ : std_logic;
SIGNAL \INSTR|ROM|memROM~6_combout\ : std_logic;
SIGNAL \INSTR|SOMA_CONST|Add0~10\ : std_logic;
SIGNAL \INSTR|SOMA_CONST|Add0~13_sumout\ : std_logic;
SIGNAL \INSTR|ROM|memROM~7_combout\ : std_logic;
SIGNAL \INSTR|SOMA_CONST|Add0~14\ : std_logic;
SIGNAL \INSTR|SOMA_CONST|Add0~17_sumout\ : std_logic;
SIGNAL \INSTR|ROM|memROM~10_combout\ : std_logic;
SIGNAL \INSTR|ROM|memROM~4_combout\ : std_logic;
SIGNAL \INSTR|ROM|memROM~0_combout\ : std_logic;
SIGNAL \DECODER|Equal0~0_combout\ : std_logic;
SIGNAL \MDADOS|process_0~0_combout\ : std_logic;
SIGNAL \MDADOS|ram~185_combout\ : std_logic;
SIGNAL \MDADOS|ram~33_q\ : std_logic;
SIGNAL \MDADOS|ram~186_combout\ : std_logic;
SIGNAL \MDADOS|ram~41_q\ : std_logic;
SIGNAL \MDADOS|ram~187_combout\ : std_logic;
SIGNAL \MDADOS|ram~17_q\ : std_logic;
SIGNAL \MDADOS|ram~188_combout\ : std_logic;
SIGNAL \MDADOS|ram~25_q\ : std_logic;
SIGNAL \MDADOS|ram~145_combout\ : std_logic;
SIGNAL \MDADOS|ram~189_combout\ : std_logic;
SIGNAL \MDADOS|ram~65_q\ : std_logic;
SIGNAL \MDADOS|ram~190_combout\ : std_logic;
SIGNAL \MDADOS|ram~73_q\ : std_logic;
SIGNAL \MDADOS|ram~191_combout\ : std_logic;
SIGNAL \MDADOS|ram~49_q\ : std_logic;
SIGNAL \MDADOS|ram~192_combout\ : std_logic;
SIGNAL \MDADOS|ram~57_q\ : std_logic;
SIGNAL \MDADOS|ram~146_combout\ : std_logic;
SIGNAL \MDADOS|ram~193_combout\ : std_logic;
SIGNAL \MDADOS|ram~97_q\ : std_logic;
SIGNAL \MDADOS|ram~194_combout\ : std_logic;
SIGNAL \MDADOS|ram~105_q\ : std_logic;
SIGNAL \MDADOS|ram~195_combout\ : std_logic;
SIGNAL \MDADOS|ram~81_q\ : std_logic;
SIGNAL \MDADOS|ram~196_combout\ : std_logic;
SIGNAL \MDADOS|ram~89_q\ : std_logic;
SIGNAL \MDADOS|ram~147_combout\ : std_logic;
SIGNAL \MDADOS|ram~197_combout\ : std_logic;
SIGNAL \MDADOS|ram~129_q\ : std_logic;
SIGNAL \MDADOS|ram~198_combout\ : std_logic;
SIGNAL \MDADOS|ram~137_q\ : std_logic;
SIGNAL \MDADOS|ram~199_combout\ : std_logic;
SIGNAL \MDADOS|ram~113_q\ : std_logic;
SIGNAL \MDADOS|ram~200_combout\ : std_logic;
SIGNAL \MDADOS|ram~121_q\ : std_logic;
SIGNAL \MDADOS|ram~148_combout\ : std_logic;
SIGNAL \MDADOS|ram~149_combout\ : std_logic;
SIGNAL \DECODER|Equal0~1_combout\ : std_logic;
SIGNAL \ULA1|Add0~34_cout\ : std_logic;
SIGNAL \ULA1|Add0~1_sumout\ : std_logic;
SIGNAL \DECODER|OP_ULA[1]~0_combout\ : std_logic;
SIGNAL \ULA1|saida[0]~0_combout\ : std_logic;
SIGNAL \DECODER|HAB_A~0_combout\ : std_logic;
SIGNAL \MDADOS|ram~34_q\ : std_logic;
SIGNAL \MDADOS|ram~66_q\ : std_logic;
SIGNAL \MDADOS|ram~98_q\ : std_logic;
SIGNAL \MDADOS|ram~130_q\ : std_logic;
SIGNAL \MDADOS|ram~150_combout\ : std_logic;
SIGNAL \MDADOS|ram~42_q\ : std_logic;
SIGNAL \MDADOS|ram~74_q\ : std_logic;
SIGNAL \MDADOS|ram~106_q\ : std_logic;
SIGNAL \MDADOS|ram~138_q\ : std_logic;
SIGNAL \MDADOS|ram~151_combout\ : std_logic;
SIGNAL \MDADOS|ram~18_q\ : std_logic;
SIGNAL \MDADOS|ram~50_q\ : std_logic;
SIGNAL \MDADOS|ram~82_q\ : std_logic;
SIGNAL \MDADOS|ram~114_q\ : std_logic;
SIGNAL \MDADOS|ram~152_combout\ : std_logic;
SIGNAL \MDADOS|ram~26_q\ : std_logic;
SIGNAL \MDADOS|ram~58_q\ : std_logic;
SIGNAL \MDADOS|ram~90_q\ : std_logic;
SIGNAL \MDADOS|ram~122_q\ : std_logic;
SIGNAL \MDADOS|ram~153_combout\ : std_logic;
SIGNAL \MDADOS|ram~154_combout\ : std_logic;
SIGNAL \ULA1|Add0~2\ : std_logic;
SIGNAL \ULA1|Add0~5_sumout\ : std_logic;
SIGNAL \ULA1|saida[1]~1_combout\ : std_logic;
SIGNAL \MDADOS|ram~35_q\ : std_logic;
SIGNAL \MDADOS|ram~43_q\ : std_logic;
SIGNAL \MDADOS|ram~19_q\ : std_logic;
SIGNAL \MDADOS|ram~27_q\ : std_logic;
SIGNAL \MDADOS|ram~155_combout\ : std_logic;
SIGNAL \MDADOS|ram~67_q\ : std_logic;
SIGNAL \MDADOS|ram~75_q\ : std_logic;
SIGNAL \MDADOS|ram~51_q\ : std_logic;
SIGNAL \MDADOS|ram~59_q\ : std_logic;
SIGNAL \MDADOS|ram~156_combout\ : std_logic;
SIGNAL \MDADOS|ram~99_q\ : std_logic;
SIGNAL \MDADOS|ram~107_q\ : std_logic;
SIGNAL \MDADOS|ram~83_q\ : std_logic;
SIGNAL \MDADOS|ram~91_q\ : std_logic;
SIGNAL \MDADOS|ram~157_combout\ : std_logic;
SIGNAL \MDADOS|ram~131_q\ : std_logic;
SIGNAL \MDADOS|ram~139_q\ : std_logic;
SIGNAL \MDADOS|ram~115_q\ : std_logic;
SIGNAL \MDADOS|ram~123_q\ : std_logic;
SIGNAL \MDADOS|ram~158_combout\ : std_logic;
SIGNAL \MDADOS|ram~159_combout\ : std_logic;
SIGNAL \ULA1|Add0~6\ : std_logic;
SIGNAL \ULA1|Add0~9_sumout\ : std_logic;
SIGNAL \ULA1|saida[2]~2_combout\ : std_logic;
SIGNAL \MDADOS|ram~36_q\ : std_logic;
SIGNAL \MDADOS|ram~68_q\ : std_logic;
SIGNAL \MDADOS|ram~100_q\ : std_logic;
SIGNAL \MDADOS|ram~132_q\ : std_logic;
SIGNAL \MDADOS|ram~160_combout\ : std_logic;
SIGNAL \MDADOS|ram~44_q\ : std_logic;
SIGNAL \MDADOS|ram~76_q\ : std_logic;
SIGNAL \MDADOS|ram~108_q\ : std_logic;
SIGNAL \MDADOS|ram~140_q\ : std_logic;
SIGNAL \MDADOS|ram~161_combout\ : std_logic;
SIGNAL \MDADOS|ram~20_q\ : std_logic;
SIGNAL \MDADOS|ram~52_q\ : std_logic;
SIGNAL \MDADOS|ram~84_q\ : std_logic;
SIGNAL \MDADOS|ram~116_q\ : std_logic;
SIGNAL \MDADOS|ram~162_combout\ : std_logic;
SIGNAL \MDADOS|ram~28_q\ : std_logic;
SIGNAL \MDADOS|ram~60_q\ : std_logic;
SIGNAL \MDADOS|ram~92_q\ : std_logic;
SIGNAL \MDADOS|ram~124_q\ : std_logic;
SIGNAL \MDADOS|ram~163_combout\ : std_logic;
SIGNAL \MDADOS|ram~164_combout\ : std_logic;
SIGNAL \ULA1|Add0~10\ : std_logic;
SIGNAL \ULA1|Add0~13_sumout\ : std_logic;
SIGNAL \ULA1|saida[3]~3_combout\ : std_logic;
SIGNAL \MDADOS|ram~37_q\ : std_logic;
SIGNAL \MDADOS|ram~45_q\ : std_logic;
SIGNAL \MDADOS|ram~21_q\ : std_logic;
SIGNAL \MDADOS|ram~29_q\ : std_logic;
SIGNAL \MDADOS|ram~165_combout\ : std_logic;
SIGNAL \MDADOS|ram~69_q\ : std_logic;
SIGNAL \MDADOS|ram~77_q\ : std_logic;
SIGNAL \MDADOS|ram~53_q\ : std_logic;
SIGNAL \MDADOS|ram~61_q\ : std_logic;
SIGNAL \MDADOS|ram~166_combout\ : std_logic;
SIGNAL \MDADOS|ram~101_q\ : std_logic;
SIGNAL \MDADOS|ram~109_q\ : std_logic;
SIGNAL \MDADOS|ram~85_q\ : std_logic;
SIGNAL \MDADOS|ram~93_q\ : std_logic;
SIGNAL \MDADOS|ram~167_combout\ : std_logic;
SIGNAL \MDADOS|ram~133_q\ : std_logic;
SIGNAL \MDADOS|ram~141_q\ : std_logic;
SIGNAL \MDADOS|ram~117_q\ : std_logic;
SIGNAL \MDADOS|ram~125_q\ : std_logic;
SIGNAL \MDADOS|ram~168_combout\ : std_logic;
SIGNAL \MDADOS|ram~169_combout\ : std_logic;
SIGNAL \ULA1|saida[4]~4_combout\ : std_logic;
SIGNAL \ULA1|Add0~14\ : std_logic;
SIGNAL \ULA1|Add0~17_sumout\ : std_logic;
SIGNAL \ULA1|saida[4]~5_combout\ : std_logic;
SIGNAL \MDADOS|ram~38_q\ : std_logic;
SIGNAL \MDADOS|ram~70_q\ : std_logic;
SIGNAL \MDADOS|ram~102_q\ : std_logic;
SIGNAL \MDADOS|ram~134_q\ : std_logic;
SIGNAL \MDADOS|ram~170_combout\ : std_logic;
SIGNAL \MDADOS|ram~46_q\ : std_logic;
SIGNAL \MDADOS|ram~78_q\ : std_logic;
SIGNAL \MDADOS|ram~110_q\ : std_logic;
SIGNAL \MDADOS|ram~142_q\ : std_logic;
SIGNAL \MDADOS|ram~171_combout\ : std_logic;
SIGNAL \MDADOS|ram~22_q\ : std_logic;
SIGNAL \MDADOS|ram~54_q\ : std_logic;
SIGNAL \MDADOS|ram~86_q\ : std_logic;
SIGNAL \MDADOS|ram~118_q\ : std_logic;
SIGNAL \MDADOS|ram~172_combout\ : std_logic;
SIGNAL \MDADOS|ram~30_q\ : std_logic;
SIGNAL \MDADOS|ram~62_q\ : std_logic;
SIGNAL \MDADOS|ram~94_q\ : std_logic;
SIGNAL \MDADOS|ram~126_q\ : std_logic;
SIGNAL \MDADOS|ram~173_combout\ : std_logic;
SIGNAL \MDADOS|ram~174_combout\ : std_logic;
SIGNAL \ULA1|Add0~18\ : std_logic;
SIGNAL \ULA1|Add0~21_sumout\ : std_logic;
SIGNAL \ULA1|saida[5]~6_combout\ : std_logic;
SIGNAL \MDADOS|ram~39_q\ : std_logic;
SIGNAL \MDADOS|ram~47_q\ : std_logic;
SIGNAL \MDADOS|ram~23_q\ : std_logic;
SIGNAL \MDADOS|ram~31_q\ : std_logic;
SIGNAL \MDADOS|ram~175_combout\ : std_logic;
SIGNAL \MDADOS|ram~71_q\ : std_logic;
SIGNAL \MDADOS|ram~79_q\ : std_logic;
SIGNAL \MDADOS|ram~55_q\ : std_logic;
SIGNAL \MDADOS|ram~63_q\ : std_logic;
SIGNAL \MDADOS|ram~176_combout\ : std_logic;
SIGNAL \MDADOS|ram~103_q\ : std_logic;
SIGNAL \MDADOS|ram~111_q\ : std_logic;
SIGNAL \MDADOS|ram~87_q\ : std_logic;
SIGNAL \MDADOS|ram~95_q\ : std_logic;
SIGNAL \MDADOS|ram~177_combout\ : std_logic;
SIGNAL \MDADOS|ram~135_q\ : std_logic;
SIGNAL \MDADOS|ram~143_q\ : std_logic;
SIGNAL \MDADOS|ram~119_q\ : std_logic;
SIGNAL \MDADOS|ram~127_q\ : std_logic;
SIGNAL \MDADOS|ram~178_combout\ : std_logic;
SIGNAL \MDADOS|ram~179_combout\ : std_logic;
SIGNAL \ULA1|Add0~22\ : std_logic;
SIGNAL \ULA1|Add0~25_sumout\ : std_logic;
SIGNAL \ULA1|saida[6]~7_combout\ : std_logic;
SIGNAL \MDADOS|ram~40_q\ : std_logic;
SIGNAL \MDADOS|ram~72_q\ : std_logic;
SIGNAL \MDADOS|ram~104_q\ : std_logic;
SIGNAL \MDADOS|ram~136_q\ : std_logic;
SIGNAL \MDADOS|ram~180_combout\ : std_logic;
SIGNAL \MDADOS|ram~48_q\ : std_logic;
SIGNAL \MDADOS|ram~80_q\ : std_logic;
SIGNAL \MDADOS|ram~112_q\ : std_logic;
SIGNAL \MDADOS|ram~144_q\ : std_logic;
SIGNAL \MDADOS|ram~181_combout\ : std_logic;
SIGNAL \MDADOS|ram~24_q\ : std_logic;
SIGNAL \MDADOS|ram~56_q\ : std_logic;
SIGNAL \MDADOS|ram~88_q\ : std_logic;
SIGNAL \MDADOS|ram~120_q\ : std_logic;
SIGNAL \MDADOS|ram~182_combout\ : std_logic;
SIGNAL \MDADOS|ram~32_q\ : std_logic;
SIGNAL \MDADOS|ram~64_q\ : std_logic;
SIGNAL \MDADOS|ram~96_q\ : std_logic;
SIGNAL \MDADOS|ram~128_q\ : std_logic;
SIGNAL \MDADOS|ram~183_combout\ : std_logic;
SIGNAL \MDADOS|ram~184_combout\ : std_logic;
SIGNAL \ULA1|Add0~26\ : std_logic;
SIGNAL \ULA1|Add0~29_sumout\ : std_logic;
SIGNAL \ULA1|saida[7]~8_combout\ : std_logic;
SIGNAL \INSTR|PC|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \REG_A|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \MDADOS|ALT_INV_ram~121_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~113_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~137_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~129_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~147_combout\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~89_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~81_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~105_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~97_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~146_combout\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~57_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~49_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~73_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~65_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~145_combout\ : std_logic;
SIGNAL \INSTR|ROM|ALT_INV_memROM~5_combout\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~25_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~17_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~41_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~33_q\ : std_logic;
SIGNAL \INSTR|ROM|ALT_INV_memROM~4_combout\ : std_logic;
SIGNAL \DECODER|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \INSTR|ROM|ALT_INV_memROM~3_combout\ : std_logic;
SIGNAL \INSTR|ROM|ALT_INV_memROM~2_combout\ : std_logic;
SIGNAL \INSTR|ROM|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \INSTR|ROM|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \REG_A|ALT_INV_DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ULA1|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \INSTR|PC|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \MDADOS|ALT_INV_ram~63_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~55_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~79_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~71_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~175_combout\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~31_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~23_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~47_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~39_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~174_combout\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~173_combout\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~126_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~94_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~62_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~30_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~172_combout\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~118_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~86_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~54_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~22_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~171_combout\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~142_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~110_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~78_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~46_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~170_combout\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~134_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~102_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~70_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~38_q\ : std_logic;
SIGNAL \ULA1|ALT_INV_saida[4]~4_combout\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~169_combout\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~168_combout\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~125_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~117_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~141_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~133_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~167_combout\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~93_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~85_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~109_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~101_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~166_combout\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~61_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~53_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~77_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~69_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~165_combout\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~29_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~21_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~45_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~37_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~164_combout\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~163_combout\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~124_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~92_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~60_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~28_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~162_combout\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~116_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~84_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~52_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~20_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~161_combout\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~140_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~108_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~76_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~44_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~160_combout\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~132_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~100_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~68_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~36_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~159_combout\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~158_combout\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~123_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~115_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~139_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~131_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~157_combout\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~91_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~83_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~107_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~99_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~156_combout\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~59_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~51_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~75_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~67_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~155_combout\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~27_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~19_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~43_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~35_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~154_combout\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~153_combout\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~122_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~90_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~58_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~26_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~152_combout\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~114_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~82_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~50_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~18_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~151_combout\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~138_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~106_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~74_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~42_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~150_combout\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~130_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~98_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~66_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~34_q\ : std_logic;
SIGNAL \DECODER|ALT_INV_OP_ULA[1]~0_combout\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~149_combout\ : std_logic;
SIGNAL \INSTR|ROM|ALT_INV_memROM~7_combout\ : std_logic;
SIGNAL \INSTR|ROM|ALT_INV_memROM~6_combout\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~148_combout\ : std_logic;
SIGNAL \DECODER|ALT_INV_JUMP~combout\ : std_logic;
SIGNAL \INSTR|ROM|ALT_INV_memROM~11_combout\ : std_logic;
SIGNAL \INSTR|ROM|ALT_INV_memROM~10_combout\ : std_logic;
SIGNAL \DECODER|ALT_INV_comb~1_combout\ : std_logic;
SIGNAL \DECODER|ALT_INV_comb~0_combout\ : std_logic;
SIGNAL \DECODER|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \MDADOS|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \INSTR|ROM|ALT_INV_memROM~8_combout\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~184_combout\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~183_combout\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~128_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~96_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~64_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~32_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~182_combout\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~120_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~88_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~56_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~24_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~181_combout\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~144_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~112_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~80_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~48_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~180_combout\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~136_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~104_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~72_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~40_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~179_combout\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~178_combout\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~127_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~119_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~143_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~135_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~177_combout\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~95_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~87_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~111_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~103_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~176_combout\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
SAIDA <= ww_SAIDA;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\MDADOS|ALT_INV_ram~121_q\ <= NOT \MDADOS|ram~121_q\;
\MDADOS|ALT_INV_ram~113_q\ <= NOT \MDADOS|ram~113_q\;
\MDADOS|ALT_INV_ram~137_q\ <= NOT \MDADOS|ram~137_q\;
\MDADOS|ALT_INV_ram~129_q\ <= NOT \MDADOS|ram~129_q\;
\MDADOS|ALT_INV_ram~147_combout\ <= NOT \MDADOS|ram~147_combout\;
\MDADOS|ALT_INV_ram~89_q\ <= NOT \MDADOS|ram~89_q\;
\MDADOS|ALT_INV_ram~81_q\ <= NOT \MDADOS|ram~81_q\;
\MDADOS|ALT_INV_ram~105_q\ <= NOT \MDADOS|ram~105_q\;
\MDADOS|ALT_INV_ram~97_q\ <= NOT \MDADOS|ram~97_q\;
\MDADOS|ALT_INV_ram~146_combout\ <= NOT \MDADOS|ram~146_combout\;
\MDADOS|ALT_INV_ram~57_q\ <= NOT \MDADOS|ram~57_q\;
\MDADOS|ALT_INV_ram~49_q\ <= NOT \MDADOS|ram~49_q\;
\MDADOS|ALT_INV_ram~73_q\ <= NOT \MDADOS|ram~73_q\;
\MDADOS|ALT_INV_ram~65_q\ <= NOT \MDADOS|ram~65_q\;
\MDADOS|ALT_INV_ram~145_combout\ <= NOT \MDADOS|ram~145_combout\;
\INSTR|ROM|ALT_INV_memROM~5_combout\ <= NOT \INSTR|ROM|memROM~5_combout\;
\MDADOS|ALT_INV_ram~25_q\ <= NOT \MDADOS|ram~25_q\;
\MDADOS|ALT_INV_ram~17_q\ <= NOT \MDADOS|ram~17_q\;
\MDADOS|ALT_INV_ram~41_q\ <= NOT \MDADOS|ram~41_q\;
\MDADOS|ALT_INV_ram~33_q\ <= NOT \MDADOS|ram~33_q\;
\INSTR|ROM|ALT_INV_memROM~4_combout\ <= NOT \INSTR|ROM|memROM~4_combout\;
\DECODER|ALT_INV_Equal0~0_combout\ <= NOT \DECODER|Equal0~0_combout\;
\INSTR|ROM|ALT_INV_memROM~3_combout\ <= NOT \INSTR|ROM|memROM~3_combout\;
\INSTR|ROM|ALT_INV_memROM~2_combout\ <= NOT \INSTR|ROM|memROM~2_combout\;
\INSTR|ROM|ALT_INV_memROM~1_combout\ <= NOT \INSTR|ROM|memROM~1_combout\;
\INSTR|ROM|ALT_INV_memROM~0_combout\ <= NOT \INSTR|ROM|memROM~0_combout\;
\REG_A|ALT_INV_DOUT\(7) <= NOT \REG_A|DOUT\(7);
\REG_A|ALT_INV_DOUT\(6) <= NOT \REG_A|DOUT\(6);
\REG_A|ALT_INV_DOUT\(5) <= NOT \REG_A|DOUT\(5);
\REG_A|ALT_INV_DOUT\(4) <= NOT \REG_A|DOUT\(4);
\REG_A|ALT_INV_DOUT\(3) <= NOT \REG_A|DOUT\(3);
\REG_A|ALT_INV_DOUT\(2) <= NOT \REG_A|DOUT\(2);
\REG_A|ALT_INV_DOUT\(1) <= NOT \REG_A|DOUT\(1);
\REG_A|ALT_INV_DOUT\(0) <= NOT \REG_A|DOUT\(0);
\ULA1|ALT_INV_Add0~29_sumout\ <= NOT \ULA1|Add0~29_sumout\;
\ULA1|ALT_INV_Add0~25_sumout\ <= NOT \ULA1|Add0~25_sumout\;
\ULA1|ALT_INV_Add0~21_sumout\ <= NOT \ULA1|Add0~21_sumout\;
\ULA1|ALT_INV_Add0~17_sumout\ <= NOT \ULA1|Add0~17_sumout\;
\ULA1|ALT_INV_Add0~13_sumout\ <= NOT \ULA1|Add0~13_sumout\;
\ULA1|ALT_INV_Add0~9_sumout\ <= NOT \ULA1|Add0~9_sumout\;
\ULA1|ALT_INV_Add0~5_sumout\ <= NOT \ULA1|Add0~5_sumout\;
\ULA1|ALT_INV_Add0~1_sumout\ <= NOT \ULA1|Add0~1_sumout\;
\INSTR|PC|ALT_INV_DOUT\(6) <= NOT \INSTR|PC|DOUT\(6);
\INSTR|PC|ALT_INV_DOUT\(5) <= NOT \INSTR|PC|DOUT\(5);
\INSTR|PC|ALT_INV_DOUT\(7) <= NOT \INSTR|PC|DOUT\(7);
\INSTR|PC|ALT_INV_DOUT\(8) <= NOT \INSTR|PC|DOUT\(8);
\INSTR|PC|ALT_INV_DOUT\(4) <= NOT \INSTR|PC|DOUT\(4);
\INSTR|PC|ALT_INV_DOUT\(3) <= NOT \INSTR|PC|DOUT\(3);
\INSTR|PC|ALT_INV_DOUT\(2) <= NOT \INSTR|PC|DOUT\(2);
\INSTR|PC|ALT_INV_DOUT\(1) <= NOT \INSTR|PC|DOUT\(1);
\INSTR|PC|ALT_INV_DOUT\(0) <= NOT \INSTR|PC|DOUT\(0);
\MDADOS|ALT_INV_ram~63_q\ <= NOT \MDADOS|ram~63_q\;
\MDADOS|ALT_INV_ram~55_q\ <= NOT \MDADOS|ram~55_q\;
\MDADOS|ALT_INV_ram~79_q\ <= NOT \MDADOS|ram~79_q\;
\MDADOS|ALT_INV_ram~71_q\ <= NOT \MDADOS|ram~71_q\;
\MDADOS|ALT_INV_ram~175_combout\ <= NOT \MDADOS|ram~175_combout\;
\MDADOS|ALT_INV_ram~31_q\ <= NOT \MDADOS|ram~31_q\;
\MDADOS|ALT_INV_ram~23_q\ <= NOT \MDADOS|ram~23_q\;
\MDADOS|ALT_INV_ram~47_q\ <= NOT \MDADOS|ram~47_q\;
\MDADOS|ALT_INV_ram~39_q\ <= NOT \MDADOS|ram~39_q\;
\MDADOS|ALT_INV_ram~174_combout\ <= NOT \MDADOS|ram~174_combout\;
\MDADOS|ALT_INV_ram~173_combout\ <= NOT \MDADOS|ram~173_combout\;
\MDADOS|ALT_INV_ram~126_q\ <= NOT \MDADOS|ram~126_q\;
\MDADOS|ALT_INV_ram~94_q\ <= NOT \MDADOS|ram~94_q\;
\MDADOS|ALT_INV_ram~62_q\ <= NOT \MDADOS|ram~62_q\;
\MDADOS|ALT_INV_ram~30_q\ <= NOT \MDADOS|ram~30_q\;
\MDADOS|ALT_INV_ram~172_combout\ <= NOT \MDADOS|ram~172_combout\;
\MDADOS|ALT_INV_ram~118_q\ <= NOT \MDADOS|ram~118_q\;
\MDADOS|ALT_INV_ram~86_q\ <= NOT \MDADOS|ram~86_q\;
\MDADOS|ALT_INV_ram~54_q\ <= NOT \MDADOS|ram~54_q\;
\MDADOS|ALT_INV_ram~22_q\ <= NOT \MDADOS|ram~22_q\;
\MDADOS|ALT_INV_ram~171_combout\ <= NOT \MDADOS|ram~171_combout\;
\MDADOS|ALT_INV_ram~142_q\ <= NOT \MDADOS|ram~142_q\;
\MDADOS|ALT_INV_ram~110_q\ <= NOT \MDADOS|ram~110_q\;
\MDADOS|ALT_INV_ram~78_q\ <= NOT \MDADOS|ram~78_q\;
\MDADOS|ALT_INV_ram~46_q\ <= NOT \MDADOS|ram~46_q\;
\MDADOS|ALT_INV_ram~170_combout\ <= NOT \MDADOS|ram~170_combout\;
\MDADOS|ALT_INV_ram~134_q\ <= NOT \MDADOS|ram~134_q\;
\MDADOS|ALT_INV_ram~102_q\ <= NOT \MDADOS|ram~102_q\;
\MDADOS|ALT_INV_ram~70_q\ <= NOT \MDADOS|ram~70_q\;
\MDADOS|ALT_INV_ram~38_q\ <= NOT \MDADOS|ram~38_q\;
\ULA1|ALT_INV_saida[4]~4_combout\ <= NOT \ULA1|saida[4]~4_combout\;
\MDADOS|ALT_INV_ram~169_combout\ <= NOT \MDADOS|ram~169_combout\;
\MDADOS|ALT_INV_ram~168_combout\ <= NOT \MDADOS|ram~168_combout\;
\MDADOS|ALT_INV_ram~125_q\ <= NOT \MDADOS|ram~125_q\;
\MDADOS|ALT_INV_ram~117_q\ <= NOT \MDADOS|ram~117_q\;
\MDADOS|ALT_INV_ram~141_q\ <= NOT \MDADOS|ram~141_q\;
\MDADOS|ALT_INV_ram~133_q\ <= NOT \MDADOS|ram~133_q\;
\MDADOS|ALT_INV_ram~167_combout\ <= NOT \MDADOS|ram~167_combout\;
\MDADOS|ALT_INV_ram~93_q\ <= NOT \MDADOS|ram~93_q\;
\MDADOS|ALT_INV_ram~85_q\ <= NOT \MDADOS|ram~85_q\;
\MDADOS|ALT_INV_ram~109_q\ <= NOT \MDADOS|ram~109_q\;
\MDADOS|ALT_INV_ram~101_q\ <= NOT \MDADOS|ram~101_q\;
\MDADOS|ALT_INV_ram~166_combout\ <= NOT \MDADOS|ram~166_combout\;
\MDADOS|ALT_INV_ram~61_q\ <= NOT \MDADOS|ram~61_q\;
\MDADOS|ALT_INV_ram~53_q\ <= NOT \MDADOS|ram~53_q\;
\MDADOS|ALT_INV_ram~77_q\ <= NOT \MDADOS|ram~77_q\;
\MDADOS|ALT_INV_ram~69_q\ <= NOT \MDADOS|ram~69_q\;
\MDADOS|ALT_INV_ram~165_combout\ <= NOT \MDADOS|ram~165_combout\;
\MDADOS|ALT_INV_ram~29_q\ <= NOT \MDADOS|ram~29_q\;
\MDADOS|ALT_INV_ram~21_q\ <= NOT \MDADOS|ram~21_q\;
\MDADOS|ALT_INV_ram~45_q\ <= NOT \MDADOS|ram~45_q\;
\MDADOS|ALT_INV_ram~37_q\ <= NOT \MDADOS|ram~37_q\;
\MDADOS|ALT_INV_ram~164_combout\ <= NOT \MDADOS|ram~164_combout\;
\MDADOS|ALT_INV_ram~163_combout\ <= NOT \MDADOS|ram~163_combout\;
\MDADOS|ALT_INV_ram~124_q\ <= NOT \MDADOS|ram~124_q\;
\MDADOS|ALT_INV_ram~92_q\ <= NOT \MDADOS|ram~92_q\;
\MDADOS|ALT_INV_ram~60_q\ <= NOT \MDADOS|ram~60_q\;
\MDADOS|ALT_INV_ram~28_q\ <= NOT \MDADOS|ram~28_q\;
\MDADOS|ALT_INV_ram~162_combout\ <= NOT \MDADOS|ram~162_combout\;
\MDADOS|ALT_INV_ram~116_q\ <= NOT \MDADOS|ram~116_q\;
\MDADOS|ALT_INV_ram~84_q\ <= NOT \MDADOS|ram~84_q\;
\MDADOS|ALT_INV_ram~52_q\ <= NOT \MDADOS|ram~52_q\;
\MDADOS|ALT_INV_ram~20_q\ <= NOT \MDADOS|ram~20_q\;
\MDADOS|ALT_INV_ram~161_combout\ <= NOT \MDADOS|ram~161_combout\;
\MDADOS|ALT_INV_ram~140_q\ <= NOT \MDADOS|ram~140_q\;
\MDADOS|ALT_INV_ram~108_q\ <= NOT \MDADOS|ram~108_q\;
\MDADOS|ALT_INV_ram~76_q\ <= NOT \MDADOS|ram~76_q\;
\MDADOS|ALT_INV_ram~44_q\ <= NOT \MDADOS|ram~44_q\;
\MDADOS|ALT_INV_ram~160_combout\ <= NOT \MDADOS|ram~160_combout\;
\MDADOS|ALT_INV_ram~132_q\ <= NOT \MDADOS|ram~132_q\;
\MDADOS|ALT_INV_ram~100_q\ <= NOT \MDADOS|ram~100_q\;
\MDADOS|ALT_INV_ram~68_q\ <= NOT \MDADOS|ram~68_q\;
\MDADOS|ALT_INV_ram~36_q\ <= NOT \MDADOS|ram~36_q\;
\MDADOS|ALT_INV_ram~159_combout\ <= NOT \MDADOS|ram~159_combout\;
\MDADOS|ALT_INV_ram~158_combout\ <= NOT \MDADOS|ram~158_combout\;
\MDADOS|ALT_INV_ram~123_q\ <= NOT \MDADOS|ram~123_q\;
\MDADOS|ALT_INV_ram~115_q\ <= NOT \MDADOS|ram~115_q\;
\MDADOS|ALT_INV_ram~139_q\ <= NOT \MDADOS|ram~139_q\;
\MDADOS|ALT_INV_ram~131_q\ <= NOT \MDADOS|ram~131_q\;
\MDADOS|ALT_INV_ram~157_combout\ <= NOT \MDADOS|ram~157_combout\;
\MDADOS|ALT_INV_ram~91_q\ <= NOT \MDADOS|ram~91_q\;
\MDADOS|ALT_INV_ram~83_q\ <= NOT \MDADOS|ram~83_q\;
\MDADOS|ALT_INV_ram~107_q\ <= NOT \MDADOS|ram~107_q\;
\MDADOS|ALT_INV_ram~99_q\ <= NOT \MDADOS|ram~99_q\;
\MDADOS|ALT_INV_ram~156_combout\ <= NOT \MDADOS|ram~156_combout\;
\MDADOS|ALT_INV_ram~59_q\ <= NOT \MDADOS|ram~59_q\;
\MDADOS|ALT_INV_ram~51_q\ <= NOT \MDADOS|ram~51_q\;
\MDADOS|ALT_INV_ram~75_q\ <= NOT \MDADOS|ram~75_q\;
\MDADOS|ALT_INV_ram~67_q\ <= NOT \MDADOS|ram~67_q\;
\MDADOS|ALT_INV_ram~155_combout\ <= NOT \MDADOS|ram~155_combout\;
\MDADOS|ALT_INV_ram~27_q\ <= NOT \MDADOS|ram~27_q\;
\MDADOS|ALT_INV_ram~19_q\ <= NOT \MDADOS|ram~19_q\;
\MDADOS|ALT_INV_ram~43_q\ <= NOT \MDADOS|ram~43_q\;
\MDADOS|ALT_INV_ram~35_q\ <= NOT \MDADOS|ram~35_q\;
\MDADOS|ALT_INV_ram~154_combout\ <= NOT \MDADOS|ram~154_combout\;
\MDADOS|ALT_INV_ram~153_combout\ <= NOT \MDADOS|ram~153_combout\;
\MDADOS|ALT_INV_ram~122_q\ <= NOT \MDADOS|ram~122_q\;
\MDADOS|ALT_INV_ram~90_q\ <= NOT \MDADOS|ram~90_q\;
\MDADOS|ALT_INV_ram~58_q\ <= NOT \MDADOS|ram~58_q\;
\MDADOS|ALT_INV_ram~26_q\ <= NOT \MDADOS|ram~26_q\;
\MDADOS|ALT_INV_ram~152_combout\ <= NOT \MDADOS|ram~152_combout\;
\MDADOS|ALT_INV_ram~114_q\ <= NOT \MDADOS|ram~114_q\;
\MDADOS|ALT_INV_ram~82_q\ <= NOT \MDADOS|ram~82_q\;
\MDADOS|ALT_INV_ram~50_q\ <= NOT \MDADOS|ram~50_q\;
\MDADOS|ALT_INV_ram~18_q\ <= NOT \MDADOS|ram~18_q\;
\MDADOS|ALT_INV_ram~151_combout\ <= NOT \MDADOS|ram~151_combout\;
\MDADOS|ALT_INV_ram~138_q\ <= NOT \MDADOS|ram~138_q\;
\MDADOS|ALT_INV_ram~106_q\ <= NOT \MDADOS|ram~106_q\;
\MDADOS|ALT_INV_ram~74_q\ <= NOT \MDADOS|ram~74_q\;
\MDADOS|ALT_INV_ram~42_q\ <= NOT \MDADOS|ram~42_q\;
\MDADOS|ALT_INV_ram~150_combout\ <= NOT \MDADOS|ram~150_combout\;
\MDADOS|ALT_INV_ram~130_q\ <= NOT \MDADOS|ram~130_q\;
\MDADOS|ALT_INV_ram~98_q\ <= NOT \MDADOS|ram~98_q\;
\MDADOS|ALT_INV_ram~66_q\ <= NOT \MDADOS|ram~66_q\;
\MDADOS|ALT_INV_ram~34_q\ <= NOT \MDADOS|ram~34_q\;
\DECODER|ALT_INV_OP_ULA[1]~0_combout\ <= NOT \DECODER|OP_ULA[1]~0_combout\;
\MDADOS|ALT_INV_ram~149_combout\ <= NOT \MDADOS|ram~149_combout\;
\INSTR|ROM|ALT_INV_memROM~7_combout\ <= NOT \INSTR|ROM|memROM~7_combout\;
\INSTR|ROM|ALT_INV_memROM~6_combout\ <= NOT \INSTR|ROM|memROM~6_combout\;
\MDADOS|ALT_INV_ram~148_combout\ <= NOT \MDADOS|ram~148_combout\;
\DECODER|ALT_INV_JUMP~combout\ <= NOT \DECODER|JUMP~combout\;
\INSTR|ROM|ALT_INV_memROM~11_combout\ <= NOT \INSTR|ROM|memROM~11_combout\;
\INSTR|ROM|ALT_INV_memROM~10_combout\ <= NOT \INSTR|ROM|memROM~10_combout\;
\DECODER|ALT_INV_comb~1_combout\ <= NOT \DECODER|comb~1_combout\;
\DECODER|ALT_INV_comb~0_combout\ <= NOT \DECODER|comb~0_combout\;
\DECODER|ALT_INV_Equal0~1_combout\ <= NOT \DECODER|Equal0~1_combout\;
\MDADOS|ALT_INV_process_0~0_combout\ <= NOT \MDADOS|process_0~0_combout\;
\INSTR|ROM|ALT_INV_memROM~8_combout\ <= NOT \INSTR|ROM|memROM~8_combout\;
\MDADOS|ALT_INV_ram~184_combout\ <= NOT \MDADOS|ram~184_combout\;
\MDADOS|ALT_INV_ram~183_combout\ <= NOT \MDADOS|ram~183_combout\;
\MDADOS|ALT_INV_ram~128_q\ <= NOT \MDADOS|ram~128_q\;
\MDADOS|ALT_INV_ram~96_q\ <= NOT \MDADOS|ram~96_q\;
\MDADOS|ALT_INV_ram~64_q\ <= NOT \MDADOS|ram~64_q\;
\MDADOS|ALT_INV_ram~32_q\ <= NOT \MDADOS|ram~32_q\;
\MDADOS|ALT_INV_ram~182_combout\ <= NOT \MDADOS|ram~182_combout\;
\MDADOS|ALT_INV_ram~120_q\ <= NOT \MDADOS|ram~120_q\;
\MDADOS|ALT_INV_ram~88_q\ <= NOT \MDADOS|ram~88_q\;
\MDADOS|ALT_INV_ram~56_q\ <= NOT \MDADOS|ram~56_q\;
\MDADOS|ALT_INV_ram~24_q\ <= NOT \MDADOS|ram~24_q\;
\MDADOS|ALT_INV_ram~181_combout\ <= NOT \MDADOS|ram~181_combout\;
\MDADOS|ALT_INV_ram~144_q\ <= NOT \MDADOS|ram~144_q\;
\MDADOS|ALT_INV_ram~112_q\ <= NOT \MDADOS|ram~112_q\;
\MDADOS|ALT_INV_ram~80_q\ <= NOT \MDADOS|ram~80_q\;
\MDADOS|ALT_INV_ram~48_q\ <= NOT \MDADOS|ram~48_q\;
\MDADOS|ALT_INV_ram~180_combout\ <= NOT \MDADOS|ram~180_combout\;
\MDADOS|ALT_INV_ram~136_q\ <= NOT \MDADOS|ram~136_q\;
\MDADOS|ALT_INV_ram~104_q\ <= NOT \MDADOS|ram~104_q\;
\MDADOS|ALT_INV_ram~72_q\ <= NOT \MDADOS|ram~72_q\;
\MDADOS|ALT_INV_ram~40_q\ <= NOT \MDADOS|ram~40_q\;
\MDADOS|ALT_INV_ram~179_combout\ <= NOT \MDADOS|ram~179_combout\;
\MDADOS|ALT_INV_ram~178_combout\ <= NOT \MDADOS|ram~178_combout\;
\MDADOS|ALT_INV_ram~127_q\ <= NOT \MDADOS|ram~127_q\;
\MDADOS|ALT_INV_ram~119_q\ <= NOT \MDADOS|ram~119_q\;
\MDADOS|ALT_INV_ram~143_q\ <= NOT \MDADOS|ram~143_q\;
\MDADOS|ALT_INV_ram~135_q\ <= NOT \MDADOS|ram~135_q\;
\MDADOS|ALT_INV_ram~177_combout\ <= NOT \MDADOS|ram~177_combout\;
\MDADOS|ALT_INV_ram~95_q\ <= NOT \MDADOS|ram~95_q\;
\MDADOS|ALT_INV_ram~87_q\ <= NOT \MDADOS|ram~87_q\;
\MDADOS|ALT_INV_ram~111_q\ <= NOT \MDADOS|ram~111_q\;
\MDADOS|ALT_INV_ram~103_q\ <= NOT \MDADOS|ram~103_q\;
\MDADOS|ALT_INV_ram~176_combout\ <= NOT \MDADOS|ram~176_combout\;

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
	o => ww_SAIDA(0));

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
	o => ww_SAIDA(1));

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
	o => ww_SAIDA(2));

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
	o => ww_SAIDA(3));

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
	o => ww_SAIDA(4));

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
	o => ww_SAIDA(5));

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
	o => ww_SAIDA(6));

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
	o => ww_SAIDA(7));

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

\INSTR|SOMA_CONST|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \INSTR|SOMA_CONST|Add0~17_sumout\ = SUM(( \INSTR|PC|DOUT\(4) ) + ( GND ) + ( \INSTR|SOMA_CONST|Add0~14\ ))
-- \INSTR|SOMA_CONST|Add0~18\ = CARRY(( \INSTR|PC|DOUT\(4) ) + ( GND ) + ( \INSTR|SOMA_CONST|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \INSTR|PC|ALT_INV_DOUT\(4),
	cin => \INSTR|SOMA_CONST|Add0~14\,
	sumout => \INSTR|SOMA_CONST|Add0~17_sumout\,
	cout => \INSTR|SOMA_CONST|Add0~18\);

\INSTR|SOMA_CONST|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \INSTR|SOMA_CONST|Add0~29_sumout\ = SUM(( \INSTR|PC|DOUT\(5) ) + ( GND ) + ( \INSTR|SOMA_CONST|Add0~18\ ))
-- \INSTR|SOMA_CONST|Add0~30\ = CARRY(( \INSTR|PC|DOUT\(5) ) + ( GND ) + ( \INSTR|SOMA_CONST|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \INSTR|PC|ALT_INV_DOUT\(5),
	cin => \INSTR|SOMA_CONST|Add0~18\,
	sumout => \INSTR|SOMA_CONST|Add0~29_sumout\,
	cout => \INSTR|SOMA_CONST|Add0~30\);

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

\INSTR|ROM|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \INSTR|ROM|memROM~1_combout\ = (!\INSTR|PC|DOUT\(8) & (!\INSTR|PC|DOUT\(7) & (!\INSTR|PC|DOUT\(5) & !\INSTR|PC|DOUT\(6))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR|PC|ALT_INV_DOUT\(8),
	datab => \INSTR|PC|ALT_INV_DOUT\(7),
	datac => \INSTR|PC|ALT_INV_DOUT\(5),
	datad => \INSTR|PC|ALT_INV_DOUT\(6),
	combout => \INSTR|ROM|memROM~1_combout\);

\INSTR|ROM|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \INSTR|ROM|memROM~2_combout\ = (!\INSTR|PC|DOUT\(3) & (!\INSTR|PC|DOUT\(2) $ (((!\INSTR|PC|DOUT\(0)) # (\INSTR|PC|DOUT\(1)))))) # (\INSTR|PC|DOUT\(3) & (!\INSTR|PC|DOUT\(2) & (!\INSTR|PC|DOUT\(0) $ (!\INSTR|PC|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100101101100000010010110110000001001011011000000100101101100000",
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
-- \INSTR|ROM|memROM~3_combout\ = (!\INSTR|PC|DOUT\(2) & (!\INSTR|PC|DOUT\(4) & (!\INSTR|PC|DOUT\(1) $ (!\INSTR|PC|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100000000000010010000000000001001000000000000100100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR|PC|ALT_INV_DOUT\(1),
	datab => \INSTR|PC|ALT_INV_DOUT\(2),
	datac => \INSTR|PC|ALT_INV_DOUT\(3),
	datad => \INSTR|PC|ALT_INV_DOUT\(4),
	combout => \INSTR|ROM|memROM~3_combout\);

\DECODER|comb~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER|comb~1_combout\ = ( \INSTR|ROM|memROM~3_combout\ & ( (\INSTR|ROM|memROM~0_combout\ & (!\INSTR|PC|DOUT\(4) & (\INSTR|ROM|memROM~1_combout\ & !\INSTR|ROM|memROM~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001000000000000000000000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR|ROM|ALT_INV_memROM~0_combout\,
	datab => \INSTR|PC|ALT_INV_DOUT\(4),
	datac => \INSTR|ROM|ALT_INV_memROM~1_combout\,
	datad => \INSTR|ROM|ALT_INV_memROM~2_combout\,
	datae => \INSTR|ROM|ALT_INV_memROM~3_combout\,
	combout => \DECODER|comb~1_combout\);

\DECODER|comb~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER|comb~0_combout\ = ( \INSTR|ROM|memROM~3_combout\ & ( (!\INSTR|ROM|memROM~0_combout\) # ((!\INSTR|ROM|memROM~1_combout\) # (\INSTR|PC|DOUT\(4))) ) ) # ( !\INSTR|ROM|memROM~3_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111110111111101111111111111111111111101111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR|ROM|ALT_INV_memROM~0_combout\,
	datab => \INSTR|PC|ALT_INV_DOUT\(4),
	datac => \INSTR|ROM|ALT_INV_memROM~1_combout\,
	datae => \INSTR|ROM|ALT_INV_memROM~3_combout\,
	combout => \DECODER|comb~0_combout\);

\DECODER|JUMP\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER|JUMP~combout\ = ( \DECODER|comb~1_combout\ & ( !\DECODER|comb~0_combout\ ) ) # ( !\DECODER|comb~1_combout\ & ( !\DECODER|comb~0_combout\ & ( \DECODER|JUMP~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \DECODER|ALT_INV_JUMP~combout\,
	datae => \DECODER|ALT_INV_comb~1_combout\,
	dataf => \DECODER|ALT_INV_comb~0_combout\,
	combout => \DECODER|JUMP~combout\);

\INSTR|PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \INSTR|SOMA_CONST|Add0~29_sumout\,
	asdata => \~GND~combout\,
	sload => \DECODER|JUMP~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INSTR|PC|DOUT\(5));

\INSTR|SOMA_CONST|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \INSTR|SOMA_CONST|Add0~33_sumout\ = SUM(( \INSTR|PC|DOUT\(6) ) + ( GND ) + ( \INSTR|SOMA_CONST|Add0~30\ ))
-- \INSTR|SOMA_CONST|Add0~34\ = CARRY(( \INSTR|PC|DOUT\(6) ) + ( GND ) + ( \INSTR|SOMA_CONST|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \INSTR|PC|ALT_INV_DOUT\(6),
	cin => \INSTR|SOMA_CONST|Add0~30\,
	sumout => \INSTR|SOMA_CONST|Add0~33_sumout\,
	cout => \INSTR|SOMA_CONST|Add0~34\);

\INSTR|PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \INSTR|SOMA_CONST|Add0~33_sumout\,
	asdata => \~GND~combout\,
	sload => \DECODER|JUMP~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INSTR|PC|DOUT\(6));

\INSTR|SOMA_CONST|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \INSTR|SOMA_CONST|Add0~25_sumout\ = SUM(( \INSTR|PC|DOUT\(7) ) + ( GND ) + ( \INSTR|SOMA_CONST|Add0~34\ ))
-- \INSTR|SOMA_CONST|Add0~26\ = CARRY(( \INSTR|PC|DOUT\(7) ) + ( GND ) + ( \INSTR|SOMA_CONST|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \INSTR|PC|ALT_INV_DOUT\(7),
	cin => \INSTR|SOMA_CONST|Add0~34\,
	sumout => \INSTR|SOMA_CONST|Add0~25_sumout\,
	cout => \INSTR|SOMA_CONST|Add0~26\);

\INSTR|PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \INSTR|SOMA_CONST|Add0~25_sumout\,
	asdata => \~GND~combout\,
	sload => \DECODER|JUMP~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INSTR|PC|DOUT\(7));

\INSTR|SOMA_CONST|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \INSTR|SOMA_CONST|Add0~21_sumout\ = SUM(( \INSTR|PC|DOUT\(8) ) + ( GND ) + ( \INSTR|SOMA_CONST|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \INSTR|PC|ALT_INV_DOUT\(8),
	cin => \INSTR|SOMA_CONST|Add0~26\,
	sumout => \INSTR|SOMA_CONST|Add0~21_sumout\);

\INSTR|ROM|memROM~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \INSTR|ROM|memROM~8_combout\ = (!\INSTR|PC|DOUT\(0) & ((!\INSTR|PC|DOUT\(2) & (\INSTR|PC|DOUT\(1))) # (\INSTR|PC|DOUT\(2) & ((!\INSTR|PC|DOUT\(3)))))) # (\INSTR|PC|DOUT\(0) & ((!\INSTR|PC|DOUT\(1) & (!\INSTR|PC|DOUT\(2))) # (\INSTR|PC|DOUT\(1) & 
-- ((!\INSTR|PC|DOUT\(3))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111101101100000011110110110000001111011011000000111101101100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR|PC|ALT_INV_DOUT\(0),
	datab => \INSTR|PC|ALT_INV_DOUT\(1),
	datac => \INSTR|PC|ALT_INV_DOUT\(2),
	datad => \INSTR|PC|ALT_INV_DOUT\(3),
	combout => \INSTR|ROM|memROM~8_combout\);

\INSTR|ROM|memROM~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \INSTR|ROM|memROM~9_combout\ = (!\INSTR|PC|DOUT\(4) & (\INSTR|ROM|memROM~1_combout\ & \INSTR|ROM|memROM~8_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR|PC|ALT_INV_DOUT\(4),
	datab => \INSTR|ROM|ALT_INV_memROM~1_combout\,
	datac => \INSTR|ROM|ALT_INV_memROM~8_combout\,
	combout => \INSTR|ROM|memROM~9_combout\);

\INSTR|PC|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \INSTR|SOMA_CONST|Add0~21_sumout\,
	asdata => \INSTR|ROM|memROM~9_combout\,
	sload => \DECODER|JUMP~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INSTR|PC|DOUT\(8));

\INSTR|ROM|memROM~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \INSTR|ROM|memROM~11_combout\ = (!\INSTR|PC|DOUT\(3) & (!\INSTR|PC|DOUT\(0) & (!\INSTR|PC|DOUT\(1) $ (\INSTR|PC|DOUT\(2))))) # (\INSTR|PC|DOUT\(3) & (((!\INSTR|PC|DOUT\(1) & !\INSTR|PC|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000001011000000100000101100000010000010110000001000001011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR|PC|ALT_INV_DOUT\(0),
	datab => \INSTR|PC|ALT_INV_DOUT\(1),
	datac => \INSTR|PC|ALT_INV_DOUT\(2),
	datad => \INSTR|PC|ALT_INV_DOUT\(3),
	combout => \INSTR|ROM|memROM~11_combout\);

\INSTR|ROM|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \INSTR|ROM|memROM~5_combout\ = ( \INSTR|PC|DOUT\(6) & ( \INSTR|ROM|memROM~11_combout\ ) ) # ( !\INSTR|PC|DOUT\(6) & ( \INSTR|ROM|memROM~11_combout\ & ( (((\INSTR|PC|DOUT\(5)) # (\INSTR|PC|DOUT\(7))) # (\INSTR|PC|DOUT\(8))) # (\INSTR|PC|DOUT\(4)) ) ) ) # ( 
-- \INSTR|PC|DOUT\(6) & ( !\INSTR|ROM|memROM~11_combout\ ) ) # ( !\INSTR|PC|DOUT\(6) & ( !\INSTR|ROM|memROM~11_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111101111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR|PC|ALT_INV_DOUT\(4),
	datab => \INSTR|PC|ALT_INV_DOUT\(8),
	datac => \INSTR|PC|ALT_INV_DOUT\(7),
	datad => \INSTR|PC|ALT_INV_DOUT\(5),
	datae => \INSTR|PC|ALT_INV_DOUT\(6),
	dataf => \INSTR|ROM|ALT_INV_memROM~11_combout\,
	combout => \INSTR|ROM|memROM~5_combout\);

\INSTR|ROM|memROM~5_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \INSTR|ROM|memROM~5_wirecell_combout\ = !\INSTR|ROM|memROM~5_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR|ROM|ALT_INV_memROM~5_combout\,
	combout => \INSTR|ROM|memROM~5_wirecell_combout\);

\INSTR|PC|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \INSTR|SOMA_CONST|Add0~5_sumout\,
	asdata => \INSTR|ROM|memROM~5_wirecell_combout\,
	sload => \DECODER|JUMP~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INSTR|PC|DOUT\(1));

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

\INSTR|ROM|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \INSTR|ROM|memROM~6_combout\ = ( !\INSTR|PC|DOUT\(4) & ( \INSTR|ROM|memROM~1_combout\ & ( (!\INSTR|PC|DOUT\(0) & (\INSTR|PC|DOUT\(1) & (!\INSTR|PC|DOUT\(2) & \INSTR|PC|DOUT\(3)))) # (\INSTR|PC|DOUT\(0) & (!\INSTR|PC|DOUT\(1) & (\INSTR|PC|DOUT\(2) & 
-- !\INSTR|PC|DOUT\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000100001000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR|PC|ALT_INV_DOUT\(0),
	datab => \INSTR|PC|ALT_INV_DOUT\(1),
	datac => \INSTR|PC|ALT_INV_DOUT\(2),
	datad => \INSTR|PC|ALT_INV_DOUT\(3),
	datae => \INSTR|PC|ALT_INV_DOUT\(4),
	dataf => \INSTR|ROM|ALT_INV_memROM~1_combout\,
	combout => \INSTR|ROM|memROM~6_combout\);

\INSTR|PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \INSTR|SOMA_CONST|Add0~9_sumout\,
	asdata => \INSTR|ROM|memROM~6_combout\,
	sload => \DECODER|JUMP~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INSTR|PC|DOUT\(2));

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

\INSTR|ROM|memROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \INSTR|ROM|memROM~7_combout\ = ( \INSTR|ROM|memROM~1_combout\ & ( (!\INSTR|PC|DOUT\(0) & (!\INSTR|PC|DOUT\(1) & (!\INSTR|PC|DOUT\(2) & !\INSTR|PC|DOUT\(4)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000000000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR|PC|ALT_INV_DOUT\(0),
	datab => \INSTR|PC|ALT_INV_DOUT\(1),
	datac => \INSTR|PC|ALT_INV_DOUT\(2),
	datad => \INSTR|PC|ALT_INV_DOUT\(4),
	datae => \INSTR|ROM|ALT_INV_memROM~1_combout\,
	combout => \INSTR|ROM|memROM~7_combout\);

\INSTR|PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \INSTR|SOMA_CONST|Add0~13_sumout\,
	asdata => \INSTR|ROM|memROM~7_combout\,
	sload => \DECODER|JUMP~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INSTR|PC|DOUT\(3));

\INSTR|PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \INSTR|SOMA_CONST|Add0~17_sumout\,
	asdata => \~GND~combout\,
	sload => \DECODER|JUMP~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INSTR|PC|DOUT\(4));

\INSTR|ROM|memROM~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \INSTR|ROM|memROM~10_combout\ = (!\INSTR|PC|DOUT\(0) & (!\INSTR|PC|DOUT\(1) & (!\INSTR|PC|DOUT\(2) $ (!\INSTR|PC|DOUT\(3))))) # (\INSTR|PC|DOUT\(0) & (\INSTR|PC|DOUT\(1) & (\INSTR|PC|DOUT\(2) & !\INSTR|PC|DOUT\(3))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100110000000000010011000000000001001100000000000100110000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR|PC|ALT_INV_DOUT\(0),
	datab => \INSTR|PC|ALT_INV_DOUT\(1),
	datac => \INSTR|PC|ALT_INV_DOUT\(2),
	datad => \INSTR|PC|ALT_INV_DOUT\(3),
	combout => \INSTR|ROM|memROM~10_combout\);

\INSTR|ROM|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \INSTR|ROM|memROM~4_combout\ = ( !\INSTR|PC|DOUT\(6) & ( \INSTR|ROM|memROM~10_combout\ & ( (!\INSTR|PC|DOUT\(4) & (!\INSTR|PC|DOUT\(8) & (!\INSTR|PC|DOUT\(7) & !\INSTR|PC|DOUT\(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR|PC|ALT_INV_DOUT\(4),
	datab => \INSTR|PC|ALT_INV_DOUT\(8),
	datac => \INSTR|PC|ALT_INV_DOUT\(7),
	datad => \INSTR|PC|ALT_INV_DOUT\(5),
	datae => \INSTR|PC|ALT_INV_DOUT\(6),
	dataf => \INSTR|ROM|ALT_INV_memROM~10_combout\,
	combout => \INSTR|ROM|memROM~4_combout\);

\INSTR|PC|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \INSTR|SOMA_CONST|Add0~1_sumout\,
	asdata => \INSTR|ROM|memROM~4_combout\,
	sload => \DECODER|JUMP~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INSTR|PC|DOUT\(0));

\INSTR|ROM|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \INSTR|ROM|memROM~0_combout\ = (!\INSTR|PC|DOUT\(3) & ((!\INSTR|PC|DOUT\(1)) # ((!\INSTR|PC|DOUT\(0) & \INSTR|PC|DOUT\(2))))) # (\INSTR|PC|DOUT\(3) & (!\INSTR|PC|DOUT\(0) & ((!\INSTR|PC|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111010100000110011101010000011001110101000001100111010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR|PC|ALT_INV_DOUT\(0),
	datab => \INSTR|PC|ALT_INV_DOUT\(1),
	datac => \INSTR|PC|ALT_INV_DOUT\(2),
	datad => \INSTR|PC|ALT_INV_DOUT\(3),
	combout => \INSTR|ROM|memROM~0_combout\);

\DECODER|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER|Equal0~0_combout\ = ( !\INSTR|ROM|memROM~3_combout\ & ( (\INSTR|ROM|memROM~0_combout\ & (!\INSTR|PC|DOUT\(4) & (\INSTR|ROM|memROM~1_combout\ & !\INSTR|ROM|memROM~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000000000000000000000000000100000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR|ROM|ALT_INV_memROM~0_combout\,
	datab => \INSTR|PC|ALT_INV_DOUT\(4),
	datac => \INSTR|ROM|ALT_INV_memROM~1_combout\,
	datad => \INSTR|ROM|ALT_INV_memROM~2_combout\,
	datae => \INSTR|ROM|ALT_INV_memROM~3_combout\,
	combout => \DECODER|Equal0~0_combout\);

\MDADOS|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MDADOS|process_0~0_combout\ = ( !\INSTR|ROM|memROM~3_combout\ & ( \INSTR|ROM|memROM~8_combout\ & ( (\INSTR|ROM|memROM~0_combout\ & (!\INSTR|PC|DOUT\(4) & (\INSTR|ROM|memROM~1_combout\ & \INSTR|ROM|memROM~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR|ROM|ALT_INV_memROM~0_combout\,
	datab => \INSTR|PC|ALT_INV_DOUT\(4),
	datac => \INSTR|ROM|ALT_INV_memROM~1_combout\,
	datad => \INSTR|ROM|ALT_INV_memROM~2_combout\,
	datae => \INSTR|ROM|ALT_INV_memROM~3_combout\,
	dataf => \INSTR|ROM|ALT_INV_memROM~8_combout\,
	combout => \MDADOS|process_0~0_combout\);

\MDADOS|ram~185\ : cyclonev_lcell_comb
-- Equation(s):
-- \MDADOS|ram~185_combout\ = ( \MDADOS|process_0~0_combout\ & ( (!\INSTR|ROM|memROM~4_combout\ & (!\INSTR|ROM|memROM~5_combout\ & (!\INSTR|ROM|memROM~6_combout\ & !\INSTR|ROM|memROM~7_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000000000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR|ROM|ALT_INV_memROM~4_combout\,
	datab => \INSTR|ROM|ALT_INV_memROM~5_combout\,
	datac => \INSTR|ROM|ALT_INV_memROM~6_combout\,
	datad => \INSTR|ROM|ALT_INV_memROM~7_combout\,
	datae => \MDADOS|ALT_INV_process_0~0_combout\,
	combout => \MDADOS|ram~185_combout\);

\MDADOS|ram~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(0),
	ena => \MDADOS|ram~185_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDADOS|ram~33_q\);

\MDADOS|ram~186\ : cyclonev_lcell_comb
-- Equation(s):
-- \MDADOS|ram~186_combout\ = ( \MDADOS|process_0~0_combout\ & ( (\INSTR|ROM|memROM~4_combout\ & (!\INSTR|ROM|memROM~5_combout\ & (!\INSTR|ROM|memROM~6_combout\ & !\INSTR|ROM|memROM~7_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010000000000000000000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR|ROM|ALT_INV_memROM~4_combout\,
	datab => \INSTR|ROM|ALT_INV_memROM~5_combout\,
	datac => \INSTR|ROM|ALT_INV_memROM~6_combout\,
	datad => \INSTR|ROM|ALT_INV_memROM~7_combout\,
	datae => \MDADOS|ALT_INV_process_0~0_combout\,
	combout => \MDADOS|ram~186_combout\);

\MDADOS|ram~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(0),
	ena => \MDADOS|ram~186_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDADOS|ram~41_q\);

\MDADOS|ram~187\ : cyclonev_lcell_comb
-- Equation(s):
-- \MDADOS|ram~187_combout\ = ( \MDADOS|process_0~0_combout\ & ( (!\INSTR|ROM|memROM~4_combout\ & (\INSTR|ROM|memROM~5_combout\ & (!\INSTR|ROM|memROM~6_combout\ & !\INSTR|ROM|memROM~7_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000000000000000000000000000000010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR|ROM|ALT_INV_memROM~4_combout\,
	datab => \INSTR|ROM|ALT_INV_memROM~5_combout\,
	datac => \INSTR|ROM|ALT_INV_memROM~6_combout\,
	datad => \INSTR|ROM|ALT_INV_memROM~7_combout\,
	datae => \MDADOS|ALT_INV_process_0~0_combout\,
	combout => \MDADOS|ram~187_combout\);

\MDADOS|ram~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(0),
	ena => \MDADOS|ram~187_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDADOS|ram~17_q\);

\MDADOS|ram~188\ : cyclonev_lcell_comb
-- Equation(s):
-- \MDADOS|ram~188_combout\ = ( \MDADOS|process_0~0_combout\ & ( (\INSTR|ROM|memROM~4_combout\ & (\INSTR|ROM|memROM~5_combout\ & (!\INSTR|ROM|memROM~6_combout\ & !\INSTR|ROM|memROM~7_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100000000000000000000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR|ROM|ALT_INV_memROM~4_combout\,
	datab => \INSTR|ROM|ALT_INV_memROM~5_combout\,
	datac => \INSTR|ROM|ALT_INV_memROM~6_combout\,
	datad => \INSTR|ROM|ALT_INV_memROM~7_combout\,
	datae => \MDADOS|ALT_INV_process_0~0_combout\,
	combout => \MDADOS|ram~188_combout\);

\MDADOS|ram~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(0),
	ena => \MDADOS|ram~188_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDADOS|ram~25_q\);

\MDADOS|ram~145\ : cyclonev_lcell_comb
-- Equation(s):
-- \MDADOS|ram~145_combout\ = ( \INSTR|ROM|memROM~4_combout\ & ( \INSTR|ROM|memROM~5_combout\ & ( \MDADOS|ram~25_q\ ) ) ) # ( !\INSTR|ROM|memROM~4_combout\ & ( \INSTR|ROM|memROM~5_combout\ & ( \MDADOS|ram~17_q\ ) ) ) # ( \INSTR|ROM|memROM~4_combout\ & ( 
-- !\INSTR|ROM|memROM~5_combout\ & ( \MDADOS|ram~41_q\ ) ) ) # ( !\INSTR|ROM|memROM~4_combout\ & ( !\INSTR|ROM|memROM~5_combout\ & ( \MDADOS|ram~33_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MDADOS|ALT_INV_ram~33_q\,
	datab => \MDADOS|ALT_INV_ram~41_q\,
	datac => \MDADOS|ALT_INV_ram~17_q\,
	datad => \MDADOS|ALT_INV_ram~25_q\,
	datae => \INSTR|ROM|ALT_INV_memROM~4_combout\,
	dataf => \INSTR|ROM|ALT_INV_memROM~5_combout\,
	combout => \MDADOS|ram~145_combout\);

\MDADOS|ram~189\ : cyclonev_lcell_comb
-- Equation(s):
-- \MDADOS|ram~189_combout\ = ( \MDADOS|process_0~0_combout\ & ( (!\INSTR|ROM|memROM~4_combout\ & (!\INSTR|ROM|memROM~5_combout\ & (\INSTR|ROM|memROM~6_combout\ & !\INSTR|ROM|memROM~7_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010000000000000000000000000000000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR|ROM|ALT_INV_memROM~4_combout\,
	datab => \INSTR|ROM|ALT_INV_memROM~5_combout\,
	datac => \INSTR|ROM|ALT_INV_memROM~6_combout\,
	datad => \INSTR|ROM|ALT_INV_memROM~7_combout\,
	datae => \MDADOS|ALT_INV_process_0~0_combout\,
	combout => \MDADOS|ram~189_combout\);

\MDADOS|ram~65\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(0),
	ena => \MDADOS|ram~189_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDADOS|ram~65_q\);

\MDADOS|ram~190\ : cyclonev_lcell_comb
-- Equation(s):
-- \MDADOS|ram~190_combout\ = ( \MDADOS|process_0~0_combout\ & ( (\INSTR|ROM|memROM~4_combout\ & (!\INSTR|ROM|memROM~5_combout\ & (\INSTR|ROM|memROM~6_combout\ & !\INSTR|ROM|memROM~7_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001000000000000000000000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR|ROM|ALT_INV_memROM~4_combout\,
	datab => \INSTR|ROM|ALT_INV_memROM~5_combout\,
	datac => \INSTR|ROM|ALT_INV_memROM~6_combout\,
	datad => \INSTR|ROM|ALT_INV_memROM~7_combout\,
	datae => \MDADOS|ALT_INV_process_0~0_combout\,
	combout => \MDADOS|ram~190_combout\);

\MDADOS|ram~73\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(0),
	ena => \MDADOS|ram~190_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDADOS|ram~73_q\);

\MDADOS|ram~191\ : cyclonev_lcell_comb
-- Equation(s):
-- \MDADOS|ram~191_combout\ = ( \MDADOS|process_0~0_combout\ & ( (!\INSTR|ROM|memROM~4_combout\ & (\INSTR|ROM|memROM~5_combout\ & (\INSTR|ROM|memROM~6_combout\ & !\INSTR|ROM|memROM~7_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000100000000000000000000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR|ROM|ALT_INV_memROM~4_combout\,
	datab => \INSTR|ROM|ALT_INV_memROM~5_combout\,
	datac => \INSTR|ROM|ALT_INV_memROM~6_combout\,
	datad => \INSTR|ROM|ALT_INV_memROM~7_combout\,
	datae => \MDADOS|ALT_INV_process_0~0_combout\,
	combout => \MDADOS|ram~191_combout\);

\MDADOS|ram~49\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(0),
	ena => \MDADOS|ram~191_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDADOS|ram~49_q\);

\MDADOS|ram~192\ : cyclonev_lcell_comb
-- Equation(s):
-- \MDADOS|ram~192_combout\ = ( \MDADOS|process_0~0_combout\ & ( (\INSTR|ROM|memROM~4_combout\ & (\INSTR|ROM|memROM~5_combout\ & (\INSTR|ROM|memROM~6_combout\ & !\INSTR|ROM|memROM~7_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010000000000000000000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR|ROM|ALT_INV_memROM~4_combout\,
	datab => \INSTR|ROM|ALT_INV_memROM~5_combout\,
	datac => \INSTR|ROM|ALT_INV_memROM~6_combout\,
	datad => \INSTR|ROM|ALT_INV_memROM~7_combout\,
	datae => \MDADOS|ALT_INV_process_0~0_combout\,
	combout => \MDADOS|ram~192_combout\);

\MDADOS|ram~57\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(0),
	ena => \MDADOS|ram~192_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDADOS|ram~57_q\);

\MDADOS|ram~146\ : cyclonev_lcell_comb
-- Equation(s):
-- \MDADOS|ram~146_combout\ = ( \INSTR|ROM|memROM~4_combout\ & ( \INSTR|ROM|memROM~5_combout\ & ( \MDADOS|ram~57_q\ ) ) ) # ( !\INSTR|ROM|memROM~4_combout\ & ( \INSTR|ROM|memROM~5_combout\ & ( \MDADOS|ram~49_q\ ) ) ) # ( \INSTR|ROM|memROM~4_combout\ & ( 
-- !\INSTR|ROM|memROM~5_combout\ & ( \MDADOS|ram~73_q\ ) ) ) # ( !\INSTR|ROM|memROM~4_combout\ & ( !\INSTR|ROM|memROM~5_combout\ & ( \MDADOS|ram~65_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MDADOS|ALT_INV_ram~65_q\,
	datab => \MDADOS|ALT_INV_ram~73_q\,
	datac => \MDADOS|ALT_INV_ram~49_q\,
	datad => \MDADOS|ALT_INV_ram~57_q\,
	datae => \INSTR|ROM|ALT_INV_memROM~4_combout\,
	dataf => \INSTR|ROM|ALT_INV_memROM~5_combout\,
	combout => \MDADOS|ram~146_combout\);

\MDADOS|ram~193\ : cyclonev_lcell_comb
-- Equation(s):
-- \MDADOS|ram~193_combout\ = ( \MDADOS|process_0~0_combout\ & ( (!\INSTR|ROM|memROM~4_combout\ & (!\INSTR|ROM|memROM~5_combout\ & (!\INSTR|ROM|memROM~6_combout\ & \INSTR|ROM|memROM~7_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001000000000000000000000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR|ROM|ALT_INV_memROM~4_combout\,
	datab => \INSTR|ROM|ALT_INV_memROM~5_combout\,
	datac => \INSTR|ROM|ALT_INV_memROM~6_combout\,
	datad => \INSTR|ROM|ALT_INV_memROM~7_combout\,
	datae => \MDADOS|ALT_INV_process_0~0_combout\,
	combout => \MDADOS|ram~193_combout\);

\MDADOS|ram~97\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(0),
	ena => \MDADOS|ram~193_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDADOS|ram~97_q\);

\MDADOS|ram~194\ : cyclonev_lcell_comb
-- Equation(s):
-- \MDADOS|ram~194_combout\ = ( \MDADOS|process_0~0_combout\ & ( (\INSTR|ROM|memROM~4_combout\ & (!\INSTR|ROM|memROM~5_combout\ & (!\INSTR|ROM|memROM~6_combout\ & \INSTR|ROM|memROM~7_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000100000000000000000000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR|ROM|ALT_INV_memROM~4_combout\,
	datab => \INSTR|ROM|ALT_INV_memROM~5_combout\,
	datac => \INSTR|ROM|ALT_INV_memROM~6_combout\,
	datad => \INSTR|ROM|ALT_INV_memROM~7_combout\,
	datae => \MDADOS|ALT_INV_process_0~0_combout\,
	combout => \MDADOS|ram~194_combout\);

\MDADOS|ram~105\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(0),
	ena => \MDADOS|ram~194_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDADOS|ram~105_q\);

\MDADOS|ram~195\ : cyclonev_lcell_comb
-- Equation(s):
-- \MDADOS|ram~195_combout\ = ( \MDADOS|process_0~0_combout\ & ( (!\INSTR|ROM|memROM~4_combout\ & (\INSTR|ROM|memROM~5_combout\ & (!\INSTR|ROM|memROM~6_combout\ & \INSTR|ROM|memROM~7_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000010000000000000000000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR|ROM|ALT_INV_memROM~4_combout\,
	datab => \INSTR|ROM|ALT_INV_memROM~5_combout\,
	datac => \INSTR|ROM|ALT_INV_memROM~6_combout\,
	datad => \INSTR|ROM|ALT_INV_memROM~7_combout\,
	datae => \MDADOS|ALT_INV_process_0~0_combout\,
	combout => \MDADOS|ram~195_combout\);

\MDADOS|ram~81\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(0),
	ena => \MDADOS|ram~195_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDADOS|ram~81_q\);

\MDADOS|ram~196\ : cyclonev_lcell_comb
-- Equation(s):
-- \MDADOS|ram~196_combout\ = ( \MDADOS|process_0~0_combout\ & ( (\INSTR|ROM|memROM~4_combout\ & (\INSTR|ROM|memROM~5_combout\ & (!\INSTR|ROM|memROM~6_combout\ & \INSTR|ROM|memROM~7_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000000000000000000000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR|ROM|ALT_INV_memROM~4_combout\,
	datab => \INSTR|ROM|ALT_INV_memROM~5_combout\,
	datac => \INSTR|ROM|ALT_INV_memROM~6_combout\,
	datad => \INSTR|ROM|ALT_INV_memROM~7_combout\,
	datae => \MDADOS|ALT_INV_process_0~0_combout\,
	combout => \MDADOS|ram~196_combout\);

\MDADOS|ram~89\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(0),
	ena => \MDADOS|ram~196_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDADOS|ram~89_q\);

\MDADOS|ram~147\ : cyclonev_lcell_comb
-- Equation(s):
-- \MDADOS|ram~147_combout\ = ( \INSTR|ROM|memROM~4_combout\ & ( \INSTR|ROM|memROM~5_combout\ & ( \MDADOS|ram~89_q\ ) ) ) # ( !\INSTR|ROM|memROM~4_combout\ & ( \INSTR|ROM|memROM~5_combout\ & ( \MDADOS|ram~81_q\ ) ) ) # ( \INSTR|ROM|memROM~4_combout\ & ( 
-- !\INSTR|ROM|memROM~5_combout\ & ( \MDADOS|ram~105_q\ ) ) ) # ( !\INSTR|ROM|memROM~4_combout\ & ( !\INSTR|ROM|memROM~5_combout\ & ( \MDADOS|ram~97_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MDADOS|ALT_INV_ram~97_q\,
	datab => \MDADOS|ALT_INV_ram~105_q\,
	datac => \MDADOS|ALT_INV_ram~81_q\,
	datad => \MDADOS|ALT_INV_ram~89_q\,
	datae => \INSTR|ROM|ALT_INV_memROM~4_combout\,
	dataf => \INSTR|ROM|ALT_INV_memROM~5_combout\,
	combout => \MDADOS|ram~147_combout\);

\MDADOS|ram~197\ : cyclonev_lcell_comb
-- Equation(s):
-- \MDADOS|ram~197_combout\ = ( \MDADOS|process_0~0_combout\ & ( (!\INSTR|ROM|memROM~4_combout\ & (!\INSTR|ROM|memROM~5_combout\ & (\INSTR|ROM|memROM~6_combout\ & \INSTR|ROM|memROM~7_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000100000000000000000000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR|ROM|ALT_INV_memROM~4_combout\,
	datab => \INSTR|ROM|ALT_INV_memROM~5_combout\,
	datac => \INSTR|ROM|ALT_INV_memROM~6_combout\,
	datad => \INSTR|ROM|ALT_INV_memROM~7_combout\,
	datae => \MDADOS|ALT_INV_process_0~0_combout\,
	combout => \MDADOS|ram~197_combout\);

\MDADOS|ram~129\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(0),
	ena => \MDADOS|ram~197_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDADOS|ram~129_q\);

\MDADOS|ram~198\ : cyclonev_lcell_comb
-- Equation(s):
-- \MDADOS|ram~198_combout\ = ( \MDADOS|process_0~0_combout\ & ( (\INSTR|ROM|memROM~4_combout\ & (!\INSTR|ROM|memROM~5_combout\ & (\INSTR|ROM|memROM~6_combout\ & \INSTR|ROM|memROM~7_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000010000000000000000000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR|ROM|ALT_INV_memROM~4_combout\,
	datab => \INSTR|ROM|ALT_INV_memROM~5_combout\,
	datac => \INSTR|ROM|ALT_INV_memROM~6_combout\,
	datad => \INSTR|ROM|ALT_INV_memROM~7_combout\,
	datae => \MDADOS|ALT_INV_process_0~0_combout\,
	combout => \MDADOS|ram~198_combout\);

\MDADOS|ram~137\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(0),
	ena => \MDADOS|ram~198_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDADOS|ram~137_q\);

\MDADOS|ram~199\ : cyclonev_lcell_comb
-- Equation(s):
-- \MDADOS|ram~199_combout\ = ( \MDADOS|process_0~0_combout\ & ( (!\INSTR|ROM|memROM~4_combout\ & (\INSTR|ROM|memROM~5_combout\ & (\INSTR|ROM|memROM~6_combout\ & \INSTR|ROM|memROM~7_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000001000000000000000000000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR|ROM|ALT_INV_memROM~4_combout\,
	datab => \INSTR|ROM|ALT_INV_memROM~5_combout\,
	datac => \INSTR|ROM|ALT_INV_memROM~6_combout\,
	datad => \INSTR|ROM|ALT_INV_memROM~7_combout\,
	datae => \MDADOS|ALT_INV_process_0~0_combout\,
	combout => \MDADOS|ram~199_combout\);

\MDADOS|ram~113\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(0),
	ena => \MDADOS|ram~199_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDADOS|ram~113_q\);

\MDADOS|ram~200\ : cyclonev_lcell_comb
-- Equation(s):
-- \MDADOS|ram~200_combout\ = ( \MDADOS|process_0~0_combout\ & ( (\INSTR|ROM|memROM~4_combout\ & (\INSTR|ROM|memROM~5_combout\ & (\INSTR|ROM|memROM~6_combout\ & \INSTR|ROM|memROM~7_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000100000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR|ROM|ALT_INV_memROM~4_combout\,
	datab => \INSTR|ROM|ALT_INV_memROM~5_combout\,
	datac => \INSTR|ROM|ALT_INV_memROM~6_combout\,
	datad => \INSTR|ROM|ALT_INV_memROM~7_combout\,
	datae => \MDADOS|ALT_INV_process_0~0_combout\,
	combout => \MDADOS|ram~200_combout\);

\MDADOS|ram~121\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(0),
	ena => \MDADOS|ram~200_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDADOS|ram~121_q\);

\MDADOS|ram~148\ : cyclonev_lcell_comb
-- Equation(s):
-- \MDADOS|ram~148_combout\ = ( \INSTR|ROM|memROM~4_combout\ & ( \INSTR|ROM|memROM~5_combout\ & ( \MDADOS|ram~121_q\ ) ) ) # ( !\INSTR|ROM|memROM~4_combout\ & ( \INSTR|ROM|memROM~5_combout\ & ( \MDADOS|ram~113_q\ ) ) ) # ( \INSTR|ROM|memROM~4_combout\ & ( 
-- !\INSTR|ROM|memROM~5_combout\ & ( \MDADOS|ram~137_q\ ) ) ) # ( !\INSTR|ROM|memROM~4_combout\ & ( !\INSTR|ROM|memROM~5_combout\ & ( \MDADOS|ram~129_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MDADOS|ALT_INV_ram~129_q\,
	datab => \MDADOS|ALT_INV_ram~137_q\,
	datac => \MDADOS|ALT_INV_ram~113_q\,
	datad => \MDADOS|ALT_INV_ram~121_q\,
	datae => \INSTR|ROM|ALT_INV_memROM~4_combout\,
	dataf => \INSTR|ROM|ALT_INV_memROM~5_combout\,
	combout => \MDADOS|ram~148_combout\);

\MDADOS|ram~149\ : cyclonev_lcell_comb
-- Equation(s):
-- \MDADOS|ram~149_combout\ = ( \INSTR|ROM|memROM~6_combout\ & ( \INSTR|ROM|memROM~7_combout\ & ( \MDADOS|ram~148_combout\ ) ) ) # ( !\INSTR|ROM|memROM~6_combout\ & ( \INSTR|ROM|memROM~7_combout\ & ( \MDADOS|ram~147_combout\ ) ) ) # ( 
-- \INSTR|ROM|memROM~6_combout\ & ( !\INSTR|ROM|memROM~7_combout\ & ( \MDADOS|ram~146_combout\ ) ) ) # ( !\INSTR|ROM|memROM~6_combout\ & ( !\INSTR|ROM|memROM~7_combout\ & ( \MDADOS|ram~145_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MDADOS|ALT_INV_ram~145_combout\,
	datab => \MDADOS|ALT_INV_ram~146_combout\,
	datac => \MDADOS|ALT_INV_ram~147_combout\,
	datad => \MDADOS|ALT_INV_ram~148_combout\,
	datae => \INSTR|ROM|ALT_INV_memROM~6_combout\,
	dataf => \INSTR|ROM|ALT_INV_memROM~7_combout\,
	combout => \MDADOS|ram~149_combout\);

\DECODER|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER|Equal0~1_combout\ = ( \INSTR|ROM|memROM~3_combout\ & ( (\INSTR|ROM|memROM~1_combout\ & (((!\INSTR|ROM|memROM~0_combout\ & !\INSTR|ROM|memROM~2_combout\)) # (\INSTR|PC|DOUT\(4)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010110000001100000000000000000000101100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR|ROM|ALT_INV_memROM~0_combout\,
	datab => \INSTR|PC|ALT_INV_DOUT\(4),
	datac => \INSTR|ROM|ALT_INV_memROM~1_combout\,
	datad => \INSTR|ROM|ALT_INV_memROM~2_combout\,
	datae => \INSTR|ROM|ALT_INV_memROM~3_combout\,
	combout => \DECODER|Equal0~1_combout\);

\ULA1|Add0~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~34_cout\ = CARRY(( !\DECODER|Equal0~1_combout\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \DECODER|ALT_INV_Equal0~1_combout\,
	cin => GND,
	cout => \ULA1|Add0~34_cout\);

\ULA1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~1_sumout\ = SUM(( !\DECODER|Equal0~1_combout\ $ (((!\DECODER|Equal0~0_combout\ & ((\MDADOS|ram~149_combout\))) # (\DECODER|Equal0~0_combout\ & (\INSTR|ROM|memROM~4_combout\)))) ) + ( \REG_A|DOUT\(0) ) + ( \ULA1|Add0~34_cout\ ))
-- \ULA1|Add0~2\ = CARRY(( !\DECODER|Equal0~1_combout\ $ (((!\DECODER|Equal0~0_combout\ & ((\MDADOS|ram~149_combout\))) # (\DECODER|Equal0~0_combout\ & (\INSTR|ROM|memROM~4_combout\)))) ) + ( \REG_A|DOUT\(0) ) + ( \ULA1|Add0~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001110000101001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER|ALT_INV_Equal0~0_combout\,
	datab => \INSTR|ROM|ALT_INV_memROM~4_combout\,
	datac => \DECODER|ALT_INV_Equal0~1_combout\,
	datad => \MDADOS|ALT_INV_ram~149_combout\,
	dataf => \REG_A|ALT_INV_DOUT\(0),
	cin => \ULA1|Add0~34_cout\,
	sumout => \ULA1|Add0~1_sumout\,
	cout => \ULA1|Add0~2\);

\DECODER|OP_ULA[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER|OP_ULA[1]~0_combout\ = ( !\INSTR|ROM|memROM~3_combout\ & ( (!\INSTR|PC|DOUT\(4) & (\INSTR|ROM|memROM~1_combout\ & (!\INSTR|ROM|memROM~0_combout\ $ (!\INSTR|ROM|memROM~2_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000001000000000000000000000000100000010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR|ROM|ALT_INV_memROM~0_combout\,
	datab => \INSTR|PC|ALT_INV_DOUT\(4),
	datac => \INSTR|ROM|ALT_INV_memROM~1_combout\,
	datad => \INSTR|ROM|ALT_INV_memROM~2_combout\,
	datae => \INSTR|ROM|ALT_INV_memROM~3_combout\,
	combout => \DECODER|OP_ULA[1]~0_combout\);

\ULA1|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[0]~0_combout\ = ( \DECODER|OP_ULA[1]~0_combout\ & ( (!\DECODER|Equal0~0_combout\ & ((\MDADOS|ram~149_combout\))) # (\DECODER|Equal0~0_combout\ & (\INSTR|ROM|memROM~4_combout\)) ) ) # ( !\DECODER|OP_ULA[1]~0_combout\ & ( \ULA1|Add0~1_sumout\ ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000110110001101100000000111111110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER|ALT_INV_Equal0~0_combout\,
	datab => \INSTR|ROM|ALT_INV_memROM~4_combout\,
	datac => \MDADOS|ALT_INV_ram~149_combout\,
	datad => \ULA1|ALT_INV_Add0~1_sumout\,
	datae => \DECODER|ALT_INV_OP_ULA[1]~0_combout\,
	combout => \ULA1|saida[0]~0_combout\);

\DECODER|HAB_A~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER|HAB_A~0_combout\ = ( \INSTR|ROM|memROM~3_combout\ & ( (\INSTR|ROM|memROM~1_combout\ & ((!\INSTR|ROM|memROM~0_combout\) # (\INSTR|PC|DOUT\(4)))) ) ) # ( !\INSTR|ROM|memROM~3_combout\ & ( (!\INSTR|PC|DOUT\(4) & (\INSTR|ROM|memROM~1_combout\ & 
-- (!\INSTR|ROM|memROM~0_combout\ $ (!\INSTR|ROM|memROM~2_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000001000000010110000101100000100000010000000101100001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR|ROM|ALT_INV_memROM~0_combout\,
	datab => \INSTR|PC|ALT_INV_DOUT\(4),
	datac => \INSTR|ROM|ALT_INV_memROM~1_combout\,
	datad => \INSTR|ROM|ALT_INV_memROM~2_combout\,
	datae => \INSTR|ROM|ALT_INV_memROM~3_combout\,
	combout => \DECODER|HAB_A~0_combout\);

\REG_A|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA1|saida[0]~0_combout\,
	ena => \DECODER|HAB_A~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_A|DOUT\(0));

\MDADOS|ram~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(1),
	ena => \MDADOS|ram~185_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDADOS|ram~34_q\);

\MDADOS|ram~66\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(1),
	ena => \MDADOS|ram~189_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDADOS|ram~66_q\);

\MDADOS|ram~98\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(1),
	ena => \MDADOS|ram~193_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDADOS|ram~98_q\);

\MDADOS|ram~130\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(1),
	ena => \MDADOS|ram~197_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDADOS|ram~130_q\);

\MDADOS|ram~150\ : cyclonev_lcell_comb
-- Equation(s):
-- \MDADOS|ram~150_combout\ = ( \INSTR|ROM|memROM~6_combout\ & ( \INSTR|ROM|memROM~7_combout\ & ( \MDADOS|ram~130_q\ ) ) ) # ( !\INSTR|ROM|memROM~6_combout\ & ( \INSTR|ROM|memROM~7_combout\ & ( \MDADOS|ram~98_q\ ) ) ) # ( \INSTR|ROM|memROM~6_combout\ & ( 
-- !\INSTR|ROM|memROM~7_combout\ & ( \MDADOS|ram~66_q\ ) ) ) # ( !\INSTR|ROM|memROM~6_combout\ & ( !\INSTR|ROM|memROM~7_combout\ & ( \MDADOS|ram~34_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MDADOS|ALT_INV_ram~34_q\,
	datab => \MDADOS|ALT_INV_ram~66_q\,
	datac => \MDADOS|ALT_INV_ram~98_q\,
	datad => \MDADOS|ALT_INV_ram~130_q\,
	datae => \INSTR|ROM|ALT_INV_memROM~6_combout\,
	dataf => \INSTR|ROM|ALT_INV_memROM~7_combout\,
	combout => \MDADOS|ram~150_combout\);

\MDADOS|ram~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(1),
	ena => \MDADOS|ram~186_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDADOS|ram~42_q\);

\MDADOS|ram~74\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(1),
	ena => \MDADOS|ram~190_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDADOS|ram~74_q\);

\MDADOS|ram~106\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(1),
	ena => \MDADOS|ram~194_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDADOS|ram~106_q\);

\MDADOS|ram~138\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(1),
	ena => \MDADOS|ram~198_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDADOS|ram~138_q\);

\MDADOS|ram~151\ : cyclonev_lcell_comb
-- Equation(s):
-- \MDADOS|ram~151_combout\ = ( \INSTR|ROM|memROM~6_combout\ & ( \INSTR|ROM|memROM~7_combout\ & ( \MDADOS|ram~138_q\ ) ) ) # ( !\INSTR|ROM|memROM~6_combout\ & ( \INSTR|ROM|memROM~7_combout\ & ( \MDADOS|ram~106_q\ ) ) ) # ( \INSTR|ROM|memROM~6_combout\ & ( 
-- !\INSTR|ROM|memROM~7_combout\ & ( \MDADOS|ram~74_q\ ) ) ) # ( !\INSTR|ROM|memROM~6_combout\ & ( !\INSTR|ROM|memROM~7_combout\ & ( \MDADOS|ram~42_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MDADOS|ALT_INV_ram~42_q\,
	datab => \MDADOS|ALT_INV_ram~74_q\,
	datac => \MDADOS|ALT_INV_ram~106_q\,
	datad => \MDADOS|ALT_INV_ram~138_q\,
	datae => \INSTR|ROM|ALT_INV_memROM~6_combout\,
	dataf => \INSTR|ROM|ALT_INV_memROM~7_combout\,
	combout => \MDADOS|ram~151_combout\);

\MDADOS|ram~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(1),
	ena => \MDADOS|ram~187_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDADOS|ram~18_q\);

\MDADOS|ram~50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(1),
	ena => \MDADOS|ram~191_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDADOS|ram~50_q\);

\MDADOS|ram~82\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(1),
	ena => \MDADOS|ram~195_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDADOS|ram~82_q\);

\MDADOS|ram~114\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(1),
	ena => \MDADOS|ram~199_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDADOS|ram~114_q\);

\MDADOS|ram~152\ : cyclonev_lcell_comb
-- Equation(s):
-- \MDADOS|ram~152_combout\ = ( \INSTR|ROM|memROM~6_combout\ & ( \INSTR|ROM|memROM~7_combout\ & ( \MDADOS|ram~114_q\ ) ) ) # ( !\INSTR|ROM|memROM~6_combout\ & ( \INSTR|ROM|memROM~7_combout\ & ( \MDADOS|ram~82_q\ ) ) ) # ( \INSTR|ROM|memROM~6_combout\ & ( 
-- !\INSTR|ROM|memROM~7_combout\ & ( \MDADOS|ram~50_q\ ) ) ) # ( !\INSTR|ROM|memROM~6_combout\ & ( !\INSTR|ROM|memROM~7_combout\ & ( \MDADOS|ram~18_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MDADOS|ALT_INV_ram~18_q\,
	datab => \MDADOS|ALT_INV_ram~50_q\,
	datac => \MDADOS|ALT_INV_ram~82_q\,
	datad => \MDADOS|ALT_INV_ram~114_q\,
	datae => \INSTR|ROM|ALT_INV_memROM~6_combout\,
	dataf => \INSTR|ROM|ALT_INV_memROM~7_combout\,
	combout => \MDADOS|ram~152_combout\);

\MDADOS|ram~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(1),
	ena => \MDADOS|ram~188_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDADOS|ram~26_q\);

\MDADOS|ram~58\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(1),
	ena => \MDADOS|ram~192_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDADOS|ram~58_q\);

\MDADOS|ram~90\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(1),
	ena => \MDADOS|ram~196_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDADOS|ram~90_q\);

\MDADOS|ram~122\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(1),
	ena => \MDADOS|ram~200_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDADOS|ram~122_q\);

\MDADOS|ram~153\ : cyclonev_lcell_comb
-- Equation(s):
-- \MDADOS|ram~153_combout\ = ( \INSTR|ROM|memROM~6_combout\ & ( \INSTR|ROM|memROM~7_combout\ & ( \MDADOS|ram~122_q\ ) ) ) # ( !\INSTR|ROM|memROM~6_combout\ & ( \INSTR|ROM|memROM~7_combout\ & ( \MDADOS|ram~90_q\ ) ) ) # ( \INSTR|ROM|memROM~6_combout\ & ( 
-- !\INSTR|ROM|memROM~7_combout\ & ( \MDADOS|ram~58_q\ ) ) ) # ( !\INSTR|ROM|memROM~6_combout\ & ( !\INSTR|ROM|memROM~7_combout\ & ( \MDADOS|ram~26_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MDADOS|ALT_INV_ram~26_q\,
	datab => \MDADOS|ALT_INV_ram~58_q\,
	datac => \MDADOS|ALT_INV_ram~90_q\,
	datad => \MDADOS|ALT_INV_ram~122_q\,
	datae => \INSTR|ROM|ALT_INV_memROM~6_combout\,
	dataf => \INSTR|ROM|ALT_INV_memROM~7_combout\,
	combout => \MDADOS|ram~153_combout\);

\MDADOS|ram~154\ : cyclonev_lcell_comb
-- Equation(s):
-- \MDADOS|ram~154_combout\ = ( \INSTR|ROM|memROM~4_combout\ & ( \INSTR|ROM|memROM~5_combout\ & ( \MDADOS|ram~153_combout\ ) ) ) # ( !\INSTR|ROM|memROM~4_combout\ & ( \INSTR|ROM|memROM~5_combout\ & ( \MDADOS|ram~152_combout\ ) ) ) # ( 
-- \INSTR|ROM|memROM~4_combout\ & ( !\INSTR|ROM|memROM~5_combout\ & ( \MDADOS|ram~151_combout\ ) ) ) # ( !\INSTR|ROM|memROM~4_combout\ & ( !\INSTR|ROM|memROM~5_combout\ & ( \MDADOS|ram~150_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MDADOS|ALT_INV_ram~150_combout\,
	datab => \MDADOS|ALT_INV_ram~151_combout\,
	datac => \MDADOS|ALT_INV_ram~152_combout\,
	datad => \MDADOS|ALT_INV_ram~153_combout\,
	datae => \INSTR|ROM|ALT_INV_memROM~4_combout\,
	dataf => \INSTR|ROM|ALT_INV_memROM~5_combout\,
	combout => \MDADOS|ram~154_combout\);

\ULA1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~5_sumout\ = SUM(( !\DECODER|Equal0~1_combout\ $ (((!\DECODER|Equal0~0_combout\ & ((\MDADOS|ram~154_combout\))) # (\DECODER|Equal0~0_combout\ & (!\INSTR|ROM|memROM~5_combout\)))) ) + ( \REG_A|DOUT\(1) ) + ( \ULA1|Add0~2\ ))
-- \ULA1|Add0~6\ = CARRY(( !\DECODER|Equal0~1_combout\ $ (((!\DECODER|Equal0~0_combout\ & ((\MDADOS|ram~154_combout\))) # (\DECODER|Equal0~0_combout\ & (!\INSTR|ROM|memROM~5_combout\)))) ) + ( \REG_A|DOUT\(1) ) + ( \ULA1|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001001110000110110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER|ALT_INV_Equal0~0_combout\,
	datab => \DECODER|ALT_INV_Equal0~1_combout\,
	datac => \INSTR|ROM|ALT_INV_memROM~5_combout\,
	datad => \MDADOS|ALT_INV_ram~154_combout\,
	dataf => \REG_A|ALT_INV_DOUT\(1),
	cin => \ULA1|Add0~2\,
	sumout => \ULA1|Add0~5_sumout\,
	cout => \ULA1|Add0~6\);

\ULA1|saida[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[1]~1_combout\ = ( \ULA1|Add0~5_sumout\ & ( (!\DECODER|OP_ULA[1]~0_combout\) # ((!\DECODER|Equal0~0_combout\ & ((\MDADOS|ram~154_combout\))) # (\DECODER|Equal0~0_combout\ & (!\INSTR|ROM|memROM~5_combout\))) ) ) # ( !\ULA1|Add0~5_sumout\ & ( 
-- (\DECODER|OP_ULA[1]~0_combout\ & ((!\DECODER|Equal0~0_combout\ & ((\MDADOS|ram~154_combout\))) # (\DECODER|Equal0~0_combout\ & (!\INSTR|ROM|memROM~5_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000001110111101001111111000000100000011101111010011111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER|ALT_INV_Equal0~0_combout\,
	datab => \INSTR|ROM|ALT_INV_memROM~5_combout\,
	datac => \DECODER|ALT_INV_OP_ULA[1]~0_combout\,
	datad => \MDADOS|ALT_INV_ram~154_combout\,
	datae => \ULA1|ALT_INV_Add0~5_sumout\,
	combout => \ULA1|saida[1]~1_combout\);

\REG_A|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA1|saida[1]~1_combout\,
	ena => \DECODER|HAB_A~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_A|DOUT\(1));

\MDADOS|ram~35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(2),
	ena => \MDADOS|ram~185_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDADOS|ram~35_q\);

\MDADOS|ram~43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(2),
	ena => \MDADOS|ram~186_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDADOS|ram~43_q\);

\MDADOS|ram~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(2),
	ena => \MDADOS|ram~187_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDADOS|ram~19_q\);

\MDADOS|ram~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(2),
	ena => \MDADOS|ram~188_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDADOS|ram~27_q\);

\MDADOS|ram~155\ : cyclonev_lcell_comb
-- Equation(s):
-- \MDADOS|ram~155_combout\ = ( \INSTR|ROM|memROM~4_combout\ & ( \INSTR|ROM|memROM~5_combout\ & ( \MDADOS|ram~27_q\ ) ) ) # ( !\INSTR|ROM|memROM~4_combout\ & ( \INSTR|ROM|memROM~5_combout\ & ( \MDADOS|ram~19_q\ ) ) ) # ( \INSTR|ROM|memROM~4_combout\ & ( 
-- !\INSTR|ROM|memROM~5_combout\ & ( \MDADOS|ram~43_q\ ) ) ) # ( !\INSTR|ROM|memROM~4_combout\ & ( !\INSTR|ROM|memROM~5_combout\ & ( \MDADOS|ram~35_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MDADOS|ALT_INV_ram~35_q\,
	datab => \MDADOS|ALT_INV_ram~43_q\,
	datac => \MDADOS|ALT_INV_ram~19_q\,
	datad => \MDADOS|ALT_INV_ram~27_q\,
	datae => \INSTR|ROM|ALT_INV_memROM~4_combout\,
	dataf => \INSTR|ROM|ALT_INV_memROM~5_combout\,
	combout => \MDADOS|ram~155_combout\);

\MDADOS|ram~67\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(2),
	ena => \MDADOS|ram~189_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDADOS|ram~67_q\);

\MDADOS|ram~75\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(2),
	ena => \MDADOS|ram~190_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDADOS|ram~75_q\);

\MDADOS|ram~51\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(2),
	ena => \MDADOS|ram~191_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDADOS|ram~51_q\);

\MDADOS|ram~59\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(2),
	ena => \MDADOS|ram~192_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDADOS|ram~59_q\);

\MDADOS|ram~156\ : cyclonev_lcell_comb
-- Equation(s):
-- \MDADOS|ram~156_combout\ = ( \INSTR|ROM|memROM~4_combout\ & ( \INSTR|ROM|memROM~5_combout\ & ( \MDADOS|ram~59_q\ ) ) ) # ( !\INSTR|ROM|memROM~4_combout\ & ( \INSTR|ROM|memROM~5_combout\ & ( \MDADOS|ram~51_q\ ) ) ) # ( \INSTR|ROM|memROM~4_combout\ & ( 
-- !\INSTR|ROM|memROM~5_combout\ & ( \MDADOS|ram~75_q\ ) ) ) # ( !\INSTR|ROM|memROM~4_combout\ & ( !\INSTR|ROM|memROM~5_combout\ & ( \MDADOS|ram~67_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MDADOS|ALT_INV_ram~67_q\,
	datab => \MDADOS|ALT_INV_ram~75_q\,
	datac => \MDADOS|ALT_INV_ram~51_q\,
	datad => \MDADOS|ALT_INV_ram~59_q\,
	datae => \INSTR|ROM|ALT_INV_memROM~4_combout\,
	dataf => \INSTR|ROM|ALT_INV_memROM~5_combout\,
	combout => \MDADOS|ram~156_combout\);

\MDADOS|ram~99\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(2),
	ena => \MDADOS|ram~193_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDADOS|ram~99_q\);

\MDADOS|ram~107\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(2),
	ena => \MDADOS|ram~194_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDADOS|ram~107_q\);

\MDADOS|ram~83\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(2),
	ena => \MDADOS|ram~195_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDADOS|ram~83_q\);

\MDADOS|ram~91\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(2),
	ena => \MDADOS|ram~196_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDADOS|ram~91_q\);

\MDADOS|ram~157\ : cyclonev_lcell_comb
-- Equation(s):
-- \MDADOS|ram~157_combout\ = ( \INSTR|ROM|memROM~4_combout\ & ( \INSTR|ROM|memROM~5_combout\ & ( \MDADOS|ram~91_q\ ) ) ) # ( !\INSTR|ROM|memROM~4_combout\ & ( \INSTR|ROM|memROM~5_combout\ & ( \MDADOS|ram~83_q\ ) ) ) # ( \INSTR|ROM|memROM~4_combout\ & ( 
-- !\INSTR|ROM|memROM~5_combout\ & ( \MDADOS|ram~107_q\ ) ) ) # ( !\INSTR|ROM|memROM~4_combout\ & ( !\INSTR|ROM|memROM~5_combout\ & ( \MDADOS|ram~99_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MDADOS|ALT_INV_ram~99_q\,
	datab => \MDADOS|ALT_INV_ram~107_q\,
	datac => \MDADOS|ALT_INV_ram~83_q\,
	datad => \MDADOS|ALT_INV_ram~91_q\,
	datae => \INSTR|ROM|ALT_INV_memROM~4_combout\,
	dataf => \INSTR|ROM|ALT_INV_memROM~5_combout\,
	combout => \MDADOS|ram~157_combout\);

\MDADOS|ram~131\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(2),
	ena => \MDADOS|ram~197_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDADOS|ram~131_q\);

\MDADOS|ram~139\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(2),
	ena => \MDADOS|ram~198_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDADOS|ram~139_q\);

\MDADOS|ram~115\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(2),
	ena => \MDADOS|ram~199_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDADOS|ram~115_q\);

\MDADOS|ram~123\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(2),
	ena => \MDADOS|ram~200_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDADOS|ram~123_q\);

\MDADOS|ram~158\ : cyclonev_lcell_comb
-- Equation(s):
-- \MDADOS|ram~158_combout\ = ( \INSTR|ROM|memROM~4_combout\ & ( \INSTR|ROM|memROM~5_combout\ & ( \MDADOS|ram~123_q\ ) ) ) # ( !\INSTR|ROM|memROM~4_combout\ & ( \INSTR|ROM|memROM~5_combout\ & ( \MDADOS|ram~115_q\ ) ) ) # ( \INSTR|ROM|memROM~4_combout\ & ( 
-- !\INSTR|ROM|memROM~5_combout\ & ( \MDADOS|ram~139_q\ ) ) ) # ( !\INSTR|ROM|memROM~4_combout\ & ( !\INSTR|ROM|memROM~5_combout\ & ( \MDADOS|ram~131_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MDADOS|ALT_INV_ram~131_q\,
	datab => \MDADOS|ALT_INV_ram~139_q\,
	datac => \MDADOS|ALT_INV_ram~115_q\,
	datad => \MDADOS|ALT_INV_ram~123_q\,
	datae => \INSTR|ROM|ALT_INV_memROM~4_combout\,
	dataf => \INSTR|ROM|ALT_INV_memROM~5_combout\,
	combout => \MDADOS|ram~158_combout\);

\MDADOS|ram~159\ : cyclonev_lcell_comb
-- Equation(s):
-- \MDADOS|ram~159_combout\ = ( \INSTR|ROM|memROM~6_combout\ & ( \INSTR|ROM|memROM~7_combout\ & ( \MDADOS|ram~158_combout\ ) ) ) # ( !\INSTR|ROM|memROM~6_combout\ & ( \INSTR|ROM|memROM~7_combout\ & ( \MDADOS|ram~157_combout\ ) ) ) # ( 
-- \INSTR|ROM|memROM~6_combout\ & ( !\INSTR|ROM|memROM~7_combout\ & ( \MDADOS|ram~156_combout\ ) ) ) # ( !\INSTR|ROM|memROM~6_combout\ & ( !\INSTR|ROM|memROM~7_combout\ & ( \MDADOS|ram~155_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MDADOS|ALT_INV_ram~155_combout\,
	datab => \MDADOS|ALT_INV_ram~156_combout\,
	datac => \MDADOS|ALT_INV_ram~157_combout\,
	datad => \MDADOS|ALT_INV_ram~158_combout\,
	datae => \INSTR|ROM|ALT_INV_memROM~6_combout\,
	dataf => \INSTR|ROM|ALT_INV_memROM~7_combout\,
	combout => \MDADOS|ram~159_combout\);

\ULA1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~9_sumout\ = SUM(( !\DECODER|Equal0~1_combout\ $ (((!\DECODER|Equal0~0_combout\ & ((\MDADOS|ram~159_combout\))) # (\DECODER|Equal0~0_combout\ & (\INSTR|ROM|memROM~6_combout\)))) ) + ( \REG_A|DOUT\(2) ) + ( \ULA1|Add0~6\ ))
-- \ULA1|Add0~10\ = CARRY(( !\DECODER|Equal0~1_combout\ $ (((!\DECODER|Equal0~0_combout\ & ((\MDADOS|ram~159_combout\))) # (\DECODER|Equal0~0_combout\ & (\INSTR|ROM|memROM~6_combout\)))) ) + ( \REG_A|DOUT\(2) ) + ( \ULA1|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001100100101100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER|ALT_INV_Equal0~0_combout\,
	datab => \DECODER|ALT_INV_Equal0~1_combout\,
	datac => \INSTR|ROM|ALT_INV_memROM~6_combout\,
	datad => \MDADOS|ALT_INV_ram~159_combout\,
	dataf => \REG_A|ALT_INV_DOUT\(2),
	cin => \ULA1|Add0~6\,
	sumout => \ULA1|Add0~9_sumout\,
	cout => \ULA1|Add0~10\);

\ULA1|saida[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[2]~2_combout\ = ( \ULA1|Add0~9_sumout\ & ( (!\DECODER|OP_ULA[1]~0_combout\) # ((!\DECODER|Equal0~0_combout\ & ((\MDADOS|ram~159_combout\))) # (\DECODER|Equal0~0_combout\ & (\INSTR|ROM|memROM~6_combout\))) ) ) # ( !\ULA1|Add0~9_sumout\ & ( 
-- (\DECODER|OP_ULA[1]~0_combout\ & ((!\DECODER|Equal0~0_combout\ & ((\MDADOS|ram~159_combout\))) # (\DECODER|Equal0~0_combout\ & (\INSTR|ROM|memROM~6_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100001011111100011111101100000001000010111111000111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER|ALT_INV_Equal0~0_combout\,
	datab => \INSTR|ROM|ALT_INV_memROM~6_combout\,
	datac => \DECODER|ALT_INV_OP_ULA[1]~0_combout\,
	datad => \MDADOS|ALT_INV_ram~159_combout\,
	datae => \ULA1|ALT_INV_Add0~9_sumout\,
	combout => \ULA1|saida[2]~2_combout\);

\REG_A|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA1|saida[2]~2_combout\,
	ena => \DECODER|HAB_A~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_A|DOUT\(2));

\MDADOS|ram~36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(3),
	ena => \MDADOS|ram~185_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDADOS|ram~36_q\);

\MDADOS|ram~68\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(3),
	ena => \MDADOS|ram~189_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDADOS|ram~68_q\);

\MDADOS|ram~100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(3),
	ena => \MDADOS|ram~193_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDADOS|ram~100_q\);

\MDADOS|ram~132\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(3),
	ena => \MDADOS|ram~197_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDADOS|ram~132_q\);

\MDADOS|ram~160\ : cyclonev_lcell_comb
-- Equation(s):
-- \MDADOS|ram~160_combout\ = ( \INSTR|ROM|memROM~6_combout\ & ( \INSTR|ROM|memROM~7_combout\ & ( \MDADOS|ram~132_q\ ) ) ) # ( !\INSTR|ROM|memROM~6_combout\ & ( \INSTR|ROM|memROM~7_combout\ & ( \MDADOS|ram~100_q\ ) ) ) # ( \INSTR|ROM|memROM~6_combout\ & ( 
-- !\INSTR|ROM|memROM~7_combout\ & ( \MDADOS|ram~68_q\ ) ) ) # ( !\INSTR|ROM|memROM~6_combout\ & ( !\INSTR|ROM|memROM~7_combout\ & ( \MDADOS|ram~36_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MDADOS|ALT_INV_ram~36_q\,
	datab => \MDADOS|ALT_INV_ram~68_q\,
	datac => \MDADOS|ALT_INV_ram~100_q\,
	datad => \MDADOS|ALT_INV_ram~132_q\,
	datae => \INSTR|ROM|ALT_INV_memROM~6_combout\,
	dataf => \INSTR|ROM|ALT_INV_memROM~7_combout\,
	combout => \MDADOS|ram~160_combout\);

\MDADOS|ram~44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(3),
	ena => \MDADOS|ram~186_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDADOS|ram~44_q\);

\MDADOS|ram~76\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(3),
	ena => \MDADOS|ram~190_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDADOS|ram~76_q\);

\MDADOS|ram~108\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(3),
	ena => \MDADOS|ram~194_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDADOS|ram~108_q\);

\MDADOS|ram~140\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(3),
	ena => \MDADOS|ram~198_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDADOS|ram~140_q\);

\MDADOS|ram~161\ : cyclonev_lcell_comb
-- Equation(s):
-- \MDADOS|ram~161_combout\ = ( \INSTR|ROM|memROM~6_combout\ & ( \INSTR|ROM|memROM~7_combout\ & ( \MDADOS|ram~140_q\ ) ) ) # ( !\INSTR|ROM|memROM~6_combout\ & ( \INSTR|ROM|memROM~7_combout\ & ( \MDADOS|ram~108_q\ ) ) ) # ( \INSTR|ROM|memROM~6_combout\ & ( 
-- !\INSTR|ROM|memROM~7_combout\ & ( \MDADOS|ram~76_q\ ) ) ) # ( !\INSTR|ROM|memROM~6_combout\ & ( !\INSTR|ROM|memROM~7_combout\ & ( \MDADOS|ram~44_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MDADOS|ALT_INV_ram~44_q\,
	datab => \MDADOS|ALT_INV_ram~76_q\,
	datac => \MDADOS|ALT_INV_ram~108_q\,
	datad => \MDADOS|ALT_INV_ram~140_q\,
	datae => \INSTR|ROM|ALT_INV_memROM~6_combout\,
	dataf => \INSTR|ROM|ALT_INV_memROM~7_combout\,
	combout => \MDADOS|ram~161_combout\);

\MDADOS|ram~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(3),
	ena => \MDADOS|ram~187_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDADOS|ram~20_q\);

\MDADOS|ram~52\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(3),
	ena => \MDADOS|ram~191_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDADOS|ram~52_q\);

\MDADOS|ram~84\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(3),
	ena => \MDADOS|ram~195_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDADOS|ram~84_q\);

\MDADOS|ram~116\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(3),
	ena => \MDADOS|ram~199_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDADOS|ram~116_q\);

\MDADOS|ram~162\ : cyclonev_lcell_comb
-- Equation(s):
-- \MDADOS|ram~162_combout\ = ( \INSTR|ROM|memROM~6_combout\ & ( \INSTR|ROM|memROM~7_combout\ & ( \MDADOS|ram~116_q\ ) ) ) # ( !\INSTR|ROM|memROM~6_combout\ & ( \INSTR|ROM|memROM~7_combout\ & ( \MDADOS|ram~84_q\ ) ) ) # ( \INSTR|ROM|memROM~6_combout\ & ( 
-- !\INSTR|ROM|memROM~7_combout\ & ( \MDADOS|ram~52_q\ ) ) ) # ( !\INSTR|ROM|memROM~6_combout\ & ( !\INSTR|ROM|memROM~7_combout\ & ( \MDADOS|ram~20_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MDADOS|ALT_INV_ram~20_q\,
	datab => \MDADOS|ALT_INV_ram~52_q\,
	datac => \MDADOS|ALT_INV_ram~84_q\,
	datad => \MDADOS|ALT_INV_ram~116_q\,
	datae => \INSTR|ROM|ALT_INV_memROM~6_combout\,
	dataf => \INSTR|ROM|ALT_INV_memROM~7_combout\,
	combout => \MDADOS|ram~162_combout\);

\MDADOS|ram~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(3),
	ena => \MDADOS|ram~188_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDADOS|ram~28_q\);

\MDADOS|ram~60\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(3),
	ena => \MDADOS|ram~192_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDADOS|ram~60_q\);

\MDADOS|ram~92\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(3),
	ena => \MDADOS|ram~196_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDADOS|ram~92_q\);

\MDADOS|ram~124\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(3),
	ena => \MDADOS|ram~200_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDADOS|ram~124_q\);

\MDADOS|ram~163\ : cyclonev_lcell_comb
-- Equation(s):
-- \MDADOS|ram~163_combout\ = ( \INSTR|ROM|memROM~6_combout\ & ( \INSTR|ROM|memROM~7_combout\ & ( \MDADOS|ram~124_q\ ) ) ) # ( !\INSTR|ROM|memROM~6_combout\ & ( \INSTR|ROM|memROM~7_combout\ & ( \MDADOS|ram~92_q\ ) ) ) # ( \INSTR|ROM|memROM~6_combout\ & ( 
-- !\INSTR|ROM|memROM~7_combout\ & ( \MDADOS|ram~60_q\ ) ) ) # ( !\INSTR|ROM|memROM~6_combout\ & ( !\INSTR|ROM|memROM~7_combout\ & ( \MDADOS|ram~28_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MDADOS|ALT_INV_ram~28_q\,
	datab => \MDADOS|ALT_INV_ram~60_q\,
	datac => \MDADOS|ALT_INV_ram~92_q\,
	datad => \MDADOS|ALT_INV_ram~124_q\,
	datae => \INSTR|ROM|ALT_INV_memROM~6_combout\,
	dataf => \INSTR|ROM|ALT_INV_memROM~7_combout\,
	combout => \MDADOS|ram~163_combout\);

\MDADOS|ram~164\ : cyclonev_lcell_comb
-- Equation(s):
-- \MDADOS|ram~164_combout\ = ( \INSTR|ROM|memROM~4_combout\ & ( \INSTR|ROM|memROM~5_combout\ & ( \MDADOS|ram~163_combout\ ) ) ) # ( !\INSTR|ROM|memROM~4_combout\ & ( \INSTR|ROM|memROM~5_combout\ & ( \MDADOS|ram~162_combout\ ) ) ) # ( 
-- \INSTR|ROM|memROM~4_combout\ & ( !\INSTR|ROM|memROM~5_combout\ & ( \MDADOS|ram~161_combout\ ) ) ) # ( !\INSTR|ROM|memROM~4_combout\ & ( !\INSTR|ROM|memROM~5_combout\ & ( \MDADOS|ram~160_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MDADOS|ALT_INV_ram~160_combout\,
	datab => \MDADOS|ALT_INV_ram~161_combout\,
	datac => \MDADOS|ALT_INV_ram~162_combout\,
	datad => \MDADOS|ALT_INV_ram~163_combout\,
	datae => \INSTR|ROM|ALT_INV_memROM~4_combout\,
	dataf => \INSTR|ROM|ALT_INV_memROM~5_combout\,
	combout => \MDADOS|ram~164_combout\);

\ULA1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~13_sumout\ = SUM(( !\DECODER|Equal0~1_combout\ $ (((!\DECODER|Equal0~0_combout\ & ((\MDADOS|ram~164_combout\))) # (\DECODER|Equal0~0_combout\ & (\INSTR|ROM|memROM~7_combout\)))) ) + ( \REG_A|DOUT\(3) ) + ( \ULA1|Add0~10\ ))
-- \ULA1|Add0~14\ = CARRY(( !\DECODER|Equal0~1_combout\ $ (((!\DECODER|Equal0~0_combout\ & ((\MDADOS|ram~164_combout\))) # (\DECODER|Equal0~0_combout\ & (\INSTR|ROM|memROM~7_combout\)))) ) + ( \REG_A|DOUT\(3) ) + ( \ULA1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010100101100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER|ALT_INV_Equal0~1_combout\,
	datab => \DECODER|ALT_INV_Equal0~0_combout\,
	datac => \INSTR|ROM|ALT_INV_memROM~7_combout\,
	datad => \MDADOS|ALT_INV_ram~164_combout\,
	dataf => \REG_A|ALT_INV_DOUT\(3),
	cin => \ULA1|Add0~10\,
	sumout => \ULA1|Add0~13_sumout\,
	cout => \ULA1|Add0~14\);

\ULA1|saida[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[3]~3_combout\ = ( \ULA1|Add0~13_sumout\ & ( (!\DECODER|OP_ULA[1]~0_combout\) # ((!\DECODER|Equal0~0_combout\ & ((\MDADOS|ram~164_combout\))) # (\DECODER|Equal0~0_combout\ & (\INSTR|ROM|memROM~7_combout\))) ) ) # ( !\ULA1|Add0~13_sumout\ & ( 
-- (\DECODER|OP_ULA[1]~0_combout\ & ((!\DECODER|Equal0~0_combout\ & ((\MDADOS|ram~164_combout\))) # (\DECODER|Equal0~0_combout\ & (\INSTR|ROM|memROM~7_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100001011111100011111101100000001000010111111000111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER|ALT_INV_Equal0~0_combout\,
	datab => \INSTR|ROM|ALT_INV_memROM~7_combout\,
	datac => \DECODER|ALT_INV_OP_ULA[1]~0_combout\,
	datad => \MDADOS|ALT_INV_ram~164_combout\,
	datae => \ULA1|ALT_INV_Add0~13_sumout\,
	combout => \ULA1|saida[3]~3_combout\);

\REG_A|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA1|saida[3]~3_combout\,
	ena => \DECODER|HAB_A~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_A|DOUT\(3));

\MDADOS|ram~37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(4),
	ena => \MDADOS|ram~185_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDADOS|ram~37_q\);

\MDADOS|ram~45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(4),
	ena => \MDADOS|ram~186_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDADOS|ram~45_q\);

\MDADOS|ram~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(4),
	ena => \MDADOS|ram~187_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDADOS|ram~21_q\);

\MDADOS|ram~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(4),
	ena => \MDADOS|ram~188_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDADOS|ram~29_q\);

\MDADOS|ram~165\ : cyclonev_lcell_comb
-- Equation(s):
-- \MDADOS|ram~165_combout\ = ( \INSTR|ROM|memROM~4_combout\ & ( \INSTR|ROM|memROM~5_combout\ & ( \MDADOS|ram~29_q\ ) ) ) # ( !\INSTR|ROM|memROM~4_combout\ & ( \INSTR|ROM|memROM~5_combout\ & ( \MDADOS|ram~21_q\ ) ) ) # ( \INSTR|ROM|memROM~4_combout\ & ( 
-- !\INSTR|ROM|memROM~5_combout\ & ( \MDADOS|ram~45_q\ ) ) ) # ( !\INSTR|ROM|memROM~4_combout\ & ( !\INSTR|ROM|memROM~5_combout\ & ( \MDADOS|ram~37_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MDADOS|ALT_INV_ram~37_q\,
	datab => \MDADOS|ALT_INV_ram~45_q\,
	datac => \MDADOS|ALT_INV_ram~21_q\,
	datad => \MDADOS|ALT_INV_ram~29_q\,
	datae => \INSTR|ROM|ALT_INV_memROM~4_combout\,
	dataf => \INSTR|ROM|ALT_INV_memROM~5_combout\,
	combout => \MDADOS|ram~165_combout\);

\MDADOS|ram~69\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(4),
	ena => \MDADOS|ram~189_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDADOS|ram~69_q\);

\MDADOS|ram~77\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(4),
	ena => \MDADOS|ram~190_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDADOS|ram~77_q\);

\MDADOS|ram~53\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(4),
	ena => \MDADOS|ram~191_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDADOS|ram~53_q\);

\MDADOS|ram~61\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(4),
	ena => \MDADOS|ram~192_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDADOS|ram~61_q\);

\MDADOS|ram~166\ : cyclonev_lcell_comb
-- Equation(s):
-- \MDADOS|ram~166_combout\ = ( \INSTR|ROM|memROM~4_combout\ & ( \INSTR|ROM|memROM~5_combout\ & ( \MDADOS|ram~61_q\ ) ) ) # ( !\INSTR|ROM|memROM~4_combout\ & ( \INSTR|ROM|memROM~5_combout\ & ( \MDADOS|ram~53_q\ ) ) ) # ( \INSTR|ROM|memROM~4_combout\ & ( 
-- !\INSTR|ROM|memROM~5_combout\ & ( \MDADOS|ram~77_q\ ) ) ) # ( !\INSTR|ROM|memROM~4_combout\ & ( !\INSTR|ROM|memROM~5_combout\ & ( \MDADOS|ram~69_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MDADOS|ALT_INV_ram~69_q\,
	datab => \MDADOS|ALT_INV_ram~77_q\,
	datac => \MDADOS|ALT_INV_ram~53_q\,
	datad => \MDADOS|ALT_INV_ram~61_q\,
	datae => \INSTR|ROM|ALT_INV_memROM~4_combout\,
	dataf => \INSTR|ROM|ALT_INV_memROM~5_combout\,
	combout => \MDADOS|ram~166_combout\);

\MDADOS|ram~101\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(4),
	ena => \MDADOS|ram~193_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDADOS|ram~101_q\);

\MDADOS|ram~109\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(4),
	ena => \MDADOS|ram~194_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDADOS|ram~109_q\);

\MDADOS|ram~85\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(4),
	ena => \MDADOS|ram~195_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDADOS|ram~85_q\);

\MDADOS|ram~93\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(4),
	ena => \MDADOS|ram~196_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDADOS|ram~93_q\);

\MDADOS|ram~167\ : cyclonev_lcell_comb
-- Equation(s):
-- \MDADOS|ram~167_combout\ = ( \INSTR|ROM|memROM~4_combout\ & ( \INSTR|ROM|memROM~5_combout\ & ( \MDADOS|ram~93_q\ ) ) ) # ( !\INSTR|ROM|memROM~4_combout\ & ( \INSTR|ROM|memROM~5_combout\ & ( \MDADOS|ram~85_q\ ) ) ) # ( \INSTR|ROM|memROM~4_combout\ & ( 
-- !\INSTR|ROM|memROM~5_combout\ & ( \MDADOS|ram~109_q\ ) ) ) # ( !\INSTR|ROM|memROM~4_combout\ & ( !\INSTR|ROM|memROM~5_combout\ & ( \MDADOS|ram~101_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MDADOS|ALT_INV_ram~101_q\,
	datab => \MDADOS|ALT_INV_ram~109_q\,
	datac => \MDADOS|ALT_INV_ram~85_q\,
	datad => \MDADOS|ALT_INV_ram~93_q\,
	datae => \INSTR|ROM|ALT_INV_memROM~4_combout\,
	dataf => \INSTR|ROM|ALT_INV_memROM~5_combout\,
	combout => \MDADOS|ram~167_combout\);

\MDADOS|ram~133\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(4),
	ena => \MDADOS|ram~197_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDADOS|ram~133_q\);

\MDADOS|ram~141\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(4),
	ena => \MDADOS|ram~198_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDADOS|ram~141_q\);

\MDADOS|ram~117\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(4),
	ena => \MDADOS|ram~199_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDADOS|ram~117_q\);

\MDADOS|ram~125\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(4),
	ena => \MDADOS|ram~200_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDADOS|ram~125_q\);

\MDADOS|ram~168\ : cyclonev_lcell_comb
-- Equation(s):
-- \MDADOS|ram~168_combout\ = ( \INSTR|ROM|memROM~4_combout\ & ( \INSTR|ROM|memROM~5_combout\ & ( \MDADOS|ram~125_q\ ) ) ) # ( !\INSTR|ROM|memROM~4_combout\ & ( \INSTR|ROM|memROM~5_combout\ & ( \MDADOS|ram~117_q\ ) ) ) # ( \INSTR|ROM|memROM~4_combout\ & ( 
-- !\INSTR|ROM|memROM~5_combout\ & ( \MDADOS|ram~141_q\ ) ) ) # ( !\INSTR|ROM|memROM~4_combout\ & ( !\INSTR|ROM|memROM~5_combout\ & ( \MDADOS|ram~133_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MDADOS|ALT_INV_ram~133_q\,
	datab => \MDADOS|ALT_INV_ram~141_q\,
	datac => \MDADOS|ALT_INV_ram~117_q\,
	datad => \MDADOS|ALT_INV_ram~125_q\,
	datae => \INSTR|ROM|ALT_INV_memROM~4_combout\,
	dataf => \INSTR|ROM|ALT_INV_memROM~5_combout\,
	combout => \MDADOS|ram~168_combout\);

\MDADOS|ram~169\ : cyclonev_lcell_comb
-- Equation(s):
-- \MDADOS|ram~169_combout\ = ( \INSTR|ROM|memROM~6_combout\ & ( \INSTR|ROM|memROM~7_combout\ & ( \MDADOS|ram~168_combout\ ) ) ) # ( !\INSTR|ROM|memROM~6_combout\ & ( \INSTR|ROM|memROM~7_combout\ & ( \MDADOS|ram~167_combout\ ) ) ) # ( 
-- \INSTR|ROM|memROM~6_combout\ & ( !\INSTR|ROM|memROM~7_combout\ & ( \MDADOS|ram~166_combout\ ) ) ) # ( !\INSTR|ROM|memROM~6_combout\ & ( !\INSTR|ROM|memROM~7_combout\ & ( \MDADOS|ram~165_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MDADOS|ALT_INV_ram~165_combout\,
	datab => \MDADOS|ALT_INV_ram~166_combout\,
	datac => \MDADOS|ALT_INV_ram~167_combout\,
	datad => \MDADOS|ALT_INV_ram~168_combout\,
	datae => \INSTR|ROM|ALT_INV_memROM~6_combout\,
	dataf => \INSTR|ROM|ALT_INV_memROM~7_combout\,
	combout => \MDADOS|ram~169_combout\);

\ULA1|saida[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[4]~4_combout\ = ( !\INSTR|ROM|memROM~3_combout\ & ( (!\INSTR|ROM|memROM~0_combout\ & (!\INSTR|PC|DOUT\(4) & (\INSTR|ROM|memROM~1_combout\ & \INSTR|ROM|memROM~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000000000000000000010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR|ROM|ALT_INV_memROM~0_combout\,
	datab => \INSTR|PC|ALT_INV_DOUT\(4),
	datac => \INSTR|ROM|ALT_INV_memROM~1_combout\,
	datad => \INSTR|ROM|ALT_INV_memROM~2_combout\,
	datae => \INSTR|ROM|ALT_INV_memROM~3_combout\,
	combout => \ULA1|saida[4]~4_combout\);

\ULA1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~17_sumout\ = SUM(( !\DECODER|Equal0~1_combout\ $ (((!\DECODER|Equal0~0_combout\ & \MDADOS|ram~169_combout\))) ) + ( \REG_A|DOUT\(4) ) + ( \ULA1|Add0~14\ ))
-- \ULA1|Add0~18\ = CARRY(( !\DECODER|Equal0~1_combout\ $ (((!\DECODER|Equal0~0_combout\ & \MDADOS|ram~169_combout\))) ) + ( \REG_A|DOUT\(4) ) + ( \ULA1|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER|ALT_INV_Equal0~1_combout\,
	datab => \DECODER|ALT_INV_Equal0~0_combout\,
	datad => \MDADOS|ALT_INV_ram~169_combout\,
	dataf => \REG_A|ALT_INV_DOUT\(4),
	cin => \ULA1|Add0~14\,
	sumout => \ULA1|Add0~17_sumout\,
	cout => \ULA1|Add0~18\);

\ULA1|saida[4]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[4]~5_combout\ = (!\MDADOS|ram~169_combout\ & (((\ULA1|Add0~17_sumout\ & !\DECODER|OP_ULA[1]~0_combout\)))) # (\MDADOS|ram~169_combout\ & (((\ULA1|Add0~17_sumout\ & !\DECODER|OP_ULA[1]~0_combout\)) # (\ULA1|saida[4]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111100010001000111110001000100011111000100010001111100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MDADOS|ALT_INV_ram~169_combout\,
	datab => \ULA1|ALT_INV_saida[4]~4_combout\,
	datac => \ULA1|ALT_INV_Add0~17_sumout\,
	datad => \DECODER|ALT_INV_OP_ULA[1]~0_combout\,
	combout => \ULA1|saida[4]~5_combout\);

\REG_A|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA1|saida[4]~5_combout\,
	ena => \DECODER|HAB_A~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_A|DOUT\(4));

\MDADOS|ram~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(5),
	ena => \MDADOS|ram~185_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDADOS|ram~38_q\);

\MDADOS|ram~70\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(5),
	ena => \MDADOS|ram~189_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDADOS|ram~70_q\);

\MDADOS|ram~102\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(5),
	ena => \MDADOS|ram~193_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDADOS|ram~102_q\);

\MDADOS|ram~134\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(5),
	ena => \MDADOS|ram~197_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDADOS|ram~134_q\);

\MDADOS|ram~170\ : cyclonev_lcell_comb
-- Equation(s):
-- \MDADOS|ram~170_combout\ = ( \INSTR|ROM|memROM~6_combout\ & ( \INSTR|ROM|memROM~7_combout\ & ( \MDADOS|ram~134_q\ ) ) ) # ( !\INSTR|ROM|memROM~6_combout\ & ( \INSTR|ROM|memROM~7_combout\ & ( \MDADOS|ram~102_q\ ) ) ) # ( \INSTR|ROM|memROM~6_combout\ & ( 
-- !\INSTR|ROM|memROM~7_combout\ & ( \MDADOS|ram~70_q\ ) ) ) # ( !\INSTR|ROM|memROM~6_combout\ & ( !\INSTR|ROM|memROM~7_combout\ & ( \MDADOS|ram~38_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MDADOS|ALT_INV_ram~38_q\,
	datab => \MDADOS|ALT_INV_ram~70_q\,
	datac => \MDADOS|ALT_INV_ram~102_q\,
	datad => \MDADOS|ALT_INV_ram~134_q\,
	datae => \INSTR|ROM|ALT_INV_memROM~6_combout\,
	dataf => \INSTR|ROM|ALT_INV_memROM~7_combout\,
	combout => \MDADOS|ram~170_combout\);

\MDADOS|ram~46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(5),
	ena => \MDADOS|ram~186_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDADOS|ram~46_q\);

\MDADOS|ram~78\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(5),
	ena => \MDADOS|ram~190_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDADOS|ram~78_q\);

\MDADOS|ram~110\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(5),
	ena => \MDADOS|ram~194_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDADOS|ram~110_q\);

\MDADOS|ram~142\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(5),
	ena => \MDADOS|ram~198_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDADOS|ram~142_q\);

\MDADOS|ram~171\ : cyclonev_lcell_comb
-- Equation(s):
-- \MDADOS|ram~171_combout\ = ( \INSTR|ROM|memROM~6_combout\ & ( \INSTR|ROM|memROM~7_combout\ & ( \MDADOS|ram~142_q\ ) ) ) # ( !\INSTR|ROM|memROM~6_combout\ & ( \INSTR|ROM|memROM~7_combout\ & ( \MDADOS|ram~110_q\ ) ) ) # ( \INSTR|ROM|memROM~6_combout\ & ( 
-- !\INSTR|ROM|memROM~7_combout\ & ( \MDADOS|ram~78_q\ ) ) ) # ( !\INSTR|ROM|memROM~6_combout\ & ( !\INSTR|ROM|memROM~7_combout\ & ( \MDADOS|ram~46_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MDADOS|ALT_INV_ram~46_q\,
	datab => \MDADOS|ALT_INV_ram~78_q\,
	datac => \MDADOS|ALT_INV_ram~110_q\,
	datad => \MDADOS|ALT_INV_ram~142_q\,
	datae => \INSTR|ROM|ALT_INV_memROM~6_combout\,
	dataf => \INSTR|ROM|ALT_INV_memROM~7_combout\,
	combout => \MDADOS|ram~171_combout\);

\MDADOS|ram~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(5),
	ena => \MDADOS|ram~187_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDADOS|ram~22_q\);

\MDADOS|ram~54\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(5),
	ena => \MDADOS|ram~191_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDADOS|ram~54_q\);

\MDADOS|ram~86\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(5),
	ena => \MDADOS|ram~195_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDADOS|ram~86_q\);

\MDADOS|ram~118\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(5),
	ena => \MDADOS|ram~199_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDADOS|ram~118_q\);

\MDADOS|ram~172\ : cyclonev_lcell_comb
-- Equation(s):
-- \MDADOS|ram~172_combout\ = ( \INSTR|ROM|memROM~6_combout\ & ( \INSTR|ROM|memROM~7_combout\ & ( \MDADOS|ram~118_q\ ) ) ) # ( !\INSTR|ROM|memROM~6_combout\ & ( \INSTR|ROM|memROM~7_combout\ & ( \MDADOS|ram~86_q\ ) ) ) # ( \INSTR|ROM|memROM~6_combout\ & ( 
-- !\INSTR|ROM|memROM~7_combout\ & ( \MDADOS|ram~54_q\ ) ) ) # ( !\INSTR|ROM|memROM~6_combout\ & ( !\INSTR|ROM|memROM~7_combout\ & ( \MDADOS|ram~22_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MDADOS|ALT_INV_ram~22_q\,
	datab => \MDADOS|ALT_INV_ram~54_q\,
	datac => \MDADOS|ALT_INV_ram~86_q\,
	datad => \MDADOS|ALT_INV_ram~118_q\,
	datae => \INSTR|ROM|ALT_INV_memROM~6_combout\,
	dataf => \INSTR|ROM|ALT_INV_memROM~7_combout\,
	combout => \MDADOS|ram~172_combout\);

\MDADOS|ram~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(5),
	ena => \MDADOS|ram~188_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDADOS|ram~30_q\);

\MDADOS|ram~62\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(5),
	ena => \MDADOS|ram~192_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDADOS|ram~62_q\);

\MDADOS|ram~94\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(5),
	ena => \MDADOS|ram~196_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDADOS|ram~94_q\);

\MDADOS|ram~126\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(5),
	ena => \MDADOS|ram~200_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDADOS|ram~126_q\);

\MDADOS|ram~173\ : cyclonev_lcell_comb
-- Equation(s):
-- \MDADOS|ram~173_combout\ = ( \INSTR|ROM|memROM~6_combout\ & ( \INSTR|ROM|memROM~7_combout\ & ( \MDADOS|ram~126_q\ ) ) ) # ( !\INSTR|ROM|memROM~6_combout\ & ( \INSTR|ROM|memROM~7_combout\ & ( \MDADOS|ram~94_q\ ) ) ) # ( \INSTR|ROM|memROM~6_combout\ & ( 
-- !\INSTR|ROM|memROM~7_combout\ & ( \MDADOS|ram~62_q\ ) ) ) # ( !\INSTR|ROM|memROM~6_combout\ & ( !\INSTR|ROM|memROM~7_combout\ & ( \MDADOS|ram~30_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MDADOS|ALT_INV_ram~30_q\,
	datab => \MDADOS|ALT_INV_ram~62_q\,
	datac => \MDADOS|ALT_INV_ram~94_q\,
	datad => \MDADOS|ALT_INV_ram~126_q\,
	datae => \INSTR|ROM|ALT_INV_memROM~6_combout\,
	dataf => \INSTR|ROM|ALT_INV_memROM~7_combout\,
	combout => \MDADOS|ram~173_combout\);

\MDADOS|ram~174\ : cyclonev_lcell_comb
-- Equation(s):
-- \MDADOS|ram~174_combout\ = ( \INSTR|ROM|memROM~4_combout\ & ( \INSTR|ROM|memROM~5_combout\ & ( \MDADOS|ram~173_combout\ ) ) ) # ( !\INSTR|ROM|memROM~4_combout\ & ( \INSTR|ROM|memROM~5_combout\ & ( \MDADOS|ram~172_combout\ ) ) ) # ( 
-- \INSTR|ROM|memROM~4_combout\ & ( !\INSTR|ROM|memROM~5_combout\ & ( \MDADOS|ram~171_combout\ ) ) ) # ( !\INSTR|ROM|memROM~4_combout\ & ( !\INSTR|ROM|memROM~5_combout\ & ( \MDADOS|ram~170_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MDADOS|ALT_INV_ram~170_combout\,
	datab => \MDADOS|ALT_INV_ram~171_combout\,
	datac => \MDADOS|ALT_INV_ram~172_combout\,
	datad => \MDADOS|ALT_INV_ram~173_combout\,
	datae => \INSTR|ROM|ALT_INV_memROM~4_combout\,
	dataf => \INSTR|ROM|ALT_INV_memROM~5_combout\,
	combout => \MDADOS|ram~174_combout\);

\ULA1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~21_sumout\ = SUM(( !\DECODER|Equal0~1_combout\ $ (((!\DECODER|Equal0~0_combout\ & \MDADOS|ram~174_combout\))) ) + ( \REG_A|DOUT\(5) ) + ( \ULA1|Add0~18\ ))
-- \ULA1|Add0~22\ = CARRY(( !\DECODER|Equal0~1_combout\ $ (((!\DECODER|Equal0~0_combout\ & \MDADOS|ram~174_combout\))) ) + ( \REG_A|DOUT\(5) ) + ( \ULA1|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER|ALT_INV_Equal0~1_combout\,
	datab => \DECODER|ALT_INV_Equal0~0_combout\,
	datad => \MDADOS|ALT_INV_ram~174_combout\,
	dataf => \REG_A|ALT_INV_DOUT\(5),
	cin => \ULA1|Add0~18\,
	sumout => \ULA1|Add0~21_sumout\,
	cout => \ULA1|Add0~22\);

\ULA1|saida[5]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[5]~6_combout\ = (!\ULA1|saida[4]~4_combout\ & (!\DECODER|OP_ULA[1]~0_combout\ & ((\ULA1|Add0~21_sumout\)))) # (\ULA1|saida[4]~4_combout\ & (((!\DECODER|OP_ULA[1]~0_combout\ & \ULA1|Add0~21_sumout\)) # (\MDADOS|ram~174_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111001101000001011100110100000101110011010000010111001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_saida[4]~4_combout\,
	datab => \DECODER|ALT_INV_OP_ULA[1]~0_combout\,
	datac => \MDADOS|ALT_INV_ram~174_combout\,
	datad => \ULA1|ALT_INV_Add0~21_sumout\,
	combout => \ULA1|saida[5]~6_combout\);

\REG_A|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA1|saida[5]~6_combout\,
	ena => \DECODER|HAB_A~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_A|DOUT\(5));

\MDADOS|ram~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(6),
	ena => \MDADOS|ram~185_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDADOS|ram~39_q\);

\MDADOS|ram~47\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(6),
	ena => \MDADOS|ram~186_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDADOS|ram~47_q\);

\MDADOS|ram~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(6),
	ena => \MDADOS|ram~187_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDADOS|ram~23_q\);

\MDADOS|ram~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(6),
	ena => \MDADOS|ram~188_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDADOS|ram~31_q\);

\MDADOS|ram~175\ : cyclonev_lcell_comb
-- Equation(s):
-- \MDADOS|ram~175_combout\ = ( \INSTR|ROM|memROM~4_combout\ & ( \INSTR|ROM|memROM~5_combout\ & ( \MDADOS|ram~31_q\ ) ) ) # ( !\INSTR|ROM|memROM~4_combout\ & ( \INSTR|ROM|memROM~5_combout\ & ( \MDADOS|ram~23_q\ ) ) ) # ( \INSTR|ROM|memROM~4_combout\ & ( 
-- !\INSTR|ROM|memROM~5_combout\ & ( \MDADOS|ram~47_q\ ) ) ) # ( !\INSTR|ROM|memROM~4_combout\ & ( !\INSTR|ROM|memROM~5_combout\ & ( \MDADOS|ram~39_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MDADOS|ALT_INV_ram~39_q\,
	datab => \MDADOS|ALT_INV_ram~47_q\,
	datac => \MDADOS|ALT_INV_ram~23_q\,
	datad => \MDADOS|ALT_INV_ram~31_q\,
	datae => \INSTR|ROM|ALT_INV_memROM~4_combout\,
	dataf => \INSTR|ROM|ALT_INV_memROM~5_combout\,
	combout => \MDADOS|ram~175_combout\);

\MDADOS|ram~71\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(6),
	ena => \MDADOS|ram~189_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDADOS|ram~71_q\);

\MDADOS|ram~79\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(6),
	ena => \MDADOS|ram~190_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDADOS|ram~79_q\);

\MDADOS|ram~55\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(6),
	ena => \MDADOS|ram~191_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDADOS|ram~55_q\);

\MDADOS|ram~63\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(6),
	ena => \MDADOS|ram~192_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDADOS|ram~63_q\);

\MDADOS|ram~176\ : cyclonev_lcell_comb
-- Equation(s):
-- \MDADOS|ram~176_combout\ = ( \INSTR|ROM|memROM~4_combout\ & ( \INSTR|ROM|memROM~5_combout\ & ( \MDADOS|ram~63_q\ ) ) ) # ( !\INSTR|ROM|memROM~4_combout\ & ( \INSTR|ROM|memROM~5_combout\ & ( \MDADOS|ram~55_q\ ) ) ) # ( \INSTR|ROM|memROM~4_combout\ & ( 
-- !\INSTR|ROM|memROM~5_combout\ & ( \MDADOS|ram~79_q\ ) ) ) # ( !\INSTR|ROM|memROM~4_combout\ & ( !\INSTR|ROM|memROM~5_combout\ & ( \MDADOS|ram~71_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MDADOS|ALT_INV_ram~71_q\,
	datab => \MDADOS|ALT_INV_ram~79_q\,
	datac => \MDADOS|ALT_INV_ram~55_q\,
	datad => \MDADOS|ALT_INV_ram~63_q\,
	datae => \INSTR|ROM|ALT_INV_memROM~4_combout\,
	dataf => \INSTR|ROM|ALT_INV_memROM~5_combout\,
	combout => \MDADOS|ram~176_combout\);

\MDADOS|ram~103\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(6),
	ena => \MDADOS|ram~193_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDADOS|ram~103_q\);

\MDADOS|ram~111\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(6),
	ena => \MDADOS|ram~194_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDADOS|ram~111_q\);

\MDADOS|ram~87\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(6),
	ena => \MDADOS|ram~195_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDADOS|ram~87_q\);

\MDADOS|ram~95\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(6),
	ena => \MDADOS|ram~196_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDADOS|ram~95_q\);

\MDADOS|ram~177\ : cyclonev_lcell_comb
-- Equation(s):
-- \MDADOS|ram~177_combout\ = ( \INSTR|ROM|memROM~4_combout\ & ( \INSTR|ROM|memROM~5_combout\ & ( \MDADOS|ram~95_q\ ) ) ) # ( !\INSTR|ROM|memROM~4_combout\ & ( \INSTR|ROM|memROM~5_combout\ & ( \MDADOS|ram~87_q\ ) ) ) # ( \INSTR|ROM|memROM~4_combout\ & ( 
-- !\INSTR|ROM|memROM~5_combout\ & ( \MDADOS|ram~111_q\ ) ) ) # ( !\INSTR|ROM|memROM~4_combout\ & ( !\INSTR|ROM|memROM~5_combout\ & ( \MDADOS|ram~103_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MDADOS|ALT_INV_ram~103_q\,
	datab => \MDADOS|ALT_INV_ram~111_q\,
	datac => \MDADOS|ALT_INV_ram~87_q\,
	datad => \MDADOS|ALT_INV_ram~95_q\,
	datae => \INSTR|ROM|ALT_INV_memROM~4_combout\,
	dataf => \INSTR|ROM|ALT_INV_memROM~5_combout\,
	combout => \MDADOS|ram~177_combout\);

\MDADOS|ram~135\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(6),
	ena => \MDADOS|ram~197_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDADOS|ram~135_q\);

\MDADOS|ram~143\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(6),
	ena => \MDADOS|ram~198_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDADOS|ram~143_q\);

\MDADOS|ram~119\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(6),
	ena => \MDADOS|ram~199_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDADOS|ram~119_q\);

\MDADOS|ram~127\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(6),
	ena => \MDADOS|ram~200_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDADOS|ram~127_q\);

\MDADOS|ram~178\ : cyclonev_lcell_comb
-- Equation(s):
-- \MDADOS|ram~178_combout\ = ( \INSTR|ROM|memROM~4_combout\ & ( \INSTR|ROM|memROM~5_combout\ & ( \MDADOS|ram~127_q\ ) ) ) # ( !\INSTR|ROM|memROM~4_combout\ & ( \INSTR|ROM|memROM~5_combout\ & ( \MDADOS|ram~119_q\ ) ) ) # ( \INSTR|ROM|memROM~4_combout\ & ( 
-- !\INSTR|ROM|memROM~5_combout\ & ( \MDADOS|ram~143_q\ ) ) ) # ( !\INSTR|ROM|memROM~4_combout\ & ( !\INSTR|ROM|memROM~5_combout\ & ( \MDADOS|ram~135_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MDADOS|ALT_INV_ram~135_q\,
	datab => \MDADOS|ALT_INV_ram~143_q\,
	datac => \MDADOS|ALT_INV_ram~119_q\,
	datad => \MDADOS|ALT_INV_ram~127_q\,
	datae => \INSTR|ROM|ALT_INV_memROM~4_combout\,
	dataf => \INSTR|ROM|ALT_INV_memROM~5_combout\,
	combout => \MDADOS|ram~178_combout\);

\MDADOS|ram~179\ : cyclonev_lcell_comb
-- Equation(s):
-- \MDADOS|ram~179_combout\ = ( \INSTR|ROM|memROM~6_combout\ & ( \INSTR|ROM|memROM~7_combout\ & ( \MDADOS|ram~178_combout\ ) ) ) # ( !\INSTR|ROM|memROM~6_combout\ & ( \INSTR|ROM|memROM~7_combout\ & ( \MDADOS|ram~177_combout\ ) ) ) # ( 
-- \INSTR|ROM|memROM~6_combout\ & ( !\INSTR|ROM|memROM~7_combout\ & ( \MDADOS|ram~176_combout\ ) ) ) # ( !\INSTR|ROM|memROM~6_combout\ & ( !\INSTR|ROM|memROM~7_combout\ & ( \MDADOS|ram~175_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MDADOS|ALT_INV_ram~175_combout\,
	datab => \MDADOS|ALT_INV_ram~176_combout\,
	datac => \MDADOS|ALT_INV_ram~177_combout\,
	datad => \MDADOS|ALT_INV_ram~178_combout\,
	datae => \INSTR|ROM|ALT_INV_memROM~6_combout\,
	dataf => \INSTR|ROM|ALT_INV_memROM~7_combout\,
	combout => \MDADOS|ram~179_combout\);

\ULA1|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~25_sumout\ = SUM(( !\DECODER|Equal0~1_combout\ $ (((!\DECODER|Equal0~0_combout\ & \MDADOS|ram~179_combout\))) ) + ( \REG_A|DOUT\(6) ) + ( \ULA1|Add0~22\ ))
-- \ULA1|Add0~26\ = CARRY(( !\DECODER|Equal0~1_combout\ $ (((!\DECODER|Equal0~0_combout\ & \MDADOS|ram~179_combout\))) ) + ( \REG_A|DOUT\(6) ) + ( \ULA1|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER|ALT_INV_Equal0~1_combout\,
	datab => \DECODER|ALT_INV_Equal0~0_combout\,
	datad => \MDADOS|ALT_INV_ram~179_combout\,
	dataf => \REG_A|ALT_INV_DOUT\(6),
	cin => \ULA1|Add0~22\,
	sumout => \ULA1|Add0~25_sumout\,
	cout => \ULA1|Add0~26\);

\ULA1|saida[6]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[6]~7_combout\ = (!\ULA1|saida[4]~4_combout\ & (!\DECODER|OP_ULA[1]~0_combout\ & ((\ULA1|Add0~25_sumout\)))) # (\ULA1|saida[4]~4_combout\ & (((!\DECODER|OP_ULA[1]~0_combout\ & \ULA1|Add0~25_sumout\)) # (\MDADOS|ram~179_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111001101000001011100110100000101110011010000010111001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_saida[4]~4_combout\,
	datab => \DECODER|ALT_INV_OP_ULA[1]~0_combout\,
	datac => \MDADOS|ALT_INV_ram~179_combout\,
	datad => \ULA1|ALT_INV_Add0~25_sumout\,
	combout => \ULA1|saida[6]~7_combout\);

\REG_A|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA1|saida[6]~7_combout\,
	ena => \DECODER|HAB_A~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_A|DOUT\(6));

\MDADOS|ram~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(7),
	ena => \MDADOS|ram~185_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDADOS|ram~40_q\);

\MDADOS|ram~72\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(7),
	ena => \MDADOS|ram~189_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDADOS|ram~72_q\);

\MDADOS|ram~104\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(7),
	ena => \MDADOS|ram~193_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDADOS|ram~104_q\);

\MDADOS|ram~136\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(7),
	ena => \MDADOS|ram~197_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDADOS|ram~136_q\);

\MDADOS|ram~180\ : cyclonev_lcell_comb
-- Equation(s):
-- \MDADOS|ram~180_combout\ = ( \INSTR|ROM|memROM~6_combout\ & ( \INSTR|ROM|memROM~7_combout\ & ( \MDADOS|ram~136_q\ ) ) ) # ( !\INSTR|ROM|memROM~6_combout\ & ( \INSTR|ROM|memROM~7_combout\ & ( \MDADOS|ram~104_q\ ) ) ) # ( \INSTR|ROM|memROM~6_combout\ & ( 
-- !\INSTR|ROM|memROM~7_combout\ & ( \MDADOS|ram~72_q\ ) ) ) # ( !\INSTR|ROM|memROM~6_combout\ & ( !\INSTR|ROM|memROM~7_combout\ & ( \MDADOS|ram~40_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MDADOS|ALT_INV_ram~40_q\,
	datab => \MDADOS|ALT_INV_ram~72_q\,
	datac => \MDADOS|ALT_INV_ram~104_q\,
	datad => \MDADOS|ALT_INV_ram~136_q\,
	datae => \INSTR|ROM|ALT_INV_memROM~6_combout\,
	dataf => \INSTR|ROM|ALT_INV_memROM~7_combout\,
	combout => \MDADOS|ram~180_combout\);

\MDADOS|ram~48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(7),
	ena => \MDADOS|ram~186_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDADOS|ram~48_q\);

\MDADOS|ram~80\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(7),
	ena => \MDADOS|ram~190_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDADOS|ram~80_q\);

\MDADOS|ram~112\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(7),
	ena => \MDADOS|ram~194_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDADOS|ram~112_q\);

\MDADOS|ram~144\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(7),
	ena => \MDADOS|ram~198_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDADOS|ram~144_q\);

\MDADOS|ram~181\ : cyclonev_lcell_comb
-- Equation(s):
-- \MDADOS|ram~181_combout\ = ( \INSTR|ROM|memROM~6_combout\ & ( \INSTR|ROM|memROM~7_combout\ & ( \MDADOS|ram~144_q\ ) ) ) # ( !\INSTR|ROM|memROM~6_combout\ & ( \INSTR|ROM|memROM~7_combout\ & ( \MDADOS|ram~112_q\ ) ) ) # ( \INSTR|ROM|memROM~6_combout\ & ( 
-- !\INSTR|ROM|memROM~7_combout\ & ( \MDADOS|ram~80_q\ ) ) ) # ( !\INSTR|ROM|memROM~6_combout\ & ( !\INSTR|ROM|memROM~7_combout\ & ( \MDADOS|ram~48_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MDADOS|ALT_INV_ram~48_q\,
	datab => \MDADOS|ALT_INV_ram~80_q\,
	datac => \MDADOS|ALT_INV_ram~112_q\,
	datad => \MDADOS|ALT_INV_ram~144_q\,
	datae => \INSTR|ROM|ALT_INV_memROM~6_combout\,
	dataf => \INSTR|ROM|ALT_INV_memROM~7_combout\,
	combout => \MDADOS|ram~181_combout\);

\MDADOS|ram~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(7),
	ena => \MDADOS|ram~187_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDADOS|ram~24_q\);

\MDADOS|ram~56\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(7),
	ena => \MDADOS|ram~191_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDADOS|ram~56_q\);

\MDADOS|ram~88\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(7),
	ena => \MDADOS|ram~195_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDADOS|ram~88_q\);

\MDADOS|ram~120\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(7),
	ena => \MDADOS|ram~199_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDADOS|ram~120_q\);

\MDADOS|ram~182\ : cyclonev_lcell_comb
-- Equation(s):
-- \MDADOS|ram~182_combout\ = ( \INSTR|ROM|memROM~6_combout\ & ( \INSTR|ROM|memROM~7_combout\ & ( \MDADOS|ram~120_q\ ) ) ) # ( !\INSTR|ROM|memROM~6_combout\ & ( \INSTR|ROM|memROM~7_combout\ & ( \MDADOS|ram~88_q\ ) ) ) # ( \INSTR|ROM|memROM~6_combout\ & ( 
-- !\INSTR|ROM|memROM~7_combout\ & ( \MDADOS|ram~56_q\ ) ) ) # ( !\INSTR|ROM|memROM~6_combout\ & ( !\INSTR|ROM|memROM~7_combout\ & ( \MDADOS|ram~24_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MDADOS|ALT_INV_ram~24_q\,
	datab => \MDADOS|ALT_INV_ram~56_q\,
	datac => \MDADOS|ALT_INV_ram~88_q\,
	datad => \MDADOS|ALT_INV_ram~120_q\,
	datae => \INSTR|ROM|ALT_INV_memROM~6_combout\,
	dataf => \INSTR|ROM|ALT_INV_memROM~7_combout\,
	combout => \MDADOS|ram~182_combout\);

\MDADOS|ram~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(7),
	ena => \MDADOS|ram~188_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDADOS|ram~32_q\);

\MDADOS|ram~64\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(7),
	ena => \MDADOS|ram~192_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDADOS|ram~64_q\);

\MDADOS|ram~96\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(7),
	ena => \MDADOS|ram~196_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDADOS|ram~96_q\);

\MDADOS|ram~128\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(7),
	ena => \MDADOS|ram~200_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDADOS|ram~128_q\);

\MDADOS|ram~183\ : cyclonev_lcell_comb
-- Equation(s):
-- \MDADOS|ram~183_combout\ = ( \INSTR|ROM|memROM~6_combout\ & ( \INSTR|ROM|memROM~7_combout\ & ( \MDADOS|ram~128_q\ ) ) ) # ( !\INSTR|ROM|memROM~6_combout\ & ( \INSTR|ROM|memROM~7_combout\ & ( \MDADOS|ram~96_q\ ) ) ) # ( \INSTR|ROM|memROM~6_combout\ & ( 
-- !\INSTR|ROM|memROM~7_combout\ & ( \MDADOS|ram~64_q\ ) ) ) # ( !\INSTR|ROM|memROM~6_combout\ & ( !\INSTR|ROM|memROM~7_combout\ & ( \MDADOS|ram~32_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MDADOS|ALT_INV_ram~32_q\,
	datab => \MDADOS|ALT_INV_ram~64_q\,
	datac => \MDADOS|ALT_INV_ram~96_q\,
	datad => \MDADOS|ALT_INV_ram~128_q\,
	datae => \INSTR|ROM|ALT_INV_memROM~6_combout\,
	dataf => \INSTR|ROM|ALT_INV_memROM~7_combout\,
	combout => \MDADOS|ram~183_combout\);

\MDADOS|ram~184\ : cyclonev_lcell_comb
-- Equation(s):
-- \MDADOS|ram~184_combout\ = ( \INSTR|ROM|memROM~4_combout\ & ( \INSTR|ROM|memROM~5_combout\ & ( \MDADOS|ram~183_combout\ ) ) ) # ( !\INSTR|ROM|memROM~4_combout\ & ( \INSTR|ROM|memROM~5_combout\ & ( \MDADOS|ram~182_combout\ ) ) ) # ( 
-- \INSTR|ROM|memROM~4_combout\ & ( !\INSTR|ROM|memROM~5_combout\ & ( \MDADOS|ram~181_combout\ ) ) ) # ( !\INSTR|ROM|memROM~4_combout\ & ( !\INSTR|ROM|memROM~5_combout\ & ( \MDADOS|ram~180_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MDADOS|ALT_INV_ram~180_combout\,
	datab => \MDADOS|ALT_INV_ram~181_combout\,
	datac => \MDADOS|ALT_INV_ram~182_combout\,
	datad => \MDADOS|ALT_INV_ram~183_combout\,
	datae => \INSTR|ROM|ALT_INV_memROM~4_combout\,
	dataf => \INSTR|ROM|ALT_INV_memROM~5_combout\,
	combout => \MDADOS|ram~184_combout\);

\ULA1|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~29_sumout\ = SUM(( !\DECODER|Equal0~1_combout\ $ (((!\DECODER|Equal0~0_combout\ & \MDADOS|ram~184_combout\))) ) + ( \REG_A|DOUT\(7) ) + ( \ULA1|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER|ALT_INV_Equal0~1_combout\,
	datab => \DECODER|ALT_INV_Equal0~0_combout\,
	datad => \MDADOS|ALT_INV_ram~184_combout\,
	dataf => \REG_A|ALT_INV_DOUT\(7),
	cin => \ULA1|Add0~26\,
	sumout => \ULA1|Add0~29_sumout\);

\ULA1|saida[7]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[7]~8_combout\ = (!\ULA1|saida[4]~4_combout\ & (!\DECODER|OP_ULA[1]~0_combout\ & ((\ULA1|Add0~29_sumout\)))) # (\ULA1|saida[4]~4_combout\ & (((!\DECODER|OP_ULA[1]~0_combout\ & \ULA1|Add0~29_sumout\)) # (\MDADOS|ram~184_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111001101000001011100110100000101110011010000010111001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_saida[4]~4_combout\,
	datab => \DECODER|ALT_INV_OP_ULA[1]~0_combout\,
	datac => \MDADOS|ALT_INV_ram~184_combout\,
	datad => \ULA1|ALT_INV_Add0~29_sumout\,
	combout => \ULA1|saida[7]~8_combout\);

\REG_A|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA1|saida[7]~8_combout\,
	ena => \DECODER|HAB_A~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_A|DOUT\(7));

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
END structure;


