----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/14/2016 03:14:39 PM
-- Design Name: 
-- Module Name: adder_test - Behavioral
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

entity adder_test is
    
end adder_test;

architecture Behavioral of adder_test is
signal A :  STD_LOGIC_VECTOR (3 downto 0);
signal B :  STD_LOGIC_VECTOR (3 downto 0);
signal CIN :  STD_LOGIC;
signal SUM :  STD_LOGIC_VECTOR (3 downto 0);
signal COUT :  STD_LOGIC;



component adder is
port( A : in STD_LOGIC_VECTOR (3 downto 0);
           B : in STD_LOGIC_VECTOR (3 downto 0);
           CIN : in STD_LOGIC;
           SUM : out STD_LOGIC_VECTOR (3 downto 0);
           COUT : out STD_LOGIC);
end component;


begin
test_adder: adder
port map(A=>A,B=>B,CIN=>CIN,SUM=>SUM,COUT=>COUT);

test_process:process
begin
A<="0000";
B<="0000";
CIN<='0';
wait for 100ns;

A<="0001";
B<="0001";
CIN<='0';
wait for 100ns;

A<="1111";
B<="0000";
CIN<='0';
wait for 100ns;

A<="0000";
B<="1111";
CIN<='0';
wait for 100ns;

A<="1010";
B<="0000";
CIN<='0';
wait for 100ns;

A<="0000";
B<="1010";
CIN<='0';
wait for 100ns;

A<="0000";
B<="0000";
CIN<='1';
wait for 100ns;
A<="0011";
B<="0011";
CIN<='0';
wait for 100ns;



end process;

end Behavioral;
