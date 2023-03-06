fnptr IOFilesystemMountFunction { deviceobject -- fsdeviceobject ok }
fnptr IOFilesystemUnmountFunction { fsdeviceobject -- ok }
fnptr IOFilesystemFlushFunction { shutdown fsdeviceobject -- ok }
fnptr IOFilesystemUpdateFlagsFunction { newflags oldflags fsdeviceobject -- ok }
fnptr IOFilesystemVolumeQueryFunction { query fsdeviceobject -- ok }
fnptr IOFilesystemReclaimFunction { preferredcount fsdeviceobject -- actualcount }

struct IOFilesystem
	4 Next
	4 Reserved0 // leave room for a prev link just in case

	4 Driver

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
	// transparent part of IOMount

	4 Extension
	4 FsDeviceObject // representing this mount, not of the actual underlying device
	4 UnderlyingDeviceObject
	4 Filesystem
	4 RootFCB
	4 Flags

	// opaque part of IOMount

	4 ReclaimedFrom

	4 Next
	4 Prev

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

extern IOFilesystemMount { flags handle fsname -- ok }
extern IOMountObject { flags fileobject fsname -- ok }

extern IOFilesystemUnmount { handle -- ok }
extern IOUnmountObject { fileobject -- ok }

extern IOMountUpdateFlags { newflags handle -- ok }
extern IOMountUpdateFlagsObject { newflags fileobject -- ok }

extern IOMountGetFilesystemName { buffer handle -- ok }
extern IOMountGetFilesystemNameObject { buffer fileobject -- ok }

extern IOMountQueryAll { buffer maxquery -- count ok }

externptr IOMountCount