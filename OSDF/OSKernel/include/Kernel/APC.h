fnptr KeAPCFunctionNormal { context1 context2 -- }

// normalfunc, context1, and context2 are passed by ref here!!
fnptr KeAPCFunctionSpecial { normalfunc context1 context2 apc -- }

struct KeAPC
	4 Thread

	4 Prev
	4 Next

	4 FunctionSpecial
	4 FunctionNormal

	4 Context1
	4 Context2

	1 EnqueuedB
	1 ModeB
	1 Reserved1B
	1 Reserved2B
endstruct

extern KeAPCInitialize { thread specialfunc normalfunc apc -- }
extern KeUserAPCInitialize { thread kernelfunc userfunc special apc -- }
extern KeAPCDequeue { apc -- ok }
extern KeAPCEnqueue { context1 context2 priboost apc -- ok }
extern KeAPCDispatchQueueUser { dispatchfunc trapframe -- }