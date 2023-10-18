#!/usr/bin/env bash

SRC_DIR='./src'
SYN_DIR='./syn'
SYN_RES='./res/syn'
SYN_TCL='./scripts/syn.tcl'
SYN_LIBRARYNAME='.synopsys_dc.setup'
CLK_PERIOD_DEF=1

GREEN="\e[32m"  # Green text color
RESET="\e[0m"   # Reset text color

echo -e "${GREEN}[INFO] Synthesis Setup...${RESET}"

if [ $# -lt 1 ]; then
    echo -e "${GREEN}[INFO] No clock period provided, using default $CLK_PERIOD_DEF ns period.${RESET}"
    CLK_PERIOD=$CLK_PERIOD_DEF
else
    # Save the first argument in CLK_PERIOD
    CLK_PERIOD="$1"
fi

if [ ! -d "$SYN_DIR" ]; then
    echo -e "${GREEN}[INFO] Folder $SYN_DIR does not exist yet, creating it now.${RESET}"
    mkdir -p "$SYN_DIR"
fi
mkdir -p "$SYN_DIR/work"
mkdir -p "$SYN_DIR/src"
mkdir -p "$SYN_DIR/src/datapath"

echo -e "${GREEN}[INFO] Copying sources from $SRC_DIR${RESET}"
find "$SRC_DIR" -maxdepth 1 -type f -name "*.vhd" -exec cp --update {} "$SYN_DIR/src/" \;
rsync -avm --include='*.vhd' --include='*/' --exclude='*' "$SRC_DIR/datapath/" "$SYN_DIR/src/datapath/"

echo -e "${GREEN}[INFO] Copying other resources from $SYN_RES${RESET}"
cp -ra --update $SYN_RES/* $SYN_DIR/
cp --update $SYN_RES/$SYN_LIBRARYNAME $SYN_DIR/

echo -e "${GREEN}[INFO] Setting up Design Vision${RESET}"
source /eda/scripts/init_design_vision

echo -e "${GREEN}[INFO] Setup done, launching Design Vision...${RESET}"
cd $SYN_DIR
dc_shell-t -no_gui << EOF
    set CLK_PERIOD $CLK_PERIOD
    source ../$SYN_TCL
EOF
