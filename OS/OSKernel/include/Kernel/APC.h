fnptr APCFunctionNormal { context1 context2 -- }

// normalfunc, context1, and context2 are passed by ref here!!
fnptr APCFunctionKernel { normalfunc context1 context2 apc -- }

struct KeAPC
	4 Thread

	4 APCListPrev
	4 APCListNext

	4 FunctionExit // called if thread terminates before APC is executed

	4 FunctionKernel
	4 FunctionNormal

	4 Context1
	4 Context2

	4 Mode

	4 Enqueued
endstruct

extern KeAPCInitialize { thread exitfunc kernelfunc normalfunc mode apc -- ok }
extern KeAPCDequeue { apc -- ok }
extern KeAPCEnqueue { context1 context2 priboost apc -- ok }
extern KeAPCDispatchQueue { trapframe lastmode -- }