extern IOSwapFileInit { -- }

extern IOSwapFileCreate { minpages maxpages pri path -- ok }
extern IOSwapFileQuery { query id -- ok }

extern IOSwapPageFree { pno swapfile -- }
extern IOSwapPageFreePTE { pte -- }
extern IOSwapPageReadPTE { kflags pfdbe pte -- ok }

extern IOSwapFileWriteMDL { pagecount offset mdl -- ok }

extern IOSwapFileAwaitCreation { -- }

extern IOSwapFileRequestExpansion { pages -- ok }
extern IOSwapFileExtend { -- }

extern IOSwapFileContract { -- }

extern IOSwapFileGetPriority { swapfile -- pri }
extern IOSwapFileGetFree { swapfile -- free }

extern IOSwapFileReserve { pagesneeded swapfile -- offset ok }
extern IOSwapFileRelease { pages offset swapfile -- }

const IOSWAPFILEMAX 16

const IOSWAPFILEMAXPRI 8

const IOSWAPFILEFREELOW 32

externptr IOSwapFileExtendEvent

externptr IOSwapPagesUsed
externptr IOSwapPagesCount
externptr IOSwapPagesUsedPeak

externptr IOSwapPagesWritten
externptr IOSwapPagesRead

externptr IOSwapFileCount