#*********************************************************
# synthesize script for cell: pixel
# company: ontwerp_practicum
# designer: ghpdohmen
#*********************************************************
set_db lib_search_path /data/designkit/tsmc-180nm/lib/TSMCHOME/digital/Front_End/timing_power_noise/NLDM/tcb018gbwp7t_270a/
set_db init_hdl_search_path ../../../VHDL/
set_db library {tcb018gbwp7twc.lib}
set_db use_scan_seqs_for_non_dft false

#include backend/syn/tcl/read_hdl.tcl
read_hdl -vhdl {color.vhd}
read_hdl -vhdl {RAMbestand.vhd}
read_hdl -vhdl {countdown.vhd}
read_hdl -vhdl {counter25mhz.vhd}
read_hdl -vhdl {e_counter.vhd}
read_hdl -vhdl {edge_debounce.vhd}
read_hdl -vhdl {edge_fall.vhd}
read_hdl -vhdl {edge_detector.vhd}
read_hdl -vhdl {flipflop.vhd}
read_hdl -vhdl {graph_logic.vhd}
read_hdl -vhdl {graphic_toplvl.vhd}
read_hdl -vhdl {H_counter.vhd}
read_hdl -vhdl {logic_top.vhd}
read_hdl -vhdl {main_fsm.vhd}
read_hdl -vhdl {mouse.vhd}
read_hdl -vhdl {mouse_logic.vhd}
read_hdl -vhdl {mux.vhd}
read_hdl -vhdl {pixel.vhd}
read_hdl -vhdl {ROM.vhd}
read_hdl -vhdl {sendFSM.vhd}
read_hdl -vhdl {shfitregister_11bit.vhd}
read_hdl -vhdl {shiftregister_9bit.vhd}
read_hdl -vhdl {timebase.vhd}
read_hdl -vhdl {V_counter.vhd}
read_hdl -vhdl {vga_buffer.vhd}
read_hdl -vhdl {vgadrive.vhd}
read_hdl -vhdl {x.vhd}
read_hdl -vhdl {y.vhd}
read_hdl -vhdl {color-behaviour_color.vhd}
read_hdl -vhdl {counter25mhz-behav.vhd}
read_hdl -vhdl {edge_debounce-behav.vhd}
read_hdl -vhdl {edge_detector-behav.vhd}
read_hdl -vhdl {flipflop-behav.vhd}
read_hdl -vhdl {graphic_toplvl-behaviour.vhd}
read_hdl -vhdl {logic_top-behaviour_logic_top.vhd}
read_hdl -vhdl {main_fsm-behav.vhd}
read_hdl -vhdl {mouse-behav.vhd}
read_hdl -vhdl {mouse_logic-behav.vhd}
read_hdl -vhdl {mux-behav.vhd}
read_hdl -vhdl {pixel-behav.vhd}
read_hdl -vhdl {sendFSM-behav.vhd}
read_hdl -vhdl {shiftregister_11bit-behav.vhd}
read_hdl -vhdl {shiftregister_9bit-behav.vhd}
read_hdl -vhdl {timebase-behav.vhd}
read_hdl -vhdl {V_counter_behav.vhd}
read_hdl -vhdl {vga_buffer-behav.vhd}
read_hdl -vhdl {vgadrive_behaviour.vhd}
read_hdl -vhdl {x-behaviour_x.vhd}
read_hdl -vhdl {y-behaviour_y.vhd}
read_hdl -vhdl {edge_det_fall_behav_cfg.vhd}
read_hdl -vhdl {edge_detector_behav_cfg.vhd}
read_hdl -vhdl {countdown_bar_behav_cfg.vhd}
read_hdl -vhdl {e_counter_behav_cfg.vhd}
read_hdl -vhdl {h_counter_behav_cfg.vhd}
read_hdl -vhdl {v_counter_behav_cfg.vhd}
read_hdl -vhdl {flipflop_behav_cfg.vhd}
read_hdl -vhdl {color_behaviour_color_cfg.vhd}
read_hdl -vhdl {y_behaviour_y_cfg.vhd}
read_hdl -vhdl {x_behaviour_x_cfg.vhd}
read_hdl -vhdl {shiftregister_11bit_behav_cfg.vhd}
read_hdl -vhdl {main_fsm_behav_cfg.vhd}
read_hdl -vhdl {timebase_behav_cfg.vhd}
read_hdl -vhdl {mux_behav_cfg.vhd}
read_hdl -vhdl {sendfsm_behav_cfg.vhd}
read_hdl -vhdl {shiftregister_9bit_behav_cfg.vhd}
read_hdl -vhdl {edge_debounce_behav_cfg.vhd}
read_hdl -vhdl {counter25mhz_behav_cfg.vhd}
read_hdl -vhdl {graph_logic_behav_cfg.vhd}
read_hdl -vhdl {vga_buffer_behav_cfg.vhd}
read_hdl -vhdl {vgadrive_behaviour_cfg.vhd}
read_hdl -vhdl {rom_cursor_behavioral_cfg.vhd}
read_hdl -vhdl {colour_storage_behavioral_cfg.vhd}
read_hdl -vhdl {logic_top_behaviour_logic_top_cfg.vhd}
read_hdl -vhdl {mouse_behav_cfg.vhd}
read_hdl -vhdl {graphic_toplvl_behaviour_cfg.vhd}
read_hdl -vhdl {mouse_logic_behav_cfg.vhd}
read_hdl -vhdl {pixel_behav_cfg.vhd}
#endincl

elaborate pixel_behav_cfg

#include backend/syn/in/pixel.sdc
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
write_hdl -mapped > ../out/pixel.v
write_sdf > ../out/pixel.sdf
write_sdc > ../out/pixel.sdc

report timing
report gates

gui_show


