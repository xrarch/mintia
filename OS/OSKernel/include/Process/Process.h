const WORKINGSETLISTCOUNT 8

// XXX if we ever have remote unmapping etc force the swap-in of the process
// header then we will be able to move some more of the stuff below into there
// instead of the process object body.

struct PsProcess // contains things that may need to be accessed at all times
	KeProcess_SIZEOF PCB

	4 GlobalListNext
	4 GlobalListPrev

	4 TrimListNext
	4 TrimListPrev

	KeMutex_SIZEOF ThreadCreateDeleteMutex

	KeEvent_SIZEOF TerminationEvent

	4 PagedArea

	// console

	4 ConsoleObject
	4 ConsoleListNext
	4 ConsoleListPrev

	// virtual memory information

	KeMutex_SIZEOF VADListMutex
	KeMutex_SIZEOF MappingMutex

	4 PinnedPageCount

	4 PageFaultCount
	4 ReFaultCount

	4 MmHeaderPTE
	4 MmHeader
endstruct

struct PsProcessPaged // contains things that only need to be accessed at IPLLOW
	4 ActivationBlock
	4 ActivationStatus

	4 PID
	4 ParentPID

	4 CleanedUp

	// security

	4 UID
	4 GID
	SePermissions_SIZEOF Permissions

	// object manager

	4 HandleTable

	// memory management

	4 QuotaBlock

	// jobs

	4 Job
	4 JobListNext
	4 JobListPrev

	// virtual memory

	4 VADTreeRoot

	64 CommittedPageTablesBitmap // assumes 32-bit but this will have to change completely if we ever do a 64-bit port anyway
	4 CommittedPageTablesCount

	4 MappedMMIOCount

	4 PTECountTableListHead
endstruct

struct PsThread
	KeThread_SIZEOF TCB

	4 IOListHead

	4 IOPDeferredListHead
	4 IOPDeferredListTail

	KeEvent_SIZEOF SynchronousIOEvent

	4 MemoryPrivilegedCount

	4 UTEB

	4 TID
	4 StackHasGuardPage
	4 StackBottom
	4 StackTop

	4 IPCBlock

	KeEvent_SIZEOF TerminationEvent

	4 FileCreationPermissions // also stashes the thread's last paging error
endstruct

struct PsOSDLLInfo
	4 StartFunction
	4 ExitFunction
	4 SignalDispatchFunction

#ifdef FOX32
	4 InterlockedIncStart
	4 InterlockedIncEnd

	4 TryAcquireStart
	4 TryAcquireEnd
#endif

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

externptr PsProcessListHead
externptr PsProcessListTail

externptr PsProcessTrimListHead
externptr PsProcessTrimListTail

externptr PsActiveProcessCount

externptr PsSystemProcess
externptr PsSystemInitProcess

externptr PsOSDLLInformation
externptr PsOSDLLFileObject

externptr PsProcessCreationCount
externptr PsProcessDeletionCount

extern PsProcessListLock { alertable -- ok }
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

extern PsProcessCreateDeleteLock { alertable processobject -- ok }
extern PsProcessCreateDeleteAcquireCheck { needsthread processobject -- ok }
extern PsProcessCreateDeleteUnlock { processobject -- }

extern PsProcessOpenByPID { access pid -- processhandle ok }

extern PsProcessInformationQueryObject { processobject query -- ok }
extern PsProcessInformationQuery { processhandle query -- ok }
extern PsProcessInformationQueryByPID { pid query -- ok }
extern PsProcessQueryAll { buffer maxquery -- count ok }

extern PsProcessSetConsoleGroup { filehandle processhandle -- ok }
extern PsProcessClearConsoleGroup { processhandle -- ok }

extern PsProcessBasePrioritySet { priority processhandle -- ok }

extern PsProcessCreateObject { quotauid sectionobject creationflags parentprocess permissions name -- processobject ok }
extern PsProcessCreate { quotauid sectionhandle creationflags permissions name -- processhandle ok }
extern PsThreadCreateObject { context1 context2 startfunc creationflags permissions name processobject -- threadobject ok }
extern PsThreadCreate { context1 context2 startfunc creationflags permissions name processhandle -- threadhandle ok }

extern PsThreadTerminateObject { status threadobject -- ok }
extern PsThreadTerminate { status threadhandle -- ok }

extern PsThreadSignal { signal threadhandle -- ok }

extern PsThreadMaskSignal { signal threadhandle -- ok }
extern PsThreadDeliverOnWaitSignal { signal threadhandle -- ok }

extern PsProcessGetUID { process -- uid }
extern PsProcessGetGID { process -- gid }

extern PsProcessRemove { locked trim process -- }
extern PsProcessInsert { locked trim process -- }

extern PsSignalAllProcesses { signal -- }

extern PsJobCreate { parentjobhandle signalonclose flags permissions name -- jobhandle ok }
extern PsJobAddProcess { processhandle jobhandle -- ok }
extern PsJobRemoveProcess { processhandle -- ok }
extern PsJobSignal { propagate signal jobhandle -- ok }

externptr PsProcessTable
externptr PsReaperEvent