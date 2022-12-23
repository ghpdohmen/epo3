library IEEE;
use IEEE.std_logic_1164.ALL;

architecture behaviour of graphic_toplvl_tb is
   component graphic_toplvl
   port(
   	clk	: in std_logic;
   	reset	: in std_logic;
   	
   	logic_x : in std_logic_vector(3 downto 0);
   	logic_y : in std_logic_vector(3 downto 0);
   	color_in: in std_logic_vector(2 downto 0);
   	draw	: in std_logic;
   
   	rom_color	: in std_logic_vector(1 downto 0);
   
   	ram_color : in std_logic_vector(2 downto 0);
   
   	logic_x_asked	: out std_logic_vector(3 downto 0);
   	logic_y_asked	: out std_logic_vector (3 downto 0);
       	logic_e_asked	: out std_logic_vector (9 downto 0);
   
   	R, G, B, H, V : out std_logic
   );
   
   end component;
   signal clk	: std_logic;
   signal reset	: std_logic;
   signal logic_x : std_logic_vector(3 downto 0);
   signal logic_y : std_logic_vector(3 downto 0);
   signal color_in: std_logic_vector(2 downto 0);
   signal draw	: std_logic;
   signal rom_color	: std_logic_vector(1 downto 0);
   signal ram_color : std_logic_vector(2 downto 0);
   signal logic_x_asked	: std_logic_vector(3 downto 0);
   signal logic_y_asked	: std_logic_vector (3 downto 0);
   signal logic_e_asked	: std_logic_vector (9 downto 0);
   signal R, G, B, H, V : std_logic;
begin
   test: graphic_toplvl port map (clk, reset, logic_x, logic_y, color_in, draw, rom_color, ram_color, logic_x_asked, logic_y_asked, logic_e_asked, R, G, B, H, V);
   clk <= '0' after 0 ns,
          '1' after 20 ns when clk /= '1' else '0' after 20 ns;
   reset <= '1' after 0 ns,
            '0' after 80 ns;

   logic_x <= "0000" after 0 ms;

   logic_y <= "1011" after 0 ms;

   color_in(0) <= '0' after 0 ns;
   color_in(1) <= '1' after 0 ns;
   color_in(2) <= '0' after 0 ns;

   draw <= '1' after 90 ns;

   rom_color(0) <= '0' after 0 ns;
   rom_color(1) <= '1' after 0 ns;

   ram_color(0) <= '1' after 0 ns;
   ram_color(1) <= '1' after 0 ns;
   ram_color(2) <= '1' after 0 ns;

end behaviour;

