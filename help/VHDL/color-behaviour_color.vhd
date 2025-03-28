library IEEE;
use IEEE.std_logic_1164.ALL;

architecture behaviour_color of color is
type state_type is (zwart, blauw, geel, groen, wit, cyaan, rood, paars);
type state_type_hs is ( idle, increment, ready);
signal state, next_state : state_type;
signal state_hs,next_state_hs: state_type_hs;
signal sel: std_logic;

begin

reg2: process(clk)
    begin
    if (clk'event and clk='1') then
        if (reset='1') then
            state_hs<=idle;
        else
            state_hs<=next_state_hs;
        end if;
    end if;
end process;

Handshake: process(handshakemi, state_hs)
    begin
    case state_hs is
        when idle =>
            sel<='0';
            handshakeimc<='0';
            if (handshakemi='1') then
                next_state_hs<=increment;
            else
                next_state_hs<= idle;
            end if;

        when increment =>
            sel<= '1';
            handshakeimc<= '0';
            next_state_hs<=ready;

        when ready =>
            sel<='0';
            handshakeimc<= '1';
            if (handshakemi='0') then
                next_state_hs<= idle;
            else
                next_state_hs<= ready;
            end if;
        end case;
    end process;



reg: process(clk)
begin
if (clk'event and clk='1') then
if (reset='1') then
state <= rood;
else
state <= next_state;
end if;

end if;
end process;



process(buttons,state,handshakemi, sel)
begin

case state is
when zwart=>
output_color<="000";
if (buttons(0)='1' and sel= '1') then
next_state<= blauw;

else
next_state<=zwart;

end if;
when blauw=>
output_color<="100";
if (buttons(0)='1' and sel= '1') then
next_state<= groen;

else
next_state<=blauw;

end if;
when groen=>
output_color<="010";
if (buttons(0)='1' and sel= '1') then
next_state<= cyaan;

else
next_state<=groen;

end if;
when cyaan=>
output_color<="110";
if (buttons(0)='1' and sel= '1') then
next_state<= rood;

else
next_state<=cyaan;

end if;
when rood=>
output_color<="001";
if (buttons(0)='1' and sel= '1') then
next_state<= paars;

else
next_state<=rood;

end if;
when paars=>
output_color<="101";
if (buttons(0)='1' and sel= '1') then
next_state<= geel;

else
next_state<=paars;

end if;
when geel=>
output_color<="011";
if (buttons(0)='1' and sel= '1') then
next_state<= wit;

else
next_state<=geel;

end if;
when wit=>
output_color<="111";
if (buttons(0)='1' and sel= '1') then
next_state<= zwart;

else
next_state<=wit;

end if;

end case;
end process;
	middelsteknop <= buttons(1);
	draw<= buttons(2);
end behaviour_color;

