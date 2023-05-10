# WINDOWED REGISTER FILE

For the windowed version of the Register File, the behavioral architecture of the non-windowed version was modified to add the windowing logic by adding: 

- CALL / RETURN logic driven by the microprocessor
- CWP and SWP pointers to track the Current Window and the last Window that has been spilled in memory [*] [**]
- CANSAVE and CANRESTORE registers to track when a SPILL / FILL is required during a CALL / RETURN [*]
- The memory bus containing all the signals used to SPILL and FILL
- A simple FSM to distinguish between the three states: NORMAL (Read and Write registers belonging to the same function), SPILLING and FILLING. This is needed since the last two need more than one clock cycle to complete
- The needed code to correctly translate the address and distinguish between IN/LOCALS/OUT and GLOBALS of the Current Window

[*] In order to simplify the address translation (Actual Address = CWP), a design choice was made to let CWP point to the first IN register of the Current Window, while the SWP points to the first OUT register of the last spilled window. 
This forces us to SPILL when CWP is two windows behind SWP (CANSAVE = 1) and a CALL is made, so that after the spilling the function can modify the OUT registers of its Current Window without overwriting the IN registers of the old window that has been spilled.
Finally, it also forces us to FILL when CWP is the same of SWP (CANRESTORE = -1) and a RETURN is made, for the same reason described above.

[**] When FILLING, SWP will be decremented by 1 each clock cycle to loop through all the 2 * N registers that need to be filled, until its LSB part related to the addressing of registers inside of the Current Window will be all 0's. 
This is similiar in the SPILLING case, but (SWP - 1) is used in order to not lose the first register of the Current Window.