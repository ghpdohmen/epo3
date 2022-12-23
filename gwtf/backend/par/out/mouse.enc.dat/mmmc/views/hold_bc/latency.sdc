set_clock_latency -source -early -min -rise  -0.310072 [get_ports {clk}] -clock clk 
set_clock_latency -source -early -min -fall  -0.222304 [get_ports {clk}] -clock clk 
set_clock_latency -source -late -min -rise  -0.310072 [get_ports {clk}] -clock clk 
set_clock_latency -source -late -min -fall  -0.222304 [get_ports {clk}] -clock clk 
