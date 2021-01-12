#include "<inc>/KeDPC.h"
#include "<inc>/KeTime.h"

externptr KeTimerListHead

struct KeTimer
	4 Next
	4 Prev
	KeTime_SIZEOF ExpiryTime
	DPC_SIZEOF DPC
endstruct

struct KeTimerH
	4 Next
	4 Prev
	4 ExpiryTimeSec
	4 ExpiryTimeMs
endstruct

extern KeTimerCreate { interval function context1 context2 -- timer ok }

extern KeTimerInitialize { interval function context1 context2 timer -- ok }

extern KeTimerDequeue { timer -- ok }

extern KeTimerEnqueue { timer -- ok }