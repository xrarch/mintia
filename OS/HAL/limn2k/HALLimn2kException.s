HALLimn2kExceptionVector:
.global HALLimn2kExceptionVector
	rfe

HALLimn2kExceptionRefillVector:
.global HALLimn2kExceptionRefillVector
	rfe

HALCPUGetSP:
.global HALCPUGetSP
	mov v0, sp
	ret