const WORKINGSETLISTCOUNT 8

struct PsProcess
	KeProcess_SIZEOF PCB

	4 GlobalListNext
	4 GlobalListPrev

	4 PID
	4 ParentPID

	4 CleanedUp

	ExRwLock_SIZEOF ThreadCreateDeleteRwLock

	// memory management

	4 QuotaBlock

	// security

	4 OwningUser

	// object manager

	4 HandleTable

	KeEvent_SIZEOF TerminationEvent

	// virtual memory information

	KeMutex_SIZEOF VADListMutex

	4 VADListHead
	4 VADListTail

	4 VADLookupHint
	4 VADMapHint

	4 PageFaultCount
	4 ThrottleFaultCount

	KeMutex_SIZEOF WorkingSetMutex

	4 WorkingSetSize
	4 WorkingSetMinimum
	4 WorkingSetMaximum
	4 WorkingSetTrimFaultCount

	4 WorkingSetFreeListHead
	4 WorkingSetMaximumIndex
	4 WorkingSetReplacementIndex

	(WORKINGSETLISTCOUNT 4 *) WorkingSetListPointers
endstruct

struct PsThread
	KeThread_SIZEOF TCB

	4 UserStackBottom
	4 UserStackTop

	KeEvent_SIZEOF TerminationEvent
endstruct

struct PsOSDLLInfo
	4 StartFunction
	4 ExitFunction

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
externptr PsProcessListTail

externptr PsSystemProcess

externptr PsOSDLLInformation
externptr PsOSDLLSectionObject

extern PsProcessListLock { -- ok }
extern PsProcessListTryLock { -- ok }
extern PsProcessListIsLocked { -- locked }
extern PsProcessListUnlock { -- }

extern PsInitPhase0 { -- }
extern PsInitPhase1 { -- }

extern PsThreadUserEntry { context1 context2 -- }

extern PsThreadReadStatusObject { threadobject -- status ok }
extern PsThreadReadStatus { threadhandle -- status ok }

extern PsThreadResumeObject { threadobject -- }
extern PsThreadResume { threadhandle -- ok }

extern PsThreadInformationQueryObject { threadobject query -- ok }
extern PsThreadInformationQuery { threadhandle query -- ok }

extern PsProcessSignalObject { signal processobject -- ok }
extern PsProcessSignal { signal processhandle -- ok }

extern PsProcessReadStatusObject { processobject -- status ok }
extern PsProcessReadStatus { processhandle -- status ok }

extern PsProcessCreateDeleteLock { processobject -- ok }
extern PsProcessCreateDeleteLockShared { processobject -- ok }
extern PsProcessCreateDeleteAcquireCheck { needsthread processobject -- ok }
extern PsProcessCreateDeleteUnlock { processobject -- }

extern PsProcessOpenByPID { access pid -- processhandle ok }

extern PsProcessInformationQueryObject { processobject query -- ok }
extern PsProcessInformationQuery { processhandle query -- ok }
extern PsProcessInformationQueryByPID { pid query -- ok }

extern PsProcessCreateObject { sectionobject creationflags owninguser parentprocess permissions name -- processobject ok }
extern PsProcessCreate { sectionhandle creationflags permissions name -- processhandle ok }
extern PsThreadCreateObject { context1 context2 startfunc creationflags permissions name processobject -- threadobject ok }
extern PsThreadCreate { context1 context2 startfunc creationflags permissions name processhandle -- threadhandle ok }

extern PsProcessObjectDelete { object -- }
extern PsThreadObjectDelete { object -- }

extern PsThreadExit { -- }

extern PsThreadTerminateObject { status threadobject -- ok }
extern PsThreadTerminate { status threadhandle -- ok }

extern PsProcessGetOwner { process -- owninguser }

extern PsProcessRemove { process -- }
extern PsProcessInsert { process -- }