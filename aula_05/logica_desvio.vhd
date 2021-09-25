library ieee;
use ieee.std_logic_1164.all;

entity logica_desvio is
  port (
    JUMP 		: in 	std_logic;
	 RET			: in 	std_logic;
	 JUMP_SR		: in 	std_logic;
    JUMP_EQ		: in 	std_logic;
	 FLAG_EQ		: in 	std_logic;
	 DESV_JUMP	: out std_logic_vector(1 downto 0)
  );
end entity;

architecture arch_name of logica_desvio is
	
	signal inputs : std_logic_vector(4 downto 0);

begin
	
	inputs(4) <= JUMP;
	inputs(3) <= RET;
	inputs(2) <= JUMP_SR;
	inputs(1) <= JUMP_EQ;
	inputs(0) <= FLAG_EQ;
  
   DESV_JUMP	<= 	"00" when	(inputs(4 downto 1) 	= "0000")		else -- proxima instrucao
							"01" when	(inputs(4 downto 1) 	= "1000")		else -- desvio de JMP
							"00" when	(inputs 				 	= "00010")		else -- proxima instrucao JEQ
							"01" when	(inputs 					= "00011")		else -- desvio JEQ
							"01" when	(inputs(4 downto 1) 	= "0010")		else -- desvio JSR
							"10" when 	(inputs(4 downto 1) 	= "0100")		else -- desvio RET
							"00";

end architecture;