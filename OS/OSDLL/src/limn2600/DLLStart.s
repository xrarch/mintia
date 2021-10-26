.section text

__OSDLLStart:
.global __OSDLLStart
	la   t0, nonsense
	mov  t0, long [t0]

	la   t1, nonsense2
	mov  t1, byte [t1]

.loop:
	b    .loop

.section data

nonsense:
	.dl 0xABCDEF00

.section bss

nonsense2:
	.dl 0