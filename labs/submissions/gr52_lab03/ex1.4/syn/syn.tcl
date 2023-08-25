##############################################################
# SCRIPT FOR SPEEDING UP and RECORDING the WINDOWED REGISTER FILE SYNTHESIS#
# analyzing and checking vhdl netlist#
# here the analyze command is used for each file from bottom to top #
##############################################################

set lib_name WORK
set analyze_list {constants.vhd wrf.vhd}
set top_level_entity WINDOWED_REGISTER_FILE
set architecture_name BEHAVIORAL

set reports_dir "./reports"
set lib_dir "./work"

set max_paths_delay 2

# create work dir, if it does not exist
if {![file exists $lib_dir]} {
  file mkdir $lib_dir
}

analyze -library $lib_name -format vhdl $analyze_list

##############################################################
# elaborating the top entity
# choose the architecture you want
elaborate $top_level_entity -architecture $architecture_name
##########################################
# first compilation, without constraints
puts [INFO] Compilation without contraints
compile 

# create reports dir, if it does not exist
if {![file exists $reports_dir]} {
        file mkdir $reports_dir
}

# reporting timing and power after the first synthesis without constraints #
report_timing > "${reports_dir}/timing_report.txt"
# report_area >  "${reports_dir}/area_uncontrained.txt"

# because rf is sequential, we need to create a clock in order to constrain
# the synthesis process. The name parameters is the name of the pin that
# corresponds to the clock of the entity.
# create_clock -name "CLK" -period 2 CLK

# check if the clock signal has been created
# report_clock > "${reports_dir}/report_clock.txt"

# compile the constrained design
# echo [INFO] Compilation with a timing contraint
# compile
# report_timing > "${reports_dir}/timing_contrained.txt"

# forces a combinational max delay of max_paths_delay from each of the inputs
# to each of the output, that is a delay lower than the one found after the
# first compilation step. Often this is the working clock period of your
# system 
# set_max_delay $max_paths_delay -from [all_inputs] -to [all_outputs]
# report_timing > "${reports_dir}/timing_and_paths_contrained.txt"
# optimize
# TODO step 6 and 7

#compile -map_effort high
# save report
#report_timing > ADD_timeopt_2t.rpt
#report_area > ADD_timeopt_2a.rpt

# saving files
#write -hierarchy -format ddc -output ADD-structural-topt.ddc
write -hierarchy -format vhdl -output post-synthesis-netlist.vhdl
#write -hierarchy -format verilog -output ADD-structural-topt.v
