const KEPROCESSNAMELEN 128

const WORKINGSETDEFAULTMAXIMUM 12
const WORKINGSETTHRASHMAXIMUM (WORKINGSETDEFAULTMAXIMUM 8 +)

const PROCESSSTATUS_INITIALIZED 1
const PROCESSSTATUS_READY 2

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

extern KeProcessInitialize { user name process -- ok }