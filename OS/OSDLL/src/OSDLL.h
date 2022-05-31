// init stuff

externptr DLLComponentsInitialized
externptr DLLProcessInit

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
	4 UMask

	(32 4 *) SignalActions
endstruct

extern DLLFindEnvironmentVariable { name envblock -- entry env ok }
extern DLLGetEnvironmentVariable { env name bufsize envblock -- ok }
extern DLLSetEnvironmentVariable { env name envblock -- ok }

// fastmutex stuff

extern DLLFastMutexInit { -- }
extern DLLFastMutexWait { fastmutex -- }
extern DLLFastMutexWake { fastmutex -- }

// debug stuff

extern DLLDebugTrace { context -- }

// module stuff

externptr DLLModuleMutex

extern DLLModuleInit { -- }

extern DLLDoFixup { ptr value type -- ok }
extern DLLGetSymbolByAddress { address dll -- symbase symname symbol ok }
extern DLLGetSymbolAddress { name dll -- address ok }

// heap stuff

const DLLHEAPSWIFTMAGIC  0x1DCE
const DLLHEAPFREEMAGIC   0xE433
const DLLHEAPDIRECTMAGIC 0xCE19

const DLLHEAPBLOCKSIZESHIFT 5
const DLLHEAPBLOCKMINSIZE   (1 DLLHEAPBLOCKSIZESHIFT <<)
const DLLHEAPBLOCKSIZEMASK  (DLLHEAPBLOCKMINSIZE 1 -)

const DLLHEAPBLOCKBUCKETS (OSPAGESIZE DLLHEAPBLOCKMINSIZE /)

struct DLLAllocatedHeapBlock
	1 BucketIndex
	1 LastBucketIndex
	2 Magic
endstruct

struct DLLHeapBlock
	1 BucketIndex
	1 LastBucketIndex
	2 Magic
	4 NextFree
	4 PrevFree
endstruct

struct DLLDirectHeapBlock
	4 Size
	1 BucketIndex
	1 LastBucketIndex
	2 Magic
endstruct

extern DLLHeapInit { -- }