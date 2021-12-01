extern ExSemaphoreInit { -- }

extern ExSemaphoreCreateObject { count owninguser permissions name -- semaphoreobject ok }
extern ExSemaphoreCreate { count permissions name -- semaphorehandle ok }

extern ExSemaphoreRelease { adjustment semaphorehandle -- ok }

extern ExSemaphoreReadState { semaphorehandle -- count ok }