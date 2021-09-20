library IEEE;
use IEEE.STD_LOGIC_1164.all;

package mnemonics is
	 
	 -- MNEMONICS -- 
	constant NOP 	: std_logic_vector(3 downto 0) := "0000"; -- 0
	constant LDA	: std_logic_vector(3 downto 0) := "0001"; -- 1
	constant SOMA 	: std_logic_vector(3 downto 0) := "0010"; -- 2 
	constant SUBA	: std_logic_vector(3 downto 0) := "0011"; -- 3
	constant LDI	: std_logic_vector(3 downto 0) := "0100"; -- 4
	constant STA	: std_logic_vector(3 downto 0) := "0101"; -- 5

end package mnemonics;

--
--package controls is 
--	
--	
--
--
--end package controls;
