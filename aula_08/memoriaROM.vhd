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

  
  			tmp(0)	:= JSR	& '0' & x"0e"; --1  JMP 14; RET = 1
			tmp(1)	:= JMP	& '0' & x"05"; --4  JMP 5
			tmp(2)	:= JEQ	& '0' & x"09"; --9  JMP 9
			tmp(3)	:= NOP	& '0' & x"00"; -- \\\
			tmp(4)	:= NOP	& '0' & x"00"; --
			tmp(5)	:= LDI	& '0' & x"05"; --5  A = 5
			tmp(6)	:= STA	& '0' & x"00"; --6  MEM[0] = 5
			tmp(7)	:= CEQ	& '0' & x"00"; --7  EQ = A == MEM[0] = true
			tmp(8)	:= JMP	& '0' & x"02"; --8  JMP 2
			tmp(9)	:= NOP	& '0' & x"00"; --10  
			tmp(10)	:= LDI	& '0' & x"04"; --11  A = 4
			tmp(11)	:= CEQ	& '0' & x"00"; --12  EQ = A == MEM[0] = false
			tmp(12)	:= JEQ	& '0' & x"03"; --13  nao ocorre desvio
			tmp(13)	:= JMP	& '0' & x"0d"; --14  fica no loop infinito com A = 4
			tmp(14)	:= NOP	& '0' & x"00"; --2 
			tmp(15)	:= RET	& '0' & x"00"; --3 JMP 1

        return tmp;
    end initMemory;

    signal memROM : blocoMemoria := initMemory;

begin
    Dado <= memROM (to_integer(unsigned(Endereco)));
end architecture;