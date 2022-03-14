struct MmMDLHeader
	4 VirtualAddress
	4 Length
	4 Flags

	4 Process
	4 MappedAddress
endstruct

const MDLFLAG_LOCKED 1
const MDLFLAG_MAPPED 2