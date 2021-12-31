-- Jainer Pinta
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Ejerc3_18 is
    Port ( clk, x : in  STD_LOGIC;
           z : out  STD_LOGIC);
end Ejerc3_18;

architecture arqEjerc3_18 of Ejerc3_18 is
type estados is (A, B, C, D, E);
signal presente, futuro : estados;
begin
proceso1 : process(presente, x) begin
	case presente is
		when A => z <= '0';
			if x = '0' then
				futuro <= B;
			else
				futuro <= E;
			end if;
		when B => z <= '1';
			if x = '0' then
				futuro <= A;
			else
				futuro <= C;
			end if;
		when C =>
			if x = '0' then
				futuro <= B;
				z  <= '0';
			else
				futuro <= C;
				z <= '1';
			end if;
		when D => z <= '0'; 
			if x = '0' then
				futuro <= C;
			else
				futuro <= E;
			end if;
		when E => 
			if x = '0' then 
				futuro <= D;
				z <= '1';
			else
				futuro <= A;
				z <= '0';
			end if;
	end case;
end process proceso1;

proceso2 : process (clk) begin
	if clk'event and clk = '1' then
		presente <= futuro;
	end if;
end process proceso2;
end arqEjerc3_18;

