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
	constant JMP	: std_logic_vector(3 downto 0) := "0110"; -- 6
	constant JEQ	: std_logic_vector(3 downto 0) := "0111"; -- 7
	constant CEQ	: std_logic_vector(3 downto 0) := "1000"; -- 8

	
	constant CONTROL_NOP : std_logic_vector(8 downto 0) := "000000000";
	
end package mnemonics;