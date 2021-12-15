.extern HALLimn2500ExceptionVector

.section text

HALLimn2500SavedEV:
.global HALLimn2500SavedEV
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