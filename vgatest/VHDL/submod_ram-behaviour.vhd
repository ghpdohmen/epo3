library IEEE;
use IEEE.std_logic_1164.ALL;

architecture behaviour of submod_ram is
-- define the new type for the 100x3 RAM 
type ram_array is array (0 to M ) of std_logic_vector (2 downto 0);
-- initial values in the RAM
signal ram: ram_array :=(
   "111","111","111","111",
   "111","111", "111","111",
   "111","111","111","111",
   "111","111", "111","111",
   "111","111","111","111",
   "111","111", "111","111", 
   "111","111","111","111",
   "111","111", "111","111", 
   "111","111","111","111",
   "111","111", "111","111", 
   "111","111", "111","111",
   "111","111","111","111",
   "111","111", "111","111",
   "111","111","111","111", 
   "111","111", "111","111", 
   "111","111","111","111",
   "111","111", "111","111",
   "111","111","111","111",
   "111","111", "111","111",
   "111","111","111","111",
   "111","111", "111","111",
   "111","111","111","111",
   "111","111", "111","111", 
   "111","111","111","111",
   "111","111","111","111"
   );
signal ram_position: integer range 0 to 99;
signal ram_asked : integer range 0 to 99;
signal x_grid : integer range 0 to 99;
signal y_grid : integer range 0 to 99;
signal x_test: integer range 0 to 99;
signal y_test: integer range 0 to 99;
begin
process(clk)
begin
y_test <= to_integer(unsigned(ram_y));
x_test <= to_integer(unsigned(ram_x));
if ((x_test >= 1) and (y_test>=6)) then
	x_grid <= x_test- 1; --1 kan nog veranderen
	y_grid <= y_test - 6; -- 6 kan nog veranderen
	ram_position <= N*y_grid+ x_grid;

 	if(clk='1') then
        	if (draw='1') then
 		ram(ram_position) <= ram_colour_in;
		else 
		ram(ram_position) <= ram(ram_position);
        	end if;
	end if;
else
	x_test<=to_integer(unsigned(ram_x));
end if;
end process;
ram_asked <= 10*to_integer(unsigned(ram_y_asked))+to_integer(unsigned(ram_x_asked)); -- x en y naar een integer van 0 tot M(99)
 -- Data to be read out 
ram_colour_out <= ram(ram_asked);
end behaviour;

