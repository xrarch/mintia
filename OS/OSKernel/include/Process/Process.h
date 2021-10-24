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

	KeMutex_SIZEOF VADListMutex

	4 VADListHead
	4 VADListTail

	4 VADLookupHint
	4 VADMapHint

	4 MappedPageFrames
	4 CommittedPageFrames

	4 PageFaultCount
endstruct

struct PsThread
	KeThread_SIZEOF TCB
endstruct

struct PsOSDLLInfo
	4 TextOffset
	4 TextSize
	4 TextVAddr

	4 DataOffset
	4 DataSize
	4 DataVAddr

	4 BSSSize
	4 BSSVAddr
endstruct

externptr PsProcessObjectType
externptr PsThreadObjectType
externptr PsProcessTable
externptr PsProcessListHead
externptr PsSystemProcess

externptr PsOSDLLInformation
externptr PsOSDLLSectionObject

extern PsInitPhase0 { -- }
extern PsInitPhase1 { -- }

extern PsProcessCreate { sectionobject inherithandles owninguser parentprocess permissions name -- processhandle ok }
extern PsThreadCreate { context1 context2 startfunc permissions name processhandle processptr -- threadhandle ok }
extern PsProcessObjectDelete { object -- }
extern PsThreadObjectDelete { object -- }