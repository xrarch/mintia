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
	4 SwapPageNumber
	4 PrototypePTE
	4 Context1
	4 Context2
	4 Context3
endstruct

struct MmPageFrameEntryPageTable
	4 Next
	4 Prev
	1 EvictionFlagsB  1 EvictionTypeB  2 ReferencesI
	4 SwapPageNumber
	4 PrototypePTE
	4 Context1
	4 HoldCount
	4 PDENumber
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

const MMEVICTTYPE_FILE       0
const MMEVICTTYPE_ANON       1

extern MmEvictablePageAlloc { flags evictabletype priority -- pfdbe pfn ok }
extern MmEvictablePageDelete { pfdbe -- }
extern MmEvictablePageDereference { pfdbe -- oldcount }
extern MmEvictablePageReference { pfdbe -- oldcount }
extern MmEvictablePageRemove { pfdbe -- }
extern MmEvictablePageInsert { pfdbe -- }

extern MmEvictablePageModify { pfdbe process -- }

extern MmEvictSinglePage { -- pfdbe ok }

externptr MmModifiedPageListHead
externptr MmModifiedPageListTail

externptr MmModifiedPageCount

externptr MmEvictablePageListHead
externptr MmEvictablePageListTail

externptr MmEvictablePageCount

externptr MmModifiedPageMaximum
externptr MmModifiedPageMinimum