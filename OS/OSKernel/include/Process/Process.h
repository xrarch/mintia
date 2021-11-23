const WORKINGSETLISTCOUNT 8

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
	4 ThrottleFaultCount

	KeMutex_SIZEOF WorkingSetMutex

	4 WorkingSetSize
	4 WorkingSetMinimum
	4 WorkingSetMaximum

	4 WorkingSetMaximumIndex
	4 WorkingSetReplacementIndex

	(WORKINGSETLISTCOUNT 4 *) WorkingSetListPointers
endstruct

struct PsThread
	KeThread_SIZEOF TCB

	4 UserStackBottom
	4 UserStackTop
endstruct

struct PsOSDLLInfo
	4 StartFunction

	4 HeadSize

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

extern PsThreadUserEntry { context1 context2 -- }

extern PsProcessCreateObject { sectionobject inherithandles owninguser parentprocess permissions name -- processobject ok }
extern PsProcessCreate { sectionhandle inherithandles permissions name -- processhandle ok }
extern PsThreadCreateObject { context1 context2 startfunc permissions name processobject -- threadobject ok }
extern PsThreadCreate { context1 context2 startfunc permissions name processhandle -- threadhandle ok }

extern PsProcessObjectDelete { object -- }
extern PsThreadObjectDelete { object -- }

extern PsProcessGetOwner { process -- owninguser }