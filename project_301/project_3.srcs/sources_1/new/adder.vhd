----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/14/2016 02:55:01 PM
-- Design Name: 
-- Module Name: adder - Behavioral
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

entity adder is
    Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
           B : in STD_LOGIC_VECTOR (3 downto 0);
           CIN : in STD_LOGIC;
           SUM : out STD_LOGIC_VECTOR (3 downto 0);
           COUT : out STD_LOGIC);
end adder;

architecture Behavioral of adder is

component adder_4bit is
port( a : in STD_LOGIC;
          b : in STD_LOGIC;
          c : in STD_LOGIC;
          sum : out STD_LOGIC;
          cout : out STD_LOGIC);
end component;
signal c1,c2,c3:std_logic;
begin
f0: adder_4bit port map(A(0),B(0),CIN,SUM(0),c1);
f1: adder_4bit port map(A(1),B(1),c1,SUM(1),c2);
f2: adder_4bit port map(A(2),B(2),c2,SUM(2),c3);
f3: adder_4bit port map(A(3),B(3),c3,SUM(3),COUT);




end Behavioral;
