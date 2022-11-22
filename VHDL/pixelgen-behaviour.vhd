library IEEE;
use IEEE.std_logic_1164.ALL;

architecture behaviour of pixelgen is
	type states is (reset_state, on_state, off_state);
	signal state, new_state: states;
begin

lbl1: process(clk)
begin
	if (rising_edge(clk)) then
		if (reset = '1') then
			state <= reset_state;
		else
			state <= new_state;
		end if;
	end if;
end process;


process(clk, reset, enable)
begin
	case state is 
		when reset_state =>
			if (enable = '1') then
				read <= '1';
				new_state <= on_state;
			else
				new_state <= reset_state;
			end if;
		when on_state =>
			if (enable = '1') then 
				read <= '1';
				rgb_out(0) <= rgb_IN(0);
				rgb_out(1) <= rgb_IN(1);
				rgb_out(2) <= rgb_IN(2);
				new_state <= on_state;
			else 	
				read <= '0';
				rgb_out(0) <= '0';
				rgb_out(1) <= '0';
				rgb_out(2) <= '0';
				new_state <= off_state;
			end if;
		when off_state =>
			read <= '0';
			if (enable = '1') then
				new_state <= on_state;
			else
				new_state <= off_state;
	
			end if;
end case;
end process;
end behaviour;

