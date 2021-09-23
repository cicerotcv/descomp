library ieee;
use ieee.std_logic_1164.all;

entity logica_desvio is
  port (
    JUMP 		: in 	std_logic;
    JUMP_EQ		: in 	std_logic;
	 FLAG_EQ		: in 	std_logic;
	 DESV_JUMP	: out std_logic
  );
end entity;

architecture arch_name of logica_desvio is
  begin
  
    DESV_JUMP	<= 
		'0' when not(JUMP) and not(JUMP_EQ) else
		'1' when JUMP and not(JUMP_EQ) else
		'0' when not(JUMP) and (JUMP_EQ) and not(FLAG_EQ) else
		'1' when not(JUMP) and (JUMP_EQ) and FLAG_EQ else
		'0';
	 

end architecture;