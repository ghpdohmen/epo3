library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
entity e_counter is 
port(
logic_v_out: in std_logic_vector (3 downto 0);
logic_h_out: in std_logic_vector (3 downto 0);
--logic_h: in std_logic;
muis_x: in std_logic_vector(3 downto 0); 
muis_y: in std_logic_vector(3 downto 0);
clk: in std_logic;
reset: in std_logic;
logic_e_out: out std_logic_vector (9 downto 0)
);
end;
architecture behav of e_counter is
    signal count_e, new_count_e: unsigned (9 downto 0);
    signal x_old: std_logic_vector(3 downto 0); 
    signal y_old: std_logic_vector(3 downto 0);
begin

    process(clk)
        begin
            if (rising_edge(clk)) then
                if (reset = '1') then
                    count_e <= (others => '0');
                else
                    count_e <= new_count_e;
                end if;
            end if;
    end process;
 
    process(clk, count_e, muis_x, muis_y)
    begin
	if((logic_v_out = muis_y) and (logic_h_out = muis_x)) then -- only count when the vga is reading the cursor
		if (clk='1') then
			if ((x_old /= muis_x) or  (y_old /= muis_y)) then
				new_count_e <= (others =>'0');
			else 
        			new_count_e <= count_e + 1;
			end if;
		else 
			new_count_e <= new_count_e;
		end if;
	else 
		new_count_e <= count_e;
	end if;
	x_old<= muis_x;
	y_old<= muis_y;
    end process;
logic_e_out <= std_logic_vector(count_e);
end architecture behav;