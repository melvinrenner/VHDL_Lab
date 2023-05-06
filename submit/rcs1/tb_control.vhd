--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   12:26:28 05/06/2023
-- Design Name:   
-- Module Name:   /home/ise/xilinxShare/submission_template/submit/rcs1/tb_control.vhd
-- Project Name:  idea_rcs1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: control
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
--USE ieee.numeric_std.ALL
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY tb_control IS
END tb_control;
 
ARCHITECTURE behavior OF tb_control IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT control
    PORT(
         CLK : IN  std_logic;
         START : IN  std_logic;
         ROUND : OUT  std_logic_vector(3 downto 0);
         READY : OUT  std_logic;
         EN : OUT  std_logic;
         S : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal CLK_sig, START_sig : std_logic := '0';

 	--Outputs
   signal ROUND_sig : std_logic_vector(3 downto 0);
   signal READY_sig, EN_sig, S_sig : std_logic;
   -- Clock period definitions
   constant CLK_period: time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: control PORT MAP (
          CLK => CLK_sig,
          START => START_sig,
          ROUND => ROUND_sig,
          READY => READY_sig,
          EN => EN_sig,
          S => S_sig
        );  

   -- Clock process definitions
   CLK_process :process
   begin
	
			CLK_sig <= '0';
			START_sig  <= '1';
			wait for CLK_period/2;
			--assert READY_sig = '1' and S_sig = '1' and EN_sig = '0' and ROUND_sig = "0000" report "erronous output" severity error;

			CLK_sig  <= '1';
			START_sig  <= '1';
			wait for CLK_period/2;
			--assert READY_sig = '0' and S_sig = '0' and EN_sig = '1' and ROUND_sig = "0000" report "erronous output" severity error;

			
			CLK_sig  <= '0';
			START_sig  <= '0';
			wait for CLK_period/2;

			CLK_sig  <= '1';
			START_sig  <= '0';
			wait for CLK_period/2;
			
			CLK_sig  <= '0';
			START_sig  <= '0';
			wait for CLK_period/2;
			
			CLK_sig  <= '1';
			START_sig  <= '0';
			wait for CLK_period/2;
			
			CLK_sig  <= '0';
			START_sig  <= '0';
			wait for CLK_period/2;
			
			CLK_sig  <= '1';
			START_sig  <= '0';
			wait for CLK_period/2;
			
			CLK_sig  <= '0';
			START_sig  <= '0';
			wait for CLK_period/2;
			
			CLK_sig  <= '1';
			START_sig  <= '0';
			wait for CLK_period/2;
			
			CLK_sig  <= '0';
			START_sig  <= '0';
			wait for CLK_period/2;
			
			CLK_sig  <= '1';
			START_sig  <= '0';
			wait for CLK_period/2;
			
			CLK_sig  <= '0';
			START_sig  <= '0';
			wait for CLK_period/2;
			
			CLK_sig  <= '1';
			START_sig  <= '0';
			wait for CLK_period/2;
			
			CLK_sig  <= '0';
			START_sig  <= '0';
			wait for CLK_period/2;
			
			CLK_sig  <= '1';
			START_sig  <= '0';
			wait for CLK_period/2;
			
			CLK_sig  <= '0';
			START_sig  <= '0';
			wait for CLK_period/2;
			
			CLK_sig  <= '1';
			START_sig  <= '0';
			wait for CLK_period/2;
			
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for CLK_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
