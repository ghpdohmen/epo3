library IEEE;
use IEEE.std_logic_1164.ALL;

architecture behaviour of shiftregister_11bit_tb is
   component shiftregister_11bit
       port (
           clk:        in std_logic;
   	edge15k:	   in	std_logic;
           data_in:    in std_logic;
           reset:      in std_logic;
           data_out:   buffer std_logic_vector(10 downto 0)
       );
   end component;
   signal clk: std_logic;
   signal edge15k: std_logic;
   signal data_in: std_logic;
   signal reset: std_logic;
   signal data_out: std_logic_vector(10 downto 0);
begin
   test: shiftregister_11bit port map (clk, edge15k, data_in, reset, data_out);
   clk <= '0' after 0 ns,
          '1' after 20 ns when clk /= '1' else '0' after 20 ns;
   edge15k <= '0' after 0 ns,
		'1'after 120 ns,
		'0' after 160 ns,

		'1'after 240 ns,
		'0' after 280 ns,

		'1'after 360 ns,
		'0' after 400 ns,

		'1'after 480 ns,
		'0' after 520 ns,

		'1'after 600 ns,
		'0' after 640 ns;


   data_in <= '0' after 0 ns,
  		 '1' after 100 ns,
		'0' after 130 ns;
   reset <= '1' after 0 ns,
            '0' after 80 ns;
   
end behaviour;

