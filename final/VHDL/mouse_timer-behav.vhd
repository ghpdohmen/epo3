library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.all;

--Counter voor 25MHz clock van muis om de sampling rate voor dx en dy te verlagen.

architecture behav of mouse_timer is
	signal count, new_count: unsigned (21 downto 0);
begin
	process(clk)
		begin
			if (rising_edge(clk)) then
				if (reset = '1') then
					count <= (others => '0');
				else
					count <= new_count;
				end if;
			end if;
	end process;

	process (count)
	begin
		new_count <= count + 1;
	end process;
	count_out <= std_logic_vector(count);
end behav;

