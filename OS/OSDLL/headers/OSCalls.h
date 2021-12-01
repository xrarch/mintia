// note: this header is used to generate the syscall stubs and trampolines

// Ex
extern OSConsolePutCharacter { c -- ok }
extern OSSystemAbort { num1 num2 msg -- ok }

extern OSEventCreate { signaled type permissions name -- eventhandle ok }
extern OSEventReset { eventhandle -- signaled ok }
extern OSEventSignal { eventhandle -- ok }
extern OSEventPulse { eventhandle -- ok }
extern OSEventReadState { eventhandle -- signaled ok }

extern OSSemaphoreCreate { count permissions name -- semaphorehandle ok }
extern OSSemaphoreRelease { adjustment semaphorehandle -- ok }
extern OSSemaphoreReadState { semaphorehandle -- count ok }

extern OSMutexCreate { permissions name -- mutexhandle ok }
extern OSMutexRelease { mutexhandle -- ok }
extern OSMutexReadState { mutexhandle -- locked ok }

// Ob
extern OSObjectOpen { flags access initialobjecthandle path -- handle ok }
extern OSQuery { handle query -- ok }

extern OSClose { handle -- ok }

extern OSWaitForMultipleObjects { waittype timeout objectcount objecthandletable -- ok }
extern OSWaitForObject { timeout objecthandle -- ok }

// IO
extern OSFileQuery { filehandle query -- ok }
extern OSFileSeek { offset handle mode -- newoffset ok }
extern OSFileRead { timeout flags length buffer filehandle -- bytesread ok }
extern OSFileWrite { flags length buffer filehandle -- byteswritten ok }

extern OSSwapFileCreate { filehandle -- ok }

// Mm
extern OSSectionCreate { pageprotection anonsize filehandle permissions name -- sectionhandle ok }
extern OSSectionMapView { length startva sectionoffset sectionhandle processhandle pageprotection flags -- realva ok }
extern OSUnmapView { length vaddr processhandle -- ok }
extern OSRemapView { pageprotection length vaddr processhandle -- ok }

extern OSSetSwappiness { swappiness -- ok }

// Ps
extern OSThreadSleep { ms -- ok }