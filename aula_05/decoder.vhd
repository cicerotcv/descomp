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
	 ENABLE_RET		: out std_logic;
	 JUMP				: out std_logic;
	 RET_SR			: out std_logic;
	 JUMP_SR			: out std_logic;
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

	signal sinais_controle : std_logic_vector(INST_WIDTH-1 downto 0);

begin
	
	sinais_controle <=
	
		CTRL_NOP		when	(OP_CODE = NOP) 	else -- 0000
		CTRL_LDA 	when 	(OP_CODE = LDA) 	else -- 0001
		CTRL_SOMA 	when 	(OP_CODE = SOMA) 	else -- 0010
		CTRL_SUBA	when 	(OP_CODE = SUBA) 	else -- 0011
		CTRL_LDI 	when 	(OP_CODE = LDI) 	else -- 0100
		CTRL_STA  	when 	(OP_CODE = STA) 	else -- 0101
		CTRL_JMP		when 	(OP_CODE = JMP) 	else -- 0110
		CTRL_JEQ 	when 	(OP_CODE = JEQ) 	else -- 0111
		CTRL_CEQ 	when 	(OP_CODE = CEQ) 	else -- 1000
		CTRL_JSR		when 	(OP_CODE = JSR)	else -- 1001
		CTRL_RET		when 	(OP_CODE = RET)	else -- 1010
		
	CTRL_NOP;

	
	ENABLE_RET		<=  sinais_controle(11);
	JUMP				<=  sinais_controle(10);
	RET_SR			<=  sinais_controle(9);
	JUMP_SR			<=  sinais_controle(8); -- 
	JUMP_EQ			<=  sinais_controle(7);
	SEL_MUX 			<=  sinais_controle(6);
	HAB_A				<=  sinais_controle(5);
	OP_ULA			<=  sinais_controle(4 downto 3);
	HAB_FLAG			<=  sinais_controle(2);
	ENABLE_READ		<=  sinais_controle(1);
	ENABLE_WRITE	<=  sinais_controle(0);
	
end architecture;