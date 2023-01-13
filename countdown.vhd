library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
entity countdown_bar is 
port(
	mouse_count: in std_logic;
	countdown_aan: in std_logic;
    	middelste_knop: in std_logic;
	clk: in std_logic;
	reset: in std_logic;
	countdown_klaar: out std_logic;
	countdown_out: out std_logic_vector(4 downto 0)
);
end;
architecture behav of countdown_bar is
    signal count, new_count: unsigned (6 downto 0);
    signal count_sec: std_logic_vector (6 downto 0); -- telt 100 mouse pulsen voor 1 seconde
    signal pulse_28: std_logic; -- telt 30 seconden
    signal count_28, new_count_28: unsigned (4 downto 0);
begin
    process(clk)
        begin
            if (rising_edge(clk)) then
                if ((reset = '1') or (middelste_knop='1')) then
                    count <= (others => '0');
                else
                    count <= new_count;
                end if;
            end if;
    end process;
 
    process(mouse_count)
    begin
	if (mouse_count ='1' and countdown_aan='1') then
        if (count_sec ="1100011") then -- 99
            new_count <= "0000000";
            pulse_28 <= '1';
        else
            new_count <= count + 1;
            pulse_28<= '0';
        end if;
	else 
	new_count <= new_count;
	end if;
    end process;
count_sec <= std_logic_vector(count);

process(clk) -- twee keer dezelfde process
        begin
            if (rising_edge(clk)) then
                if ((reset = '1') or (middelste_knop='1')) then
                    count <= (others => '0');
                else
                    count <= new_count;
                end if;
            end if;
    end process;
 
    process(mouse_count)
    begin
	if (pulse_28 ='1' and countdown_aan='1') then
            new_count_28 <= count_28 + 1;
	else 
	new_count <= new_count;
	end if;
    end process;
countdown_out <= std_logic_vector(count_28);
process(count_28)
begin
if (count_28="11100") then -- +-28 seconden
	countdown_klaar <= '1';
else
	countdown_klaar <= '0';
end if;
end process;
end architecture behav;
