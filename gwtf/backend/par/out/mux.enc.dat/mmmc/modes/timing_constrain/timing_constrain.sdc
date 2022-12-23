###############################################################
#  Generated by:      Cadence Innovus 17.11-s080_1
#  OS:                Linux x86_64(Host ID ce-epo3-cad.ewi.tudelft.nl)
#  Generated on:      Thu Dec 22 14:09:06 2022
#  Design:            mux
#  Command:           saveDesign ../out/mux.enc
###############################################################
current_design mux
set_clock_gating_check -rise -setup 0 
set_clock_gating_check -fall -setup 0 
set_driving_cell -lib_cell INVD0BWP7T -library tcb018gbwp7twc -rise -min -pin ZN [get_ports {mux_select}]
set_driving_cell -lib_cell INVD0BWP7T -library tcb018gbwp7twc -fall -min -pin ZN [get_ports {mux_select}]
set_driving_cell -lib_cell INVD0BWP7T -library tcb018gbwp7twc -rise -max -pin ZN [get_ports {mux_select}]
set_driving_cell -lib_cell INVD0BWP7T -library tcb018gbwp7twc -fall -max -pin ZN [get_ports {mux_select}]
set_driving_cell -lib_cell INVD0BWP7T -library tcb018gbwp7twc -rise -min -pin ZN [get_ports {muxFSM}]
set_driving_cell -lib_cell INVD0BWP7T -library tcb018gbwp7twc -fall -min -pin ZN [get_ports {muxFSM}]
set_driving_cell -lib_cell INVD0BWP7T -library tcb018gbwp7twc -rise -max -pin ZN [get_ports {muxFSM}]
set_driving_cell -lib_cell INVD0BWP7T -library tcb018gbwp7twc -fall -max -pin ZN [get_ports {muxFSM}]
set_driving_cell -lib_cell INVD0BWP7T -library tcb018gbwp7twc -rise -min -pin ZN [get_ports {muxReg}]
set_driving_cell -lib_cell INVD0BWP7T -library tcb018gbwp7twc -fall -min -pin ZN [get_ports {muxReg}]
set_driving_cell -lib_cell INVD0BWP7T -library tcb018gbwp7twc -rise -max -pin ZN [get_ports {muxReg}]
set_driving_cell -lib_cell INVD0BWP7T -library tcb018gbwp7twc -fall -max -pin ZN [get_ports {muxReg}]
set_load -pin_load -max  1  [get_ports {dataSwitch}]
set_load -pin_load -min  1  [get_ports {dataSwitch}]
set_wire_load_mode enclosed
