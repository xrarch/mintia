const MMHIGHESTUSERADDRESS  0x7FFEFFFF
// 64kb no-mans-land
const MMLOWESTSYSTEMADDRESS 0x80000000

struct MmPageFrameEntry
	4 R1
	4 R2
	4 R3
	4 R4
	4 R5
	4 R6
	4 R7
	4 R8
endstruct

struct MmPageFrameEntryFree
	4 Next
	4 R2
	4 R3
	4 R4
	4 R5
	4 R6
	4 R7
	4 R8
endstruct

struct MmPageFrameEntryPool
	4 ByteSize
	4 Tag
	4 VirtualAddress
	4 Context3
	4 Context4
	4 Level
	4 PoolListNext
	4 PoolListPrev
endstruct

struct MmPageFrameEntryHeap
	4 Context1
	4 Context2
	4 Context3
	4 Context4
	4 Permanent
	4 Level
	4 PoolListNext
	4 PoolListPrev
endstruct

extern MmUsageDump { -- }

extern MmInitPhase0 { -- }
extern MmInitPhase1 { -- }
extern MmInitNonpageableCommit { -- }

extern MmQuery { query -- ok }

extern MmResourceJettison { -- }

extern MmPoolInit { -- }

extern MmPageWait { priority -- waited ok }
extern MmPageGet { priority -- pfdbe pfn ok }
extern MmPageAlloc { priority -- pfdbe pfn ok }
extern MmPageFree { pfn -- }
extern MmPageFreeByEntry { pfdbe -- }
extern MmHeapCheck { -- }
extern MmHeapDumpBuckets { -- }
extern MmHeapDumpBlockInfo { block -- }
extern MmAllocWithTag { bytes tag flags -- ptr ok }
extern MmFree { ptr -- }
extern MmChargeBytesGet { bytes -- charge }
extern MmBlockChargeGet { block -- charge }

extern MmKernelStackAlloc { -- kstack ok }
extern MmKernelStackFree { kstack -- }
extern MmKernelStackSwapOut { thread -- }
extern MmKernelStackSwapIn { thread -- }

extern MmModifiedPageWriter { context1 context2 -- }
extern MmBalanceSetManager { -- }
extern MmZeroPageWorker { -- }

extern MmPageFault { writing badaddr trapframe -- handled }

extern MmFlushModifiedPages { -- }

extern MmThrottle { -- }

externptr MmPageFrameDatabase
externptr MmPageFreeListHead
externptr MmPageZeroListHead
externptr MmPageFreeCount
externptr MmConstantZeroPage
externptr MmInited
externptr MmEventPageAvailable
externptr MmEventLowMemory
externptr MmModifiedPageEvent
externptr MmPageFreeCountLow
externptr MmPageFreeCountSufficient
externptr MmSectionObjectType

externptr MmPageFaultCount
externptr MmTotalWorkingSetSize
externptr MmPeakWorkingSetSize

externptr MmTheoreticalCommitLimit
externptr MmCommitLimit
externptr MmCommitUsage

externptr MmNonpageableCommitLimit
externptr MmNonpageableCommitUsage

// free page count thresholds at which various types/priorities of page
// allocation will block or fail.

const MMNORMALTHRESH        15 // normal allocations
const MMPOOLTHRESH          8  // pool/heap allocations
const MMMUSTSUCCEEDL2THRESH 4  // mustsucceed level 2
const MMMUSTSUCCEEDTHRESH   0  // mustsucceed

// free page count threshold that counts as "dire", meaning the working set
// trimmer will ignore working set lower limits and go woo wild.

const MMDIREPAGES           (MMNORMALTHRESH 1 -)

// default working set heuristics

const MMWORKINGSETDEFAULTMINIMUM 16
const MMWORKINGSETDEFAULTMAXIMUM 64

// a process will always be able to pin at least this many pages, no matter
// what kind of load the system is undergoing.

const MMPROCESSPINGUARANTEE 8

// default nonpageable commit heuristics

const MMSYSTEMPROMISE (100 1024 *)
const MMNONPAGECOMMITMINIMUM (256 1024 *)

// page allocation priorities

const ZEROMUST    1
const FREEFIRST   2

const MUSTSUCCEED   0x8000
const CANBLOCK      0x10000
const MUSTSUCCEEDL2 0x40000
const TRYFOREVER    0x80000
const POOLALLOC     0x100000