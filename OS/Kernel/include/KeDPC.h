fnptr DPCFunction { context1 context2 -- }

struct DPC
	4 Next
	4 Function
	4 Importance
	4 Context1
	4 Context2
endstruct

const DPCHIGHIMPORTANCE 1
const DPCLOWIMPORTANCE 2

extern KeDPCQueue { dpc -- }

extern KeDPCDispatchQueue { rs -- }

extern KeDPCInitialize { function importance context1 context2 dpc -- ok }