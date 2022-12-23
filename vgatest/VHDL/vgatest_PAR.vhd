
library ieee;
use ieee.std_logic_1164.all;
--library tcb018gbwp7t;
--use tcb018gbwp7t.all;

architecture routed of vgatest is

  component DEL01BWP7T
    port(I : in std_logic; Z : out std_logic);
  end component;

  component BUFFD5BWP7T
    port(I : in std_logic; Z : out std_logic);
  end component;

  component BUFFD10BWP7T
    port(I : in std_logic; Z : out std_logic);
  end component;

  component CKBD6BWP7T
    port(I : in std_logic; Z : out std_logic);
  end component;

  component OR4D1BWP7T
    port(A1, A2, A3, A4 : in std_logic; Z : out std_logic);
  end component;

  component OR3XD1BWP7T
    port(A1, A2, A3 : in std_logic; Z : out std_logic);
  end component;

  component CKAN2D8BWP7T
    port(A1, A2 : in std_logic; Z : out std_logic);
  end component;

  component OAI31D0BWP7T
    port(A1, A2, A3, B : in std_logic; ZN : out std_logic);
  end component;

  component NR4D0BWP7T
    port(A1, A2, A3, A4 : in std_logic; ZN : out std_logic);
  end component;

  component IND3D0BWP7T
    port(A1, B1, B2 : in std_logic; ZN : out std_logic);
  end component;

  component IND4D0BWP7T
    port(A1, B1, B2, B3 : in std_logic; ZN : out std_logic);
  end component;

  component AOI31D0BWP7T
    port(A1, A2, A3, B : in std_logic; ZN : out std_logic);
  end component;

  component IAO21D0BWP7T
    port(A1, A2, B : in std_logic; ZN : out std_logic);
  end component;

  component CKND1BWP7T
    port(I : in std_logic; ZN : out std_logic);
  end component;

  component OR2D0BWP7T
    port(A1, A2 : in std_logic; Z : out std_logic);
  end component;

  component ND2D0BWP7T
    port(A1, A2 : in std_logic; ZN : out std_logic);
  end component;

  component MUX2ND0BWP7T
    port(I0, I1, S : in std_logic; ZN : out std_logic);
  end component;

  component ND4D0BWP7T
    port(A1, A2, A3, A4 : in std_logic; ZN : out std_logic);
  end component;

  component INVD0BWP7T
    port(I : in std_logic; ZN : out std_logic);
  end component;

  component LNQD1BWP7T
    port(D, EN : in std_logic; Q : out std_logic);
  end component;

  component LND1BWP7T
    port(D, EN : in std_logic; Q, QN : out std_logic);
  end component;

  component DFCNQD1BWP7T
    port(CDN, CP, D : in std_logic; Q : out std_logic);
  end component;

  component NR2XD0BWP7T
    port(A1, A2 : in std_logic; ZN : out std_logic);
  end component;

  component MAOI22D0BWP7T
    port(A1, A2, B1, B2 : in std_logic; ZN : out std_logic);
  end component;

  component MOAI22D0BWP7T
    port(A1, A2, B1, B2 : in std_logic; ZN : out std_logic);
  end component;

  component IND2D1BWP7T
    port(A1, B1 : in std_logic; ZN : out std_logic);
  end component;

  component IOA21D1BWP7T
    port(A1, A2, B : in std_logic; ZN : out std_logic);
  end component;

  component ND2D1BWP7T
    port(A1, A2 : in std_logic; ZN : out std_logic);
  end component;

  component INR2XD0BWP7T
    port(A1, B1 : in std_logic; ZN : out std_logic);
  end component;

  component IND3D1BWP7T
    port(A1, B1, B2 : in std_logic; ZN : out std_logic);
  end component;

  component ND3D0BWP7T
    port(A1, A2, A3 : in std_logic; ZN : out std_logic);
  end component;

  component INR3D0BWP7T
    port(A1, B1, B2 : in std_logic; ZN : out std_logic);
  end component;

  component IIND4D0BWP7T
    port(A1, A2, B1, B2 : in std_logic; ZN : out std_logic);
  end component;

  component XNR2D1BWP7T
    port(A1, A2 : in std_logic; ZN : out std_logic);
  end component;

  component DFCND1BWP7T
    port(CDN, CP, D : in std_logic; Q, QN : out std_logic);
  end component;

  component CKXOR2D1BWP7T
    port(A1, A2 : in std_logic; Z : out std_logic);
  end component;

  component TIELBWP7T
    port(ZN : out std_logic);
  end component;

  signal FE_PHN5_VGA_n_34, FE_OFN4_V, FE_OFN3_H, FE_OFN2_R, FE_RN_2 : std_logic;
  signal FE_OFN0_B, CTS_6 : std_logic;
  signal VGA_horizontal : std_logic_vector(9 downto 0);
  signal VGA_vertical : std_logic_vector(9 downto 0);
  signal VGA_scale_vertical : std_logic_vector(9 downto 0);
  signal VGA_vertical_counter : std_logic_vector(9 downto 0);
  signal VGA_horizontal_counter : std_logic_vector(9 downto 0);
  signal UNCONNECTED, VGA_n_0, VGA_n_1, VGA_n_2, VGA_n_3 : std_logic;
  signal VGA_n_4, VGA_n_5, VGA_n_6, VGA_n_7, VGA_n_9 : std_logic;
  signal VGA_n_10, VGA_n_11, VGA_n_12, VGA_n_14, VGA_n_15 : std_logic;
  signal VGA_n_16, VGA_n_18, VGA_n_19, VGA_n_20, VGA_n_21 : std_logic;
  signal VGA_n_23, VGA_n_24, VGA_n_25, VGA_n_26, VGA_n_28 : std_logic;
  signal VGA_n_29, VGA_n_34, VGA_n_35, VGA_n_36, VGA_n_37 : std_logic;
  signal VGA_n_38, VGA_n_39, VGA_n_40, VGA_n_41, VGA_n_42 : std_logic;
  signal VGA_n_44, VGA_n_45, VGA_n_46, VGA_n_47, VGA_n_48 : std_logic;
  signal VGA_n_49, VGA_n_50, VGA_n_52, VGA_n_53, VGA_n_54 : std_logic;
  signal VGA_n_56, VGA_n_57, VGA_n_58, VGA_n_59, VGA_n_60 : std_logic;
  signal VGA_n_61, VGA_n_62, VGA_n_63, VGA_n_64, VGA_n_65 : std_logic;
  signal VGA_n_66, VGA_n_67, VGA_n_68, VGA_n_69, VGA_n_70 : std_logic;
  signal VGA_n_71, VGA_n_72, VGA_n_73, VGA_n_74, VGA_n_77 : std_logic;
  signal VGA_n_78, VGA_n_79, VGA_n_80, VGA_n_81, VGA_n_90 : std_logic;
  signal VGA_n_91, VGA_n_92, VGA_n_93, VGA_n_94, VGA_n_95 : std_logic;

begin

  B <= FE_RN_2;
  enable <= G;
  FE_PHC5_VGA_n_34 : DEL01BWP7T port map(I => VGA_n_34, Z => FE_PHN5_VGA_n_34);
  FE_OFC4_V : BUFFD5BWP7T port map(I => FE_OFN4_V, Z => V);
  FE_OFC3_H : BUFFD5BWP7T port map(I => FE_OFN3_H, Z => H);
  FE_OFC2_R : BUFFD5BWP7T port map(I => FE_OFN2_R, Z => R);
  FE_OFC1_B : BUFFD10BWP7T port map(I => B, Z => G);
  FE_OFC0_B : BUFFD5BWP7T port map(I => FE_OFN0_B, Z => FE_RN_2);
  CTS_ccl_a_BUF_clk_G0_L1_1 : CKBD6BWP7T port map(I => clock, Z => CTS_6);
  VGA_g1074 : OR4D1BWP7T port map(A1 => VGA_horizontal(8), A2 => VGA_n_63, A3 => VGA_horizontal(9), A4 => VGA_n_81, Z => FE_OFN3_H);
  VGA_g1075 : OR3XD1BWP7T port map(A1 => VGA_vertical(9), A2 => VGA_n_68, A3 => VGA_n_78, Z => FE_OFN4_V);
  VGA_g1076 : CKAN2D8BWP7T port map(A1 => VGA_n_80, A2 => VGA_n_68, Z => scale_v);
  VGA_g1077 : OAI31D0BWP7T port map(A1 => VGA_horizontal(6), A2 => VGA_horizontal(5), A3 => VGA_n_73, B => VGA_n_79, ZN => VGA_n_81);
  VGA_g1078 : CKAN2D8BWP7T port map(A1 => VGA_n_77, A2 => VGA_n_64, Z => scale_h);
  VGA_g1079 : NR4D0BWP7T port map(A1 => VGA_n_70, A2 => VGA_vertical(1), A3 => VGA_vertical(9), A4 => VGA_scale_vertical(4), ZN => VGA_n_80);
  VGA_g1080 : IND3D0BWP7T port map(A1 => VGA_n_74, B1 => VGA_horizontal(5), B2 => VGA_horizontal(6), ZN => VGA_n_79);
  VGA_g1081 : IND4D0BWP7T port map(A1 => VGA_scale_vertical(4), B1 => VGA_vertical(3), B2 => VGA_n_66, B3 => VGA_n_67, ZN => VGA_n_78);
  VGA_g1082 : NR4D0BWP7T port map(A1 => VGA_n_69, A2 => VGA_n_65, A3 => VGA_horizontal(1), A4 => VGA_horizontal(0), ZN => VGA_n_77);
  VGA_g1085 : AOI31D0BWP7T port map(A1 => VGA_horizontal(4), A2 => VGA_horizontal(1), A3 => VGA_horizontal(0), B => VGA_n_72, ZN => VGA_n_74);
  VGA_g1086 : IAO21D0BWP7T port map(A1 => VGA_horizontal(1), A2 => VGA_horizontal(3), B => VGA_n_71, ZN => VGA_n_73);
  VGA_g1087 : CKND1BWP7T port map(I => VGA_n_71, ZN => VGA_n_72);
  VGA_g1088 : OR2D0BWP7T port map(A1 => VGA_n_66, A2 => VGA_vertical(3), Z => VGA_n_70);
  VGA_g1089 : ND2D0BWP7T port map(A1 => VGA_n_65, A2 => VGA_horizontal(4), ZN => VGA_n_71);
  VGA_g1090 : MUX2ND0BWP7T port map(I0 => VGA_vertical(0), I1 => VGA_scale_vertical(2), S => VGA_vertical(1), ZN => VGA_n_67);
  VGA_g1091 : IAO21D0BWP7T port map(A1 => VGA_horizontal(7), A2 => VGA_horizontal(8), B => VGA_horizontal(9), ZN => VGA_n_69);
  VGA_g1092 : ND4D0BWP7T port map(A1 => VGA_vertical(8), A2 => VGA_vertical(5), A3 => VGA_vertical(7), A4 => VGA_vertical(6), ZN => VGA_n_68);
  VGA_g1093 : OR2D0BWP7T port map(A1 => VGA_scale_vertical(2), A2 => VGA_vertical(0), Z => VGA_n_66);
  VGA_g1094 : OR2D0BWP7T port map(A1 => VGA_horizontal(3), A2 => VGA_horizontal(2), Z => VGA_n_65);
  VGA_g1095 : INVD0BWP7T port map(I => VGA_horizontal(4), ZN => VGA_n_64);
  VGA_vertical_reg_8 : LNQD1BWP7T port map(D => VGA_vertical_counter(8), EN => reset, Q => VGA_vertical(8));
  VGA_vertical_reg_6 : LNQD1BWP7T port map(D => VGA_vertical_counter(6), EN => reset, Q => VGA_vertical(6));
  VGA_horizontal_reg_6 : LNQD1BWP7T port map(D => VGA_horizontal_counter(6), EN => reset, Q => VGA_horizontal(6));
  VGA_scale_vertical_reg_2 : LNQD1BWP7T port map(D => VGA_vertical_counter(2), EN => reset, Q => VGA_scale_vertical(2));
  VGA_vertical_reg_0 : LNQD1BWP7T port map(D => VGA_vertical_counter(0), EN => reset, Q => VGA_vertical(0));
  VGA_horizontal_reg_5 : LNQD1BWP7T port map(D => VGA_horizontal_counter(5), EN => reset, Q => VGA_horizontal(5));
  VGA_scale_vertical_reg_3 : LNQD1BWP7T port map(D => VGA_vertical_counter(3), EN => reset, Q => VGA_vertical(3));
  VGA_scale_horizontal_reg_4 : LNQD1BWP7T port map(D => VGA_horizontal_counter(4), EN => reset, Q => VGA_horizontal(4));
  VGA_scale_horizontal_reg_1 : LNQD1BWP7T port map(D => VGA_horizontal_counter(1), EN => reset, Q => VGA_horizontal(1));
  VGA_vertical_reg_9 : LNQD1BWP7T port map(D => VGA_vertical_counter(9), EN => reset, Q => VGA_vertical(9));
  VGA_g1106 : INVD0BWP7T port map(I => VGA_horizontal(7), ZN => VGA_n_63);
  VGA_vertical_reg_5 : LNQD1BWP7T port map(D => VGA_vertical_counter(5), EN => reset, Q => VGA_vertical(5));
  VGA_scale_horizontal_reg_2 : LNQD1BWP7T port map(D => VGA_horizontal_counter(2), EN => reset, Q => VGA_horizontal(2));
  VGA_vertical_reg_7 : LNQD1BWP7T port map(D => VGA_vertical_counter(7), EN => reset, Q => VGA_vertical(7));
  VGA_horizontal_reg_8 : LNQD1BWP7T port map(D => VGA_horizontal_counter(8), EN => reset, Q => VGA_horizontal(8));
  VGA_horizontal_reg_0 : LNQD1BWP7T port map(D => VGA_horizontal_counter(0), EN => reset, Q => VGA_horizontal(0));
  VGA_horizontal_reg_9 : LND1BWP7T port map(D => VGA_horizontal_counter(9), EN => reset, Q => UNCONNECTED, QN => VGA_horizontal(9));
  VGA_scale_horizontal_reg_3 : LNQD1BWP7T port map(D => VGA_horizontal_counter(3), EN => reset, Q => VGA_horizontal(3));
  VGA_horizontal_reg_7 : LNQD1BWP7T port map(D => VGA_horizontal_counter(7), EN => reset, Q => VGA_horizontal(7));
  VGA_scale_vertical_reg_4 : LNQD1BWP7T port map(D => VGA_vertical_counter(4), EN => reset, Q => VGA_scale_vertical(4));
  VGA_scale_vertical_reg_1 : LNQD1BWP7T port map(D => VGA_vertical_counter(1), EN => reset, Q => VGA_vertical(1));
  VGA_horizontal_counter_reg_1 : DFCNQD1BWP7T port map(CDN => VGA_n_4, CP => CTS_6, D => VGA_n_95, Q => VGA_horizontal_counter(1));
  VGA_horizontal_counter_reg_2 : DFCNQD1BWP7T port map(CDN => VGA_n_4, CP => CTS_6, D => VGA_n_90, Q => VGA_horizontal_counter(2));
  VGA_horizontal_counter_reg_3 : DFCNQD1BWP7T port map(CDN => VGA_n_4, CP => CTS_6, D => VGA_n_91, Q => VGA_horizontal_counter(3));
  VGA_horizontal_counter_reg_4 : DFCNQD1BWP7T port map(CDN => VGA_n_4, CP => CTS_6, D => VGA_n_92, Q => VGA_horizontal_counter(4));
  VGA_horizontal_counter_reg_6 : DFCNQD1BWP7T port map(CDN => VGA_n_4, CP => CTS_6, D => VGA_n_93, Q => VGA_horizontal_counter(6));
  VGA_horizontal_counter_reg_7 : DFCNQD1BWP7T port map(CDN => VGA_n_4, CP => CTS_6, D => VGA_n_94, Q => VGA_horizontal_counter(7));
  VGA_horizontal_counter_reg_8 : DFCNQD1BWP7T port map(CDN => VGA_n_4, CP => CTS_6, D => VGA_n_60, Q => VGA_horizontal_counter(8));
  VGA_horizontal_counter_reg_9 : DFCNQD1BWP7T port map(CDN => VGA_n_4, CP => CTS_6, D => VGA_n_62, Q => VGA_horizontal_counter(9));
  VGA_scale_vertical_counter_reg_0 : DFCNQD1BWP7T port map(CDN => VGA_n_4, CP => CTS_6, D => VGA_n_0, Q => VGA_vertical_counter(0));
  VGA_scale_vertical_counter_reg_1 : DFCNQD1BWP7T port map(CDN => VGA_n_4, CP => CTS_6, D => VGA_n_49, Q => VGA_vertical_counter(1));
  VGA_scale_vertical_counter_reg_2 : DFCNQD1BWP7T port map(CDN => VGA_n_4, CP => CTS_6, D => VGA_n_53, Q => VGA_vertical_counter(2));
  VGA_scale_vertical_counter_reg_3 : DFCNQD1BWP7T port map(CDN => VGA_n_4, CP => CTS_6, D => VGA_n_54, Q => VGA_vertical_counter(3));
  VGA_scale_vertical_counter_reg_4 : DFCNQD1BWP7T port map(CDN => VGA_n_4, CP => CTS_6, D => VGA_n_47, Q => VGA_vertical_counter(4));
  VGA_vertical_counter_reg_5 : DFCNQD1BWP7T port map(CDN => VGA_n_4, CP => CTS_6, D => VGA_n_50, Q => VGA_vertical_counter(5));
  VGA_vertical_counter_reg_6 : DFCNQD1BWP7T port map(CDN => VGA_n_4, CP => CTS_6, D => VGA_n_59, Q => VGA_vertical_counter(6));
  VGA_vertical_counter_reg_7 : DFCNQD1BWP7T port map(CDN => VGA_n_4, CP => CTS_6, D => VGA_n_48, Q => VGA_vertical_counter(7));
  VGA_vertical_counter_reg_8 : DFCNQD1BWP7T port map(CDN => VGA_n_4, CP => CTS_6, D => VGA_n_58, Q => VGA_vertical_counter(8));
  VGA_vertical_counter_reg_9 : DFCNQD1BWP7T port map(CDN => VGA_n_4, CP => CTS_6, D => VGA_n_52, Q => VGA_vertical_counter(9));
  VGA_g1374 : NR2XD0BWP7T port map(A1 => VGA_n_61, A2 => VGA_n_3, ZN => VGA_n_62);
  VGA_g1376 : MAOI22D0BWP7T port map(A1 => VGA_n_56, A2 => VGA_horizontal_counter(9), B1 => VGA_n_56, B2 => VGA_horizontal_counter(9), ZN => VGA_n_61);
  VGA_g1377 : NR2XD0BWP7T port map(A1 => VGA_n_57, A2 => VGA_n_3, ZN => VGA_n_60);
  VGA_g1380 : MOAI22D0BWP7T port map(A1 => VGA_n_46, A2 => VGA_vertical_counter(6), B1 => VGA_n_46, B2 => VGA_vertical_counter(6), ZN => VGA_n_59);
  VGA_g1382 : MOAI22D0BWP7T port map(A1 => VGA_n_45, A2 => VGA_vertical_counter(8), B1 => VGA_n_45, B2 => VGA_vertical_counter(8), ZN => VGA_n_58);
  VGA_g1383 : MAOI22D0BWP7T port map(A1 => VGA_n_44, A2 => VGA_horizontal_counter(8), B1 => VGA_n_44, B2 => VGA_horizontal_counter(8), ZN => VGA_n_57);
  VGA_g1387 : IND2D1BWP7T port map(A1 => VGA_n_44, B1 => VGA_horizontal_counter(8), ZN => VGA_n_56);
  VGA_g1392 : OAI31D0BWP7T port map(A1 => VGA_vertical_counter(3), A2 => VGA_n_9, A3 => VGA_n_35, B => VGA_n_41, ZN => VGA_n_54);
  VGA_g1395 : OAI31D0BWP7T port map(A1 => VGA_vertical_counter(2), A2 => VGA_n_7, A3 => VGA_n_35, B => VGA_n_40, ZN => VGA_n_53);
  VGA_g1396 : OAI31D0BWP7T port map(A1 => VGA_vertical_counter(9), A2 => VGA_n_18, A3 => VGA_n_35, B => VGA_n_42, ZN => VGA_n_52);
  VGA_g1399 : MOAI22D0BWP7T port map(A1 => VGA_n_37, A2 => VGA_vertical_counter(5), B1 => VGA_n_37, B2 => VGA_vertical_counter(5), ZN => VGA_n_50);
  VGA_g1400 : MOAI22D0BWP7T port map(A1 => VGA_n_39, A2 => VGA_vertical_counter(1), B1 => VGA_n_39, B2 => VGA_vertical_counter(1), ZN => VGA_n_49);
  VGA_g1402 : MOAI22D0BWP7T port map(A1 => VGA_n_36, A2 => VGA_vertical_counter(7), B1 => VGA_n_36, B2 => VGA_vertical_counter(7), ZN => VGA_n_48);
  VGA_g1403 : MOAI22D0BWP7T port map(A1 => VGA_n_38, A2 => VGA_vertical_counter(4), B1 => VGA_n_38, B2 => VGA_vertical_counter(4), ZN => VGA_n_47);
  VGA_g1411 : IOA21D1BWP7T port map(A1 => VGA_n_3, A2 => VGA_n_19, B => VGA_vertical_counter(9), ZN => VGA_n_42);
  VGA_g1412 : ND2D1BWP7T port map(A1 => VGA_n_28, A2 => VGA_vertical_counter(3), ZN => VGA_n_41);
  VGA_g1413 : IOA21D1BWP7T port map(A1 => VGA_n_3, A2 => VGA_n_21, B => VGA_vertical_counter(2), ZN => VGA_n_40);
  VGA_g1414 : IND2D1BWP7T port map(A1 => VGA_n_37, B1 => VGA_vertical_counter(5), ZN => VGA_n_46);
  VGA_g1415 : IND2D1BWP7T port map(A1 => VGA_n_36, B1 => VGA_vertical_counter(7), ZN => VGA_n_45);
  VGA_g1416 : IND2D1BWP7T port map(A1 => VGA_n_26, B1 => VGA_horizontal_counter(7), ZN => VGA_n_44);
  VGA_g1418 : ND2D1BWP7T port map(A1 => VGA_n_3, A2 => VGA_vertical_counter(0), ZN => VGA_n_39);
  VGA_g1419 : IND2D1BWP7T port map(A1 => VGA_n_10, B1 => VGA_n_3, ZN => VGA_n_38);
  VGA_g1420 : ND2D1BWP7T port map(A1 => VGA_n_3, A2 => VGA_n_12, ZN => VGA_n_37);
  VGA_g1421 : IND2D1BWP7T port map(A1 => VGA_n_14, B1 => VGA_n_3, ZN => VGA_n_36);
  VGA_g1422 : ND2D1BWP7T port map(A1 => VGA_n_3, A2 => VGA_n_1, ZN => VGA_n_35);
  VGA_g1427 : NR2XD0BWP7T port map(A1 => VGA_n_3, A2 => VGA_n_24, ZN => VGA_n_29);
  VGA_g1428 : IOA21D1BWP7T port map(A1 => VGA_n_1, A2 => VGA_n_9, B => VGA_n_3, ZN => VGA_n_28);
  VGA_g1431 : IND2D1BWP7T port map(A1 => VGA_n_23, B1 => VGA_horizontal_counter(6), ZN => VGA_n_26);
  VGA_g1432 : IND4D0BWP7T port map(A1 => VGA_horizontal_counter(6), B1 => VGA_horizontal_counter(9), B2 => VGA_n_5, B3 => VGA_n_20, ZN => VGA_n_25);
  VGA_g1433 : MAOI22D0BWP7T port map(A1 => VGA_n_20, A2 => VGA_n_5, B1 => VGA_n_20, B2 => VGA_n_5, ZN => VGA_n_24);
  VGA_g1434 : ND2D1BWP7T port map(A1 => VGA_n_20, A2 => VGA_horizontal_counter(5), ZN => VGA_n_23);
  VGA_g1436 : ND2D1BWP7T port map(A1 => VGA_n_1, A2 => VGA_n_7, ZN => VGA_n_21);
  VGA_g1437 : ND2D1BWP7T port map(A1 => VGA_n_18, A2 => VGA_n_1, ZN => VGA_n_19);
  VGA_g1438 : INR2XD0BWP7T port map(A1 => VGA_horizontal_counter(4), B1 => VGA_n_16, ZN => VGA_n_20);
  VGA_g1440 : IND3D1BWP7T port map(A1 => VGA_n_14, B1 => VGA_vertical_counter(7), B2 => VGA_vertical_counter(8), ZN => VGA_n_18);
  VGA_g1442 : IND2D1BWP7T port map(A1 => VGA_n_11, B1 => VGA_horizontal_counter(3), ZN => VGA_n_16);
  VGA_g1443 : NR4D0BWP7T port map(A1 => VGA_n_2, A2 => VGA_vertical_counter(0), A3 => VGA_vertical_counter(6), A4 => VGA_vertical_counter(8), ZN => VGA_n_15);
  VGA_g1444 : ND3D0BWP7T port map(A1 => VGA_n_12, A2 => VGA_vertical_counter(5), A3 => VGA_vertical_counter(6), ZN => VGA_n_14);
  VGA_g1446 : INR2XD0BWP7T port map(A1 => VGA_vertical_counter(4), B1 => VGA_n_10, ZN => VGA_n_12);
  VGA_g1447 : IND2D1BWP7T port map(A1 => VGA_n_6, B1 => VGA_horizontal_counter(2), ZN => VGA_n_11);
  VGA_g1448 : IND2D1BWP7T port map(A1 => VGA_n_9, B1 => VGA_vertical_counter(3), ZN => VGA_n_10);
  VGA_g1450 : IND2D1BWP7T port map(A1 => VGA_n_7, B1 => VGA_vertical_counter(2), ZN => VGA_n_9);
  VGA_g1452 : ND2D1BWP7T port map(A1 => VGA_vertical_counter(1), A2 => VGA_vertical_counter(0), ZN => VGA_n_7);
  VGA_g1453 : ND2D1BWP7T port map(A1 => VGA_horizontal_counter(1), A2 => VGA_horizontal_counter(0), ZN => VGA_n_6);
  VGA_g1459 : CKND1BWP7T port map(I => reset, ZN => VGA_n_4);
  VGA_g2 : INR3D0BWP7T port map(A1 => VGA_horizontal_counter(8), B1 => VGA_n_25, B2 => VGA_horizontal_counter(7), ZN => VGA_n_3);
  VGA_g1460 : IIND4D0BWP7T port map(A1 => VGA_vertical_counter(1), A2 => VGA_vertical_counter(4), B1 => VGA_vertical_counter(2), B2 => VGA_vertical_counter(9), ZN => VGA_n_2);
  VGA_g1461 : IIND4D0BWP7T port map(A1 => VGA_vertical_counter(5), A2 => VGA_vertical_counter(7), B1 => VGA_vertical_counter(3), B2 => VGA_n_15, ZN => VGA_n_1);
  VGA_g1462 : MUX2ND0BWP7T port map(I0 => VGA_n_35, I1 => VGA_n_3, S => VGA_vertical_counter(0), ZN => VGA_n_0);
  VGA_g1470 : XNR2D1BWP7T port map(A1 => VGA_n_6, A2 => VGA_horizontal_counter(2), ZN => VGA_n_90);
  VGA_g1471 : XNR2D1BWP7T port map(A1 => VGA_n_11, A2 => VGA_horizontal_counter(3), ZN => VGA_n_91);
  VGA_g1472 : XNR2D1BWP7T port map(A1 => VGA_n_16, A2 => VGA_horizontal_counter(4), ZN => VGA_n_92);
  VGA_g1473 : XNR2D1BWP7T port map(A1 => VGA_n_23, A2 => VGA_horizontal_counter(6), ZN => VGA_n_93);
  VGA_g1474 : XNR2D1BWP7T port map(A1 => VGA_n_26, A2 => VGA_horizontal_counter(7), ZN => VGA_n_94);
  VGA_horizontal_counter_reg_5 : DFCND1BWP7T port map(CDN => VGA_n_4, CP => CTS_6, D => VGA_n_29, Q => VGA_horizontal_counter(5), QN => VGA_n_5);
  VGA_horizontal_counter_reg_0 : DFCND1BWP7T port map(CDN => VGA_n_4, CP => CTS_6, D => FE_PHN5_VGA_n_34, Q => VGA_horizontal_counter(0), QN => VGA_n_34);
  VGA_g1479 : CKXOR2D1BWP7T port map(A1 => VGA_horizontal_counter(0), A2 => VGA_horizontal_counter(1), Z => VGA_n_95);
  VGA_g1480 : INR3D0BWP7T port map(A1 => VGA_n_68, B1 => VGA_n_69, B2 => VGA_vertical(9), ZN => FE_OFN0_B);
  tie_0_cell : TIELBWP7T port map(ZN => FE_OFN2_R);

end routed;
