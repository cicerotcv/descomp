library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity led_solo is
	
  port   (
	 IN_FLOPS				: in  std_logic;
	 WRITE_ENABLE			: in  std_logic;
	 CLK						: in  std_logic;
	 OUT_LED					: out std_logic
  );
end entity;


architecture arch_name of led_solo is

begin

FLIPS:
	entity work.flipflopGenerico
	port map (
		DIN		=> IN_FLOPS,
		DOUT		=> OUT_LED,
		ENABLE 	=> WRITE_ENABLE,
		CLK 		=> CLK,
		RST 		=> '0'
	);		

	
end architecture;