#!/usr/bin/env bash

SIM_DIR='./sim'
SRC_DIR='./src'
SYN_DIR='./syn'
SIM_FILE_LIST='./components'
TESTBENCH_FILE='./testbenches/DLX_tb.vhd'

echo "[INFO] Starting Compilation."
echo "[INFO] Moving into simulation directory"

# rm -rf sim
if [ ! -d "$SIM_DIR" ]; then
    echo "[INFO] $SIM_DIR does not exist yet."
    echo "[INFO] Creating it."
    mkdir -p "$SIM_DIR"
    echo "[INFO] Copying sources from $SRC_DIR"
    # TODO add simulation specific files to components
    echo "$TESTBENCH_FILE" >> "$SIM_FILE_LIST"
    cp -r $SRC_DIR/* $SIM_DIR/
else
    echo "[INFO] $SIM_DIR found."
    cp -r --update $SRC_DIR/* $SIM_DIR/
fi

cd "$SIM_DIR"
echo "[INFO] (SETMENTOR)"
# INSTALL_DIR=/opt/intelFPGA/20.1/modelsim_ase/bin/
export LM_LICENSE_FILE=${LM_LICENSE_FILE}:1717@led-x3850-3.polito.it
source /eda/mentor/2020-21/scripts/QUESTA-CORE-PRIME_2020.4_RHELx86.sh
export PATH=$INSTALL_DIR:$PATH

echo "[INFO] Creating work library"
# vdel -all > /dev/null 2>&1
# vlib work

# VHDL file list
vcom -F "$SIM_FILE_LIST"
if [ $? -ne 0 ]; then
    echo "There are some compilation errors"
    exit 1
fi

# Simulation
if ps aux | grep -q [v]sim; then
    exit 1
else
    setsid vsim -t 10ps work.DLX_tb -voptargs=+acc
fi

# Synthesis
# if [ ! -d "$SYM_DIR" ]; then
#     echo "[INFO] $SIM_DIR does not exist yet."
#     echo "[INFO] Creating it."
#     mkdir -p "$SYM_DIR"
#     echo "[INFO] Copying sources from $SRC_DIR"
#     cp -r $SRC_DIR/* $SYN_DIR/
# else
#     echo "[INFO] $SYM_DIR found."
#     cp -r --update $SRC_DIR/* $SYM_DIR/
# fi

# ENTITY="DLX"
# ARCHITECTURE="RTL"
# # source files
# source /eda/scripts/init_design_vision
# dc_shell-t -no_gui -x "\
#     analyze -format vhdl {$(cat components | sed 's/#.*//g' | tr '\n' ' ')};\
#     elaborate $ENTITY -architecture $ARCHITECTURE -library WORK;
#     exit"
