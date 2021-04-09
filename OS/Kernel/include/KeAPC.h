fnptr APCFunctionNormal { context1 context2 -- }

fnptr APCFunctionKernel { apc normalfunc context1 context2 -- }

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

extern KeAPCDispatchQueue { -- }