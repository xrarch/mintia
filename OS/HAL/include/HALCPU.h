extern HALCPUHalt { -- }

extern HALCPUInterruptDisable { -- rs }
extern HALCPUInterruptRestore { rs -- }
extern HALCPUInterruptEnable { -- }

extern HALCPUContextInit { context1 context2 startfunc kstack process -- ctx }
extern HALCPUContextSwitch { old new -- }
extern HALCPURunInContext { int handler stack -- }
extern HALCPURunInContextNoInterrupts { handler stack arg1 arg0 -- ret0 ret1 }
extern HALCPUEnterUserMode { teb exitfunc context ustack entryfunc -- }
extern HALCPUIsUserTrapFrame { tf -- user }
extern HALCPUTrapFrameAbort { ok abort tf -- }

extern HALDcacheExpunge { -- }
extern HALIcacheSynchronize { -- }
extern HALCPUFence { -- }

externptr HALCPUModel
externptr HALPlatformModel
externptr HALBusModel