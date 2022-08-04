#include "../Common/Module.h"

struct LdrMemoryDescriptor
	4 Next

	4 Type

	4 StartPFN
	4 Pages

	4 OriginalExtent
	4 OriginalDescriptor
endstruct

struct LdrInfo
	4 Major
	4 Minor
	4 ReturnSP
	4 MemoryDescriptorListHead
	4 DLLListHead
	4 ResourceListHead
	4 ArgsBuffer
	4 KeMain

	4 HALConsoleFBWidth
	4 HALConsoleFBHeight
	4 HALConsoleFBFormat
	4 HALConsoleFBAddr

	4 InterruptStack
	4 InterruptStackPages

	4 DebugInit

	4 PageFrameDB

	4 PageDirectory

	4 BootDeviceName

	4 TotalRAM

	// LIMNstation-specific -- to be IFDEF'd

	4 CitronBase
	4 LSICBase
endstruct

struct LdrBootResource
	4 Next
	4 Jettison
	64 Name
	4 Size
	4 Data
endstruct

const OSLOADERMEM_FREE        1 // not used by anything
const OSLOADERMEM_RECLAIMABLE 2 // used by firmware and bootloader
const OSLOADERMEM_USED        3 // needed by OS at runtime
const OSLOADERMEM_DEBUG       4 // needed by debugger at runtime

const OSLOADERMAJOR 3
const OSLOADERMINOR 0

const OSBOOTFBFORMAT_AB5G5R5 1