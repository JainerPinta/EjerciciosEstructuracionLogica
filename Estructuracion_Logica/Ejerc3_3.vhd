-- Jainer PInta
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Ejerc3_3 is
    Port ( clk, RST, L, R: in  STD_LOGIC;
			  S : in STD_LOGIC_VECTOR(0 to 1);
           D : in  STD_LOGIC_VECTOR (0 to 3);
           Q : out  STD_LOGIC_VECTOR (0 to 3));
end Ejerc3_3;

architecture arqEjerc3_3 of Ejerc3_3 is
signal Qn : STD_LOGIC_VECTOR (0 to 3);
begin
	Q <= Qn;
	process(clk, RST, L, R, S, D)
	begin
		if (clk'event and clk = '1') then
			if (RST = '1') then
				Qn <= "0000";
			elsif (S = "01" ) then
				Qn <= Qn( 1 to 3) & L;
			elsif (S = "11") then
				Qn <= R & Qn(0 to 2);
			elsif (S = "10") then
				Qn <= D;
			else
				Qn <= Qn;
			end if;
		end if;
	end process;
end arqEjerc3_3;

