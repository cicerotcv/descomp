library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity decoder1 is
  generic	( DATA_WIDTH  : natural :=  8 );

  port   (
	 IN_E				: in  std_logic_vector(DATA_WIDTH-1 downto 0);
	 SAIDA			: out std_logic_vector((2**DATA_WIDTH)-1 downto 0)
  );
end entity;


architecture arch_name of decoder1 is
	signal out_signal		: std_logic_vector((2**DATA_WIDTH)-1 downto 0) := (others => '0');

begin
	out_signal(to_integer(unsigned(IN_E))) <= '1';
	SAIDA <= out_signal;
	
end architecture;