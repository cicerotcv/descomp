library ieee;
use ieee.std_logic_1164.all;

entity computador is
	-- Total de bits das entradas e saidas
	generic ( larguraDados : natural := 4;
				simulacao : boolean := TRUE -- para gravar na placa, altere de TRUE para FALSE
	);
	port   (
		CLOCK_50 : in 	std_logic;
		KEY		: in 	std_logic_vector(3 downto 0);
		SW			: in 	std_logic_vector(9 downto 0);
		LEDR  	: out std_logic_vector(9 downto 0)
	);
end entity;


architecture arquitetura of computador is

-- Faltam alguns sinais:
	signal chavesX_ULA_B 					: std_logic_vector (larguraDados-1 downto 0);
	signal chavesY_MUX_A 					: std_logic_vector (larguraDados-1 downto 0);
	signal MUX_REG_A 							: std_logic_vector (larguraDados-1 downto 0);
	signal REG_A_ULA_A 						: std_logic_vector (larguraDados-1 downto 0);
	signal Saida_ULA 							: std_logic_vector (larguraDados-1 downto 0);
	signal Sinais_Controle 					: std_logic_vector (3 downto 0);
	signal Instrucoes_Decodificador 		: std_logic_vector (3 downto 0);
	signal Proximo_Estado 					: std_logic_vector (3 downto 0);
	signal Estado_Atual 						: std_logic_vector (3 downto 0);
	signal PC_OUT								: std_logic_vector (3 downto 0);
	signal PC_IN								: std_logic_vector (3 downto 0);
	signal RST_PC								: std_logic;
	signal Chave_Operacao_ULA 				: std_logic;
	signal CLK 									: std_logic;
	signal SelMUX 								: std_logic;
	signal Habilita_A 						: std_logic;
	signal Reset_A 							: std_logic;
	signal Operacao_ULA 						: std_logic;

begin

-- Instanciando os componentes:

-- Para simular, fica mais simples tirar o edgeDetector
gravar:  if simulacao generate
	CLK <= KEY(0);
else generate
	detectorSub0: work.edgeDetector(bordaSubida)
        port map (clk => CLOCK_50, entrada => (not KEY(0)), saida => CLK);
end generate;

----------- CONFIGURAÇÃO IN/OUT -----------
selMUX 			<= Sinais_Controle(3);
Habilita_A 		<= Sinais_Controle(2);
Reset_A 			<= Sinais_Controle(1);
Operacao_ULA 	<= Sinais_Controle(0);
RST_PC 			<= not(KEY(3));

chavesY_MUX_A 	<= SW(3 downto 0); -- SW_Y
chavesX_ULA_B 	<= SW(9 downto 6); -- SW_X

-- A ligacao dos LEDs:
LEDR (9) <= SelMUX;
LEDR (8) <= Habilita_A;
LEDR (7) <= Reset_A;
LEDR (6) <= Operacao_ULA;
LEDR (5) <= '0';    -- Apagado.
LEDR (4) <= '0';    -- Apagado.
LEDR (3 downto 0) <= REG_A_ULA_A; -- saida
-----------------------------------------
-----------------------------------------


-- O port map completo do MUX.
MUX1 :  entity work.muxGenerico2x1  generic map (larguraDados => larguraDados)
        port map( entradaA_MUX => chavesY_MUX_A,
                 entradaB_MUX =>  Saida_ULA,
                 seletor_MUX => SelMUX,
                 saida_MUX => MUX_REG_A);

-- O port map completo do Acumulador.
REG_A 		: entity work.registradorGenerico   generic map (larguraDados => larguraDados)
			port map (DIN => MUX_REG_A, DOUT => REG_A_ULA_A, ENABLE => Habilita_A, CLK => CLK, RST => Reset_A);

-- O port map completo da ULA:
ULA1 		: entity work.ULASomaSub  	generic map(larguraDados => larguraDados)
			port map (entradaA => REG_A_ULA_A, entradaB => chavesX_ULA_B, saida => Saida_ULA, seletor => Operacao_ULA);

	 
-- port map do decodificador
DECODER 	: entity work.decoder 		generic map(DATA_WIDTH => larguraDados)
			port map (
				OP_CODE 	=> Instrucoes_Decodificador,
				SEL_MUX 	=> Sinais_Controle(3),
				HAB_A		=> Sinais_Controle(2),
				RST_A	 	=>	Sinais_Controle(1),
				OP_ULA	=> Sinais_Controle(0)
			);
			
			
---------------------------------
-- Módulo de próxima instrução --
PC	: entity work.registradorGenerico 	generic map(larguraDados => larguraDados)
		port map (
			DIN 	=> PC_IN,		-- 
			DOUT 	=> PC_OUT,		-- saída pc que é ligada na memória e na próxima instrução
			ENABLE => '1', 
			CLK => CLK, 
			RST => RST_PC
		);
			
SOMA_CONST 	: entity work.soma_constante 			generic map(DATA_WIDTH => larguraDados, CONST => 1)
		port map (
			entrada 	=> PC_OUT,
			saida 	=> PC_IN
		);

-- ROM da máquina de busca
ROM 			: entity work.memoriaROM   			generic map (dataWidth => 4, addrWidth => larguraDados)
		port map (
			Endereco => PC_OUT, 
			Dado 		=> Instrucoes_Decodificador
		);
-- fim do módulo de próxima instrução
-------------------------------------

			

end architecture;