// needs KeTimer.h
// needs KeDispatch.h

const KEPROCESSNAMELEN 64

const PROCESSSTATUS_READY 1
const PROCESSSTATUS_SUSPENDED 2

const PRIORITY_IDLE           0
const PRIORITY_LOWUSER        1
const PRIORITY_DEFAULT        8
const PRIORITY_HIGHUSER       23
const PRIORITY_LOWREALTIME    24
const PRIORITY_MEDIUMREALTIME 28
const PRIORITY_HIGHREALTIME   31

const PRIORITIES 32

struct KeProcess
	KEPROCESSNAMELEN Name

	// scheduler information

	4 ThreadCount
	4 ThreadListHead

	4 ProcessStatus

	4 BasePriority

	4 SignalThread
	4 Signaled
	4 AcceptMask

	4 Terminated
	4 KilledStatus

	// memory manager information

	4 PageDirectory
	4 ASID

	4 ResidentStackCount
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

const QUEUEFRONT 1
const QUEUEBACK  0

const THREADDEFAULTQUANTUM 30 // in milliseconds

const QUANTUMUNITSPERTICK 3

const KETHREADNAMELEN   64
const KETHREADSTACKSIZE 4096

struct KeThread
	4 KernelStackBottom
	4 KernelStackTop

	KETHREADNAMELEN Name

	4 Context

	4 Process

	4 ProcessNext
	4 ProcessPrev

	4 QueueNext
	4 QueuePrev

	4 KernelStackResident
	4 SwapInNext

	4 Status

	4 Enqueued

	4 BasePriority
	4 Priority

	4 BaseQuantum
	4 Quantum

	4 IgnoreKill

	4 Killed
	4 KilledStatus

	4 Suspended

	4 WaitMode
	4 WaitStatus
	4 WaitIPL

	4 MutexListHead

	4 WaitCount

	4 WaitOrReadyTimeSec

	(THREADWAITBLOCKS KeDispatchWaitBlock_SIZEOF *) WaitBlocks

	KeDispatchWaitBlock_SIZEOF TimeoutWaitBlock

	KeTimer_SIZEOF Timer

	4 SafeAccessAbort
	4 SafeAccessSP

	4 ExceptionSignals

	4 TrapFrame
endstruct

extern KeSafeCopyIn { dest src size -- ok }
extern KeSafeCopyOut { dest src size -- ok }
extern KeSafeStringCopyIn { dest src max -- ok }
extern KeSafeStringCopyOut { dest src max -- ok }
extern KeSafeStoreByte { byte dest -- ok }
extern KeSafeProbeWrite { dest -- ok }
extern KeSafeGetByte { src -- byte ok }

extern KeCopySignalFrame { signum dispatchfunc thread trapframe -- recheck }

extern KeThreadContinue { context thread -- }

extern KeProcessCurrent { -- current }
extern KeProcessInitialize { name asid parentprocess process -- }
extern KeProcessUninitialize { process -- }
extern KeProcessSignal { signal process -- ok }

extern KeProcessMaskSignal { signal process -- ok }
extern KeProcessUnmaskSignal { signal process -- ok }

externptr KeProcessListHead
externptr KeProcessIdleProcess

extern KeThreadInitialize { context1 context2 startfunc process kstack name thread -- }
extern KeThreadUninitialize { thread -- }
extern KeThreadIgnoreKill { thread -- oldcount }
extern KeThreadAcceptKill { thread -- oldcount }
extern KeThreadException { signal thread -- ok }
extern KeThreadTerminate { status thread -- }
extern KeThreadSuspend { thread -- }
extern KeThreadResume { thread -- }
extern KeThreadWakeForSignal { sig thread -- }
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
extern KeThreadWakeup { waitstatus priboost thread -- woken }
extern KeThreadSleep { ms waitmode alertable -- ok }
extern KeThreadPrioritySet { priority thread -- }

externptr KeThreadNext
externptr KeThreadNextReason
externptr KeThreadCurrent
externptr KeThreadQuantumDPC
externptr KeThreadPriorityQueueHeads
externptr KeThreadSwapInListHead
externptr KeThreadWaitListHead