fnptr MmEvictionFunction { pfdbe -- dropped evicted ok }
fnptr MmReferenceFunction { oldcount pfdbe -- }
fnptr MmDereferenceFunction { oldcount pfdbe -- }

struct MmEvictableFunctions
	4 EvictionFunc
	4 ReferenceFunc
	4 DereferenceFunc
	4 Reserved1
	4 Reserved2
	4 Reserved3
	4 Reserved4
	4 Reserved5
endstruct

// should be kept in sync with IOPageFrameEntryCache,
// and the page frame entries below
struct MmPageFrameEntryEvictable
	4 Next
	4 PFN
	4 Prev
	4 EvictionFlags
	4 EvictableFunctions
	4 References
	4 WorkingSetIndexHint
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

struct MmPageFrameEntrySlab
	4 Next
	4 PFN
	4 Prev
	4 EvictionFlags
	4 EvictableFunctions
	4 References
	4 WorkingSetIndexHint
	4 Context3
	4 Context4
	4 Context5
	4 Context6
	4 Context7
	4 Context8
	4 BucketIndex
	4 PoolListNext
	4 PoolListPrev
endstruct

struct MmPageFrameEntryAnonymous
	4 Next
	4 PFN
	4 Prev
	4 EvictionFlags
	4 EvictableFunctions
	4 References
	4 WorkingSetIndexHint
	4 Context3
	4 Context4
	4 Context5
	4 Context6
	4 Context7
	4 Context8
	4 SwapPageNumber
	4 SectionObject
	4 PrototypePTE
endstruct

const MMEVICTFLAG_FAST       1
const MMEVICTFLAG_COW        16

const MMEVICTFLAG_WORKINGSET 32 // indicates that a page should be considered
                                // for working set accounting when inserted or
                                // removed from an evictable list.

extern MmEvictionWorker { context1 context2 -- }
extern MmEvictablePageAlloc { flags evictablefuncs priority -- pfdbe pfn ok }
extern MmEvictablePageDereference { pfdbe -- oldcount }
extern MmEvictablePageReference { pfdbe -- oldcount }
extern MmEvictablePageRemove { pfdbe -- }
extern MmEvictablePageRemoveForDeletion { pfdbe -- }
extern MmEvictablePageInsert { pfdbe -- }

extern MmEvictFromList { trycount fast listhead -- succeedcount done ok }
extern MmEvictSinglePage { canbeslow -- pfdbe ok }

externptr MmEvictablePageListHead
externptr MmEvictablePageListTail
externptr MmEvictableFastPageListHead
externptr MmEvictableFastPageListTail

externptr MmEvictablePageCount
externptr MmEvictableFastPageCount
externptr MmEvictableSlowPageCount

externptr MmSwappiness