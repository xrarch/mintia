const WORKINGSETLISTCOUNT 8

struct PsProcess
	KeProcess_SIZEOF PCB

	4 GlobalListNext
	4 GlobalListPrev

	4 PID
	4 ParentPID

	4 CleanedUp

	ExRwLock_SIZEOF ThreadCreateDeleteRwLock

	KeEvent_SIZEOF TerminationEvent

	KeEvent_SIZEOF ActivationEvent
	4 ActivationStatus

	// console

	4 ConsoleObject
	4 ConsoleListNext
	4 ConsoleListPrev

	// memory management

	4 QuotaBlock

	// security

	4 UID
	4 GID
	SePermissions_SIZEOF Permissions

	// object manager

	4 HandleTable

	// virtual memory information

	4 SwapOutNext

	KeMutex_SIZEOF VADListMutex

	4 ModifiedPages

	4 VADListHead
	4 VADListTail

	4 VADListLRUHead

	4 PinnedPageCount

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

	4 FileCreationPermissions
endstruct

struct PsOSDLLInfo
	4 StartFunction
	4 ExitFunction
	4 SignalDispatchFunction

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

externptr PsActiveProcessCount

externptr PsSystemProcess
externptr PsSystemInitProcess

externptr PsOSDLLInformation
externptr PsOSDLLSectionObject

externptr PsProcessCreationCount
externptr PsProcessDeletionCount

externptr PsReaperEvent
extern PsReaperWorker { context1 context2 -- }

extern PsProcessListLock { -- ok }
extern PsProcessListTryLock { -- ok }
extern PsProcessListIsLocked { -- locked }
extern PsProcessListUnlock { -- }

extern PsInitPhase0 { -- }
extern PsInitPhase1 { -- }

extern PsThreadUserEntry { context1 context2 -- }

extern PsThreadGetFilePermissions { threadobject -- filepermissions }

extern PsThreadReadStatusObject { threadobject -- status ok }
extern PsThreadReadStatus { threadhandle -- status ok }

extern PsThreadSuspend { threadhandle -- ok }

extern PsThreadResume { threadhandle -- ok }

extern PsThreadInformationQueryObject { threadobject query -- ok }
extern PsThreadInformationQuery { threadhandle query -- ok }

extern PsProcessSignalObject { signal processobject -- ok }
extern PsProcessSignal { signal processhandle -- ok }

extern PsProcessReadStatusObject { processobject -- status ok }
extern PsProcessReadStatus { processhandle -- status ok }

extern PsProcessSignalActivation { activationstatus -- ok }
extern PsProcessWaitForActivationObject { timeout processobject -- activationstatus ok }
extern PsProcessWaitForActivation { timeout processhandle -- activationstatus ok }

extern PsProcessCreateDeleteLock { processobject -- ok }
extern PsProcessCreateDeleteLockShared { processobject -- ok }
extern PsProcessCreateDeleteAcquireCheck { needsthread processobject -- ok }
extern PsProcessCreateDeleteUnlock { processobject -- }

extern PsProcessOpenByPID { access pid -- processhandle ok }

extern PsProcessInformationQueryObject { processobject query -- ok }
extern PsProcessInformationQuery { processhandle query -- ok }
extern PsProcessInformationQueryByPID { pid query -- ok }
extern PsProcessQueryAll { buffer maxquery -- count ok }

extern PsProcessMaskSignal { signal processhandle -- ok }
extern PsProcessUnmaskSignal { signal processhandle -- ok }

extern PsProcessSetConsoleGroup { filehandle processhandle -- ok }
extern PsProcessClearConsoleGroup { processhandle -- ok }

extern PsProcessCreateObject { sectionobject creationflags parentprocess permissions name -- processobject ok }
extern PsProcessCreate { sectionhandle creationflags permissions name -- processhandle ok }
extern PsThreadCreateObject { context1 context2 startfunc creationflags permissions name processobject -- threadobject ok }
extern PsThreadCreate { context1 context2 startfunc creationflags permissions name processhandle -- threadhandle ok }

extern PsProcessObjectDelete { object -- }
extern PsThreadObjectDelete { object -- }

extern PsThreadExit { -- }

extern PsThreadTerminateObject { status threadobject -- ok }
extern PsThreadTerminate { status threadhandle -- ok }

extern PsProcessGetUID { process -- uid }
extern PsProcessGetGID { process -- gid }

extern PsProcessRemove { process -- }
extern PsProcessInsert { process -- }