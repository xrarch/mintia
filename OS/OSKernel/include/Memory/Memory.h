const MMHIGHESTUSERADDRESS  0x7FFEFFFF
// 64kb no-mans-land
const MMLOWESTSYSTEMADDRESS 0x80000000

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
	4 R9
	4 R10
	4 R11
	4 R12
	4 R13
	4 R14
	4 R15
	4 R16
endstruct

struct MmPageFrameEntryFree
	4 Next
	4 PFN
	4 R3
	4 R4
	4 R5
	4 R6
	4 R7
	4 R8
	4 R9
	4 R10
	4 R11
	4 R12
	4 R13
	4 R14
	4 R15
	4 R16
endstruct

extern MmUsageDump { -- }

extern MmInitPhase0 { -- }

extern MmInitPhase1 { -- }

extern MmPageAlloc { priority -- pfdbe pfn ok }

extern MmPageFree { pfn -- }

extern MmHeapCheck { -- }

extern MmHeapDumpBuckets { -- }

extern MmHeapDumpBlockInfo { block -- }

extern MmAllocWithTag { bytes tag -- ptr ok }

extern MmFree { ptr -- }

extern MmChargeBytesGet { bytes -- charge }

extern MmBlockChargeGet { block -- charge }

extern MmKernelStackAlloc { -- kstack ok }

extern MmKernelStackFree { kstack -- }

extern MmZeroPageWorker { -- }

externptr MmPageFrameDatabase

externptr MmPageFreeListHead

externptr MmPageZeroListHead

externptr MmPageFreeCount

externptr MmHeapBuckets

externptr MmHeapSize

externptr MmHeapBytesFree

externptr MmHeap

externptr MmInited

externptr MmEventPageAvailable

externptr MmEventLowMemory

externptr MmPageFreeCountLow

externptr MmPageFreeCountSufficient

const MMMUSTSUCCEEDPAGES 16

// page allocation priorities

const ZEROMUST    1
const FREEFIRST   2

const MUSTSUCCEED 0x8000
const CANBLOCK    0x10000