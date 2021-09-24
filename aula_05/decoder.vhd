library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library computer_constants;
use computer_constants.controls.all; 

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

	signal sinais_controle : std_logic_vector(8 downto 0);

begin
	
	sinais_controle <= 
		CTRL_NOP		when (OP_CODE = NOP) 	else
		CTRL_LDA 	when (OP_CODE = LDA) 	else
		CTRL_SOMA 	when (OP_CODE = SOMA) 	else  
		CTRL_SUBA	when (OP_CODE = SUBA) 	else
		CTRL_LDI 	when (OP_CODE = LDI) 	else
		CTRL_STA  	when (OP_CODE = STA) 	else
		CTRL_JMP		when (OP_CODE = JMP) 	else
		CTRL_JEQ 	when (OP_CODE = JEQ) 	else
		CTRL_CEQ 	when (OP_CODE = CEQ) 	else CTRL_NOP;

		
	JUMP				<=  sinais_controle(8);
	JUMP_EQ			<=  sinais_controle(7);
	SEL_MUX 			<=  sinais_controle(6);
	HAB_A				<=  sinais_controle(5);
	OP_ULA			<=  sinais_controle(4 downto 3);
	HAB_FLAG			<=  sinais_controle(2);
	ENABLE_READ		<=  sinais_controle(1);
	ENABLE_WRITE	<=  sinais_controle(0);
	
end architecture;