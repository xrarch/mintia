struct MmMDLHeader
	1 ModeB
	1 PriorityBoostB
	2 IOCountI

	4 VirtualAddress
	4 Length  // returns the number of bytes that were actually transferred.
	4 Pages   // unchanging, always describes how many pages are in the list.
	4 Flags

	4 MappedAddress

	4 Status
	4 Event
	4 ParentMDL

	4 FileObject
	4 CompletionMessage
	4 QuotaBlock

	4 CompleteRoutine

	KeAPC_SIZEOF CompletionAPC

	4 Context1
	4 Context2
	4 Context3

	32 DriverGoWild
endstruct

fnptr MmMDLCompleteRoutine { mdl -- }

const MMMDL_MODIFIED   4
const MMMDL_DELETE     8
const MMMDL_COMPLETE   16
const MMMDL_PINNED     32
const MMMDL_MAPPED     64
const MMMDL_DONTUNPIN  128
const MMMDL_DONTUNMAP  256

const MMMDL_FLAGS_NOT_TO_INHERIT MMMDL_DELETE

extern MmMDLInitialize { mode length vaddr mdl -- }

extern MmMDLGetSize { vaddr length -- size }

extern MmMDLAllocate { extraspace mode length vaddr kflags -- extra mdl ok }
extern MmMDLAllocateWithQuota { extraspace mode length vaddr kflags -- extra mdl ok }
extern MmMDLFree { mdl -- }

extern MmMDLSplit { vaddr length srcmdl destmdl -- }

extern MmMDLPin { lockforwrite mdl -- ok }
extern MmMDLUnpin { mdl -- }

extern MmMDLMap { mdl -- ok }
extern MmMDLUnmap { mdl -- }

extern MmMDLFlush { kflags write dma mdl -- }

extern MmMDLComplete { status priboost mdl -- }

externptr MmPinnedPagesLimit
externptr MmPinnedPagesCount