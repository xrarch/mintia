extern HALCPUHalt { -- }

extern HALCPUInterruptDisable { -- rs }
extern HALCPUInterruptRestore { rs -- }
extern HALCPUInterruptEnable { -- }

extern HALCPUContextInit { context1 context2 startfunc kstack process -- ctx }
extern HALCPUContextSwitch { old new -- }
extern HALCPUIsUserTrapFrame { tf -- user }
extern HALCPUTrapFrameAbort { ok abort tf -- }

extern HALDcacheExpunge { -- }
extern HALIcacheSynchronize { -- }
extern HALCPUFence { -- }

externptr HALCPUModel
externptr HALPlatformModel
externptr HALBusModel