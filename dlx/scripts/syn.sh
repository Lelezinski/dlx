#!/usr/bin/env bash

SRC_DIR='./src'
SYN_DIR='./syn'
SYN_RES='./res/syn'
SYN_TCL='./scripts/syn.tcl'
CLK_PERIOD_DEF=1

echo "[INFO] Synthesis Setup..."

if [ $# -lt 1 ]; then
    echo "[INFO] No clock period provided, using default $CLK_PERIOD_DEF ns period."
    CLK_PERIOD=$CLK_PERIOD_DEF
else
    # Save the first argument in CLK_PERIOD
    CLK_PERIOD="$1"
fi


if [ ! -d "$SYN_DIR" ]; then
    echo "[INFO] Folder $SYN_DIR does not exist yet, creating it now."
    mkdir -p "$SYN_DIR"
fi
mkdir -p "$SYN_DIR/work"
mkdir -p "$SYN_DIR/src"
mkdir -p "$SYN_DIR/src/datapath"

echo "[INFO] Copying sources from $SRC_DIR"
find "$SRC_DIR" -maxdepth 1 -type f -name "*.vhd" -exec cp --update {} "$SYN_DIR/src/" \;
rsync -avm --include='*.vhd' --include='*/' --exclude='*' "$SRC_DIR/datapath/" "$SYN_DIR/src/datapath/"

echo "[INFO] Copying other resources from $SYN_RES"
cp -ra --update $SYN_RES/* $SYN_DIR/

echo "[INFO] Setting up Design Vision"
source /eda/scripts/init_design_vision

echo "[INFO] Setup done, launching Design Vision..."
cd $SYN_DIR
dc_shell-t -no_gui << EOF
    set CLK_PERIOD $CLK_PERIOD
    source ../$SYN_TCL
EOF