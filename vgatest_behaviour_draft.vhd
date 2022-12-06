library IEEE;
use IEEE.std_logic_1164.ALL;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;


architecture behaviour of vgatest is
  component vgadrive is
    port( clk          : in std_logic;  -- 25.175 Mhz clk
        red, green, blue : in std_logic;  -- input values for RGB signals
        reset            : in std_logic;  -- reset signal
        Rout, Gout, Bout, H, V : out std_logic); -- VGA drive signals
  end component;
  
  signal row, column : std_logic_vector(9 downto 0);
  signal red_local, green_local, blue_local : std_logic;

  -- states 
  type states is (reset_state, on_state, off_state);
  signal state, new_state: states;
  signal enable : std_logic;


begin

---  state switcher
stateprocess_1: process(clk)
begin
	if (rising_edge(clk)) then
		if (reset = '1') then
			state <= reset_state;
		else
			state <= new_state;
		end if;
	end if;
end process;

-- actual state logic
stateprocess2: process(clk)
begin
	case state is 
		when reset_state =>
			if (enable = '1') then
				new_state <= on_state;
			else
				new_state <= reset_state;
			end if;
		when on_state =>
			if (enable = '1') then 
                red_local <= red_in;
                green_local <= green_in;
                blue_local <= blue_in;
				new_state <= on_state;
			else 	
				red_local <= '0';
				green_local <= '0';
				blue_local <= '0';
				new_state <= off_state;
			end if;

		when off_state =>
			if (enable = '1') then
				new_state <= on_state;
			else
				new_state <= off_state;
			end if;
    end case;
end process;


  -- for debugging: to view the bit order
  VGA : component vgadrive
    port map ( clk => clk, red => red_local, green => green_local, blue => blue_local, reset => reset,
                row => row, column => column,
                Rout => R, Gout => G, Bout => B, H => H, V => V);
 
  -- red square from 0,0 to 360, 350
  -- green square from 0,250 to 360, 640
  -- blue square from 120,150 to 480,500
  RGB : process
  begin
    wait until clk = '1';
    
    red_local <= '1';
    green_local <= '1';
    blue_local <= '0';

  end process;
end behaviour;
