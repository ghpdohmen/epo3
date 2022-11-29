library IEEE;
use IEEE.std_logic_1164.ALL;

architecture behav of shiftregister_9bit is
    signal new_data, new_new_data :		std_logic_vector(8 downto 0);
    signal clk_inv		: std_logic;

begin
    process(clk)
	begin
	    clk_inv <= not clk;
 	end process;
	
    process(clk)
        begin
            if(rising_edge(clk)) then
                if(reset = '1') then
		    data_out <= '0';
		    new_new_data <= data_in;
			
            		else 
		    data_out <= new_new_data(0); 
                    
                end if;
	    elsif(rising_edge(clk_inv)) then
		new_new_data <= std_logic_vector(shift_right(unsigned(new_new_data), 1));
            end if;
        end process;
end behav;

