library ieee;
use ieee.std_logic_1164.all; 

entity buffer3state is
	generic (
		DATA_WIDTH: natural := 8
	);
	
	port (
		INPUT		: in  std_logic_vector(DATA_WIDTH-1 downto 0);
		ENABLE	: in  std_logic;
		OUTPUT	: out std_logic_vector(DATA_WIDTH-1 downto 0)
	);

end entity;


architecture arch_name of buffer3state is
	begin

		OUTPUT <= INPUT when (ENABLE = '1') else (others => 'Z');
	 
end architecture;