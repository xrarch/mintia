const LOADERMAJOR 1
const LOADERMINOR 0

const BOOTFBFORMAT_AB5G5R5 1

struct LoaderInfo
	4 Major
	4 Minor
	4 ReturnSP
	4 InitMemBmp
	4 InitMemBmpSz
	4 DLLListHead
	4 ResourceListHead
	4 ArgsBuffer
	4 KeMain
	4 HALConsoleFBAddr
	4 HALConsoleFBWidth
	4 HALConsoleFBHeight
	4 HALConsoleFBFormat
	4 TotalRAM
	4 InterruptStack
	4 InterruptStackPages
	4 DebugInit
	4 PageFrameDB
	4 Heap
	4 HeapSize
	4 PageDirectory
	4 PlatformInfo
endstruct

struct LoaderInfoPlatform
	4 LowBuffer
	4 CitronBase
	4 LSICBase
	4 PlatformModel
	4 BusModel
	4 CPUModel
endstruct

struct BootResource
	4 Next
	4 Jettison
	64 Name
	4 Size
	4 Data
endstruct

struct LOFFLoaded
	4 Entrypoint

	4 Timestamp

	4 Base
	4 HeaderSize

	4 SymbolTable
	4 SymbolCount

	4 ImportTable
	4 ImportCount

	4 StringTable
	4 StringSize

	4 Rebased

	4 TextLinkedAddr
	4 TextRealAddr
	4 TextSize
	4 TextFixupTable
	4 TextFixupCount

	4 DataLinkedAddr
	4 DataRealAddr
	4 DataSize
	4 DataFixupTable
	4 DataFixupCount

	4 BSSLinkedAddr
	4 BSSRealAddr
	4 BSSSize
	4 BSSFixupTable
	4 BSSFixupCount
endstruct

struct DLL
	4 Next
	128 Name

	4 DriverDeviceNode
	4 DriverInitEarly
	4 DriverInit

	LOFFLoaded_SIZEOF LOFF
endstruct

struct LOFFSymbol
	4 NameOffset
	4 Section
	4 Type
	4 Value
	4 ImportIndex
endstruct

struct LOFFLoadedSection
	4 LinkedAddr
	4 RealAddr
	4 Size
	4 FixupTable
	4 FixupCount
endstruct