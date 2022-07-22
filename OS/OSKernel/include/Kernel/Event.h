// do NOT change the size of this
struct KeEvent
	KeDispatchHeader_SIZEOF DispatchHeader
endstruct

extern KeEventInitialize { signaled type name event -- }
extern KeEventReset { event -- signaled }
extern KeEventSignal { priboost event -- }
extern KeEventPulse { priboost event -- }
extern KeEventSignalGetWaiter { priboost event -- waiter }