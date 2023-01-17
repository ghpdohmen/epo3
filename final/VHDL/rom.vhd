library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE ieee.numeric_std.ALL;
entity rom_cursor is
generic(M : integer := 1023);
   port(clk            : in  std_logic;
        rom_e_asked    : in  std_logic_vector(9 downto 0);
        rom_colour_out : out std_logic_vector(1 downto 0));
end rom_cursor;
