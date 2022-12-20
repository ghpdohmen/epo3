
// Generated by Cadence Genus(TM) Synthesis Solution 17.11-s014_1
// Generated on: Dec 20 2022 09:18:55 CET (Dec 20 2022 08:18:55 UTC)

// Verification Directory fv/mux 

module mux(mux_select, muxFSM, muxReg, dataSwitch);
  input mux_select, muxFSM, muxReg;
  output dataSwitch;
  wire mux_select, muxFSM, muxReg;
  wire dataSwitch;
  wire n_0, n_1;
  ND2D4BWP7T g21(.A1 (n_1), .A2 (n_0), .ZN (dataSwitch));
  ND2D0BWP7T g22(.A1 (mux_select), .A2 (muxReg), .ZN (n_1));
  IND2D0BWP7T g23(.A1 (mux_select), .B1 (muxFSM), .ZN (n_0));
endmodule

