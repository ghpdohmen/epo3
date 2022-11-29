library IEEE;
use IEEE.std_logic_1164.ALL;

architecture behav of shiftregister_11bit_tb is
   component shiftregister_11bit
       port (
           clk:        in std_logic;
           data_in:    in std_logic;
           reset:      in std_logic;
           data_out:   out std_logic_vector(10 downto 0)
       );
   end component;
   signal clk: std_logic;
   signal data_in: std_logic;
   signal reset: std_logic;
   signal data_out: std_logic_vector(10 downto 0);
begin
   test: shiftregister_11bit port map (clk, data_in, reset, data_out);
   clk <= '0' after 0 ns,
          '1' after 20 ns when clk /= '1' else '0' after 20 ns;
   data_in <= '0' after 0 ns,
   	      '1' after 30 ns,
	      '0' after 120 ns,
	      '1' after 180 ns;
   reset <= '1' after 0 ns,
            '0' after 40 ns;
end behav;

