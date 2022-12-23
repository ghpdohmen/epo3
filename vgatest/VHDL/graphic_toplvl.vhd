library IEEE;
use IEEE.std_logic_1164.ALL;

entity graphic_toplvl is
port(
	clk	: in std_logic;
	reset	: in std_logic;
	
	-- inputs from logic going to memory
	logic_x : in std_logic_vector(3 downto 0);
	logic_y : in std_logic_vector(3 downto 0);
	color_in: in std_logic_vector(2 downto 0);
	draw	: in std_logic;

	-- rom
	rom_color	: in std_logic_vector(1 downto 0);

	-- ram
	ram_color : in std_logic_vector(2 downto 0);

	-- outputs to logic
	logic_x_asked	: out std_logic_vector(3 downto 0);
	logic_y_asked	: out std_logic_vector (3 downto 0);
    	logic_e_asked	: out std_logic_vector (9 downto 0);

	-- outputs from vga
	R, G, B, H, V : out std_logic
);

end graphic_toplvl;

