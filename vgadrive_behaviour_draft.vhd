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

  -- states 
  type states is (reset_state, on_state, off_state);
  signal state, new_state: states;
  signal enable : std_logic;

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
        enable <= '1';
    end if;
end process;


---  state switcher
stateprocess_1: process(clk)
begin
	if (rising_edge(clk)) then
		if (reset = '1') then
			state <= reset_state;
		else
			state <= new_state;
		end if;
	end if;
end process;


-- actual state logic
stateprocess2: process(clk)
begin
	case state is 
		when reset_state =>
			if (enable = '1') then
				new_state <= on_state;
			else
				new_state <= reset_state;
			end if;
		when on_state =>
			if (enable = '1') then 
                red_out <= red_in;
                green_out <= green_in;
                blue_out <= blue_in;
				new_state <= on_state;
			else 	
				red_out <= '0';
				green_out <= '0';
				blue_out <= '0';
				new_state <= off_state;
			end if;

		when off_state =>
			if (enable = '1') then
				new_state <= on_state;
			else
				new_state <= off_state;
			end if;
    end case;
end process;

end behaviour;