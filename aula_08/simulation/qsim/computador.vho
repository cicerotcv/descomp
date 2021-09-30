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

-- DATE "09/29/2021 21:05:02"

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
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \LEDR[4]~output_o\ : std_logic;
SIGNAL \LEDR[5]~output_o\ : std_logic;
SIGNAL \LEDR[6]~output_o\ : std_logic;
SIGNAL \LEDR[7]~output_o\ : std_logic;
SIGNAL \LEDR[8]~output_o\ : std_logic;
SIGNAL \LEDR[9]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \ROM|memROM~12_combout\ : std_logic;
SIGNAL \ROM|memROM~1_combout\ : std_logic;
SIGNAL \ROM|memROM~19_combout\ : std_logic;
SIGNAL \ROM|memROM~2_combout\ : std_logic;
SIGNAL \ROM|memROM~21_combout\ : std_logic;
SIGNAL \ROM|memROM~3_combout\ : std_logic;
SIGNAL \ROM|memROM~22_combout\ : std_logic;
SIGNAL \ROM|memROM~4_combout\ : std_logic;
SIGNAL \ROM|memROM~20_combout\ : std_logic;
SIGNAL \CPU|DECODER|sinais_controle~0_combout\ : std_logic;
SIGNAL \CPU|DECODER|HAB_A~0_combout\ : std_logic;
SIGNAL \CPU|DECODER|OP_ULA[0]~2_combout\ : std_logic;
SIGNAL \CPU|DECODER|ENABLE_READ~0_combout\ : std_logic;
SIGNAL \ROM|memROM~8_combout\ : std_logic;
SIGNAL \ROM|memROM~9_combout\ : std_logic;
SIGNAL \ENABLE_SWR~0_combout\ : std_logic;
SIGNAL \ENABLE_SWR~2_combout\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \CPU|DECODER|SEL_MUX~0_combout\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \ROM|memROM~15_combout\ : std_logic;
SIGNAL \ROM|memROM~24_combout\ : std_logic;
SIGNAL \ROM|memROM~10_combout\ : std_logic;
SIGNAL \ROM|memROM~23_combout\ : std_logic;
SIGNAL \RAM|ram~695_combout\ : std_logic;
SIGNAL \CPU|DECODER|Equal5~0_combout\ : std_logic;
SIGNAL \RAM|process_0~0_combout\ : std_logic;
SIGNAL \RAM|ram~696_combout\ : std_logic;
SIGNAL \RAM|ram~15_q\ : std_logic;
SIGNAL \RAM|ram~697_combout\ : std_logic;
SIGNAL \RAM|ram~698_combout\ : std_logic;
SIGNAL \RAM|ram~271_q\ : std_logic;
SIGNAL \RAM|ram~699_combout\ : std_logic;
SIGNAL \RAM|ram~700_combout\ : std_logic;
SIGNAL \RAM|ram~143_q\ : std_logic;
SIGNAL \RAM|ram~701_combout\ : std_logic;
SIGNAL \RAM|ram~702_combout\ : std_logic;
SIGNAL \RAM|ram~399_q\ : std_logic;
SIGNAL \RAM|ram~527_combout\ : std_logic;
SIGNAL \RAM|ram~703_combout\ : std_logic;
SIGNAL \RAM|ram~704_combout\ : std_logic;
SIGNAL \RAM|ram~47_q\ : std_logic;
SIGNAL \RAM|ram~705_combout\ : std_logic;
SIGNAL \RAM|ram~706_combout\ : std_logic;
SIGNAL \RAM|ram~303_q\ : std_logic;
SIGNAL \RAM|ram~707_combout\ : std_logic;
SIGNAL \RAM|ram~708_combout\ : std_logic;
SIGNAL \RAM|ram~175_q\ : std_logic;
SIGNAL \RAM|ram~709_combout\ : std_logic;
SIGNAL \RAM|ram~710_combout\ : std_logic;
SIGNAL \RAM|ram~431_q\ : std_logic;
SIGNAL \RAM|ram~528_combout\ : std_logic;
SIGNAL \RAM|ram~711_combout\ : std_logic;
SIGNAL \RAM|ram~712_combout\ : std_logic;
SIGNAL \RAM|ram~79_q\ : std_logic;
SIGNAL \RAM|ram~713_combout\ : std_logic;
SIGNAL \RAM|ram~714_combout\ : std_logic;
SIGNAL \RAM|ram~335_q\ : std_logic;
SIGNAL \RAM|ram~715_combout\ : std_logic;
SIGNAL \RAM|ram~716_combout\ : std_logic;
SIGNAL \RAM|ram~207_q\ : std_logic;
SIGNAL \RAM|ram~717_combout\ : std_logic;
SIGNAL \RAM|ram~718_combout\ : std_logic;
SIGNAL \RAM|ram~463_q\ : std_logic;
SIGNAL \RAM|ram~529_combout\ : std_logic;
SIGNAL \RAM|ram~719_combout\ : std_logic;
SIGNAL \RAM|ram~720_combout\ : std_logic;
SIGNAL \RAM|ram~111_q\ : std_logic;
SIGNAL \RAM|ram~721_combout\ : std_logic;
SIGNAL \RAM|ram~722_combout\ : std_logic;
SIGNAL \RAM|ram~367_q\ : std_logic;
SIGNAL \RAM|ram~723_combout\ : std_logic;
SIGNAL \RAM|ram~724_combout\ : std_logic;
SIGNAL \RAM|ram~239_q\ : std_logic;
SIGNAL \RAM|ram~725_combout\ : std_logic;
SIGNAL \RAM|ram~726_combout\ : std_logic;
SIGNAL \RAM|ram~495_q\ : std_logic;
SIGNAL \RAM|ram~530_combout\ : std_logic;
SIGNAL \RAM|ram~531_combout\ : std_logic;
SIGNAL \RAM|ram~727_combout\ : std_logic;
SIGNAL \RAM|ram~728_combout\ : std_logic;
SIGNAL \RAM|ram~23_q\ : std_logic;
SIGNAL \RAM|ram~729_combout\ : std_logic;
SIGNAL \RAM|ram~730_combout\ : std_logic;
SIGNAL \RAM|ram~279_q\ : std_logic;
SIGNAL \RAM|ram~731_combout\ : std_logic;
SIGNAL \RAM|ram~732_combout\ : std_logic;
SIGNAL \RAM|ram~151_q\ : std_logic;
SIGNAL \RAM|ram~733_combout\ : std_logic;
SIGNAL \RAM|ram~734_combout\ : std_logic;
SIGNAL \RAM|ram~407_q\ : std_logic;
SIGNAL \RAM|ram~532_combout\ : std_logic;
SIGNAL \RAM|ram~735_combout\ : std_logic;
SIGNAL \RAM|ram~736_combout\ : std_logic;
SIGNAL \RAM|ram~55_q\ : std_logic;
SIGNAL \RAM|ram~737_combout\ : std_logic;
SIGNAL \RAM|ram~738_combout\ : std_logic;
SIGNAL \RAM|ram~311_q\ : std_logic;
SIGNAL \RAM|ram~739_combout\ : std_logic;
SIGNAL \RAM|ram~740_combout\ : std_logic;
SIGNAL \RAM|ram~183_q\ : std_logic;
SIGNAL \RAM|ram~741_combout\ : std_logic;
SIGNAL \RAM|ram~742_combout\ : std_logic;
SIGNAL \RAM|ram~439_q\ : std_logic;
SIGNAL \RAM|ram~533_combout\ : std_logic;
SIGNAL \RAM|ram~743_combout\ : std_logic;
SIGNAL \RAM|ram~744_combout\ : std_logic;
SIGNAL \RAM|ram~87_q\ : std_logic;
SIGNAL \RAM|ram~745_combout\ : std_logic;
SIGNAL \RAM|ram~746_combout\ : std_logic;
SIGNAL \RAM|ram~343_q\ : std_logic;
SIGNAL \RAM|ram~747_combout\ : std_logic;
SIGNAL \RAM|ram~748_combout\ : std_logic;
SIGNAL \RAM|ram~215_q\ : std_logic;
SIGNAL \RAM|ram~749_combout\ : std_logic;
SIGNAL \RAM|ram~750_combout\ : std_logic;
SIGNAL \RAM|ram~471_q\ : std_logic;
SIGNAL \RAM|ram~534_combout\ : std_logic;
SIGNAL \RAM|ram~751_combout\ : std_logic;
SIGNAL \RAM|ram~752_combout\ : std_logic;
SIGNAL \RAM|ram~119_q\ : std_logic;
SIGNAL \RAM|ram~753_combout\ : std_logic;
SIGNAL \RAM|ram~754_combout\ : std_logic;
SIGNAL \RAM|ram~375_q\ : std_logic;
SIGNAL \RAM|ram~755_combout\ : std_logic;
SIGNAL \RAM|ram~756_combout\ : std_logic;
SIGNAL \RAM|ram~247_q\ : std_logic;
SIGNAL \RAM|ram~757_combout\ : std_logic;
SIGNAL \RAM|ram~758_combout\ : std_logic;
SIGNAL \RAM|ram~503_q\ : std_logic;
SIGNAL \RAM|ram~535_combout\ : std_logic;
SIGNAL \RAM|ram~536_combout\ : std_logic;
SIGNAL \RAM|ram~759_combout\ : std_logic;
SIGNAL \RAM|ram~760_combout\ : std_logic;
SIGNAL \RAM|ram~31_q\ : std_logic;
SIGNAL \RAM|ram~761_combout\ : std_logic;
SIGNAL \RAM|ram~762_combout\ : std_logic;
SIGNAL \RAM|ram~287_q\ : std_logic;
SIGNAL \RAM|ram~763_combout\ : std_logic;
SIGNAL \RAM|ram~764_combout\ : std_logic;
SIGNAL \RAM|ram~159_q\ : std_logic;
SIGNAL \RAM|ram~765_combout\ : std_logic;
SIGNAL \RAM|ram~766_combout\ : std_logic;
SIGNAL \RAM|ram~415_q\ : std_logic;
SIGNAL \RAM|ram~537_combout\ : std_logic;
SIGNAL \RAM|ram~767_combout\ : std_logic;
SIGNAL \RAM|ram~768_combout\ : std_logic;
SIGNAL \RAM|ram~63_q\ : std_logic;
SIGNAL \RAM|ram~769_combout\ : std_logic;
SIGNAL \RAM|ram~770_combout\ : std_logic;
SIGNAL \RAM|ram~319_q\ : std_logic;
SIGNAL \RAM|ram~771_combout\ : std_logic;
SIGNAL \RAM|ram~772_combout\ : std_logic;
SIGNAL \RAM|ram~191_q\ : std_logic;
SIGNAL \RAM|ram~773_combout\ : std_logic;
SIGNAL \RAM|ram~774_combout\ : std_logic;
SIGNAL \RAM|ram~447_q\ : std_logic;
SIGNAL \RAM|ram~538_combout\ : std_logic;
SIGNAL \RAM|ram~775_combout\ : std_logic;
SIGNAL \RAM|ram~776_combout\ : std_logic;
SIGNAL \RAM|ram~95_q\ : std_logic;
SIGNAL \RAM|ram~777_combout\ : std_logic;
SIGNAL \RAM|ram~778_combout\ : std_logic;
SIGNAL \RAM|ram~351_q\ : std_logic;
SIGNAL \RAM|ram~779_combout\ : std_logic;
SIGNAL \RAM|ram~780_combout\ : std_logic;
SIGNAL \RAM|ram~223_q\ : std_logic;
SIGNAL \RAM|ram~781_combout\ : std_logic;
SIGNAL \RAM|ram~782_combout\ : std_logic;
SIGNAL \RAM|ram~479_q\ : std_logic;
SIGNAL \RAM|ram~539_combout\ : std_logic;
SIGNAL \RAM|ram~783_combout\ : std_logic;
SIGNAL \RAM|ram~784_combout\ : std_logic;
SIGNAL \RAM|ram~127_q\ : std_logic;
SIGNAL \RAM|ram~785_combout\ : std_logic;
SIGNAL \RAM|ram~786_combout\ : std_logic;
SIGNAL \RAM|ram~383_q\ : std_logic;
SIGNAL \RAM|ram~787_combout\ : std_logic;
SIGNAL \RAM|ram~788_combout\ : std_logic;
SIGNAL \RAM|ram~255_q\ : std_logic;
SIGNAL \RAM|ram~789_combout\ : std_logic;
SIGNAL \RAM|ram~790_combout\ : std_logic;
SIGNAL \RAM|ram~511_q\ : std_logic;
SIGNAL \RAM|ram~540_combout\ : std_logic;
SIGNAL \RAM|ram~541_combout\ : std_logic;
SIGNAL \RAM|ram~791_combout\ : std_logic;
SIGNAL \RAM|ram~792_combout\ : std_logic;
SIGNAL \RAM|ram~39_q\ : std_logic;
SIGNAL \RAM|ram~793_combout\ : std_logic;
SIGNAL \RAM|ram~794_combout\ : std_logic;
SIGNAL \RAM|ram~295_q\ : std_logic;
SIGNAL \RAM|ram~795_combout\ : std_logic;
SIGNAL \RAM|ram~796_combout\ : std_logic;
SIGNAL \RAM|ram~103_q\ : std_logic;
SIGNAL \RAM|ram~797_combout\ : std_logic;
SIGNAL \RAM|ram~798_combout\ : std_logic;
SIGNAL \RAM|ram~359_q\ : std_logic;
SIGNAL \RAM|ram~542_combout\ : std_logic;
SIGNAL \RAM|ram~799_combout\ : std_logic;
SIGNAL \RAM|ram~800_combout\ : std_logic;
SIGNAL \RAM|ram~71_q\ : std_logic;
SIGNAL \RAM|ram~801_combout\ : std_logic;
SIGNAL \RAM|ram~802_combout\ : std_logic;
SIGNAL \RAM|ram~327_q\ : std_logic;
SIGNAL \RAM|ram~803_combout\ : std_logic;
SIGNAL \RAM|ram~804_combout\ : std_logic;
SIGNAL \RAM|ram~135_q\ : std_logic;
SIGNAL \RAM|ram~805_combout\ : std_logic;
SIGNAL \RAM|ram~806_combout\ : std_logic;
SIGNAL \RAM|ram~391_q\ : std_logic;
SIGNAL \RAM|ram~543_combout\ : std_logic;
SIGNAL \RAM|ram~807_combout\ : std_logic;
SIGNAL \RAM|ram~808_combout\ : std_logic;
SIGNAL \RAM|ram~167_q\ : std_logic;
SIGNAL \RAM|ram~809_combout\ : std_logic;
SIGNAL \RAM|ram~810_combout\ : std_logic;
SIGNAL \RAM|ram~423_q\ : std_logic;
SIGNAL \RAM|ram~811_combout\ : std_logic;
SIGNAL \RAM|ram~812_combout\ : std_logic;
SIGNAL \RAM|ram~231_q\ : std_logic;
SIGNAL \RAM|ram~813_combout\ : std_logic;
SIGNAL \RAM|ram~814_combout\ : std_logic;
SIGNAL \RAM|ram~487_q\ : std_logic;
SIGNAL \RAM|ram~544_combout\ : std_logic;
SIGNAL \RAM|ram~815_combout\ : std_logic;
SIGNAL \RAM|ram~816_combout\ : std_logic;
SIGNAL \RAM|ram~199_q\ : std_logic;
SIGNAL \RAM|ram~817_combout\ : std_logic;
SIGNAL \RAM|ram~818_combout\ : std_logic;
SIGNAL \RAM|ram~455_q\ : std_logic;
SIGNAL \RAM|ram~819_combout\ : std_logic;
SIGNAL \RAM|ram~820_combout\ : std_logic;
SIGNAL \RAM|ram~263_q\ : std_logic;
SIGNAL \RAM|ram~821_combout\ : std_logic;
SIGNAL \RAM|ram~822_combout\ : std_logic;
SIGNAL \RAM|ram~519_q\ : std_logic;
SIGNAL \RAM|ram~545_combout\ : std_logic;
SIGNAL \RAM|ram~546_combout\ : std_logic;
SIGNAL \RAM|ram~547_combout\ : std_logic;
SIGNAL \READ_BUS[0]~0_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \ENABLE_SWR~1_combout\ : std_logic;
SIGNAL \FPGA_RESET_N~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \detectorSub0|saidaQ~0_combout\ : std_logic;
SIGNAL \detectorSub0|saidaQ~q\ : std_logic;
SIGNAL \detectorSub0|saida~combout\ : std_logic;
SIGNAL \ADDR_511~0_combout\ : std_logic;
SIGNAL \ADDR_511~combout\ : std_logic;
SIGNAL \FF_DEBOUNCER|DOUT~q\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \READ_BUS[0]~2_combout\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \READ_BUS[0]~3_combout\ : std_logic;
SIGNAL \READ_BUS[0]~4_combout\ : std_logic;
SIGNAL \READ_BUS[0]~1_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~2\ : std_logic;
SIGNAL \CPU|ULA1|Add0~9_sumout\ : std_logic;
SIGNAL \CPU|DECODER|OP_ULA[1]~0_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~34_cout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~2\ : std_logic;
SIGNAL \CPU|ULA1|Add1~9_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[1]~2_combout\ : std_logic;
SIGNAL \CPU|DECODER|OP_ULA[0]~1_combout\ : std_logic;
SIGNAL \CPU|DECODER|HAB_A~1_combout\ : std_logic;
SIGNAL \RAM|ram~16_q\ : std_logic;
SIGNAL \RAM|ram~24_q\ : std_logic;
SIGNAL \RAM|ram~48_q\ : std_logic;
SIGNAL \RAM|ram~56_q\ : std_logic;
SIGNAL \RAM|ram~569_combout\ : std_logic;
SIGNAL \RAM|ram~32_q\ : std_logic;
SIGNAL \RAM|ram~40_q\ : std_logic;
SIGNAL \RAM|ram~64_q\ : std_logic;
SIGNAL \RAM|ram~72_q\ : std_logic;
SIGNAL \RAM|ram~570_combout\ : std_logic;
SIGNAL \RAM|ram~80_q\ : std_logic;
SIGNAL \RAM|ram~88_q\ : std_logic;
SIGNAL \RAM|ram~112_q\ : std_logic;
SIGNAL \RAM|ram~120_q\ : std_logic;
SIGNAL \RAM|ram~571_combout\ : std_logic;
SIGNAL \RAM|ram~96_q\ : std_logic;
SIGNAL \RAM|ram~104_q\ : std_logic;
SIGNAL \RAM|ram~128_q\ : std_logic;
SIGNAL \RAM|ram~136_q\ : std_logic;
SIGNAL \RAM|ram~572_combout\ : std_logic;
SIGNAL \RAM|ram~573_combout\ : std_logic;
SIGNAL \RAM|ram~272_q\ : std_logic;
SIGNAL \RAM|ram~288_q\ : std_logic;
SIGNAL \RAM|ram~336_q\ : std_logic;
SIGNAL \RAM|ram~352_q\ : std_logic;
SIGNAL \RAM|ram~574_combout\ : std_logic;
SIGNAL \RAM|ram~280_q\ : std_logic;
SIGNAL \RAM|ram~296_q\ : std_logic;
SIGNAL \RAM|ram~344_q\ : std_logic;
SIGNAL \RAM|ram~360_q\ : std_logic;
SIGNAL \RAM|ram~575_combout\ : std_logic;
SIGNAL \RAM|ram~304_q\ : std_logic;
SIGNAL \RAM|ram~320_q\ : std_logic;
SIGNAL \RAM|ram~368_q\ : std_logic;
SIGNAL \RAM|ram~384_q\ : std_logic;
SIGNAL \RAM|ram~576_combout\ : std_logic;
SIGNAL \RAM|ram~312_q\ : std_logic;
SIGNAL \RAM|ram~328_q\ : std_logic;
SIGNAL \RAM|ram~376_q\ : std_logic;
SIGNAL \RAM|ram~392_q\ : std_logic;
SIGNAL \RAM|ram~577_combout\ : std_logic;
SIGNAL \RAM|ram~578_combout\ : std_logic;
SIGNAL \RAM|ram~144_q\ : std_logic;
SIGNAL \RAM|ram~152_q\ : std_logic;
SIGNAL \RAM|ram~176_q\ : std_logic;
SIGNAL \RAM|ram~184_q\ : std_logic;
SIGNAL \RAM|ram~579_combout\ : std_logic;
SIGNAL \RAM|ram~160_q\ : std_logic;
SIGNAL \RAM|ram~168_q\ : std_logic;
SIGNAL \RAM|ram~192_q\ : std_logic;
SIGNAL \RAM|ram~200_q\ : std_logic;
SIGNAL \RAM|ram~580_combout\ : std_logic;
SIGNAL \RAM|ram~208_q\ : std_logic;
SIGNAL \RAM|ram~216_q\ : std_logic;
SIGNAL \RAM|ram~240_q\ : std_logic;
SIGNAL \RAM|ram~248_q\ : std_logic;
SIGNAL \RAM|ram~581_combout\ : std_logic;
SIGNAL \RAM|ram~224_q\ : std_logic;
SIGNAL \RAM|ram~232_q\ : std_logic;
SIGNAL \RAM|ram~256_q\ : std_logic;
SIGNAL \RAM|ram~264_q\ : std_logic;
SIGNAL \RAM|ram~582_combout\ : std_logic;
SIGNAL \RAM|ram~583_combout\ : std_logic;
SIGNAL \RAM|ram~400_q\ : std_logic;
SIGNAL \RAM|ram~408_q\ : std_logic;
SIGNAL \RAM|ram~432_q\ : std_logic;
SIGNAL \RAM|ram~440_q\ : std_logic;
SIGNAL \RAM|ram~584_combout\ : std_logic;
SIGNAL \RAM|ram~416_q\ : std_logic;
SIGNAL \RAM|ram~424_q\ : std_logic;
SIGNAL \RAM|ram~448_q\ : std_logic;
SIGNAL \RAM|ram~456_q\ : std_logic;
SIGNAL \RAM|ram~585_combout\ : std_logic;
SIGNAL \RAM|ram~464_q\ : std_logic;
SIGNAL \RAM|ram~472_q\ : std_logic;
SIGNAL \RAM|ram~496_q\ : std_logic;
SIGNAL \RAM|ram~504_q\ : std_logic;
SIGNAL \RAM|ram~586_combout\ : std_logic;
SIGNAL \RAM|ram~480_q\ : std_logic;
SIGNAL \RAM|ram~488_q\ : std_logic;
SIGNAL \RAM|ram~512_q\ : std_logic;
SIGNAL \RAM|ram~520_q\ : std_logic;
SIGNAL \RAM|ram~587_combout\ : std_logic;
SIGNAL \RAM|ram~588_combout\ : std_logic;
SIGNAL \RAM|ram~589_combout\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~10\ : std_logic;
SIGNAL \CPU|ULA1|Add0~13_sumout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~10\ : std_logic;
SIGNAL \CPU|ULA1|Add1~13_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[2]~3_combout\ : std_logic;
SIGNAL \RAM|ram~17_q\ : std_logic;
SIGNAL \RAM|ram~273_q\ : std_logic;
SIGNAL \RAM|ram~33_q\ : std_logic;
SIGNAL \RAM|ram~289_q\ : std_logic;
SIGNAL \RAM|ram~590_combout\ : std_logic;
SIGNAL \RAM|ram~145_q\ : std_logic;
SIGNAL \RAM|ram~401_q\ : std_logic;
SIGNAL \RAM|ram~161_q\ : std_logic;
SIGNAL \RAM|ram~417_q\ : std_logic;
SIGNAL \RAM|ram~591_combout\ : std_logic;
SIGNAL \RAM|ram~81_q\ : std_logic;
SIGNAL \RAM|ram~337_q\ : std_logic;
SIGNAL \RAM|ram~97_q\ : std_logic;
SIGNAL \RAM|ram~353_q\ : std_logic;
SIGNAL \RAM|ram~592_combout\ : std_logic;
SIGNAL \RAM|ram~209_q\ : std_logic;
SIGNAL \RAM|ram~465_q\ : std_logic;
SIGNAL \RAM|ram~225_q\ : std_logic;
SIGNAL \RAM|ram~481_q\ : std_logic;
SIGNAL \RAM|ram~593_combout\ : std_logic;
SIGNAL \RAM|ram~594_combout\ : std_logic;
SIGNAL \RAM|ram~49_q\ : std_logic;
SIGNAL \RAM|ram~305_q\ : std_logic;
SIGNAL \RAM|ram~65_q\ : std_logic;
SIGNAL \RAM|ram~321_q\ : std_logic;
SIGNAL \RAM|ram~595_combout\ : std_logic;
SIGNAL \RAM|ram~177_q\ : std_logic;
SIGNAL \RAM|ram~433_q\ : std_logic;
SIGNAL \RAM|ram~193_q\ : std_logic;
SIGNAL \RAM|ram~449_q\ : std_logic;
SIGNAL \RAM|ram~596_combout\ : std_logic;
SIGNAL \RAM|ram~113_q\ : std_logic;
SIGNAL \RAM|ram~369_q\ : std_logic;
SIGNAL \RAM|ram~129_q\ : std_logic;
SIGNAL \RAM|ram~385_q\ : std_logic;
SIGNAL \RAM|ram~597_combout\ : std_logic;
SIGNAL \RAM|ram~241_q\ : std_logic;
SIGNAL \RAM|ram~497_q\ : std_logic;
SIGNAL \RAM|ram~257_q\ : std_logic;
SIGNAL \RAM|ram~513_q\ : std_logic;
SIGNAL \RAM|ram~598_combout\ : std_logic;
SIGNAL \RAM|ram~599_combout\ : std_logic;
SIGNAL \RAM|ram~25_q\ : std_logic;
SIGNAL \RAM|ram~281_q\ : std_logic;
SIGNAL \RAM|ram~153_q\ : std_logic;
SIGNAL \RAM|ram~409_q\ : std_logic;
SIGNAL \RAM|ram~600_combout\ : std_logic;
SIGNAL \RAM|ram~41_q\ : std_logic;
SIGNAL \RAM|ram~297_q\ : std_logic;
SIGNAL \RAM|ram~169_q\ : std_logic;
SIGNAL \RAM|ram~425_q\ : std_logic;
SIGNAL \RAM|ram~601_combout\ : std_logic;
SIGNAL \RAM|ram~89_q\ : std_logic;
SIGNAL \RAM|ram~345_q\ : std_logic;
SIGNAL \RAM|ram~217_q\ : std_logic;
SIGNAL \RAM|ram~473_q\ : std_logic;
SIGNAL \RAM|ram~602_combout\ : std_logic;
SIGNAL \RAM|ram~105_q\ : std_logic;
SIGNAL \RAM|ram~361_q\ : std_logic;
SIGNAL \RAM|ram~233_q\ : std_logic;
SIGNAL \RAM|ram~489_q\ : std_logic;
SIGNAL \RAM|ram~603_combout\ : std_logic;
SIGNAL \RAM|ram~604_combout\ : std_logic;
SIGNAL \RAM|ram~57_q\ : std_logic;
SIGNAL \RAM|ram~313_q\ : std_logic;
SIGNAL \RAM|ram~73_q\ : std_logic;
SIGNAL \RAM|ram~329_q\ : std_logic;
SIGNAL \RAM|ram~605_combout\ : std_logic;
SIGNAL \RAM|ram~121_q\ : std_logic;
SIGNAL \RAM|ram~377_q\ : std_logic;
SIGNAL \RAM|ram~137_q\ : std_logic;
SIGNAL \RAM|ram~393_q\ : std_logic;
SIGNAL \RAM|ram~606_combout\ : std_logic;
SIGNAL \RAM|ram~185_q\ : std_logic;
SIGNAL \RAM|ram~441_q\ : std_logic;
SIGNAL \RAM|ram~201_q\ : std_logic;
SIGNAL \RAM|ram~457_q\ : std_logic;
SIGNAL \RAM|ram~607_combout\ : std_logic;
SIGNAL \RAM|ram~249_q\ : std_logic;
SIGNAL \RAM|ram~505_q\ : std_logic;
SIGNAL \RAM|ram~265_q\ : std_logic;
SIGNAL \RAM|ram~521_q\ : std_logic;
SIGNAL \RAM|ram~608_combout\ : std_logic;
SIGNAL \RAM|ram~609_combout\ : std_logic;
SIGNAL \RAM|ram~610_combout\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[2]~2_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~14\ : std_logic;
SIGNAL \CPU|ULA1|Add0~5_sumout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~14\ : std_logic;
SIGNAL \CPU|ULA1|Add1~5_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[3]~1_combout\ : std_logic;
SIGNAL \RAM|ram~18_q\ : std_logic;
SIGNAL \RAM|ram~146_q\ : std_logic;
SIGNAL \RAM|ram~82_q\ : std_logic;
SIGNAL \RAM|ram~210_q\ : std_logic;
SIGNAL \RAM|ram~548_combout\ : std_logic;
SIGNAL \RAM|ram~26_q\ : std_logic;
SIGNAL \RAM|ram~154_q\ : std_logic;
SIGNAL \RAM|ram~90_q\ : std_logic;
SIGNAL \RAM|ram~218_q\ : std_logic;
SIGNAL \RAM|ram~549_combout\ : std_logic;
SIGNAL \RAM|ram~50_q\ : std_logic;
SIGNAL \RAM|ram~178_q\ : std_logic;
SIGNAL \RAM|ram~114_q\ : std_logic;
SIGNAL \RAM|ram~242_q\ : std_logic;
SIGNAL \RAM|ram~550_combout\ : std_logic;
SIGNAL \RAM|ram~58_q\ : std_logic;
SIGNAL \RAM|ram~186_q\ : std_logic;
SIGNAL \RAM|ram~122_q\ : std_logic;
SIGNAL \RAM|ram~250_q\ : std_logic;
SIGNAL \RAM|ram~551_combout\ : std_logic;
SIGNAL \RAM|ram~552_combout\ : std_logic;
SIGNAL \RAM|ram~274_q\ : std_logic;
SIGNAL \RAM|ram~282_q\ : std_logic;
SIGNAL \RAM|ram~402_q\ : std_logic;
SIGNAL \RAM|ram~410_q\ : std_logic;
SIGNAL \RAM|ram~553_combout\ : std_logic;
SIGNAL \RAM|ram~306_q\ : std_logic;
SIGNAL \RAM|ram~314_q\ : std_logic;
SIGNAL \RAM|ram~434_q\ : std_logic;
SIGNAL \RAM|ram~442_q\ : std_logic;
SIGNAL \RAM|ram~554_combout\ : std_logic;
SIGNAL \RAM|ram~338_q\ : std_logic;
SIGNAL \RAM|ram~346_q\ : std_logic;
SIGNAL \RAM|ram~466_q\ : std_logic;
SIGNAL \RAM|ram~474_q\ : std_logic;
SIGNAL \RAM|ram~555_combout\ : std_logic;
SIGNAL \RAM|ram~370_q\ : std_logic;
SIGNAL \RAM|ram~378_q\ : std_logic;
SIGNAL \RAM|ram~498_q\ : std_logic;
SIGNAL \RAM|ram~506_q\ : std_logic;
SIGNAL \RAM|ram~556_combout\ : std_logic;
SIGNAL \RAM|ram~557_combout\ : std_logic;
SIGNAL \RAM|ram~34_q\ : std_logic;
SIGNAL \RAM|ram~66_q\ : std_logic;
SIGNAL \RAM|ram~162_q\ : std_logic;
SIGNAL \RAM|ram~194_q\ : std_logic;
SIGNAL \RAM|ram~558_combout\ : std_logic;
SIGNAL \RAM|ram~42_q\ : std_logic;
SIGNAL \RAM|ram~74_q\ : std_logic;
SIGNAL \RAM|ram~170_q\ : std_logic;
SIGNAL \RAM|ram~202_q\ : std_logic;
SIGNAL \RAM|ram~559_combout\ : std_logic;
SIGNAL \RAM|ram~98_q\ : std_logic;
SIGNAL \RAM|ram~130_q\ : std_logic;
SIGNAL \RAM|ram~226_q\ : std_logic;
SIGNAL \RAM|ram~258_q\ : std_logic;
SIGNAL \RAM|ram~560_combout\ : std_logic;
SIGNAL \RAM|ram~106_q\ : std_logic;
SIGNAL \RAM|ram~138_q\ : std_logic;
SIGNAL \RAM|ram~234_q\ : std_logic;
SIGNAL \RAM|ram~266_q\ : std_logic;
SIGNAL \RAM|ram~561_combout\ : std_logic;
SIGNAL \RAM|ram~562_combout\ : std_logic;
SIGNAL \RAM|ram~290_q\ : std_logic;
SIGNAL \RAM|ram~418_q\ : std_logic;
SIGNAL \RAM|ram~354_q\ : std_logic;
SIGNAL \RAM|ram~482_q\ : std_logic;
SIGNAL \RAM|ram~563_combout\ : std_logic;
SIGNAL \RAM|ram~298_q\ : std_logic;
SIGNAL \RAM|ram~426_q\ : std_logic;
SIGNAL \RAM|ram~362_q\ : std_logic;
SIGNAL \RAM|ram~490_q\ : std_logic;
SIGNAL \RAM|ram~564_combout\ : std_logic;
SIGNAL \RAM|ram~322_q\ : std_logic;
SIGNAL \RAM|ram~450_q\ : std_logic;
SIGNAL \RAM|ram~386_q\ : std_logic;
SIGNAL \RAM|ram~514_q\ : std_logic;
SIGNAL \RAM|ram~565_combout\ : std_logic;
SIGNAL \RAM|ram~330_q\ : std_logic;
SIGNAL \RAM|ram~458_q\ : std_logic;
SIGNAL \RAM|ram~394_q\ : std_logic;
SIGNAL \RAM|ram~522_q\ : std_logic;
SIGNAL \RAM|ram~566_combout\ : std_logic;
SIGNAL \RAM|ram~567_combout\ : std_logic;
SIGNAL \RAM|ram~568_combout\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[3]~0_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~6\ : std_logic;
SIGNAL \CPU|ULA1|Add0~17_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[4]~4_combout\ : std_logic;
SIGNAL \RAM|ram~19_q\ : std_logic;
SIGNAL \RAM|ram~27_q\ : std_logic;
SIGNAL \RAM|ram~35_q\ : std_logic;
SIGNAL \RAM|ram~43_q\ : std_logic;
SIGNAL \RAM|ram~611_combout\ : std_logic;
SIGNAL \RAM|ram~51_q\ : std_logic;
SIGNAL \RAM|ram~59_q\ : std_logic;
SIGNAL \RAM|ram~67_q\ : std_logic;
SIGNAL \RAM|ram~75_q\ : std_logic;
SIGNAL \RAM|ram~612_combout\ : std_logic;
SIGNAL \RAM|ram~83_q\ : std_logic;
SIGNAL \RAM|ram~91_q\ : std_logic;
SIGNAL \RAM|ram~99_q\ : std_logic;
SIGNAL \RAM|ram~107_q\ : std_logic;
SIGNAL \RAM|ram~613_combout\ : std_logic;
SIGNAL \RAM|ram~115_q\ : std_logic;
SIGNAL \RAM|ram~123_q\ : std_logic;
SIGNAL \RAM|ram~131_q\ : std_logic;
SIGNAL \RAM|ram~139_q\ : std_logic;
SIGNAL \RAM|ram~614_combout\ : std_logic;
SIGNAL \RAM|ram~615_combout\ : std_logic;
SIGNAL \RAM|ram~275_q\ : std_logic;
SIGNAL \RAM|ram~283_q\ : std_logic;
SIGNAL \RAM|ram~307_q\ : std_logic;
SIGNAL \RAM|ram~315_q\ : std_logic;
SIGNAL \RAM|ram~616_combout\ : std_logic;
SIGNAL \RAM|ram~291_q\ : std_logic;
SIGNAL \RAM|ram~299_q\ : std_logic;
SIGNAL \RAM|ram~323_q\ : std_logic;
SIGNAL \RAM|ram~331_q\ : std_logic;
SIGNAL \RAM|ram~617_combout\ : std_logic;
SIGNAL \RAM|ram~339_q\ : std_logic;
SIGNAL \RAM|ram~347_q\ : std_logic;
SIGNAL \RAM|ram~371_q\ : std_logic;
SIGNAL \RAM|ram~379_q\ : std_logic;
SIGNAL \RAM|ram~618_combout\ : std_logic;
SIGNAL \RAM|ram~355_q\ : std_logic;
SIGNAL \RAM|ram~363_q\ : std_logic;
SIGNAL \RAM|ram~387_q\ : std_logic;
SIGNAL \RAM|ram~395_q\ : std_logic;
SIGNAL \RAM|ram~619_combout\ : std_logic;
SIGNAL \RAM|ram~620_combout\ : std_logic;
SIGNAL \RAM|ram~147_q\ : std_logic;
SIGNAL \RAM|ram~155_q\ : std_logic;
SIGNAL \RAM|ram~211_q\ : std_logic;
SIGNAL \RAM|ram~219_q\ : std_logic;
SIGNAL \RAM|ram~621_combout\ : std_logic;
SIGNAL \RAM|ram~163_q\ : std_logic;
SIGNAL \RAM|ram~171_q\ : std_logic;
SIGNAL \RAM|ram~227_q\ : std_logic;
SIGNAL \RAM|ram~235_q\ : std_logic;
SIGNAL \RAM|ram~622_combout\ : std_logic;
SIGNAL \RAM|ram~179_q\ : std_logic;
SIGNAL \RAM|ram~187_q\ : std_logic;
SIGNAL \RAM|ram~243_q\ : std_logic;
SIGNAL \RAM|ram~251_q\ : std_logic;
SIGNAL \RAM|ram~623_combout\ : std_logic;
SIGNAL \RAM|ram~195_q\ : std_logic;
SIGNAL \RAM|ram~203_q\ : std_logic;
SIGNAL \RAM|ram~259_q\ : std_logic;
SIGNAL \RAM|ram~267_q\ : std_logic;
SIGNAL \RAM|ram~624_combout\ : std_logic;
SIGNAL \RAM|ram~625_combout\ : std_logic;
SIGNAL \RAM|ram~403_q\ : std_logic;
SIGNAL \RAM|ram~419_q\ : std_logic;
SIGNAL \RAM|ram~411_q\ : std_logic;
SIGNAL \RAM|ram~427_q\ : std_logic;
SIGNAL \RAM|ram~626_combout\ : std_logic;
SIGNAL \RAM|ram~435_q\ : std_logic;
SIGNAL \RAM|ram~451_q\ : std_logic;
SIGNAL \RAM|ram~443_q\ : std_logic;
SIGNAL \RAM|ram~459_q\ : std_logic;
SIGNAL \RAM|ram~627_combout\ : std_logic;
SIGNAL \RAM|ram~467_q\ : std_logic;
SIGNAL \RAM|ram~483_q\ : std_logic;
SIGNAL \RAM|ram~475_q\ : std_logic;
SIGNAL \RAM|ram~491_q\ : std_logic;
SIGNAL \RAM|ram~628_combout\ : std_logic;
SIGNAL \RAM|ram~499_q\ : std_logic;
SIGNAL \RAM|ram~515_q\ : std_logic;
SIGNAL \RAM|ram~507_q\ : std_logic;
SIGNAL \RAM|ram~523_q\ : std_logic;
SIGNAL \RAM|ram~629_combout\ : std_logic;
SIGNAL \RAM|ram~630_combout\ : std_logic;
SIGNAL \RAM|ram~631_combout\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[4]~3_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~6\ : std_logic;
SIGNAL \CPU|ULA1|Add1~17_sumout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~18\ : std_logic;
SIGNAL \CPU|ULA1|Add0~21_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[5]~5_combout\ : std_logic;
SIGNAL \RAM|ram~20_q\ : std_logic;
SIGNAL \RAM|ram~36_q\ : std_logic;
SIGNAL \RAM|ram~52_q\ : std_logic;
SIGNAL \RAM|ram~68_q\ : std_logic;
SIGNAL \RAM|ram~632_combout\ : std_logic;
SIGNAL \RAM|ram~148_q\ : std_logic;
SIGNAL \RAM|ram~164_q\ : std_logic;
SIGNAL \RAM|ram~180_q\ : std_logic;
SIGNAL \RAM|ram~196_q\ : std_logic;
SIGNAL \RAM|ram~633_combout\ : std_logic;
SIGNAL \RAM|ram~84_q\ : std_logic;
SIGNAL \RAM|ram~100_q\ : std_logic;
SIGNAL \RAM|ram~116_q\ : std_logic;
SIGNAL \RAM|ram~132_q\ : std_logic;
SIGNAL \RAM|ram~634_combout\ : std_logic;
SIGNAL \RAM|ram~212_q\ : std_logic;
SIGNAL \RAM|ram~228_q\ : std_logic;
SIGNAL \RAM|ram~244_q\ : std_logic;
SIGNAL \RAM|ram~260_q\ : std_logic;
SIGNAL \RAM|ram~635_combout\ : std_logic;
SIGNAL \RAM|ram~636_combout\ : std_logic;
SIGNAL \RAM|ram~276_q\ : std_logic;
SIGNAL \RAM|ram~308_q\ : std_logic;
SIGNAL \RAM|ram~404_q\ : std_logic;
SIGNAL \RAM|ram~436_q\ : std_logic;
SIGNAL \RAM|ram~637_combout\ : std_logic;
SIGNAL \RAM|ram~292_q\ : std_logic;
SIGNAL \RAM|ram~324_q\ : std_logic;
SIGNAL \RAM|ram~420_q\ : std_logic;
SIGNAL \RAM|ram~452_q\ : std_logic;
SIGNAL \RAM|ram~638_combout\ : std_logic;
SIGNAL \RAM|ram~340_q\ : std_logic;
SIGNAL \RAM|ram~372_q\ : std_logic;
SIGNAL \RAM|ram~468_q\ : std_logic;
SIGNAL \RAM|ram~500_q\ : std_logic;
SIGNAL \RAM|ram~639_combout\ : std_logic;
SIGNAL \RAM|ram~356_q\ : std_logic;
SIGNAL \RAM|ram~388_q\ : std_logic;
SIGNAL \RAM|ram~484_q\ : std_logic;
SIGNAL \RAM|ram~516_q\ : std_logic;
SIGNAL \RAM|ram~640_combout\ : std_logic;
SIGNAL \RAM|ram~641_combout\ : std_logic;
SIGNAL \RAM|ram~28_q\ : std_logic;
SIGNAL \RAM|ram~44_q\ : std_logic;
SIGNAL \RAM|ram~60_q\ : std_logic;
SIGNAL \RAM|ram~76_q\ : std_logic;
SIGNAL \RAM|ram~642_combout\ : std_logic;
SIGNAL \RAM|ram~156_q\ : std_logic;
SIGNAL \RAM|ram~172_q\ : std_logic;
SIGNAL \RAM|ram~188_q\ : std_logic;
SIGNAL \RAM|ram~204_q\ : std_logic;
SIGNAL \RAM|ram~643_combout\ : std_logic;
SIGNAL \RAM|ram~92_q\ : std_logic;
SIGNAL \RAM|ram~108_q\ : std_logic;
SIGNAL \RAM|ram~124_q\ : std_logic;
SIGNAL \RAM|ram~140_q\ : std_logic;
SIGNAL \RAM|ram~644_combout\ : std_logic;
SIGNAL \RAM|ram~220_q\ : std_logic;
SIGNAL \RAM|ram~236_q\ : std_logic;
SIGNAL \RAM|ram~252_q\ : std_logic;
SIGNAL \RAM|ram~268_q\ : std_logic;
SIGNAL \RAM|ram~645_combout\ : std_logic;
SIGNAL \RAM|ram~646_combout\ : std_logic;
SIGNAL \RAM|ram~284_q\ : std_logic;
SIGNAL \RAM|ram~316_q\ : std_logic;
SIGNAL \RAM|ram~348_q\ : std_logic;
SIGNAL \RAM|ram~380_q\ : std_logic;
SIGNAL \RAM|ram~647_combout\ : std_logic;
SIGNAL \RAM|ram~300_q\ : std_logic;
SIGNAL \RAM|ram~332_q\ : std_logic;
SIGNAL \RAM|ram~364_q\ : std_logic;
SIGNAL \RAM|ram~396_q\ : std_logic;
SIGNAL \RAM|ram~648_combout\ : std_logic;
SIGNAL \RAM|ram~412_q\ : std_logic;
SIGNAL \RAM|ram~444_q\ : std_logic;
SIGNAL \RAM|ram~476_q\ : std_logic;
SIGNAL \RAM|ram~508_q\ : std_logic;
SIGNAL \RAM|ram~649_combout\ : std_logic;
SIGNAL \RAM|ram~428_q\ : std_logic;
SIGNAL \RAM|ram~460_q\ : std_logic;
SIGNAL \RAM|ram~492_q\ : std_logic;
SIGNAL \RAM|ram~524_q\ : std_logic;
SIGNAL \RAM|ram~650_combout\ : std_logic;
SIGNAL \RAM|ram~651_combout\ : std_logic;
SIGNAL \RAM|ram~652_combout\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[5]~4_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~18\ : std_logic;
SIGNAL \CPU|ULA1|Add1~21_sumout\ : std_logic;
SIGNAL \ROM|memROM~25_combout\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \CPU|ULA1|Add0~22\ : std_logic;
SIGNAL \CPU|ULA1|Add0~25_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[6]~6_combout\ : std_logic;
SIGNAL \RAM|ram~21_q\ : std_logic;
SIGNAL \RAM|ram~37_q\ : std_logic;
SIGNAL \RAM|ram~29_q\ : std_logic;
SIGNAL \RAM|ram~45_q\ : std_logic;
SIGNAL \RAM|ram~653_combout\ : std_logic;
SIGNAL \RAM|ram~149_q\ : std_logic;
SIGNAL \RAM|ram~165_q\ : std_logic;
SIGNAL \RAM|ram~157_q\ : std_logic;
SIGNAL \RAM|ram~173_q\ : std_logic;
SIGNAL \RAM|ram~654_combout\ : std_logic;
SIGNAL \RAM|ram~85_q\ : std_logic;
SIGNAL \RAM|ram~101_q\ : std_logic;
SIGNAL \RAM|ram~93_q\ : std_logic;
SIGNAL \RAM|ram~109_q\ : std_logic;
SIGNAL \RAM|ram~655_combout\ : std_logic;
SIGNAL \RAM|ram~213_q\ : std_logic;
SIGNAL \RAM|ram~229_q\ : std_logic;
SIGNAL \RAM|ram~221_q\ : std_logic;
SIGNAL \RAM|ram~237_q\ : std_logic;
SIGNAL \RAM|ram~656_combout\ : std_logic;
SIGNAL \RAM|ram~657_combout\ : std_logic;
SIGNAL \RAM|ram~277_q\ : std_logic;
SIGNAL \RAM|ram~293_q\ : std_logic;
SIGNAL \RAM|ram~341_q\ : std_logic;
SIGNAL \RAM|ram~357_q\ : std_logic;
SIGNAL \RAM|ram~658_combout\ : std_logic;
SIGNAL \RAM|ram~285_q\ : std_logic;
SIGNAL \RAM|ram~301_q\ : std_logic;
SIGNAL \RAM|ram~349_q\ : std_logic;
SIGNAL \RAM|ram~365_q\ : std_logic;
SIGNAL \RAM|ram~659_combout\ : std_logic;
SIGNAL \RAM|ram~405_q\ : std_logic;
SIGNAL \RAM|ram~421_q\ : std_logic;
SIGNAL \RAM|ram~469_q\ : std_logic;
SIGNAL \RAM|ram~485_q\ : std_logic;
SIGNAL \RAM|ram~660_combout\ : std_logic;
SIGNAL \RAM|ram~413_q\ : std_logic;
SIGNAL \RAM|ram~429_q\ : std_logic;
SIGNAL \RAM|ram~477_q\ : std_logic;
SIGNAL \RAM|ram~493_q\ : std_logic;
SIGNAL \RAM|ram~661_combout\ : std_logic;
SIGNAL \RAM|ram~662_combout\ : std_logic;
SIGNAL \RAM|ram~53_q\ : std_logic;
SIGNAL \RAM|ram~69_q\ : std_logic;
SIGNAL \RAM|ram~181_q\ : std_logic;
SIGNAL \RAM|ram~197_q\ : std_logic;
SIGNAL \RAM|ram~663_combout\ : std_logic;
SIGNAL \RAM|ram~61_q\ : std_logic;
SIGNAL \RAM|ram~77_q\ : std_logic;
SIGNAL \RAM|ram~189_q\ : std_logic;
SIGNAL \RAM|ram~205_q\ : std_logic;
SIGNAL \RAM|ram~664_combout\ : std_logic;
SIGNAL \RAM|ram~117_q\ : std_logic;
SIGNAL \RAM|ram~133_q\ : std_logic;
SIGNAL \RAM|ram~245_q\ : std_logic;
SIGNAL \RAM|ram~261_q\ : std_logic;
SIGNAL \RAM|ram~665_combout\ : std_logic;
SIGNAL \RAM|ram~125_q\ : std_logic;
SIGNAL \RAM|ram~141_q\ : std_logic;
SIGNAL \RAM|ram~253_q\ : std_logic;
SIGNAL \RAM|ram~269_q\ : std_logic;
SIGNAL \RAM|ram~666_combout\ : std_logic;
SIGNAL \RAM|ram~667_combout\ : std_logic;
SIGNAL \RAM|ram~309_q\ : std_logic;
SIGNAL \RAM|ram~325_q\ : std_logic;
SIGNAL \RAM|ram~317_q\ : std_logic;
SIGNAL \RAM|ram~333_q\ : std_logic;
SIGNAL \RAM|ram~668_combout\ : std_logic;
SIGNAL \RAM|ram~437_q\ : std_logic;
SIGNAL \RAM|ram~453_q\ : std_logic;
SIGNAL \RAM|ram~445_q\ : std_logic;
SIGNAL \RAM|ram~461_q\ : std_logic;
SIGNAL \RAM|ram~669_combout\ : std_logic;
SIGNAL \RAM|ram~373_q\ : std_logic;
SIGNAL \RAM|ram~389_q\ : std_logic;
SIGNAL \RAM|ram~381_q\ : std_logic;
SIGNAL \RAM|ram~397_q\ : std_logic;
SIGNAL \RAM|ram~670_combout\ : std_logic;
SIGNAL \RAM|ram~501_q\ : std_logic;
SIGNAL \RAM|ram~517_q\ : std_logic;
SIGNAL \RAM|ram~509_q\ : std_logic;
SIGNAL \RAM|ram~525_q\ : std_logic;
SIGNAL \RAM|ram~671_combout\ : std_logic;
SIGNAL \RAM|ram~672_combout\ : std_logic;
SIGNAL \RAM|ram~673_combout\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[6]~5_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~22\ : std_logic;
SIGNAL \CPU|ULA1|Add1~25_sumout\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \CPU|ULA1|Add0~26\ : std_logic;
SIGNAL \CPU|ULA1|Add0~29_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[7]~7_combout\ : std_logic;
SIGNAL \RAM|ram~22_q\ : std_logic;
SIGNAL \RAM|ram~30_q\ : std_logic;
SIGNAL \RAM|ram~150_q\ : std_logic;
SIGNAL \RAM|ram~158_q\ : std_logic;
SIGNAL \RAM|ram~674_combout\ : std_logic;
SIGNAL \RAM|ram~54_q\ : std_logic;
SIGNAL \RAM|ram~62_q\ : std_logic;
SIGNAL \RAM|ram~182_q\ : std_logic;
SIGNAL \RAM|ram~190_q\ : std_logic;
SIGNAL \RAM|ram~675_combout\ : std_logic;
SIGNAL \RAM|ram~86_q\ : std_logic;
SIGNAL \RAM|ram~94_q\ : std_logic;
SIGNAL \RAM|ram~214_q\ : std_logic;
SIGNAL \RAM|ram~222_q\ : std_logic;
SIGNAL \RAM|ram~676_combout\ : std_logic;
SIGNAL \RAM|ram~118_q\ : std_logic;
SIGNAL \RAM|ram~126_q\ : std_logic;
SIGNAL \RAM|ram~246_q\ : std_logic;
SIGNAL \RAM|ram~254_q\ : std_logic;
SIGNAL \RAM|ram~677_combout\ : std_logic;
SIGNAL \RAM|ram~678_combout\ : std_logic;
SIGNAL \RAM|ram~38_q\ : std_logic;
SIGNAL \RAM|ram~70_q\ : std_logic;
SIGNAL \RAM|ram~102_q\ : std_logic;
SIGNAL \RAM|ram~134_q\ : std_logic;
SIGNAL \RAM|ram~679_combout\ : std_logic;
SIGNAL \RAM|ram~46_q\ : std_logic;
SIGNAL \RAM|ram~78_q\ : std_logic;
SIGNAL \RAM|ram~110_q\ : std_logic;
SIGNAL \RAM|ram~142_q\ : std_logic;
SIGNAL \RAM|ram~680_combout\ : std_logic;
SIGNAL \RAM|ram~166_q\ : std_logic;
SIGNAL \RAM|ram~198_q\ : std_logic;
SIGNAL \RAM|ram~230_q\ : std_logic;
SIGNAL \RAM|ram~262_q\ : std_logic;
SIGNAL \RAM|ram~681_combout\ : std_logic;
SIGNAL \RAM|ram~174_q\ : std_logic;
SIGNAL \RAM|ram~206_q\ : std_logic;
SIGNAL \RAM|ram~238_q\ : std_logic;
SIGNAL \RAM|ram~270_q\ : std_logic;
SIGNAL \RAM|ram~682_combout\ : std_logic;
SIGNAL \RAM|ram~683_combout\ : std_logic;
SIGNAL \RAM|ram~278_q\ : std_logic;
SIGNAL \RAM|ram~286_q\ : std_logic;
SIGNAL \RAM|ram~406_q\ : std_logic;
SIGNAL \RAM|ram~414_q\ : std_logic;
SIGNAL \RAM|ram~684_combout\ : std_logic;
SIGNAL \RAM|ram~310_q\ : std_logic;
SIGNAL \RAM|ram~318_q\ : std_logic;
SIGNAL \RAM|ram~438_q\ : std_logic;
SIGNAL \RAM|ram~446_q\ : std_logic;
SIGNAL \RAM|ram~685_combout\ : std_logic;
SIGNAL \RAM|ram~342_q\ : std_logic;
SIGNAL \RAM|ram~350_q\ : std_logic;
SIGNAL \RAM|ram~470_q\ : std_logic;
SIGNAL \RAM|ram~478_q\ : std_logic;
SIGNAL \RAM|ram~686_combout\ : std_logic;
SIGNAL \RAM|ram~374_q\ : std_logic;
SIGNAL \RAM|ram~382_q\ : std_logic;
SIGNAL \RAM|ram~502_q\ : std_logic;
SIGNAL \RAM|ram~510_q\ : std_logic;
SIGNAL \RAM|ram~687_combout\ : std_logic;
SIGNAL \RAM|ram~688_combout\ : std_logic;
SIGNAL \RAM|ram~294_q\ : std_logic;
SIGNAL \RAM|ram~326_q\ : std_logic;
SIGNAL \RAM|ram~358_q\ : std_logic;
SIGNAL \RAM|ram~390_q\ : std_logic;
SIGNAL \RAM|ram~689_combout\ : std_logic;
SIGNAL \RAM|ram~302_q\ : std_logic;
SIGNAL \RAM|ram~334_q\ : std_logic;
SIGNAL \RAM|ram~366_q\ : std_logic;
SIGNAL \RAM|ram~398_q\ : std_logic;
SIGNAL \RAM|ram~690_combout\ : std_logic;
SIGNAL \RAM|ram~422_q\ : std_logic;
SIGNAL \RAM|ram~454_q\ : std_logic;
SIGNAL \RAM|ram~486_q\ : std_logic;
SIGNAL \RAM|ram~518_q\ : std_logic;
SIGNAL \RAM|ram~691_combout\ : std_logic;
SIGNAL \RAM|ram~430_q\ : std_logic;
SIGNAL \RAM|ram~462_q\ : std_logic;
SIGNAL \RAM|ram~494_q\ : std_logic;
SIGNAL \RAM|ram~526_q\ : std_logic;
SIGNAL \RAM|ram~692_combout\ : std_logic;
SIGNAL \RAM|ram~693_combout\ : std_logic;
SIGNAL \RAM|ram~694_combout\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[7]~6_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~26\ : std_logic;
SIGNAL \CPU|ULA1|Add1~29_sumout\ : std_logic;
SIGNAL \CPU|DECODER|sinais_controle~1_combout\ : std_logic;
SIGNAL \CPU|FLAG|DOUT~0_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~1_sumout\ : std_logic;
SIGNAL \CPU|FLAG|DOUT~1_combout\ : std_logic;
SIGNAL \CPU|FLAG|DOUT~2_combout\ : std_logic;
SIGNAL \CPU|FLAG|DOUT~q\ : std_logic;
SIGNAL \CPU|INSTR|MUX2|Equal2~0_combout\ : std_logic;
SIGNAL \CPU|INSTR|MUX2|Equal1~0_combout\ : std_logic;
SIGNAL \CPU|INSTR|SOMA_CONST|Add0~2\ : std_logic;
SIGNAL \CPU|INSTR|SOMA_CONST|Add0~26\ : std_logic;
SIGNAL \CPU|INSTR|SOMA_CONST|Add0~30\ : std_logic;
SIGNAL \CPU|INSTR|SOMA_CONST|Add0~34\ : std_logic;
SIGNAL \CPU|INSTR|SOMA_CONST|Add0~17_sumout\ : std_logic;
SIGNAL \CPU|DECODER|sinais_controle~2_combout\ : std_logic;
SIGNAL \CPU|INSTR|MUX2|MUX_OUT[4]~4_combout\ : std_logic;
SIGNAL \CPU|INSTR|SOMA_CONST|Add0~18\ : std_logic;
SIGNAL \CPU|INSTR|SOMA_CONST|Add0~21_sumout\ : std_logic;
SIGNAL \CPU|INSTR|MUX2|MUX_OUT[5]~5_combout\ : std_logic;
SIGNAL \ROM|memROM~13_combout\ : std_logic;
SIGNAL \CPU|INSTR|SOMA_CONST|Add0~25_sumout\ : std_logic;
SIGNAL \CPU|INSTR|MUX2|MUX_OUT[1]~6_combout\ : std_logic;
SIGNAL \ROM|memROM~7_combout\ : std_logic;
SIGNAL \ROM|memROM~17_combout\ : std_logic;
SIGNAL \CPU|INSTR|SOMA_CONST|Add0~22\ : std_logic;
SIGNAL \CPU|INSTR|SOMA_CONST|Add0~13_sumout\ : std_logic;
SIGNAL \CPU|INSTR|MUX2|MUX_OUT[6]~3_combout\ : std_logic;
SIGNAL \ROM|memROM~0_combout\ : std_logic;
SIGNAL \ROM|memROM~14_combout\ : std_logic;
SIGNAL \CPU|INSTR|SOMA_CONST|Add0~14\ : std_logic;
SIGNAL \CPU|INSTR|SOMA_CONST|Add0~9_sumout\ : std_logic;
SIGNAL \CPU|INSTR|MUX2|MUX_OUT[7]~2_combout\ : std_logic;
SIGNAL \ROM|memROM~6_combout\ : std_logic;
SIGNAL \ROM|memROM~11_combout\ : std_logic;
SIGNAL \CPU|INSTR|SOMA_CONST|Add0~1_sumout\ : std_logic;
SIGNAL \CPU|INSTR|MUX2|MUX_OUT[0]~0_combout\ : std_logic;
SIGNAL \ROM|memROM~5_combout\ : std_logic;
SIGNAL \CPU|INSTR|SOMA_CONST|Add0~29_sumout\ : std_logic;
SIGNAL \CPU|INSTR|MUX2|MUX_OUT[2]~7_combout\ : std_logic;
SIGNAL \ROM|memROM~16_combout\ : std_logic;
SIGNAL \CPU|INSTR|SOMA_CONST|Add0~33_sumout\ : std_logic;
SIGNAL \CPU|INSTR|MUX2|MUX_OUT[3]~8_combout\ : std_logic;
SIGNAL \ROM|memROM~18_combout\ : std_logic;
SIGNAL \CPU|INSTR|SOMA_CONST|Add0~10\ : std_logic;
SIGNAL \CPU|INSTR|SOMA_CONST|Add0~5_sumout\ : std_logic;
SIGNAL \CPU|INSTR|MUX2|MUX_OUT[8]~1_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~1_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[0]~0_combout\ : std_logic;
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
SIGNAL \HEX5_DECODER|REG_4bits|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CPU|REG_A|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \HEX3_DECODER|REG_4bits|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CPU|INSTR|PC|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \HEX4_DECODER|REG_4bits|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \HEX0_DECODER|REG_4bits|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \HEX1_DECODER|REG_4bits|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \HEX2_DECODER|REG_4bits|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LED_R|REG_8bits|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL ENABLE_HEX : std_logic_vector(5 DOWNTO 0);
SIGNAL \CPU|INSTR|END_RETORNO|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \HEX0_DECODER|REG_4bits|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_READ_BUS[0]~4_combout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add1~29_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add1~25_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add1~21_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add1~17_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \CPU|INSTR|SOMA_CONST|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \CPU|INSTR|SOMA_CONST|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \CPU|INSTR|SOMA_CONST|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \CPU|INSTR|SOMA_CONST|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \CPU|INSTR|SOMA_CONST|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \CPU|INSTR|SOMA_CONST|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \CPU|INSTR|SOMA_CONST|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \CPU|INSTR|SOMA_CONST|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \CPU|INSTR|SOMA_CONST|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add1~1_sumout\ : std_logic;
SIGNAL \CPU|REG_A|ALT_INV_DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \CPU|INSTR|PC|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \RAM|ALT_INV_ram~407_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~151_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~279_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~23_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~531_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~16_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~15_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~530_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~495_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~239_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~367_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~111_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~529_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~463_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~207_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~335_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~79_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~528_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~431_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~175_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~303_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~47_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~527_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~14_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~399_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~143_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~271_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~15_q\ : std_logic;
SIGNAL \ALT_INV_ENABLE_LEDR~2_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~13_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~12_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~11_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~10_combout\ : std_logic;
SIGNAL \ALT_INV_ENABLE_LEDR~0_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~9_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~8_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~7_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~6_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~5_combout\ : std_logic;
SIGNAL \CPU|DECODER|ALT_INV_Equal5~0_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~4_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~3_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~2_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \LED9|FLIPS|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \LED8|FLIPS|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \HEX5_DECODER|REG_4bits|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \HEX4_DECODER|REG_4bits|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \HEX3_DECODER|REG_4bits|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \HEX2_DECODER|REG_4bits|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \HEX1_DECODER|REG_4bits|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RAM|ALT_INV_ram~410_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~402_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~282_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~274_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~552_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~551_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~250_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~122_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~186_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~58_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~550_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~242_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~114_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~178_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~50_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~549_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~218_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~90_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~154_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~26_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~548_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~210_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~82_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~146_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~18_q\ : std_logic;
SIGNAL \CPU|DECODER|ALT_INV_SEL_MUX~0_combout\ : std_logic;
SIGNAL \CPU|INSTR|END_RETORNO|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \CPU|INSTR|MUX2|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \CPU|INSTR|MUX2|ALT_INV_Equal2~0_combout\ : std_logic;
SIGNAL \CPU|FLAG|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \CPU|DECODER|ALT_INV_OP_ULA[1]~0_combout\ : std_logic;
SIGNAL \CPU|DECODER|ALT_INV_HAB_A~0_combout\ : std_logic;
SIGNAL \CPU|DECODER|ALT_INV_sinais_controle~0_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~22_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~21_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~20_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~19_combout\ : std_logic;
SIGNAL \ALT_INV_READ_BUS[0]~1_combout\ : std_logic;
SIGNAL \FF_DEBOUNCER|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \ALT_INV_ENABLE_SWR~2_combout\ : std_logic;
SIGNAL \ALT_INV_ENABLE_SWR~1_combout\ : std_logic;
SIGNAL \ALT_INV_ENABLE_SWR~0_combout\ : std_logic;
SIGNAL \ALT_INV_READ_BUS[0]~0_combout\ : std_logic;
SIGNAL \CPU|DECODER|ALT_INV_ENABLE_READ~0_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~18_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~17_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~547_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~546_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~545_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~519_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~263_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~455_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~199_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~544_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~487_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~231_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~423_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~167_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~543_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~391_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~135_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~327_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~71_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~542_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~359_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~103_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~295_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~39_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~541_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~540_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~511_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~255_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~383_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~127_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~539_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~479_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~223_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~351_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~95_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~538_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~447_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~191_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~319_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~63_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~537_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~415_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~159_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~287_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~31_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~536_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~535_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~503_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~247_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~375_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~119_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~534_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~471_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~215_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~343_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~87_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~533_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~439_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~183_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~311_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~55_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~532_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~408_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~400_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~583_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~582_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~264_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~256_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~232_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~224_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~581_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~248_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~240_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~216_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~208_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~580_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~200_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~192_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~168_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~160_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~579_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~184_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~176_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~152_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~144_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~578_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~577_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~392_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~376_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~328_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~312_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~576_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~384_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~368_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~320_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~304_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~575_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~360_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~344_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~296_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~280_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~574_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~352_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~336_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~288_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~272_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~573_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~572_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~136_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~128_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~104_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~96_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~571_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~120_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~112_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~88_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~80_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~570_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~72_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~64_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~40_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~32_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~569_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~56_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~48_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~24_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~16_q\ : std_logic;
SIGNAL \CPU|MUX1|ALT_INV_saida_MUX[3]~0_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~568_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~567_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~566_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~522_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~394_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~458_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~330_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~565_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~514_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~386_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~450_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~322_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~564_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~490_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~362_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~426_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~298_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~563_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~482_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~354_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~418_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~290_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~562_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~561_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~266_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~234_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~138_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~106_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~560_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~258_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~226_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~130_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~98_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~559_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~202_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~170_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~74_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~42_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~558_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~194_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~162_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~66_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~34_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~557_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~556_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~506_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~498_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~378_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~370_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~555_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~474_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~466_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~346_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~338_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~554_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~442_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~434_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~314_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~306_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~553_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~131_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~123_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~115_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~613_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~107_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~99_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~91_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~83_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~612_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~75_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~67_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~59_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~51_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~611_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~43_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~35_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~27_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~19_q\ : std_logic;
SIGNAL \CPU|MUX1|ALT_INV_saida_MUX[2]~2_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~610_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~609_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~608_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~521_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~265_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~505_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~249_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~607_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~457_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~201_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~441_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~185_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~606_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~393_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~137_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~377_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~121_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~605_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~329_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~73_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~313_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~57_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~604_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~603_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~489_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~233_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~361_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~105_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~602_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~473_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~217_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~345_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~89_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~601_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~425_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~169_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~297_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~41_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~600_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~409_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~153_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~281_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~25_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~599_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~598_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~513_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~257_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~497_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~241_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~597_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~385_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~129_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~369_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~113_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~596_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~449_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~193_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~433_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~177_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~595_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~321_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~65_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~305_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~49_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~594_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~593_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~481_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~225_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~465_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~209_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~592_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~353_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~97_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~337_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~81_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~591_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~417_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~161_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~401_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~145_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~590_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~289_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~33_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~273_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~17_q\ : std_logic;
SIGNAL \CPU|MUX1|ALT_INV_saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~589_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~588_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~587_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~520_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~512_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~488_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~480_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~586_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~504_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~496_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~472_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~464_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~585_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~456_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~448_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~424_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~416_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~584_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~440_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~432_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~220_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~644_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~140_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~124_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~108_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~92_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~643_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~204_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~188_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~172_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~156_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~642_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~76_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~60_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~44_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~28_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~641_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~640_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~516_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~484_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~388_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~356_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~639_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~500_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~468_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~372_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~340_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~638_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~452_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~420_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~324_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~292_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~637_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~436_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~404_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~308_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~276_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~636_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~635_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~260_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~244_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~228_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~212_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~634_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~132_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~116_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~100_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~84_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~633_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~196_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~180_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~164_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~148_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~632_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~68_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~52_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~36_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~20_q\ : std_logic;
SIGNAL \CPU|MUX1|ALT_INV_saida_MUX[4]~3_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~631_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~630_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~629_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~523_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~507_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~515_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~499_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~628_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~491_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~475_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~483_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~467_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~627_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~459_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~443_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~451_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~435_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~626_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~427_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~411_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~419_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~403_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~625_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~624_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~267_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~259_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~203_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~195_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~623_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~251_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~243_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~187_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~179_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~622_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~235_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~227_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~171_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~163_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~621_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~219_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~211_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~155_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~147_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~620_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~619_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~395_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~387_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~363_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~355_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~618_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~379_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~371_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~347_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~339_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~617_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~331_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~323_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~299_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~291_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~616_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~315_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~307_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~283_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~275_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~615_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~614_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~139_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~86_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~675_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~190_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~182_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~62_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~54_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~674_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~158_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~150_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~30_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~22_q\ : std_logic;
SIGNAL \CPU|MUX1|ALT_INV_saida_MUX[6]~5_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~673_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~672_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~671_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~525_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~509_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~517_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~501_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~670_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~397_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~381_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~389_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~373_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~669_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~461_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~445_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~453_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~437_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~668_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~333_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~317_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~325_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~309_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~667_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~666_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~269_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~253_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~141_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~125_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~665_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~261_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~245_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~133_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~117_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~664_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~205_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~189_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~77_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~61_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~663_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~197_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~181_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~69_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~53_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~662_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~661_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~493_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~477_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~429_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~413_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~660_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~485_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~469_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~421_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~405_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~659_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~365_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~349_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~301_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~285_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~658_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~357_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~341_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~293_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~277_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~657_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~656_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~237_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~221_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~229_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~213_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~655_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~109_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~93_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~101_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~85_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~654_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~173_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~157_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~165_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~149_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~653_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~45_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~29_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~37_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~21_q\ : std_logic;
SIGNAL \CPU|MUX1|ALT_INV_saida_MUX[5]~4_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~652_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~651_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~650_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~524_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~492_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~460_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~428_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~649_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~508_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~476_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~444_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~412_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~648_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~396_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~364_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~332_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~300_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~647_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~380_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~348_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~316_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~284_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~646_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~645_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~268_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~252_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~236_q\ : std_logic;
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
SIGNAL \RAM|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~695_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~23_combout\ : std_logic;
SIGNAL \CPU|MUX1|ALT_INV_saida_MUX[7]~6_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~694_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~693_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~692_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~526_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~494_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~462_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~430_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~691_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~518_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~486_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~454_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~422_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~690_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~398_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~366_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~334_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~302_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~689_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~390_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~358_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~326_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~294_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~688_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~687_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~510_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~502_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~382_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~374_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~686_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~478_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~470_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~350_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~342_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~685_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~446_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~438_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~318_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~310_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~684_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~414_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~406_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~286_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~278_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~683_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~682_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~270_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~238_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~206_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~174_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~681_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~262_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~230_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~198_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~166_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~680_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~142_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~110_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~78_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~46_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~679_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~134_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~102_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~70_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~38_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~678_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~677_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~254_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~246_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~126_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~118_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~676_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~222_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~214_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~94_q\ : std_logic;
SIGNAL \ALT_INV_READ_BUS[0]~3_combout\ : std_logic;
SIGNAL \ALT_INV_READ_BUS[0]~2_combout\ : std_logic;
SIGNAL \detectorSub0|ALT_INV_saidaQ~q\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~25_combout\ : std_logic;
SIGNAL \CPU|DECODER|ALT_INV_OP_ULA[0]~2_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~24_combout\ : std_logic;
SIGNAL \CPU|FLAG|ALT_INV_DOUT~1_combout\ : std_logic;
SIGNAL \CPU|FLAG|ALT_INV_DOUT~0_combout\ : std_logic;
SIGNAL \CPU|DECODER|ALT_INV_sinais_controle~1_combout\ : std_logic;
SIGNAL \ALT_INV_ADDR_511~combout\ : std_logic;
SIGNAL \ALT_INV_ADDR_511~0_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~821_combout\ : std_logic;
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
SIGNAL \ALT_INV_KEY[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[0]~input_o\ : std_logic;

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
\HEX0_DECODER|REG_4bits|ALT_INV_DOUT\(2) <= NOT \HEX0_DECODER|REG_4bits|DOUT\(2);
\HEX0_DECODER|REG_4bits|ALT_INV_DOUT\(1) <= NOT \HEX0_DECODER|REG_4bits|DOUT\(1);
\HEX0_DECODER|REG_4bits|ALT_INV_DOUT\(3) <= NOT \HEX0_DECODER|REG_4bits|DOUT\(3);
\HEX0_DECODER|REG_4bits|ALT_INV_DOUT\(0) <= NOT \HEX0_DECODER|REG_4bits|DOUT\(0);
\ALT_INV_READ_BUS[0]~4_combout\ <= NOT \READ_BUS[0]~4_combout\;
\CPU|ULA1|ALT_INV_Add1~29_sumout\ <= NOT \CPU|ULA1|Add1~29_sumout\;
\CPU|ULA1|ALT_INV_Add1~25_sumout\ <= NOT \CPU|ULA1|Add1~25_sumout\;
\CPU|ULA1|ALT_INV_Add1~21_sumout\ <= NOT \CPU|ULA1|Add1~21_sumout\;
\CPU|ULA1|ALT_INV_Add1~17_sumout\ <= NOT \CPU|ULA1|Add1~17_sumout\;
\CPU|ULA1|ALT_INV_Add1~13_sumout\ <= NOT \CPU|ULA1|Add1~13_sumout\;
\CPU|ULA1|ALT_INV_Add1~9_sumout\ <= NOT \CPU|ULA1|Add1~9_sumout\;
\CPU|ULA1|ALT_INV_Add1~5_sumout\ <= NOT \CPU|ULA1|Add1~5_sumout\;
\CPU|INSTR|SOMA_CONST|ALT_INV_Add0~33_sumout\ <= NOT \CPU|INSTR|SOMA_CONST|Add0~33_sumout\;
\CPU|INSTR|SOMA_CONST|ALT_INV_Add0~29_sumout\ <= NOT \CPU|INSTR|SOMA_CONST|Add0~29_sumout\;
\CPU|INSTR|SOMA_CONST|ALT_INV_Add0~25_sumout\ <= NOT \CPU|INSTR|SOMA_CONST|Add0~25_sumout\;
\CPU|INSTR|SOMA_CONST|ALT_INV_Add0~21_sumout\ <= NOT \CPU|INSTR|SOMA_CONST|Add0~21_sumout\;
\CPU|INSTR|SOMA_CONST|ALT_INV_Add0~17_sumout\ <= NOT \CPU|INSTR|SOMA_CONST|Add0~17_sumout\;
\CPU|INSTR|SOMA_CONST|ALT_INV_Add0~13_sumout\ <= NOT \CPU|INSTR|SOMA_CONST|Add0~13_sumout\;
\CPU|INSTR|SOMA_CONST|ALT_INV_Add0~9_sumout\ <= NOT \CPU|INSTR|SOMA_CONST|Add0~9_sumout\;
\CPU|INSTR|SOMA_CONST|ALT_INV_Add0~5_sumout\ <= NOT \CPU|INSTR|SOMA_CONST|Add0~5_sumout\;
\CPU|INSTR|SOMA_CONST|ALT_INV_Add0~1_sumout\ <= NOT \CPU|INSTR|SOMA_CONST|Add0~1_sumout\;
\CPU|ULA1|ALT_INV_Add1~1_sumout\ <= NOT \CPU|ULA1|Add1~1_sumout\;
\CPU|REG_A|ALT_INV_DOUT\(7) <= NOT \CPU|REG_A|DOUT\(7);
\CPU|REG_A|ALT_INV_DOUT\(6) <= NOT \CPU|REG_A|DOUT\(6);
\CPU|REG_A|ALT_INV_DOUT\(5) <= NOT \CPU|REG_A|DOUT\(5);
\CPU|REG_A|ALT_INV_DOUT\(4) <= NOT \CPU|REG_A|DOUT\(4);
\CPU|REG_A|ALT_INV_DOUT\(2) <= NOT \CPU|REG_A|DOUT\(2);
\CPU|REG_A|ALT_INV_DOUT\(1) <= NOT \CPU|REG_A|DOUT\(1);
\CPU|REG_A|ALT_INV_DOUT\(3) <= NOT \CPU|REG_A|DOUT\(3);
\CPU|INSTR|PC|ALT_INV_DOUT\(3) <= NOT \CPU|INSTR|PC|DOUT\(3);
\CPU|INSTR|PC|ALT_INV_DOUT\(2) <= NOT \CPU|INSTR|PC|DOUT\(2);
\CPU|INSTR|PC|ALT_INV_DOUT\(1) <= NOT \CPU|INSTR|PC|DOUT\(1);
\CPU|INSTR|PC|ALT_INV_DOUT\(5) <= NOT \CPU|INSTR|PC|DOUT\(5);
\CPU|INSTR|PC|ALT_INV_DOUT\(4) <= NOT \CPU|INSTR|PC|DOUT\(4);
\CPU|INSTR|PC|ALT_INV_DOUT\(6) <= NOT \CPU|INSTR|PC|DOUT\(6);
\CPU|INSTR|PC|ALT_INV_DOUT\(7) <= NOT \CPU|INSTR|PC|DOUT\(7);
\CPU|INSTR|PC|ALT_INV_DOUT\(8) <= NOT \CPU|INSTR|PC|DOUT\(8);
\CPU|INSTR|PC|ALT_INV_DOUT\(0) <= NOT \CPU|INSTR|PC|DOUT\(0);
\CPU|REG_A|ALT_INV_DOUT\(0) <= NOT \CPU|REG_A|DOUT\(0);
\RAM|ALT_INV_ram~407_q\ <= NOT \RAM|ram~407_q\;
\RAM|ALT_INV_ram~151_q\ <= NOT \RAM|ram~151_q\;
\RAM|ALT_INV_ram~279_q\ <= NOT \RAM|ram~279_q\;
\RAM|ALT_INV_ram~23_q\ <= NOT \RAM|ram~23_q\;
\RAM|ALT_INV_ram~531_combout\ <= NOT \RAM|ram~531_combout\;
\ROM|ALT_INV_memROM~16_combout\ <= NOT \ROM|memROM~16_combout\;
\ROM|ALT_INV_memROM~15_combout\ <= NOT \ROM|memROM~15_combout\;
\RAM|ALT_INV_ram~530_combout\ <= NOT \RAM|ram~530_combout\;
\RAM|ALT_INV_ram~495_q\ <= NOT \RAM|ram~495_q\;
\RAM|ALT_INV_ram~239_q\ <= NOT \RAM|ram~239_q\;
\RAM|ALT_INV_ram~367_q\ <= NOT \RAM|ram~367_q\;
\RAM|ALT_INV_ram~111_q\ <= NOT \RAM|ram~111_q\;
\RAM|ALT_INV_ram~529_combout\ <= NOT \RAM|ram~529_combout\;
\RAM|ALT_INV_ram~463_q\ <= NOT \RAM|ram~463_q\;
\RAM|ALT_INV_ram~207_q\ <= NOT \RAM|ram~207_q\;
\RAM|ALT_INV_ram~335_q\ <= NOT \RAM|ram~335_q\;
\RAM|ALT_INV_ram~79_q\ <= NOT \RAM|ram~79_q\;
\RAM|ALT_INV_ram~528_combout\ <= NOT \RAM|ram~528_combout\;
\RAM|ALT_INV_ram~431_q\ <= NOT \RAM|ram~431_q\;
\RAM|ALT_INV_ram~175_q\ <= NOT \RAM|ram~175_q\;
\RAM|ALT_INV_ram~303_q\ <= NOT \RAM|ram~303_q\;
\RAM|ALT_INV_ram~47_q\ <= NOT \RAM|ram~47_q\;
\RAM|ALT_INV_ram~527_combout\ <= NOT \RAM|ram~527_combout\;
\ROM|ALT_INV_memROM~14_combout\ <= NOT \ROM|memROM~14_combout\;
\RAM|ALT_INV_ram~399_q\ <= NOT \RAM|ram~399_q\;
\RAM|ALT_INV_ram~143_q\ <= NOT \RAM|ram~143_q\;
\RAM|ALT_INV_ram~271_q\ <= NOT \RAM|ram~271_q\;
\RAM|ALT_INV_ram~15_q\ <= NOT \RAM|ram~15_q\;
\ALT_INV_ENABLE_LEDR~2_combout\ <= NOT \ENABLE_LEDR~2_combout\;
\ROM|ALT_INV_memROM~13_combout\ <= NOT \ROM|memROM~13_combout\;
\ROM|ALT_INV_memROM~12_combout\ <= NOT \ROM|memROM~12_combout\;
\ROM|ALT_INV_memROM~11_combout\ <= NOT \ROM|memROM~11_combout\;
\ROM|ALT_INV_memROM~10_combout\ <= NOT \ROM|memROM~10_combout\;
\ALT_INV_ENABLE_LEDR~0_combout\ <= NOT \ENABLE_LEDR~0_combout\;
\ROM|ALT_INV_memROM~9_combout\ <= NOT \ROM|memROM~9_combout\;
\ROM|ALT_INV_memROM~8_combout\ <= NOT \ROM|memROM~8_combout\;
\ROM|ALT_INV_memROM~7_combout\ <= NOT \ROM|memROM~7_combout\;
\ROM|ALT_INV_memROM~6_combout\ <= NOT \ROM|memROM~6_combout\;
\ROM|ALT_INV_memROM~5_combout\ <= NOT \ROM|memROM~5_combout\;
\CPU|DECODER|ALT_INV_Equal5~0_combout\ <= NOT \CPU|DECODER|Equal5~0_combout\;
\ROM|ALT_INV_memROM~4_combout\ <= NOT \ROM|memROM~4_combout\;
\ROM|ALT_INV_memROM~3_combout\ <= NOT \ROM|memROM~3_combout\;
\ROM|ALT_INV_memROM~2_combout\ <= NOT \ROM|memROM~2_combout\;
\ROM|ALT_INV_memROM~1_combout\ <= NOT \ROM|memROM~1_combout\;
\ROM|ALT_INV_memROM~0_combout\ <= NOT \ROM|memROM~0_combout\;
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
\RAM|ALT_INV_ram~410_q\ <= NOT \RAM|ram~410_q\;
\RAM|ALT_INV_ram~402_q\ <= NOT \RAM|ram~402_q\;
\RAM|ALT_INV_ram~282_q\ <= NOT \RAM|ram~282_q\;
\RAM|ALT_INV_ram~274_q\ <= NOT \RAM|ram~274_q\;
\RAM|ALT_INV_ram~552_combout\ <= NOT \RAM|ram~552_combout\;
\RAM|ALT_INV_ram~551_combout\ <= NOT \RAM|ram~551_combout\;
\RAM|ALT_INV_ram~250_q\ <= NOT \RAM|ram~250_q\;
\RAM|ALT_INV_ram~122_q\ <= NOT \RAM|ram~122_q\;
\RAM|ALT_INV_ram~186_q\ <= NOT \RAM|ram~186_q\;
\RAM|ALT_INV_ram~58_q\ <= NOT \RAM|ram~58_q\;
\RAM|ALT_INV_ram~550_combout\ <= NOT \RAM|ram~550_combout\;
\RAM|ALT_INV_ram~242_q\ <= NOT \RAM|ram~242_q\;
\RAM|ALT_INV_ram~114_q\ <= NOT \RAM|ram~114_q\;
\RAM|ALT_INV_ram~178_q\ <= NOT \RAM|ram~178_q\;
\RAM|ALT_INV_ram~50_q\ <= NOT \RAM|ram~50_q\;
\RAM|ALT_INV_ram~549_combout\ <= NOT \RAM|ram~549_combout\;
\RAM|ALT_INV_ram~218_q\ <= NOT \RAM|ram~218_q\;
\RAM|ALT_INV_ram~90_q\ <= NOT \RAM|ram~90_q\;
\RAM|ALT_INV_ram~154_q\ <= NOT \RAM|ram~154_q\;
\RAM|ALT_INV_ram~26_q\ <= NOT \RAM|ram~26_q\;
\RAM|ALT_INV_ram~548_combout\ <= NOT \RAM|ram~548_combout\;
\RAM|ALT_INV_ram~210_q\ <= NOT \RAM|ram~210_q\;
\RAM|ALT_INV_ram~82_q\ <= NOT \RAM|ram~82_q\;
\RAM|ALT_INV_ram~146_q\ <= NOT \RAM|ram~146_q\;
\RAM|ALT_INV_ram~18_q\ <= NOT \RAM|ram~18_q\;
\CPU|DECODER|ALT_INV_SEL_MUX~0_combout\ <= NOT \CPU|DECODER|SEL_MUX~0_combout\;
\CPU|INSTR|END_RETORNO|ALT_INV_DOUT\(3) <= NOT \CPU|INSTR|END_RETORNO|DOUT\(3);
\CPU|INSTR|END_RETORNO|ALT_INV_DOUT\(2) <= NOT \CPU|INSTR|END_RETORNO|DOUT\(2);
\CPU|INSTR|END_RETORNO|ALT_INV_DOUT\(1) <= NOT \CPU|INSTR|END_RETORNO|DOUT\(1);
\CPU|INSTR|END_RETORNO|ALT_INV_DOUT\(5) <= NOT \CPU|INSTR|END_RETORNO|DOUT\(5);
\CPU|INSTR|END_RETORNO|ALT_INV_DOUT\(4) <= NOT \CPU|INSTR|END_RETORNO|DOUT\(4);
\CPU|INSTR|END_RETORNO|ALT_INV_DOUT\(6) <= NOT \CPU|INSTR|END_RETORNO|DOUT\(6);
\CPU|INSTR|END_RETORNO|ALT_INV_DOUT\(7) <= NOT \CPU|INSTR|END_RETORNO|DOUT\(7);
\CPU|INSTR|END_RETORNO|ALT_INV_DOUT\(8) <= NOT \CPU|INSTR|END_RETORNO|DOUT\(8);
\CPU|INSTR|END_RETORNO|ALT_INV_DOUT\(0) <= NOT \CPU|INSTR|END_RETORNO|DOUT\(0);
\CPU|INSTR|MUX2|ALT_INV_Equal1~0_combout\ <= NOT \CPU|INSTR|MUX2|Equal1~0_combout\;
\CPU|INSTR|MUX2|ALT_INV_Equal2~0_combout\ <= NOT \CPU|INSTR|MUX2|Equal2~0_combout\;
\CPU|FLAG|ALT_INV_DOUT~q\ <= NOT \CPU|FLAG|DOUT~q\;
\CPU|DECODER|ALT_INV_OP_ULA[1]~0_combout\ <= NOT \CPU|DECODER|OP_ULA[1]~0_combout\;
\CPU|DECODER|ALT_INV_HAB_A~0_combout\ <= NOT \CPU|DECODER|HAB_A~0_combout\;
\CPU|DECODER|ALT_INV_sinais_controle~0_combout\ <= NOT \CPU|DECODER|sinais_controle~0_combout\;
\ROM|ALT_INV_memROM~22_combout\ <= NOT \ROM|memROM~22_combout\;
\ROM|ALT_INV_memROM~21_combout\ <= NOT \ROM|memROM~21_combout\;
\ROM|ALT_INV_memROM~20_combout\ <= NOT \ROM|memROM~20_combout\;
\ROM|ALT_INV_memROM~19_combout\ <= NOT \ROM|memROM~19_combout\;
\ALT_INV_READ_BUS[0]~1_combout\ <= NOT \READ_BUS[0]~1_combout\;
\FF_DEBOUNCER|ALT_INV_DOUT~q\ <= NOT \FF_DEBOUNCER|DOUT~q\;
\ALT_INV_ENABLE_SWR~2_combout\ <= NOT \ENABLE_SWR~2_combout\;
\ALT_INV_ENABLE_SWR~1_combout\ <= NOT \ENABLE_SWR~1_combout\;
\ALT_INV_ENABLE_SWR~0_combout\ <= NOT \ENABLE_SWR~0_combout\;
\ALT_INV_READ_BUS[0]~0_combout\ <= NOT \READ_BUS[0]~0_combout\;
\CPU|DECODER|ALT_INV_ENABLE_READ~0_combout\ <= NOT \CPU|DECODER|ENABLE_READ~0_combout\;
\ROM|ALT_INV_memROM~18_combout\ <= NOT \ROM|memROM~18_combout\;
\ROM|ALT_INV_memROM~17_combout\ <= NOT \ROM|memROM~17_combout\;
\RAM|ALT_INV_ram~547_combout\ <= NOT \RAM|ram~547_combout\;
\RAM|ALT_INV_ram~546_combout\ <= NOT \RAM|ram~546_combout\;
\RAM|ALT_INV_ram~545_combout\ <= NOT \RAM|ram~545_combout\;
\RAM|ALT_INV_ram~519_q\ <= NOT \RAM|ram~519_q\;
\RAM|ALT_INV_ram~263_q\ <= NOT \RAM|ram~263_q\;
\RAM|ALT_INV_ram~455_q\ <= NOT \RAM|ram~455_q\;
\RAM|ALT_INV_ram~199_q\ <= NOT \RAM|ram~199_q\;
\RAM|ALT_INV_ram~544_combout\ <= NOT \RAM|ram~544_combout\;
\RAM|ALT_INV_ram~487_q\ <= NOT \RAM|ram~487_q\;
\RAM|ALT_INV_ram~231_q\ <= NOT \RAM|ram~231_q\;
\RAM|ALT_INV_ram~423_q\ <= NOT \RAM|ram~423_q\;
\RAM|ALT_INV_ram~167_q\ <= NOT \RAM|ram~167_q\;
\RAM|ALT_INV_ram~543_combout\ <= NOT \RAM|ram~543_combout\;
\RAM|ALT_INV_ram~391_q\ <= NOT \RAM|ram~391_q\;
\RAM|ALT_INV_ram~135_q\ <= NOT \RAM|ram~135_q\;
\RAM|ALT_INV_ram~327_q\ <= NOT \RAM|ram~327_q\;
\RAM|ALT_INV_ram~71_q\ <= NOT \RAM|ram~71_q\;
\RAM|ALT_INV_ram~542_combout\ <= NOT \RAM|ram~542_combout\;
\RAM|ALT_INV_ram~359_q\ <= NOT \RAM|ram~359_q\;
\RAM|ALT_INV_ram~103_q\ <= NOT \RAM|ram~103_q\;
\RAM|ALT_INV_ram~295_q\ <= NOT \RAM|ram~295_q\;
\RAM|ALT_INV_ram~39_q\ <= NOT \RAM|ram~39_q\;
\RAM|ALT_INV_ram~541_combout\ <= NOT \RAM|ram~541_combout\;
\RAM|ALT_INV_ram~540_combout\ <= NOT \RAM|ram~540_combout\;
\RAM|ALT_INV_ram~511_q\ <= NOT \RAM|ram~511_q\;
\RAM|ALT_INV_ram~255_q\ <= NOT \RAM|ram~255_q\;
\RAM|ALT_INV_ram~383_q\ <= NOT \RAM|ram~383_q\;
\RAM|ALT_INV_ram~127_q\ <= NOT \RAM|ram~127_q\;
\RAM|ALT_INV_ram~539_combout\ <= NOT \RAM|ram~539_combout\;
\RAM|ALT_INV_ram~479_q\ <= NOT \RAM|ram~479_q\;
\RAM|ALT_INV_ram~223_q\ <= NOT \RAM|ram~223_q\;
\RAM|ALT_INV_ram~351_q\ <= NOT \RAM|ram~351_q\;
\RAM|ALT_INV_ram~95_q\ <= NOT \RAM|ram~95_q\;
\RAM|ALT_INV_ram~538_combout\ <= NOT \RAM|ram~538_combout\;
\RAM|ALT_INV_ram~447_q\ <= NOT \RAM|ram~447_q\;
\RAM|ALT_INV_ram~191_q\ <= NOT \RAM|ram~191_q\;
\RAM|ALT_INV_ram~319_q\ <= NOT \RAM|ram~319_q\;
\RAM|ALT_INV_ram~63_q\ <= NOT \RAM|ram~63_q\;
\RAM|ALT_INV_ram~537_combout\ <= NOT \RAM|ram~537_combout\;
\RAM|ALT_INV_ram~415_q\ <= NOT \RAM|ram~415_q\;
\RAM|ALT_INV_ram~159_q\ <= NOT \RAM|ram~159_q\;
\RAM|ALT_INV_ram~287_q\ <= NOT \RAM|ram~287_q\;
\RAM|ALT_INV_ram~31_q\ <= NOT \RAM|ram~31_q\;
\RAM|ALT_INV_ram~536_combout\ <= NOT \RAM|ram~536_combout\;
\RAM|ALT_INV_ram~535_combout\ <= NOT \RAM|ram~535_combout\;
\RAM|ALT_INV_ram~503_q\ <= NOT \RAM|ram~503_q\;
\RAM|ALT_INV_ram~247_q\ <= NOT \RAM|ram~247_q\;
\RAM|ALT_INV_ram~375_q\ <= NOT \RAM|ram~375_q\;
\RAM|ALT_INV_ram~119_q\ <= NOT \RAM|ram~119_q\;
\RAM|ALT_INV_ram~534_combout\ <= NOT \RAM|ram~534_combout\;
\RAM|ALT_INV_ram~471_q\ <= NOT \RAM|ram~471_q\;
\RAM|ALT_INV_ram~215_q\ <= NOT \RAM|ram~215_q\;
\RAM|ALT_INV_ram~343_q\ <= NOT \RAM|ram~343_q\;
\RAM|ALT_INV_ram~87_q\ <= NOT \RAM|ram~87_q\;
\RAM|ALT_INV_ram~533_combout\ <= NOT \RAM|ram~533_combout\;
\RAM|ALT_INV_ram~439_q\ <= NOT \RAM|ram~439_q\;
\RAM|ALT_INV_ram~183_q\ <= NOT \RAM|ram~183_q\;
\RAM|ALT_INV_ram~311_q\ <= NOT \RAM|ram~311_q\;
\RAM|ALT_INV_ram~55_q\ <= NOT \RAM|ram~55_q\;
\RAM|ALT_INV_ram~532_combout\ <= NOT \RAM|ram~532_combout\;
\RAM|ALT_INV_ram~408_q\ <= NOT \RAM|ram~408_q\;
\RAM|ALT_INV_ram~400_q\ <= NOT \RAM|ram~400_q\;
\RAM|ALT_INV_ram~583_combout\ <= NOT \RAM|ram~583_combout\;
\RAM|ALT_INV_ram~582_combout\ <= NOT \RAM|ram~582_combout\;
\RAM|ALT_INV_ram~264_q\ <= NOT \RAM|ram~264_q\;
\RAM|ALT_INV_ram~256_q\ <= NOT \RAM|ram~256_q\;
\RAM|ALT_INV_ram~232_q\ <= NOT \RAM|ram~232_q\;
\RAM|ALT_INV_ram~224_q\ <= NOT \RAM|ram~224_q\;
\RAM|ALT_INV_ram~581_combout\ <= NOT \RAM|ram~581_combout\;
\RAM|ALT_INV_ram~248_q\ <= NOT \RAM|ram~248_q\;
\RAM|ALT_INV_ram~240_q\ <= NOT \RAM|ram~240_q\;
\RAM|ALT_INV_ram~216_q\ <= NOT \RAM|ram~216_q\;
\RAM|ALT_INV_ram~208_q\ <= NOT \RAM|ram~208_q\;
\RAM|ALT_INV_ram~580_combout\ <= NOT \RAM|ram~580_combout\;
\RAM|ALT_INV_ram~200_q\ <= NOT \RAM|ram~200_q\;
\RAM|ALT_INV_ram~192_q\ <= NOT \RAM|ram~192_q\;
\RAM|ALT_INV_ram~168_q\ <= NOT \RAM|ram~168_q\;
\RAM|ALT_INV_ram~160_q\ <= NOT \RAM|ram~160_q\;
\RAM|ALT_INV_ram~579_combout\ <= NOT \RAM|ram~579_combout\;
\RAM|ALT_INV_ram~184_q\ <= NOT \RAM|ram~184_q\;
\RAM|ALT_INV_ram~176_q\ <= NOT \RAM|ram~176_q\;
\RAM|ALT_INV_ram~152_q\ <= NOT \RAM|ram~152_q\;
\RAM|ALT_INV_ram~144_q\ <= NOT \RAM|ram~144_q\;
\RAM|ALT_INV_ram~578_combout\ <= NOT \RAM|ram~578_combout\;
\RAM|ALT_INV_ram~577_combout\ <= NOT \RAM|ram~577_combout\;
\RAM|ALT_INV_ram~392_q\ <= NOT \RAM|ram~392_q\;
\RAM|ALT_INV_ram~376_q\ <= NOT \RAM|ram~376_q\;
\RAM|ALT_INV_ram~328_q\ <= NOT \RAM|ram~328_q\;
\RAM|ALT_INV_ram~312_q\ <= NOT \RAM|ram~312_q\;
\RAM|ALT_INV_ram~576_combout\ <= NOT \RAM|ram~576_combout\;
\RAM|ALT_INV_ram~384_q\ <= NOT \RAM|ram~384_q\;
\RAM|ALT_INV_ram~368_q\ <= NOT \RAM|ram~368_q\;
\RAM|ALT_INV_ram~320_q\ <= NOT \RAM|ram~320_q\;
\RAM|ALT_INV_ram~304_q\ <= NOT \RAM|ram~304_q\;
\RAM|ALT_INV_ram~575_combout\ <= NOT \RAM|ram~575_combout\;
\RAM|ALT_INV_ram~360_q\ <= NOT \RAM|ram~360_q\;
\RAM|ALT_INV_ram~344_q\ <= NOT \RAM|ram~344_q\;
\RAM|ALT_INV_ram~296_q\ <= NOT \RAM|ram~296_q\;
\RAM|ALT_INV_ram~280_q\ <= NOT \RAM|ram~280_q\;
\RAM|ALT_INV_ram~574_combout\ <= NOT \RAM|ram~574_combout\;
\RAM|ALT_INV_ram~352_q\ <= NOT \RAM|ram~352_q\;
\RAM|ALT_INV_ram~336_q\ <= NOT \RAM|ram~336_q\;
\RAM|ALT_INV_ram~288_q\ <= NOT \RAM|ram~288_q\;
\RAM|ALT_INV_ram~272_q\ <= NOT \RAM|ram~272_q\;
\RAM|ALT_INV_ram~573_combout\ <= NOT \RAM|ram~573_combout\;
\RAM|ALT_INV_ram~572_combout\ <= NOT \RAM|ram~572_combout\;
\RAM|ALT_INV_ram~136_q\ <= NOT \RAM|ram~136_q\;
\RAM|ALT_INV_ram~128_q\ <= NOT \RAM|ram~128_q\;
\RAM|ALT_INV_ram~104_q\ <= NOT \RAM|ram~104_q\;
\RAM|ALT_INV_ram~96_q\ <= NOT \RAM|ram~96_q\;
\RAM|ALT_INV_ram~571_combout\ <= NOT \RAM|ram~571_combout\;
\RAM|ALT_INV_ram~120_q\ <= NOT \RAM|ram~120_q\;
\RAM|ALT_INV_ram~112_q\ <= NOT \RAM|ram~112_q\;
\RAM|ALT_INV_ram~88_q\ <= NOT \RAM|ram~88_q\;
\RAM|ALT_INV_ram~80_q\ <= NOT \RAM|ram~80_q\;
\RAM|ALT_INV_ram~570_combout\ <= NOT \RAM|ram~570_combout\;
\RAM|ALT_INV_ram~72_q\ <= NOT \RAM|ram~72_q\;
\RAM|ALT_INV_ram~64_q\ <= NOT \RAM|ram~64_q\;
\RAM|ALT_INV_ram~40_q\ <= NOT \RAM|ram~40_q\;
\RAM|ALT_INV_ram~32_q\ <= NOT \RAM|ram~32_q\;
\RAM|ALT_INV_ram~569_combout\ <= NOT \RAM|ram~569_combout\;
\RAM|ALT_INV_ram~56_q\ <= NOT \RAM|ram~56_q\;
\RAM|ALT_INV_ram~48_q\ <= NOT \RAM|ram~48_q\;
\RAM|ALT_INV_ram~24_q\ <= NOT \RAM|ram~24_q\;
\RAM|ALT_INV_ram~16_q\ <= NOT \RAM|ram~16_q\;
\CPU|MUX1|ALT_INV_saida_MUX[3]~0_combout\ <= NOT \CPU|MUX1|saida_MUX[3]~0_combout\;
\RAM|ALT_INV_ram~568_combout\ <= NOT \RAM|ram~568_combout\;
\RAM|ALT_INV_ram~567_combout\ <= NOT \RAM|ram~567_combout\;
\RAM|ALT_INV_ram~566_combout\ <= NOT \RAM|ram~566_combout\;
\RAM|ALT_INV_ram~522_q\ <= NOT \RAM|ram~522_q\;
\RAM|ALT_INV_ram~394_q\ <= NOT \RAM|ram~394_q\;
\RAM|ALT_INV_ram~458_q\ <= NOT \RAM|ram~458_q\;
\RAM|ALT_INV_ram~330_q\ <= NOT \RAM|ram~330_q\;
\RAM|ALT_INV_ram~565_combout\ <= NOT \RAM|ram~565_combout\;
\RAM|ALT_INV_ram~514_q\ <= NOT \RAM|ram~514_q\;
\RAM|ALT_INV_ram~386_q\ <= NOT \RAM|ram~386_q\;
\RAM|ALT_INV_ram~450_q\ <= NOT \RAM|ram~450_q\;
\RAM|ALT_INV_ram~322_q\ <= NOT \RAM|ram~322_q\;
\RAM|ALT_INV_ram~564_combout\ <= NOT \RAM|ram~564_combout\;
\RAM|ALT_INV_ram~490_q\ <= NOT \RAM|ram~490_q\;
\RAM|ALT_INV_ram~362_q\ <= NOT \RAM|ram~362_q\;
\RAM|ALT_INV_ram~426_q\ <= NOT \RAM|ram~426_q\;
\RAM|ALT_INV_ram~298_q\ <= NOT \RAM|ram~298_q\;
\RAM|ALT_INV_ram~563_combout\ <= NOT \RAM|ram~563_combout\;
\RAM|ALT_INV_ram~482_q\ <= NOT \RAM|ram~482_q\;
\RAM|ALT_INV_ram~354_q\ <= NOT \RAM|ram~354_q\;
\RAM|ALT_INV_ram~418_q\ <= NOT \RAM|ram~418_q\;
\RAM|ALT_INV_ram~290_q\ <= NOT \RAM|ram~290_q\;
\RAM|ALT_INV_ram~562_combout\ <= NOT \RAM|ram~562_combout\;
\RAM|ALT_INV_ram~561_combout\ <= NOT \RAM|ram~561_combout\;
\RAM|ALT_INV_ram~266_q\ <= NOT \RAM|ram~266_q\;
\RAM|ALT_INV_ram~234_q\ <= NOT \RAM|ram~234_q\;
\RAM|ALT_INV_ram~138_q\ <= NOT \RAM|ram~138_q\;
\RAM|ALT_INV_ram~106_q\ <= NOT \RAM|ram~106_q\;
\RAM|ALT_INV_ram~560_combout\ <= NOT \RAM|ram~560_combout\;
\RAM|ALT_INV_ram~258_q\ <= NOT \RAM|ram~258_q\;
\RAM|ALT_INV_ram~226_q\ <= NOT \RAM|ram~226_q\;
\RAM|ALT_INV_ram~130_q\ <= NOT \RAM|ram~130_q\;
\RAM|ALT_INV_ram~98_q\ <= NOT \RAM|ram~98_q\;
\RAM|ALT_INV_ram~559_combout\ <= NOT \RAM|ram~559_combout\;
\RAM|ALT_INV_ram~202_q\ <= NOT \RAM|ram~202_q\;
\RAM|ALT_INV_ram~170_q\ <= NOT \RAM|ram~170_q\;
\RAM|ALT_INV_ram~74_q\ <= NOT \RAM|ram~74_q\;
\RAM|ALT_INV_ram~42_q\ <= NOT \RAM|ram~42_q\;
\RAM|ALT_INV_ram~558_combout\ <= NOT \RAM|ram~558_combout\;
\RAM|ALT_INV_ram~194_q\ <= NOT \RAM|ram~194_q\;
\RAM|ALT_INV_ram~162_q\ <= NOT \RAM|ram~162_q\;
\RAM|ALT_INV_ram~66_q\ <= NOT \RAM|ram~66_q\;
\RAM|ALT_INV_ram~34_q\ <= NOT \RAM|ram~34_q\;
\RAM|ALT_INV_ram~557_combout\ <= NOT \RAM|ram~557_combout\;
\RAM|ALT_INV_ram~556_combout\ <= NOT \RAM|ram~556_combout\;
\RAM|ALT_INV_ram~506_q\ <= NOT \RAM|ram~506_q\;
\RAM|ALT_INV_ram~498_q\ <= NOT \RAM|ram~498_q\;
\RAM|ALT_INV_ram~378_q\ <= NOT \RAM|ram~378_q\;
\RAM|ALT_INV_ram~370_q\ <= NOT \RAM|ram~370_q\;
\RAM|ALT_INV_ram~555_combout\ <= NOT \RAM|ram~555_combout\;
\RAM|ALT_INV_ram~474_q\ <= NOT \RAM|ram~474_q\;
\RAM|ALT_INV_ram~466_q\ <= NOT \RAM|ram~466_q\;
\RAM|ALT_INV_ram~346_q\ <= NOT \RAM|ram~346_q\;
\RAM|ALT_INV_ram~338_q\ <= NOT \RAM|ram~338_q\;
\RAM|ALT_INV_ram~554_combout\ <= NOT \RAM|ram~554_combout\;
\RAM|ALT_INV_ram~442_q\ <= NOT \RAM|ram~442_q\;
\RAM|ALT_INV_ram~434_q\ <= NOT \RAM|ram~434_q\;
\RAM|ALT_INV_ram~314_q\ <= NOT \RAM|ram~314_q\;
\RAM|ALT_INV_ram~306_q\ <= NOT \RAM|ram~306_q\;
\RAM|ALT_INV_ram~553_combout\ <= NOT \RAM|ram~553_combout\;
\RAM|ALT_INV_ram~131_q\ <= NOT \RAM|ram~131_q\;
\RAM|ALT_INV_ram~123_q\ <= NOT \RAM|ram~123_q\;
\RAM|ALT_INV_ram~115_q\ <= NOT \RAM|ram~115_q\;
\RAM|ALT_INV_ram~613_combout\ <= NOT \RAM|ram~613_combout\;
\RAM|ALT_INV_ram~107_q\ <= NOT \RAM|ram~107_q\;
\RAM|ALT_INV_ram~99_q\ <= NOT \RAM|ram~99_q\;
\RAM|ALT_INV_ram~91_q\ <= NOT \RAM|ram~91_q\;
\RAM|ALT_INV_ram~83_q\ <= NOT \RAM|ram~83_q\;
\RAM|ALT_INV_ram~612_combout\ <= NOT \RAM|ram~612_combout\;
\RAM|ALT_INV_ram~75_q\ <= NOT \RAM|ram~75_q\;
\RAM|ALT_INV_ram~67_q\ <= NOT \RAM|ram~67_q\;
\RAM|ALT_INV_ram~59_q\ <= NOT \RAM|ram~59_q\;
\RAM|ALT_INV_ram~51_q\ <= NOT \RAM|ram~51_q\;
\RAM|ALT_INV_ram~611_combout\ <= NOT \RAM|ram~611_combout\;
\RAM|ALT_INV_ram~43_q\ <= NOT \RAM|ram~43_q\;
\RAM|ALT_INV_ram~35_q\ <= NOT \RAM|ram~35_q\;
\RAM|ALT_INV_ram~27_q\ <= NOT \RAM|ram~27_q\;
\RAM|ALT_INV_ram~19_q\ <= NOT \RAM|ram~19_q\;
\CPU|MUX1|ALT_INV_saida_MUX[2]~2_combout\ <= NOT \CPU|MUX1|saida_MUX[2]~2_combout\;
\RAM|ALT_INV_ram~610_combout\ <= NOT \RAM|ram~610_combout\;
\RAM|ALT_INV_ram~609_combout\ <= NOT \RAM|ram~609_combout\;
\RAM|ALT_INV_ram~608_combout\ <= NOT \RAM|ram~608_combout\;
\RAM|ALT_INV_ram~521_q\ <= NOT \RAM|ram~521_q\;
\RAM|ALT_INV_ram~265_q\ <= NOT \RAM|ram~265_q\;
\RAM|ALT_INV_ram~505_q\ <= NOT \RAM|ram~505_q\;
\RAM|ALT_INV_ram~249_q\ <= NOT \RAM|ram~249_q\;
\RAM|ALT_INV_ram~607_combout\ <= NOT \RAM|ram~607_combout\;
\RAM|ALT_INV_ram~457_q\ <= NOT \RAM|ram~457_q\;
\RAM|ALT_INV_ram~201_q\ <= NOT \RAM|ram~201_q\;
\RAM|ALT_INV_ram~441_q\ <= NOT \RAM|ram~441_q\;
\RAM|ALT_INV_ram~185_q\ <= NOT \RAM|ram~185_q\;
\RAM|ALT_INV_ram~606_combout\ <= NOT \RAM|ram~606_combout\;
\RAM|ALT_INV_ram~393_q\ <= NOT \RAM|ram~393_q\;
\RAM|ALT_INV_ram~137_q\ <= NOT \RAM|ram~137_q\;
\RAM|ALT_INV_ram~377_q\ <= NOT \RAM|ram~377_q\;
\RAM|ALT_INV_ram~121_q\ <= NOT \RAM|ram~121_q\;
\RAM|ALT_INV_ram~605_combout\ <= NOT \RAM|ram~605_combout\;
\RAM|ALT_INV_ram~329_q\ <= NOT \RAM|ram~329_q\;
\RAM|ALT_INV_ram~73_q\ <= NOT \RAM|ram~73_q\;
\RAM|ALT_INV_ram~313_q\ <= NOT \RAM|ram~313_q\;
\RAM|ALT_INV_ram~57_q\ <= NOT \RAM|ram~57_q\;
\RAM|ALT_INV_ram~604_combout\ <= NOT \RAM|ram~604_combout\;
\RAM|ALT_INV_ram~603_combout\ <= NOT \RAM|ram~603_combout\;
\RAM|ALT_INV_ram~489_q\ <= NOT \RAM|ram~489_q\;
\RAM|ALT_INV_ram~233_q\ <= NOT \RAM|ram~233_q\;
\RAM|ALT_INV_ram~361_q\ <= NOT \RAM|ram~361_q\;
\RAM|ALT_INV_ram~105_q\ <= NOT \RAM|ram~105_q\;
\RAM|ALT_INV_ram~602_combout\ <= NOT \RAM|ram~602_combout\;
\RAM|ALT_INV_ram~473_q\ <= NOT \RAM|ram~473_q\;
\RAM|ALT_INV_ram~217_q\ <= NOT \RAM|ram~217_q\;
\RAM|ALT_INV_ram~345_q\ <= NOT \RAM|ram~345_q\;
\RAM|ALT_INV_ram~89_q\ <= NOT \RAM|ram~89_q\;
\RAM|ALT_INV_ram~601_combout\ <= NOT \RAM|ram~601_combout\;
\RAM|ALT_INV_ram~425_q\ <= NOT \RAM|ram~425_q\;
\RAM|ALT_INV_ram~169_q\ <= NOT \RAM|ram~169_q\;
\RAM|ALT_INV_ram~297_q\ <= NOT \RAM|ram~297_q\;
\RAM|ALT_INV_ram~41_q\ <= NOT \RAM|ram~41_q\;
\RAM|ALT_INV_ram~600_combout\ <= NOT \RAM|ram~600_combout\;
\RAM|ALT_INV_ram~409_q\ <= NOT \RAM|ram~409_q\;
\RAM|ALT_INV_ram~153_q\ <= NOT \RAM|ram~153_q\;
\RAM|ALT_INV_ram~281_q\ <= NOT \RAM|ram~281_q\;
\RAM|ALT_INV_ram~25_q\ <= NOT \RAM|ram~25_q\;
\RAM|ALT_INV_ram~599_combout\ <= NOT \RAM|ram~599_combout\;
\RAM|ALT_INV_ram~598_combout\ <= NOT \RAM|ram~598_combout\;
\RAM|ALT_INV_ram~513_q\ <= NOT \RAM|ram~513_q\;
\RAM|ALT_INV_ram~257_q\ <= NOT \RAM|ram~257_q\;
\RAM|ALT_INV_ram~497_q\ <= NOT \RAM|ram~497_q\;
\RAM|ALT_INV_ram~241_q\ <= NOT \RAM|ram~241_q\;
\RAM|ALT_INV_ram~597_combout\ <= NOT \RAM|ram~597_combout\;
\RAM|ALT_INV_ram~385_q\ <= NOT \RAM|ram~385_q\;
\RAM|ALT_INV_ram~129_q\ <= NOT \RAM|ram~129_q\;
\RAM|ALT_INV_ram~369_q\ <= NOT \RAM|ram~369_q\;
\RAM|ALT_INV_ram~113_q\ <= NOT \RAM|ram~113_q\;
\RAM|ALT_INV_ram~596_combout\ <= NOT \RAM|ram~596_combout\;
\RAM|ALT_INV_ram~449_q\ <= NOT \RAM|ram~449_q\;
\RAM|ALT_INV_ram~193_q\ <= NOT \RAM|ram~193_q\;
\RAM|ALT_INV_ram~433_q\ <= NOT \RAM|ram~433_q\;
\RAM|ALT_INV_ram~177_q\ <= NOT \RAM|ram~177_q\;
\RAM|ALT_INV_ram~595_combout\ <= NOT \RAM|ram~595_combout\;
\RAM|ALT_INV_ram~321_q\ <= NOT \RAM|ram~321_q\;
\RAM|ALT_INV_ram~65_q\ <= NOT \RAM|ram~65_q\;
\RAM|ALT_INV_ram~305_q\ <= NOT \RAM|ram~305_q\;
\RAM|ALT_INV_ram~49_q\ <= NOT \RAM|ram~49_q\;
\RAM|ALT_INV_ram~594_combout\ <= NOT \RAM|ram~594_combout\;
\RAM|ALT_INV_ram~593_combout\ <= NOT \RAM|ram~593_combout\;
\RAM|ALT_INV_ram~481_q\ <= NOT \RAM|ram~481_q\;
\RAM|ALT_INV_ram~225_q\ <= NOT \RAM|ram~225_q\;
\RAM|ALT_INV_ram~465_q\ <= NOT \RAM|ram~465_q\;
\RAM|ALT_INV_ram~209_q\ <= NOT \RAM|ram~209_q\;
\RAM|ALT_INV_ram~592_combout\ <= NOT \RAM|ram~592_combout\;
\RAM|ALT_INV_ram~353_q\ <= NOT \RAM|ram~353_q\;
\RAM|ALT_INV_ram~97_q\ <= NOT \RAM|ram~97_q\;
\RAM|ALT_INV_ram~337_q\ <= NOT \RAM|ram~337_q\;
\RAM|ALT_INV_ram~81_q\ <= NOT \RAM|ram~81_q\;
\RAM|ALT_INV_ram~591_combout\ <= NOT \RAM|ram~591_combout\;
\RAM|ALT_INV_ram~417_q\ <= NOT \RAM|ram~417_q\;
\RAM|ALT_INV_ram~161_q\ <= NOT \RAM|ram~161_q\;
\RAM|ALT_INV_ram~401_q\ <= NOT \RAM|ram~401_q\;
\RAM|ALT_INV_ram~145_q\ <= NOT \RAM|ram~145_q\;
\RAM|ALT_INV_ram~590_combout\ <= NOT \RAM|ram~590_combout\;
\RAM|ALT_INV_ram~289_q\ <= NOT \RAM|ram~289_q\;
\RAM|ALT_INV_ram~33_q\ <= NOT \RAM|ram~33_q\;
\RAM|ALT_INV_ram~273_q\ <= NOT \RAM|ram~273_q\;
\RAM|ALT_INV_ram~17_q\ <= NOT \RAM|ram~17_q\;
\CPU|MUX1|ALT_INV_saida_MUX[1]~1_combout\ <= NOT \CPU|MUX1|saida_MUX[1]~1_combout\;
\RAM|ALT_INV_ram~589_combout\ <= NOT \RAM|ram~589_combout\;
\RAM|ALT_INV_ram~588_combout\ <= NOT \RAM|ram~588_combout\;
\RAM|ALT_INV_ram~587_combout\ <= NOT \RAM|ram~587_combout\;
\RAM|ALT_INV_ram~520_q\ <= NOT \RAM|ram~520_q\;
\RAM|ALT_INV_ram~512_q\ <= NOT \RAM|ram~512_q\;
\RAM|ALT_INV_ram~488_q\ <= NOT \RAM|ram~488_q\;
\RAM|ALT_INV_ram~480_q\ <= NOT \RAM|ram~480_q\;
\RAM|ALT_INV_ram~586_combout\ <= NOT \RAM|ram~586_combout\;
\RAM|ALT_INV_ram~504_q\ <= NOT \RAM|ram~504_q\;
\RAM|ALT_INV_ram~496_q\ <= NOT \RAM|ram~496_q\;
\RAM|ALT_INV_ram~472_q\ <= NOT \RAM|ram~472_q\;
\RAM|ALT_INV_ram~464_q\ <= NOT \RAM|ram~464_q\;
\RAM|ALT_INV_ram~585_combout\ <= NOT \RAM|ram~585_combout\;
\RAM|ALT_INV_ram~456_q\ <= NOT \RAM|ram~456_q\;
\RAM|ALT_INV_ram~448_q\ <= NOT \RAM|ram~448_q\;
\RAM|ALT_INV_ram~424_q\ <= NOT \RAM|ram~424_q\;
\RAM|ALT_INV_ram~416_q\ <= NOT \RAM|ram~416_q\;
\RAM|ALT_INV_ram~584_combout\ <= NOT \RAM|ram~584_combout\;
\RAM|ALT_INV_ram~440_q\ <= NOT \RAM|ram~440_q\;
\RAM|ALT_INV_ram~432_q\ <= NOT \RAM|ram~432_q\;
\RAM|ALT_INV_ram~220_q\ <= NOT \RAM|ram~220_q\;
\RAM|ALT_INV_ram~644_combout\ <= NOT \RAM|ram~644_combout\;
\RAM|ALT_INV_ram~140_q\ <= NOT \RAM|ram~140_q\;
\RAM|ALT_INV_ram~124_q\ <= NOT \RAM|ram~124_q\;
\RAM|ALT_INV_ram~108_q\ <= NOT \RAM|ram~108_q\;
\RAM|ALT_INV_ram~92_q\ <= NOT \RAM|ram~92_q\;
\RAM|ALT_INV_ram~643_combout\ <= NOT \RAM|ram~643_combout\;
\RAM|ALT_INV_ram~204_q\ <= NOT \RAM|ram~204_q\;
\RAM|ALT_INV_ram~188_q\ <= NOT \RAM|ram~188_q\;
\RAM|ALT_INV_ram~172_q\ <= NOT \RAM|ram~172_q\;
\RAM|ALT_INV_ram~156_q\ <= NOT \RAM|ram~156_q\;
\RAM|ALT_INV_ram~642_combout\ <= NOT \RAM|ram~642_combout\;
\RAM|ALT_INV_ram~76_q\ <= NOT \RAM|ram~76_q\;
\RAM|ALT_INV_ram~60_q\ <= NOT \RAM|ram~60_q\;
\RAM|ALT_INV_ram~44_q\ <= NOT \RAM|ram~44_q\;
\RAM|ALT_INV_ram~28_q\ <= NOT \RAM|ram~28_q\;
\RAM|ALT_INV_ram~641_combout\ <= NOT \RAM|ram~641_combout\;
\RAM|ALT_INV_ram~640_combout\ <= NOT \RAM|ram~640_combout\;
\RAM|ALT_INV_ram~516_q\ <= NOT \RAM|ram~516_q\;
\RAM|ALT_INV_ram~484_q\ <= NOT \RAM|ram~484_q\;
\RAM|ALT_INV_ram~388_q\ <= NOT \RAM|ram~388_q\;
\RAM|ALT_INV_ram~356_q\ <= NOT \RAM|ram~356_q\;
\RAM|ALT_INV_ram~639_combout\ <= NOT \RAM|ram~639_combout\;
\RAM|ALT_INV_ram~500_q\ <= NOT \RAM|ram~500_q\;
\RAM|ALT_INV_ram~468_q\ <= NOT \RAM|ram~468_q\;
\RAM|ALT_INV_ram~372_q\ <= NOT \RAM|ram~372_q\;
\RAM|ALT_INV_ram~340_q\ <= NOT \RAM|ram~340_q\;
\RAM|ALT_INV_ram~638_combout\ <= NOT \RAM|ram~638_combout\;
\RAM|ALT_INV_ram~452_q\ <= NOT \RAM|ram~452_q\;
\RAM|ALT_INV_ram~420_q\ <= NOT \RAM|ram~420_q\;
\RAM|ALT_INV_ram~324_q\ <= NOT \RAM|ram~324_q\;
\RAM|ALT_INV_ram~292_q\ <= NOT \RAM|ram~292_q\;
\RAM|ALT_INV_ram~637_combout\ <= NOT \RAM|ram~637_combout\;
\RAM|ALT_INV_ram~436_q\ <= NOT \RAM|ram~436_q\;
\RAM|ALT_INV_ram~404_q\ <= NOT \RAM|ram~404_q\;
\RAM|ALT_INV_ram~308_q\ <= NOT \RAM|ram~308_q\;
\RAM|ALT_INV_ram~276_q\ <= NOT \RAM|ram~276_q\;
\RAM|ALT_INV_ram~636_combout\ <= NOT \RAM|ram~636_combout\;
\RAM|ALT_INV_ram~635_combout\ <= NOT \RAM|ram~635_combout\;
\RAM|ALT_INV_ram~260_q\ <= NOT \RAM|ram~260_q\;
\RAM|ALT_INV_ram~244_q\ <= NOT \RAM|ram~244_q\;
\RAM|ALT_INV_ram~228_q\ <= NOT \RAM|ram~228_q\;
\RAM|ALT_INV_ram~212_q\ <= NOT \RAM|ram~212_q\;
\RAM|ALT_INV_ram~634_combout\ <= NOT \RAM|ram~634_combout\;
\RAM|ALT_INV_ram~132_q\ <= NOT \RAM|ram~132_q\;
\RAM|ALT_INV_ram~116_q\ <= NOT \RAM|ram~116_q\;
\RAM|ALT_INV_ram~100_q\ <= NOT \RAM|ram~100_q\;
\RAM|ALT_INV_ram~84_q\ <= NOT \RAM|ram~84_q\;
\RAM|ALT_INV_ram~633_combout\ <= NOT \RAM|ram~633_combout\;
\RAM|ALT_INV_ram~196_q\ <= NOT \RAM|ram~196_q\;
\RAM|ALT_INV_ram~180_q\ <= NOT \RAM|ram~180_q\;
\RAM|ALT_INV_ram~164_q\ <= NOT \RAM|ram~164_q\;
\RAM|ALT_INV_ram~148_q\ <= NOT \RAM|ram~148_q\;
\RAM|ALT_INV_ram~632_combout\ <= NOT \RAM|ram~632_combout\;
\RAM|ALT_INV_ram~68_q\ <= NOT \RAM|ram~68_q\;
\RAM|ALT_INV_ram~52_q\ <= NOT \RAM|ram~52_q\;
\RAM|ALT_INV_ram~36_q\ <= NOT \RAM|ram~36_q\;
\RAM|ALT_INV_ram~20_q\ <= NOT \RAM|ram~20_q\;
\CPU|MUX1|ALT_INV_saida_MUX[4]~3_combout\ <= NOT \CPU|MUX1|saida_MUX[4]~3_combout\;
\RAM|ALT_INV_ram~631_combout\ <= NOT \RAM|ram~631_combout\;
\RAM|ALT_INV_ram~630_combout\ <= NOT \RAM|ram~630_combout\;
\RAM|ALT_INV_ram~629_combout\ <= NOT \RAM|ram~629_combout\;
\RAM|ALT_INV_ram~523_q\ <= NOT \RAM|ram~523_q\;
\RAM|ALT_INV_ram~507_q\ <= NOT \RAM|ram~507_q\;
\RAM|ALT_INV_ram~515_q\ <= NOT \RAM|ram~515_q\;
\RAM|ALT_INV_ram~499_q\ <= NOT \RAM|ram~499_q\;
\RAM|ALT_INV_ram~628_combout\ <= NOT \RAM|ram~628_combout\;
\RAM|ALT_INV_ram~491_q\ <= NOT \RAM|ram~491_q\;
\RAM|ALT_INV_ram~475_q\ <= NOT \RAM|ram~475_q\;
\RAM|ALT_INV_ram~483_q\ <= NOT \RAM|ram~483_q\;
\RAM|ALT_INV_ram~467_q\ <= NOT \RAM|ram~467_q\;
\RAM|ALT_INV_ram~627_combout\ <= NOT \RAM|ram~627_combout\;
\RAM|ALT_INV_ram~459_q\ <= NOT \RAM|ram~459_q\;
\RAM|ALT_INV_ram~443_q\ <= NOT \RAM|ram~443_q\;
\RAM|ALT_INV_ram~451_q\ <= NOT \RAM|ram~451_q\;
\RAM|ALT_INV_ram~435_q\ <= NOT \RAM|ram~435_q\;
\RAM|ALT_INV_ram~626_combout\ <= NOT \RAM|ram~626_combout\;
\RAM|ALT_INV_ram~427_q\ <= NOT \RAM|ram~427_q\;
\RAM|ALT_INV_ram~411_q\ <= NOT \RAM|ram~411_q\;
\RAM|ALT_INV_ram~419_q\ <= NOT \RAM|ram~419_q\;
\RAM|ALT_INV_ram~403_q\ <= NOT \RAM|ram~403_q\;
\RAM|ALT_INV_ram~625_combout\ <= NOT \RAM|ram~625_combout\;
\RAM|ALT_INV_ram~624_combout\ <= NOT \RAM|ram~624_combout\;
\RAM|ALT_INV_ram~267_q\ <= NOT \RAM|ram~267_q\;
\RAM|ALT_INV_ram~259_q\ <= NOT \RAM|ram~259_q\;
\RAM|ALT_INV_ram~203_q\ <= NOT \RAM|ram~203_q\;
\RAM|ALT_INV_ram~195_q\ <= NOT \RAM|ram~195_q\;
\RAM|ALT_INV_ram~623_combout\ <= NOT \RAM|ram~623_combout\;
\RAM|ALT_INV_ram~251_q\ <= NOT \RAM|ram~251_q\;
\RAM|ALT_INV_ram~243_q\ <= NOT \RAM|ram~243_q\;
\RAM|ALT_INV_ram~187_q\ <= NOT \RAM|ram~187_q\;
\RAM|ALT_INV_ram~179_q\ <= NOT \RAM|ram~179_q\;
\RAM|ALT_INV_ram~622_combout\ <= NOT \RAM|ram~622_combout\;
\RAM|ALT_INV_ram~235_q\ <= NOT \RAM|ram~235_q\;
\RAM|ALT_INV_ram~227_q\ <= NOT \RAM|ram~227_q\;
\RAM|ALT_INV_ram~171_q\ <= NOT \RAM|ram~171_q\;
\RAM|ALT_INV_ram~163_q\ <= NOT \RAM|ram~163_q\;
\RAM|ALT_INV_ram~621_combout\ <= NOT \RAM|ram~621_combout\;
\RAM|ALT_INV_ram~219_q\ <= NOT \RAM|ram~219_q\;
\RAM|ALT_INV_ram~211_q\ <= NOT \RAM|ram~211_q\;
\RAM|ALT_INV_ram~155_q\ <= NOT \RAM|ram~155_q\;
\RAM|ALT_INV_ram~147_q\ <= NOT \RAM|ram~147_q\;
\RAM|ALT_INV_ram~620_combout\ <= NOT \RAM|ram~620_combout\;
\RAM|ALT_INV_ram~619_combout\ <= NOT \RAM|ram~619_combout\;
\RAM|ALT_INV_ram~395_q\ <= NOT \RAM|ram~395_q\;
\RAM|ALT_INV_ram~387_q\ <= NOT \RAM|ram~387_q\;
\RAM|ALT_INV_ram~363_q\ <= NOT \RAM|ram~363_q\;
\RAM|ALT_INV_ram~355_q\ <= NOT \RAM|ram~355_q\;
\RAM|ALT_INV_ram~618_combout\ <= NOT \RAM|ram~618_combout\;
\RAM|ALT_INV_ram~379_q\ <= NOT \RAM|ram~379_q\;
\RAM|ALT_INV_ram~371_q\ <= NOT \RAM|ram~371_q\;
\RAM|ALT_INV_ram~347_q\ <= NOT \RAM|ram~347_q\;
\RAM|ALT_INV_ram~339_q\ <= NOT \RAM|ram~339_q\;
\RAM|ALT_INV_ram~617_combout\ <= NOT \RAM|ram~617_combout\;
\RAM|ALT_INV_ram~331_q\ <= NOT \RAM|ram~331_q\;
\RAM|ALT_INV_ram~323_q\ <= NOT \RAM|ram~323_q\;
\RAM|ALT_INV_ram~299_q\ <= NOT \RAM|ram~299_q\;
\RAM|ALT_INV_ram~291_q\ <= NOT \RAM|ram~291_q\;
\RAM|ALT_INV_ram~616_combout\ <= NOT \RAM|ram~616_combout\;
\RAM|ALT_INV_ram~315_q\ <= NOT \RAM|ram~315_q\;
\RAM|ALT_INV_ram~307_q\ <= NOT \RAM|ram~307_q\;
\RAM|ALT_INV_ram~283_q\ <= NOT \RAM|ram~283_q\;
\RAM|ALT_INV_ram~275_q\ <= NOT \RAM|ram~275_q\;
\RAM|ALT_INV_ram~615_combout\ <= NOT \RAM|ram~615_combout\;
\RAM|ALT_INV_ram~614_combout\ <= NOT \RAM|ram~614_combout\;
\RAM|ALT_INV_ram~139_q\ <= NOT \RAM|ram~139_q\;
\RAM|ALT_INV_ram~86_q\ <= NOT \RAM|ram~86_q\;
\RAM|ALT_INV_ram~675_combout\ <= NOT \RAM|ram~675_combout\;
\RAM|ALT_INV_ram~190_q\ <= NOT \RAM|ram~190_q\;
\RAM|ALT_INV_ram~182_q\ <= NOT \RAM|ram~182_q\;
\RAM|ALT_INV_ram~62_q\ <= NOT \RAM|ram~62_q\;
\RAM|ALT_INV_ram~54_q\ <= NOT \RAM|ram~54_q\;
\RAM|ALT_INV_ram~674_combout\ <= NOT \RAM|ram~674_combout\;
\RAM|ALT_INV_ram~158_q\ <= NOT \RAM|ram~158_q\;
\RAM|ALT_INV_ram~150_q\ <= NOT \RAM|ram~150_q\;
\RAM|ALT_INV_ram~30_q\ <= NOT \RAM|ram~30_q\;
\RAM|ALT_INV_ram~22_q\ <= NOT \RAM|ram~22_q\;
\CPU|MUX1|ALT_INV_saida_MUX[6]~5_combout\ <= NOT \CPU|MUX1|saida_MUX[6]~5_combout\;
\RAM|ALT_INV_ram~673_combout\ <= NOT \RAM|ram~673_combout\;
\RAM|ALT_INV_ram~672_combout\ <= NOT \RAM|ram~672_combout\;
\RAM|ALT_INV_ram~671_combout\ <= NOT \RAM|ram~671_combout\;
\RAM|ALT_INV_ram~525_q\ <= NOT \RAM|ram~525_q\;
\RAM|ALT_INV_ram~509_q\ <= NOT \RAM|ram~509_q\;
\RAM|ALT_INV_ram~517_q\ <= NOT \RAM|ram~517_q\;
\RAM|ALT_INV_ram~501_q\ <= NOT \RAM|ram~501_q\;
\RAM|ALT_INV_ram~670_combout\ <= NOT \RAM|ram~670_combout\;
\RAM|ALT_INV_ram~397_q\ <= NOT \RAM|ram~397_q\;
\RAM|ALT_INV_ram~381_q\ <= NOT \RAM|ram~381_q\;
\RAM|ALT_INV_ram~389_q\ <= NOT \RAM|ram~389_q\;
\RAM|ALT_INV_ram~373_q\ <= NOT \RAM|ram~373_q\;
\RAM|ALT_INV_ram~669_combout\ <= NOT \RAM|ram~669_combout\;
\RAM|ALT_INV_ram~461_q\ <= NOT \RAM|ram~461_q\;
\RAM|ALT_INV_ram~445_q\ <= NOT \RAM|ram~445_q\;
\RAM|ALT_INV_ram~453_q\ <= NOT \RAM|ram~453_q\;
\RAM|ALT_INV_ram~437_q\ <= NOT \RAM|ram~437_q\;
\RAM|ALT_INV_ram~668_combout\ <= NOT \RAM|ram~668_combout\;
\RAM|ALT_INV_ram~333_q\ <= NOT \RAM|ram~333_q\;
\RAM|ALT_INV_ram~317_q\ <= NOT \RAM|ram~317_q\;
\RAM|ALT_INV_ram~325_q\ <= NOT \RAM|ram~325_q\;
\RAM|ALT_INV_ram~309_q\ <= NOT \RAM|ram~309_q\;
\RAM|ALT_INV_ram~667_combout\ <= NOT \RAM|ram~667_combout\;
\RAM|ALT_INV_ram~666_combout\ <= NOT \RAM|ram~666_combout\;
\RAM|ALT_INV_ram~269_q\ <= NOT \RAM|ram~269_q\;
\RAM|ALT_INV_ram~253_q\ <= NOT \RAM|ram~253_q\;
\RAM|ALT_INV_ram~141_q\ <= NOT \RAM|ram~141_q\;
\RAM|ALT_INV_ram~125_q\ <= NOT \RAM|ram~125_q\;
\RAM|ALT_INV_ram~665_combout\ <= NOT \RAM|ram~665_combout\;
\RAM|ALT_INV_ram~261_q\ <= NOT \RAM|ram~261_q\;
\RAM|ALT_INV_ram~245_q\ <= NOT \RAM|ram~245_q\;
\RAM|ALT_INV_ram~133_q\ <= NOT \RAM|ram~133_q\;
\RAM|ALT_INV_ram~117_q\ <= NOT \RAM|ram~117_q\;
\RAM|ALT_INV_ram~664_combout\ <= NOT \RAM|ram~664_combout\;
\RAM|ALT_INV_ram~205_q\ <= NOT \RAM|ram~205_q\;
\RAM|ALT_INV_ram~189_q\ <= NOT \RAM|ram~189_q\;
\RAM|ALT_INV_ram~77_q\ <= NOT \RAM|ram~77_q\;
\RAM|ALT_INV_ram~61_q\ <= NOT \RAM|ram~61_q\;
\RAM|ALT_INV_ram~663_combout\ <= NOT \RAM|ram~663_combout\;
\RAM|ALT_INV_ram~197_q\ <= NOT \RAM|ram~197_q\;
\RAM|ALT_INV_ram~181_q\ <= NOT \RAM|ram~181_q\;
\RAM|ALT_INV_ram~69_q\ <= NOT \RAM|ram~69_q\;
\RAM|ALT_INV_ram~53_q\ <= NOT \RAM|ram~53_q\;
\RAM|ALT_INV_ram~662_combout\ <= NOT \RAM|ram~662_combout\;
\RAM|ALT_INV_ram~661_combout\ <= NOT \RAM|ram~661_combout\;
\RAM|ALT_INV_ram~493_q\ <= NOT \RAM|ram~493_q\;
\RAM|ALT_INV_ram~477_q\ <= NOT \RAM|ram~477_q\;
\RAM|ALT_INV_ram~429_q\ <= NOT \RAM|ram~429_q\;
\RAM|ALT_INV_ram~413_q\ <= NOT \RAM|ram~413_q\;
\RAM|ALT_INV_ram~660_combout\ <= NOT \RAM|ram~660_combout\;
\RAM|ALT_INV_ram~485_q\ <= NOT \RAM|ram~485_q\;
\RAM|ALT_INV_ram~469_q\ <= NOT \RAM|ram~469_q\;
\RAM|ALT_INV_ram~421_q\ <= NOT \RAM|ram~421_q\;
\RAM|ALT_INV_ram~405_q\ <= NOT \RAM|ram~405_q\;
\RAM|ALT_INV_ram~659_combout\ <= NOT \RAM|ram~659_combout\;
\RAM|ALT_INV_ram~365_q\ <= NOT \RAM|ram~365_q\;
\RAM|ALT_INV_ram~349_q\ <= NOT \RAM|ram~349_q\;
\RAM|ALT_INV_ram~301_q\ <= NOT \RAM|ram~301_q\;
\RAM|ALT_INV_ram~285_q\ <= NOT \RAM|ram~285_q\;
\RAM|ALT_INV_ram~658_combout\ <= NOT \RAM|ram~658_combout\;
\RAM|ALT_INV_ram~357_q\ <= NOT \RAM|ram~357_q\;
\RAM|ALT_INV_ram~341_q\ <= NOT \RAM|ram~341_q\;
\RAM|ALT_INV_ram~293_q\ <= NOT \RAM|ram~293_q\;
\RAM|ALT_INV_ram~277_q\ <= NOT \RAM|ram~277_q\;
\RAM|ALT_INV_ram~657_combout\ <= NOT \RAM|ram~657_combout\;
\RAM|ALT_INV_ram~656_combout\ <= NOT \RAM|ram~656_combout\;
\RAM|ALT_INV_ram~237_q\ <= NOT \RAM|ram~237_q\;
\RAM|ALT_INV_ram~221_q\ <= NOT \RAM|ram~221_q\;
\RAM|ALT_INV_ram~229_q\ <= NOT \RAM|ram~229_q\;
\RAM|ALT_INV_ram~213_q\ <= NOT \RAM|ram~213_q\;
\RAM|ALT_INV_ram~655_combout\ <= NOT \RAM|ram~655_combout\;
\RAM|ALT_INV_ram~109_q\ <= NOT \RAM|ram~109_q\;
\RAM|ALT_INV_ram~93_q\ <= NOT \RAM|ram~93_q\;
\RAM|ALT_INV_ram~101_q\ <= NOT \RAM|ram~101_q\;
\RAM|ALT_INV_ram~85_q\ <= NOT \RAM|ram~85_q\;
\RAM|ALT_INV_ram~654_combout\ <= NOT \RAM|ram~654_combout\;
\RAM|ALT_INV_ram~173_q\ <= NOT \RAM|ram~173_q\;
\RAM|ALT_INV_ram~157_q\ <= NOT \RAM|ram~157_q\;
\RAM|ALT_INV_ram~165_q\ <= NOT \RAM|ram~165_q\;
\RAM|ALT_INV_ram~149_q\ <= NOT \RAM|ram~149_q\;
\RAM|ALT_INV_ram~653_combout\ <= NOT \RAM|ram~653_combout\;
\RAM|ALT_INV_ram~45_q\ <= NOT \RAM|ram~45_q\;
\RAM|ALT_INV_ram~29_q\ <= NOT \RAM|ram~29_q\;
\RAM|ALT_INV_ram~37_q\ <= NOT \RAM|ram~37_q\;
\RAM|ALT_INV_ram~21_q\ <= NOT \RAM|ram~21_q\;
\CPU|MUX1|ALT_INV_saida_MUX[5]~4_combout\ <= NOT \CPU|MUX1|saida_MUX[5]~4_combout\;
\RAM|ALT_INV_ram~652_combout\ <= NOT \RAM|ram~652_combout\;
\RAM|ALT_INV_ram~651_combout\ <= NOT \RAM|ram~651_combout\;
\RAM|ALT_INV_ram~650_combout\ <= NOT \RAM|ram~650_combout\;
\RAM|ALT_INV_ram~524_q\ <= NOT \RAM|ram~524_q\;
\RAM|ALT_INV_ram~492_q\ <= NOT \RAM|ram~492_q\;
\RAM|ALT_INV_ram~460_q\ <= NOT \RAM|ram~460_q\;
\RAM|ALT_INV_ram~428_q\ <= NOT \RAM|ram~428_q\;
\RAM|ALT_INV_ram~649_combout\ <= NOT \RAM|ram~649_combout\;
\RAM|ALT_INV_ram~508_q\ <= NOT \RAM|ram~508_q\;
\RAM|ALT_INV_ram~476_q\ <= NOT \RAM|ram~476_q\;
\RAM|ALT_INV_ram~444_q\ <= NOT \RAM|ram~444_q\;
\RAM|ALT_INV_ram~412_q\ <= NOT \RAM|ram~412_q\;
\RAM|ALT_INV_ram~648_combout\ <= NOT \RAM|ram~648_combout\;
\RAM|ALT_INV_ram~396_q\ <= NOT \RAM|ram~396_q\;
\RAM|ALT_INV_ram~364_q\ <= NOT \RAM|ram~364_q\;
\RAM|ALT_INV_ram~332_q\ <= NOT \RAM|ram~332_q\;
\RAM|ALT_INV_ram~300_q\ <= NOT \RAM|ram~300_q\;
\RAM|ALT_INV_ram~647_combout\ <= NOT \RAM|ram~647_combout\;
\RAM|ALT_INV_ram~380_q\ <= NOT \RAM|ram~380_q\;
\RAM|ALT_INV_ram~348_q\ <= NOT \RAM|ram~348_q\;
\RAM|ALT_INV_ram~316_q\ <= NOT \RAM|ram~316_q\;
\RAM|ALT_INV_ram~284_q\ <= NOT \RAM|ram~284_q\;
\RAM|ALT_INV_ram~646_combout\ <= NOT \RAM|ram~646_combout\;
\RAM|ALT_INV_ram~645_combout\ <= NOT \RAM|ram~645_combout\;
\RAM|ALT_INV_ram~268_q\ <= NOT \RAM|ram~268_q\;
\RAM|ALT_INV_ram~252_q\ <= NOT \RAM|ram~252_q\;
\RAM|ALT_INV_ram~236_q\ <= NOT \RAM|ram~236_q\;
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
\RAM|ALT_INV_process_0~0_combout\ <= NOT \RAM|process_0~0_combout\;
\RAM|ALT_INV_ram~695_combout\ <= NOT \RAM|ram~695_combout\;
\ROM|ALT_INV_memROM~23_combout\ <= NOT \ROM|memROM~23_combout\;
\CPU|MUX1|ALT_INV_saida_MUX[7]~6_combout\ <= NOT \CPU|MUX1|saida_MUX[7]~6_combout\;
\RAM|ALT_INV_ram~694_combout\ <= NOT \RAM|ram~694_combout\;
\RAM|ALT_INV_ram~693_combout\ <= NOT \RAM|ram~693_combout\;
\RAM|ALT_INV_ram~692_combout\ <= NOT \RAM|ram~692_combout\;
\RAM|ALT_INV_ram~526_q\ <= NOT \RAM|ram~526_q\;
\RAM|ALT_INV_ram~494_q\ <= NOT \RAM|ram~494_q\;
\RAM|ALT_INV_ram~462_q\ <= NOT \RAM|ram~462_q\;
\RAM|ALT_INV_ram~430_q\ <= NOT \RAM|ram~430_q\;
\RAM|ALT_INV_ram~691_combout\ <= NOT \RAM|ram~691_combout\;
\RAM|ALT_INV_ram~518_q\ <= NOT \RAM|ram~518_q\;
\RAM|ALT_INV_ram~486_q\ <= NOT \RAM|ram~486_q\;
\RAM|ALT_INV_ram~454_q\ <= NOT \RAM|ram~454_q\;
\RAM|ALT_INV_ram~422_q\ <= NOT \RAM|ram~422_q\;
\RAM|ALT_INV_ram~690_combout\ <= NOT \RAM|ram~690_combout\;
\RAM|ALT_INV_ram~398_q\ <= NOT \RAM|ram~398_q\;
\RAM|ALT_INV_ram~366_q\ <= NOT \RAM|ram~366_q\;
\RAM|ALT_INV_ram~334_q\ <= NOT \RAM|ram~334_q\;
\RAM|ALT_INV_ram~302_q\ <= NOT \RAM|ram~302_q\;
\RAM|ALT_INV_ram~689_combout\ <= NOT \RAM|ram~689_combout\;
\RAM|ALT_INV_ram~390_q\ <= NOT \RAM|ram~390_q\;
\RAM|ALT_INV_ram~358_q\ <= NOT \RAM|ram~358_q\;
\RAM|ALT_INV_ram~326_q\ <= NOT \RAM|ram~326_q\;
\RAM|ALT_INV_ram~294_q\ <= NOT \RAM|ram~294_q\;
\RAM|ALT_INV_ram~688_combout\ <= NOT \RAM|ram~688_combout\;
\RAM|ALT_INV_ram~687_combout\ <= NOT \RAM|ram~687_combout\;
\RAM|ALT_INV_ram~510_q\ <= NOT \RAM|ram~510_q\;
\RAM|ALT_INV_ram~502_q\ <= NOT \RAM|ram~502_q\;
\RAM|ALT_INV_ram~382_q\ <= NOT \RAM|ram~382_q\;
\RAM|ALT_INV_ram~374_q\ <= NOT \RAM|ram~374_q\;
\RAM|ALT_INV_ram~686_combout\ <= NOT \RAM|ram~686_combout\;
\RAM|ALT_INV_ram~478_q\ <= NOT \RAM|ram~478_q\;
\RAM|ALT_INV_ram~470_q\ <= NOT \RAM|ram~470_q\;
\RAM|ALT_INV_ram~350_q\ <= NOT \RAM|ram~350_q\;
\RAM|ALT_INV_ram~342_q\ <= NOT \RAM|ram~342_q\;
\RAM|ALT_INV_ram~685_combout\ <= NOT \RAM|ram~685_combout\;
\RAM|ALT_INV_ram~446_q\ <= NOT \RAM|ram~446_q\;
\RAM|ALT_INV_ram~438_q\ <= NOT \RAM|ram~438_q\;
\RAM|ALT_INV_ram~318_q\ <= NOT \RAM|ram~318_q\;
\RAM|ALT_INV_ram~310_q\ <= NOT \RAM|ram~310_q\;
\RAM|ALT_INV_ram~684_combout\ <= NOT \RAM|ram~684_combout\;
\RAM|ALT_INV_ram~414_q\ <= NOT \RAM|ram~414_q\;
\RAM|ALT_INV_ram~406_q\ <= NOT \RAM|ram~406_q\;
\RAM|ALT_INV_ram~286_q\ <= NOT \RAM|ram~286_q\;
\RAM|ALT_INV_ram~278_q\ <= NOT \RAM|ram~278_q\;
\RAM|ALT_INV_ram~683_combout\ <= NOT \RAM|ram~683_combout\;
\RAM|ALT_INV_ram~682_combout\ <= NOT \RAM|ram~682_combout\;
\RAM|ALT_INV_ram~270_q\ <= NOT \RAM|ram~270_q\;
\RAM|ALT_INV_ram~238_q\ <= NOT \RAM|ram~238_q\;
\RAM|ALT_INV_ram~206_q\ <= NOT \RAM|ram~206_q\;
\RAM|ALT_INV_ram~174_q\ <= NOT \RAM|ram~174_q\;
\RAM|ALT_INV_ram~681_combout\ <= NOT \RAM|ram~681_combout\;
\RAM|ALT_INV_ram~262_q\ <= NOT \RAM|ram~262_q\;
\RAM|ALT_INV_ram~230_q\ <= NOT \RAM|ram~230_q\;
\RAM|ALT_INV_ram~198_q\ <= NOT \RAM|ram~198_q\;
\RAM|ALT_INV_ram~166_q\ <= NOT \RAM|ram~166_q\;
\RAM|ALT_INV_ram~680_combout\ <= NOT \RAM|ram~680_combout\;
\RAM|ALT_INV_ram~142_q\ <= NOT \RAM|ram~142_q\;
\RAM|ALT_INV_ram~110_q\ <= NOT \RAM|ram~110_q\;
\RAM|ALT_INV_ram~78_q\ <= NOT \RAM|ram~78_q\;
\RAM|ALT_INV_ram~46_q\ <= NOT \RAM|ram~46_q\;
\RAM|ALT_INV_ram~679_combout\ <= NOT \RAM|ram~679_combout\;
\RAM|ALT_INV_ram~134_q\ <= NOT \RAM|ram~134_q\;
\RAM|ALT_INV_ram~102_q\ <= NOT \RAM|ram~102_q\;
\RAM|ALT_INV_ram~70_q\ <= NOT \RAM|ram~70_q\;
\RAM|ALT_INV_ram~38_q\ <= NOT \RAM|ram~38_q\;
\RAM|ALT_INV_ram~678_combout\ <= NOT \RAM|ram~678_combout\;
\RAM|ALT_INV_ram~677_combout\ <= NOT \RAM|ram~677_combout\;
\RAM|ALT_INV_ram~254_q\ <= NOT \RAM|ram~254_q\;
\RAM|ALT_INV_ram~246_q\ <= NOT \RAM|ram~246_q\;
\RAM|ALT_INV_ram~126_q\ <= NOT \RAM|ram~126_q\;
\RAM|ALT_INV_ram~118_q\ <= NOT \RAM|ram~118_q\;
\RAM|ALT_INV_ram~676_combout\ <= NOT \RAM|ram~676_combout\;
\RAM|ALT_INV_ram~222_q\ <= NOT \RAM|ram~222_q\;
\RAM|ALT_INV_ram~214_q\ <= NOT \RAM|ram~214_q\;
\RAM|ALT_INV_ram~94_q\ <= NOT \RAM|ram~94_q\;
\ALT_INV_READ_BUS[0]~3_combout\ <= NOT \READ_BUS[0]~3_combout\;
\ALT_INV_READ_BUS[0]~2_combout\ <= NOT \READ_BUS[0]~2_combout\;
\detectorSub0|ALT_INV_saidaQ~q\ <= NOT \detectorSub0|saidaQ~q\;
\ROM|ALT_INV_memROM~25_combout\ <= NOT \ROM|memROM~25_combout\;
\CPU|DECODER|ALT_INV_OP_ULA[0]~2_combout\ <= NOT \CPU|DECODER|OP_ULA[0]~2_combout\;
\ROM|ALT_INV_memROM~24_combout\ <= NOT \ROM|memROM~24_combout\;
\CPU|FLAG|ALT_INV_DOUT~1_combout\ <= NOT \CPU|FLAG|DOUT~1_combout\;
\CPU|FLAG|ALT_INV_DOUT~0_combout\ <= NOT \CPU|FLAG|DOUT~0_combout\;
\CPU|DECODER|ALT_INV_sinais_controle~1_combout\ <= NOT \CPU|DECODER|sinais_controle~1_combout\;
\ALT_INV_ADDR_511~combout\ <= NOT \ADDR_511~combout\;
\ALT_INV_ADDR_511~0_combout\ <= NOT \ADDR_511~0_combout\;
\RAM|ALT_INV_ram~821_combout\ <= NOT \RAM|ram~821_combout\;
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
\ALT_INV_KEY[1]~input_o\ <= NOT \KEY[1]~input_o\;
\ALT_INV_KEY[2]~input_o\ <= NOT \KEY[2]~input_o\;
\ALT_INV_SW[0]~input_o\ <= NOT \SW[0]~input_o\;

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
	o => \HEX0[0]~output_o\);

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
	o => \HEX0[1]~output_o\);

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
	o => \HEX0[2]~output_o\);

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
	o => \HEX0[3]~output_o\);

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
	o => \HEX0[4]~output_o\);

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
	o => \HEX0[5]~output_o\);

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
	o => \HEX0[6]~output_o\);

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
	o => \HEX1[0]~output_o\);

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
	o => \HEX1[1]~output_o\);

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
	o => \HEX1[2]~output_o\);

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
	o => \HEX1[3]~output_o\);

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
	o => \HEX1[4]~output_o\);

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
	o => \HEX1[5]~output_o\);

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
	o => \HEX1[6]~output_o\);

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
	o => \HEX2[0]~output_o\);

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
	o => \HEX2[1]~output_o\);

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
	o => \HEX2[2]~output_o\);

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
	o => \HEX2[3]~output_o\);

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
	o => \HEX2[4]~output_o\);

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
	o => \HEX2[5]~output_o\);

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
	o => \HEX2[6]~output_o\);

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
	o => \HEX3[0]~output_o\);

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
	o => \HEX3[1]~output_o\);

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
	o => \HEX3[2]~output_o\);

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
	o => \HEX3[3]~output_o\);

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
	o => \HEX3[4]~output_o\);

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
	o => \HEX3[5]~output_o\);

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
	o => \HEX3[6]~output_o\);

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
	o => \HEX4[0]~output_o\);

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
	o => \HEX4[1]~output_o\);

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
	o => \HEX4[2]~output_o\);

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
	o => \HEX4[3]~output_o\);

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
	o => \HEX4[4]~output_o\);

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
	o => \HEX4[5]~output_o\);

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
	o => \HEX4[6]~output_o\);

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
	o => \HEX5[0]~output_o\);

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
	o => \HEX5[1]~output_o\);

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
	o => \HEX5[2]~output_o\);

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
	o => \HEX5[3]~output_o\);

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
	o => \HEX5[4]~output_o\);

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
	o => \HEX5[5]~output_o\);

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
	o => \HEX5[6]~output_o\);

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
	o => \LEDR[0]~output_o\);

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
	o => \LEDR[1]~output_o\);

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
	o => \LEDR[2]~output_o\);

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
	o => \LEDR[3]~output_o\);

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
	o => \LEDR[4]~output_o\);

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
	o => \LEDR[5]~output_o\);

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
	o => \LEDR[6]~output_o\);

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
	o => \LEDR[7]~output_o\);

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
	o => \LEDR[8]~output_o\);

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
	o => \LEDR[9]~output_o\);

\CLOCK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

\ROM|memROM~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~12_combout\ = ( \CPU|INSTR|PC|DOUT\(3) & ( \ROM|memROM~0_combout\ & ( (!\CPU|INSTR|PC|DOUT\(2) & (\CPU|INSTR|PC|DOUT\(0) & (!\CPU|INSTR|PC|DOUT\(1) & !\CPU|INSTR|PC|DOUT\(5)))) ) ) ) # ( !\CPU|INSTR|PC|DOUT\(3) & ( \ROM|memROM~0_combout\ & ( 
-- (!\CPU|INSTR|PC|DOUT\(0) & ((!\CPU|INSTR|PC|DOUT\(2) & (!\CPU|INSTR|PC|DOUT\(1) & \CPU|INSTR|PC|DOUT\(5))) # (\CPU|INSTR|PC|DOUT\(2) & (\CPU|INSTR|PC|DOUT\(1) & !\CPU|INSTR|PC|DOUT\(5))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000100100000000010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|PC|ALT_INV_DOUT\(2),
	datab => \CPU|INSTR|PC|ALT_INV_DOUT\(0),
	datac => \CPU|INSTR|PC|ALT_INV_DOUT\(1),
	datad => \CPU|INSTR|PC|ALT_INV_DOUT\(5),
	datae => \CPU|INSTR|PC|ALT_INV_DOUT\(3),
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \ROM|memROM~12_combout\);

\ROM|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~1_combout\ = (!\CPU|INSTR|PC|DOUT\(2) & (!\CPU|INSTR|PC|DOUT\(5) & (!\CPU|INSTR|PC|DOUT\(1) & \CPU|INSTR|PC|DOUT\(3)))) # (\CPU|INSTR|PC|DOUT\(2) & (!\CPU|INSTR|PC|DOUT\(3) & (!\CPU|INSTR|PC|DOUT\(5) $ (!\CPU|INSTR|PC|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011010000000000001101000000000000110100000000000011010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|PC|ALT_INV_DOUT\(5),
	datab => \CPU|INSTR|PC|ALT_INV_DOUT\(1),
	datac => \CPU|INSTR|PC|ALT_INV_DOUT\(2),
	datad => \CPU|INSTR|PC|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~1_combout\);

\ROM|memROM~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~19_combout\ = (\CPU|INSTR|PC|DOUT\(0) & (\ROM|memROM~0_combout\ & \ROM|memROM~1_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|PC|ALT_INV_DOUT\(0),
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \ROM|ALT_INV_memROM~1_combout\,
	combout => \ROM|memROM~19_combout\);

\ROM|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~2_combout\ = ( \CPU|INSTR|PC|DOUT\(3) & ( (!\CPU|INSTR|PC|DOUT\(2) & (!\CPU|INSTR|PC|DOUT\(1) & !\CPU|INSTR|PC|DOUT\(5))) ) ) # ( !\CPU|INSTR|PC|DOUT\(3) & ( (!\CPU|INSTR|PC|DOUT\(5) & (!\CPU|INSTR|PC|DOUT\(0) $ (((!\CPU|INSTR|PC|DOUT\(2) & 
-- !\CPU|INSTR|PC|DOUT\(1)))))) # (\CPU|INSTR|PC|DOUT\(5) & ((!\CPU|INSTR|PC|DOUT\(0) & ((!\CPU|INSTR|PC|DOUT\(1)))) # (\CPU|INSTR|PC|DOUT\(0) & (!\CPU|INSTR|PC|DOUT\(2))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110110011100010101000000000000001101100111000101010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|PC|ALT_INV_DOUT\(2),
	datab => \CPU|INSTR|PC|ALT_INV_DOUT\(0),
	datac => \CPU|INSTR|PC|ALT_INV_DOUT\(1),
	datad => \CPU|INSTR|PC|ALT_INV_DOUT\(5),
	datae => \CPU|INSTR|PC|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~2_combout\);

\ROM|memROM~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~21_combout\ = (\ROM|memROM~0_combout\ & \ROM|memROM~2_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \ROM|ALT_INV_memROM~2_combout\,
	combout => \ROM|memROM~21_combout\);

\ROM|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~3_combout\ = ( \CPU|INSTR|PC|DOUT\(3) & ( (!\CPU|INSTR|PC|DOUT\(2) & (!\CPU|INSTR|PC|DOUT\(5) & (!\CPU|INSTR|PC|DOUT\(0) $ (\CPU|INSTR|PC|DOUT\(1))))) ) ) # ( !\CPU|INSTR|PC|DOUT\(3) & ( (\CPU|INSTR|PC|DOUT\(5) & ((!\CPU|INSTR|PC|DOUT\(2) & 
-- (!\CPU|INSTR|PC|DOUT\(0) & \CPU|INSTR|PC|DOUT\(1))) # (\CPU|INSTR|PC|DOUT\(2) & (\CPU|INSTR|PC|DOUT\(0) & !\CPU|INSTR|PC|DOUT\(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000011000100000100000000000000000000110001000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|PC|ALT_INV_DOUT\(2),
	datab => \CPU|INSTR|PC|ALT_INV_DOUT\(0),
	datac => \CPU|INSTR|PC|ALT_INV_DOUT\(1),
	datad => \CPU|INSTR|PC|ALT_INV_DOUT\(5),
	datae => \CPU|INSTR|PC|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~3_combout\);

\ROM|memROM~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~22_combout\ = (\ROM|memROM~0_combout\ & \ROM|memROM~3_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \ROM|ALT_INV_memROM~3_combout\,
	combout => \ROM|memROM~22_combout\);

\ROM|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~4_combout\ = ( \CPU|INSTR|PC|DOUT\(3) & ( (!\CPU|INSTR|PC|DOUT\(2) & (!\CPU|INSTR|PC|DOUT\(5) & (!\CPU|INSTR|PC|DOUT\(0) $ (\CPU|INSTR|PC|DOUT\(1))))) ) ) # ( !\CPU|INSTR|PC|DOUT\(3) & ( (!\CPU|INSTR|PC|DOUT\(2) & ((!\CPU|INSTR|PC|DOUT\(5)) # 
-- (!\CPU|INSTR|PC|DOUT\(0) $ (\CPU|INSTR|PC|DOUT\(1))))) # (\CPU|INSTR|PC|DOUT\(2) & (!\CPU|INSTR|PC|DOUT\(0) & (!\CPU|INSTR|PC|DOUT\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110101011000010100000100000000011101010110000101000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|PC|ALT_INV_DOUT\(2),
	datab => \CPU|INSTR|PC|ALT_INV_DOUT\(0),
	datac => \CPU|INSTR|PC|ALT_INV_DOUT\(1),
	datad => \CPU|INSTR|PC|ALT_INV_DOUT\(5),
	datae => \CPU|INSTR|PC|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~4_combout\);

\ROM|memROM~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~20_combout\ = (\ROM|memROM~0_combout\ & \ROM|memROM~4_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \ROM|ALT_INV_memROM~4_combout\,
	combout => \ROM|memROM~20_combout\);

\CPU|DECODER|sinais_controle~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER|sinais_controle~0_combout\ = (!\ROM|memROM~21_combout\ & !\ROM|memROM~22_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~21_combout\,
	datab => \ROM|ALT_INV_memROM~22_combout\,
	combout => \CPU|DECODER|sinais_controle~0_combout\);

\CPU|DECODER|HAB_A~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER|HAB_A~0_combout\ = (!\ROM|memROM~19_combout\ & (\ROM|memROM~20_combout\ & \CPU|DECODER|sinais_controle~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~19_combout\,
	datab => \ROM|ALT_INV_memROM~20_combout\,
	datac => \CPU|DECODER|ALT_INV_sinais_controle~0_combout\,
	combout => \CPU|DECODER|HAB_A~0_combout\);

\CPU|DECODER|OP_ULA[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER|OP_ULA[0]~2_combout\ = (!\ROM|memROM~19_combout\ & (!\ROM|memROM~22_combout\ & !\ROM|memROM~20_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000010100000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~19_combout\,
	datac => \ROM|ALT_INV_memROM~22_combout\,
	datad => \ROM|ALT_INV_memROM~20_combout\,
	combout => \CPU|DECODER|OP_ULA[0]~2_combout\);

\CPU|DECODER|ENABLE_READ~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER|ENABLE_READ~0_combout\ = ( \ROM|memROM~3_combout\ & ( !\ROM|memROM~4_combout\ & ( (\ROM|memROM~0_combout\ & ((!\CPU|INSTR|PC|DOUT\(0)) # (!\ROM|memROM~1_combout\))) ) ) ) # ( !\ROM|memROM~3_combout\ & ( !\ROM|memROM~4_combout\ & ( 
-- (\ROM|memROM~0_combout\ & (!\ROM|memROM~2_combout\ $ (((!\CPU|INSTR|PC|DOUT\(0)) # (!\ROM|memROM~1_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100110010001100100011001000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|PC|ALT_INV_DOUT\(0),
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \ROM|ALT_INV_memROM~1_combout\,
	datad => \ROM|ALT_INV_memROM~2_combout\,
	datae => \ROM|ALT_INV_memROM~3_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	combout => \CPU|DECODER|ENABLE_READ~0_combout\);

\ROM|memROM~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~8_combout\ = (!\CPU|INSTR|PC|DOUT\(0) & ((!\CPU|INSTR|PC|DOUT\(1) & ((\CPU|INSTR|PC|DOUT\(5)))) # (\CPU|INSTR|PC|DOUT\(1) & (\CPU|INSTR|PC|DOUT\(2) & !\CPU|INSTR|PC|DOUT\(5)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001000000000101000100000000010100010000000001010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|PC|ALT_INV_DOUT\(0),
	datab => \CPU|INSTR|PC|ALT_INV_DOUT\(1),
	datac => \CPU|INSTR|PC|ALT_INV_DOUT\(2),
	datad => \CPU|INSTR|PC|ALT_INV_DOUT\(5),
	combout => \ROM|memROM~8_combout\);

\ROM|memROM~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~9_combout\ = ( !\CPU|INSTR|PC|DOUT\(3) & ( (!\CPU|INSTR|PC|DOUT\(2) & (!\CPU|INSTR|PC|DOUT\(0) & (!\CPU|INSTR|PC|DOUT\(1) & \CPU|INSTR|PC|DOUT\(5)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000000000000000000000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|PC|ALT_INV_DOUT\(2),
	datab => \CPU|INSTR|PC|ALT_INV_DOUT\(0),
	datac => \CPU|INSTR|PC|ALT_INV_DOUT\(1),
	datad => \CPU|INSTR|PC|ALT_INV_DOUT\(5),
	datae => \CPU|INSTR|PC|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~9_combout\);

\ENABLE_SWR~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ENABLE_SWR~0_combout\ = ( \ROM|memROM~8_combout\ & ( !\ROM|memROM~9_combout\ & ( (!\CPU|INSTR|PC|DOUT\(3) & (!\CPU|INSTR|PC|DOUT\(8) & (\ROM|memROM~6_combout\ & \ROM|memROM~7_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|PC|ALT_INV_DOUT\(3),
	datab => \CPU|INSTR|PC|ALT_INV_DOUT\(8),
	datac => \ROM|ALT_INV_memROM~6_combout\,
	datad => \ROM|ALT_INV_memROM~7_combout\,
	datae => \ROM|ALT_INV_memROM~8_combout\,
	dataf => \ROM|ALT_INV_memROM~9_combout\,
	combout => \ENABLE_SWR~0_combout\);

\ENABLE_SWR~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ENABLE_SWR~2_combout\ = ( \CPU|DECODER|ENABLE_READ~0_combout\ & ( \ENABLE_SWR~0_combout\ & ( (!\ROM|memROM~5_combout\ & (!\ROM|memROM~11_combout\ & (!\ROM|memROM~12_combout\ & !\ROM|memROM~13_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~5_combout\,
	datab => \ROM|ALT_INV_memROM~11_combout\,
	datac => \ROM|ALT_INV_memROM~12_combout\,
	datad => \ROM|ALT_INV_memROM~13_combout\,
	datae => \CPU|DECODER|ALT_INV_ENABLE_READ~0_combout\,
	dataf => \ALT_INV_ENABLE_SWR~0_combout\,
	combout => \ENABLE_SWR~2_combout\);

\SW[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

\CPU|DECODER|SEL_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER|SEL_MUX~0_combout\ = (((!\ROM|memROM~20_combout\) # (\ROM|memROM~22_combout\)) # (\ROM|memROM~21_combout\)) # (\ROM|memROM~19_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111101111111111111110111111111111111011111111111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~19_combout\,
	datab => \ROM|ALT_INV_memROM~21_combout\,
	datac => \ROM|ALT_INV_memROM~22_combout\,
	datad => \ROM|ALT_INV_memROM~20_combout\,
	combout => \CPU|DECODER|SEL_MUX~0_combout\);

\SW[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

\ROM|memROM~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~15_combout\ = (!\CPU|INSTR|PC|DOUT\(0) & (!\CPU|INSTR|PC|DOUT\(1) & (!\CPU|INSTR|PC|DOUT\(5) $ (!\CPU|INSTR|PC|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100010000000000010001000000000001000100000000000100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|PC|ALT_INV_DOUT\(0),
	datab => \CPU|INSTR|PC|ALT_INV_DOUT\(1),
	datac => \CPU|INSTR|PC|ALT_INV_DOUT\(5),
	datad => \CPU|INSTR|PC|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~15_combout\);

\ROM|memROM~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~24_combout\ = (!\CPU|INSTR|PC|DOUT\(2) & (\ROM|memROM~6_combout\ & \ROM|memROM~15_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|PC|ALT_INV_DOUT\(2),
	datab => \ROM|ALT_INV_memROM~6_combout\,
	datac => \ROM|ALT_INV_memROM~15_combout\,
	combout => \ROM|memROM~24_combout\);

\ROM|memROM~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~10_combout\ = ( \CPU|INSTR|PC|DOUT\(3) & ( (!\CPU|INSTR|PC|DOUT\(2) & (\CPU|INSTR|PC|DOUT\(0) & (\CPU|INSTR|PC|DOUT\(1) & !\CPU|INSTR|PC|DOUT\(5)))) ) ) # ( !\CPU|INSTR|PC|DOUT\(3) & ( (!\CPU|INSTR|PC|DOUT\(1) & (!\CPU|INSTR|PC|DOUT\(0) & 
-- (!\CPU|INSTR|PC|DOUT\(2) $ (!\CPU|INSTR|PC|DOUT\(5))))) # (\CPU|INSTR|PC|DOUT\(1) & (!\CPU|INSTR|PC|DOUT\(2) & (!\CPU|INSTR|PC|DOUT\(0) $ (!\CPU|INSTR|PC|DOUT\(5))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100001010001000000000100000000001000010100010000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|PC|ALT_INV_DOUT\(2),
	datab => \CPU|INSTR|PC|ALT_INV_DOUT\(0),
	datac => \CPU|INSTR|PC|ALT_INV_DOUT\(1),
	datad => \CPU|INSTR|PC|ALT_INV_DOUT\(5),
	datae => \CPU|INSTR|PC|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~10_combout\);

\ROM|memROM~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~23_combout\ = (\ROM|memROM~6_combout\ & \ROM|memROM~10_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~6_combout\,
	datab => \ROM|ALT_INV_memROM~10_combout\,
	combout => \ROM|memROM~23_combout\);

\RAM|ram~695\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~695_combout\ = ( !\ROM|memROM~14_combout\ & ( !\ROM|memROM~12_combout\ & ( (!\ROM|memROM~11_combout\ & (!\ROM|memROM~13_combout\ & (!\ROM|memROM~5_combout\ & !\ROM|memROM~16_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~11_combout\,
	datab => \ROM|ALT_INV_memROM~13_combout\,
	datac => \ROM|ALT_INV_memROM~5_combout\,
	datad => \ROM|ALT_INV_memROM~16_combout\,
	datae => \ROM|ALT_INV_memROM~14_combout\,
	dataf => \ROM|ALT_INV_memROM~12_combout\,
	combout => \RAM|ram~695_combout\);

\CPU|DECODER|Equal5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER|Equal5~0_combout\ = ( !\ROM|memROM~3_combout\ & ( \ROM|memROM~4_combout\ & ( (\ROM|memROM~0_combout\ & (\ROM|memROM~2_combout\ & ((!\CPU|INSTR|PC|DOUT\(0)) # (!\ROM|memROM~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001100100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|PC|ALT_INV_DOUT\(0),
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \ROM|ALT_INV_memROM~1_combout\,
	datad => \ROM|ALT_INV_memROM~2_combout\,
	datae => \ROM|ALT_INV_memROM~3_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	combout => \CPU|DECODER|Equal5~0_combout\);

\RAM|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|process_0~0_combout\ = (\CPU|DECODER|Equal5~0_combout\ & (!\ROM|memROM~17_combout\ & (!\ROM|memROM~14_combout\ & !\ROM|memROM~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000010000000000000001000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal5~0_combout\,
	datab => \ROM|ALT_INV_memROM~17_combout\,
	datac => \ROM|ALT_INV_memROM~14_combout\,
	datad => \ROM|ALT_INV_memROM~18_combout\,
	combout => \RAM|process_0~0_combout\);

\RAM|ram~696\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~696_combout\ = (\RAM|ram~695_combout\ & \RAM|process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~695_combout\,
	datab => \RAM|ALT_INV_process_0~0_combout\,
	combout => \RAM|ram~696_combout\);

\RAM|ram~15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(0),
	ena => \RAM|ram~696_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~15_q\);

\RAM|ram~697\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~697_combout\ = ( !\ROM|memROM~14_combout\ & ( \ROM|memROM~12_combout\ & ( (!\ROM|memROM~11_combout\ & (!\ROM|memROM~13_combout\ & (!\ROM|memROM~5_combout\ & !\ROM|memROM~16_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~11_combout\,
	datab => \ROM|ALT_INV_memROM~13_combout\,
	datac => \ROM|ALT_INV_memROM~5_combout\,
	datad => \ROM|ALT_INV_memROM~16_combout\,
	datae => \ROM|ALT_INV_memROM~14_combout\,
	dataf => \ROM|ALT_INV_memROM~12_combout\,
	combout => \RAM|ram~697_combout\);

\RAM|ram~698\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~698_combout\ = (\RAM|process_0~0_combout\ & \RAM|ram~697_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_process_0~0_combout\,
	datab => \RAM|ALT_INV_ram~697_combout\,
	combout => \RAM|ram~698_combout\);

\RAM|ram~271\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(0),
	ena => \RAM|ram~698_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~271_q\);

\RAM|ram~699\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~699_combout\ = ( \ROM|memROM~14_combout\ & ( !\ROM|memROM~12_combout\ & ( (!\ROM|memROM~11_combout\ & (!\ROM|memROM~13_combout\ & (!\ROM|memROM~5_combout\ & !\ROM|memROM~16_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~11_combout\,
	datab => \ROM|ALT_INV_memROM~13_combout\,
	datac => \ROM|ALT_INV_memROM~5_combout\,
	datad => \ROM|ALT_INV_memROM~16_combout\,
	datae => \ROM|ALT_INV_memROM~14_combout\,
	dataf => \ROM|ALT_INV_memROM~12_combout\,
	combout => \RAM|ram~699_combout\);

\RAM|ram~700\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~700_combout\ = (\RAM|process_0~0_combout\ & \RAM|ram~699_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_process_0~0_combout\,
	datab => \RAM|ALT_INV_ram~699_combout\,
	combout => \RAM|ram~700_combout\);

\RAM|ram~143\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(0),
	ena => \RAM|ram~700_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~143_q\);

\RAM|ram~701\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~701_combout\ = ( \ROM|memROM~14_combout\ & ( \ROM|memROM~12_combout\ & ( (!\ROM|memROM~11_combout\ & (!\ROM|memROM~13_combout\ & (!\ROM|memROM~5_combout\ & !\ROM|memROM~16_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~11_combout\,
	datab => \ROM|ALT_INV_memROM~13_combout\,
	datac => \ROM|ALT_INV_memROM~5_combout\,
	datad => \ROM|ALT_INV_memROM~16_combout\,
	datae => \ROM|ALT_INV_memROM~14_combout\,
	dataf => \ROM|ALT_INV_memROM~12_combout\,
	combout => \RAM|ram~701_combout\);

\RAM|ram~702\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~702_combout\ = (\RAM|process_0~0_combout\ & \RAM|ram~701_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_process_0~0_combout\,
	datab => \RAM|ALT_INV_ram~701_combout\,
	combout => \RAM|ram~702_combout\);

\RAM|ram~399\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(0),
	ena => \RAM|ram~702_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~399_q\);

\RAM|ram~527\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~527_combout\ = ( \ROM|memROM~12_combout\ & ( \ROM|memROM~14_combout\ & ( \RAM|ram~399_q\ ) ) ) # ( !\ROM|memROM~12_combout\ & ( \ROM|memROM~14_combout\ & ( \RAM|ram~143_q\ ) ) ) # ( \ROM|memROM~12_combout\ & ( !\ROM|memROM~14_combout\ & ( 
-- \RAM|ram~271_q\ ) ) ) # ( !\ROM|memROM~12_combout\ & ( !\ROM|memROM~14_combout\ & ( \RAM|ram~15_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~15_q\,
	datab => \RAM|ALT_INV_ram~271_q\,
	datac => \RAM|ALT_INV_ram~143_q\,
	datad => \RAM|ALT_INV_ram~399_q\,
	datae => \ROM|ALT_INV_memROM~12_combout\,
	dataf => \ROM|ALT_INV_memROM~14_combout\,
	combout => \RAM|ram~527_combout\);

\RAM|ram~703\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~703_combout\ = ( !\ROM|memROM~14_combout\ & ( !\ROM|memROM~12_combout\ & ( (!\ROM|memROM~11_combout\ & (!\ROM|memROM~13_combout\ & (\ROM|memROM~5_combout\ & !\ROM|memROM~16_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~11_combout\,
	datab => \ROM|ALT_INV_memROM~13_combout\,
	datac => \ROM|ALT_INV_memROM~5_combout\,
	datad => \ROM|ALT_INV_memROM~16_combout\,
	datae => \ROM|ALT_INV_memROM~14_combout\,
	dataf => \ROM|ALT_INV_memROM~12_combout\,
	combout => \RAM|ram~703_combout\);

\RAM|ram~704\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~704_combout\ = (\RAM|process_0~0_combout\ & \RAM|ram~703_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_process_0~0_combout\,
	datab => \RAM|ALT_INV_ram~703_combout\,
	combout => \RAM|ram~704_combout\);

\RAM|ram~47\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(0),
	ena => \RAM|ram~704_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~47_q\);

\RAM|ram~705\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~705_combout\ = ( !\ROM|memROM~14_combout\ & ( \ROM|memROM~12_combout\ & ( (!\ROM|memROM~11_combout\ & (!\ROM|memROM~13_combout\ & (\ROM|memROM~5_combout\ & !\ROM|memROM~16_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~11_combout\,
	datab => \ROM|ALT_INV_memROM~13_combout\,
	datac => \ROM|ALT_INV_memROM~5_combout\,
	datad => \ROM|ALT_INV_memROM~16_combout\,
	datae => \ROM|ALT_INV_memROM~14_combout\,
	dataf => \ROM|ALT_INV_memROM~12_combout\,
	combout => \RAM|ram~705_combout\);

\RAM|ram~706\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~706_combout\ = (\RAM|process_0~0_combout\ & \RAM|ram~705_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_process_0~0_combout\,
	datab => \RAM|ALT_INV_ram~705_combout\,
	combout => \RAM|ram~706_combout\);

\RAM|ram~303\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(0),
	ena => \RAM|ram~706_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~303_q\);

\RAM|ram~707\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~707_combout\ = ( \ROM|memROM~14_combout\ & ( !\ROM|memROM~12_combout\ & ( (!\ROM|memROM~11_combout\ & (!\ROM|memROM~13_combout\ & (\ROM|memROM~5_combout\ & !\ROM|memROM~16_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~11_combout\,
	datab => \ROM|ALT_INV_memROM~13_combout\,
	datac => \ROM|ALT_INV_memROM~5_combout\,
	datad => \ROM|ALT_INV_memROM~16_combout\,
	datae => \ROM|ALT_INV_memROM~14_combout\,
	dataf => \ROM|ALT_INV_memROM~12_combout\,
	combout => \RAM|ram~707_combout\);

\RAM|ram~708\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~708_combout\ = (\RAM|process_0~0_combout\ & \RAM|ram~707_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_process_0~0_combout\,
	datab => \RAM|ALT_INV_ram~707_combout\,
	combout => \RAM|ram~708_combout\);

\RAM|ram~175\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(0),
	ena => \RAM|ram~708_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~175_q\);

\RAM|ram~709\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~709_combout\ = ( \ROM|memROM~14_combout\ & ( \ROM|memROM~12_combout\ & ( (!\ROM|memROM~11_combout\ & (!\ROM|memROM~13_combout\ & (\ROM|memROM~5_combout\ & !\ROM|memROM~16_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~11_combout\,
	datab => \ROM|ALT_INV_memROM~13_combout\,
	datac => \ROM|ALT_INV_memROM~5_combout\,
	datad => \ROM|ALT_INV_memROM~16_combout\,
	datae => \ROM|ALT_INV_memROM~14_combout\,
	dataf => \ROM|ALT_INV_memROM~12_combout\,
	combout => \RAM|ram~709_combout\);

\RAM|ram~710\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~710_combout\ = (\RAM|process_0~0_combout\ & \RAM|ram~709_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_process_0~0_combout\,
	datab => \RAM|ALT_INV_ram~709_combout\,
	combout => \RAM|ram~710_combout\);

\RAM|ram~431\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(0),
	ena => \RAM|ram~710_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~431_q\);

\RAM|ram~528\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~528_combout\ = ( \ROM|memROM~12_combout\ & ( \ROM|memROM~14_combout\ & ( \RAM|ram~431_q\ ) ) ) # ( !\ROM|memROM~12_combout\ & ( \ROM|memROM~14_combout\ & ( \RAM|ram~175_q\ ) ) ) # ( \ROM|memROM~12_combout\ & ( !\ROM|memROM~14_combout\ & ( 
-- \RAM|ram~303_q\ ) ) ) # ( !\ROM|memROM~12_combout\ & ( !\ROM|memROM~14_combout\ & ( \RAM|ram~47_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~47_q\,
	datab => \RAM|ALT_INV_ram~303_q\,
	datac => \RAM|ALT_INV_ram~175_q\,
	datad => \RAM|ALT_INV_ram~431_q\,
	datae => \ROM|ALT_INV_memROM~12_combout\,
	dataf => \ROM|ALT_INV_memROM~14_combout\,
	combout => \RAM|ram~528_combout\);

\RAM|ram~711\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~711_combout\ = ( !\ROM|memROM~14_combout\ & ( !\ROM|memROM~12_combout\ & ( (!\ROM|memROM~11_combout\ & (!\ROM|memROM~13_combout\ & (!\ROM|memROM~5_combout\ & \ROM|memROM~16_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~11_combout\,
	datab => \ROM|ALT_INV_memROM~13_combout\,
	datac => \ROM|ALT_INV_memROM~5_combout\,
	datad => \ROM|ALT_INV_memROM~16_combout\,
	datae => \ROM|ALT_INV_memROM~14_combout\,
	dataf => \ROM|ALT_INV_memROM~12_combout\,
	combout => \RAM|ram~711_combout\);

\RAM|ram~712\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~712_combout\ = (\RAM|process_0~0_combout\ & \RAM|ram~711_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_process_0~0_combout\,
	datab => \RAM|ALT_INV_ram~711_combout\,
	combout => \RAM|ram~712_combout\);

\RAM|ram~79\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(0),
	ena => \RAM|ram~712_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~79_q\);

\RAM|ram~713\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~713_combout\ = ( !\ROM|memROM~14_combout\ & ( \ROM|memROM~12_combout\ & ( (!\ROM|memROM~11_combout\ & (!\ROM|memROM~13_combout\ & (!\ROM|memROM~5_combout\ & \ROM|memROM~16_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~11_combout\,
	datab => \ROM|ALT_INV_memROM~13_combout\,
	datac => \ROM|ALT_INV_memROM~5_combout\,
	datad => \ROM|ALT_INV_memROM~16_combout\,
	datae => \ROM|ALT_INV_memROM~14_combout\,
	dataf => \ROM|ALT_INV_memROM~12_combout\,
	combout => \RAM|ram~713_combout\);

\RAM|ram~714\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~714_combout\ = (\RAM|process_0~0_combout\ & \RAM|ram~713_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_process_0~0_combout\,
	datab => \RAM|ALT_INV_ram~713_combout\,
	combout => \RAM|ram~714_combout\);

\RAM|ram~335\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(0),
	ena => \RAM|ram~714_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~335_q\);

\RAM|ram~715\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~715_combout\ = ( \ROM|memROM~14_combout\ & ( !\ROM|memROM~12_combout\ & ( (!\ROM|memROM~11_combout\ & (!\ROM|memROM~13_combout\ & (!\ROM|memROM~5_combout\ & \ROM|memROM~16_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~11_combout\,
	datab => \ROM|ALT_INV_memROM~13_combout\,
	datac => \ROM|ALT_INV_memROM~5_combout\,
	datad => \ROM|ALT_INV_memROM~16_combout\,
	datae => \ROM|ALT_INV_memROM~14_combout\,
	dataf => \ROM|ALT_INV_memROM~12_combout\,
	combout => \RAM|ram~715_combout\);

\RAM|ram~716\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~716_combout\ = (\RAM|process_0~0_combout\ & \RAM|ram~715_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_process_0~0_combout\,
	datab => \RAM|ALT_INV_ram~715_combout\,
	combout => \RAM|ram~716_combout\);

\RAM|ram~207\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(0),
	ena => \RAM|ram~716_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~207_q\);

\RAM|ram~717\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~717_combout\ = ( \ROM|memROM~14_combout\ & ( \ROM|memROM~12_combout\ & ( (!\ROM|memROM~11_combout\ & (!\ROM|memROM~13_combout\ & (!\ROM|memROM~5_combout\ & \ROM|memROM~16_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~11_combout\,
	datab => \ROM|ALT_INV_memROM~13_combout\,
	datac => \ROM|ALT_INV_memROM~5_combout\,
	datad => \ROM|ALT_INV_memROM~16_combout\,
	datae => \ROM|ALT_INV_memROM~14_combout\,
	dataf => \ROM|ALT_INV_memROM~12_combout\,
	combout => \RAM|ram~717_combout\);

\RAM|ram~718\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~718_combout\ = (\RAM|process_0~0_combout\ & \RAM|ram~717_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_process_0~0_combout\,
	datab => \RAM|ALT_INV_ram~717_combout\,
	combout => \RAM|ram~718_combout\);

\RAM|ram~463\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(0),
	ena => \RAM|ram~718_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~463_q\);

\RAM|ram~529\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~529_combout\ = ( \ROM|memROM~12_combout\ & ( \ROM|memROM~14_combout\ & ( \RAM|ram~463_q\ ) ) ) # ( !\ROM|memROM~12_combout\ & ( \ROM|memROM~14_combout\ & ( \RAM|ram~207_q\ ) ) ) # ( \ROM|memROM~12_combout\ & ( !\ROM|memROM~14_combout\ & ( 
-- \RAM|ram~335_q\ ) ) ) # ( !\ROM|memROM~12_combout\ & ( !\ROM|memROM~14_combout\ & ( \RAM|ram~79_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~79_q\,
	datab => \RAM|ALT_INV_ram~335_q\,
	datac => \RAM|ALT_INV_ram~207_q\,
	datad => \RAM|ALT_INV_ram~463_q\,
	datae => \ROM|ALT_INV_memROM~12_combout\,
	dataf => \ROM|ALT_INV_memROM~14_combout\,
	combout => \RAM|ram~529_combout\);

\RAM|ram~719\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~719_combout\ = ( !\ROM|memROM~14_combout\ & ( !\ROM|memROM~12_combout\ & ( (!\ROM|memROM~11_combout\ & (!\ROM|memROM~13_combout\ & (\ROM|memROM~5_combout\ & \ROM|memROM~16_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~11_combout\,
	datab => \ROM|ALT_INV_memROM~13_combout\,
	datac => \ROM|ALT_INV_memROM~5_combout\,
	datad => \ROM|ALT_INV_memROM~16_combout\,
	datae => \ROM|ALT_INV_memROM~14_combout\,
	dataf => \ROM|ALT_INV_memROM~12_combout\,
	combout => \RAM|ram~719_combout\);

\RAM|ram~720\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~720_combout\ = (\RAM|process_0~0_combout\ & \RAM|ram~719_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_process_0~0_combout\,
	datab => \RAM|ALT_INV_ram~719_combout\,
	combout => \RAM|ram~720_combout\);

\RAM|ram~111\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(0),
	ena => \RAM|ram~720_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~111_q\);

\RAM|ram~721\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~721_combout\ = ( !\ROM|memROM~14_combout\ & ( \ROM|memROM~12_combout\ & ( (!\ROM|memROM~11_combout\ & (!\ROM|memROM~13_combout\ & (\ROM|memROM~5_combout\ & \ROM|memROM~16_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~11_combout\,
	datab => \ROM|ALT_INV_memROM~13_combout\,
	datac => \ROM|ALT_INV_memROM~5_combout\,
	datad => \ROM|ALT_INV_memROM~16_combout\,
	datae => \ROM|ALT_INV_memROM~14_combout\,
	dataf => \ROM|ALT_INV_memROM~12_combout\,
	combout => \RAM|ram~721_combout\);

\RAM|ram~722\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~722_combout\ = (\RAM|process_0~0_combout\ & \RAM|ram~721_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_process_0~0_combout\,
	datab => \RAM|ALT_INV_ram~721_combout\,
	combout => \RAM|ram~722_combout\);

\RAM|ram~367\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(0),
	ena => \RAM|ram~722_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~367_q\);

\RAM|ram~723\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~723_combout\ = ( \ROM|memROM~14_combout\ & ( !\ROM|memROM~12_combout\ & ( (!\ROM|memROM~11_combout\ & (!\ROM|memROM~13_combout\ & (\ROM|memROM~5_combout\ & \ROM|memROM~16_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~11_combout\,
	datab => \ROM|ALT_INV_memROM~13_combout\,
	datac => \ROM|ALT_INV_memROM~5_combout\,
	datad => \ROM|ALT_INV_memROM~16_combout\,
	datae => \ROM|ALT_INV_memROM~14_combout\,
	dataf => \ROM|ALT_INV_memROM~12_combout\,
	combout => \RAM|ram~723_combout\);

\RAM|ram~724\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~724_combout\ = (\RAM|process_0~0_combout\ & \RAM|ram~723_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_process_0~0_combout\,
	datab => \RAM|ALT_INV_ram~723_combout\,
	combout => \RAM|ram~724_combout\);

\RAM|ram~239\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(0),
	ena => \RAM|ram~724_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~239_q\);

\RAM|ram~725\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~725_combout\ = ( \ROM|memROM~14_combout\ & ( \ROM|memROM~12_combout\ & ( (!\ROM|memROM~11_combout\ & (!\ROM|memROM~13_combout\ & (\ROM|memROM~5_combout\ & \ROM|memROM~16_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~11_combout\,
	datab => \ROM|ALT_INV_memROM~13_combout\,
	datac => \ROM|ALT_INV_memROM~5_combout\,
	datad => \ROM|ALT_INV_memROM~16_combout\,
	datae => \ROM|ALT_INV_memROM~14_combout\,
	dataf => \ROM|ALT_INV_memROM~12_combout\,
	combout => \RAM|ram~725_combout\);

\RAM|ram~726\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~726_combout\ = (\RAM|process_0~0_combout\ & \RAM|ram~725_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_process_0~0_combout\,
	datab => \RAM|ALT_INV_ram~725_combout\,
	combout => \RAM|ram~726_combout\);

\RAM|ram~495\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(0),
	ena => \RAM|ram~726_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~495_q\);

\RAM|ram~530\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~530_combout\ = ( \ROM|memROM~12_combout\ & ( \ROM|memROM~14_combout\ & ( \RAM|ram~495_q\ ) ) ) # ( !\ROM|memROM~12_combout\ & ( \ROM|memROM~14_combout\ & ( \RAM|ram~239_q\ ) ) ) # ( \ROM|memROM~12_combout\ & ( !\ROM|memROM~14_combout\ & ( 
-- \RAM|ram~367_q\ ) ) ) # ( !\ROM|memROM~12_combout\ & ( !\ROM|memROM~14_combout\ & ( \RAM|ram~111_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~111_q\,
	datab => \RAM|ALT_INV_ram~367_q\,
	datac => \RAM|ALT_INV_ram~239_q\,
	datad => \RAM|ALT_INV_ram~495_q\,
	datae => \ROM|ALT_INV_memROM~12_combout\,
	dataf => \ROM|ALT_INV_memROM~14_combout\,
	combout => \RAM|ram~530_combout\);

\RAM|ram~531\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~531_combout\ = ( \ROM|memROM~5_combout\ & ( \ROM|memROM~16_combout\ & ( \RAM|ram~530_combout\ ) ) ) # ( !\ROM|memROM~5_combout\ & ( \ROM|memROM~16_combout\ & ( \RAM|ram~529_combout\ ) ) ) # ( \ROM|memROM~5_combout\ & ( !\ROM|memROM~16_combout\ & 
-- ( \RAM|ram~528_combout\ ) ) ) # ( !\ROM|memROM~5_combout\ & ( !\ROM|memROM~16_combout\ & ( \RAM|ram~527_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~527_combout\,
	datab => \RAM|ALT_INV_ram~528_combout\,
	datac => \RAM|ALT_INV_ram~529_combout\,
	datad => \RAM|ALT_INV_ram~530_combout\,
	datae => \ROM|ALT_INV_memROM~5_combout\,
	dataf => \ROM|ALT_INV_memROM~16_combout\,
	combout => \RAM|ram~531_combout\);

\RAM|ram~727\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~727_combout\ = ( !\ROM|memROM~14_combout\ & ( !\ROM|memROM~12_combout\ & ( (\ROM|memROM~11_combout\ & (!\ROM|memROM~13_combout\ & (!\ROM|memROM~5_combout\ & !\ROM|memROM~16_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~11_combout\,
	datab => \ROM|ALT_INV_memROM~13_combout\,
	datac => \ROM|ALT_INV_memROM~5_combout\,
	datad => \ROM|ALT_INV_memROM~16_combout\,
	datae => \ROM|ALT_INV_memROM~14_combout\,
	dataf => \ROM|ALT_INV_memROM~12_combout\,
	combout => \RAM|ram~727_combout\);

\RAM|ram~728\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~728_combout\ = (\RAM|process_0~0_combout\ & \RAM|ram~727_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_process_0~0_combout\,
	datab => \RAM|ALT_INV_ram~727_combout\,
	combout => \RAM|ram~728_combout\);

\RAM|ram~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(0),
	ena => \RAM|ram~728_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~23_q\);

\RAM|ram~729\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~729_combout\ = ( !\ROM|memROM~14_combout\ & ( \ROM|memROM~12_combout\ & ( (\ROM|memROM~11_combout\ & (!\ROM|memROM~13_combout\ & (!\ROM|memROM~5_combout\ & !\ROM|memROM~16_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~11_combout\,
	datab => \ROM|ALT_INV_memROM~13_combout\,
	datac => \ROM|ALT_INV_memROM~5_combout\,
	datad => \ROM|ALT_INV_memROM~16_combout\,
	datae => \ROM|ALT_INV_memROM~14_combout\,
	dataf => \ROM|ALT_INV_memROM~12_combout\,
	combout => \RAM|ram~729_combout\);

\RAM|ram~730\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~730_combout\ = (\RAM|process_0~0_combout\ & \RAM|ram~729_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_process_0~0_combout\,
	datab => \RAM|ALT_INV_ram~729_combout\,
	combout => \RAM|ram~730_combout\);

\RAM|ram~279\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(0),
	ena => \RAM|ram~730_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~279_q\);

\RAM|ram~731\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~731_combout\ = ( \ROM|memROM~14_combout\ & ( !\ROM|memROM~12_combout\ & ( (\ROM|memROM~11_combout\ & (!\ROM|memROM~13_combout\ & (!\ROM|memROM~5_combout\ & !\ROM|memROM~16_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~11_combout\,
	datab => \ROM|ALT_INV_memROM~13_combout\,
	datac => \ROM|ALT_INV_memROM~5_combout\,
	datad => \ROM|ALT_INV_memROM~16_combout\,
	datae => \ROM|ALT_INV_memROM~14_combout\,
	dataf => \ROM|ALT_INV_memROM~12_combout\,
	combout => \RAM|ram~731_combout\);

\RAM|ram~732\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~732_combout\ = (\RAM|process_0~0_combout\ & \RAM|ram~731_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_process_0~0_combout\,
	datab => \RAM|ALT_INV_ram~731_combout\,
	combout => \RAM|ram~732_combout\);

\RAM|ram~151\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(0),
	ena => \RAM|ram~732_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~151_q\);

\RAM|ram~733\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~733_combout\ = ( \ROM|memROM~14_combout\ & ( \ROM|memROM~12_combout\ & ( (\ROM|memROM~11_combout\ & (!\ROM|memROM~13_combout\ & (!\ROM|memROM~5_combout\ & !\ROM|memROM~16_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~11_combout\,
	datab => \ROM|ALT_INV_memROM~13_combout\,
	datac => \ROM|ALT_INV_memROM~5_combout\,
	datad => \ROM|ALT_INV_memROM~16_combout\,
	datae => \ROM|ALT_INV_memROM~14_combout\,
	dataf => \ROM|ALT_INV_memROM~12_combout\,
	combout => \RAM|ram~733_combout\);

\RAM|ram~734\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~734_combout\ = (\RAM|process_0~0_combout\ & \RAM|ram~733_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_process_0~0_combout\,
	datab => \RAM|ALT_INV_ram~733_combout\,
	combout => \RAM|ram~734_combout\);

\RAM|ram~407\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(0),
	ena => \RAM|ram~734_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~407_q\);

\RAM|ram~532\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~532_combout\ = ( \ROM|memROM~12_combout\ & ( \ROM|memROM~14_combout\ & ( \RAM|ram~407_q\ ) ) ) # ( !\ROM|memROM~12_combout\ & ( \ROM|memROM~14_combout\ & ( \RAM|ram~151_q\ ) ) ) # ( \ROM|memROM~12_combout\ & ( !\ROM|memROM~14_combout\ & ( 
-- \RAM|ram~279_q\ ) ) ) # ( !\ROM|memROM~12_combout\ & ( !\ROM|memROM~14_combout\ & ( \RAM|ram~23_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~23_q\,
	datab => \RAM|ALT_INV_ram~279_q\,
	datac => \RAM|ALT_INV_ram~151_q\,
	datad => \RAM|ALT_INV_ram~407_q\,
	datae => \ROM|ALT_INV_memROM~12_combout\,
	dataf => \ROM|ALT_INV_memROM~14_combout\,
	combout => \RAM|ram~532_combout\);

\RAM|ram~735\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~735_combout\ = ( !\ROM|memROM~14_combout\ & ( !\ROM|memROM~12_combout\ & ( (\ROM|memROM~11_combout\ & (!\ROM|memROM~13_combout\ & (\ROM|memROM~5_combout\ & !\ROM|memROM~16_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~11_combout\,
	datab => \ROM|ALT_INV_memROM~13_combout\,
	datac => \ROM|ALT_INV_memROM~5_combout\,
	datad => \ROM|ALT_INV_memROM~16_combout\,
	datae => \ROM|ALT_INV_memROM~14_combout\,
	dataf => \ROM|ALT_INV_memROM~12_combout\,
	combout => \RAM|ram~735_combout\);

\RAM|ram~736\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~736_combout\ = (\RAM|process_0~0_combout\ & \RAM|ram~735_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_process_0~0_combout\,
	datab => \RAM|ALT_INV_ram~735_combout\,
	combout => \RAM|ram~736_combout\);

\RAM|ram~55\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(0),
	ena => \RAM|ram~736_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~55_q\);

\RAM|ram~737\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~737_combout\ = ( !\ROM|memROM~14_combout\ & ( \ROM|memROM~12_combout\ & ( (\ROM|memROM~11_combout\ & (!\ROM|memROM~13_combout\ & (\ROM|memROM~5_combout\ & !\ROM|memROM~16_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000100000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~11_combout\,
	datab => \ROM|ALT_INV_memROM~13_combout\,
	datac => \ROM|ALT_INV_memROM~5_combout\,
	datad => \ROM|ALT_INV_memROM~16_combout\,
	datae => \ROM|ALT_INV_memROM~14_combout\,
	dataf => \ROM|ALT_INV_memROM~12_combout\,
	combout => \RAM|ram~737_combout\);

\RAM|ram~738\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~738_combout\ = (\RAM|process_0~0_combout\ & \RAM|ram~737_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_process_0~0_combout\,
	datab => \RAM|ALT_INV_ram~737_combout\,
	combout => \RAM|ram~738_combout\);

\RAM|ram~311\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(0),
	ena => \RAM|ram~738_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~311_q\);

\RAM|ram~739\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~739_combout\ = ( \ROM|memROM~14_combout\ & ( !\ROM|memROM~12_combout\ & ( (\ROM|memROM~11_combout\ & (!\ROM|memROM~13_combout\ & (\ROM|memROM~5_combout\ & !\ROM|memROM~16_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~11_combout\,
	datab => \ROM|ALT_INV_memROM~13_combout\,
	datac => \ROM|ALT_INV_memROM~5_combout\,
	datad => \ROM|ALT_INV_memROM~16_combout\,
	datae => \ROM|ALT_INV_memROM~14_combout\,
	dataf => \ROM|ALT_INV_memROM~12_combout\,
	combout => \RAM|ram~739_combout\);

\RAM|ram~740\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~740_combout\ = (\RAM|process_0~0_combout\ & \RAM|ram~739_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_process_0~0_combout\,
	datab => \RAM|ALT_INV_ram~739_combout\,
	combout => \RAM|ram~740_combout\);

\RAM|ram~183\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(0),
	ena => \RAM|ram~740_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~183_q\);

\RAM|ram~741\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~741_combout\ = ( \ROM|memROM~14_combout\ & ( \ROM|memROM~12_combout\ & ( (\ROM|memROM~11_combout\ & (!\ROM|memROM~13_combout\ & (\ROM|memROM~5_combout\ & !\ROM|memROM~16_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~11_combout\,
	datab => \ROM|ALT_INV_memROM~13_combout\,
	datac => \ROM|ALT_INV_memROM~5_combout\,
	datad => \ROM|ALT_INV_memROM~16_combout\,
	datae => \ROM|ALT_INV_memROM~14_combout\,
	dataf => \ROM|ALT_INV_memROM~12_combout\,
	combout => \RAM|ram~741_combout\);

\RAM|ram~742\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~742_combout\ = (\RAM|process_0~0_combout\ & \RAM|ram~741_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_process_0~0_combout\,
	datab => \RAM|ALT_INV_ram~741_combout\,
	combout => \RAM|ram~742_combout\);

\RAM|ram~439\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(0),
	ena => \RAM|ram~742_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~439_q\);

\RAM|ram~533\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~533_combout\ = ( \ROM|memROM~12_combout\ & ( \ROM|memROM~14_combout\ & ( \RAM|ram~439_q\ ) ) ) # ( !\ROM|memROM~12_combout\ & ( \ROM|memROM~14_combout\ & ( \RAM|ram~183_q\ ) ) ) # ( \ROM|memROM~12_combout\ & ( !\ROM|memROM~14_combout\ & ( 
-- \RAM|ram~311_q\ ) ) ) # ( !\ROM|memROM~12_combout\ & ( !\ROM|memROM~14_combout\ & ( \RAM|ram~55_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~55_q\,
	datab => \RAM|ALT_INV_ram~311_q\,
	datac => \RAM|ALT_INV_ram~183_q\,
	datad => \RAM|ALT_INV_ram~439_q\,
	datae => \ROM|ALT_INV_memROM~12_combout\,
	dataf => \ROM|ALT_INV_memROM~14_combout\,
	combout => \RAM|ram~533_combout\);

\RAM|ram~743\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~743_combout\ = ( !\ROM|memROM~14_combout\ & ( !\ROM|memROM~12_combout\ & ( (\ROM|memROM~11_combout\ & (!\ROM|memROM~13_combout\ & (!\ROM|memROM~5_combout\ & \ROM|memROM~16_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~11_combout\,
	datab => \ROM|ALT_INV_memROM~13_combout\,
	datac => \ROM|ALT_INV_memROM~5_combout\,
	datad => \ROM|ALT_INV_memROM~16_combout\,
	datae => \ROM|ALT_INV_memROM~14_combout\,
	dataf => \ROM|ALT_INV_memROM~12_combout\,
	combout => \RAM|ram~743_combout\);

\RAM|ram~744\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~744_combout\ = (\RAM|process_0~0_combout\ & \RAM|ram~743_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_process_0~0_combout\,
	datab => \RAM|ALT_INV_ram~743_combout\,
	combout => \RAM|ram~744_combout\);

\RAM|ram~87\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(0),
	ena => \RAM|ram~744_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~87_q\);

\RAM|ram~745\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~745_combout\ = ( !\ROM|memROM~14_combout\ & ( \ROM|memROM~12_combout\ & ( (\ROM|memROM~11_combout\ & (!\ROM|memROM~13_combout\ & (!\ROM|memROM~5_combout\ & \ROM|memROM~16_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~11_combout\,
	datab => \ROM|ALT_INV_memROM~13_combout\,
	datac => \ROM|ALT_INV_memROM~5_combout\,
	datad => \ROM|ALT_INV_memROM~16_combout\,
	datae => \ROM|ALT_INV_memROM~14_combout\,
	dataf => \ROM|ALT_INV_memROM~12_combout\,
	combout => \RAM|ram~745_combout\);

\RAM|ram~746\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~746_combout\ = (\RAM|process_0~0_combout\ & \RAM|ram~745_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_process_0~0_combout\,
	datab => \RAM|ALT_INV_ram~745_combout\,
	combout => \RAM|ram~746_combout\);

\RAM|ram~343\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(0),
	ena => \RAM|ram~746_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~343_q\);

\RAM|ram~747\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~747_combout\ = ( \ROM|memROM~14_combout\ & ( !\ROM|memROM~12_combout\ & ( (\ROM|memROM~11_combout\ & (!\ROM|memROM~13_combout\ & (!\ROM|memROM~5_combout\ & \ROM|memROM~16_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~11_combout\,
	datab => \ROM|ALT_INV_memROM~13_combout\,
	datac => \ROM|ALT_INV_memROM~5_combout\,
	datad => \ROM|ALT_INV_memROM~16_combout\,
	datae => \ROM|ALT_INV_memROM~14_combout\,
	dataf => \ROM|ALT_INV_memROM~12_combout\,
	combout => \RAM|ram~747_combout\);

\RAM|ram~748\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~748_combout\ = (\RAM|process_0~0_combout\ & \RAM|ram~747_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_process_0~0_combout\,
	datab => \RAM|ALT_INV_ram~747_combout\,
	combout => \RAM|ram~748_combout\);

\RAM|ram~215\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(0),
	ena => \RAM|ram~748_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~215_q\);

\RAM|ram~749\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~749_combout\ = ( \ROM|memROM~14_combout\ & ( \ROM|memROM~12_combout\ & ( (\ROM|memROM~11_combout\ & (!\ROM|memROM~13_combout\ & (!\ROM|memROM~5_combout\ & \ROM|memROM~16_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~11_combout\,
	datab => \ROM|ALT_INV_memROM~13_combout\,
	datac => \ROM|ALT_INV_memROM~5_combout\,
	datad => \ROM|ALT_INV_memROM~16_combout\,
	datae => \ROM|ALT_INV_memROM~14_combout\,
	dataf => \ROM|ALT_INV_memROM~12_combout\,
	combout => \RAM|ram~749_combout\);

\RAM|ram~750\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~750_combout\ = (\RAM|process_0~0_combout\ & \RAM|ram~749_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_process_0~0_combout\,
	datab => \RAM|ALT_INV_ram~749_combout\,
	combout => \RAM|ram~750_combout\);

\RAM|ram~471\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(0),
	ena => \RAM|ram~750_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~471_q\);

\RAM|ram~534\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~534_combout\ = ( \ROM|memROM~12_combout\ & ( \ROM|memROM~14_combout\ & ( \RAM|ram~471_q\ ) ) ) # ( !\ROM|memROM~12_combout\ & ( \ROM|memROM~14_combout\ & ( \RAM|ram~215_q\ ) ) ) # ( \ROM|memROM~12_combout\ & ( !\ROM|memROM~14_combout\ & ( 
-- \RAM|ram~343_q\ ) ) ) # ( !\ROM|memROM~12_combout\ & ( !\ROM|memROM~14_combout\ & ( \RAM|ram~87_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~87_q\,
	datab => \RAM|ALT_INV_ram~343_q\,
	datac => \RAM|ALT_INV_ram~215_q\,
	datad => \RAM|ALT_INV_ram~471_q\,
	datae => \ROM|ALT_INV_memROM~12_combout\,
	dataf => \ROM|ALT_INV_memROM~14_combout\,
	combout => \RAM|ram~534_combout\);

\RAM|ram~751\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~751_combout\ = ( !\ROM|memROM~14_combout\ & ( !\ROM|memROM~12_combout\ & ( (\ROM|memROM~11_combout\ & (!\ROM|memROM~13_combout\ & (\ROM|memROM~5_combout\ & \ROM|memROM~16_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~11_combout\,
	datab => \ROM|ALT_INV_memROM~13_combout\,
	datac => \ROM|ALT_INV_memROM~5_combout\,
	datad => \ROM|ALT_INV_memROM~16_combout\,
	datae => \ROM|ALT_INV_memROM~14_combout\,
	dataf => \ROM|ALT_INV_memROM~12_combout\,
	combout => \RAM|ram~751_combout\);

\RAM|ram~752\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~752_combout\ = (\RAM|process_0~0_combout\ & \RAM|ram~751_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_process_0~0_combout\,
	datab => \RAM|ALT_INV_ram~751_combout\,
	combout => \RAM|ram~752_combout\);

\RAM|ram~119\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(0),
	ena => \RAM|ram~752_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~119_q\);

\RAM|ram~753\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~753_combout\ = ( !\ROM|memROM~14_combout\ & ( \ROM|memROM~12_combout\ & ( (\ROM|memROM~11_combout\ & (!\ROM|memROM~13_combout\ & (\ROM|memROM~5_combout\ & \ROM|memROM~16_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~11_combout\,
	datab => \ROM|ALT_INV_memROM~13_combout\,
	datac => \ROM|ALT_INV_memROM~5_combout\,
	datad => \ROM|ALT_INV_memROM~16_combout\,
	datae => \ROM|ALT_INV_memROM~14_combout\,
	dataf => \ROM|ALT_INV_memROM~12_combout\,
	combout => \RAM|ram~753_combout\);

\RAM|ram~754\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~754_combout\ = (\RAM|process_0~0_combout\ & \RAM|ram~753_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_process_0~0_combout\,
	datab => \RAM|ALT_INV_ram~753_combout\,
	combout => \RAM|ram~754_combout\);

\RAM|ram~375\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(0),
	ena => \RAM|ram~754_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~375_q\);

\RAM|ram~755\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~755_combout\ = ( \ROM|memROM~14_combout\ & ( !\ROM|memROM~12_combout\ & ( (\ROM|memROM~11_combout\ & (!\ROM|memROM~13_combout\ & (\ROM|memROM~5_combout\ & \ROM|memROM~16_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~11_combout\,
	datab => \ROM|ALT_INV_memROM~13_combout\,
	datac => \ROM|ALT_INV_memROM~5_combout\,
	datad => \ROM|ALT_INV_memROM~16_combout\,
	datae => \ROM|ALT_INV_memROM~14_combout\,
	dataf => \ROM|ALT_INV_memROM~12_combout\,
	combout => \RAM|ram~755_combout\);

\RAM|ram~756\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~756_combout\ = (\RAM|process_0~0_combout\ & \RAM|ram~755_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_process_0~0_combout\,
	datab => \RAM|ALT_INV_ram~755_combout\,
	combout => \RAM|ram~756_combout\);

\RAM|ram~247\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(0),
	ena => \RAM|ram~756_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~247_q\);

\RAM|ram~757\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~757_combout\ = ( \ROM|memROM~14_combout\ & ( \ROM|memROM~12_combout\ & ( (\ROM|memROM~11_combout\ & (!\ROM|memROM~13_combout\ & (\ROM|memROM~5_combout\ & \ROM|memROM~16_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~11_combout\,
	datab => \ROM|ALT_INV_memROM~13_combout\,
	datac => \ROM|ALT_INV_memROM~5_combout\,
	datad => \ROM|ALT_INV_memROM~16_combout\,
	datae => \ROM|ALT_INV_memROM~14_combout\,
	dataf => \ROM|ALT_INV_memROM~12_combout\,
	combout => \RAM|ram~757_combout\);

\RAM|ram~758\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~758_combout\ = (\RAM|process_0~0_combout\ & \RAM|ram~757_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_process_0~0_combout\,
	datab => \RAM|ALT_INV_ram~757_combout\,
	combout => \RAM|ram~758_combout\);

\RAM|ram~503\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(0),
	ena => \RAM|ram~758_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~503_q\);

\RAM|ram~535\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~535_combout\ = ( \ROM|memROM~12_combout\ & ( \ROM|memROM~14_combout\ & ( \RAM|ram~503_q\ ) ) ) # ( !\ROM|memROM~12_combout\ & ( \ROM|memROM~14_combout\ & ( \RAM|ram~247_q\ ) ) ) # ( \ROM|memROM~12_combout\ & ( !\ROM|memROM~14_combout\ & ( 
-- \RAM|ram~375_q\ ) ) ) # ( !\ROM|memROM~12_combout\ & ( !\ROM|memROM~14_combout\ & ( \RAM|ram~119_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~119_q\,
	datab => \RAM|ALT_INV_ram~375_q\,
	datac => \RAM|ALT_INV_ram~247_q\,
	datad => \RAM|ALT_INV_ram~503_q\,
	datae => \ROM|ALT_INV_memROM~12_combout\,
	dataf => \ROM|ALT_INV_memROM~14_combout\,
	combout => \RAM|ram~535_combout\);

\RAM|ram~536\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~536_combout\ = ( \ROM|memROM~5_combout\ & ( \ROM|memROM~16_combout\ & ( \RAM|ram~535_combout\ ) ) ) # ( !\ROM|memROM~5_combout\ & ( \ROM|memROM~16_combout\ & ( \RAM|ram~534_combout\ ) ) ) # ( \ROM|memROM~5_combout\ & ( !\ROM|memROM~16_combout\ & 
-- ( \RAM|ram~533_combout\ ) ) ) # ( !\ROM|memROM~5_combout\ & ( !\ROM|memROM~16_combout\ & ( \RAM|ram~532_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~532_combout\,
	datab => \RAM|ALT_INV_ram~533_combout\,
	datac => \RAM|ALT_INV_ram~534_combout\,
	datad => \RAM|ALT_INV_ram~535_combout\,
	datae => \ROM|ALT_INV_memROM~5_combout\,
	dataf => \ROM|ALT_INV_memROM~16_combout\,
	combout => \RAM|ram~536_combout\);

\RAM|ram~759\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~759_combout\ = ( !\ROM|memROM~14_combout\ & ( !\ROM|memROM~12_combout\ & ( (!\ROM|memROM~11_combout\ & (\ROM|memROM~13_combout\ & (!\ROM|memROM~5_combout\ & !\ROM|memROM~16_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~11_combout\,
	datab => \ROM|ALT_INV_memROM~13_combout\,
	datac => \ROM|ALT_INV_memROM~5_combout\,
	datad => \ROM|ALT_INV_memROM~16_combout\,
	datae => \ROM|ALT_INV_memROM~14_combout\,
	dataf => \ROM|ALT_INV_memROM~12_combout\,
	combout => \RAM|ram~759_combout\);

\RAM|ram~760\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~760_combout\ = (\RAM|process_0~0_combout\ & \RAM|ram~759_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_process_0~0_combout\,
	datab => \RAM|ALT_INV_ram~759_combout\,
	combout => \RAM|ram~760_combout\);

\RAM|ram~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(0),
	ena => \RAM|ram~760_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~31_q\);

\RAM|ram~761\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~761_combout\ = ( !\ROM|memROM~14_combout\ & ( \ROM|memROM~12_combout\ & ( (!\ROM|memROM~11_combout\ & (\ROM|memROM~13_combout\ & (!\ROM|memROM~5_combout\ & !\ROM|memROM~16_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~11_combout\,
	datab => \ROM|ALT_INV_memROM~13_combout\,
	datac => \ROM|ALT_INV_memROM~5_combout\,
	datad => \ROM|ALT_INV_memROM~16_combout\,
	datae => \ROM|ALT_INV_memROM~14_combout\,
	dataf => \ROM|ALT_INV_memROM~12_combout\,
	combout => \RAM|ram~761_combout\);

\RAM|ram~762\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~762_combout\ = (\RAM|process_0~0_combout\ & \RAM|ram~761_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_process_0~0_combout\,
	datab => \RAM|ALT_INV_ram~761_combout\,
	combout => \RAM|ram~762_combout\);

\RAM|ram~287\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(0),
	ena => \RAM|ram~762_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~287_q\);

\RAM|ram~763\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~763_combout\ = ( \ROM|memROM~14_combout\ & ( !\ROM|memROM~12_combout\ & ( (!\ROM|memROM~11_combout\ & (\ROM|memROM~13_combout\ & (!\ROM|memROM~5_combout\ & !\ROM|memROM~16_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~11_combout\,
	datab => \ROM|ALT_INV_memROM~13_combout\,
	datac => \ROM|ALT_INV_memROM~5_combout\,
	datad => \ROM|ALT_INV_memROM~16_combout\,
	datae => \ROM|ALT_INV_memROM~14_combout\,
	dataf => \ROM|ALT_INV_memROM~12_combout\,
	combout => \RAM|ram~763_combout\);

\RAM|ram~764\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~764_combout\ = (\RAM|process_0~0_combout\ & \RAM|ram~763_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_process_0~0_combout\,
	datab => \RAM|ALT_INV_ram~763_combout\,
	combout => \RAM|ram~764_combout\);

\RAM|ram~159\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(0),
	ena => \RAM|ram~764_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~159_q\);

\RAM|ram~765\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~765_combout\ = ( \ROM|memROM~14_combout\ & ( \ROM|memROM~12_combout\ & ( (!\ROM|memROM~11_combout\ & (\ROM|memROM~13_combout\ & (!\ROM|memROM~5_combout\ & !\ROM|memROM~16_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~11_combout\,
	datab => \ROM|ALT_INV_memROM~13_combout\,
	datac => \ROM|ALT_INV_memROM~5_combout\,
	datad => \ROM|ALT_INV_memROM~16_combout\,
	datae => \ROM|ALT_INV_memROM~14_combout\,
	dataf => \ROM|ALT_INV_memROM~12_combout\,
	combout => \RAM|ram~765_combout\);

\RAM|ram~766\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~766_combout\ = (\RAM|process_0~0_combout\ & \RAM|ram~765_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_process_0~0_combout\,
	datab => \RAM|ALT_INV_ram~765_combout\,
	combout => \RAM|ram~766_combout\);

\RAM|ram~415\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(0),
	ena => \RAM|ram~766_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~415_q\);

\RAM|ram~537\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~537_combout\ = ( \ROM|memROM~12_combout\ & ( \ROM|memROM~14_combout\ & ( \RAM|ram~415_q\ ) ) ) # ( !\ROM|memROM~12_combout\ & ( \ROM|memROM~14_combout\ & ( \RAM|ram~159_q\ ) ) ) # ( \ROM|memROM~12_combout\ & ( !\ROM|memROM~14_combout\ & ( 
-- \RAM|ram~287_q\ ) ) ) # ( !\ROM|memROM~12_combout\ & ( !\ROM|memROM~14_combout\ & ( \RAM|ram~31_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~31_q\,
	datab => \RAM|ALT_INV_ram~287_q\,
	datac => \RAM|ALT_INV_ram~159_q\,
	datad => \RAM|ALT_INV_ram~415_q\,
	datae => \ROM|ALT_INV_memROM~12_combout\,
	dataf => \ROM|ALT_INV_memROM~14_combout\,
	combout => \RAM|ram~537_combout\);

\RAM|ram~767\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~767_combout\ = ( !\ROM|memROM~14_combout\ & ( !\ROM|memROM~12_combout\ & ( (!\ROM|memROM~11_combout\ & (\ROM|memROM~13_combout\ & (\ROM|memROM~5_combout\ & !\ROM|memROM~16_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~11_combout\,
	datab => \ROM|ALT_INV_memROM~13_combout\,
	datac => \ROM|ALT_INV_memROM~5_combout\,
	datad => \ROM|ALT_INV_memROM~16_combout\,
	datae => \ROM|ALT_INV_memROM~14_combout\,
	dataf => \ROM|ALT_INV_memROM~12_combout\,
	combout => \RAM|ram~767_combout\);

\RAM|ram~768\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~768_combout\ = (\RAM|process_0~0_combout\ & \RAM|ram~767_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_process_0~0_combout\,
	datab => \RAM|ALT_INV_ram~767_combout\,
	combout => \RAM|ram~768_combout\);

\RAM|ram~63\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(0),
	ena => \RAM|ram~768_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~63_q\);

\RAM|ram~769\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~769_combout\ = ( !\ROM|memROM~14_combout\ & ( \ROM|memROM~12_combout\ & ( (!\ROM|memROM~11_combout\ & (\ROM|memROM~13_combout\ & (\ROM|memROM~5_combout\ & !\ROM|memROM~16_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000010000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~11_combout\,
	datab => \ROM|ALT_INV_memROM~13_combout\,
	datac => \ROM|ALT_INV_memROM~5_combout\,
	datad => \ROM|ALT_INV_memROM~16_combout\,
	datae => \ROM|ALT_INV_memROM~14_combout\,
	dataf => \ROM|ALT_INV_memROM~12_combout\,
	combout => \RAM|ram~769_combout\);

\RAM|ram~770\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~770_combout\ = (\RAM|process_0~0_combout\ & \RAM|ram~769_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_process_0~0_combout\,
	datab => \RAM|ALT_INV_ram~769_combout\,
	combout => \RAM|ram~770_combout\);

\RAM|ram~319\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(0),
	ena => \RAM|ram~770_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~319_q\);

\RAM|ram~771\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~771_combout\ = ( \ROM|memROM~14_combout\ & ( !\ROM|memROM~12_combout\ & ( (!\ROM|memROM~11_combout\ & (\ROM|memROM~13_combout\ & (\ROM|memROM~5_combout\ & !\ROM|memROM~16_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000100000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~11_combout\,
	datab => \ROM|ALT_INV_memROM~13_combout\,
	datac => \ROM|ALT_INV_memROM~5_combout\,
	datad => \ROM|ALT_INV_memROM~16_combout\,
	datae => \ROM|ALT_INV_memROM~14_combout\,
	dataf => \ROM|ALT_INV_memROM~12_combout\,
	combout => \RAM|ram~771_combout\);

\RAM|ram~772\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~772_combout\ = (\RAM|process_0~0_combout\ & \RAM|ram~771_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_process_0~0_combout\,
	datab => \RAM|ALT_INV_ram~771_combout\,
	combout => \RAM|ram~772_combout\);

\RAM|ram~191\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(0),
	ena => \RAM|ram~772_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~191_q\);

\RAM|ram~773\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~773_combout\ = ( \ROM|memROM~14_combout\ & ( \ROM|memROM~12_combout\ & ( (!\ROM|memROM~11_combout\ & (\ROM|memROM~13_combout\ & (\ROM|memROM~5_combout\ & !\ROM|memROM~16_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~11_combout\,
	datab => \ROM|ALT_INV_memROM~13_combout\,
	datac => \ROM|ALT_INV_memROM~5_combout\,
	datad => \ROM|ALT_INV_memROM~16_combout\,
	datae => \ROM|ALT_INV_memROM~14_combout\,
	dataf => \ROM|ALT_INV_memROM~12_combout\,
	combout => \RAM|ram~773_combout\);

\RAM|ram~774\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~774_combout\ = (\RAM|process_0~0_combout\ & \RAM|ram~773_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_process_0~0_combout\,
	datab => \RAM|ALT_INV_ram~773_combout\,
	combout => \RAM|ram~774_combout\);

\RAM|ram~447\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(0),
	ena => \RAM|ram~774_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~447_q\);

\RAM|ram~538\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~538_combout\ = ( \ROM|memROM~12_combout\ & ( \ROM|memROM~14_combout\ & ( \RAM|ram~447_q\ ) ) ) # ( !\ROM|memROM~12_combout\ & ( \ROM|memROM~14_combout\ & ( \RAM|ram~191_q\ ) ) ) # ( \ROM|memROM~12_combout\ & ( !\ROM|memROM~14_combout\ & ( 
-- \RAM|ram~319_q\ ) ) ) # ( !\ROM|memROM~12_combout\ & ( !\ROM|memROM~14_combout\ & ( \RAM|ram~63_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~63_q\,
	datab => \RAM|ALT_INV_ram~319_q\,
	datac => \RAM|ALT_INV_ram~191_q\,
	datad => \RAM|ALT_INV_ram~447_q\,
	datae => \ROM|ALT_INV_memROM~12_combout\,
	dataf => \ROM|ALT_INV_memROM~14_combout\,
	combout => \RAM|ram~538_combout\);

\RAM|ram~775\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~775_combout\ = ( !\ROM|memROM~14_combout\ & ( !\ROM|memROM~12_combout\ & ( (!\ROM|memROM~11_combout\ & (\ROM|memROM~13_combout\ & (!\ROM|memROM~5_combout\ & \ROM|memROM~16_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~11_combout\,
	datab => \ROM|ALT_INV_memROM~13_combout\,
	datac => \ROM|ALT_INV_memROM~5_combout\,
	datad => \ROM|ALT_INV_memROM~16_combout\,
	datae => \ROM|ALT_INV_memROM~14_combout\,
	dataf => \ROM|ALT_INV_memROM~12_combout\,
	combout => \RAM|ram~775_combout\);

\RAM|ram~776\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~776_combout\ = (\RAM|process_0~0_combout\ & \RAM|ram~775_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_process_0~0_combout\,
	datab => \RAM|ALT_INV_ram~775_combout\,
	combout => \RAM|ram~776_combout\);

\RAM|ram~95\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(0),
	ena => \RAM|ram~776_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~95_q\);

\RAM|ram~777\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~777_combout\ = ( !\ROM|memROM~14_combout\ & ( \ROM|memROM~12_combout\ & ( (!\ROM|memROM~11_combout\ & (\ROM|memROM~13_combout\ & (!\ROM|memROM~5_combout\ & \ROM|memROM~16_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~11_combout\,
	datab => \ROM|ALT_INV_memROM~13_combout\,
	datac => \ROM|ALT_INV_memROM~5_combout\,
	datad => \ROM|ALT_INV_memROM~16_combout\,
	datae => \ROM|ALT_INV_memROM~14_combout\,
	dataf => \ROM|ALT_INV_memROM~12_combout\,
	combout => \RAM|ram~777_combout\);

\RAM|ram~778\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~778_combout\ = (\RAM|process_0~0_combout\ & \RAM|ram~777_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_process_0~0_combout\,
	datab => \RAM|ALT_INV_ram~777_combout\,
	combout => \RAM|ram~778_combout\);

\RAM|ram~351\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(0),
	ena => \RAM|ram~778_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~351_q\);

\RAM|ram~779\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~779_combout\ = ( \ROM|memROM~14_combout\ & ( !\ROM|memROM~12_combout\ & ( (!\ROM|memROM~11_combout\ & (\ROM|memROM~13_combout\ & (!\ROM|memROM~5_combout\ & \ROM|memROM~16_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~11_combout\,
	datab => \ROM|ALT_INV_memROM~13_combout\,
	datac => \ROM|ALT_INV_memROM~5_combout\,
	datad => \ROM|ALT_INV_memROM~16_combout\,
	datae => \ROM|ALT_INV_memROM~14_combout\,
	dataf => \ROM|ALT_INV_memROM~12_combout\,
	combout => \RAM|ram~779_combout\);

\RAM|ram~780\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~780_combout\ = (\RAM|process_0~0_combout\ & \RAM|ram~779_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_process_0~0_combout\,
	datab => \RAM|ALT_INV_ram~779_combout\,
	combout => \RAM|ram~780_combout\);

\RAM|ram~223\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(0),
	ena => \RAM|ram~780_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~223_q\);

\RAM|ram~781\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~781_combout\ = ( \ROM|memROM~14_combout\ & ( \ROM|memROM~12_combout\ & ( (!\ROM|memROM~11_combout\ & (\ROM|memROM~13_combout\ & (!\ROM|memROM~5_combout\ & \ROM|memROM~16_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~11_combout\,
	datab => \ROM|ALT_INV_memROM~13_combout\,
	datac => \ROM|ALT_INV_memROM~5_combout\,
	datad => \ROM|ALT_INV_memROM~16_combout\,
	datae => \ROM|ALT_INV_memROM~14_combout\,
	dataf => \ROM|ALT_INV_memROM~12_combout\,
	combout => \RAM|ram~781_combout\);

\RAM|ram~782\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~782_combout\ = (\RAM|process_0~0_combout\ & \RAM|ram~781_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_process_0~0_combout\,
	datab => \RAM|ALT_INV_ram~781_combout\,
	combout => \RAM|ram~782_combout\);

\RAM|ram~479\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(0),
	ena => \RAM|ram~782_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~479_q\);

\RAM|ram~539\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~539_combout\ = ( \ROM|memROM~12_combout\ & ( \ROM|memROM~14_combout\ & ( \RAM|ram~479_q\ ) ) ) # ( !\ROM|memROM~12_combout\ & ( \ROM|memROM~14_combout\ & ( \RAM|ram~223_q\ ) ) ) # ( \ROM|memROM~12_combout\ & ( !\ROM|memROM~14_combout\ & ( 
-- \RAM|ram~351_q\ ) ) ) # ( !\ROM|memROM~12_combout\ & ( !\ROM|memROM~14_combout\ & ( \RAM|ram~95_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~95_q\,
	datab => \RAM|ALT_INV_ram~351_q\,
	datac => \RAM|ALT_INV_ram~223_q\,
	datad => \RAM|ALT_INV_ram~479_q\,
	datae => \ROM|ALT_INV_memROM~12_combout\,
	dataf => \ROM|ALT_INV_memROM~14_combout\,
	combout => \RAM|ram~539_combout\);

\RAM|ram~783\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~783_combout\ = ( !\ROM|memROM~14_combout\ & ( !\ROM|memROM~12_combout\ & ( (!\ROM|memROM~11_combout\ & (\ROM|memROM~13_combout\ & (\ROM|memROM~5_combout\ & \ROM|memROM~16_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~11_combout\,
	datab => \ROM|ALT_INV_memROM~13_combout\,
	datac => \ROM|ALT_INV_memROM~5_combout\,
	datad => \ROM|ALT_INV_memROM~16_combout\,
	datae => \ROM|ALT_INV_memROM~14_combout\,
	dataf => \ROM|ALT_INV_memROM~12_combout\,
	combout => \RAM|ram~783_combout\);

\RAM|ram~784\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~784_combout\ = (\RAM|process_0~0_combout\ & \RAM|ram~783_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_process_0~0_combout\,
	datab => \RAM|ALT_INV_ram~783_combout\,
	combout => \RAM|ram~784_combout\);

\RAM|ram~127\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(0),
	ena => \RAM|ram~784_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~127_q\);

\RAM|ram~785\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~785_combout\ = ( !\ROM|memROM~14_combout\ & ( \ROM|memROM~12_combout\ & ( (!\ROM|memROM~11_combout\ & (\ROM|memROM~13_combout\ & (\ROM|memROM~5_combout\ & \ROM|memROM~16_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~11_combout\,
	datab => \ROM|ALT_INV_memROM~13_combout\,
	datac => \ROM|ALT_INV_memROM~5_combout\,
	datad => \ROM|ALT_INV_memROM~16_combout\,
	datae => \ROM|ALT_INV_memROM~14_combout\,
	dataf => \ROM|ALT_INV_memROM~12_combout\,
	combout => \RAM|ram~785_combout\);

\RAM|ram~786\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~786_combout\ = (\RAM|process_0~0_combout\ & \RAM|ram~785_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_process_0~0_combout\,
	datab => \RAM|ALT_INV_ram~785_combout\,
	combout => \RAM|ram~786_combout\);

\RAM|ram~383\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(0),
	ena => \RAM|ram~786_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~383_q\);

\RAM|ram~787\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~787_combout\ = ( \ROM|memROM~14_combout\ & ( !\ROM|memROM~12_combout\ & ( (!\ROM|memROM~11_combout\ & (\ROM|memROM~13_combout\ & (\ROM|memROM~5_combout\ & \ROM|memROM~16_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000001000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~11_combout\,
	datab => \ROM|ALT_INV_memROM~13_combout\,
	datac => \ROM|ALT_INV_memROM~5_combout\,
	datad => \ROM|ALT_INV_memROM~16_combout\,
	datae => \ROM|ALT_INV_memROM~14_combout\,
	dataf => \ROM|ALT_INV_memROM~12_combout\,
	combout => \RAM|ram~787_combout\);

\RAM|ram~788\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~788_combout\ = (\RAM|process_0~0_combout\ & \RAM|ram~787_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_process_0~0_combout\,
	datab => \RAM|ALT_INV_ram~787_combout\,
	combout => \RAM|ram~788_combout\);

\RAM|ram~255\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(0),
	ena => \RAM|ram~788_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~255_q\);

\RAM|ram~789\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~789_combout\ = ( \ROM|memROM~14_combout\ & ( \ROM|memROM~12_combout\ & ( (!\ROM|memROM~11_combout\ & (\ROM|memROM~13_combout\ & (\ROM|memROM~5_combout\ & \ROM|memROM~16_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~11_combout\,
	datab => \ROM|ALT_INV_memROM~13_combout\,
	datac => \ROM|ALT_INV_memROM~5_combout\,
	datad => \ROM|ALT_INV_memROM~16_combout\,
	datae => \ROM|ALT_INV_memROM~14_combout\,
	dataf => \ROM|ALT_INV_memROM~12_combout\,
	combout => \RAM|ram~789_combout\);

\RAM|ram~790\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~790_combout\ = (\RAM|process_0~0_combout\ & \RAM|ram~789_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_process_0~0_combout\,
	datab => \RAM|ALT_INV_ram~789_combout\,
	combout => \RAM|ram~790_combout\);

\RAM|ram~511\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(0),
	ena => \RAM|ram~790_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~511_q\);

\RAM|ram~540\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~540_combout\ = ( \ROM|memROM~12_combout\ & ( \ROM|memROM~14_combout\ & ( \RAM|ram~511_q\ ) ) ) # ( !\ROM|memROM~12_combout\ & ( \ROM|memROM~14_combout\ & ( \RAM|ram~255_q\ ) ) ) # ( \ROM|memROM~12_combout\ & ( !\ROM|memROM~14_combout\ & ( 
-- \RAM|ram~383_q\ ) ) ) # ( !\ROM|memROM~12_combout\ & ( !\ROM|memROM~14_combout\ & ( \RAM|ram~127_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~127_q\,
	datab => \RAM|ALT_INV_ram~383_q\,
	datac => \RAM|ALT_INV_ram~255_q\,
	datad => \RAM|ALT_INV_ram~511_q\,
	datae => \ROM|ALT_INV_memROM~12_combout\,
	dataf => \ROM|ALT_INV_memROM~14_combout\,
	combout => \RAM|ram~540_combout\);

\RAM|ram~541\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~541_combout\ = ( \ROM|memROM~5_combout\ & ( \ROM|memROM~16_combout\ & ( \RAM|ram~540_combout\ ) ) ) # ( !\ROM|memROM~5_combout\ & ( \ROM|memROM~16_combout\ & ( \RAM|ram~539_combout\ ) ) ) # ( \ROM|memROM~5_combout\ & ( !\ROM|memROM~16_combout\ & 
-- ( \RAM|ram~538_combout\ ) ) ) # ( !\ROM|memROM~5_combout\ & ( !\ROM|memROM~16_combout\ & ( \RAM|ram~537_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~537_combout\,
	datab => \RAM|ALT_INV_ram~538_combout\,
	datac => \RAM|ALT_INV_ram~539_combout\,
	datad => \RAM|ALT_INV_ram~540_combout\,
	datae => \ROM|ALT_INV_memROM~5_combout\,
	dataf => \ROM|ALT_INV_memROM~16_combout\,
	combout => \RAM|ram~541_combout\);

\RAM|ram~791\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~791_combout\ = ( !\ROM|memROM~14_combout\ & ( !\ROM|memROM~12_combout\ & ( (\ROM|memROM~11_combout\ & (\ROM|memROM~13_combout\ & (!\ROM|memROM~5_combout\ & !\ROM|memROM~16_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~11_combout\,
	datab => \ROM|ALT_INV_memROM~13_combout\,
	datac => \ROM|ALT_INV_memROM~5_combout\,
	datad => \ROM|ALT_INV_memROM~16_combout\,
	datae => \ROM|ALT_INV_memROM~14_combout\,
	dataf => \ROM|ALT_INV_memROM~12_combout\,
	combout => \RAM|ram~791_combout\);

\RAM|ram~792\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~792_combout\ = (\RAM|process_0~0_combout\ & \RAM|ram~791_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_process_0~0_combout\,
	datab => \RAM|ALT_INV_ram~791_combout\,
	combout => \RAM|ram~792_combout\);

\RAM|ram~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(0),
	ena => \RAM|ram~792_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~39_q\);

\RAM|ram~793\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~793_combout\ = ( !\ROM|memROM~14_combout\ & ( \ROM|memROM~12_combout\ & ( (\ROM|memROM~11_combout\ & (\ROM|memROM~13_combout\ & (!\ROM|memROM~5_combout\ & !\ROM|memROM~16_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~11_combout\,
	datab => \ROM|ALT_INV_memROM~13_combout\,
	datac => \ROM|ALT_INV_memROM~5_combout\,
	datad => \ROM|ALT_INV_memROM~16_combout\,
	datae => \ROM|ALT_INV_memROM~14_combout\,
	dataf => \ROM|ALT_INV_memROM~12_combout\,
	combout => \RAM|ram~793_combout\);

\RAM|ram~794\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~794_combout\ = (\RAM|process_0~0_combout\ & \RAM|ram~793_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_process_0~0_combout\,
	datab => \RAM|ALT_INV_ram~793_combout\,
	combout => \RAM|ram~794_combout\);

\RAM|ram~295\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(0),
	ena => \RAM|ram~794_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~295_q\);

\RAM|ram~795\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~795_combout\ = ( !\ROM|memROM~14_combout\ & ( !\ROM|memROM~12_combout\ & ( (\ROM|memROM~11_combout\ & (\ROM|memROM~13_combout\ & (!\ROM|memROM~5_combout\ & \ROM|memROM~16_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~11_combout\,
	datab => \ROM|ALT_INV_memROM~13_combout\,
	datac => \ROM|ALT_INV_memROM~5_combout\,
	datad => \ROM|ALT_INV_memROM~16_combout\,
	datae => \ROM|ALT_INV_memROM~14_combout\,
	dataf => \ROM|ALT_INV_memROM~12_combout\,
	combout => \RAM|ram~795_combout\);

\RAM|ram~796\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~796_combout\ = (\RAM|process_0~0_combout\ & \RAM|ram~795_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_process_0~0_combout\,
	datab => \RAM|ALT_INV_ram~795_combout\,
	combout => \RAM|ram~796_combout\);

\RAM|ram~103\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(0),
	ena => \RAM|ram~796_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~103_q\);

\RAM|ram~797\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~797_combout\ = ( !\ROM|memROM~14_combout\ & ( \ROM|memROM~12_combout\ & ( (\ROM|memROM~11_combout\ & (\ROM|memROM~13_combout\ & (!\ROM|memROM~5_combout\ & \ROM|memROM~16_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~11_combout\,
	datab => \ROM|ALT_INV_memROM~13_combout\,
	datac => \ROM|ALT_INV_memROM~5_combout\,
	datad => \ROM|ALT_INV_memROM~16_combout\,
	datae => \ROM|ALT_INV_memROM~14_combout\,
	dataf => \ROM|ALT_INV_memROM~12_combout\,
	combout => \RAM|ram~797_combout\);

\RAM|ram~798\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~798_combout\ = (\RAM|process_0~0_combout\ & \RAM|ram~797_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_process_0~0_combout\,
	datab => \RAM|ALT_INV_ram~797_combout\,
	combout => \RAM|ram~798_combout\);

\RAM|ram~359\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(0),
	ena => \RAM|ram~798_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~359_q\);

\RAM|ram~542\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~542_combout\ = ( \ROM|memROM~12_combout\ & ( \ROM|memROM~16_combout\ & ( \RAM|ram~359_q\ ) ) ) # ( !\ROM|memROM~12_combout\ & ( \ROM|memROM~16_combout\ & ( \RAM|ram~103_q\ ) ) ) # ( \ROM|memROM~12_combout\ & ( !\ROM|memROM~16_combout\ & ( 
-- \RAM|ram~295_q\ ) ) ) # ( !\ROM|memROM~12_combout\ & ( !\ROM|memROM~16_combout\ & ( \RAM|ram~39_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~39_q\,
	datab => \RAM|ALT_INV_ram~295_q\,
	datac => \RAM|ALT_INV_ram~103_q\,
	datad => \RAM|ALT_INV_ram~359_q\,
	datae => \ROM|ALT_INV_memROM~12_combout\,
	dataf => \ROM|ALT_INV_memROM~16_combout\,
	combout => \RAM|ram~542_combout\);

\RAM|ram~799\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~799_combout\ = ( !\ROM|memROM~14_combout\ & ( !\ROM|memROM~12_combout\ & ( (\ROM|memROM~11_combout\ & (\ROM|memROM~13_combout\ & (\ROM|memROM~5_combout\ & !\ROM|memROM~16_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~11_combout\,
	datab => \ROM|ALT_INV_memROM~13_combout\,
	datac => \ROM|ALT_INV_memROM~5_combout\,
	datad => \ROM|ALT_INV_memROM~16_combout\,
	datae => \ROM|ALT_INV_memROM~14_combout\,
	dataf => \ROM|ALT_INV_memROM~12_combout\,
	combout => \RAM|ram~799_combout\);

\RAM|ram~800\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~800_combout\ = (\RAM|process_0~0_combout\ & \RAM|ram~799_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_process_0~0_combout\,
	datab => \RAM|ALT_INV_ram~799_combout\,
	combout => \RAM|ram~800_combout\);

\RAM|ram~71\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(0),
	ena => \RAM|ram~800_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~71_q\);

\RAM|ram~801\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~801_combout\ = ( !\ROM|memROM~14_combout\ & ( \ROM|memROM~12_combout\ & ( (\ROM|memROM~11_combout\ & (\ROM|memROM~13_combout\ & (\ROM|memROM~5_combout\ & !\ROM|memROM~16_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~11_combout\,
	datab => \ROM|ALT_INV_memROM~13_combout\,
	datac => \ROM|ALT_INV_memROM~5_combout\,
	datad => \ROM|ALT_INV_memROM~16_combout\,
	datae => \ROM|ALT_INV_memROM~14_combout\,
	dataf => \ROM|ALT_INV_memROM~12_combout\,
	combout => \RAM|ram~801_combout\);

\RAM|ram~802\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~802_combout\ = (\RAM|process_0~0_combout\ & \RAM|ram~801_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_process_0~0_combout\,
	datab => \RAM|ALT_INV_ram~801_combout\,
	combout => \RAM|ram~802_combout\);

\RAM|ram~327\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(0),
	ena => \RAM|ram~802_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~327_q\);

\RAM|ram~803\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~803_combout\ = ( !\ROM|memROM~14_combout\ & ( !\ROM|memROM~12_combout\ & ( (\ROM|memROM~11_combout\ & (\ROM|memROM~13_combout\ & (\ROM|memROM~5_combout\ & \ROM|memROM~16_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~11_combout\,
	datab => \ROM|ALT_INV_memROM~13_combout\,
	datac => \ROM|ALT_INV_memROM~5_combout\,
	datad => \ROM|ALT_INV_memROM~16_combout\,
	datae => \ROM|ALT_INV_memROM~14_combout\,
	dataf => \ROM|ALT_INV_memROM~12_combout\,
	combout => \RAM|ram~803_combout\);

\RAM|ram~804\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~804_combout\ = (\RAM|process_0~0_combout\ & \RAM|ram~803_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_process_0~0_combout\,
	datab => \RAM|ALT_INV_ram~803_combout\,
	combout => \RAM|ram~804_combout\);

\RAM|ram~135\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(0),
	ena => \RAM|ram~804_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~135_q\);

\RAM|ram~805\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~805_combout\ = ( !\ROM|memROM~14_combout\ & ( \ROM|memROM~12_combout\ & ( (\ROM|memROM~11_combout\ & (\ROM|memROM~13_combout\ & (\ROM|memROM~5_combout\ & \ROM|memROM~16_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~11_combout\,
	datab => \ROM|ALT_INV_memROM~13_combout\,
	datac => \ROM|ALT_INV_memROM~5_combout\,
	datad => \ROM|ALT_INV_memROM~16_combout\,
	datae => \ROM|ALT_INV_memROM~14_combout\,
	dataf => \ROM|ALT_INV_memROM~12_combout\,
	combout => \RAM|ram~805_combout\);

\RAM|ram~806\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~806_combout\ = (\RAM|process_0~0_combout\ & \RAM|ram~805_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_process_0~0_combout\,
	datab => \RAM|ALT_INV_ram~805_combout\,
	combout => \RAM|ram~806_combout\);

\RAM|ram~391\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(0),
	ena => \RAM|ram~806_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~391_q\);

\RAM|ram~543\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~543_combout\ = ( \ROM|memROM~12_combout\ & ( \ROM|memROM~16_combout\ & ( \RAM|ram~391_q\ ) ) ) # ( !\ROM|memROM~12_combout\ & ( \ROM|memROM~16_combout\ & ( \RAM|ram~135_q\ ) ) ) # ( \ROM|memROM~12_combout\ & ( !\ROM|memROM~16_combout\ & ( 
-- \RAM|ram~327_q\ ) ) ) # ( !\ROM|memROM~12_combout\ & ( !\ROM|memROM~16_combout\ & ( \RAM|ram~71_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~71_q\,
	datab => \RAM|ALT_INV_ram~327_q\,
	datac => \RAM|ALT_INV_ram~135_q\,
	datad => \RAM|ALT_INV_ram~391_q\,
	datae => \ROM|ALT_INV_memROM~12_combout\,
	dataf => \ROM|ALT_INV_memROM~16_combout\,
	combout => \RAM|ram~543_combout\);

\RAM|ram~807\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~807_combout\ = ( \ROM|memROM~14_combout\ & ( !\ROM|memROM~12_combout\ & ( (\ROM|memROM~11_combout\ & (\ROM|memROM~13_combout\ & (!\ROM|memROM~5_combout\ & !\ROM|memROM~16_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~11_combout\,
	datab => \ROM|ALT_INV_memROM~13_combout\,
	datac => \ROM|ALT_INV_memROM~5_combout\,
	datad => \ROM|ALT_INV_memROM~16_combout\,
	datae => \ROM|ALT_INV_memROM~14_combout\,
	dataf => \ROM|ALT_INV_memROM~12_combout\,
	combout => \RAM|ram~807_combout\);

\RAM|ram~808\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~808_combout\ = (\RAM|process_0~0_combout\ & \RAM|ram~807_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_process_0~0_combout\,
	datab => \RAM|ALT_INV_ram~807_combout\,
	combout => \RAM|ram~808_combout\);

\RAM|ram~167\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(0),
	ena => \RAM|ram~808_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~167_q\);

\RAM|ram~809\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~809_combout\ = ( \ROM|memROM~14_combout\ & ( \ROM|memROM~12_combout\ & ( (\ROM|memROM~11_combout\ & (\ROM|memROM~13_combout\ & (!\ROM|memROM~5_combout\ & !\ROM|memROM~16_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~11_combout\,
	datab => \ROM|ALT_INV_memROM~13_combout\,
	datac => \ROM|ALT_INV_memROM~5_combout\,
	datad => \ROM|ALT_INV_memROM~16_combout\,
	datae => \ROM|ALT_INV_memROM~14_combout\,
	dataf => \ROM|ALT_INV_memROM~12_combout\,
	combout => \RAM|ram~809_combout\);

\RAM|ram~810\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~810_combout\ = (\RAM|process_0~0_combout\ & \RAM|ram~809_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_process_0~0_combout\,
	datab => \RAM|ALT_INV_ram~809_combout\,
	combout => \RAM|ram~810_combout\);

\RAM|ram~423\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(0),
	ena => \RAM|ram~810_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~423_q\);

\RAM|ram~811\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~811_combout\ = ( \ROM|memROM~14_combout\ & ( !\ROM|memROM~12_combout\ & ( (\ROM|memROM~11_combout\ & (\ROM|memROM~13_combout\ & (!\ROM|memROM~5_combout\ & \ROM|memROM~16_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~11_combout\,
	datab => \ROM|ALT_INV_memROM~13_combout\,
	datac => \ROM|ALT_INV_memROM~5_combout\,
	datad => \ROM|ALT_INV_memROM~16_combout\,
	datae => \ROM|ALT_INV_memROM~14_combout\,
	dataf => \ROM|ALT_INV_memROM~12_combout\,
	combout => \RAM|ram~811_combout\);

\RAM|ram~812\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~812_combout\ = (\RAM|process_0~0_combout\ & \RAM|ram~811_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_process_0~0_combout\,
	datab => \RAM|ALT_INV_ram~811_combout\,
	combout => \RAM|ram~812_combout\);

\RAM|ram~231\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(0),
	ena => \RAM|ram~812_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~231_q\);

\RAM|ram~813\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~813_combout\ = ( \ROM|memROM~14_combout\ & ( \ROM|memROM~12_combout\ & ( (\ROM|memROM~11_combout\ & (\ROM|memROM~13_combout\ & (!\ROM|memROM~5_combout\ & \ROM|memROM~16_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~11_combout\,
	datab => \ROM|ALT_INV_memROM~13_combout\,
	datac => \ROM|ALT_INV_memROM~5_combout\,
	datad => \ROM|ALT_INV_memROM~16_combout\,
	datae => \ROM|ALT_INV_memROM~14_combout\,
	dataf => \ROM|ALT_INV_memROM~12_combout\,
	combout => \RAM|ram~813_combout\);

\RAM|ram~814\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~814_combout\ = (\RAM|process_0~0_combout\ & \RAM|ram~813_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_process_0~0_combout\,
	datab => \RAM|ALT_INV_ram~813_combout\,
	combout => \RAM|ram~814_combout\);

\RAM|ram~487\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(0),
	ena => \RAM|ram~814_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~487_q\);

\RAM|ram~544\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~544_combout\ = ( \ROM|memROM~12_combout\ & ( \ROM|memROM~16_combout\ & ( \RAM|ram~487_q\ ) ) ) # ( !\ROM|memROM~12_combout\ & ( \ROM|memROM~16_combout\ & ( \RAM|ram~231_q\ ) ) ) # ( \ROM|memROM~12_combout\ & ( !\ROM|memROM~16_combout\ & ( 
-- \RAM|ram~423_q\ ) ) ) # ( !\ROM|memROM~12_combout\ & ( !\ROM|memROM~16_combout\ & ( \RAM|ram~167_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~167_q\,
	datab => \RAM|ALT_INV_ram~423_q\,
	datac => \RAM|ALT_INV_ram~231_q\,
	datad => \RAM|ALT_INV_ram~487_q\,
	datae => \ROM|ALT_INV_memROM~12_combout\,
	dataf => \ROM|ALT_INV_memROM~16_combout\,
	combout => \RAM|ram~544_combout\);

\RAM|ram~815\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~815_combout\ = ( \ROM|memROM~14_combout\ & ( !\ROM|memROM~12_combout\ & ( (\ROM|memROM~11_combout\ & (\ROM|memROM~13_combout\ & (\ROM|memROM~5_combout\ & !\ROM|memROM~16_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~11_combout\,
	datab => \ROM|ALT_INV_memROM~13_combout\,
	datac => \ROM|ALT_INV_memROM~5_combout\,
	datad => \ROM|ALT_INV_memROM~16_combout\,
	datae => \ROM|ALT_INV_memROM~14_combout\,
	dataf => \ROM|ALT_INV_memROM~12_combout\,
	combout => \RAM|ram~815_combout\);

\RAM|ram~816\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~816_combout\ = (\RAM|process_0~0_combout\ & \RAM|ram~815_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_process_0~0_combout\,
	datab => \RAM|ALT_INV_ram~815_combout\,
	combout => \RAM|ram~816_combout\);

\RAM|ram~199\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(0),
	ena => \RAM|ram~816_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~199_q\);

\RAM|ram~817\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~817_combout\ = ( \ROM|memROM~14_combout\ & ( \ROM|memROM~12_combout\ & ( (\ROM|memROM~11_combout\ & (\ROM|memROM~13_combout\ & (\ROM|memROM~5_combout\ & !\ROM|memROM~16_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~11_combout\,
	datab => \ROM|ALT_INV_memROM~13_combout\,
	datac => \ROM|ALT_INV_memROM~5_combout\,
	datad => \ROM|ALT_INV_memROM~16_combout\,
	datae => \ROM|ALT_INV_memROM~14_combout\,
	dataf => \ROM|ALT_INV_memROM~12_combout\,
	combout => \RAM|ram~817_combout\);

\RAM|ram~818\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~818_combout\ = (\RAM|process_0~0_combout\ & \RAM|ram~817_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_process_0~0_combout\,
	datab => \RAM|ALT_INV_ram~817_combout\,
	combout => \RAM|ram~818_combout\);

\RAM|ram~455\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(0),
	ena => \RAM|ram~818_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~455_q\);

\RAM|ram~819\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~819_combout\ = ( \ROM|memROM~14_combout\ & ( !\ROM|memROM~12_combout\ & ( (\ROM|memROM~11_combout\ & (\ROM|memROM~13_combout\ & (\ROM|memROM~5_combout\ & \ROM|memROM~16_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~11_combout\,
	datab => \ROM|ALT_INV_memROM~13_combout\,
	datac => \ROM|ALT_INV_memROM~5_combout\,
	datad => \ROM|ALT_INV_memROM~16_combout\,
	datae => \ROM|ALT_INV_memROM~14_combout\,
	dataf => \ROM|ALT_INV_memROM~12_combout\,
	combout => \RAM|ram~819_combout\);

\RAM|ram~820\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~820_combout\ = (\RAM|process_0~0_combout\ & \RAM|ram~819_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_process_0~0_combout\,
	datab => \RAM|ALT_INV_ram~819_combout\,
	combout => \RAM|ram~820_combout\);

\RAM|ram~263\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(0),
	ena => \RAM|ram~820_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~263_q\);

\RAM|ram~821\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~821_combout\ = ( \ROM|memROM~14_combout\ & ( \ROM|memROM~12_combout\ & ( (\ROM|memROM~11_combout\ & (\ROM|memROM~13_combout\ & (\ROM|memROM~5_combout\ & \ROM|memROM~16_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~11_combout\,
	datab => \ROM|ALT_INV_memROM~13_combout\,
	datac => \ROM|ALT_INV_memROM~5_combout\,
	datad => \ROM|ALT_INV_memROM~16_combout\,
	datae => \ROM|ALT_INV_memROM~14_combout\,
	dataf => \ROM|ALT_INV_memROM~12_combout\,
	combout => \RAM|ram~821_combout\);

\RAM|ram~822\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~822_combout\ = (\RAM|process_0~0_combout\ & \RAM|ram~821_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_process_0~0_combout\,
	datab => \RAM|ALT_INV_ram~821_combout\,
	combout => \RAM|ram~822_combout\);

\RAM|ram~519\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(0),
	ena => \RAM|ram~822_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~519_q\);

\RAM|ram~545\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~545_combout\ = ( \ROM|memROM~12_combout\ & ( \ROM|memROM~16_combout\ & ( \RAM|ram~519_q\ ) ) ) # ( !\ROM|memROM~12_combout\ & ( \ROM|memROM~16_combout\ & ( \RAM|ram~263_q\ ) ) ) # ( \ROM|memROM~12_combout\ & ( !\ROM|memROM~16_combout\ & ( 
-- \RAM|ram~455_q\ ) ) ) # ( !\ROM|memROM~12_combout\ & ( !\ROM|memROM~16_combout\ & ( \RAM|ram~199_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~199_q\,
	datab => \RAM|ALT_INV_ram~455_q\,
	datac => \RAM|ALT_INV_ram~263_q\,
	datad => \RAM|ALT_INV_ram~519_q\,
	datae => \ROM|ALT_INV_memROM~12_combout\,
	dataf => \ROM|ALT_INV_memROM~16_combout\,
	combout => \RAM|ram~545_combout\);

\RAM|ram~546\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~546_combout\ = ( \ROM|memROM~5_combout\ & ( \ROM|memROM~14_combout\ & ( \RAM|ram~545_combout\ ) ) ) # ( !\ROM|memROM~5_combout\ & ( \ROM|memROM~14_combout\ & ( \RAM|ram~544_combout\ ) ) ) # ( \ROM|memROM~5_combout\ & ( !\ROM|memROM~14_combout\ & 
-- ( \RAM|ram~543_combout\ ) ) ) # ( !\ROM|memROM~5_combout\ & ( !\ROM|memROM~14_combout\ & ( \RAM|ram~542_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~542_combout\,
	datab => \RAM|ALT_INV_ram~543_combout\,
	datac => \RAM|ALT_INV_ram~544_combout\,
	datad => \RAM|ALT_INV_ram~545_combout\,
	datae => \ROM|ALT_INV_memROM~5_combout\,
	dataf => \ROM|ALT_INV_memROM~14_combout\,
	combout => \RAM|ram~546_combout\);

\RAM|ram~547\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~547_combout\ = ( \ROM|memROM~11_combout\ & ( \ROM|memROM~13_combout\ & ( \RAM|ram~546_combout\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( \ROM|memROM~13_combout\ & ( \RAM|ram~541_combout\ ) ) ) # ( \ROM|memROM~11_combout\ & ( !\ROM|memROM~13_combout\ 
-- & ( \RAM|ram~536_combout\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( !\ROM|memROM~13_combout\ & ( \RAM|ram~531_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~531_combout\,
	datab => \RAM|ALT_INV_ram~536_combout\,
	datac => \RAM|ALT_INV_ram~541_combout\,
	datad => \RAM|ALT_INV_ram~546_combout\,
	datae => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \ROM|ALT_INV_memROM~13_combout\,
	combout => \RAM|ram~547_combout\);

\READ_BUS[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \READ_BUS[0]~0_combout\ = (!\ROM|memROM~17_combout\ & (!\ROM|memROM~14_combout\ & (!\ROM|memROM~18_combout\ & \CPU|DECODER|ENABLE_READ~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~17_combout\,
	datab => \ROM|ALT_INV_memROM~14_combout\,
	datac => \ROM|ALT_INV_memROM~18_combout\,
	datad => \CPU|DECODER|ALT_INV_ENABLE_READ~0_combout\,
	combout => \READ_BUS[0]~0_combout\);

\SW[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

\ENABLE_SWR~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ENABLE_SWR~1_combout\ = (\CPU|DECODER|ENABLE_READ~0_combout\ & \ENABLE_SWR~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_ENABLE_READ~0_combout\,
	datab => \ALT_INV_ENABLE_SWR~0_combout\,
	combout => \ENABLE_SWR~1_combout\);

\FPGA_RESET_N~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FPGA_RESET_N,
	o => \FPGA_RESET_N~input_o\);

\KEY[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

\detectorSub0|saidaQ~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \detectorSub0|saidaQ~0_combout\ = !\KEY[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[0]~input_o\,
	combout => \detectorSub0|saidaQ~0_combout\);

\detectorSub0|saidaQ\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \detectorSub0|saidaQ~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \detectorSub0|saidaQ~q\);

\detectorSub0|saida\ : cyclonev_lcell_comb
-- Equation(s):
-- \detectorSub0|saida~combout\ = LCELL((!\KEY[0]~input_o\ & !\detectorSub0|saidaQ~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[0]~input_o\,
	datab => \detectorSub0|ALT_INV_saidaQ~q\,
	combout => \detectorSub0|saida~combout\);

\ADDR_511~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ADDR_511~0_combout\ = ( \ROM|memROM~8_combout\ & ( \ROM|memROM~9_combout\ & ( (!\CPU|INSTR|PC|DOUT\(3) & (!\CPU|INSTR|PC|DOUT\(8) & (\ROM|memROM~6_combout\ & \ROM|memROM~7_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|PC|ALT_INV_DOUT\(3),
	datab => \CPU|INSTR|PC|ALT_INV_DOUT\(8),
	datac => \ROM|ALT_INV_memROM~6_combout\,
	datad => \ROM|ALT_INV_memROM~7_combout\,
	datae => \ROM|ALT_INV_memROM~8_combout\,
	dataf => \ROM|ALT_INV_memROM~9_combout\,
	combout => \ADDR_511~0_combout\);

ADDR_511 : cyclonev_lcell_comb
-- Equation(s):
-- \ADDR_511~combout\ = ( \ROM|memROM~16_combout\ & ( \ADDR_511~0_combout\ & ( (\ROM|memROM~5_combout\ & (\ROM|memROM~11_combout\ & (\ROM|memROM~12_combout\ & \ROM|memROM~13_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~5_combout\,
	datab => \ROM|ALT_INV_memROM~11_combout\,
	datac => \ROM|ALT_INV_memROM~12_combout\,
	datad => \ROM|ALT_INV_memROM~13_combout\,
	datae => \ROM|ALT_INV_memROM~16_combout\,
	dataf => \ALT_INV_ADDR_511~0_combout\,
	combout => \ADDR_511~combout\);

\FF_DEBOUNCER|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => VCC,
	clrn => \ALT_INV_ADDR_511~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FF_DEBOUNCER|DOUT~q\);

\KEY[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

\KEY[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

\READ_BUS[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \READ_BUS[0]~2_combout\ = ( \KEY[1]~input_o\ & ( \KEY[3]~input_o\ & ( ((!\ROM|memROM~13_combout\ & ((\FF_DEBOUNCER|DOUT~q\))) # (\ROM|memROM~13_combout\ & (\KEY[2]~input_o\))) # (\ROM|memROM~11_combout\) ) ) ) # ( !\KEY[1]~input_o\ & ( \KEY[3]~input_o\ & 
-- ( (!\ROM|memROM~11_combout\ & ((!\ROM|memROM~13_combout\ & ((\FF_DEBOUNCER|DOUT~q\))) # (\ROM|memROM~13_combout\ & (\KEY[2]~input_o\)))) # (\ROM|memROM~11_combout\ & (\ROM|memROM~13_combout\)) ) ) ) # ( \KEY[1]~input_o\ & ( !\KEY[3]~input_o\ & ( 
-- (!\ROM|memROM~11_combout\ & ((!\ROM|memROM~13_combout\ & ((\FF_DEBOUNCER|DOUT~q\))) # (\ROM|memROM~13_combout\ & (\KEY[2]~input_o\)))) # (\ROM|memROM~11_combout\ & (!\ROM|memROM~13_combout\)) ) ) ) # ( !\KEY[1]~input_o\ & ( !\KEY[3]~input_o\ & ( 
-- (!\ROM|memROM~11_combout\ & ((!\ROM|memROM~13_combout\ & ((\FF_DEBOUNCER|DOUT~q\))) # (\ROM|memROM~13_combout\ & (\KEY[2]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010010001101100111000010011100110110101011111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~11_combout\,
	datab => \ROM|ALT_INV_memROM~13_combout\,
	datac => \ALT_INV_KEY[2]~input_o\,
	datad => \FF_DEBOUNCER|ALT_INV_DOUT~q\,
	datae => \ALT_INV_KEY[1]~input_o\,
	dataf => \ALT_INV_KEY[3]~input_o\,
	combout => \READ_BUS[0]~2_combout\);

\SW[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

\SW[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

\READ_BUS[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \READ_BUS[0]~3_combout\ = (!\ROM|memROM~11_combout\ & (\ROM|memROM~13_combout\ & ((\SW[9]~input_o\)))) # (\ROM|memROM~11_combout\ & (!\ROM|memROM~13_combout\ & (\SW[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000100110000001000010011000000100001001100000010000100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~11_combout\,
	datab => \ROM|ALT_INV_memROM~13_combout\,
	datac => \ALT_INV_SW[8]~input_o\,
	datad => \ALT_INV_SW[9]~input_o\,
	combout => \READ_BUS[0]~3_combout\);

\READ_BUS[0]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \READ_BUS[0]~4_combout\ = ( !\ROM|memROM~12_combout\ & ( (((\READ_BUS[0]~3_combout\ & ((!\ROM|memROM~5_combout\))))) ) ) # ( \ROM|memROM~12_combout\ & ( (!\ROM|memROM~5_combout\ & ((((\READ_BUS[0]~2_combout\))))) # (\ROM|memROM~5_combout\ & 
-- (\FPGA_RESET_N~input_o\ & (!\ROM|memROM~13_combout\ & (!\ROM|memROM~11_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111100001111000000001111111100000000000000000100000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_FPGA_RESET_N~input_o\,
	datab => \ROM|ALT_INV_memROM~13_combout\,
	datac => \ROM|ALT_INV_memROM~11_combout\,
	datad => \ALT_INV_READ_BUS[0]~2_combout\,
	datae => \ROM|ALT_INV_memROM~12_combout\,
	dataf => \ROM|ALT_INV_memROM~5_combout\,
	datag => \ALT_INV_READ_BUS[0]~3_combout\,
	combout => \READ_BUS[0]~4_combout\);

\READ_BUS[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \READ_BUS[0]~1_combout\ = ( \ENABLE_SWR~2_combout\ & ( \READ_BUS[0]~4_combout\ & ( (((\RAM|ram~547_combout\ & \READ_BUS[0]~0_combout\)) # (\ENABLE_SWR~1_combout\)) # (\SW[0]~input_o\) ) ) ) # ( !\ENABLE_SWR~2_combout\ & ( \READ_BUS[0]~4_combout\ & ( 
-- ((\RAM|ram~547_combout\ & \READ_BUS[0]~0_combout\)) # (\ENABLE_SWR~1_combout\) ) ) ) # ( \ENABLE_SWR~2_combout\ & ( !\READ_BUS[0]~4_combout\ & ( ((\RAM|ram~547_combout\ & \READ_BUS[0]~0_combout\)) # (\SW[0]~input_o\) ) ) ) # ( !\ENABLE_SWR~2_combout\ & ( 
-- !\READ_BUS[0]~4_combout\ & ( (\RAM|ram~547_combout\ & \READ_BUS[0]~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000111110001111100010001111111110001111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~547_combout\,
	datab => \ALT_INV_READ_BUS[0]~0_combout\,
	datac => \ALT_INV_SW[0]~input_o\,
	datad => \ALT_INV_ENABLE_SWR~1_combout\,
	datae => \ALT_INV_ENABLE_SWR~2_combout\,
	dataf => \ALT_INV_READ_BUS[0]~4_combout\,
	combout => \READ_BUS[0]~1_combout\);

\CPU|ULA1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~1_sumout\ = SUM(( (!\CPU|DECODER|HAB_A~0_combout\ & (((\READ_BUS[0]~1_combout\)))) # (\CPU|DECODER|HAB_A~0_combout\ & (!\CPU|INSTR|PC|DOUT\(8) & (\ROM|memROM~23_combout\))) ) + ( \CPU|REG_A|DOUT\(0) ) + ( !VCC ))
-- \CPU|ULA1|Add0~2\ = CARRY(( (!\CPU|DECODER|HAB_A~0_combout\ & (((\READ_BUS[0]~1_combout\)))) # (\CPU|DECODER|HAB_A~0_combout\ & (!\CPU|INSTR|PC|DOUT\(8) & (\ROM|memROM~23_combout\))) ) + ( \CPU|REG_A|DOUT\(0) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111100100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|PC|ALT_INV_DOUT\(8),
	datab => \ROM|ALT_INV_memROM~23_combout\,
	datac => \ALT_INV_READ_BUS[0]~1_combout\,
	datad => \CPU|DECODER|ALT_INV_HAB_A~0_combout\,
	dataf => \CPU|REG_A|ALT_INV_DOUT\(0),
	cin => GND,
	sumout => \CPU|ULA1|Add0~1_sumout\,
	cout => \CPU|ULA1|Add0~2\);

\CPU|ULA1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~9_sumout\ = SUM(( \CPU|MUX1|saida_MUX[1]~1_combout\ ) + ( \CPU|REG_A|DOUT\(1) ) + ( \CPU|ULA1|Add0~2\ ))
-- \CPU|ULA1|Add0~10\ = CARRY(( \CPU|MUX1|saida_MUX[1]~1_combout\ ) + ( \CPU|REG_A|DOUT\(1) ) + ( \CPU|ULA1|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|MUX1|ALT_INV_saida_MUX[1]~1_combout\,
	dataf => \CPU|REG_A|ALT_INV_DOUT\(1),
	cin => \CPU|ULA1|Add0~2\,
	sumout => \CPU|ULA1|Add0~9_sumout\,
	cout => \CPU|ULA1|Add0~10\);

\CPU|DECODER|OP_ULA[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER|OP_ULA[1]~0_combout\ = (!\ROM|memROM~19_combout\ & (!\ROM|memROM~22_combout\ & (!\ROM|memROM~21_combout\ $ (!\ROM|memROM~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000010000000001000001000000000100000100000000010000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~19_combout\,
	datab => \ROM|ALT_INV_memROM~21_combout\,
	datac => \ROM|ALT_INV_memROM~22_combout\,
	datad => \ROM|ALT_INV_memROM~20_combout\,
	combout => \CPU|DECODER|OP_ULA[1]~0_combout\);

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
-- \CPU|ULA1|Add1~1_sumout\ = SUM(( (!\CPU|DECODER|HAB_A~0_combout\ & (((!\READ_BUS[0]~1_combout\)))) # (\CPU|DECODER|HAB_A~0_combout\ & (((!\ROM|memROM~23_combout\)) # (\CPU|INSTR|PC|DOUT\(8)))) ) + ( \CPU|REG_A|DOUT\(0) ) + ( \CPU|ULA1|Add1~34_cout\ ))
-- \CPU|ULA1|Add1~2\ = CARRY(( (!\CPU|DECODER|HAB_A~0_combout\ & (((!\READ_BUS[0]~1_combout\)))) # (\CPU|DECODER|HAB_A~0_combout\ & (((!\ROM|memROM~23_combout\)) # (\CPU|INSTR|PC|DOUT\(8)))) ) + ( \CPU|REG_A|DOUT\(0) ) + ( \CPU|ULA1|Add1~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111000011011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|PC|ALT_INV_DOUT\(8),
	datab => \ROM|ALT_INV_memROM~23_combout\,
	datac => \ALT_INV_READ_BUS[0]~1_combout\,
	datad => \CPU|DECODER|ALT_INV_HAB_A~0_combout\,
	dataf => \CPU|REG_A|ALT_INV_DOUT\(0),
	cin => \CPU|ULA1|Add1~34_cout\,
	sumout => \CPU|ULA1|Add1~1_sumout\,
	cout => \CPU|ULA1|Add1~2\);

\CPU|ULA1|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~9_sumout\ = SUM(( !\CPU|MUX1|saida_MUX[1]~1_combout\ ) + ( \CPU|REG_A|DOUT\(1) ) + ( \CPU|ULA1|Add1~2\ ))
-- \CPU|ULA1|Add1~10\ = CARRY(( !\CPU|MUX1|saida_MUX[1]~1_combout\ ) + ( \CPU|REG_A|DOUT\(1) ) + ( \CPU|ULA1|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|MUX1|ALT_INV_saida_MUX[1]~1_combout\,
	dataf => \CPU|REG_A|ALT_INV_DOUT\(1),
	cin => \CPU|ULA1|Add1~2\,
	sumout => \CPU|ULA1|Add1~9_sumout\,
	cout => \CPU|ULA1|Add1~10\);

\CPU|ULA1|saida[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[1]~2_combout\ = (!\CPU|DECODER|OP_ULA[1]~0_combout\ & ((\CPU|ULA1|Add1~9_sumout\))) # (\CPU|DECODER|OP_ULA[1]~0_combout\ & (\CPU|MUX1|saida_MUX[1]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_OP_ULA[1]~0_combout\,
	datab => \CPU|MUX1|ALT_INV_saida_MUX[1]~1_combout\,
	datac => \CPU|ULA1|ALT_INV_Add1~9_sumout\,
	combout => \CPU|ULA1|saida[1]~2_combout\);

\CPU|DECODER|OP_ULA[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER|OP_ULA[0]~1_combout\ = (((!\ROM|memROM~22_combout\) # (\ROM|memROM~20_combout\)) # (\ROM|memROM~21_combout\)) # (\ROM|memROM~19_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111011111111111111101111111111111110111111111111111011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~19_combout\,
	datab => \ROM|ALT_INV_memROM~21_combout\,
	datac => \ROM|ALT_INV_memROM~22_combout\,
	datad => \ROM|ALT_INV_memROM~20_combout\,
	combout => \CPU|DECODER|OP_ULA[0]~1_combout\);

\CPU|DECODER|HAB_A~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER|HAB_A~1_combout\ = ( \CPU|DECODER|sinais_controle~0_combout\ & ( (\ROM|memROM~0_combout\ & (\ROM|memROM~4_combout\ & ((!\CPU|INSTR|PC|DOUT\(0)) # (!\ROM|memROM~1_combout\)))) ) ) # ( !\CPU|DECODER|sinais_controle~0_combout\ & ( 
-- (!\ROM|memROM~0_combout\) # ((!\ROM|memROM~4_combout\ & ((!\CPU|INSTR|PC|DOUT\(0)) # (!\ROM|memROM~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111011001100000000000011001011111110110011000000000000110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|PC|ALT_INV_DOUT\(0),
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \ROM|ALT_INV_memROM~1_combout\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	datae => \CPU|DECODER|ALT_INV_sinais_controle~0_combout\,
	combout => \CPU|DECODER|HAB_A~1_combout\);

\CPU|REG_A|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~9_sumout\,
	asdata => \CPU|ULA1|saida[1]~2_combout\,
	sload => \CPU|DECODER|OP_ULA[0]~1_combout\,
	ena => \CPU|DECODER|HAB_A~1_combout\,
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
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(1),
	ena => \RAM|ram~696_combout\,
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
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(1),
	ena => \RAM|ram~728_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~24_q\);

\RAM|ram~48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(1),
	ena => \RAM|ram~704_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~48_q\);

\RAM|ram~56\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(1),
	ena => \RAM|ram~736_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~56_q\);

\RAM|ram~569\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~569_combout\ = ( \ROM|memROM~11_combout\ & ( \ROM|memROM~5_combout\ & ( \RAM|ram~56_q\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( \ROM|memROM~5_combout\ & ( \RAM|ram~48_q\ ) ) ) # ( \ROM|memROM~11_combout\ & ( !\ROM|memROM~5_combout\ & ( 
-- \RAM|ram~24_q\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( !\ROM|memROM~5_combout\ & ( \RAM|ram~16_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~16_q\,
	datab => \RAM|ALT_INV_ram~24_q\,
	datac => \RAM|ALT_INV_ram~48_q\,
	datad => \RAM|ALT_INV_ram~56_q\,
	datae => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \ROM|ALT_INV_memROM~5_combout\,
	combout => \RAM|ram~569_combout\);

\RAM|ram~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(1),
	ena => \RAM|ram~760_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~32_q\);

\RAM|ram~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(1),
	ena => \RAM|ram~792_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~40_q\);

\RAM|ram~64\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(1),
	ena => \RAM|ram~768_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~64_q\);

\RAM|ram~72\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(1),
	ena => \RAM|ram~800_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~72_q\);

\RAM|ram~570\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~570_combout\ = ( \ROM|memROM~11_combout\ & ( \ROM|memROM~5_combout\ & ( \RAM|ram~72_q\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( \ROM|memROM~5_combout\ & ( \RAM|ram~64_q\ ) ) ) # ( \ROM|memROM~11_combout\ & ( !\ROM|memROM~5_combout\ & ( 
-- \RAM|ram~40_q\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( !\ROM|memROM~5_combout\ & ( \RAM|ram~32_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~32_q\,
	datab => \RAM|ALT_INV_ram~40_q\,
	datac => \RAM|ALT_INV_ram~64_q\,
	datad => \RAM|ALT_INV_ram~72_q\,
	datae => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \ROM|ALT_INV_memROM~5_combout\,
	combout => \RAM|ram~570_combout\);

\RAM|ram~80\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(1),
	ena => \RAM|ram~712_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~80_q\);

\RAM|ram~88\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(1),
	ena => \RAM|ram~744_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~88_q\);

\RAM|ram~112\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(1),
	ena => \RAM|ram~720_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~112_q\);

\RAM|ram~120\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(1),
	ena => \RAM|ram~752_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~120_q\);

\RAM|ram~571\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~571_combout\ = ( \ROM|memROM~11_combout\ & ( \ROM|memROM~5_combout\ & ( \RAM|ram~120_q\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( \ROM|memROM~5_combout\ & ( \RAM|ram~112_q\ ) ) ) # ( \ROM|memROM~11_combout\ & ( !\ROM|memROM~5_combout\ & ( 
-- \RAM|ram~88_q\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( !\ROM|memROM~5_combout\ & ( \RAM|ram~80_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~80_q\,
	datab => \RAM|ALT_INV_ram~88_q\,
	datac => \RAM|ALT_INV_ram~112_q\,
	datad => \RAM|ALT_INV_ram~120_q\,
	datae => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \ROM|ALT_INV_memROM~5_combout\,
	combout => \RAM|ram~571_combout\);

\RAM|ram~96\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(1),
	ena => \RAM|ram~776_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~96_q\);

\RAM|ram~104\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(1),
	ena => \RAM|ram~796_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~104_q\);

\RAM|ram~128\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(1),
	ena => \RAM|ram~784_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~128_q\);

\RAM|ram~136\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(1),
	ena => \RAM|ram~804_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~136_q\);

\RAM|ram~572\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~572_combout\ = ( \ROM|memROM~11_combout\ & ( \ROM|memROM~5_combout\ & ( \RAM|ram~136_q\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( \ROM|memROM~5_combout\ & ( \RAM|ram~128_q\ ) ) ) # ( \ROM|memROM~11_combout\ & ( !\ROM|memROM~5_combout\ & ( 
-- \RAM|ram~104_q\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( !\ROM|memROM~5_combout\ & ( \RAM|ram~96_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~96_q\,
	datab => \RAM|ALT_INV_ram~104_q\,
	datac => \RAM|ALT_INV_ram~128_q\,
	datad => \RAM|ALT_INV_ram~136_q\,
	datae => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \ROM|ALT_INV_memROM~5_combout\,
	combout => \RAM|ram~572_combout\);

\RAM|ram~573\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~573_combout\ = ( \ROM|memROM~13_combout\ & ( \ROM|memROM~16_combout\ & ( \RAM|ram~572_combout\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( \ROM|memROM~16_combout\ & ( \RAM|ram~571_combout\ ) ) ) # ( \ROM|memROM~13_combout\ & ( !\ROM|memROM~16_combout\ 
-- & ( \RAM|ram~570_combout\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( !\ROM|memROM~16_combout\ & ( \RAM|ram~569_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~569_combout\,
	datab => \RAM|ALT_INV_ram~570_combout\,
	datac => \RAM|ALT_INV_ram~571_combout\,
	datad => \RAM|ALT_INV_ram~572_combout\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ROM|ALT_INV_memROM~16_combout\,
	combout => \RAM|ram~573_combout\);

\RAM|ram~272\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(1),
	ena => \RAM|ram~698_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~272_q\);

\RAM|ram~288\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(1),
	ena => \RAM|ram~762_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~288_q\);

\RAM|ram~336\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(1),
	ena => \RAM|ram~714_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~336_q\);

\RAM|ram~352\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(1),
	ena => \RAM|ram~778_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~352_q\);

\RAM|ram~574\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~574_combout\ = ( \ROM|memROM~13_combout\ & ( \ROM|memROM~16_combout\ & ( \RAM|ram~352_q\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( \ROM|memROM~16_combout\ & ( \RAM|ram~336_q\ ) ) ) # ( \ROM|memROM~13_combout\ & ( !\ROM|memROM~16_combout\ & ( 
-- \RAM|ram~288_q\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( !\ROM|memROM~16_combout\ & ( \RAM|ram~272_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~272_q\,
	datab => \RAM|ALT_INV_ram~288_q\,
	datac => \RAM|ALT_INV_ram~336_q\,
	datad => \RAM|ALT_INV_ram~352_q\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ROM|ALT_INV_memROM~16_combout\,
	combout => \RAM|ram~574_combout\);

\RAM|ram~280\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(1),
	ena => \RAM|ram~730_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~280_q\);

\RAM|ram~296\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(1),
	ena => \RAM|ram~794_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~296_q\);

\RAM|ram~344\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(1),
	ena => \RAM|ram~746_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~344_q\);

\RAM|ram~360\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(1),
	ena => \RAM|ram~798_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~360_q\);

\RAM|ram~575\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~575_combout\ = ( \ROM|memROM~13_combout\ & ( \ROM|memROM~16_combout\ & ( \RAM|ram~360_q\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( \ROM|memROM~16_combout\ & ( \RAM|ram~344_q\ ) ) ) # ( \ROM|memROM~13_combout\ & ( !\ROM|memROM~16_combout\ & ( 
-- \RAM|ram~296_q\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( !\ROM|memROM~16_combout\ & ( \RAM|ram~280_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~280_q\,
	datab => \RAM|ALT_INV_ram~296_q\,
	datac => \RAM|ALT_INV_ram~344_q\,
	datad => \RAM|ALT_INV_ram~360_q\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ROM|ALT_INV_memROM~16_combout\,
	combout => \RAM|ram~575_combout\);

\RAM|ram~304\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(1),
	ena => \RAM|ram~706_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~304_q\);

\RAM|ram~320\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(1),
	ena => \RAM|ram~770_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~320_q\);

\RAM|ram~368\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(1),
	ena => \RAM|ram~722_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~368_q\);

\RAM|ram~384\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(1),
	ena => \RAM|ram~786_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~384_q\);

\RAM|ram~576\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~576_combout\ = ( \ROM|memROM~13_combout\ & ( \ROM|memROM~16_combout\ & ( \RAM|ram~384_q\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( \ROM|memROM~16_combout\ & ( \RAM|ram~368_q\ ) ) ) # ( \ROM|memROM~13_combout\ & ( !\ROM|memROM~16_combout\ & ( 
-- \RAM|ram~320_q\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( !\ROM|memROM~16_combout\ & ( \RAM|ram~304_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~304_q\,
	datab => \RAM|ALT_INV_ram~320_q\,
	datac => \RAM|ALT_INV_ram~368_q\,
	datad => \RAM|ALT_INV_ram~384_q\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ROM|ALT_INV_memROM~16_combout\,
	combout => \RAM|ram~576_combout\);

\RAM|ram~312\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(1),
	ena => \RAM|ram~738_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~312_q\);

\RAM|ram~328\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(1),
	ena => \RAM|ram~802_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~328_q\);

\RAM|ram~376\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(1),
	ena => \RAM|ram~754_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~376_q\);

\RAM|ram~392\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(1),
	ena => \RAM|ram~806_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~392_q\);

\RAM|ram~577\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~577_combout\ = ( \ROM|memROM~13_combout\ & ( \ROM|memROM~16_combout\ & ( \RAM|ram~392_q\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( \ROM|memROM~16_combout\ & ( \RAM|ram~376_q\ ) ) ) # ( \ROM|memROM~13_combout\ & ( !\ROM|memROM~16_combout\ & ( 
-- \RAM|ram~328_q\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( !\ROM|memROM~16_combout\ & ( \RAM|ram~312_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~312_q\,
	datab => \RAM|ALT_INV_ram~328_q\,
	datac => \RAM|ALT_INV_ram~376_q\,
	datad => \RAM|ALT_INV_ram~392_q\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ROM|ALT_INV_memROM~16_combout\,
	combout => \RAM|ram~577_combout\);

\RAM|ram~578\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~578_combout\ = ( \ROM|memROM~11_combout\ & ( \ROM|memROM~5_combout\ & ( \RAM|ram~577_combout\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( \ROM|memROM~5_combout\ & ( \RAM|ram~576_combout\ ) ) ) # ( \ROM|memROM~11_combout\ & ( !\ROM|memROM~5_combout\ & 
-- ( \RAM|ram~575_combout\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( !\ROM|memROM~5_combout\ & ( \RAM|ram~574_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~574_combout\,
	datab => \RAM|ALT_INV_ram~575_combout\,
	datac => \RAM|ALT_INV_ram~576_combout\,
	datad => \RAM|ALT_INV_ram~577_combout\,
	datae => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \ROM|ALT_INV_memROM~5_combout\,
	combout => \RAM|ram~578_combout\);

\RAM|ram~144\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(1),
	ena => \RAM|ram~700_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~144_q\);

\RAM|ram~152\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(1),
	ena => \RAM|ram~732_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~152_q\);

\RAM|ram~176\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(1),
	ena => \RAM|ram~708_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~176_q\);

\RAM|ram~184\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(1),
	ena => \RAM|ram~740_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~184_q\);

\RAM|ram~579\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~579_combout\ = ( \ROM|memROM~11_combout\ & ( \ROM|memROM~5_combout\ & ( \RAM|ram~184_q\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( \ROM|memROM~5_combout\ & ( \RAM|ram~176_q\ ) ) ) # ( \ROM|memROM~11_combout\ & ( !\ROM|memROM~5_combout\ & ( 
-- \RAM|ram~152_q\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( !\ROM|memROM~5_combout\ & ( \RAM|ram~144_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~144_q\,
	datab => \RAM|ALT_INV_ram~152_q\,
	datac => \RAM|ALT_INV_ram~176_q\,
	datad => \RAM|ALT_INV_ram~184_q\,
	datae => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \ROM|ALT_INV_memROM~5_combout\,
	combout => \RAM|ram~579_combout\);

\RAM|ram~160\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(1),
	ena => \RAM|ram~764_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~160_q\);

\RAM|ram~168\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(1),
	ena => \RAM|ram~808_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~168_q\);

\RAM|ram~192\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(1),
	ena => \RAM|ram~772_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~192_q\);

\RAM|ram~200\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(1),
	ena => \RAM|ram~816_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~200_q\);

\RAM|ram~580\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~580_combout\ = ( \ROM|memROM~11_combout\ & ( \ROM|memROM~5_combout\ & ( \RAM|ram~200_q\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( \ROM|memROM~5_combout\ & ( \RAM|ram~192_q\ ) ) ) # ( \ROM|memROM~11_combout\ & ( !\ROM|memROM~5_combout\ & ( 
-- \RAM|ram~168_q\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( !\ROM|memROM~5_combout\ & ( \RAM|ram~160_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~160_q\,
	datab => \RAM|ALT_INV_ram~168_q\,
	datac => \RAM|ALT_INV_ram~192_q\,
	datad => \RAM|ALT_INV_ram~200_q\,
	datae => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \ROM|ALT_INV_memROM~5_combout\,
	combout => \RAM|ram~580_combout\);

\RAM|ram~208\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(1),
	ena => \RAM|ram~716_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~208_q\);

\RAM|ram~216\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(1),
	ena => \RAM|ram~748_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~216_q\);

\RAM|ram~240\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(1),
	ena => \RAM|ram~724_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~240_q\);

\RAM|ram~248\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(1),
	ena => \RAM|ram~756_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~248_q\);

\RAM|ram~581\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~581_combout\ = ( \ROM|memROM~11_combout\ & ( \ROM|memROM~5_combout\ & ( \RAM|ram~248_q\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( \ROM|memROM~5_combout\ & ( \RAM|ram~240_q\ ) ) ) # ( \ROM|memROM~11_combout\ & ( !\ROM|memROM~5_combout\ & ( 
-- \RAM|ram~216_q\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( !\ROM|memROM~5_combout\ & ( \RAM|ram~208_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~208_q\,
	datab => \RAM|ALT_INV_ram~216_q\,
	datac => \RAM|ALT_INV_ram~240_q\,
	datad => \RAM|ALT_INV_ram~248_q\,
	datae => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \ROM|ALT_INV_memROM~5_combout\,
	combout => \RAM|ram~581_combout\);

\RAM|ram~224\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(1),
	ena => \RAM|ram~780_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~224_q\);

\RAM|ram~232\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(1),
	ena => \RAM|ram~812_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~232_q\);

\RAM|ram~256\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(1),
	ena => \RAM|ram~788_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~256_q\);

\RAM|ram~264\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(1),
	ena => \RAM|ram~820_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~264_q\);

\RAM|ram~582\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~582_combout\ = ( \ROM|memROM~11_combout\ & ( \ROM|memROM~5_combout\ & ( \RAM|ram~264_q\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( \ROM|memROM~5_combout\ & ( \RAM|ram~256_q\ ) ) ) # ( \ROM|memROM~11_combout\ & ( !\ROM|memROM~5_combout\ & ( 
-- \RAM|ram~232_q\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( !\ROM|memROM~5_combout\ & ( \RAM|ram~224_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~224_q\,
	datab => \RAM|ALT_INV_ram~232_q\,
	datac => \RAM|ALT_INV_ram~256_q\,
	datad => \RAM|ALT_INV_ram~264_q\,
	datae => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \ROM|ALT_INV_memROM~5_combout\,
	combout => \RAM|ram~582_combout\);

\RAM|ram~583\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~583_combout\ = ( \ROM|memROM~13_combout\ & ( \ROM|memROM~16_combout\ & ( \RAM|ram~582_combout\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( \ROM|memROM~16_combout\ & ( \RAM|ram~581_combout\ ) ) ) # ( \ROM|memROM~13_combout\ & ( !\ROM|memROM~16_combout\ 
-- & ( \RAM|ram~580_combout\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( !\ROM|memROM~16_combout\ & ( \RAM|ram~579_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~579_combout\,
	datab => \RAM|ALT_INV_ram~580_combout\,
	datac => \RAM|ALT_INV_ram~581_combout\,
	datad => \RAM|ALT_INV_ram~582_combout\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ROM|ALT_INV_memROM~16_combout\,
	combout => \RAM|ram~583_combout\);

\RAM|ram~400\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(1),
	ena => \RAM|ram~702_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~400_q\);

\RAM|ram~408\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(1),
	ena => \RAM|ram~734_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~408_q\);

\RAM|ram~432\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(1),
	ena => \RAM|ram~710_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~432_q\);

\RAM|ram~440\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(1),
	ena => \RAM|ram~742_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~440_q\);

\RAM|ram~584\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~584_combout\ = ( \ROM|memROM~11_combout\ & ( \ROM|memROM~5_combout\ & ( \RAM|ram~440_q\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( \ROM|memROM~5_combout\ & ( \RAM|ram~432_q\ ) ) ) # ( \ROM|memROM~11_combout\ & ( !\ROM|memROM~5_combout\ & ( 
-- \RAM|ram~408_q\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( !\ROM|memROM~5_combout\ & ( \RAM|ram~400_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~400_q\,
	datab => \RAM|ALT_INV_ram~408_q\,
	datac => \RAM|ALT_INV_ram~432_q\,
	datad => \RAM|ALT_INV_ram~440_q\,
	datae => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \ROM|ALT_INV_memROM~5_combout\,
	combout => \RAM|ram~584_combout\);

\RAM|ram~416\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(1),
	ena => \RAM|ram~766_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~416_q\);

\RAM|ram~424\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(1),
	ena => \RAM|ram~810_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~424_q\);

\RAM|ram~448\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(1),
	ena => \RAM|ram~774_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~448_q\);

\RAM|ram~456\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(1),
	ena => \RAM|ram~818_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~456_q\);

\RAM|ram~585\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~585_combout\ = ( \ROM|memROM~11_combout\ & ( \ROM|memROM~5_combout\ & ( \RAM|ram~456_q\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( \ROM|memROM~5_combout\ & ( \RAM|ram~448_q\ ) ) ) # ( \ROM|memROM~11_combout\ & ( !\ROM|memROM~5_combout\ & ( 
-- \RAM|ram~424_q\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( !\ROM|memROM~5_combout\ & ( \RAM|ram~416_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~416_q\,
	datab => \RAM|ALT_INV_ram~424_q\,
	datac => \RAM|ALT_INV_ram~448_q\,
	datad => \RAM|ALT_INV_ram~456_q\,
	datae => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \ROM|ALT_INV_memROM~5_combout\,
	combout => \RAM|ram~585_combout\);

\RAM|ram~464\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(1),
	ena => \RAM|ram~718_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~464_q\);

\RAM|ram~472\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(1),
	ena => \RAM|ram~750_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~472_q\);

\RAM|ram~496\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(1),
	ena => \RAM|ram~726_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~496_q\);

\RAM|ram~504\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(1),
	ena => \RAM|ram~758_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~504_q\);

\RAM|ram~586\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~586_combout\ = ( \ROM|memROM~11_combout\ & ( \ROM|memROM~5_combout\ & ( \RAM|ram~504_q\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( \ROM|memROM~5_combout\ & ( \RAM|ram~496_q\ ) ) ) # ( \ROM|memROM~11_combout\ & ( !\ROM|memROM~5_combout\ & ( 
-- \RAM|ram~472_q\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( !\ROM|memROM~5_combout\ & ( \RAM|ram~464_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~464_q\,
	datab => \RAM|ALT_INV_ram~472_q\,
	datac => \RAM|ALT_INV_ram~496_q\,
	datad => \RAM|ALT_INV_ram~504_q\,
	datae => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \ROM|ALT_INV_memROM~5_combout\,
	combout => \RAM|ram~586_combout\);

\RAM|ram~480\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(1),
	ena => \RAM|ram~782_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~480_q\);

\RAM|ram~488\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(1),
	ena => \RAM|ram~814_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~488_q\);

\RAM|ram~512\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(1),
	ena => \RAM|ram~790_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~512_q\);

\RAM|ram~520\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(1),
	ena => \RAM|ram~822_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~520_q\);

\RAM|ram~587\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~587_combout\ = ( \ROM|memROM~11_combout\ & ( \ROM|memROM~5_combout\ & ( \RAM|ram~520_q\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( \ROM|memROM~5_combout\ & ( \RAM|ram~512_q\ ) ) ) # ( \ROM|memROM~11_combout\ & ( !\ROM|memROM~5_combout\ & ( 
-- \RAM|ram~488_q\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( !\ROM|memROM~5_combout\ & ( \RAM|ram~480_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~480_q\,
	datab => \RAM|ALT_INV_ram~488_q\,
	datac => \RAM|ALT_INV_ram~512_q\,
	datad => \RAM|ALT_INV_ram~520_q\,
	datae => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \ROM|ALT_INV_memROM~5_combout\,
	combout => \RAM|ram~587_combout\);

\RAM|ram~588\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~588_combout\ = ( \ROM|memROM~13_combout\ & ( \ROM|memROM~16_combout\ & ( \RAM|ram~587_combout\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( \ROM|memROM~16_combout\ & ( \RAM|ram~586_combout\ ) ) ) # ( \ROM|memROM~13_combout\ & ( !\ROM|memROM~16_combout\ 
-- & ( \RAM|ram~585_combout\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( !\ROM|memROM~16_combout\ & ( \RAM|ram~584_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~584_combout\,
	datab => \RAM|ALT_INV_ram~585_combout\,
	datac => \RAM|ALT_INV_ram~586_combout\,
	datad => \RAM|ALT_INV_ram~587_combout\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ROM|ALT_INV_memROM~16_combout\,
	combout => \RAM|ram~588_combout\);

\RAM|ram~589\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~589_combout\ = ( \ROM|memROM~12_combout\ & ( \ROM|memROM~14_combout\ & ( \RAM|ram~588_combout\ ) ) ) # ( !\ROM|memROM~12_combout\ & ( \ROM|memROM~14_combout\ & ( \RAM|ram~583_combout\ ) ) ) # ( \ROM|memROM~12_combout\ & ( !\ROM|memROM~14_combout\ 
-- & ( \RAM|ram~578_combout\ ) ) ) # ( !\ROM|memROM~12_combout\ & ( !\ROM|memROM~14_combout\ & ( \RAM|ram~573_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~573_combout\,
	datab => \RAM|ALT_INV_ram~578_combout\,
	datac => \RAM|ALT_INV_ram~583_combout\,
	datad => \RAM|ALT_INV_ram~588_combout\,
	datae => \ROM|ALT_INV_memROM~12_combout\,
	dataf => \ROM|ALT_INV_memROM~14_combout\,
	combout => \RAM|ram~589_combout\);

\SW[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

\CPU|MUX1|saida_MUX[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[1]~1_combout\ = (\CPU|DECODER|SEL_MUX~0_combout\ & ((!\ENABLE_SWR~2_combout\ & (\RAM|ram~589_combout\)) # (\ENABLE_SWR~2_combout\ & ((\SW[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000010011000000100001001100000010000100110000001000010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ENABLE_SWR~2_combout\,
	datab => \CPU|DECODER|ALT_INV_SEL_MUX~0_combout\,
	datac => \RAM|ALT_INV_ram~589_combout\,
	datad => \ALT_INV_SW[1]~input_o\,
	combout => \CPU|MUX1|saida_MUX[1]~1_combout\);

\CPU|ULA1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~13_sumout\ = SUM(( \CPU|MUX1|saida_MUX[2]~2_combout\ ) + ( \CPU|REG_A|DOUT\(2) ) + ( \CPU|ULA1|Add0~10\ ))
-- \CPU|ULA1|Add0~14\ = CARRY(( \CPU|MUX1|saida_MUX[2]~2_combout\ ) + ( \CPU|REG_A|DOUT\(2) ) + ( \CPU|ULA1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|MUX1|ALT_INV_saida_MUX[2]~2_combout\,
	dataf => \CPU|REG_A|ALT_INV_DOUT\(2),
	cin => \CPU|ULA1|Add0~10\,
	sumout => \CPU|ULA1|Add0~13_sumout\,
	cout => \CPU|ULA1|Add0~14\);

\CPU|ULA1|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~13_sumout\ = SUM(( !\CPU|MUX1|saida_MUX[2]~2_combout\ ) + ( \CPU|REG_A|DOUT\(2) ) + ( \CPU|ULA1|Add1~10\ ))
-- \CPU|ULA1|Add1~14\ = CARRY(( !\CPU|MUX1|saida_MUX[2]~2_combout\ ) + ( \CPU|REG_A|DOUT\(2) ) + ( \CPU|ULA1|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|MUX1|ALT_INV_saida_MUX[2]~2_combout\,
	dataf => \CPU|REG_A|ALT_INV_DOUT\(2),
	cin => \CPU|ULA1|Add1~10\,
	sumout => \CPU|ULA1|Add1~13_sumout\,
	cout => \CPU|ULA1|Add1~14\);

\CPU|ULA1|saida[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[2]~3_combout\ = (!\CPU|DECODER|OP_ULA[1]~0_combout\ & ((\CPU|ULA1|Add1~13_sumout\))) # (\CPU|DECODER|OP_ULA[1]~0_combout\ & (\CPU|MUX1|saida_MUX[2]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_OP_ULA[1]~0_combout\,
	datab => \CPU|MUX1|ALT_INV_saida_MUX[2]~2_combout\,
	datac => \CPU|ULA1|ALT_INV_Add1~13_sumout\,
	combout => \CPU|ULA1|saida[2]~3_combout\);

\CPU|REG_A|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~13_sumout\,
	asdata => \CPU|ULA1|saida[2]~3_combout\,
	sload => \CPU|DECODER|OP_ULA[0]~1_combout\,
	ena => \CPU|DECODER|HAB_A~1_combout\,
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
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(2),
	ena => \RAM|ram~696_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~17_q\);

\RAM|ram~273\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(2),
	ena => \RAM|ram~698_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~273_q\);

\RAM|ram~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(2),
	ena => \RAM|ram~760_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~33_q\);

\RAM|ram~289\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(2),
	ena => \RAM|ram~762_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~289_q\);

\RAM|ram~590\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~590_combout\ = ( \ROM|memROM~12_combout\ & ( \ROM|memROM~13_combout\ & ( \RAM|ram~289_q\ ) ) ) # ( !\ROM|memROM~12_combout\ & ( \ROM|memROM~13_combout\ & ( \RAM|ram~33_q\ ) ) ) # ( \ROM|memROM~12_combout\ & ( !\ROM|memROM~13_combout\ & ( 
-- \RAM|ram~273_q\ ) ) ) # ( !\ROM|memROM~12_combout\ & ( !\ROM|memROM~13_combout\ & ( \RAM|ram~17_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~17_q\,
	datab => \RAM|ALT_INV_ram~273_q\,
	datac => \RAM|ALT_INV_ram~33_q\,
	datad => \RAM|ALT_INV_ram~289_q\,
	datae => \ROM|ALT_INV_memROM~12_combout\,
	dataf => \ROM|ALT_INV_memROM~13_combout\,
	combout => \RAM|ram~590_combout\);

\RAM|ram~145\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(2),
	ena => \RAM|ram~700_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~145_q\);

\RAM|ram~401\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(2),
	ena => \RAM|ram~702_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~401_q\);

\RAM|ram~161\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(2),
	ena => \RAM|ram~764_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~161_q\);

\RAM|ram~417\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(2),
	ena => \RAM|ram~766_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~417_q\);

\RAM|ram~591\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~591_combout\ = ( \ROM|memROM~12_combout\ & ( \ROM|memROM~13_combout\ & ( \RAM|ram~417_q\ ) ) ) # ( !\ROM|memROM~12_combout\ & ( \ROM|memROM~13_combout\ & ( \RAM|ram~161_q\ ) ) ) # ( \ROM|memROM~12_combout\ & ( !\ROM|memROM~13_combout\ & ( 
-- \RAM|ram~401_q\ ) ) ) # ( !\ROM|memROM~12_combout\ & ( !\ROM|memROM~13_combout\ & ( \RAM|ram~145_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~145_q\,
	datab => \RAM|ALT_INV_ram~401_q\,
	datac => \RAM|ALT_INV_ram~161_q\,
	datad => \RAM|ALT_INV_ram~417_q\,
	datae => \ROM|ALT_INV_memROM~12_combout\,
	dataf => \ROM|ALT_INV_memROM~13_combout\,
	combout => \RAM|ram~591_combout\);

\RAM|ram~81\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(2),
	ena => \RAM|ram~712_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~81_q\);

\RAM|ram~337\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(2),
	ena => \RAM|ram~714_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~337_q\);

\RAM|ram~97\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(2),
	ena => \RAM|ram~776_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~97_q\);

\RAM|ram~353\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(2),
	ena => \RAM|ram~778_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~353_q\);

\RAM|ram~592\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~592_combout\ = ( \ROM|memROM~12_combout\ & ( \ROM|memROM~13_combout\ & ( \RAM|ram~353_q\ ) ) ) # ( !\ROM|memROM~12_combout\ & ( \ROM|memROM~13_combout\ & ( \RAM|ram~97_q\ ) ) ) # ( \ROM|memROM~12_combout\ & ( !\ROM|memROM~13_combout\ & ( 
-- \RAM|ram~337_q\ ) ) ) # ( !\ROM|memROM~12_combout\ & ( !\ROM|memROM~13_combout\ & ( \RAM|ram~81_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~81_q\,
	datab => \RAM|ALT_INV_ram~337_q\,
	datac => \RAM|ALT_INV_ram~97_q\,
	datad => \RAM|ALT_INV_ram~353_q\,
	datae => \ROM|ALT_INV_memROM~12_combout\,
	dataf => \ROM|ALT_INV_memROM~13_combout\,
	combout => \RAM|ram~592_combout\);

\RAM|ram~209\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(2),
	ena => \RAM|ram~716_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~209_q\);

\RAM|ram~465\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(2),
	ena => \RAM|ram~718_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~465_q\);

\RAM|ram~225\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(2),
	ena => \RAM|ram~780_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~225_q\);

\RAM|ram~481\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(2),
	ena => \RAM|ram~782_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~481_q\);

\RAM|ram~593\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~593_combout\ = ( \ROM|memROM~12_combout\ & ( \ROM|memROM~13_combout\ & ( \RAM|ram~481_q\ ) ) ) # ( !\ROM|memROM~12_combout\ & ( \ROM|memROM~13_combout\ & ( \RAM|ram~225_q\ ) ) ) # ( \ROM|memROM~12_combout\ & ( !\ROM|memROM~13_combout\ & ( 
-- \RAM|ram~465_q\ ) ) ) # ( !\ROM|memROM~12_combout\ & ( !\ROM|memROM~13_combout\ & ( \RAM|ram~209_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~209_q\,
	datab => \RAM|ALT_INV_ram~465_q\,
	datac => \RAM|ALT_INV_ram~225_q\,
	datad => \RAM|ALT_INV_ram~481_q\,
	datae => \ROM|ALT_INV_memROM~12_combout\,
	dataf => \ROM|ALT_INV_memROM~13_combout\,
	combout => \RAM|ram~593_combout\);

\RAM|ram~594\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~594_combout\ = ( \ROM|memROM~14_combout\ & ( \ROM|memROM~16_combout\ & ( \RAM|ram~593_combout\ ) ) ) # ( !\ROM|memROM~14_combout\ & ( \ROM|memROM~16_combout\ & ( \RAM|ram~592_combout\ ) ) ) # ( \ROM|memROM~14_combout\ & ( !\ROM|memROM~16_combout\ 
-- & ( \RAM|ram~591_combout\ ) ) ) # ( !\ROM|memROM~14_combout\ & ( !\ROM|memROM~16_combout\ & ( \RAM|ram~590_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~590_combout\,
	datab => \RAM|ALT_INV_ram~591_combout\,
	datac => \RAM|ALT_INV_ram~592_combout\,
	datad => \RAM|ALT_INV_ram~593_combout\,
	datae => \ROM|ALT_INV_memROM~14_combout\,
	dataf => \ROM|ALT_INV_memROM~16_combout\,
	combout => \RAM|ram~594_combout\);

\RAM|ram~49\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(2),
	ena => \RAM|ram~704_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~49_q\);

\RAM|ram~305\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(2),
	ena => \RAM|ram~706_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~305_q\);

\RAM|ram~65\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(2),
	ena => \RAM|ram~768_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~65_q\);

\RAM|ram~321\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(2),
	ena => \RAM|ram~770_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~321_q\);

\RAM|ram~595\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~595_combout\ = ( \ROM|memROM~12_combout\ & ( \ROM|memROM~13_combout\ & ( \RAM|ram~321_q\ ) ) ) # ( !\ROM|memROM~12_combout\ & ( \ROM|memROM~13_combout\ & ( \RAM|ram~65_q\ ) ) ) # ( \ROM|memROM~12_combout\ & ( !\ROM|memROM~13_combout\ & ( 
-- \RAM|ram~305_q\ ) ) ) # ( !\ROM|memROM~12_combout\ & ( !\ROM|memROM~13_combout\ & ( \RAM|ram~49_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~49_q\,
	datab => \RAM|ALT_INV_ram~305_q\,
	datac => \RAM|ALT_INV_ram~65_q\,
	datad => \RAM|ALT_INV_ram~321_q\,
	datae => \ROM|ALT_INV_memROM~12_combout\,
	dataf => \ROM|ALT_INV_memROM~13_combout\,
	combout => \RAM|ram~595_combout\);

\RAM|ram~177\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(2),
	ena => \RAM|ram~708_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~177_q\);

\RAM|ram~433\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(2),
	ena => \RAM|ram~710_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~433_q\);

\RAM|ram~193\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(2),
	ena => \RAM|ram~772_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~193_q\);

\RAM|ram~449\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(2),
	ena => \RAM|ram~774_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~449_q\);

\RAM|ram~596\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~596_combout\ = ( \ROM|memROM~12_combout\ & ( \ROM|memROM~13_combout\ & ( \RAM|ram~449_q\ ) ) ) # ( !\ROM|memROM~12_combout\ & ( \ROM|memROM~13_combout\ & ( \RAM|ram~193_q\ ) ) ) # ( \ROM|memROM~12_combout\ & ( !\ROM|memROM~13_combout\ & ( 
-- \RAM|ram~433_q\ ) ) ) # ( !\ROM|memROM~12_combout\ & ( !\ROM|memROM~13_combout\ & ( \RAM|ram~177_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~177_q\,
	datab => \RAM|ALT_INV_ram~433_q\,
	datac => \RAM|ALT_INV_ram~193_q\,
	datad => \RAM|ALT_INV_ram~449_q\,
	datae => \ROM|ALT_INV_memROM~12_combout\,
	dataf => \ROM|ALT_INV_memROM~13_combout\,
	combout => \RAM|ram~596_combout\);

\RAM|ram~113\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(2),
	ena => \RAM|ram~720_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~113_q\);

\RAM|ram~369\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(2),
	ena => \RAM|ram~722_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~369_q\);

\RAM|ram~129\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(2),
	ena => \RAM|ram~784_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~129_q\);

\RAM|ram~385\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(2),
	ena => \RAM|ram~786_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~385_q\);

\RAM|ram~597\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~597_combout\ = ( \ROM|memROM~12_combout\ & ( \ROM|memROM~13_combout\ & ( \RAM|ram~385_q\ ) ) ) # ( !\ROM|memROM~12_combout\ & ( \ROM|memROM~13_combout\ & ( \RAM|ram~129_q\ ) ) ) # ( \ROM|memROM~12_combout\ & ( !\ROM|memROM~13_combout\ & ( 
-- \RAM|ram~369_q\ ) ) ) # ( !\ROM|memROM~12_combout\ & ( !\ROM|memROM~13_combout\ & ( \RAM|ram~113_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~113_q\,
	datab => \RAM|ALT_INV_ram~369_q\,
	datac => \RAM|ALT_INV_ram~129_q\,
	datad => \RAM|ALT_INV_ram~385_q\,
	datae => \ROM|ALT_INV_memROM~12_combout\,
	dataf => \ROM|ALT_INV_memROM~13_combout\,
	combout => \RAM|ram~597_combout\);

\RAM|ram~241\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(2),
	ena => \RAM|ram~724_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~241_q\);

\RAM|ram~497\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(2),
	ena => \RAM|ram~726_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~497_q\);

\RAM|ram~257\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(2),
	ena => \RAM|ram~788_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~257_q\);

\RAM|ram~513\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(2),
	ena => \RAM|ram~790_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~513_q\);

\RAM|ram~598\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~598_combout\ = ( \ROM|memROM~12_combout\ & ( \ROM|memROM~13_combout\ & ( \RAM|ram~513_q\ ) ) ) # ( !\ROM|memROM~12_combout\ & ( \ROM|memROM~13_combout\ & ( \RAM|ram~257_q\ ) ) ) # ( \ROM|memROM~12_combout\ & ( !\ROM|memROM~13_combout\ & ( 
-- \RAM|ram~497_q\ ) ) ) # ( !\ROM|memROM~12_combout\ & ( !\ROM|memROM~13_combout\ & ( \RAM|ram~241_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~241_q\,
	datab => \RAM|ALT_INV_ram~497_q\,
	datac => \RAM|ALT_INV_ram~257_q\,
	datad => \RAM|ALT_INV_ram~513_q\,
	datae => \ROM|ALT_INV_memROM~12_combout\,
	dataf => \ROM|ALT_INV_memROM~13_combout\,
	combout => \RAM|ram~598_combout\);

\RAM|ram~599\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~599_combout\ = ( \ROM|memROM~14_combout\ & ( \ROM|memROM~16_combout\ & ( \RAM|ram~598_combout\ ) ) ) # ( !\ROM|memROM~14_combout\ & ( \ROM|memROM~16_combout\ & ( \RAM|ram~597_combout\ ) ) ) # ( \ROM|memROM~14_combout\ & ( !\ROM|memROM~16_combout\ 
-- & ( \RAM|ram~596_combout\ ) ) ) # ( !\ROM|memROM~14_combout\ & ( !\ROM|memROM~16_combout\ & ( \RAM|ram~595_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~595_combout\,
	datab => \RAM|ALT_INV_ram~596_combout\,
	datac => \RAM|ALT_INV_ram~597_combout\,
	datad => \RAM|ALT_INV_ram~598_combout\,
	datae => \ROM|ALT_INV_memROM~14_combout\,
	dataf => \ROM|ALT_INV_memROM~16_combout\,
	combout => \RAM|ram~599_combout\);

\RAM|ram~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(2),
	ena => \RAM|ram~728_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~25_q\);

\RAM|ram~281\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(2),
	ena => \RAM|ram~730_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~281_q\);

\RAM|ram~153\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(2),
	ena => \RAM|ram~732_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~153_q\);

\RAM|ram~409\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(2),
	ena => \RAM|ram~734_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~409_q\);

\RAM|ram~600\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~600_combout\ = ( \ROM|memROM~12_combout\ & ( \ROM|memROM~14_combout\ & ( \RAM|ram~409_q\ ) ) ) # ( !\ROM|memROM~12_combout\ & ( \ROM|memROM~14_combout\ & ( \RAM|ram~153_q\ ) ) ) # ( \ROM|memROM~12_combout\ & ( !\ROM|memROM~14_combout\ & ( 
-- \RAM|ram~281_q\ ) ) ) # ( !\ROM|memROM~12_combout\ & ( !\ROM|memROM~14_combout\ & ( \RAM|ram~25_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~25_q\,
	datab => \RAM|ALT_INV_ram~281_q\,
	datac => \RAM|ALT_INV_ram~153_q\,
	datad => \RAM|ALT_INV_ram~409_q\,
	datae => \ROM|ALT_INV_memROM~12_combout\,
	dataf => \ROM|ALT_INV_memROM~14_combout\,
	combout => \RAM|ram~600_combout\);

\RAM|ram~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(2),
	ena => \RAM|ram~792_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~41_q\);

\RAM|ram~297\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(2),
	ena => \RAM|ram~794_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~297_q\);

\RAM|ram~169\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(2),
	ena => \RAM|ram~808_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~169_q\);

\RAM|ram~425\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(2),
	ena => \RAM|ram~810_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~425_q\);

\RAM|ram~601\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~601_combout\ = ( \ROM|memROM~12_combout\ & ( \ROM|memROM~14_combout\ & ( \RAM|ram~425_q\ ) ) ) # ( !\ROM|memROM~12_combout\ & ( \ROM|memROM~14_combout\ & ( \RAM|ram~169_q\ ) ) ) # ( \ROM|memROM~12_combout\ & ( !\ROM|memROM~14_combout\ & ( 
-- \RAM|ram~297_q\ ) ) ) # ( !\ROM|memROM~12_combout\ & ( !\ROM|memROM~14_combout\ & ( \RAM|ram~41_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~41_q\,
	datab => \RAM|ALT_INV_ram~297_q\,
	datac => \RAM|ALT_INV_ram~169_q\,
	datad => \RAM|ALT_INV_ram~425_q\,
	datae => \ROM|ALT_INV_memROM~12_combout\,
	dataf => \ROM|ALT_INV_memROM~14_combout\,
	combout => \RAM|ram~601_combout\);

\RAM|ram~89\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(2),
	ena => \RAM|ram~744_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~89_q\);

\RAM|ram~345\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(2),
	ena => \RAM|ram~746_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~345_q\);

\RAM|ram~217\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(2),
	ena => \RAM|ram~748_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~217_q\);

\RAM|ram~473\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(2),
	ena => \RAM|ram~750_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~473_q\);

\RAM|ram~602\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~602_combout\ = ( \ROM|memROM~12_combout\ & ( \ROM|memROM~14_combout\ & ( \RAM|ram~473_q\ ) ) ) # ( !\ROM|memROM~12_combout\ & ( \ROM|memROM~14_combout\ & ( \RAM|ram~217_q\ ) ) ) # ( \ROM|memROM~12_combout\ & ( !\ROM|memROM~14_combout\ & ( 
-- \RAM|ram~345_q\ ) ) ) # ( !\ROM|memROM~12_combout\ & ( !\ROM|memROM~14_combout\ & ( \RAM|ram~89_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~89_q\,
	datab => \RAM|ALT_INV_ram~345_q\,
	datac => \RAM|ALT_INV_ram~217_q\,
	datad => \RAM|ALT_INV_ram~473_q\,
	datae => \ROM|ALT_INV_memROM~12_combout\,
	dataf => \ROM|ALT_INV_memROM~14_combout\,
	combout => \RAM|ram~602_combout\);

\RAM|ram~105\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(2),
	ena => \RAM|ram~796_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~105_q\);

\RAM|ram~361\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(2),
	ena => \RAM|ram~798_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~361_q\);

\RAM|ram~233\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(2),
	ena => \RAM|ram~812_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~233_q\);

\RAM|ram~489\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(2),
	ena => \RAM|ram~814_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~489_q\);

\RAM|ram~603\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~603_combout\ = ( \ROM|memROM~12_combout\ & ( \ROM|memROM~14_combout\ & ( \RAM|ram~489_q\ ) ) ) # ( !\ROM|memROM~12_combout\ & ( \ROM|memROM~14_combout\ & ( \RAM|ram~233_q\ ) ) ) # ( \ROM|memROM~12_combout\ & ( !\ROM|memROM~14_combout\ & ( 
-- \RAM|ram~361_q\ ) ) ) # ( !\ROM|memROM~12_combout\ & ( !\ROM|memROM~14_combout\ & ( \RAM|ram~105_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~105_q\,
	datab => \RAM|ALT_INV_ram~361_q\,
	datac => \RAM|ALT_INV_ram~233_q\,
	datad => \RAM|ALT_INV_ram~489_q\,
	datae => \ROM|ALT_INV_memROM~12_combout\,
	dataf => \ROM|ALT_INV_memROM~14_combout\,
	combout => \RAM|ram~603_combout\);

\RAM|ram~604\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~604_combout\ = ( \ROM|memROM~13_combout\ & ( \ROM|memROM~16_combout\ & ( \RAM|ram~603_combout\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( \ROM|memROM~16_combout\ & ( \RAM|ram~602_combout\ ) ) ) # ( \ROM|memROM~13_combout\ & ( !\ROM|memROM~16_combout\ 
-- & ( \RAM|ram~601_combout\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( !\ROM|memROM~16_combout\ & ( \RAM|ram~600_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~600_combout\,
	datab => \RAM|ALT_INV_ram~601_combout\,
	datac => \RAM|ALT_INV_ram~602_combout\,
	datad => \RAM|ALT_INV_ram~603_combout\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ROM|ALT_INV_memROM~16_combout\,
	combout => \RAM|ram~604_combout\);

\RAM|ram~57\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(2),
	ena => \RAM|ram~736_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~57_q\);

\RAM|ram~313\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(2),
	ena => \RAM|ram~738_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~313_q\);

\RAM|ram~73\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(2),
	ena => \RAM|ram~800_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~73_q\);

\RAM|ram~329\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(2),
	ena => \RAM|ram~802_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~329_q\);

\RAM|ram~605\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~605_combout\ = ( \ROM|memROM~12_combout\ & ( \ROM|memROM~13_combout\ & ( \RAM|ram~329_q\ ) ) ) # ( !\ROM|memROM~12_combout\ & ( \ROM|memROM~13_combout\ & ( \RAM|ram~73_q\ ) ) ) # ( \ROM|memROM~12_combout\ & ( !\ROM|memROM~13_combout\ & ( 
-- \RAM|ram~313_q\ ) ) ) # ( !\ROM|memROM~12_combout\ & ( !\ROM|memROM~13_combout\ & ( \RAM|ram~57_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~57_q\,
	datab => \RAM|ALT_INV_ram~313_q\,
	datac => \RAM|ALT_INV_ram~73_q\,
	datad => \RAM|ALT_INV_ram~329_q\,
	datae => \ROM|ALT_INV_memROM~12_combout\,
	dataf => \ROM|ALT_INV_memROM~13_combout\,
	combout => \RAM|ram~605_combout\);

\RAM|ram~121\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(2),
	ena => \RAM|ram~752_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~121_q\);

\RAM|ram~377\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(2),
	ena => \RAM|ram~754_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~377_q\);

\RAM|ram~137\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(2),
	ena => \RAM|ram~804_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~137_q\);

\RAM|ram~393\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(2),
	ena => \RAM|ram~806_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~393_q\);

\RAM|ram~606\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~606_combout\ = ( \ROM|memROM~12_combout\ & ( \ROM|memROM~13_combout\ & ( \RAM|ram~393_q\ ) ) ) # ( !\ROM|memROM~12_combout\ & ( \ROM|memROM~13_combout\ & ( \RAM|ram~137_q\ ) ) ) # ( \ROM|memROM~12_combout\ & ( !\ROM|memROM~13_combout\ & ( 
-- \RAM|ram~377_q\ ) ) ) # ( !\ROM|memROM~12_combout\ & ( !\ROM|memROM~13_combout\ & ( \RAM|ram~121_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~121_q\,
	datab => \RAM|ALT_INV_ram~377_q\,
	datac => \RAM|ALT_INV_ram~137_q\,
	datad => \RAM|ALT_INV_ram~393_q\,
	datae => \ROM|ALT_INV_memROM~12_combout\,
	dataf => \ROM|ALT_INV_memROM~13_combout\,
	combout => \RAM|ram~606_combout\);

\RAM|ram~185\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(2),
	ena => \RAM|ram~740_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~185_q\);

\RAM|ram~441\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(2),
	ena => \RAM|ram~742_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~441_q\);

\RAM|ram~201\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(2),
	ena => \RAM|ram~816_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~201_q\);

\RAM|ram~457\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(2),
	ena => \RAM|ram~818_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~457_q\);

\RAM|ram~607\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~607_combout\ = ( \ROM|memROM~12_combout\ & ( \ROM|memROM~13_combout\ & ( \RAM|ram~457_q\ ) ) ) # ( !\ROM|memROM~12_combout\ & ( \ROM|memROM~13_combout\ & ( \RAM|ram~201_q\ ) ) ) # ( \ROM|memROM~12_combout\ & ( !\ROM|memROM~13_combout\ & ( 
-- \RAM|ram~441_q\ ) ) ) # ( !\ROM|memROM~12_combout\ & ( !\ROM|memROM~13_combout\ & ( \RAM|ram~185_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~185_q\,
	datab => \RAM|ALT_INV_ram~441_q\,
	datac => \RAM|ALT_INV_ram~201_q\,
	datad => \RAM|ALT_INV_ram~457_q\,
	datae => \ROM|ALT_INV_memROM~12_combout\,
	dataf => \ROM|ALT_INV_memROM~13_combout\,
	combout => \RAM|ram~607_combout\);

\RAM|ram~249\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(2),
	ena => \RAM|ram~756_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~249_q\);

\RAM|ram~505\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(2),
	ena => \RAM|ram~758_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~505_q\);

\RAM|ram~265\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(2),
	ena => \RAM|ram~820_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~265_q\);

\RAM|ram~521\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(2),
	ena => \RAM|ram~822_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~521_q\);

\RAM|ram~608\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~608_combout\ = ( \ROM|memROM~12_combout\ & ( \ROM|memROM~13_combout\ & ( \RAM|ram~521_q\ ) ) ) # ( !\ROM|memROM~12_combout\ & ( \ROM|memROM~13_combout\ & ( \RAM|ram~265_q\ ) ) ) # ( \ROM|memROM~12_combout\ & ( !\ROM|memROM~13_combout\ & ( 
-- \RAM|ram~505_q\ ) ) ) # ( !\ROM|memROM~12_combout\ & ( !\ROM|memROM~13_combout\ & ( \RAM|ram~249_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~249_q\,
	datab => \RAM|ALT_INV_ram~505_q\,
	datac => \RAM|ALT_INV_ram~265_q\,
	datad => \RAM|ALT_INV_ram~521_q\,
	datae => \ROM|ALT_INV_memROM~12_combout\,
	dataf => \ROM|ALT_INV_memROM~13_combout\,
	combout => \RAM|ram~608_combout\);

\RAM|ram~609\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~609_combout\ = ( \ROM|memROM~16_combout\ & ( \ROM|memROM~14_combout\ & ( \RAM|ram~608_combout\ ) ) ) # ( !\ROM|memROM~16_combout\ & ( \ROM|memROM~14_combout\ & ( \RAM|ram~607_combout\ ) ) ) # ( \ROM|memROM~16_combout\ & ( !\ROM|memROM~14_combout\ 
-- & ( \RAM|ram~606_combout\ ) ) ) # ( !\ROM|memROM~16_combout\ & ( !\ROM|memROM~14_combout\ & ( \RAM|ram~605_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~605_combout\,
	datab => \RAM|ALT_INV_ram~606_combout\,
	datac => \RAM|ALT_INV_ram~607_combout\,
	datad => \RAM|ALT_INV_ram~608_combout\,
	datae => \ROM|ALT_INV_memROM~16_combout\,
	dataf => \ROM|ALT_INV_memROM~14_combout\,
	combout => \RAM|ram~609_combout\);

\RAM|ram~610\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~610_combout\ = ( \ROM|memROM~5_combout\ & ( \ROM|memROM~11_combout\ & ( \RAM|ram~609_combout\ ) ) ) # ( !\ROM|memROM~5_combout\ & ( \ROM|memROM~11_combout\ & ( \RAM|ram~604_combout\ ) ) ) # ( \ROM|memROM~5_combout\ & ( !\ROM|memROM~11_combout\ & 
-- ( \RAM|ram~599_combout\ ) ) ) # ( !\ROM|memROM~5_combout\ & ( !\ROM|memROM~11_combout\ & ( \RAM|ram~594_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~594_combout\,
	datab => \RAM|ALT_INV_ram~599_combout\,
	datac => \RAM|ALT_INV_ram~604_combout\,
	datad => \RAM|ALT_INV_ram~609_combout\,
	datae => \ROM|ALT_INV_memROM~5_combout\,
	dataf => \ROM|ALT_INV_memROM~11_combout\,
	combout => \RAM|ram~610_combout\);

\SW[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

\CPU|MUX1|saida_MUX[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[2]~2_combout\ = ( \SW[2]~input_o\ & ( (!\CPU|DECODER|SEL_MUX~0_combout\ & (\ROM|memROM~5_combout\)) # (\CPU|DECODER|SEL_MUX~0_combout\ & (((\RAM|ram~610_combout\) # (\ENABLE_SWR~2_combout\)))) ) ) # ( !\SW[2]~input_o\ & ( 
-- (!\CPU|DECODER|SEL_MUX~0_combout\ & (\ROM|memROM~5_combout\)) # (\CPU|DECODER|SEL_MUX~0_combout\ & (((!\ENABLE_SWR~2_combout\ & \RAM|ram~610_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011100010100110101111101010000010111000101001101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~5_combout\,
	datab => \ALT_INV_ENABLE_SWR~2_combout\,
	datac => \CPU|DECODER|ALT_INV_SEL_MUX~0_combout\,
	datad => \RAM|ALT_INV_ram~610_combout\,
	datae => \ALT_INV_SW[2]~input_o\,
	combout => \CPU|MUX1|saida_MUX[2]~2_combout\);

\CPU|ULA1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~5_sumout\ = SUM(( (!\CPU|DECODER|SEL_MUX~0_combout\ & (((!\CPU|INSTR|PC|DOUT\(8) & \ROM|memROM~24_combout\)))) # (\CPU|DECODER|SEL_MUX~0_combout\ & (\CPU|MUX1|saida_MUX[3]~0_combout\)) ) + ( \CPU|REG_A|DOUT\(3) ) + ( \CPU|ULA1|Add0~14\ ))
-- \CPU|ULA1|Add0~6\ = CARRY(( (!\CPU|DECODER|SEL_MUX~0_combout\ & (((!\CPU|INSTR|PC|DOUT\(8) & \ROM|memROM~24_combout\)))) # (\CPU|DECODER|SEL_MUX~0_combout\ & (\CPU|MUX1|saida_MUX[3]~0_combout\)) ) + ( \CPU|REG_A|DOUT\(3) ) + ( \CPU|ULA1|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000001000110110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_SEL_MUX~0_combout\,
	datab => \CPU|MUX1|ALT_INV_saida_MUX[3]~0_combout\,
	datac => \CPU|INSTR|PC|ALT_INV_DOUT\(8),
	datad => \ROM|ALT_INV_memROM~24_combout\,
	dataf => \CPU|REG_A|ALT_INV_DOUT\(3),
	cin => \CPU|ULA1|Add0~14\,
	sumout => \CPU|ULA1|Add0~5_sumout\,
	cout => \CPU|ULA1|Add0~6\);

\CPU|ULA1|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~5_sumout\ = SUM(( (!\CPU|DECODER|HAB_A~0_combout\ & (((!\CPU|MUX1|saida_MUX[3]~0_combout\)))) # (\CPU|DECODER|HAB_A~0_combout\ & ((!\CPU|DECODER|OP_ULA[0]~2_combout\ & (!\ROM|memROM~16_combout\)) # (\CPU|DECODER|OP_ULA[0]~2_combout\ & 
-- ((!\CPU|MUX1|saida_MUX[3]~0_combout\))))) ) + ( \CPU|REG_A|DOUT\(3) ) + ( \CPU|ULA1|Add1~14\ ))
-- \CPU|ULA1|Add1~6\ = CARRY(( (!\CPU|DECODER|HAB_A~0_combout\ & (((!\CPU|MUX1|saida_MUX[3]~0_combout\)))) # (\CPU|DECODER|HAB_A~0_combout\ & ((!\CPU|DECODER|OP_ULA[0]~2_combout\ & (!\ROM|memROM~16_combout\)) # (\CPU|DECODER|OP_ULA[0]~2_combout\ & 
-- ((!\CPU|MUX1|saida_MUX[3]~0_combout\))))) ) + ( \CPU|REG_A|DOUT\(3) ) + ( \CPU|ULA1|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111101101000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_HAB_A~0_combout\,
	datab => \CPU|DECODER|ALT_INV_OP_ULA[0]~2_combout\,
	datac => \ROM|ALT_INV_memROM~16_combout\,
	datad => \CPU|MUX1|ALT_INV_saida_MUX[3]~0_combout\,
	dataf => \CPU|REG_A|ALT_INV_DOUT\(3),
	cin => \CPU|ULA1|Add1~14\,
	sumout => \CPU|ULA1|Add1~5_sumout\,
	cout => \CPU|ULA1|Add1~6\);

\CPU|ULA1|saida[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[3]~1_combout\ = ( \CPU|ULA1|Add1~5_sumout\ & ( (!\CPU|DECODER|OP_ULA[1]~0_combout\) # ((!\CPU|DECODER|SEL_MUX~0_combout\ & (\ROM|memROM~16_combout\)) # (\CPU|DECODER|SEL_MUX~0_combout\ & ((\CPU|MUX1|saida_MUX[3]~0_combout\)))) ) ) # ( 
-- !\CPU|ULA1|Add1~5_sumout\ & ( (\CPU|DECODER|OP_ULA[1]~0_combout\ & ((!\CPU|DECODER|SEL_MUX~0_combout\ & (\ROM|memROM~16_combout\)) # (\CPU|DECODER|SEL_MUX~0_combout\ & ((\CPU|MUX1|saida_MUX[3]~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000111111101001111011100000100000001111111010011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~16_combout\,
	datab => \CPU|DECODER|ALT_INV_SEL_MUX~0_combout\,
	datac => \CPU|DECODER|ALT_INV_OP_ULA[1]~0_combout\,
	datad => \CPU|MUX1|ALT_INV_saida_MUX[3]~0_combout\,
	datae => \CPU|ULA1|ALT_INV_Add1~5_sumout\,
	combout => \CPU|ULA1|saida[3]~1_combout\);

\CPU|REG_A|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~5_sumout\,
	asdata => \CPU|ULA1|saida[3]~1_combout\,
	sload => \CPU|DECODER|OP_ULA[0]~1_combout\,
	ena => \CPU|DECODER|HAB_A~1_combout\,
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
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(3),
	ena => \RAM|ram~696_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~18_q\);

\RAM|ram~146\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(3),
	ena => \RAM|ram~700_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~146_q\);

\RAM|ram~82\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(3),
	ena => \RAM|ram~712_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~82_q\);

\RAM|ram~210\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(3),
	ena => \RAM|ram~716_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~210_q\);

\RAM|ram~548\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~548_combout\ = ( \ROM|memROM~14_combout\ & ( \ROM|memROM~16_combout\ & ( \RAM|ram~210_q\ ) ) ) # ( !\ROM|memROM~14_combout\ & ( \ROM|memROM~16_combout\ & ( \RAM|ram~82_q\ ) ) ) # ( \ROM|memROM~14_combout\ & ( !\ROM|memROM~16_combout\ & ( 
-- \RAM|ram~146_q\ ) ) ) # ( !\ROM|memROM~14_combout\ & ( !\ROM|memROM~16_combout\ & ( \RAM|ram~18_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~18_q\,
	datab => \RAM|ALT_INV_ram~146_q\,
	datac => \RAM|ALT_INV_ram~82_q\,
	datad => \RAM|ALT_INV_ram~210_q\,
	datae => \ROM|ALT_INV_memROM~14_combout\,
	dataf => \ROM|ALT_INV_memROM~16_combout\,
	combout => \RAM|ram~548_combout\);

\RAM|ram~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(3),
	ena => \RAM|ram~728_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~26_q\);

\RAM|ram~154\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(3),
	ena => \RAM|ram~732_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~154_q\);

\RAM|ram~90\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(3),
	ena => \RAM|ram~744_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~90_q\);

\RAM|ram~218\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(3),
	ena => \RAM|ram~748_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~218_q\);

\RAM|ram~549\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~549_combout\ = ( \ROM|memROM~14_combout\ & ( \ROM|memROM~16_combout\ & ( \RAM|ram~218_q\ ) ) ) # ( !\ROM|memROM~14_combout\ & ( \ROM|memROM~16_combout\ & ( \RAM|ram~90_q\ ) ) ) # ( \ROM|memROM~14_combout\ & ( !\ROM|memROM~16_combout\ & ( 
-- \RAM|ram~154_q\ ) ) ) # ( !\ROM|memROM~14_combout\ & ( !\ROM|memROM~16_combout\ & ( \RAM|ram~26_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~26_q\,
	datab => \RAM|ALT_INV_ram~154_q\,
	datac => \RAM|ALT_INV_ram~90_q\,
	datad => \RAM|ALT_INV_ram~218_q\,
	datae => \ROM|ALT_INV_memROM~14_combout\,
	dataf => \ROM|ALT_INV_memROM~16_combout\,
	combout => \RAM|ram~549_combout\);

\RAM|ram~50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(3),
	ena => \RAM|ram~704_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~50_q\);

\RAM|ram~178\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(3),
	ena => \RAM|ram~708_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~178_q\);

\RAM|ram~114\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(3),
	ena => \RAM|ram~720_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~114_q\);

\RAM|ram~242\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(3),
	ena => \RAM|ram~724_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~242_q\);

\RAM|ram~550\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~550_combout\ = ( \ROM|memROM~14_combout\ & ( \ROM|memROM~16_combout\ & ( \RAM|ram~242_q\ ) ) ) # ( !\ROM|memROM~14_combout\ & ( \ROM|memROM~16_combout\ & ( \RAM|ram~114_q\ ) ) ) # ( \ROM|memROM~14_combout\ & ( !\ROM|memROM~16_combout\ & ( 
-- \RAM|ram~178_q\ ) ) ) # ( !\ROM|memROM~14_combout\ & ( !\ROM|memROM~16_combout\ & ( \RAM|ram~50_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~50_q\,
	datab => \RAM|ALT_INV_ram~178_q\,
	datac => \RAM|ALT_INV_ram~114_q\,
	datad => \RAM|ALT_INV_ram~242_q\,
	datae => \ROM|ALT_INV_memROM~14_combout\,
	dataf => \ROM|ALT_INV_memROM~16_combout\,
	combout => \RAM|ram~550_combout\);

\RAM|ram~58\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(3),
	ena => \RAM|ram~736_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~58_q\);

\RAM|ram~186\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(3),
	ena => \RAM|ram~740_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~186_q\);

\RAM|ram~122\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(3),
	ena => \RAM|ram~752_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~122_q\);

\RAM|ram~250\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(3),
	ena => \RAM|ram~756_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~250_q\);

\RAM|ram~551\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~551_combout\ = ( \ROM|memROM~14_combout\ & ( \ROM|memROM~16_combout\ & ( \RAM|ram~250_q\ ) ) ) # ( !\ROM|memROM~14_combout\ & ( \ROM|memROM~16_combout\ & ( \RAM|ram~122_q\ ) ) ) # ( \ROM|memROM~14_combout\ & ( !\ROM|memROM~16_combout\ & ( 
-- \RAM|ram~186_q\ ) ) ) # ( !\ROM|memROM~14_combout\ & ( !\ROM|memROM~16_combout\ & ( \RAM|ram~58_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~58_q\,
	datab => \RAM|ALT_INV_ram~186_q\,
	datac => \RAM|ALT_INV_ram~122_q\,
	datad => \RAM|ALT_INV_ram~250_q\,
	datae => \ROM|ALT_INV_memROM~14_combout\,
	dataf => \ROM|ALT_INV_memROM~16_combout\,
	combout => \RAM|ram~551_combout\);

\RAM|ram~552\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~552_combout\ = ( \ROM|memROM~11_combout\ & ( \ROM|memROM~5_combout\ & ( \RAM|ram~551_combout\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( \ROM|memROM~5_combout\ & ( \RAM|ram~550_combout\ ) ) ) # ( \ROM|memROM~11_combout\ & ( !\ROM|memROM~5_combout\ & 
-- ( \RAM|ram~549_combout\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( !\ROM|memROM~5_combout\ & ( \RAM|ram~548_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~548_combout\,
	datab => \RAM|ALT_INV_ram~549_combout\,
	datac => \RAM|ALT_INV_ram~550_combout\,
	datad => \RAM|ALT_INV_ram~551_combout\,
	datae => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \ROM|ALT_INV_memROM~5_combout\,
	combout => \RAM|ram~552_combout\);

\RAM|ram~274\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(3),
	ena => \RAM|ram~698_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~274_q\);

\RAM|ram~282\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(3),
	ena => \RAM|ram~730_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~282_q\);

\RAM|ram~402\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(3),
	ena => \RAM|ram~702_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~402_q\);

\RAM|ram~410\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(3),
	ena => \RAM|ram~734_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~410_q\);

\RAM|ram~553\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~553_combout\ = ( \ROM|memROM~11_combout\ & ( \ROM|memROM~14_combout\ & ( \RAM|ram~410_q\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( \ROM|memROM~14_combout\ & ( \RAM|ram~402_q\ ) ) ) # ( \ROM|memROM~11_combout\ & ( !\ROM|memROM~14_combout\ & ( 
-- \RAM|ram~282_q\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( !\ROM|memROM~14_combout\ & ( \RAM|ram~274_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~274_q\,
	datab => \RAM|ALT_INV_ram~282_q\,
	datac => \RAM|ALT_INV_ram~402_q\,
	datad => \RAM|ALT_INV_ram~410_q\,
	datae => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \ROM|ALT_INV_memROM~14_combout\,
	combout => \RAM|ram~553_combout\);

\RAM|ram~306\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(3),
	ena => \RAM|ram~706_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~306_q\);

\RAM|ram~314\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(3),
	ena => \RAM|ram~738_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~314_q\);

\RAM|ram~434\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(3),
	ena => \RAM|ram~710_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~434_q\);

\RAM|ram~442\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(3),
	ena => \RAM|ram~742_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~442_q\);

\RAM|ram~554\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~554_combout\ = ( \ROM|memROM~11_combout\ & ( \ROM|memROM~14_combout\ & ( \RAM|ram~442_q\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( \ROM|memROM~14_combout\ & ( \RAM|ram~434_q\ ) ) ) # ( \ROM|memROM~11_combout\ & ( !\ROM|memROM~14_combout\ & ( 
-- \RAM|ram~314_q\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( !\ROM|memROM~14_combout\ & ( \RAM|ram~306_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~306_q\,
	datab => \RAM|ALT_INV_ram~314_q\,
	datac => \RAM|ALT_INV_ram~434_q\,
	datad => \RAM|ALT_INV_ram~442_q\,
	datae => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \ROM|ALT_INV_memROM~14_combout\,
	combout => \RAM|ram~554_combout\);

\RAM|ram~338\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(3),
	ena => \RAM|ram~714_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~338_q\);

\RAM|ram~346\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(3),
	ena => \RAM|ram~746_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~346_q\);

\RAM|ram~466\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(3),
	ena => \RAM|ram~718_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~466_q\);

\RAM|ram~474\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(3),
	ena => \RAM|ram~750_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~474_q\);

\RAM|ram~555\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~555_combout\ = ( \ROM|memROM~11_combout\ & ( \ROM|memROM~14_combout\ & ( \RAM|ram~474_q\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( \ROM|memROM~14_combout\ & ( \RAM|ram~466_q\ ) ) ) # ( \ROM|memROM~11_combout\ & ( !\ROM|memROM~14_combout\ & ( 
-- \RAM|ram~346_q\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( !\ROM|memROM~14_combout\ & ( \RAM|ram~338_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~338_q\,
	datab => \RAM|ALT_INV_ram~346_q\,
	datac => \RAM|ALT_INV_ram~466_q\,
	datad => \RAM|ALT_INV_ram~474_q\,
	datae => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \ROM|ALT_INV_memROM~14_combout\,
	combout => \RAM|ram~555_combout\);

\RAM|ram~370\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(3),
	ena => \RAM|ram~722_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~370_q\);

\RAM|ram~378\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(3),
	ena => \RAM|ram~754_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~378_q\);

\RAM|ram~498\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(3),
	ena => \RAM|ram~726_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~498_q\);

\RAM|ram~506\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(3),
	ena => \RAM|ram~758_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~506_q\);

\RAM|ram~556\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~556_combout\ = ( \ROM|memROM~11_combout\ & ( \ROM|memROM~14_combout\ & ( \RAM|ram~506_q\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( \ROM|memROM~14_combout\ & ( \RAM|ram~498_q\ ) ) ) # ( \ROM|memROM~11_combout\ & ( !\ROM|memROM~14_combout\ & ( 
-- \RAM|ram~378_q\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( !\ROM|memROM~14_combout\ & ( \RAM|ram~370_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~370_q\,
	datab => \RAM|ALT_INV_ram~378_q\,
	datac => \RAM|ALT_INV_ram~498_q\,
	datad => \RAM|ALT_INV_ram~506_q\,
	datae => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \ROM|ALT_INV_memROM~14_combout\,
	combout => \RAM|ram~556_combout\);

\RAM|ram~557\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~557_combout\ = ( \ROM|memROM~5_combout\ & ( \ROM|memROM~16_combout\ & ( \RAM|ram~556_combout\ ) ) ) # ( !\ROM|memROM~5_combout\ & ( \ROM|memROM~16_combout\ & ( \RAM|ram~555_combout\ ) ) ) # ( \ROM|memROM~5_combout\ & ( !\ROM|memROM~16_combout\ & 
-- ( \RAM|ram~554_combout\ ) ) ) # ( !\ROM|memROM~5_combout\ & ( !\ROM|memROM~16_combout\ & ( \RAM|ram~553_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~553_combout\,
	datab => \RAM|ALT_INV_ram~554_combout\,
	datac => \RAM|ALT_INV_ram~555_combout\,
	datad => \RAM|ALT_INV_ram~556_combout\,
	datae => \ROM|ALT_INV_memROM~5_combout\,
	dataf => \ROM|ALT_INV_memROM~16_combout\,
	combout => \RAM|ram~557_combout\);

\RAM|ram~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(3),
	ena => \RAM|ram~760_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~34_q\);

\RAM|ram~66\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(3),
	ena => \RAM|ram~768_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~66_q\);

\RAM|ram~162\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(3),
	ena => \RAM|ram~764_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~162_q\);

\RAM|ram~194\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(3),
	ena => \RAM|ram~772_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~194_q\);

\RAM|ram~558\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~558_combout\ = ( \ROM|memROM~5_combout\ & ( \ROM|memROM~14_combout\ & ( \RAM|ram~194_q\ ) ) ) # ( !\ROM|memROM~5_combout\ & ( \ROM|memROM~14_combout\ & ( \RAM|ram~162_q\ ) ) ) # ( \ROM|memROM~5_combout\ & ( !\ROM|memROM~14_combout\ & ( 
-- \RAM|ram~66_q\ ) ) ) # ( !\ROM|memROM~5_combout\ & ( !\ROM|memROM~14_combout\ & ( \RAM|ram~34_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~34_q\,
	datab => \RAM|ALT_INV_ram~66_q\,
	datac => \RAM|ALT_INV_ram~162_q\,
	datad => \RAM|ALT_INV_ram~194_q\,
	datae => \ROM|ALT_INV_memROM~5_combout\,
	dataf => \ROM|ALT_INV_memROM~14_combout\,
	combout => \RAM|ram~558_combout\);

\RAM|ram~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(3),
	ena => \RAM|ram~792_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~42_q\);

\RAM|ram~74\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(3),
	ena => \RAM|ram~800_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~74_q\);

\RAM|ram~170\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(3),
	ena => \RAM|ram~808_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~170_q\);

\RAM|ram~202\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(3),
	ena => \RAM|ram~816_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~202_q\);

\RAM|ram~559\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~559_combout\ = ( \ROM|memROM~5_combout\ & ( \ROM|memROM~14_combout\ & ( \RAM|ram~202_q\ ) ) ) # ( !\ROM|memROM~5_combout\ & ( \ROM|memROM~14_combout\ & ( \RAM|ram~170_q\ ) ) ) # ( \ROM|memROM~5_combout\ & ( !\ROM|memROM~14_combout\ & ( 
-- \RAM|ram~74_q\ ) ) ) # ( !\ROM|memROM~5_combout\ & ( !\ROM|memROM~14_combout\ & ( \RAM|ram~42_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~42_q\,
	datab => \RAM|ALT_INV_ram~74_q\,
	datac => \RAM|ALT_INV_ram~170_q\,
	datad => \RAM|ALT_INV_ram~202_q\,
	datae => \ROM|ALT_INV_memROM~5_combout\,
	dataf => \ROM|ALT_INV_memROM~14_combout\,
	combout => \RAM|ram~559_combout\);

\RAM|ram~98\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(3),
	ena => \RAM|ram~776_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~98_q\);

\RAM|ram~130\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(3),
	ena => \RAM|ram~784_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~130_q\);

\RAM|ram~226\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(3),
	ena => \RAM|ram~780_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~226_q\);

\RAM|ram~258\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(3),
	ena => \RAM|ram~788_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~258_q\);

\RAM|ram~560\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~560_combout\ = ( \ROM|memROM~5_combout\ & ( \ROM|memROM~14_combout\ & ( \RAM|ram~258_q\ ) ) ) # ( !\ROM|memROM~5_combout\ & ( \ROM|memROM~14_combout\ & ( \RAM|ram~226_q\ ) ) ) # ( \ROM|memROM~5_combout\ & ( !\ROM|memROM~14_combout\ & ( 
-- \RAM|ram~130_q\ ) ) ) # ( !\ROM|memROM~5_combout\ & ( !\ROM|memROM~14_combout\ & ( \RAM|ram~98_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~98_q\,
	datab => \RAM|ALT_INV_ram~130_q\,
	datac => \RAM|ALT_INV_ram~226_q\,
	datad => \RAM|ALT_INV_ram~258_q\,
	datae => \ROM|ALT_INV_memROM~5_combout\,
	dataf => \ROM|ALT_INV_memROM~14_combout\,
	combout => \RAM|ram~560_combout\);

\RAM|ram~106\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(3),
	ena => \RAM|ram~796_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~106_q\);

\RAM|ram~138\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(3),
	ena => \RAM|ram~804_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~138_q\);

\RAM|ram~234\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(3),
	ena => \RAM|ram~812_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~234_q\);

\RAM|ram~266\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(3),
	ena => \RAM|ram~820_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~266_q\);

\RAM|ram~561\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~561_combout\ = ( \ROM|memROM~5_combout\ & ( \ROM|memROM~14_combout\ & ( \RAM|ram~266_q\ ) ) ) # ( !\ROM|memROM~5_combout\ & ( \ROM|memROM~14_combout\ & ( \RAM|ram~234_q\ ) ) ) # ( \ROM|memROM~5_combout\ & ( !\ROM|memROM~14_combout\ & ( 
-- \RAM|ram~138_q\ ) ) ) # ( !\ROM|memROM~5_combout\ & ( !\ROM|memROM~14_combout\ & ( \RAM|ram~106_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~106_q\,
	datab => \RAM|ALT_INV_ram~138_q\,
	datac => \RAM|ALT_INV_ram~234_q\,
	datad => \RAM|ALT_INV_ram~266_q\,
	datae => \ROM|ALT_INV_memROM~5_combout\,
	dataf => \ROM|ALT_INV_memROM~14_combout\,
	combout => \RAM|ram~561_combout\);

\RAM|ram~562\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~562_combout\ = ( \ROM|memROM~11_combout\ & ( \ROM|memROM~16_combout\ & ( \RAM|ram~561_combout\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( \ROM|memROM~16_combout\ & ( \RAM|ram~560_combout\ ) ) ) # ( \ROM|memROM~11_combout\ & ( !\ROM|memROM~16_combout\ 
-- & ( \RAM|ram~559_combout\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( !\ROM|memROM~16_combout\ & ( \RAM|ram~558_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~558_combout\,
	datab => \RAM|ALT_INV_ram~559_combout\,
	datac => \RAM|ALT_INV_ram~560_combout\,
	datad => \RAM|ALT_INV_ram~561_combout\,
	datae => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \ROM|ALT_INV_memROM~16_combout\,
	combout => \RAM|ram~562_combout\);

\RAM|ram~290\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(3),
	ena => \RAM|ram~762_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~290_q\);

\RAM|ram~418\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(3),
	ena => \RAM|ram~766_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~418_q\);

\RAM|ram~354\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(3),
	ena => \RAM|ram~778_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~354_q\);

\RAM|ram~482\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(3),
	ena => \RAM|ram~782_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~482_q\);

\RAM|ram~563\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~563_combout\ = ( \ROM|memROM~14_combout\ & ( \ROM|memROM~16_combout\ & ( \RAM|ram~482_q\ ) ) ) # ( !\ROM|memROM~14_combout\ & ( \ROM|memROM~16_combout\ & ( \RAM|ram~354_q\ ) ) ) # ( \ROM|memROM~14_combout\ & ( !\ROM|memROM~16_combout\ & ( 
-- \RAM|ram~418_q\ ) ) ) # ( !\ROM|memROM~14_combout\ & ( !\ROM|memROM~16_combout\ & ( \RAM|ram~290_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~290_q\,
	datab => \RAM|ALT_INV_ram~418_q\,
	datac => \RAM|ALT_INV_ram~354_q\,
	datad => \RAM|ALT_INV_ram~482_q\,
	datae => \ROM|ALT_INV_memROM~14_combout\,
	dataf => \ROM|ALT_INV_memROM~16_combout\,
	combout => \RAM|ram~563_combout\);

\RAM|ram~298\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(3),
	ena => \RAM|ram~794_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~298_q\);

\RAM|ram~426\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(3),
	ena => \RAM|ram~810_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~426_q\);

\RAM|ram~362\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(3),
	ena => \RAM|ram~798_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~362_q\);

\RAM|ram~490\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(3),
	ena => \RAM|ram~814_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~490_q\);

\RAM|ram~564\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~564_combout\ = ( \ROM|memROM~14_combout\ & ( \ROM|memROM~16_combout\ & ( \RAM|ram~490_q\ ) ) ) # ( !\ROM|memROM~14_combout\ & ( \ROM|memROM~16_combout\ & ( \RAM|ram~362_q\ ) ) ) # ( \ROM|memROM~14_combout\ & ( !\ROM|memROM~16_combout\ & ( 
-- \RAM|ram~426_q\ ) ) ) # ( !\ROM|memROM~14_combout\ & ( !\ROM|memROM~16_combout\ & ( \RAM|ram~298_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~298_q\,
	datab => \RAM|ALT_INV_ram~426_q\,
	datac => \RAM|ALT_INV_ram~362_q\,
	datad => \RAM|ALT_INV_ram~490_q\,
	datae => \ROM|ALT_INV_memROM~14_combout\,
	dataf => \ROM|ALT_INV_memROM~16_combout\,
	combout => \RAM|ram~564_combout\);

\RAM|ram~322\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(3),
	ena => \RAM|ram~770_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~322_q\);

\RAM|ram~450\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(3),
	ena => \RAM|ram~774_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~450_q\);

\RAM|ram~386\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(3),
	ena => \RAM|ram~786_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~386_q\);

\RAM|ram~514\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(3),
	ena => \RAM|ram~790_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~514_q\);

\RAM|ram~565\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~565_combout\ = ( \ROM|memROM~14_combout\ & ( \ROM|memROM~16_combout\ & ( \RAM|ram~514_q\ ) ) ) # ( !\ROM|memROM~14_combout\ & ( \ROM|memROM~16_combout\ & ( \RAM|ram~386_q\ ) ) ) # ( \ROM|memROM~14_combout\ & ( !\ROM|memROM~16_combout\ & ( 
-- \RAM|ram~450_q\ ) ) ) # ( !\ROM|memROM~14_combout\ & ( !\ROM|memROM~16_combout\ & ( \RAM|ram~322_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~322_q\,
	datab => \RAM|ALT_INV_ram~450_q\,
	datac => \RAM|ALT_INV_ram~386_q\,
	datad => \RAM|ALT_INV_ram~514_q\,
	datae => \ROM|ALT_INV_memROM~14_combout\,
	dataf => \ROM|ALT_INV_memROM~16_combout\,
	combout => \RAM|ram~565_combout\);

\RAM|ram~330\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(3),
	ena => \RAM|ram~802_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~330_q\);

\RAM|ram~458\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(3),
	ena => \RAM|ram~818_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~458_q\);

\RAM|ram~394\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(3),
	ena => \RAM|ram~806_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~394_q\);

\RAM|ram~522\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(3),
	ena => \RAM|ram~822_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~522_q\);

\RAM|ram~566\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~566_combout\ = ( \ROM|memROM~14_combout\ & ( \ROM|memROM~16_combout\ & ( \RAM|ram~522_q\ ) ) ) # ( !\ROM|memROM~14_combout\ & ( \ROM|memROM~16_combout\ & ( \RAM|ram~394_q\ ) ) ) # ( \ROM|memROM~14_combout\ & ( !\ROM|memROM~16_combout\ & ( 
-- \RAM|ram~458_q\ ) ) ) # ( !\ROM|memROM~14_combout\ & ( !\ROM|memROM~16_combout\ & ( \RAM|ram~330_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~330_q\,
	datab => \RAM|ALT_INV_ram~458_q\,
	datac => \RAM|ALT_INV_ram~394_q\,
	datad => \RAM|ALT_INV_ram~522_q\,
	datae => \ROM|ALT_INV_memROM~14_combout\,
	dataf => \ROM|ALT_INV_memROM~16_combout\,
	combout => \RAM|ram~566_combout\);

\RAM|ram~567\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~567_combout\ = ( \ROM|memROM~11_combout\ & ( \ROM|memROM~5_combout\ & ( \RAM|ram~566_combout\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( \ROM|memROM~5_combout\ & ( \RAM|ram~565_combout\ ) ) ) # ( \ROM|memROM~11_combout\ & ( !\ROM|memROM~5_combout\ & 
-- ( \RAM|ram~564_combout\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( !\ROM|memROM~5_combout\ & ( \RAM|ram~563_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~563_combout\,
	datab => \RAM|ALT_INV_ram~564_combout\,
	datac => \RAM|ALT_INV_ram~565_combout\,
	datad => \RAM|ALT_INV_ram~566_combout\,
	datae => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \ROM|ALT_INV_memROM~5_combout\,
	combout => \RAM|ram~567_combout\);

\RAM|ram~568\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~568_combout\ = ( \ROM|memROM~12_combout\ & ( \ROM|memROM~13_combout\ & ( \RAM|ram~567_combout\ ) ) ) # ( !\ROM|memROM~12_combout\ & ( \ROM|memROM~13_combout\ & ( \RAM|ram~562_combout\ ) ) ) # ( \ROM|memROM~12_combout\ & ( !\ROM|memROM~13_combout\ 
-- & ( \RAM|ram~557_combout\ ) ) ) # ( !\ROM|memROM~12_combout\ & ( !\ROM|memROM~13_combout\ & ( \RAM|ram~552_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~552_combout\,
	datab => \RAM|ALT_INV_ram~557_combout\,
	datac => \RAM|ALT_INV_ram~562_combout\,
	datad => \RAM|ALT_INV_ram~567_combout\,
	datae => \ROM|ALT_INV_memROM~12_combout\,
	dataf => \ROM|ALT_INV_memROM~13_combout\,
	combout => \RAM|ram~568_combout\);

\CPU|MUX1|saida_MUX[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[3]~0_combout\ = (!\ENABLE_SWR~2_combout\ & ((\RAM|ram~568_combout\))) # (\ENABLE_SWR~2_combout\ & (\SW[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ENABLE_SWR~2_combout\,
	datab => \ALT_INV_SW[3]~input_o\,
	datac => \RAM|ALT_INV_ram~568_combout\,
	combout => \CPU|MUX1|saida_MUX[3]~0_combout\);

\CPU|ULA1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~17_sumout\ = SUM(( (!\CPU|DECODER|HAB_A~0_combout\ & (((\CPU|MUX1|saida_MUX[4]~3_combout\)))) # (\CPU|DECODER|HAB_A~0_combout\ & ((!\CPU|DECODER|OP_ULA[0]~2_combout\ & (\ROM|memROM~14_combout\)) # (\CPU|DECODER|OP_ULA[0]~2_combout\ & 
-- ((\CPU|MUX1|saida_MUX[4]~3_combout\))))) ) + ( \CPU|REG_A|DOUT\(4) ) + ( \CPU|ULA1|Add0~6\ ))
-- \CPU|ULA1|Add0~18\ = CARRY(( (!\CPU|DECODER|HAB_A~0_combout\ & (((\CPU|MUX1|saida_MUX[4]~3_combout\)))) # (\CPU|DECODER|HAB_A~0_combout\ & ((!\CPU|DECODER|OP_ULA[0]~2_combout\ & (\ROM|memROM~14_combout\)) # (\CPU|DECODER|OP_ULA[0]~2_combout\ & 
-- ((\CPU|MUX1|saida_MUX[4]~3_combout\))))) ) + ( \CPU|REG_A|DOUT\(4) ) + ( \CPU|ULA1|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_HAB_A~0_combout\,
	datab => \CPU|DECODER|ALT_INV_OP_ULA[0]~2_combout\,
	datac => \ROM|ALT_INV_memROM~14_combout\,
	datad => \CPU|MUX1|ALT_INV_saida_MUX[4]~3_combout\,
	dataf => \CPU|REG_A|ALT_INV_DOUT\(4),
	cin => \CPU|ULA1|Add0~6\,
	sumout => \CPU|ULA1|Add0~17_sumout\,
	cout => \CPU|ULA1|Add0~18\);

\CPU|ULA1|saida[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[4]~4_combout\ = (!\CPU|DECODER|OP_ULA[1]~0_combout\ & (((\CPU|ULA1|Add1~17_sumout\)))) # (\CPU|DECODER|OP_ULA[1]~0_combout\ & (\CPU|DECODER|SEL_MUX~0_combout\ & (\CPU|MUX1|saida_MUX[4]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111001101000000011100110100000001110011010000000111001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_SEL_MUX~0_combout\,
	datab => \CPU|DECODER|ALT_INV_OP_ULA[1]~0_combout\,
	datac => \CPU|MUX1|ALT_INV_saida_MUX[4]~3_combout\,
	datad => \CPU|ULA1|ALT_INV_Add1~17_sumout\,
	combout => \CPU|ULA1|saida[4]~4_combout\);

\CPU|REG_A|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~17_sumout\,
	asdata => \CPU|ULA1|saida[4]~4_combout\,
	sload => \CPU|DECODER|OP_ULA[0]~1_combout\,
	ena => \CPU|DECODER|HAB_A~1_combout\,
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
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(4),
	ena => \RAM|ram~696_combout\,
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
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(4),
	ena => \RAM|ram~728_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~27_q\);

\RAM|ram~35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(4),
	ena => \RAM|ram~760_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~35_q\);

\RAM|ram~43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(4),
	ena => \RAM|ram~792_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~43_q\);

\RAM|ram~611\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~611_combout\ = ( \ROM|memROM~11_combout\ & ( \ROM|memROM~13_combout\ & ( \RAM|ram~43_q\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( \ROM|memROM~13_combout\ & ( \RAM|ram~35_q\ ) ) ) # ( \ROM|memROM~11_combout\ & ( !\ROM|memROM~13_combout\ & ( 
-- \RAM|ram~27_q\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( !\ROM|memROM~13_combout\ & ( \RAM|ram~19_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~19_q\,
	datab => \RAM|ALT_INV_ram~27_q\,
	datac => \RAM|ALT_INV_ram~35_q\,
	datad => \RAM|ALT_INV_ram~43_q\,
	datae => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \ROM|ALT_INV_memROM~13_combout\,
	combout => \RAM|ram~611_combout\);

\RAM|ram~51\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(4),
	ena => \RAM|ram~704_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~51_q\);

\RAM|ram~59\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(4),
	ena => \RAM|ram~736_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~59_q\);

\RAM|ram~67\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(4),
	ena => \RAM|ram~768_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~67_q\);

\RAM|ram~75\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(4),
	ena => \RAM|ram~800_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~75_q\);

\RAM|ram~612\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~612_combout\ = ( \ROM|memROM~11_combout\ & ( \ROM|memROM~13_combout\ & ( \RAM|ram~75_q\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( \ROM|memROM~13_combout\ & ( \RAM|ram~67_q\ ) ) ) # ( \ROM|memROM~11_combout\ & ( !\ROM|memROM~13_combout\ & ( 
-- \RAM|ram~59_q\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( !\ROM|memROM~13_combout\ & ( \RAM|ram~51_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~51_q\,
	datab => \RAM|ALT_INV_ram~59_q\,
	datac => \RAM|ALT_INV_ram~67_q\,
	datad => \RAM|ALT_INV_ram~75_q\,
	datae => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \ROM|ALT_INV_memROM~13_combout\,
	combout => \RAM|ram~612_combout\);

\RAM|ram~83\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(4),
	ena => \RAM|ram~712_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~83_q\);

\RAM|ram~91\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(4),
	ena => \RAM|ram~744_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~91_q\);

\RAM|ram~99\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(4),
	ena => \RAM|ram~776_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~99_q\);

\RAM|ram~107\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(4),
	ena => \RAM|ram~796_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~107_q\);

\RAM|ram~613\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~613_combout\ = ( \ROM|memROM~11_combout\ & ( \ROM|memROM~13_combout\ & ( \RAM|ram~107_q\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( \ROM|memROM~13_combout\ & ( \RAM|ram~99_q\ ) ) ) # ( \ROM|memROM~11_combout\ & ( !\ROM|memROM~13_combout\ & ( 
-- \RAM|ram~91_q\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( !\ROM|memROM~13_combout\ & ( \RAM|ram~83_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~83_q\,
	datab => \RAM|ALT_INV_ram~91_q\,
	datac => \RAM|ALT_INV_ram~99_q\,
	datad => \RAM|ALT_INV_ram~107_q\,
	datae => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \ROM|ALT_INV_memROM~13_combout\,
	combout => \RAM|ram~613_combout\);

\RAM|ram~115\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(4),
	ena => \RAM|ram~720_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~115_q\);

\RAM|ram~123\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(4),
	ena => \RAM|ram~752_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~123_q\);

\RAM|ram~131\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(4),
	ena => \RAM|ram~784_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~131_q\);

\RAM|ram~139\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(4),
	ena => \RAM|ram~804_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~139_q\);

\RAM|ram~614\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~614_combout\ = ( \ROM|memROM~11_combout\ & ( \ROM|memROM~13_combout\ & ( \RAM|ram~139_q\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( \ROM|memROM~13_combout\ & ( \RAM|ram~131_q\ ) ) ) # ( \ROM|memROM~11_combout\ & ( !\ROM|memROM~13_combout\ & ( 
-- \RAM|ram~123_q\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( !\ROM|memROM~13_combout\ & ( \RAM|ram~115_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~115_q\,
	datab => \RAM|ALT_INV_ram~123_q\,
	datac => \RAM|ALT_INV_ram~131_q\,
	datad => \RAM|ALT_INV_ram~139_q\,
	datae => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \ROM|ALT_INV_memROM~13_combout\,
	combout => \RAM|ram~614_combout\);

\RAM|ram~615\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~615_combout\ = ( \ROM|memROM~5_combout\ & ( \ROM|memROM~16_combout\ & ( \RAM|ram~614_combout\ ) ) ) # ( !\ROM|memROM~5_combout\ & ( \ROM|memROM~16_combout\ & ( \RAM|ram~613_combout\ ) ) ) # ( \ROM|memROM~5_combout\ & ( !\ROM|memROM~16_combout\ & 
-- ( \RAM|ram~612_combout\ ) ) ) # ( !\ROM|memROM~5_combout\ & ( !\ROM|memROM~16_combout\ & ( \RAM|ram~611_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~611_combout\,
	datab => \RAM|ALT_INV_ram~612_combout\,
	datac => \RAM|ALT_INV_ram~613_combout\,
	datad => \RAM|ALT_INV_ram~614_combout\,
	datae => \ROM|ALT_INV_memROM~5_combout\,
	dataf => \ROM|ALT_INV_memROM~16_combout\,
	combout => \RAM|ram~615_combout\);

\RAM|ram~275\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(4),
	ena => \RAM|ram~698_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~275_q\);

\RAM|ram~283\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(4),
	ena => \RAM|ram~730_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~283_q\);

\RAM|ram~307\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(4),
	ena => \RAM|ram~706_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~307_q\);

\RAM|ram~315\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(4),
	ena => \RAM|ram~738_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~315_q\);

\RAM|ram~616\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~616_combout\ = ( \ROM|memROM~11_combout\ & ( \ROM|memROM~5_combout\ & ( \RAM|ram~315_q\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( \ROM|memROM~5_combout\ & ( \RAM|ram~307_q\ ) ) ) # ( \ROM|memROM~11_combout\ & ( !\ROM|memROM~5_combout\ & ( 
-- \RAM|ram~283_q\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( !\ROM|memROM~5_combout\ & ( \RAM|ram~275_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~275_q\,
	datab => \RAM|ALT_INV_ram~283_q\,
	datac => \RAM|ALT_INV_ram~307_q\,
	datad => \RAM|ALT_INV_ram~315_q\,
	datae => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \ROM|ALT_INV_memROM~5_combout\,
	combout => \RAM|ram~616_combout\);

\RAM|ram~291\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(4),
	ena => \RAM|ram~762_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~291_q\);

\RAM|ram~299\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(4),
	ena => \RAM|ram~794_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~299_q\);

\RAM|ram~323\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(4),
	ena => \RAM|ram~770_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~323_q\);

\RAM|ram~331\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(4),
	ena => \RAM|ram~802_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~331_q\);

\RAM|ram~617\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~617_combout\ = ( \ROM|memROM~11_combout\ & ( \ROM|memROM~5_combout\ & ( \RAM|ram~331_q\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( \ROM|memROM~5_combout\ & ( \RAM|ram~323_q\ ) ) ) # ( \ROM|memROM~11_combout\ & ( !\ROM|memROM~5_combout\ & ( 
-- \RAM|ram~299_q\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( !\ROM|memROM~5_combout\ & ( \RAM|ram~291_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~291_q\,
	datab => \RAM|ALT_INV_ram~299_q\,
	datac => \RAM|ALT_INV_ram~323_q\,
	datad => \RAM|ALT_INV_ram~331_q\,
	datae => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \ROM|ALT_INV_memROM~5_combout\,
	combout => \RAM|ram~617_combout\);

\RAM|ram~339\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(4),
	ena => \RAM|ram~714_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~339_q\);

\RAM|ram~347\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(4),
	ena => \RAM|ram~746_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~347_q\);

\RAM|ram~371\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(4),
	ena => \RAM|ram~722_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~371_q\);

\RAM|ram~379\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(4),
	ena => \RAM|ram~754_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~379_q\);

\RAM|ram~618\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~618_combout\ = ( \ROM|memROM~11_combout\ & ( \ROM|memROM~5_combout\ & ( \RAM|ram~379_q\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( \ROM|memROM~5_combout\ & ( \RAM|ram~371_q\ ) ) ) # ( \ROM|memROM~11_combout\ & ( !\ROM|memROM~5_combout\ & ( 
-- \RAM|ram~347_q\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( !\ROM|memROM~5_combout\ & ( \RAM|ram~339_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~339_q\,
	datab => \RAM|ALT_INV_ram~347_q\,
	datac => \RAM|ALT_INV_ram~371_q\,
	datad => \RAM|ALT_INV_ram~379_q\,
	datae => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \ROM|ALT_INV_memROM~5_combout\,
	combout => \RAM|ram~618_combout\);

\RAM|ram~355\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(4),
	ena => \RAM|ram~778_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~355_q\);

\RAM|ram~363\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(4),
	ena => \RAM|ram~798_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~363_q\);

\RAM|ram~387\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(4),
	ena => \RAM|ram~786_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~387_q\);

\RAM|ram~395\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(4),
	ena => \RAM|ram~806_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~395_q\);

\RAM|ram~619\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~619_combout\ = ( \ROM|memROM~11_combout\ & ( \ROM|memROM~5_combout\ & ( \RAM|ram~395_q\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( \ROM|memROM~5_combout\ & ( \RAM|ram~387_q\ ) ) ) # ( \ROM|memROM~11_combout\ & ( !\ROM|memROM~5_combout\ & ( 
-- \RAM|ram~363_q\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( !\ROM|memROM~5_combout\ & ( \RAM|ram~355_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~355_q\,
	datab => \RAM|ALT_INV_ram~363_q\,
	datac => \RAM|ALT_INV_ram~387_q\,
	datad => \RAM|ALT_INV_ram~395_q\,
	datae => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \ROM|ALT_INV_memROM~5_combout\,
	combout => \RAM|ram~619_combout\);

\RAM|ram~620\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~620_combout\ = ( \ROM|memROM~13_combout\ & ( \ROM|memROM~16_combout\ & ( \RAM|ram~619_combout\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( \ROM|memROM~16_combout\ & ( \RAM|ram~618_combout\ ) ) ) # ( \ROM|memROM~13_combout\ & ( !\ROM|memROM~16_combout\ 
-- & ( \RAM|ram~617_combout\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( !\ROM|memROM~16_combout\ & ( \RAM|ram~616_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~616_combout\,
	datab => \RAM|ALT_INV_ram~617_combout\,
	datac => \RAM|ALT_INV_ram~618_combout\,
	datad => \RAM|ALT_INV_ram~619_combout\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ROM|ALT_INV_memROM~16_combout\,
	combout => \RAM|ram~620_combout\);

\RAM|ram~147\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(4),
	ena => \RAM|ram~700_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~147_q\);

\RAM|ram~155\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(4),
	ena => \RAM|ram~732_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~155_q\);

\RAM|ram~211\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(4),
	ena => \RAM|ram~716_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~211_q\);

\RAM|ram~219\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(4),
	ena => \RAM|ram~748_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~219_q\);

\RAM|ram~621\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~621_combout\ = ( \ROM|memROM~11_combout\ & ( \ROM|memROM~16_combout\ & ( \RAM|ram~219_q\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( \ROM|memROM~16_combout\ & ( \RAM|ram~211_q\ ) ) ) # ( \ROM|memROM~11_combout\ & ( !\ROM|memROM~16_combout\ & ( 
-- \RAM|ram~155_q\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( !\ROM|memROM~16_combout\ & ( \RAM|ram~147_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~147_q\,
	datab => \RAM|ALT_INV_ram~155_q\,
	datac => \RAM|ALT_INV_ram~211_q\,
	datad => \RAM|ALT_INV_ram~219_q\,
	datae => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \ROM|ALT_INV_memROM~16_combout\,
	combout => \RAM|ram~621_combout\);

\RAM|ram~163\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(4),
	ena => \RAM|ram~764_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~163_q\);

\RAM|ram~171\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(4),
	ena => \RAM|ram~808_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~171_q\);

\RAM|ram~227\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(4),
	ena => \RAM|ram~780_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~227_q\);

\RAM|ram~235\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(4),
	ena => \RAM|ram~812_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~235_q\);

\RAM|ram~622\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~622_combout\ = ( \ROM|memROM~11_combout\ & ( \ROM|memROM~16_combout\ & ( \RAM|ram~235_q\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( \ROM|memROM~16_combout\ & ( \RAM|ram~227_q\ ) ) ) # ( \ROM|memROM~11_combout\ & ( !\ROM|memROM~16_combout\ & ( 
-- \RAM|ram~171_q\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( !\ROM|memROM~16_combout\ & ( \RAM|ram~163_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~163_q\,
	datab => \RAM|ALT_INV_ram~171_q\,
	datac => \RAM|ALT_INV_ram~227_q\,
	datad => \RAM|ALT_INV_ram~235_q\,
	datae => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \ROM|ALT_INV_memROM~16_combout\,
	combout => \RAM|ram~622_combout\);

\RAM|ram~179\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(4),
	ena => \RAM|ram~708_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~179_q\);

\RAM|ram~187\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(4),
	ena => \RAM|ram~740_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~187_q\);

\RAM|ram~243\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(4),
	ena => \RAM|ram~724_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~243_q\);

\RAM|ram~251\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(4),
	ena => \RAM|ram~756_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~251_q\);

\RAM|ram~623\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~623_combout\ = ( \ROM|memROM~11_combout\ & ( \ROM|memROM~16_combout\ & ( \RAM|ram~251_q\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( \ROM|memROM~16_combout\ & ( \RAM|ram~243_q\ ) ) ) # ( \ROM|memROM~11_combout\ & ( !\ROM|memROM~16_combout\ & ( 
-- \RAM|ram~187_q\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( !\ROM|memROM~16_combout\ & ( \RAM|ram~179_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~179_q\,
	datab => \RAM|ALT_INV_ram~187_q\,
	datac => \RAM|ALT_INV_ram~243_q\,
	datad => \RAM|ALT_INV_ram~251_q\,
	datae => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \ROM|ALT_INV_memROM~16_combout\,
	combout => \RAM|ram~623_combout\);

\RAM|ram~195\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(4),
	ena => \RAM|ram~772_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~195_q\);

\RAM|ram~203\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(4),
	ena => \RAM|ram~816_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~203_q\);

\RAM|ram~259\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(4),
	ena => \RAM|ram~788_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~259_q\);

\RAM|ram~267\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(4),
	ena => \RAM|ram~820_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~267_q\);

\RAM|ram~624\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~624_combout\ = ( \ROM|memROM~11_combout\ & ( \ROM|memROM~16_combout\ & ( \RAM|ram~267_q\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( \ROM|memROM~16_combout\ & ( \RAM|ram~259_q\ ) ) ) # ( \ROM|memROM~11_combout\ & ( !\ROM|memROM~16_combout\ & ( 
-- \RAM|ram~203_q\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( !\ROM|memROM~16_combout\ & ( \RAM|ram~195_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~195_q\,
	datab => \RAM|ALT_INV_ram~203_q\,
	datac => \RAM|ALT_INV_ram~259_q\,
	datad => \RAM|ALT_INV_ram~267_q\,
	datae => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \ROM|ALT_INV_memROM~16_combout\,
	combout => \RAM|ram~624_combout\);

\RAM|ram~625\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~625_combout\ = ( \ROM|memROM~13_combout\ & ( \ROM|memROM~5_combout\ & ( \RAM|ram~624_combout\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( \ROM|memROM~5_combout\ & ( \RAM|ram~623_combout\ ) ) ) # ( \ROM|memROM~13_combout\ & ( !\ROM|memROM~5_combout\ & 
-- ( \RAM|ram~622_combout\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( !\ROM|memROM~5_combout\ & ( \RAM|ram~621_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~621_combout\,
	datab => \RAM|ALT_INV_ram~622_combout\,
	datac => \RAM|ALT_INV_ram~623_combout\,
	datad => \RAM|ALT_INV_ram~624_combout\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ROM|ALT_INV_memROM~5_combout\,
	combout => \RAM|ram~625_combout\);

\RAM|ram~403\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(4),
	ena => \RAM|ram~702_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~403_q\);

\RAM|ram~419\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(4),
	ena => \RAM|ram~766_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~419_q\);

\RAM|ram~411\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(4),
	ena => \RAM|ram~734_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~411_q\);

\RAM|ram~427\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(4),
	ena => \RAM|ram~810_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~427_q\);

\RAM|ram~626\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~626_combout\ = ( \ROM|memROM~13_combout\ & ( \ROM|memROM~11_combout\ & ( \RAM|ram~427_q\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( \ROM|memROM~11_combout\ & ( \RAM|ram~411_q\ ) ) ) # ( \ROM|memROM~13_combout\ & ( !\ROM|memROM~11_combout\ & ( 
-- \RAM|ram~419_q\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( !\ROM|memROM~11_combout\ & ( \RAM|ram~403_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~403_q\,
	datab => \RAM|ALT_INV_ram~419_q\,
	datac => \RAM|ALT_INV_ram~411_q\,
	datad => \RAM|ALT_INV_ram~427_q\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ROM|ALT_INV_memROM~11_combout\,
	combout => \RAM|ram~626_combout\);

\RAM|ram~435\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(4),
	ena => \RAM|ram~710_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~435_q\);

\RAM|ram~451\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(4),
	ena => \RAM|ram~774_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~451_q\);

\RAM|ram~443\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(4),
	ena => \RAM|ram~742_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~443_q\);

\RAM|ram~459\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(4),
	ena => \RAM|ram~818_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~459_q\);

\RAM|ram~627\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~627_combout\ = ( \ROM|memROM~13_combout\ & ( \ROM|memROM~11_combout\ & ( \RAM|ram~459_q\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( \ROM|memROM~11_combout\ & ( \RAM|ram~443_q\ ) ) ) # ( \ROM|memROM~13_combout\ & ( !\ROM|memROM~11_combout\ & ( 
-- \RAM|ram~451_q\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( !\ROM|memROM~11_combout\ & ( \RAM|ram~435_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~435_q\,
	datab => \RAM|ALT_INV_ram~451_q\,
	datac => \RAM|ALT_INV_ram~443_q\,
	datad => \RAM|ALT_INV_ram~459_q\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ROM|ALT_INV_memROM~11_combout\,
	combout => \RAM|ram~627_combout\);

\RAM|ram~467\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(4),
	ena => \RAM|ram~718_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~467_q\);

\RAM|ram~483\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(4),
	ena => \RAM|ram~782_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~483_q\);

\RAM|ram~475\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(4),
	ena => \RAM|ram~750_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~475_q\);

\RAM|ram~491\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(4),
	ena => \RAM|ram~814_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~491_q\);

\RAM|ram~628\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~628_combout\ = ( \ROM|memROM~13_combout\ & ( \ROM|memROM~11_combout\ & ( \RAM|ram~491_q\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( \ROM|memROM~11_combout\ & ( \RAM|ram~475_q\ ) ) ) # ( \ROM|memROM~13_combout\ & ( !\ROM|memROM~11_combout\ & ( 
-- \RAM|ram~483_q\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( !\ROM|memROM~11_combout\ & ( \RAM|ram~467_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~467_q\,
	datab => \RAM|ALT_INV_ram~483_q\,
	datac => \RAM|ALT_INV_ram~475_q\,
	datad => \RAM|ALT_INV_ram~491_q\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ROM|ALT_INV_memROM~11_combout\,
	combout => \RAM|ram~628_combout\);

\RAM|ram~499\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(4),
	ena => \RAM|ram~726_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~499_q\);

\RAM|ram~515\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(4),
	ena => \RAM|ram~790_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~515_q\);

\RAM|ram~507\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(4),
	ena => \RAM|ram~758_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~507_q\);

\RAM|ram~523\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(4),
	ena => \RAM|ram~822_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~523_q\);

\RAM|ram~629\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~629_combout\ = ( \ROM|memROM~13_combout\ & ( \ROM|memROM~11_combout\ & ( \RAM|ram~523_q\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( \ROM|memROM~11_combout\ & ( \RAM|ram~507_q\ ) ) ) # ( \ROM|memROM~13_combout\ & ( !\ROM|memROM~11_combout\ & ( 
-- \RAM|ram~515_q\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( !\ROM|memROM~11_combout\ & ( \RAM|ram~499_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~499_q\,
	datab => \RAM|ALT_INV_ram~515_q\,
	datac => \RAM|ALT_INV_ram~507_q\,
	datad => \RAM|ALT_INV_ram~523_q\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ROM|ALT_INV_memROM~11_combout\,
	combout => \RAM|ram~629_combout\);

\RAM|ram~630\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~630_combout\ = ( \ROM|memROM~5_combout\ & ( \ROM|memROM~16_combout\ & ( \RAM|ram~629_combout\ ) ) ) # ( !\ROM|memROM~5_combout\ & ( \ROM|memROM~16_combout\ & ( \RAM|ram~628_combout\ ) ) ) # ( \ROM|memROM~5_combout\ & ( !\ROM|memROM~16_combout\ & 
-- ( \RAM|ram~627_combout\ ) ) ) # ( !\ROM|memROM~5_combout\ & ( !\ROM|memROM~16_combout\ & ( \RAM|ram~626_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~626_combout\,
	datab => \RAM|ALT_INV_ram~627_combout\,
	datac => \RAM|ALT_INV_ram~628_combout\,
	datad => \RAM|ALT_INV_ram~629_combout\,
	datae => \ROM|ALT_INV_memROM~5_combout\,
	dataf => \ROM|ALT_INV_memROM~16_combout\,
	combout => \RAM|ram~630_combout\);

\RAM|ram~631\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~631_combout\ = ( \ROM|memROM~12_combout\ & ( \ROM|memROM~14_combout\ & ( \RAM|ram~630_combout\ ) ) ) # ( !\ROM|memROM~12_combout\ & ( \ROM|memROM~14_combout\ & ( \RAM|ram~625_combout\ ) ) ) # ( \ROM|memROM~12_combout\ & ( !\ROM|memROM~14_combout\ 
-- & ( \RAM|ram~620_combout\ ) ) ) # ( !\ROM|memROM~12_combout\ & ( !\ROM|memROM~14_combout\ & ( \RAM|ram~615_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~615_combout\,
	datab => \RAM|ALT_INV_ram~620_combout\,
	datac => \RAM|ALT_INV_ram~625_combout\,
	datad => \RAM|ALT_INV_ram~630_combout\,
	datae => \ROM|ALT_INV_memROM~12_combout\,
	dataf => \ROM|ALT_INV_memROM~14_combout\,
	combout => \RAM|ram~631_combout\);

\CPU|MUX1|saida_MUX[4]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[4]~3_combout\ = (!\ENABLE_SWR~2_combout\ & ((\RAM|ram~631_combout\))) # (\ENABLE_SWR~2_combout\ & (\SW[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ENABLE_SWR~2_combout\,
	datab => \ALT_INV_SW[4]~input_o\,
	datac => \RAM|ALT_INV_ram~631_combout\,
	combout => \CPU|MUX1|saida_MUX[4]~3_combout\);

\CPU|ULA1|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~17_sumout\ = SUM(( (!\CPU|DECODER|HAB_A~0_combout\ & (((!\CPU|MUX1|saida_MUX[4]~3_combout\)))) # (\CPU|DECODER|HAB_A~0_combout\ & ((!\CPU|DECODER|OP_ULA[0]~2_combout\ & (!\ROM|memROM~14_combout\)) # (\CPU|DECODER|OP_ULA[0]~2_combout\ & 
-- ((!\CPU|MUX1|saida_MUX[4]~3_combout\))))) ) + ( \CPU|REG_A|DOUT\(4) ) + ( \CPU|ULA1|Add1~6\ ))
-- \CPU|ULA1|Add1~18\ = CARRY(( (!\CPU|DECODER|HAB_A~0_combout\ & (((!\CPU|MUX1|saida_MUX[4]~3_combout\)))) # (\CPU|DECODER|HAB_A~0_combout\ & ((!\CPU|DECODER|OP_ULA[0]~2_combout\ & (!\ROM|memROM~14_combout\)) # (\CPU|DECODER|OP_ULA[0]~2_combout\ & 
-- ((!\CPU|MUX1|saida_MUX[4]~3_combout\))))) ) + ( \CPU|REG_A|DOUT\(4) ) + ( \CPU|ULA1|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111101101000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_HAB_A~0_combout\,
	datab => \CPU|DECODER|ALT_INV_OP_ULA[0]~2_combout\,
	datac => \ROM|ALT_INV_memROM~14_combout\,
	datad => \CPU|MUX1|ALT_INV_saida_MUX[4]~3_combout\,
	dataf => \CPU|REG_A|ALT_INV_DOUT\(4),
	cin => \CPU|ULA1|Add1~6\,
	sumout => \CPU|ULA1|Add1~17_sumout\,
	cout => \CPU|ULA1|Add1~18\);

\CPU|ULA1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~21_sumout\ = SUM(( \CPU|MUX1|saida_MUX[5]~4_combout\ ) + ( \CPU|REG_A|DOUT\(5) ) + ( \CPU|ULA1|Add0~18\ ))
-- \CPU|ULA1|Add0~22\ = CARRY(( \CPU|MUX1|saida_MUX[5]~4_combout\ ) + ( \CPU|REG_A|DOUT\(5) ) + ( \CPU|ULA1|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|MUX1|ALT_INV_saida_MUX[5]~4_combout\,
	dataf => \CPU|REG_A|ALT_INV_DOUT\(5),
	cin => \CPU|ULA1|Add0~18\,
	sumout => \CPU|ULA1|Add0~21_sumout\,
	cout => \CPU|ULA1|Add0~22\);

\CPU|ULA1|saida[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[5]~5_combout\ = (!\CPU|DECODER|OP_ULA[1]~0_combout\ & ((\CPU|ULA1|Add1~21_sumout\))) # (\CPU|DECODER|OP_ULA[1]~0_combout\ & (\CPU|MUX1|saida_MUX[5]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_OP_ULA[1]~0_combout\,
	datab => \CPU|MUX1|ALT_INV_saida_MUX[5]~4_combout\,
	datac => \CPU|ULA1|ALT_INV_Add1~21_sumout\,
	combout => \CPU|ULA1|saida[5]~5_combout\);

\CPU|REG_A|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~21_sumout\,
	asdata => \CPU|ULA1|saida[5]~5_combout\,
	sload => \CPU|DECODER|OP_ULA[0]~1_combout\,
	ena => \CPU|DECODER|HAB_A~1_combout\,
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
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(5),
	ena => \RAM|ram~696_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~20_q\);

\RAM|ram~36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(5),
	ena => \RAM|ram~760_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~36_q\);

\RAM|ram~52\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(5),
	ena => \RAM|ram~704_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~52_q\);

\RAM|ram~68\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(5),
	ena => \RAM|ram~768_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~68_q\);

\RAM|ram~632\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~632_combout\ = ( \ROM|memROM~13_combout\ & ( \ROM|memROM~5_combout\ & ( \RAM|ram~68_q\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( \ROM|memROM~5_combout\ & ( \RAM|ram~52_q\ ) ) ) # ( \ROM|memROM~13_combout\ & ( !\ROM|memROM~5_combout\ & ( 
-- \RAM|ram~36_q\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( !\ROM|memROM~5_combout\ & ( \RAM|ram~20_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~20_q\,
	datab => \RAM|ALT_INV_ram~36_q\,
	datac => \RAM|ALT_INV_ram~52_q\,
	datad => \RAM|ALT_INV_ram~68_q\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ROM|ALT_INV_memROM~5_combout\,
	combout => \RAM|ram~632_combout\);

\RAM|ram~148\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(5),
	ena => \RAM|ram~700_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~148_q\);

\RAM|ram~164\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(5),
	ena => \RAM|ram~764_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~164_q\);

\RAM|ram~180\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(5),
	ena => \RAM|ram~708_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~180_q\);

\RAM|ram~196\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(5),
	ena => \RAM|ram~772_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~196_q\);

\RAM|ram~633\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~633_combout\ = ( \ROM|memROM~13_combout\ & ( \ROM|memROM~5_combout\ & ( \RAM|ram~196_q\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( \ROM|memROM~5_combout\ & ( \RAM|ram~180_q\ ) ) ) # ( \ROM|memROM~13_combout\ & ( !\ROM|memROM~5_combout\ & ( 
-- \RAM|ram~164_q\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( !\ROM|memROM~5_combout\ & ( \RAM|ram~148_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~148_q\,
	datab => \RAM|ALT_INV_ram~164_q\,
	datac => \RAM|ALT_INV_ram~180_q\,
	datad => \RAM|ALT_INV_ram~196_q\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ROM|ALT_INV_memROM~5_combout\,
	combout => \RAM|ram~633_combout\);

\RAM|ram~84\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(5),
	ena => \RAM|ram~712_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~84_q\);

\RAM|ram~100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(5),
	ena => \RAM|ram~776_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~100_q\);

\RAM|ram~116\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(5),
	ena => \RAM|ram~720_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~116_q\);

\RAM|ram~132\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(5),
	ena => \RAM|ram~784_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~132_q\);

\RAM|ram~634\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~634_combout\ = ( \ROM|memROM~13_combout\ & ( \ROM|memROM~5_combout\ & ( \RAM|ram~132_q\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( \ROM|memROM~5_combout\ & ( \RAM|ram~116_q\ ) ) ) # ( \ROM|memROM~13_combout\ & ( !\ROM|memROM~5_combout\ & ( 
-- \RAM|ram~100_q\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( !\ROM|memROM~5_combout\ & ( \RAM|ram~84_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~84_q\,
	datab => \RAM|ALT_INV_ram~100_q\,
	datac => \RAM|ALT_INV_ram~116_q\,
	datad => \RAM|ALT_INV_ram~132_q\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ROM|ALT_INV_memROM~5_combout\,
	combout => \RAM|ram~634_combout\);

\RAM|ram~212\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(5),
	ena => \RAM|ram~716_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~212_q\);

\RAM|ram~228\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(5),
	ena => \RAM|ram~780_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~228_q\);

\RAM|ram~244\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(5),
	ena => \RAM|ram~724_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~244_q\);

\RAM|ram~260\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(5),
	ena => \RAM|ram~788_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~260_q\);

\RAM|ram~635\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~635_combout\ = ( \ROM|memROM~13_combout\ & ( \ROM|memROM~5_combout\ & ( \RAM|ram~260_q\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( \ROM|memROM~5_combout\ & ( \RAM|ram~244_q\ ) ) ) # ( \ROM|memROM~13_combout\ & ( !\ROM|memROM~5_combout\ & ( 
-- \RAM|ram~228_q\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( !\ROM|memROM~5_combout\ & ( \RAM|ram~212_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~212_q\,
	datab => \RAM|ALT_INV_ram~228_q\,
	datac => \RAM|ALT_INV_ram~244_q\,
	datad => \RAM|ALT_INV_ram~260_q\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ROM|ALT_INV_memROM~5_combout\,
	combout => \RAM|ram~635_combout\);

\RAM|ram~636\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~636_combout\ = ( \ROM|memROM~14_combout\ & ( \ROM|memROM~16_combout\ & ( \RAM|ram~635_combout\ ) ) ) # ( !\ROM|memROM~14_combout\ & ( \ROM|memROM~16_combout\ & ( \RAM|ram~634_combout\ ) ) ) # ( \ROM|memROM~14_combout\ & ( !\ROM|memROM~16_combout\ 
-- & ( \RAM|ram~633_combout\ ) ) ) # ( !\ROM|memROM~14_combout\ & ( !\ROM|memROM~16_combout\ & ( \RAM|ram~632_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~632_combout\,
	datab => \RAM|ALT_INV_ram~633_combout\,
	datac => \RAM|ALT_INV_ram~634_combout\,
	datad => \RAM|ALT_INV_ram~635_combout\,
	datae => \ROM|ALT_INV_memROM~14_combout\,
	dataf => \ROM|ALT_INV_memROM~16_combout\,
	combout => \RAM|ram~636_combout\);

\RAM|ram~276\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(5),
	ena => \RAM|ram~698_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~276_q\);

\RAM|ram~308\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(5),
	ena => \RAM|ram~706_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~308_q\);

\RAM|ram~404\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(5),
	ena => \RAM|ram~702_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~404_q\);

\RAM|ram~436\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(5),
	ena => \RAM|ram~710_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~436_q\);

\RAM|ram~637\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~637_combout\ = ( \ROM|memROM~5_combout\ & ( \ROM|memROM~14_combout\ & ( \RAM|ram~436_q\ ) ) ) # ( !\ROM|memROM~5_combout\ & ( \ROM|memROM~14_combout\ & ( \RAM|ram~404_q\ ) ) ) # ( \ROM|memROM~5_combout\ & ( !\ROM|memROM~14_combout\ & ( 
-- \RAM|ram~308_q\ ) ) ) # ( !\ROM|memROM~5_combout\ & ( !\ROM|memROM~14_combout\ & ( \RAM|ram~276_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~276_q\,
	datab => \RAM|ALT_INV_ram~308_q\,
	datac => \RAM|ALT_INV_ram~404_q\,
	datad => \RAM|ALT_INV_ram~436_q\,
	datae => \ROM|ALT_INV_memROM~5_combout\,
	dataf => \ROM|ALT_INV_memROM~14_combout\,
	combout => \RAM|ram~637_combout\);

\RAM|ram~292\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(5),
	ena => \RAM|ram~762_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~292_q\);

\RAM|ram~324\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(5),
	ena => \RAM|ram~770_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~324_q\);

\RAM|ram~420\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(5),
	ena => \RAM|ram~766_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~420_q\);

\RAM|ram~452\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(5),
	ena => \RAM|ram~774_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~452_q\);

\RAM|ram~638\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~638_combout\ = ( \ROM|memROM~5_combout\ & ( \ROM|memROM~14_combout\ & ( \RAM|ram~452_q\ ) ) ) # ( !\ROM|memROM~5_combout\ & ( \ROM|memROM~14_combout\ & ( \RAM|ram~420_q\ ) ) ) # ( \ROM|memROM~5_combout\ & ( !\ROM|memROM~14_combout\ & ( 
-- \RAM|ram~324_q\ ) ) ) # ( !\ROM|memROM~5_combout\ & ( !\ROM|memROM~14_combout\ & ( \RAM|ram~292_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~292_q\,
	datab => \RAM|ALT_INV_ram~324_q\,
	datac => \RAM|ALT_INV_ram~420_q\,
	datad => \RAM|ALT_INV_ram~452_q\,
	datae => \ROM|ALT_INV_memROM~5_combout\,
	dataf => \ROM|ALT_INV_memROM~14_combout\,
	combout => \RAM|ram~638_combout\);

\RAM|ram~340\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(5),
	ena => \RAM|ram~714_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~340_q\);

\RAM|ram~372\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(5),
	ena => \RAM|ram~722_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~372_q\);

\RAM|ram~468\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(5),
	ena => \RAM|ram~718_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~468_q\);

\RAM|ram~500\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(5),
	ena => \RAM|ram~726_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~500_q\);

\RAM|ram~639\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~639_combout\ = ( \ROM|memROM~5_combout\ & ( \ROM|memROM~14_combout\ & ( \RAM|ram~500_q\ ) ) ) # ( !\ROM|memROM~5_combout\ & ( \ROM|memROM~14_combout\ & ( \RAM|ram~468_q\ ) ) ) # ( \ROM|memROM~5_combout\ & ( !\ROM|memROM~14_combout\ & ( 
-- \RAM|ram~372_q\ ) ) ) # ( !\ROM|memROM~5_combout\ & ( !\ROM|memROM~14_combout\ & ( \RAM|ram~340_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~340_q\,
	datab => \RAM|ALT_INV_ram~372_q\,
	datac => \RAM|ALT_INV_ram~468_q\,
	datad => \RAM|ALT_INV_ram~500_q\,
	datae => \ROM|ALT_INV_memROM~5_combout\,
	dataf => \ROM|ALT_INV_memROM~14_combout\,
	combout => \RAM|ram~639_combout\);

\RAM|ram~356\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(5),
	ena => \RAM|ram~778_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~356_q\);

\RAM|ram~388\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(5),
	ena => \RAM|ram~786_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~388_q\);

\RAM|ram~484\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(5),
	ena => \RAM|ram~782_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~484_q\);

\RAM|ram~516\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(5),
	ena => \RAM|ram~790_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~516_q\);

\RAM|ram~640\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~640_combout\ = ( \ROM|memROM~5_combout\ & ( \ROM|memROM~14_combout\ & ( \RAM|ram~516_q\ ) ) ) # ( !\ROM|memROM~5_combout\ & ( \ROM|memROM~14_combout\ & ( \RAM|ram~484_q\ ) ) ) # ( \ROM|memROM~5_combout\ & ( !\ROM|memROM~14_combout\ & ( 
-- \RAM|ram~388_q\ ) ) ) # ( !\ROM|memROM~5_combout\ & ( !\ROM|memROM~14_combout\ & ( \RAM|ram~356_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~356_q\,
	datab => \RAM|ALT_INV_ram~388_q\,
	datac => \RAM|ALT_INV_ram~484_q\,
	datad => \RAM|ALT_INV_ram~516_q\,
	datae => \ROM|ALT_INV_memROM~5_combout\,
	dataf => \ROM|ALT_INV_memROM~14_combout\,
	combout => \RAM|ram~640_combout\);

\RAM|ram~641\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~641_combout\ = ( \ROM|memROM~13_combout\ & ( \ROM|memROM~16_combout\ & ( \RAM|ram~640_combout\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( \ROM|memROM~16_combout\ & ( \RAM|ram~639_combout\ ) ) ) # ( \ROM|memROM~13_combout\ & ( !\ROM|memROM~16_combout\ 
-- & ( \RAM|ram~638_combout\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( !\ROM|memROM~16_combout\ & ( \RAM|ram~637_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~637_combout\,
	datab => \RAM|ALT_INV_ram~638_combout\,
	datac => \RAM|ALT_INV_ram~639_combout\,
	datad => \RAM|ALT_INV_ram~640_combout\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ROM|ALT_INV_memROM~16_combout\,
	combout => \RAM|ram~641_combout\);

\RAM|ram~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(5),
	ena => \RAM|ram~728_combout\,
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
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(5),
	ena => \RAM|ram~792_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~44_q\);

\RAM|ram~60\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(5),
	ena => \RAM|ram~736_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~60_q\);

\RAM|ram~76\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(5),
	ena => \RAM|ram~800_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~76_q\);

\RAM|ram~642\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~642_combout\ = ( \ROM|memROM~13_combout\ & ( \ROM|memROM~5_combout\ & ( \RAM|ram~76_q\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( \ROM|memROM~5_combout\ & ( \RAM|ram~60_q\ ) ) ) # ( \ROM|memROM~13_combout\ & ( !\ROM|memROM~5_combout\ & ( 
-- \RAM|ram~44_q\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( !\ROM|memROM~5_combout\ & ( \RAM|ram~28_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~28_q\,
	datab => \RAM|ALT_INV_ram~44_q\,
	datac => \RAM|ALT_INV_ram~60_q\,
	datad => \RAM|ALT_INV_ram~76_q\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ROM|ALT_INV_memROM~5_combout\,
	combout => \RAM|ram~642_combout\);

\RAM|ram~156\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(5),
	ena => \RAM|ram~732_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~156_q\);

\RAM|ram~172\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(5),
	ena => \RAM|ram~808_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~172_q\);

\RAM|ram~188\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(5),
	ena => \RAM|ram~740_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~188_q\);

\RAM|ram~204\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(5),
	ena => \RAM|ram~816_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~204_q\);

\RAM|ram~643\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~643_combout\ = ( \ROM|memROM~13_combout\ & ( \ROM|memROM~5_combout\ & ( \RAM|ram~204_q\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( \ROM|memROM~5_combout\ & ( \RAM|ram~188_q\ ) ) ) # ( \ROM|memROM~13_combout\ & ( !\ROM|memROM~5_combout\ & ( 
-- \RAM|ram~172_q\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( !\ROM|memROM~5_combout\ & ( \RAM|ram~156_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~156_q\,
	datab => \RAM|ALT_INV_ram~172_q\,
	datac => \RAM|ALT_INV_ram~188_q\,
	datad => \RAM|ALT_INV_ram~204_q\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ROM|ALT_INV_memROM~5_combout\,
	combout => \RAM|ram~643_combout\);

\RAM|ram~92\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(5),
	ena => \RAM|ram~744_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~92_q\);

\RAM|ram~108\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(5),
	ena => \RAM|ram~796_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~108_q\);

\RAM|ram~124\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(5),
	ena => \RAM|ram~752_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~124_q\);

\RAM|ram~140\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(5),
	ena => \RAM|ram~804_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~140_q\);

\RAM|ram~644\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~644_combout\ = ( \ROM|memROM~13_combout\ & ( \ROM|memROM~5_combout\ & ( \RAM|ram~140_q\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( \ROM|memROM~5_combout\ & ( \RAM|ram~124_q\ ) ) ) # ( \ROM|memROM~13_combout\ & ( !\ROM|memROM~5_combout\ & ( 
-- \RAM|ram~108_q\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( !\ROM|memROM~5_combout\ & ( \RAM|ram~92_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~92_q\,
	datab => \RAM|ALT_INV_ram~108_q\,
	datac => \RAM|ALT_INV_ram~124_q\,
	datad => \RAM|ALT_INV_ram~140_q\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ROM|ALT_INV_memROM~5_combout\,
	combout => \RAM|ram~644_combout\);

\RAM|ram~220\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(5),
	ena => \RAM|ram~748_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~220_q\);

\RAM|ram~236\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(5),
	ena => \RAM|ram~812_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~236_q\);

\RAM|ram~252\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(5),
	ena => \RAM|ram~756_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~252_q\);

\RAM|ram~268\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(5),
	ena => \RAM|ram~820_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~268_q\);

\RAM|ram~645\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~645_combout\ = ( \ROM|memROM~13_combout\ & ( \ROM|memROM~5_combout\ & ( \RAM|ram~268_q\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( \ROM|memROM~5_combout\ & ( \RAM|ram~252_q\ ) ) ) # ( \ROM|memROM~13_combout\ & ( !\ROM|memROM~5_combout\ & ( 
-- \RAM|ram~236_q\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( !\ROM|memROM~5_combout\ & ( \RAM|ram~220_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~220_q\,
	datab => \RAM|ALT_INV_ram~236_q\,
	datac => \RAM|ALT_INV_ram~252_q\,
	datad => \RAM|ALT_INV_ram~268_q\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ROM|ALT_INV_memROM~5_combout\,
	combout => \RAM|ram~645_combout\);

\RAM|ram~646\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~646_combout\ = ( \ROM|memROM~14_combout\ & ( \ROM|memROM~16_combout\ & ( \RAM|ram~645_combout\ ) ) ) # ( !\ROM|memROM~14_combout\ & ( \ROM|memROM~16_combout\ & ( \RAM|ram~644_combout\ ) ) ) # ( \ROM|memROM~14_combout\ & ( !\ROM|memROM~16_combout\ 
-- & ( \RAM|ram~643_combout\ ) ) ) # ( !\ROM|memROM~14_combout\ & ( !\ROM|memROM~16_combout\ & ( \RAM|ram~642_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~642_combout\,
	datab => \RAM|ALT_INV_ram~643_combout\,
	datac => \RAM|ALT_INV_ram~644_combout\,
	datad => \RAM|ALT_INV_ram~645_combout\,
	datae => \ROM|ALT_INV_memROM~14_combout\,
	dataf => \ROM|ALT_INV_memROM~16_combout\,
	combout => \RAM|ram~646_combout\);

\RAM|ram~284\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(5),
	ena => \RAM|ram~730_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~284_q\);

\RAM|ram~316\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(5),
	ena => \RAM|ram~738_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~316_q\);

\RAM|ram~348\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(5),
	ena => \RAM|ram~746_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~348_q\);

\RAM|ram~380\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(5),
	ena => \RAM|ram~754_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~380_q\);

\RAM|ram~647\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~647_combout\ = ( \ROM|memROM~5_combout\ & ( \ROM|memROM~16_combout\ & ( \RAM|ram~380_q\ ) ) ) # ( !\ROM|memROM~5_combout\ & ( \ROM|memROM~16_combout\ & ( \RAM|ram~348_q\ ) ) ) # ( \ROM|memROM~5_combout\ & ( !\ROM|memROM~16_combout\ & ( 
-- \RAM|ram~316_q\ ) ) ) # ( !\ROM|memROM~5_combout\ & ( !\ROM|memROM~16_combout\ & ( \RAM|ram~284_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~284_q\,
	datab => \RAM|ALT_INV_ram~316_q\,
	datac => \RAM|ALT_INV_ram~348_q\,
	datad => \RAM|ALT_INV_ram~380_q\,
	datae => \ROM|ALT_INV_memROM~5_combout\,
	dataf => \ROM|ALT_INV_memROM~16_combout\,
	combout => \RAM|ram~647_combout\);

\RAM|ram~300\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(5),
	ena => \RAM|ram~794_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~300_q\);

\RAM|ram~332\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(5),
	ena => \RAM|ram~802_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~332_q\);

\RAM|ram~364\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(5),
	ena => \RAM|ram~798_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~364_q\);

\RAM|ram~396\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(5),
	ena => \RAM|ram~806_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~396_q\);

\RAM|ram~648\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~648_combout\ = ( \ROM|memROM~5_combout\ & ( \ROM|memROM~16_combout\ & ( \RAM|ram~396_q\ ) ) ) # ( !\ROM|memROM~5_combout\ & ( \ROM|memROM~16_combout\ & ( \RAM|ram~364_q\ ) ) ) # ( \ROM|memROM~5_combout\ & ( !\ROM|memROM~16_combout\ & ( 
-- \RAM|ram~332_q\ ) ) ) # ( !\ROM|memROM~5_combout\ & ( !\ROM|memROM~16_combout\ & ( \RAM|ram~300_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~300_q\,
	datab => \RAM|ALT_INV_ram~332_q\,
	datac => \RAM|ALT_INV_ram~364_q\,
	datad => \RAM|ALT_INV_ram~396_q\,
	datae => \ROM|ALT_INV_memROM~5_combout\,
	dataf => \ROM|ALT_INV_memROM~16_combout\,
	combout => \RAM|ram~648_combout\);

\RAM|ram~412\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(5),
	ena => \RAM|ram~734_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~412_q\);

\RAM|ram~444\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(5),
	ena => \RAM|ram~742_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~444_q\);

\RAM|ram~476\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(5),
	ena => \RAM|ram~750_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~476_q\);

\RAM|ram~508\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(5),
	ena => \RAM|ram~758_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~508_q\);

\RAM|ram~649\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~649_combout\ = ( \ROM|memROM~5_combout\ & ( \ROM|memROM~16_combout\ & ( \RAM|ram~508_q\ ) ) ) # ( !\ROM|memROM~5_combout\ & ( \ROM|memROM~16_combout\ & ( \RAM|ram~476_q\ ) ) ) # ( \ROM|memROM~5_combout\ & ( !\ROM|memROM~16_combout\ & ( 
-- \RAM|ram~444_q\ ) ) ) # ( !\ROM|memROM~5_combout\ & ( !\ROM|memROM~16_combout\ & ( \RAM|ram~412_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~412_q\,
	datab => \RAM|ALT_INV_ram~444_q\,
	datac => \RAM|ALT_INV_ram~476_q\,
	datad => \RAM|ALT_INV_ram~508_q\,
	datae => \ROM|ALT_INV_memROM~5_combout\,
	dataf => \ROM|ALT_INV_memROM~16_combout\,
	combout => \RAM|ram~649_combout\);

\RAM|ram~428\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(5),
	ena => \RAM|ram~810_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~428_q\);

\RAM|ram~460\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(5),
	ena => \RAM|ram~818_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~460_q\);

\RAM|ram~492\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(5),
	ena => \RAM|ram~814_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~492_q\);

\RAM|ram~524\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(5),
	ena => \RAM|ram~822_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~524_q\);

\RAM|ram~650\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~650_combout\ = ( \ROM|memROM~5_combout\ & ( \ROM|memROM~16_combout\ & ( \RAM|ram~524_q\ ) ) ) # ( !\ROM|memROM~5_combout\ & ( \ROM|memROM~16_combout\ & ( \RAM|ram~492_q\ ) ) ) # ( \ROM|memROM~5_combout\ & ( !\ROM|memROM~16_combout\ & ( 
-- \RAM|ram~460_q\ ) ) ) # ( !\ROM|memROM~5_combout\ & ( !\ROM|memROM~16_combout\ & ( \RAM|ram~428_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~428_q\,
	datab => \RAM|ALT_INV_ram~460_q\,
	datac => \RAM|ALT_INV_ram~492_q\,
	datad => \RAM|ALT_INV_ram~524_q\,
	datae => \ROM|ALT_INV_memROM~5_combout\,
	dataf => \ROM|ALT_INV_memROM~16_combout\,
	combout => \RAM|ram~650_combout\);

\RAM|ram~651\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~651_combout\ = ( \ROM|memROM~13_combout\ & ( \ROM|memROM~14_combout\ & ( \RAM|ram~650_combout\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( \ROM|memROM~14_combout\ & ( \RAM|ram~649_combout\ ) ) ) # ( \ROM|memROM~13_combout\ & ( !\ROM|memROM~14_combout\ 
-- & ( \RAM|ram~648_combout\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( !\ROM|memROM~14_combout\ & ( \RAM|ram~647_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~647_combout\,
	datab => \RAM|ALT_INV_ram~648_combout\,
	datac => \RAM|ALT_INV_ram~649_combout\,
	datad => \RAM|ALT_INV_ram~650_combout\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ROM|ALT_INV_memROM~14_combout\,
	combout => \RAM|ram~651_combout\);

\RAM|ram~652\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~652_combout\ = ( \ROM|memROM~12_combout\ & ( \ROM|memROM~11_combout\ & ( \RAM|ram~651_combout\ ) ) ) # ( !\ROM|memROM~12_combout\ & ( \ROM|memROM~11_combout\ & ( \RAM|ram~646_combout\ ) ) ) # ( \ROM|memROM~12_combout\ & ( !\ROM|memROM~11_combout\ 
-- & ( \RAM|ram~641_combout\ ) ) ) # ( !\ROM|memROM~12_combout\ & ( !\ROM|memROM~11_combout\ & ( \RAM|ram~636_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~636_combout\,
	datab => \RAM|ALT_INV_ram~641_combout\,
	datac => \RAM|ALT_INV_ram~646_combout\,
	datad => \RAM|ALT_INV_ram~651_combout\,
	datae => \ROM|ALT_INV_memROM~12_combout\,
	dataf => \ROM|ALT_INV_memROM~11_combout\,
	combout => \RAM|ram~652_combout\);

\SW[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

\CPU|MUX1|saida_MUX[5]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[5]~4_combout\ = (\CPU|DECODER|SEL_MUX~0_combout\ & ((!\ENABLE_SWR~2_combout\ & (\RAM|ram~652_combout\)) # (\ENABLE_SWR~2_combout\ & ((\SW[5]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000010011000000100001001100000010000100110000001000010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ENABLE_SWR~2_combout\,
	datab => \CPU|DECODER|ALT_INV_SEL_MUX~0_combout\,
	datac => \RAM|ALT_INV_ram~652_combout\,
	datad => \ALT_INV_SW[5]~input_o\,
	combout => \CPU|MUX1|saida_MUX[5]~4_combout\);

\CPU|ULA1|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~21_sumout\ = SUM(( !\CPU|MUX1|saida_MUX[5]~4_combout\ ) + ( \CPU|REG_A|DOUT\(5) ) + ( \CPU|ULA1|Add1~18\ ))
-- \CPU|ULA1|Add1~22\ = CARRY(( !\CPU|MUX1|saida_MUX[5]~4_combout\ ) + ( \CPU|REG_A|DOUT\(5) ) + ( \CPU|ULA1|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|MUX1|ALT_INV_saida_MUX[5]~4_combout\,
	dataf => \CPU|REG_A|ALT_INV_DOUT\(5),
	cin => \CPU|ULA1|Add1~18\,
	sumout => \CPU|ULA1|Add1~21_sumout\,
	cout => \CPU|ULA1|Add1~22\);

\ROM|memROM~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~25_combout\ = (!\CPU|INSTR|PC|DOUT\(3) & (\ROM|memROM~6_combout\ & \ROM|memROM~7_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|PC|ALT_INV_DOUT\(3),
	datab => \ROM|ALT_INV_memROM~6_combout\,
	datac => \ROM|ALT_INV_memROM~7_combout\,
	combout => \ROM|memROM~25_combout\);

\SW[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

\CPU|ULA1|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~25_sumout\ = SUM(( (!\CPU|DECODER|HAB_A~0_combout\ & (((\CPU|MUX1|saida_MUX[6]~5_combout\)))) # (\CPU|DECODER|HAB_A~0_combout\ & ((!\CPU|DECODER|OP_ULA[0]~2_combout\ & (\ROM|memROM~17_combout\)) # (\CPU|DECODER|OP_ULA[0]~2_combout\ & 
-- ((\CPU|MUX1|saida_MUX[6]~5_combout\))))) ) + ( \CPU|REG_A|DOUT\(6) ) + ( \CPU|ULA1|Add0~22\ ))
-- \CPU|ULA1|Add0~26\ = CARRY(( (!\CPU|DECODER|HAB_A~0_combout\ & (((\CPU|MUX1|saida_MUX[6]~5_combout\)))) # (\CPU|DECODER|HAB_A~0_combout\ & ((!\CPU|DECODER|OP_ULA[0]~2_combout\ & (\ROM|memROM~17_combout\)) # (\CPU|DECODER|OP_ULA[0]~2_combout\ & 
-- ((\CPU|MUX1|saida_MUX[6]~5_combout\))))) ) + ( \CPU|REG_A|DOUT\(6) ) + ( \CPU|ULA1|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_HAB_A~0_combout\,
	datab => \CPU|DECODER|ALT_INV_OP_ULA[0]~2_combout\,
	datac => \ROM|ALT_INV_memROM~17_combout\,
	datad => \CPU|MUX1|ALT_INV_saida_MUX[6]~5_combout\,
	dataf => \CPU|REG_A|ALT_INV_DOUT\(6),
	cin => \CPU|ULA1|Add0~22\,
	sumout => \CPU|ULA1|Add0~25_sumout\,
	cout => \CPU|ULA1|Add0~26\);

\CPU|ULA1|saida[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[6]~6_combout\ = ( \CPU|ULA1|Add1~25_sumout\ & ( (!\CPU|DECODER|OP_ULA[1]~0_combout\) # ((!\CPU|DECODER|SEL_MUX~0_combout\ & (\ROM|memROM~17_combout\)) # (\CPU|DECODER|SEL_MUX~0_combout\ & ((\CPU|MUX1|saida_MUX[6]~5_combout\)))) ) ) # ( 
-- !\CPU|ULA1|Add1~25_sumout\ & ( (\CPU|DECODER|OP_ULA[1]~0_combout\ & ((!\CPU|DECODER|SEL_MUX~0_combout\ & (\ROM|memROM~17_combout\)) # (\CPU|DECODER|SEL_MUX~0_combout\ & ((\CPU|MUX1|saida_MUX[6]~5_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000111111101001111011100000100000001111111010011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~17_combout\,
	datab => \CPU|DECODER|ALT_INV_SEL_MUX~0_combout\,
	datac => \CPU|DECODER|ALT_INV_OP_ULA[1]~0_combout\,
	datad => \CPU|MUX1|ALT_INV_saida_MUX[6]~5_combout\,
	datae => \CPU|ULA1|ALT_INV_Add1~25_sumout\,
	combout => \CPU|ULA1|saida[6]~6_combout\);

\CPU|REG_A|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~25_sumout\,
	asdata => \CPU|ULA1|saida[6]~6_combout\,
	sload => \CPU|DECODER|OP_ULA[0]~1_combout\,
	ena => \CPU|DECODER|HAB_A~1_combout\,
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
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(6),
	ena => \RAM|ram~696_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~21_q\);

\RAM|ram~37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(6),
	ena => \RAM|ram~760_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~37_q\);

\RAM|ram~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(6),
	ena => \RAM|ram~728_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~29_q\);

\RAM|ram~45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(6),
	ena => \RAM|ram~792_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~45_q\);

\RAM|ram~653\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~653_combout\ = ( \ROM|memROM~13_combout\ & ( \ROM|memROM~11_combout\ & ( \RAM|ram~45_q\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( \ROM|memROM~11_combout\ & ( \RAM|ram~29_q\ ) ) ) # ( \ROM|memROM~13_combout\ & ( !\ROM|memROM~11_combout\ & ( 
-- \RAM|ram~37_q\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( !\ROM|memROM~11_combout\ & ( \RAM|ram~21_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~21_q\,
	datab => \RAM|ALT_INV_ram~37_q\,
	datac => \RAM|ALT_INV_ram~29_q\,
	datad => \RAM|ALT_INV_ram~45_q\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ROM|ALT_INV_memROM~11_combout\,
	combout => \RAM|ram~653_combout\);

\RAM|ram~149\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(6),
	ena => \RAM|ram~700_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~149_q\);

\RAM|ram~165\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(6),
	ena => \RAM|ram~764_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~165_q\);

\RAM|ram~157\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(6),
	ena => \RAM|ram~732_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~157_q\);

\RAM|ram~173\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(6),
	ena => \RAM|ram~808_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~173_q\);

\RAM|ram~654\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~654_combout\ = ( \ROM|memROM~13_combout\ & ( \ROM|memROM~11_combout\ & ( \RAM|ram~173_q\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( \ROM|memROM~11_combout\ & ( \RAM|ram~157_q\ ) ) ) # ( \ROM|memROM~13_combout\ & ( !\ROM|memROM~11_combout\ & ( 
-- \RAM|ram~165_q\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( !\ROM|memROM~11_combout\ & ( \RAM|ram~149_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~149_q\,
	datab => \RAM|ALT_INV_ram~165_q\,
	datac => \RAM|ALT_INV_ram~157_q\,
	datad => \RAM|ALT_INV_ram~173_q\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ROM|ALT_INV_memROM~11_combout\,
	combout => \RAM|ram~654_combout\);

\RAM|ram~85\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(6),
	ena => \RAM|ram~712_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~85_q\);

\RAM|ram~101\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(6),
	ena => \RAM|ram~776_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~101_q\);

\RAM|ram~93\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(6),
	ena => \RAM|ram~744_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~93_q\);

\RAM|ram~109\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(6),
	ena => \RAM|ram~796_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~109_q\);

\RAM|ram~655\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~655_combout\ = ( \ROM|memROM~13_combout\ & ( \ROM|memROM~11_combout\ & ( \RAM|ram~109_q\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( \ROM|memROM~11_combout\ & ( \RAM|ram~93_q\ ) ) ) # ( \ROM|memROM~13_combout\ & ( !\ROM|memROM~11_combout\ & ( 
-- \RAM|ram~101_q\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( !\ROM|memROM~11_combout\ & ( \RAM|ram~85_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~85_q\,
	datab => \RAM|ALT_INV_ram~101_q\,
	datac => \RAM|ALT_INV_ram~93_q\,
	datad => \RAM|ALT_INV_ram~109_q\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ROM|ALT_INV_memROM~11_combout\,
	combout => \RAM|ram~655_combout\);

\RAM|ram~213\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(6),
	ena => \RAM|ram~716_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~213_q\);

\RAM|ram~229\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(6),
	ena => \RAM|ram~780_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~229_q\);

\RAM|ram~221\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(6),
	ena => \RAM|ram~748_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~221_q\);

\RAM|ram~237\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(6),
	ena => \RAM|ram~812_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~237_q\);

\RAM|ram~656\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~656_combout\ = ( \ROM|memROM~13_combout\ & ( \ROM|memROM~11_combout\ & ( \RAM|ram~237_q\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( \ROM|memROM~11_combout\ & ( \RAM|ram~221_q\ ) ) ) # ( \ROM|memROM~13_combout\ & ( !\ROM|memROM~11_combout\ & ( 
-- \RAM|ram~229_q\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( !\ROM|memROM~11_combout\ & ( \RAM|ram~213_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~213_q\,
	datab => \RAM|ALT_INV_ram~229_q\,
	datac => \RAM|ALT_INV_ram~221_q\,
	datad => \RAM|ALT_INV_ram~237_q\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ROM|ALT_INV_memROM~11_combout\,
	combout => \RAM|ram~656_combout\);

\RAM|ram~657\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~657_combout\ = ( \ROM|memROM~14_combout\ & ( \ROM|memROM~16_combout\ & ( \RAM|ram~656_combout\ ) ) ) # ( !\ROM|memROM~14_combout\ & ( \ROM|memROM~16_combout\ & ( \RAM|ram~655_combout\ ) ) ) # ( \ROM|memROM~14_combout\ & ( !\ROM|memROM~16_combout\ 
-- & ( \RAM|ram~654_combout\ ) ) ) # ( !\ROM|memROM~14_combout\ & ( !\ROM|memROM~16_combout\ & ( \RAM|ram~653_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~653_combout\,
	datab => \RAM|ALT_INV_ram~654_combout\,
	datac => \RAM|ALT_INV_ram~655_combout\,
	datad => \RAM|ALT_INV_ram~656_combout\,
	datae => \ROM|ALT_INV_memROM~14_combout\,
	dataf => \ROM|ALT_INV_memROM~16_combout\,
	combout => \RAM|ram~657_combout\);

\RAM|ram~277\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(6),
	ena => \RAM|ram~698_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~277_q\);

\RAM|ram~293\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(6),
	ena => \RAM|ram~762_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~293_q\);

\RAM|ram~341\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(6),
	ena => \RAM|ram~714_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~341_q\);

\RAM|ram~357\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(6),
	ena => \RAM|ram~778_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~357_q\);

\RAM|ram~658\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~658_combout\ = ( \ROM|memROM~13_combout\ & ( \ROM|memROM~16_combout\ & ( \RAM|ram~357_q\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( \ROM|memROM~16_combout\ & ( \RAM|ram~341_q\ ) ) ) # ( \ROM|memROM~13_combout\ & ( !\ROM|memROM~16_combout\ & ( 
-- \RAM|ram~293_q\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( !\ROM|memROM~16_combout\ & ( \RAM|ram~277_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~277_q\,
	datab => \RAM|ALT_INV_ram~293_q\,
	datac => \RAM|ALT_INV_ram~341_q\,
	datad => \RAM|ALT_INV_ram~357_q\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ROM|ALT_INV_memROM~16_combout\,
	combout => \RAM|ram~658_combout\);

\RAM|ram~285\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(6),
	ena => \RAM|ram~730_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~285_q\);

\RAM|ram~301\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(6),
	ena => \RAM|ram~794_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~301_q\);

\RAM|ram~349\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(6),
	ena => \RAM|ram~746_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~349_q\);

\RAM|ram~365\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(6),
	ena => \RAM|ram~798_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~365_q\);

\RAM|ram~659\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~659_combout\ = ( \ROM|memROM~13_combout\ & ( \ROM|memROM~16_combout\ & ( \RAM|ram~365_q\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( \ROM|memROM~16_combout\ & ( \RAM|ram~349_q\ ) ) ) # ( \ROM|memROM~13_combout\ & ( !\ROM|memROM~16_combout\ & ( 
-- \RAM|ram~301_q\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( !\ROM|memROM~16_combout\ & ( \RAM|ram~285_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~285_q\,
	datab => \RAM|ALT_INV_ram~301_q\,
	datac => \RAM|ALT_INV_ram~349_q\,
	datad => \RAM|ALT_INV_ram~365_q\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ROM|ALT_INV_memROM~16_combout\,
	combout => \RAM|ram~659_combout\);

\RAM|ram~405\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(6),
	ena => \RAM|ram~702_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~405_q\);

\RAM|ram~421\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(6),
	ena => \RAM|ram~766_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~421_q\);

\RAM|ram~469\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(6),
	ena => \RAM|ram~718_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~469_q\);

\RAM|ram~485\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(6),
	ena => \RAM|ram~782_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~485_q\);

\RAM|ram~660\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~660_combout\ = ( \ROM|memROM~13_combout\ & ( \ROM|memROM~16_combout\ & ( \RAM|ram~485_q\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( \ROM|memROM~16_combout\ & ( \RAM|ram~469_q\ ) ) ) # ( \ROM|memROM~13_combout\ & ( !\ROM|memROM~16_combout\ & ( 
-- \RAM|ram~421_q\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( !\ROM|memROM~16_combout\ & ( \RAM|ram~405_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~405_q\,
	datab => \RAM|ALT_INV_ram~421_q\,
	datac => \RAM|ALT_INV_ram~469_q\,
	datad => \RAM|ALT_INV_ram~485_q\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ROM|ALT_INV_memROM~16_combout\,
	combout => \RAM|ram~660_combout\);

\RAM|ram~413\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(6),
	ena => \RAM|ram~734_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~413_q\);

\RAM|ram~429\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(6),
	ena => \RAM|ram~810_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~429_q\);

\RAM|ram~477\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(6),
	ena => \RAM|ram~750_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~477_q\);

\RAM|ram~493\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(6),
	ena => \RAM|ram~814_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~493_q\);

\RAM|ram~661\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~661_combout\ = ( \ROM|memROM~13_combout\ & ( \ROM|memROM~16_combout\ & ( \RAM|ram~493_q\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( \ROM|memROM~16_combout\ & ( \RAM|ram~477_q\ ) ) ) # ( \ROM|memROM~13_combout\ & ( !\ROM|memROM~16_combout\ & ( 
-- \RAM|ram~429_q\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( !\ROM|memROM~16_combout\ & ( \RAM|ram~413_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~413_q\,
	datab => \RAM|ALT_INV_ram~429_q\,
	datac => \RAM|ALT_INV_ram~477_q\,
	datad => \RAM|ALT_INV_ram~493_q\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ROM|ALT_INV_memROM~16_combout\,
	combout => \RAM|ram~661_combout\);

\RAM|ram~662\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~662_combout\ = ( \ROM|memROM~11_combout\ & ( \ROM|memROM~14_combout\ & ( \RAM|ram~661_combout\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( \ROM|memROM~14_combout\ & ( \RAM|ram~660_combout\ ) ) ) # ( \ROM|memROM~11_combout\ & ( !\ROM|memROM~14_combout\ 
-- & ( \RAM|ram~659_combout\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( !\ROM|memROM~14_combout\ & ( \RAM|ram~658_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~658_combout\,
	datab => \RAM|ALT_INV_ram~659_combout\,
	datac => \RAM|ALT_INV_ram~660_combout\,
	datad => \RAM|ALT_INV_ram~661_combout\,
	datae => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \ROM|ALT_INV_memROM~14_combout\,
	combout => \RAM|ram~662_combout\);

\RAM|ram~53\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(6),
	ena => \RAM|ram~704_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~53_q\);

\RAM|ram~69\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(6),
	ena => \RAM|ram~768_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~69_q\);

\RAM|ram~181\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(6),
	ena => \RAM|ram~708_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~181_q\);

\RAM|ram~197\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(6),
	ena => \RAM|ram~772_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~197_q\);

\RAM|ram~663\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~663_combout\ = ( \ROM|memROM~13_combout\ & ( \ROM|memROM~14_combout\ & ( \RAM|ram~197_q\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( \ROM|memROM~14_combout\ & ( \RAM|ram~181_q\ ) ) ) # ( \ROM|memROM~13_combout\ & ( !\ROM|memROM~14_combout\ & ( 
-- \RAM|ram~69_q\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( !\ROM|memROM~14_combout\ & ( \RAM|ram~53_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~53_q\,
	datab => \RAM|ALT_INV_ram~69_q\,
	datac => \RAM|ALT_INV_ram~181_q\,
	datad => \RAM|ALT_INV_ram~197_q\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ROM|ALT_INV_memROM~14_combout\,
	combout => \RAM|ram~663_combout\);

\RAM|ram~61\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(6),
	ena => \RAM|ram~736_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~61_q\);

\RAM|ram~77\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(6),
	ena => \RAM|ram~800_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~77_q\);

\RAM|ram~189\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(6),
	ena => \RAM|ram~740_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~189_q\);

\RAM|ram~205\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(6),
	ena => \RAM|ram~816_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~205_q\);

\RAM|ram~664\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~664_combout\ = ( \ROM|memROM~13_combout\ & ( \ROM|memROM~14_combout\ & ( \RAM|ram~205_q\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( \ROM|memROM~14_combout\ & ( \RAM|ram~189_q\ ) ) ) # ( \ROM|memROM~13_combout\ & ( !\ROM|memROM~14_combout\ & ( 
-- \RAM|ram~77_q\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( !\ROM|memROM~14_combout\ & ( \RAM|ram~61_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~61_q\,
	datab => \RAM|ALT_INV_ram~77_q\,
	datac => \RAM|ALT_INV_ram~189_q\,
	datad => \RAM|ALT_INV_ram~205_q\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ROM|ALT_INV_memROM~14_combout\,
	combout => \RAM|ram~664_combout\);

\RAM|ram~117\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(6),
	ena => \RAM|ram~720_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~117_q\);

\RAM|ram~133\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(6),
	ena => \RAM|ram~784_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~133_q\);

\RAM|ram~245\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(6),
	ena => \RAM|ram~724_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~245_q\);

\RAM|ram~261\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(6),
	ena => \RAM|ram~788_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~261_q\);

\RAM|ram~665\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~665_combout\ = ( \ROM|memROM~13_combout\ & ( \ROM|memROM~14_combout\ & ( \RAM|ram~261_q\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( \ROM|memROM~14_combout\ & ( \RAM|ram~245_q\ ) ) ) # ( \ROM|memROM~13_combout\ & ( !\ROM|memROM~14_combout\ & ( 
-- \RAM|ram~133_q\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( !\ROM|memROM~14_combout\ & ( \RAM|ram~117_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~117_q\,
	datab => \RAM|ALT_INV_ram~133_q\,
	datac => \RAM|ALT_INV_ram~245_q\,
	datad => \RAM|ALT_INV_ram~261_q\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ROM|ALT_INV_memROM~14_combout\,
	combout => \RAM|ram~665_combout\);

\RAM|ram~125\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(6),
	ena => \RAM|ram~752_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~125_q\);

\RAM|ram~141\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(6),
	ena => \RAM|ram~804_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~141_q\);

\RAM|ram~253\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(6),
	ena => \RAM|ram~756_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~253_q\);

\RAM|ram~269\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(6),
	ena => \RAM|ram~820_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~269_q\);

\RAM|ram~666\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~666_combout\ = ( \ROM|memROM~13_combout\ & ( \ROM|memROM~14_combout\ & ( \RAM|ram~269_q\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( \ROM|memROM~14_combout\ & ( \RAM|ram~253_q\ ) ) ) # ( \ROM|memROM~13_combout\ & ( !\ROM|memROM~14_combout\ & ( 
-- \RAM|ram~141_q\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( !\ROM|memROM~14_combout\ & ( \RAM|ram~125_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~125_q\,
	datab => \RAM|ALT_INV_ram~141_q\,
	datac => \RAM|ALT_INV_ram~253_q\,
	datad => \RAM|ALT_INV_ram~269_q\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ROM|ALT_INV_memROM~14_combout\,
	combout => \RAM|ram~666_combout\);

\RAM|ram~667\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~667_combout\ = ( \ROM|memROM~11_combout\ & ( \ROM|memROM~16_combout\ & ( \RAM|ram~666_combout\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( \ROM|memROM~16_combout\ & ( \RAM|ram~665_combout\ ) ) ) # ( \ROM|memROM~11_combout\ & ( !\ROM|memROM~16_combout\ 
-- & ( \RAM|ram~664_combout\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( !\ROM|memROM~16_combout\ & ( \RAM|ram~663_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~663_combout\,
	datab => \RAM|ALT_INV_ram~664_combout\,
	datac => \RAM|ALT_INV_ram~665_combout\,
	datad => \RAM|ALT_INV_ram~666_combout\,
	datae => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \ROM|ALT_INV_memROM~16_combout\,
	combout => \RAM|ram~667_combout\);

\RAM|ram~309\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(6),
	ena => \RAM|ram~706_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~309_q\);

\RAM|ram~325\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(6),
	ena => \RAM|ram~770_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~325_q\);

\RAM|ram~317\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(6),
	ena => \RAM|ram~738_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~317_q\);

\RAM|ram~333\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(6),
	ena => \RAM|ram~802_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~333_q\);

\RAM|ram~668\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~668_combout\ = ( \ROM|memROM~13_combout\ & ( \ROM|memROM~11_combout\ & ( \RAM|ram~333_q\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( \ROM|memROM~11_combout\ & ( \RAM|ram~317_q\ ) ) ) # ( \ROM|memROM~13_combout\ & ( !\ROM|memROM~11_combout\ & ( 
-- \RAM|ram~325_q\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( !\ROM|memROM~11_combout\ & ( \RAM|ram~309_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~309_q\,
	datab => \RAM|ALT_INV_ram~325_q\,
	datac => \RAM|ALT_INV_ram~317_q\,
	datad => \RAM|ALT_INV_ram~333_q\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ROM|ALT_INV_memROM~11_combout\,
	combout => \RAM|ram~668_combout\);

\RAM|ram~437\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(6),
	ena => \RAM|ram~710_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~437_q\);

\RAM|ram~453\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(6),
	ena => \RAM|ram~774_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~453_q\);

\RAM|ram~445\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(6),
	ena => \RAM|ram~742_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~445_q\);

\RAM|ram~461\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(6),
	ena => \RAM|ram~818_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~461_q\);

\RAM|ram~669\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~669_combout\ = ( \ROM|memROM~13_combout\ & ( \ROM|memROM~11_combout\ & ( \RAM|ram~461_q\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( \ROM|memROM~11_combout\ & ( \RAM|ram~445_q\ ) ) ) # ( \ROM|memROM~13_combout\ & ( !\ROM|memROM~11_combout\ & ( 
-- \RAM|ram~453_q\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( !\ROM|memROM~11_combout\ & ( \RAM|ram~437_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~437_q\,
	datab => \RAM|ALT_INV_ram~453_q\,
	datac => \RAM|ALT_INV_ram~445_q\,
	datad => \RAM|ALT_INV_ram~461_q\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ROM|ALT_INV_memROM~11_combout\,
	combout => \RAM|ram~669_combout\);

\RAM|ram~373\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(6),
	ena => \RAM|ram~722_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~373_q\);

\RAM|ram~389\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(6),
	ena => \RAM|ram~786_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~389_q\);

\RAM|ram~381\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(6),
	ena => \RAM|ram~754_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~381_q\);

\RAM|ram~397\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(6),
	ena => \RAM|ram~806_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~397_q\);

\RAM|ram~670\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~670_combout\ = ( \ROM|memROM~13_combout\ & ( \ROM|memROM~11_combout\ & ( \RAM|ram~397_q\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( \ROM|memROM~11_combout\ & ( \RAM|ram~381_q\ ) ) ) # ( \ROM|memROM~13_combout\ & ( !\ROM|memROM~11_combout\ & ( 
-- \RAM|ram~389_q\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( !\ROM|memROM~11_combout\ & ( \RAM|ram~373_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~373_q\,
	datab => \RAM|ALT_INV_ram~389_q\,
	datac => \RAM|ALT_INV_ram~381_q\,
	datad => \RAM|ALT_INV_ram~397_q\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ROM|ALT_INV_memROM~11_combout\,
	combout => \RAM|ram~670_combout\);

\RAM|ram~501\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(6),
	ena => \RAM|ram~726_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~501_q\);

\RAM|ram~517\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(6),
	ena => \RAM|ram~790_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~517_q\);

\RAM|ram~509\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(6),
	ena => \RAM|ram~758_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~509_q\);

\RAM|ram~525\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(6),
	ena => \RAM|ram~822_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~525_q\);

\RAM|ram~671\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~671_combout\ = ( \ROM|memROM~13_combout\ & ( \ROM|memROM~11_combout\ & ( \RAM|ram~525_q\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( \ROM|memROM~11_combout\ & ( \RAM|ram~509_q\ ) ) ) # ( \ROM|memROM~13_combout\ & ( !\ROM|memROM~11_combout\ & ( 
-- \RAM|ram~517_q\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( !\ROM|memROM~11_combout\ & ( \RAM|ram~501_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~501_q\,
	datab => \RAM|ALT_INV_ram~517_q\,
	datac => \RAM|ALT_INV_ram~509_q\,
	datad => \RAM|ALT_INV_ram~525_q\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ROM|ALT_INV_memROM~11_combout\,
	combout => \RAM|ram~671_combout\);

\RAM|ram~672\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~672_combout\ = ( \ROM|memROM~14_combout\ & ( \ROM|memROM~16_combout\ & ( \RAM|ram~671_combout\ ) ) ) # ( !\ROM|memROM~14_combout\ & ( \ROM|memROM~16_combout\ & ( \RAM|ram~670_combout\ ) ) ) # ( \ROM|memROM~14_combout\ & ( !\ROM|memROM~16_combout\ 
-- & ( \RAM|ram~669_combout\ ) ) ) # ( !\ROM|memROM~14_combout\ & ( !\ROM|memROM~16_combout\ & ( \RAM|ram~668_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~668_combout\,
	datab => \RAM|ALT_INV_ram~669_combout\,
	datac => \RAM|ALT_INV_ram~670_combout\,
	datad => \RAM|ALT_INV_ram~671_combout\,
	datae => \ROM|ALT_INV_memROM~14_combout\,
	dataf => \ROM|ALT_INV_memROM~16_combout\,
	combout => \RAM|ram~672_combout\);

\RAM|ram~673\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~673_combout\ = ( \ROM|memROM~12_combout\ & ( \ROM|memROM~5_combout\ & ( \RAM|ram~672_combout\ ) ) ) # ( !\ROM|memROM~12_combout\ & ( \ROM|memROM~5_combout\ & ( \RAM|ram~667_combout\ ) ) ) # ( \ROM|memROM~12_combout\ & ( !\ROM|memROM~5_combout\ & 
-- ( \RAM|ram~662_combout\ ) ) ) # ( !\ROM|memROM~12_combout\ & ( !\ROM|memROM~5_combout\ & ( \RAM|ram~657_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~657_combout\,
	datab => \RAM|ALT_INV_ram~662_combout\,
	datac => \RAM|ALT_INV_ram~667_combout\,
	datad => \RAM|ALT_INV_ram~672_combout\,
	datae => \ROM|ALT_INV_memROM~12_combout\,
	dataf => \ROM|ALT_INV_memROM~5_combout\,
	combout => \RAM|ram~673_combout\);

\CPU|MUX1|saida_MUX[6]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[6]~5_combout\ = (!\ENABLE_SWR~2_combout\ & ((\RAM|ram~673_combout\))) # (\ENABLE_SWR~2_combout\ & (\SW[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ENABLE_SWR~2_combout\,
	datab => \ALT_INV_SW[6]~input_o\,
	datac => \RAM|ALT_INV_ram~673_combout\,
	combout => \CPU|MUX1|saida_MUX[6]~5_combout\);

\CPU|ULA1|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~25_sumout\ = SUM(( (!\CPU|DECODER|SEL_MUX~0_combout\ & (((!\ROM|memROM~25_combout\)) # (\CPU|INSTR|PC|DOUT\(8)))) # (\CPU|DECODER|SEL_MUX~0_combout\ & (((!\CPU|MUX1|saida_MUX[6]~5_combout\)))) ) + ( \CPU|REG_A|DOUT\(6) ) + ( 
-- \CPU|ULA1|Add1~22\ ))
-- \CPU|ULA1|Add1~26\ = CARRY(( (!\CPU|DECODER|SEL_MUX~0_combout\ & (((!\ROM|memROM~25_combout\)) # (\CPU|INSTR|PC|DOUT\(8)))) # (\CPU|DECODER|SEL_MUX~0_combout\ & (((!\CPU|MUX1|saida_MUX[6]~5_combout\)))) ) + ( \CPU|REG_A|DOUT\(6) ) + ( \CPU|ULA1|Add1~22\ 
-- ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111011110100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_SEL_MUX~0_combout\,
	datab => \CPU|INSTR|PC|ALT_INV_DOUT\(8),
	datac => \ROM|ALT_INV_memROM~25_combout\,
	datad => \CPU|MUX1|ALT_INV_saida_MUX[6]~5_combout\,
	dataf => \CPU|REG_A|ALT_INV_DOUT\(6),
	cin => \CPU|ULA1|Add1~22\,
	sumout => \CPU|ULA1|Add1~25_sumout\,
	cout => \CPU|ULA1|Add1~26\);

\SW[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

\CPU|ULA1|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~29_sumout\ = SUM(( (!\CPU|DECODER|HAB_A~0_combout\ & (((\CPU|MUX1|saida_MUX[7]~6_combout\)))) # (\CPU|DECODER|HAB_A~0_combout\ & ((!\CPU|DECODER|OP_ULA[0]~2_combout\ & (\ROM|memROM~14_combout\)) # (\CPU|DECODER|OP_ULA[0]~2_combout\ & 
-- ((\CPU|MUX1|saida_MUX[7]~6_combout\))))) ) + ( \CPU|REG_A|DOUT\(7) ) + ( \CPU|ULA1|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_HAB_A~0_combout\,
	datab => \CPU|DECODER|ALT_INV_OP_ULA[0]~2_combout\,
	datac => \ROM|ALT_INV_memROM~14_combout\,
	datad => \CPU|MUX1|ALT_INV_saida_MUX[7]~6_combout\,
	dataf => \CPU|REG_A|ALT_INV_DOUT\(7),
	cin => \CPU|ULA1|Add0~26\,
	sumout => \CPU|ULA1|Add0~29_sumout\);

\CPU|ULA1|saida[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[7]~7_combout\ = (!\CPU|DECODER|OP_ULA[1]~0_combout\ & (((\CPU|ULA1|Add1~29_sumout\)))) # (\CPU|DECODER|OP_ULA[1]~0_combout\ & (\CPU|DECODER|SEL_MUX~0_combout\ & (\CPU|MUX1|saida_MUX[7]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111001101000000011100110100000001110011010000000111001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_SEL_MUX~0_combout\,
	datab => \CPU|DECODER|ALT_INV_OP_ULA[1]~0_combout\,
	datac => \CPU|MUX1|ALT_INV_saida_MUX[7]~6_combout\,
	datad => \CPU|ULA1|ALT_INV_Add1~29_sumout\,
	combout => \CPU|ULA1|saida[7]~7_combout\);

\CPU|REG_A|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~29_sumout\,
	asdata => \CPU|ULA1|saida[7]~7_combout\,
	sload => \CPU|DECODER|OP_ULA[0]~1_combout\,
	ena => \CPU|DECODER|HAB_A~1_combout\,
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
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(7),
	ena => \RAM|ram~696_combout\,
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
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(7),
	ena => \RAM|ram~728_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~30_q\);

\RAM|ram~150\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(7),
	ena => \RAM|ram~700_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~150_q\);

\RAM|ram~158\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(7),
	ena => \RAM|ram~732_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~158_q\);

\RAM|ram~674\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~674_combout\ = ( \ROM|memROM~11_combout\ & ( \ROM|memROM~14_combout\ & ( \RAM|ram~158_q\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( \ROM|memROM~14_combout\ & ( \RAM|ram~150_q\ ) ) ) # ( \ROM|memROM~11_combout\ & ( !\ROM|memROM~14_combout\ & ( 
-- \RAM|ram~30_q\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( !\ROM|memROM~14_combout\ & ( \RAM|ram~22_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~22_q\,
	datab => \RAM|ALT_INV_ram~30_q\,
	datac => \RAM|ALT_INV_ram~150_q\,
	datad => \RAM|ALT_INV_ram~158_q\,
	datae => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \ROM|ALT_INV_memROM~14_combout\,
	combout => \RAM|ram~674_combout\);

\RAM|ram~54\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(7),
	ena => \RAM|ram~704_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~54_q\);

\RAM|ram~62\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(7),
	ena => \RAM|ram~736_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~62_q\);

\RAM|ram~182\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(7),
	ena => \RAM|ram~708_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~182_q\);

\RAM|ram~190\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(7),
	ena => \RAM|ram~740_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~190_q\);

\RAM|ram~675\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~675_combout\ = ( \ROM|memROM~11_combout\ & ( \ROM|memROM~14_combout\ & ( \RAM|ram~190_q\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( \ROM|memROM~14_combout\ & ( \RAM|ram~182_q\ ) ) ) # ( \ROM|memROM~11_combout\ & ( !\ROM|memROM~14_combout\ & ( 
-- \RAM|ram~62_q\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( !\ROM|memROM~14_combout\ & ( \RAM|ram~54_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~54_q\,
	datab => \RAM|ALT_INV_ram~62_q\,
	datac => \RAM|ALT_INV_ram~182_q\,
	datad => \RAM|ALT_INV_ram~190_q\,
	datae => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \ROM|ALT_INV_memROM~14_combout\,
	combout => \RAM|ram~675_combout\);

\RAM|ram~86\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(7),
	ena => \RAM|ram~712_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~86_q\);

\RAM|ram~94\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(7),
	ena => \RAM|ram~744_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~94_q\);

\RAM|ram~214\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(7),
	ena => \RAM|ram~716_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~214_q\);

\RAM|ram~222\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(7),
	ena => \RAM|ram~748_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~222_q\);

\RAM|ram~676\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~676_combout\ = ( \ROM|memROM~11_combout\ & ( \ROM|memROM~14_combout\ & ( \RAM|ram~222_q\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( \ROM|memROM~14_combout\ & ( \RAM|ram~214_q\ ) ) ) # ( \ROM|memROM~11_combout\ & ( !\ROM|memROM~14_combout\ & ( 
-- \RAM|ram~94_q\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( !\ROM|memROM~14_combout\ & ( \RAM|ram~86_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~86_q\,
	datab => \RAM|ALT_INV_ram~94_q\,
	datac => \RAM|ALT_INV_ram~214_q\,
	datad => \RAM|ALT_INV_ram~222_q\,
	datae => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \ROM|ALT_INV_memROM~14_combout\,
	combout => \RAM|ram~676_combout\);

\RAM|ram~118\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(7),
	ena => \RAM|ram~720_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~118_q\);

\RAM|ram~126\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(7),
	ena => \RAM|ram~752_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~126_q\);

\RAM|ram~246\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(7),
	ena => \RAM|ram~724_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~246_q\);

\RAM|ram~254\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(7),
	ena => \RAM|ram~756_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~254_q\);

\RAM|ram~677\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~677_combout\ = ( \ROM|memROM~11_combout\ & ( \ROM|memROM~14_combout\ & ( \RAM|ram~254_q\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( \ROM|memROM~14_combout\ & ( \RAM|ram~246_q\ ) ) ) # ( \ROM|memROM~11_combout\ & ( !\ROM|memROM~14_combout\ & ( 
-- \RAM|ram~126_q\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( !\ROM|memROM~14_combout\ & ( \RAM|ram~118_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~118_q\,
	datab => \RAM|ALT_INV_ram~126_q\,
	datac => \RAM|ALT_INV_ram~246_q\,
	datad => \RAM|ALT_INV_ram~254_q\,
	datae => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \ROM|ALT_INV_memROM~14_combout\,
	combout => \RAM|ram~677_combout\);

\RAM|ram~678\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~678_combout\ = ( \ROM|memROM~5_combout\ & ( \ROM|memROM~16_combout\ & ( \RAM|ram~677_combout\ ) ) ) # ( !\ROM|memROM~5_combout\ & ( \ROM|memROM~16_combout\ & ( \RAM|ram~676_combout\ ) ) ) # ( \ROM|memROM~5_combout\ & ( !\ROM|memROM~16_combout\ & 
-- ( \RAM|ram~675_combout\ ) ) ) # ( !\ROM|memROM~5_combout\ & ( !\ROM|memROM~16_combout\ & ( \RAM|ram~674_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~674_combout\,
	datab => \RAM|ALT_INV_ram~675_combout\,
	datac => \RAM|ALT_INV_ram~676_combout\,
	datad => \RAM|ALT_INV_ram~677_combout\,
	datae => \ROM|ALT_INV_memROM~5_combout\,
	dataf => \ROM|ALT_INV_memROM~16_combout\,
	combout => \RAM|ram~678_combout\);

\RAM|ram~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(7),
	ena => \RAM|ram~760_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~38_q\);

\RAM|ram~70\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(7),
	ena => \RAM|ram~768_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~70_q\);

\RAM|ram~102\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(7),
	ena => \RAM|ram~776_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~102_q\);

\RAM|ram~134\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(7),
	ena => \RAM|ram~784_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~134_q\);

\RAM|ram~679\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~679_combout\ = ( \ROM|memROM~5_combout\ & ( \ROM|memROM~16_combout\ & ( \RAM|ram~134_q\ ) ) ) # ( !\ROM|memROM~5_combout\ & ( \ROM|memROM~16_combout\ & ( \RAM|ram~102_q\ ) ) ) # ( \ROM|memROM~5_combout\ & ( !\ROM|memROM~16_combout\ & ( 
-- \RAM|ram~70_q\ ) ) ) # ( !\ROM|memROM~5_combout\ & ( !\ROM|memROM~16_combout\ & ( \RAM|ram~38_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~38_q\,
	datab => \RAM|ALT_INV_ram~70_q\,
	datac => \RAM|ALT_INV_ram~102_q\,
	datad => \RAM|ALT_INV_ram~134_q\,
	datae => \ROM|ALT_INV_memROM~5_combout\,
	dataf => \ROM|ALT_INV_memROM~16_combout\,
	combout => \RAM|ram~679_combout\);

\RAM|ram~46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(7),
	ena => \RAM|ram~792_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~46_q\);

\RAM|ram~78\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(7),
	ena => \RAM|ram~800_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~78_q\);

\RAM|ram~110\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(7),
	ena => \RAM|ram~796_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~110_q\);

\RAM|ram~142\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(7),
	ena => \RAM|ram~804_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~142_q\);

\RAM|ram~680\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~680_combout\ = ( \ROM|memROM~5_combout\ & ( \ROM|memROM~16_combout\ & ( \RAM|ram~142_q\ ) ) ) # ( !\ROM|memROM~5_combout\ & ( \ROM|memROM~16_combout\ & ( \RAM|ram~110_q\ ) ) ) # ( \ROM|memROM~5_combout\ & ( !\ROM|memROM~16_combout\ & ( 
-- \RAM|ram~78_q\ ) ) ) # ( !\ROM|memROM~5_combout\ & ( !\ROM|memROM~16_combout\ & ( \RAM|ram~46_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~46_q\,
	datab => \RAM|ALT_INV_ram~78_q\,
	datac => \RAM|ALT_INV_ram~110_q\,
	datad => \RAM|ALT_INV_ram~142_q\,
	datae => \ROM|ALT_INV_memROM~5_combout\,
	dataf => \ROM|ALT_INV_memROM~16_combout\,
	combout => \RAM|ram~680_combout\);

\RAM|ram~166\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(7),
	ena => \RAM|ram~764_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~166_q\);

\RAM|ram~198\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(7),
	ena => \RAM|ram~772_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~198_q\);

\RAM|ram~230\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(7),
	ena => \RAM|ram~780_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~230_q\);

\RAM|ram~262\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(7),
	ena => \RAM|ram~788_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~262_q\);

\RAM|ram~681\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~681_combout\ = ( \ROM|memROM~5_combout\ & ( \ROM|memROM~16_combout\ & ( \RAM|ram~262_q\ ) ) ) # ( !\ROM|memROM~5_combout\ & ( \ROM|memROM~16_combout\ & ( \RAM|ram~230_q\ ) ) ) # ( \ROM|memROM~5_combout\ & ( !\ROM|memROM~16_combout\ & ( 
-- \RAM|ram~198_q\ ) ) ) # ( !\ROM|memROM~5_combout\ & ( !\ROM|memROM~16_combout\ & ( \RAM|ram~166_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~166_q\,
	datab => \RAM|ALT_INV_ram~198_q\,
	datac => \RAM|ALT_INV_ram~230_q\,
	datad => \RAM|ALT_INV_ram~262_q\,
	datae => \ROM|ALT_INV_memROM~5_combout\,
	dataf => \ROM|ALT_INV_memROM~16_combout\,
	combout => \RAM|ram~681_combout\);

\RAM|ram~174\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(7),
	ena => \RAM|ram~808_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~174_q\);

\RAM|ram~206\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(7),
	ena => \RAM|ram~816_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~206_q\);

\RAM|ram~238\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(7),
	ena => \RAM|ram~812_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~238_q\);

\RAM|ram~270\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(7),
	ena => \RAM|ram~820_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~270_q\);

\RAM|ram~682\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~682_combout\ = ( \ROM|memROM~5_combout\ & ( \ROM|memROM~16_combout\ & ( \RAM|ram~270_q\ ) ) ) # ( !\ROM|memROM~5_combout\ & ( \ROM|memROM~16_combout\ & ( \RAM|ram~238_q\ ) ) ) # ( \ROM|memROM~5_combout\ & ( !\ROM|memROM~16_combout\ & ( 
-- \RAM|ram~206_q\ ) ) ) # ( !\ROM|memROM~5_combout\ & ( !\ROM|memROM~16_combout\ & ( \RAM|ram~174_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~174_q\,
	datab => \RAM|ALT_INV_ram~206_q\,
	datac => \RAM|ALT_INV_ram~238_q\,
	datad => \RAM|ALT_INV_ram~270_q\,
	datae => \ROM|ALT_INV_memROM~5_combout\,
	dataf => \ROM|ALT_INV_memROM~16_combout\,
	combout => \RAM|ram~682_combout\);

\RAM|ram~683\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~683_combout\ = ( \ROM|memROM~11_combout\ & ( \ROM|memROM~14_combout\ & ( \RAM|ram~682_combout\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( \ROM|memROM~14_combout\ & ( \RAM|ram~681_combout\ ) ) ) # ( \ROM|memROM~11_combout\ & ( !\ROM|memROM~14_combout\ 
-- & ( \RAM|ram~680_combout\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( !\ROM|memROM~14_combout\ & ( \RAM|ram~679_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~679_combout\,
	datab => \RAM|ALT_INV_ram~680_combout\,
	datac => \RAM|ALT_INV_ram~681_combout\,
	datad => \RAM|ALT_INV_ram~682_combout\,
	datae => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \ROM|ALT_INV_memROM~14_combout\,
	combout => \RAM|ram~683_combout\);

\RAM|ram~278\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(7),
	ena => \RAM|ram~698_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~278_q\);

\RAM|ram~286\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(7),
	ena => \RAM|ram~730_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~286_q\);

\RAM|ram~406\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(7),
	ena => \RAM|ram~702_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~406_q\);

\RAM|ram~414\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(7),
	ena => \RAM|ram~734_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~414_q\);

\RAM|ram~684\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~684_combout\ = ( \ROM|memROM~11_combout\ & ( \ROM|memROM~14_combout\ & ( \RAM|ram~414_q\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( \ROM|memROM~14_combout\ & ( \RAM|ram~406_q\ ) ) ) # ( \ROM|memROM~11_combout\ & ( !\ROM|memROM~14_combout\ & ( 
-- \RAM|ram~286_q\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( !\ROM|memROM~14_combout\ & ( \RAM|ram~278_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~278_q\,
	datab => \RAM|ALT_INV_ram~286_q\,
	datac => \RAM|ALT_INV_ram~406_q\,
	datad => \RAM|ALT_INV_ram~414_q\,
	datae => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \ROM|ALT_INV_memROM~14_combout\,
	combout => \RAM|ram~684_combout\);

\RAM|ram~310\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(7),
	ena => \RAM|ram~706_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~310_q\);

\RAM|ram~318\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(7),
	ena => \RAM|ram~738_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~318_q\);

\RAM|ram~438\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(7),
	ena => \RAM|ram~710_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~438_q\);

\RAM|ram~446\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(7),
	ena => \RAM|ram~742_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~446_q\);

\RAM|ram~685\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~685_combout\ = ( \ROM|memROM~11_combout\ & ( \ROM|memROM~14_combout\ & ( \RAM|ram~446_q\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( \ROM|memROM~14_combout\ & ( \RAM|ram~438_q\ ) ) ) # ( \ROM|memROM~11_combout\ & ( !\ROM|memROM~14_combout\ & ( 
-- \RAM|ram~318_q\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( !\ROM|memROM~14_combout\ & ( \RAM|ram~310_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~310_q\,
	datab => \RAM|ALT_INV_ram~318_q\,
	datac => \RAM|ALT_INV_ram~438_q\,
	datad => \RAM|ALT_INV_ram~446_q\,
	datae => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \ROM|ALT_INV_memROM~14_combout\,
	combout => \RAM|ram~685_combout\);

\RAM|ram~342\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(7),
	ena => \RAM|ram~714_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~342_q\);

\RAM|ram~350\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(7),
	ena => \RAM|ram~746_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~350_q\);

\RAM|ram~470\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(7),
	ena => \RAM|ram~718_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~470_q\);

\RAM|ram~478\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(7),
	ena => \RAM|ram~750_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~478_q\);

\RAM|ram~686\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~686_combout\ = ( \ROM|memROM~11_combout\ & ( \ROM|memROM~14_combout\ & ( \RAM|ram~478_q\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( \ROM|memROM~14_combout\ & ( \RAM|ram~470_q\ ) ) ) # ( \ROM|memROM~11_combout\ & ( !\ROM|memROM~14_combout\ & ( 
-- \RAM|ram~350_q\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( !\ROM|memROM~14_combout\ & ( \RAM|ram~342_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~342_q\,
	datab => \RAM|ALT_INV_ram~350_q\,
	datac => \RAM|ALT_INV_ram~470_q\,
	datad => \RAM|ALT_INV_ram~478_q\,
	datae => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \ROM|ALT_INV_memROM~14_combout\,
	combout => \RAM|ram~686_combout\);

\RAM|ram~374\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(7),
	ena => \RAM|ram~722_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~374_q\);

\RAM|ram~382\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(7),
	ena => \RAM|ram~754_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~382_q\);

\RAM|ram~502\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(7),
	ena => \RAM|ram~726_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~502_q\);

\RAM|ram~510\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(7),
	ena => \RAM|ram~758_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~510_q\);

\RAM|ram~687\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~687_combout\ = ( \ROM|memROM~11_combout\ & ( \ROM|memROM~14_combout\ & ( \RAM|ram~510_q\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( \ROM|memROM~14_combout\ & ( \RAM|ram~502_q\ ) ) ) # ( \ROM|memROM~11_combout\ & ( !\ROM|memROM~14_combout\ & ( 
-- \RAM|ram~382_q\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( !\ROM|memROM~14_combout\ & ( \RAM|ram~374_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~374_q\,
	datab => \RAM|ALT_INV_ram~382_q\,
	datac => \RAM|ALT_INV_ram~502_q\,
	datad => \RAM|ALT_INV_ram~510_q\,
	datae => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \ROM|ALT_INV_memROM~14_combout\,
	combout => \RAM|ram~687_combout\);

\RAM|ram~688\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~688_combout\ = ( \ROM|memROM~5_combout\ & ( \ROM|memROM~16_combout\ & ( \RAM|ram~687_combout\ ) ) ) # ( !\ROM|memROM~5_combout\ & ( \ROM|memROM~16_combout\ & ( \RAM|ram~686_combout\ ) ) ) # ( \ROM|memROM~5_combout\ & ( !\ROM|memROM~16_combout\ & 
-- ( \RAM|ram~685_combout\ ) ) ) # ( !\ROM|memROM~5_combout\ & ( !\ROM|memROM~16_combout\ & ( \RAM|ram~684_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~684_combout\,
	datab => \RAM|ALT_INV_ram~685_combout\,
	datac => \RAM|ALT_INV_ram~686_combout\,
	datad => \RAM|ALT_INV_ram~687_combout\,
	datae => \ROM|ALT_INV_memROM~5_combout\,
	dataf => \ROM|ALT_INV_memROM~16_combout\,
	combout => \RAM|ram~688_combout\);

\RAM|ram~294\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(7),
	ena => \RAM|ram~762_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~294_q\);

\RAM|ram~326\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(7),
	ena => \RAM|ram~770_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~326_q\);

\RAM|ram~358\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(7),
	ena => \RAM|ram~778_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~358_q\);

\RAM|ram~390\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(7),
	ena => \RAM|ram~786_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~390_q\);

\RAM|ram~689\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~689_combout\ = ( \ROM|memROM~5_combout\ & ( \ROM|memROM~16_combout\ & ( \RAM|ram~390_q\ ) ) ) # ( !\ROM|memROM~5_combout\ & ( \ROM|memROM~16_combout\ & ( \RAM|ram~358_q\ ) ) ) # ( \ROM|memROM~5_combout\ & ( !\ROM|memROM~16_combout\ & ( 
-- \RAM|ram~326_q\ ) ) ) # ( !\ROM|memROM~5_combout\ & ( !\ROM|memROM~16_combout\ & ( \RAM|ram~294_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~294_q\,
	datab => \RAM|ALT_INV_ram~326_q\,
	datac => \RAM|ALT_INV_ram~358_q\,
	datad => \RAM|ALT_INV_ram~390_q\,
	datae => \ROM|ALT_INV_memROM~5_combout\,
	dataf => \ROM|ALT_INV_memROM~16_combout\,
	combout => \RAM|ram~689_combout\);

\RAM|ram~302\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(7),
	ena => \RAM|ram~794_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~302_q\);

\RAM|ram~334\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(7),
	ena => \RAM|ram~802_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~334_q\);

\RAM|ram~366\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(7),
	ena => \RAM|ram~798_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~366_q\);

\RAM|ram~398\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(7),
	ena => \RAM|ram~806_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~398_q\);

\RAM|ram~690\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~690_combout\ = ( \ROM|memROM~5_combout\ & ( \ROM|memROM~16_combout\ & ( \RAM|ram~398_q\ ) ) ) # ( !\ROM|memROM~5_combout\ & ( \ROM|memROM~16_combout\ & ( \RAM|ram~366_q\ ) ) ) # ( \ROM|memROM~5_combout\ & ( !\ROM|memROM~16_combout\ & ( 
-- \RAM|ram~334_q\ ) ) ) # ( !\ROM|memROM~5_combout\ & ( !\ROM|memROM~16_combout\ & ( \RAM|ram~302_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~302_q\,
	datab => \RAM|ALT_INV_ram~334_q\,
	datac => \RAM|ALT_INV_ram~366_q\,
	datad => \RAM|ALT_INV_ram~398_q\,
	datae => \ROM|ALT_INV_memROM~5_combout\,
	dataf => \ROM|ALT_INV_memROM~16_combout\,
	combout => \RAM|ram~690_combout\);

\RAM|ram~422\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(7),
	ena => \RAM|ram~766_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~422_q\);

\RAM|ram~454\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(7),
	ena => \RAM|ram~774_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~454_q\);

\RAM|ram~486\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(7),
	ena => \RAM|ram~782_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~486_q\);

\RAM|ram~518\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(7),
	ena => \RAM|ram~790_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~518_q\);

\RAM|ram~691\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~691_combout\ = ( \ROM|memROM~5_combout\ & ( \ROM|memROM~16_combout\ & ( \RAM|ram~518_q\ ) ) ) # ( !\ROM|memROM~5_combout\ & ( \ROM|memROM~16_combout\ & ( \RAM|ram~486_q\ ) ) ) # ( \ROM|memROM~5_combout\ & ( !\ROM|memROM~16_combout\ & ( 
-- \RAM|ram~454_q\ ) ) ) # ( !\ROM|memROM~5_combout\ & ( !\ROM|memROM~16_combout\ & ( \RAM|ram~422_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~422_q\,
	datab => \RAM|ALT_INV_ram~454_q\,
	datac => \RAM|ALT_INV_ram~486_q\,
	datad => \RAM|ALT_INV_ram~518_q\,
	datae => \ROM|ALT_INV_memROM~5_combout\,
	dataf => \ROM|ALT_INV_memROM~16_combout\,
	combout => \RAM|ram~691_combout\);

\RAM|ram~430\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(7),
	ena => \RAM|ram~810_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~430_q\);

\RAM|ram~462\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(7),
	ena => \RAM|ram~818_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~462_q\);

\RAM|ram~494\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(7),
	ena => \RAM|ram~814_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~494_q\);

\RAM|ram~526\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(7),
	ena => \RAM|ram~822_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~526_q\);

\RAM|ram~692\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~692_combout\ = ( \ROM|memROM~5_combout\ & ( \ROM|memROM~16_combout\ & ( \RAM|ram~526_q\ ) ) ) # ( !\ROM|memROM~5_combout\ & ( \ROM|memROM~16_combout\ & ( \RAM|ram~494_q\ ) ) ) # ( \ROM|memROM~5_combout\ & ( !\ROM|memROM~16_combout\ & ( 
-- \RAM|ram~462_q\ ) ) ) # ( !\ROM|memROM~5_combout\ & ( !\ROM|memROM~16_combout\ & ( \RAM|ram~430_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~430_q\,
	datab => \RAM|ALT_INV_ram~462_q\,
	datac => \RAM|ALT_INV_ram~494_q\,
	datad => \RAM|ALT_INV_ram~526_q\,
	datae => \ROM|ALT_INV_memROM~5_combout\,
	dataf => \ROM|ALT_INV_memROM~16_combout\,
	combout => \RAM|ram~692_combout\);

\RAM|ram~693\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~693_combout\ = ( \ROM|memROM~11_combout\ & ( \ROM|memROM~14_combout\ & ( \RAM|ram~692_combout\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( \ROM|memROM~14_combout\ & ( \RAM|ram~691_combout\ ) ) ) # ( \ROM|memROM~11_combout\ & ( !\ROM|memROM~14_combout\ 
-- & ( \RAM|ram~690_combout\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( !\ROM|memROM~14_combout\ & ( \RAM|ram~689_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~689_combout\,
	datab => \RAM|ALT_INV_ram~690_combout\,
	datac => \RAM|ALT_INV_ram~691_combout\,
	datad => \RAM|ALT_INV_ram~692_combout\,
	datae => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \ROM|ALT_INV_memROM~14_combout\,
	combout => \RAM|ram~693_combout\);

\RAM|ram~694\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~694_combout\ = ( \ROM|memROM~13_combout\ & ( \ROM|memROM~12_combout\ & ( \RAM|ram~693_combout\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( \ROM|memROM~12_combout\ & ( \RAM|ram~688_combout\ ) ) ) # ( \ROM|memROM~13_combout\ & ( !\ROM|memROM~12_combout\ 
-- & ( \RAM|ram~683_combout\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( !\ROM|memROM~12_combout\ & ( \RAM|ram~678_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~678_combout\,
	datab => \RAM|ALT_INV_ram~683_combout\,
	datac => \RAM|ALT_INV_ram~688_combout\,
	datad => \RAM|ALT_INV_ram~693_combout\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ROM|ALT_INV_memROM~12_combout\,
	combout => \RAM|ram~694_combout\);

\CPU|MUX1|saida_MUX[7]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[7]~6_combout\ = (!\ENABLE_SWR~2_combout\ & ((\RAM|ram~694_combout\))) # (\ENABLE_SWR~2_combout\ & (\SW[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ENABLE_SWR~2_combout\,
	datab => \ALT_INV_SW[7]~input_o\,
	datac => \RAM|ALT_INV_ram~694_combout\,
	combout => \CPU|MUX1|saida_MUX[7]~6_combout\);

\CPU|ULA1|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~29_sumout\ = SUM(( (!\CPU|DECODER|HAB_A~0_combout\ & (((!\CPU|MUX1|saida_MUX[7]~6_combout\)))) # (\CPU|DECODER|HAB_A~0_combout\ & ((!\CPU|DECODER|OP_ULA[0]~2_combout\ & (!\ROM|memROM~14_combout\)) # (\CPU|DECODER|OP_ULA[0]~2_combout\ & 
-- ((!\CPU|MUX1|saida_MUX[7]~6_combout\))))) ) + ( \CPU|REG_A|DOUT\(7) ) + ( \CPU|ULA1|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111101101000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_HAB_A~0_combout\,
	datab => \CPU|DECODER|ALT_INV_OP_ULA[0]~2_combout\,
	datac => \ROM|ALT_INV_memROM~14_combout\,
	datad => \CPU|MUX1|ALT_INV_saida_MUX[7]~6_combout\,
	dataf => \CPU|REG_A|ALT_INV_DOUT\(7),
	cin => \CPU|ULA1|Add1~26\,
	sumout => \CPU|ULA1|Add1~29_sumout\);

\CPU|DECODER|sinais_controle~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER|sinais_controle~1_combout\ = (\CPU|INSTR|PC|DOUT\(0) & (\ROM|memROM~0_combout\ & (\ROM|memROM~1_combout\ & !\ROM|memROM~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000010000000000000001000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|PC|ALT_INV_DOUT\(0),
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \ROM|ALT_INV_memROM~1_combout\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	combout => \CPU|DECODER|sinais_controle~1_combout\);

\CPU|FLAG|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FLAG|DOUT~0_combout\ = (\CPU|FLAG|DOUT~q\ & ((!\CPU|DECODER|sinais_controle~1_combout\) # (!\CPU|DECODER|sinais_controle~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111000001110000011100000111000001110000011100000111000001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_sinais_controle~1_combout\,
	datab => \CPU|DECODER|ALT_INV_sinais_controle~0_combout\,
	datac => \CPU|FLAG|ALT_INV_DOUT~q\,
	combout => \CPU|FLAG|DOUT~0_combout\);

\CPU|FLAG|DOUT~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FLAG|DOUT~1_combout\ = ( !\CPU|ULA1|Add1~9_sumout\ & ( !\CPU|ULA1|Add1~13_sumout\ & ( (\CPU|DECODER|sinais_controle~1_combout\ & (\CPU|DECODER|sinais_controle~0_combout\ & (!\CPU|ULA1|Add1~1_sumout\ & !\CPU|ULA1|Add1~5_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_sinais_controle~1_combout\,
	datab => \CPU|DECODER|ALT_INV_sinais_controle~0_combout\,
	datac => \CPU|ULA1|ALT_INV_Add1~1_sumout\,
	datad => \CPU|ULA1|ALT_INV_Add1~5_sumout\,
	datae => \CPU|ULA1|ALT_INV_Add1~9_sumout\,
	dataf => \CPU|ULA1|ALT_INV_Add1~13_sumout\,
	combout => \CPU|FLAG|DOUT~1_combout\);

\CPU|FLAG|DOUT~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FLAG|DOUT~2_combout\ = ( \CPU|FLAG|DOUT~0_combout\ & ( \CPU|FLAG|DOUT~1_combout\ ) ) # ( !\CPU|FLAG|DOUT~0_combout\ & ( \CPU|FLAG|DOUT~1_combout\ & ( (!\CPU|ULA1|Add1~17_sumout\ & (!\CPU|ULA1|Add1~21_sumout\ & (!\CPU|ULA1|Add1~25_sumout\ & 
-- !\CPU|ULA1|Add1~29_sumout\))) ) ) ) # ( \CPU|FLAG|DOUT~0_combout\ & ( !\CPU|FLAG|DOUT~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111110000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ULA1|ALT_INV_Add1~17_sumout\,
	datab => \CPU|ULA1|ALT_INV_Add1~21_sumout\,
	datac => \CPU|ULA1|ALT_INV_Add1~25_sumout\,
	datad => \CPU|ULA1|ALT_INV_Add1~29_sumout\,
	datae => \CPU|FLAG|ALT_INV_DOUT~0_combout\,
	dataf => \CPU|FLAG|ALT_INV_DOUT~1_combout\,
	combout => \CPU|FLAG|DOUT~2_combout\);

\CPU|FLAG|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|FLAG|DOUT~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|FLAG|DOUT~q\);

\CPU|INSTR|MUX2|Equal2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|INSTR|MUX2|Equal2~0_combout\ = ( \CPU|FLAG|DOUT~q\ & ( (!\ROM|memROM~19_combout\ & (((\ROM|memROM~22_combout\ & \ROM|memROM~20_combout\)))) # (\ROM|memROM~19_combout\ & (!\ROM|memROM~20_combout\ & (!\ROM|memROM~21_combout\ $ 
-- (!\ROM|memROM~22_combout\)))) ) ) # ( !\CPU|FLAG|DOUT~q\ & ( (!\ROM|memROM~19_combout\ & (!\ROM|memROM~21_combout\ & (\ROM|memROM~22_combout\ & \ROM|memROM~20_combout\))) # (\ROM|memROM~19_combout\ & (!\ROM|memROM~20_combout\ & (!\ROM|memROM~21_combout\ $ 
-- (!\ROM|memROM~22_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010000001000000101000000101000010100000010000001010000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~19_combout\,
	datab => \ROM|ALT_INV_memROM~21_combout\,
	datac => \ROM|ALT_INV_memROM~22_combout\,
	datad => \ROM|ALT_INV_memROM~20_combout\,
	datae => \CPU|FLAG|ALT_INV_DOUT~q\,
	combout => \CPU|INSTR|MUX2|Equal2~0_combout\);

\CPU|INSTR|MUX2|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|INSTR|MUX2|Equal1~0_combout\ = ( \CPU|FLAG|DOUT~q\ & ( (!\ROM|memROM~19_combout\ & (((\ROM|memROM~22_combout\ & \ROM|memROM~20_combout\)))) # (\ROM|memROM~19_combout\ & (\ROM|memROM~21_combout\ & (!\ROM|memROM~22_combout\ & 
-- !\ROM|memROM~20_combout\))) ) ) # ( !\CPU|FLAG|DOUT~q\ & ( (!\ROM|memROM~19_combout\ & (!\ROM|memROM~21_combout\ & (\ROM|memROM~22_combout\ & \ROM|memROM~20_combout\))) # (\ROM|memROM~19_combout\ & (\ROM|memROM~21_combout\ & (!\ROM|memROM~22_combout\ & 
-- !\ROM|memROM~20_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000001000000100000000101000010000000010000001000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~19_combout\,
	datab => \ROM|ALT_INV_memROM~21_combout\,
	datac => \ROM|ALT_INV_memROM~22_combout\,
	datad => \ROM|ALT_INV_memROM~20_combout\,
	datae => \CPU|FLAG|ALT_INV_DOUT~q\,
	combout => \CPU|INSTR|MUX2|Equal1~0_combout\);

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

\CPU|INSTR|SOMA_CONST|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|INSTR|SOMA_CONST|Add0~25_sumout\ = SUM(( \CPU|INSTR|PC|DOUT\(1) ) + ( GND ) + ( \CPU|INSTR|SOMA_CONST|Add0~2\ ))
-- \CPU|INSTR|SOMA_CONST|Add0~26\ = CARRY(( \CPU|INSTR|PC|DOUT\(1) ) + ( GND ) + ( \CPU|INSTR|SOMA_CONST|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|INSTR|PC|ALT_INV_DOUT\(1),
	cin => \CPU|INSTR|SOMA_CONST|Add0~2\,
	sumout => \CPU|INSTR|SOMA_CONST|Add0~25_sumout\,
	cout => \CPU|INSTR|SOMA_CONST|Add0~26\);

\CPU|INSTR|SOMA_CONST|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|INSTR|SOMA_CONST|Add0~29_sumout\ = SUM(( \CPU|INSTR|PC|DOUT\(2) ) + ( GND ) + ( \CPU|INSTR|SOMA_CONST|Add0~26\ ))
-- \CPU|INSTR|SOMA_CONST|Add0~30\ = CARRY(( \CPU|INSTR|PC|DOUT\(2) ) + ( GND ) + ( \CPU|INSTR|SOMA_CONST|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|INSTR|PC|ALT_INV_DOUT\(2),
	cin => \CPU|INSTR|SOMA_CONST|Add0~26\,
	sumout => \CPU|INSTR|SOMA_CONST|Add0~29_sumout\,
	cout => \CPU|INSTR|SOMA_CONST|Add0~30\);

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

\CPU|INSTR|SOMA_CONST|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|INSTR|SOMA_CONST|Add0~17_sumout\ = SUM(( \CPU|INSTR|PC|DOUT\(4) ) + ( GND ) + ( \CPU|INSTR|SOMA_CONST|Add0~34\ ))
-- \CPU|INSTR|SOMA_CONST|Add0~18\ = CARRY(( \CPU|INSTR|PC|DOUT\(4) ) + ( GND ) + ( \CPU|INSTR|SOMA_CONST|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|INSTR|PC|ALT_INV_DOUT\(4),
	cin => \CPU|INSTR|SOMA_CONST|Add0~34\,
	sumout => \CPU|INSTR|SOMA_CONST|Add0~17_sumout\,
	cout => \CPU|INSTR|SOMA_CONST|Add0~18\);

\CPU|DECODER|sinais_controle~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER|sinais_controle~2_combout\ = ( !\ROM|memROM~3_combout\ & ( !\ROM|memROM~4_combout\ & ( (\CPU|INSTR|PC|DOUT\(0) & (\ROM|memROM~0_combout\ & (\ROM|memROM~1_combout\ & \ROM|memROM~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|PC|ALT_INV_DOUT\(0),
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \ROM|ALT_INV_memROM~1_combout\,
	datad => \ROM|ALT_INV_memROM~2_combout\,
	datae => \ROM|ALT_INV_memROM~3_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	combout => \CPU|DECODER|sinais_controle~2_combout\);

\CPU|INSTR|END_RETORNO|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|INSTR|SOMA_CONST|Add0~17_sumout\,
	ena => \CPU|DECODER|sinais_controle~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|INSTR|END_RETORNO|DOUT\(4));

\CPU|INSTR|MUX2|MUX_OUT[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|INSTR|MUX2|MUX_OUT[4]~4_combout\ = ( \CPU|INSTR|END_RETORNO|DOUT\(4) & ( (!\CPU|INSTR|MUX2|Equal2~0_combout\ & (((\CPU|INSTR|SOMA_CONST|Add0~17_sumout\)))) # (\CPU|INSTR|MUX2|Equal2~0_combout\ & (((!\CPU|INSTR|MUX2|Equal1~0_combout\)) # 
-- (\ROM|memROM~14_combout\))) ) ) # ( !\CPU|INSTR|END_RETORNO|DOUT\(4) & ( (!\CPU|INSTR|MUX2|Equal2~0_combout\ & (((\CPU|INSTR|SOMA_CONST|Add0~17_sumout\)))) # (\CPU|INSTR|MUX2|Equal2~0_combout\ & (\ROM|memROM~14_combout\ & 
-- (\CPU|INSTR|MUX2|Equal1~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111001101001100011111110100000001110011010011000111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~14_combout\,
	datab => \CPU|INSTR|MUX2|ALT_INV_Equal2~0_combout\,
	datac => \CPU|INSTR|MUX2|ALT_INV_Equal1~0_combout\,
	datad => \CPU|INSTR|SOMA_CONST|ALT_INV_Add0~17_sumout\,
	datae => \CPU|INSTR|END_RETORNO|ALT_INV_DOUT\(4),
	combout => \CPU|INSTR|MUX2|MUX_OUT[4]~4_combout\);

\CPU|INSTR|PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|INSTR|MUX2|MUX_OUT[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|INSTR|PC|DOUT\(4));

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

\CPU|INSTR|END_RETORNO|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|INSTR|SOMA_CONST|Add0~21_sumout\,
	ena => \CPU|DECODER|sinais_controle~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|INSTR|END_RETORNO|DOUT\(5));

\CPU|INSTR|MUX2|MUX_OUT[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|INSTR|MUX2|MUX_OUT[5]~5_combout\ = ( \CPU|INSTR|END_RETORNO|DOUT\(5) & ( (!\CPU|INSTR|MUX2|Equal2~0_combout\ & (((\CPU|INSTR|SOMA_CONST|Add0~21_sumout\)))) # (\CPU|INSTR|MUX2|Equal2~0_combout\ & (((!\CPU|INSTR|MUX2|Equal1~0_combout\)) # 
-- (\ROM|memROM~12_combout\))) ) ) # ( !\CPU|INSTR|END_RETORNO|DOUT\(5) & ( (!\CPU|INSTR|MUX2|Equal2~0_combout\ & (((\CPU|INSTR|SOMA_CONST|Add0~21_sumout\)))) # (\CPU|INSTR|MUX2|Equal2~0_combout\ & (\ROM|memROM~12_combout\ & 
-- (\CPU|INSTR|MUX2|Equal1~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111001101001100011111110100000001110011010011000111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~12_combout\,
	datab => \CPU|INSTR|MUX2|ALT_INV_Equal2~0_combout\,
	datac => \CPU|INSTR|MUX2|ALT_INV_Equal1~0_combout\,
	datad => \CPU|INSTR|SOMA_CONST|ALT_INV_Add0~21_sumout\,
	datae => \CPU|INSTR|END_RETORNO|ALT_INV_DOUT\(5),
	combout => \CPU|INSTR|MUX2|MUX_OUT[5]~5_combout\);

\CPU|INSTR|PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|INSTR|MUX2|MUX_OUT[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|INSTR|PC|DOUT\(5));

\ROM|memROM~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~13_combout\ = ( \CPU|INSTR|PC|DOUT\(3) & ( \ROM|memROM~0_combout\ & ( (!\CPU|INSTR|PC|DOUT\(2) & (!\CPU|INSTR|PC|DOUT\(0) & (!\CPU|INSTR|PC|DOUT\(1) & !\CPU|INSTR|PC|DOUT\(5)))) ) ) ) # ( !\CPU|INSTR|PC|DOUT\(3) & ( \ROM|memROM~0_combout\ & ( 
-- (!\CPU|INSTR|PC|DOUT\(2) & (!\CPU|INSTR|PC|DOUT\(5) $ (((!\CPU|INSTR|PC|DOUT\(1)) # (\CPU|INSTR|PC|DOUT\(0)))))) # (\CPU|INSTR|PC|DOUT\(2) & (!\CPU|INSTR|PC|DOUT\(0) & (!\CPU|INSTR|PC|DOUT\(1) & \CPU|INSTR|PC|DOUT\(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001000111000101000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|PC|ALT_INV_DOUT\(2),
	datab => \CPU|INSTR|PC|ALT_INV_DOUT\(0),
	datac => \CPU|INSTR|PC|ALT_INV_DOUT\(1),
	datad => \CPU|INSTR|PC|ALT_INV_DOUT\(5),
	datae => \CPU|INSTR|PC|ALT_INV_DOUT\(3),
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \ROM|memROM~13_combout\);

\CPU|INSTR|END_RETORNO|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|INSTR|SOMA_CONST|Add0~25_sumout\,
	ena => \CPU|DECODER|sinais_controle~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|INSTR|END_RETORNO|DOUT\(1));

\CPU|INSTR|MUX2|MUX_OUT[1]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|INSTR|MUX2|MUX_OUT[1]~6_combout\ = ( \CPU|INSTR|END_RETORNO|DOUT\(1) & ( (!\CPU|INSTR|MUX2|Equal2~0_combout\ & (((\CPU|INSTR|SOMA_CONST|Add0~25_sumout\)))) # (\CPU|INSTR|MUX2|Equal2~0_combout\ & (((!\CPU|INSTR|MUX2|Equal1~0_combout\)) # 
-- (\ROM|memROM~13_combout\))) ) ) # ( !\CPU|INSTR|END_RETORNO|DOUT\(1) & ( (!\CPU|INSTR|MUX2|Equal2~0_combout\ & (((\CPU|INSTR|SOMA_CONST|Add0~25_sumout\)))) # (\CPU|INSTR|MUX2|Equal2~0_combout\ & (\ROM|memROM~13_combout\ & 
-- (\CPU|INSTR|MUX2|Equal1~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111001101001100011111110100000001110011010011000111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~13_combout\,
	datab => \CPU|INSTR|MUX2|ALT_INV_Equal2~0_combout\,
	datac => \CPU|INSTR|MUX2|ALT_INV_Equal1~0_combout\,
	datad => \CPU|INSTR|SOMA_CONST|ALT_INV_Add0~25_sumout\,
	datae => \CPU|INSTR|END_RETORNO|ALT_INV_DOUT\(1),
	combout => \CPU|INSTR|MUX2|MUX_OUT[1]~6_combout\);

\CPU|INSTR|PC|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|INSTR|MUX2|MUX_OUT[1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|INSTR|PC|DOUT\(1));

\ROM|memROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~7_combout\ = (!\CPU|INSTR|PC|DOUT\(0) & ((!\CPU|INSTR|PC|DOUT\(1) & (!\CPU|INSTR|PC|DOUT\(2) & \CPU|INSTR|PC|DOUT\(5))) # (\CPU|INSTR|PC|DOUT\(1) & (\CPU|INSTR|PC|DOUT\(2) & !\CPU|INSTR|PC|DOUT\(5)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010000000000000101000000000000010100000000000001010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|PC|ALT_INV_DOUT\(0),
	datab => \CPU|INSTR|PC|ALT_INV_DOUT\(1),
	datac => \CPU|INSTR|PC|ALT_INV_DOUT\(2),
	datad => \CPU|INSTR|PC|ALT_INV_DOUT\(5),
	combout => \ROM|memROM~7_combout\);

\ROM|memROM~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~17_combout\ = (!\CPU|INSTR|PC|DOUT\(3) & (!\CPU|INSTR|PC|DOUT\(8) & (\ROM|memROM~6_combout\ & \ROM|memROM~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000100000000000000010000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|PC|ALT_INV_DOUT\(3),
	datab => \CPU|INSTR|PC|ALT_INV_DOUT\(8),
	datac => \ROM|ALT_INV_memROM~6_combout\,
	datad => \ROM|ALT_INV_memROM~7_combout\,
	combout => \ROM|memROM~17_combout\);

\CPU|INSTR|SOMA_CONST|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|INSTR|SOMA_CONST|Add0~13_sumout\ = SUM(( \CPU|INSTR|PC|DOUT\(6) ) + ( GND ) + ( \CPU|INSTR|SOMA_CONST|Add0~22\ ))
-- \CPU|INSTR|SOMA_CONST|Add0~14\ = CARRY(( \CPU|INSTR|PC|DOUT\(6) ) + ( GND ) + ( \CPU|INSTR|SOMA_CONST|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|INSTR|PC|ALT_INV_DOUT\(6),
	cin => \CPU|INSTR|SOMA_CONST|Add0~22\,
	sumout => \CPU|INSTR|SOMA_CONST|Add0~13_sumout\,
	cout => \CPU|INSTR|SOMA_CONST|Add0~14\);

\CPU|INSTR|END_RETORNO|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|INSTR|SOMA_CONST|Add0~13_sumout\,
	ena => \CPU|DECODER|sinais_controle~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|INSTR|END_RETORNO|DOUT\(6));

\CPU|INSTR|MUX2|MUX_OUT[6]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|INSTR|MUX2|MUX_OUT[6]~3_combout\ = ( \CPU|INSTR|END_RETORNO|DOUT\(6) & ( (!\CPU|INSTR|MUX2|Equal2~0_combout\ & (((\CPU|INSTR|SOMA_CONST|Add0~13_sumout\)))) # (\CPU|INSTR|MUX2|Equal2~0_combout\ & (((!\CPU|INSTR|MUX2|Equal1~0_combout\)) # 
-- (\ROM|memROM~17_combout\))) ) ) # ( !\CPU|INSTR|END_RETORNO|DOUT\(6) & ( (!\CPU|INSTR|MUX2|Equal2~0_combout\ & (((\CPU|INSTR|SOMA_CONST|Add0~13_sumout\)))) # (\CPU|INSTR|MUX2|Equal2~0_combout\ & (\ROM|memROM~17_combout\ & 
-- (\CPU|INSTR|MUX2|Equal1~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111001101001100011111110100000001110011010011000111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~17_combout\,
	datab => \CPU|INSTR|MUX2|ALT_INV_Equal2~0_combout\,
	datac => \CPU|INSTR|MUX2|ALT_INV_Equal1~0_combout\,
	datad => \CPU|INSTR|SOMA_CONST|ALT_INV_Add0~13_sumout\,
	datae => \CPU|INSTR|END_RETORNO|ALT_INV_DOUT\(6),
	combout => \CPU|INSTR|MUX2|MUX_OUT[6]~3_combout\);

\CPU|INSTR|PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|INSTR|MUX2|MUX_OUT[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|INSTR|PC|DOUT\(6));

\ROM|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~0_combout\ = (!\CPU|INSTR|PC|DOUT\(8) & (!\CPU|INSTR|PC|DOUT\(7) & (!\CPU|INSTR|PC|DOUT\(6) & !\CPU|INSTR|PC|DOUT\(4))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|PC|ALT_INV_DOUT\(8),
	datab => \CPU|INSTR|PC|ALT_INV_DOUT\(7),
	datac => \CPU|INSTR|PC|ALT_INV_DOUT\(6),
	datad => \CPU|INSTR|PC|ALT_INV_DOUT\(4),
	combout => \ROM|memROM~0_combout\);

\ROM|memROM~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~14_combout\ = (\ROM|memROM~0_combout\ & \ROM|memROM~9_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \ROM|ALT_INV_memROM~9_combout\,
	combout => \ROM|memROM~14_combout\);

\CPU|INSTR|SOMA_CONST|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|INSTR|SOMA_CONST|Add0~9_sumout\ = SUM(( \CPU|INSTR|PC|DOUT\(7) ) + ( GND ) + ( \CPU|INSTR|SOMA_CONST|Add0~14\ ))
-- \CPU|INSTR|SOMA_CONST|Add0~10\ = CARRY(( \CPU|INSTR|PC|DOUT\(7) ) + ( GND ) + ( \CPU|INSTR|SOMA_CONST|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|INSTR|PC|ALT_INV_DOUT\(7),
	cin => \CPU|INSTR|SOMA_CONST|Add0~14\,
	sumout => \CPU|INSTR|SOMA_CONST|Add0~9_sumout\,
	cout => \CPU|INSTR|SOMA_CONST|Add0~10\);

\CPU|INSTR|END_RETORNO|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|INSTR|SOMA_CONST|Add0~9_sumout\,
	ena => \CPU|DECODER|sinais_controle~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|INSTR|END_RETORNO|DOUT\(7));

\CPU|INSTR|MUX2|MUX_OUT[7]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|INSTR|MUX2|MUX_OUT[7]~2_combout\ = ( \CPU|INSTR|END_RETORNO|DOUT\(7) & ( (!\CPU|INSTR|MUX2|Equal2~0_combout\ & (((\CPU|INSTR|SOMA_CONST|Add0~9_sumout\)))) # (\CPU|INSTR|MUX2|Equal2~0_combout\ & (((!\CPU|INSTR|MUX2|Equal1~0_combout\)) # 
-- (\ROM|memROM~14_combout\))) ) ) # ( !\CPU|INSTR|END_RETORNO|DOUT\(7) & ( (!\CPU|INSTR|MUX2|Equal2~0_combout\ & (((\CPU|INSTR|SOMA_CONST|Add0~9_sumout\)))) # (\CPU|INSTR|MUX2|Equal2~0_combout\ & (\ROM|memROM~14_combout\ & 
-- (\CPU|INSTR|MUX2|Equal1~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111001101001100011111110100000001110011010011000111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~14_combout\,
	datab => \CPU|INSTR|MUX2|ALT_INV_Equal2~0_combout\,
	datac => \CPU|INSTR|MUX2|ALT_INV_Equal1~0_combout\,
	datad => \CPU|INSTR|SOMA_CONST|ALT_INV_Add0~9_sumout\,
	datae => \CPU|INSTR|END_RETORNO|ALT_INV_DOUT\(7),
	combout => \CPU|INSTR|MUX2|MUX_OUT[7]~2_combout\);

\CPU|INSTR|PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|INSTR|MUX2|MUX_OUT[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|INSTR|PC|DOUT\(7));

\ROM|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~6_combout\ = (!\CPU|INSTR|PC|DOUT\(7) & (!\CPU|INSTR|PC|DOUT\(6) & !\CPU|INSTR|PC|DOUT\(4)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|PC|ALT_INV_DOUT\(7),
	datab => \CPU|INSTR|PC|ALT_INV_DOUT\(6),
	datac => \CPU|INSTR|PC|ALT_INV_DOUT\(4),
	combout => \ROM|memROM~6_combout\);

\ROM|memROM~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~11_combout\ = (!\CPU|INSTR|PC|DOUT\(8) & (\ROM|memROM~6_combout\ & \ROM|memROM~10_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|PC|ALT_INV_DOUT\(8),
	datab => \ROM|ALT_INV_memROM~6_combout\,
	datac => \ROM|ALT_INV_memROM~10_combout\,
	combout => \ROM|memROM~11_combout\);

\CPU|INSTR|END_RETORNO|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|INSTR|SOMA_CONST|Add0~1_sumout\,
	ena => \CPU|DECODER|sinais_controle~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|INSTR|END_RETORNO|DOUT\(0));

\CPU|INSTR|MUX2|MUX_OUT[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|INSTR|MUX2|MUX_OUT[0]~0_combout\ = ( \CPU|INSTR|END_RETORNO|DOUT\(0) & ( (!\CPU|INSTR|MUX2|Equal2~0_combout\ & (((\CPU|INSTR|SOMA_CONST|Add0~1_sumout\)))) # (\CPU|INSTR|MUX2|Equal2~0_combout\ & (((!\CPU|INSTR|MUX2|Equal1~0_combout\)) # 
-- (\ROM|memROM~11_combout\))) ) ) # ( !\CPU|INSTR|END_RETORNO|DOUT\(0) & ( (!\CPU|INSTR|MUX2|Equal2~0_combout\ & (((\CPU|INSTR|SOMA_CONST|Add0~1_sumout\)))) # (\CPU|INSTR|MUX2|Equal2~0_combout\ & (\ROM|memROM~11_combout\ & 
-- (\CPU|INSTR|MUX2|Equal1~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111001101001100011111110100000001110011010011000111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~11_combout\,
	datab => \CPU|INSTR|MUX2|ALT_INV_Equal2~0_combout\,
	datac => \CPU|INSTR|MUX2|ALT_INV_Equal1~0_combout\,
	datad => \CPU|INSTR|SOMA_CONST|ALT_INV_Add0~1_sumout\,
	datae => \CPU|INSTR|END_RETORNO|ALT_INV_DOUT\(0),
	combout => \CPU|INSTR|MUX2|MUX_OUT[0]~0_combout\);

\CPU|INSTR|PC|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|INSTR|MUX2|MUX_OUT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|INSTR|PC|DOUT\(0));

\ROM|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~5_combout\ = ( !\CPU|INSTR|PC|DOUT\(2) & ( \ROM|memROM~0_combout\ & ( (!\CPU|INSTR|PC|DOUT\(0) & (!\CPU|INSTR|PC|DOUT\(1) & (\CPU|INSTR|PC|DOUT\(5) & !\CPU|INSTR|PC|DOUT\(3)))) # (\CPU|INSTR|PC|DOUT\(0) & (\CPU|INSTR|PC|DOUT\(1) & 
-- (!\CPU|INSTR|PC|DOUT\(5) & \CPU|INSTR|PC|DOUT\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001000000100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|PC|ALT_INV_DOUT\(0),
	datab => \CPU|INSTR|PC|ALT_INV_DOUT\(1),
	datac => \CPU|INSTR|PC|ALT_INV_DOUT\(5),
	datad => \CPU|INSTR|PC|ALT_INV_DOUT\(3),
	datae => \CPU|INSTR|PC|ALT_INV_DOUT\(2),
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \ROM|memROM~5_combout\);

\CPU|INSTR|END_RETORNO|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|INSTR|SOMA_CONST|Add0~29_sumout\,
	ena => \CPU|DECODER|sinais_controle~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|INSTR|END_RETORNO|DOUT\(2));

\CPU|INSTR|MUX2|MUX_OUT[2]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|INSTR|MUX2|MUX_OUT[2]~7_combout\ = ( \CPU|INSTR|END_RETORNO|DOUT\(2) & ( (!\CPU|INSTR|MUX2|Equal2~0_combout\ & (((\CPU|INSTR|SOMA_CONST|Add0~29_sumout\)))) # (\CPU|INSTR|MUX2|Equal2~0_combout\ & (((!\CPU|INSTR|MUX2|Equal1~0_combout\)) # 
-- (\ROM|memROM~5_combout\))) ) ) # ( !\CPU|INSTR|END_RETORNO|DOUT\(2) & ( (!\CPU|INSTR|MUX2|Equal2~0_combout\ & (((\CPU|INSTR|SOMA_CONST|Add0~29_sumout\)))) # (\CPU|INSTR|MUX2|Equal2~0_combout\ & (\ROM|memROM~5_combout\ & 
-- ((\CPU|INSTR|MUX2|Equal1~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000011101001111110001110100001100000111010011111100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~5_combout\,
	datab => \CPU|INSTR|MUX2|ALT_INV_Equal2~0_combout\,
	datac => \CPU|INSTR|SOMA_CONST|ALT_INV_Add0~29_sumout\,
	datad => \CPU|INSTR|MUX2|ALT_INV_Equal1~0_combout\,
	datae => \CPU|INSTR|END_RETORNO|ALT_INV_DOUT\(2),
	combout => \CPU|INSTR|MUX2|MUX_OUT[2]~7_combout\);

\CPU|INSTR|PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|INSTR|MUX2|MUX_OUT[2]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|INSTR|PC|DOUT\(2));

\ROM|memROM~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~16_combout\ = (!\CPU|INSTR|PC|DOUT\(2) & (!\CPU|INSTR|PC|DOUT\(8) & (\ROM|memROM~6_combout\ & \ROM|memROM~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000100000000000000010000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|PC|ALT_INV_DOUT\(2),
	datab => \CPU|INSTR|PC|ALT_INV_DOUT\(8),
	datac => \ROM|ALT_INV_memROM~6_combout\,
	datad => \ROM|ALT_INV_memROM~15_combout\,
	combout => \ROM|memROM~16_combout\);

\CPU|INSTR|END_RETORNO|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|INSTR|SOMA_CONST|Add0~33_sumout\,
	ena => \CPU|DECODER|sinais_controle~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|INSTR|END_RETORNO|DOUT\(3));

\CPU|INSTR|MUX2|MUX_OUT[3]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|INSTR|MUX2|MUX_OUT[3]~8_combout\ = ( \CPU|INSTR|END_RETORNO|DOUT\(3) & ( (!\CPU|INSTR|MUX2|Equal2~0_combout\ & (((\CPU|INSTR|SOMA_CONST|Add0~33_sumout\)))) # (\CPU|INSTR|MUX2|Equal2~0_combout\ & (((!\CPU|INSTR|MUX2|Equal1~0_combout\)) # 
-- (\ROM|memROM~16_combout\))) ) ) # ( !\CPU|INSTR|END_RETORNO|DOUT\(3) & ( (!\CPU|INSTR|MUX2|Equal2~0_combout\ & (((\CPU|INSTR|SOMA_CONST|Add0~33_sumout\)))) # (\CPU|INSTR|MUX2|Equal2~0_combout\ & (\ROM|memROM~16_combout\ & 
-- (\CPU|INSTR|MUX2|Equal1~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111001101001100011111110100000001110011010011000111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~16_combout\,
	datab => \CPU|INSTR|MUX2|ALT_INV_Equal2~0_combout\,
	datac => \CPU|INSTR|MUX2|ALT_INV_Equal1~0_combout\,
	datad => \CPU|INSTR|SOMA_CONST|ALT_INV_Add0~33_sumout\,
	datae => \CPU|INSTR|END_RETORNO|ALT_INV_DOUT\(3),
	combout => \CPU|INSTR|MUX2|MUX_OUT[3]~8_combout\);

\CPU|INSTR|PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|INSTR|MUX2|MUX_OUT[3]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|INSTR|PC|DOUT\(3));

\ROM|memROM~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~18_combout\ = (!\CPU|INSTR|PC|DOUT\(3) & (\ROM|memROM~0_combout\ & \ROM|memROM~8_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|PC|ALT_INV_DOUT\(3),
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \ROM|ALT_INV_memROM~8_combout\,
	combout => \ROM|memROM~18_combout\);

\CPU|INSTR|SOMA_CONST|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|INSTR|SOMA_CONST|Add0~5_sumout\ = SUM(( \CPU|INSTR|PC|DOUT\(8) ) + ( GND ) + ( \CPU|INSTR|SOMA_CONST|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|INSTR|PC|ALT_INV_DOUT\(8),
	cin => \CPU|INSTR|SOMA_CONST|Add0~10\,
	sumout => \CPU|INSTR|SOMA_CONST|Add0~5_sumout\);

\CPU|INSTR|END_RETORNO|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|INSTR|SOMA_CONST|Add0~5_sumout\,
	ena => \CPU|DECODER|sinais_controle~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|INSTR|END_RETORNO|DOUT\(8));

\CPU|INSTR|MUX2|MUX_OUT[8]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|INSTR|MUX2|MUX_OUT[8]~1_combout\ = ( \CPU|INSTR|END_RETORNO|DOUT\(8) & ( (!\CPU|INSTR|MUX2|Equal2~0_combout\ & (((\CPU|INSTR|SOMA_CONST|Add0~5_sumout\)))) # (\CPU|INSTR|MUX2|Equal2~0_combout\ & (((!\CPU|INSTR|MUX2|Equal1~0_combout\)) # 
-- (\ROM|memROM~18_combout\))) ) ) # ( !\CPU|INSTR|END_RETORNO|DOUT\(8) & ( (!\CPU|INSTR|MUX2|Equal2~0_combout\ & (((\CPU|INSTR|SOMA_CONST|Add0~5_sumout\)))) # (\CPU|INSTR|MUX2|Equal2~0_combout\ & (\ROM|memROM~18_combout\ & 
-- (\CPU|INSTR|MUX2|Equal1~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111001101001100011111110100000001110011010011000111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~18_combout\,
	datab => \CPU|INSTR|MUX2|ALT_INV_Equal2~0_combout\,
	datac => \CPU|INSTR|MUX2|ALT_INV_Equal1~0_combout\,
	datad => \CPU|INSTR|SOMA_CONST|ALT_INV_Add0~5_sumout\,
	datae => \CPU|INSTR|END_RETORNO|ALT_INV_DOUT\(8),
	combout => \CPU|INSTR|MUX2|MUX_OUT[8]~1_combout\);

\CPU|INSTR|PC|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|INSTR|MUX2|MUX_OUT[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|INSTR|PC|DOUT\(8));

\CPU|ULA1|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[0]~0_combout\ = ( \CPU|DECODER|OP_ULA[1]~0_combout\ & ( (!\CPU|DECODER|HAB_A~0_combout\ & ((\READ_BUS[0]~1_combout\))) # (\CPU|DECODER|HAB_A~0_combout\ & (\ROM|memROM~11_combout\)) ) ) # ( !\CPU|DECODER|OP_ULA[1]~0_combout\ & ( 
-- \CPU|ULA1|Add1~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111001101010011010100000000111111110011010100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~11_combout\,
	datab => \ALT_INV_READ_BUS[0]~1_combout\,
	datac => \CPU|DECODER|ALT_INV_HAB_A~0_combout\,
	datad => \CPU|ULA1|ALT_INV_Add1~1_sumout\,
	datae => \CPU|DECODER|ALT_INV_OP_ULA[1]~0_combout\,
	combout => \CPU|ULA1|saida[0]~0_combout\);

\CPU|REG_A|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~1_sumout\,
	asdata => \CPU|ULA1|saida[0]~0_combout\,
	sload => \CPU|DECODER|OP_ULA[0]~1_combout\,
	ena => \CPU|DECODER|HAB_A~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_A|DOUT\(0));

\ENABLE_LEDR~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ENABLE_LEDR~0_combout\ = ( \ROM|memROM~8_combout\ & ( !\ROM|memROM~9_combout\ & ( (!\CPU|INSTR|PC|DOUT\(3) & (!\CPU|INSTR|PC|DOUT\(8) & (\ROM|memROM~6_combout\ & !\ROM|memROM~7_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|INSTR|PC|ALT_INV_DOUT\(3),
	datab => \CPU|INSTR|PC|ALT_INV_DOUT\(8),
	datac => \ROM|ALT_INV_memROM~6_combout\,
	datad => \ROM|ALT_INV_memROM~7_combout\,
	datae => \ROM|ALT_INV_memROM~8_combout\,
	dataf => \ROM|ALT_INV_memROM~9_combout\,
	combout => \ENABLE_LEDR~0_combout\);

\ENABLE_HEX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ENABLE_HEX[0]~0_combout\ = ( \ROM|memROM~12_combout\ & ( !\ROM|memROM~13_combout\ & ( (\CPU|DECODER|Equal5~0_combout\ & (!\ROM|memROM~5_combout\ & (\ENABLE_LEDR~0_combout\ & !\ROM|memROM~11_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal5~0_combout\,
	datab => \ROM|ALT_INV_memROM~5_combout\,
	datac => \ALT_INV_ENABLE_LEDR~0_combout\,
	datad => \ROM|ALT_INV_memROM~11_combout\,
	datae => \ROM|ALT_INV_memROM~12_combout\,
	dataf => \ROM|ALT_INV_memROM~13_combout\,
	combout => \ENABLE_HEX[0]~0_combout\);

\HEX0_DECODER|REG_4bits|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(0),
	ena => \ENABLE_HEX[0]~0_combout\,
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
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(3),
	ena => \ENABLE_HEX[0]~0_combout\,
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
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(1),
	ena => \ENABLE_HEX[0]~0_combout\,
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
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(2),
	ena => \ENABLE_HEX[0]~0_combout\,
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

\ENABLE_HEX[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ENABLE_HEX[1]~1_combout\ = ( \ROM|memROM~12_combout\ & ( !\ROM|memROM~13_combout\ & ( (\CPU|DECODER|Equal5~0_combout\ & (!\ROM|memROM~5_combout\ & (\ENABLE_LEDR~0_combout\ & \ROM|memROM~11_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal5~0_combout\,
	datab => \ROM|ALT_INV_memROM~5_combout\,
	datac => \ALT_INV_ENABLE_LEDR~0_combout\,
	datad => \ROM|ALT_INV_memROM~11_combout\,
	datae => \ROM|ALT_INV_memROM~12_combout\,
	dataf => \ROM|ALT_INV_memROM~13_combout\,
	combout => \ENABLE_HEX[1]~1_combout\);

\HEX1_DECODER|REG_4bits|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(0),
	ena => \ENABLE_HEX[1]~1_combout\,
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
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(3),
	ena => \ENABLE_HEX[1]~1_combout\,
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
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(1),
	ena => \ENABLE_HEX[1]~1_combout\,
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
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(2),
	ena => \ENABLE_HEX[1]~1_combout\,
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

\ENABLE_HEX[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ENABLE_HEX[2]~2_combout\ = ( \ROM|memROM~12_combout\ & ( \ROM|memROM~13_combout\ & ( (\CPU|DECODER|Equal5~0_combout\ & (!\ROM|memROM~5_combout\ & (\ENABLE_LEDR~0_combout\ & !\ROM|memROM~11_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal5~0_combout\,
	datab => \ROM|ALT_INV_memROM~5_combout\,
	datac => \ALT_INV_ENABLE_LEDR~0_combout\,
	datad => \ROM|ALT_INV_memROM~11_combout\,
	datae => \ROM|ALT_INV_memROM~12_combout\,
	dataf => \ROM|ALT_INV_memROM~13_combout\,
	combout => \ENABLE_HEX[2]~2_combout\);

\HEX2_DECODER|REG_4bits|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(0),
	ena => \ENABLE_HEX[2]~2_combout\,
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
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(3),
	ena => \ENABLE_HEX[2]~2_combout\,
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
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(1),
	ena => \ENABLE_HEX[2]~2_combout\,
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
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(2),
	ena => \ENABLE_HEX[2]~2_combout\,
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

\ENABLE_HEX[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ENABLE_HEX[3]~3_combout\ = ( \ROM|memROM~12_combout\ & ( \ROM|memROM~13_combout\ & ( (\CPU|DECODER|Equal5~0_combout\ & (!\ROM|memROM~5_combout\ & (\ENABLE_LEDR~0_combout\ & \ROM|memROM~11_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal5~0_combout\,
	datab => \ROM|ALT_INV_memROM~5_combout\,
	datac => \ALT_INV_ENABLE_LEDR~0_combout\,
	datad => \ROM|ALT_INV_memROM~11_combout\,
	datae => \ROM|ALT_INV_memROM~12_combout\,
	dataf => \ROM|ALT_INV_memROM~13_combout\,
	combout => \ENABLE_HEX[3]~3_combout\);

\HEX3_DECODER|REG_4bits|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(0),
	ena => \ENABLE_HEX[3]~3_combout\,
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
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(3),
	ena => \ENABLE_HEX[3]~3_combout\,
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
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(1),
	ena => \ENABLE_HEX[3]~3_combout\,
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
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(2),
	ena => \ENABLE_HEX[3]~3_combout\,
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

\ENABLE_HEX[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ENABLE_HEX[4]~4_combout\ = ( \ROM|memROM~12_combout\ & ( !\ROM|memROM~13_combout\ & ( (\CPU|DECODER|Equal5~0_combout\ & (\ROM|memROM~5_combout\ & (\ENABLE_LEDR~0_combout\ & !\ROM|memROM~11_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal5~0_combout\,
	datab => \ROM|ALT_INV_memROM~5_combout\,
	datac => \ALT_INV_ENABLE_LEDR~0_combout\,
	datad => \ROM|ALT_INV_memROM~11_combout\,
	datae => \ROM|ALT_INV_memROM~12_combout\,
	dataf => \ROM|ALT_INV_memROM~13_combout\,
	combout => \ENABLE_HEX[4]~4_combout\);

\HEX4_DECODER|REG_4bits|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(0),
	ena => \ENABLE_HEX[4]~4_combout\,
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
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(3),
	ena => \ENABLE_HEX[4]~4_combout\,
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
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(1),
	ena => \ENABLE_HEX[4]~4_combout\,
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
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(2),
	ena => \ENABLE_HEX[4]~4_combout\,
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
-- ENABLE_HEX(5) = ( \ROM|memROM~12_combout\ & ( !\ROM|memROM~13_combout\ & ( (\CPU|DECODER|Equal5~0_combout\ & (\ROM|memROM~5_combout\ & (\ENABLE_LEDR~0_combout\ & \ROM|memROM~11_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal5~0_combout\,
	datab => \ROM|ALT_INV_memROM~5_combout\,
	datac => \ALT_INV_ENABLE_LEDR~0_combout\,
	datad => \ROM|ALT_INV_memROM~11_combout\,
	datae => \ROM|ALT_INV_memROM~12_combout\,
	dataf => \ROM|ALT_INV_memROM~13_combout\,
	combout => ENABLE_HEX(5));

\HEX5_DECODER|REG_4bits|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
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
	clk => \CLOCK_50~input_o\,
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
	clk => \CLOCK_50~input_o\,
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
	clk => \CLOCK_50~input_o\,
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

\ENABLE_LEDR~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ENABLE_LEDR~1_combout\ = ( !\ROM|memROM~12_combout\ & ( !\ROM|memROM~13_combout\ & ( (\CPU|DECODER|Equal5~0_combout\ & (!\ROM|memROM~5_combout\ & (\ENABLE_LEDR~0_combout\ & !\ROM|memROM~11_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal5~0_combout\,
	datab => \ROM|ALT_INV_memROM~5_combout\,
	datac => \ALT_INV_ENABLE_LEDR~0_combout\,
	datad => \ROM|ALT_INV_memROM~11_combout\,
	datae => \ROM|ALT_INV_memROM~12_combout\,
	dataf => \ROM|ALT_INV_memROM~13_combout\,
	combout => \ENABLE_LEDR~1_combout\);

\LED_R|REG_8bits|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(0),
	ena => \ENABLE_LEDR~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED_R|REG_8bits|DOUT\(0));

\LED_R|REG_8bits|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(1),
	ena => \ENABLE_LEDR~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED_R|REG_8bits|DOUT\(1));

\LED_R|REG_8bits|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(2),
	ena => \ENABLE_LEDR~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED_R|REG_8bits|DOUT\(2));

\LED_R|REG_8bits|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(3),
	ena => \ENABLE_LEDR~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED_R|REG_8bits|DOUT\(3));

\LED_R|REG_8bits|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(4),
	ena => \ENABLE_LEDR~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED_R|REG_8bits|DOUT\(4));

\LED_R|REG_8bits|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(5),
	ena => \ENABLE_LEDR~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED_R|REG_8bits|DOUT\(5));

\LED_R|REG_8bits|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(6),
	ena => \ENABLE_LEDR~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED_R|REG_8bits|DOUT\(6));

\LED_R|REG_8bits|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_A|DOUT\(7),
	ena => \ENABLE_LEDR~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED_R|REG_8bits|DOUT\(7));

\ENABLE_LEDR~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ENABLE_LEDR~2_combout\ = (\CPU|DECODER|Equal5~0_combout\ & (!\ROM|memROM~5_combout\ & \ENABLE_LEDR~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal5~0_combout\,
	datab => \ROM|ALT_INV_memROM~5_combout\,
	datac => \ALT_INV_ENABLE_LEDR~0_combout\,
	combout => \ENABLE_LEDR~2_combout\);

\LED8|FLIPS|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LED8|FLIPS|DOUT~0_combout\ = ( \ROM|memROM~12_combout\ & ( \ROM|memROM~13_combout\ & ( \LED8|FLIPS|DOUT~q\ ) ) ) # ( !\ROM|memROM~12_combout\ & ( \ROM|memROM~13_combout\ & ( \LED8|FLIPS|DOUT~q\ ) ) ) # ( \ROM|memROM~12_combout\ & ( 
-- !\ROM|memROM~13_combout\ & ( \LED8|FLIPS|DOUT~q\ ) ) ) # ( !\ROM|memROM~12_combout\ & ( !\ROM|memROM~13_combout\ & ( (!\ENABLE_LEDR~2_combout\ & (\LED8|FLIPS|DOUT~q\)) # (\ENABLE_LEDR~2_combout\ & ((!\ROM|memROM~11_combout\ & (\LED8|FLIPS|DOUT~q\)) # 
-- (\ROM|memROM~11_combout\ & ((\CPU|REG_A|DOUT\(0)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010011010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LED8|FLIPS|ALT_INV_DOUT~q\,
	datab => \CPU|REG_A|ALT_INV_DOUT\(0),
	datac => \ALT_INV_ENABLE_LEDR~2_combout\,
	datad => \ROM|ALT_INV_memROM~11_combout\,
	datae => \ROM|ALT_INV_memROM~12_combout\,
	dataf => \ROM|ALT_INV_memROM~13_combout\,
	combout => \LED8|FLIPS|DOUT~0_combout\);

\LED8|FLIPS|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \LED8|FLIPS|DOUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED8|FLIPS|DOUT~q\);

\LED9|FLIPS|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LED9|FLIPS|DOUT~0_combout\ = ( \ROM|memROM~12_combout\ & ( \ROM|memROM~13_combout\ & ( \LED9|FLIPS|DOUT~q\ ) ) ) # ( !\ROM|memROM~12_combout\ & ( \ROM|memROM~13_combout\ & ( (!\ENABLE_LEDR~2_combout\ & (\LED9|FLIPS|DOUT~q\)) # (\ENABLE_LEDR~2_combout\ & 
-- ((!\ROM|memROM~11_combout\ & ((\CPU|REG_A|DOUT\(0)))) # (\ROM|memROM~11_combout\ & (\LED9|FLIPS|DOUT~q\)))) ) ) ) # ( \ROM|memROM~12_combout\ & ( !\ROM|memROM~13_combout\ & ( \LED9|FLIPS|DOUT~q\ ) ) ) # ( !\ROM|memROM~12_combout\ & ( 
-- !\ROM|memROM~13_combout\ & ( \LED9|FLIPS|DOUT~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010011010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LED9|FLIPS|ALT_INV_DOUT~q\,
	datab => \CPU|REG_A|ALT_INV_DOUT\(0),
	datac => \ALT_INV_ENABLE_LEDR~2_combout\,
	datad => \ROM|ALT_INV_memROM~11_combout\,
	datae => \ROM|ALT_INV_memROM~12_combout\,
	dataf => \ROM|ALT_INV_memROM~13_combout\,
	combout => \LED9|FLIPS|DOUT~0_combout\);

\LED9|FLIPS|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \LED9|FLIPS|DOUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED9|FLIPS|DOUT~q\);

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

ww_LEDR(0) <= \LEDR[0]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDR(4) <= \LEDR[4]~output_o\;

ww_LEDR(5) <= \LEDR[5]~output_o\;

ww_LEDR(6) <= \LEDR[6]~output_o\;

ww_LEDR(7) <= \LEDR[7]~output_o\;

ww_LEDR(8) <= \LEDR[8]~output_o\;

ww_LEDR(9) <= \LEDR[9]~output_o\;
END structure;


