#define OSDLL

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

const DLLHEAPSWIFTMAGIC  0x1DCE
const DLLHEAPFREEMAGIC   0xE433
const DLLHEAPDIRECTMAGIC 0xCE19

const DLLHEAPBLOCKSIZESHIFT 6
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

// stream stuff

externptr DLLStdInStream
externptr DLLStdOutStream
externptr DLLStdErrStream

externptr DLLStdIoFastMutex

const DLLNOSTREAM 2

extern DLLStreamInit { -- }

extern DLLStreamWindowFreeAll { streamptr -- }
extern DLLStreamWindowFlushAll { streamptr -- }

extern DLLStreamWindowRead { length buffer streamptr -- bytesread ok }
extern DLLStreamWindowWrite { length buffer streamptr -- byteswritten ok }

const DLLSTREAMWINDOWSIZELOG 4 // in pages

const DLLSTREAMWINDOWPAGES (1 DLLSTREAMWINDOWSIZELOG <<)
const DLLSTREAMWINDOWSIZE  (DLLSTREAMWINDOWPAGES OSPAGESHIFT <<)
const DLLSTREAMWINDOWOFFSETMASK (DLLSTREAMWINDOWSIZE 1 -)
const DLLSTREAMWINDOWNUMBERMASK (DLLSTREAMWINDOWOFFSETMASK ~)

const DLLSTREAMWCBCOUNT 32

struct DLLStreamWCB
	4 FreeNext
	4 FreePrev

	4 StreamPtr
	4 StreamNext
	4 StreamPrev

	4 RefCount
	4 FileOffset
	4 VirtualAddress
	4 Length
endstruct

#include "../Common/Module.h"