const IOCACHEPAGESHIFT 4
const IOCACHEPAGEBUCKETS (1 IOCACHEPAGESHIFT <<)
const IOCACHEPAGEMASK (IOCACHEPAGEBUCKETS 1 -)

// main considerations with this are:
//   1. too great of a value means hash buckets will get longer than they must
//      for small files.
//   2. too small of a value means I/O clustering will perform more poorly.
const IOCACHEPAGEHASHSHIFT 4
const IOCACHEPAGECLUSTERMAX (1 IOCACHEPAGEHASHSHIFT <<)

struct IOCacheInfoBlock
	ExRwLock_SIZEOF RwLock

	4 MapCount
	4 Flags

	(IOCACHEPAGEBUCKETS 8 *) PageBucketListHeads
endstruct

const IOCACHEBLOCKFLAG_TRUNCATING 1

// should be kept in sync with MmPageFrameEntryEvictable
struct IOPageFrameEntryCache
	4 Event // actually Evictable Next, store event pointer here
	4 Prev
	1 EvictionFlagsB  1 EvictionTypeB  2 ReferencesI
	4 FCB
	4 Context1
	4 OffsetInFile
	4 NextCachePage
	4 PrevCachePage
endstruct

extern IOWritebehindWorker { context1 context2 -- }
extern IOFilesystemSyncWorker { context1 context2 -- }

extern IOCacheDumpInfo { cacheblock -- }

extern IOCacheInfoBlockCreate { -- cacheblock ok }

extern IOCacheInfoBlockLock { cacheblock -- ok }
extern IOCacheInfoBlockLockShared { cacheblock -- ok }
extern IOCacheInfoBlockTryLock { cacheblock -- ok }
extern IOCacheInfoBlockTryLockShared { cacheblock -- ok }
extern IOCacheInfoBlockUnlock { cacheblock -- }

extern IOCacheInfoBlockTryReference { cacheblock -- oldcount ok }
extern IOCacheInfoBlockDereference { cacheblock -- oldcount }

extern IOCacheInfoBlockDestroy { writeout cacheblock -- ok }
extern IOCacheInfoBlockFlush { cacheblock -- ok }
extern IOCacheInfoBlockTruncate { newsize writeout cacheblock -- ok }

extern IOCachePageRemove { pfdbe buckethead -- }
extern IOCachePageInsert { pfdbe buckethead -- }

extern IOCachePageGet { iointent kflags locked offset fcb -- pageframe pfdbe ok }
extern IOCachePageRead { flags kflags offset fcb -- pageframe pfdbe ok }

extern IOCachePageWrite { kflags pfdbe -- ok }

extern IOCacheFileWrite { flags length offset buffer fcb lastmode -- byteswritten ok }
extern IOCacheFileRead { flags length offset buffer fcb lastmode -- bytesread ok }

extern IOCacheInitialize { fcb -- cacheblock ok }

extern IOCacheZeroData { size offset fcb -- ok }

externptr IOCachePagesUsed