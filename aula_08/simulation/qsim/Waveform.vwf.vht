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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "09/29/2021 16:53:19"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          computador
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY computador_vhd_vec_tst IS
END computador_vhd_vec_tst;
ARCHITECTURE computador_arch OF computador_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLOCK : STD_LOGIC;
SIGNAL DEC_ADDRS : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL DEC_BLOCKS : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL DIN : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL DOUT : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL HAB_ESC : STD_LOGIC;
SIGNAL HAB_LED8 : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL HAB_LED9 : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL HAB_LEDR : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL HAB_LEI : STD_LOGIC;
SIGNAL HEX0 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL HEX1 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL HEX2 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL HEX3 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL HEX4 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL HEX5 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL KEY : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL LED_R : STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL ROM_ADDR : STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL VALOR_INST : STD_LOGIC_VECTOR(12 DOWNTO 0);
COMPONENT computador
	PORT (
	CLOCK : IN STD_LOGIC;
	DEC_ADDRS : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	DEC_BLOCKS : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	DIN : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	DOUT : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	HAB_ESC : OUT STD_LOGIC;
	HAB_LED8 : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	HAB_LED9 : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	HAB_LEDR : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	HAB_LEI : OUT STD_LOGIC;
	HEX0 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	HEX1 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	HEX2 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	HEX3 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	HEX4 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	HEX5 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	KEY : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	LED_R : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
	ROM_ADDR : OUT STD_LOGIC_VECTOR(8 DOWNTO 0);
	VALOR_INST : OUT STD_LOGIC_VECTOR(12 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : computador
	PORT MAP (
-- list connections between master ports and signals
	CLOCK => CLOCK,
	DEC_ADDRS => DEC_ADDRS,
	DEC_BLOCKS => DEC_BLOCKS,
	DIN => DIN,
	DOUT => DOUT,
	HAB_ESC => HAB_ESC,
	HAB_LED8 => HAB_LED8,
	HAB_LED9 => HAB_LED9,
	HAB_LEDR => HAB_LEDR,
	HAB_LEI => HAB_LEI,
	HEX0 => HEX0,
	HEX1 => HEX1,
	HEX2 => HEX2,
	HEX3 => HEX3,
	HEX4 => HEX4,
	HEX5 => HEX5,
	KEY => KEY,
	LED_R => LED_R,
	ROM_ADDR => ROM_ADDR,
	VALOR_INST => VALOR_INST
	);

-- KEY[0]
t_prcs_KEY_0: PROCESS
BEGIN
LOOP
	KEY(0) <= '0';
	WAIT FOR 5000 ps;
	KEY(0) <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_KEY_0;
END computador_arch;
