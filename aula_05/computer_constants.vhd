library IEEE;
use IEEE.STD_LOGIC_1164.all;

package controls is
	 
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
	
	-- CONTROL INSTRUCTIONS --
	constant CTRL_NOP		: std_logic_vector(8 downto 0) := b"0000_00_000";
	constant cTRL_LDA		: std_logic_vector(8 downto 0) := b"0001_10_010";
	constant cTRL_SOMA	: std_logic_vector(8 downto 0) := b"0001_01_010";
	constant cTRL_SUBA	: std_logic_vector(8 downto 0) := b"0001_00_010";
	constant cTRL_LDI		: std_logic_vector(8 downto 0) := b"0011_10_000";
	constant cTRL_STA		: std_logic_vector(8 downto 0) := b"0000_00_001";
	constant cTRL_JMP		: std_logic_vector(8 downto 0) := b"1000_00_000";
	constant cTRL_JEQ		: std_logic_vector(8 downto 0) := b"0100_00_000";
	constant cTRL_CEQ		: std_logic_vector(8 downto 0) := b"0000_00_110";
	
	
end package controls;