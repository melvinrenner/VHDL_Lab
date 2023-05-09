--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:28:13 05/07/2023
-- Design Name:   
-- Module Name:   /home/ise/xilinxShare/submission_template/submit/rcs2/tb_roundcounter.vhd
-- Project Name:  idea_rcs2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: roundcounter
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
 
ENTITY tb_roundcounter IS
END tb_roundcounter;
 
ARCHITECTURE behavior OF tb_roundcounter IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT roundcounter
    PORT(
         CLK : IN  std_logic;
         START : IN  std_logic;
         RESULT : IN  std_logic;
         READY : OUT  std_logic;
         S_i : OUT  std_logic;
         INIT : OUT  std_logic;
         TRAFO : OUT  std_logic;
         ROUND : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal CLK_sig, START_sig, RESULT_sig : std_logic := '0';

 	--Outputs
   signal READY_sig, S_i_sig, INIT_sig, TRAFO_sig : std_logic;
   signal ROUND_sig : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: roundcounter PORT MAP (
          CLK => CLK_sig,
          START => START_sig,
          RESULT => RESULT_sig,
          READY => READY_sig,
          S_i => S_i_sig,
          INIT => INIT_sig,
          TRAFO => TRAFO_sig,
          ROUND => ROUND_sig
        );

   -- Clock process definitions
   CLK_process :process
   begin
		CLK_sig <= '0';
		wait for CLK_period/2;
		CLK_sig <= '1';
		wait for CLK_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		START_sig <= '0';
		RESULT_sig <= '0';
      wait for 100 ns;	

      wait for CLK_period*10;

      -- insert stimulus here 
		
		START_sig <= '1';		
      wait for CLK_period;
		START_sig <= '0';
      wait for CLK_period*10;
		
		for j in 0 to 7 loop	
			RESULT_sig <= '1';
			wait for CLK_period;
			RESULT_sig <= '0';
			wait for CLK_period*10;		
		end loop;
		
		RESULT_sig <= '1';
		wait for CLK_period;

      wait;
   end process;

END;
