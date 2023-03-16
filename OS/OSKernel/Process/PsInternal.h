struct PsiProcessActivationBlock
	KeEvent_SIZEOF Event
	4 References
endstruct

extern PsiReaperWorker { context1 context2 -- }

extern PsiThreadExit { -- }

extern PsiProcessObjectDelete { object -- }
extern PsiThreadObjectDelete { object -- }

extern PsiJobInit { -- }

const PSJOB_REMOVE_TERMINATED 1
const PSJOB_REMOVE_SWITCH     2
const PSJOB_REMOVE_USER       3

extern PsiJobInherit { destprocessobject srcprocessobject -- ok }
extern PsiJobRemoveProcess { cause processobject -- ok }