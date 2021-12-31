--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   22:19:33 12/28/2021
-- Design Name:   
-- Module Name:   /home/ise/Desktop/Proyectos/Estructuracion_Logica/TB_Ejerc3_10.vhd
-- Project Name:  Estructuracion_Logica
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Ejerc3_10
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
 
ENTITY TB_Ejerc3_10 IS
END TB_Ejerc3_10;
 
ARCHITECTURE behavior OF TB_Ejerc3_10 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Ejerc3_10
    PORT(
         clk : IN  std_logic;
         C : IN  std_logic;
         SAL1 : INOUT  std_logic;
         SAL2 : INOUT  std_logic;
         Q : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal C : std_logic := '0';

	--BiDirs
   signal SAL1 : std_logic;
   signal SAL2 : std_logic;

 	--Outputs
   signal Q : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Ejerc3_10 PORT MAP (
          clk => clk,
          C => C,
          SAL1 => SAL1,
          SAL2 => SAL2,
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
      -- hold reset state for 100 ns.
		wait for clk_period*20;
		C <= '0';
      wait for clk_period*20;
		C <= '1';
      wait;
   end process;

END;
