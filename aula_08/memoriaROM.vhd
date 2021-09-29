library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;
library computer_constants;
use computer_constants.controls.all;

entity memoriaROM is
   generic (
          dataWidth: natural := 8;
          addrWidth: natural := 3
    );
   port (
          Endereco : in std_logic_vector (addrWidth-1 DOWNTO 0);
          Dado : out std_logic_vector (dataWidth-1 DOWNTO 0)
    );
end entity;

architecture assincrona of memoriaROM is

	type blocoMemoria is array(0 TO 2**addrWidth - 1) of std_logic_vector(dataWidth-1 DOWNTO 0);

	function initMemory
		return blocoMemoria is variable tmp : blocoMemoria := (others => (others => '0'));
	begin
	
		-- deve existir alguma maneira mais elegante 
		-- de concatenar os numeros em hex com as instrucoes,
		-- mas ate o momento nao conseguimos encontrar
		tmp(0)     :=   LDI    &  '0' &  x"01";      	--  Carrega o acumulador com o valor 1
		tmp(1)     :=   STA    &  '0' &  x"00";      	--  Armazena o valor do acumulador na posição zero da memória (MEM[0])
		tmp(2)     :=   SOMA   &  '0' &  x"00";      	--  Soma o valor atual do acumulador com o conteúdo de MEM[0]
		tmp(3)     :=   STA    &  '1' &  x"20";    		--  Armazena o valor do acumulador em HEX0
		tmp(4)     :=   SOMA   &  '0' &  x"00";      	--  Incrementa o valor do acumulador em uma unidade
		tmp(5)     :=   STA    &  '1' &  x"21";    		--  Armazena o valor do acumulador em HEX1
		tmp(6)     :=   SOMA   &  '0' &  x"00";      	--  Incrementa o valor do acumulador em uma unidade
		tmp(7)     :=   STA    &  '1' &  x"22";    		--  Armazena o valor do acumulador em HEX2
		tmp(8)     :=   SOMA   &  '0' &  x"00";     		--  Incrementa o valor do acumulador em uma unidade
		tmp(9)     :=   STA    &  '1' &  x"23";    		--  Armazena o valor do acumulador em HEX3
		tmp(10)    :=   SOMA   &  '0' &  x"00";      	--  Incrementa o valor do acumulador em uma unidade
		tmp(11)    :=   STA    &  '1' &  x"24";    		--  Armazena o valor do acumulador em HEX4
		tmp(12)    :=   SOMA   &  '0' &  x"00";      	--  Incrementa o valor do acumulador em uma unidade
		tmp(13)    :=   STA    &  '1' &  x"25";    		--  Armazena o valor do acumulador em HEX5
		tmp(14)    :=   JMP    &  '0' &  x"02";      	--  Desvia e continua incrementando e escrevendo nos displays

		return tmp;
	end initMemory;

	signal memROM : blocoMemoria := initMemory;

begin

    Dado <= memROM (to_integer(unsigned(Endereco)));

end architecture;


