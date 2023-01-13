#*********************************************************
# synthesize script for cell: mouse
# company: ontwerp_practicum
# designer: ghpdohmen
#*********************************************************
set_db lib_search_path /data/designkit/tsmc-180nm/lib/TSMCHOME/digital/Front_End/timing_power_noise/NLDM/tcb018gbwp7t_270a/
set_db init_hdl_search_path ../../../VHDL/
set_db library {tcb018gbwp7twc.lib}
set_db use_scan_seqs_for_non_dft false

#include backend/syn/tcl/read_hdl.tcl
read_hdl -vhdl {counter25mhz.vhd}
read_hdl -vhdl {edge_detector.vhd}
read_hdl -vhdl {flipflop.vhd}
read_hdl -vhdl {main_fsm.vhd}
read_hdl -vhdl {mouse.vhd}
read_hdl -vhdl {mux.vhd}
read_hdl -vhdl {sendFSM.vhd}
read_hdl -vhdl {shfitregister_11bit.vhd}
read_hdl -vhdl {shiftregister_9bit.vhd}
read_hdl -vhdl {timebase.vhd}
read_hdl -vhdl {counter25mhz-behav.vhd}
read_hdl -vhdl {edge_detector-behav.vhd}
read_hdl -vhdl {flipflop-behav.vhd}
read_hdl -vhdl {main_fsm-behav.vhd}
read_hdl -vhdl {mouse-behav.vhd}
read_hdl -vhdl {mux-behav.vhd}
read_hdl -vhdl {sendFSM-behav.vhd}
read_hdl -vhdl {shiftregister_11bit-behav.vhd}
read_hdl -vhdl {shiftregister_9bit-behav.vhd}
read_hdl -vhdl {timebase-behav.vhd}
read_hdl -vhdl {shiftregister_11bit_behav_cfg.vhd}
read_hdl -vhdl {flipflop_behav_cfg.vhd}
read_hdl -vhdl {main_fsm_behav_cfg.vhd}
read_hdl -vhdl {timebase_behav_cfg.vhd}
read_hdl -vhdl {mux_behav_cfg.vhd}
read_hdl -vhdl {sendfsm_behav_cfg.vhd}
read_hdl -vhdl {shiftregister_9bit_behav_cfg.vhd}
read_hdl -vhdl {edge_detector_behav_cfg.vhd}
read_hdl -vhdl {counter25mhz_behav_cfg.vhd}
read_hdl -vhdl {mouse_behav_cfg.vhd}
#endincl

elaborate mouse_behav_cfg

#include backend/syn/in/mouse.sdc
# We will use a 25 MHz clock, 
# but use 33 MHz as constraint to be more sure it works.
dc::create_clock -name clk -period 30 -waveform {0 15} [dc::get_ports clk]
dc::set_driving_cell -cell INVD0BWP7T [dc::all_inputs]
dc::set_input_delay  .2 -clock clk [dc::all_inputs]
dc::set_output_delay .5 -clock clk [dc::all_outputs]
dc::set_load 1 [dc::all_outputs]
#endincl

synthesize -to_mapped
#set_db syn_generic_effort medium
#syn_generic
#syn_map

ungroup -all -flat
insert_tiehilo_cells
write_hdl -mapped > ../out/mouse.v
write_sdf > ../out/mouse.sdf
write_sdc > ../out/mouse.sdc

report timing
report gates

gui_show


