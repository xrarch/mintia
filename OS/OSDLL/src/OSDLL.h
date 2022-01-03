// PEB stuff

const OSENVIRONMENTSIZE 2048
const OSPARAMETERSIZE   1024

struct OSPEBs
	OSENVIRONMENTSIZE Environment
	OSPARAMETERSIZE Parameters
	4 ParameterCount
	4 StdIn
	4 StdOut
	4 StdErr
	4 CurrentDirectory
	4 DLLListHead
	4 DLLListTail
endstruct

extern DLLFindEnvironmentVariable { name envblock -- entry env ok }
extern DLLGetEnvironmentVariable { env name bufsize envblock -- ok }
extern DLLSetEnvironmentVariable { env name envblock -- ok }

// debug stuff

extern DLLDebugTrace { context -- }

// module stuff

externptr DLLProcessInit

extern DLLDoFixup { ptr value type -- ok }
extern DLLGetSymbolByAddress { address dll -- symbase symname symbol ok }

// heap stuff

const DLLHEAPINITIALSEGMENTS 128

const DLLHEAPSWIFTMAGIC 0x1DCE
const DLLHEAPFREEMAGIC  0xE433

const DLLHEAPSEGMENT_FREE          0
const DLLHEAPSEGMENT_DIRECT        1
const DLLHEAPSEGMENT_PAGE          2
const DLLHEAPSEGMENT_UNINITIALIZED 3

const DLLHEAPBLOCKMINSIZE   32
const DLLHEAPBLOCKSIZEMASK  (DLLHEAPBLOCKMINSIZE 1 -)
const DLLHEAPBLOCKSIZESHIFT 5

const DLLHEAPBLOCKBUCKETS (OSPAGESIZE DLLHEAPBLOCKMINSIZE /)

const DLLHEAPSEGMENTSIZEINITIAL 0x4000
const DLLHEAPSEGMENTMAXSIZE     0x80000

const DLLHEAPSEGMENTLENGTHLOOKUPSIZE (DLLHEAPSEGMENTMAXSIZE OSPAGESIZE /)

struct DLLHeapSegment
	DLLHEAPSEGMENTLENGTHLOOKUPSIZE AllocLengthLookup
	4 UsedCount
	4 Type
	4 VAddr
	4 Length
endstruct

struct DLLHeapBlock
	2 Magic
	1 BucketIndex
	1 LastBucketIndex
	4 NextFree
	4 PrevFree
endstruct

extern DLLPagePoolAlloc { length -- vaddr ok }
extern DLLPagePoolFree { vaddr -- }