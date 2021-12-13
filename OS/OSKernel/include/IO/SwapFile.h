extern IOSwapFileCreate { filehandle -- sizeinpages ok }

extern IOSwapPageFree { pno -- }
extern IOSwapPageWrite { pageframe -- pno ok }
extern IOSwapPageRead { pageframe pno -- ok }