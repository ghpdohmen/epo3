library IEEE;
use IEEE.std_logic_1164.ALL;

architecture behav of edge_detector_tb is
   component edge_detector
      port(clk     : in  std_logic;
           input  : in  std_logic;
           edges : out std_logic);
   end component;
   signal clk     : std_logic;
   signal input  : std_logic;
   signal edges : std_logic;
begin
   test: edge_detector port map (clk, input, edges);
   clk <= '0' after 0 ns,
          '1' after 20 ns when clk /= '1' else '0' after 20 ns;
   input <= '0' after 0 ns,
	    '1' after 100 ns when input /= '1' else '0' after 100 ns;
end behav;

