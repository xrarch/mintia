fnptr MmEvictionFunction { pfdbe -- }

// should be kept in sync with IOPageFrameEntryCache,
// and the page frame entries below
struct MmPageFrameEntryEvictable
	4 Next
	4 Prev
	1 EvictionFlagsB  1 EvictionTypeB  2 ReferencesI
	4 Context0
	4 Context1
	4 Context2
	4 Context3
	4 Context4
endstruct

struct MmPageFrameEntryAnonymous
	4 Next
	4 Prev
	1 EvictionFlagsB  1 EvictionTypeB  2 ReferencesI
	4 SwapPTE
	4 PrototypePTE
	4 Process        // for reclaiming DEMANDZERO private pages.
	4 VirtualAddress // for reclaiming DEMANDZERO private pages.
	4 Context3
endstruct

struct MmPageFrameEntryPageTable
	4 Next
	4 Prev
	1 EvictionFlagsB  1 EvictionTypeB  2 ReferencesI
	4 SwapPTE
	4 PrototypePTE
	4 PTECountTableEntry
	4 HoldCount
	4 PDENumber
endstruct

struct MmPageFrameEntryWaitable
	4 EventBlock
	4 Context1
	1 EvictionFlagsB  1 EvictionTypeB  2 ReferencesI
	4 Context2
	4 Context3
	4 Context4
	4 Context5
	4 Context6
endstruct

const MMEVICTFLAG_MODIFIED   1
const MMEVICTFLAG_DELETED    2
const MMEVICTFLAG_PRIVATE    16
const MMEVICTFLAG_WORKINGSET 32 // indicates that a page should be considered
                                // for working set accounting when inserted or
                                // removed from an evictable list.
const MMEVICTFLAG_VALID      64 // file cache
const MMEVICTFLAG_PAGETABLE  64 // page table (reused bit from filecache
                                // because that bit will NEVER be on in an
                                // anonymous page unless it is a pagetable.)
const MMEVICTFLAG_IOINPROGRESS 128

const MMEVICTTYPE_FILE       0
const MMEVICTTYPE_ANON       1

extern MmEvictablePageGet { flags evictabletype priority -- pfdbe pfn ok }
extern MmEvictablePageDelete { pfdbe -- }
extern MmEvictablePageDereference { pfdbe -- oldcount }
extern MmEvictablePageReference { pfdbe -- oldcount }
extern MmEvictablePageRemove { pfdbe -- }
extern MmEvictablePageInsert { pfdbe -- }

extern MmEvictablePageModify { pfdbe process -- }

extern MmEvictSinglePage { -- pfdbe ok }

struct MmEvictablePageEvent
	KeEvent_SIZEOF Event
	4 References
endstruct

extern MmEvictablePageWait { pri pfdbe -- ok }
extern MmEvictablePageSatisfy { pfdbe -- }
extern MmEvictablePageStartIO { pfdbe -- }

externptr MmModifiedPageListHead
externptr MmModifiedPageListTail

externptr MmModifiedPageCount
externptr MmModifiedFilePageCount

externptr MmEvictablePageListHead
externptr MmEvictablePageListTail

externptr MmEvictablePageCount

externptr MmModifiedPageMaximum
externptr MmModifiedPageMinimum