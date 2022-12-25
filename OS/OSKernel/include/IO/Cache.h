struct IOCacheInfoBlock
	4 Next
	4 Prev

	4 References

	4 ModifiedPageCount

	4 FirstModifiedPage
	4 LastModifiedPage

	4 MapCount
	4 Flags

	4 SplayTreeRoot
	4 BCBTreeRoot

	KeEvent_SIZEOF BCBTreeEvent
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

extern IOCacheInfoBlockLockBCB { cacheblock -- }
extern IOCacheInfoBlockUnlockBCB { cacheblock -- }

extern IOCacheInfoBlockTryIncrementMap { cacheblock -- oldcount ok }
extern IOCacheInfoBlockDecrementMap { cacheblock -- oldcount }

extern IOCacheInfoBlockDestroy { writeout cacheblock -- ok }
extern IOCacheInfoBlockFlush { cacheblock -- ok }
extern IOCacheInfoBlockTruncate { newsize writeout cacheblock -- ok }

extern IOCacheInfoBlockReference { cacheblock -- oldcount }
extern IOCacheInfoBlockDereference { cacheblock -- oldcount }

extern IOCachePageModified { pfdbe -- }

extern IOCachePageGet { process iointent kflags offset fcb -- pageframe pfdbe ok }
extern IOCachePageRead { localpteaddr flags kflags offset fcb -- pageframe pfdbe ok }

extern IOCachePageWrite { transfer kflags pfdbe -- ok }

extern IOCachePageFlush { pfdbe -- ok }

extern IOCacheInitialize { fcb -- cacheblock ok }

extern IOCacheZeroData { size offset flags fcb -- ok }

externptr IOCachePagesUsed