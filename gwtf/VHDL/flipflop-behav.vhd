library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

architecture behav of flipflop is
    begin  
    signal previous;
    process(clk)
    begin 
        if(clk = '1' AND previous = '0') then
            Q <= D; 
            previous <= 1;
        elsif (clk ='0' AND previous = '1') then
            previous <= 0;
        end if;       
    end process;
end behav; 