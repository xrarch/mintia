extern ExEventInit { -- }

extern ExEventCreateObject { signaled type permissions name -- eventobject ok }
extern ExEventCreate { signaled type permissions name -- eventhandle ok }

extern ExEventResetObject { eventobject -- signaled }
extern ExEventReset { eventhandle -- signaled ok }

extern ExEventSignalObject { eventobject -- }
extern ExEventSignal { eventhandle -- ok }

extern ExEventPulseObject { eventobject -- }
extern ExEventPulse { eventhandle -- ok }

extern ExEventReadState { eventhandle -- signaled ok }