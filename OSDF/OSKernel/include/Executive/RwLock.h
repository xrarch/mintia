struct ExRwLockOwner
	4 Locked
	4 OwningThread
endstruct

struct ExRwLock
	ExRwLockOwner_SIZEOF ExclusiveOwner
	ExRwLockOwner_SIZEOF SharedOwner
	4 OwnerTable
	4 SharedSemaphore
	4 ExclusiveSyncEvent

	2 TableSizeI
	2 SharedWaitersCountI
	2 ExclusiveWaitersCountI
	2 HeldCountI
endstruct

extern ExRwLockInitialize { name rwlock -- }
extern ExRwLockUninitialize { rwlock -- }
extern ExRwLockRelease { rwlock -- }
extern ExRwLockAcquireExclusive { alertable nowait rwlock -- ok }
extern ExRwLockAcquireShared { alertable nowait canstarve rwlock -- ok }
extern ExRwLockDemoteToShared { rwlock -- ok }