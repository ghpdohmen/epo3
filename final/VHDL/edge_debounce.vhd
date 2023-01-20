library IEEE;

use IEEE.std_logic_1164.ALL;


 

entity edge_debounce is

   port(clk     : in  std_logic;

        input  : in  std_logic;

               reset      : in std_logic; -- reset is necessary now because we have an FSM for debouncing.

               count    : in std_logic_vector(12 downto 0);

               counter_reset : out std_logic;

        edges : out std_logic);

end edge_debounce;



