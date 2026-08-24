# Portable Nangate45 example constraints.
set_units -time ns -capacitance fF

create_clock -name clk -period 5.0 -waveform {0 2.5} [get_ports clk]
set_clock_uncertainty 0.30 [get_clocks clk]
set_clock_latency 0.40 [get_clocks clk]

set data_inputs [remove_from_collection [all_inputs] [get_ports clk]]
set_input_delay 1.80 -clock clk $data_inputs
set_output_delay 1.80 -clock clk [all_outputs]

set_load 30 [all_outputs]
set_max_transition 0.08 [current_design]
set_max_capacitance 15 [current_design]
set_max_fanout 6 [current_design]

set_timing_derate -early 0.93
set_timing_derate -late 1.07
