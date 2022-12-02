library IEEE;
use IEEE.std_logic_1164.ALL;

entity vgadriver is
   port(clk       : in  std_logic;
        red_in    : in  std_logic;
        green_in  : in  std_logic;
        blue_in   : in  std_logic;
        start_mem : out std_logic;
        red_out   : out std_logic;
        green_out : out std_logic;
        blue_out  : out std_logic;
        hsync_out : out std_logic;
        vsync_out : out std_logic);
end vgadriver;

