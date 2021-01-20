.extern HALLimn2kExceptionVector
.extern HALLimn2kExceptionRefillVector

HALLimn2kSavedEV:
	.dl 0

HALLimn2kSavedTLBV:
	.dl 0

HALCPUExit:
.global HALCPUExit
	lui rs, 0x80000000

	la t0, HALLimn2kSavedEV
	l.l ev, t0, zero

	la t0, HALLimn2kSavedTLBV
	l.l tlbv, t0, zero

	ret

; code sp --
HALLimn2kExit:
.global HALLimn2kExit
	mov v0, a1
	mov sp, a0
	pop lr

	ret

HALCPUInit:
.global HALCPUInit
	la t0, HALLimn2kSavedEV
	s.l t0, zero, ev

	la t0, HALLimn2kSavedTLBV
	s.l t0, zero, tlbv

	lui rs, 0x80000000
	
	la ev, HALLimn2kExceptionVector
	la tlbv, HALLimn2kExceptionRefillVector

	mov badaddr, zero

	la t0, -1
	la t1, -1
	ftlb t0, t1
	
	ret