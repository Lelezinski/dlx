#!/usr/bin/env bash

SIM_DIR='./sim'
SRC_DIR='./src'

# Compilation
# echo $(pwd)
# basedir=$(dirname $0)
# cd $basedir
# echo $(pwd)
#
echo "Starting Compilation."
echo "Moving into simulation directory"

if [ ! -d "$SIM_DIR" ]; then
    echo "$SIM_DIR does not exist yet."
    echo "Creating it."
    mkdir -p "$SIM_DIR"
    echo "Copying sources from $SRC_DIR"
    cp -r $SRC_DIR/* $SIM_DIR/
else
    echo "$SIM_DIR found."
fi

echo "Sourcing design compiler bins"
source /eda/scripts/init_design_vision

echo "Creating work library"
vlib work

# source set-mentor
# # create work directory
# vdel -all
# vlib work

# ## VHDL file list
# FILE_LIST='./sim/components'
# vcom -F $(FILE_LIST)

# Simulation
# Synthesis
