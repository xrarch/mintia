fnptr DPCFunction { context1 context2 -- }

// WARNING: changing the offset of the Next field may break optimized asm
// routines

// do NOT change the size of this
struct KeDPC
	4 Next
	4 Function
	4 Context1
	4 Context2
	4 Enqueued
	4 Reserved1
	4 Reserved2
endstruct

const DPCHIGHIMPORTANCE 1
const DPCLOWIMPORTANCE 2

extern KeDPCEnqueue { context1 context2 importance dpc -- }
extern KeDPCDispatchQueue { rs -- }
extern KeDPCInitialize { function dpc -- }

externptr KeDPCActive
externptr KeDPCListHead