const EXBOOSTRWSTARVE        6
const EXBOOSTEXCLUSIVEWAITER 2
const EXBOOSTSHAREDWAITER    1

const EXBOOSTTIMEOUT 300

struct ExRwLockOwner
	4 Locked
	4 OwningThread
endstruct

const EXRWFLAG_NOBOOST 1

struct ExRwLock
	ExRwLockOwner_SIZEOF ExclusiveOwner
	ExRwLockOwner_SIZEOF SharedOwner
	4 OwnerTable
	4 TableSize
	4 Flags
	4 HeldCount
	4 SharedWaitersCount
	4 SharedSemaphore
	4 ExclusiveWaitersCount
	4 ExclusiveSyncEvent
endstruct

extern ExRwLockInitialize { name rwlock -- }
extern ExRwLockUninitialize { rwlock -- }
extern ExRwLockRelease { rwlock -- }
extern ExRwLockAcquireExclusive { alertable nowait rwlock -- ok }
extern ExRwLockAcquireShared { alertable nowait canstarve rwlock -- ok }
extern ExRwLockDemoteToShared { rwlock -- ok }