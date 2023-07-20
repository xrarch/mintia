#include "../../Common/Common.h"

const AFSDEBUG 0

const AFSBLOCKSIZE 512
const AFSBLOCKOFFMASK (AFSBLOCKSIZE 1 -)
const AFSBLOCKNUMBERMASK (AFSBLOCKOFFMASK ~)
const AFSBLOCKSHIFT 9

struct AFSSuperblock
	4 Version
	4 Magic
	4 Dirty
	4 NumReservedBlocks
	4 FATStart
	4 FATSize
	4 IStart
	4 ICount
	4 DataStart
	4 DataSize
	4 VolSize
endstruct

const AFSFCBSHIFT 5
const AFSFCBBUCKETS (1 AFSFCBSHIFT <<)
const AFSFCBMASK (AFSFCBBUCKETS 1 -)

struct AFSData
	4 FATStart
	4 FATSize
	4 IStart
	4 ICount
	4 VolSize
	4 DataStart

	4 UsedBlocks

	ComBitmapHeader_SIZEOF FreeBlockBitmap
	4 FreeBlockHint

	KeMutex_SIZEOF FreeBlockBitmapMutex
	KeMutex_SIZEOF TreeMutex

	4 WritableFiles

	4 FCBRefTotal

	4 ReclaimableListHead
	4 ReclaimableListTail

	(AFSFCBBUCKETS 8 *) FCBBucketListHeads
endstruct

struct AFSFCBDataNonpaged
	4 LastFATLinkBlkOff
	4 LastFATLinkValue
endstruct

struct AFSFCBData
	4 NextFCB
	4 PrevFCB

	4 ReclaimNext
	4 ReclaimPrev
	
	4 INum
	4 FirstFATLink
	4 UID
	4 GID
	4 Permissions
	4 IParent

	4 InitialFlags
	4 References

	4 Flags

	4 Nonpaged
endstruct

const AFSFILECONTEXT_UPDATEONCLOSE 1
const AFSFILECONTEXT_WRITABLE      2

const AFSFILEFLAG_DELETE 1

struct AFSDirEnt
	4 INum
	60 name
endstruct

struct AFSINode
	4 type
	4 permissions
	4 uid
	4 iparent
	4 timestamp
	4 startblock
	4 gid
	4 bytesize
endstruct

const AFSSUPERBLOCKMAGIC   0xAFBBAFBB
const AFSSUPERBLOCKVERSION 0x6

extern AFSMountReference { mount -- oldcount }
extern AFSMountDereference { mount -- oldcount }

extern AFSINodeReclaim { preferredcount fsdeviceobject -- actualcount }

extern AFSFCBMetadataUnpin { fcb -- ok }
extern AFSFCBMetadataPin { fcb -- ok }

extern AFSPoke { poketype object -- }
extern AFSSetSecurity { uid gid permissions object -- ok }

extern AFSINodeUpdateModificationTime { fcb -- }

extern AFSINodeAllocate { mount -- inum inode bcb ok }
extern AFSINodeFree { inum mount -- }

extern AFSFCBReference { fcb -- }
extern AFSFCBDereference { fcb -- }

extern AFSTreeLock { alertable mount -- ok }
extern AFSTreeUnlock { mount -- }

extern AFSFCBCacheFlush { destroy mount -- ok }
extern AFSFCBRead { flags inum mount -- fcb ok }

extern AFSBlockBitmapInitialize { mount -- ok }
extern AFSBlockBitmapUninitialize { mount -- }

extern AFSBlockMap { blkoff fcb -- blkno ok }
extern AFSBlockTruncate { pintable newblocks oldblocks zero flags fcb -- ok }

extern AFSPinChain { lookuptable blkno mount -- }

extern AFSOpen { access fileobject -- ok }
extern AFSClose { lasthandlecount access fileobject -- ok }

extern AFSParse { fileobject initialfcb process -- reparsepath ok }
extern AFSDeleteObject { object -- ok }
extern AFSReadWriteFile { iopl -- done ok }

extern AFSDirectoryAllocateEntry { fcb -- dirent bcb ok }
extern AFSReadDirectory { count seek dirent fcb -- nextseek readcount ok }
extern AFSDirectoryGetEntry { seek afsdirent fcb -- nextseek ok }
extern AFSDirectoryFindEntry { name dirfcb -- dirent bcb ok }

extern AFSSetFile { info fileobject -- ok }

extern AFSVerifyName { name -- ok }

extern AFSUnlink { name dirfcb -- ok }
extern AFSTruncate { newsize zero flags fcb -- ok }
extern AFSRename { srcname srcfcb destname destfcb -- ok }

extern AFSINodeUpdate { fcb -- }

externptr DriverAFSDispatch
externptr AFSFCBCacheCount