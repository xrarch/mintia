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
	4 ZeroIfNonPaged
	4 VirtualAddress
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
extern MmInitPhysicalCommit { -- }

extern MmQuery { query -- ok }

extern MmResourceJettison { -- }

extern MmPoolInit { -- }

extern MmKflagToPriority { kflags -- pri }
extern MmPageWait { process priority -- waited ok }
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

extern MmMPWAnonTransferInitialize { swapfile transfer -- }

extern MmPageFault { writing badaddr trapframe -- handled }

extern MmThrottle { -- }

externptr MmPageTotal
externptr MmPageFrameDatabase
externptr MmPageFreeListHead
externptr MmPageZeroListHead
externptr MmPageFreeCount
externptr MmConstantZeroPage
externptr MmZeroThreadPoolPage
externptr MmInited
externptr MmEventPageAvailable
externptr MmEventMSPageAvailable
externptr MmEventLowMemory
externptr MmModifiedPageEvent
externptr MmPageFreeCountLow
externptr MmPageFreeCountSufficient
externptr MmSectionObjectType
externptr MmModifiedPageWriterThread
externptr MmBalanceSetManagerThread

externptr MmPageFaultCount
externptr MmTotalWorkingSetSize
externptr MmPeakWorkingSetSize

externptr MmSoftPageFaultCount // transition/demandzero faults
externptr MmHardPageFaultCount // pageins due to page fault
externptr MmPageInCount        // pageins in general

externptr MmTheoreticalCommitLimit // virtual memory available if all swapfiles extend to maximum
externptr MmCommitLimit            // virtual memory available right now
externptr MmCommitUsage            // virtual memory promised

externptr MmPhysicalCommitLimit // physical memory available, sans a minimum margin for paging activity
externptr MmPhysicalCommitUsage // physical memory promised to nonpaged pool and working set minimums

externptr MmAnonTransfersAvailable

// free page count thresholds at which various types/priorities of page
// allocation will block or fail. the intent is that the number of available
// pages will drop below MMNORMALTHRESH only temporarily and in exceptional
// circumstances, and that paging activity will rebalance it again upwards.
//
// The maximum number of possible extant bytes allocated needs not be bounded
// (other than by quota and physical commit limit) down to MMMUSTSUCCEEDTHRESH
// which represents what the system MUST HAVE AVAILABLE in order not to crash,
// to fulfill page-out activity such as file writeback and anonymous page
// cleaning to swapfile.
//
// MUSTSUCCEED should not be taken as a get-out-of-deadlock-free card, as the
// issues related to page-out are very complex and can vary depending on the
// mechanics of the filesystem on which the swapfiles reside.

const MMNORMALTHRESH        16 // normal allocations           (blocking user allocations)
const MMPOOLTHRESH          12 // nonblocking pool allocations (nonblocking non-fatal allocations)
const MMMUSTSUCCEEDL2THRESH 4  // mustsucceed level 2          (i would really like this to not fail)
const MMMUSTSUCCEEDTHRESH   1  // mustsucceed                  (if this fails the system will definitely go down)

// free page count threshold that counts as "dire", meaning the working set
// trimmer will ignore working set lower limits and go woo wild.

const MMDIREPAGES           (MMNORMALTHRESH 1 -)

// default working set heuristics

externptr MmWorkingSetDefaultMinimum
externptr MmWorkingSetDefaultMaximum
externptr MmWorkingSetDefaultQuota

// a process will always be able to pin at least this many pages, no matter
// what kind of load the system is undergoing.

const MMPROCESSPINGUARANTEE 8

// default physical commit heuristics

const MMSYSTEMPROMISE         32
const MMPHYSICALCOMMITMINIMUM 64

// page allocation priorities

const ZEROMUST    1
const FREEFIRST   2

const MUSTSUCCEED   0x8000
const CANBLOCK      0x10000
const MUSTSUCCEEDL2 0x40000
const TRYFOREVER    0x80000
const POOLALLOC     0x100000
const PAGED         0x200000 // implies CANBLOCK
const POOLEXP       0x400000