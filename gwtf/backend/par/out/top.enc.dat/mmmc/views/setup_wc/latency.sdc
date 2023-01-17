set_clock_latency -source -early -max -rise  -0.575363 [get_ports {clk}] -clock clk 
set_clock_latency -source -early -max -fall  -0.422164 [get_ports {clk}] -clock clk 
set_clock_latency -source -late -max -rise  -0.575363 [get_ports {clk}] -clock clk 
set_clock_latency -source -late -max -fall  -0.422164 [get_ports {clk}] -clock clk 
