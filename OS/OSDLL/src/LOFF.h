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
	4 Type
endstruct

struct LOFFSymbol
	4 NameOffset
	4 Section
	4 Type
	4 Value
	4 ImportIndex
endstruct

const LOFFMAGIC         'LOF5'
const LOFFARCHITECTURE  5 // XXX limn2600 specific

const LOFFGLOBAL   1
const LOFFEXTERN   3
const LOFFRESOLVED 256

const LOFFTEXT 1
const LOFFDATA 2
const LOFFBSS  3