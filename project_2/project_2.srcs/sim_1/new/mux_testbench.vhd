----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/07/2016 03:34:41 PM
-- Design Name: 
-- Module Name: mux_testbench - Behavioral
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

entity mux_testbench is
    
end mux_testbench;

architecture Behavioral of mux_testbench is
signal  A : std_logic_vector(0 to 3);
signal  B : std_logic_vector(0 to 3);
signal  C : std_logic_vector(0 to 3);
signal  D : std_logic_vector(0 to 3);
signal  sel : std_logic_vector(0 to 1);
signal  Q : std_logic_vector(0 to 3);

component mux is
    Port (A,B,C,D :in std_logic_vector(0 to 3);
    sel : in
    std_logic_vector(0 to 1);
    Q : out
    std_logic_vector(0 to 3));
end component;

begin
test_mux: mux
port map(A => A,
         B => B,
         C => C,
         D => D,
         sel => sel,
         Q => Q);
test_process:process
begin
A<="1010";
B<="1011";
C<="1100";
D<="1101";
sel<="00";

wait for 100 ns;
sel<="01";

wait for 100 ns;
sel<="10";

wait for 100 ns;
sel<="11";
wait for 100 ns;

end process;





end Behavioral;
