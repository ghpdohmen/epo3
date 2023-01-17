
library ieee;
use ieee.std_logic_1164.all;
--library tcb018gbwp7t;
--use tcb018gbwp7t.all;

architecture synthesised of edge_detector is

  component AN2D4BWP7T
    port(A1, A2 : in std_logic; Z : out std_logic);
  end component;

  component DFD1BWP7T
    port(CP, D : in std_logic; Q, QN : out std_logic);
  end component;

  component DFQD1BWP7T
    port(CP, D : in std_logic; Q : out std_logic);
  end component;

  signal UNCONNECTED, reg1, reg2 : std_logic;

begin

  g12 : AN2D4BWP7T port map(A1 => reg2, A2 => reg1, Z => edges);
  reg2_reg : DFD1BWP7T port map(CP => clk, D => reg1, Q => UNCONNECTED, QN => reg2);
  reg1_reg : DFQD1BWP7T port map(CP => clk, D => input, Q => reg1);

end synthesised;
