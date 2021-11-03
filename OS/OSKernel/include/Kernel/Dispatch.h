const DISPATCHOBJECT_TIMER 1
const DISPATCHOBJECT_MUTEX 2
const DISPATCHOBJECT_EVENTNOTIF 3
const DISPATCHOBJECT_EVENTSYNCH 4
const DISPATCHOBJECT_SEMAPHORE  5

// do NOT change the size of this
struct KeDispatchHeader
	4 Signaled

	4 Type

	4 WaitBlockListHead
	4 WaitBlockListTail

	4 Name

	4 Reserved1
	4 Reserved2
endstruct

// a thread can wait on up to THREADWAITBLOCKS dispatcher objects at a time, and a
// dispatcher object can be waited on by an arbitrary number of threads. WaitBlocks
// are the data structure that accomplishes this feature of the kernel.

struct KeDispatchWaitBlock
	4 Prev
	4 Next

	4 WaitStatusReturn
	4 WaitType

	4 Thread
	4 Object
endstruct

const THREADWAITALL 1
const THREADWAITANY 2

const THREADWAITBLOCKS 4

extern KeDispatchInitialize { name type dobject -- ok }
extern KeDispatchWaitBlockInitialize { thread waitblock -- ok }
extern KeDispatchSatisfyAll { waitstatus priboost object -- count ok }
extern KeDispatchSatisfyFirst { waitstatus priboost object signal -- wokenthread ok }
extern KeThreadWaitForMultipleObjects { waitmode alertable waittype timeout objectcount objecttable -- ok }
extern KeThreadWaitForObject { waitmode alertable timeout object -- ok }