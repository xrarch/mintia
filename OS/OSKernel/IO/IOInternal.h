extern IOiPageFileInit { -- }
extern IOiPacketZonesInit { -- }

extern IOiCacheInitialize { fcb -- cacheblock ok }
extern IOiCacheInfoBlockCreate { -- cacheblock ok }

extern IOiCacheInfoBlockReference { cacheblock -- oldcount }
extern IOiCacheInfoBlockDereference { cacheblock -- oldcount }

extern IOiCacheInfoBlockDestroy { writeout cacheblock -- ok }

extern IOiFileControlBlockInitialize { devobj filetype flags fcb -- }

extern IOiDeviceDeleteObject { object -- }

extern IOiFilesystemReclaimFCB { -- }

extern IOiPageFileExtend { -- }
extern IOiPageFileContract { -- }

extern IOiScheduleWritebehind { -- }

extern IOiFilesystemSyncWorker { context1 context2 -- }
extern IOiWritebehindWorker { context1 context2 -- }

extern IOiFilesystemSyncAll { shutdown -- ok }

externptr IOiFileControlBlockThrottleCount

externptr IOiCacheInfoBlockDirtyListHead
externptr IOiCacheInfoBlockDirtyListTail

externptr IOiFileControlBlockCacheTrimEvent

externptr IOiWritebehindTimer
externptr IOiWritebehindEvent

externptr IOiDeviceDatabaseRwLock

struct IOiCacheInfoBlock
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
const IOCACHEBLOCKFLAG_DIRTY      2

// should be kept in sync with MiPageFrameEntryEvictable
struct IOiPageFrameEntryCache
	4 Event // actually Evictable Next, store event pointer here
	4 Prev
	1 EvictionFlagsB  1 EvictionTypeB  2 ReferencesI
	4 FCB
	4 Parent
	4 LeftChild
	4 RightChild
	4 OffsetInFile
endstruct