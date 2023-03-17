extern KiAPCDispatchQueue { -- }
extern KiDPCDispatchQueue { -- }

extern KiSoftwareInterruptRequest { ipl -- }

extern KiThreadSwitch { thread -- }

extern KiThreadWakeup { waitstatus priboost thread -- }

extern KiThreadBasePrioritySet { priority thread -- }

extern KiDispatchInitialize { name type dobject -- }

extern KiDispatchSatisfyAll { waitstatus priboost object -- }
extern KiDispatchSatisfyFirst { waitstatus priboost object signal -- wokenthread }

extern KiMutexOwnerSet { thread mutex -- }

extern KiThreadPriorityBoost { boost thread -- }

extern KiCopySignalFrame { signum dispatchfunc thread trapframe -- recheck }

extern KiTimerExpiration { -- }
extern KiThreadQuantumEnd { -- }
extern KiThreadNextSwitch { -- }

extern KiIdleThreadEntry { -- }

extern KiThreadSelect { thread -- nextthread }

extern KiThreadWait { waitipl waitmode alertable explicitstatus -- ok }
extern KiThreadWaitBlocksDequeue { satisfy thread -- }

extern KiThreadYieldQuantum { -- }

fnptr KiSoftwareInterruptHandlerF { -- }

externptr KiIdleThread

externptr KiPendingSoftwareInterrupts
externptr KiPendingSoftwareInterruptMask
externptr KiPendingSoftwareInterruptFirst

externptr KiDPCListHead
externptr KiDPCListTail

externptr KiThreadNext

externptr KiOldIPL

externptr KiTimerExpirationEarliest

externptr KiDispatchEvents

const KIDISPATCHIRQ_DPC        1
const KIDISPATCHIRQ_TIMER      2
const KIDISPATCHIRQ_QUANTUMEND 4