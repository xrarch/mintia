const KEPROCESSNAMELEN 128

const WORKINGSETDEFAULTMAXIMUM 12
const WORKINGSETTHRASHMAXIMUM (WORKINGSETDEFAULTMAXIMUM 8 +)

const PROCESSSTATUS_READY 1
const PROCESSSTATUS_SUSPENDED 2

const PRIORITY_IDLE 0

const PRIORITY_LOWUSER 1

const PRIORITY_DEFAULT 12

const PRIORITY_HIGHUSER 23

const PRIORITY_LOWREALTIME 24

const PRIORITY_MEDIUMREALTIME 28

const PRIORITY_HIGHREALTIME 31

const PRIORITIES 32

struct KeProcess
	KEPROCESSNAMELEN Name

	4 GlobalListNext
	4 GlobalListPrev

	4 UserListNext
	4 UserListPrev

	// scheduler information

	4 ThreadCount
	4 ThreadListHead

	4 ProcessStatus

	4 BasePriority

	// security information

	4 User

	// heap allocator information

	4 HeapUsed

	// virtual memory information

	4 WorkingSetSize
	4 WorkingSetMaximum

	4 WorkingSetThrashMaximum

	4 PageFaultCount
endstruct

const THREADSTATUS_INITIALIZED 1
const THREADSTATUS_READY 2
const THREADSTATUS_SUSPENDED 3
const THREADSTATUS_RUNNING 4
const THREADSTATUS_WAITINGALERTABLE 5
const THREADSTATUS_WAITINGUNALERTABLE 6

const THREADDEFAULTQUANTUM 25

const KETHREADNAMELEN 128

struct KeThread
	4 KernelStackBottom
	4 KernelStackTop

	KETHREADNAMELEN Name

	4 Context

	4 Process

	4 ProcessNext
	4 ProcessPrev

	4 QueueNext
	4 QueuePrev

	4 Status

	4 Enqueued

	4 Priority

	4 Quantum
endstruct

extern KeProcessCurrentGet { -- current }

extern KeProcessInitialize { user name process -- ok }

externptr KeProcessListHead

externptr KeProcessKernelProcess

extern KeThreadInitialize { context1 context2 startfunc process name thread -- ok }

extern KeThreadWorkerInitialize { context1 context2 startfunc name thread -- ok }

extern KeThreadEnqueue { thread -- }

extern KeThreadDequeue { thread -- }

extern KeThreadNextPick { -- thread }

extern KeThreadSwitch { thread -- }

extern KeThreadReady { thread -- }

extern KeThreadYield { -- }

extern KeThreadYieldNow { yieldstatus -- }

externptr KeThreadNext

externptr KeThreadCurrent

externptr KeThreadSchedulerDPC

externptr KeThreadQuantumTimer