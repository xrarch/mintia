struct OSMemoryInformation
	4 PageTotalCount
	4 PageTotalNonWiredCount

	4 PageFreeCount

	4 FileCachePageCount
	4 AnonymousPageCount

	4 DirtyFileCount

	4 SwapPageTotalCount
	4 SwapPageUsedCount
	4 SwapPagePeakCount

	4 SwapPagesRead
	4 SwapPagesWritten

	4 NonpagedPoolBytesUsedInternally
	4 NonpagedPoolBytesUsedExternally
	4 NonpagedPoolBytesUsedPeak

	4 PagedPoolBytesUsedInternally
	4 PagedPoolBytesUsedExternally
	4 PagedPoolBytesUsedPeak

	4 EvictablePageCount

	4 ModifiedPageCount
	4 ModifiedPageMaximum

	4 WorkingSetPageTotalCount
	4 WorkingSetPagePeakCount

	4 PageFaultCount
	4 SoftPageFaultCount
	4 HardPageFaultCount
	4 PageInCount

	4 TheoreticalCommitLimit
	4 CommitLimit
	4 CommitUsage

	4 PhysicalCommitLimit
	4 PhysicalCommitUsage

	4 ModifiedFilePageCount

	4 ViewCachePageCount

	44 Reserved
endstruct

const OSQUOTAINFINITE -1
const OSQUOTADEFAULT  -2

struct OSQuotaInformation
	4 PoolUsed
	4 PoolMaximum

	4 PagedPoolUsed
	4 PagedPoolMaximum

	4 VirtualMemoryUsed
	4 VirtualMemoryMaximum

	4 WorkingSetUsed
	4 WorkingSetMaximum

	48 Reserved
endstruct

struct OSQuota
	4 Pool
	4 PagedPool
	4 VirtualMemory
	4 WorkingSet

	48 Reserved
endstruct

const OSSWAPFILEMAX 16

struct OSSwapFileInformation
	OSFILEPATHMAX Name

	4 MinimumSize
	4 MaximumSize
	4 CurrentSize
	4 UsedCount
	4 Priority
endstruct

extern OSMemoryInformationDump { query -- }
extern OSSwapFileInformationDump { -- }