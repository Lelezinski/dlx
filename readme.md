# The DLX

                      /^--^\     /^--^\     /^--^\
                      \____/     \____/     \____/
                     /      \   /      \   /      \
                    |    D   | |    L   | |    X   |
                     \__  __/   \__  __/   \__  __/
|^|^|^|^|^|^|^|^|^|^|^|^\ \^|^|^|^/ /^|^|^|^|^\ \^|^|^|^|^|^|^|^|^|^|^|^|
| | | | | | | | | | | | |\ \| | |/ /| | | | | |\ \| | | | | | | | | | | |
| | | | | | | | | | | | |/ /| | |\ \| | | | | |/ /| | | | | | | | | | | |
| | | | | | | | | | | | |\/ | | | \/| | | | | |\/ | | | | | | | | | | | |
#########################################################################
| | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | |
| | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | |

Microelectronic Systems course team project, A.Y. 22/23

## Our DLX Implementation

The DLX implemented by this project is a complete 32-bit, five stages pipelined CPU that follows the MIPS ISA. It is composed of a datapath subdivided in the classic 5 stages (Fetch, Decode, Execute, Memory Access, Write Back) managed by a control unit that works in tandem with a forwarding unit for data forwarding between stages and a hazard detection unit for data and control hazards. 

With respect to the base version, this DLX sports:
- Data forwarding between stages for higher instruction throughput
- Control and data dependencies hazard detection
- Extended instruction set: instructions for unsigned operands, set true on various conditions (equality, inequality, great or less than and more), JR for jumping to address pointed by a register
- Double frequency write-read register file that is capable of reading in the first half of a c.c. and writing in the second one
- Additional custom synthesis and simulation scripts

Other information can be found inside the [report](report.pdf) pdf.

## Group Info

Group 52
- Edoardo Manfredi
- Lorenzo Ruotolo
- Agostino Saviano
