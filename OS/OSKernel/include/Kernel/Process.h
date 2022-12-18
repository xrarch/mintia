#include "<inc>/HALRTC.h"

// needs KeTimer.h
// needs KeDispatch.h

const KERNELMODE 1
const USERMODE   2

const KEPROCESSNAMELEN 16

const PROCESSSTATE_RESIDENT   1
const PROCESSSTATE_TRANSITION 2
const PROCESSSTATE_OUTSWAPPED 3

const PRIORITIES 32

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
	4 ASID

	4 SwapListNext
	4 DeferredThreadListHead

	2 ResidentStackCountI
	2 ThreadCountI

	1 MemoryStateB
	1 TerminatedB
	1 BasePriorityB
	1 BaseQuantumB
endstruct

const THREADYIELD_PREEMPTED  1
const THREADYIELD_QUANTUMEND 2

const THREADSTATUS_INITIALIZED        1
const THREADSTATUS_READY              2
const THREADSTATUS_SUSPENDED          3
const THREADSTATUS_RUNNING            4
const THREADSTATUS_WAITINGALERTABLE   5
const THREADSTATUS_WAITINGUNALERTABLE 6
const THREADSTATUS_TERMINATED         7
const THREADSTATUS_BALSETREMOVED      8

const QUEUEFRONT 1
const QUEUEBACK  0

const THREADDEFAULTQUANTUM 30 // in milliseconds

const QUANTUMUNITSPERTICK 3

const KETHREADNAMELEN   16
const KETHREADSTACKSIZE 4096

struct KeThread
	4 KernelStackTop

	KETHREADNAMELEN Name

	4 Context

	4 Process

	4 ProcessNext
	4 ProcessPrev

	4 QueueNext
	4 QueuePrev

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
	4 SafeAccessSP

	4 Signals
	4 SignalAcceptMask

	4 TrapFrame

	4 UserTimeMs
	4 SystemTimeMs
	4 DPCTimeMs

	4 APCListHead
	4 APCListTail

	4 APCDisableCount
	4 IgnoreKill

	1 PendingSwapInB
	1 KernelStackResidentB
	1 KernelStackCanBeSwappedB
	1 InstantDecayB

	1 EnqueuedB
	1 BasePriorityB
	1 PriorityB
	1 QuantumB

	1 SuspendedB
	1 APCInProgressB
	1 StatusB
	1 WaitIPLB

	1 WaitModeB
	3 Padding

	2 WaitBlockCountI
	2 WaitCountI
endstruct

const THREADDEFAULTQUANTUMUNITS (THREADDEFAULTQUANTUM HALRTCINTERVAL / QUANTUMUNITSPERTICK *)

extern KeSafeCopyIn { dest src size -- ok }
extern KeSafeCopyOut { dest src size -- ok }
extern KeSafeStringCopyIn { dest src max -- ok }
extern KeSafeStringCopyOut { dest src max -- ok }
extern KeSafeMemset { ptr size word -- ok }
extern KeSafeStoreByte { byte dest -- ok }
extern KeSafeProbeWrite { dest -- ok }
extern KeSafeGetByte { src -- byte ok }

extern KeInterlockedIncrement { inc ptr -- oldcount }

extern KeCopySignalFrame { signum dispatchfunc thread trapframe -- recheck }

extern KeThreadContinue { signum context thread -- ok }

extern KeProcessCurrent { -- current }
extern KeProcessInitialize { name asid parentprocess process -- }
extern KeProcessUninitialize { process -- }
extern KeProcessSignal { signal process -- ok }
extern KeProcessBasePrioritySet { priority process -- }

externptr KeProcessListHead
externptr KeProcessIdleProcess
externptr KeProcessSwapInListHead

extern KeThreadInitialize { context1 context2 startfunc process kstack name thread -- }
extern KeThreadUninitialize { thread -- }
extern KeThreadIgnoreKill { thread -- oldcount }
extern KeThreadAcceptKill { thread -- oldcount }
extern KeThreadSignal { signal thread -- ok }
extern KeThreadTerminate { status thread -- }
extern KeThreadSuspend { thread -- }
extern KeThreadResume { thread -- }
extern KeThreadWakeForSignal { thread -- }
extern KeThreadMaskSignal { signal thread -- ok }
extern KeThreadUnmaskSignal { signal thread -- ok }
extern KeThreadRundown { thread -- }
extern KeThreadNextSignal { thread -- signum }
extern KeThreadIsKilled { mode alertable thread -- ok }
extern KeThreadEnqueue { front thread -- }
extern KeThreadDequeue { thread -- }
extern KeThreadNextPick { -- thread }
extern KeThreadSwitch { thread -- }
extern KeThreadReady { front thread -- }
extern KeThreadYield { yieldstatus -- }
extern KeThreadPriorityBoost { boost thread -- }
extern KeThreadNextSwitch { -- }
extern KeThreadSleep { ms waitmode alertable -- ok }
extern KeThreadBasePrioritySet { priority thread -- }
extern KeThreadPrioritySet { priority thread -- }
extern KeThreadAPCDisable { thread -- oldcount }
extern KeThreadAPCEnable { thread -- oldcount }

extern KeBoostReadyThreads { -- }

externptr KeThreadNext
externptr KeThreadNextReason
externptr KeThreadCurrent
externptr KeThreadQuantumDPC
externptr KeThreadPriorityQueueHeads
externptr KeThreadSwapInListHead
externptr KeThreadWaitListHead