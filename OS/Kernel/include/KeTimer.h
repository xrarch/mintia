// needs KeDPC.h, KeTime.h, and KeDispatch.h

externptr KeTimerListHead

struct KeTimer
	KeDispatchHeader_SIZEOF DispatchHeader
	4 Next
	4 Prev
	4 Context1
	4 Context2
	4 Enqueued
	KeTime_SIZEOF ExpiryTime
	KeDPC_SIZEOF DPC
endstruct

extern KeTimerInitialize { name function timer -- ok }

extern KeTimerDequeue { timer -- ok }

extern KeTimerEnqueue { context1 context2 interval timer -- ok }