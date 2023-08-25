##############################################################
# SCRIPT FOR SPEEDING UP and RECORDING the REGISTER FILE SYNTHESIS#
# analyzing and checking vhdl netlist#
# here the analyze command is used for each file from bottom to top #
##############################################################

set reports_dir "./reports"
set lib_dir "./work"

set max_paths_delay 2

# create work dir, if it does not exist
if {![file exists $lib_dir]} {
        file mkdir $lib_dir
}

analyze -library WORK -format vhdl {constants.vhd registerfile.vhd}

##############################################################
# elaborating the top entity
# choose the architecture you want
elaborate register_file -architecture A
##########################################
# first compilation, without constraints
echo [INFO] Compilation without contraints
compile 

# create reports dir, if it does not exist
if {![file exists $reports_dir]} {
        file mkdir $reports_dir
}

# reporting timing and power after the first synthesis without constraints #
report_timing > "${reports_dir}/timing_unconstrained.txt"
report_area >  "${reports_dir}/area_unconstrained.txt"

# because rf is sequential, we need to create a clock in order to constrain
# the synthesis process. The name parameters is the name of the pin that
# corresponds to the clock of the entity.
create_clock -name "CLK" -period 2 CLK

# check if the clock signal has been created
report_clock > "${reports_dir}/report_clock.txt"

# compile the constrained design
echo [INFO] Compilation with a timing contraint
compile
report_timing > "${reports_dir}/timing_constrained.txt"

# forces a combinational max delay of max_paths_delay from each of the inputs
# to each of the output, that is a delay lower than the one found after the
# first compilation step. Often this is the working clock period of your
# system 
set_max_delay $max_paths_delay -from [all_inputs] -to [all_outputs]
# compile optimized design
compile -map_effort high
report_area > "${reports_dir}/area_constrained.txt"
report_timing > "${reports_dir}/timing_and_paths_constrained.txt"

# saving files
write -hierarchy -format ddc -output registerfile-32-64b-beh-opt.ddc
write -hierarchy -format vhdl -output registerfile-32-64b-beh-opt.vhdl
write -hierarchy -format verilog -output registerfile-32-64b-beh-opt.v