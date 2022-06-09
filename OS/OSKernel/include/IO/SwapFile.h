extern IOSwapFileCreate { minpages maxpages pri path -- ok }

extern IOSwapPageFree { pno swapfile -- }
extern IOSwapPageFreePTE { pte -- }
extern IOSwapPageReadPTE { kflags pageframe pte -- ok }

extern IOSwapFileWriteMDL { pagecount mdl -- ok }

extern IOSwapFileAwaitCreation { -- }

externptr IOSwapPagesUsed
externptr IOSwapPagesCount
externptr IOSwapPagesUsedPeak

externptr IOSwapPagesWritten
externptr IOSwapPagesRead