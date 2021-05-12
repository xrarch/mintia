// needs KeDispatch.h

struct KeMutex
	KeDispatchHeader_SIZEOF DispatchHeader
	4 OwningThread
	4 Locked
	4 Mode
	
	4 Next
endstruct

extern KeMutexInitialize { name mode mutex -- ok }

extern KeMutexRelease { mutex -- ok }

extern KeMutexOwnerSet { thread mutex -- ok }