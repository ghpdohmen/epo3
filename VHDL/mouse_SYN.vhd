
library ieee;
use ieee.std_logic_1164.all;
--library tcb018gbwp7t;
--use tcb018gbwp7t.all;

architecture synthesised of mouse is

  component INVD1BWP7T
    port(I : in std_logic; ZN : out std_logic);
  end component;

  component BUFFD4BWP7T
    port(I : in std_logic; Z : out std_logic);
  end component;

  component NR2XD0BWP7T
    port(A1, A2 : in std_logic; ZN : out std_logic);
  end component;

  component DFQD1BWP7T
    port(CP, D : in std_logic; Q : out std_logic);
  end component;

  component DFD1BWP7T
    port(CP, D : in std_logic; Q, QN : out std_logic);
  end component;

  component INR2D0BWP7T
    port(A1, B1 : in std_logic; ZN : out std_logic);
  end component;

  component IND3D1BWP7T
    port(A1, B1, B2 : in std_logic; ZN : out std_logic);
  end component;

  component OAI221D0BWP7T
    port(A1, A2, B1, B2, C : in std_logic; ZN : out std_logic);
  end component;

  component AN2D0BWP7T
    port(A1, A2 : in std_logic; Z : out std_logic);
  end component;

  component AN2D1BWP7T
    port(A1, A2 : in std_logic; Z : out std_logic);
  end component;

  component IND2D1BWP7T
    port(A1, B1 : in std_logic; ZN : out std_logic);
  end component;

  component AN2D4BWP7T
    port(A1, A2 : in std_logic; Z : out std_logic);
  end component;

  component MAOI22D0BWP7T
    port(A1, A2, B1, B2 : in std_logic; ZN : out std_logic);
  end component;

  component AN3D1BWP7T
    port(A1, A2, A3 : in std_logic; Z : out std_logic);
  end component;

  component ND2D1BWP7T
    port(A1, A2 : in std_logic; ZN : out std_logic);
  end component;

  component ND2D0BWP7T
    port(A1, A2 : in std_logic; ZN : out std_logic);
  end component;

  component INR3D0BWP7T
    port(A1, B1, B2 : in std_logic; ZN : out std_logic);
  end component;

  component MOAI22D0BWP7T
    port(A1, A2, B1, B2 : in std_logic; ZN : out std_logic);
  end component;

  component DFQD0BWP7T
    port(CP, D : in std_logic; Q : out std_logic);
  end component;

  component OAI21D0BWP7T
    port(A1, A2, B : in std_logic; ZN : out std_logic);
  end component;

  component AOI21D0BWP7T
    port(A1, A2, B : in std_logic; ZN : out std_logic);
  end component;

  component AOI222D0BWP7T
    port(A1, A2, B1, B2, C1, C2 : in std_logic; ZN : out std_logic);
  end component;

  component OAI211D1BWP7T
    port(A1, A2, B, C : in std_logic; ZN : out std_logic);
  end component;

  component OAI31D0BWP7T
    port(A1, A2, A3, B : in std_logic; ZN : out std_logic);
  end component;

  component AOI32D1BWP7T
    port(A1, A2, A3, B1, B2 : in std_logic; ZN : out std_logic);
  end component;

  component AO21D0BWP7T
    port(A1, A2, B : in std_logic; Z : out std_logic);
  end component;

  component IOA21D1BWP7T
    port(A1, A2, B : in std_logic; ZN : out std_logic);
  end component;

  component IAO21D0BWP7T
    port(A1, A2, B : in std_logic; ZN : out std_logic);
  end component;

  component AOI33D1BWP7T
    port(A1, A2, A3, B1, B2, B3 : in std_logic; ZN : out std_logic);
  end component;

  component NR2D1BWP7T
    port(A1, A2 : in std_logic; ZN : out std_logic);
  end component;

  component INVD0BWP7T
    port(I : in std_logic; ZN : out std_logic);
  end component;

  component OR2D1BWP7T
    port(A1, A2 : in std_logic; Z : out std_logic);
  end component;

  component INR2D1BWP7T
    port(A1, B1 : in std_logic; ZN : out std_logic);
  end component;

  component EDFQD0BWP7T
    port(CP, D, E : in std_logic; Q : out std_logic);
  end component;

  component AOI22D0BWP7T
    port(A1, A2, B1, B2 : in std_logic; ZN : out std_logic);
  end component;

  component DFKCNQD1BWP7T
    port(CP, CN, D : in std_logic; Q : out std_logic);
  end component;

  component CKXOR2D0BWP7T
    port(A1, A2 : in std_logic; Z : out std_logic);
  end component;

  component EDFKCNQD1BWP7T
    port(CP, CN, D, E : in std_logic; Q : out std_logic);
  end component;

  component LHQD1BWP7T
    port(E, D : in std_logic; Q : out std_logic);
  end component;

  component IOA21D0BWP7T
    port(A1, A2, B : in std_logic; ZN : out std_logic);
  end component;

  component AOI221D0BWP7T
    port(A1, A2, B1, B2, C : in std_logic; ZN : out std_logic);
  end component;

  component ND4D0BWP7T
    port(A1, A2, A3, A4 : in std_logic; ZN : out std_logic);
  end component;

  component CKND1BWP7T
    port(I : in std_logic; ZN : out std_logic);
  end component;

  component ND3D0BWP7T
    port(A1, A2, A3 : in std_logic; ZN : out std_logic);
  end component;

  component NR2D0BWP7T
    port(A1, A2 : in std_logic; ZN : out std_logic);
  end component;

  component INR2XD0BWP7T
    port(A1, B1 : in std_logic; ZN : out std_logic);
  end component;

  component CKND2D1BWP7T
    port(A1, A2 : in std_logic; ZN : out std_logic);
  end component;

  component DFKCND1BWP7T
    port(CP, CN, D : in std_logic; Q, QN : out std_logic);
  end component;

  component AO221D0BWP7T
    port(A1, A2, B1, B2, C : in std_logic; Z : out std_logic);
  end component;

  component AO22D0BWP7T
    port(A1, A2, B1, B2 : in std_logic; Z : out std_logic);
  end component;

  component ND2D4BWP7T
    port(A1, A2 : in std_logic; ZN : out std_logic);
  end component;

  signal count15k : std_logic_vector(3 downto 0);
  signal mfsm_state : std_logic_vector(4 downto 0);
  signal data_sr_11bit : std_logic_vector(10 downto 0);
  signal mouse_x : std_logic_vector(2 downto 0);
  signal btns : std_logic_vector(4 downto 0);
  signal mouse_y : std_logic_vector(2 downto 0);
  signal sfsm_new_state : std_logic_vector(1 downto 0);
  signal sfsm_state : std_logic_vector(1 downto 0);
  signal count25M : std_logic_vector(11 downto 0);
  signal data_sr_9bit : std_logic_vector(8 downto 0);
  signal sr_new_new_data : std_logic_vector(8 downto 0);
  signal actBit, bit9_reg_rst, btnflipfloprst, cntReset15K, cntReset25M : std_logic;
  signal cnt_n_0, cnt_n_1, cnt_n_2, cnt_n_3, cnt_n_4 : std_logic;
  signal cnt_n_5, cnt_n_6, cnt_n_7, cnt_n_8, cnt_n_9 : std_logic;
  signal cnt_n_10, cnt_n_11, cnt_n_12, cnt_n_13, cnt_n_14 : std_logic;
  signal cnt_n_15, cnt_n_16, cnt_n_17, cnt_n_18, cnt_n_19 : std_logic;
  signal cnt_n_20, cnt_n_21, cnt_n_22, ed_n_0, ed_reg1 : std_logic;
  signal ed_reg2, flipflop1_Q_9, flipflop2_Q_9, flipflop3_Q_9, flipflop4_Q_9 : std_logic;
  signal flipflop5_Q_9, flipflop6_Q_9, flipflop7_Q_9, flipflop8_Q_9, flipflop9_Q_9 : std_logic;
  signal flipflop10_Q_9, flipflop11_Q_9, mfsm_n_0, mfsm_n_1, mfsm_n_2 : std_logic;
  signal mfsm_n_3, mfsm_n_4, mfsm_n_5, mfsm_n_6, mfsm_n_7 : std_logic;
  signal mfsm_n_8, mfsm_n_9, mfsm_n_10, mfsm_n_11, mfsm_n_12 : std_logic;
  signal mfsm_n_13, mfsm_n_14, mfsm_n_15, mfsm_n_16, mfsm_n_17 : std_logic;
  signal mfsm_n_18, mfsm_n_19, mfsm_n_20, mfsm_n_21, mfsm_n_22 : std_logic;
  signal mfsm_n_23, mfsm_n_24, mfsm_n_25, mfsm_n_26, mfsm_n_27 : std_logic;
  signal mfsm_n_28, mfsm_n_29, mfsm_n_30, mfsm_n_31, mfsm_n_32 : std_logic;
  signal mfsm_n_33, mfsm_n_34, mfsm_n_35, mfsm_n_36, mfsm_n_37 : std_logic;
  signal mfsm_n_38, mfsm_n_39, mfsm_n_40, mfsm_n_41, mfsm_n_42 : std_logic;
  signal mfsm_n_43, mfsm_n_44, mfsm_n_45, muxFSM, muxReg : std_logic;
  signal mx_n_0, mx_n_1, n_5, output_edgedet, reset_send : std_logic;
  signal sfsm_n_0, sfsm_n_1, sfsm_n_2, sfsm_n_3, sfsm_n_4 : std_logic;
  signal sfsm_n_5, sfsm_n_6, sfsm_n_7, sfsm_n_8, sfsm_n_9 : std_logic;
  signal sfsm_n_10, sfsm_n_11, sfsm_n_12, sfsm_n_13, sfsm_n_14 : std_logic;
  signal sfsm_n_15, sfsm_n_16, sfsm_n_17, sfsm_n_18, sr11_data_out_0_79 : std_logic;
  signal sr11_data_out_1_80, sr11_data_out_5_84, sr11_n_0, sr_n_0, sr_n_1 : std_logic;
  signal sr_n_2, sr_n_3, sr_n_4, sr_n_5, sr_n_6 : std_logic;
  signal sr_n_7, sr_n_8, sr_n_9, sr_n_10, sr_n_11 : std_logic;
  signal sr_n_12, tb_n_0, tb_n_1, tb_n_2, tb_n_3 : std_logic;
  signal tb_n_4, tb_n_5, tb_n_6, tb_n_7, tb_n_8 : std_logic;
  signal tb_n_9, tb_n_10, tb_n_11, tb_n_12, tb_n_13 : std_logic;
  signal xflipfloprst, yflipfloprst : std_logic;

begin

  g2 : INVD1BWP7T port map(I => bit9_reg_rst, ZN => n_5);
  g3 : BUFFD4BWP7T port map(I => count15k(1), Z => led1);
  g7 : BUFFD4BWP7T port map(I => count15k(3), Z => led3);
  g5 : BUFFD4BWP7T port map(I => count15k(0), Z => led0);
  g6 : BUFFD4BWP7T port map(I => count15k(2), Z => led2);
  g4 : BUFFD4BWP7T port map(I => reset, Z => rst);
  ed_g12 : NR2XD0BWP7T port map(A1 => ed_n_0, A2 => ed_reg2, ZN => output_edgedet);
  ed_reg2_reg : DFQD1BWP7T port map(CP => clk, D => ed_reg1, Q => ed_reg2);
  ed_reg1_reg : DFD1BWP7T port map(CP => clk, D => Clk15k, Q => ed_reg1, QN => ed_n_0);
  mfsm_g1381 : BUFFD4BWP7T port map(I => mfsm_state(4), Z => led9);
  mfsm_g1380 : BUFFD4BWP7T port map(I => mfsm_state(2), Z => led7);
  mfsm_g1379 : BUFFD4BWP7T port map(I => mfsm_state(1), Z => led6);
  mfsm_g1382 : BUFFD4BWP7T port map(I => mfsm_state(0), Z => led5);
  mfsm_g1378 : BUFFD4BWP7T port map(I => mfsm_state(3), Z => led8);
  mfsm_g1620 : INR2D0BWP7T port map(A1 => data_sr_11bit(4), B1 => mfsm_n_45, ZN => mouse_x(2));
  mfsm_g1621 : INR2D0BWP7T port map(A1 => data_sr_11bit(3), B1 => mfsm_n_45, ZN => mouse_x(1));
  mfsm_g1622 : INR2D0BWP7T port map(A1 => data_sr_11bit(2), B1 => mfsm_n_45, ZN => mouse_x(0));
  mfsm_g1623 : IND3D1BWP7T port map(A1 => mfsm_state(2), B1 => mfsm_state(4), B2 => mfsm_n_43, ZN => mfsm_n_45);
  mfsm_g1624 : OAI221D0BWP7T port map(A1 => mfsm_n_41, A2 => mfsm_state(1), B1 => mfsm_state(0), B2 => mfsm_state(4), C => mfsm_n_42, ZN => cntReset15K);
  mfsm_g1625 : AN2D0BWP7T port map(A1 => btnflipfloprst, A2 => data_sr_11bit(4), Z => btns(3));
  mfsm_g1626 : AN2D0BWP7T port map(A1 => btnflipfloprst, A2 => data_sr_11bit(2), Z => btns(2));
  mfsm_g1627 : AN2D1BWP7T port map(A1 => mfsm_n_40, A2 => mfsm_state(3), Z => actBit);
  mfsm_g1628 : AN2D0BWP7T port map(A1 => btnflipfloprst, A2 => data_sr_11bit(7), Z => btns(1));
  mfsm_g1629 : AN2D0BWP7T port map(A1 => btnflipfloprst, A2 => data_sr_11bit(6), Z => btns(0));
  mfsm_g1630 : AN2D1BWP7T port map(A1 => mfsm_n_40, A2 => mfsm_state(4), Z => xflipfloprst);
  mfsm_g1631 : IND2D1BWP7T port map(A1 => mfsm_state(4), B1 => mfsm_n_40, ZN => reset_send);
  mfsm_g1632 : AN2D0BWP7T port map(A1 => yflipfloprst, A2 => data_sr_11bit(4), Z => mouse_y(2));
  mfsm_g1633 : AN2D0BWP7T port map(A1 => yflipfloprst, A2 => data_sr_11bit(3), Z => mouse_y(1));
  mfsm_g1634 : AN2D0BWP7T port map(A1 => yflipfloprst, A2 => data_sr_11bit(2), Z => mouse_y(0));
  mfsm_g1635 : AN2D0BWP7T port map(A1 => btnflipfloprst, A2 => data_sr_11bit(3), Z => btns(4));
  mfsm_g1636 : AN2D4BWP7T port map(A1 => mfsm_n_44, A2 => mfsm_state(1), Z => Handshake_out);
  mfsm_g1637 : NR2XD0BWP7T port map(A1 => mfsm_n_42, A2 => mfsm_state(0), ZN => mfsm_n_44);
  mfsm_g1638 : NR2XD0BWP7T port map(A1 => mfsm_n_42, A2 => mfsm_state(1), ZN => yflipfloprst);
  mfsm_g1639 : MAOI22D0BWP7T port map(A1 => mfsm_state(0), A2 => mfsm_state(1), B1 => mfsm_state(0), B2 => mfsm_state(1), ZN => mfsm_n_43);
  mfsm_g1641 : AN3D1BWP7T port map(A1 => mfsm_state(2), A2 => mfsm_state(3), A3 => mfsm_state(1), Z => btnflipfloprst);
  mfsm_g1642 : ND2D1BWP7T port map(A1 => mfsm_state(2), A2 => mfsm_state(4), ZN => mfsm_n_42);
  mfsm_g1643 : ND2D0BWP7T port map(A1 => mfsm_state(0), A2 => mfsm_state(4), ZN => mfsm_n_41);
  mfsm_g2 : INR3D0BWP7T port map(A1 => mfsm_state(0), B1 => mfsm_state(2), B2 => mfsm_state(1), ZN => mfsm_n_40);
  mfsm_g2097 : MOAI22D0BWP7T port map(A1 => mfsm_n_36, A2 => mfsm_n_10, B1 => mfsm_n_29, B2 => mfsm_n_5, ZN => mfsm_n_39);
  mfsm_state_reg_4 : DFQD0BWP7T port map(CP => clk, D => mfsm_n_37, Q => mfsm_state(4));
  mfsm_g2099 : OAI21D0BWP7T port map(A1 => mfsm_n_34, A2 => mfsm_n_10, B => mfsm_n_35, ZN => mfsm_n_38);
  mfsm_g2100 : AOI21D0BWP7T port map(A1 => mfsm_n_30, A2 => mfsm_n_12, B => reset, ZN => mfsm_n_37);
  mfsm_g2101 : AOI222D0BWP7T port map(A1 => mfsm_n_31, A2 => mfsm_state(0), B1 => mfsm_n_19, B2 => mfsm_n_0, C1 => mfsm_n_3, C2 => mfsm_state(1), ZN => mfsm_n_36);
  mfsm_state_reg_2 : DFQD1BWP7T port map(CP => clk, D => mfsm_n_32, Q => mfsm_state(2));
  mfsm_g2104 : OAI211D1BWP7T port map(A1 => mfsm_state(1), A2 => mfsm_n_26, B => mfsm_n_18, C => mfsm_n_5, ZN => mfsm_n_35);
  mfsm_g2105 : AOI222D0BWP7T port map(A1 => mfsm_n_28, A2 => mfsm_state(0), B1 => mfsm_n_18, B2 => mfsm_n_1, C1 => mfsm_n_8, C2 => mfsm_n_3, ZN => mfsm_n_34);
  mfsm_g2106 : AOI21D0BWP7T port map(A1 => mfsm_n_22, A2 => mfsm_n_16, B => reset, ZN => mfsm_n_33);
  mfsm_g2107 : OAI31D0BWP7T port map(A1 => mfsm_n_1, A2 => mfsm_n_4, A3 => mfsm_n_18, B => mfsm_n_27, ZN => mfsm_n_32);
  mfsm_g2108 : OAI21D0BWP7T port map(A1 => mfsm_n_23, A2 => mfsm_state(1), B => mfsm_n_12, ZN => mfsm_n_31);
  mfsm_g2109 : AOI32D1BWP7T port map(A1 => mfsm_n_9, A2 => mfsm_state(1), A3 => mfsm_state(3), B1 => mfsm_n_25, B2 => mfsm_state(4), ZN => mfsm_n_30);
  mfsm_g2110 : MOAI22D0BWP7T port map(A1 => mfsm_n_24, A2 => mfsm_state(1), B1 => mfsm_n_18, B2 => mfsm_state(1), ZN => mfsm_n_29);
  mfsm_g2111 : OAI21D0BWP7T port map(A1 => mfsm_n_21, A2 => mfsm_state(3), B => mfsm_n_12, ZN => mfsm_n_28);
  mfsm_g2112 : AO21D0BWP7T port map(A1 => mfsm_n_20, A2 => mfsm_n_0, B => mfsm_n_10, Z => mfsm_n_27);
  mfsm_g2113 : OAI211D1BWP7T port map(A1 => mfsm_n_2, A2 => mfsm_n_3, B => mfsm_n_15, C => mfsm_state(4), ZN => mfsm_n_26);
  mfsm_g2114 : IOA21D1BWP7T port map(A1 => mfsm_n_15, A2 => mfsm_state(3), B => mfsm_n_9, ZN => mfsm_n_25);
  mfsm_g2115 : AOI21D0BWP7T port map(A1 => mfsm_state(4), A2 => mfsm_state(0), B => mfsm_n_17, ZN => mfsm_n_24);
  mfsm_g2116 : IAO21D0BWP7T port map(A1 => mfsm_n_15, A2 => mfsm_n_2, B => mfsm_n_21, ZN => mfsm_n_23);
  mfsm_g2117 : AOI33D1BWP7T port map(A1 => mfsm_n_14, A2 => mfsm_n_13, A3 => mfsm_n_2, B1 => mfsm_n_9, B2 => mfsm_n_6, B3 => mfsm_state(4), ZN => mfsm_n_22);
  mfsm_g2118 : NR2D1BWP7T port map(A1 => mfsm_n_15, A2 => mfsm_state(4), ZN => mfsm_n_21);
  mfsm_g2119 : INVD0BWP7T port map(I => mfsm_n_19, ZN => mfsm_n_20);
  mfsm_g2120 : INVD0BWP7T port map(I => mfsm_n_18, ZN => mfsm_n_17);
  mfsm_g2121 : NR2D1BWP7T port map(A1 => mfsm_n_14, A2 => mfsm_state(3), ZN => mfsm_n_19);
  mfsm_g2122 : ND2D1BWP7T port map(A1 => mfsm_n_14, A2 => mfsm_state(0), ZN => mfsm_n_18);
  mfsm_g2123 : OR2D1BWP7T port map(A1 => mfsm_n_13, A2 => mfsm_n_2, Z => mfsm_n_16);
  mfsm_g2124 : INVD1BWP7T port map(I => mfsm_n_15, ZN => mfsm_n_14);
  mfsm_g2125 : IND2D1BWP7T port map(A1 => mfsm_n_11, B1 => count15k(3), ZN => mfsm_n_15);
  mfsm_g2126 : AN2D1BWP7T port map(A1 => mfsm_n_9, A2 => mfsm_n_7, Z => mfsm_n_13);
  mfsm_g2128 : AOI21D0BWP7T port map(A1 => count15k(0), A2 => count15k(1), B => count15k(2), ZN => mfsm_n_11);
  mfsm_g2129 : IND2D1BWP7T port map(A1 => mfsm_n_6, B1 => mfsm_state(4), ZN => mfsm_n_12);
  mfsm_g2130 : IND2D1BWP7T port map(A1 => Handshake_in, B1 => mfsm_state(4), ZN => mfsm_n_8);
  mfsm_g2131 : IND2D1BWP7T port map(A1 => reset, B1 => mfsm_state(2), ZN => mfsm_n_10);
  mfsm_g2132 : AN2D1BWP7T port map(A1 => mfsm_state(2), A2 => mfsm_state(0), Z => mfsm_n_9);
  mfsm_g2134 : INVD1BWP7T port map(I => mfsm_n_5, ZN => mfsm_n_4);
  mfsm_g2135 : NR2D1BWP7T port map(A1 => mfsm_n_1, A2 => mfsm_state(4), ZN => mfsm_n_7);
  mfsm_g2136 : ND2D1BWP7T port map(A1 => mfsm_state(1), A2 => Handshake_in, ZN => mfsm_n_6);
  mfsm_g2137 : NR2XD0BWP7T port map(A1 => mfsm_state(2), A2 => reset, ZN => mfsm_n_5);
  mfsm_g1645 : INR2D1BWP7T port map(A1 => mfsm_n_7, B1 => mfsm_n_3, ZN => mfsm_n_0);
  mfsm_state_reg_3 : DFD1BWP7T port map(CP => clk, D => mfsm_n_33, Q => mfsm_state(3), QN => mfsm_n_2);
  mfsm_state_reg_0 : DFD1BWP7T port map(CP => clk, D => mfsm_n_38, Q => mfsm_state(0), QN => mfsm_n_3);
  mfsm_state_reg_1 : DFD1BWP7T port map(CP => clk, D => mfsm_n_39, Q => mfsm_state(1), QN => mfsm_n_1);
  flipflop1_Q_reg : EDFQD0BWP7T port map(CP => clk, D => mouse_x(2), E => xflipfloprst, Q => flipflop1_Q_9);
  flipflop1_drc_bufs : BUFFD4BWP7T port map(I => flipflop1_Q_9, Z => mouseX(2));
  flipflop10_Q_reg : EDFQD0BWP7T port map(CP => clk, D => btns(1), E => btnflipfloprst, Q => flipflop10_Q_9);
  flipflop10_drc_bufs : BUFFD4BWP7T port map(I => flipflop10_Q_9, Z => buttons(1));
  tb_count_reg_3 : DFQD1BWP7T port map(CP => clk, D => tb_n_13, Q => count15k(3));
  tb_g64 : NR2XD0BWP7T port map(A1 => tb_n_12, A2 => cntReset15K, ZN => tb_n_13);
  tb_count_reg_2 : DFQD1BWP7T port map(CP => clk, D => tb_n_11, Q => count15k(2));
  tb_g66 : AOI22D0BWP7T port map(A1 => tb_n_9, A2 => output_edgedet, B1 => count15k(3), B2 => tb_n_0, ZN => tb_n_12);
  tb_g67 : NR2XD0BWP7T port map(A1 => tb_n_10, A2 => cntReset15K, ZN => tb_n_11);
  tb_g68 : AOI22D0BWP7T port map(A1 => tb_n_6, A2 => output_edgedet, B1 => count15k(2), B2 => tb_n_0, ZN => tb_n_10);
  tb_g69 : MOAI22D0BWP7T port map(A1 => tb_n_5, A2 => count15k(3), B1 => tb_n_5, B2 => count15k(3), ZN => tb_n_9);
  tb_count_reg_1 : DFQD0BWP7T port map(CP => clk, D => tb_n_8, Q => count15k(1));
  tb_g71 : NR2XD0BWP7T port map(A1 => cntReset15K, A2 => tb_n_7, ZN => tb_n_8);
  tb_g72 : AOI22D0BWP7T port map(A1 => tb_n_4, A2 => output_edgedet, B1 => count15k(1), B2 => tb_n_0, ZN => tb_n_7);
  tb_g73 : MOAI22D0BWP7T port map(A1 => tb_n_2, A2 => count15k(2), B1 => tb_n_2, B2 => count15k(2), ZN => tb_n_6);
  tb_count_reg_0 : DFKCNQD1BWP7T port map(CP => clk, CN => tb_n_3, D => tb_n_1, Q => count15k(0));
  tb_g75 : IND2D1BWP7T port map(A1 => tb_n_2, B1 => count15k(2), ZN => tb_n_5);
  tb_g76 : CKXOR2D0BWP7T port map(A1 => count15k(1), A2 => count15k(0), Z => tb_n_4);
  tb_g77 : MOAI22D0BWP7T port map(A1 => count15k(0), A2 => tb_n_0, B1 => count15k(0), B2 => tb_n_0, ZN => tb_n_3);
  tb_g78 : ND2D1BWP7T port map(A1 => count15k(1), A2 => count15k(0), ZN => tb_n_2);
  tb_g79 : INVD0BWP7T port map(I => cntReset15K, ZN => tb_n_1);
  tb_g83 : INVD1BWP7T port map(I => output_edgedet, ZN => tb_n_0);
  flipflop11_Q_reg : EDFQD0BWP7T port map(CP => clk, D => btns(0), E => btnflipfloprst, Q => flipflop11_Q_9);
  flipflop11_drc_bufs : BUFFD4BWP7T port map(I => flipflop11_Q_9, Z => buttons(0));
  flipflop2_Q_reg : EDFQD0BWP7T port map(CP => clk, D => mouse_x(1), E => xflipfloprst, Q => flipflop2_Q_9);
  flipflop2_drc_bufs : BUFFD4BWP7T port map(I => flipflop2_Q_9, Z => mouseX(1));
  sr11_data_out_reg_1 : EDFKCNQD1BWP7T port map(CP => clk, CN => sr11_n_0, D => sr11_data_out_0_79, E => output_edgedet, Q => sr11_data_out_1_80);
  sr11_data_out_reg_0 : EDFKCNQD1BWP7T port map(CP => clk, CN => sr11_n_0, D => Data_in, E => output_edgedet, Q => sr11_data_out_0_79);
  sr11_data_out_reg_3 : EDFKCNQD1BWP7T port map(CP => clk, CN => sr11_n_0, D => data_sr_11bit(2), E => output_edgedet, Q => data_sr_11bit(3));
  sr11_data_out_reg_4 : EDFKCNQD1BWP7T port map(CP => clk, CN => sr11_n_0, D => data_sr_11bit(3), E => output_edgedet, Q => data_sr_11bit(4));
  sr11_data_out_reg_5 : EDFKCNQD1BWP7T port map(CP => clk, CN => sr11_n_0, D => data_sr_11bit(4), E => output_edgedet, Q => sr11_data_out_5_84);
  sr11_data_out_reg_7 : EDFKCNQD1BWP7T port map(CP => clk, CN => sr11_n_0, D => data_sr_11bit(6), E => output_edgedet, Q => data_sr_11bit(7));
  sr11_data_out_reg_6 : EDFKCNQD1BWP7T port map(CP => clk, CN => sr11_n_0, D => sr11_data_out_5_84, E => output_edgedet, Q => data_sr_11bit(6));
  sr11_data_out_reg_2 : EDFKCNQD1BWP7T port map(CP => clk, CN => sr11_n_0, D => sr11_data_out_1_80, E => output_edgedet, Q => data_sr_11bit(2));
  sr11_g35 : INVD1BWP7T port map(I => reset, ZN => sr11_n_0);
  flipflop3_Q_reg : EDFQD0BWP7T port map(CP => clk, D => mouse_x(0), E => xflipfloprst, Q => flipflop3_Q_9);
  flipflop3_drc_bufs : BUFFD4BWP7T port map(I => flipflop3_Q_9, Z => mouseX(0));
  flipflop4_Q_reg : EDFQD0BWP7T port map(CP => clk, D => mouse_y(0), E => yflipfloprst, Q => flipflop4_Q_9);
  flipflop4_drc_bufs : BUFFD4BWP7T port map(I => flipflop4_Q_9, Z => mouseY(0));
  sfsm_new_state_reg_0 : LHQD1BWP7T port map(E => bit9_reg_rst, D => sfsm_n_18, Q => sfsm_new_state(0));
  sfsm_new_state_reg_1 : LHQD1BWP7T port map(E => bit9_reg_rst, D => sfsm_n_17, Q => sfsm_new_state(1));
  sfsm_g580 : OAI221D0BWP7T port map(A1 => sfsm_n_15, A2 => sfsm_n_1, B1 => sfsm_n_3, B2 => reset_send, C => sfsm_n_16, ZN => sfsm_n_18);
  sfsm_g581 : AO21D0BWP7T port map(A1 => sfsm_n_15, A2 => sfsm_state(0), B => sfsm_state(1), Z => sfsm_n_17);
  sfsm_g582 : IOA21D0BWP7T port map(A1 => sfsm_n_14, A2 => sfsm_n_13, B => sfsm_state(1), ZN => sfsm_n_16);
  sfsm_g583 : OAI21D0BWP7T port map(A1 => sfsm_n_11, A2 => sfsm_n_5, B => sfsm_n_14, ZN => sfsm_n_15);
  sfsm_g584 : AOI221D0BWP7T port map(A1 => sfsm_n_10, A2 => count25M(6), B1 => sfsm_n_12, B2 => count25M(3), C => sfsm_n_6, ZN => sfsm_n_14);
  sfsm_g585 : ND4D0BWP7T port map(A1 => sfsm_n_12, A2 => count25M(2), A3 => count25M(1), A4 => count25M(0), ZN => sfsm_n_13);
  sfsm_dataToReg_reg_5 : LHQD1BWP7T port map(E => bit9_reg_rst, D => sfsm_n_7, Q => data_sr_9bit(8));
  sfsm_dataToReg_reg_1 : LHQD1BWP7T port map(E => bit9_reg_rst, D => sfsm_n_8, Q => data_sr_9bit(4));
  sfsm_g588 : CKND1BWP7T port map(I => sfsm_n_11, ZN => sfsm_n_12);
  sfsm_dataToReg_reg_0 : LHQD1BWP7T port map(E => bit9_reg_rst, D => sfsm_n_9, Q => data_sr_9bit(0));
  sfsm_g590 : ND3D0BWP7T port map(A1 => sfsm_n_10, A2 => count25M(4), A3 => count25M(5), ZN => sfsm_n_11);
  sfsm_g591 : ND2D1BWP7T port map(A1 => sfsm_n_3, A2 => bit9_reg_rst, ZN => cntReset25M);
  sfsm_g592 : AN2D1BWP7T port map(A1 => actBit, A2 => sfsm_n_3, Z => sfsm_n_9);
  sfsm_g593 : INR2D0BWP7T port map(A1 => count25M(7), B1 => sfsm_n_4, ZN => sfsm_n_10);
  sfsm_g594 : AN2D1BWP7T port map(A1 => actBit, A2 => muxFSM, Z => sfsm_n_8);
  sfsm_g595 : AN2D1BWP7T port map(A1 => actBit, A2 => ClkSwitch, Z => sfsm_n_7);
  sfsm_g596 : IAO21D0BWP7T port map(A1 => count25M(9), A2 => count25M(8), B => sfsm_n_4, ZN => sfsm_n_6);
  sfsm_g597 : NR2D0BWP7T port map(A1 => count25M(2), A2 => count25M(1), ZN => sfsm_n_5);
  sfsm_g598 : INR2XD0BWP7T port map(A1 => sfsm_state(1), B1 => sfsm_state(0), ZN => muxFSM);
  sfsm_g599 : AN2D4BWP7T port map(A1 => sfsm_n_2, A2 => sfsm_state(0), Z => ClkSwitch);
  sfsm_g600 : ND2D0BWP7T port map(A1 => count25M(10), A2 => count25M(11), ZN => sfsm_n_4);
  sfsm_g601 : ND2D1BWP7T port map(A1 => sfsm_n_1, A2 => sfsm_n_2, ZN => sfsm_n_3);
  sfsm_g602 : CKND2D1BWP7T port map(A1 => sfsm_state(0), A2 => sfsm_state(1), ZN => bit9_reg_rst);
  sfsm_g258 : INVD1BWP7T port map(I => reset_send, ZN => sfsm_n_0);
  sfsm_state_reg_1 : DFKCND1BWP7T port map(CP => clk, CN => sfsm_new_state(1), D => sfsm_n_0, Q => sfsm_state(1), QN => sfsm_n_2);
  sfsm_state_reg_0 : DFKCND1BWP7T port map(CP => clk, CN => sfsm_new_state(0), D => sfsm_n_0, Q => sfsm_state(0), QN => sfsm_n_1);
  flipflop5_Q_reg : EDFQD0BWP7T port map(CP => clk, D => mouse_y(1), E => yflipfloprst, Q => flipflop5_Q_9);
  flipflop5_drc_bufs : BUFFD4BWP7T port map(I => flipflop5_Q_9, Z => mouseY(1));
  flipflop6_Q_reg : EDFQD0BWP7T port map(CP => clk, D => mouse_y(2), E => yflipfloprst, Q => flipflop6_Q_9);
  flipflop6_drc_bufs : BUFFD4BWP7T port map(I => flipflop6_Q_9, Z => mouseY(2));
  flipflop7_Q_reg : EDFQD0BWP7T port map(CP => clk, D => btns(4), E => btnflipfloprst, Q => flipflop7_Q_9);
  flipflop7_drc_bufs : BUFFD4BWP7T port map(I => flipflop7_Q_9, Z => buttons(4));
  flipflop8_Q_reg : EDFQD0BWP7T port map(CP => clk, D => btns(3), E => btnflipfloprst, Q => flipflop8_Q_9);
  flipflop8_drc_bufs : BUFFD4BWP7T port map(I => flipflop8_Q_9, Z => buttons(3));
  sr_new_new_data_reg_1 : DFQD1BWP7T port map(CP => clk, D => sr_n_8, Q => sr_new_new_data(1));
  sr_new_new_data_reg_4 : DFQD1BWP7T port map(CP => clk, D => sr_n_12, Q => sr_new_new_data(4));
  sr_new_new_data_reg_5 : DFQD1BWP7T port map(CP => clk, D => sr_n_9, Q => sr_new_new_data(5));
  sr_new_new_data_reg_2 : DFQD1BWP7T port map(CP => clk, D => sr_n_10, Q => sr_new_new_data(2));
  sr_new_new_data_reg_6 : DFQD1BWP7T port map(CP => clk, D => sr_n_11, Q => sr_new_new_data(6));
  sr_new_new_data_reg_8 : DFQD1BWP7T port map(CP => clk, D => sr_n_7, Q => muxReg);
  sr_g429 : AO221D0BWP7T port map(A1 => sr_n_0, A2 => sr_new_new_data(4), B1 => sr_n_2, B2 => sr_new_new_data(3), C => sr_n_3, Z => sr_n_12);
  sr_new_new_data_reg_3 : DFQD1BWP7T port map(CP => clk, D => sr_n_4, Q => sr_new_new_data(3));
  sr_new_new_data_reg_0 : DFQD1BWP7T port map(CP => clk, D => sr_n_5, Q => sr_new_new_data(0));
  sr_new_new_data_reg_7 : DFQD1BWP7T port map(CP => clk, D => sr_n_6, Q => sr_new_new_data(7));
  sr_g433 : AO221D0BWP7T port map(A1 => sr_n_0, A2 => sr_new_new_data(6), B1 => sr_n_2, B2 => sr_new_new_data(5), C => sr_n_1, Z => sr_n_11);
  sr_g434 : AO221D0BWP7T port map(A1 => sr_n_0, A2 => sr_new_new_data(2), B1 => sr_n_2, B2 => sr_new_new_data(1), C => sr_n_3, Z => sr_n_10);
  sr_g435 : AO221D0BWP7T port map(A1 => sr_n_0, A2 => sr_new_new_data(5), B1 => sr_n_2, B2 => sr_new_new_data(4), C => sr_n_1, Z => sr_n_9);
  sr_g436 : AO221D0BWP7T port map(A1 => sr_n_0, A2 => sr_new_new_data(1), B1 => sr_n_2, B2 => sr_new_new_data(0), C => sr_n_3, Z => sr_n_8);
  sr_g437 : AO221D0BWP7T port map(A1 => sr_n_0, A2 => muxReg, B1 => sr_n_2, B2 => sr_new_new_data(7), C => sr_n_1, Z => sr_n_7);
  sr_g438 : AO22D0BWP7T port map(A1 => sr_n_0, A2 => sr_new_new_data(7), B1 => sr_new_new_data(6), B2 => sr_n_2, Z => sr_n_6);
  sr_g439 : AO22D0BWP7T port map(A1 => sr_n_0, A2 => sr_new_new_data(0), B1 => data_sr_9bit(0), B2 => bit9_reg_rst, Z => sr_n_5);
  sr_g440 : AO22D0BWP7T port map(A1 => sr_n_0, A2 => sr_new_new_data(3), B1 => sr_new_new_data(2), B2 => sr_n_2, Z => sr_n_4);
  sr_g441 : AN2D1BWP7T port map(A1 => bit9_reg_rst, A2 => data_sr_9bit(4), Z => sr_n_3);
  sr_g442 : INR2D1BWP7T port map(A1 => output_edgedet, B1 => bit9_reg_rst, ZN => sr_n_2);
  sr_g443 : AN2D1BWP7T port map(A1 => bit9_reg_rst, A2 => data_sr_9bit(8), Z => sr_n_1);
  sr_g444 : NR2D1BWP7T port map(A1 => bit9_reg_rst, A2 => output_edgedet, ZN => sr_n_0);
  mx_g23 : ND2D4BWP7T port map(A1 => mx_n_0, A2 => mx_n_1, ZN => DataSwitch);
  mx_g24 : ND2D1BWP7T port map(A1 => n_5, A2 => muxReg, ZN => mx_n_1);
  mx_g25 : IND2D1BWP7T port map(A1 => n_5, B1 => muxFSM, ZN => mx_n_0);
  cnt_count_reg_11 : DFKCNQD1BWP7T port map(CP => clk, CN => cnt_n_1, D => cnt_n_22, Q => count25M(11));
  cnt_count_reg_10 : DFKCNQD1BWP7T port map(CP => clk, CN => cnt_n_1, D => cnt_n_21, Q => count25M(10));
  cnt_g210 : MOAI22D0BWP7T port map(A1 => cnt_n_20, A2 => count25M(11), B1 => cnt_n_20, B2 => count25M(11), ZN => cnt_n_22);
  cnt_count_reg_9 : DFKCNQD1BWP7T port map(CP => clk, CN => cnt_n_1, D => cnt_n_19, Q => count25M(9));
  cnt_g212 : MOAI22D0BWP7T port map(A1 => cnt_n_18, A2 => count25M(10), B1 => cnt_n_18, B2 => count25M(10), ZN => cnt_n_21);
  cnt_g213 : IND2D1BWP7T port map(A1 => cnt_n_18, B1 => count25M(10), ZN => cnt_n_20);
  cnt_count_reg_8 : DFKCNQD1BWP7T port map(CP => clk, CN => cnt_n_1, D => cnt_n_17, Q => count25M(8));
  cnt_g215 : MOAI22D0BWP7T port map(A1 => cnt_n_16, A2 => count25M(9), B1 => cnt_n_16, B2 => count25M(9), ZN => cnt_n_19);
  cnt_g216 : IND2D1BWP7T port map(A1 => cnt_n_16, B1 => count25M(9), ZN => cnt_n_18);
  cnt_count_reg_7 : DFKCNQD1BWP7T port map(CP => clk, CN => cnt_n_1, D => cnt_n_15, Q => count25M(7));
  cnt_g218 : MOAI22D0BWP7T port map(A1 => cnt_n_14, A2 => count25M(8), B1 => cnt_n_14, B2 => count25M(8), ZN => cnt_n_17);
  cnt_g219 : IND2D1BWP7T port map(A1 => cnt_n_14, B1 => count25M(8), ZN => cnt_n_16);
  cnt_count_reg_6 : DFKCNQD1BWP7T port map(CP => clk, CN => cnt_n_1, D => cnt_n_13, Q => count25M(6));
  cnt_g221 : MOAI22D0BWP7T port map(A1 => cnt_n_12, A2 => count25M(7), B1 => cnt_n_12, B2 => count25M(7), ZN => cnt_n_15);
  cnt_g222 : IND2D1BWP7T port map(A1 => cnt_n_12, B1 => count25M(7), ZN => cnt_n_14);
  cnt_count_reg_5 : DFKCNQD1BWP7T port map(CP => clk, CN => cnt_n_1, D => cnt_n_11, Q => count25M(5));
  cnt_g224 : MOAI22D0BWP7T port map(A1 => cnt_n_10, A2 => count25M(6), B1 => cnt_n_10, B2 => count25M(6), ZN => cnt_n_13);
  cnt_g225 : IND2D1BWP7T port map(A1 => cnt_n_10, B1 => count25M(6), ZN => cnt_n_12);
  cnt_count_reg_4 : DFKCNQD1BWP7T port map(CP => clk, CN => cnt_n_1, D => cnt_n_9, Q => count25M(4));
  cnt_g227 : MOAI22D0BWP7T port map(A1 => cnt_n_8, A2 => count25M(5), B1 => cnt_n_8, B2 => count25M(5), ZN => cnt_n_11);
  cnt_g228 : IND2D1BWP7T port map(A1 => cnt_n_8, B1 => count25M(5), ZN => cnt_n_10);
  cnt_count_reg_3 : DFKCNQD1BWP7T port map(CP => clk, CN => cnt_n_1, D => cnt_n_7, Q => count25M(3));
  cnt_g230 : MOAI22D0BWP7T port map(A1 => cnt_n_6, A2 => count25M(4), B1 => cnt_n_6, B2 => count25M(4), ZN => cnt_n_9);
  cnt_g231 : IND2D1BWP7T port map(A1 => cnt_n_6, B1 => count25M(4), ZN => cnt_n_8);
  cnt_count_reg_2 : DFKCNQD1BWP7T port map(CP => clk, CN => cnt_n_5, D => cnt_n_1, Q => count25M(2));
  cnt_g233 : MOAI22D0BWP7T port map(A1 => cnt_n_4, A2 => count25M(3), B1 => cnt_n_4, B2 => count25M(3), ZN => cnt_n_7);
  cnt_g234 : IND2D1BWP7T port map(A1 => cnt_n_4, B1 => count25M(3), ZN => cnt_n_6);
  cnt_count_reg_1 : DFKCNQD1BWP7T port map(CP => clk, CN => cnt_n_3, D => cnt_n_1, Q => count25M(1));
  cnt_g236 : MOAI22D0BWP7T port map(A1 => cnt_n_2, A2 => count25M(2), B1 => cnt_n_2, B2 => count25M(2), ZN => cnt_n_5);
  cnt_g237 : IND2D1BWP7T port map(A1 => cnt_n_2, B1 => count25M(2), ZN => cnt_n_4);
  cnt_g239 : MOAI22D0BWP7T port map(A1 => cnt_n_0, A2 => count25M(1), B1 => cnt_n_0, B2 => count25M(1), ZN => cnt_n_3);
  cnt_g240 : ND2D1BWP7T port map(A1 => count25M(0), A2 => count25M(1), ZN => cnt_n_2);
  cnt_g241 : INVD1BWP7T port map(I => cntReset25M, ZN => cnt_n_1);
  cnt_count_reg_0 : DFKCND1BWP7T port map(CP => clk, CN => cnt_n_0, D => cnt_n_1, Q => count25M(0), QN => cnt_n_0);
  flipflop9_Q_reg : EDFQD0BWP7T port map(CP => clk, D => btns(2), E => btnflipfloprst, Q => flipflop9_Q_9);
  flipflop9_drc_bufs : BUFFD4BWP7T port map(I => flipflop9_Q_9, Z => buttons(2));

end synthesised;
