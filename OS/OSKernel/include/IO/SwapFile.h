extern IOSwapFileCreate { filehandle -- sizeinpages ok }

extern IOSwapFileReserve { pagesneeded -- offset ok }
extern IOSwapFileRelease { pages offset -- }

extern IOSwapPageFree { pno -- }
extern IOSwapPageRead { pageframe pno -- ok }

extern IOSwapFileWriteMDL { pagecount mdl -- ok }

extern IOSwapFileAwaitCreation { -- }

externptr IOSwapPagesUsed
externptr IOSwapPagesCount
externptr IOSwapPagesUsedPeak

externptr IOSwapPagesWritten
externptr IOSwapPagesRead