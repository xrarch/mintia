extern MmProcessInitialize { sectionobject process -- ok }
extern MmProcessUninitialize { process -- ok }

extern MmProcessSwapOut { process -- }
extern MmProcessSwapIn { process -- }

extern MmProcessChargePageTables { startva endva process -- ok }
extern MmProcessUnchargePageTables { process -- }

extern MmThreadInitialize { thread -- ok }
extern MmThreadUninitialize { thread -- ok }

struct MmProcessHeader
	4 WorkingSetSize
	4 WorkingSetMinimum
	4 WorkingSetMaximum
	4 WorkingSetQuota
	4 WorkingSetTrimFaultCount

	4 WorkingSetFreeListHead
	4 WorkingSetMaximumIndex
	4 WorkingSetReplacementIndex
	4 WorkingSetLastReplacedVirtual
endstruct

extern MmProcessHeaderCreate { process -- phdr pfdbe ok }
extern MmProcessHeaderDestroy { process -- }

extern MmProcessHeaderReference { pri process -- ok }
extern MmProcessHeaderDereference { process -- }