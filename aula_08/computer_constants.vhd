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
	constant JSR	: std_logic_vector(3 downto 0) := "1001"; -- 9
	constant RET	: std_logic_vector(3 downto 0) := "1010"; -- 10
	
	
	
	constant INST_WIDTH : integer := 12;	
	
	-- CONTROL INSTRUCTIONS -- HAB_RET | JMP | RET | JSR | JEQ | SEL_MUX | HAB_A || OP_ULA || HAB_FLAG | HAB_READ | HAB_WRITE
	constant CTRL_NOP		: std_logic_vector(INST_WIDTH-1 downto 0) := b"0000000_00_000";
	constant CTRL_LDA		: std_logic_vector(INST_WIDTH-1 downto 0) := b"0000001_10_010";
	constant CTRL_SOMA	: std_logic_vector(INST_WIDTH-1 downto 0) := b"0000001_01_010";
	constant CTRL_SUBA	: std_logic_vector(INST_WIDTH-1 downto 0) := b"0000001_00_010";
	constant CTRL_LDI		: std_logic_vector(INST_WIDTH-1 downto 0) := b"0000011_10_000";
	constant CTRL_STA		: std_logic_vector(INST_WIDTH-1 downto 0) := b"0000000_00_001";
	constant CTRL_JMP		: std_logic_vector(INST_WIDTH-1 downto 0) := b"0100000_00_000";
	constant CTRL_JEQ		: std_logic_vector(INST_WIDTH-1 downto 0) := b"0000100_00_000";
	constant CTRL_CEQ		: std_logic_vector(INST_WIDTH-1 downto 0) := b"0000000_00_110";
	constant CTRL_JSR		: std_logic_vector(INST_WIDTH-1 downto 0) := b"1001000_00_000";
	constant CTRL_RET		: std_logic_vector(INST_WIDTH-1 downto 0) := b"0010000_00_000";
	
	
end package controls;