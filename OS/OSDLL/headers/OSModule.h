const OSMODULEFORMAT_UNINITIALIZED 0
const OSMODULEFORMAT_LOFF 1

const OSMODULEFLAGS_REBASESELF 1
const OSMODULEFLAGS_REBASE     2

const OSMODULEFLAGS_REBASEEITHER (OSMODULEFLAGS_REBASE OSMODULEFLAGS_REBASESELF |)

const OSMODULEFLAGS_SHOULDINIT 4

struct OSModule
	4 Next
	4 Prev

	4 Name

	4 LoadCount

	4 HeadVAddr
	4 HeadLength

	4 Flags

	4 Format
endstruct

fnptr OSModuleMainFunction { -- ok }
fnptr OSModuleUnloadFunction { -- }

extern OSModuleLoad { name -- dll ok }
extern OSModuleUnload { dll -- }
extern OSGetSymbolAddress { name dll -- address ok }