.extern HALLimn2500ExceptionVector

.section text

HALLimn2500SavedEV:
	.dl 0

HALCPUExit:
.global HALCPUExit
	la   t0, HALLimn2500SavedEV
	mov  t0, long [t0]
	mtcr evec, t0

	ret

; code sp --
HALLimn2500Exit:
.global HALLimn2500Exit
	mov  sp, a0
	mov  a0, a1
	
	mov  lr, long [sp]
	addi sp, sp, 4

	ret

HALCPUInit:
.global HALCPUInit
	la   t0, HALLimn2500SavedEV
	mfcr t1, evec
	mov  long [t0], t1

	la   t0, HALLimn2500ExceptionVector
	mtcr evec, t0

	mtcr ebadaddr, zero

	subi t0, zero, 1
	ftlb t0, t0
	
	ret