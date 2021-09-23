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
	 JUMP				: out std_logic;
	 JUMP_EQ			: out std_logic;
    SEL_MUX 		: out std_logic;
	 HAB_A			: out std_logic;
	 OP_ULA			: out std_logic_vector(1 downto 0);
	 HAB_FLAG		: out std_logic;
	 ENABLE_READ	: out std_logic;
	 ENABLE_WRITE	: out std_logic
  );
end entity;


architecture arch_name of decoder is

	


begin
	
	process (OP_CODE)
	begin
	
		if (OP_CODE = NOP) 		then -- 0000 | 00 00 00 |  00 10 00
			-- saida <= CONTROL_NOP;
			JUMP				<= '0';
			JUMP_EQ			<= '0';
			SEL_MUX 			<= '0';
			HAB_A				<= '0';
			OP_ULA			<= "00";
			HAB_FLAG			<= '0';
			ENABLE_READ		<= '0';
			ENABLE_WRITE	<= '0';
			
		elsif (OP_CODE = LDA) 	then -- 0001 | 01 10 10 | 01 10 10
			JUMP				<= '0';
			JUMP_EQ			<= '0';
			SEL_MUX 			<= '0';
			HAB_A				<= '1';
			OP_ULA			<= "10";
			HAB_FLAG			<= '0';
			ENABLE_READ		<= '1';
			ENABLE_WRITE	<= '0';
		
		elsif (OP_CODE = SOMA) 	then -- 0010 | 01 01 10 | 01 01 00
			JUMP				<= '0';
			JUMP_EQ			<= '0';
			SEL_MUX 			<= '0';
			HAB_A				<= '1'; 
			OP_ULA			<= "01";
			HAB_FLAG			<= '0';
			ENABLE_READ		<= '1';
			ENABLE_WRITE	<= '0';
		
		elsif (OP_CODE = SUBA) 	then -- 0011 | 01 00 10 | 01 00 00
			JUMP				<= '0';
			JUMP_EQ			<= '0';
			SEL_MUX 			<= '0';
			HAB_A				<= '1';
			OP_ULA			<= "00";
			HAB_FLAG			<= '0';
			ENABLE_READ		<= '1';
			ENABLE_WRITE	<= '0';
		
		elsif (OP_CODE = LDI) 	then -- 0100 | 11 10 00 | 11 10 00
			JUMP				<= '0';
			JUMP_EQ			<= '0';
			SEL_MUX 			<= '1';
			HAB_A				<= '1';
			OP_ULA			<= "10";
			HAB_FLAG			<= '0';
			ENABLE_READ		<= '0';
			ENABLE_WRITE	<= '0';
		
		elsif (OP_CODE = STA) 	then -- 0101 | 01 10 01 | 01 10 01 
			JUMP				<= '0';
			JUMP_EQ			<= '0';
			SEL_MUX 			<= '0';
			HAB_A				<= '0';
			OP_ULA			<= "00";
			HAB_FLAG			<= '0';
			ENABLE_READ		<= '0';
			ENABLE_WRITE	<= '1';
		
		elsif (OP_CODE = JMP) 	then -- 0110
			JUMP				<= '1';
			JUMP_EQ			<= '0';
			SEL_MUX 			<= '0';
			HAB_A				<= '0';
			OP_ULA			<= "00";
			HAB_FLAG			<= '0';
			ENABLE_READ		<= '0';
			ENABLE_WRITE	<= '0';
			
		elsif (OP_CODE = JEQ) 	then -- 0111
			JUMP				<= '0';
			JUMP_EQ			<= '1';
			SEL_MUX 			<= '0';
			HAB_A				<= '0';
			OP_ULA			<= "00";
			HAB_FLAG			<= '0';
			ENABLE_READ		<= '0';
			ENABLE_WRITE	<= '0';

		elsif (OP_CODE = CEQ) 	then -- 1000
			JUMP				<= '0';
			JUMP_EQ			<= '0';
			SEL_MUX 			<= '0';
			HAB_A				<= '1';
			OP_ULA			<= "00";
			HAB_FLAG			<= '1';
			ENABLE_READ		<= '1';
			ENABLE_WRITE	<= '0';
			
		else 								  -- NOP
			JUMP				<= '0';
			JUMP_EQ			<= '0';
			SEL_MUX 			<= '0';
			HAB_A				<= '1';
			OP_ULA			<= "00";
			HAB_FLAG			<= '0';
			ENABLE_READ		<= '0';
			ENABLE_WRITE	<= '0';

		end if;
	
	end process;
	
-- melhoria futura
--	JUMP				<=  sinais_controle(8);
--	JUMP_EQ			<=  sinais_controle(7);
--	SEL_MUX 			<=  sinais_controle(6);
--	HAB_A				<=  sinais_controle(5);
--	OP_ULA			<=  sinais_controle(4 downto 3);
--	HAB_FLAG			<=  sinais_controle(2);
--	ENABLE_READ		<=  sinais_controle(1);
--	ENABLE_WRITE	<=  sinais_controle(0);

	
	
end architecture;