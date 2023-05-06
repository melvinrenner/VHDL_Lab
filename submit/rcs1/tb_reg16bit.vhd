--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:01:55 05/06/2023
-- Design Name:   
-- Module Name:   /home/ise/xilinxShare/submission_template/submit/rcs1/tb_reg16bit.vhd
-- Project Name:  idea_rcs1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: reg16bit
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
 
ENTITY tb_reg16bit IS
END tb_reg16bit;
 
ARCHITECTURE behavior OF tb_reg16bit IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT reg16bit
    PORT(
			Clock : IN  std_logic;
         ENABLE : IN  std_logic;
         D : IN  std_logic_vector(15 downto 0);
         Q : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    
   -- Inputs	
	signal Clock_sig, ENABLE_sig : std_logic := '0';
	signal D_sig : std_logic_vector(15 downto 0) := (others => '0');
	
	-- Outputs
	signal Q_sig : std_logic_vector(15 downto 0);
 
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: reg16bit PORT MAP (
				Clock => Clock_sig,
				ENABLE => ENABLE_sig,
				D => D_sig,
				Q => Q_sig
        );

   -- Clock process definitions
   CLK_process :process
   begin
		Clock_sig <= '0';
		wait for CLK_period/2;
		Clock_sig <= '1';
		wait for CLK_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		
		D_sig <= x"1234";
		ENABLE_sig <= '0';
      wait for 100 ns;	
		
		ENABLE_sig <= '1';

      wait for CLK_period*10;
		
		

      -- insert stimulus here 
		
		D_sig <= x"5678";
		ENABLE_sig <= '0';
		
		wait for CLK_period*10;
		
		ENABLE_sig <= '1';
		
		wait for CLK_period*10;

      wait;
   end process;

END;
