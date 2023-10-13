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

extern KiInterruptUsermode { context userfunc dispatchfunc trapframe -- }

extern KiThreadQuantumEnd { -- }
extern KiThreadNextSwitch { -- }

extern KiIdleThreadEntry { -- }

extern KiThreadSelect { thread -- nextthread }

extern KiThreadWait { waitipl waitmode alertable explicitstatus -- ok }
extern KiThreadWaitBlocksDequeue { satisfy thread -- }

extern KiThreadYieldQuantum { -- }

extern KiDispatchSoftwareInterrupts { -- }

fnptr KiSoftwareInterruptHandlerF { -- }

externptr KiIdleThread

externptr KiPendingSoftwareInterrupts
externptr KiPendingSoftwareInterruptMask
externptr KiPendingSoftwareInterruptFirst

externptr KiDPCListHead
externptr KiDPCListTail

externptr KiTimerExpirationDPC

externptr KiThreadNext

externptr KiOldIPL

externptr KiDispatchEvents

externptr KiQuantumUnitsDefault

externptr KiClockTicks

externptr KiTimerTable

// must be a power of two

const TIMERTABLESIZE 128

const KIDISPATCHIRQ_QUANTUMEND 2
const KIDISPATCHIRQ_DPC        4