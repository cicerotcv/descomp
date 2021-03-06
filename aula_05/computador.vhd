library ieee;
use ieee.std_logic_1164.all;

entity computador is
	-- Total de bits das entradas e saidas
	generic (
		larguraDados 	: natural := 8;
		simulacao 		: boolean := TRUE -- para gravar na placa, altere de TRUE para FALSE
	);
	port   (
		CLOCK_50 : in 	std_logic;
		KEY		: in 	std_logic_vector(3 downto 0);
		SAIDA		: out std_logic_vector(7 downto 0);
		FLAG_JMP : out std_logic_vector(1 downto 0);
		DEST		: out std_logic_vector(8 downto 0)
	);
end entity;


architecture arquitetura of computador is

-- Faltam alguns sinais:
	signal chavesX_ULA_B 					: std_logic_vector (larguraDados-1 downto 0);
	signal chavesY_MUX_A 					: std_logic_vector (larguraDados-1 downto 0);
	signal MUX_ULA_B 							: std_logic_vector (larguraDados-1 downto 0);
	signal SAIDA_REG_A						: std_logic_vector (larguraDados-1 downto 0);
	signal Saida_ULA 							: std_logic_vector (larguraDados-1 downto 0);
	signal MUX_IN_0							: std_logic_vector (larguraDados-1 downto 0); 
	signal Sinais_Controle 					: std_logic_vector (3 downto 0);
	signal instrucoes_decodificador 		: std_logic_vector (12 downto 0);
	signal Proximo_Estado 					: std_logic_vector (3 downto 0);
	signal Estado_Atual 						: std_logic_vector (3 downto 0);
	signal Operacao_ULA 						: std_logic_vector (1 downto 0);
	signal habilita_leitura					: std_logic;
	signal habilita_escrita					: std_logic;
	signal RST_PC								: std_logic;
	signal Chave_Operacao_ULA 				: std_logic;
	signal CLK 									: std_logic;
	signal SelMUX 								: std_logic;
	signal Habilita_A 						: std_logic;
	signal Reset_A 							: std_logic;
	signal JUMP									: std_logic;
	signal JUMP_EQ								: std_logic;
	signal DESV_JUMP							: std_logic_vector(1 downto 0);
	signal RET									: std_logic;
	signal JUMP_SR								: std_logic;
	signal ULA_FLAG							: std_logic;
	signal FLAG_EQ								: std_logic;
	signal HAB_RET_WRITE						: std_logic;
	signal habilita_flag						: std_logic;
	signal Saida_LEDS							: std_logic_vector (7 downto 0);
	
begin

-- Instanciando os componentes:

-- Para simular, fica mais simples tirar o edgeDetector
gravar:  if simulacao generate
	CLK <= KEY(0);
else generate
	detectorSub0: work.edgeDetector(bordaSubida)
        port map (clk => CLOCK_50, entrada => (not KEY(0)), saida => CLK);
end generate;

----------- CONFIGURA????O IN/OUT -----------
RST_PC 			<= '0'; -- not(KEY(3));

Saida_LEDS 		  <= SAIDA_REG_A;
 
SAIDA				  <= SAIDA_REG_A;
FLAG_JMP			  <= DESV_JUMP;
DEST				  <= instrucoes_decodificador(8 downto 0);
-----------------------------------------
-----------------------------------------


-- O port map completo do MUX.
MUX1:  	
	entity work.muxGenerico2x1  generic map (larguraDados => 8)
	port map(
		entradaA_MUX 	=> MUX_IN_0,
		entradaB_MUX 	=> instrucoes_decodificador(7 downto 0),
		seletor_MUX 	=> SelMUX,
		saida_MUX 		=> MUX_ULA_B
	);

-- O port map completo do acumulador.
REG_A:
	entity work.registradorGenerico   generic map (larguraDados => 8)
	port map (
		DIN 		=> Saida_ULA, 
		DOUT 		=> SAIDA_REG_A, 
		ENABLE 	=> Habilita_A,
		CLK 		=> CLK, 
		RST 		=> '0'
	);

-- O port map completo da ULA:
ULA1:
	entity work.ULASomaSub  	generic map(larguraDados => 8)
	port map (
		entradaA => SAIDA_REG_A, 
		entradaB => MUX_ULA_B, 
		saida 	=> Saida_ULA,
		flag 		=> ULA_FLAG,
		seletor 	=> Operacao_ULA	-- largura 2 bits
	);

-- port map do flip flop da flag de comparacao
FLAG:
	entity work.flipflopGenerico
	port map (
		DIN		=> ULA_FLAG, 
		DOUT		=> FLAG_EQ,
		ENABLE 	=> habilita_flag,
		CLK 		=> CLK,
		RST 		=> '0'
	);		


	 
-- port map do decodificador
DECODER:
	entity work.decoder 		generic map(DATA_WIDTH => 4) -- "0000 0 0000 0000"
	port map (
		OP_CODE 			=> instrucoes_decodificador(12 downto 9),		-- largura 4
		ENABLE_RET		=> HAB_RET_WRITE,
		JUMP				=> JUMP,
		RET_SR			=> RET,
		JUMP_SR			=> JUMP_SR,
		JUMP_EQ			=> JUMP_EQ,
		SEL_MUX 			=> SelMUX,
		HAB_A				=> Habilita_A,
		OP_ULA			=> Operacao_ULA,
		HAB_FLAG			=> habilita_flag,
		ENABLE_READ 	=> habilita_leitura,
		ENABLE_WRITE	=> habilita_escrita
	);
		
LOG_DESVIO:
	entity work.logica_desvio
	port map (
		JUMP				=> JUMP,
		RET				=> RET,		-- editar
		JUMP_SR			=> JUMP_SR, -- editar
		JUMP_EQ			=> JUMP_EQ, 
		FLAG_EQ			=> FLAG_EQ,
		DESV_JUMP		=> DESV_JUMP
	);
			
MDADOS:	
	entity work.memoriaRAM	generic map(dataWidth => 8, addrWidth => 8)
	port map (
		addr     		=> instrucoes_decodificador(7 downto 0), 	-- largura 8
		we					=> habilita_escrita,
		re   				=> habilita_leitura,
		habilita 		=> instrucoes_decodificador(8),
		clk      		=> CLK,
		dado_in  		=> SAIDA_REG_A,
		dado_out 		=> MUX_IN_0
	);
			
INSTR : 	
	entity work.proxima_instrucao generic map(DATA_WIDTH => 13)
	port map (
		CLK 				=> CLK,
		RESET 			=> RST_PC,
		SEL_MUX 			=> DESV_JUMP,
		HAB_RET_ADDR	=> HAB_RET_WRITE, 				-- editar
		INSTRUCTION 	=> instrucoes_decodificador	-- largura 13
	);

			

end architecture;