library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity led_r is
  generic	( DATA_WIDTH  : natural :=  8 );

  port   (
	 IN_REGIS				: in  std_logic_vector(DATA_WIDTH-1 downto 0);
	 WRITE_ENABLE			: in  std_logic;
	 CLK						: in  std_logic;
	 OUT_LEDs					: out std_logic_vector(DATA_WIDTH-1 downto 0)
  );
end entity;


architecture arch_name of led_r is
	signal out_signal		: std_logic_vector(DATA_WIDTH-1 downto 0) := (others => '0');

begin

REG_8bits:
	entity work.registradorGenerico   generic map (larguraDados => 8)
	port map (
		DIN 		=> IN_REGIS, 
		DOUT 		=> out_signal, 
		ENABLE 	=> WRITE_ENABLE,
		CLK 		=> CLK, 
		RST 		=> '0'
	);
	
OUT_LEDs <= out_signal;
	
	
end architecture;