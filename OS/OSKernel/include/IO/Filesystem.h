fnptr IOFilesystemMountFunction { mount -- ok }
fnptr IOFilesystemUnmountFunction { mount -- ok }
fnptr IOFilesystemFlushFunction { shutdown mount -- ok }
fnptr IOFilesystemUpdateFlagsFunction { newflags oldflags mount -- ok }
fnptr IOFilesystemVolumeQueryFunction { query mount -- ok }
fnptr IOFilesystemReclaimFunction { preferredcount mount -- actualcount }

struct IOFilesystem
	4 Next
	4 Reserved0 // leave room for a prev link just in case

	4 Name
	4 DispatchTable

	4 MountFunction
	4 UnmountFunction
	4 FlushFunction
	4 UpdateFlagsFunction
	4 Flags
	4 VolumeQueryFunction
	4 ReclaimFunction

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
	4 BlockSize
	4 RealVolumeFile
	4 VolumeCapturedFCB
	4 RealVolumeCapturedFCB
	4 ReclaimedFrom

	4 Reserved1
	4 Reserved2
	4 Reserved3
	4 Reserved4
	4 Reserved5
	4 Reserved6
	4 Reserved7
endstruct

const IOFSFLAG_NOAUTO 1

extern IOFilesystemRegister { filesystem -- ok }

extern IOFilesystemMount { flags handle fsname -- mount ok }
extern IOMountObject { flags fileobject fsname -- mount ok }

extern IOFilesystemUnmount { handle -- ok }
extern IOUnmountObject { fileobject -- ok }

extern IOMountUpdateFlags { newflags handle -- ok }
extern IOMountUpdateFlagsObject { newflags fileobject -- ok }

extern IOMountGetFilesystemName { buffer handle -- ok }
extern IOMountGetFilesystemNameObject { buffer fileobject -- ok }

extern IOMountQueryAll { buffer maxquery -- count ok }

extern IOMountGetFlags { mount -- flags }
extern IOMountSetFlags { flags mount -- }
extern IOMountSetContext { context mount -- }
extern IOMountGetContext { mount -- context }
extern IOMountSetRootFCB { fcb mount -- }
extern IOMountGetRootFCB { mount -- fcb }

extern IOFilesystemReclaimFCB { -- }

extern IOFilesystemSyncAll { shutdown -- ok }

externptr IOMountCount