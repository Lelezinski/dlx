#!/usr/bin/env bash

SIM_DIR='./sim'
SRC_DIR='./src'
SIM_FILE_LIST='./components'
TESTBENCH_FILE='./testbenches/DLX_tb.vhd'

echo "[INFO] Starting Compilation."
echo "[INFO] Moving into simulation directory"

rm -rf sim 
if [ ! -d "$SIM_DIR" ]; then
    echo "[INFO] $SIM_DIR does not exist yet."
    echo "[INFO] Creating it."
    mkdir -p "$SIM_DIR"
    echo "[INFO] Copying sources from $SRC_DIR"
    cp -r $SRC_DIR/* $SIM_DIR/
else
    echo "[INFO] $SIM_DIR found."
fi

cd "$SIM_DIR"
echo "$TESTBENCH_FILE" >> "$SIM_FILE_LIST"
echo "[INFO] (SETMENTOR)"
INSTALL_DIR=/eda/mentor/2020-21/RHELx86/QUESTA-CORE-PRIME_2020.4/questasim/linux_x86_64
export PATH=$INSTALL_DIR:$PATH
export LM_LICENSE_FILE=${LM_LICENSE_FILE}:1717@led-x3850-3.polito.it
source /eda/mentor/2020-21/scripts/QUESTA-CORE-PRIME_2020.4_RHELx86.sh

echo "[INFO] Creating work library"
vdel -all > /dev/null 2>&1
vlib work

# VHDL file list
vcom -F "$SIM_FILE_LIST"
if [ $? -ne 0 ]; then
    echo "There are some compilation errors"
    exit 1
fi

# Simulation
vsim -t 10ps work.DLX_tb -voptargs=+acc
# Synthesis
