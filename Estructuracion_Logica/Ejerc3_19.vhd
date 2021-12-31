-- Jainer Pinta
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Ejerc3_19 is
    Port ( clk, x : in  STD_LOGIC;
           salida : out  STD_LOGIC_VECTOR (2 downto 0));
end Ejerc3_19;

architecture arqEjerc3_19 of Ejerc3_19 is
type estados is (N0,N1,N2,N3,N4,N5,N6,N7);
signal presente, futuro : estados;
begin
	proceso1 : process(presente, x) begin
		case presente is
			when N0 =>
				if x = '0' then
					futuro <= N1;
				end if;
			when N1 =>
				if x = '0' then 
					futuro <= N2;
				else
					futuro <= N4;
				end if;
			when N2 =>
				if x = '0' then
					futuro <= N3;
				else
					futuro <= N5;
				end if;
			when N3 =>
				if x = '0' then
					futuro <= N4;
				else
					futuro <= N1;
				end if;
			when N4 => 
				if x = '0' then 
					futuro <= N5;
				else
					futuro <= N2;
				end if;
			when N5 => futuro <= N6;
			when N6 => futuro <= N7;
			when N7 =>
				if x = '0' then
					futuro <= N0;
				else
					futuro <= N3;
				end if;
		end case;
	end process proceso1;
	
	asigSalida : process(presente) begin
		case presente is
			when N0 => salida <= "000";
			when N1 => salida <= "001";
			when N2 => salida <= "010";
			when N3 => salida <= "011";
			when N4 => salida <= "100";
			when N5 => salida <= "101";
			when N6 => salida <= "110";
			when N7 => salida <= "111";
		end case;
	end process asigSalida;
	
	procesoClk : process(clk) begin	
		if clk'event and clk = '1' then
			presente <= futuro;
		end if;
	end process procesoClk;
end arqEjerc3_19;

