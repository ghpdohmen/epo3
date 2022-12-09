library IEEE;
use IEEE.std_logic_1164.ALL;

architecture behav of timebase_tb is
   component timebase
   	port (	
   		clk			: in 	std_logic;
   		edge15k		: in 	std_logic;
   		reset		: in	std_logic;
   		count_out	: out	std_logic_vector (3 downto 0)
   	);
   end component;
   signal clk			: std_logic;
   signal edge15k		: std_logic;
   signal reset		: std_logic;
   signal count_out	: std_logic_vector (3 downto 0);
begin
   test: timebase port map (clk, edge15k, reset, count_out);
   clk <= '0' after 0 ns,
          '1' after 20 ns when clk /= '1' else '0' after 20 ns;
   edge15k <= '0' after 0 ns;
   reset <= '1' after 0 ns,
            '0' after 80 ns;
end behav;

