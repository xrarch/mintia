// do NOT change the size of this
struct KeSemaphore
	KeDispatchHeader_SIZEOF DispatchHeader
endstruct

extern KeSemaphoreInitialize { count name semaphore -- }
extern KeSemaphoreRelease { adjustment semaphore -- ok }