library IEEE;
use IEEE.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

entity submod_rom is
generic(M : integer := 1023);
   port(clk            : in  std_logic;
        rom_e_asked    : in  std_logic_vector(9 downto 0);
        rom_colour_out : out std_logic_vector(1 downto 0));
end submod_rom;

