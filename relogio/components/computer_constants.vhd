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
	
	
	
	-- PERIPHERALS ADDRESSES AVAILABLE IN MEMORY MAP --

	-- LEDs
		-- LED 0 ~ 7: 256 (0x100)
		-- LED 8		: 257 (0x101)
		-- LED 9		: 258 (0x102)
	
	-- 7seg
		-- HEX 0		: 288 (0x120)
		-- HEX 1		: 289 (0x121)
		-- HEX 2		: 290 (0x122)
		-- HEX 3		: 291 (0x123)
		-- HEX 4		: 292 (0x124)
		-- HEX 5		: 293 (0x125)
	
	-- Chaves
		-- SW 0 ~ 7	: 320 (0x140) 0101 0101
		-- SW 8		: 321 (0x141) 0000 0001
		-- SW 9		: 322 (0x142) 0000 0001
		
	-- Botoes
		-- KEY 0		: 352 (0x160)
		-- KEY 1		: 353 (0x161)
		-- KEY 2		: 354 (0x162)
		-- KEY 3		: 355 (0x163)
		-- FPGA RST : 356 (0x164)
		
	-- Base de tempo
	   -- BASE 0   : 384 (0x180)
	   -- BASE 1   : 384 (0x181)
	   -- BASE 2   : 384 (0x182)
	   -- BASE 3   : 384 (0x183)

	constant ADDR_LEDR 		: std_logic_vector(8 downto 0) := '1' & x"00";
	constant ADDR_LED8 		: std_logic_vector(8 downto 0) := '1' & x"01";
	constant ADDR_LED9 		: std_logic_vector(8 downto 0) := '1' & x"02";
	
	constant ADDR_HEX0 		: std_logic_vector(8 downto 0) := '1' & x"20";
	constant ADDR_HEX1 		: std_logic_vector(8 downto 0) := '1' & x"21";
	constant ADDR_HEX2 		: std_logic_vector(8 downto 0) := '1' & x"22";
	constant ADDR_HEX3 		: std_logic_vector(8 downto 0) := '1' & x"23";
	constant ADDR_HEX4 		: std_logic_vector(8 downto 0) := '1' & x"24";
	constant ADDR_HEX5 		: std_logic_vector(8 downto 0) := '1' & x"25";
	
	constant ADDR_SWR	 		: std_logic_vector(8 downto 0) := '1' & x"40";
	constant ADDR_SW8  		: std_logic_vector(8 downto 0) := '1' & x"41";
	constant ADDR_SW9	 		: std_logic_vector(8 downto 0) := '1' & x"42";
	
	constant ADDR_KEY0 		: std_logic_vector(8 downto 0) := '1' & x"60";
	constant ADDR_KEY1 		: std_logic_vector(8 downto 0) := '1' & x"61";
	constant ADDR_KEY2 		: std_logic_vector(8 downto 0) := '1' & x"62";
	constant ADDR_KEY3 		: std_logic_vector(8 downto 0) := '1' & x"63";
	constant ADDR_FPGA_RST 	: std_logic_vector(8 downto 0) := '1' & x"64";
	
	constant ADDR_TIME		: std_logic_vector(8 downto 0) := '1' & x"80";
	
	
	
	
end package controls;