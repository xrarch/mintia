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

const AFSFCBMAX 64 // only cache 64 FCBs

const AFSFCBBUCKETS 16 // must be a power of two
const AFSFCBSHIFT 4 // 1<<AFSFCBSHIFT must equal AFSFCBBUCKETS
const AFSFCBMASK (AFSFCBBUCKETS 1 -)

struct AFSData
	4 FATStart
	4 FATSize
	4 IStart
	4 ICount
	4 VolSize
	4 LastFreeBlock

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