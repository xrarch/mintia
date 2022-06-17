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
endstruct

const MMMDL_MODIFIED 4

extern MmMDLInitialize { mode length vaddr mdl -- }

extern MmMDLGetSize { vaddr length -- size }

extern MmMDLAllocate { mode length vaddr kflags -- mdl ok }

extern MmMDLSplit { vaddr length srcmdl destmdl -- }

extern MmMDLPin { lockforwrite mdl -- ok }
extern MmMDLUnpin { mdl -- }

extern MmMDLMap { mdl -- ok }
extern MmMDLUnmap { mdl -- }

extern MmMDLFlush { kflags write dma mdl -- }

externptr MmPinnedPagesLimit
externptr MmPinnedPagesCount