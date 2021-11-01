// needs KeDispatch.h

struct KeEvent
	KeDispatchHeader_SIZEOF DispatchHeader
endstruct

const KEEVENT_SYNCH 1
const KEEVENT_NOTIF 2

extern KeEventInitialize { signaled type name event -- ok }
extern KeEventReset { event -- signaled }
extern KeEventSignal { priboost event -- ok }
extern KeEventPulse { priboost event -- ok }
extern KeEventSignalGetWaiter { priboost event -- waiter ok }