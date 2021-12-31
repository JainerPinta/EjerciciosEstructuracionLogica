-- Jainer Pinta
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Flip_Flop_T is
    Port ( T, clk : in  STD_LOGIC;
           Q, Qn : out  STD_LOGIC);
end Flip_Flop_T;

architecture arqFFT of Flip_Flop_T is
signal Qaux: STD_LOGIC := '0';
begin
	Q <= Qaux;
	Qn <= not Qaux;
	process(T, clk)
	begin
		if (clk'event and clk = '1') then
			if (T='1') then
				Qaux <= not Qaux;
			end if;
		end if;
	end process;
end arqFFT;

