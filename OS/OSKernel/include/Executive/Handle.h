fnptr ExHandleEnumFunction { entryptr handle handletable -- ok }

const EXTENDBYENTRIES 16

struct ExHandleTableHeader
	ExRwLock_SIZEOF RwLock
	4 EntrySizeLog
	4 ChargedProcess

	4 Entries
	4 FreeEntries

	4 FreeListHead

	4 Table
endstruct

extern ExHandleTableDelete { func handletable -- }
extern ExHandleTableCreate { chargedprocess entrysizelog -- handletable ok }

extern ExHandleTableLockUnalertable { handletable -- }
extern ExHandleTableLockSharedUnalertable { handletable -- }
extern ExHandleTableLock { handletable -- ok }
extern ExHandleTableLockShared { handletable -- ok }
extern ExHandleTableUnlock { handletable -- }

extern ExHandleDelete { handle handletable locked -- entryptr entryvalue ok }
extern ExHandleCreate { entryvalue handletable locked -- handle entryptr ok }
extern ExHandleLookup { handle handletable locked -- entryptr ok }