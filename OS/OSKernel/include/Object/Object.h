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
	4 QuotaBlock

	4 Deleted

	4 Name
endstruct

struct ObType
	4 Tag

	4 ObjectListHead

	4 OpenFunction
	4 CloseFunction
	4 DeleteFunction
	4 ParseFunction

	4 WaitOffset
endstruct

struct ObTypeInitializer
	4 Name
	4 Tag
	4 BodySize

	4 OpenFunction
	4 CloseFunction
	4 DeleteFunction
	4 ParseFunction
	4 WaitOffset
endstruct

struct ObDirectory
	4 ObjectListHead
endstruct

// modify OBHANDLEENTRYSIZELOG if you change the size of this structure
struct ObObjectTableEntry
	4 Object
	4 Access
endstruct

fnptr ObTypeOpenFunction { access object process -- ok }
fnptr ObTypeCloseFunction { access object process -- }
fnptr ObTypeDeleteFunction { object -- }
fnptr ObTypeParseFunction { flags path initialobject process -- reparsepath object ok }

const OBFLAGS_PERMANENT 1

const OBHANDLEENTRYSIZELOG 1 // 4<<1 = 8 bytes

externptr ObTypeObjectType
externptr ObTypeDirectoryType
externptr ObRootDirectoryObject
externptr ObObjectTypesDirectoryObject
externptr ObRootRwLock

extern ObInitPhase0 { -- }
extern ObInitPhase1 { -- }

extern ObHandleDestroyFunction { entryptr handle handletable -- ok }
extern ObHandleInheritFunction { entryptr handle handletable -- ok }

extern ObObjectCreate { name flags permissions owninguser quotabias bodysize type -- object ok }
extern ObObjectFree { object -- ok }
extern ObObjectDeallocate { object -- }

extern ObTypeInitializerInitialize { initializer -- }
extern ObTypeCreate { initializer -- type ok }

extern ObObjectReferenceByHandle { type handle -- access object ok }
extern ObObjectReferenceByHandleProcess { type handle process -- access object ok }

extern ObObjectClose { handle -- ok }
extern ObObjectCloseProcess { handle process -- ok }

extern ObObjectUncharge { obh -- }

extern ObObjectOpen { nocheck access object -- handle ok }
extern ObObjectOpenProcess { nocheck access object process -- handle ok }

extern ObObjectHandleCountIncrement { object -- oldcount }
extern ObObjectHandleCountDecrement { object -- oldcount }

extern ObObjectReferenceByPointer { object -- oldcount }
extern ObObjectDereferenceByPointer { object -- oldcount }

extern ObObjectQueryObject { object query -- ok }
extern ObObjectQuery { objecthandle query -- ok }