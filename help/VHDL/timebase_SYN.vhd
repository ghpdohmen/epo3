
library ieee;
use ieee.std_logic_1164.all;
--library tcb018gbwp7t;
--use tcb018gbwp7t.all;

architecture synthesised of timebase is

  component AO32D1BWP7T
    port(A1, A2, A3, B1, B2 : in std_logic; Z : out std_logic);
  end component;

  component OAI21D0BWP7T
    port(A1, A2, B : in std_logic; ZN : out std_logic);
  end component;

  component MOAI22D0BWP7T
    port(A1, A2, B1, B2 : in std_logic; ZN : out std_logic);
  end component;

  component INVD0BWP7T
    port(I : in std_logic; ZN : out std_logic);
  end component;

  component OAI22D0BWP7T
    port(A1, A2, B1, B2 : in std_logic; ZN : out std_logic);
  end component;

  component NR2XD0BWP7T
    port(A1, A2 : in std_logic; ZN : out std_logic);
  end component;

  component IAO21D0BWP7T
    port(A1, A2, B : in std_logic; ZN : out std_logic);
  end component;

  component CKND2D0BWP7T
    port(A1, A2 : in std_logic; ZN : out std_logic);
  end component;

  component IND3D1BWP7T
    port(A1, B1, B2 : in std_logic; ZN : out std_logic);
  end component;

  component MUX2D0BWP7T
    port(I0, I1, S : in std_logic; Z : out std_logic);
  end component;

  component INR2D0BWP7T
    port(A1, B1 : in std_logic; ZN : out std_logic);
  end component;

  component INVD4BWP7T
    port(I : in std_logic; ZN : out std_logic);
  end component;

  component DFD0BWP7T
    port(CP, D : in std_logic; Q, QN : out std_logic);
  end component;

  signal count_3_14, n_1, n_3, n_4, n_5 : std_logic;
  signal n_6, n_7, n_8, n_9, n_10 : std_logic;
  signal n_11, n_14, n_18, n_19, n_21 : std_logic;
  signal n_22, n_26, n_33, n_34, n_40 : std_logic;

begin

  g227 : AO32D1BWP7T port map(A1 => n_5, A2 => count_out(1), A3 => n_33, B1 => n_11, B2 => count_3_14, Z => n_14);
  g232 : OAI21D0BWP7T port map(A1 => n_33, A2 => reset, B => n_7, ZN => n_11);
  g233 : MOAI22D0BWP7T port map(A1 => n_9, A2 => n_21, B1 => n_4, B2 => n_21, ZN => n_10);
  g235 : INVD0BWP7T port map(I => n_7, ZN => n_8);
  g236 : OAI22D0BWP7T port map(A1 => n_3, A2 => reset, B1 => n_1, B2 => edge15k, ZN => n_6);
  g234 : NR2XD0BWP7T port map(A1 => n_9, A2 => count_out(3), ZN => n_5);
  g237 : IAO21D0BWP7T port map(A1 => n_21, A2 => reset, B => n_4, ZN => n_7);
  g239 : OAI21D0BWP7T port map(A1 => n_26, A2 => reset, B => edge15k, ZN => n_4);
  g240 : CKND2D0BWP7T port map(A1 => n_1, A2 => edge15k, ZN => n_3);
  g238 : IND3D1BWP7T port map(A1 => reset, B1 => edge15k, B2 => n_26, ZN => n_9);
  g2 : MUX2D0BWP7T port map(I0 => n_18, I1 => n_8, S => count_out(2), Z => n_19);
  g3 : INR2D0BWP7T port map(A1 => count_out(1), B1 => n_9, ZN => n_18);
  drc_bufs : INVD4BWP7T port map(I => n_22, ZN => count_out(1));
  drc_bufs254 : INVD4BWP7T port map(I => n_1, ZN => count_out(0));
  drc_bufs259 : INVD4BWP7T port map(I => n_34, ZN => count_out(2));
  drc_bufs266 : INVD4BWP7T port map(I => n_40, ZN => count_out(3));
  count_reg_1 : DFD0BWP7T port map(CP => clk, D => n_10, Q => n_21, QN => n_22);
  count_reg_0 : DFD0BWP7T port map(CP => clk, D => n_6, Q => n_26, QN => n_1);
  count_reg_2 : DFD0BWP7T port map(CP => clk, D => n_19, Q => n_33, QN => n_34);
  count_reg_3 : DFD0BWP7T port map(CP => clk, D => n_14, Q => count_3_14, QN => n_40);

end synthesised;
