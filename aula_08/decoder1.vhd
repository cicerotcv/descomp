library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity decoder3x8 is
  port   (
	 IN_E				: in  std_logic_vector(2 downto 0); -- largura 3
	 SAIDA			: out std_logic_vector(7 downto 0) 	-- largura 8
  );
end entity;


architecture arch_name of decoder3x8 is

begin

	SAIDA <= 
		
		b"0000_0001" when (IN_E = "000") else
		b"0000_0010" when (IN_E = "001") else
		b"0000_0100" when (IN_E = "010") else
		b"0000_1000" when (IN_E = "011") else
		b"0001_0000" when (IN_E = "100") else
		b"0010_0000" when (IN_E = "101") else
		b"0100_0000" when (IN_E = "110") else
		b"1000_0000";
	
end architecture;