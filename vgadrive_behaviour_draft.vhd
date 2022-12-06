library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

architecture behaviour of vgadriver is
subtype counter is std_logic_vector(9 downto 0);
constant h_pulse : natural := 96;
constant h_fp : natural := 8;
constant h_bp : natural := 40;
constant h_width : natural := 640;
constant h_leftborder : natural := 8;
constant h_rightborder : natural := 8;
constant v_pulse : natural := 2;
constant v_fp : natural := 2;
constant v_bp : natural := 25;
constant v_height : natural := 480;
constant v_topborder : natural := 8;
constant v_botborder : natural := 8;
constant h_sum: natural := h_pulse + h_fp + h_bp + h_width;
constant v_sum : natural := v_pulse + v_fp + v_bp + v_height;
begin

red_out <= red_in;
green_out <= green_in;
blue_out <= blue_in;

process
	variable vertical, horizontal: counter;
	
begin
wait until clk = '1';
if (horizontal < h_sum - 1) then
	horizontal := horizontal + 1;
else
	horizontal := (others => '0');
	if (vertical < v_sum - 1) then
		vertical := vertical + 1;
	else
		vertical := (others => '0');
	end if;
end if;

if horizontal >= (h_width + h_bp) and horizontal < (h_width + h_bp + h_fp) then
	hsync_out <= '0';
else
	hsync_out <= '1';
end if;

if vertical >= (v_height + v_bp) and vertical < (v_height + v_bp + v_fp) then
	vsync_out <= '0';
else
	vsync_out <= '1';
end if;


end process;



end behaviour;