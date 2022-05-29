extern MmFlushUserTLBAll { -- }

extern MmPageDirectoryDestroy { process -- }
extern MmPageDirectoryAlloc { process -- pdir ok }
extern MmPageDirectoryReference { pri process -- ok }
extern MmPageDirectoryDereference { process -- }