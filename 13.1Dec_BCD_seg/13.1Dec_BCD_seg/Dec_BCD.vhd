library IEEE;
use IEEE.std_logic_1164.all;

entity Dec_BCD is
	port
	(
		ABCD : in std_logic_vector (3 downto 0);
		IB : out std_logic_vector (6 downto 0)
	);
end Dec_BCD;


architecture Dec_BCD_arch of Dec_BCD is

begin

	IB	<= "0000001" when ABCD = "0000" else
						"1001111" when ABCD = "0001" else
						"0010010" when ABCD = "0010" else
						"0000110" when ABCD = "0011" else
						"1001100" when ABCD = "0100" else
						"0100100" when ABCD = "0101" else
						"0100000" when ABCD = "0110" else
						"0001111" when ABCD = "0111" else
						"0000000" when ABCD = "1000" else
						"0001100" when ABCD = "1001" else
						--"0001100" when numero = "1001" else
						"0001000" when ABCD = "1010" else
						"1100000" when ABCD = "1011" else
						"0110001" when ABCD = "1100" else
						"1000010" when ABCD = "1101" else
						"0110000" when ABCD = "1110" else
						"0111000" when ABCD = "1111" else
						"1111111";

end Dec_BCD_arch;
