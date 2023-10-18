# Set constants using registers
    addi    r21, r0, 20 # array_size
    addi    r23, r0, 0 # array_base

# Initialize the array with values (not initially ordered)
    addi    r2, r23, 0 # Initialize array pointer
    addi    r4, r0, 31 # Initialize a constant value for initialization

init_loop:
    beqz    r4, init_done
    sw      0(r2), r4 # Store the constant value in the array

    addi    r2, r2, 1    # Move to the next element in the array
    subi    r4, r4, 1    # Decrement the constant value
    j       init_loop

init_done:
    nop

# Main program
    addi    r1, r22, 0 # Load stack pointer
    addi    r2, r23, 0 # Load array pointer
    add     r3, r2, r21 # Calculate the end of the array
    subi    r3, r3, 1  # Adjust to the last element

# Call quicksort
    jal     quicksort

# Infinite loop
infinite_loop:
    j       infinite_loop

# Quicksort subroutine
quicksort:
# Check if the array has 1 or 0 elements (base case)
    sub     r4, r3, r2
    beqz    r4, quicksort_done
    add     r5, r4, r21

# Partition the array
    add     r6, r2, r3
    srli    r6, r6, 1 # Calculate the pivot index
    lw      r7, 0(r6) # Load the pivot value

quicksort_partition:
    lw      r8, 0(r2)
    sub     r9, r8, r7
    bnez    r9, quicksort_partition_continue
    addi    r2, r2, 1
    j       quicksort_partition

quicksort_partition_continue:
    lw      r10, 0(r3)
    addi    r3, r3, -1
    add     r11, r10, r7
    beqz    r11, quicksort_swap
    j       quicksort_partition_continue

quicksort_swap:
    sw      0(r2), r10
    sw      0(r3), r8

    addi    r2, r2, 1
    addi    r3, r3, -1

# Recursive calls
    jal     quicksort
    jal     quicksort

quicksort_done:
    jr      r31
