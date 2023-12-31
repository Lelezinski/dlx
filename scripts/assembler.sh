#!/bin/bash

hexpath='./src/memories/ro/hex.txt'

if [ ! -r $1 ]
then
        echo "Usage: $0 <dlx_assembly_file>.asm"
        exit 1
fi

echo $1
# asmfile=`echo $1 | sed s/[.].*//g`
asmfile=$1
perl ./scripts/dlxasm.pl -o $asmfile.bin -list $asmfile.list $1
rm $asmfile.bin.hdr
cat $asmfile.bin | hexdump -v -e '/1 "%02X" /1 "%02X" /1 "%02X" /1 "%02X\n"' > $hexpath
