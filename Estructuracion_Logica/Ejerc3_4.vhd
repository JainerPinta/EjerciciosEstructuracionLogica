-- Jaine Pinta
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Ejerc3_4 is
    Port ( clk: in  STD_LOGIC;
           Q: out  STD_LOGIC_VECTOR (3 downto 0));
end Ejerc3_4;

architecture arqEjerc3_4 of Ejerc3_4 is
signal Qn : STD_LOGIC_VECTOR (3 downto 0) := "0000";
begin
	Q <= Qn;
	process(clk)
		begin
			if (clk'event and clk = '0') then
					Qn <= not((Qn(3) or Qn(2)) or Qn(1)) & Qn (3 downto 1);
			end if;
	end process;
end arqEjerc3_4;

