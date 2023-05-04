--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:11:57 05/02/2023
-- Design Name:   
-- Module Name:   /home/ise/xilinxShare/submission_template/submit/direct/tb_mulop.vhd
-- Project Name:  idea
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: mulop
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
 
ENTITY tb_mulop IS
END tb_mulop;
 
ARCHITECTURE behavior OF tb_mulop IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT mulop
    PORT(
         I1 : IN  std_logic_vector(15 downto 0);
         I2 : IN  std_logic_vector(15 downto 0);
         O1 : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
       
    type data_vecor_t is array (0 to 10) of std_logic_vector(15 downto 0);
	 signal I1_data : data_vecor_t := (
        x"0000",
        x"0001",
        x"0001",
        x"0003",
        x"0003",
        x"7fff",
        x"7fff",
        x"ffff",
        x"ffff",
        x"8000",
        x"8000"
    );
	 signal I2_data : data_vecor_t := (
        x"0000",
        x"0000",
        x"0001",
        x"0001",
        x"0003",
        x"0003",
        x"7fff",
        x"7fff",
        x"ffff",
        x"ffff",
        x"8000"
    );
	 
	  signal O_data : data_vecor_t := (
        x"0001",
        x"0000",
        x"0001",
        x"0003",
        x"0009",
        x"7ffc",
        x"c003",
        x"0003",
        x"0004",
        x"0001",
        x"c001"
    );
	 
	 signal I1_sig, I2_sig : std_logic_vector(15 downto 0) := (others => '0');
    signal O_sig : std_logic_vector(15 downto 0);
    constant period : time := 10 ns;




BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: mulop PORT MAP (
          I1 => I1_sig,
          I2 => I2_sig,
          O1 => O_sig
        );

   -- Clock process definitions
   I_process :process
   begin
		for i in O_data'range loop
            I1_sig <= I1_data(i);
            I2_sig <= I2_data(i);
            wait for 5 ns;
            assert O_sig = O_data(i) report "Erronous Output" severity note;
            wait for period/2;
        end loop;
        report "Simulation successful!" severity note;
        wait;
   end process;
 
END;
