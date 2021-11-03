// do NOT change the size of this
struct KeEvent
	KeDispatchHeader_SIZEOF DispatchHeader

	4 Reserved1
	4 Reserved2
endstruct

const KEEVENT_SYNCH 1
const KEEVENT_NOTIF 2

extern KeEventInitialize { signaled type name event -- ok }
extern KeEventReset { event -- signaled }
extern KeEventSignal { priboost event -- ok }
extern KeEventPulse { priboost event -- ok }
extern KeEventSignalGetWaiter { priboost event -- waiter ok }