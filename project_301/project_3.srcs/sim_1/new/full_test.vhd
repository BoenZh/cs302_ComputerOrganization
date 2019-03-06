----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/14/2016 02:12:20 PM
-- Design Name: 
-- Module Name: full_test - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity full_test is
    
end full_test;

architecture Behavioral of full_test is


component adder_4bit is
port (a,b,c : in STD_LOGIC;
    sum,cout: out STD_LOGIC);
end component;
signal a, b, c, sum, cout: std_logic;

begin
test_adder_4bit: adder_4bit
port map(a=>a,
         b=>b,
         c=>c,
         sum=>sum,
         cout=>cout);
test_process:process
begin
a<='0';
b<='0';
c<='0';

wait for 100ns;
a<='0';
b<='1';
c<='0';
         
wait for 100ns;
a<='1';
b<='1';
c<='0';

wait for 100ns;
a<='1';
b<='0';
c<='0';
wait for 100ns;
a<='1';
b<='1';
c<='1';
wait for 100ns;
end process;

end Behavioral;
