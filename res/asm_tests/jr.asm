    seq     r25, r25, r25 #  r25 <= 1
    sne     r20, r25, r20 #  just to try
    addui   r3, r0, 100
myloop:
    subui   r3, r3, 50
    subui   r3, r3, 1

    add     r1, r1, r25 #  r1 <= 1, 17 , 145
    add     r1, r25, r1 #  r1 <= 2, 18 , 146
    add     r1, r1, r1 #  r1 <= 4, 36 , 292
    add     r1, r1, r1 #  r1 <= 8, 72 , 584
    add     r1, r1, r1 #  r1 <= 16,144, 1168
    xor     r20, r20, r25 #  toggle lsb of r20.
    addi    r6, r0, 4 # SKIP FIRST SUBUI
    addi    r7, r6, myloop # move label into r7
    jr      r7      # jump
