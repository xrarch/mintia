extern IOSwapFileInit { -- }

extern IOSwapFileCreate { minpages maxpages pri path -- ok }
extern IOSwapFileQuery { query id -- ok }

extern IOSwapPageFree { pno swapfile -- }
extern IOSwapPageFreePTE { pte -- }
extern IOSwapPageReadPTE { kflags pageframe pte -- ok }

extern IOSwapFileWriteMDL { pagecount mdl -- ok }

extern IOSwapFileAwaitCreation { -- }

extern IOSwapFileRequestExpansion { pages -- ok }
extern IOSwapFileExtend { -- }

externptr IOSwapFileExtendEvent

externptr IOSwapPagesUsed
externptr IOSwapPagesCount
externptr IOSwapPagesUsedPeak

externptr IOSwapPagesWritten
externptr IOSwapPagesRead

externptr IOSwapFileCount