#include "../../Common/Common.h"

const MBR_SIGNATURE 0xAA55

// the on-disk BPB is full of unaligned fields, so for convenience, it is
// decoded into the FatData structure at mount time.

// _U suffix indicates an unaligned field.

struct FatOnDiskBPB
	3 JmpBoot              // 0
	8 OEMName              // 3
	2 BytesPerSectorI_U    // 11
	1 SectorsPerClusterB   // 13
	2 ReservedSectorCountI // 14
	1 FatCountB            // 16
	2 RootEntryCountI_U    // 17
	2 TotalSectors16I_U    // 19
	1 MediaB               // 21
	2 FatSize16I           // 22
	2 SectorsPerTrackI     // 24
	2 NumberOfHeadsI       // 26
	4 HiddenSectors        // 28
	4 TotalSectors32       // 32
endstruct

struct FatOnDiskBPB12
	FatOnDiskBPB_SIZEOF CommonBPB // 0

	1 DriveNumberB                // 36
	1 Reserved1B                  // 37
	1 BootSignatureB              // 38
	4 VolumeID_U                  // 39
	11 VolumeLabel                // 43
	8 FileSysType                 // 54
	448 Irrelevant                // 62
	2 SignatureI                  // 510
endstruct

struct FatOnDiskBPB32
	FatOnDiskBPB_SIZEOF CommonBPB // 0

	4 FatSize32                   // 36
	2 ExtendedFlagsI              // 40
	2 FilesystemVersionI          // 42
	4 RootCluster                 // 44
	2 FilesystemInfoI             // 48
	2 BackupBootSectorI           // 50
	12 Reserved                   // 52
	1 DriveNumberB                // 64
	1 Reserved1B                  // 65
	1 BootSignatureB              // 66
	4 VolumeID_U                  // 67
	11 VolumeLabel                // 71
	8 FileSysType                 // 82
	420 Irrelevant                // 90
	2 SignatureI                  // 510
endstruct

// Lowercase characters are not allowed in the filename.
// The first byte of the filename indicates whether the entry is free.
// Bytes less than 0x20 are forbidden.
// The following bytes are also forbidden:
// 0x22, 0x2A, 0x2B, 0x2C, 0x2E, 0x2F, 0x3A, 0x3B, 0x3C, 0x3D, 0x3E, 0x3F,
// 0x5B, 0x5C, 0x5D, 0x7C
// All other bytes are allowed.

// Contents of the DIR_CrtDate, DIR_LstAccDate, and DIR_WrtDate fields must be
// in the following format:
// Bit positions 0 through 4 represent the day of the month
// Bit positions 5 through 8 represent the month of the year (1 = January, 12 = December)
// Bit positions 9 through 15 are the count of years from 1980

// Directory entry timestamps are 16-bit values with a granularity of 2 seconds.
// Contents of the DIR_CrtTime and DIR_WrtTime must be in the following format:
// Bit positions 0 through 4 contain elapsed seconds – as a count of 2-second increments
// Bit positions 5 through 10 represent number of minutes
// Bit positions 11 through 15 represent hours
// The valid time range is from Midnight 00:00:00 to 23:59:58.

// The maximum valid directory size is 2^21 bytes.

// The following six special
// characters are allowed in a long file name (they are not legal in a short file name):
// + , ; = [ ]

struct FatDirectoryEntry
	11 Name83                     // 0
	1 AttributeB                 // 11
	1 NTReservedB                 // 12
	1 CreationTimeTenthB          // 13
	2 CreationTimeI               // 14
	2 CreationDateI               // 16
	2 AccessDateI                 // 18
	2 FirstClusterHighI           // 20
	2 ModificationTimeI           // 22
	2 ModificationDateI           // 24
	2 FirstClusterLowI            // 26
	4 FileSizeBytes               // 28
endstruct

struct FatLFNEntry
	1 OrdinalB                    // 0
	10 Name1                      // 1
	1 AttributesB                 // 11
	1 TypeB                       // 12
	1 ChecksumB                   // 13
	14 Name2                      // 14
	2 FirstClusterLowI            // 26
	4 Name3                       // 28
endstruct

const FAT32_ACTIVEFAT      0x0F
const FAT32_MIRRORDISABLED 0x80

const FAT_ORDINAL_LAST 0x40

const FAT_ENTRY_FREE      0x00000000
const FAT_ENTRY_RESERVED  0x0FFFFFF0
const FAT_ENTRY_BAD       0x0FFFFFF7
const FAT_ENTRY_EOC       0x0FFFFFFF

const FAT_DIRENT_FREE       0xE5
const FAT_DIRENT_FREE_KANJI 0x05
const FAT_DIRENT_FREE_ALL   0x00 // all dirents from this one onward are free

const FAT_ATTR_READ_ONLY    0x01
const FAT_ATTR_HIDDEN       0x02
const FAT_ATTR_SYSTEM       0x04
const FAT_ATTR_VOLUME_ID    0x08
const FAT_ATTR_DIRECTORY    0x10 // FileSizeBytes must always be zero if this is set
const FAT_ATTR_ARCHIVE      0x20

const FAT_ATTR_LFN          (FAT_ATTR_READ_ONLY
                             FAT_ATTR_HIDDEN |
                             FAT_ATTR_SYSTEM |
                             FAT_ATTR_VOLUME_ID |)

const FAT_ATTR_LFN_MASK     (FAT_ATTR_READ_ONLY
                             FAT_ATTR_HIDDEN |
                             FAT_ATTR_SYSTEM |
                             FAT_ATTR_VOLUME_ID |
                             FAT_ATTR_DIRECTORY |
                             FAT_ATTR_ARCHIVE |)

struct FatData
	4 VolSizeBytes
	4 UsedBytes

	4 FCBRefTotal
	4 WritableFiles

	4 FatType
	4 ClusterCount
	4 DataStartSector
	4 DataStartByteOffset

	12 VolumeLabel

	KeMutex_SIZEOF FCBCacheMutex
	KeMutex_SIZEOF RenameMutex

	KeMutex_SIZEOF FreeClusterBitmapMutex
	ComBitmapHeader_SIZEOF FreeClusterBitmap
	4 FreeClusterHint


	// decoded BPB

	4 SectorSizeBytes
	4 ClusterSizeBytes
	4 ClusterSizeShift
	4 SectorSizeShift
	4 ReservedSectorCount
	4 FatCount
	4 RootEntryCount
	4 TotalSectors
	4 FatSize
	4 VolumeID
	4 RootFirstCluster
endstruct

struct FatFCBDataNonpaged
	4 LastFATLinkClusterOff // offset within file last looked up, in clusters
	4 LastFATLinkValue      // value of last look-up
endstruct

struct FatFCBData
	// ExSplayTree node; keep the next four fields at the beginning.
	4 ParentFCBData // splay tree parent
	4 LeftChild
	4 RightChild
	4 NameHash // splay tree value

	4 ParentDirDCBData

	4 FCB

	4 ReclaimNext
	4 ReclaimPrev

	4 Name

	4 DirentOffset

	4 StartingCluster

	4 InitialFlags
	4 References

	4 Flags

	4 Nonpaged
endstruct

struct FatDCBData
	FatFCBData_SIZEOF Common

	4 SplayTreeRoot

	ComBitmapHeader_SIZEOF DirentBitmapHeader
	4 DirentHint

	// used to track where the first 0x00 name entry is since it indicates
	// that there are no more entries forthcoming

	4 LastDirentIndex

	4 FreeDirentCount
endstruct

const FATFILECONTEXT_UPDATEONCLOSE 1
const FATFILECONTEXT_WRITABLE      2

const FATFILEFLAG_DELETE 1

extern FatFCBCacheFlush { destroy mount -- ok }
extern FatFCBReclaim { preferredcount fsdeviceobject -- actualcount }

extern FatClusterChainMeasureLength { cluster mount -- length ok }
extern FatFCBMeasureSize { fcb -- ok }

extern FatRootDirectoryFindVolumeLabel { mount -- }

extern FatClusterBitmapInitialize { mount -- ok }
extern FatClusterBitmapUninitialize { mount -- }

extern FatRootDirectoryCreate { mount -- ok }
extern FatFCBCreate { flags filetype mount -- fcb ok }
extern FatFCBDelete { writeout fcb -- }

extern FatReadWriteFile { iopl -- done ok }
extern FatReadDirectory { seek dirent fcb -- nextseek ok }
extern FatOpen { access fileobject -- ok }
extern FatClose { lasthandlecount access fileobject -- ok }
extern FatTruncate { newsize zero flags fcb -- ok }
extern FatParse { fileobject initialfcb process -- reparsepath ok }
extern FatDeleteObject { object -- ok }
extern FatUnlink { name dirfcb -- ok }
extern FatRename { srcname srcfcb destname destfcb -- ok }
extern FatPoke { poketype object -- }
extern FatSetSecurity { uid gid permissions object -- ok }

extern FatBlockMap { fileoffset fcb kflags -- voloffset ok }