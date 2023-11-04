# Initialize variables
    addi    r1, r0, 420 # Initialize r1 with 7 (first multiplier)
    addi    r2, r0, 69  # Initialize r2 with 5 (second multiplier)
    addi    r3, r0, 0   # Initialize r3 to store the result (initialize to 0)

# Multiplication loop
mult_loop:
# Check if the first multiplier (r1) is equal to 0
    beqz    r1, mult_done

# Check the least significant bit of the first multiplier
    andi    r4, r1, 1 # r4 = r1 & 1

# If the least significant bit is 1, add the second multiplier to the result
    beqz    r4, skip_add
    add     r3, r3, r2 # r3 += r2

skip_add:
# Right shift the first multiplier (r1) by 1
    srli    r1, r1, 1

# Left shift the second multiplier (r2) by 1
    slli    r2, r2, 1

# Repeat the loop
    j       mult_loop

mult_done:
    j       mult_done
# The result is in r3
