#include "<inc>/OSLoaderGlobal.h"

extern LdrMain { -- ret }
extern LdrCrash { ... fmt -- }
extern LdrExit { ret -- }

extern LdrPlatformExit { ret -- }
extern LdrPlatformMemoryInit { -- }

extern LdrPlatformMapRange { vaddr phyaddr pages noncached reclaimablept -- }
extern LdrPlatformMapPage { vaddr phyaddr noncached reclaimablept -- }

extern LdrMemoryInit { -- }
extern LdrMemoryAllocate { size -- ptr ok }

extern LdrMemoryAllocatePhysicalRange { pages type -- desc ok }
extern LdrMemoryFreePhysicalRange { desc -- }

extern LdrKernelSpaceAllocate { pages prefva fixed -- realva ok }

externptr LdrArgsBuffer

externptr LdrMemoryDescriptorListHead
externptr LdrMemoryDescriptorListTail

externptr LdrHeapPointer
externptr LdrHeapTop

const LDRSTATUS_SUCCESS                0
const LDRSTATUS_NO_MEMORY             -1
const LDRSTATUS_ADDRESS_NOT_AVAILABLE -2
const LDRSTATUS_DEVICE_BUSY           -3
const LDRSTATUS_BAD_FILESYSTEM        -4
const LDRSTATUS_NOT_SUPPORTED         -5
const LDRSTATUS_UNALIGNED             -6
const LDRSTATUS_IO_ERROR              -7

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

extern LdrArgsValue { arg -- out }
extern LdrArgsCheck { arg -- present }

struct LdrBitmapHeader
	4 Data
	4 SizeInBits
endstruct

extern LdrBitmapInitialize { sizeinbits data header -- }
extern LdrBitmapFindRun { hint runlength header -- offset ok }
extern LdrBitmapSetBits { runlength index header -- }
extern LdrBitmapClearBits { runlength index header -- }
extern LdrBitmapCheckClearBits { runlength index header -- isclear }

externptr LdrBootDeviceName
externptr LdrBootDevice
externptr LdrCommonBlockBuffer

extern LdrIOInit { -- }
extern LdrPlatformIOInit { bootdevname -- }

struct LdrFile
	4 OpenFunction
	4 ReadFunction
	4 DriverContext
	4 MountContext
	4 BlockSize
	4 Device
endstruct

fnptr LdrMountFunction { device -- ok }

fnptr LdrOpenFunction { path device -- file ok }
fnptr LdrReadFunction { length buf offset file -- bytesread ok }

extern LdrAisixFSMount { device -- ok }

extern LdrDeviceMount { device -- ok }

extern LdrFileInitialize { file -- }
extern LdrFileOpen { path device -- file ok }
extern LdrFileRead { length buf offset file -- bytesread ok }