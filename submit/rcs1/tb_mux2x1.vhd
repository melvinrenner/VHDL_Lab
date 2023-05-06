--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:53:30 05/04/2023
-- Design Name:   
-- Module Name:   /home/ise/xilinxShare/submission_template/submit/rcs1/tb_mux2x1.vhd
-- Project Name:  idea_rcs1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: mux2x1
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
 
ENTITY tb_mux2x1 IS
END tb_mux2x1;
 
ARCHITECTURE behavior OF tb_mux2x1 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT mux2x1
    PORT(
         S : IN  std_logic;
         D0 : IN  std_logic_vector(15 downto 0);
         D1 : IN  std_logic_vector(15 downto 0);
         O : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal S : std_logic := '0';
   signal D0, D1 : std_logic_vector(15 downto 0) := (others => '0');

 	--Outputs
   signal O : std_logic_vector(15 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: mux2x1 PORT MAP (
          S => S,
          D0 => D0,
          D1 => D1,
          O => O
        );

   -- Clock process definitions
   I_process :process
   begin
		S <= '0';
		D0 <= x"0001";
		D1 <= x"0002";
		wait for period/2;
		assert O = x"0001"report "erronous output" severity error;
		
		S <= '1';
		D0 <= x"0001";
		D1 <= x"0002";
		wait for period/2;
		assert O = x"0002" report "erronous output" severity error;
		
		S <= '1';
		D0 <= x"0003";
		D1 <= x"0004";
		wait for period/2;
		assert O = x"0004" report "erronous output" severity error;
		
		S <= '0';
		D0 <= x"0003";
		D1 <= x"0004";
		wait for period/2;
		assert O = x"0003" report "erronous output" severity error;
		report "Simulation successful!" severity note;
      wait;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
