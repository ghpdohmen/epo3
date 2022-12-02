library IEEE;
use IEEE.std_logic_1164.ALL;

architecture behaviour of vgadriver_tb is
   component vgadriver
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
   end component;
   signal clk       : std_logic;
   signal red_in    : std_logic;
   signal green_in  : std_logic;
   signal blue_in   : std_logic;
   signal start_mem : std_logic;
   signal red_out   : std_logic;
   signal green_out : std_logic;
   signal blue_out  : std_logic;
   signal hsync_out : std_logic;
   signal vsync_out : std_logic;
begin
   test: vgadriver port map (clk, red_in, green_in, blue_in, start_mem, red_out, green_out, blue_out, hsync_out, vsync_out);
   clk <= '0' after 0 ns,
          '1' after 20 ns when clk /= '1' else '0' after 20 ns;
   red_in <= '0' after 0 ns;
   green_in <= '0' after 0 ns;
   blue_in <= '0' after 0 ns, '1' after 200 ns, '0' after 1000 ns;
end behaviour;

