
library ieee;
use ieee.std_logic_1164.all;
--library tcb018gbwp7t;
--use tcb018gbwp7t.all;

architecture synthesised of flipflop is

  component EDFQD0BWP7T
    port(CP, D, E : in std_logic; Q : out std_logic);
  end component;

  component BUFFD4BWP7T
    port(I : in std_logic; Z : out std_logic);
  end component;

  signal Q_9 : std_logic;

begin

  Q_reg : EDFQD0BWP7T port map(CP => clk, D => D, E => activate, Q => Q_9);
  drc_bufs : BUFFD4BWP7T port map(I => Q_9, Z => Q);

end synthesised;
