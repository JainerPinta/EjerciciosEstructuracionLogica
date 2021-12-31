-- Jainer Pinta
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Ejerc3_9 is
    Port ( clk, X : in  STD_LOGIC;
           Z1, Z2 : inout  STD_LOGIC;
           Q : out  STD_LOGIC_VECTOR(3 downto 0));
end Ejerc3_9;

architecture arqEjerc3_9 of Ejerc3_9 is
signal Qaux: std_logic_vector(3 downto 0) := "0000";
begin
	Q <= Qaux;
	process(clk, X) 
	begin
	if(clk'event and clk = '1') then
		if(X = '0') then
			Qaux <= Qaux+1;
		else
			Qaux <= Qaux-1;
		end if;
		if(Qaux(0) = '0') then
			Z1 <= '1';
			Z2 <= '0';
		else
			Z1 <= '0';
			Z2 <= '1';
		end if;
	end if;
	end process;
end arqEjerc3_9;
