struct PsProcess
	KeProcess_SIZEOF PCB

	4 GlobalListNext
	4 GlobalListPrev

	4 PID

	// memory management

	4 QuotaBlock

	// security

	4 OwningUser

	// object manager

	4 HandleTable

	// virtual memory information

	4 WorkingSetSize
	4 WorkingSetMaximum

	4 WorkingSetThrashMaximum

	4 PageFaultCount
endstruct

struct PsThread
	KeThread_SIZEOF TCB
endstruct

externptr PsProcessObjectType

externptr PsThreadObjectType

externptr PsProcessTable

externptr PsProcessListHead

externptr PsSystemProcess

extern PsInitPhase0 { -- }

extern PsInitPhase1 { -- }

extern PsProcessCreate { inherithandles owninguser parentprocess permissions name -- processhandle ok }

extern PsThreadCreate { context1 context2 startfunc permissions name processhandle processptr -- threadhandle ok }

extern PsProcessObjectDelete { object -- }

extern PsThreadObjectDelete { object -- }