struct ComDLL
	4 Next
	4 Prev

	4 Name

	4 LoadCount

	4 HeadVAddr
	4 HeadLength

	4 LoadFunction

	4 Timestamp

	4 Base
	4 End

	4 TextSectionIndex

	4 Flags
endstruct

const COMDLLFLAG_RELOCATE 1 // couldn't be loaded at preferred base.
const COMDLLFLAG_FIXUP    2 // a dependency couldn't be loaded at its
                            // preferred base, or timestamp mismatch.

const COMDLLFLAG_SHOULDINIT 4

const COMDLLFLAG_REBASE   (COMDLLFLAG_RELOCATE COMDLLFLAG_FIXUP |)

struct XLOFFHeader
	4 Magic
	4 SymbolTableOffset
	4 SymbolCount
	4 StringTableOffset
	4 StringTableSize
	4 TargetArchitecture
	4 EntrySymbol
	4 Flags
	4 Timestamp
	4 SectionTableOffset
	4 SectionCount
	4 ImportTableOffset
	4 ImportCount
	4 HeadLength
endstruct

struct XLOFFSectionHeader
	4 NameOffset
	4 DataOffset
	4 DataSize
	4 VirtualAddress
	4 RelocTableOffset
	4 RelocCount
	4 Flags
endstruct

struct XLOFFSymbol
	4 NameOffset
	4 Value
	2 SectionIndexI
	1 TypeB
	1 FlagsB
endstruct

struct XLOFFImport
	4 NameOffset
	4 ExpectedTimestamp
	4 ExpectedBase
	4 FixupTableOffset
	4 FixupCount
endstruct

struct XLOFFRelocation
	4 Offset
	4 SymbolIndex
	2 RelocTypeI
	2 PaddingI
endstruct

struct XLOFFFixup
	4 Offset
	4 SymbolIndex
	2 RelocTypeI
	2 SectionIndexI
endstruct

const XLOFF_MAGIC 0x99584F46

const XLOFF_ARCHITECTURE_LIMN2600 1

#ifdef LIMN2600
const XLOFF_ARCHITECTURE XLOFF_ARCHITECTURE_LIMN2600
#endif

const XLOFF_RELOC_LIMN2500_LONG     1
const XLOFF_RELOC_LIMN2500_ABSJ     2
const XLOFF_RELOC_LIMN2500_LA       3
const XLOFF_RELOC_LIMN2600_FAR_INT  4
const XLOFF_RELOC_LIMN2600_FAR_LONG 5

const XLOFF_FLAG_ALIGN4K  1
const XLOFF_FLAG_FRAGMENT 2
const XLOFF_FLAG_ISTRIP   4  // can't be internally relocated.
const XLOFF_FLAG_GSTRIP   8  // can't be dynamically linked against.
const XLOFF_FLAG_FSTRIP   16 // can't be fixed up.

const XLOFF_SYMTYPE_GLOBAL  1
const XLOFF_SYMTYPE_LOCAL   2
const XLOFF_SYMTYPE_EXTERN  3
const XLOFF_SYMTYPE_SPECIAL 4
const XLOFF_SYMTYPE_DEXTERN 5

const XLOFF_SYMTYPE_RESOLVED 127 // not real, used internally

const XLOFF_SECTIONFLAG_BSS   1
const XLOFF_SECTIONFLAG_DEBUG 2
const XLOFF_SECTIONFLAG_TEXT  4
const XLOFF_SECTIONFLAG_MAP   8
const XLOFF_SECTIONFLAG_READONLY 16

const XLOFF_SPECIALVALUE_START 1
const XLOFF_SPECIALVALUE_SIZE  2
const XLOFF_SPECIALVALUE_END   3

extern ComDLLFindByName { name -- dll ok }

extern ComDLLGetSymbolByAddress { address dll -- symbase symname symbol ok }
extern ComDLLGetSymbol { name dll -- symbol ok }
extern ComDLLGetSymbolAddress { name dll -- address ok }

extern ComDLLLoad { flags name -- dll ok }
extern ComDLLUnload { dll -- }

externptr ComDLLListHead