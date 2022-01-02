const MMHIGHESTUSERADDRESS  0x7FFEFFFF
// 64kb no-mans-land
const MMLOWESTSYSTEMADDRESS 0x80000000

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

struct MmPageFrameEntryPool
	4 Next
	4 PFN
	4 Prev
	4 ByteSize
	4 Tag
	4 VirtualAddress
	4 Context4
	4 Context5
	4 Context6
	4 Context7
	4 Context8
	4 Context9
	4 Context10
	4 BucketIndex
	4 PoolListNext
	4 PoolListPrev
endstruct

extern MmUsageDump { -- }

extern MmInitPhase0 { -- }
extern MmInitPhase1 { -- }

extern MmQuery { query -- ok }

extern MmResourceJettison { -- }

extern MmPoolInit { -- }

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

extern MmPageDirectoryAlloc { -- pdir ok }
extern MmPageDirectoryFree { pdir -- }

extern MmZeroPageWorker { -- }

extern MmPageFault { writing badaddr trapframe -- handled }

externptr MmPageFrameDatabase
externptr MmPageFreeListHead
externptr MmPageZeroListHead
externptr MmPageFreeCount
// externptr MmHeapBuckets
// externptr MmHeapSize
// externptr MmHeapBytesFree
// externptr MmHeap
externptr MmInited
externptr MmEventPageAvailable
externptr MmEventLowMemory
externptr MmPageFreeCountLow
externptr MmPageFreeCountSufficient
externptr MmSectionObjectType

externptr MmPageFaultCount
externptr MmTotalWorkingSetSize
externptr MmPeakWorkingSetSize

externptr MmCommitLimit
externptr MmCommitUsage

const MMMUSTSUCCEEDL2PAGES 8
const MMMUSTSUCCEEDPAGES   18

const MMDIREPAGES          15
const MMLOWWATERMARK       50
const MMHIGHWATERMARK      80

const MMWORKINGSETDEFAULTMINIMUM 16
const MMWORKINGSETDEFAULTMAXIMUM 64

// page allocation priorities

const ZEROMUST    1
const FREEFIRST   2

const MUSTSUCCEED   0x8000
const CANBLOCK      0x10000
const CACHEALLOC    0x20000
const MUSTSUCCEEDL2 0x40000