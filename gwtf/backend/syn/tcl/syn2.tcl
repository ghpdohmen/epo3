#*********************************************************
# synthesize script for cell: shiftregister_9bit
# company: ontwerp_practicum
# designer: etuinstra
#*********************************************************
set_db lib_search_path /data/designkit/tsmc-180nm/lib/TSMCHOME/digital/Front_End/timing_power_noise/NLDM/tcb018gbwp7t_270a/
set_db init_hdl_search_path ../../../VHDL/
set_db library {tcb018gbwp7twc.lib}
set_db use_scan_seqs_for_non_dft false

#include backend/syn/tcl/read_hdl.tcl
read_hdl -vhdl {shiftregister_9bit.vhd}
read_hdl -vhdl {shiftregister_9bit-behav.vhd}
read_hdl -vhdl {shiftregister_9bit_behav_cfg.vhd}
#endincl

elaborate shiftregister_9bit_behav_cfg

#include backend/syn/in/shiftregister_9bit.sdc
# but use 33 MHz as constraint to be more sure it works.
dc::set_driving_cell -cell INVD0BWP7T [dc::all_inputs]
dc::set_load 1 [dc::all_outputs]
#endincl

synthesize -to_mapped
#set_db syn_generic_effort medium
#syn_generic
#syn_map

ungroup -all -flat
insert_tiehilo_cells
write_hdl -mapped > ../out/shiftregister_9bit.v
write_sdf > ../out/shiftregister_9bit.sdf
write_sdc > ../out/shiftregister_9bit.sdc

report timing
report gates

gui_show


