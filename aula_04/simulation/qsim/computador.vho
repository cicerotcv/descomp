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

-- DATE "09/20/2021 20:17:20"

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
SIGNAL \SAIDA[0]~output_o\ : std_logic;
SIGNAL \SAIDA[1]~output_o\ : std_logic;
SIGNAL \SAIDA[2]~output_o\ : std_logic;
SIGNAL \SAIDA[3]~output_o\ : std_logic;
SIGNAL \SAIDA[4]~output_o\ : std_logic;
SIGNAL \SAIDA[5]~output_o\ : std_logic;
SIGNAL \SAIDA[6]~output_o\ : std_logic;
SIGNAL \SAIDA[7]~output_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \INSTR|PC|DOUT[0]~0_combout\ : std_logic;
SIGNAL \INSTR|SOMA_CONST|Add0~1_sumout\ : std_logic;
SIGNAL \INSTR|SOMA_CONST|Add0~2\ : std_logic;
SIGNAL \INSTR|SOMA_CONST|Add0~5_sumout\ : std_logic;
SIGNAL \INSTR|SOMA_CONST|Add0~6\ : std_logic;
SIGNAL \INSTR|SOMA_CONST|Add0~9_sumout\ : std_logic;
SIGNAL \INSTR|ROM|memROM~0_combout\ : std_logic;
SIGNAL \INSTR|SOMA_CONST|Add0~10\ : std_logic;
SIGNAL \INSTR|SOMA_CONST|Add0~13_sumout\ : std_logic;
SIGNAL \INSTR|SOMA_CONST|Add0~14\ : std_logic;
SIGNAL \INSTR|SOMA_CONST|Add0~17_sumout\ : std_logic;
SIGNAL \INSTR|SOMA_CONST|Add0~18\ : std_logic;
SIGNAL \INSTR|SOMA_CONST|Add0~21_sumout\ : std_logic;
SIGNAL \INSTR|SOMA_CONST|Add0~22\ : std_logic;
SIGNAL \INSTR|SOMA_CONST|Add0~29_sumout\ : std_logic;
SIGNAL \INSTR|SOMA_CONST|Add0~30\ : std_logic;
SIGNAL \INSTR|SOMA_CONST|Add0~25_sumout\ : std_logic;
SIGNAL \INSTR|ROM|memROM~1_combout\ : std_logic;
SIGNAL \INSTR|ROM|memROM~2_combout\ : std_logic;
SIGNAL \INSTR|ROM|memROM~3_combout\ : std_logic;
SIGNAL \DECODER|SEL_MUX~0_combout\ : std_logic;
SIGNAL \INSTR|ROM|memROM~8_combout\ : std_logic;
SIGNAL \INSTR|ROM|memROM~4_combout\ : std_logic;
SIGNAL \INSTR|ROM|memROM~9_combout\ : std_logic;
SIGNAL \INSTR|ROM|memROM~5_combout\ : std_logic;
SIGNAL \INSTR|ROM|memROM~6_combout\ : std_logic;
SIGNAL \INSTR|ROM|memROM~7_combout\ : std_logic;
SIGNAL \MDADOS|process_0~0_combout\ : std_logic;
SIGNAL \MDADOS|ram~177_combout\ : std_logic;
SIGNAL \MDADOS|ram~33_q\ : std_logic;
SIGNAL \MDADOS|ram~178_combout\ : std_logic;
SIGNAL \MDADOS|ram~41_q\ : std_logic;
SIGNAL \MDADOS|ram~179_combout\ : std_logic;
SIGNAL \MDADOS|ram~17_q\ : std_logic;
SIGNAL \MDADOS|ram~180_combout\ : std_logic;
SIGNAL \MDADOS|ram~25_q\ : std_logic;
SIGNAL \MDADOS|ram~145_combout\ : std_logic;
SIGNAL \MDADOS|ram~181_combout\ : std_logic;
SIGNAL \MDADOS|ram~65_q\ : std_logic;
SIGNAL \MDADOS|ram~182_combout\ : std_logic;
SIGNAL \MDADOS|ram~73_q\ : std_logic;
SIGNAL \MDADOS|ram~183_combout\ : std_logic;
SIGNAL \MDADOS|ram~49_q\ : std_logic;
SIGNAL \MDADOS|ram~184_combout\ : std_logic;
SIGNAL \MDADOS|ram~57_q\ : std_logic;
SIGNAL \MDADOS|ram~146_combout\ : std_logic;
SIGNAL \MDADOS|ram~147_combout\ : std_logic;
SIGNAL \DECODER|Equal0~0_combout\ : std_logic;
SIGNAL \ULA1|Add0~34_cout\ : std_logic;
SIGNAL \ULA1|Add0~1_sumout\ : std_logic;
SIGNAL \DECODER|OP_ULA[1]~0_combout\ : std_logic;
SIGNAL \ULA1|saida[0]~0_combout\ : std_logic;
SIGNAL \DECODER|HAB_A~0_combout\ : std_logic;
SIGNAL \MDADOS|ram~34_q\ : std_logic;
SIGNAL \MDADOS|ram~66_q\ : std_logic;
SIGNAL \MDADOS|ram~148_combout\ : std_logic;
SIGNAL \MDADOS|ram~42_q\ : std_logic;
SIGNAL \MDADOS|ram~74_q\ : std_logic;
SIGNAL \MDADOS|ram~149_combout\ : std_logic;
SIGNAL \MDADOS|ram~18_q\ : std_logic;
SIGNAL \MDADOS|ram~50_q\ : std_logic;
SIGNAL \MDADOS|ram~150_combout\ : std_logic;
SIGNAL \MDADOS|ram~26_q\ : std_logic;
SIGNAL \MDADOS|ram~58_q\ : std_logic;
SIGNAL \MDADOS|ram~151_combout\ : std_logic;
SIGNAL \MDADOS|ram~152_combout\ : std_logic;
SIGNAL \ULA1|Add0~2\ : std_logic;
SIGNAL \ULA1|Add0~5_sumout\ : std_logic;
SIGNAL \ULA1|saida[1]~1_combout\ : std_logic;
SIGNAL \MDADOS|ram~35_q\ : std_logic;
SIGNAL \MDADOS|ram~43_q\ : std_logic;
SIGNAL \MDADOS|ram~19_q\ : std_logic;
SIGNAL \MDADOS|ram~27_q\ : std_logic;
SIGNAL \MDADOS|ram~153_combout\ : std_logic;
SIGNAL \MDADOS|ram~67_q\ : std_logic;
SIGNAL \MDADOS|ram~75_q\ : std_logic;
SIGNAL \MDADOS|ram~51_q\ : std_logic;
SIGNAL \MDADOS|ram~59_q\ : std_logic;
SIGNAL \MDADOS|ram~154_combout\ : std_logic;
SIGNAL \MDADOS|ram~155_combout\ : std_logic;
SIGNAL \ULA1|Add0~6\ : std_logic;
SIGNAL \ULA1|Add0~9_sumout\ : std_logic;
SIGNAL \ULA1|saida[2]~2_combout\ : std_logic;
SIGNAL \MDADOS|ram~36_q\ : std_logic;
SIGNAL \MDADOS|ram~68_q\ : std_logic;
SIGNAL \MDADOS|ram~156_combout\ : std_logic;
SIGNAL \MDADOS|ram~44_q\ : std_logic;
SIGNAL \MDADOS|ram~76_q\ : std_logic;
SIGNAL \MDADOS|ram~157_combout\ : std_logic;
SIGNAL \MDADOS|ram~20_q\ : std_logic;
SIGNAL \MDADOS|ram~52_q\ : std_logic;
SIGNAL \MDADOS|ram~158_combout\ : std_logic;
SIGNAL \MDADOS|ram~28_q\ : std_logic;
SIGNAL \MDADOS|ram~60_q\ : std_logic;
SIGNAL \MDADOS|ram~159_combout\ : std_logic;
SIGNAL \MDADOS|ram~160_combout\ : std_logic;
SIGNAL \ULA1|Add0~10\ : std_logic;
SIGNAL \ULA1|Add0~13_sumout\ : std_logic;
SIGNAL \ULA1|saida[3]~3_combout\ : std_logic;
SIGNAL \MDADOS|ram~37_q\ : std_logic;
SIGNAL \MDADOS|ram~45_q\ : std_logic;
SIGNAL \MDADOS|ram~21_q\ : std_logic;
SIGNAL \MDADOS|ram~29_q\ : std_logic;
SIGNAL \MDADOS|ram~161_combout\ : std_logic;
SIGNAL \MDADOS|ram~69_q\ : std_logic;
SIGNAL \MDADOS|ram~77_q\ : std_logic;
SIGNAL \MDADOS|ram~53_q\ : std_logic;
SIGNAL \MDADOS|ram~61_q\ : std_logic;
SIGNAL \MDADOS|ram~162_combout\ : std_logic;
SIGNAL \MDADOS|ram~163_combout\ : std_logic;
SIGNAL \ULA1|saida[4]~4_combout\ : std_logic;
SIGNAL \ULA1|Add0~14\ : std_logic;
SIGNAL \ULA1|Add0~17_sumout\ : std_logic;
SIGNAL \ULA1|saida[4]~5_combout\ : std_logic;
SIGNAL \MDADOS|ram~38_q\ : std_logic;
SIGNAL \MDADOS|ram~70_q\ : std_logic;
SIGNAL \MDADOS|ram~164_combout\ : std_logic;
SIGNAL \MDADOS|ram~46_q\ : std_logic;
SIGNAL \MDADOS|ram~78_q\ : std_logic;
SIGNAL \MDADOS|ram~165_combout\ : std_logic;
SIGNAL \MDADOS|ram~22_q\ : std_logic;
SIGNAL \MDADOS|ram~54_q\ : std_logic;
SIGNAL \MDADOS|ram~166_combout\ : std_logic;
SIGNAL \MDADOS|ram~30_q\ : std_logic;
SIGNAL \MDADOS|ram~62_q\ : std_logic;
SIGNAL \MDADOS|ram~167_combout\ : std_logic;
SIGNAL \MDADOS|ram~168_combout\ : std_logic;
SIGNAL \DECODER|OP_ULA[0]~1_combout\ : std_logic;
SIGNAL \ULA1|Add0~18\ : std_logic;
SIGNAL \ULA1|Add0~21_sumout\ : std_logic;
SIGNAL \ULA1|saida[5]~6_combout\ : std_logic;
SIGNAL \MDADOS|ram~39_q\ : std_logic;
SIGNAL \MDADOS|ram~47_q\ : std_logic;
SIGNAL \MDADOS|ram~23_q\ : std_logic;
SIGNAL \MDADOS|ram~31_q\ : std_logic;
SIGNAL \MDADOS|ram~169_combout\ : std_logic;
SIGNAL \MDADOS|ram~71_q\ : std_logic;
SIGNAL \MDADOS|ram~79_q\ : std_logic;
SIGNAL \MDADOS|ram~55_q\ : std_logic;
SIGNAL \MDADOS|ram~63_q\ : std_logic;
SIGNAL \MDADOS|ram~170_combout\ : std_logic;
SIGNAL \MDADOS|ram~171_combout\ : std_logic;
SIGNAL \ULA1|Add0~22\ : std_logic;
SIGNAL \ULA1|Add0~25_sumout\ : std_logic;
SIGNAL \ULA1|saida[6]~7_combout\ : std_logic;
SIGNAL \MDADOS|ram~40_q\ : std_logic;
SIGNAL \MDADOS|ram~72_q\ : std_logic;
SIGNAL \MDADOS|ram~172_combout\ : std_logic;
SIGNAL \MDADOS|ram~48_q\ : std_logic;
SIGNAL \MDADOS|ram~80_q\ : std_logic;
SIGNAL \MDADOS|ram~173_combout\ : std_logic;
SIGNAL \MDADOS|ram~24_q\ : std_logic;
SIGNAL \MDADOS|ram~56_q\ : std_logic;
SIGNAL \MDADOS|ram~174_combout\ : std_logic;
SIGNAL \MDADOS|ram~32_q\ : std_logic;
SIGNAL \MDADOS|ram~64_q\ : std_logic;
SIGNAL \MDADOS|ram~175_combout\ : std_logic;
SIGNAL \MDADOS|ram~176_combout\ : std_logic;
SIGNAL \ULA1|Add0~26\ : std_logic;
SIGNAL \ULA1|Add0~29_sumout\ : std_logic;
SIGNAL \ULA1|saida[7]~8_combout\ : std_logic;
SIGNAL \REG_A|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \INSTR|PC|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \ULA1|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~23_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~47_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~39_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~168_combout\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~167_combout\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~62_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~30_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~166_combout\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~54_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~22_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~165_combout\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~78_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~46_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~164_combout\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~70_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~38_q\ : std_logic;
SIGNAL \ULA1|ALT_INV_saida[4]~4_combout\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~163_combout\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~162_combout\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~61_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~53_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~77_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~69_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~161_combout\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~29_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~21_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~45_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~37_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~160_combout\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~159_combout\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~60_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~28_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~158_combout\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~52_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~20_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~157_combout\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~76_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~44_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~156_combout\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~68_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~36_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~155_combout\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~154_combout\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~59_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~51_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~75_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~67_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~153_combout\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~27_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~19_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~43_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~35_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~152_combout\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~151_combout\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~58_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~26_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~150_combout\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~50_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~18_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~149_combout\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~74_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~42_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~148_combout\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~66_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~34_q\ : std_logic;
SIGNAL \DECODER|ALT_INV_OP_ULA[1]~0_combout\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~147_combout\ : std_logic;
SIGNAL \INSTR|ROM|ALT_INV_memROM~7_combout\ : std_logic;
SIGNAL \INSTR|ROM|ALT_INV_memROM~6_combout\ : std_logic;
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
SIGNAL \DECODER|ALT_INV_SEL_MUX~0_combout\ : std_logic;
SIGNAL \INSTR|ROM|ALT_INV_memROM~3_combout\ : std_logic;
SIGNAL \INSTR|ROM|ALT_INV_memROM~2_combout\ : std_logic;
SIGNAL \INSTR|ROM|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \INSTR|PC|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \INSTR|ROM|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \REG_A|ALT_INV_DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \MDADOS|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \INSTR|ROM|ALT_INV_memROM~9_combout\ : std_logic;
SIGNAL \INSTR|ROM|ALT_INV_memROM~8_combout\ : std_logic;
SIGNAL \DECODER|ALT_INV_OP_ULA[0]~1_combout\ : std_logic;
SIGNAL \DECODER|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~176_combout\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~175_combout\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~64_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~32_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~174_combout\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~56_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~24_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~173_combout\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~80_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~48_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~172_combout\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~72_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~40_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~171_combout\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~170_combout\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~63_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~55_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~79_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~71_q\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~169_combout\ : std_logic;
SIGNAL \MDADOS|ALT_INV_ram~31_q\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
SAIDA <= ww_SAIDA;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ULA1|ALT_INV_Add0~29_sumout\ <= NOT \ULA1|Add0~29_sumout\;
\ULA1|ALT_INV_Add0~25_sumout\ <= NOT \ULA1|Add0~25_sumout\;
\ULA1|ALT_INV_Add0~21_sumout\ <= NOT \ULA1|Add0~21_sumout\;
\ULA1|ALT_INV_Add0~17_sumout\ <= NOT \ULA1|Add0~17_sumout\;
\ULA1|ALT_INV_Add0~13_sumout\ <= NOT \ULA1|Add0~13_sumout\;
\ULA1|ALT_INV_Add0~9_sumout\ <= NOT \ULA1|Add0~9_sumout\;
\ULA1|ALT_INV_Add0~5_sumout\ <= NOT \ULA1|Add0~5_sumout\;
\ULA1|ALT_INV_Add0~1_sumout\ <= NOT \ULA1|Add0~1_sumout\;
\MDADOS|ALT_INV_ram~23_q\ <= NOT \MDADOS|ram~23_q\;
\MDADOS|ALT_INV_ram~47_q\ <= NOT \MDADOS|ram~47_q\;
\MDADOS|ALT_INV_ram~39_q\ <= NOT \MDADOS|ram~39_q\;
\MDADOS|ALT_INV_ram~168_combout\ <= NOT \MDADOS|ram~168_combout\;
\MDADOS|ALT_INV_ram~167_combout\ <= NOT \MDADOS|ram~167_combout\;
\MDADOS|ALT_INV_ram~62_q\ <= NOT \MDADOS|ram~62_q\;
\MDADOS|ALT_INV_ram~30_q\ <= NOT \MDADOS|ram~30_q\;
\MDADOS|ALT_INV_ram~166_combout\ <= NOT \MDADOS|ram~166_combout\;
\MDADOS|ALT_INV_ram~54_q\ <= NOT \MDADOS|ram~54_q\;
\MDADOS|ALT_INV_ram~22_q\ <= NOT \MDADOS|ram~22_q\;
\MDADOS|ALT_INV_ram~165_combout\ <= NOT \MDADOS|ram~165_combout\;
\MDADOS|ALT_INV_ram~78_q\ <= NOT \MDADOS|ram~78_q\;
\MDADOS|ALT_INV_ram~46_q\ <= NOT \MDADOS|ram~46_q\;
\MDADOS|ALT_INV_ram~164_combout\ <= NOT \MDADOS|ram~164_combout\;
\MDADOS|ALT_INV_ram~70_q\ <= NOT \MDADOS|ram~70_q\;
\MDADOS|ALT_INV_ram~38_q\ <= NOT \MDADOS|ram~38_q\;
\ULA1|ALT_INV_saida[4]~4_combout\ <= NOT \ULA1|saida[4]~4_combout\;
\MDADOS|ALT_INV_ram~163_combout\ <= NOT \MDADOS|ram~163_combout\;
\MDADOS|ALT_INV_ram~162_combout\ <= NOT \MDADOS|ram~162_combout\;
\MDADOS|ALT_INV_ram~61_q\ <= NOT \MDADOS|ram~61_q\;
\MDADOS|ALT_INV_ram~53_q\ <= NOT \MDADOS|ram~53_q\;
\MDADOS|ALT_INV_ram~77_q\ <= NOT \MDADOS|ram~77_q\;
\MDADOS|ALT_INV_ram~69_q\ <= NOT \MDADOS|ram~69_q\;
\MDADOS|ALT_INV_ram~161_combout\ <= NOT \MDADOS|ram~161_combout\;
\MDADOS|ALT_INV_ram~29_q\ <= NOT \MDADOS|ram~29_q\;
\MDADOS|ALT_INV_ram~21_q\ <= NOT \MDADOS|ram~21_q\;
\MDADOS|ALT_INV_ram~45_q\ <= NOT \MDADOS|ram~45_q\;
\MDADOS|ALT_INV_ram~37_q\ <= NOT \MDADOS|ram~37_q\;
\MDADOS|ALT_INV_ram~160_combout\ <= NOT \MDADOS|ram~160_combout\;
\MDADOS|ALT_INV_ram~159_combout\ <= NOT \MDADOS|ram~159_combout\;
\MDADOS|ALT_INV_ram~60_q\ <= NOT \MDADOS|ram~60_q\;
\MDADOS|ALT_INV_ram~28_q\ <= NOT \MDADOS|ram~28_q\;
\MDADOS|ALT_INV_ram~158_combout\ <= NOT \MDADOS|ram~158_combout\;
\MDADOS|ALT_INV_ram~52_q\ <= NOT \MDADOS|ram~52_q\;
\MDADOS|ALT_INV_ram~20_q\ <= NOT \MDADOS|ram~20_q\;
\MDADOS|ALT_INV_ram~157_combout\ <= NOT \MDADOS|ram~157_combout\;
\MDADOS|ALT_INV_ram~76_q\ <= NOT \MDADOS|ram~76_q\;
\MDADOS|ALT_INV_ram~44_q\ <= NOT \MDADOS|ram~44_q\;
\MDADOS|ALT_INV_ram~156_combout\ <= NOT \MDADOS|ram~156_combout\;
\MDADOS|ALT_INV_ram~68_q\ <= NOT \MDADOS|ram~68_q\;
\MDADOS|ALT_INV_ram~36_q\ <= NOT \MDADOS|ram~36_q\;
\MDADOS|ALT_INV_ram~155_combout\ <= NOT \MDADOS|ram~155_combout\;
\MDADOS|ALT_INV_ram~154_combout\ <= NOT \MDADOS|ram~154_combout\;
\MDADOS|ALT_INV_ram~59_q\ <= NOT \MDADOS|ram~59_q\;
\MDADOS|ALT_INV_ram~51_q\ <= NOT \MDADOS|ram~51_q\;
\MDADOS|ALT_INV_ram~75_q\ <= NOT \MDADOS|ram~75_q\;
\MDADOS|ALT_INV_ram~67_q\ <= NOT \MDADOS|ram~67_q\;
\MDADOS|ALT_INV_ram~153_combout\ <= NOT \MDADOS|ram~153_combout\;
\MDADOS|ALT_INV_ram~27_q\ <= NOT \MDADOS|ram~27_q\;
\MDADOS|ALT_INV_ram~19_q\ <= NOT \MDADOS|ram~19_q\;
\MDADOS|ALT_INV_ram~43_q\ <= NOT \MDADOS|ram~43_q\;
\MDADOS|ALT_INV_ram~35_q\ <= NOT \MDADOS|ram~35_q\;
\MDADOS|ALT_INV_ram~152_combout\ <= NOT \MDADOS|ram~152_combout\;
\MDADOS|ALT_INV_ram~151_combout\ <= NOT \MDADOS|ram~151_combout\;
\MDADOS|ALT_INV_ram~58_q\ <= NOT \MDADOS|ram~58_q\;
\MDADOS|ALT_INV_ram~26_q\ <= NOT \MDADOS|ram~26_q\;
\MDADOS|ALT_INV_ram~150_combout\ <= NOT \MDADOS|ram~150_combout\;
\MDADOS|ALT_INV_ram~50_q\ <= NOT \MDADOS|ram~50_q\;
\MDADOS|ALT_INV_ram~18_q\ <= NOT \MDADOS|ram~18_q\;
\MDADOS|ALT_INV_ram~149_combout\ <= NOT \MDADOS|ram~149_combout\;
\MDADOS|ALT_INV_ram~74_q\ <= NOT \MDADOS|ram~74_q\;
\MDADOS|ALT_INV_ram~42_q\ <= NOT \MDADOS|ram~42_q\;
\MDADOS|ALT_INV_ram~148_combout\ <= NOT \MDADOS|ram~148_combout\;
\MDADOS|ALT_INV_ram~66_q\ <= NOT \MDADOS|ram~66_q\;
\MDADOS|ALT_INV_ram~34_q\ <= NOT \MDADOS|ram~34_q\;
\DECODER|ALT_INV_OP_ULA[1]~0_combout\ <= NOT \DECODER|OP_ULA[1]~0_combout\;
\MDADOS|ALT_INV_ram~147_combout\ <= NOT \MDADOS|ram~147_combout\;
\INSTR|ROM|ALT_INV_memROM~7_combout\ <= NOT \INSTR|ROM|memROM~7_combout\;
\INSTR|ROM|ALT_INV_memROM~6_combout\ <= NOT \INSTR|ROM|memROM~6_combout\;
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
\DECODER|ALT_INV_SEL_MUX~0_combout\ <= NOT \DECODER|SEL_MUX~0_combout\;
\INSTR|ROM|ALT_INV_memROM~3_combout\ <= NOT \INSTR|ROM|memROM~3_combout\;
\INSTR|ROM|ALT_INV_memROM~2_combout\ <= NOT \INSTR|ROM|memROM~2_combout\;
\INSTR|ROM|ALT_INV_memROM~1_combout\ <= NOT \INSTR|ROM|memROM~1_combout\;
\INSTR|PC|ALT_INV_DOUT\(7) <= NOT \INSTR|PC|DOUT\(7);
\INSTR|PC|ALT_INV_DOUT\(8) <= NOT \INSTR|PC|DOUT\(8);
\INSTR|PC|ALT_INV_DOUT\(6) <= NOT \INSTR|PC|DOUT\(6);
\INSTR|PC|ALT_INV_DOUT\(5) <= NOT \INSTR|PC|DOUT\(5);
\INSTR|PC|ALT_INV_DOUT\(4) <= NOT \INSTR|PC|DOUT\(4);
\INSTR|ROM|ALT_INV_memROM~0_combout\ <= NOT \INSTR|ROM|memROM~0_combout\;
\INSTR|PC|ALT_INV_DOUT\(3) <= NOT \INSTR|PC|DOUT\(3);
\INSTR|PC|ALT_INV_DOUT\(2) <= NOT \INSTR|PC|DOUT\(2);
\INSTR|PC|ALT_INV_DOUT\(1) <= NOT \INSTR|PC|DOUT\(1);
\INSTR|PC|ALT_INV_DOUT\(0) <= NOT \INSTR|PC|DOUT\(0);
\REG_A|ALT_INV_DOUT\(7) <= NOT \REG_A|DOUT\(7);
\REG_A|ALT_INV_DOUT\(6) <= NOT \REG_A|DOUT\(6);
\REG_A|ALT_INV_DOUT\(5) <= NOT \REG_A|DOUT\(5);
\REG_A|ALT_INV_DOUT\(4) <= NOT \REG_A|DOUT\(4);
\REG_A|ALT_INV_DOUT\(3) <= NOT \REG_A|DOUT\(3);
\REG_A|ALT_INV_DOUT\(2) <= NOT \REG_A|DOUT\(2);
\REG_A|ALT_INV_DOUT\(1) <= NOT \REG_A|DOUT\(1);
\REG_A|ALT_INV_DOUT\(0) <= NOT \REG_A|DOUT\(0);
\MDADOS|ALT_INV_process_0~0_combout\ <= NOT \MDADOS|process_0~0_combout\;
\INSTR|ROM|ALT_INV_memROM~9_combout\ <= NOT \INSTR|ROM|memROM~9_combout\;
\INSTR|ROM|ALT_INV_memROM~8_combout\ <= NOT \INSTR|ROM|memROM~8_combout\;
\DECODER|ALT_INV_OP_ULA[0]~1_combout\ <= NOT \DECODER|OP_ULA[0]~1_combout\;
\DECODER|ALT_INV_Equal0~0_combout\ <= NOT \DECODER|Equal0~0_combout\;
\MDADOS|ALT_INV_ram~176_combout\ <= NOT \MDADOS|ram~176_combout\;
\MDADOS|ALT_INV_ram~175_combout\ <= NOT \MDADOS|ram~175_combout\;
\MDADOS|ALT_INV_ram~64_q\ <= NOT \MDADOS|ram~64_q\;
\MDADOS|ALT_INV_ram~32_q\ <= NOT \MDADOS|ram~32_q\;
\MDADOS|ALT_INV_ram~174_combout\ <= NOT \MDADOS|ram~174_combout\;
\MDADOS|ALT_INV_ram~56_q\ <= NOT \MDADOS|ram~56_q\;
\MDADOS|ALT_INV_ram~24_q\ <= NOT \MDADOS|ram~24_q\;
\MDADOS|ALT_INV_ram~173_combout\ <= NOT \MDADOS|ram~173_combout\;
\MDADOS|ALT_INV_ram~80_q\ <= NOT \MDADOS|ram~80_q\;
\MDADOS|ALT_INV_ram~48_q\ <= NOT \MDADOS|ram~48_q\;
\MDADOS|ALT_INV_ram~172_combout\ <= NOT \MDADOS|ram~172_combout\;
\MDADOS|ALT_INV_ram~72_q\ <= NOT \MDADOS|ram~72_q\;
\MDADOS|ALT_INV_ram~40_q\ <= NOT \MDADOS|ram~40_q\;
\MDADOS|ALT_INV_ram~171_combout\ <= NOT \MDADOS|ram~171_combout\;
\MDADOS|ALT_INV_ram~170_combout\ <= NOT \MDADOS|ram~170_combout\;
\MDADOS|ALT_INV_ram~63_q\ <= NOT \MDADOS|ram~63_q\;
\MDADOS|ALT_INV_ram~55_q\ <= NOT \MDADOS|ram~55_q\;
\MDADOS|ALT_INV_ram~79_q\ <= NOT \MDADOS|ram~79_q\;
\MDADOS|ALT_INV_ram~71_q\ <= NOT \MDADOS|ram~71_q\;
\MDADOS|ALT_INV_ram~169_combout\ <= NOT \MDADOS|ram~169_combout\;
\MDADOS|ALT_INV_ram~31_q\ <= NOT \MDADOS|ram~31_q\;

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

\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

\INSTR|PC|DOUT[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \INSTR|PC|DOUT[0]~0_combout\ = !\INSTR|PC|DOUT\(0)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR|PC|ALT_INV_DOUT\(0),
	combout => \INSTR|PC|DOUT[0]~0_combout\);

\INSTR|PC|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \INSTR|PC|DOUT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INSTR|PC|DOUT\(0));

\INSTR|SOMA_CONST|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \INSTR|SOMA_CONST|Add0~1_sumout\ = SUM(( \INSTR|PC|DOUT\(0) ) + ( \INSTR|PC|DOUT\(1) ) + ( !VCC ))
-- \INSTR|SOMA_CONST|Add0~2\ = CARRY(( \INSTR|PC|DOUT\(0) ) + ( \INSTR|PC|DOUT\(1) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \INSTR|PC|ALT_INV_DOUT\(0),
	dataf => \INSTR|PC|ALT_INV_DOUT\(1),
	cin => GND,
	sumout => \INSTR|SOMA_CONST|Add0~1_sumout\,
	cout => \INSTR|SOMA_CONST|Add0~2\);

\INSTR|PC|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \INSTR|SOMA_CONST|Add0~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INSTR|PC|DOUT\(1));

\INSTR|SOMA_CONST|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \INSTR|SOMA_CONST|Add0~5_sumout\ = SUM(( \INSTR|PC|DOUT\(2) ) + ( GND ) + ( \INSTR|SOMA_CONST|Add0~2\ ))
-- \INSTR|SOMA_CONST|Add0~6\ = CARRY(( \INSTR|PC|DOUT\(2) ) + ( GND ) + ( \INSTR|SOMA_CONST|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \INSTR|PC|ALT_INV_DOUT\(2),
	cin => \INSTR|SOMA_CONST|Add0~2\,
	sumout => \INSTR|SOMA_CONST|Add0~5_sumout\,
	cout => \INSTR|SOMA_CONST|Add0~6\);

\INSTR|PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \INSTR|SOMA_CONST|Add0~5_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INSTR|PC|DOUT\(2));

\INSTR|SOMA_CONST|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \INSTR|SOMA_CONST|Add0~9_sumout\ = SUM(( \INSTR|PC|DOUT\(3) ) + ( GND ) + ( \INSTR|SOMA_CONST|Add0~6\ ))
-- \INSTR|SOMA_CONST|Add0~10\ = CARRY(( \INSTR|PC|DOUT\(3) ) + ( GND ) + ( \INSTR|SOMA_CONST|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \INSTR|PC|ALT_INV_DOUT\(3),
	cin => \INSTR|SOMA_CONST|Add0~6\,
	sumout => \INSTR|SOMA_CONST|Add0~9_sumout\,
	cout => \INSTR|SOMA_CONST|Add0~10\);

\INSTR|PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \INSTR|SOMA_CONST|Add0~9_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INSTR|PC|DOUT\(3));

\INSTR|ROM|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \INSTR|ROM|memROM~0_combout\ = (!\INSTR|PC|DOUT\(0) & (!\INSTR|PC|DOUT\(3) & ((!\INSTR|PC|DOUT\(1)) # (\INSTR|PC|DOUT\(2))))) # (\INSTR|PC|DOUT\(0) & (!\INSTR|PC|DOUT\(1) & ((!\INSTR|PC|DOUT\(2)) # (!\INSTR|PC|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111001000000110011100100000011001110010000001100111001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR|PC|ALT_INV_DOUT\(0),
	datab => \INSTR|PC|ALT_INV_DOUT\(1),
	datac => \INSTR|PC|ALT_INV_DOUT\(2),
	datad => \INSTR|PC|ALT_INV_DOUT\(3),
	combout => \INSTR|ROM|memROM~0_combout\);

\INSTR|SOMA_CONST|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \INSTR|SOMA_CONST|Add0~13_sumout\ = SUM(( \INSTR|PC|DOUT\(4) ) + ( GND ) + ( \INSTR|SOMA_CONST|Add0~10\ ))
-- \INSTR|SOMA_CONST|Add0~14\ = CARRY(( \INSTR|PC|DOUT\(4) ) + ( GND ) + ( \INSTR|SOMA_CONST|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \INSTR|PC|ALT_INV_DOUT\(4),
	cin => \INSTR|SOMA_CONST|Add0~10\,
	sumout => \INSTR|SOMA_CONST|Add0~13_sumout\,
	cout => \INSTR|SOMA_CONST|Add0~14\);

\INSTR|PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \INSTR|SOMA_CONST|Add0~13_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INSTR|PC|DOUT\(4));

\INSTR|SOMA_CONST|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \INSTR|SOMA_CONST|Add0~17_sumout\ = SUM(( \INSTR|PC|DOUT\(5) ) + ( GND ) + ( \INSTR|SOMA_CONST|Add0~14\ ))
-- \INSTR|SOMA_CONST|Add0~18\ = CARRY(( \INSTR|PC|DOUT\(5) ) + ( GND ) + ( \INSTR|SOMA_CONST|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \INSTR|PC|ALT_INV_DOUT\(5),
	cin => \INSTR|SOMA_CONST|Add0~14\,
	sumout => \INSTR|SOMA_CONST|Add0~17_sumout\,
	cout => \INSTR|SOMA_CONST|Add0~18\);

\INSTR|PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \INSTR|SOMA_CONST|Add0~17_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INSTR|PC|DOUT\(5));

\INSTR|SOMA_CONST|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \INSTR|SOMA_CONST|Add0~21_sumout\ = SUM(( \INSTR|PC|DOUT\(6) ) + ( GND ) + ( \INSTR|SOMA_CONST|Add0~18\ ))
-- \INSTR|SOMA_CONST|Add0~22\ = CARRY(( \INSTR|PC|DOUT\(6) ) + ( GND ) + ( \INSTR|SOMA_CONST|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \INSTR|PC|ALT_INV_DOUT\(6),
	cin => \INSTR|SOMA_CONST|Add0~18\,
	sumout => \INSTR|SOMA_CONST|Add0~21_sumout\,
	cout => \INSTR|SOMA_CONST|Add0~22\);

\INSTR|PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \INSTR|SOMA_CONST|Add0~21_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INSTR|PC|DOUT\(6));

\INSTR|SOMA_CONST|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \INSTR|SOMA_CONST|Add0~29_sumout\ = SUM(( \INSTR|PC|DOUT\(7) ) + ( GND ) + ( \INSTR|SOMA_CONST|Add0~22\ ))
-- \INSTR|SOMA_CONST|Add0~30\ = CARRY(( \INSTR|PC|DOUT\(7) ) + ( GND ) + ( \INSTR|SOMA_CONST|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \INSTR|PC|ALT_INV_DOUT\(7),
	cin => \INSTR|SOMA_CONST|Add0~22\,
	sumout => \INSTR|SOMA_CONST|Add0~29_sumout\,
	cout => \INSTR|SOMA_CONST|Add0~30\);

\INSTR|PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \INSTR|SOMA_CONST|Add0~29_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INSTR|PC|DOUT\(7));

\INSTR|SOMA_CONST|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \INSTR|SOMA_CONST|Add0~25_sumout\ = SUM(( \INSTR|PC|DOUT\(8) ) + ( GND ) + ( \INSTR|SOMA_CONST|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \INSTR|PC|ALT_INV_DOUT\(8),
	cin => \INSTR|SOMA_CONST|Add0~30\,
	sumout => \INSTR|SOMA_CONST|Add0~25_sumout\);

\INSTR|PC|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \INSTR|SOMA_CONST|Add0~25_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INSTR|PC|DOUT\(8));

\INSTR|ROM|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \INSTR|ROM|memROM~1_combout\ = ( !\INSTR|PC|DOUT\(7) & ( (!\INSTR|PC|DOUT\(4) & (!\INSTR|PC|DOUT\(5) & (!\INSTR|PC|DOUT\(6) & !\INSTR|PC|DOUT\(8)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR|PC|ALT_INV_DOUT\(4),
	datab => \INSTR|PC|ALT_INV_DOUT\(5),
	datac => \INSTR|PC|ALT_INV_DOUT\(6),
	datad => \INSTR|PC|ALT_INV_DOUT\(8),
	datae => \INSTR|PC|ALT_INV_DOUT\(7),
	combout => \INSTR|ROM|memROM~1_combout\);

\INSTR|ROM|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \INSTR|ROM|memROM~2_combout\ = (!\INSTR|PC|DOUT\(1) & (!\INSTR|PC|DOUT\(2) $ (((!\INSTR|PC|DOUT\(0) & !\INSTR|PC|DOUT\(3)))))) # (\INSTR|PC|DOUT\(1) & (((\INSTR|PC|DOUT\(2) & !\INSTR|PC|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100101111000000010010111100000001001011110000000100101111000000",
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
-- \INSTR|ROM|memROM~3_combout\ = (!\INSTR|PC|DOUT\(2) & ((!\INSTR|PC|DOUT\(1) & (!\INSTR|PC|DOUT\(0) & \INSTR|PC|DOUT\(3))) # (\INSTR|PC|DOUT\(1) & ((!\INSTR|PC|DOUT\(3))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000010000000001100001000000000110000100000000011000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR|PC|ALT_INV_DOUT\(0),
	datab => \INSTR|PC|ALT_INV_DOUT\(1),
	datac => \INSTR|PC|ALT_INV_DOUT\(2),
	datad => \INSTR|PC|ALT_INV_DOUT\(3),
	combout => \INSTR|ROM|memROM~3_combout\);

\DECODER|SEL_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER|SEL_MUX~0_combout\ = (\INSTR|ROM|memROM~0_combout\ & (\INSTR|ROM|memROM~1_combout\ & (!\INSTR|ROM|memROM~2_combout\ & !\INSTR|ROM|memROM~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000000000100000000000000010000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR|ROM|ALT_INV_memROM~0_combout\,
	datab => \INSTR|ROM|ALT_INV_memROM~1_combout\,
	datac => \INSTR|ROM|ALT_INV_memROM~2_combout\,
	datad => \INSTR|ROM|ALT_INV_memROM~3_combout\,
	combout => \DECODER|SEL_MUX~0_combout\);

\INSTR|ROM|memROM~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \INSTR|ROM|memROM~8_combout\ = (\INSTR|PC|DOUT\(2) & (!\INSTR|PC|DOUT\(3) & (!\INSTR|PC|DOUT\(0) $ (\INSTR|PC|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100100000000000010010000000000001001000000000000100100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR|PC|ALT_INV_DOUT\(0),
	datab => \INSTR|PC|ALT_INV_DOUT\(1),
	datac => \INSTR|PC|ALT_INV_DOUT\(2),
	datad => \INSTR|PC|ALT_INV_DOUT\(3),
	combout => \INSTR|ROM|memROM~8_combout\);

\INSTR|ROM|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \INSTR|ROM|memROM~4_combout\ = ( !\INSTR|PC|DOUT\(7) & ( \INSTR|ROM|memROM~8_combout\ & ( (!\INSTR|PC|DOUT\(4) & (!\INSTR|PC|DOUT\(5) & (!\INSTR|PC|DOUT\(6) & !\INSTR|PC|DOUT\(8)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR|PC|ALT_INV_DOUT\(4),
	datab => \INSTR|PC|ALT_INV_DOUT\(5),
	datac => \INSTR|PC|ALT_INV_DOUT\(6),
	datad => \INSTR|PC|ALT_INV_DOUT\(8),
	datae => \INSTR|PC|ALT_INV_DOUT\(7),
	dataf => \INSTR|ROM|ALT_INV_memROM~8_combout\,
	combout => \INSTR|ROM|memROM~4_combout\);

\INSTR|ROM|memROM~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \INSTR|ROM|memROM~9_combout\ = (!\INSTR|PC|DOUT\(0) & ((!\INSTR|PC|DOUT\(1) & (!\INSTR|PC|DOUT\(2))) # (\INSTR|PC|DOUT\(1) & (\INSTR|PC|DOUT\(2) & !\INSTR|PC|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000001010000000100000101000000010000010100000001000001010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR|PC|ALT_INV_DOUT\(0),
	datab => \INSTR|PC|ALT_INV_DOUT\(1),
	datac => \INSTR|PC|ALT_INV_DOUT\(2),
	datad => \INSTR|PC|ALT_INV_DOUT\(3),
	combout => \INSTR|ROM|memROM~9_combout\);

\INSTR|ROM|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \INSTR|ROM|memROM~5_combout\ = ( \INSTR|PC|DOUT\(7) & ( \INSTR|ROM|memROM~9_combout\ ) ) # ( !\INSTR|PC|DOUT\(7) & ( \INSTR|ROM|memROM~9_combout\ & ( (((\INSTR|PC|DOUT\(8)) # (\INSTR|PC|DOUT\(6))) # (\INSTR|PC|DOUT\(5))) # (\INSTR|PC|DOUT\(4)) ) ) ) # ( 
-- \INSTR|PC|DOUT\(7) & ( !\INSTR|ROM|memROM~9_combout\ ) ) # ( !\INSTR|PC|DOUT\(7) & ( !\INSTR|ROM|memROM~9_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111101111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR|PC|ALT_INV_DOUT\(4),
	datab => \INSTR|PC|ALT_INV_DOUT\(5),
	datac => \INSTR|PC|ALT_INV_DOUT\(6),
	datad => \INSTR|PC|ALT_INV_DOUT\(8),
	datae => \INSTR|PC|ALT_INV_DOUT\(7),
	dataf => \INSTR|ROM|ALT_INV_memROM~9_combout\,
	combout => \INSTR|ROM|memROM~5_combout\);

\INSTR|ROM|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \INSTR|ROM|memROM~6_combout\ = ( \INSTR|ROM|memROM~1_combout\ & ( (\INSTR|PC|DOUT\(0) & (!\INSTR|PC|DOUT\(1) & (!\INSTR|PC|DOUT\(2) $ (!\INSTR|PC|DOUT\(3))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001000100000000000000000000000000010001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR|PC|ALT_INV_DOUT\(0),
	datab => \INSTR|PC|ALT_INV_DOUT\(1),
	datac => \INSTR|PC|ALT_INV_DOUT\(2),
	datad => \INSTR|PC|ALT_INV_DOUT\(3),
	datae => \INSTR|ROM|ALT_INV_memROM~1_combout\,
	combout => \INSTR|ROM|memROM~6_combout\);

\INSTR|ROM|memROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \INSTR|ROM|memROM~7_combout\ = ( \INSTR|ROM|memROM~1_combout\ & ( (!\INSTR|PC|DOUT\(0) & (!\INSTR|PC|DOUT\(1) & (!\INSTR|PC|DOUT\(2) & !\INSTR|PC|DOUT\(3)))) ) )

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
	datad => \INSTR|PC|ALT_INV_DOUT\(3),
	datae => \INSTR|ROM|ALT_INV_memROM~1_combout\,
	combout => \INSTR|ROM|memROM~7_combout\);

\MDADOS|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MDADOS|process_0~0_combout\ = ( \INSTR|ROM|memROM~1_combout\ & ( (!\INSTR|PC|DOUT\(2) & (((!\INSTR|PC|DOUT\(1) & \INSTR|PC|DOUT\(0))))) # (\INSTR|PC|DOUT\(2) & (!\INSTR|PC|DOUT\(3) & ((!\INSTR|PC|DOUT\(0))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000101100000000000000000000000010001011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR|PC|ALT_INV_DOUT\(3),
	datab => \INSTR|PC|ALT_INV_DOUT\(2),
	datac => \INSTR|PC|ALT_INV_DOUT\(1),
	datad => \INSTR|PC|ALT_INV_DOUT\(0),
	datae => \INSTR|ROM|ALT_INV_memROM~1_combout\,
	combout => \MDADOS|process_0~0_combout\);

\MDADOS|ram~177\ : cyclonev_lcell_comb
-- Equation(s):
-- \MDADOS|ram~177_combout\ = ( \MDADOS|process_0~0_combout\ & ( (!\INSTR|ROM|memROM~4_combout\ & (!\INSTR|ROM|memROM~5_combout\ & (!\INSTR|ROM|memROM~6_combout\ & !\INSTR|ROM|memROM~7_combout\))) ) )

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
	combout => \MDADOS|ram~177_combout\);

\MDADOS|ram~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(0),
	ena => \MDADOS|ram~177_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDADOS|ram~33_q\);

\MDADOS|ram~178\ : cyclonev_lcell_comb
-- Equation(s):
-- \MDADOS|ram~178_combout\ = ( \MDADOS|process_0~0_combout\ & ( (\INSTR|ROM|memROM~4_combout\ & (!\INSTR|ROM|memROM~5_combout\ & (!\INSTR|ROM|memROM~6_combout\ & !\INSTR|ROM|memROM~7_combout\))) ) )

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
	combout => \MDADOS|ram~178_combout\);

\MDADOS|ram~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(0),
	ena => \MDADOS|ram~178_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDADOS|ram~41_q\);

\MDADOS|ram~179\ : cyclonev_lcell_comb
-- Equation(s):
-- \MDADOS|ram~179_combout\ = ( \MDADOS|process_0~0_combout\ & ( (!\INSTR|ROM|memROM~4_combout\ & (\INSTR|ROM|memROM~5_combout\ & (!\INSTR|ROM|memROM~6_combout\ & !\INSTR|ROM|memROM~7_combout\))) ) )

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
	combout => \MDADOS|ram~179_combout\);

\MDADOS|ram~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(0),
	ena => \MDADOS|ram~179_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDADOS|ram~17_q\);

\MDADOS|ram~180\ : cyclonev_lcell_comb
-- Equation(s):
-- \MDADOS|ram~180_combout\ = ( \MDADOS|process_0~0_combout\ & ( (\INSTR|ROM|memROM~4_combout\ & (\INSTR|ROM|memROM~5_combout\ & (!\INSTR|ROM|memROM~6_combout\ & !\INSTR|ROM|memROM~7_combout\))) ) )

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
	combout => \MDADOS|ram~180_combout\);

\MDADOS|ram~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(0),
	ena => \MDADOS|ram~180_combout\,
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

\MDADOS|ram~181\ : cyclonev_lcell_comb
-- Equation(s):
-- \MDADOS|ram~181_combout\ = ( \MDADOS|process_0~0_combout\ & ( (!\INSTR|ROM|memROM~4_combout\ & (!\INSTR|ROM|memROM~5_combout\ & (\INSTR|ROM|memROM~6_combout\ & !\INSTR|ROM|memROM~7_combout\))) ) )

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
	combout => \MDADOS|ram~181_combout\);

\MDADOS|ram~65\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(0),
	ena => \MDADOS|ram~181_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDADOS|ram~65_q\);

\MDADOS|ram~182\ : cyclonev_lcell_comb
-- Equation(s):
-- \MDADOS|ram~182_combout\ = ( \MDADOS|process_0~0_combout\ & ( (\INSTR|ROM|memROM~4_combout\ & (!\INSTR|ROM|memROM~5_combout\ & (\INSTR|ROM|memROM~6_combout\ & !\INSTR|ROM|memROM~7_combout\))) ) )

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
	combout => \MDADOS|ram~182_combout\);

\MDADOS|ram~73\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(0),
	ena => \MDADOS|ram~182_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDADOS|ram~73_q\);

\MDADOS|ram~183\ : cyclonev_lcell_comb
-- Equation(s):
-- \MDADOS|ram~183_combout\ = ( \MDADOS|process_0~0_combout\ & ( (!\INSTR|ROM|memROM~4_combout\ & (\INSTR|ROM|memROM~5_combout\ & (\INSTR|ROM|memROM~6_combout\ & !\INSTR|ROM|memROM~7_combout\))) ) )

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
	combout => \MDADOS|ram~183_combout\);

\MDADOS|ram~49\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(0),
	ena => \MDADOS|ram~183_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDADOS|ram~49_q\);

\MDADOS|ram~184\ : cyclonev_lcell_comb
-- Equation(s):
-- \MDADOS|ram~184_combout\ = ( \MDADOS|process_0~0_combout\ & ( (\INSTR|ROM|memROM~4_combout\ & (\INSTR|ROM|memROM~5_combout\ & (\INSTR|ROM|memROM~6_combout\ & !\INSTR|ROM|memROM~7_combout\))) ) )

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
	combout => \MDADOS|ram~184_combout\);

\MDADOS|ram~57\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(0),
	ena => \MDADOS|ram~184_combout\,
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

\MDADOS|ram~147\ : cyclonev_lcell_comb
-- Equation(s):
-- \MDADOS|ram~147_combout\ = ( \INSTR|ROM|memROM~6_combout\ & ( !\INSTR|ROM|memROM~7_combout\ & ( \MDADOS|ram~146_combout\ ) ) ) # ( !\INSTR|ROM|memROM~6_combout\ & ( !\INSTR|ROM|memROM~7_combout\ & ( \MDADOS|ram~145_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MDADOS|ALT_INV_ram~145_combout\,
	datab => \MDADOS|ALT_INV_ram~146_combout\,
	datae => \INSTR|ROM|ALT_INV_memROM~6_combout\,
	dataf => \INSTR|ROM|ALT_INV_memROM~7_combout\,
	combout => \MDADOS|ram~147_combout\);

\DECODER|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER|Equal0~0_combout\ = (!\INSTR|ROM|memROM~0_combout\ & (\INSTR|ROM|memROM~1_combout\ & (!\INSTR|ROM|memROM~2_combout\ & \INSTR|ROM|memROM~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000000000010000000000000001000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR|ROM|ALT_INV_memROM~0_combout\,
	datab => \INSTR|ROM|ALT_INV_memROM~1_combout\,
	datac => \INSTR|ROM|ALT_INV_memROM~2_combout\,
	datad => \INSTR|ROM|ALT_INV_memROM~3_combout\,
	combout => \DECODER|Equal0~0_combout\);

\ULA1|Add0~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~34_cout\ = CARRY(( !\DECODER|Equal0~0_combout\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \DECODER|ALT_INV_Equal0~0_combout\,
	cin => GND,
	cout => \ULA1|Add0~34_cout\);

\ULA1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~1_sumout\ = SUM(( !\DECODER|Equal0~0_combout\ $ (((!\DECODER|SEL_MUX~0_combout\ & ((\MDADOS|ram~147_combout\))) # (\DECODER|SEL_MUX~0_combout\ & (\INSTR|ROM|memROM~4_combout\)))) ) + ( \REG_A|DOUT\(0) ) + ( \ULA1|Add0~34_cout\ ))
-- \ULA1|Add0~2\ = CARRY(( !\DECODER|Equal0~0_combout\ $ (((!\DECODER|SEL_MUX~0_combout\ & ((\MDADOS|ram~147_combout\))) # (\DECODER|SEL_MUX~0_combout\ & (\INSTR|ROM|memROM~4_combout\)))) ) + ( \REG_A|DOUT\(0) ) + ( \ULA1|Add0~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001110000101001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER|ALT_INV_SEL_MUX~0_combout\,
	datab => \INSTR|ROM|ALT_INV_memROM~4_combout\,
	datac => \DECODER|ALT_INV_Equal0~0_combout\,
	datad => \MDADOS|ALT_INV_ram~147_combout\,
	dataf => \REG_A|ALT_INV_DOUT\(0),
	cin => \ULA1|Add0~34_cout\,
	sumout => \ULA1|Add0~1_sumout\,
	cout => \ULA1|Add0~2\);

\DECODER|OP_ULA[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER|OP_ULA[1]~0_combout\ = (\INSTR|ROM|memROM~1_combout\ & (!\INSTR|ROM|memROM~3_combout\ & (!\INSTR|ROM|memROM~0_combout\ $ (!\INSTR|ROM|memROM~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001000000000000100100000000000010010000000000001001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR|ROM|ALT_INV_memROM~0_combout\,
	datab => \INSTR|ROM|ALT_INV_memROM~1_combout\,
	datac => \INSTR|ROM|ALT_INV_memROM~2_combout\,
	datad => \INSTR|ROM|ALT_INV_memROM~3_combout\,
	combout => \DECODER|OP_ULA[1]~0_combout\);

\ULA1|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[0]~0_combout\ = ( \DECODER|OP_ULA[1]~0_combout\ & ( (!\DECODER|SEL_MUX~0_combout\ & ((\MDADOS|ram~147_combout\))) # (\DECODER|SEL_MUX~0_combout\ & (\INSTR|ROM|memROM~4_combout\)) ) ) # ( !\DECODER|OP_ULA[1]~0_combout\ & ( \ULA1|Add0~1_sumout\ 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000110110001101100000000111111110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER|ALT_INV_SEL_MUX~0_combout\,
	datab => \INSTR|ROM|ALT_INV_memROM~4_combout\,
	datac => \MDADOS|ALT_INV_ram~147_combout\,
	datad => \ULA1|ALT_INV_Add0~1_sumout\,
	datae => \DECODER|ALT_INV_OP_ULA[1]~0_combout\,
	combout => \ULA1|saida[0]~0_combout\);

\DECODER|HAB_A~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER|HAB_A~0_combout\ = (\INSTR|ROM|memROM~1_combout\ & (!\INSTR|ROM|memROM~0_combout\ $ (((!\INSTR|ROM|memROM~2_combout\ & !\INSTR|ROM|memROM~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001000100010000100100010001000010010001000100001001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR|ROM|ALT_INV_memROM~0_combout\,
	datab => \INSTR|ROM|ALT_INV_memROM~1_combout\,
	datac => \INSTR|ROM|ALT_INV_memROM~2_combout\,
	datad => \INSTR|ROM|ALT_INV_memROM~3_combout\,
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
	ena => \MDADOS|ram~177_combout\,
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
	ena => \MDADOS|ram~181_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDADOS|ram~66_q\);

\MDADOS|ram~148\ : cyclonev_lcell_comb
-- Equation(s):
-- \MDADOS|ram~148_combout\ = ( \INSTR|ROM|memROM~6_combout\ & ( !\INSTR|ROM|memROM~7_combout\ & ( \MDADOS|ram~66_q\ ) ) ) # ( !\INSTR|ROM|memROM~6_combout\ & ( !\INSTR|ROM|memROM~7_combout\ & ( \MDADOS|ram~34_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MDADOS|ALT_INV_ram~34_q\,
	datab => \MDADOS|ALT_INV_ram~66_q\,
	datae => \INSTR|ROM|ALT_INV_memROM~6_combout\,
	dataf => \INSTR|ROM|ALT_INV_memROM~7_combout\,
	combout => \MDADOS|ram~148_combout\);

\MDADOS|ram~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(1),
	ena => \MDADOS|ram~178_combout\,
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
	ena => \MDADOS|ram~182_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDADOS|ram~74_q\);

\MDADOS|ram~149\ : cyclonev_lcell_comb
-- Equation(s):
-- \MDADOS|ram~149_combout\ = ( \INSTR|ROM|memROM~6_combout\ & ( !\INSTR|ROM|memROM~7_combout\ & ( \MDADOS|ram~74_q\ ) ) ) # ( !\INSTR|ROM|memROM~6_combout\ & ( !\INSTR|ROM|memROM~7_combout\ & ( \MDADOS|ram~42_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MDADOS|ALT_INV_ram~42_q\,
	datab => \MDADOS|ALT_INV_ram~74_q\,
	datae => \INSTR|ROM|ALT_INV_memROM~6_combout\,
	dataf => \INSTR|ROM|ALT_INV_memROM~7_combout\,
	combout => \MDADOS|ram~149_combout\);

\MDADOS|ram~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(1),
	ena => \MDADOS|ram~179_combout\,
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
	ena => \MDADOS|ram~183_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDADOS|ram~50_q\);

\MDADOS|ram~150\ : cyclonev_lcell_comb
-- Equation(s):
-- \MDADOS|ram~150_combout\ = ( \INSTR|ROM|memROM~6_combout\ & ( !\INSTR|ROM|memROM~7_combout\ & ( \MDADOS|ram~50_q\ ) ) ) # ( !\INSTR|ROM|memROM~6_combout\ & ( !\INSTR|ROM|memROM~7_combout\ & ( \MDADOS|ram~18_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MDADOS|ALT_INV_ram~18_q\,
	datab => \MDADOS|ALT_INV_ram~50_q\,
	datae => \INSTR|ROM|ALT_INV_memROM~6_combout\,
	dataf => \INSTR|ROM|ALT_INV_memROM~7_combout\,
	combout => \MDADOS|ram~150_combout\);

\MDADOS|ram~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(1),
	ena => \MDADOS|ram~180_combout\,
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
	ena => \MDADOS|ram~184_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDADOS|ram~58_q\);

\MDADOS|ram~151\ : cyclonev_lcell_comb
-- Equation(s):
-- \MDADOS|ram~151_combout\ = ( \INSTR|ROM|memROM~6_combout\ & ( !\INSTR|ROM|memROM~7_combout\ & ( \MDADOS|ram~58_q\ ) ) ) # ( !\INSTR|ROM|memROM~6_combout\ & ( !\INSTR|ROM|memROM~7_combout\ & ( \MDADOS|ram~26_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MDADOS|ALT_INV_ram~26_q\,
	datab => \MDADOS|ALT_INV_ram~58_q\,
	datae => \INSTR|ROM|ALT_INV_memROM~6_combout\,
	dataf => \INSTR|ROM|ALT_INV_memROM~7_combout\,
	combout => \MDADOS|ram~151_combout\);

\MDADOS|ram~152\ : cyclonev_lcell_comb
-- Equation(s):
-- \MDADOS|ram~152_combout\ = ( \INSTR|ROM|memROM~4_combout\ & ( \INSTR|ROM|memROM~5_combout\ & ( \MDADOS|ram~151_combout\ ) ) ) # ( !\INSTR|ROM|memROM~4_combout\ & ( \INSTR|ROM|memROM~5_combout\ & ( \MDADOS|ram~150_combout\ ) ) ) # ( 
-- \INSTR|ROM|memROM~4_combout\ & ( !\INSTR|ROM|memROM~5_combout\ & ( \MDADOS|ram~149_combout\ ) ) ) # ( !\INSTR|ROM|memROM~4_combout\ & ( !\INSTR|ROM|memROM~5_combout\ & ( \MDADOS|ram~148_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MDADOS|ALT_INV_ram~148_combout\,
	datab => \MDADOS|ALT_INV_ram~149_combout\,
	datac => \MDADOS|ALT_INV_ram~150_combout\,
	datad => \MDADOS|ALT_INV_ram~151_combout\,
	datae => \INSTR|ROM|ALT_INV_memROM~4_combout\,
	dataf => \INSTR|ROM|ALT_INV_memROM~5_combout\,
	combout => \MDADOS|ram~152_combout\);

\ULA1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~5_sumout\ = SUM(( !\DECODER|Equal0~0_combout\ $ (((!\DECODER|SEL_MUX~0_combout\ & ((\MDADOS|ram~152_combout\))) # (\DECODER|SEL_MUX~0_combout\ & (!\INSTR|ROM|memROM~5_combout\)))) ) + ( \REG_A|DOUT\(1) ) + ( \ULA1|Add0~2\ ))
-- \ULA1|Add0~6\ = CARRY(( !\DECODER|Equal0~0_combout\ $ (((!\DECODER|SEL_MUX~0_combout\ & ((\MDADOS|ram~152_combout\))) # (\DECODER|SEL_MUX~0_combout\ & (!\INSTR|ROM|memROM~5_combout\)))) ) + ( \REG_A|DOUT\(1) ) + ( \ULA1|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001001110000110110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER|ALT_INV_SEL_MUX~0_combout\,
	datab => \DECODER|ALT_INV_Equal0~0_combout\,
	datac => \INSTR|ROM|ALT_INV_memROM~5_combout\,
	datad => \MDADOS|ALT_INV_ram~152_combout\,
	dataf => \REG_A|ALT_INV_DOUT\(1),
	cin => \ULA1|Add0~2\,
	sumout => \ULA1|Add0~5_sumout\,
	cout => \ULA1|Add0~6\);

\ULA1|saida[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[1]~1_combout\ = ( \ULA1|Add0~5_sumout\ & ( (!\DECODER|OP_ULA[1]~0_combout\) # ((!\DECODER|SEL_MUX~0_combout\ & ((\MDADOS|ram~152_combout\))) # (\DECODER|SEL_MUX~0_combout\ & (!\INSTR|ROM|memROM~5_combout\))) ) ) # ( !\ULA1|Add0~5_sumout\ & ( 
-- (\DECODER|OP_ULA[1]~0_combout\ & ((!\DECODER|SEL_MUX~0_combout\ & ((\MDADOS|ram~152_combout\))) # (\DECODER|SEL_MUX~0_combout\ & (!\INSTR|ROM|memROM~5_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000001110111101001111111000000100000011101111010011111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER|ALT_INV_SEL_MUX~0_combout\,
	datab => \INSTR|ROM|ALT_INV_memROM~5_combout\,
	datac => \DECODER|ALT_INV_OP_ULA[1]~0_combout\,
	datad => \MDADOS|ALT_INV_ram~152_combout\,
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
	ena => \MDADOS|ram~177_combout\,
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
	ena => \MDADOS|ram~178_combout\,
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
	ena => \MDADOS|ram~179_combout\,
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
	ena => \MDADOS|ram~180_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDADOS|ram~27_q\);

\MDADOS|ram~153\ : cyclonev_lcell_comb
-- Equation(s):
-- \MDADOS|ram~153_combout\ = ( \INSTR|ROM|memROM~4_combout\ & ( \INSTR|ROM|memROM~5_combout\ & ( \MDADOS|ram~27_q\ ) ) ) # ( !\INSTR|ROM|memROM~4_combout\ & ( \INSTR|ROM|memROM~5_combout\ & ( \MDADOS|ram~19_q\ ) ) ) # ( \INSTR|ROM|memROM~4_combout\ & ( 
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
	combout => \MDADOS|ram~153_combout\);

\MDADOS|ram~67\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(2),
	ena => \MDADOS|ram~181_combout\,
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
	ena => \MDADOS|ram~182_combout\,
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
	ena => \MDADOS|ram~183_combout\,
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
	ena => \MDADOS|ram~184_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDADOS|ram~59_q\);

\MDADOS|ram~154\ : cyclonev_lcell_comb
-- Equation(s):
-- \MDADOS|ram~154_combout\ = ( \INSTR|ROM|memROM~4_combout\ & ( \INSTR|ROM|memROM~5_combout\ & ( \MDADOS|ram~59_q\ ) ) ) # ( !\INSTR|ROM|memROM~4_combout\ & ( \INSTR|ROM|memROM~5_combout\ & ( \MDADOS|ram~51_q\ ) ) ) # ( \INSTR|ROM|memROM~4_combout\ & ( 
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
	combout => \MDADOS|ram~154_combout\);

\MDADOS|ram~155\ : cyclonev_lcell_comb
-- Equation(s):
-- \MDADOS|ram~155_combout\ = ( \INSTR|ROM|memROM~6_combout\ & ( !\INSTR|ROM|memROM~7_combout\ & ( \MDADOS|ram~154_combout\ ) ) ) # ( !\INSTR|ROM|memROM~6_combout\ & ( !\INSTR|ROM|memROM~7_combout\ & ( \MDADOS|ram~153_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MDADOS|ALT_INV_ram~153_combout\,
	datab => \MDADOS|ALT_INV_ram~154_combout\,
	datae => \INSTR|ROM|ALT_INV_memROM~6_combout\,
	dataf => \INSTR|ROM|ALT_INV_memROM~7_combout\,
	combout => \MDADOS|ram~155_combout\);

\ULA1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~9_sumout\ = SUM(( !\DECODER|Equal0~0_combout\ $ (((!\DECODER|SEL_MUX~0_combout\ & ((\MDADOS|ram~155_combout\))) # (\DECODER|SEL_MUX~0_combout\ & (\INSTR|ROM|memROM~6_combout\)))) ) + ( \REG_A|DOUT\(2) ) + ( \ULA1|Add0~6\ ))
-- \ULA1|Add0~10\ = CARRY(( !\DECODER|Equal0~0_combout\ $ (((!\DECODER|SEL_MUX~0_combout\ & ((\MDADOS|ram~155_combout\))) # (\DECODER|SEL_MUX~0_combout\ & (\INSTR|ROM|memROM~6_combout\)))) ) + ( \REG_A|DOUT\(2) ) + ( \ULA1|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001100100101100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER|ALT_INV_SEL_MUX~0_combout\,
	datab => \DECODER|ALT_INV_Equal0~0_combout\,
	datac => \INSTR|ROM|ALT_INV_memROM~6_combout\,
	datad => \MDADOS|ALT_INV_ram~155_combout\,
	dataf => \REG_A|ALT_INV_DOUT\(2),
	cin => \ULA1|Add0~6\,
	sumout => \ULA1|Add0~9_sumout\,
	cout => \ULA1|Add0~10\);

\ULA1|saida[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[2]~2_combout\ = ( \ULA1|Add0~9_sumout\ & ( (!\DECODER|OP_ULA[1]~0_combout\) # ((!\DECODER|SEL_MUX~0_combout\ & ((\MDADOS|ram~155_combout\))) # (\DECODER|SEL_MUX~0_combout\ & (\INSTR|ROM|memROM~6_combout\))) ) ) # ( !\ULA1|Add0~9_sumout\ & ( 
-- (\DECODER|OP_ULA[1]~0_combout\ & ((!\DECODER|SEL_MUX~0_combout\ & ((\MDADOS|ram~155_combout\))) # (\DECODER|SEL_MUX~0_combout\ & (\INSTR|ROM|memROM~6_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100001011111100011111101100000001000010111111000111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER|ALT_INV_SEL_MUX~0_combout\,
	datab => \INSTR|ROM|ALT_INV_memROM~6_combout\,
	datac => \DECODER|ALT_INV_OP_ULA[1]~0_combout\,
	datad => \MDADOS|ALT_INV_ram~155_combout\,
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
	ena => \MDADOS|ram~177_combout\,
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
	ena => \MDADOS|ram~181_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDADOS|ram~68_q\);

\MDADOS|ram~156\ : cyclonev_lcell_comb
-- Equation(s):
-- \MDADOS|ram~156_combout\ = ( \INSTR|ROM|memROM~6_combout\ & ( !\INSTR|ROM|memROM~7_combout\ & ( \MDADOS|ram~68_q\ ) ) ) # ( !\INSTR|ROM|memROM~6_combout\ & ( !\INSTR|ROM|memROM~7_combout\ & ( \MDADOS|ram~36_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MDADOS|ALT_INV_ram~36_q\,
	datab => \MDADOS|ALT_INV_ram~68_q\,
	datae => \INSTR|ROM|ALT_INV_memROM~6_combout\,
	dataf => \INSTR|ROM|ALT_INV_memROM~7_combout\,
	combout => \MDADOS|ram~156_combout\);

\MDADOS|ram~44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(3),
	ena => \MDADOS|ram~178_combout\,
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
	ena => \MDADOS|ram~182_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDADOS|ram~76_q\);

\MDADOS|ram~157\ : cyclonev_lcell_comb
-- Equation(s):
-- \MDADOS|ram~157_combout\ = ( \INSTR|ROM|memROM~6_combout\ & ( !\INSTR|ROM|memROM~7_combout\ & ( \MDADOS|ram~76_q\ ) ) ) # ( !\INSTR|ROM|memROM~6_combout\ & ( !\INSTR|ROM|memROM~7_combout\ & ( \MDADOS|ram~44_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MDADOS|ALT_INV_ram~44_q\,
	datab => \MDADOS|ALT_INV_ram~76_q\,
	datae => \INSTR|ROM|ALT_INV_memROM~6_combout\,
	dataf => \INSTR|ROM|ALT_INV_memROM~7_combout\,
	combout => \MDADOS|ram~157_combout\);

\MDADOS|ram~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(3),
	ena => \MDADOS|ram~179_combout\,
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
	ena => \MDADOS|ram~183_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDADOS|ram~52_q\);

\MDADOS|ram~158\ : cyclonev_lcell_comb
-- Equation(s):
-- \MDADOS|ram~158_combout\ = ( \INSTR|ROM|memROM~6_combout\ & ( !\INSTR|ROM|memROM~7_combout\ & ( \MDADOS|ram~52_q\ ) ) ) # ( !\INSTR|ROM|memROM~6_combout\ & ( !\INSTR|ROM|memROM~7_combout\ & ( \MDADOS|ram~20_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MDADOS|ALT_INV_ram~20_q\,
	datab => \MDADOS|ALT_INV_ram~52_q\,
	datae => \INSTR|ROM|ALT_INV_memROM~6_combout\,
	dataf => \INSTR|ROM|ALT_INV_memROM~7_combout\,
	combout => \MDADOS|ram~158_combout\);

\MDADOS|ram~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(3),
	ena => \MDADOS|ram~180_combout\,
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
	ena => \MDADOS|ram~184_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDADOS|ram~60_q\);

\MDADOS|ram~159\ : cyclonev_lcell_comb
-- Equation(s):
-- \MDADOS|ram~159_combout\ = ( \INSTR|ROM|memROM~6_combout\ & ( !\INSTR|ROM|memROM~7_combout\ & ( \MDADOS|ram~60_q\ ) ) ) # ( !\INSTR|ROM|memROM~6_combout\ & ( !\INSTR|ROM|memROM~7_combout\ & ( \MDADOS|ram~28_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MDADOS|ALT_INV_ram~28_q\,
	datab => \MDADOS|ALT_INV_ram~60_q\,
	datae => \INSTR|ROM|ALT_INV_memROM~6_combout\,
	dataf => \INSTR|ROM|ALT_INV_memROM~7_combout\,
	combout => \MDADOS|ram~159_combout\);

\MDADOS|ram~160\ : cyclonev_lcell_comb
-- Equation(s):
-- \MDADOS|ram~160_combout\ = ( \INSTR|ROM|memROM~4_combout\ & ( \INSTR|ROM|memROM~5_combout\ & ( \MDADOS|ram~159_combout\ ) ) ) # ( !\INSTR|ROM|memROM~4_combout\ & ( \INSTR|ROM|memROM~5_combout\ & ( \MDADOS|ram~158_combout\ ) ) ) # ( 
-- \INSTR|ROM|memROM~4_combout\ & ( !\INSTR|ROM|memROM~5_combout\ & ( \MDADOS|ram~157_combout\ ) ) ) # ( !\INSTR|ROM|memROM~4_combout\ & ( !\INSTR|ROM|memROM~5_combout\ & ( \MDADOS|ram~156_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MDADOS|ALT_INV_ram~156_combout\,
	datab => \MDADOS|ALT_INV_ram~157_combout\,
	datac => \MDADOS|ALT_INV_ram~158_combout\,
	datad => \MDADOS|ALT_INV_ram~159_combout\,
	datae => \INSTR|ROM|ALT_INV_memROM~4_combout\,
	dataf => \INSTR|ROM|ALT_INV_memROM~5_combout\,
	combout => \MDADOS|ram~160_combout\);

\ULA1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~13_sumout\ = SUM(( !\DECODER|Equal0~0_combout\ $ (((!\DECODER|SEL_MUX~0_combout\ & ((\MDADOS|ram~160_combout\))) # (\DECODER|SEL_MUX~0_combout\ & (\INSTR|ROM|memROM~7_combout\)))) ) + ( \REG_A|DOUT\(3) ) + ( \ULA1|Add0~10\ ))
-- \ULA1|Add0~14\ = CARRY(( !\DECODER|Equal0~0_combout\ $ (((!\DECODER|SEL_MUX~0_combout\ & ((\MDADOS|ram~160_combout\))) # (\DECODER|SEL_MUX~0_combout\ & (\INSTR|ROM|memROM~7_combout\)))) ) + ( \REG_A|DOUT\(3) ) + ( \ULA1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010100101100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER|ALT_INV_Equal0~0_combout\,
	datab => \DECODER|ALT_INV_SEL_MUX~0_combout\,
	datac => \INSTR|ROM|ALT_INV_memROM~7_combout\,
	datad => \MDADOS|ALT_INV_ram~160_combout\,
	dataf => \REG_A|ALT_INV_DOUT\(3),
	cin => \ULA1|Add0~10\,
	sumout => \ULA1|Add0~13_sumout\,
	cout => \ULA1|Add0~14\);

\ULA1|saida[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[3]~3_combout\ = ( \ULA1|Add0~13_sumout\ & ( (!\DECODER|OP_ULA[1]~0_combout\) # ((!\DECODER|SEL_MUX~0_combout\ & ((\MDADOS|ram~160_combout\))) # (\DECODER|SEL_MUX~0_combout\ & (\INSTR|ROM|memROM~7_combout\))) ) ) # ( !\ULA1|Add0~13_sumout\ & ( 
-- (\DECODER|OP_ULA[1]~0_combout\ & ((!\DECODER|SEL_MUX~0_combout\ & ((\MDADOS|ram~160_combout\))) # (\DECODER|SEL_MUX~0_combout\ & (\INSTR|ROM|memROM~7_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100001011111100011111101100000001000010111111000111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER|ALT_INV_SEL_MUX~0_combout\,
	datab => \INSTR|ROM|ALT_INV_memROM~7_combout\,
	datac => \DECODER|ALT_INV_OP_ULA[1]~0_combout\,
	datad => \MDADOS|ALT_INV_ram~160_combout\,
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
	ena => \MDADOS|ram~177_combout\,
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
	ena => \MDADOS|ram~178_combout\,
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
	ena => \MDADOS|ram~179_combout\,
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
	ena => \MDADOS|ram~180_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDADOS|ram~29_q\);

\MDADOS|ram~161\ : cyclonev_lcell_comb
-- Equation(s):
-- \MDADOS|ram~161_combout\ = ( \INSTR|ROM|memROM~4_combout\ & ( \INSTR|ROM|memROM~5_combout\ & ( \MDADOS|ram~29_q\ ) ) ) # ( !\INSTR|ROM|memROM~4_combout\ & ( \INSTR|ROM|memROM~5_combout\ & ( \MDADOS|ram~21_q\ ) ) ) # ( \INSTR|ROM|memROM~4_combout\ & ( 
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
	combout => \MDADOS|ram~161_combout\);

\MDADOS|ram~69\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(4),
	ena => \MDADOS|ram~181_combout\,
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
	ena => \MDADOS|ram~182_combout\,
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
	ena => \MDADOS|ram~183_combout\,
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
	ena => \MDADOS|ram~184_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDADOS|ram~61_q\);

\MDADOS|ram~162\ : cyclonev_lcell_comb
-- Equation(s):
-- \MDADOS|ram~162_combout\ = ( \INSTR|ROM|memROM~4_combout\ & ( \INSTR|ROM|memROM~5_combout\ & ( \MDADOS|ram~61_q\ ) ) ) # ( !\INSTR|ROM|memROM~4_combout\ & ( \INSTR|ROM|memROM~5_combout\ & ( \MDADOS|ram~53_q\ ) ) ) # ( \INSTR|ROM|memROM~4_combout\ & ( 
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
	combout => \MDADOS|ram~162_combout\);

\MDADOS|ram~163\ : cyclonev_lcell_comb
-- Equation(s):
-- \MDADOS|ram~163_combout\ = ( \INSTR|ROM|memROM~6_combout\ & ( !\INSTR|ROM|memROM~7_combout\ & ( \MDADOS|ram~162_combout\ ) ) ) # ( !\INSTR|ROM|memROM~6_combout\ & ( !\INSTR|ROM|memROM~7_combout\ & ( \MDADOS|ram~161_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MDADOS|ALT_INV_ram~161_combout\,
	datab => \MDADOS|ALT_INV_ram~162_combout\,
	datae => \INSTR|ROM|ALT_INV_memROM~6_combout\,
	dataf => \INSTR|ROM|ALT_INV_memROM~7_combout\,
	combout => \MDADOS|ram~163_combout\);

\ULA1|saida[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[4]~4_combout\ = (!\INSTR|ROM|memROM~0_combout\ & (\INSTR|ROM|memROM~1_combout\ & (\INSTR|ROM|memROM~2_combout\ & !\INSTR|ROM|memROM~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000000000100000000000000010000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR|ROM|ALT_INV_memROM~0_combout\,
	datab => \INSTR|ROM|ALT_INV_memROM~1_combout\,
	datac => \INSTR|ROM|ALT_INV_memROM~2_combout\,
	datad => \INSTR|ROM|ALT_INV_memROM~3_combout\,
	combout => \ULA1|saida[4]~4_combout\);

\ULA1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~17_sumout\ = SUM(( !\DECODER|Equal0~0_combout\ $ (((!\DECODER|SEL_MUX~0_combout\ & \MDADOS|ram~163_combout\))) ) + ( \REG_A|DOUT\(4) ) + ( \ULA1|Add0~14\ ))
-- \ULA1|Add0~18\ = CARRY(( !\DECODER|Equal0~0_combout\ $ (((!\DECODER|SEL_MUX~0_combout\ & \MDADOS|ram~163_combout\))) ) + ( \REG_A|DOUT\(4) ) + ( \ULA1|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER|ALT_INV_Equal0~0_combout\,
	datab => \DECODER|ALT_INV_SEL_MUX~0_combout\,
	datad => \MDADOS|ALT_INV_ram~163_combout\,
	dataf => \REG_A|ALT_INV_DOUT\(4),
	cin => \ULA1|Add0~14\,
	sumout => \ULA1|Add0~17_sumout\,
	cout => \ULA1|Add0~18\);

\ULA1|saida[4]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[4]~5_combout\ = (!\MDADOS|ram~163_combout\ & (((\ULA1|Add0~17_sumout\ & !\DECODER|OP_ULA[1]~0_combout\)))) # (\MDADOS|ram~163_combout\ & (((\ULA1|Add0~17_sumout\ & !\DECODER|OP_ULA[1]~0_combout\)) # (\ULA1|saida[4]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111100010001000111110001000100011111000100010001111100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MDADOS|ALT_INV_ram~163_combout\,
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
	ena => \MDADOS|ram~177_combout\,
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
	ena => \MDADOS|ram~181_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDADOS|ram~70_q\);

\MDADOS|ram~164\ : cyclonev_lcell_comb
-- Equation(s):
-- \MDADOS|ram~164_combout\ = ( \INSTR|ROM|memROM~6_combout\ & ( !\INSTR|ROM|memROM~7_combout\ & ( \MDADOS|ram~70_q\ ) ) ) # ( !\INSTR|ROM|memROM~6_combout\ & ( !\INSTR|ROM|memROM~7_combout\ & ( \MDADOS|ram~38_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MDADOS|ALT_INV_ram~38_q\,
	datab => \MDADOS|ALT_INV_ram~70_q\,
	datae => \INSTR|ROM|ALT_INV_memROM~6_combout\,
	dataf => \INSTR|ROM|ALT_INV_memROM~7_combout\,
	combout => \MDADOS|ram~164_combout\);

\MDADOS|ram~46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(5),
	ena => \MDADOS|ram~178_combout\,
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
	ena => \MDADOS|ram~182_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDADOS|ram~78_q\);

\MDADOS|ram~165\ : cyclonev_lcell_comb
-- Equation(s):
-- \MDADOS|ram~165_combout\ = ( \INSTR|ROM|memROM~6_combout\ & ( !\INSTR|ROM|memROM~7_combout\ & ( \MDADOS|ram~78_q\ ) ) ) # ( !\INSTR|ROM|memROM~6_combout\ & ( !\INSTR|ROM|memROM~7_combout\ & ( \MDADOS|ram~46_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MDADOS|ALT_INV_ram~46_q\,
	datab => \MDADOS|ALT_INV_ram~78_q\,
	datae => \INSTR|ROM|ALT_INV_memROM~6_combout\,
	dataf => \INSTR|ROM|ALT_INV_memROM~7_combout\,
	combout => \MDADOS|ram~165_combout\);

\MDADOS|ram~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(5),
	ena => \MDADOS|ram~179_combout\,
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
	ena => \MDADOS|ram~183_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDADOS|ram~54_q\);

\MDADOS|ram~166\ : cyclonev_lcell_comb
-- Equation(s):
-- \MDADOS|ram~166_combout\ = ( \INSTR|ROM|memROM~6_combout\ & ( !\INSTR|ROM|memROM~7_combout\ & ( \MDADOS|ram~54_q\ ) ) ) # ( !\INSTR|ROM|memROM~6_combout\ & ( !\INSTR|ROM|memROM~7_combout\ & ( \MDADOS|ram~22_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MDADOS|ALT_INV_ram~22_q\,
	datab => \MDADOS|ALT_INV_ram~54_q\,
	datae => \INSTR|ROM|ALT_INV_memROM~6_combout\,
	dataf => \INSTR|ROM|ALT_INV_memROM~7_combout\,
	combout => \MDADOS|ram~166_combout\);

\MDADOS|ram~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(5),
	ena => \MDADOS|ram~180_combout\,
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
	ena => \MDADOS|ram~184_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDADOS|ram~62_q\);

\MDADOS|ram~167\ : cyclonev_lcell_comb
-- Equation(s):
-- \MDADOS|ram~167_combout\ = ( \INSTR|ROM|memROM~6_combout\ & ( !\INSTR|ROM|memROM~7_combout\ & ( \MDADOS|ram~62_q\ ) ) ) # ( !\INSTR|ROM|memROM~6_combout\ & ( !\INSTR|ROM|memROM~7_combout\ & ( \MDADOS|ram~30_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MDADOS|ALT_INV_ram~30_q\,
	datab => \MDADOS|ALT_INV_ram~62_q\,
	datae => \INSTR|ROM|ALT_INV_memROM~6_combout\,
	dataf => \INSTR|ROM|ALT_INV_memROM~7_combout\,
	combout => \MDADOS|ram~167_combout\);

\MDADOS|ram~168\ : cyclonev_lcell_comb
-- Equation(s):
-- \MDADOS|ram~168_combout\ = ( \INSTR|ROM|memROM~4_combout\ & ( \INSTR|ROM|memROM~5_combout\ & ( \MDADOS|ram~167_combout\ ) ) ) # ( !\INSTR|ROM|memROM~4_combout\ & ( \INSTR|ROM|memROM~5_combout\ & ( \MDADOS|ram~166_combout\ ) ) ) # ( 
-- \INSTR|ROM|memROM~4_combout\ & ( !\INSTR|ROM|memROM~5_combout\ & ( \MDADOS|ram~165_combout\ ) ) ) # ( !\INSTR|ROM|memROM~4_combout\ & ( !\INSTR|ROM|memROM~5_combout\ & ( \MDADOS|ram~164_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MDADOS|ALT_INV_ram~164_combout\,
	datab => \MDADOS|ALT_INV_ram~165_combout\,
	datac => \MDADOS|ALT_INV_ram~166_combout\,
	datad => \MDADOS|ALT_INV_ram~167_combout\,
	datae => \INSTR|ROM|ALT_INV_memROM~4_combout\,
	dataf => \INSTR|ROM|ALT_INV_memROM~5_combout\,
	combout => \MDADOS|ram~168_combout\);

\DECODER|OP_ULA[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER|OP_ULA[0]~1_combout\ = (\INSTR|ROM|memROM~1_combout\ & ((\INSTR|ROM|memROM~3_combout\) # (\INSTR|ROM|memROM~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001100010011000100110001001100010011000100110001001100010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR|ROM|ALT_INV_memROM~0_combout\,
	datab => \INSTR|ROM|ALT_INV_memROM~1_combout\,
	datac => \INSTR|ROM|ALT_INV_memROM~3_combout\,
	combout => \DECODER|OP_ULA[0]~1_combout\);

\ULA1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~21_sumout\ = SUM(( !\DECODER|Equal0~0_combout\ $ (((\MDADOS|ram~168_combout\ & ((!\DECODER|SEL_MUX~0_combout\) # (!\DECODER|OP_ULA[0]~1_combout\))))) ) + ( \REG_A|DOUT\(5) ) + ( \ULA1|Add0~18\ ))
-- \ULA1|Add0~22\ = CARRY(( !\DECODER|Equal0~0_combout\ $ (((\MDADOS|ram~168_combout\ & ((!\DECODER|SEL_MUX~0_combout\) # (!\DECODER|OP_ULA[0]~1_combout\))))) ) + ( \REG_A|DOUT\(5) ) + ( \ULA1|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010010110100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER|ALT_INV_Equal0~0_combout\,
	datab => \DECODER|ALT_INV_SEL_MUX~0_combout\,
	datac => \MDADOS|ALT_INV_ram~168_combout\,
	datad => \DECODER|ALT_INV_OP_ULA[0]~1_combout\,
	dataf => \REG_A|ALT_INV_DOUT\(5),
	cin => \ULA1|Add0~18\,
	sumout => \ULA1|Add0~21_sumout\,
	cout => \ULA1|Add0~22\);

\ULA1|saida[5]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[5]~6_combout\ = (!\ULA1|saida[4]~4_combout\ & (!\DECODER|OP_ULA[1]~0_combout\ & ((\ULA1|Add0~21_sumout\)))) # (\ULA1|saida[4]~4_combout\ & (((!\DECODER|OP_ULA[1]~0_combout\ & \ULA1|Add0~21_sumout\)) # (\MDADOS|ram~168_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111001101000001011100110100000101110011010000010111001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_saida[4]~4_combout\,
	datab => \DECODER|ALT_INV_OP_ULA[1]~0_combout\,
	datac => \MDADOS|ALT_INV_ram~168_combout\,
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
	ena => \MDADOS|ram~177_combout\,
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
	ena => \MDADOS|ram~178_combout\,
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
	ena => \MDADOS|ram~179_combout\,
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
	ena => \MDADOS|ram~180_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDADOS|ram~31_q\);

\MDADOS|ram~169\ : cyclonev_lcell_comb
-- Equation(s):
-- \MDADOS|ram~169_combout\ = ( \INSTR|ROM|memROM~4_combout\ & ( \INSTR|ROM|memROM~5_combout\ & ( \MDADOS|ram~31_q\ ) ) ) # ( !\INSTR|ROM|memROM~4_combout\ & ( \INSTR|ROM|memROM~5_combout\ & ( \MDADOS|ram~23_q\ ) ) ) # ( \INSTR|ROM|memROM~4_combout\ & ( 
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
	combout => \MDADOS|ram~169_combout\);

\MDADOS|ram~71\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(6),
	ena => \MDADOS|ram~181_combout\,
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
	ena => \MDADOS|ram~182_combout\,
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
	ena => \MDADOS|ram~183_combout\,
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
	ena => \MDADOS|ram~184_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDADOS|ram~63_q\);

\MDADOS|ram~170\ : cyclonev_lcell_comb
-- Equation(s):
-- \MDADOS|ram~170_combout\ = ( \INSTR|ROM|memROM~4_combout\ & ( \INSTR|ROM|memROM~5_combout\ & ( \MDADOS|ram~63_q\ ) ) ) # ( !\INSTR|ROM|memROM~4_combout\ & ( \INSTR|ROM|memROM~5_combout\ & ( \MDADOS|ram~55_q\ ) ) ) # ( \INSTR|ROM|memROM~4_combout\ & ( 
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
	combout => \MDADOS|ram~170_combout\);

\MDADOS|ram~171\ : cyclonev_lcell_comb
-- Equation(s):
-- \MDADOS|ram~171_combout\ = ( \INSTR|ROM|memROM~6_combout\ & ( !\INSTR|ROM|memROM~7_combout\ & ( \MDADOS|ram~170_combout\ ) ) ) # ( !\INSTR|ROM|memROM~6_combout\ & ( !\INSTR|ROM|memROM~7_combout\ & ( \MDADOS|ram~169_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MDADOS|ALT_INV_ram~169_combout\,
	datab => \MDADOS|ALT_INV_ram~170_combout\,
	datae => \INSTR|ROM|ALT_INV_memROM~6_combout\,
	dataf => \INSTR|ROM|ALT_INV_memROM~7_combout\,
	combout => \MDADOS|ram~171_combout\);

\ULA1|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~25_sumout\ = SUM(( !\DECODER|Equal0~0_combout\ $ (((\MDADOS|ram~171_combout\ & ((!\DECODER|SEL_MUX~0_combout\) # (!\DECODER|OP_ULA[0]~1_combout\))))) ) + ( \REG_A|DOUT\(6) ) + ( \ULA1|Add0~22\ ))
-- \ULA1|Add0~26\ = CARRY(( !\DECODER|Equal0~0_combout\ $ (((\MDADOS|ram~171_combout\ & ((!\DECODER|SEL_MUX~0_combout\) # (!\DECODER|OP_ULA[0]~1_combout\))))) ) + ( \REG_A|DOUT\(6) ) + ( \ULA1|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010010110100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER|ALT_INV_Equal0~0_combout\,
	datab => \DECODER|ALT_INV_SEL_MUX~0_combout\,
	datac => \MDADOS|ALT_INV_ram~171_combout\,
	datad => \DECODER|ALT_INV_OP_ULA[0]~1_combout\,
	dataf => \REG_A|ALT_INV_DOUT\(6),
	cin => \ULA1|Add0~22\,
	sumout => \ULA1|Add0~25_sumout\,
	cout => \ULA1|Add0~26\);

\ULA1|saida[6]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[6]~7_combout\ = (!\ULA1|saida[4]~4_combout\ & (!\DECODER|OP_ULA[1]~0_combout\ & ((\ULA1|Add0~25_sumout\)))) # (\ULA1|saida[4]~4_combout\ & (((!\DECODER|OP_ULA[1]~0_combout\ & \ULA1|Add0~25_sumout\)) # (\MDADOS|ram~171_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111001101000001011100110100000101110011010000010111001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_saida[4]~4_combout\,
	datab => \DECODER|ALT_INV_OP_ULA[1]~0_combout\,
	datac => \MDADOS|ALT_INV_ram~171_combout\,
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
	ena => \MDADOS|ram~177_combout\,
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
	ena => \MDADOS|ram~181_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDADOS|ram~72_q\);

\MDADOS|ram~172\ : cyclonev_lcell_comb
-- Equation(s):
-- \MDADOS|ram~172_combout\ = ( \INSTR|ROM|memROM~6_combout\ & ( !\INSTR|ROM|memROM~7_combout\ & ( \MDADOS|ram~72_q\ ) ) ) # ( !\INSTR|ROM|memROM~6_combout\ & ( !\INSTR|ROM|memROM~7_combout\ & ( \MDADOS|ram~40_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MDADOS|ALT_INV_ram~40_q\,
	datab => \MDADOS|ALT_INV_ram~72_q\,
	datae => \INSTR|ROM|ALT_INV_memROM~6_combout\,
	dataf => \INSTR|ROM|ALT_INV_memROM~7_combout\,
	combout => \MDADOS|ram~172_combout\);

\MDADOS|ram~48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(7),
	ena => \MDADOS|ram~178_combout\,
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
	ena => \MDADOS|ram~182_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDADOS|ram~80_q\);

\MDADOS|ram~173\ : cyclonev_lcell_comb
-- Equation(s):
-- \MDADOS|ram~173_combout\ = ( \INSTR|ROM|memROM~6_combout\ & ( !\INSTR|ROM|memROM~7_combout\ & ( \MDADOS|ram~80_q\ ) ) ) # ( !\INSTR|ROM|memROM~6_combout\ & ( !\INSTR|ROM|memROM~7_combout\ & ( \MDADOS|ram~48_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MDADOS|ALT_INV_ram~48_q\,
	datab => \MDADOS|ALT_INV_ram~80_q\,
	datae => \INSTR|ROM|ALT_INV_memROM~6_combout\,
	dataf => \INSTR|ROM|ALT_INV_memROM~7_combout\,
	combout => \MDADOS|ram~173_combout\);

\MDADOS|ram~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(7),
	ena => \MDADOS|ram~179_combout\,
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
	ena => \MDADOS|ram~183_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDADOS|ram~56_q\);

\MDADOS|ram~174\ : cyclonev_lcell_comb
-- Equation(s):
-- \MDADOS|ram~174_combout\ = ( \INSTR|ROM|memROM~6_combout\ & ( !\INSTR|ROM|memROM~7_combout\ & ( \MDADOS|ram~56_q\ ) ) ) # ( !\INSTR|ROM|memROM~6_combout\ & ( !\INSTR|ROM|memROM~7_combout\ & ( \MDADOS|ram~24_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MDADOS|ALT_INV_ram~24_q\,
	datab => \MDADOS|ALT_INV_ram~56_q\,
	datae => \INSTR|ROM|ALT_INV_memROM~6_combout\,
	dataf => \INSTR|ROM|ALT_INV_memROM~7_combout\,
	combout => \MDADOS|ram~174_combout\);

\MDADOS|ram~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(7),
	ena => \MDADOS|ram~180_combout\,
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
	ena => \MDADOS|ram~184_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDADOS|ram~64_q\);

\MDADOS|ram~175\ : cyclonev_lcell_comb
-- Equation(s):
-- \MDADOS|ram~175_combout\ = ( \INSTR|ROM|memROM~6_combout\ & ( !\INSTR|ROM|memROM~7_combout\ & ( \MDADOS|ram~64_q\ ) ) ) # ( !\INSTR|ROM|memROM~6_combout\ & ( !\INSTR|ROM|memROM~7_combout\ & ( \MDADOS|ram~32_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MDADOS|ALT_INV_ram~32_q\,
	datab => \MDADOS|ALT_INV_ram~64_q\,
	datae => \INSTR|ROM|ALT_INV_memROM~6_combout\,
	dataf => \INSTR|ROM|ALT_INV_memROM~7_combout\,
	combout => \MDADOS|ram~175_combout\);

\MDADOS|ram~176\ : cyclonev_lcell_comb
-- Equation(s):
-- \MDADOS|ram~176_combout\ = ( \INSTR|ROM|memROM~4_combout\ & ( \INSTR|ROM|memROM~5_combout\ & ( \MDADOS|ram~175_combout\ ) ) ) # ( !\INSTR|ROM|memROM~4_combout\ & ( \INSTR|ROM|memROM~5_combout\ & ( \MDADOS|ram~174_combout\ ) ) ) # ( 
-- \INSTR|ROM|memROM~4_combout\ & ( !\INSTR|ROM|memROM~5_combout\ & ( \MDADOS|ram~173_combout\ ) ) ) # ( !\INSTR|ROM|memROM~4_combout\ & ( !\INSTR|ROM|memROM~5_combout\ & ( \MDADOS|ram~172_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MDADOS|ALT_INV_ram~172_combout\,
	datab => \MDADOS|ALT_INV_ram~173_combout\,
	datac => \MDADOS|ALT_INV_ram~174_combout\,
	datad => \MDADOS|ALT_INV_ram~175_combout\,
	datae => \INSTR|ROM|ALT_INV_memROM~4_combout\,
	dataf => \INSTR|ROM|ALT_INV_memROM~5_combout\,
	combout => \MDADOS|ram~176_combout\);

\ULA1|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~29_sumout\ = SUM(( !\DECODER|Equal0~0_combout\ $ (((\MDADOS|ram~176_combout\ & ((!\DECODER|SEL_MUX~0_combout\) # (!\DECODER|OP_ULA[0]~1_combout\))))) ) + ( \REG_A|DOUT\(7) ) + ( \ULA1|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER|ALT_INV_Equal0~0_combout\,
	datab => \DECODER|ALT_INV_SEL_MUX~0_combout\,
	datac => \DECODER|ALT_INV_OP_ULA[0]~1_combout\,
	datad => \MDADOS|ALT_INV_ram~176_combout\,
	dataf => \REG_A|ALT_INV_DOUT\(7),
	cin => \ULA1|Add0~26\,
	sumout => \ULA1|Add0~29_sumout\);

\ULA1|saida[7]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[7]~8_combout\ = (!\ULA1|saida[4]~4_combout\ & (!\DECODER|OP_ULA[1]~0_combout\ & ((\ULA1|Add0~29_sumout\)))) # (\ULA1|saida[4]~4_combout\ & (((!\DECODER|OP_ULA[1]~0_combout\ & \ULA1|Add0~29_sumout\)) # (\MDADOS|ram~176_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111001101000001011100110100000101110011010000010111001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_saida[4]~4_combout\,
	datab => \DECODER|ALT_INV_OP_ULA[1]~0_combout\,
	datac => \MDADOS|ALT_INV_ram~176_combout\,
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

ww_SAIDA(0) <= \SAIDA[0]~output_o\;

ww_SAIDA(1) <= \SAIDA[1]~output_o\;

ww_SAIDA(2) <= \SAIDA[2]~output_o\;

ww_SAIDA(3) <= \SAIDA[3]~output_o\;

ww_SAIDA(4) <= \SAIDA[4]~output_o\;

ww_SAIDA(5) <= \SAIDA[5]~output_o\;

ww_SAIDA(6) <= \SAIDA[6]~output_o\;

ww_SAIDA(7) <= \SAIDA[7]~output_o\;
END structure;


