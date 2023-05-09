--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:10:18 05/07/2023
-- Design Name:   
-- Module Name:   /home/ise/xilinxShare/submission_template/submit/rcs2/tb_control.vhd
-- Project Name:  idea_rcs2
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
         INIT : IN  std_logic;
         TRAFO : IN  std_logic;
         EN125 : OUT  std_logic;
         EN346 : OUT  std_logic;
         EN78 : OUT  std_logic;
         RESULT : OUT  std_logic;
         S : OUT  std_logic_vector(1 downto 0);
         S_T : OUT  std_logic_vector(1 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal CLK_sig, INIT_sig, TRAFO_sig : std_logic := '0';

 	--Outputs
   signal EN125_sig, EN346_sig, EN78_sig, RESULT_sig : std_logic;
   signal S_sig, S_T_sig : std_logic_vector(1 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: control PORT MAP (
          CLK => CLK_sig,
          INIT => INIT_sig,
          TRAFO => TRAFO_sig,
          EN125 => EN125_sig,
          EN346 => EN346_sig,
          EN78 => EN78_sig,
          RESULT => RESULT_sig,
          S => S_sig,
          S_T => S_T_sig
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
		INIT_sig <= '0';
		TRAFO_sig <= '0';
      wait for 100 ns;
		
		
		wait for 6ns;	
		INIT_sig <= '1';
		wait for CLK_period;		
		INIT_sig <= '0';		
		wait for 100 ns;
		
		
		INIT_sig <= '1';	
		TRAFO_sig <= '1';
		wait for CLK_period;	
		INIT_sig <= '0';	
		wait for 100 ns;
		
		
		INIT_sig <= '1';	
		TRAFO_sig <= '0';
		wait for CLK_period;
		INIT_sig <= '0';
		wait for 100 ns;

      -- insert stimulus here 

      wait;
   end process;

END;
