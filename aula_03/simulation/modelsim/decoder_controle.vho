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

-- DATE "09/12/2021 19:43:53"

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
	SW : IN std_logic_vector(9 DOWNTO 0);
	LEDR : OUT std_logic_vector(9 DOWNTO 0)
	);
END computador;

-- Design Ports Information
-- CLOCK_50	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[8]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[9]	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_SW : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(9 DOWNTO 0);
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \KEY[0]~inputCLKENA0_outclk\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \PC|DOUT[0]~3_combout\ : std_logic;
SIGNAL \PC|DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|DOUT[1]~0_combout\ : std_logic;
SIGNAL \PC|DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|DOUT[2]~1_combout\ : std_logic;
SIGNAL \PC|DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|DOUT[3]~2_combout\ : std_logic;
SIGNAL \ROM|memROM~1_combout\ : std_logic;
SIGNAL \ROM|memROM~0_combout\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \ULA1|Add0~18_cout\ : std_logic;
SIGNAL \ULA1|Add0~1_sumout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \DECODER|Equal0~0_combout\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \ULA1|Add0~2\ : std_logic;
SIGNAL \ULA1|Add0~5_sumout\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \ULA1|Add0~6\ : std_logic;
SIGNAL \ULA1|Add0~9_sumout\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \ULA1|Add0~10\ : std_logic;
SIGNAL \ULA1|Add0~13_sumout\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \DECODER|OP_ULA~0_combout\ : std_logic;
SIGNAL \REG_A|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \PC|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \REG_A|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \PC|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ROM|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \DECODER|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_SW[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[6]~input_o\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
ww_SW <= SW;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\REG_A|ALT_INV_DOUT\(2) <= NOT \REG_A|DOUT\(2);
\REG_A|ALT_INV_DOUT\(1) <= NOT \REG_A|DOUT\(1);
\REG_A|ALT_INV_DOUT\(0) <= NOT \REG_A|DOUT\(0);
\REG_A|ALT_INV_DOUT\(3) <= NOT \REG_A|DOUT\(3);
\PC|ALT_INV_DOUT\(0) <= NOT \PC|DOUT\(0);
\PC|ALT_INV_DOUT\(2) <= NOT \PC|DOUT\(2);
\PC|ALT_INV_DOUT\(1) <= NOT \PC|DOUT\(1);
\PC|ALT_INV_DOUT\(3) <= NOT \PC|DOUT\(3);
\ROM|ALT_INV_memROM~0_combout\ <= NOT \ROM|memROM~0_combout\;
\ROM|ALT_INV_memROM~1_combout\ <= NOT \ROM|memROM~1_combout\;
\DECODER|ALT_INV_Equal0~0_combout\ <= NOT \DECODER|Equal0~0_combout\;
\PC|ALT_INV_DOUT[2]~DUPLICATE_q\ <= NOT \PC|DOUT[2]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[1]~DUPLICATE_q\ <= NOT \PC|DOUT[1]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[0]~DUPLICATE_q\ <= NOT \PC|DOUT[0]~DUPLICATE_q\;
\ALT_INV_SW[9]~input_o\ <= NOT \SW[9]~input_o\;
\ALT_INV_SW[8]~input_o\ <= NOT \SW[8]~input_o\;
\ALT_INV_SW[7]~input_o\ <= NOT \SW[7]~input_o\;
\ALT_INV_SW[6]~input_o\ <= NOT \SW[6]~input_o\;

-- Location: IOOBUF_X54_Y19_N22
\LEDR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_A|DOUT\(0),
	devoe => ww_devoe,
	o => ww_LEDR(0));

-- Location: IOOBUF_X0_Y20_N5
\LEDR[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_A|DOUT\(1),
	devoe => ww_devoe,
	o => ww_LEDR(1));

-- Location: IOOBUF_X0_Y21_N5
\LEDR[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_A|DOUT\(2),
	devoe => ww_devoe,
	o => ww_LEDR(2));

-- Location: IOOBUF_X0_Y20_N39
\LEDR[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_A|DOUT\(3),
	devoe => ww_devoe,
	o => ww_LEDR(3));

-- Location: IOOBUF_X50_Y45_N53
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

-- Location: IOOBUF_X54_Y20_N56
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

-- Location: IOOBUF_X0_Y20_N56
\LEDR[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER|OP_ULA~0_combout\,
	devoe => ww_devoe,
	o => ww_LEDR(6));

-- Location: IOOBUF_X0_Y21_N56
\LEDR[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER|ALT_INV_Equal0~0_combout\,
	devoe => ww_devoe,
	o => ww_LEDR(7));

-- Location: IOOBUF_X0_Y21_N39
\LEDR[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER|Equal0~0_combout\,
	devoe => ww_devoe,
	o => ww_LEDR(8));

-- Location: IOOBUF_X0_Y20_N22
\LEDR[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~1_combout\,
	devoe => ww_devoe,
	o => ww_LEDR(9));

-- Location: IOIBUF_X54_Y18_N61
\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: CLKCTRL_G10
\KEY[0]~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \KEY[0]~input_o\,
	outclk => \KEY[0]~inputCLKENA0_outclk\);

-- Location: IOIBUF_X0_Y19_N38
\KEY[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

-- Location: FF_X1_Y19_N11
\PC|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \PC|DOUT[0]~3_combout\,
	clrn => \KEY[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(0));

-- Location: LABCELL_X1_Y19_N9
\PC|DOUT[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC|DOUT[0]~3_combout\ = ( !\PC|DOUT\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \PC|ALT_INV_DOUT\(0),
	combout => \PC|DOUT[0]~3_combout\);

-- Location: FF_X1_Y19_N10
\PC|DOUT[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \PC|DOUT[0]~3_combout\,
	clrn => \KEY[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[0]~DUPLICATE_q\);

-- Location: FF_X1_Y19_N52
\PC|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \PC|DOUT[1]~0_combout\,
	clrn => \KEY[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(1));

-- Location: LABCELL_X1_Y19_N51
\PC|DOUT[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC|DOUT[1]~0_combout\ = ( !\PC|DOUT\(1) & ( \PC|DOUT[0]~DUPLICATE_q\ ) ) # ( \PC|DOUT\(1) & ( !\PC|DOUT[0]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \PC|ALT_INV_DOUT\(1),
	dataf => \PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	combout => \PC|DOUT[1]~0_combout\);

-- Location: FF_X1_Y19_N53
\PC|DOUT[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \PC|DOUT[1]~0_combout\,
	clrn => \KEY[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[1]~DUPLICATE_q\);

-- Location: LABCELL_X1_Y19_N24
\PC|DOUT[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC|DOUT[2]~1_combout\ = ( \PC|DOUT\(2) & ( \PC|DOUT[1]~DUPLICATE_q\ & ( !\PC|DOUT[0]~DUPLICATE_q\ ) ) ) # ( !\PC|DOUT\(2) & ( \PC|DOUT[1]~DUPLICATE_q\ & ( \PC|DOUT[0]~DUPLICATE_q\ ) ) ) # ( \PC|DOUT\(2) & ( !\PC|DOUT[1]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100001111000011111111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datae => \PC|ALT_INV_DOUT\(2),
	dataf => \PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	combout => \PC|DOUT[2]~1_combout\);

-- Location: FF_X1_Y19_N26
\PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \PC|DOUT[2]~1_combout\,
	clrn => \KEY[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(2));

-- Location: FF_X1_Y19_N25
\PC|DOUT[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \PC|DOUT[2]~1_combout\,
	clrn => \KEY[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[2]~DUPLICATE_q\);

-- Location: LABCELL_X1_Y19_N54
\PC|DOUT[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC|DOUT[3]~2_combout\ = ( \PC|DOUT\(3) & ( \PC|DOUT[2]~DUPLICATE_q\ & ( (!\PC|DOUT[0]~DUPLICATE_q\) # (!\PC|DOUT[1]~DUPLICATE_q\) ) ) ) # ( !\PC|DOUT\(3) & ( \PC|DOUT[2]~DUPLICATE_q\ & ( (\PC|DOUT[0]~DUPLICATE_q\ & \PC|DOUT[1]~DUPLICATE_q\) ) ) ) # ( 
-- \PC|DOUT\(3) & ( !\PC|DOUT[2]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000101000001011111101011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datac => \PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datae => \PC|ALT_INV_DOUT\(3),
	dataf => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	combout => \PC|DOUT[3]~2_combout\);

-- Location: FF_X1_Y19_N56
\PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \PC|DOUT[3]~2_combout\,
	clrn => \KEY[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(3));

-- Location: LABCELL_X1_Y19_N0
\ROM|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~1_combout\ = ( !\PC|DOUT\(3) & ( \PC|DOUT[1]~DUPLICATE_q\ & ( !\PC|DOUT\(2) ) ) ) # ( !\PC|DOUT\(3) & ( !\PC|DOUT[1]~DUPLICATE_q\ & ( (\PC|DOUT\(2) & !\PC|DOUT\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000000000000000011110000111100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(0),
	datae => \PC|ALT_INV_DOUT\(3),
	dataf => \PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	combout => \ROM|memROM~1_combout\);

-- Location: LABCELL_X1_Y19_N15
\ROM|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~0_combout\ = ( !\PC|DOUT\(1) & ( \PC|DOUT\(0) & ( (!\PC|DOUT\(3) & !\PC|DOUT\(2)) ) ) ) # ( !\PC|DOUT\(1) & ( !\PC|DOUT\(0) & ( (!\PC|DOUT\(3) & \PC|DOUT\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000000000000010101010000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(3),
	datad => \PC|ALT_INV_DOUT\(2),
	datae => \PC|ALT_INV_DOUT\(1),
	dataf => \PC|ALT_INV_DOUT\(0),
	combout => \ROM|memROM~0_combout\);

-- Location: IOIBUF_X0_Y21_N21
\SW[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: LABCELL_X1_Y19_N30
\ULA1|Add0~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~18_cout\ = CARRY(( (!\ROM|memROM~1_combout\) # (\ROM|memROM~0_combout\) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \ROM|ALT_INV_memROM~1_combout\,
	cin => GND,
	cout => \ULA1|Add0~18_cout\);

-- Location: LABCELL_X1_Y19_N33
\ULA1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~1_sumout\ = SUM(( \REG_A|DOUT\(0) ) + ( !\SW[6]~input_o\ $ (((\ROM|memROM~1_combout\ & !\ROM|memROM~0_combout\))) ) + ( \ULA1|Add0~18_cout\ ))
-- \ULA1|Add0~2\ = CARRY(( \REG_A|DOUT\(0) ) + ( !\SW[6]~input_o\ $ (((\ROM|memROM~1_combout\ & !\ROM|memROM~0_combout\))) ) + ( \ULA1|Add0~18_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100001010111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datac => \ROM|ALT_INV_memROM~0_combout\,
	datad => \REG_A|ALT_INV_DOUT\(0),
	dataf => \ALT_INV_SW[6]~input_o\,
	cin => \ULA1|Add0~18_cout\,
	sumout => \ULA1|Add0~1_sumout\,
	cout => \ULA1|Add0~2\);

-- Location: IOIBUF_X0_Y18_N95
\SW[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: LABCELL_X1_Y19_N18
\DECODER|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER|Equal0~0_combout\ = ( \PC|DOUT\(0) & ( (!\PC|DOUT\(2) & !\PC|DOUT\(3)) ) ) # ( !\PC|DOUT\(0) & ( (!\PC|DOUT\(3) & (!\PC|DOUT\(2) $ (!\PC|DOUT[1]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101000000000010110100000000010101010000000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datac => \PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datad => \PC|ALT_INV_DOUT\(3),
	dataf => \PC|ALT_INV_DOUT\(0),
	combout => \DECODER|Equal0~0_combout\);

-- Location: FF_X1_Y19_N34
\REG_A|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \ULA1|Add0~1_sumout\,
	asdata => \SW[0]~input_o\,
	clrn => \DECODER|Equal0~0_combout\,
	sload => \ROM|ALT_INV_memROM~1_combout\,
	ena => \DECODER|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_A|DOUT\(0));

-- Location: IOIBUF_X0_Y18_N78
\SW[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: LABCELL_X1_Y19_N36
\ULA1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~5_sumout\ = SUM(( \REG_A|DOUT\(1) ) + ( !\SW[7]~input_o\ $ (((!\ROM|memROM~0_combout\ & \ROM|memROM~1_combout\))) ) + ( \ULA1|Add0~2\ ))
-- \ULA1|Add0~6\ = CARRY(( \REG_A|DOUT\(1) ) + ( !\SW[7]~input_o\ $ (((!\ROM|memROM~0_combout\ & \ROM|memROM~1_combout\))) ) + ( \ULA1|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011001111001100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \ROM|ALT_INV_memROM~1_combout\,
	datad => \REG_A|ALT_INV_DOUT\(1),
	dataf => \ALT_INV_SW[7]~input_o\,
	cin => \ULA1|Add0~2\,
	sumout => \ULA1|Add0~5_sumout\,
	cout => \ULA1|Add0~6\);

-- Location: IOIBUF_X0_Y19_N21
\SW[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: FF_X1_Y19_N37
\REG_A|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \ULA1|Add0~5_sumout\,
	asdata => \SW[1]~input_o\,
	clrn => \DECODER|Equal0~0_combout\,
	sload => \ROM|ALT_INV_memROM~1_combout\,
	ena => \DECODER|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_A|DOUT\(1));

-- Location: IOIBUF_X0_Y18_N44
\SW[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: LABCELL_X1_Y19_N39
\ULA1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~9_sumout\ = SUM(( \REG_A|DOUT\(2) ) + ( !\SW[8]~input_o\ $ (((\ROM|memROM~1_combout\ & !\ROM|memROM~0_combout\))) ) + ( \ULA1|Add0~6\ ))
-- \ULA1|Add0~10\ = CARRY(( \REG_A|DOUT\(2) ) + ( !\SW[8]~input_o\ $ (((\ROM|memROM~1_combout\ & !\ROM|memROM~0_combout\))) ) + ( \ULA1|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010001001011101100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datad => \REG_A|ALT_INV_DOUT\(2),
	dataf => \ALT_INV_SW[8]~input_o\,
	cin => \ULA1|Add0~6\,
	sumout => \ULA1|Add0~9_sumout\,
	cout => \ULA1|Add0~10\);

-- Location: IOIBUF_X0_Y18_N61
\SW[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: FF_X1_Y19_N40
\REG_A|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \ULA1|Add0~9_sumout\,
	asdata => \SW[2]~input_o\,
	clrn => \DECODER|Equal0~0_combout\,
	sload => \ROM|ALT_INV_memROM~1_combout\,
	ena => \DECODER|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_A|DOUT\(2));

-- Location: IOIBUF_X0_Y19_N4
\SW[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: LABCELL_X1_Y19_N42
\ULA1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~13_sumout\ = SUM(( \REG_A|DOUT\(3) ) + ( !\SW[9]~input_o\ $ (((\ROM|memROM~1_combout\ & !\ROM|memROM~0_combout\))) ) + ( \ULA1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100001010111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datac => \ROM|ALT_INV_memROM~0_combout\,
	datad => \REG_A|ALT_INV_DOUT\(3),
	dataf => \ALT_INV_SW[9]~input_o\,
	cin => \ULA1|Add0~10\,
	sumout => \ULA1|Add0~13_sumout\);

-- Location: IOIBUF_X0_Y19_N55
\SW[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: FF_X1_Y19_N44
\REG_A|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \ULA1|Add0~13_sumout\,
	asdata => \SW[3]~input_o\,
	clrn => \DECODER|Equal0~0_combout\,
	sload => \ROM|ALT_INV_memROM~1_combout\,
	ena => \DECODER|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_A|DOUT\(3));

-- Location: LABCELL_X1_Y19_N21
\DECODER|OP_ULA~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER|OP_ULA~0_combout\ = ( \ROM|memROM~1_combout\ & ( !\ROM|memROM~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM|ALT_INV_memROM~0_combout\,
	dataf => \ROM|ALT_INV_memROM~1_combout\,
	combout => \DECODER|OP_ULA~0_combout\);

-- Location: IOIBUF_X38_Y45_N35
\CLOCK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: IOIBUF_X19_Y0_N18
\KEY[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: IOIBUF_X14_Y0_N18
\KEY[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: IOIBUF_X32_Y45_N92
\SW[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: IOIBUF_X50_Y0_N1
\SW[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: LABCELL_X24_Y14_N3
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


