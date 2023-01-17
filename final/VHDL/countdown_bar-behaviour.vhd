library IEEE;
use IEEE.std_logic_1164.ALL;

architecture behaviour of countdown_bar is
component edge_det_fall is 
port(
	clk     : in  std_logic;
        input  : in  std_logic;
        edges : out std_logic
);
end component;
signal sig_edge_fall: std_logic;
signal count_c, new_count_c, new_count2_c: unsigned (18 downto 0);
begin
l_edge: edge_det_fall port map (clk => clk, input => enable, edges=>sig_edge_fall);

process(clk, reset, new_count_c, middelste_knop) -- global reset
        begin
            if (rising_edge(clk)) then
                if (reset = '1') then
                    count_c <= (others => '0');  
                else
                    if(middelste_knop='1') then
                        count_c <= (others => '0');
                    else
                        count_c <= new_count_c;
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

process(count_c) -- when the countdown is at 30? seconds countdown_klaar= 1
	begin
		if (count_c = "1111111111111111111") then
			countdown_klaar <= '1';
		else
			countdown_klaar <= '0';
		end if;
end process;

countdown_out <= std_logic_vector(count_c);
end behaviour;

