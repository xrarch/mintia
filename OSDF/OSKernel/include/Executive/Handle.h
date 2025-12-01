fnptr ExHandleEnumFunction { entryptr handle handletable -- ok }

extern ExHandleTableDelete { func handletable -- }
extern ExHandleTableCreate { context quotablock entrysizelog -- handletable ok }

extern ExHandleTableLock { alertable handletable -- ok }
extern ExHandleTableLockShared { alertable handletable -- ok }
extern ExHandleTableUnlock { handletable -- }

extern ExHandleDelete { handle handletable locked -- entryptr entryvalue ok }
extern ExHandleCreate { entryvalue handletable locked -- handle entryptr ok }
extern ExHandleLookup { handle handletable locked -- entryptr ok }

extern ExHandleTableLookupAndReferenceObject { handle handletable locked -- object ok }

extern ExHandleTableGetContext { handletable -- context }