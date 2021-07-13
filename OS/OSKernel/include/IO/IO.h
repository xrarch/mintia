const IOVERSION_MAJOR 1
const IOVERSION_MINOR 0

extern IOInitPhase1 { -- }

extern IODeviceCreate { name driver permissions -- deviceobject ok }

extern IOParse { flags path initialobject process -- reparsepath object ok }

externptr IODevicesDirectoryObject

externptr IODeviceTypeObject

externptr IOFileTypeObject

extern IOFileCreateObject { flags owninguser fcb -- fileobject ok }

extern IOFileOpen { object process -- ok }

extern IOFileClose { object process -- }

extern IOFileDelete { object -- }

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
	4 DeviceObject
	4 DispatchTable
endstruct

extern IOFileControlBlockCreate { dispatchtable devobj filetype flags -- fcb ok }

extern IOFileControlBlockReference { fcb -- oldcount }

extern IOFileControlBlockDereference { fcb -- oldcount }