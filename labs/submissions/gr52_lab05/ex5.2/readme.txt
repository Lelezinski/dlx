# Explanation of different currents on different nodes in each transition

When the output is falling in the first transition, the current from the load discharges on the GND side NMOS, while some current (around an order of magnitude smaller than the one on GND) also leaks from the VDD side PMOS.

The opposite behavior can be observed on the second transition when the output is rising, since this time the current peak is on the VDD side in order to charge the load, and the small leakage current is on the GND side. 
It can also be noticed that the current peaks are slightly smaller than the first transiction, a difference in the order of some 10's uA. 

As expected, in all cases analyzed the peak current value on both the transitions rises with the load value.