.section text

HALCPUHalt:
.global HALCPUHalt
	ret

HALfox32Reset:
.global HALfox32Reset
	jmp  0xF0000000
	ret