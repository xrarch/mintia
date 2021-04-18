// this file should be included by including KeProcess.h

struct KeDispatchHeader
	4 Type
	4 Size
	4 Signaled
	4 WaitBlockListHead
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

const THREADWAITBLOCKS 4