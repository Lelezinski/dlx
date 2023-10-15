#!/usr/bin/env tclsh

puts "(INFO) Starting Synthesis."

# clock
puts "(INFO) Clock period: $CLK_PERIOD ns"
set target_clk_ns $CLK_PERIOD

# constants
set design_entity "dlx"
set design_arch "rtl"
set fcomp_name "./components_syn"
set fcomp [open $fcomp_name r]
set fanalyze [read $fcomp]

# components analysis
puts "(INFO) Starting Analysis."
set errors 0
foreach component [split [string trim "$fanalyze" "\n"] "\n"] {
	if {[analyze "$component" -library WORK -format VHDL] == 0} {
		set errors 1
	}
}
if { $errors } {
	puts "(ERROR) Errors during Analysis"
	exit
}
puts "(INFO) Done: Analysis"

# elaboration and synthesis settings
puts "(INFO) Starting Elaboration."
elaborate "${design_entity}" -update -architecture "${design_arch}" -library WORK
set_wire_load_model -name 5K_hvratio_1_4
create_clock -name "CLK" -period $target_clk_ns CLK
set_fix_hold "CLK"
set_max_delay $target_clk_ns -from [all_inputs] -to [all_outputs]
puts "(INFO) Done: Elaboration"

# design compile
puts "(INFO) Starting Compile."
compile -map_effort high
puts "(INFO) Done: Compile"

# generate netlist
puts "(INFO) Generating Netlist."
exec mkdir -p netlists
write -format verilog -hierarchy -output "./netlists/${design_entity}_${target_clk_ns}ns_postsyn.v"
exec mkdir -p design_compiler_sdc
write_sdc "./design_compiler_sdc/${design_entity}_${target_clk_ns}ns_postsyn.sdc"
puts "(INFO) Done: Netlist"

# generate reports
puts "(INFO) Generating Reports."
exec mkdir -p reports
report_timing > "./reports/${design_entity}_${target_clk_ns}ns_timing.rpt"
report_area   > "./reports/${design_entity}_${target_clk_ns}ns_area.rpt"
report_power  > "./reports/${design_entity}_${target_clk_ns}ns_power.rpt"
puts "(INFO) Done: Reports"

# final cleanup
puts "(INFO) Done: Synthesis. Cleaning up..."
exec rm -rf work
exit