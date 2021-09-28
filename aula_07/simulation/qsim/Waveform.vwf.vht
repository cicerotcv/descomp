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
-- Generated on "09/28/2021 19:45:16"
                                                             
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
SIGNAL DOUT : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL HAB_ESC : STD_LOGIC;
SIGNAL HAB_LEDs : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL HAB_LEI : STD_LOGIC;
SIGNAL KEY : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL LED_R : STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL ROM_ADDR : STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL VALOR_INST : STD_LOGIC_VECTOR(12 DOWNTO 0);
COMPONENT computador
	PORT (
	CLOCK : IN STD_LOGIC;
	DOUT : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	HAB_ESC : OUT STD_LOGIC;
	HAB_LEDs : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	HAB_LEI : OUT STD_LOGIC;
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
	DOUT => DOUT,
	HAB_ESC => HAB_ESC,
	HAB_LEDs => HAB_LEDs,
	HAB_LEI => HAB_LEI,
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
	WAIT FOR 25000 ps;
	KEY(0) <= '1';
	WAIT FOR 25000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_KEY_0;
END computador_arch;
