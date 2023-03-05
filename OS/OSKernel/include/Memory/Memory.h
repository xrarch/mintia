const MMHIGHESTUSERADDRESS  0x7FFEFFFF
// 64kb no-mans-land
const MMLOWESTSYSTEMADDRESS 0x80000000

extern MmUsageDump { -- }

extern MmInitPhase0 { -- }
extern MmInitPhase1 { -- }

extern MmQuery { query -- ok }

extern MmKflagToPriority { kflags -- pri }

extern MmPageWait { process priority -- waited ok }
extern MmPageGet { priority -- pfdbe pfn ok }
extern MmPageAlloc { priority -- pfdbe pfn ok }

extern MmHeapCheck { -- }
extern MmHeapDumpBuckets { -- }
extern MmHeapDumpBlockInfo { block -- }
extern MmAllocWithTag { bytes tag flags -- ptr ok }
extern MmFree { ptr -- }
extern MmChargeBytesGet { bytes -- charge }
extern MmBlockChargeGet { block -- charge }

extern MmKernelStackAlloc { -- pooladdr kstack ok }
extern MmKernelStackFree { kstack -- }

extern MmModifiedPageWriter { context1 context2 -- }
extern MmBalanceSetManager { -- }
extern MmZeroPageWorker { -- }

extern MmMPWAnonTransferInitialize { pagefile transfer -- }
extern MmAnonPageWriterAPCRoutine { normalfunc context1 context2 apc -- }

extern MmPageFault { writing badaddr trapframe -- handled }

extern MmResourceJettison { -- }
extern MmInitPhysicalCommit { -- }

extern MmThrottle { -- }

extern MmPFDBEToPhysicalAddress { pfdbe -- phyaddr }

externptr MmModifiedPageEvent

externptr MmConstantZeroPage

externptr MmPageTotal
externptr MmPageFreeCount
externptr MmPageFreeCountLow
externptr MmPageFreeCountSufficient
externptr MmSectionObjectType
externptr MmBalanceSetManagerThread

externptr MmPageFaultCount
externptr MmTotalWorkingSetSize
externptr MmPeakWorkingSetSize

externptr MmSoftPageFaultCount // transition/demandzero faults
externptr MmHardPageFaultCount // pageins due to page fault
externptr MmPageInCount        // pageins in general

externptr MmTheoreticalCommitLimit // virtual memory available if all pagefiles extend to maximum
externptr MmCommitLimit            // virtual memory available right now
externptr MmCommitUsage            // virtual memory promised

externptr MmPhysicalCommitLimit // physical memory available, sans a minimum margin for paging activity
externptr MmPhysicalCommitUsage // physical memory promised to nonpaged pool and working set minimums

externptr MmSystemSize

const MMTINYSYSTEM   1
const MMSMALLSYSTEM  2
const MMMEDIUMSYSTEM 3
const MMLARGESYSTEM  4
const MMHUGESYSTEM   5

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
// cleaning to pagefile.
//
// MUSTSUCCEED should not be taken as a get-out-of-deadlock-free card, as the
// issues related to page-out are very complex and can vary depending on the
// mechanics of the filesystem on which the pagefiles reside.

const MMNORMALTHRESH        16 // normal allocations           (blocking user allocations)
const MMPOOLTHRESH          12 // nonblocking pool allocations (nonblocking non-fatal allocations)
const MMMUSTSUCCEEDL2THRESH 4  // mustsucceed level 2          (i would really like this to not fail)
const MMMUSTSUCCEEDTHRESH   1  // mustsucceed                  (if this fails the system will definitely go down)

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