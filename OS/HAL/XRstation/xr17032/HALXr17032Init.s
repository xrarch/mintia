.extern HALXr17032ExceptionVector

.section text

HALXr17032SavedEV:
.global HALXr17032SavedEV
	.dl 0

HALCPUExit:
.global HALCPUExit
	mov  t0, long [HALXr17032SavedEV]
	mtcr evec, t0

	ret

; code sp --
HALXr17032Exit:
.global HALXr17032Exit
	mov  sp, a0
	mov  a0, a1
	
	mov  lr, long [sp]
	addi sp, sp, 4

	ret