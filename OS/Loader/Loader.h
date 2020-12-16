#include "LoaderGlobal.h"

extern ArgsInit { argp -- }
extern ArgsValue { arg -- out }
extern ArgsCheck { arg -- present }

extern LoaderPanic { ... fmt -- }

extern ResourceLoadAll { -- ok }

extern AFSInit { -- }
extern AFSExit { -- }
extern AFSMount { dev -- ok }
extern AFSRead { buf len seek ino -- bytes }
extern AFSPath { path -- ino }
extern AFSFreeINode { ino -- }
extern AFSINodeSize { ino -- sz }

extern MemInit { -- }
extern MemAlloc { pages pstart -- astart ok }
extern MemFree { pages pstart -- }

extern LOFFLoad { path loff -- ok }
extern LOFFGetString { loff offset -- str }

struct LOFFLoaded
	4 Entrypoint

	4 Timestamp

	4 Base

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

struct LOFFHeader
	4 Magic
	4 SymbolTableOffset
	4 SymbolCount
	4 StringTableOffset
	4 StringTableSize
	4 TargetArchitecture
	4 EntrySymbol
	4 Stripped
	4 ImportTableOffset
	4 ImportCount
	4 Timestamp
	4 Fragment
	12 Reserved2
	4 TextHeader
	4 DataHeader
	4 BSSHeader
endstruct

struct LOFFSectionHeader
	4 FixupTableOffset
	4 FixupCount
	4 SectionOffset
	4 SectionSize
	4 LinkedAddress
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

struct LOFFImport
	4 Name
	4 ExpectedText
	4 ExpectedData
	4 ExpectedBSS
	4 Timestamp
endstruct

struct LOFFFixup
	4 SymbolIndex
	4 Offset
	4 Size
	4 Shift
endstruct

const LOFFGLOBAL 1
const LOFFEXTERN 3
const LOFFRESOLVED 256

const INITBITMAPSZ 2048

extern DLLLoad { name -- dll ok }
extern DLLResolveAll { -- ok }
extern DLLRelocateAll { -- ok }
extern DLLGetSymbolAddress { dll name -- address }

externptr LoaderEntrypoint
externptr LoaderTotalRAM
externptr LoaderHALName
externptr AFSDevice
externptr MemBitmap
externptr DLLListHead
externptr ArgsBuffer
externptr ResourceListHead
externptr DLLForceRelink

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
endstruct

struct AFSDirEnt
	4 INum
	60 Name
endstruct

struct AFSINode
	4 Type
	4 Permissions
	4 UID
	4 Reserved1
	4 Timestamp
	4 StartBlock
	4 Reserved2
	4 Size
endstruct