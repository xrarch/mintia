extern ExMutexInit { -- }

extern ExMutexCreateObject { owninguser permissions name -- mutexobject ok }
extern ExMutexCreate { permissions name -- mutexhandle ok }

extern ExMutexRelease { mutexhandle -- ok }

extern ExMutexReadState { mutexhandle -- locked ok }