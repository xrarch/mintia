struct OSFastMutex
	4 SemaphoreHandle
	4 LockCount
	4 Name
	4 OwningThread
	4 ThreadLockCount

	16 Reserved
endstruct

extern OSFastMutexInitialize { name fastmutex -- }
extern OSFastMutexDelete { fastmutex -- }

extern OSFastMutexAcquire { fastmutex -- }
extern OSFastMutexTryAcquire { fastmutex -- acquired }
extern OSFastMutexRelease { fastmutex -- }

extern OSInterlockedIncrement { inc ptr -- oldcount }