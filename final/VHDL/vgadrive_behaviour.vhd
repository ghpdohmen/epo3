library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.all;
use IEEE.std_logic_unsigned.all;

architecture behaviour of vgadrive is
-- names are referenced from Altera University Program Design
  -- Laboratory Package  November 1997, ver. 1.1  User Guide Supplement
  -- clock period = 39.72 ns; the constants are integer multiples of the
  -- clock frequency and are close but not exact
  -- row counter will go from 0 to 524; column counter from 0 to 799
--component edge_detector is 
--port(
	--clk     : in  std_logic;
 --       input  : in  std_logic;
--        edges : out std_logic
--);
--end component;
  subtype counter_int is INTEGER RANGE 0 to 800;
  signal vertical, horizontal : counter_int;  -- define counters
  signal scale_vertical, scale_horizontal : counter_int;
  --signal sig_edge_h: std_logic;
  --signal sig_h_rising: std_logic;
 -- signal sig_edge_v: std_logic;
 -- signal sig_v_rising: std_logic;

  constant B : natural := 93;  -- horizontal blank: 3.77 us
  constant C : natural := 125;  -- front guard: 1.89 us
  constant D : natural := 480; -- horizontal columns: 25.17 us
  constant E : natural := 102;  -- rear guard: 0.94 us
  

  constant A : natural := B + C + D + E;  -- one horizontal sync cycle: 31.77 us
  constant P : natural := 2;   -- vertical blank: 64 us
  constant Q : natural := 32;  -- front guard: 1.02 ms
  constant R : natural := 480; -- vertical rows: 15.25 ms
  constant S : natural := 11;  -- rear guard: 0.35 ms
  
  constant O : natural := P + Q + R + S;  -- one vertical sync cycle: 16.6 ms
   
begin
--H <= sig_h_rising;
--V <= sig_v_rising;
--l_edge_h: edge_detector port map (clk => clock, input =>sig_h_rising , edges=>sig_edge_h);
--l_edge_v: edge_detector port map (clk => clock, input =>sig_v_rising , edges=>sig_edge_v);
 
process(clock,reset)
variable scale_horizontal_counter, scale_vertical_counter : INTEGER RANGE 0 TO 800;
variable horizontal_counter, vertical_counter : INTEGER RANGE 0 TO 800;
begin
       if (rising_edge(clock)) then
                if (reset = '1') then
                    	horizontal_counter := 0;
			scale_horizontal_counter := 0;
			vertical_counter := 0;
			scale_vertical_counter := 0;
			vertical <= vertical_counter;
  			horizontal <= horizontal_counter;
  			scale_vertical <= scale_vertical_counter;
  			scale_horizontal <= scale_horizontal_counter;
		else
			vertical <= vertical_counter;
  			horizontal <= horizontal_counter;
  			scale_vertical <= scale_vertical_counter;
  			scale_horizontal <= scale_horizontal_counter; 
		end if;
  		-- increment counters
		if ( horizontal_counter = A - 1 ) then
        		horizontal_counter := 0;
			scale_horizontal_counter := 0;
			if  (vertical_counter = O - 1)  then -- less than oh
          			vertical_counter := 0;       -- is set to zero
	  			scale_vertical_counter := 0;
       			else
          			vertical_counter := vertical_counter + 1;
	  			scale_vertical_counter := scale_vertical_counter + 1;
        		end if;
     		else
			horizontal_counter := horizontal_counter + 1;
			scale_horizontal_counter := scale_horizontal_counter + 1;
      		end if;
      	end if;
end process;

--if reset = '1' then
	--horizontal_counter := 0;
	--scale_horizontal_counter := 0;
	--vertical_counter := 0;
	--scale_vertical_counter := 0;
	--vertical <= vertical_counter;
  	--horizontal <= horizontal_counter;
  	--scale_vertical <= scale_vertical_counter;
  	--scale_horizontal <= scale_horizontal_counter; 
--else
	--vertical <= vertical_counter;
  	--horizontal <= horizontal_counter;
  	--scale_vertical <= scale_vertical_counter;
  	--scale_horizontal <= scale_horizontal_counter; 
--end if;   

-- define H pulse
hpulse: process(horizontal)
begin
      if  horizontal >= (D + E)  and  horizontal < (D + E + B) then
         H <= '0';

      else
        H <= '1';
      end if;
end process;

-- define V pulse
vpulse: process(vertical)
begin
      if  vertical >= (R + S)  and  vertical < (R + S + P)  then
        V <= '0';
      else
        V <= '1';
      end if;
end process;

--define enable output
enableprc: process(vertical, horizontal)
begin
      if vertical < 480 and horizontal < 480 then
        enable <= '1';
        Rout <= red;
        Gout <= green;
        Bout <= blue;
      else
        enable <= '0';
        Rout <= '0';
        Gout <= '0';
        Bout <= '0';
      end if;
end process;

-- define scaling outputs
scalepulses: process(horizontal, vertical)
begin
	if horizontal < 480 then
		if ((scale_horizontal mod 32) = 0) and (scale_horizontal /= 0) then 
			scale_h <= '1';
		else
			if (horizontal=0) then
				scale_h <='1';
			else
				scale_h <= '0';
			end if;
			
		end if; 
	else
		scale_h <= '0';
	end if;
	if vertical < 480 then
		if ((scale_vertical mod 32) = 0) and (scale_vertical /= 0) then 
			scale_v <= '1';
	else
			if (vertical=0) then
				scale_v <='1';
			else
				scale_v <= '0';
			end if;
			
		end if; 
	else
		scale_v <= '0';
	end if;
    
end process;



end behaviour;
