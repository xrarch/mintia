// needs KeDispatch.h

struct KeSemaphore
	KeDispatchHeader_SIZEOF DispatchHeader
	4 Count
endstruct

extern KeSemaphoreInitialize { count name semaphore -- ok }
extern KeSemaphoreRelease { adjustment semaphore -- ok }