library ieee;
use ieee.std_logic_1164.all;

entity CPU is
	-- Total de bits das entradas e saidas
	generic (
		larguraDados 	: natural := 8;
		simulacao 		: boolean := TRUE -- para gravar na placa, altere de TRUE para FALSE
	);
	port   (
		CLK 				: in 	std_logic;
		RESET    		: in  std_logic;
		INSTRUCTION_IN : in  std_logic_vector(12 downto 0);
		DATA_IN			: in  std_logic_vector(7 downto 0);
		READ_OUT			: out std_logic;
		WRITE_OUT		: out std_logic;
		ROM_ADDRESS 	: out std_logic_vector(8 downto 0);
		DATA_OUT       : out std_logic_vector(7 downto 0);
		DATA_ADDRESS   : out std_logic_vector(8 downto 0)
	);
end entity;


architecture arquitetura of CPU is

	signal MUX_ULA_B 							: std_logic_vector (larguraDados-1 downto 0);
	signal SAIDA_REG_A						: std_logic_vector (larguraDados-1 downto 0);
	signal Saida_ULA 							: std_logic_vector (larguraDados-1 downto 0);
	signal MUX_IN_0							: std_logic_vector (larguraDados-1 downto 0);
	signal instrucoes_decodificador 		: std_logic_vector (12 downto 0);
	signal Operacao_ULA 						: std_logic_vector (1 downto 0);
	signal habilita_leitura					: std_logic;
	signal habilita_escrita					: std_logic;
	signal RST_PC								: std_logic;
	signal SelMUX 								: std_logic;
	signal Habilita_A 						: std_logic;
	signal JUMP									: std_logic;
	signal JUMP_EQ								: std_logic;
	signal DESV_JUMP							: std_logic_vector(1 downto 0);
	signal RET									: std_logic;
	signal JUMP_SR								: std_logic;
	signal ULA_FLAG							: std_logic;
	signal FLAG_EQ								: std_logic;
	signal HAB_RET_WRITE						: std_logic;
	signal habilita_flag						: std_logic;
	signal PC_OUT								: std_logic_vector (8 downto 0);
	
begin

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
	entity work.decoder 		generic map(DATA_WIDTH => 4)
	port map (
		OP_CODE 			=> instrucoes_decodificador(12 downto 9),
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
			
INSTR : 	
	entity work.proxima_instrucao generic map(DATA_WIDTH => 8)
	port map (
		CLK 				=> CLK,
		RESET 			=> RST_PC,
		SEL_MUX 			=> DESV_JUMP,
		MUX1_IN			=> instrucoes_decodificador(8 downto 0),
		HAB_RET_ADDR	=> HAB_RET_WRITE,
		PC_SAIDA  		=> PC_OUT
	);

-- in
MUX_IN_0 						<= DATA_IN;
instrucoes_decodificador 	<= INSTRUCTION_IN;
RST_PC 							<= '0';

-- out
READ_OUT 		<= habilita_leitura;
WRITE_OUT      <= habilita_escrita;
ROM_ADDRESS		<= PC_OUT;
DATA_OUT			<= SAIDA_REG_A;
DATA_ADDRESS   <= instrucoes_decodificador(8 downto 0);

end architecture;