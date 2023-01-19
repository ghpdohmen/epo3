set_clock_latency -source -early -min -rise  -0.456234 [get_ports {clk}] -clock clk 
set_clock_latency -source -early -min -fall  -0.367271 [get_ports {clk}] -clock clk 
set_clock_latency -source -late -min -rise  -0.456234 [get_ports {clk}] -clock clk 
set_clock_latency -source -late -min -fall  -0.367271 [get_ports {clk}] -clock clk 
