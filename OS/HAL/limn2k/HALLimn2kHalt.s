HALCPUHalt:
.global HALCPUHalt
	mov t0, sp

	push lr
	push t0

	hlt

	pop t0
	pop lr

	ret