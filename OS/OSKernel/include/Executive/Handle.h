fnptr ExHandleEnumFunction { entryptr handletable -- }

const INITIALENTRIES 16

const EXTENDBYENTRIES 16

struct ExHandleTableHeader
	KeMutex_SIZEOF Mutex
	4 EntrySizeLog
	4 ChargedProcess

	4 Entries
	4 FreeEntries

	4 RecycleHandle

	4 Table
endstruct

extern ExHandleTableCreate { chargedprocess entrysizelog -- handletable ok }

extern ExHandleTableLock { handletable -- ok }

extern ExHandleTableUnlock { handletable -- }

extern ExHandleDelete { handle handletable locked -- ok }

extern ExHandleCreate { entryvalue handletable locked -- handle entryptr ok }

extern ExHandleLookup { handle handletable locked -- entryptr ok }