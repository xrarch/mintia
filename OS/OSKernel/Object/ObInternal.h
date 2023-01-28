extern ObiDirectoryObjectDelete { object -- }

struct ObiType
	4 Tag

	4 ObjectListHead

	4 OpenFunction
	4 CloseFunction
	4 DeleteFunction
	4 ParseFunction
	4 SetSecurityFunction

	4 Paged
	4 WaitOffset

	KeMutex_SIZEOF Mutex
endstruct

struct ObiDirectory
	4 ObjectListHead
	4 ChildCount
endstruct

// modify OBHANDLEENTRYSIZELOG if you change the size of this structure
struct ObiObjectTableEntry
	4 Object
	4 Access
endstruct

const OBHANDLEENTRYSIZELOG 1 // 4<<1 = 8 bytes





// An object may be allocated from either paged or nonpaged pool depending on
// what is specified in its type object. It is allocated in two pieces: one is
// an inline allocation from the specified pool, containing the appropriate
// header, the object's name, and the object's body. The other piece contains
// the header for the opposite pool. This attempts to maximize what can be
// placed in paged pool.
//
//
// Inline allocation layout:
//
// Ob[HeapType]Header
// Object Name (w/ null terminator and padding)
// ObCommonHeader (contains pointer to opposite header)
//  <-- object pointer
// Object Body

struct ObiCommonHeader
	4 PagedHeader
	4 NonpagedHeader
	4 Name
endstruct

struct ObiNonpagedHeader
	4 TypeObject

	4 HandleCount  // overlaid with object pointer in deferred deletion
	4 PointerCount // overlaid with Next link in deferred deletion

	4 QuotaBlock
endstruct

struct ObiPagedHeader
	4 TypeListNext
	4 TypeListPrev

	4 DirectoryListNext
	4 DirectoryListPrev

	4 DirectoryObject

	4 Flags

	4 UID
	4 GID
	4 Permissions

	4 PagedQuotaCharge
	4 NonpagedQuotaCharge
endstruct







extern ObiObjectHandleCountIncrement { object -- oldcount }
extern ObiObjectHandleCountDecrement { object -- oldcount }