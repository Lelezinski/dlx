# CAP4 README

## Instrucions

All the implemented instructions can be found inside myTypes.vhd alongside all the necessary constants used in the simulation.

The DataPath and the Control Word format considered are the one shown in the lab pdf, with some necessary assumptions to make all the implementations possible:

- The first register of the register file implements the ZERO register, a register that is always at value zero. This is important since there is no way to actually by-pass the ALU when an arithmetic operation is not needed (like in the S_REG1 and S_REG2), so a sum between a value and zero is always possible.

- The RD signal that goes to the address_w port of the register file in the last stage can take as input also the R1 and R2 part of the instruction word in case of I-Type instructions. This is necessary since several I-Type instructions also need to store inside the register file and cannot use the R3 part.

- L_MEM1 and L_MEM2 are eachother's duals, since L_MEM1 would be unfeasible in the way it is descripted in the lab pdf with this DataPath (INP1 and RA cannot be summed since they comes from the same MUX).


## CU Implementations

The three types of CU implementations are commented inside their respective vhd files.