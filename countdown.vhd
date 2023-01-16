library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
entity countdown_bar is 
port(
	enable: in std_logic;
	countdown_aan: in std_logic;
    	middelste_knop: in std_logic;
	clk: in std_logic;
	reset: in std_logic;
	countdown_klaar: out std_logic;
	countdown_out: out std_logic_vector(18 downto 0)
);
end;
architecture behav of countdown_bar is -- +-30 seconden lang het enable signaal op de falling edge tellen, 20 bits
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

process(clk, reset, new_count_c, new_count2_c) -- global reset
        begin
            if (rising_edge(clk)) then
                if (reset = '1') then
                    count_c <= (others => '0');  -- in if else dus goed
                else
                    if (new_count2_c= "0000000000000000000") then
                    	count_c <= new_count2_c; -- goed
                    else
                    	count_c <= new_count_c; -- goed		
		    end if;	
                end if;
            end if;
end process;

process(clk, middelste_knop, new_count_c) -- local reset
        begin
            if (rising_edge(clk)) then
                if (middelste_knop = '1') then
		    new_count2_c <= (others => '0');	 -- goed
                else
                    new_count2_c <= new_count_c;  -- goed
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

end architecture behav;
