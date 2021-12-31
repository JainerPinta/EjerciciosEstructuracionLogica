--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   03:13:29 12/28/2021
-- Design Name:   
-- Module Name:   /home/ise/Desktop/Proyectos/Estructuracion_Logica/TB_Ejerc3_4.vhd
-- Project Name:  Estructuracion_Logica
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Ejerc3_4
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
 
ENTITY TB_Ejerc3_4 IS
END TB_Ejerc3_4;
 
ARCHITECTURE behavior OF TB_Ejerc3_4 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Ejerc3_4
    PORT(
         clk : IN  std_logic;
         Q : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';

 	--Outputs
   signal Q : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Ejerc3_4 PORT MAP (
          clk => clk,
          Q => Q
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
      wait for clk_period;
      wait;
   end process;

END;
