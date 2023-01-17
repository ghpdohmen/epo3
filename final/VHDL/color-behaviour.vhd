library IEEE;
use IEEE.std_logic_1164.ALL;

architecture behaviour of color is
type state_type is (zwart, blauw, geel, groen, wit, cyaan, rood, paars);
signal state, next_state: state_type;

begin
reg: process(clk)
	begin
	if (clk'event and clk='1') then
		if (reset='1') then
			state <= zwart;
		else
			state <= next_state;
		end if;
	else
	end if;
end process;



process(buttons,state,handshakemi)
begin
if(handshakemi='1')then
	case state is 
	when zwart=>
	output_color<="000";
	if (buttons(0)='1') then
		next_state<= blauw;
		handshakeim<='0';
	else
		next_state<=zwart;
		handshakeim<='1';
	end if;
	when blauw=>
	output_color<="001";
	if (buttons(0)='1') then
		next_state<= groen;
		handshakeim<='0';
	else
		next_state<=blauw;
		handshakeim<='1';
	end if;
	when groen=>
	output_color<="010";
	if (buttons(0)='1') then
		next_state<= cyaan;
		handshakeim<='0';
	else
		next_state<=groen;
		handshakeim<='1';
	end if;
	when cyaan=>
	output_color<="011";
	if (buttons(0)='1') then
		next_state<= rood;
		handshakeim<='0';
	else
		next_state<=cyaan;
		handshakeim<='1';
	end if;
	when rood=>
	output_color<="100";
	if (buttons(0)='1') then
		next_state<= paars;
		handshakeim<='0';
	else
		next_state<=rood;
		handshakeim<='1';
	end if;
	when paars=>
	output_color<="101";
	if (buttons(0)='1') then
		next_state<= geel;
		handshakeim<='0';
	else
		next_state<=paars;
		handshakeim<='1';
	end if;
	when geel=>
	output_color<="110";
	if (buttons(0)='1') then
		next_state<= wit;
		handshakeim<='0';
	else
		next_state<=geel;
		handshakeim<='1';
	end if;
	when wit=>
	output_color<="111";
	if (buttons(0)='1') then
		next_state<= zwart;
		handshakeim<='0';
	else
		next_state<=wit;
		handshakeim<='1';
	end if;
		
	end case;
 else
 end if;


end process;

process (clk)
begin
	if(clk'event and clk='1') then
		draw<= buttons(2);
	end if;
end process;

process(clk,buttons,countlow)
begin
	if(clk'event and clk='1')then
		if(buttons(1)='1'and countlow='0')then
			rescount<='1';
		else
			rescount<='0';
		end if;
	else
	end if;
middelstemuisknop<=buttons(1);
end process;
end behaviour;

