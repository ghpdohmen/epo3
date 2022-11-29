library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity mouseController is
    port (
        clk :       in std_logic;
        reset:      in std_logic;
        count_in:   in std_logic;
    )