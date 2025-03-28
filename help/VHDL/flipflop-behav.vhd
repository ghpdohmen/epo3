library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

architecture behav of flipflop is
    signal previous : std_logic;
    begin  

    process(clk)
    begin 
	if(rising_edge(clk)) then
        		if(activate = '1') then
            			Q <= D; 
        		end if;     
	end if;  
    end process;
end behav; 
