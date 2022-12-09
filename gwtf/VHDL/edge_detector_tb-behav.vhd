library IEEE;
use IEEE.std_logic_1164.ALL;

architecture behav of edge_detector_tb is
   component edge_detector
      port(clk     : in  std_logic;
           clk15k  : in  std_logic;
           edge15k : out std_logic);
   end component;
   signal clk     : std_logic;
   signal clk15k  : std_logic;
   signal edge15k : std_logic;
begin
   test: edge_detector port map (clk, clk15k, edge15k);
   clk <= '0' after 0 ns,
          '1' after 20 ns when clk /= '1' else '0' after 20 ns;
   clk15k <= '0' after 0 ns,
	     '1' after 40 ns;
end behav;

