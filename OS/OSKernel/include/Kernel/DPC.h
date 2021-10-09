fnptr DPCFunction { context1 context2 -- }

// WARNING: changing the offset of the Next field may break optimized asm
// routines

struct KeDPC
	4 Next
	4 Function
	4 Context1
	4 Context2
	4 Enqueued
endstruct

const DPCHIGHIMPORTANCE 1
const DPCLOWIMPORTANCE 2

extern KeDPCEnqueue { context1 context2 importance dpc -- }
extern KeDPCDispatchQueue { rs -- }
extern KeDPCInitialize { function dpc -- ok }

externptr KeDPCActive
externptr KeDPCListHead