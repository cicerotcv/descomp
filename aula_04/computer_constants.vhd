library IEEE;
use IEEE.STD_LOGIC_1164.all;
package mnemonics is
	 
	 -- MNEMONICS -- 							(sel_mux, hab_A, rst_A, op_ULA)
--	 constant CLRA : std_logic_vector(3 downto 0) := "0010";
--	 constant LDA	: std_logic_vector(3 downto 0) := "1101";
--	 constant SOMA : std_logic_vector(3 downto 0) := "1101";
--	 constant SUBA	: std_logic_vector(3 downto 0) := "1100";
--  constant LDI	: std_logic_vector(3 downto 0) := "";
	constant NOP 	: std_logic_vector(3 downto 0) := "0000";
	constant LDA	: std_logic_vector(3 downto 0) := "0001";
	constant SOMA 	: std_logic_vector(3 downto 0) := "0010";
	constant SUBA	: std_logic_vector(3 downto 0) := "0011";
	constant LDI	: std_logic_vector(3 downto 0) := "0100";
	constant STA	: std_logic_vector(3 downto 0) := "0101";


end package mnemonics;