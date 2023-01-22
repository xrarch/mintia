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

extern ObiObjectHandleCountIncrement { object -- oldcount }
extern ObiObjectHandleCountDecrement { object -- oldcount }