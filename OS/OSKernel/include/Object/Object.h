struct ObHeader
	4 TypeListNext
	4 TypeListPrev

	4 TypeObject

	4 DirectoryListNext
	4 DirectoryListPrev

	4 DirectoryObject

	4 Flags

	4 HandleCount
	4 PointerCount

	4 OwningUser
	4 Permissions

	4 QuotaCharge

	4 Name
endstruct

struct ObType
	4 Tag

	4 ObjectListHead

	4 DeleteFunction
endstruct

struct ObTypeInitializer
	4 Length

	4 Name
	4 Tag
	4 BodySize

	4 DeleteFunction
endstruct

fnptr ObTypeDeleteFunction { object -- }

const OBFLAGS_PERMANENT 1

const OBHANDLEENTRYSIZELOG 1 // 4<<1 = 8 bytes

externptr ObTypeObjectType

externptr ObTypeDirectoryType

extern ObInitPhase0 { -- }

extern ObInitPhase1 { -- }

extern ObObjectCreate { name flags permissions owninguser bodysize type -- object ok }

extern ObObjectFree { object -- ok }

extern ObTypeCreate { initializer -- type ok }

extern ObObjectReferenceByPointer { object -- oldcount }

extern ObObjectDereferenceByPointer { object -- oldcount }