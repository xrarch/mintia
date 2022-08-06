struct IOCacheInfoBlock
	4 Next
	4 Prev

	4 References

	4 ModifiedPageCount

	4 MapCount
	4 Flags

	4 SplayTreeRoot
endstruct

const IOCACHEBLOCKFLAG_TRUNCATING 1

// should be kept in sync with MmPageFrameEntryEvictable
struct IOPageFrameEntryCache
	4 Event // actually Evictable Next, store event pointer here
	4 Prev
	1 EvictionFlagsB  1 EvictionTypeB  2 ReferencesI
	4 FCB
	4 Parent
	4 LeftChild
	4 RightChild
	4 OffsetInFile
endstruct

extern IOWritebehindWorker { context1 context2 -- }
extern IOFilesystemSyncWorker { context1 context2 -- }

extern IOCacheDumpInfo { cacheblock -- }

extern IOCacheInfoBlockCreate { -- cacheblock ok }

extern IOCacheInfoBlockTryIncrementMap { cacheblock -- oldcount ok }
extern IOCacheInfoBlockDecrementMap { cacheblock -- oldcount }

extern IOCacheInfoBlockDestroy { writeout cacheblock -- ok }
extern IOCacheInfoBlockFlush { cacheblock -- ok }
extern IOCacheInfoBlockTruncate { newsize writeout cacheblock -- ok }

extern IOCacheInfoBlockReference { cacheblock -- oldcount }
extern IOCacheInfoBlockDereference { cacheblock -- oldcount }

extern IOCachePageWait { pri pfdbe -- ok }

extern IOCachePageModified { pfdbe -- }

extern IOCachePageGet { iointent kflags offset fcb -- pageframe pfdbe ok }
extern IOCachePageRead { flags kflags offset fcb -- pageframe pfdbe ok }

extern IOCachePageWrite { transfer kflags pfdbe -- ok }

extern IOCacheFileWrite { flags length offset buffer fcb lastmode -- byteswritten ok }
extern IOCacheFileRead { flags length offset buffer fcb lastmode -- bytesread ok }

extern IOCacheInitialize { fcb -- cacheblock ok }

extern IOCacheZeroData { size offset fcb -- ok }

externptr IOCachePagesUsed