-- Jainer Pinta
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Ejerc3_7 is
    Port ( clk, RST : in  STD_LOGIC;
           Q : out  STD_LOGIC_VECTOR (2 downto 0));
end Ejerc3_7;

architecture arqEjerc3_7 of Ejerc3_7 is
signal Qaux :  STD_LOGIC_VECTOR (2 downto 0);
begin
	Q <= Qaux;
	process(clk, RST)
	begin
		if (clk'event and clk = '1') then
			if (RST = '0' or Qaux = "111") then
				Qaux <= "000";
			else
				Qaux <= Qaux+1;
			end if;
		end if;
	end process;
end arqEjerc3_7;

