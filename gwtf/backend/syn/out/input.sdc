# ####################################################################

#  Created by Genus(TM) Synthesis Solution 17.11-s014_1 on Tue Dec 06 11:34:16 CET 2022

# ####################################################################

set sdc_version 2.0

set_units -capacitance 1000.0fF
set_units -time 1000.0ps

# Set the current design
current_design input_0

set_load -pin_load 1.0 [get_ports {mouseX[2]}]
set_load -pin_load 1.0 [get_ports {mouseX[1]}]
set_load -pin_load 1.0 [get_ports {mouseX[0]}]
set_load -pin_load 1.0 [get_ports signX]
set_load -pin_load 1.0 [get_ports {mouseY[2]}]
set_load -pin_load 1.0 [get_ports {mouseY[1]}]
set_load -pin_load 1.0 [get_ports {mouseY[0]}]
set_load -pin_load 1.0 [get_ports signY]
set_load -pin_load 1.0 [get_ports LMB]
set_load -pin_load 1.0 [get_ports RMB]
set_load -pin_load 1.0 [get_ports MMB]
set_load -pin_load 1.0 [get_ports Handshake_out]
set_load -pin_load 1.0 [get_ports DataSwitch]
set_load -pin_load 1.0 [get_ports ClkSwitch]
set_clock_gating_check -setup 0.0 
set_driving_cell -lib_cell INVD0BWP7T -library tcb018gbwp7twc -pin "ZN" [get_ports Handshake_in]
set_driving_cell -lib_cell INVD0BWP7T -library tcb018gbwp7twc -pin "ZN" [get_ports Data_in]
set_driving_cell -lib_cell INVD0BWP7T -library tcb018gbwp7twc -pin "ZN" [get_ports Clk15k]
set_driving_cell -lib_cell INVD0BWP7T -library tcb018gbwp7twc -pin "ZN" [get_ports clk]
set_driving_cell -lib_cell INVD0BWP7T -library tcb018gbwp7twc -pin "ZN" [get_ports reset]
set_wire_load_mode "segmented"
set_wire_load_selection_group "WireAreaForZero" -library "tcb018gbwp7twc"
set_dont_use [get_lib_cells tcb018gbwp7twc/BHDBWP7T]
set_dont_use [get_lib_cells tcb018gbwp7twc/GAN2D1BWP7T]
set_dont_use [get_lib_cells tcb018gbwp7twc/GAN2D2BWP7T]
set_dont_use [get_lib_cells tcb018gbwp7twc/GAOI21D1BWP7T]
set_dont_use [get_lib_cells tcb018gbwp7twc/GAOI21D2BWP7T]
set_dont_use [get_lib_cells tcb018gbwp7twc/GAOI22D1BWP7T]
set_dont_use [get_lib_cells tcb018gbwp7twc/GBUFFD1BWP7T]
set_dont_use [get_lib_cells tcb018gbwp7twc/GBUFFD2BWP7T]
set_dont_use [get_lib_cells tcb018gbwp7twc/GBUFFD3BWP7T]
set_dont_use [get_lib_cells tcb018gbwp7twc/GBUFFD8BWP7T]
set_dont_use [get_lib_cells tcb018gbwp7twc/GDCAP10BWP7T]
set_dont_use [get_lib_cells tcb018gbwp7twc/GDCAP2BWP7T]
set_dont_use [get_lib_cells tcb018gbwp7twc/GDCAP3BWP7T]
set_dont_use [get_lib_cells tcb018gbwp7twc/GDCAP4BWP7T]
set_dont_use [get_lib_cells tcb018gbwp7twc/GDCAPBWP7T]
set_dont_use [get_lib_cells tcb018gbwp7twc/GDFCNQD1BWP7T]
set_dont_use [get_lib_cells tcb018gbwp7twc/GDFQD1BWP7T]
set_dont_use [get_lib_cells tcb018gbwp7twc/GFILL10BWP7T]
set_dont_use [get_lib_cells tcb018gbwp7twc/GFILL2BWP7T]
set_dont_use [get_lib_cells tcb018gbwp7twc/GFILL3BWP7T]
set_dont_use [get_lib_cells tcb018gbwp7twc/GFILL4BWP7T]
set_dont_use [get_lib_cells tcb018gbwp7twc/GFILLBWP7T]
set_dont_use [get_lib_cells tcb018gbwp7twc/GINVD1BWP7T]
set_dont_use [get_lib_cells tcb018gbwp7twc/GINVD2BWP7T]
set_dont_use [get_lib_cells tcb018gbwp7twc/GINVD3BWP7T]
set_dont_use [get_lib_cells tcb018gbwp7twc/GINVD8BWP7T]
set_dont_use [get_lib_cells tcb018gbwp7twc/GMUX2D1BWP7T]
set_dont_use [get_lib_cells tcb018gbwp7twc/GMUX2D2BWP7T]
set_dont_use [get_lib_cells tcb018gbwp7twc/GMUX2ND1BWP7T]
set_dont_use [get_lib_cells tcb018gbwp7twc/GMUX2ND2BWP7T]
set_dont_use [get_lib_cells tcb018gbwp7twc/GND2D1BWP7T]
set_dont_use [get_lib_cells tcb018gbwp7twc/GND2D2BWP7T]
set_dont_use [get_lib_cells tcb018gbwp7twc/GND2D3BWP7T]
set_dont_use [get_lib_cells tcb018gbwp7twc/GND3D1BWP7T]
set_dont_use [get_lib_cells tcb018gbwp7twc/GND3D2BWP7T]
set_dont_use [get_lib_cells tcb018gbwp7twc/GNR2D1BWP7T]
set_dont_use [get_lib_cells tcb018gbwp7twc/GNR2D2BWP7T]
set_dont_use [get_lib_cells tcb018gbwp7twc/GNR3D1BWP7T]
set_dont_use [get_lib_cells tcb018gbwp7twc/GNR3D2BWP7T]
set_dont_use [get_lib_cells tcb018gbwp7twc/GOAI21D1BWP7T]
set_dont_use [get_lib_cells tcb018gbwp7twc/GOAI21D2BWP7T]
set_dont_use [get_lib_cells tcb018gbwp7twc/GOR2D1BWP7T]
set_dont_use [get_lib_cells tcb018gbwp7twc/GOR2D2BWP7T]
set_dont_use [get_lib_cells tcb018gbwp7twc/GSDFCNQD1BWP7T]
set_dont_use [get_lib_cells tcb018gbwp7twc/GTIEHBWP7T]
set_dont_use [get_lib_cells tcb018gbwp7twc/GTIELBWP7T]
set_dont_use [get_lib_cells tcb018gbwp7twc/GXNR2D1BWP7T]
set_dont_use [get_lib_cells tcb018gbwp7twc/GXNR2D2BWP7T]
set_dont_use [get_lib_cells tcb018gbwp7twc/GXOR2D1BWP7T]
set_dont_use [get_lib_cells tcb018gbwp7twc/GXOR2D2BWP7T]
