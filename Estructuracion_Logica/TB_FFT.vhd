--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   02:12:34 12/27/2021
-- Design Name:   
-- Module Name:   /home/ise/Desktop/Proyectos/Estructuracion_Logica/TB_FFT.vhd
-- Project Name:  Estructuracion_Logica
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Flip_Flop_T
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
 
ENTITY TB_FFT IS
END TB_FFT;
 
ARCHITECTURE behavior OF TB_FFT IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Flip_Flop_T
    PORT(
         T : IN  std_logic;
         clk : IN  std_logic;
         Q : OUT  std_logic;
         Qn : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal T : std_logic := '0';
   signal clk : std_logic := '0';

	--Outputs
   signal Q : std_logic;
   signal Qn : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Flip_Flop_T PORT MAP (
          T => T,
          clk => clk,
          Q => Q,
          Qn => Qn
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
		T <= '0';
      wait for clk_period*10;
		T <= '1';
      wait;
   end process;
END;
