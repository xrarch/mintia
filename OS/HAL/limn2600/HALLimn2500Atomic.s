.section text

; inc ptr -- oldvalue
HALCPUAtomicIncrement:
.global HALCPUAtomicIncrement
	mfcr t0, rs
	subi t1, zero, 3
	and  t1, t0, t1 ; disable interrupts
	mtcr rs, t1

	mov  t1, long [a0]
	add  t2, t1, a1
	mov  long [a0], t2

	mtcr rs, t0

	mov  a0, t1

	ret

; inc ptr -- oldvalue
HALCPUAtomicDecrement:
.global HALCPUAtomicDecrement
	mfcr t0, rs
	subi t1, zero, 3
	and  t1, t0, t1 ; disable interrupts
	mtcr rs, t1

	mov  t1, long [a0]
	sub  t2, t1, a1
	mov  long [a0], t2

	mtcr rs, t0

	mov  a0, t1

	ret