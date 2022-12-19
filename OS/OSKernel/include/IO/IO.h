const IOVERSION_MAJOR 1
const IOVERSION_MINOR 0

const IOKFLAG_SWAPOUT 1  // this read is involved in a swapout operation which
                         // means different page allocation behavior is needed

const IOKFLAG_URGENT   2
const IOKFLAG_ZEROES   4  // force IOCachePageGet to allocate zero pages
const IOKFLAG_SWAPIN   8  // try forever to allocate pages
const IOKFLAG_PAGEIN   16 // flush icache for page
const IOKFLAG_PAGEAC   32 // do page-in accounting
const IOKFLAG_CLUSTR   64 // return error if IO in progress
// NOTE: upper 4 bits of IOKFLAG are reserved for driver use

extern IOInitPhase1 { -- }

extern IODeviceCreateFileControlBlock { deviceobject -- fcb ok }
extern IODeviceCreateFileObject { flags fcb deviceobject -- fileobject ok }
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
extern IOFileCancelIOObject { wait fileobject -- ok }
extern IOFileCancelIO { wait filehandle -- ok }

struct IOFile
	4 FileControlBlock
	4 Offset
	4 Flags
	4 Context
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

	4 ReusableListNext
	4 ReusableListPrev

	ExRwLock_SIZEOF RwLock

	4 AsyncIOCount
	KeEvent_SIZEOF AsyncIOEvent

	KeTime_SIZEOF AccessTime
	KeTime_SIZEOF ModifyTime
	KeTime_SIZEOF ChangeTime
endstruct

const IOFCBFLAG_DELETELASTREFERENCE 1
const IOFCBFLAG_SYSTEMFILE          2
const IOFCBFLAG_REUSABLEINSERTED    4

const IOPOKE_WRITE 1
const IOPOKE_READ  2

// largest IO transfer clustered by the system for page-out and page-in
// respectively.
//
// both must be a power of two!!!!

const IOCLUSTERMAX (16 1024 *)
const IOREADCLUSTERMAX (32 1024 *)

// maximum amount of file to zero in page cache before resorting to direct IO.

const IOCACHEZEROMAX (512 1024 *)

// arbitrary value estimating the amount of context an FCB requires from the
// filesystem driver.

const IOAVERAGEFCBCONTEXT 128

extern IOFileControlBlockGetReferences { fcb -- references }
extern IOFileControlBlockGetContext { fcb -- context }
extern IOFileControlBlockSetContext { context fcb -- }
extern IOFileControlBlockGetMount { fcb -- mount }
extern IOFileControlBlockGetDeviceObject { fcb -- devobj }
extern IOFileControlBlockGetType { fcb -- filetype }
extern IOFileControlBlockGetSize { fcb -- size }
extern IOFileControlBlockSetSize { size fcb -- }
extern IOFileControlBlockGetCacheInfoBlock { fcb -- cacheblock }
extern IOFileControlBlockIsPinned { fcb -- pinned }

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
extern IOFileControlBlockDelete { writeout fcb -- ok }
extern IOFileControlBlockReference { fcb -- oldcount }
extern IOFileControlBlockDereference { fcb -- oldcount }
extern IOFileControlBlockLock { fcb -- ok }
extern IOFileControlBlockLockShared { fcb -- ok }
extern IOFileControlBlockTryLock { fcb -- ok }
extern IOFileControlBlockTryLockShared { fcb -- ok }
extern IOFileControlBlockUnlock { fcb -- }

extern IOFileControlBlockPinMetadata { fcb -- ok }

extern IOFileControlBlockFlush { fcb -- ok }

extern IOFileControlBlockDeleteLastReference { fcb -- }
extern IOFileControlBlockRescue { fcb -- }

extern IOFileControlBlockTruncate { newsize growing keeplocked zero flags fcb -- oldsize ok }

extern IOFileControlBlockCacheCheck { fcb -- cacheblock ok }

extern IOFileGetFileControlBlock { fileobject -- fcb }

extern IOFileGetContext { fileobject -- context }
extern IOFileSetContext { context fileobject -- }

extern IOFileInformationQueryObject { fileobject query -- ok }
extern IOFileInformationQuery { filehandle query -- ok }

extern IOScheduleWritebehind { -- }
extern IOTriggerWritebehind { -- }

extern IOThreadRundown { -- }

externptr IOBootDevice

externptr IOFileControlBlockCacheSize

externptr IOWritebehindTimer
externptr IOWritebehindEvent

externptr IOCacheInfoBlockDirtyCount
externptr IOCacheInfoBlockDirtyListHead
externptr IOCacheInfoBlockDirtyListTail