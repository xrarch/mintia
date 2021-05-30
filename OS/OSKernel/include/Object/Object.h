struct ObHeader
	4 TypeListNext
	4 TypeListPrev

	4 DirectoryListNext
	4 DirectoryListPrev

	4 DirectoryObject

	4 Flags

	4 HandleCount
	4 PointerCount

	4 OwningUser
	4 Permissions

	4 Name
endstruct

const OBFLAGS_PERMANENT 1

const OBHANDLEENTRYSIZELOG 1 // 4<<1 = 8 bytes

extern ObInitPhase0 { -- }

extern ObInitPhase1 { -- }