--  based on fpga4student.com: FPGA projects, Verilog projects, VHDL projects 
-- VHDL project: VHDL code for a single-port RAM 
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE ieee.numeric_std.ALL;

-- single-port RAM in VHDL
entity colour_storage is
generic(N : integer := 10;
        M : integer := 99);
port(
 ram_y: in std_logic_vector(3 downto 0);
 ram_x: in std_logic_vector(3 downto 0);
 ram_colour_in: in std_logic_vector(2 downto 0); -- Data to write into RAM
 draw: in std_logic; -- Write enable 
 counter_aan: in std_logic;
 middelste_knop: in std_logic;
 clk: in std_logic; -- clock input for RAM
 reset: in std_logic;
 ram_y_asked: in std_logic_vector(3 downto 0); 
 ram_x_asked: in std_logic_vector(3 downto 0);
 ram_colour_out: out std_logic_vector(2 downto 0) -- Data output of RAM
 
);
end colour_storage;

architecture Behavioral of colour_storage is
-- define the new type for the 100x3 RAM 
type ram_array is array (0 to M ) of std_logic_vector (2 downto 0);
-- initial values in the RAM
signal ram: ram_array;
signal ram_position: integer range 0 to 99;
signal ram_asked : integer range 0 to 99;
signal x_grid,x_grid_asked  : integer range 0 to 99;
signal y_grid,y_grid_asked : integer range 0 to 99;
signal x_test: integer range 0 to 99;
signal y_test: integer range 0 to 99;
begin
process(clk)
begin
y_test <= to_integer(unsigned(ram_y));
x_test <= to_integer(unsigned(ram_x));
if(rising_edge(clk)) then
	if (reset='1') then		--global reset
		ram <= (OTHERS => (OTHERS => '1'));
        else 
		if (middelste_knop='1') then		-- local reset
			ram <= (OTHERS => (OTHERS => '1'));
		else
			if ((x_test >= 1) and (y_test>=6)) then
				x_grid <= x_test - 1; 
				y_grid <= y_test - 5;
				ram_position <= N*y_grid+ x_grid;

				if (draw='1' and counter_aan='1') then -- Only writes when draw = 1 and the countdown started (counter_aan= 1)
 					ram(ram_position) <= ram_colour_in;
				else 
					ram(ram_position) <= ram(ram_position);
				end if;
			else
				x_grid <= 0; 
				y_grid <= 0;
				ram_position <= 0;
			end if;
		end if;
        end if;
end if;
end process;
x_grid_asked <= to_integer(unsigned(ram_x_asked));
y_grid_asked <= to_integer(unsigned(ram_y_asked));
ram_asked <= N*y_grid_asked+x_grid_asked;
 -- Data to be read out 
ram_colour_out <= ram(ram_asked);
end Behavioral;
