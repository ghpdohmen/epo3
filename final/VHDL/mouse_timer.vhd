library IEEE;
use IEEE.std_logic_1164.ALL;

entity mouse_timer is
   port(clk       : in  std_logic;
        reset     : in  std_logic;
        count_out : out  std_logic_vector(21 downto 0));

end mouse_timer;

