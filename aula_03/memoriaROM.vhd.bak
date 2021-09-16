library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;

entity memoriaROM is
   generic (
          dataWidth: natural := 8;
          addrWidth: natural := 4
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
      -- CTRL = SelMUX, Habilita_A, Reset_A, Operacao_ULA
      -- Inicializa os endereços:
      --            CTRL    Prox Estado
        tmp(0)  := "1011" & x"1";
        tmp(1)  := "1000" & x"2";   -- Desta posicao para baixo, é necessário acertar o CTRL
        tmp(2)  := "1000" & x"3";
        tmp(3)  := "1000" & x"4";
        tmp(4)  := "1000" & x"5";
        tmp(5)  := "1000" & x"5";
        tmp(6)  := "0000" & x"0";
        tmp(7)  := "0000" & x"0";
        tmp(8)  := "0000" & x"0";
        tmp(9)  := "0000" & x"0";
        tmp(10) := "0000" & x"0";
        tmp(11) := "0000" & x"0";
        tmp(12) := "0000" & x"0";
        tmp(13) := "0000" & x"0";
        tmp(14) := "0000" & x"0";
        tmp(15) := "0000" & x"0";
        return tmp;
    end initMemory;

    signal memROM : blocoMemoria := initMemory;

begin
    Dado <= memROM (to_integer(unsigned(Endereco)));
end architecture;