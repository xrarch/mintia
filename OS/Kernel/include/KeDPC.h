fnptr DPCFunction { -- }

struct DPC
	4 Next
	4 Function
	4 Importance
endstruct

const DPCHIGHIMPORTANCE 1
const DPCLOWIMPORTANCE 2

extern KeDPCQueue { dpc -- }

extern KeDPCDispatchQueue { rs -- }