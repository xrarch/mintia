// needs Kernel.h

const IOCACHEPAGEBUCKETS 8 // must be a power of two
const IOCACHEPAGESHIFT 3 // 1<<IOCACHEPAGESHIFT must equal IOCACHEPAGEBUCKETS
const IOCACHEPAGEMASK (IOCACHEPAGEBUCKETS 1 -)

struct IOCacheInfoBlock
	KeMutex_SIZEOF Mutex
	4 PageReferences
	4 ModifiedPages
	4 Flags
	(IOCACHEPAGEBUCKETS 8 *) PageBucketListHeads
endstruct

const IOCACHEBLOCKFLAG_TRUNCATING 1

// should be kept in sync with MmPageFrameEntryEvictable
struct IOPageFrameEntryCache
	4 Next
	4 PFN
	4 Prev
	4 EvictionFlags
	4 EvictionFunction
	4 References
	4 Context2
	4 Context3
	4 Context4
	4 Context5
	4 ModifiedPTE
	4 FCB
	4 Flags
	4 OffsetInFile
	4 NextCachePage
	4 PrevCachePage
endstruct

const IOCACHEPAGEFLAG_VALID 1 // does the page contain valid data (does it need to be read in)?
const IOCACHEPAGEFLAG_DIRTY 2 // is the page dirty (does it need to be written out)?

extern IOModifiedPageWorker { context1 context2 -- }
extern IOFilesystemSyncWorker { context1 context2 -- }

extern IOCacheDumpInfo { cacheblock -- }
extern IOCacheInfoBlockCreate { -- cacheblock ok }
extern IOCacheInfoBlockLock { cacheblock -- ok }
extern IOCacheInfoBlockTryLock { cacheblock -- locked }
extern IOCacheInfoBlockUnlock { cacheblock -- }

extern IOCachePageRemoveModified { pfdbe -- }
extern IOCachePageInsertModified { pfdbe -- }

extern IOCachePageWriteModified { dontunbias pfdbe -- ok }

extern IOCacheFileWrite { flags length bufsize offset buffer fcb -- byteswritten ok }
extern IOCacheFileRead { flags length bufsize offset buffer fcb -- bytesread ok }

extern IOCacheInitialize { fcb -- cacheblock ok }

externptr IOCacheModifiedPageListHead
externptr IOCacheModifiedPageListTail