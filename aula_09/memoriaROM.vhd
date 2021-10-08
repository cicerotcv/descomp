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
	
		-- programa de teste
		tmp(0)	:= LDI 	& '0' & x"01";
		tmp(1)	:= STA 	& '0' & x"00";
		tmp(2)	:= STA 	& '1' & x"20";
		
		tmp(3)	:= SOMA	& '0' & x"00";
		tmp(4)	:= STA 	& '1' & x"21";
		
		tmp(5)	:= SOMA  & '0' & x"00";
		tmp(6)	:= STA 	& '1' & x"22";
		
		tmp(7)	:= SOMA  & '0' & x"00";
		tmp(8)	:= STA 	& '1' & x"23";
		
		tmp(9)	:= SOMA  & '0' & x"00";
		tmp(10)	:= STA 	& '1' & x"24";
		
		tmp(11)	:= SOMA  & '0' & x"00";
		tmp(10)	:= STA 	& '1' & x"24";
		
		tmp(12)	:= SOMA  & '0' & x"00";
		tmp(13)	:= STA 	& '1' & x"25";
		
		tmp(14)	:= JMP	& '0' & x"0e";
		
		return tmp;
	end initMemory;

	signal memROM : blocoMemoria := initMemory;

begin

    Dado <= memROM (to_integer(unsigned(Endereco)));

end architecture;


