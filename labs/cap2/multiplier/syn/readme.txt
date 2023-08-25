# 8-BIT BOOTH MULTIPLIER

## Top 10 Worst Paths
What changes between the timing of the same path is the falling/rising edge

## Unconstrained Design

Critical Path: from B[1] to P[7]
Max Delay: 0.88
Desired Max Delay: 80% of 0.88 -> 0.70

## Constrained Design

Critical Path: from B[1] to P[7]
Max Delay: 0.69
Slack: 0.01

When retrying with a Desired Max Delay value of 0.60, the resulting Max Delay was 0.63, then the synthetizer should not be capable to respect a Max Delay lower than 0.63.


# 32-BIT BOOTH MULTIPLIER

## Unconstrained Design

Critical Path: from B[1] to P[32]
Max Delay: 4.07
Desired Max Delay: 80% of 4.07 -> 3.27

## Constrained Design

Critical Path: from B[0] to P[31]
Max Delay: 3.27
Slack: -0.14 (Violated)

The synthetizer was not able to respect the Desired Max Delay of 4.07.
