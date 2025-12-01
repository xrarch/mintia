extern HALInterruptRegister { handler int ipl -- }
extern HALInterruptUnregister { int -- }

extern HALInterrupt { trapframe -- }

fnptr HALInterruptHandler { trapframe int -- }

externptr HALPlatformInterruptHandlers
externptr HALInterruptNested