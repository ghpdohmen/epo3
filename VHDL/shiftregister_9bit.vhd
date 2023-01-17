library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity shiftregister_9bit is
  port (
    clk:        in std_logic;
    edge15k:		in std_logic;
    data_in:    in std_logic_vector(8 downto 0);
    reset:      in std_logic;
    data_out:   out std_logic
  ) ;
end shiftregister_9bit;
