library IEEE;
use IEEE.std_logic_1164.ALL;

architecture behaviour of h_counter is
component edge_detector is 
port(
	clk     : in  std_logic;
        input  : in  std_logic;
        edges : out std_logic
);
end component;
    signal sig_edges: std_logic;
    signal count_h, new_count_h: unsigned (3 downto 0);
begin
l_edge: edge_detector port map (clk => clk, input => logic_h_32, edges=>sig_edges);
    process(clk,reset)
        begin
            if (rising_edge(clk)) then
                if (reset = '1') then
                   count_h <= (others => '0');
		    --new_count <= (others => '0');
                else
                    count_h <= new_count_h;
                end if;
            end if;
    end process;
 
    process(sig_edges, count_h)
    begin
    if (sig_edges ='1') then
	    if (count_h="1110") then
        	new_count_h <= (others => '0');
	    else
        	new_count_h <= count_h + 1;
	    end if;
	else 
	new_count_h <= count_h;
	end if;
    end process;
logic_h_out <= std_logic_vector(count_h);
end behaviour;

