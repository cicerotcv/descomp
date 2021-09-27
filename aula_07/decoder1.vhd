library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity decoder1 is
  generic	( DATA_WIDTH  : natural :=  8 );

  port   (
	 IN_E				: in  std_logic_vector(DATA_WIDTH-1 downto 0);
	 SAIDA_0 		: out std_logic
  );
end entity;


architecture arch_name of decoder1 is


begin
	
	SAIDA_0 <= IN_E(2);
	
end architecture;