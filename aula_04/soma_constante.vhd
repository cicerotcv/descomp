library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;  --Soma (esta biblioteca =ieee)

entity soma_constante is
    generic
    (
        DATA_WIDTH : natural := 32;
        CONST : natural := 4
    );
    port
    (
        entrada: in  STD_LOGIC_VECTOR((DATA_WIDTH-1) downto 0);
        saida:   out STD_LOGIC_VECTOR((DATA_WIDTH-1) downto 0)
    );
end entity;

architecture comportamento of soma_constante is
    begin
        saida <= std_logic_vector(unsigned(entrada) + CONST);
end architecture;