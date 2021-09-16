library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library computer_constants;
use computer_constants.mnemonics.all;

entity decoder is
  generic	( DATA_WIDTH  : natural :=  8 );

  port   (
    -- Input ports
    OP_CODE		  	: in  std_logic_vector(DATA_WIDTH-1 downto 0);
	 -- Output ports
    SEL_MUX 		: out std_logic;
	 HAB_A			: out std_logic;
	 RST_A			: out std_logic;
	 OP_ULA			: out std_logic
  );
end entity;


architecture arch_name of decoder is

begin
	
	process (OP_CODE)
	begin
	
		if (OP_CODE = CLRA) 		then -- 0010
			SEL_MUX 	<= '0';
			HAB_A		<= '0';
			RST_A 	<=	'1';
			OP_ULA	<= '0';
			
		elsif (OP_CODE = LDA) 	then -- 1101
			SEL_MUX 	<= '1';
			HAB_A		<= '1';
			RST_A 	<=	'0';
			OP_ULA	<= '1';
		
		elsif (OP_CODE = SOMA) 	then -- 1101
			SEL_MUX 	<= '1';
			HAB_A		<= '1';
			RST_A 	<=	'0';
			OP_ULA	<= '1';
		
		elsif (OP_CODE = SUBA) 	then -- 1100
			SEL_MUX 	<= '1';
			HAB_A		<= '1';
			RST_A 	<=	'0';
			OP_ULA	<= '0';
			
		else 
			SEL_MUX 	<= '0';
			HAB_A		<= '0';
			RST_A 	<=	'0';
			OP_ULA	<= '0';
		end if;
	
	end process;
	

end architecture;