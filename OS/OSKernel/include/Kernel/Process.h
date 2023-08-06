const KERNELMODE 1
const USERMODE   2

const KEPROCESSNAMELEN 16

const PROCESSSTATE_RESIDENT   1
const PROCESSSTATE_TRANSITION 2
const PROCESSSTATE_OUTSWAPPED 3

const PRIORITIES 32

const QUANTUMDEFAULTMS    20 // in milliseconds (next multiple of platform clock will be used)
const QUANTUMUNITSPERTICK 2

struct KeProcess
	KEPROCESSNAMELEN Name

	// scheduler information

	4 ThreadListHead

	4 SignalThread

	4 KilledStatus

	4 UserTimeMs
	4 SystemTimeMs
	4 DPCTimeMs

	// memory manager information

	4 PageDirectory

#ifdef XR17032
	4 ASID
	4 ASIDSequenceNumber
#endif

	4 SwapListNext
	4 DeferredThreadListHead

	2 ResidentStackCountI
	2 ThreadCountI

	1 MemoryStateB
	1 TerminatedB
	1 BasePriorityB
	1 BaseQuantumB
endstruct

const THREADSTATUS_INITIALIZED        1 // thread was just initialized
const THREADSTATUS_READY              2 // thread is in priority queue or process swap list
const THREADSTATUS_SUSPENDED          3 // thread is suspended
const THREADSTATUS_RUNNING            4 // thread is the current thread
const THREADSTATUS_WAITINGALERTABLE   5 // thread is waiting alertably
const THREADSTATUS_WAITINGUNALERTABLE 6 // thread is waiting unalertably
const THREADSTATUS_TERMINATED         7 // thread yielded for the final time
const THREADSTATUS_TRANSITION         8 // thread is in the global swap list
const THREADSTATUS_STANDBY            9 // thread is currently the KiThreadNext

const KETHREADNAMELEN   16
const KETHREADSTACKSIZE 4096

struct KeThread
	4 KernelStackTop

	KETHREADNAMELEN Name

	4 Context

	4 ActualProcess
	4 Process

	4 ProcessNext
	4 ProcessPrev

	4 QueueNext
	4 QueuePrev

	// a special swap list link is needed because QueueNext/QueuePrev may be
	// pulling double duty as links for the global thread wait list.

	4 SwapListNext

	4 KilledStatus

	4 WaitStatus

	4 MutexListHead

	4 WaitOrReadyTimeSec

	(THREADWAITBLOCKS KeDispatchWaitBlock_SIZEOF *) WaitBlocks

	KeDispatchWaitBlock_SIZEOF TimeoutWaitBlock

	4 WaitBlockTable

	KeTimer_SIZEOF Timer

	4 SafeAccessAbort
	4 SafeSystemAccessAbort
	4 SafeAccessSP

	4 Signals
	4 SignalAcceptMask
	4 SignalDeliverOnWaitMask

	4 TrapFrame

	4 UserTimeMs
	4 SystemTimeMs
	4 DPCTimeMs

	4 APCListHead
	4 APCListTail

	4 UserAPCListHead
	4 UserAPCListTail

	4 APCDisableCount
	4 IgnoreKill

	1 WaitModeB
	1 KernelStackResidentB
	1 KernelStackCanBeSwappedB
	1 InstantDecayB

	1 InSwapListB
	1 BasePriorityB
	1 PriorityB
	1 QuantumB

	1 SuspendedB
	1 APCInProgressB
	1 StatusB
	1 WaitIPLB

	1 WaitBlockCountB
	1 WasPreemptedB
	1 QuantumEndCountB // since last voluntary block
	1 UserAPCTriggeredB
endstruct

extern KeSafeCopyIn { dest src size -- ok }
extern KeSafeCopyOut { dest src size -- ok }
extern KeSafeStringCopyIn { dest src max -- ok }
extern KeSafeStringCopyOut { dest src max -- ok }
extern KeSafeMemset { ptr size word -- ok }
extern KeSafeStoreByte { byte dest -- ok }
extern KeSafeProbeWrite { dest -- ok }
extern KeSafeGetByte { src -- byte ok }
extern KeSafeProbeSystemByte { src -- byte ok }

extern KeInterlockedIncrement { inc ptr -- oldcount }

extern KeThreadContinue { alertable signum context thread -- ok }
extern KeEnterUserMode { teb exitfunc context ustack entryfunc -- }

extern KeProcessQuerySignalThread { query process -- }

extern KeProcessCurrent { -- current }
extern KeProcessInitialize { name parentprocess process -- }
extern KeProcessSignal { signal process -- ok }
extern KeProcessBasePrioritySet { priority process -- }

extern KeProcessAttach { try process -- ipl ok }
extern KeProcessDetach { ipl -- }

extern KeAddressSpaceSwitch { process -- }

externptr KeProcessListHead
externptr KeIdleProcess
externptr KeProcessSwapInListHead

extern KeThreadInitialize { context1 context2 startfunc process kstack name thread -- }
extern KeThreadUninitialize { thread -- }
extern KeThreadIgnoreKill { thread -- oldcount }
extern KeThreadAcceptKill { thread -- oldcount }
extern KeThreadSignal { signal thread -- ok }
extern KeThreadTerminate { status thread -- }
extern KeThreadSuspend { thread -- }
extern KeThreadResume { thread -- }
extern KeThreadMaskSignal { signal thread -- ok }
extern KeThreadDeliverOnWaitSignal { signal thread -- ok }
extern KeThreadRundown { thread -- }
extern KeThreadDispatchSignal { dispatchfunc trapframe -- }
extern KeThreadIsKilled { ipl mode alertable waiting thread -- ok }
extern KeThreadReady { thread -- }
extern KeThreadBlock { status -- }
extern KeThreadPriorityBoost { boost thread -- }
extern KeThreadSleep { ms waitmode alertable -- ok }
extern KeThreadBasePrioritySet { priority thread -- }
extern KeThreadPrioritySet { priority thread -- }
extern KeThreadAPCDisable { thread -- oldcount }
extern KeThreadAPCEnable { thread -- oldcount }

extern KeBoostReadyThreads { -- }

externptr KeThreadCurrent
externptr KeThreadSwapInListHead
externptr KeThreadWaitListHead