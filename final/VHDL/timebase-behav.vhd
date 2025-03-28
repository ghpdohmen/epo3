library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

--Counter voor 15kHz clock van muis

architecture behav of timebase is
	signal count, new_count: unsigned (3 downto 0);
begin	

	process(clk)
		begin
			if (rising_edge(clk)) then
				if(reset = '1') then
						count <= (others => '0');
					elsif(edge15k = '1') then
						count <= new_count;
					end if;
				
				end if;
	end process;


	process (count)
	begin
		new_count <= count + 1;
	end process;
	count_out <= std_logic_vector(count);
end architecture behav;
