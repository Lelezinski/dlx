# 32-BIT P4 ADDER

The synthetisized version of the P4 Adder refers to its 32-bit implementation with 8 Sum Generator blocks and Carry Select Blocks of 4-bit width.

## Top 10 Worst Paths
What changes between the timing of the same path is the falling/rising edge

## Unconstrained Design

Critical Path: from A[15] to Cout
Max Delay: 0.45
Desired Max Delay: 80% of 0.45 -> 0.36

## Constrained Design

Critical Path: from B[32] to Cout
Max Delay: 0.38
Slack: -0.02 (VIOLATED)

The synthetizer was not able to respect the Desired Max Delay of 0.38.
