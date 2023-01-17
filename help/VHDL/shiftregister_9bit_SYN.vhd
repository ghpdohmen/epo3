
library ieee;
use ieee.std_logic_1164.all;
--library tcb018gbwp7t;
--use tcb018gbwp7t.all;

architecture synthesised of shiftregister_9bit is

  component DFQD1BWP7T
    port(CP, D : in std_logic; Q : out std_logic);
  end component;

  component AO222D0BWP7T
    port(A1, A2, B1, B2, C1, C2 : in std_logic; Z : out std_logic);
  end component;

  component AO22D0BWP7T
    port(A1, A2, B1, B2 : in std_logic; Z : out std_logic);
  end component;

  component NR2D1BWP7T
    port(A1, A2 : in std_logic; ZN : out std_logic);
  end component;

  component AN2D1BWP7T
    port(A1, A2 : in std_logic; Z : out std_logic);
  end component;

  component CKND1BWP7T
    port(I : in std_logic; ZN : out std_logic);
  end component;

  component INVD4BWP7T
    port(I : in std_logic; ZN : out std_logic);
  end component;

  component DFD0BWP7T
    port(CP, D : in std_logic; Q, QN : out std_logic);
  end component;

  signal new_new_data : std_logic_vector(8 downto 0);
  signal n_0, n_1, n_2, n_3, n_4 : std_logic;
  signal n_5, n_6, n_7, n_8, n_9 : std_logic;
  signal n_10, n_11, n_26 : std_logic;

begin

  new_new_data_reg_1 : DFQD1BWP7T port map(CP => clk, D => n_10, Q => new_new_data(1));
  new_new_data_reg_2 : DFQD1BWP7T port map(CP => clk, D => n_2, Q => new_new_data(2));
  new_new_data_reg_7 : DFQD1BWP7T port map(CP => clk, D => n_5, Q => new_new_data(7));
  new_new_data_reg_3 : DFQD1BWP7T port map(CP => clk, D => n_11, Q => new_new_data(3));
  new_new_data_reg_4 : DFQD1BWP7T port map(CP => clk, D => n_6, Q => new_new_data(4));
  new_new_data_reg_5 : DFQD1BWP7T port map(CP => clk, D => n_1, Q => new_new_data(5));
  new_new_data_reg_6 : DFQD1BWP7T port map(CP => clk, D => n_4, Q => new_new_data(6));
  new_new_data_reg_0 : DFQD1BWP7T port map(CP => clk, D => n_0, Q => new_new_data(0));
  g415 : AO222D0BWP7T port map(A1 => n_9, A2 => data_in(3), B1 => new_new_data(2), B2 => n_8, C1 => new_new_data(3), C2 => n_7, Z => n_11);
  g410 : AO222D0BWP7T port map(A1 => n_9, A2 => data_in(1), B1 => new_new_data(0), B2 => n_8, C1 => new_new_data(1), C2 => n_7, Z => n_10);
  g414 : AO222D0BWP7T port map(A1 => n_9, A2 => data_in(4), B1 => new_new_data(3), B2 => n_8, C1 => new_new_data(4), C2 => n_7, Z => n_6);
  g409 : AO222D0BWP7T port map(A1 => n_9, A2 => data_in(7), B1 => new_new_data(6), B2 => n_8, C1 => new_new_data(7), C2 => n_7, Z => n_5);
  g417 : AO222D0BWP7T port map(A1 => n_9, A2 => data_in(6), B1 => new_new_data(5), B2 => n_8, C1 => new_new_data(6), C2 => n_7, Z => n_4);
  g411 : AO222D0BWP7T port map(A1 => n_9, A2 => data_in(8), B1 => new_new_data(7), B2 => n_8, C1 => new_new_data(8), C2 => n_7, Z => n_3);
  g416 : AO222D0BWP7T port map(A1 => n_9, A2 => data_in(2), B1 => new_new_data(1), B2 => n_8, C1 => new_new_data(2), C2 => n_7, Z => n_2);
  g413 : AO222D0BWP7T port map(A1 => n_9, A2 => data_in(5), B1 => new_new_data(4), B2 => n_8, C1 => new_new_data(5), C2 => n_7, Z => n_1);
  g418 : AO22D0BWP7T port map(A1 => n_9, A2 => data_in(0), B1 => n_7, B2 => new_new_data(0), Z => n_0);
  g420 : NR2D1BWP7T port map(A1 => n_7, A2 => reset, ZN => n_8);
  g419 : AN2D1BWP7T port map(A1 => edge15k, A2 => reset, Z => n_9);
  g421 : CKND1BWP7T port map(I => edge15k, ZN => n_7);
  drc_bufs431 : INVD4BWP7T port map(I => n_26, ZN => data_out);
  new_new_data_reg_8 : DFD0BWP7T port map(CP => clk, D => n_3, Q => new_new_data(8), QN => n_26);

end synthesised;
