struct OSMountInformation
	OBNAMEMAX VolumeName
	OBNAMEMAX FilesystemName
	OBNAMEMAX VolumeLabel
	
	4 Flags

	4 VolumeCapacity
	4 VolumeUsed

	24 Reserved
endstruct

const OSMOUNT_READONLY 1
const OSMOUNT_NOUID    2
const OSMOUNT_MATCHUID 4