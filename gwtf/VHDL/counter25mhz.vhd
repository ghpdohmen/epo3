library IEEE;
use IEEE.std_logic_1164.ALL;

entity counter25mhz is
   port(clk       : in  std_logic;
        reset     : in  std_logic;
        count_out : out  std_logic_vector(11 downto 0));
end counter25mhz;

