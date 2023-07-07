#define OSDLL

extern DLLStringCompareCaseInsensitive { str1 str2 -- eq }

extern DLLPathToHandleAndRelativePath { path -- handle rpath ok }

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
	4 UMask

	(32 4 *) InitialSignalActions

	4 UserObjectDirectory
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

const DLLHEAPSWIFTMAGIC  0xCE
const DLLHEAPFREEMAGIC   0xE4
const DLLHEAPDIRECTMAGIC 0xAF

const DLLHEAPBLOCKSIZESHIFT 6
const DLLHEAPBLOCKMINSIZE   (1 DLLHEAPBLOCKSIZESHIFT <<)
const DLLHEAPBLOCKSIZEMASK  (DLLHEAPBLOCKMINSIZE 1 -)

const DLLHEAPBLOCKBUCKETS (OSPAGESHIFT DLLHEAPBLOCKSIZESHIFT - 1 +)

struct DLLAllocatedHeapBlock
	1 BucketIndexB
	1 LastSizeB // in units of minimum heap block size
	1 SizeB
	1 MagicB
endstruct

struct DLLHeapBlock
	1 BucketIndexB
	1 LastSizeB // in units of minimum heap block size
	1 SizeB
	1 MagicB

	4 NextFree
	4 PrevFree
endstruct

struct DLLDirectHeapBlock
	4 Size
	1 Unused1B
	1 Unused2B
	1 Unused3B
	1 MagicB
endstruct

extern DLLHeapInit { -- }

// stream stuff

externptr DLLStdInStream
externptr DLLStdOutStream
externptr DLLStdErrStream

externptr DLLStdIoFastMutex

const DLLNOSTREAM 2

extern DLLStreamInit { -- }

#include "../Common/Module.h"