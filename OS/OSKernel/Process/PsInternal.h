struct PsiProcessActivationBlock
	KeEvent_SIZEOF Event
	4 References
endstruct

extern PsiReaperWorker { context1 context2 -- }

extern PsiThreadExit { -- }

extern PsiProcessObjectDelete { object -- }
extern PsiThreadObjectDelete { object -- }

extern PsiJobInit { -- }

extern PsiJobInherit { destprocessobject srcprocessobject -- ok }
extern PsiJobIndicateProcessExit { processobject -- }