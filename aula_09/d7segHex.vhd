library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


-- port map (
--		DATA_IN 	=> sinal_local,
--		ENABLE	=> sinal_local,
--		CLK		=> sinal_local,
--		DATA_OUT	=> sinal_local
-- );


entity d7segHex is
	
  port (
	 DATA_IN					: in  std_logic_vector(3 downto 0);
	 ENABLE					: in  std_logic;
	 CLK						: in  std_logic;
	 DATA_OUT				: out std_logic_vector(6 downto 0)
  );

end entity;


architecture arch_name of d7segHex is
	
	signal REG_DECODER : std_logic_vector(3 downto 0);

begin

REG_4bits:
	entity work.registradorGenerico
	generic map(larguraDados => 4)
	port map(
		DIN 		=> DATA_IN, 
		DOUT 		=> REG_DECODER, 
		ENABLE 	=> ENABLE,
		CLK 		=> CLK, 
		RST 		=> '0'
	);
	
DECODER_7seg:  
	entity work.conversorHex7Seg
   port map(
		dadoHex		=> REG_DECODER,
		apaga			=> '0',
		negativo 	=> '0',
		overFlow 	=> '0',
		saida7seg	=> DATA_OUT
	);

	
end architecture;