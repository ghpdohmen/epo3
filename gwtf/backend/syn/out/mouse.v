
// Generated by Cadence Genus(TM) Synthesis Solution 17.11-s014_1
// Generated on: Dec 21 2022 12:48:05 CET (Dec 21 2022 11:48:05 UTC)

// Verification Directory fv/mouse 

module mouse(mouseX, buttons, mouseY, Handshake_out, DataSwitch,
     ClkSwitch, Handshake_in, Data_in, Clk15k, clk, reset);
  input Handshake_in, Data_in, Clk15k, clk, reset;
  output [2:0] mouseX, mouseY;
  output [4:0] buttons;
  output Handshake_out, DataSwitch, ClkSwitch;
  wire Handshake_in, Data_in, Clk15k, clk, reset;
  wire [2:0] mouseX, mouseY;
  wire [4:0] buttons;
  wire Handshake_out, DataSwitch, ClkSwitch;
  wire [10:0] data_sr_11bit;
  wire [2:0] mouse_x;
  wire [4:0] mfsm_state;
  wire [4:0] btns;
  wire [2:0] mouse_y;
  wire [3:0] count15k;
  wire [1:0] sfsm_new_state;
  wire [1:0] sfsm_state;
  wire [11:0] count25M;
  wire [8:0] data_sr_9bit;
  wire [8:0] sr_new_new_data;
  wire [11:0] cnt_count;
  wire UNCONNECTED, actBit, bit9_reg_rst, btnflipfloprst, cntReset15K,
       cntReset25M, cnt_n_0, cnt_n_1;
  wire cnt_n_2, cnt_n_3, cnt_n_4, cnt_n_5, cnt_n_6, cnt_n_7, cnt_n_8,
       cnt_n_9;
  wire cnt_n_10, cnt_n_11, cnt_n_12, cnt_n_13, cnt_n_14, cnt_n_15,
       cnt_n_16, cnt_n_17;
  wire cnt_n_18, cnt_n_19, cnt_n_20, cnt_n_21, ed_n_0, ed_reg1,
       ed_reg2, flipflop1_Q_9;
  wire flipflop2_Q_9, flipflop3_Q_9, flipflop4_Q_9, flipflop5_Q_9,
       flipflop6_Q_9, flipflop7_Q_9, flipflop8_Q_9, flipflop9_Q_9;
  wire flipflop10_Q_9, flipflop11_Q_9, mfsm_n_0, mfsm_n_2, mfsm_n_3,
       mfsm_n_4, mfsm_n_5, mfsm_n_6;
  wire mfsm_n_7, mfsm_n_8, mfsm_n_9, mfsm_n_10, mfsm_n_11, mfsm_n_12,
       mfsm_n_13, mfsm_n_14;
  wire mfsm_n_15, mfsm_n_16, mfsm_n_17, mfsm_n_18, mfsm_n_19,
       mfsm_n_20, mfsm_n_21, mfsm_n_22;
  wire mfsm_n_23, mfsm_n_24, mfsm_n_25, mfsm_n_26, mfsm_n_27,
       mfsm_n_28, mfsm_n_29, mfsm_n_30;
  wire mfsm_n_31, mfsm_n_32, mfsm_n_33, mfsm_n_34, mfsm_n_35,
       mfsm_n_36, mfsm_n_37, mfsm_n_38;
  wire mfsm_n_39, mfsm_n_40, mfsm_n_41, mfsm_n_42, mfsm_n_43,
       mfsm_n_44, mfsm_n_45, mfsm_n_46;
  wire mfsm_n_47, mfsm_n_48, mfsm_n_49, mfsm_n_82, muxFSM, muxReg,
       mx_n_0, mx_n_1;
  wire n_0, output_edgedet, sfsm_n_0, sfsm_n_1, sfsm_n_2, sfsm_n_3,
       sfsm_n_4, sfsm_n_5;
  wire sfsm_n_6, sfsm_n_7, sfsm_n_8, sfsm_n_9, \sr11_data_out[0]_79 ,
       \sr11_data_out[1]_80 , \sr11_data_out[5]_84 , sr11_n_0;
  wire sr_n_0, sr_n_1, sr_n_2, sr_n_3, sr_n_4, sr_n_5, sr_n_6, sr_n_7;
  wire sr_n_8, sr_n_9, sr_n_10, sr_n_11, tb_n_0, tb_n_1, tb_n_2, tb_n_3;
  wire tb_n_4, tb_n_5, tb_n_6, xflipfloprst, yflipfloprst;
  INVD1BWP7T g3(.I (bit9_reg_rst), .ZN (n_0));
  NR2XD0BWP7T ed_g12(.A1 (ed_n_0), .A2 (ed_reg2), .ZN (output_edgedet));
  DFQD1BWP7T ed_reg2_reg(.CP (clk), .D (ed_reg1), .Q (ed_reg2));
  DFD1BWP7T ed_reg1_reg(.CP (clk), .D (Clk15k), .Q (ed_reg1), .QN
       (ed_n_0));
  AN2D0BWP7T mfsm_g1728(.A1 (mfsm_n_49), .A2 (data_sr_11bit[4]), .Z
       (mouse_x[2]));
  AN2D0BWP7T mfsm_g1729(.A1 (mfsm_n_49), .A2 (data_sr_11bit[3]), .Z
       (mouse_x[1]));
  AN2D0BWP7T mfsm_g1730(.A1 (mfsm_n_49), .A2 (data_sr_11bit[2]), .Z
       (mouse_x[0]));
  OAI211D1BWP7T mfsm_g1731(.A1 (mfsm_state[0]), .A2 (mfsm_n_82), .B
       (mfsm_n_48), .C (mfsm_n_0), .ZN (cntReset15K));
  INR2D0BWP7T mfsm_g1732(.A1 (data_sr_11bit[7]), .B1 (mfsm_n_47), .ZN
       (btns[1]));
  INR2D0BWP7T mfsm_g1733(.A1 (data_sr_11bit[6]), .B1 (mfsm_n_47), .ZN
       (btns[0]));
  INR2D0BWP7T mfsm_g1734(.A1 (data_sr_11bit[3]), .B1 (mfsm_n_47), .ZN
       (btns[4]));
  INR2D0BWP7T mfsm_g1736(.A1 (data_sr_11bit[2]), .B1 (mfsm_n_47), .ZN
       (btns[2]));
  INR2D0BWP7T mfsm_g1737(.A1 (data_sr_11bit[4]), .B1 (mfsm_n_47), .ZN
       (btns[3]));
  OA21D0BWP7T mfsm_g1738(.A1 (mfsm_n_46), .A2 (mfsm_n_45), .B
       (mfsm_n_82), .Z (mfsm_n_49));
  INVD1BWP7T mfsm_g1739(.I (mfsm_n_48), .ZN (xflipfloprst));
  AN2D4BWP7T mfsm_g1740(.A1 (mfsm_n_46), .A2 (mfsm_state[4]), .Z
       (Handshake_out));
  AN2D0BWP7T mfsm_g1741(.A1 (yflipfloprst), .A2 (data_sr_11bit[4]), .Z
       (mouse_y[2]));
  ND2D1BWP7T mfsm_g1742(.A1 (mfsm_n_82), .A2 (mfsm_n_45), .ZN
       (mfsm_n_48));
  INVD1BWP7T mfsm_g1743(.I (mfsm_n_47), .ZN (btnflipfloprst));
  AN2D0BWP7T mfsm_g1744(.A1 (yflipfloprst), .A2 (data_sr_11bit[3]), .Z
       (mouse_y[1]));
  AN2D0BWP7T mfsm_g1745(.A1 (yflipfloprst), .A2 (data_sr_11bit[2]), .Z
       (mouse_y[0]));
  ND3D0BWP7T mfsm_g1746(.A1 (mfsm_n_3), .A2 (mfsm_state[3]), .A3
       (mfsm_state[1]), .ZN (mfsm_n_47));
  INR2XD0BWP7T mfsm_g1747(.A1 (mfsm_state[1]), .B1 (mfsm_state[0]), .ZN
       (mfsm_n_46));
  NR2XD0BWP7T mfsm_g1748(.A1 (mfsm_n_4), .A2 (mfsm_n_3), .ZN
       (mfsm_n_82));
  INR2D1BWP7T mfsm_g1750(.A1 (mfsm_state[0]), .B1 (mfsm_state[1]), .ZN
       (mfsm_n_45));
  NR2XD0BWP7T mfsm_g1751(.A1 (mfsm_n_0), .A2 (mfsm_state[1]), .ZN
       (yflipfloprst));
  INR3D0BWP7T mfsm_g2(.A1 (mfsm_n_45), .B1 (mfsm_n_3), .B2
       (mfsm_state[3]), .ZN (actBit));
  AO221D0BWP7T mfsm_g2328(.A1 (mfsm_n_35), .A2 (mfsm_n_11), .B1
       (mfsm_n_24), .B2 (mfsm_n_16), .C (mfsm_n_23), .Z (mfsm_n_44));
  DFQD1BWP7T \mfsm_state_reg[1] (.CP (clk), .D (mfsm_n_39), .Q
       (mfsm_state[1]));
  OAI31D0BWP7T mfsm_g2330(.A1 (reset), .A2 (mfsm_n_4), .A3 (mfsm_n_17),
       .B (mfsm_n_40), .ZN (mfsm_n_43));
  OAI21D0BWP7T mfsm_g2331(.A1 (mfsm_n_10), .A2 (mfsm_n_3), .B
       (mfsm_n_38), .ZN (mfsm_n_42));
  MOAI22D0BWP7T mfsm_g2332(.A1 (mfsm_n_36), .A2 (mfsm_n_9), .B1
       (mfsm_n_28), .B2 (mfsm_n_11), .ZN (mfsm_n_41));
  OAI221D0BWP7T mfsm_g2333(.A1 (mfsm_n_27), .A2 (mfsm_state[3]), .B1
       (mfsm_n_7), .B2 (mfsm_n_21), .C (mfsm_n_16), .ZN (mfsm_n_40));
  OAI221D0BWP7T mfsm_g2334(.A1 (mfsm_n_29), .A2 (mfsm_n_9), .B1
       (mfsm_n_10), .B2 (mfsm_n_30), .C (mfsm_n_15), .ZN (mfsm_n_39));
  OAI21D0BWP7T mfsm_g2335(.A1 (mfsm_n_21), .A2 (mfsm_n_8), .B
       (mfsm_n_37), .ZN (mfsm_n_38));
  OAI31D0BWP7T mfsm_g2336(.A1 (mfsm_n_3), .A2 (mfsm_n_6), .A3
       (mfsm_n_15), .B (mfsm_n_34), .ZN (mfsm_n_37));
  OAI31D0BWP7T mfsm_g2337(.A1 (mfsm_state[2]), .A2 (mfsm_n_2), .A3
       (mfsm_n_6), .B (mfsm_n_33), .ZN (mfsm_n_36));
  OAI21D0BWP7T mfsm_g2338(.A1 (mfsm_n_19), .A2 (mfsm_state[0]), .B
       (mfsm_n_32), .ZN (mfsm_n_35));
  IOA21D1BWP7T mfsm_g2339(.A1 (mfsm_n_24), .A2 (mfsm_n_3), .B
       (mfsm_n_16), .ZN (mfsm_n_34));
  AOI21D0BWP7T mfsm_g2340(.A1 (mfsm_n_2), .A2 (mfsm_n_0), .B
       (mfsm_n_31), .ZN (mfsm_n_33));
  OAI21D0BWP7T mfsm_g2341(.A1 (mfsm_n_4), .A2 (mfsm_n_3), .B
       (mfsm_n_26), .ZN (mfsm_n_32));
  AOI21D0BWP7T mfsm_g2342(.A1 (mfsm_n_22), .A2 (mfsm_state[3]), .B
       (mfsm_n_8), .ZN (mfsm_n_31));
  AOI21D0BWP7T mfsm_g2343(.A1 (mfsm_n_82), .A2 (mfsm_state[0]), .B
       (mfsm_n_25), .ZN (mfsm_n_30));
  AOI22D0BWP7T mfsm_g2344(.A1 (mfsm_n_21), .A2 (mfsm_n_5), .B1
       (mfsm_n_6), .B2 (mfsm_n_3), .ZN (mfsm_n_29));
  OAI32D1BWP7T mfsm_g2345(.A1 (mfsm_n_0), .A2 (mfsm_n_7), .A3
       (mfsm_n_2), .B1 (mfsm_n_0), .B2 (mfsm_n_20), .ZN (mfsm_n_28));
  OA22D0BWP7T mfsm_g2346(.A1 (mfsm_n_22), .A2 (mfsm_n_3), .B1
       (mfsm_state[2]), .B2 (mfsm_n_12), .Z (mfsm_n_27));
  INVD1BWP7T mfsm_g2347(.I (mfsm_n_25), .ZN (mfsm_n_26));
  AOI21D0BWP7T mfsm_g2348(.A1 (mfsm_n_14), .A2 (mfsm_n_19), .B
       (mfsm_n_2), .ZN (mfsm_n_25));
  OAI32D1BWP7T mfsm_g2349(.A1 (mfsm_n_9), .A2 (mfsm_n_8), .A3
       (mfsm_n_18), .B1 (mfsm_n_12), .B2 (mfsm_n_15), .ZN (mfsm_n_23));
  IOA21D1BWP7T mfsm_g2350(.A1 (mfsm_n_19), .A2 (mfsm_n_4), .B
       (mfsm_n_0), .ZN (mfsm_n_24));
  NR2XD0BWP7T mfsm_g2351(.A1 (mfsm_n_19), .A2 (mfsm_state[4]), .ZN
       (mfsm_n_22));
  AOI221D0BWP7T mfsm_g2352(.A1 (mfsm_n_7), .A2 (mfsm_n_2), .B1
       (mfsm_n_4), .B2 (mfsm_n_3), .C (mfsm_n_19), .ZN (mfsm_n_20));
  NR2D1BWP7T mfsm_g2353(.A1 (mfsm_n_18), .A2 (mfsm_state[4]), .ZN
       (mfsm_n_21));
  INVD0BWP7T mfsm_g2354(.I (mfsm_n_19), .ZN (mfsm_n_18));
  IND2D1BWP7T mfsm_g2355(.A1 (mfsm_n_13), .B1 (count15k[3]), .ZN
       (mfsm_n_19));
  OA21D0BWP7T mfsm_g2356(.A1 (mfsm_n_6), .A2 (mfsm_state[0]), .B
       (mfsm_state[1]), .Z (mfsm_n_17));
  NR2XD0BWP7T mfsm_g2357(.A1 (mfsm_n_9), .A2 (mfsm_n_2), .ZN
       (mfsm_n_16));
  OR2D1BWP7T mfsm_g2358(.A1 (mfsm_n_9), .A2 (mfsm_state[0]), .Z
       (mfsm_n_15));
  IND3D1BWP7T mfsm_g2359(.A1 (mfsm_n_0), .B1 (mfsm_n_4), .B2
       (mfsm_n_3), .ZN (mfsm_n_14));
  AOI21D0BWP7T mfsm_g2360(.A1 (count15k[0]), .A2 (count15k[1]), .B
       (count15k[2]), .ZN (mfsm_n_13));
  INVD0BWP7T mfsm_g2361(.I (mfsm_n_11), .ZN (mfsm_n_10));
  NR2XD0BWP7T mfsm_g2362(.A1 (mfsm_n_0), .A2 (Handshake_in), .ZN
       (mfsm_n_12));
  NR2XD0BWP7T mfsm_g2363(.A1 (mfsm_state[1]), .A2 (reset), .ZN
       (mfsm_n_11));
  IND2D1BWP7T mfsm_g2364(.A1 (reset), .B1 (mfsm_state[1]), .ZN
       (mfsm_n_9));
  ND2D1BWP7T mfsm_g2365(.A1 (mfsm_state[3]), .A2 (mfsm_n_3), .ZN
       (mfsm_n_5));
  ND2D1BWP7T mfsm_g2366(.A1 (mfsm_state[0]), .A2 (mfsm_state[2]), .ZN
       (mfsm_n_8));
  ND2D1BWP7T mfsm_g2367(.A1 (mfsm_state[3]), .A2 (mfsm_state[2]), .ZN
       (mfsm_n_7));
  INR2D1BWP7T mfsm_g2368(.A1 (Handshake_in), .B1 (mfsm_n_0), .ZN
       (mfsm_n_6));
  DFD1BWP7T \mfsm_state_reg[3] (.CP (clk), .D (mfsm_n_43), .Q
       (mfsm_state[3]), .QN (mfsm_n_4));
  DFD1BWP7T \mfsm_state_reg[2] (.CP (clk), .D (mfsm_n_42), .Q
       (mfsm_state[2]), .QN (mfsm_n_3));
  DFD1BWP7T \mfsm_state_reg[4] (.CP (clk), .D (mfsm_n_41), .Q
       (mfsm_state[4]), .QN (mfsm_n_0));
  DFD1BWP7T \mfsm_state_reg[0] (.CP (clk), .D (mfsm_n_44), .Q
       (mfsm_state[0]), .QN (mfsm_n_2));
  EDFQD0BWP7T flipflop1_Q_reg(.CP (clk), .D (mouse_x[2]), .E
       (xflipfloprst), .Q (flipflop1_Q_9));
  BUFFD4BWP7T flipflop1_drc_bufs(.I (flipflop1_Q_9), .Z (mouseX[2]));
  EDFQD0BWP7T flipflop10_Q_reg(.CP (clk), .D (btns[1]), .E
       (btnflipfloprst), .Q (flipflop10_Q_9));
  BUFFD4BWP7T flipflop10_drc_bufs(.I (flipflop10_Q_9), .Z (buttons[1]));
  EDFKCNQD1BWP7T \tb_count_reg[3] (.CP (clk), .CN (tb_n_1), .D
       (tb_n_6), .E (output_edgedet), .Q (count15k[3]));
  EDFKCNQD1BWP7T \tb_count_reg[2] (.CP (clk), .CN (tb_n_1), .D
       (tb_n_5), .E (output_edgedet), .Q (count15k[2]));
  MOAI22D0BWP7T tb_g65(.A1 (tb_n_4), .A2 (count15k[3]), .B1 (tb_n_4),
       .B2 (count15k[3]), .ZN (tb_n_6));
  EDFKCNQD1BWP7T \tb_count_reg[1] (.CP (clk), .CN (tb_n_1), .D
       (tb_n_3), .E (output_edgedet), .Q (count15k[1]));
  MOAI22D0BWP7T tb_g67(.A1 (tb_n_2), .A2 (count15k[2]), .B1 (tb_n_2),
       .B2 (count15k[2]), .ZN (tb_n_5));
  DFKCNQD1BWP7T \tb_count_reg[0] (.CP (clk), .CN (tb_n_0), .D (tb_n_1),
       .Q (count15k[0]));
  IND2D1BWP7T tb_g69(.A1 (tb_n_2), .B1 (count15k[2]), .ZN (tb_n_4));
  CKXOR2D0BWP7T tb_g70(.A1 (count15k[1]), .A2 (count15k[0]), .Z
       (tb_n_3));
  ND2D1BWP7T tb_g72(.A1 (count15k[1]), .A2 (count15k[0]), .ZN (tb_n_2));
  INVD1BWP7T tb_g73(.I (cntReset15K), .ZN (tb_n_1));
  CKXOR2D1BWP7T tb_g2(.A1 (count15k[0]), .A2 (output_edgedet), .Z
       (tb_n_0));
  EDFQD0BWP7T flipflop11_Q_reg(.CP (clk), .D (btns[0]), .E
       (btnflipfloprst), .Q (flipflop11_Q_9));
  BUFFD4BWP7T flipflop11_drc_bufs(.I (flipflop11_Q_9), .Z (buttons[0]));
  EDFQD0BWP7T flipflop2_Q_reg(.CP (clk), .D (mouse_x[1]), .E
       (xflipfloprst), .Q (flipflop2_Q_9));
  BUFFD4BWP7T flipflop2_drc_bufs(.I (flipflop2_Q_9), .Z (mouseX[1]));
  EDFKCNQD1BWP7T \sr11_data_out_reg[1] (.CP (clk), .CN (sr11_n_0), .D
       (\sr11_data_out[0]_79 ), .E (output_edgedet), .Q
       (\sr11_data_out[1]_80 ));
  EDFKCNQD1BWP7T \sr11_data_out_reg[0] (.CP (clk), .CN (sr11_n_0), .D
       (Data_in), .E (output_edgedet), .Q (\sr11_data_out[0]_79 ));
  EDFKCNQD1BWP7T \sr11_data_out_reg[3] (.CP (clk), .CN (sr11_n_0), .D
       (data_sr_11bit[2]), .E (output_edgedet), .Q (data_sr_11bit[3]));
  EDFKCNQD1BWP7T \sr11_data_out_reg[4] (.CP (clk), .CN (sr11_n_0), .D
       (data_sr_11bit[3]), .E (output_edgedet), .Q (data_sr_11bit[4]));
  EDFKCNQD1BWP7T \sr11_data_out_reg[5] (.CP (clk), .CN (sr11_n_0), .D
       (data_sr_11bit[4]), .E (output_edgedet), .Q
       (\sr11_data_out[5]_84 ));
  EDFKCNQD1BWP7T \sr11_data_out_reg[7] (.CP (clk), .CN (sr11_n_0), .D
       (data_sr_11bit[6]), .E (output_edgedet), .Q (data_sr_11bit[7]));
  EDFKCNQD1BWP7T \sr11_data_out_reg[6] (.CP (clk), .CN (sr11_n_0), .D
       (\sr11_data_out[5]_84 ), .E (output_edgedet), .Q
       (data_sr_11bit[6]));
  EDFKCNQD1BWP7T \sr11_data_out_reg[2] (.CP (clk), .CN (sr11_n_0), .D
       (\sr11_data_out[1]_80 ), .E (output_edgedet), .Q
       (data_sr_11bit[2]));
  INVD1BWP7T sr11_g35(.I (reset), .ZN (sr11_n_0));
  EDFQD0BWP7T flipflop3_Q_reg(.CP (clk), .D (mouse_x[0]), .E
       (xflipfloprst), .Q (flipflop3_Q_9));
  BUFFD4BWP7T flipflop3_drc_bufs(.I (flipflop3_Q_9), .Z (mouseX[0]));
  EDFQD0BWP7T flipflop4_Q_reg(.CP (clk), .D (mouse_y[0]), .E
       (yflipfloprst), .Q (flipflop4_Q_9));
  BUFFD4BWP7T flipflop4_drc_bufs(.I (flipflop4_Q_9), .Z (mouseY[0]));
  LHQD1BWP7T \sfsm_new_state_reg[0] (.E (bit9_reg_rst), .D (sfsm_n_9),
       .Q (sfsm_new_state[0]));
  LHQD1BWP7T \sfsm_new_state_reg[1] (.E (bit9_reg_rst), .D (sfsm_n_8),
       .Q (sfsm_new_state[1]));
  AO221D0BWP7T sfsm_g434(.A1 (sfsm_n_7), .A2 (sfsm_state[0]), .B1
       (actBit), .B2 (sfsm_n_0), .C (muxFSM), .Z (sfsm_n_9));
  OAI21D0BWP7T sfsm_g435(.A1 (sfsm_n_7), .A2 (sfsm_n_0), .B (sfsm_n_1),
       .ZN (sfsm_n_8));
  OAI221D0BWP7T sfsm_g436(.A1 (sfsm_n_3), .A2 (count25M[7]), .B1
       (count25M[9]), .B2 (count25M[10]), .C (sfsm_n_6), .ZN
       (sfsm_n_7));
  OA31D0BWP7T sfsm_g437(.A1 (count25M[6]), .A2 (sfsm_n_3), .A3
       (sfsm_n_5), .B (count25M[11]), .Z (sfsm_n_6));
  LHQD1BWP7T \sfsm_dataToReg_reg[0] (.E (bit9_reg_rst), .D (sfsm_n_4),
       .Q (data_sr_9bit[4]));
  AN4D1BWP7T sfsm_g439(.A1 (sfsm_n_2), .A2 (count25M[1]), .A3
       (count25M[2]), .A4 (count25M[3]), .Z (sfsm_n_5));
  OA21D0BWP7T sfsm_g440(.A1 (ClkSwitch), .A2 (muxFSM), .B (actBit), .Z
       (sfsm_n_4));
  AN2D1BWP7T sfsm_g441(.A1 (count25M[4]), .A2 (count25M[5]), .Z
       (sfsm_n_2));
  NR2XD0BWP7T sfsm_g442(.A1 (sfsm_state[1]), .A2 (sfsm_state[0]), .ZN
       (cntReset25M));
  OR2D0BWP7T sfsm_g443(.A1 (count25M[10]), .A2 (count25M[8]), .Z
       (sfsm_n_3));
  AN2D4BWP7T sfsm_g444(.A1 (sfsm_n_1), .A2 (sfsm_state[0]), .Z
       (ClkSwitch));
  NR2XD0BWP7T sfsm_g445(.A1 (sfsm_n_1), .A2 (sfsm_state[0]), .ZN
       (muxFSM));
  CKND2D0BWP7T sfsm_g446(.A1 (sfsm_state[1]), .A2 (sfsm_state[0]), .ZN
       (bit9_reg_rst));
  DFKCND1BWP7T \sfsm_state_reg[1] (.CP (clk), .CN (sfsm_new_state[1]),
       .D (actBit), .Q (sfsm_state[1]), .QN (sfsm_n_1));
  DFKCND1BWP7T \sfsm_state_reg[0] (.CP (clk), .CN (sfsm_new_state[0]),
       .D (actBit), .Q (sfsm_state[0]), .QN (sfsm_n_0));
  EDFQD0BWP7T flipflop5_Q_reg(.CP (clk), .D (mouse_y[1]), .E
       (yflipfloprst), .Q (flipflop5_Q_9));
  BUFFD4BWP7T flipflop5_drc_bufs(.I (flipflop5_Q_9), .Z (mouseY[1]));
  EDFQD0BWP7T flipflop6_Q_reg(.CP (clk), .D (mouse_y[2]), .E
       (yflipfloprst), .Q (flipflop6_Q_9));
  BUFFD4BWP7T flipflop6_drc_bufs(.I (flipflop6_Q_9), .Z (mouseY[2]));
  EDFQD0BWP7T flipflop7_Q_reg(.CP (clk), .D (btns[4]), .E
       (btnflipfloprst), .Q (flipflop7_Q_9));
  BUFFD4BWP7T flipflop7_drc_bufs(.I (flipflop7_Q_9), .Z (buttons[4]));
  EDFQD0BWP7T flipflop8_Q_reg(.CP (clk), .D (btns[3]), .E
       (btnflipfloprst), .Q (flipflop8_Q_9));
  BUFFD4BWP7T flipflop8_drc_bufs(.I (flipflop8_Q_9), .Z (buttons[3]));
  DFQD1BWP7T \sr_new_new_data_reg[1] (.CP (clk), .D (sr_n_9), .Q
       (sr_new_new_data[1]));
  DFQD1BWP7T \sr_new_new_data_reg[4] (.CP (clk), .D (sr_n_10), .Q
       (sr_new_new_data[4]));
  DFQD1BWP7T \sr_new_new_data_reg[2] (.CP (clk), .D (sr_n_11), .Q
       (sr_new_new_data[2]));
  DFQD1BWP7T \sr_new_new_data_reg[7] (.CP (clk), .D (sr_n_5), .Q
       (sr_new_new_data[7]));
  DFQD1BWP7T \sr_new_new_data_reg[6] (.CP (clk), .D (sr_n_6), .Q
       (sr_new_new_data[6]));
  DFQD1BWP7T \sr_new_new_data_reg[5] (.CP (clk), .D (sr_n_7), .Q
       (sr_new_new_data[5]));
  DFQD1BWP7T \sr_new_new_data_reg[8] (.CP (clk), .D (sr_n_4), .Q
       (muxReg));
  AO221D0BWP7T sr_g379(.A1 (sr_n_0), .A2 (sr_new_new_data[2]), .B1
       (sr_n_2), .B2 (sr_new_new_data[1]), .C (sr_n_1), .Z (sr_n_11));
  AO221D0BWP7T sr_g380(.A1 (sr_n_0), .A2 (sr_new_new_data[4]), .B1
       (sr_n_2), .B2 (sr_new_new_data[3]), .C (sr_n_1), .Z (sr_n_10));
  AO221D0BWP7T sr_g381(.A1 (sr_n_0), .A2 (sr_new_new_data[1]), .B1
       (sr_n_2), .B2 (sr_new_new_data[0]), .C (sr_n_1), .Z (sr_n_9));
  DFQD1BWP7T \sr_new_new_data_reg[3] (.CP (clk), .D (sr_n_3), .Q
       (sr_new_new_data[3]));
  DFQD1BWP7T \sr_new_new_data_reg[0] (.CP (clk), .D (sr_n_8), .Q
       (sr_new_new_data[0]));
  AO21D0BWP7T sr_g384(.A1 (sr_n_0), .A2 (sr_new_new_data[0]), .B
       (sr_n_1), .Z (sr_n_8));
  AO22D0BWP7T sr_g385(.A1 (sr_n_0), .A2 (sr_new_new_data[5]), .B1
       (sr_new_new_data[4]), .B2 (sr_n_2), .Z (sr_n_7));
  AO22D0BWP7T sr_g386(.A1 (sr_n_0), .A2 (sr_new_new_data[6]), .B1
       (sr_new_new_data[5]), .B2 (sr_n_2), .Z (sr_n_6));
  AO22D0BWP7T sr_g387(.A1 (sr_n_0), .A2 (sr_new_new_data[7]), .B1
       (sr_new_new_data[6]), .B2 (sr_n_2), .Z (sr_n_5));
  AO22D0BWP7T sr_g388(.A1 (sr_n_0), .A2 (muxReg), .B1
       (sr_new_new_data[7]), .B2 (sr_n_2), .Z (sr_n_4));
  AO22D0BWP7T sr_g389(.A1 (sr_n_0), .A2 (sr_new_new_data[3]), .B1
       (sr_new_new_data[2]), .B2 (sr_n_2), .Z (sr_n_3));
  INR2D1BWP7T sr_g390(.A1 (output_edgedet), .B1 (bit9_reg_rst), .ZN
       (sr_n_2));
  AN2D1BWP7T sr_g391(.A1 (bit9_reg_rst), .A2 (data_sr_9bit[4]), .Z
       (sr_n_1));
  NR2D1BWP7T sr_g392(.A1 (bit9_reg_rst), .A2 (output_edgedet), .ZN
       (sr_n_0));
  ND2D4BWP7T mx_g23(.A1 (mx_n_0), .A2 (mx_n_1), .ZN (DataSwitch));
  ND2D1BWP7T mx_g24(.A1 (n_0), .A2 (muxReg), .ZN (mx_n_1));
  IND2D1BWP7T mx_g25(.A1 (n_0), .B1 (muxFSM), .ZN (mx_n_0));
  INVD1BWP7T cnt_g65(.I (cntReset25M), .ZN (cnt_n_21));
  DFKCNQD1BWP7T \cnt_count_reg[11] (.CP (clk), .CN (cnt_n_21), .D
       (cnt_n_20), .Q (count25M[11]));
  DFKCNQD1BWP7T \cnt_count_reg[10] (.CP (clk), .CN (cnt_n_21), .D
       (cnt_n_19), .Q (count25M[10]));
  MOAI22D0BWP7T cnt_g210(.A1 (cnt_n_18), .A2 (count25M[11]), .B1
       (cnt_n_18), .B2 (count25M[11]), .ZN (cnt_n_20));
  DFKCNQD1BWP7T \cnt_count_reg[9] (.CP (clk), .CN (cnt_n_21), .D
       (cnt_n_17), .Q (count25M[9]));
  MOAI22D0BWP7T cnt_g212(.A1 (cnt_n_16), .A2 (count25M[10]), .B1
       (cnt_n_16), .B2 (count25M[10]), .ZN (cnt_n_19));
  IND2D1BWP7T cnt_g213(.A1 (cnt_n_16), .B1 (count25M[10]), .ZN
       (cnt_n_18));
  DFKCNQD1BWP7T \cnt_count_reg[8] (.CP (clk), .CN (cnt_n_21), .D
       (cnt_n_15), .Q (count25M[8]));
  MOAI22D0BWP7T cnt_g215(.A1 (cnt_n_14), .A2 (count25M[9]), .B1
       (cnt_n_14), .B2 (count25M[9]), .ZN (cnt_n_17));
  IND2D1BWP7T cnt_g216(.A1 (cnt_n_14), .B1 (count25M[9]), .ZN
       (cnt_n_16));
  DFKCNQD1BWP7T \cnt_count_reg[7] (.CP (clk), .CN (cnt_n_21), .D
       (cnt_n_13), .Q (count25M[7]));
  MOAI22D0BWP7T cnt_g218(.A1 (cnt_n_12), .A2 (count25M[8]), .B1
       (cnt_n_12), .B2 (count25M[8]), .ZN (cnt_n_15));
  IND2D1BWP7T cnt_g219(.A1 (cnt_n_12), .B1 (count25M[8]), .ZN
       (cnt_n_14));
  DFKCNQD1BWP7T \cnt_count_reg[6] (.CP (clk), .CN (cnt_n_21), .D
       (cnt_n_11), .Q (count25M[6]));
  MOAI22D0BWP7T cnt_g221(.A1 (cnt_n_10), .A2 (count25M[7]), .B1
       (cnt_n_10), .B2 (count25M[7]), .ZN (cnt_n_13));
  IND2D1BWP7T cnt_g222(.A1 (cnt_n_10), .B1 (count25M[7]), .ZN
       (cnt_n_12));
  DFKCNQD1BWP7T \cnt_count_reg[5] (.CP (clk), .CN (cnt_n_21), .D
       (cnt_n_9), .Q (count25M[5]));
  MOAI22D0BWP7T cnt_g224(.A1 (cnt_n_8), .A2 (count25M[6]), .B1
       (cnt_n_8), .B2 (count25M[6]), .ZN (cnt_n_11));
  IND2D1BWP7T cnt_g225(.A1 (cnt_n_8), .B1 (count25M[6]), .ZN
       (cnt_n_10));
  DFKCNQD1BWP7T \cnt_count_reg[4] (.CP (clk), .CN (cnt_n_21), .D
       (cnt_n_7), .Q (count25M[4]));
  MOAI22D0BWP7T cnt_g227(.A1 (cnt_n_6), .A2 (count25M[5]), .B1
       (cnt_n_6), .B2 (count25M[5]), .ZN (cnt_n_9));
  IND2D1BWP7T cnt_g228(.A1 (cnt_n_6), .B1 (count25M[5]), .ZN (cnt_n_8));
  DFKCNQD1BWP7T \cnt_count_reg[3] (.CP (clk), .CN (cnt_n_21), .D
       (cnt_n_5), .Q (count25M[3]));
  MOAI22D0BWP7T cnt_g230(.A1 (cnt_n_4), .A2 (count25M[4]), .B1
       (cnt_n_4), .B2 (count25M[4]), .ZN (cnt_n_7));
  IND2D1BWP7T cnt_g231(.A1 (cnt_n_4), .B1 (count25M[4]), .ZN (cnt_n_6));
  DFKCNQD1BWP7T \cnt_count_reg[2] (.CP (clk), .CN (cnt_n_21), .D
       (cnt_n_3), .Q (count25M[2]));
  MOAI22D0BWP7T cnt_g233(.A1 (cnt_n_2), .A2 (count25M[3]), .B1
       (cnt_n_2), .B2 (count25M[3]), .ZN (cnt_n_5));
  IND2D1BWP7T cnt_g234(.A1 (cnt_n_2), .B1 (count25M[3]), .ZN (cnt_n_4));
  DFKCNQD1BWP7T \cnt_count_reg[1] (.CP (clk), .CN (cnt_n_1), .D
       (cnt_n_21), .Q (count25M[1]));
  MOAI22D0BWP7T cnt_g236(.A1 (cnt_n_0), .A2 (count25M[2]), .B1
       (cnt_n_0), .B2 (count25M[2]), .ZN (cnt_n_3));
  IND2D1BWP7T cnt_g237(.A1 (cnt_n_0), .B1 (count25M[2]), .ZN (cnt_n_2));
  DFKCND1BWP7T \cnt_count_reg[0] (.CP (clk), .CN (cnt_count[0]), .D
       (cnt_n_21), .Q (UNCONNECTED), .QN (cnt_count[0]));
  MOAI22D0BWP7T cnt_g239(.A1 (cnt_count[0]), .A2 (count25M[1]), .B1
       (cnt_count[0]), .B2 (count25M[1]), .ZN (cnt_n_1));
  IND2D1BWP7T cnt_g240(.A1 (cnt_count[0]), .B1 (count25M[1]), .ZN
       (cnt_n_0));
  EDFQD0BWP7T flipflop9_Q_reg(.CP (clk), .D (btns[2]), .E
       (btnflipfloprst), .Q (flipflop9_Q_9));
  BUFFD4BWP7T flipflop9_drc_bufs(.I (flipflop9_Q_9), .Z (buttons[2]));
endmodule

