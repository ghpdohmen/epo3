library IEEE;
use IEEE.std_logic_1164.ALL;

architecture behaviour of graph_logic_tb is
   component graph_logic
   port (
       clk: in std_logic;
       reset: in std_logic;
       logic_h_32_minis: in std_logic;
       logic_v_32_minis: in std_logic;
       minis_enable: in std_logic;
       logic_x: in std_logic_vector (3 downto 0); -- dit komt van input logic
       logic_y: in std_logic_vector (3 downto 0);
       loaded_colour: in std_logic_vector (2 downto 0);
       logic_ram_colour: in std_logic_vector (2 downto 0);
       logic_rom_colour: in std_logic_vector (1 downto 0);
       logic_vga_colour: out std_logic_vector (2 downto 0);
       logic_x_asked: out std_logic_vector (3 downto 0);
       logic_y_asked: out std_logic_vector (3 downto 0);
       logic_e_asked: out std_logic_vector (9 downto 0)
   );
   end component;
   signal clk: std_logic;
   signal reset: std_logic;
   signal logic_h_32_minis: std_logic;
   signal logic_v_32_minis: std_logic;
   signal minis_enable: std_logic;
   signal logic_x: std_logic_vector (3 downto 0);
   signal -- dit komt van input logic    logic_y: std_logic_vector (3 downto 0);
   signal loaded_colour: std_logic_vector (2 downto 0);
   signal logic_ram_colour: std_logic_vector (2 downto 0);
   signal logic_rom_colour: std_logic_vector (1 downto 0);
   signal logic_vga_colour: std_logic_vector (2 downto 0);
   signal logic_x_asked: std_logic_vector (3 downto 0);
   signal logic_y_asked: std_logic_vector (3 downto 0);
   signal logic_e_asked: std_logic_vector (9 downto 0);
begin
   test: graph_logic port map (clk, reset, logic_h_32_minis, logic_v_32_minis, minis_enable, logic_x, -- dit komt van input logic    logic_y, loaded_colour, logic_ram_colour, logic_rom_colour, logic_vga_colour, logic_x_asked, logic_y_asked, logic_e_asked);
   clk <= '0' after 0 ns,
          '1' after 20 ns when clk /= '1' else '0' after 20 ns;
   reset <= '1' after 0 ns,
            '0' after 80 ns;
   logic_h_32_minis <= '0' after 0 ns;
   logic_v_32_minis <= '0' after 0 ns;
   minis_enable <= '0' after 0 ns;
   logic_x(0) <= '0' after 0 ns;
   logic_x(1) <= '0' after 0 ns;
   logic_x(2) <= '0' after 0 ns;
   logic_x(3) <= '0' after 0 ns;
   -- dit komt van input logic    logic_y(0) <= '0' after 0 ns;
   -- dit komt van input logic    logic_y(1) <= '0' after 0 ns;
   -- dit komt van input logic    logic_y(2) <= '0' after 0 ns;
   -- dit komt van input logic    logic_y(3) <= '0' after 0 ns;
   loaded_colour(0) <= '0' after 0 ns;
   loaded_colour(1) <= '0' after 0 ns;
   loaded_colour(2) <= '0' after 0 ns;
   logic_ram_colour(0) <= '0' after 0 ns;
   logic_ram_colour(1) <= '0' after 0 ns;
   logic_ram_colour(2) <= '0' after 0 ns;
   logic_rom_colour(0) <= '0' after 0 ns;
   logic_rom_colour(1) <= '0' after 0 ns;
end behaviour;

