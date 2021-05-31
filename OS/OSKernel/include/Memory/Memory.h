struct MmHeapBlock
	4 Magic
	4 Next
	4 Prev
	4 BucketIndex
	4 Tag
endstruct

const HEAPBLOCKMAGIC 0xC4FED33D

const HEAPBLOCKFREE 'FREE'

const BUCKETSPO2START 5 // start at 2^5=32 bytes
const BUCKETS 23 // 2^(23+5=28)=256MB heap max

struct MmPageFrameEntry
	4 R1
	4 PFN
	4 R3
	4 R4
	4 R5
	4 R6
	4 R7
	4 R8
endstruct

struct MmPageFrameEntryFree
	4 Next
	4 PFN
	4 R2
	4 R3
	4 R4
	4 R5
	4 R6
	4 R7
endstruct

extern MmUsageDump { -- }

extern MmInitPhase0 { -- }

extern MmInitPhase1 { -- }

extern MmPageAlloc { -- pfdbe pfn ok }

extern MmHeapCheck { -- }

extern MmHeapDumpBuckets { -- }

extern MmHeapDumpBlockInfo { block -- }

extern MmAllocWithTag { bytes tag -- ptr ok }

extern MmFree { ptr -- }

extern MmBlockChargeGet { block -- charge }

externptr MmPageFrameDatabase

externptr MmPageFreeListHead

externptr MmPageFreeCount

externptr MmHeapBuckets

externptr MmHeapSize

externptr MmHeapBytesFree

externptr MmHeap

externptr MmInited