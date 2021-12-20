struct OSMemoryInformation
	4 PageTotalCount
	4 PageTotalNonWiredCount

	4 PageFreeCount

	4 FileCachePageCount
	4 AnonymousPageCount

	4 ModifiedPageCount

	4 SwapPageTotalCount
	4 SwapPageUsedCount
	4 SwapPagePeakCount

	4 PoolBytesUsedInternally
	4 PoolBytesUsedExternally

	4 EvictableFastPageCount
	4 EvictableSlowPageCount

	4 WorkingSetPageTotalCount
	4 WorkingSetPagePeakCount

	4 PageFaultCount

	48 Reserved
endstruct

extern OSMemoryInformationDump { query -- }