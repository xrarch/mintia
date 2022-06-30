struct MmMDLHeader
	4 VirtualAddress
	4 Length
	4 Pages
	4 Flags
	4 Process
	4 Mode

	4 PinCount
	4 MapCount

	4 MappedAddress

	4 Status
	4 PriorityBoost
	4 Event
	4 ParentMDL
	4 IOCount

	4 CompleteRoutine
	4 Context1
	4 Context2
	4 Context3

	32 DriverGoWild
endstruct

fnptr MmMDLCompleteRoutine { mdl -- }

const MMMDL_MODIFIED   4
const MMMDL_DELETE     8
const MMMDL_COMPLETE   16

const MMMDL_FLAGS_NOT_TO_INHERIT MMMDL_DELETE

extern MmMDLInitialize { mode length vaddr mdl -- }

extern MmMDLGetSize { vaddr length -- size }

extern MmMDLAllocate { mode length vaddr kflags -- mdl ok }

extern MmMDLSplit { vaddr length srcmdl destmdl -- }

extern MmMDLPin { lockforwrite mdl -- ok }
extern MmMDLUnpin { mdl -- }

extern MmMDLMap { mdl -- ok }
extern MmMDLUnmap { mdl -- }

extern MmMDLFlush { kflags write dma mdl -- }

extern MmMDLComplete { status priboost mdl -- }

externptr MmPinnedPagesLimit
externptr MmPinnedPagesCount