###############################################################
#  Generated by:      Cadence Innovus 17.11-s080_1
#  OS:                Linux x86_64(Host ID ce-epo3-cad.ewi.tudelft.nl)
#  Generated on:      Thu Jan 12 12:09:07 2023
#  Design:            mouse
#  Command:           saveDesign ../out/mouse.enc
###############################################################
current_design mouse
set_clock_gating_check -rise -setup 0 
set_clock_gating_check -fall -setup 0 
create_clock [get_ports {clk}]  -name clk -period 30.000000 -waveform {0.000000 15.000000}
set_propagated_clock  [get_ports {clk}]
set_load -pin_load -max  1  [get_ports {mouseX[2]}]
set_load -pin_load -min  1  [get_ports {mouseX[2]}]
set_load -pin_load -max  1  [get_ports {mouseX[1]}]
set_load -pin_load -min  1  [get_ports {mouseX[1]}]
set_load -pin_load -max  1  [get_ports {mouseX[0]}]
set_load -pin_load -min  1  [get_ports {mouseX[0]}]
set_load -pin_load -max  1  [get_ports {buttons[4]}]
set_load -pin_load -min  1  [get_ports {buttons[4]}]
set_load -pin_load -max  1  [get_ports {buttons[3]}]
set_load -pin_load -min  1  [get_ports {buttons[3]}]
set_load -pin_load -max  1  [get_ports {buttons[2]}]
set_load -pin_load -min  1  [get_ports {buttons[2]}]
set_load -pin_load -max  1  [get_ports {buttons[1]}]
set_load -pin_load -min  1  [get_ports {buttons[1]}]
set_load -pin_load -max  1  [get_ports {buttons[0]}]
set_load -pin_load -min  1  [get_ports {buttons[0]}]
set_load -pin_load -max  1  [get_ports {mouseY[2]}]
set_load -pin_load -min  1  [get_ports {mouseY[2]}]
set_load -pin_load -max  1  [get_ports {mouseY[1]}]
set_load -pin_load -min  1  [get_ports {mouseY[1]}]
set_load -pin_load -max  1  [get_ports {mouseY[0]}]
set_load -pin_load -min  1  [get_ports {mouseY[0]}]
set_load -pin_load -max  1  [get_ports {Handshake_out}]
set_load -pin_load -min  1  [get_ports {Handshake_out}]
set_load -pin_load -max  1  [get_ports {DataSwitch}]
set_load -pin_load -min  1  [get_ports {DataSwitch}]
set_load -pin_load -max  1  [get_ports {ClkSwitch}]
set_load -pin_load -min  1  [get_ports {ClkSwitch}]
set_driving_cell -lib_cell INVD0BWP7T -library tcb018gbwp7twc -rise -min -pin ZN [get_ports {Handshake_in}]
set_driving_cell -lib_cell INVD0BWP7T -library tcb018gbwp7twc -fall -min -pin ZN [get_ports {Handshake_in}]
set_driving_cell -lib_cell INVD0BWP7T -library tcb018gbwp7twc -rise -max -pin ZN [get_ports {Handshake_in}]
set_driving_cell -lib_cell INVD0BWP7T -library tcb018gbwp7twc -fall -max -pin ZN [get_ports {Handshake_in}]
set_driving_cell -lib_cell INVD0BWP7T -library tcb018gbwp7twc -rise -min -pin ZN [get_ports {Data_in}]
set_driving_cell -lib_cell INVD0BWP7T -library tcb018gbwp7twc -fall -min -pin ZN [get_ports {Data_in}]
set_driving_cell -lib_cell INVD0BWP7T -library tcb018gbwp7twc -rise -max -pin ZN [get_ports {Data_in}]
set_driving_cell -lib_cell INVD0BWP7T -library tcb018gbwp7twc -fall -max -pin ZN [get_ports {Data_in}]
set_driving_cell -lib_cell INVD0BWP7T -library tcb018gbwp7twc -rise -min -pin ZN [get_ports {Clk15k}]
set_driving_cell -lib_cell INVD0BWP7T -library tcb018gbwp7twc -fall -min -pin ZN [get_ports {Clk15k}]
set_driving_cell -lib_cell INVD0BWP7T -library tcb018gbwp7twc -rise -max -pin ZN [get_ports {Clk15k}]
set_driving_cell -lib_cell INVD0BWP7T -library tcb018gbwp7twc -fall -max -pin ZN [get_ports {Clk15k}]
set_driving_cell -lib_cell INVD0BWP7T -library tcb018gbwp7twc -rise -min -pin ZN [get_ports {clk}]
set_driving_cell -lib_cell INVD0BWP7T -library tcb018gbwp7twc -fall -min -pin ZN [get_ports {clk}]
set_driving_cell -lib_cell INVD0BWP7T -library tcb018gbwp7twc -rise -max -pin ZN [get_ports {clk}]
set_driving_cell -lib_cell INVD0BWP7T -library tcb018gbwp7twc -fall -max -pin ZN [get_ports {clk}]
set_driving_cell -lib_cell INVD0BWP7T -library tcb018gbwp7twc -rise -min -pin ZN [get_ports {reset}]
set_driving_cell -lib_cell INVD0BWP7T -library tcb018gbwp7twc -fall -min -pin ZN [get_ports {reset}]
set_driving_cell -lib_cell INVD0BWP7T -library tcb018gbwp7twc -rise -max -pin ZN [get_ports {reset}]
set_driving_cell -lib_cell INVD0BWP7T -library tcb018gbwp7twc -fall -max -pin ZN [get_ports {reset}]
set_load -pin_load -max  1  [get_ports {rst}]
set_load -pin_load -min  1  [get_ports {rst}]
set_load -pin_load -max  1  [get_ports {led0}]
set_load -pin_load -min  1  [get_ports {led0}]
set_load -pin_load -max  1  [get_ports {led1}]
set_load -pin_load -min  1  [get_ports {led1}]
set_load -pin_load -max  1  [get_ports {led2}]
set_load -pin_load -min  1  [get_ports {led2}]
set_load -pin_load -max  1  [get_ports {led3}]
set_load -pin_load -min  1  [get_ports {led3}]
set_load -pin_load -max  1  [get_ports {led5}]
set_load -pin_load -min  1  [get_ports {led5}]
set_load -pin_load -max  1  [get_ports {led6}]
set_load -pin_load -min  1  [get_ports {led6}]
set_load -pin_load -max  1  [get_ports {led7}]
set_load -pin_load -min  1  [get_ports {led7}]
set_load -pin_load -max  1  [get_ports {led8}]
set_load -pin_load -min  1  [get_ports {led8}]
set_load -pin_load -max  1  [get_ports {led9}]
set_load -pin_load -min  1  [get_ports {led9}]
set_wire_load_mode enclosed
set_input_delay -add_delay 0.2 -clock [get_clocks {clk}] [get_ports {Clk15k}]
set_input_delay -add_delay 0.2 -clock [get_clocks {clk}] [get_ports {Data_in}]
set_input_delay -add_delay 0.2 -clock [get_clocks {clk}] [get_ports {reset}]
set_input_delay -add_delay 0.2 -clock [get_clocks {clk}] [get_ports {Handshake_in}]
set_output_delay -add_delay 0.5 -clock [get_clocks {clk}] [get_ports {buttons[1]}]
set_output_delay -add_delay 0.5 -clock [get_clocks {clk}] [get_ports {mouseX[2]}]
set_output_delay -add_delay 0.5 -clock [get_clocks {clk}] [get_ports {mouseX[0]}]
set_output_delay -add_delay 0.5 -clock [get_clocks {clk}] [get_ports {led5}]
set_output_delay -add_delay 0.5 -clock [get_clocks {clk}] [get_ports {rst}]
set_output_delay -add_delay 0.5 -clock [get_clocks {clk}] [get_ports {led6}]
set_output_delay -add_delay 0.5 -clock [get_clocks {clk}] [get_ports {mouseY[2]}]
set_output_delay -add_delay 0.5 -clock [get_clocks {clk}] [get_ports {buttons[4]}]
set_output_delay -add_delay 0.5 -clock [get_clocks {clk}] [get_ports {led0}]
set_output_delay -add_delay 0.5 -clock [get_clocks {clk}] [get_ports {mouseY[0]}]
set_output_delay -add_delay 0.5 -clock [get_clocks {clk}] [get_ports {buttons[2]}]
set_output_delay -add_delay 0.5 -clock [get_clocks {clk}] [get_ports {Handshake_out}]
set_output_delay -add_delay 0.5 -clock [get_clocks {clk}] [get_ports {buttons[0]}]
set_output_delay -add_delay 0.5 -clock [get_clocks {clk}] [get_ports {led7}]
set_output_delay -add_delay 0.5 -clock [get_clocks {clk}] [get_ports {led1}]
set_output_delay -add_delay 0.5 -clock [get_clocks {clk}] [get_ports {mouseX[1]}]
set_output_delay -add_delay 0.5 -clock [get_clocks {clk}] [get_ports {led8}]
set_output_delay -add_delay 0.5 -clock [get_clocks {clk}] [get_ports {ClkSwitch}]
set_output_delay -add_delay 0.5 -clock [get_clocks {clk}] [get_ports {led2}]
set_output_delay -add_delay 0.5 -clock [get_clocks {clk}] [get_ports {led9}]
set_output_delay -add_delay 0.5 -clock [get_clocks {clk}] [get_ports {DataSwitch}]
set_output_delay -add_delay 0.5 -clock [get_clocks {clk}] [get_ports {led3}]
set_output_delay -add_delay 0.5 -clock [get_clocks {clk}] [get_ports {mouseY[1]}]
set_output_delay -add_delay 0.5 -clock [get_clocks {clk}] [get_ports {buttons[3]}]
