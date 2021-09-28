const AFSBLOCKSIZE 4096
const AFSBLOCKOFFMASK (AFSBLOCKSIZE 1 -)
const AFSBLOCKNUMBERMASK (AFSBLOCKOFFMASK ~)
const AFSBLOCKSHIFT 12

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

struct AFSData
	4 FATStart
	4 FATSize
	4 IStart
	4 ICount
	4 VolSize
	4 LastFreeBlock

	4 FCBRefTotal

	4 FCBUsedCount

	4 FCBReusableListHead
	4 FCBReusableListTail

	KeMutex_SIZEOF FCBCacheMutex
	(AFSFCBBUCKETS 8 *) FCBBucketListHeads
endstruct

struct AFSFCBData
	4 NextFCB
	4 PrevFCB

	4 NextReusableFCB
	4 PrevReusableFCB
	
	4 INum
	4 FirstFATLink
	4 UID
	4 Permissions
	4 IParent
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

externptr DriverAFSDispatch

externptr AFSFCBCacheCount