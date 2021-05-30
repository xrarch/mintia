struct PsProcess
	KeProcess_SIZEOF PCB

	4 GlobalListNext
	4 GlobalListPrev

	// object manager

	4 HandleTable

	// memory management

	4 QuotaBlock

	// virtual memory information

	4 WorkingSetSize
	4 WorkingSetMaximum

	4 WorkingSetThrashMaximum

	4 PageFaultCount
endstruct

struct PsThread
	KeThread_SIZEOF TCB
endstruct

externptr PsProcessListHead

extern PsInitPhase0 { -- }

extern PsInitPhase1 { -- }