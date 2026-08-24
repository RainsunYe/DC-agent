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

set top aes_cipher_top
set format verilog
set design_name aes_cipher
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

# --- Switch to design hierarchy: aes_cipher_top ---
current_design aes_cipher_top
group { us21 us23 us01 us12 us31 us13 us32 us02 } -design_name HAC_GROUP_MATH_DATAPATH_0 -cell_name u_HAC_GROUP_MATH_DATAPATH_0
group { us20 us22 us00 us10 us33 us11 us30 us03 } -design_name HAC_GROUP_MATH_DATAPATH_1 -cell_name u_HAC_GROUP_MATH_DATAPATH_1

echo "Phase 4: In-Memory Characterize (Top-Down Constraint Passing)..."

# Propagate top constraints to HAC_GROUP_MATH_DATAPATH_0 through aes_cipher_top
current_design ${top}
characterize [get_cells u_HAC_GROUP_MATH_DATAPATH_0]

# Propagate top constraints to HAC_GROUP_MATH_DATAPATH_1 through aes_cipher_top
current_design ${top}
characterize [get_cells u_HAC_GROUP_MATH_DATAPATH_1]

echo "Phase 5: Local Bottom-Up Compiles (Independent Strategies)..."

# Independent synthesis: u_HAC_GROUP_MATH_DATAPATH_0 [MATH_DATAPATH]
current_design HAC_GROUP_MATH_DATAPATH_0
echo "DC-AGENT-GROUP-CONSTRAINTS: HAC_GROUP_MATH_DATAPATH_0 clocks=[sizeof_collection [get_clocks -quiet *]] registers=[sizeof_collection [all_registers]]"
set_app_var auto_ungroup_preserve_constraints true
set_app_var compile_clock_gating_through_hierarchy false
set_app_var compile_optimize_unloaded_seq_logic_with_no_bound_opt false
set_app_var compile_retime_exception_registers true
set_app_var hdlin_infer_multibit never
set_app_var power_cg_balance_stages true
set_app_var power_cg_ignore_setup_condition true
set_dynamic_optimization false
set_leakage_optimization false
set_optimize_registers true
set_clock_gating_style -minimum_bitwidth 5 -max_fanout 64 -num_stages 1
set_dp_smartgen_options -all_options auto -booth_encoding auto -booth_radix8 true -booth_mux_based false -booth_cell false -mult_radix4 true -mult_nand_based false -inv_out_adder_cell false -4to2_compressor_cell false -adder_radix 2 -ling_adder auto -hybrid_adder false -carry_select_adder_cell auto -cond_sum_adder true -sklansky_adder false -brent_kung_adder auto -bounded_fanout_adder false -mux_based false -inv_adder_cell auto -sop2pos_transformation auto -tp_opt_tree true -tp_oper_sel false -smart_compare false -optimize_for default
set_critical_range 1.0 [current_design]
dc_agent_compile_ultra_safe -exact_map -no_boundary_optimization -no_seq_output_inversion
optimize_netlist -area
set_dont_touch [get_designs HAC_GROUP_MATH_DATAPATH_0] true

# Independent synthesis: u_HAC_GROUP_MATH_DATAPATH_1 [MATH_DATAPATH]
current_design HAC_GROUP_MATH_DATAPATH_1
echo "DC-AGENT-GROUP-CONSTRAINTS: HAC_GROUP_MATH_DATAPATH_1 clocks=[sizeof_collection [get_clocks -quiet *]] registers=[sizeof_collection [all_registers]]"
set_app_var auto_ungroup_preserve_constraints false
set_app_var compile_clock_gating_through_hierarchy true
set_app_var compile_optimize_unloaded_seq_logic_with_no_bound_opt true
set_app_var compile_retime_exception_registers true
set_app_var hdlin_infer_multibit never
set_app_var power_cg_balance_stages true
set_app_var power_cg_ignore_setup_condition true
set_dynamic_optimization true
set_leakage_optimization false
set_optimize_registers false
set_clock_gating_style -minimum_bitwidth 1 -max_fanout 128 -num_stages 3
set_dp_smartgen_options -all_options auto -booth_encoding false -booth_radix8 true -booth_mux_based auto -booth_cell true -mult_radix4 false -mult_nand_based false -inv_out_adder_cell auto -4to2_compressor_cell false -adder_radix auto -ling_adder auto -hybrid_adder false -carry_select_adder_cell true -cond_sum_adder true -sklansky_adder true -brent_kung_adder false -bounded_fanout_adder false -mux_based auto -inv_adder_cell true -sop2pos_transformation false -tp_opt_tree false -tp_oper_sel false -smart_compare auto -optimize_for default
set_critical_range 2.0 [current_design]
dc_agent_compile_ultra_safe -gate_clock -retime
optimize_netlist -area
set_dont_touch [get_designs HAC_GROUP_MATH_DATAPATH_1] true

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
