-- Jainer Pinta
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Ejerc3_6 is
    Port ( clk, RST : in  STD_LOGIC;
           Q : out  STD_LOGIC_VECTOR (2 downto 0));
end Ejerc3_6;

architecture arqEjerc3_6 of Ejerc3_6 is
signal Qaux : STD_LOGIC_VECTOR (2 downto 0);
begin
	Q <= Qaux;
	process(clk, RST)
	begin
		if ( clk'event and clk='1') then
			if(RST = '0' or Qaux ="101") then
				Qaux <= "000";
			elsif(Qaux = "000") then
				Qaux <= Qaux+1;
			else
				Qaux <= Qaux+2;
			end if;
		end if;
	end process;
end arqEjerc3_6;

