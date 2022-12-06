library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

architecture behaviour of vgadrive is
-- names are referenced from Altera University Program Design
  -- Laboratory Package  November 1997, ver. 1.1  User Guide Supplement
  -- clock period = 39.72 ns; the constants are integer multiples of the
  -- clock frequency and are close but not exact
  -- row counter will go from 0 to 524; column counter from 0 to 799
  subtype counter is std_logic_vector(9 downto 0);
  constant B : natural := 96;  -- horizontal blank: 3.77 us
  constant C : natural := 8;  -- front guard: 1.89 us
  constant D : natural := 640; -- horizontal columns: 25.17 us
  constant E : natural := 40;  -- rear guard: 0.94 us
  

  constant A : natural := B + C + D + E;  -- one horizontal sync cycle: 31.77 us
  constant P : natural := 2;   -- vertical blank: 64 us
  constant Q : natural := 2;  -- front guard: 1.02 ms
  constant R : natural := 480; -- vertical rows: 15.25 ms
  constant S : natural := 25;  -- rear guard: 0.35 ms
  
  constant O : natural := P + Q + R + S;  -- one vertical sync cycle: 16.6 ms
   
begin
  
  Rout <= red;
  Gout <= green;
  Bout <= blue;

  process
    variable vertical, horizontal : counter;  -- define counters
  begin
    wait until clock = '1';

  -- increment counters
      if ( horizontal < A - 1 ) then
        horizontal := horizontal + 1;
      else
        horizontal := (others => '0');

        if  vertical < O - 1  then -- less than oh
          vertical := vertical + 1;
        else
          vertical := (others => '0');       -- is set to zero
        end if;
      end if;

  -- define H pulse
      if  horizontal >= (D + E)  and  horizontal < (D + E + B)  then
        H <= '0';
      else
        H <= '1';
      end if;

  -- define V pulse
      if  vertical >= (R + S)  and  vertical < (R + S + P)  then
        V <= '0';
      else
        V <= '1';
      end if;
        
     --define ready and enable output
      if  vertical < (P + Q + R) and horizontal <= (B + C + D) then
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
    -- mapping of the variable to the signals
     -- negative signs are because the conversion bits are reversed
    

  end process;
end behaviour;

