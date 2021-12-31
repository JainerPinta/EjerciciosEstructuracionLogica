-- Jainer PInta
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Ejerc3_16 is
    Port ( clk, x : in  STD_LOGIC;
           z : out  STD_LOGIC);
end Ejerc3_16;

architecture arqEjerc3_16 of Ejerc3_16 is
type estados is (A,B,C,D,E,F);
signal presente, futuro : estados;
begin
proceso1: process(presente, x) begin
	case presente is
		when A => z <= '0';
			if x = '1' then
				futuro <= B;
			end if;
		when B => z <= '0';
			if x = '1' then
				futuro <= C;
			end if;
		when C => z <= '0';
			if x = '0' then
				futuro <= D;
			end if;
		when D => z <= '0';
			if x = '0' then
				futuro <= E;
			end if;
		when E => z <= '0';
			if x = '1' then
				futuro <= F;
			end if;
		when F =>
			if x = '1' then
				futuro <= A;
				z <= '1';
			else
				z <= '0';
			end if;
	end case;
end process proceso1;

proceso2: process(clk) begin
	if (clk'event and clk='1') then
		presente <= futuro;
	end if;
end process proceso2;
end arqEjerc3_16;

