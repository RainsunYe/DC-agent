##############################################################
# Top Module: __TOP_MODULE__
# Design Name: __DESIGN_NAME__
# RTL Path: __RTL_PATH__
##############################################################

set top __TOP_MODULE__
set format verilog
set design_name __DESIGN_NAME__
set rtl_path __RTL_PATH__

set_host_options -max_cores 16

# Read RTL files
analyze -library WORK -format ${format} [glob -nocomplain ${rtl_path}/*.v]
# Elaborate design
elaborate ${top} -library WORK

# Set current design
current_design ${top}

# Link design
link

source ./generate_graph.tcl

exit
