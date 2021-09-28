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

			tmp(0)	:= LDI	& '0' & x"01";
			tmp(1)	:= STA	& '0' & x"00";
			tmp(2)	:= SOMA	& '0' & x"00";
			tmp(3)	:= STA	& '0' & x"01";
			tmp(4)	:= LDA	& '0' & x"00";
			tmp(5)	:= STA	& '1' & x"01";
			tmp(6)	:= STA	& '1' & x"02";
			tmp(7)	:= LDI	& '0' & x"55";
			tmp(8)	:= STA	& '1' & x"00";
			tmp(9)	:= LDI	& '0' & x"aa";
			tmp(10)	:= STA	& '1' & x"00";
			tmp(11)	:= JMP	& '0' & x"0b";

        return tmp;
    end initMemory;

    signal memROM : blocoMemoria := initMemory;

begin
    Dado <= memROM (to_integer(unsigned(Endereco)));
end architecture;