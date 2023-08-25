# Multiplier Informations
 
In our case the Booth Multiplier was a totally combinational circuit, 
so the constraint about the Clock was removed since it seemed unnecessary.

As a consequence, also the 5ns delay cosntraint from all the inputs to all
the outputs was also changed to a less strict 10ns delay, since it seemed
more feasible for the Multiplier (the unconstrained delay was above 8ns)
and there was no Clock imposing a lower delay.