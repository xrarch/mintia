const IODRIVER_NOCHAIN   1
const IODRIVER_CHAINSTOP 2

const IODRIVER_FILESYSTEM (IODRIVER_NOCHAIN)

struct IODriver
	4 VersionMajor
	4 VersionMinor

	4 Name
	4 DeviceType
	4 DispatchTable
	4 ExtensionSize
	4 BlockLog
	4 Flags

	4 Reserved1
	4 Reserved2
	4 Reserved3
	4 Reserved4
	4 Reserved5
	4 Reserved6
	4 Reserved7
endstruct

struct IODevice
	4 Driver
	4 Extension
	4 FileControlBlock
	4 BlockLog
	4 ConsoleHeader
	4 Mount
	4 Flags

	4 AttachedTo
	4 AttachedBy
	4 StackDepth // this driver plus number of drivers on stack below it
endstruct

extern IODeviceGetAttached { deviceobject -- attacheddeviceobject } 
extern IODeviceAttachObject { chain deviceobject todeviceobject -- ok }

extern IODeviceCreateFileControlBlock { deviceobject -- fcb ok }
extern IODeviceCreateFileObject { flags fcb deviceobject -- fileobject ok }
extern IODeviceCreateEx { name sizeinbytes driver permissions permanent -- deviceobject ok }
extern IODeviceCreate { name sizeinbytes driver permissions -- deviceobject ok }
extern IODeviceDeleteFileObject { object -- ok }

extern IODeviceDirectoryInsert { deviceobject -- ok }

extern IODeviceDeallocateObject { object -- }
extern IODeviceDeleteObject { object -- ok }

extern IODeviceGetExtension { deviceobject -- extension }
extern IODeviceSetConsoleHeader { console deviceobject -- }
extern IODeviceGetConsoleHeader { deviceobject -- console }
extern IODeviceSetBlockLog { blocklog deviceobject -- }
extern IODeviceGetBlockLog { deviceobject -- blocklog }