-- Jainer Pinta
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Ejerc3_8 is
    Port ( clk, X : in  STD_LOGIC;
           Q : out  STD_LOGIC_VECTOR (1 downto 0));
end Ejerc3_8;

architecture arqEjerc3_8 of Ejerc3_8 is
signal Qaux : STD_LOGIC_VECTOR (1 downto 0);
begin
	Q <= Qaux;
	process(clk)
	begin
		if (clk'event and clk = '1') then
			if (X = '0') then
				Qaux <= Qaux+1;
			else 
				Qaux <= Qaux - 1;
			end if;
		end if;
	end process;
end arqEjerc3_8;

