-- fpga4student.com: FPGA projects, Verilog projects, VHDL projects 
-- VHDL project: VHDL code for a single-port RAM 
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE ieee.numeric_std.ALL;

-- A 128x8 single-port RAM in VHDL
entity colour_storage is
generic(N : integer := 10;--299?
        M : integer := 99);
port(
 ram_y: in std_logic_vector(3 downto 0);
 ram_x: in std_logic_vector(3 downto 0);
 ram_colour_in: in std_logic_vector(2 downto 0); -- Data to write into RAM
 draw: in std_logic; -- Write enable 
 counter_aan: in std_logic;
 clk: in std_logic; -- clock input for RAM
 ram_y_asked: in std_logic_vector(3 downto 0); 
 ram_x_asked: in std_logic_vector(3 downto 0);
 ram_colour_out: out std_logic_vector(2 downto 0) -- Data output of RAM
 
);
end colour_storage;

architecture Behavioral of colour_storage is
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
	y_grid <= y_test - 5; -- 5 kan nog veranderen
	ram_position <= N*y_grid+ x_grid;

 	if(clk='1') then
        	if (draw='1' and counter_aan='1') then -- alleen veranderen als draw 1 is en als de countdown aan is, signaal komt van een fsm uit inpout logic
 		ram(ram_position) <= ram_colour_in;
		else 
		ram(ram_position) <= ram(ram_position);
        	end if;
	end if;
else
	x_test<=to_integer(unsigned(ram_x));
end if;
end process;
ram_asked <= N*to_integer(unsigned(ram_y_asked))+to_integer(unsigned(ram_x_asked)); -- x en y naar een integer van 0 tot M(99)
 -- Data to be read out 
ram_colour_out <= ram(ram_asked);
end Behavioral;
