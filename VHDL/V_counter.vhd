library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
entity v_counter is 
port(
logic_v_32: in std_logic;
clk: in std_logic;
reset: in std_logic;
logic_v_out: out std_logic_vector (3 downto 0)
);
end;
architecture behav of v_counter is
component edge_detector is 
port(
	clk     : in  std_logic;
        input  : in  std_logic;
        edges : out std_logic
);
end component;
    signal sig_edges: std_logic;
    signal count_v, new_count_v: unsigned (3 downto 0);
begin
l_edge: edge_detector port map (clk => clk, input => logic_v_32, edges=>sig_edges);
    process(clk, reset)
        begin
            if (rising_edge(clk)) then
                if (reset = '1' or count_v="1110") then
                    count_v <= (others => '0');	
		--new_count <= (others => '0');
                else
                    count_v <= new_count_v;
                end if;
            end if;
    end process;
 
    process(sig_edges, count_v)
    begin
	if (sig_edges ='1') then
		if (count_v="1110") then
        		new_count_v <= (others => '0');
	  	else
        		new_count_v <= count_v + 1;
	  	end if;
	else 
	new_count_v <= count_v;
	end if;
    end process;
    logic_v_out <= std_logic_vector(count_v);
end architecture behav;


