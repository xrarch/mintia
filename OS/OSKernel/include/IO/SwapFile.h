extern IOSwapFileCreate { filehandle -- sizeinpages ok }

extern IOSwapPageFree { pno -- }
extern IOSwapPageWrite { pageframe -- pno ok }
extern IOSwapPageRead { pageframe pno -- ok }
extern IOSwapFileAwaitCreation { -- }

externptr IOSwapPagesUsed
externptr IOSwapPagesCount
externptr IOSwapPagesUsedPeak

externptr IOSwapPagesWritten
externptr IOSwapPagesRead