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
    signal count, new_count: unsigned (3 downto 0);
begin
    process(clk, reset)
        begin
            if (rising_edge(clk)) then
                if (reset = '1' or count="1110") then
                    count <= (others => '0');	
		--new_count <= (others => '0');
                else
                    count <= new_count;
                end if;
            end if;
    end process;
 
    process(logic_v_32, count)
    begin
	if (logic_v_32 ='1') then
		if (count="1110") then
        		new_count <= (others => '0');
	  	else
        		new_count <= count + 1;
	  	end if;
	else 
	new_count <= count;
	end if;
    end process;
    logic_v_out <= std_logic_vector(count);
end architecture behav;

