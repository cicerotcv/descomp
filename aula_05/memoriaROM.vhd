library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;
library computer_constants;
use computer_constants.mnemonics.all;

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
	  -- Inicializa os endereços:

        tmp(0) 	:= LDI 	& '0' & x"0a"; -- A = 10
        tmp(1) 	:= STA   & '1' & x"00"; -- MEM[0] = 10
        tmp(2) 	:= SOMA 	& '1' & x"00"; -- A = A + MEM[0] = 20
        tmp(3) 	:= SOMA	& '1' & x"00"; -- A = A + MEM[0] = 30
        tmp(4)		:= STA   & '1' & x"01"; -- MEM[1] = 30
        tmp(5) 	:= LDI 	& '0' & x"04"; -- A = 4
        tmp(6) 	:= STA   & '1' & x"02"; -- MEM[2] = 4
        tmp(7) 	:= LDA   & '1' & x"01"; -- A = MEM[1] = 30
		  tmp(8)		:= JMP	& '0' & x"0b"; -- GOTO tmp(11)
 		  tmp(9) 	:= SUBA	& '1' & x"02"; -- A = A - MEM[2] = 30 - MEM[2] = 30 - 4 = 26
        tmp(10) 	:= STA   & '1' & x"04"; -- MEM[4] = 26
        tmp(11) 	:= NOP 	& '0' & x"00"; --
		  
        return tmp;
    end initMemory;

    signal memROM : blocoMemoria := initMemory;

begin
    Dado <= memROM (to_integer(unsigned(Endereco)));
end architecture;