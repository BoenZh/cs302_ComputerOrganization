----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/07/2016 03:04:16 PM
-- Design Name: 
-- Module Name: and_gate_testbench - Behavioral
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

entity and_gate_testbench is
    
end and_gate_testbench;

architecture Behavioral of and_gate_testbench is
component and_gate is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           Y : out STD_LOGIC);
end component;

signal A, B,Y:std_logic;




begin
dut: and_gate port map(A,B,Y);

P1:process

begin
A<='0';
B<='0';
wait for 5 ps;
A<='1';
B<='0';
wait for 5 ps;

A<='1';
B<='1';


wait;

end process;


end Behavioral;
