externptr KeTimerListHead
externptr KeTimerListTail

// do NOT change the size of this
struct KeTimer
	KeDispatchHeader_SIZEOF DispatchHeader
	4 Next
	4 Prev
	4 Context1
	4 Context2
	4 Enqueued
	KeTime_SIZEOF ExpiryTime
	KeDPC_SIZEOF DPC
	4 Reserved1
	4 Reserved2
endstruct

extern KeTimerInitialize { name function timer -- }
extern KeTimerDequeue { timer -- }
extern KeTimerEnqueue { context1 context2 interval timer -- }