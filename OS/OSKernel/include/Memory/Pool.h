const MMSLABPO2START 5
const MMSLABBUCKETS  7

const MMSLABSWIFTMAGIC 0x1CCD
const MMSLABFREEMAGIC  0xE332

struct MmPoolSlab
	2 Magic
	1 BucketIndex
	1 Reserved
	4 TagOrNextFree
	4 PrevFree
endstruct

externptr MmPoolBytesUsed

extern MmPoolSpaceReserve { pagesneeded -- offset ok }
extern MmPoolSpaceRelease { pages offset -- }

externptr MmSlabBytesUsedExternally
externptr MmSlabBytesUsedInternally

extern MmSlabAlloc { bytes tag flags -- ptr ok }
extern MmSlabFree  { ptr -- }

extern MmPoolPageRemove { pfdbe -- }
extern MmPoolPageInsert { pfdbe -- }
extern MmPoolDump { -- }

// heap stuff

const MMHEAPSWIFTMAGIC  0x1DC0
const MMHEAPFREEMAGIC   0xE433

const MMHEAPNORMAL      0
const MMHEAPMSL2        1
const MMHEAPMS          2

struct MmAllocatedHeapBlock
	1 BucketIndex
	1 LastBucketIndex
	2 Magic // bottom 4 bits of magic are used to store heap level
endstruct

struct MmHeapBlock
	1 BucketIndex
	1 LastBucketIndex
	2 Magic
	4 NextFree
	4 PrevFree
endstruct