################################################################################
# Script: generate_smart_graph_with_weights.tcl
# Description: Recursively traverses glue logic and accumulates real dataflow bit-width weights
################################################################################

set filename "hierarchy_connectivity_smart_weighted.dot"
set fp [open $filename w]
puts "Generating final smart connectivity graph with weights to $filename ..."
flush stdout

# ------------------------------------------------------------------
# 0. Configuration
# ------------------------------------------------------------------
set skip_pattern ".*clk.*|.*reset.*|.*rst.*|.*scan.*|.*test.*|.*vdd.*|.*vss.*|.*gnd.*|.*logic0.*|.*logic1.*"
set MAX_DEPTH 4
set MAX_FANOUT_LIMIT 50
set MAX_VISITED_CELLS_PER_SOURCE 64

# ------------------------------------------------------------------
# 1. Graphviz header
# ------------------------------------------------------------------
puts $fp "digraph G {"
puts $fp "  rankdir=TB;"
puts $fp "  splines=spline;"
puts $fp "  node \[shape=box, style=filled, fillcolor=azure, color=darkslate, fontname=\"Helvetica\", fontsize=10\];"
puts $fp "  edge \[arrowsize=0.6\];"

# ------------------------------------------------------------------
# 2. Preparation
# ------------------------------------------------------------------
set top_name [current_design_name]
puts $fp "  \"$top_name\" \[label=\"TOP: $top_name\", shape=doubleoctagon, fillcolor=gold, fontsize=12\];"

array set valid_nodes {}
set valid_nodes($top_name) 1 

foreach_in_collection d [get_designs *] {
    set d_name [get_object_name $d]
    set valid_nodes($d_name) 1
}

# ------------------------------------------------------------------
# 3. Recursive tracing through glue logic
# ------------------------------------------------------------------
proc find_loads_recursively_safe { net_obj visited_cells_ref visited_count_ref depth } {
    upvar $visited_cells_ref visited_cells
    upvar $visited_count_ref visited_count
    global valid_nodes top_name MAX_DEPTH MAX_FANOUT_LIMIT MAX_VISITED_CELLS_PER_SOURCE
    
    if {$depth > $MAX_DEPTH} { return {} }
    if {$visited_count >= $MAX_VISITED_CELLS_PER_SOURCE} { return {} }
    
    set direct_pins [get_pins -quiet -of_objects $net_obj -filter "direction == in || direction == inout"]
    if {[sizeof_collection $direct_pins] > $MAX_FANOUT_LIMIT} { 
        return {} 
    }
    
    set found_targets {}
    
    foreach_in_collection sink $direct_pins {
        set cell [get_cells -quiet -of_objects $sink]
        if {$cell == ""} { continue }
        
        set cell_name [get_object_name $cell]
        set cell_ref  [get_attribute -quiet $cell ref_name]
        
        if {[info exists valid_nodes($cell_ref)]} {
            lappend found_targets $cell_name
        } else {
            if {[info exists visited_cells($cell_name)]} { continue }
            set visited_cells($cell_name) 1
            incr visited_count
            if {$visited_count > $MAX_VISITED_CELLS_PER_SOURCE} { break }
            
            set out_pins [get_pins -quiet -leaf -of_objects $cell -filter "direction == out"]
            foreach_in_collection out_pin $out_pins {
                set next_net [get_nets -quiet -of_objects $out_pin]
                if {$next_net != ""} {
                    set sub_targets [find_loads_recursively_safe $next_net visited_cells visited_count [expr $depth + 1]]
                    foreach t $sub_targets { lappend found_targets $t }
                }
            }
        }
    }
    return $found_targets
}

proc get_pin_effective_width { pin_obj } {
    set pin_width 1
    catch {
        set bs [get_attribute -quiet $pin_obj bus_size]
        if {$bs != "" && $bs > 0} {
            set pin_width $bs
        } else {
            set is_bus [get_attribute -quiet $pin_obj is_bus]
            if {$is_bus == "true" || $is_bus == "TRUE" || $is_bus == "1"} {
                set bw [get_attribute -quiet $pin_obj bus_width]
                if {$bw != "" && $bw > 0} { set pin_width $bw }
            }
        }
    }
    return $pin_width
}

# ------------------------------------------------------------------
# 4. Register nodes and draw hierarchy
# ------------------------------------------------------------------
puts "Step 1: Registering Nodes..."
set all_cells [get_cells -hierarchical *]
array set drawn_nodes {}
array set immediate_parent {}
set drawn_nodes($top_name) 1

foreach_in_collection cell $all_cells {
    set full_name [get_object_name $cell]
    set ref_name  [get_attribute -quiet $cell ref_name]
    if {[info exists valid_nodes($ref_name)]} {
        set drawn_nodes($full_name) 1
        set short_name [file tail $full_name]
        puts $fp "  \"$full_name\" \[label=\"$short_name\\n($ref_name)\"\];"
    }
}

puts "Step 2: Processing Hierarchy..."
set hierarchy_edges {}
foreach node [array names drawn_nodes] {
    if {$node == $top_name} { continue }
    set parent_found 0
    set current_path $node
    while {!$parent_found} {
        set parent_path [file dirname $current_path]
        if {$parent_path == "." || $parent_path == $current_path} {
            set parent_path $top_name
            set parent_found 1
        } elseif {[info exists drawn_nodes($parent_path)]} {
            set parent_found 1
        } else {
            set current_path $parent_path
        }
    }
    set immediate_parent($node) $parent_path
    lappend hierarchy_edges [list $parent_path $node]
}

# ------------------------------------------------------------------
# 6. Connectivity analysis and bit-width weight accumulation
# ------------------------------------------------------------------
puts "Step 3: Processing Connectivity and Weights..."
flush stdout
array set connection_weights {}
array set hierarchy_weights {}
set node_count 0
set total_nodes [array size drawn_nodes]

foreach node [array names drawn_nodes] {
    incr node_count
    if {$node_count % 10 == 0} {
        puts "  Processing node $node_count / $total_nodes"
        flush stdout
    }

    if {$node == $top_name} { continue }

    set out_pins [get_pins -quiet -of_objects $node -filter "direction == out || direction == inout"]

    # DC may expose a wide bus as thousands of bit pins. Group those pins by
    # bus name and trace at most four representative bits. The contribution
    # of each sample is scaled so the accumulated edge still represents the
    # full interface width.
    catch {array unset bus_pin_names}
    catch {array unset bus_pin_widths}
    array set bus_pin_names {}
    array set bus_pin_widths {}
    foreach_in_collection source_pin $out_pins {
        set source_pin_name [get_object_name $source_pin]
        set pin_base $source_pin_name
        regexp {^(.*)\[[0-9]+\]$} $source_pin_name -> pin_base
        if {![info exists bus_pin_names($pin_base)]} {
            set bus_pin_names($pin_base) {}
            set bus_pin_widths($pin_base) 0
        }
        set bus_pin_widths($pin_base) [expr {$bus_pin_widths($pin_base) + [get_pin_effective_width $source_pin]}]
        if {[llength $bus_pin_names($pin_base)] < 4} {
            lappend bus_pin_names($pin_base) $source_pin_name
        }
    }

    foreach pin_base [array names bus_pin_names] {
        set sample_names $bus_pin_names($pin_base)
        set sample_count [llength $sample_names]
        if {$sample_count == 0} { continue }
        set pin_width [expr {int(ceil(double($bus_pin_widths($pin_base)) / $sample_count))}]

        foreach source_pin_name $sample_names {
            set source_pin [get_pins -quiet $source_pin_name]
            if {$source_pin == ""} { continue }
            set start_net [get_nets -quiet -of_objects $source_pin]
            if {$start_net == ""} { continue }

            set net_name [get_object_name $start_net]
            if {[regexp -nocase -- $skip_pattern $net_name] || [regexp -nocase -- $skip_pattern $source_pin_name]} {
                continue
            }

            array unset visited_cells
            array set visited_cells {}
            set visited_count 0
            set targets [find_loads_recursively_safe $start_net visited_cells visited_count 0]

            set unique_targets {}
            foreach target_name $targets {
                if {$target_name != $node && $target_name != $top_name} {
                    if {[lsearch -exact $unique_targets $target_name] == -1} {
                        lappend unique_targets $target_name
                    }
                }
            }

            foreach target_name $unique_targets {
                set link_id "$node->$target_name"
                if {![info exists connection_weights($link_id)]} {
                    set connection_weights($link_id) 0
                }
                set connection_weights($link_id) [expr {$connection_weights($link_id) + $pin_width}]
            }
        }
    }
}

# Use direct child interface width as the primary black-edge coupling metric.
# This captures parent-child attachment even when recursive blue-link tracing
# does not surface internal child instances as explicit connectivity endpoints.
foreach node [array names drawn_nodes] {
    if {$node == $top_name} { continue }
    if {![info exists immediate_parent($node)]} { continue }

    set hkey "$immediate_parent($node)->$node"
    if {![info exists hierarchy_weights($hkey)]} {
        set hierarchy_weights($hkey) 0
    }

    set all_pins [get_pins -quiet -of_objects $node -filter "direction == in || direction == out || direction == inout"]
    foreach_in_collection pin $all_pins {
        set net_obj [get_nets -quiet -of_objects $pin]
        set net_name ""
        if {$net_obj != ""} {
            set net_name [get_object_name $net_obj]
        }
        set pin_name [get_object_name $pin]
        if {[regexp -nocase -- $skip_pattern $net_name] || [regexp -nocase -- $skip_pattern $pin_name]} {
            continue
        }
        set hierarchy_weights($hkey) [expr {$hierarchy_weights($hkey) + [get_pin_effective_width $pin]}]
    }
}

# ------------------------------------------------------------------
# 7. Write weighted hierarchy and connectivity edges to the .dot file
# ------------------------------------------------------------------
puts "Step 4: Writing Edge Weights to Graph..."
foreach edge $hierarchy_edges {
    lassign $edge parent child
    set hkey "$parent->$child"
    set weight 0
    if {[info exists hierarchy_weights($hkey)]} {
        set weight $hierarchy_weights($hkey)
    }
    set pw 1.0
    if {$weight >= 128} {
        set pw 3.0
    } elseif {$weight >= 32} {
        set pw 2.0
    } elseif {$weight > 1} {
        set pw 1.5
    }
    puts $fp "  \"$parent\" -> \"$child\" \[color=black, style=solid, weight=2, penwidth=$pw, label=\"$weight\"\];"
}

foreach link_id [array names connection_weights] {
    set weight $connection_weights($link_id)
    
    # Split src and dst at the first "->"
    set arrow_pos [string first "->" $link_id]
    set src [string range $link_id 0 [expr {$arrow_pos - 1}]]
    set dst [string range $link_id [expr {$arrow_pos + 2}] end]
    
    # Adjust edge thickness dynamically
    set pw 1.0
    if {$weight >= 128} {
        set pw 3.0
    } elseif {$weight >= 32} {
        set pw 2.0
    } elseif {$weight > 1} {
        set pw 1.5
    }
    
    # Write the graph with bit-width labels and penwidth
    puts $fp "  \"$src\" -> \"$dst\" \[color=blue, style=dashed, constraint=false, penwidth=$pw, label=\"$weight\"\];"
}

puts $fp "}"
close $fp
puts "--------------------------------------------------------"
puts "Success! Final weighted graph generated: $filename"
flush stdout
