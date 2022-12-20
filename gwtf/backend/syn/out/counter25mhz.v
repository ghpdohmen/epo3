
// Generated by Cadence Genus(TM) Synthesis Solution 17.11-s014_1
// Generated on: Dec 20 2022 09:14:36 CET (Dec 20 2022 08:14:36 UTC)

// Verification Directory fv/counter25mhz 

module counter25mhz(clk, reset, count_out);
  input clk, reset;
  output [11:0] count_out;
  wire clk, reset;
  wire [11:0] count_out;
  wire [11:0] count;
  wire n_4, n_6, n_7, n_9, n_10, n_12, n_13, n_15;
  wire n_16, n_18, n_19, n_20, n_21, n_22, n_23, n_25;
  wire n_27, n_29, n_31, n_34, n_35, n_36, n_37, n_40;
  wire n_46, n_52, n_58;
  IND2D1BWP7T g213(.A1 (n_27), .B1 (count_out[10]), .ZN (n_29));
  IND2D1BWP7T g216(.A1 (n_25), .B1 (count_out[9]), .ZN (n_27));
  DFKCNQD1BWP7T \count_reg[7] (.CP (clk), .CN (n_31), .D (n_22), .Q
       (count[7]));
  DFKCNQD1BWP7T \count_reg[6] (.CP (clk), .CN (n_31), .D (n_20), .Q
       (count[6]));
  IND2D1BWP7T g219(.A1 (n_23), .B1 (count_out[8]), .ZN (n_25));
  MOAI22D0BWP7T g221(.A1 (n_21), .A2 (count[7]), .B1 (n_21), .B2
       (count[7]), .ZN (n_22));
  DFKCNQD1BWP7T \count_reg[5] (.CP (clk), .CN (n_31), .D (n_18), .Q
       (count[5]));
  IND2D1BWP7T g222(.A1 (n_21), .B1 (count[7]), .ZN (n_23));
  MOAI22D0BWP7T g224(.A1 (n_19), .A2 (count[6]), .B1 (n_19), .B2
       (count[6]), .ZN (n_20));
  IND2D1BWP7T g225(.A1 (n_19), .B1 (count[6]), .ZN (n_21));
  DFKCNQD1BWP7T \count_reg[4] (.CP (clk), .CN (n_31), .D (n_15), .Q
       (count[4]));
  MOAI22D0BWP7T g227(.A1 (n_16), .A2 (count_out[5]), .B1 (n_16), .B2
       (count_out[5]), .ZN (n_18));
  DFKCNQD1BWP7T \count_reg[3] (.CP (clk), .CN (n_31), .D (n_12), .Q
       (count[3]));
  IND2D1BWP7T g228(.A1 (n_16), .B1 (count[5]), .ZN (n_19));
  MOAI22D0BWP7T g230(.A1 (n_13), .A2 (count_out[4]), .B1 (n_13), .B2
       (count_out[4]), .ZN (n_15));
  DFKCNQD1BWP7T \count_reg[2] (.CP (clk), .CN (n_31), .D (n_6), .Q
       (count[2]));
  DFKCNQD1BWP7T \count_reg[1] (.CP (clk), .CN (n_31), .D (n_9), .Q
       (count[1]));
  IND2D1BWP7T g231(.A1 (n_13), .B1 (count[4]), .ZN (n_16));
  MOAI22D0BWP7T g233(.A1 (n_10), .A2 (count_out[3]), .B1 (n_10), .B2
       (count_out[3]), .ZN (n_12));
  IND2D1BWP7T g234(.A1 (n_10), .B1 (count[3]), .ZN (n_13));
  MOAI22D0BWP7T g239(.A1 (n_7), .A2 (count_out[1]), .B1 (n_7), .B2
       (count_out[1]), .ZN (n_9));
  MOAI22D0BWP7T g236(.A1 (n_4), .A2 (count_out[2]), .B1 (n_4), .B2
       (count_out[2]), .ZN (n_6));
  IND2D1BWP7T g237(.A1 (n_4), .B1 (count[2]), .ZN (n_10));
  ND2D1BWP7T g240(.A1 (count[0]), .A2 (count[1]), .ZN (n_4));
  BUFFD4BWP7T g250(.I (count[0]), .Z (count_out[0]));
  BUFFD4BWP7T g241(.I (count[6]), .Z (count_out[6]));
  BUFFD4BWP7T g242(.I (count[2]), .Z (count_out[2]));
  BUFFD4BWP7T g246(.I (count[5]), .Z (count_out[5]));
  BUFFD4BWP7T g243(.I (count[7]), .Z (count_out[7]));
  BUFFD4BWP7T g244(.I (count[3]), .Z (count_out[3]));
  BUFFD4BWP7T g248(.I (count[4]), .Z (count_out[4]));
  BUFFD4BWP7T g247(.I (count[1]), .Z (count_out[1]));
  INVD1BWP7T g245(.I (reset), .ZN (n_31));
  XNR2D1BWP7T g2(.A1 (n_29), .A2 (count[11]), .ZN (n_34));
  XNR2D1BWP7T g264(.A1 (n_27), .A2 (count[10]), .ZN (n_35));
  XNR2D1BWP7T g265(.A1 (n_25), .A2 (count[9]), .ZN (n_36));
  XNR2D1BWP7T g266(.A1 (n_23), .A2 (count[8]), .ZN (n_37));
  INVD4BWP7T drc_bufs267(.I (n_40), .ZN (count_out[8]));
  INVD4BWP7T drc_bufs273(.I (n_46), .ZN (count_out[9]));
  INVD4BWP7T drc_bufs279(.I (n_52), .ZN (count_out[10]));
  INVD4BWP7T drc_bufs285(.I (n_58), .ZN (count_out[11]));
  DFKCND1BWP7T \count_reg[0] (.CP (clk), .CN (n_31), .D (n_7), .Q
       (count[0]), .QN (n_7));
  DFKCND0BWP7T \count_reg[8] (.CP (clk), .CN (n_31), .D (n_37), .Q
       (count[8]), .QN (n_40));
  DFKCND0BWP7T \count_reg[9] (.CP (clk), .CN (n_31), .D (n_36), .Q
       (count[9]), .QN (n_46));
  DFKCND0BWP7T \count_reg[10] (.CP (clk), .CN (n_31), .D (n_35), .Q
       (count[10]), .QN (n_52));
  DFKCND0BWP7T \count_reg[11] (.CP (clk), .CN (n_31), .D (n_34), .Q
       (count[11]), .QN (n_58));
endmodule

