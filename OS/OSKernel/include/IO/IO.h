const IOVERSION_MAJOR 1
const IOVERSION_MINOR 0

const IOKFLAG_SWAPOUT 1 // this read is involved in a swapout operation which
                        // means different page allocation behavior is needed

const IOKFLAG_URGENT  2
const IOKFLAG_ZEROES  4 // force IOCachePageGet to allocate zero pages
const IOKFLAG_SWAPIN  8

extern IOInitPhase1 { -- }

extern IODeviceCreateEx { name sizeinbytes driver permissions permanent -- deviceobject ok }
extern IODeviceCreate { name sizeinbytes driver permissions -- deviceobject ok }
extern IODeviceDeleteFileObject { object -- ok }

extern IOParse { flags path initialobject process -- reparsepath object ok }

externptr IODevicesDirectoryObject
externptr IODeviceTypeObject
externptr IOFileTypeObject

extern IOFileCreateObject { openedpath flags permissions fcb -- fileobject ok }
extern IOFileOpenObject { access object process -- ok }
extern IOFileCloseObject { access object process -- }
extern IOFileDeleteObject { object -- }
extern IOFileSetSecurityObject { uid gid permissions object -- ok }

struct IOFile
	4 FileControlBlock
	4 Offset
	4 Flags
	4 OpenedPath
endstruct

// sort of like a unix vnode
struct IOFileControlBlock
	4 Flags
	4 CacheInfoBlock
	4 References
	4 FileType
	4 DeviceObject // or parent mountpoint
	4 DispatchTable
	4 SizeInBytes
	4 FSContext
	4 Mount // a mountpoint that is mounted atop this FCB (i.e., the FCB is a device, or a disk image)
	4 Busy // busy with a mount operation
	4 ParseCount
	4 UncachedIOCount
	4 SystemFile

	4 ReusableListNext
	4 ReusableListPrev
	4 ReusableInserted

	4 DeleteLastReference

	ExRwLock_SIZEOF RwLock

	KeTime_SIZEOF AccessTime
	KeTime_SIZEOF ModifyTime
	KeTime_SIZEOF ChangeTime
endstruct

const IOPOKE_WRITE 1
const IOPOKE_READ  2

// largest uncached IO allowed to occur in one transfer. the three main
// constraints are:
//   1. IOTRANSFERMAX/PAGESIZE * 4 should reasonably fit on a kernel stack so
//      that we can allocate MDLs there idiomatically.
//   2. shouldn't be so large that its easy to completely IO-starve the system
//      by just doing huge uncached IO accesses.
//   3. should be large enough to allow things like console IO to occur w/o
//      odd effects due to transfer fragmentation by the IO system.

const IOTRANSFERMAX (128 1024 *)

extern IOFileControlBlockGetReferences { fcb -- references }
extern IOFileControlBlockGetContext { fcb -- context }
extern IOFileControlBlockSetContext { context fcb -- }
extern IOFileControlBlockGetMount { fcb -- mount }
extern IOFileControlBlockGetDeviceObject { fcb -- devobj }
extern IOFileControlBlockGetType { fcb -- filetype }
extern IOFileControlBlockGetSize { fcb -- size }
extern IOFileControlBlockSetSize { size fcb -- }
extern IOFileControlBlockGetCacheInfoBlock { fcb -- cacheblock }

extern IOFileControlBlockSetAccessTime { time fcb -- }
extern IOFileControlBlockSetModifyTime { time fcb -- }
extern IOFileControlBlockSetChangeTime { time fcb -- }

extern IOFileControlBlockGetAccessTime { fcb -- time }
extern IOFileControlBlockGetModifyTime { fcb -- time }
extern IOFileControlBlockGetChangeTime { fcb -- time }

extern IOFileControlBlockIsDoomed { fcb -- doomed }

extern IOFileControlBlockGetSizeof { -- sizeof }

extern IOFileControlBlockInitialize { dispatchtable devobj filetype flags fcb -- }
extern IOFileControlBlockAllocate { dispatchtable devobj filetype flags -- fcb ok }
extern IOFileControlBlockCreate { dispatchtable devobj filetype flags -- fcb ok }
extern IOFileControlBlockDelete { writeout fcb -- }
extern IOFileControlBlockReference { fcb -- oldcount }
extern IOFileControlBlockDereference { fcb -- oldcount }
extern IOFileControlBlockLock { fcb -- ok }
extern IOFileControlBlockLockShared { fcb -- ok }
extern IOFileControlBlockTryLock { fcb -- ok }
extern IOFileControlBlockTryLockShared { fcb -- ok }
extern IOFileControlBlockUnlock { fcb -- }

extern IOFileControlBlockFlush { fcb -- ok }

extern IOFileControlBlockDeleteLastReference { fcb -- }
extern IOFileControlBlockRescue { fcb -- }

extern IOFileControlBlockTruncate { newsize growing keeplocked zero fcb -- oldsize ok }

extern IOFileControlBlockCacheCheck { wantcaching fcb -- cacheblock ok }

extern IOFileGetFileControlBlock { fileobject -- fcb }

extern IOFileInformationQueryObject { fileobject query -- ok }
extern IOFileInformationQuery { filehandle query -- ok }

externptr IOBootDevice