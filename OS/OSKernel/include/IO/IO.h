const IOVERSION_MAJOR 1
const IOVERSION_MINOR 0

extern IOInitPhase1 { -- }

extern IODeviceCreate { name driver permissions -- deviceobject ok }

extern IOParse { flags path initialobject process -- reparsepath object ok }

externptr IODevicesDirectoryObject

externptr IODeviceTypeObject

externptr IOFileTypeObject

extern IOFileCreateObject { flags owninguser -- fileobject ok }

extern IOFileOpen { object process -- ok }

extern IOFileClose { object process -- }

extern IOFileDelete { object -- }

struct IOFile
	4 FileControlBlock
	4 Offset
	4 DeviceObject
	4 Flags
	4 Type
endstruct

struct IOFileControlBlock
	4 Flags
	4 CacheInfoBlock
	4 References
endstruct

extern IOFileControlBlockReference { fcb -- oldcount }

extern IOFileControlBlockDereference { fcb -- oldcount }