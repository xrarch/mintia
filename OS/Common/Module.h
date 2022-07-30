struct ComDLL
	4 Next
	4 Prev

	4 Name

	4 LoadCount

	4 HeadVAddr
	4 HeadLength

	4 LoadFunction
	4 UnloadFunction

	4 Timestamp
	4 Base

	4 Flags
endstruct

const COMDLLFLAG_RELOCATE 1
const COMDLLFLAG_FIXUP    2

const COMDLLFLAG_REBASE   (COMDLLFLAG_RELOCATE COMDLLFLAG_FIXUP |)