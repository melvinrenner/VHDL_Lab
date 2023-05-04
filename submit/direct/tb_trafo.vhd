--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:32:52 05/03/2023
-- Design Name:   
-- Module Name:   /home/ise/xilinxShare/submission_template/submit/direct/tb_trafo.vhd
-- Project Name:  idea
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: trafo
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
 
ENTITY tb_trafo IS
END tb_trafo;
 
ARCHITECTURE behavior OF tb_trafo IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT trafo
    PORT(
         X1 : IN  std_logic_vector(15 downto 0);
         X2 : IN  std_logic_vector(15 downto 0);
         X3 : IN  std_logic_vector(15 downto 0);
         X4 : IN  std_logic_vector(15 downto 0);
         Z1 : IN  std_logic_vector(15 downto 0);
         Z2 : IN  std_logic_vector(15 downto 0);
         Z3 : IN  std_logic_vector(15 downto 0);
         Z4 : IN  std_logic_vector(15 downto 0);
         Y1 : OUT  std_logic_vector(15 downto 0);
         Y2 : OUT  std_logic_vector(15 downto 0);
         Y3 : OUT  std_logic_vector(15 downto 0);
         Y4 : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    
type data_vector_t is array (0 to 8) of std_logic_vector(15 downto 0);
	
	signal X1_data : data_vector_t := (
        x"0000",
        x"ffff",
        x"ffff",
        x"ffff",
        x"ffff",
        x"ffff",
        x"ffff",
        x"ffff",
        x"ffff"
    );
	 
	 
	 signal X2_data : data_vector_t := (
        x"0000",
        x"0000",
        x"aaaa",
        x"aaaa",
        x"aaaa",
        x"aaaa",
        x"aaaa",
        x"aaaa",
        x"aaaa"
    );
	 
	 signal X3_data : data_vector_t := (
        x"0000",
        x"0000",
        x"0000",
        x"5555",
        x"5555",
        x"5555",
        x"5555",
        x"5555",
        x"5555"
    );
	 
	 
	 signal X4_data : data_vector_t := (
        x"0000",
        x"0000",
        x"0000",
        x"0000",
        x"2492",
        x"2492",
        x"2492",
        x"2492",
        x"2492"
    );
	 
	 signal Z1_data : data_vector_t := (
        x"0000",
        x"0000",
        x"0000",
        x"0000",
        x"0000",
        x"db6d",
        x"db6d",
        x"db6d",
        x"db6d"
    );
	 
	 signal Z2_data : data_vector_t := (
        x"0000",
        x"0000",
        x"0000",
        x"0000",
        x"0000",
        x"0000",
        x"1c71",
        x"1c71",
        x"1c71"
    );
	 
	 signal Z3_data : data_vector_t := (
        x"0000",
        x"0000",
        x"0000",
        x"0000",
        x"0000",
        x"0000",
        x"0000",
        x"cccc",
        x"cccc"
    );
	 
	 
	 signal Z4_data : data_vector_t := (
        x"0000",
        x"0000",
        x"0000",
        x"0000",
        x"0000",
        x"0000",
        x"0000",
        x"0000",
        x"0002"
    );
	 
	 
	 signal Y1_data : data_vector_t := (
        x"0001",
        x"0002",
        x"0002",
        x"0002",
        x"0002",
        x"4928",
        x"4928",
        x"4928",
        x"4928"
    );
	 
	 signal Y2_data : data_vector_t := (
        x"0000",
        x"0000",
        x"0000",
        x"5555",
        x"5555",
        x"5555",
        x"71c6",
        x"71c6",
        x"71c6"
    );
	 
	 signal Y3_data : data_vector_t := (
        x"0000",
        x"0000",
        x"aaaa",
        x"aaaa",
        x"aaaa",
        x"aaaa",
        x"aaaa",
        x"7776",
        x"7776"
    );
	 
	 signal Y4_data : data_vector_t := (
        x"0001",
        x"0001",
        x"0001",
        x"0001",
        x"db6f",
        x"db6f",
        x"db6f",
        x"db6f",
        x"4924"
    );
	 
	signal X1_sig, X2_sig, X3_sig, X4_sig, Z1_sig, Z2_sig , Z3_sig , Z4_sig : std_logic_vector(15 downto 0) := (others => '0');
   signal Y1_sig, Y2_sig, Y3_sig, Y4_sig : std_logic_vector(15 downto 0);
   constant period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: trafo PORT MAP (
          X1 => X1_sig,
          X2 => X2_sig,
          X3 => X3_sig,
          X4 => X4_sig,
          Z1 => Z1_sig,
          Z2 => Z2_sig,
          Z3 => Z3_sig,
          Z4 => Z4_sig,
          Y1 => Y1_sig,
          Y2 => Y2_sig,
          Y3 => Y3_sig,
          Y4 => Y4_sig
        );

   -- Clock process definitions
   I_process :process
   begin
	
		for i in Y1_data'range loop	
				X1_sig <= X1_data(i);
				X2_sig <= X2_data(i);
				X3_sig <= X3_data(i);
				X4_sig <= X4_data(i);
				Z1_sig <= Z1_data(i);
				Z2_sig <= Z2_data(i);
				Z3_sig <= Z3_data(i);
				Z4_sig <= Z4_data(i);
            wait for 5 ns;
            assert Y1_sig = Y1_data(i) and Y2_sig = Y2_data(i) and Y3_sig = Y3_data(i) and Y4_sig = Y4_data(i)  report "Erronous Output" severity note;
            wait for period/2;
        end loop;
        report "Simulation successful!" severity note;
        wait;
		
   end process;

END;
