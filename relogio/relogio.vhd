library ieee;
use ieee.std_logic_1164.all;

-- Mapa de blocos:
	--	bloco 0: 0   ~ 63		(0x000 ~ 0x03f)
	--	bloco 1: 64  ~ 127	(0x040 ~ 0x07f)
	--	bloco 2: 128 ~ 191	(0x080 ~ 0x0bf)
	--	bloco 3: 192 ~ 255	(0x0c0 ~ 0x0ff)
	--	bloco 4: 256 ~ 319	(0x100 ~ 0x13f)
	--	bloco 5: 320 ~ 383	(0x140 ~ 0x17f)
	--	bloco 6: 384 ~ 447	(0x180 ~ 0x1bf)
	--	bloco 6: 448 ~ 511	(0x1c0 ~ 0x1ff)
	
	
-- Mapa de perifericos	
	-- LEDs (bloco 4 primeria metade A5 = 0):
		-- LED 0 ~ 7: 256 (0x100)
		-- LED 8		: 257 (0x101)
		-- LED 9		: 258 (0x102)
	
		-- 101000000
	
	-- 7seg (bloco 4 segunda metade A5 = 1):
		-- HEX 0: 288 (0x120)
		-- HEX 1: 289 (0x121)
		-- HEX 2: 290 (0x122)
		-- HEX 3: 291 (0x123)
		-- HEX 4: 292 (0x124)
		-- HEX 5: 293 (0x125)
	
	-- Chaves (bloco 5 primeira metade A5 = 0):
		-- SW 0 ~ 7	: 320 (0x140) 0101 0101
		-- SW 8		: 321 (0x141) 0000 0001
		-- SW 9		: 322 (0x142) 0000 0001
		
	-- Botoes (bloco 5 segunda metade A5 = 1)
		-- KEY 0		: 352 (0x160)
		-- KEY 1		: 353 (0x161)
		-- KEY 2		: 354 (0x162)
		-- KEY 3		: 355 (0x163)
		-- FPGA RST : 356 (0x164)

entity relogio is
	generic (
		larguraDados 	: natural := 8;
		simulacao 		: boolean := TRUE -- para gravar na placa, altere de TRUE para FALSE
	);
	port   (
		CLOCK_50   	: in 	std_logic;
		KEY			: in 	std_logic_vector	(3 downto 0);
		FPGA_RESET_N: in 	std_logic;
		SW				: in	std_logic_vector 	(9 downto 0);
		HEX0			: out std_logic_vector	(6 downto 0);
		HEX1			: out std_logic_vector	(6 downto 0);
		HEX2			: out std_logic_vector	(6 downto 0);
		HEX3			: out std_logic_vector	(6 downto 0);
		HEX4			: out std_logic_vector	(6 downto 0);
		HEX5			: out std_logic_vector	(6 downto 0);
		LEDR			: out std_logic_vector	(9 downto 0)
--		VALOR_INST	: out std_logic_vector	(12 downto 0); 		-- debug
--		DOUT			: out std_logic_vector	(7 downto 0); 			-- debug
--		DIN			: out std_logic_vector	(7 downto 0);			-- debug
--		HAB_LEI		: out std_logic; 										-- debug
--		HAB_ESC		: out std_logic; 										-- debug
--		HAB_LEDR 	: out std_logic_vector 	(2 downto 0); 			-- debug
--		HAB_LED8 	: out std_logic_vector 	(2 downto 0); 			-- debug
--		HAB_LED9 	: out std_logic_vector 	(2 downto 0); 			-- debug
--		ROM_ADDR 	: out std_logic_vector	(8 downto 0); 			-- debug
--		DEC_BLOCKS	: out std_logic_vector	(7 downto 0);			-- debug
--		
--		BARRAMENTO_LEITURA : out std_logic_vector (7 downto 0);	-- debug
--		DEC_ADDRS	: out std_logic_vector	(7 downto 0)			-- debug
		
	);
end entity;


architecture arquitetura of relogio is
	
-- Faltam alguns sinais:
	signal CLK									: std_logic;
	signal RST_PC								: std_logic;
	signal ENABLE_WRITE						: std_logic;
	signal ENABLE_READ						: std_logic;
	signal RAM_OUT								: std_logic_vector (7 downto 0);
	signal END_ROM								: std_logic_vector (8 downto 0);
	signal DATA_OUT							: std_logic_vector (7 downto 0);
	signal DATA_ADDRESS						: std_logic_vector (8 downto 0);
	signal ROM_OUT 							: std_logic_vector (14 downto 0);
	signal DEC_ADDR_OUT 						: std_logic_vector (7 downto 0);
	signal DEC_BLOCKS_OUT					: std_logic_vector (7 downto 0);
	signal READ_BUS							: std_logic_vector (7 downto 0);
	signal ENABLE_LEDR						: std_logic;
	signal ENABLE_LED8						: std_logic;
	signal ENABLE_LED9						: std_logic;
	signal ENABLE_HEX							: std_logic_vector (5 downto 0);
	signal ENABLE_SWR							: std_logic;
	signal ENABLE_SW8							: std_logic;
	signal ENABLE_SW9							: std_logic;
	signal ENABLE_KEY0						: std_logic;
	signal ENABLE_KEY1						: std_logic;
	signal ENABLE_KEY2						: std_logic;
	signal ENABLE_KEY3						: std_logic;
	signal ENABLE_FPGA_RST					: std_logic;
	signal A5									: std_logic;
	signal ADDR_510							: std_logic;
	signal ADDR_511							: std_logic;
	signal ED_OUT_KEY0						: std_logic;
	signal ED_OUT_KEY1						: std_logic;
	signal KEY0_DEBOUNCER_OUT				: std_logic;
	signal KEY1_DEBOUNCER_OUT				: std_logic;
	
	
begin

-- Para simular, fica mais simples tirar o edgeDetector
-- gravar:  if simulacao generate
	CLK <= CLOCK_50; 

detectorSub0: work.edgeDetector(bordaSubida)
	port map (
		clk => CLK, 
		entrada => (not KEY(0)), 
		saida => ED_OUT_KEY0
	);
detectorSub1: work.edgeDetector(bordaSubida)
	port map (
		clk => CLK, 
		entrada => (not KEY(1)), 
		saida => ED_OUT_KEY1
	);



RST_PC <= '0';

--- debug purpose only ---
--VALOR_INST <= ROM_OUT;
--DOUT 	<= DATA_OUT;
--DIN 	<= RAM_OUT;
--HAB_ESC <= ENABLE_WRITE;
--HAB_LEI <= ENABLE_READ;
--ROM_ADDR <= END_ROM;
--BARRAMENTO_LEITURA <= READ_BUS;
--------------------------

CPU:
	entity work.CPU
	port map(
		CLK 					=> CLK,
		RESET    			=> RST_PC,
		INSTRUCTION_IN 	=> ROM_OUT,
		DATA_IN				=> READ_BUS,
		READ_OUT				=> ENABLE_READ,
		WRITE_OUT			=> ENABLE_WRITE,
		ROM_ADDRESS 		=> END_ROM,					-- saida PC
		DATA_OUT       	=> DATA_OUT,    			-- saida REG_A
		DATA_ADDRESS   	=> DATA_ADDRESS			-- instrucoes decodificador
	);
	
RAM:	
	entity work.memoriaRAM	generic map(dataWidth => 8, addrWidth => 6)
	port map (
		addr     	=> DATA_ADDRESS(5 downto 0), 	-- largura 6
		we				=> ENABLE_WRITE,
		re   			=> ENABLE_READ,
		habilita 	=> DEC_BLOCKS_OUT(0),
		clk      	=> CLK,
		dado_in  	=> DATA_OUT,
		dado_out 	=> READ_BUS
	);
			
ROM:
	entity work.memoriaROM   				generic map(dataWidth => 15, addrWidth => 9)
	port map (
		Endereco 	=> END_ROM,			-- endereço da instrução	[ 8...0]
		Dado 			=> ROM_OUT 			-- largura 13
	);

DECODER_BLOCKS:
	entity work.decoder3x8
	port map (
		IN_E			=> DATA_ADDRESS(8 downto 6),
		SAIDA			=> DEC_BLOCKS_OUT
	);
	
DECODER_ADDR:
	entity work.decoder3x8
	port map (
		IN_E			=> DATA_ADDRESS(2 downto 0),
		SAIDA			=> DEC_ADDR_OUT
	);


-- peripherals
A5 <= DATA_ADDRESS(5);

-- block 4
ENABLE_LEDR 		<= ENABLE_WRITE and DEC_BLOCKS_OUT(4) and DEC_ADDR_OUT(0) and not(A5);
ENABLE_LED8 		<= ENABLE_WRITE and DEC_BLOCKS_OUT(4) and DEC_ADDR_OUT(1) and not(A5);
ENABLE_LED9 		<= ENABLE_WRITE and DEC_BLOCKS_OUT(4) and DEC_ADDR_OUT(2) and not(A5);
	
ENABLE_HEX(0) 		<= ENABLE_WRITE and DEC_BLOCKS_OUT(4) and DEC_ADDR_OUT(0) and A5;
ENABLE_HEX(1) 		<= ENABLE_WRITE and DEC_BLOCKS_OUT(4) and DEC_ADDR_OUT(1) and A5;
ENABLE_HEX(2) 		<= ENABLE_WRITE and DEC_BLOCKS_OUT(4) and DEC_ADDR_OUT(2) and A5;
ENABLE_HEX(3) 		<= ENABLE_WRITE and DEC_BLOCKS_OUT(4) and DEC_ADDR_OUT(3) and A5;
ENABLE_HEX(4) 		<= ENABLE_WRITE and DEC_BLOCKS_OUT(4) and DEC_ADDR_OUT(4) and A5;
ENABLE_HEX(5) 		<= ENABLE_WRITE and DEC_BLOCKS_OUT(4) and DEC_ADDR_OUT(5) and A5;

-- block 5
ENABLE_SWR			<= ENABLE_READ	 and DEC_BLOCKS_OUT(5) and DEC_ADDR_OUT(0) and not(A5);
ENABLE_SW8			<= ENABLE_READ	 and DEC_BLOCKS_OUT(5) and DEC_ADDR_OUT(1) and not(A5);
ENABLE_SW9			<= ENABLE_READ	 and DEC_BLOCKS_OUT(5) and DEC_ADDR_OUT(2) and not(A5);

ENABLE_KEY0			<=	ENABLE_READ  and DEC_BLOCKS_OUT(5) and DEC_ADDR_OUT(0) and A5;
ENABLE_KEY1			<=	ENABLE_READ  and DEC_BLOCKS_OUT(5) and DEC_ADDR_OUT(1) and A5;
ENABLE_KEY2			<=	ENABLE_READ  and DEC_BLOCKS_OUT(5) and DEC_ADDR_OUT(2) and A5;
ENABLE_KEY3			<=	ENABLE_READ  and DEC_BLOCKS_OUT(5) and DEC_ADDR_OUT(3) and A5;
ENABLE_FPGA_RST	<=	ENABLE_READ  and DEC_BLOCKS_OUT(5) and DEC_ADDR_OUT(4) and A5;


-- debug purpose only --
--DEC_BLOCKS <= DEC_BLOCKS_OUT;
--DEC_ADDRS <= DEC_ADDR_OUT;
--
--HAB_LEDR <= ENABLE_WRITE & DEC_BLOCKS_OUT(4) & DEC_ADDR_OUT(0);
--HAB_LED8 <= ENABLE_WRITE & DEC_BLOCKS_OUT(4) & DEC_ADDR_OUT(1);
--HAB_LED9 <= ENABLE_WRITE & DEC_BLOCKS_OUT(4) & DEC_ADDR_OUT(2);
------------------------


LED_R:
	entity work.led_r generic map(DATA_WIDTH => 8)
	port map (
		IN_REGIS				=> DATA_OUT(7 downto 0),
		WRITE_ENABLE		=> ENABLE_LEDR,
		CLK					=> CLK,
		OUT_LEDs				=> LEDR(7 downto 0)
	);	

LED8:
	entity work.led_solo
	port map (
		IN_FLOPS				=> DATA_OUT(0),
		WRITE_ENABLE		=> ENABLE_LED8,
		CLK					=> CLK,
		OUT_LED				=> LEDR(8)
	);

LED9:
	entity work.led_solo
	port map (
		IN_FLOPS				=> DATA_OUT(0),
		WRITE_ENABLE		=> ENABLE_LED9,
		CLK					=> CLK,
		OUT_LED				=> LEDR(9)
	);
	
HEX0_DECODER:
	entity work.d7segHex
	port map (
		DATA_IN 	=> DATA_OUT(3 downto 0),
		ENABLE	=> ENABLE_HEX(0),
		CLK		=> CLK,
		DATA_OUT	=> HEX0
	);
	
HEX1_DECODER:
	entity work.d7segHex
	port map (
		DATA_IN 	=> DATA_OUT(3 downto 0),
		ENABLE	=> ENABLE_HEX(1),
		CLK		=> CLK,
		DATA_OUT	=> HEX1
	);

HEX2_DECODER:
	entity work.d7segHex
	port map (
		DATA_IN 	=> DATA_OUT(3 downto 0),
		ENABLE	=> ENABLE_HEX(2),
		CLK		=> CLK,
		DATA_OUT	=> HEX2
	);

HEX3_DECODER:
	entity work.d7segHex
	port map (
		DATA_IN 	=> DATA_OUT(3 downto 0),
		ENABLE	=> ENABLE_HEX(3),
		CLK		=> CLK,
		DATA_OUT	=> HEX3
	);

HEX4_DECODER:
	entity work.d7segHex
	port map (
		DATA_IN 	=> DATA_OUT(3 downto 0),
		ENABLE	=> ENABLE_HEX(4),
		CLK		=> CLK,
		DATA_OUT	=> HEX4
	);

HEX5_DECODER:
	entity work.d7segHex
	port map (
		DATA_IN 	=> DATA_OUT(3 downto 0),
		ENABLE	=> ENABLE_HEX(5),
		CLK		=> CLK,
		DATA_OUT	=> HEX5
	);

SWR:
	entity work.buffer3state generic map (DATA_WIDTH => 8)
	port map(
		INPUT 	=> SW(7 downto 0),
		ENABLE	=> ENABLE_SWR,
		OUTPUT	=> READ_BUS
	);

SW8:
	entity work.buffer3state generic map (DATA_WIDTH => 1)
	port map(
		INPUT(0)	=> SW(8),
		ENABLE	=> ENABLE_SW8,
		OUTPUT(0)=> READ_BUS(0)
	);

SW9:
	entity work.buffer3state generic map (DATA_WIDTH => 1)
	port map(
		INPUT(0)	=> SW(9),
		ENABLE	=> ENABLE_SW9,
		OUTPUT(0)=> READ_BUS(0) 
	);

ADDR_511 	<= 	DATA_ADDRESS(8) and DATA_ADDRESS(7) and DATA_ADDRESS(6) and
						DATA_ADDRESS(5) and DATA_ADDRESS(4) and DATA_ADDRESS(3) and
						DATA_ADDRESS(2) and DATA_ADDRESS(1) and DATA_ADDRESS(0);
						
ADDR_510 	<= 	DATA_ADDRESS(8) and DATA_ADDRESS(7) and DATA_ADDRESS(6) and
						DATA_ADDRESS(5) and DATA_ADDRESS(4) and DATA_ADDRESS(3) and
						DATA_ADDRESS(2) and DATA_ADDRESS(1) and not(DATA_ADDRESS(0));

-- endereco 511 é o reset do flipflop

DEBOUNCER_KEY0:
	entity work.flipflopGenerico
	port map(
		DIN 		=> '1',
		DOUT 		=> KEY0_DEBOUNCER_OUT,
		ENABLE 	=> '1',
		CLK		=> ED_OUT_KEY0,
		RST		=> ADDR_511
	);

KEY0_INTERFACE_EXISTENTE:
	entity work.buffer3state generic map (DATA_WIDTH => 1)
	port map(
		INPUT(0)	=> KEY0_DEBOUNCER_OUT,
		ENABLE	=> ENABLE_KEY0,
		OUTPUT(0)=> READ_BUS(0) 
	);	


DEBOUNCER_KEY1:
	entity work.flipflopGenerico
	port map(
		DIN 		=> '1',
		DOUT 		=> KEY1_DEBOUNCER_OUT,
		ENABLE 	=> '1',
		CLK		=> ED_OUT_KEY1,
		RST		=> ADDR_510
	);
	
KEY1_INTERFACE_EXISTENTE:
	entity work.buffer3state generic map (DATA_WIDTH => 1)
	port map(
		INPUT(0)	=> KEY1_DEBOUNCER_OUT,
		ENABLE	=> ENABLE_KEY1,
		OUTPUT(0)=> READ_BUS(0)
	);

KEY2:
	entity work.buffer3state generic map (DATA_WIDTH => 1)
	port map(
		INPUT(0)	=> KEY(2),
		ENABLE	=> ENABLE_KEY2,
		OUTPUT(0)=> READ_BUS(0)
	);

KEY3:
	entity work.buffer3state generic map (DATA_WIDTH => 1)
	port map(
		INPUT(0) => KEY(3),
		ENABLE	=> ENABLE_KEY3,
		OUTPUT(0)=> READ_BUS(0)
	);

RST_FPGA:
	entity work.buffer3state generic map (DATA_WIDTH => 1)
	port map(
		INPUT(0) => FPGA_RESET_N,
		ENABLE	=> ENABLE_FPGA_RST,
		OUTPUT(0)=> READ_BUS(0)
	);


	
end architecture;





