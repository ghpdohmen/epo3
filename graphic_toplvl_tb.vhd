library IEEE;
use IEEE.std_logic_1164.ALL;

entity graphic_toplvl_tb is
end graphic_toplvl_tb;

architecture behaviour of graphic_toplvl_tb is
   component graphic_toplvl
   port(
   	clk	: in std_logic;
	reset	: in std_logic;
	-- inputs from logic going to memory
	logic_x : in std_logic_vector(3 downto 0);
	logic_y : in std_logic_vector(3 downto 0);
	loaded_color: in std_logic_vector(2 downto 0);
	draw	: in std_logic;
	-- input/muis
    	countdown_aan: in std_logic;
    	middelste_knop:in std_logic;
    	countdown_klaar: out std_logic;
	-- outputs to storage
	--logic_x_asked	: out std_logic_vector(3 downto 0);
	--logic_y_asked	: out std_logic_vector (3 downto 0);
    	--logic_e_asked	: out std_logic_vector (9 downto 0);

	-- outputs from vga
	R, G, B, H, V : out std_logic
   );
   
   end component;
   signal clk	: std_logic;
   signal reset	: std_logic;
   signal logic_x : std_logic_vector(3 downto 0);
   signal logic_y : std_logic_vector(3 downto 0);
   signal loaded_color: std_logic_vector(2 downto 0);
   signal draw	: std_logic;
  signal countdown_aan: std_logic;
  signal countdown_klaar: std_logic;
   signal middelste_knop: std_logic;
   --signal logic_x_asked	: std_logic_vector(3 downto 0);
  -- signal logic_y_asked	: std_logic_vector (3 downto 0);
   --signal logic_e_asked	: std_logic_vector (9 downto 0);
   signal R, G, B, H, V : std_logic;
begin
 test: graphic_toplvl port map (clk=> clk, reset=>reset, logic_x=>logic_x, logic_y=>logic_y, loaded_color=>loaded_color, draw=>draw, R=>R, G=>G, B=>B, H=>H, V=>V, countdown_aan=>countdown_aan, countdown_klaar=>countdown_klaar, middelste_knop=>middelste_knop); --, countdown_aan=>countdown_aan  countdown_klaar=>countdown_klaar, middelste_knop=>middelste_knop,
   clk <= '0' after 0 ns,
          '1' after 20 ns when clk /= '1' else '0' after 20 ns;
   reset <= '0' after 0 ns,
            '1' after 10 ns,
	    '0' after 50 ns;

   logic_x <= "0000" after 0 ns;

   logic_y <= "0000" after 0 ns;
   
   loaded_color <= "010" after 0 ns;

   draw <= '1' after 90 ns;

   countdown_aan <= '1' after 0 ns;
   middelste_knop <= '0' after 0 ns, '1' after 90000 ns, '0' after 110000 ns;

   
end behaviour;
