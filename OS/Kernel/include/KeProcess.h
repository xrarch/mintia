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

const KETHREADNAMELEN 128

struct KeThread
	KETHREADNAMELEN Name

	4 Process

	4 ProcessNext
	4 ProcessPrev

	4 QueueNext
	4 QueuePrev

	4 Status

	4 Priority
endstruct

extern KeProcessCurrentGet { -- current }

extern KeProcessCreate { user name -- process ok }

extern KeProcessInitialize { user name process -- ok }

externptr KeProcessListHead