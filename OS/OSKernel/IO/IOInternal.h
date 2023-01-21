extern IOiPageFileInit { -- }

extern IOiCacheInitialize { fcb -- cacheblock ok }
extern IOiCacheInfoBlockCreate { -- cacheblock ok }

extern IOiCacheInfoBlockReference { cacheblock -- oldcount }
extern IOiCacheInfoBlockDereference { cacheblock -- oldcount }

extern IOiCacheInfoBlockDestroy { writeout cacheblock -- ok }

extern IOiFileControlBlockInitialize { dispatchtable devobj filetype flags fcb -- }

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