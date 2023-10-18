		addi    r1, r0, #1	# 1
		addi	r2, r1, #4	# 5
		add		r3, r0, r0	# 0
loop:
		sw		0(r2), r1
		addi	r1, r1, 69	# DISCARDED
		lw		r1, 0(r2)

		addi	r1, r1, #1	# r1++

		sw		0(r7), r1
		lw		r1, 0(r7)	# DISCARDED 

		subi	r2, r2, #1	# r2--
		bnez	r2, loop
forever:
        jal     forever