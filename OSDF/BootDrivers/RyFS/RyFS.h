#include "../../Common/Common.h"

const RYSECTORSIZE 512
const RYSECTORSHIFT 9

struct RyDirectory
	1 BitmapCountB
	1 VersionB
	2 MagicI
	2 SectorCountI
	8 Label
	2 AlignmentI
endstruct

struct RyDirectoryEntry
	2 FirstSectorI
	2 SectorCountI
	12 Name // 8.3 format with null terminator. the first two bytes being 0x0000 indicates a free entry.
endstruct

struct RyDataHeader
	1 MagicB
	1 AlignmentB
	2 NextSectorI
	2 DataSizeI
endstruct

struct RyData
	4 DirectorySectorCount
	4 BitmapStartSector
	4 BitmapSectorCount

	4 UsedSectors
	4 TotalVolumeSize

	8 Label

	ComBitmapHeader_SIZEOF SectorBitmapHeader
	4 FreeSectorHint

	KeMutex_SIZEOF BitmapMutex
	KeMutex_SIZEOF TreeMutex

	4 WritableFiles

	4 FCBRefTotal

	4 ReclaimableListHead
	4 ReclaimableListTail

	4 FCBDataListHead

	4 FileSplayTreeRoot
endstruct

struct RyFCBData
	// ExSplayTree node; keep the next four fields at the beginning.
	4 ParentFCBData // splay tree parent
	4 LeftChild
	4 RightChild
	4 Name // splay tree value

	4 FCB

	4 ReclaimNext
	4 ReclaimPrev

	4 NextFCBData
	4 PrevFCBData

	4 DirentIndex

	4 StartingSector

	4 References
endstruct

extern RyFCBCacheDestroy { mount -- }
extern RyFCBCacheFlush { mount -- }

extern RyInitializeVolumeMgmt { mount -- ok }
extern RyUninitializeVolumeMgmt { mount -- }

extern RyRootDirectoryCreate { mount -- ok }

extern RyReclaim { preferredcount fsdeviceobject -- actualcount }

extern RySetVolumeLabel { label mount -- ok }

extern RyMountReference { mount -- }
extern RyMountDereference { mount -- }

extern RySetFile { info fileobject -- ok }

extern RyReadWriteFile { iopl -- done ok }
extern RyReadDirectory { count seek dirent fcb -- nextseek readcount ok }
extern RyOpen { access fileobject -- ok }
extern RyClose { lasthandlecount access fileobject -- ok }
extern RyTruncate { newsize zero flags fcb -- ok }
extern RyParse { fileobject initialfcb process -- reparsepath ok }
extern RyDeleteObject { object -- ok }
extern RyUnlink { name dirfcb -- ok }
extern RyRename { srcname srcfcb destname destfcb -- ok }
extern RyPoke { poketype object -- }
extern RySetSecurity { uid gid permissions object -- ok }