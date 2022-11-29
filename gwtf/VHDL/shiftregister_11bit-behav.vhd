library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

architecture behav of shiftregister_11bit is
    signal new_data  = std_logic_vector(10 downto 0);
    
begin
    process(clk)
        begin
            if(rising_edge) then
                if(reset = '1') then
                    data_out <= (others => '0');
                else 
                    new_data = std_logic_vector(shift_right(data_out,1));
                    new_data[0] = data_in;
                    data_out = new_data;
                end if;
            end if;
        end process;
end architecture behav;
    