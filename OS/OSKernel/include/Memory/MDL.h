struct MmMDLHeader
	4 VirtualAddress
	4 Length
	4 Flags
	4 Process

	4 MappedAddress
endstruct

const MMMDL_PINNED   1
const MMMDL_MAPPED   2
const MMMDL_MODIFIED 4

extern MmMDLPin { lockforwrite mdl -- ok }