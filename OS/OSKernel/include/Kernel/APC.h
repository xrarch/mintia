fnptr KeAPCFunctionNormal { context1 context2 -- }

// normalfunc, context1, and context2 are passed by ref here!!
fnptr KeAPCFunctionSpecial { normalfunc context1 context2 apc -- }

struct KeAPC
	4 Thread

	4 Prev
	4 Next

	4 FunctionExit // called if thread terminates before APC is executed
	4 FunctionSpecial
	4 FunctionNormal

	4 Context1
	4 Context2

	4 Enqueued
endstruct

extern KeAPCInitialize { thread exitfunc specialfunc normalfunc apc -- }
extern KeAPCDequeue { apc -- ok }
extern KeAPCEnqueue { context1 context2 priboost apc -- ok }
extern KeAPCDispatchQueue { -- }