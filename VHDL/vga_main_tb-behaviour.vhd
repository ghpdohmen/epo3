library IEEE;
use IEEE.std_logic_1164.ALL;

architecture behaviour of vga_main_tb is
   component vga_main
       port(clk		: in std_logic;
   	rgb_IN	: in std_logic_vector(2 downto 0);
   	reset	: in std_logic;
   	imgrdy	: out std_logic;
   	hsync	: out std_logic;
   	vsync	: out std_logic;
   	rgb_out	: out std_logic_vector(2 downto 0)
   	);
   end component;
   signal clk		: std_logic;
   signal rgb_IN	: std_logic_vector(2 downto 0);
   signal reset	: std_logic;
   signal imgrdy	: std_logic;
   signal hsync	: std_logic;
   signal vsync	: std_logic;
   signal rgb_out	: std_logic_vector(2 downto 0);
begin
   test: vga_main port map (clk, rgb_IN, reset, imgrdy, hsync, vsync, rgb_out);
   clk <= '0' after 0 ns,
          '1' after 20 ns when clk /= '1' else '0' after 20 ns;
   rgb_IN(0) <= '0' after 0 ns;
   rgb_IN(1) <= '0' after 0 ns;
   rgb_IN(2) <= '1' after 0 ns;
   reset <= '1' after 0 ns,
            '0' after 80 ns;
end behaviour;

