.extern HALLimn2kExceptionVector
.extern HALLimn2kExceptionRefillVector

HALLimn2kSavedEV:
	.dl 0

HALLimn2kSavedTLBV:
	.dl 0

HALCPUExit:
.global HALCPUExit
	la t0, HALLimn2kSavedEV
	l.l ev, t0, zero

	la t0, HALLimn2kSavedTLBV
	l.l tlbv, t0, zero

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
	
	ret