----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/21/2016 03:37:10 PM
-- Design Name: 
-- Module Name: adderFull_test - Behavioral
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

entity adderFull_test is
   
end adderFull_test;

architecture Behavioral of adderFull_test is


component adder_full is 
Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           c : in STD_LOGIC;
           sum : out STD_LOGIC;
           cout : out STD_LOGIC);
end component;
signal a, b, c, sum, cout: std_logic;

begin
test_adder: adder_full
port map(a=>a,b=>b,c=>c,sum=>sum,cout=>cout);

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
