--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   03:23:52 12/29/2021
-- Design Name:   
-- Module Name:   /home/ise/Desktop/Proyectos/Estructuracion_Logica/TB_Ejerc3_12.vhd
-- Project Name:  Estructuracion_Logica
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Ejerc_12
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY TB_Ejerc3_12 IS
END TB_Ejerc3_12;
 
ARCHITECTURE behavior OF TB_Ejerc3_12 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Ejerc_12
    PORT(
         clk : IN  std_logic;
         Deco1 : OUT  std_logic_vector(0 to 6);
         Deco2 : OUT  std_logic_vector(0 to 6);
         Deco3 : OUT  std_logic_vector(0 to 6);
         Q1 : OUT  std_logic_vector(0 to 3);
         Q2 : OUT  std_logic_vector(0 to 3);
         Q3 : OUT  std_logic_vector(0 to 3)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';

 	--Outputs
   signal Deco1 : std_logic_vector(0 to 6);
   signal Deco2 : std_logic_vector(0 to 6);
   signal Deco3 : std_logic_vector(0 to 6);
   signal Q1 : std_logic_vector(0 to 3);
   signal Q2 : std_logic_vector(0 to 3);
   signal Q3 : std_logic_vector(0 to 3);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Ejerc_12 PORT MAP (
          clk => clk,
          Deco1 => Deco1,
          Deco2 => Deco2,
          Deco3 => Deco3,
          Q1 => Q1,
          Q2 => Q2,
          Q3 => Q3
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for clk_period;

      -- insert stimulus here 

      wait;
   end process;

END;
