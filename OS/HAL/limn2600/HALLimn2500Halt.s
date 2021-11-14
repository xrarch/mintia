.section text

HALCPUHalt:
.global HALCPUHalt
	subi sp, sp, 4
	mov  long [sp], lr

	hlt

	addi sp, sp, 4
	ret

HALLimn2500Reset:
.global HALLimn2500Reset
	mtcr evec, zero
	.dl  0 ;this is an invalid instruction
.wait:
	b    .wait