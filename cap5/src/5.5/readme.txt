# Explanation of Advantages and Disadvantages

Analyzing the informations gathered inside both "variation.txt" and "measures.txt", alongside the waveforms inside the four .png files, several conclusion can be made about pros and cons of all the analyzed setups:

1. As expected, the most noticeable difference between HS and LL cells are in the timings and power consumption. Switching cells to their LL counterpart results in lower current peaks on the GND, VDD and load, with values decreasing by up to five times. With that said, the tradeoff consists of both higher rise/fall times and higher delays, with values increasing by up to five times.

2. Those differences are substantially more evident when focusing on the 50fF higher load case. This is expected since having an higher load to drive on the output requires both higher delays (seen in the voltages comparison) and higher peak currents (seen in the currents comparison). 

3. A similar conclusion can be made for the x1/x8 comparison. As a direct consequence of the second point, since the x8 is more capable to drive the 50fF load, the x1 case will show more variance between the HS and LL versions.