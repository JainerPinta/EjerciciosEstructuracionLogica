-- Jainer Pinta
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Ejerc3_17 is
    Port ( clk, x : in  STD_LOGIC;
           z : out  STD_LOGIC_VECTOR(0 to 6));
end Ejerc3_17;

architecture arqEjerc3_17 of Ejerc3_17 is
type estados is (A,B,C,D,E,F,G,H);
signal presente, futuro : estados;
begin
proceso1 : process (presente, x) begin
	case presente is
		when A => z <= "0000000";
			if x = '0' then
				futuro <= B;
			end if;
		when B => z <= "0000000";
			if x = '1' then
				futuro <= C;
			end if;
		when C => z <= "0000000";
			if x = '1' then
				futuro <= D;
			end if;
		when D => z <= "0000000";
			if x = '0' then
				futuro <= E;
			end if;
		when E => z <= "0000000";
			if x = '1' then
				futuro <= F;
			end if;
		when F => z <= "0000000";
			if x = '0' then
				futuro <= G;
			end if;
		when G => z <= "0000000";
			if  x = '1' then
				futuro <= H;
			end if;
		when H =>
			if x = '0' then 
				futuro <= A;
				z <= "1101111";
			else
				z <= "0000000";
			end if;
	end case;
end process proceso1;

proceso2 : process(clk) begin
	if clk'event and clk = '1' then
		presente <= futuro;
	end if;
end process proceso2;
end arqEjerc3_17;

