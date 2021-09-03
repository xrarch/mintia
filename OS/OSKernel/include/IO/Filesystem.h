fnptr IOFilesystemMountFunction { mount -- ok }
fnptr IOFilesystemUnmountFunction { mount -- ok }
fnptr IOFilesystemFlushFunction { mount -- ok }

struct IOFilesystem
	4 Next
	4 Reserved0 // leave room for a prev link just in case

	4 Name
	4 DispatchTable

	4 MountFunction
	4 UnmountFunction
	4 FlushFunction

	4 Reserved1
	4 Reserved2
	4 Reserved3
	4 Reserved4
	4 Reserved5
	4 Reserved6
	4 Reserved7
endstruct

struct IOMount
	4 Next
	4 Prev

	4 FSContext
	4 Filesystem
	4 VolumeFile
	4 RootFCB
	4 Flags

	4 Reserved1
	4 Reserved2
	4 Reserved3
	4 Reserved4
	4 Reserved5
	4 Reserved6
	4 Reserved7
endstruct

extern IOFilesystemRegister { filesystem -- ok }

extern IOMountObject { flags fileobject -- mount ok }
extern IOUnmountObject { fileobject -- ok }

extern IOFilesystemSyncAll { -- ok }

externptr IOMountListMutex