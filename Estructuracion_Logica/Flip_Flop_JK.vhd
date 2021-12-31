-- Jainer Pinta
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Flip_Flop_JK is
    Port ( J, K, clk : in  STD_LOGIC;
           Q, Qn : out  STD_LOGIC);
end Flip_Flop_JK;

architecture arq of Flip_Flop_JK is
	signal Qaux : STD_LOGIC;
begin
	Q <= Qaux;
	Qn<= not Qaux;
	process(J, K, clk)
	begin
		if (clk'event and clk ='1') then
			if(J = '0' and K='0') then
				Qaux <= Qaux;
			elsif (J='0' and K='1') then
				Qaux <= '0';
			elsif (J = '1' and K='0') then
				Qaux <= '1';
			else
				Qaux <= not Qaux;
			end if;
		end if;
	end process;
end arq;

