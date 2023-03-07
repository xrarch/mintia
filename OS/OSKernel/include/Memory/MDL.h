struct MmMDLHeader
	4 VirtualAddress
	4 MappedAddress

	4 Length
	4 Flags

	4 QuotaBlock

	4 Process
endstruct

const MMMDL_MODIFIED  1
const MMMDL_PINNED    2
const MMMDL_MAPPED    4
const MMMDL_ZONEMDL   8
const MMMDL_DONTUNMAP 16
const MMMDL_DONTUNPIN 32
const MMMDL_PAGEIN    64
const MMMDL_FREE      128

extern MmMDLInitialize { length vaddr kflags mdl -- }

extern MmMDLGetSize { vaddr length -- size }

extern MmMDLAllocate { length vaddr kflags -- mdl ok }
extern MmMDLAllocateWithQuota { length vaddr kflags -- mdl ok }
extern MmMDLFree { mdl -- }
extern MmMDLFreeComplete { mdl -- }

extern MmMDLPin { lockforwrite mdl -- ok }
extern MmMDLUnpin { mdl -- }

extern MmMDLMap { mdl -- ok }
extern MmMDLUnmap { mdl -- }

extern MmMDLFlush { offset length write dma mdl -- }

externptr MmPinnedPagesLimit
externptr MmPinnedPagesCount