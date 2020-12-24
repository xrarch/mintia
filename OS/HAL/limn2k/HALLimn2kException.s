HALLimn2kExceptionVector:
.global HALLimn2kExceptionVector
	rfe

HALLimn2kExceptionRefillVector:
.global HALLimn2kExceptionRefillVector
	rfe

; -- sp
HALCPUGetSP:
.global HALCPUGetSP
	mov v0, sp
	ret

; -- rs
HALCPUInterruptDisable:
.global HALCPUInterruptDisable
	mov v0, rs
	bclri rs, rs, 3
	bclri rs, rs, 1
	ret

; rs --
HALCPUInterruptRestore:
.global HALCPUInterruptRestore
	mov rs, a0
	ret

; --
HALCPUInterruptEnable:
.global HALCPUInterruptEnable
	bseti rs, rs, 1
	ret