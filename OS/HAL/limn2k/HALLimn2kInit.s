.extern HALLimn2kExceptionVector
.extern HALLimn2kExceptionRefillVector

.section text

HALLimn2kSavedEV:
	.dl 0

HALLimn2kSavedTLBV:
	.dl 0

HALCPUExit:
.global HALCPUExit
	lui rs, 0x80000000

	la t0, HALLimn2kSavedEV
	mov ev, long [t0]

	la t0, HALLimn2kSavedTLBV
	mov tlbv, long [t0]

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
	mov long [t0], ev

	la t0, HALLimn2kSavedTLBV
	mov long [t0], tlbv

	lui rs, 0x80000000
	
	la ev, HALLimn2kExceptionVector
	la tlbv, HALLimn2kExceptionRefillVector

	mov badaddr, zero

	la t0, -1
	la t1, -1
	ftlb t0, t1
	
	ret