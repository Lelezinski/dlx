#!/usr/bin/env tclsh

# colors
proc color {foreground text} {
    return [exec tput setaf $foreground]$text[exec tput sgr0]
}

proc print_info {message} {
	puts [ color 2 "\[INFO\] $message" ]
}

proc print_error {message} {
	puts [ color 1 "\[ERROR\] $message" ]
}

puts "\n"
print_info "Starting Synthesis."

# clock
print_info "Clock period: $CLK_PERIOD ns"
set target_clk_ns $CLK_PERIOD

# constants
set design_entity "dlx"
set design_arch "rtl"
set fcomp_name "./components_syn"
set fcomp [open $fcomp_name r]
set fanalyze [read $fcomp]

# components analysis
print_info "Starting Analysis."
set errors 0
foreach component [split [string trim "$fanalyze" "\n"] "\n"] {
	if {[analyze "$component" -library WORK -format VHDL] == 0} {
		set errors 1
	}
}
if { $errors } {
	print_error "Errors during Analysis"
	exit
}
print_info "Done: Analysis"

# elaboration and synthesis settings
print_info "Starting Elaboration."
elaborate "${design_entity}" -update -architecture "${design_arch}" -library WORK
set_wire_load_model -name 5K_hvratio_1_4
create_clock -name "CLK" -period $target_clk_ns CLK
set_fix_hold "CLK"
set_max_delay $target_clk_ns -from [all_inputs] -to [all_outputs]
print_info "Done: Elaboration"

# design compile
print_info "Starting Compile."
compile -map_effort high
print_info "Done: Compile"

# generate netlist
print_info "Generating Netlist."
exec mkdir -p netlists
write -format verilog -hierarchy -output "./netlists/${design_entity}_${target_clk_ns}ns_postsyn.v"
exec mkdir -p design_compiler_sdc
write_sdc "./design_compiler_sdc/${design_entity}_${target_clk_ns}ns_postsyn.sdc"
print_info "Done: Netlist"

# generate reports
print_info "Generating Reports."
exec mkdir -p reports
report_timing > "./reports/${design_entity}_${target_clk_ns}ns_timing.rpt"
report_area   > "./reports/${design_entity}_${target_clk_ns}ns_area.rpt"
report_power  > "./reports/${design_entity}_${target_clk_ns}ns_power.rpt"
print_info "Done: Reports"

# final cleanup
print_info "Done: Synthesis. Cleaning up..."
exec rm -rf work
exit
