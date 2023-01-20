library IEEE;
use IEEE.std_logic_1164.ALL;

architecture behav of shiftregister_9bit is
    signal new_new_data :		std_logic_vector(8 downto 0);

begin
    process(clk) begin
        if(rising_edge(clk)) then
		if(reset = '1') then
            			
                				new_new_data <= data_in;
            			elsif(edge15k = '1') then
                				new_new_data <= new_new_data (7 downto 0) & '0';
            		end if;
        end if;
        data_out <= new_new_data(8);
    end process;
end behav;

