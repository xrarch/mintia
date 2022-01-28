struct OSMemoryInformation
	4 PageTotalCount
	4 PageTotalNonWiredCount

	4 PageFreeCount

	4 FileCachePageCount
	4 AnonymousPageCount

	4 DirtyPageCount

	4 SwapPageTotalCount
	4 SwapPageUsedCount
	4 SwapPagePeakCount

	4 SwapPagesRead
	4 SwapPagesWritten

	4 PoolBytesUsedInternally
	4 PoolBytesUsedExternally

	4 EvictableFastPageCount
	4 EvictableSlowPageCount

	4 WorkingSetPageTotalCount
	4 WorkingSetPagePeakCount

	4 PageFaultCount

	4 CommitLimit
	4 CommitUsage

	48 Reserved
endstruct

struct OSQuotaInformation
	4 HeapUsed
	4 HeapMaximum

	4 VirtualMemoryUsed
	4 VirtualMemoryMaximum

	4 WorkingSetUsed
	4 WorkingSetMaximum

	4 DirtyPagesUsed
	4 DirtyPagesMaximum

	48 Reserved
endstruct

struct OSQuota
	4 Heap
	4 VirtualMemory
	4 WorkingSet
	4 DirtyPages

	48 Reserved
endstruct

extern OSMemoryInformationDump { query -- }