library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.all;

architecture behaviour of submod_hcount is
signal count, new_count: unsigned (3 downto 0);
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
 
    process (logic_h_32)
    begin
	if (logic_h_32 ='1') then
        new_count <= count + 1;
	else 
	new_count <= new_count;
	end if;
    end process;
    logic_h_out <= std_logic_vector(count);
end behaviour;

