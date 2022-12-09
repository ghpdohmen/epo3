library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity flipflop is
    port(
        clk     :   in  std_logic;
        D       :   in  std_logic;
        Q       :   out std_logic
    );
end entity flipflop;