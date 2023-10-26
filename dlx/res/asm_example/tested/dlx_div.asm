    addi    r1, r0, 70  # Divisor
    addi    r2, r0, 6   # Dividend
    xor     r3, r3, r3  # Quotient
divide:
    slt     r5, r1, r2
    bnez    r5, finish
    sub     r1, r1, r2
    addi    r3, r3, 1
    j       divide
finish:
    add     r4, r0, r1  # DONE Flag
    nop                 
	
    # R3 Has the Quotient
    # While R1 has the Remainder
forever:
	j		forever