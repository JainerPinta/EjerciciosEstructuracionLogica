-- Jainer Pinta
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Ejerc3_20 is
    Port ( clk : in  STD_LOGIC;
           moneda : in  STD_LOGIC_VECTOR(4 downto 0);
           cambio : out  STD_LOGIC_VECTOR(3 downto 0));
end Ejerc3_20;

architecture arqEjerc3_20 of Ejerc3_20 is
type estados is (inicial, moneda5, moneda10, moneda20);
signal presente, futuro : estados;
begin
 procesoMaquina : process(presente, moneda) begin
	case presente is
		when inicial => cambio <= "0000";
			if moneda = "00101" then
				futuro <= moneda5;
			elsif moneda = "01010" then
				futuro <= moneda10;
			elsif moneda = "10100" then
				futuro <= moneda20;
			else
				futuro <= inicial;
			end if;
		when moneda5 => cambio <= "0000";
			futuro<= inicial;
		when moneda10 => cambio <= "0101";
			futuro<= inicial;
		when moneda20 => cambio <= "1111";
			futuro<= inicial;
	end case;
 end process procesoMaquina;

 procesoClk : process(clk) begin
	if clk'event and clk = '1' then
		presente <= futuro;
	end if;
 end process procesoClk;
end arqEjerc3_20;

