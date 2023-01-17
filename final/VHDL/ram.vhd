library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE ieee.numeric_std.ALL;

-- A 128x8 single-port RAM in VHDL
entity colour_storage is
generic(N : integer := 10;--299?
        M : integer := 99);
port(
 ram_y: in std_logic_vector(3 downto 0);
 ram_x: in std_logic_vector(3 downto 0);
 ram_colour_in: in std_logic_vector(2 downto 0); -- Data to write into RAM
 draw: in std_logic; -- Write enable 
 counter_aan: in std_logic;
 clk: in std_logic; -- clock input for RAM
 ram_y_asked: in std_logic_vector(3 downto 0); 
 ram_x_asked: in std_logic_vector(3 downto 0);
 ram_colour_out: out std_logic_vector(2 downto 0) -- Data output of RAM
 
);
end colour_storage;
