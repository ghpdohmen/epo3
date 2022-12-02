library IEEE;
use IEEE.std_logic_1164.ALL;

architecture behav of shiftregister_9bit_tb is
   component shiftregister_9bit
     port (
       clk:        in std_logic;
       data_in:    in std_logic_vector(8 downto 0);
       reset:      in std_logic;
       data_out:   out std_logic
     ) ;
   end component;
   signal clk: std_logic;
   signal data_in: std_logic_vector(8 downto 0);
   signal reset: std_logic;
   signal data_out: std_logic;
begin
   test: shiftregister_9bit port map (clk, data_in, reset, data_out);
   clk <=	'0' after 0 ns,
          '1' after 20 ns when clk /= '1' else '0' after 20 ns;
   data_in(0) <= '0' after 0 ns;
   data_in(1) <= '1' after 0 ns;
   data_in(2) <= '0' after 0 ns;
   data_in(3) <= '0' after 0 ns;
   data_in(4) <= '0' after 0 ns;
   data_in(5) <= '1' after 0 ns;
   data_in(6) <= '1' after 0 ns;
   data_in(7) <= '0' after 0 ns;
   data_in(8) <= '0' after 0 ns;
   reset <= '1' after 0 ns,
            '0' after 80 ns;
end behav;

