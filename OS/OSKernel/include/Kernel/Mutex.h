// do NOT change the size of this
struct KeMutex
	KeDispatchHeader_SIZEOF DispatchHeader
	4 OwningThread
	4 Mode
	
	4 Prev
	4 Next
endstruct

extern KeMutexInitialize { name mode mutex -- }
extern KeMutexRelease { abandon mutex -- ok }
extern KeMutexIsLocked { mutex -- locked }