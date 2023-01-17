library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.all;

architecture behaviour of shiftregister_11bit is
begin

    process(clk)
        begin
            if(rising_edge(clk)) then
		
                			if(reset = '1') then
		    		data_out <= (others => '0');
                			elsif(edge15k = '1') then
		    		data_out <= std_logic_vector(shift_left(unsigned(data_out), 1));
		    
		    
                    				data_out(0) <= data_in;
		    	end if;
                    
            end if;
        end process;
end behaviour;

