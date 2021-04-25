const DISPATCHOBJECT_TIMER 1

struct KeDispatchHeader
	4 Signaled

	4 Type

	4 WaitBlockListHead
	4 WaitBlockListTail
endstruct

// a thread can wait on up to THREADWAITBLOCKS dispatcher objects at a time, and a
// dispatcher object can be waited on by an arbitrary number of threads. WaitBlocks
// are the data structure that accomplishes this feature of the kernel.

struct KeDispatchWaitBlock
	4 Prev
	4 Next

	4 Enqueued

	4 WaitStatusReturn
	4 WaitType

	4 Thread
	4 Object
endstruct

const THREADWAITALL 1
const THREADWAITANY 2

const THREADWAITBLOCKS 4

extern KeDispatchInitialize { type dobject -- ok }

extern KeDispatchWaitBlockInitialize { thread waitblock -- ok }

extern KeDispatchSatisfyAll { waitstatus priboost object -- count ok }

extern KeDispatchSatisfyFirst { waitstatus priboost object -- ok }