// needs Kernel.h

const IOVERSION_MAJOR 1
const IOVERSION_MINOR 0

extern IOInitPhase1 { -- }

extern IODeviceCreate { name sizeinbytes driver permissions -- deviceobject ok }
extern IODeviceDeleteFileObject { object -- ok }

extern IOParse { flags path initialobject process -- reparsepath object ok }

externptr IODevicesDirectoryObject
externptr IODeviceTypeObject
externptr IOFileTypeObject

extern IOFileCreateObject { flags owninguser permissions fcb -- fileobject ok }
extern IOFileOpenObject { object process -- ok }
extern IOFileCloseObject { object process -- }
extern IOFileDeleteObject { object -- }

struct IOFile
	4 FileControlBlock
	4 Offset
	4 Flags
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

	KeMutex_SIZEOF Mutex
	KeMutex_SIZEOF IOMutex

	KeTime_SIZEOF AccessTime
	KeTime_SIZEOF ModifyTime
	KeTime_SIZEOF ChangeTime
endstruct

extern IOFileControlBlockInitialize { dispatchtable devobj filetype flags fcb -- ok }
extern IOFileControlBlockCreate { dispatchtable devobj filetype flags -- fcb ok }
extern IOFileControlBlockDelete { writeout fcb -- }
extern IOFileControlBlockReference { fcb -- oldcount }
extern IOFileControlBlockDereference { fcb -- oldcount }
extern IOFileControlBlockLock { fcb -- ok }
extern IOFileControlBlockUnlock { fcb -- }
extern IOFileControlBlockLockIO { fcb -- ok }
extern IOFileControlBlockUnlockIO { fcb -- }

extern IOFileControlBlockCacheCheck { wantcaching fcb -- cacheblock ok }
extern IOFileControlBlockAcquireCheck { flags fcb -- ok }

externptr IOBootDevice