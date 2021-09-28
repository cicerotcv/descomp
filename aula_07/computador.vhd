library ieee;
use ieee.std_logic_1164.all;

entity computador is
	-- Total de bits das entradas e saidas
	generic (
		larguraDados 	: natural := 8;
		simulacao 		: boolean := TRUE -- para gravar na placa, altere de TRUE para FALSE
	);
	port   (
		CLOCK    : in 	std_logic;
		KEY		: in 	std_logic_vector(3 downto 0);
		VALOR_INST		: out std_logic_vector(12 downto 0); 	-- debug
		DOUT		: out std_logic_vector(7 downto 0); 			-- debug
		HAB_LEI	: out std_logic; 										-- debug
		HAB_ESC	: out std_logic; 										-- debug
		HAB_LEDs : out std_logic_vector (2 downto 0); 			-- debug
		ROM_ADDR : out std_logic_vector(8 downto 0); 			-- debug
		LED_R		: out std_logic_vector(9 downto 0)				-- debug
	);
end entity;


architecture arquitetura of computador is
	
-- Faltam alguns sinais:
	signal CLK									: std_logic;
	signal RST_PC								: std_logic;
	signal ENABLE_WRITE						: std_logic;
	signal ENABLE_READ						: std_logic;
	signal RAM_OUT								: std_logic_vector (7 downto 0);
	signal END_ROM								: std_logic_vector (8 downto 0);
	signal DATA_OUT							: std_logic_vector (7 downto 0);
	signal DATA_ADDRESS						: std_logic_vector (8 downto 0);
	signal ROM_OUT 							: std_logic_vector (12 downto 0);
	signal DEC_ADDR_OUT 						: std_logic_vector (7 downto 0);
	signal DEC_BLOCKS_OUT					: std_logic_vector (7 downto 0);
	signal ENABLE_LEDR						: std_logic;
	signal ENABLE_LED8						: std_logic;
	signal ENABLE_LED9						: std_logic;
	
	
begin

-- Para simular, fica mais simples tirar o edgeDetector
gravar:  if simulacao generate
	CLK <= KEY(0);
else generate
	detectorSub0: work.edgeDetector(bordaSubida)
				port map (clk => CLOCK, entrada => (not KEY(0)), saida => CLK);
end generate;



RST_PC <= '0';
VALOR_INST <= ROM_OUT;
DOUT <= DATA_OUT;
HAB_ESC <= ENABLE_WRITE;
HAB_LEI <= ENABLE_READ;
ROM_ADDR <= END_ROM;

CPU:
	entity work.CPU
	port map(
		CLK 					=> CLK,
		RESET    			=> RST_PC,
		INSTRUCTION_IN 	=> ROM_OUT,
		DATA_IN				=> RAM_OUT,
		READ_OUT				=> ENABLE_READ,
		WRITE_OUT			=> ENABLE_WRITE,
		ROM_ADDRESS 		=> END_ROM,						-- saida PC
		DATA_OUT       	=> DATA_OUT,    			-- saida REG_A
		DATA_ADDRESS   	=> DATA_ADDRESS					-- instrucoes decodificador
	);
	
RAM:	
	entity work.memoriaRAM	generic map(dataWidth => 8, addrWidth => 6)
	port map (
		addr     			=> DATA_ADDRESS(5 downto 0), 	-- largura 6
		we						=> ENABLE_WRITE,
		re   					=> ENABLE_READ,
		habilita 			=> DEC_BLOCKS_OUT(0),
		clk      			=> CLK,
		dado_in  			=> DATA_OUT,
		dado_out 			=> RAM_OUT
	);
			
ROM:
	entity work.memoriaROM   				generic map(dataWidth => 13, addrWidth => 9)
	port map (
		Endereco 			=> END_ROM,		-- endereço da instrução	[ 8...0]
		Dado 					=> ROM_OUT 			-- largura 13
	);

DECODER_BLOCKS:
	entity work.decoder1 generic map(DATA_WIDTH => 3)
	port map (
		IN_E					=> DATA_ADDRESS(8 downto 6),
		SAIDA					=> DEC_BLOCKS_OUT
	);
	
DECODER_ADDR:
	entity work.decoder1 generic map(DATA_WIDTH => 3)
	port map (
		IN_E					=> DATA_ADDRESS(2 downto 0),
		SAIDA					=> DEC_ADDR_OUT
	);

ENABLE_LEDR <= ENABLE_WRITE and DEC_BLOCKS_OUT(4) and DEC_ADDR_OUT(0);
ENABLE_LED8 <= ENABLE_WRITE and DEC_BLOCKS_OUT(4) and DEC_ADDR_OUT(1);
ENABLE_LED9 <= ENABLE_WRITE and DEC_BLOCKS_OUT(4) and DEC_ADDR_OUT(2);

HAB_LEDs <= ENABLE_WRITE & DEC_BLOCKS_OUT(4) & DEC_ADDR_OUT(0);

LEDR:
	entity work.led_r generic map(DATA_WIDTH => 8)
	port map (
		IN_REGIS				=> DATA_OUT(7 downto 0),
		WRITE_ENABLE		=> ENABLE_LEDR,
		CLK					=> CLK,
		OUT_LEDs				=> LED_R(7 downto 0)
	);	

LED8:
	entity work.led_solo
	port map (
		IN_FLOPS				=> DATA_OUT(0),
		WRITE_ENABLE		=> ENABLE_LED8,
		CLK					=> CLK,
		OUT_LED				=> LED_R(8)
	);

LED9:
	entity work.led_solo
	port map (
		IN_FLOPS				=> DATA_OUT(0),
		WRITE_ENABLE		=> ENABLE_LED9,
		CLK					=> CLK,
		OUT_LED				=> LED_R(9)
	);

end architecture;