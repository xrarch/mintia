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

const AFSFCBBUCKETS 32 // must be a power of two
const AFSFCBSHIFT 5 // 1<<AFSFCBSHIFT must equal AFSFCBBUCKETS
const AFSFCBMASK (AFSFCBBUCKETS 1 -)

const AFSFATMUTEXES 16 // must be a power of two
const AFSFATMUTEXMASK (AFSFATMUTEXES 1 -)

struct AFSData
	4 FATStart
	4 FATSize
	4 IStart
	4 ICount
	4 VolSize
	4 LastFreeBlock

	4 WritableFiles

	4 FCBRefTotal

	(AFSFCBBUCKETS KeMutex_SIZEOF *) FCBCacheMutexes
	(AFSFCBBUCKETS 8 *) FCBBucketListHeads
endstruct

struct AFSFCBData
	4 NextFCB
	4 PrevFCB
	
	4 INum
	4 FirstFATLink
	4 UID
	4 GID
	4 Permissions
	4 IParent

	4 LastFATLinkBlkOff
	4 LastFATLinkValue
endstruct

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
	4 reserved2
	4 bytesize
endstruct

const AFSSUPERBLOCKMAGIC   0xAFBBAFBB
const AFSSUPERBLOCKVERSION 0x6

extern AFSMountReference { mount -- oldcount }
extern AFSMountDereference { mount -- oldcount }

extern AFSFCBRemove { fcb buckethead -- }
extern AFSFCBInsert { fcb buckethead -- }

extern AFSFCBReclaim { fcb -- reclaimed }

extern AFSFCBCacheLockBucket { bucket mount -- ok }
extern AFSFCBCacheUnlockBucket { bucket mount -- }

extern AFSFCBCacheFlush { destroy mount -- ok }
extern AFSFCBRead { inum mount -- fcb ok }

extern AFSWalkFAT { growing startcount startblkno mount kflags -- left blkno ok }
extern AFSBlockMap { blkoff fcb kflags -- blkno ok }

extern AFSOpen { access fileobject -- ok }
extern AFSClose { access fileobject -- ok }

extern AFSParse { flags path initialfcb process -- reparsepath object ok }
extern AFSDeleteObject { object -- ok }
extern AFSReadFile { timeout flags kflags length offset buffer fcb lastmode -- bytesread ok }
extern AFSWriteFile { flags kflags length offset buffer fcb lastmode -- byteswritten ok }
extern AFSReadDirectory { seek dirent fcb -- nextseek ok }
extern AFSDirectoryGetEntry { seek afsdirent fcb -- nextseek ok }

externptr DriverAFSDispatch
externptr AFSFCBCacheCount