externptr KeTimerListHead
externptr KeTimerListTail

// do NOT change the size of this
struct KeTimer
	KeDispatchHeader_SIZEOF DispatchHeader
	4 Next
	4 Prev
	4 Enqueued
	KeTime_SIZEOF ExpiryTime
	KeDPC_SIZEOF DPC
endstruct

extern KeTimerInitialize { name function timer -- }
extern KeTimerDequeue { timer -- }
extern KeTimerEnqueue { context1 context2 interval timer -- }
extern KeTimerReset { timer -- signaled }