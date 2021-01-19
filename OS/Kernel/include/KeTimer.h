#include "<inc>/KeDPC.h"
#include "<inc>/KeTime.h"

externptr KeTimerListHead

struct KeTimer
	4 Next
	4 Prev
	4 Context1
	4 Context2
	4 Enqueued
	KeTime_SIZEOF ExpiryTime
	DPC_SIZEOF DPC
endstruct

struct KeTimerH
	4 Next
	4 Prev
	4 ExpiryTimeSec
	4 ExpiryTimeMs
endstruct

extern KeTimerCreate { function -- timer ok }

extern KeTimerInitialize { function timer -- ok }

extern KeTimerDequeue { timer -- ok }

extern KeTimerEnqueue { context1 context2 interval timer -- ok }