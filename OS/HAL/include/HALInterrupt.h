extern HALInterruptRegister { handler int ipl -- }
extern HALInterruptUnregister { int -- }

extern HALInterrupt { usermode -- }

fnptr HALInterruptHandler { usermode int -- }

externptr HALPlatformInterruptHandlers
externptr HALInterruptNested