// do NOT change the size of this
struct KeSemaphore
	KeDispatchHeader_SIZEOF DispatchHeader
	4 Count

	4 Reserved1
	4 Reserved2
endstruct

extern KeSemaphoreInitialize { count name semaphore -- }
extern KeSemaphoreRelease { adjustment semaphore -- ok }