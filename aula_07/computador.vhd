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
		SAIDA		: out std_logic_vector(7 downto 0);
		FLAG_JMP : out std_logic_vector(1 downto 0);
		DEST		: out std_logic_vector(8 downto 0);
		PC			: out std_logic_vector(8 downto 0);
		LED_R		: out std_logic_vector(9 downto 0)
	);
end entity;


architecture arquitetura of computador is
	
-- Faltam alguns sinais:
	signal CLK									: std_logic;
	signal RST_PC								: std_logic;
	signal habilita_leitura					: std_logic;
	signal habilita_escrita					: std_logic;
	signal RAM_OUT								: std_logic_vector (7 downto 0);
	signal END_ROM								: std_logic_vector (8 downto 0);
	signal SAIDA_DADOS						: std_logic_vector (7 downto 0);
	signal END_DADOS							: std_logic_vector (8 downto 0);
	signal ROM_OUT 							: std_logic_vector (12 downto 0);
	signal SAIDA_DEC0 						: std_logic_vector (7 downto 0);
	signal SAIDA_DEC1							: std_logic_vector (7 downto 0);
	signal ENABLE_AND0						: std_logic;
	signal ENABLE_AND1						: std_logic;
	signal ENABLE_AND2						: std_logic;
	signal SAIDA_LEDs							: std_logic_vector (7 downto 0);
	
	
begin

-- Instanciando os componentes:

-- Para simular, fica mais simples tirar o edgeDetector
gravar:  if simulacao generate
	CLK <= KEY(0);
else generate
	detectorSub0: work.edgeDetector(bordaSubida)
        port map (clk => CLOCK, entrada => (not KEY(0)), saida => CLK);
end generate;


CPU:
	entity work.CPU
	port map(
		CLOCK_50 		=> CLK,
		RESET    		=> RST_PC,
		INSTRUCTION_IN => ROM_OUT,
		DATA_IN			=> RAM_OUT,
		READ_OUT			=> habilita_leitura,
		WRITE_OUT		=> habilita_escrita,
		ROM_ADDRESS 	=> END_ROM,						-- saida PC
		DATA_OUT       => SAIDA_DADOS,    			-- saida REG_A
		DATA_ADDRESS   => END_DADOS					-- instrucoes decodificador
	);
	
RAM:	
	entity work.memoriaRAM	generic map(dataWidth => 8, addrWidth => 6)
	port map (
		addr     		=> END_DADOS(5 downto 0), 	-- largura 6
		we					=> habilita_escrita,
		re   				=> habilita_leitura,
		habilita 		=> SAIDA_DEC1(0),
		clk      		=> CLK,
		dado_in  		=> SAIDA_DADOS,
		dado_out 		=> RAM_OUT
	);
			
ROM:
	entity work.memoriaROM   				generic map(dataWidth => 13, addrWidth => 9)
	port map (
		Endereco 		=> END_ROM,		-- endereço da instrução	[ 8...0]
		Dado 				=> ROM_OUT 			-- largura 13
	);

DECODER0:
	entity work.decoder1 generic map(DATA_WIDTH => 3)
	port map (
		IN_E				=> END_DADOS(8 downto 6),
		SAIDA				=> SAIDA_DEC0
	);
	
DECODER1:
	entity work.decoder1 generic map(DATA_WIDTH => 3)
	port map (
		IN_E				=> END_DADOS(2 downto 0),
		SAIDA				=> SAIDA_DEC1
	);

ENABLE_AND0 <= habilita_escrita and SAIDA_DEC1(2) and SAIDA_DEC0(4);
ENABLE_AND1 <= habilita_escrita and SAIDA_DEC1(1) and SAIDA_DEC0(4);
ENABLE_AND2 <= habilita_escrita and SAIDA_DEC1(0) and SAIDA_DEC0(4);

FLIP_0:
	entity work.led_solo
	port map (
		IN_FLOPS				=> SAIDA_DADOS(0),
		WRITE_ENABLE		=> ENABLE_AND0,
		CLK					=> CLK,
		OUT_LED				=> LED_R(9)
	);

FLIP_1:
	entity work.led_solo
	port map (
		IN_FLOPS				=> SAIDA_DADOS(0),
		WRITE_ENABLE		=> ENABLE_AND1,
		CLK					=> CLK,
		OUT_LED				=> LED_R(8)
	);
	
	
LEDs_R:
	entity work.led_r generic map(DATA_WIDTH => 8)
	port map (
		IN_REGIS				=> SAIDA_DADOS(7 downto 0),
		WRITE_ENABLE		=> ENABLE_AND2,
		CLK					=> CLK,
		OUT_LEDs			   => LED_R(7 downto 0)
	);	


end architecture;