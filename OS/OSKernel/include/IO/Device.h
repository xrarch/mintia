struct IODriver
	4 VersionMajor
	4 VersionMinor

	4 Name
	4 DispatchTable
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
	// transparent part of IODevice

	4 Driver
	4 Extension
	4 FileControlBlock
	4 BlockLog

	// RelevantMount could be either:
	//  1. If this is a volume device, it is the mount that the volume is of.
	//  2. If this is a physical device, it is a mount for a volume atop it.

	4 RelevantMount
	4 StackDepth // this driver plus number of drivers on stack below it
	4 Flags

	// opaque part of IODevice

	4 ConsoleHeader

	4 AttachedBy
endstruct

extern IODeviceGetAttached { deviceobject -- attacheddeviceobject } 
extern IODeviceReferenceAttached { locked failmounted deviceobject -- attacheddeviceobject ok }
extern IODeviceAttachObject { deviceobject todeviceobject -- realdeviceobject ok }

extern IODeviceCreateFileObject { flags deviceobject -- fileobject ok }
extern IODeviceCreateEx { extensionsize type name sizeinbytes driver permissions permanent -- deviceobject ok }
extern IODeviceCreate { extensionsize type name sizeinbytes driver permissions -- deviceobject ok }
extern IODeviceDeleteFileObject { object -- ok }

extern IODeviceDirectoryInsert { deviceobject -- ok }

extern IODeviceDeallocateObject { object -- }

extern IOLockDeviceDatabase { alertable -- ok }
extern IOLockDeviceDatabaseShared { alertable -- ok }
extern IOUnlockDeviceDatabase { -- }

extern IODeviceLock { alertable device -- ok }
extern IODeviceLockShared { device -- ok }
extern IODeviceUnlock { device -- }