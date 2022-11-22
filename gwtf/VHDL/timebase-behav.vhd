library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

architecture behavioural of timebase is

	signal count , new_count : unsigned(9 downto 0) ;
	signal currentPulse 	 : std_logic;

begin
	--This process generates the register
	process(clk)
	begin
		if (clk'event and clk = '1') then
			if (reset = '1') then
				count <= (others => '0'); --set a 0 to reset
			else
				count <= new_count;
			end if;
		end if;
	end process;


	--This process calculates the new count-value
	process(count)
	begin
		if(count >= to_unsigned(833,10)) then
			if(currentPulse = '1') then
				currentPulse <= '0';
			else
				currentPulse <= '1';
			end if;
			new_count <= to_unsigned(0,10);
		else
			new_count <= count + '1';
		end if;
	end process;

	--With this line, the pulse value is brought to the outside
	clk15k <= currentPulse;

end architecture behavioural;
