-- Jainer Pinta
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Ejerc3_13 is
    Port ( clk, x: in  STD_LOGIC;
				z : out STD_LOGIC);
end Ejerc3_13;

architecture arqEjerc3_13 of Ejerc3_13 is
	type estados is (A, B, C ,D);
	signal edo_pres, edo_fut: estados := A;
begin
	proceso1 : process (edo_pres, x) begin
		case edo_pres is
			when A => z <= '0';
				if x = '0' then
					edo_fut <= D;
				else
					edo_fut <= B;
				end if;
			when B => z <= '0';
				if x = '0' then
					edo_fut <= D;
				else
					edo_fut <= C;
				end if;
			when C => z <= '0';
				if x = '0' then
					edo_fut <= D;
				else
					edo_fut <= B;
				end if;
			when D =>
				if x = '0' then
					edo_fut <=D;
					z <= '0';
				else
					edo_fut <= A;
					z <= '1';
				end if;
		end case;
	end process proceso1;
proceso2: process (clk) begin
	if(clk'event and clk='1') then
		edo_pres <= edo_fut;
	end if;
end process proceso2;
end arqEjerc3_13;

