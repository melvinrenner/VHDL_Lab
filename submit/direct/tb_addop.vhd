--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:39:59 04/30/2023
-- Design Name:   
-- Module Name:   /home/ise/xilinxShare/submission_template/submit/direct/tb_addop.vhd
-- Project Name:  idea
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: addop
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
 
ENTITY tb_addop IS
END tb_addop;
 
ARCHITECTURE behavior OF tb_addop IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT addop
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
   uut: addop PORT MAP (
          I1 => I1_sig,
          I2 => I2_sig,
          O1 => O1_sig
        );

   -- Clock process definitions
   process2 :process
   begin
		I1_sig <= x"0000";
		I2_sig <= x"0000";
		wait for period/2;		
      assert O1_sig = x"0000" report "erronous output" severity error;

		I1_sig <= x"7ce3";
		I2_sig <= x"0000";
		wait for period/2;
      assert O1_sig = x"7ce3" report "erronous output" severity error;
		
		I1_sig <= x"7ce3";
		I2_sig <= x"2db6";
		wait for period/2;
      assert O1_sig = x"aa99" report "erronous output" severity error;
		
		I1_sig <= x"fce3";
		I2_sig <= x"2db6";
		wait for period/2;
      assert O1_sig = x"2a99" report "erronous output" severity error;
		
		I1_sig <= x"fce3";
		I2_sig <= x"edb6";
		wait for period/2;
      assert O1_sig = x"ea99" report "erronous output" severity error;
		
		I1_sig <= x"7ce3";
		I2_sig <= x"2db6";
		wait for period/2;
      assert O1_sig = x"6a99" report "erronous output" severity error;
		
		report "Simulation successful!" severity note;
      wait;

		
   end process;

END;
