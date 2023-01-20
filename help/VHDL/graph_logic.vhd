library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
entity graph_logic is
port (
    clk: in std_logic;
    reset: in std_logic;
    -- INPUTS
    --countdown
    v_count: in std_logic; -- V from the vga
    middelste_knop:in std_logic;
    --countdown_in: in std_logic_vector (4 downto 0);
    countdown_klaar: out std_logic;
    --vga
    logic_h_32_minis: in std_logic;
    logic_v_32_minis: in std_logic;
    --input logic
    logic_x: in std_logic_vector (3 downto 0); 
    logic_y: in std_logic_vector (3 downto 0);
    loaded_colour: in std_logic_vector (2 downto 0);
    --opslag
    logic_ram_colour: in std_logic_vector (2 downto 0);
    logic_rom_colour: in std_logic_vector (1 downto 0);
    --OUTPUTS
    --to VGA
    logic_vga_colour: out std_logic_vector (2 downto 0);
    --to rom/ram
    logic_x_asked: out std_logic_vector (3 downto 0);
    logic_y_asked: out std_logic_vector (3 downto 0);
    logic_e_asked: out std_logic_vector (9 downto 0)
);
end;
architecture behav of graph_logic is
component h_counter is
   port(
    logic_h_32: in std_logic;
    clk: in std_logic;
    reset: in std_logic;
    logic_h_out: out std_logic_vector (3 downto 0)
   );
end component;
component v_counter is
   port(
    logic_v_32: in std_logic;
    clk: in std_logic;
    reset: in std_logic;
    logic_v_out: out std_logic_vector (3 downto 0)
   );
end component;
component e_counter is
   port(
    logic_v_out: in std_logic_vector (3 downto 0);
    logic_h_out: in std_logic_vector (3 downto 0);
    muis_x: in std_logic_vector(3 downto 0); 
    muis_y: in std_logic_vector(3 downto 0);
    clk: in std_logic;
    reset: in std_logic;
    logic_e_out: out std_logic_vector (9 downto 0)
   );
end component;
component countdown_bar is      
   port(
    v_count: in std_logic;
    --countdown_aan: in std_logic;
    middelste_knop: in std_logic;
    clk: in std_logic;
    reset: in std_logic;
    countdown_klaar: out std_logic;
    countdown_out: out std_logic_vector(10 downto 0)
    );
end component;

signal local_y, local_x: std_logic_vector (3 downto 0);
signal colour_output: std_logic_vector (2 downto 0);
signal sig_countdown: std_logic_vector (10 downto 0);
signal x_grid_asked, y_grid_asked: integer range 0 to 99;
signal countdown_int, countdown_case: integer range 0 to 2048;
begin
lv: v_counter port map (logic_v_32 => logic_v_32_minis, logic_v_out => local_y, clk => clk, reset => reset);
lh: h_counter port map (logic_h_32 => logic_h_32_minis, logic_h_out => local_x, clk => clk, reset => reset);
le: e_counter port map (logic_v_out => local_y, logic_h_out => local_x, 
			muis_x => logic_x, muis_y => logic_y, logic_e_out => logic_e_asked, clk => clk, reset => reset);
lcountdown: countdown_bar port map (v_count => v_count, middelste_knop => middelste_knop, 
				countdown_out => sig_countdown, 
				countdown_klaar => countdown_klaar, clk => clk, reset => reset ); 
logic_x_asked <= std_logic_vector(to_unsigned(x_grid_asked, logic_x_asked'length));
logic_y_asked <= std_logic_vector(to_unsigned(y_grid_asked, logic_y_asked'length));
countdown_case <= to_integer(unsigned(sig_countdown));
process (countdown_case, countdown_int)
begin
case countdown_case is
	when 0 to 157 =>
		countdown_int <= 13;
	when 158 to 315 =>
		countdown_int <= 12;
	when 319 to 472 =>
		countdown_int <= 11;
	when 473 to 630 =>
		countdown_int <= 10;
	when 631 to 787 =>
		countdown_int <= 9;
	when 788 to 945 =>
		countdown_int <= 8;
	when 946 to 1102 =>
		countdown_int <= 7;
	when 1103 to 1260 =>
		countdown_int <= 6;
	when 1261 to 1417 =>
		countdown_int <= 5;
	when 1418 to 1575 =>
		countdown_int <= 4;
	when 1576 to 1732 =>
		countdown_int <= 3;
	when 1733 to 1890 =>
		countdown_int <= 2;
	when 1891 to 2046 =>
		countdown_int <= 1;
	when others =>
		countdown_int <= 0;
end case;
end process;

process(local_y, local_x, logic_y, logic_x, logic_ram_colour, logic_rom_colour, countdown_int)
    begin
    if (local_y=logic_y and local_x=logic_x) then -- is the cursor on the cell              
        if (logic_rom_colour = "01" ) then -- behind the cursor
            if (("0000"<local_x) and (local_x<"1011") and ("0100"<local_y)) then --canvas
		x_grid_asked <= to_integer(unsigned(local_x))- 1; 
		y_grid_asked <= to_integer(unsigned(local_y))- 5; 
                colour_output <= logic_ram_colour;
            elsif((local_y = "0011") and (local_x /= "1110") and (local_x /= "0000")) then --countdown
                 if (countdown_int < to_integer(unsigned(local_x))) then
                     colour_output <= "000";
                 else
                    colour_output <= "010";
                 end if;
            else
		x_grid_asked <= 0;
		y_grid_asked <= 0;
                colour_output <= "000";
            end if;
        elsif (logic_rom_colour = "00" ) then -- contours of the cursor
            colour_output <= "000";
        elsif (logic_rom_colour = "10" ) then -- main colour of the cursor
            colour_output <= loaded_colour; 
        else
           colour_output <= "111";
        end if;
   elsif (("0000"<local_x) and (local_x<"1011") and ("0100"<local_y)) then--canvas
        colour_output <= logic_ram_colour;
	x_grid_asked <= to_integer(unsigned(local_x))- 1;
	y_grid_asked <= to_integer(unsigned(local_y))- 5;
    elsif((local_y="0011") and (local_x /= "1110") and (local_x /= "0000")) then --countdown
         if (countdown_int < to_integer(unsigned(local_x))) then
                     colour_output <= "000";
                 else
                     colour_output <= "010";
         end if;          
    else
	x_grid_asked <= 0;
	y_grid_asked <= 0;
	colour_output <= "000"; -- background
    end if;

end process;
logic_vga_colour <= colour_output;
end architecture behav;
