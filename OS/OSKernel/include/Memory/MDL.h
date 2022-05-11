struct MmMDLHeader
	4 VirtualAddress
	4 Length
	4 Pages
	4 Flags
	4 Process

	4 MappedAddress
endstruct

const MMMDL_PINNED   1
const MMMDL_MAPPED   2
const MMMDL_MODIFIED 4

extern MmMDLInitialize { mode length vaddr mdl -- }

extern MmMDLGetSize { vaddr length -- size }

extern MmMDLPin { lockforwrite mdl -- ok }
extern MmMDLUnpin { mdl -- }

extern MmMDLMap { mdl -- ok }
extern MmMDLUnmap { mdl -- }

externptr MmPinnedPagesLimit
externptr MmPinnedPagesCount