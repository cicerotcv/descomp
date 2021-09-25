library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;

entity proxima_instrucao is
   generic ( DATA_WIDTH: natural := 8 );
   port (
          CLK 			 : in 	std_logic;
			 RESET		 : in 	std_logic;
			 SEL_MUX		 : in 	std_logic_vector(1 downto 0);
			 HAB_RET_ADDR:	in		std_logic;
          INSTRUCTION : out 	std_logic_vector (DATA_WIDTH-1 DOWNTO 0)
    );
end entity;


architecture arch_name of proxima_instrucao is

	signal PC_OUT								: std_logic_vector (8 downto 0);
	signal PC_IN								: std_logic_vector (8 downto 0);
	signal RST_PC								: std_logic;
	signal OUTPUT								: std_logic_vector (12 downto 0);
	signal MUX_OUT								: std_logic_vector (8 downto 0);
	signal SOMA_OUT							: std_logic_vector (8 downto 0);
	signal MUX_IN_1							: std_logic_vector (8 downto 0);
	signal MUX_IN_2							: std_logic_vector (8 downto 0);

begin

PC:
		entity work.registradorGenerico 		generic map(larguraDados => 9)
		port map (
			DIN 		=> MUX_OUT,		-- DATA IN
			ENABLE 	=> '1', 			-- Habilita o PC
			CLK 		=> CLK, 			-- Sinal de clock
			RST 		=> RST_PC,		-- Reset o PC para o endereço inicial
			DOUT 		=> PC_OUT		-- saída pc que é ligada na memória e na próxima instrução
		);
			
SOMA_CONST:
		entity work.soma_constante 			generic map(DATA_WIDTH => 9, CONST => 1)
		port map (
			entrada 	=> PC_OUT,		-- largura 9
			saida 	=> SOMA_OUT
		);

ROM:
		entity work.memoriaROM   				generic map(dataWidth => 13, addrWidth => 9)
		port map (
			Endereco => PC_OUT,	 	-- endereço da instrução	[ 8...0]
			Dado 		=> OUTPUT 		-- saída da instrução		[12...0]
		);
		

END_RETORNO:
		entity work.registradorGenerico	generic map(larguraDados => 9)
		port map (
			DIN		=> SOMA_OUT,
			ENABLE	=> HAB_RET_ADDR,
			CLK		=> CLK,
			RST		=> '0',
			DOUT		=> MUX_IN_2
		);
		
 
MUX2:  	
		entity work.muxGenerico4x1  generic map (larguraDados => 9)
		port map(
			E0 			=> SOMA_OUT,
			E1 			=> MUX_IN_1,
			E2 			=> MUX_IN_2,
			E3 			=> b"0_0000_0000",
			SEL_MUX 		=> SEL_MUX,
			MUX_OUT 		=> MUX_OUT
		);

MUX_IN_1		<= OUTPUT(8 downto 0);
RST_PC 		<= RESET;
INSTRUCTION <= OUTPUT;

end architecture;