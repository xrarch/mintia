.section text

HALCPUHalt:
.global HALCPUHalt
	mov  t0, sp

	; create a dumb stack frame so that we can stacktrace out of here properly
	subi sp, sp, 8
	mov  long [sp + 4], lr
	mov  long [sp], t0

	hlt

	addi sp, sp, 8

	ret

HALLimn2500Reset:
.global HALLimn2500Reset
	mtcr evec, zero
	.dl  0 ;this is an invalid instruction
.wait:
	b    .wait

.wait:
	b    .wait