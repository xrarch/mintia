extern IOCacheDumpInfo { cacheblock -- }

extern IOCacheInfoBlockLockBCB { cacheblock -- }
extern IOCacheInfoBlockUnlockBCB { cacheblock -- }

extern IOCacheInfoBlockTryIncrementMap { cacheblock -- oldcount ok }
extern IOCacheInfoBlockDecrementMap { cacheblock -- oldcount }

extern IOCacheInfoBlockFlush { cacheblock -- ok }
extern IOCacheInfoBlockTruncate { newsize writeout cacheblock -- ok }

extern IOCachePageModified { pfdbe -- }

extern IOCachePageGet { process iointent kflags offset fcb -- pfdbe ok }
extern IOCachePageRead { localpteaddr flags kflags offset fcb -- pfdbe ok }

extern IOCachePageWrite { transfer kflags pfdbe -- ok }

extern IOCachePageFlush { pfdbe -- ok }

extern IOCacheZeroData { size offset flags fcb -- ok }

externptr IOCachePagesUsed
externptr IOModifiedFilePageCountTotal

const IODIRTYFILEPAGEMAX 100