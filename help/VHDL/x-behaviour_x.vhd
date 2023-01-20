library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

architecture behaviour_x of x is

type state_type is (idle, increment, ready);
signal state, next_state: state_type;
signal input_unsigned: unsigned(3 downto 0);
signal output_unsigned: unsigned(3 downto 0);
signal input_register: std_logic_vector( 3 downto 0);
signal locx_unsigned: unsigned(3 downto 0);
signal locx : std_logic_vector(3 downto 0);
signal sel: std_logic;
constant minimal : integer:= 1;
constant maximal : integer:= 10;
signal bound_low: unsigned ( 3 downto 0);
begin
reg: process(clk)
    begin
    if (clk'event and clk='1') then
        if (reset='1') then
            tempx<="0001";
        else
            tempx<=locx;
        end if;
    end if;
end process;
        
 reg2: process(clk)
       begin
        if (clk'event and clk='1') then
        
            input_register<=tempx;
        end if;
       
 end process;
        
output_unsigned<= unsigned(tempx);

input_unsigned <= unsigned(dx);

process(dx, output_unsigned, input_unsigned)
begin

    if (dx(3)='1') then
      --bound_low <= unsigned(input_register) - ('0' & input_unsigned(2 downto 0));
--( (to_integer(unsigned(input_register)) - to_integer(input_unsigned(2 downto 0))) < 0)
if ((to_integer(unsigned(input_register)) - to_integer(unsigned(dx( 1 downto 0)))) < minimal ) then
locx_unsigned<=("0001");
else
locx_unsigned<=  unsigned(input_register) - ("00" & input_unsigned(1 downto 0));
end if;
    else
if ((to_integer(unsigned(input_register)) + to_integer(unsigned(dx( 1 downto 0)))) > maximal ) then
    locx_unsigned<= "1010";
else
locx_unsigned<= unsigned(input_register) + ("00" & input_unsigned(1 downto 0));
end if;
    end if;
end process;

locx <= std_logic_vector(locx_unsigned);

end behaviour_x;
