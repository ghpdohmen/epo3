library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.all;

architecture behaviour_y of y is

type state_type is (idle, increment, ready); 
signal state, next_state: state_type;
signal input_signed: signed(3 downto 0);
signal output_signed: signed(3 downto 0);
signal input_register: std_logic_vector( 3 downto 0);
signal locy_signed: signed(3 downto 0);
signal locy : std_logic_vector(3 downto 0);
signal sel: std_logic;

begin
reg2: process(clk)
    begin 
    if (clk'event and clk='1') then
        if (reset='1') then
            state<=idle;
        else
            state<=next_state;
        end if;
    end if;
end process;

Handshake: process(handshakemi, state)
    begin 
    case state is 
        when idle => 
            sel<='0';
            handshakeim<='0';
            if (handshakemiy='1') then 
                next_state<=increment;
            else 
                next_state<= idle;
            end if;

        when increment =>
            sel<= '1';
            handshakeimy<= '0';
            next_state<=ready;

        when ready =>
            sel<='0';
            handshakeim<= '1';
            if (handshakemiy='0') then 
                next_state<= idle;
            else 
                next_state<= ready;
            end if;
        end case;
    end process;

mux: process(sel, locy, tempy)
    begin
    if (sel='1') then
        input_register<=std_logic_vector(locy);
    else 
        input_register<=tempy;
    end if;
end process;


reg: process(clk) 
    begin 
    if (clk'event and clk='1') then
        if (reset='1') then
            tempy<="0000";
        else
            tempy<=input_register;
        end if;
    end if;
end process;
output_signed<= signed(tempy);

input_signed <= signed(dy);

process(dy, output_signed, input_signed)
begin
    if (dy(3)='1') then
     	locy_signed <= signed(input_register) - ('0' & input_signed(2 downto 0));
	
    else
    	locy_signed<= signed(input_register) + ('0' & input_signed(2 downto 0));
    end if;
end process;

locy <= std_logic_vector(locy_signed);

end behaviour_y;

