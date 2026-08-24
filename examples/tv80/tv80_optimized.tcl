# Paths are resolved relative to this example directory.

# Safe compile wrapper for optional retiming.
proc dc_agent_compile_ultra_safe {args} {
    set compile_args $args
    set retime_index [lsearch -exact $compile_args "-retime"]
    if {$retime_index >= 0} {
        set clock_count [sizeof_collection [get_clocks -quiet *]]
        set register_count [sizeof_collection [all_registers]]
        if {$clock_count == 0 || $register_count == 0} {
            set design_name [get_object_name [current_design]]
            set reason "no clock"
            if {$register_count == 0} {
                set reason "no sequential cells"
            }
            echo "DC-AGENT-WARN: removing -retime for $design_name ($reason; clocks=$clock_count registers=$register_count)"
            set compile_args [lreplace $compile_args $retime_index $retime_index]
        }
    }
    set compile_command [linsert $compile_args 0 compile_ultra]
    uplevel 1 $compile_command
}

# ======================================================================
# Mixed Compile Script (Template Version)
# ======================================================================

set top tv80s
set format verilog
set design_name tv80
set script_dir [file dirname [file normalize [info script]]]
set rtl_path [file join $script_dir rtl]
set_host_options -max_cores 16

echo "Phase 1: Environment Setup, Read RTL & Link..."
analyze -library WORK -format ${format} [glob -nocomplain ${rtl_path}/*.v]
elaborate ${top} -library WORK
current_design ${top}
link
file mkdir ./syn_output
check_design > ./syn_output/check_design.rpt

echo "Phase 1.5: Apply Top-Level Constraints..."
source [file join $script_dir constraints.sdc]
echo "DC-AGENT-CONSTRAINTS: top-level clocks=[sizeof_collection [get_clocks -quiet *]]"
report_clock > ./syn_output/dc_agent_report_clock.rpt
check_timing > ./syn_output/dc_agent_check_timing.rpt

echo "Phase 2: Preserve Shared Design Identities..."
# Global uniquify is intentionally skipped before grouping.
# Partition groups are defined once on shared parameterized designs.

echo "Phase 3: Building Physical Boundaries (Grouping)..."

# --- Switch to design hierarchy: tv80_core ---
current_design tv80_core
group { i_mcode } -design_name HAC_GROUP_MATH_DATAPATH_0 -cell_name u_HAC_GROUP_MATH_DATAPATH_0
group { i_reg } -design_name HAC_GROUP_MATH_DATAPATH_1 -cell_name u_HAC_GROUP_MATH_DATAPATH_1
group { i_alu } -design_name HAC_GROUP_GENERAL_2 -cell_name u_HAC_GROUP_GENERAL_2

echo "Phase 4: In-Memory Characterize (Top-Down Constraint Passing)..."

# Propagate top constraints to HAC_GROUP_MATH_DATAPATH_0 through i_tv80_core
current_design ${top}
echo "DC-AGENT-CONSTRAINT-PROPAGATE: i_tv80_core"
characterize [get_cells i_tv80_core]
current_design tv80_core
characterize [get_cells u_HAC_GROUP_MATH_DATAPATH_0]

# Propagate top constraints to HAC_GROUP_MATH_DATAPATH_1 through i_tv80_core
current_design ${top}
echo "DC-AGENT-CONSTRAINT-PROPAGATE: i_tv80_core"
characterize [get_cells i_tv80_core]
current_design tv80_core
characterize [get_cells u_HAC_GROUP_MATH_DATAPATH_1]

# Propagate top constraints to HAC_GROUP_GENERAL_2 through i_tv80_core
current_design ${top}
echo "DC-AGENT-CONSTRAINT-PROPAGATE: i_tv80_core"
characterize [get_cells i_tv80_core]
current_design tv80_core
characterize [get_cells u_HAC_GROUP_GENERAL_2]

echo "Phase 5: Local Bottom-Up Compiles (Independent Strategies)..."

# Independent synthesis: u_HAC_GROUP_MATH_DATAPATH_0 [MATH_DATAPATH]
current_design HAC_GROUP_MATH_DATAPATH_0
echo "DC-AGENT-GROUP-CONSTRAINTS: HAC_GROUP_MATH_DATAPATH_0 clocks=[sizeof_collection [get_clocks -quiet *]] registers=[sizeof_collection [all_registers]]"
set_app_var auto_ungroup_preserve_constraints false
set_app_var compile_clock_gating_through_hierarchy false
set_app_var compile_optimize_unloaded_seq_logic_with_no_bound_opt true
set_app_var compile_retime_exception_registers false
set_app_var hdlin_infer_multibit default_none
set_app_var power_cg_ignore_setup_condition false
set_dynamic_optimization true
set_leakage_optimization false
set_clock_gating_style -minimum_bitwidth 3 -max_fanout 64 -num_stages 2
set_optimize_registers true
set_dp_smartgen_options -all_options auto -booth_encoding true -booth_radix8 false -mult_radix4 false -adder_radix 2 -hybrid_adder true -optimize_for area,speed
set_critical_range 2.0 [current_design]
dc_agent_compile_ultra_safe -no_seq_output_inversion -retime
optimize_netlist -area
set_dont_touch [get_designs HAC_GROUP_MATH_DATAPATH_0] true

# Independent synthesis: u_HAC_GROUP_MATH_DATAPATH_1 [MATH_DATAPATH]
current_design HAC_GROUP_MATH_DATAPATH_1
echo "DC-AGENT-GROUP-CONSTRAINTS: HAC_GROUP_MATH_DATAPATH_1 clocks=[sizeof_collection [get_clocks -quiet *]] registers=[sizeof_collection [all_registers]]"
set_app_var auto_ungroup_preserve_constraints true
set_app_var compile_clock_gating_through_hierarchy false
set_app_var compile_optimize_unloaded_seq_logic_with_no_bound_opt true
set_app_var compile_retime_exception_registers true
set_app_var hdlin_infer_multibit never
set_app_var power_cg_ignore_setup_condition false
set_dynamic_optimization true
set_leakage_optimization false
set_clock_gating_style -minimum_bitwidth 5 -max_fanout 32 -num_stages 1
set_dp_smartgen_options -all_options auto -booth_encoding true -adder_radix 4 -optimize_for speed
set_optimize_registers true
set_critical_range 2.0 [current_design]
dc_agent_compile_ultra_safe -retime
set_dont_touch [get_designs HAC_GROUP_MATH_DATAPATH_1] true

# Independent synthesis: u_HAC_GROUP_GENERAL_2 [GENERAL]
current_design HAC_GROUP_GENERAL_2
echo "DC-AGENT-GROUP-CONSTRAINTS: HAC_GROUP_GENERAL_2 clocks=[sizeof_collection [get_clocks -quiet *]] registers=[sizeof_collection [all_registers]]"
set_app_var auto_ungroup_preserve_constraints false
set_app_var compile_clock_gating_through_hierarchy false
set_app_var compile_optimize_unloaded_seq_logic_with_no_bound_opt true
set_app_var compile_retime_exception_registers true
set_app_var hdlin_infer_multibit default_none
set_app_var power_cg_balance_stages false
set_app_var power_cg_ignore_setup_condition false
set_dynamic_optimization true
set_leakage_optimization false
set_clock_gating_style -minimum_bitwidth 3 -max_fanout 32 -num_stages 1
set_optimize_registers true
set_dp_smartgen_options -all_options auto -booth_encoding true -booth_radix8 auto -booth_mux_based auto -booth_cell auto -mult_radix4 true -mult_nand_based false -inv_out_adder_cell true -4to2_compressor_cell true -adder_radix 4 -ling_adder false -hybrid_adder false -carry_select_adder_cell true -cond_sum_adder false -sklansky_adder true -brent_kung_adder false -bounded_fanout_adder true -mux_based auto -inv_adder_cell false -sop2pos_transformation true -tp_opt_tree true -tp_oper_sel true -smart_compare true -optimize_for speed
set_critical_range 100 [current_design]
dc_agent_compile_ultra_safe -retime
set_dont_touch [get_designs HAC_GROUP_GENERAL_2] true

echo "Phase 6: Top-Level Assembly..."
current_design ${top}
# Top-level assembly
compile_ultra

echo "DC Agent mixed compile finished."
report_timing > ./syn_output/timing_mixed.rpt
report_area > ./syn_output/area_mixed.rpt
report_power > ./syn_output/power_mixed.rpt
report_qor > ./syn_output/qor_mixed.rpt
report_resources > ./syn_output/resources_mixed.rpt
write -format verilog -hierarchy -output ./syn_output/${design_name}_syn_mixed.v
write -format ddc -hierarchy -output ./syn_output/${design_name}_syn_mixed.ddc
write_sdc -nosplit ./syn_output/${design_name}_syn_mixed.sdc
exit
