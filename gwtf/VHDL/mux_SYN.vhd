
library ieee;
use ieee.std_logic_1164.all;
--library tcb018gbwp7t;
--use tcb018gbwp7t.all;

architecture synthesised of mux is

  component ND2D4BWP7T
    port(A1, A2 : in std_logic; ZN : out std_logic);
  end component;

  component ND2D0BWP7T
    port(A1, A2 : in std_logic; ZN : out std_logic);
  end component;

  component IND2D0BWP7T
    port(A1, B1 : in std_logic; ZN : out std_logic);
  end component;

  signal n_0, n_1 : std_logic;

begin

  g21 : ND2D4BWP7T port map(A1 => n_1, A2 => n_0, ZN => dataSwitch);
  g22 : ND2D0BWP7T port map(A1 => mux_select, A2 => muxReg, ZN => n_1);
  g23 : IND2D0BWP7T port map(A1 => mux_select, B1 => muxFSM, ZN => n_0);

end synthesised;
