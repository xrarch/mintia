const MMSLABPO2START 5
const MMSLABBUCKETS  7

const MMSLABSWIFTMAGIC 0x1CCD
const MMSLABFREEMAGIC  0xE332

struct MmPoolSlab
	2 Magic
	1 BucketIndex
	1 Reserved
	4 TagOrNextFree
endstruct

externptr MmPoolBytesUsed

externptr MmSlabBytesUsedExternally
externptr MmSlabBytesUsedInternally

extern MmSlabAlloc { bytes tag -- ptr ok }
extern MmSlabFree  { ptr -- }