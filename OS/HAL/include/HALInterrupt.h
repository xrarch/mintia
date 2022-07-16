extern HALInterruptRegister { handler int ipl -- }
extern HALInterruptUnregister { int -- }

extern HALInterrupt { -- }

fnptr HALInterruptHandler { int -- }

externptr HALPlatformInterruptHandlers
externptr HALInterruptNested