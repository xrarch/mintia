// do NOT change the size of this
struct KeTimer
	KeDispatchHeader_SIZEOF DispatchHeader
	4 Next
	4 Prev
	4 Enqueued
	4 ExpiryTicks
	4 DPC
endstruct

extern KeTimerInitialize { name dpc timer -- }
extern KeTimerDequeue { timer -- ok }
extern KeTimerEnqueue { context1 context2 interval timer -- ok }
extern KeTimerReset { timer -- signaled }