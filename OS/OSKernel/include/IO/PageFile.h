extern IOPageFileCreate { minpages maxpages pri path -- ok }
extern IOPageFileQuery { query id -- ok }

extern IOSwapPageFree { pno pagefile -- }
extern IOSwapPageFreePTE { pte -- }
extern IOSwapPageReadPTE { kflags pfdbe pte -- ok }

extern IOPageFileWriteMDL { pagecount offset mdl -- ok }

extern IOPageFileAwaitCreation { -- }

extern IOPageFileRequestExpansion { ipl pri pages -- ok }

extern IOPageFileGetPriority { pagefile -- pri }
extern IOPageFileGetFree { pagefile -- free }
extern IOPageFileGetNumber { pagefile -- number }

extern IOPageFileReserve { pagesneeded pagefile -- offset ok }
extern IOPageFileRelease { pages offset pagefile -- }

extern IOPageFileFullOrFragmented { -- }

const IOPAGEFILEMAX 16

const IOPAGEFILEMAXPRI 8

const IOPAGEFILEFREELOW 32

externptr IOPageFileExtendEvent

externptr IOSwapPagesUsed
externptr IOSwapPagesCount
externptr IOSwapPagesUsedPeak

externptr IOSwapPagesWritten
externptr IOSwapPagesRead

externptr IOPageFileCount