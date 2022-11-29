
library ieee;
use ieee.std_logic_1164.all;
--library tcb018gbwp7t;
--use tcb018gbwp7t.all;

architecture synthesised of shiftregister_11bit is

  component INVD4BWP7T
    port(I : in std_logic; ZN : out std_logic);
  end component;

  component DFKCND1BWP7T
    port(CP, CN, D : in std_logic; Q, QN : out std_logic);
  end component;

  component INVD1BWP7T
    port(I : in std_logic; ZN : out std_logic);
  end component;

  signal UNCONNECTED, UNCONNECTED0, UNCONNECTED1, UNCONNECTED2, UNCONNECTED3 : std_logic;
  signal UNCONNECTED4, UNCONNECTED5, UNCONNECTED6, UNCONNECTED7, UNCONNECTED8 : std_logic;
  signal UNCONNECTED9, n_9, n_12, n_13, n_14 : std_logic;
  signal n_15, n_16, n_17, n_18, n_19 : std_logic;
  signal n_20, n_21, n_22 : std_logic;

begin

  g4 : INVD4BWP7T port map(I => n_22, ZN => data_out(10));
  data_out_reg_10 : DFKCND1BWP7T port map(CP => clk, CN => n_9, D => data_out(9), Q => UNCONNECTED, QN => n_22);
  g6 : INVD4BWP7T port map(I => n_21, ZN => data_out(9));
  data_out_reg_9 : DFKCND1BWP7T port map(CP => clk, CN => n_9, D => data_out(8), Q => UNCONNECTED0, QN => n_21);
  g8 : INVD4BWP7T port map(I => n_20, ZN => data_out(8));
  data_out_reg_8 : DFKCND1BWP7T port map(CP => clk, CN => n_9, D => data_out(7), Q => UNCONNECTED1, QN => n_20);
  g10 : INVD4BWP7T port map(I => n_19, ZN => data_out(7));
  data_out_reg_7 : DFKCND1BWP7T port map(CP => clk, CN => n_9, D => data_out(6), Q => UNCONNECTED2, QN => n_19);
  g12 : INVD4BWP7T port map(I => n_18, ZN => data_out(6));
  data_out_reg_6 : DFKCND1BWP7T port map(CP => clk, CN => n_9, D => data_out(5), Q => UNCONNECTED3, QN => n_18);
  g14 : INVD4BWP7T port map(I => n_17, ZN => data_out(5));
  data_out_reg_5 : DFKCND1BWP7T port map(CP => clk, CN => n_9, D => data_out(4), Q => UNCONNECTED4, QN => n_17);
  g16 : INVD4BWP7T port map(I => n_16, ZN => data_out(4));
  data_out_reg_4 : DFKCND1BWP7T port map(CP => clk, CN => n_9, D => data_out(3), Q => UNCONNECTED5, QN => n_16);
  g18 : INVD4BWP7T port map(I => n_15, ZN => data_out(3));
  data_out_reg_3 : DFKCND1BWP7T port map(CP => clk, CN => n_9, D => data_out(2), Q => UNCONNECTED6, QN => n_15);
  g20 : INVD4BWP7T port map(I => n_14, ZN => data_out(2));
  data_out_reg_2 : DFKCND1BWP7T port map(CP => clk, CN => n_9, D => data_out(1), Q => UNCONNECTED7, QN => n_14);
  g22 : INVD4BWP7T port map(I => n_13, ZN => data_out(1));
  data_out_reg_1 : DFKCND1BWP7T port map(CP => clk, CN => n_9, D => data_out(0), Q => UNCONNECTED8, QN => n_13);
  g24 : INVD4BWP7T port map(I => n_12, ZN => data_out(0));
  data_out_reg_0 : DFKCND1BWP7T port map(CP => clk, CN => data_in, D => n_9, Q => UNCONNECTED9, QN => n_12);
  g25 : INVD1BWP7T port map(I => reset, ZN => n_9);

end synthesised;
