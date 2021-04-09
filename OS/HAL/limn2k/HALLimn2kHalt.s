.section text

HALCPUHalt:
.global HALCPUHalt
	mov t0, sp

	; create a dumb stack frame so that we can stacktrace out of here properly
	push lr
	push t0

	hlt

	add sp, sp, 8

	ret