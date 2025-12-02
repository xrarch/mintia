.section text

HALCPUHalt:
.global HALCPUHalt
	subi sp, sp, 4
	mov  long [sp], lr

	hlt

	addi sp, sp, 4
	ret

HALXr17032Reset:
.global HALXr17032Reset
	mtcr eb, zero
	.dl  0 //this is an invalid instruction
.wait:
	b    .wait