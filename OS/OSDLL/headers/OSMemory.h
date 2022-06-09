struct OSMemoryInformation
	4 PageTotalCount
	4 PageTotalNonWiredCount

	4 PageFreeCount

	4 FileCachePageCount
	4 AnonymousPageCount

	4 SwapPageTotalCount
	4 SwapPageUsedCount
	4 SwapPagePeakCount

	4 SwapPagesRead
	4 SwapPagesWritten

	4 PoolBytesUsedInternally
	4 PoolBytesUsedExternally

	4 EvictablePageCount

	4 ModifiedPageCount
	4 ModifiedPageMaximum

	4 WorkingSetPageTotalCount
	4 WorkingSetPagePeakCount

	4 PageFaultCount

	4 CommitLimit
	4 CommitUsage

	4 NonpageableCommitLimit
	4 NonpageableCommitUsage

	48 Reserved
endstruct

struct OSQuotaInformation
	4 HeapUsed
	4 HeapMaximum

	4 VirtualMemoryUsed
	4 VirtualMemoryMaximum

	4 WorkingSetUsed
	4 WorkingSetMaximum

	48 Reserved
endstruct

struct OSQuota
	4 Heap
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