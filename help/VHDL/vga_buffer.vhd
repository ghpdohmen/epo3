library IEEE;
use IEEE.std_logic_1164.ALL;

entity vga_buffer is
   port(clk   : in  std_logic;
        reset : in  std_logic;
        R     : in  std_logic;
        G     : in  std_logic;
        B     : in  std_logic;
        V     : in  std_logic;
        H     : in  std_logic;
        Rout     : out std_logic;
        Gout     : out std_logic;
        Bout     : out std_logic;
        Vout     : out std_logic;
        Hout     : out std_logic);
end vga_buffer;

