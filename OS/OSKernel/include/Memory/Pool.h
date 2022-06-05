externptr MmPoolBytesUsed

extern MmPoolSpaceReserve { pagesneeded -- offset ok }
extern MmPoolSpaceRelease { pages offset -- }

extern MmPoolPageRemove { pfdbe -- }
extern MmPoolPageInsert { pfdbe -- }
extern MmPoolDump { -- }

// heap stuff

extern MmHeapChargeBytesGet { bytes -- charge }

extern MmHeapChargeGet { block -- charge }

extern MmHeapAlloc { bytes tag flags -- ptr ok }
extern MmHeapFree { ptr -- }

externptr MmHeapBytesUsedExternally
externptr MmHeapBytesUsedInternally

const MMHEAPSWIFTMAGIC  0x1DC0
const MMHEAPFREEMAGIC   0xE433

const MMHEAPNORMAL      0
const MMHEAPMSL2        1
const MMHEAPMS          2

struct MmAllocatedHeapBlock
	1 BucketIndex
	1 LastBucketIndex
	2 Magic // bottom 4 bits of magic are used to store heap level
	4 Tag
endstruct

struct MmHeapBlock
	1 BucketIndex
	1 LastBucketIndex
	2 Magic
	4 NextFree
	4 PrevFree
endstruct