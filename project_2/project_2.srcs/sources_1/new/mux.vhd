----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/07/2016 03:21:14 PM
-- Design Name: 
-- Module Name: mux - Behavioral
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

entity mux is
    Port (A,B,C,D :in std_logic_vector(0 to 3);
    sel : in
    std_logic_vector(0 to 1);
    Q : out
    std_logic_vector(0 to 3));
end mux;

architecture Behavioral of mux is
    constant delay: time :=100 ns;

begin
    mux_proc :process(A,B,C,D,sel)
        variable temp :std_logic_vector(0 to 3);
    begin
    case sel is
        when "00"=>temp := A;
        when "01"=>temp := B;
        when "10"=>temp := C;
        when "11"=>temp := D;
        when others =>temp :="XXXX";
        end case;
        Q<=temp after delay;
        end process mux_proc;
   
        


end Behavioral;
