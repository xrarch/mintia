fnptr MmEvictionFunction { pfdbe -- evicted ok }

// should be kept in sync with IOPageFrameEntryCache
struct MmPageFrameEntryEvictable
	4 Next
	4 PFN
	4 Prev
	4 EvictionFlags
	4 EvictionFunction
	4 References
	4 Context2
	4 Context3
	4 Context4
	4 Context5
	4 Context6
	4 Context7
	4 Context8
	4 Context9
	4 Context10
	4 Context11
endstruct

const MMEVICTFLAG_FAST 1

extern MmEvictionWorker { context1 context2 -- }

extern MmEvictablePageAlloc { flags evictionfunc priority -- pfdbe pfn ok }

extern MmPageEvict { pfdbe -- evicted ok }

extern MmEvictablePageDereference { pfdbe -- oldcount }

extern MmEvictablePageReference { pfdbe -- oldcount }

externptr MmEvictablePageListHead

externptr MmEvictablePageListTail

externptr MmEvictableFastPageListHead

externptr MmEvictableFastPageListTail