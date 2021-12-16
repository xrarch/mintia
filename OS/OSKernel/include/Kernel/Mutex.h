// do NOT change the size of this
struct KeMutex
	KeDispatchHeader_SIZEOF DispatchHeader
	4 OwningThread
	4 Locked
	4 Mode
	
	4 Prev
	4 Next

	4 Reserved1
	4 Reserved2
endstruct

extern KeMutexInitialize { name mode mutex -- }
extern KeMutexRelease { abandon mutex -- ok }
extern KeMutexOwnerSet { thread mutex -- }
extern KeMutexIsLocked { mutex -- locked }