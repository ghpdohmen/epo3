library IEEE;
use IEEE.std_logic_1164.ALL;

entity edge_det_fall is
   port(clk     : in  std_logic;
        input  : in  std_logic;
        edges : out std_logic);
end edge_det_fall;

