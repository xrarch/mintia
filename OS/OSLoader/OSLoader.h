#include "<inc>/OSLoaderGlobal.h"

extern LdrMain { args -- ret }
extern LdrCrash { ... fmt -- }
extern LdrExit { ret -- }

extern LdrPlatformExit { ret -- }
extern LdrPlatformMemoryInit { -- }

extern LdrMemoryInit { -- }
extern LdrMemoryAllocate { size -- ptr ok }

extern LdrMemoryAllocatePhysicalRange { pages type -- desc ok }
extern LdrMemoryFreePhysicalRange { desc -- }

extern LdrKernelSpaceAllocate { pages prefva fixed -- realva ok }

externptr LdrMemoryDescriptorListHead
externptr LdrMemoryDescriptorListTail

externptr LdrHeapPointer
externptr LdrHeapTop

const LDRSTATUS_SUCCESS                0
const LDRSTATUS_NO_MEMORY             -1
const LDRSTATUS_ADDRESS_NOT_AVAILABLE -2

const KERNELSPACE      0x80000000
const KERNELSTRUCTURES 0xA0000000
const POOLSPACE        0xB8000000
const POOLSPACESIZE    (32 1024 * 1024 *)
const IDENTITYSPACE    0xC0000000

const PAGESIZE 4096
const PAGEOFFSETMASK (PAGESIZE 1 -)
const PAGENUMBERMASK (PAGEOFFSETMASK ~)
const PAGESHIFT 12

const IDENTITYSPACEMASK (IDENTITYSPACE ~)

const DEBUGCHECKS 1

struct LdrBitmapHeader
	4 Data
	4 SizeInBits
endstruct

extern LdrBitmapInitialize { sizeinbits data header -- }
extern LdrBitmapFindRun { hint runlength header -- offset ok }
extern LdrBitmapSetBits { runlength index header -- }
extern LdrBitmapClearBits { runlength index header -- }
extern LdrBitmapCheckClearBits { runlength index header -- isclear }