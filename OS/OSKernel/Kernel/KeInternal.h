extern KiAPCDispatchQueue { -- }
extern KiDPCDispatchQueue { -- }

extern KiSoftwareInterruptRequest { ipl -- }

extern KiThreadSwitch { thread -- }
extern KiThreadNextPick { -- thread }
extern KiThreadNextSwitch { -- }

extern KiThreadWakeup { waitstatus priboost thread -- woken }

extern KiThreadBasePrioritySet { priority thread -- }

extern KiThreadEnqueue { front thread -- }

extern KiDispatchInitialize { name type dobject -- }

extern KiDispatchSatisfyAll { waitstatus priboost object -- count }
extern KiDispatchSatisfyFirst { waitstatus priboost object signal -- wokenthread }

extern KiMutexOwnerSet { thread mutex -- }

extern KiThreadPriorityBoost { boost thread -- }

extern KiCopySignalFrame { signum dispatchfunc thread trapframe -- recheck }

extern KiTimerExpiration { -- }
extern KiThreadQuantumEnd { -- }

fnptr KiSoftwareInterruptHandlerF { -- }

externptr KiPendingSoftwareInterrupts
externptr KiPendingSoftwareInterruptMask
externptr KiPendingSoftwareInterruptFirst

externptr KiDPCListHead
externptr KiDPCListTail

externptr KiThreadNext
externptr KiThreadNextReason

externptr KiOldIPL

externptr KiTimerExpirationEarliest

externptr KiDispatchEvents

const KIDISPATCHIRQ_DPC        1
const KIDISPATCHIRQ_TIMER      2
const KIDISPATCHIRQ_QUANTUMEND 4