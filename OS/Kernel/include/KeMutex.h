// needs KeDispatch.h

struct KeMutex
	KeDispatchHeader_SIZEOF DispatchHeader
	4 OwningThread
	4 Locked
	4 APCDisable
endstruct

extern KeMutexInitialize { name apcdisable mutex -- ok }

extern KeMutexAcquire { waitmode alertable mutex -- ok }

extern KeMutexRelease { mutex -- ok }