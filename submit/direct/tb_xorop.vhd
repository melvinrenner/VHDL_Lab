--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:34:49 04/30/2023
-- Design Name:   
-- Module Name:   /home/ise/xilinxShare/submission_template/submit/direct/tb_xorop.vhd
-- Project Name:  idea
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: xorop
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
 
ENTITY tb_xorop IS
END tb_xorop;
 
ARCHITECTURE behavior OF tb_xorop IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT xorop
    PORT(
         I1 : IN  std_logic_vector(15 downto 0);
         I2 : IN  std_logic_vector(15 downto 0);
         O1 : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal I1_sig : std_logic_vector(15 downto 0) := (others => '0');
   signal I2_sig : std_logic_vector(15 downto 0) := (others => '0');

 	--Outputs
   signal O1_sig : std_logic_vector(15 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: xorop PORT MAP (
          I1 => I1_sig,
          I2 => I2_sig,
          O1 => O1_sig
        );

   -- Clock process definitions
   process1 :process
   begin
		I1_sig <=  x"0000";
		I2_sig <=  x"0000";
		wait for period/2;
      assert O1_sig = x"0000" report "erronous output" severity error;
		
		I1_sig <=  x"1234";
		I2_sig <=  x"5678";
		wait for period/2;
      assert O1_sig = x"444c" report "erronous output" severity error;
		
		I1_sig <=  x"1234";
		I2_sig <=  x"0000";
		wait for period/2;
      assert O1_sig = x"1234" report "erronous output" severity error;
		
		report "Simulation successful!" severity note;
      wait;
		
   end process;
 


END;
