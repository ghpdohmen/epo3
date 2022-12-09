library IEEE;
use IEEE.std_logic_1164.ALL;

entity edge_detector is
   port(clk     : in  std_logic;
        clk15k  : in  std_logic;
        edge15k : out std_logic);
end edge_detector;

