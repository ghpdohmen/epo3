library IEEE;
use IEEE.std_logic_1164.ALL;

architecture behaviour of mux is
begin
	process (mux_select, muxFSM, muxReg) --misschien clk
	begin	
		if(mux_select = '0') then
			dataSwitch <= muxFSM;
		else
			dataSwitch <= muxReg;
		end if;
	end process;
end behaviour;

