library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
entity countdown_bar is 
port(
	v_count: in std_logic; -- V from vga
    	middelste_knop: in std_logic;
	clk: in std_logic;
	reset: in std_logic;
	countdown_aan: out std_logic;
	countdown_out: out std_logic_vector(10 downto 0)
);
end;
architecture behav of countdown_bar is 
component edge_det_fall is 
port(
	clk     : in  std_logic;
        input  : in  std_logic;
        edges : out std_logic
);
end component;

signal sig_edge_fall: std_logic;
signal count_c, new_count_c: unsigned (10 downto 0);
begin
l_edge: edge_det_fall port map (clk => clk, input => v_count, edges=>sig_edge_fall);
process(clk, reset, new_count_c, middelste_knop) 
        begin
            if (rising_edge(clk)) then
                if (reset = '1') then	-- global reset
                    count_c <= (others => '0');  
                else
                    if(middelste_knop='1') then		-- local reset
                        count_c <= (others => '0');
                    elsif (count_c = "1111111111") then
			count_c <= "11111111111";
			countdown_aan <= '0';
		    else
                        count_c <= new_count_c;
			countdown_aan <= '1';
                    end if;
                end if;
            end if;
end process;


process(sig_edge_fall, count_c)  -- counting process, automatic overflow
    begin
	if (sig_edge_fall ='1') then
        	new_count_c <= count_c + 1;
	else 
		new_count_c <= count_c;
	end if;
end process;


countdown_out <= std_logic_vector(count_c);

end architecture behav;
