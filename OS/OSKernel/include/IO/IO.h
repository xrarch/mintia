const IOVERSION_MAJOR 1
const IOVERSION_MINOR 0

const IOKFLAG_SWAPOUT 1  // this read is involved in a swapout operation which
                         // means different page allocation behavior is needed.
                         // different between this and IOKFLAG_PAGEOUT is that
                         // this is set by the modified page writer, whereas
                         // IOKFLAG_PAGEOUT is set by the lazy writer.

const IOKFLAG_URGENT   2
const IOKFLAG_ZEROES   4  // force IOCachePageGet to allocate zero pages
const IOKFLAG_SYSSPC   8  // IO op is system space paging
const IOKFLAG_PAGEIN   16 // flush icache for page
const IOKFLAG_CLUSTR   64 // return error if IO in progress
const IOKFLAG_PAGEFILE 128 // pagefile I/O
const IOKFLAG_PAGEOUT  256 // lazy writer I/O
// NOTE: upper 4 bits of IOKFLAG are reserved for driver use

const IOKFLAG_PAGING   (IOKFLAG_SWAPOUT IOKFLAG_PAGEIN | IOKFLAG_PAGEOUT |)

extern IOInitPhase1 { -- }

extern IOParse { flags path initialobject process -- reparsepath object ok }

externptr IODevicesDirectoryObject
externptr IODeviceTypeObject
externptr IOFileTypeObject

extern IOFileCreateObject { openedpath flags permissions fcb -- fileobject ok }
extern IOFileOpenObject { access object process -- ok }
extern IOFileCloseObject { lasthandlecount access object process -- }
extern IOFileDeleteObject { object -- }
extern IOFileSetSecurityObject { uid gid permissions object -- ok }
extern IOFileCancelIOObject { wait fileobject -- ok }
extern IOFileCancelIO { wait filehandle -- ok }

struct IOFile
	// transparent part of IOFile
	// after stabilization of the ABI, the offsets of these fields must never
	// change since they are accessed directly by drivers.

	4 FileControlBlock
	4 Flags
	4 Context
	4 OpenedPath

	// opaque part of IOFile
	// the offsets of these can change freely as they may only be accessed by
	// the kernel itself.

	4 Offset
endstruct

struct IOFileControlBlockPaged
// transparent

	4 Flags
	4 FileType
	4 DeviceObject
	
	4 Extension // can be used as a free context field if no extension

	KeTime_SIZEOF AccessTime
	KeTime_SIZEOF ModifyTime
	KeTime_SIZEOF ChangeTime
	KeTime_SIZEOF CreationTime

// opaque

endstruct

// sort of like a unix vnode
struct IOFileControlBlock
// transparent

	4 CacheInfoBlock
	4 DispatchTable
	4 SizeInBytes
	4 StackDepth

	4 Extension // can be used as a free context field if no extension

	4 Paged

// opaque

	ExRwLock_SIZEOF RwLock
	ExRwLock_SIZEOF PagingIORwLock

	KeEvent_SIZEOF AsyncIOEvent
	4 AsyncIOCount
endstruct

const IOFCBFLAG_PAGED      1
const IOFCBFLAG_SYSTEMFILE 2

const IOPOKE_WRITE 1
const IOPOKE_READ  2

// largest IO transfer clustered by the system for page-out and page-in
// respectively.
//
// both must be a power of two!!!!

const IOCLUSTERMAX (16 1024 *)
const IOREADCLUSTERMAX (32 1024 *)

const IOMAXCLUSTERMAX (IOCLUSTERMAX IOREADCLUSTERMAX _max)

// maximum amount of file to zero in page cache before resorting to direct IO.

const IOCACHEZEROMAX (512 1024 *)

// arbitrary value estimating the amount of context an FCB requires from the
// filesystem driver.

const IOAVERAGEFCBCONTEXTNP    16
const IOAVERAGEFCBCONTEXTPAGED 96

extern IOFileControlBlockCreate { extensionsize pagedextensionsize devobj filetype flags -- fcb ok }
extern IOFileControlBlockDelete { writeout fcb -- ok }

extern IOFileControlBlockLockForPaging { iop fcb -- }
extern IOFileControlBlockLockSharedForPaging { iop fcb -- }
extern IOFileControlBlockUnlockForPaging { iop fcb -- }

extern IOFileControlBlockLock { alertable fcb -- ok }
extern IOFileControlBlockLockShared { alertable fcb -- ok }
extern IOFileControlBlockUnlock { fcb -- }

extern IOFileControlBlockFlush { fcb -- ok }

extern IOFileControlBlockTruncate { newsize growing keeplocked zero flags fcb -- oldsize ok }

extern IOFileControlBlockCacheCheck { fcb -- cacheblock ok }

extern IOFileControlBlockDestroyCache { writeout fcb -- }

extern IOFileInformationQueryObject { fileobject query -- ok }
extern IOFileInformationQuery { filehandle query -- ok }

extern IOFileSetInformation { info filehandle -- ok }

extern IOTriggerWritebehind { -- }

extern IOThreadRundown { -- }

extern IOFileControlBlockIncrementReclaimable { -- }
extern IOFileControlBlockDecrementReclaimable { -- }

extern IOFilePageWriterDispatch { transfer -- }

externptr IOBootDevice

externptr IOFileControlBlockCacheSize
externptr IOFileControlBlockCount
externptr IOFileControlBlockMaximum
externptr IOFileControlBlockPreferred

externptr IOCacheInfoBlockDirtyCount