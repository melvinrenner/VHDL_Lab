--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:21:43 05/07/2023
-- Design Name:   
-- Module Name:   /home/ise/xilinxShare/submission_template/submit/rcs2/tb_idea_rcs2.vhd
-- Project Name:  idea_rcs2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: idea_rcs2
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
 
ENTITY tb_idea_rcs2plus IS
END tb_idea_rcs2plus;
 
ARCHITECTURE behavior OF tb_idea_rcs2plus IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT idea_rcs2plus
    PORT(
         CLOCK : IN  std_logic;
         START : IN  std_logic;
         KEY : IN  std_logic_vector(127 downto 0);
         X_1 : IN  std_logic_vector(15 downto 0);
         X_2 : IN  std_logic_vector(15 downto 0);
         X_3 : IN  std_logic_vector(15 downto 0);
         X_4 : IN  std_logic_vector(15 downto 0);
         Y_1 : OUT  std_logic_vector(15 downto 0);
         Y_2 : OUT  std_logic_vector(15 downto 0);
         Y_3 : OUT  std_logic_vector(15 downto 0);
         Y_4 : OUT  std_logic_vector(15 downto 0);
         READY : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal CLOCK_sig, START_sig : std_logic := '0';
   signal KEY_sig : std_logic_vector(127 downto 0) := (others => '0');
   signal X_1_sig, X_2_sig, X_3_sig, X_4_sig : std_logic_vector(15 downto 0) := (others => '0');

 	--Outputs
   signal Y_1_sig, Y_2_sig, Y_3_sig, Y_4_sig : std_logic_vector(15 downto 0);
   signal READY_sig : std_logic;

   -- Clock period definitions
   constant CLOCK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: idea_rcs2plus PORT MAP (
          CLOCK => CLOCK_sig,
          START => START_sig,
          KEY => KEY_sig,
          X_1 => X_1_sig,
          X_2 => X_2_sig,
          X_3 => X_3_sig,
          X_4 => X_4_sig,
          Y_1 => Y_1_sig,
          Y_2 => Y_2_sig,
          Y_3 => Y_3_sig,
          Y_4 => Y_4_sig,
          READY => READY_sig
        );

   -- Clock process definitions
   CLOCK_process :process
   begin
		CLOCK_sig <= '0';
		wait for CLOCK_period/2;
		CLOCK_sig <= '1';
		wait for CLOCK_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		--START_sig <= '0';
      wait for 100 ns;	

		KEY_sig <= x"00010002000300040005000600070008";
		X_1_sig <= x"1111";
		X_2_sig <= x"2222";
		X_3_sig <= x"4444";
		X_4_sig <= x"8888";
	
	
		START_sig <= '1';
		wait for CLOCK_period;
		START_sig <= '0';
		wait for 1100 ns;
		
		assert Y_1_sig = x"8aa9" and Y_2_sig = x"0fef" and Y_3_sig = x"c0c9" and Y_4_sig = x"56f6"  report "Erronous Output" severity note;
		
		wait for 200 ns;
		
		KEY_sig <= x"00000000000000000000000000000000";
		X_1_sig <= x"0000";
		X_2_sig <= x"0000";
		X_3_sig <= x"0000";
		X_4_sig <= x"0000";

		START_sig <= '1';
		wait for CLOCK_period;
		START_sig <= '0';
		wait for 1100 ns;
		
		assert Y_1_sig = x"0001" and Y_2_sig = x"0001" and Y_3_sig = x"0000" and Y_4_sig = x"0000"  report "Erronous Output" severity note;

		report "Simulation successful!" severity note;

      wait;
   end process;

END;
