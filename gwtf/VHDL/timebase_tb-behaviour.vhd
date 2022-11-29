library IEEE;
use IEEE.std_logic_1164.ALL;

architecture behaviour of timebase_tb is
   component timebase
   	port (	clk		: in	std_logic;
   		reset		: in	std_logic;
   		clk15k		: out	std_logic
   	);
   end component;
   signal clk		: std_logic;
   signal reset		: std_logic;
   signal clk15k		: std_logic;
begin
   test: timebase port map (clk, reset, clk15k);
   clk <= '0' after 0 ns,
          '1' after 20 ns when clk /= '1' else '0' after 20 ns;
   reset <= '1' after 0 ns,
            '0' after 80 ns;
end behaviour;

