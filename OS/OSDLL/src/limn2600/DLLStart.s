.extern DLLMain

.section text

__OSDLLStart:
.global __OSDLLStart
	jal  DLLMain

.loop:
	b    .loop

.section data

nonsense:
	.dl 0

.section bss

nonsense2:
	.dl 0