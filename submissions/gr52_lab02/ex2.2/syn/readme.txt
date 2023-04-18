[!] When not specified, files refers to the 8-bit synthetized version of the Multiplier.


# 8-BIT BOOTH MULTIPLIER

## Top 10 Worst Paths
What changes between the timing of the same path is the falling/rising edge

## Unconstrained Design

Critical Path: from B[1] to P[15]
Max Delay: 1.97
Desired Max Delay: 80% of 1.97 -> 1.58

## Constrained Design

Critical Path: from B[1] to P[15]
Max Delay: 1.58
Slack: 0.00 (MET)


# 32-BIT BOOTH MULTIPLIER

## Unconstrained Design

Critical Path: from B[1] to P[63]
Max Delay: 8.33
Desired Max Delay: 80% of 8.33 -> 6.67

## Constrained Design

Critical Path: from B[1] to P[63]
Max Delay: 7.44
Slack: -0.77 (Violated)

The synthetizer was not able to respect the Desired Max Delay of 7.44.
