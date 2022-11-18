library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity timebase is
	port (	
			clk		: in	std_logic;
			reset 	: in	std_logic;
			clk15k 	: out 	std_logic;
	);
end entity timebase;

architecture behav of timebase is
	signal count, new_count : unsigned (9 downto 0);
	begin 
		process(clk)
		begin
			if(reset = '1') then
				count <= '0000000000';
			else
				if(rising_edge(clk)) then
					if(to_integer(count) > 833) then
						count <= 0;
						if(clk15k = '0') then
							clk15k <= '1';
						else
							clk15k <= '0';
						end if;
					else
					count <= to_unsigned(to_integer(count) + 1);
					end if;
				end if;
			end if;
		end process;
end architecture behav;