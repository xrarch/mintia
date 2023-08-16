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

extern PsiIdTableLock { alertable -- ok }
extern PsiIdTableUnlock { -- }

extern PsiIdCreate { object -- id ok }
extern PsiIdDelete { id -- }

const PSI_ID_INDEX_SHIFT   8
const PSI_ID_SEQUENCE_MASK 0xFF