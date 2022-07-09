extern HALInterruptRegister { handler int ipl -- }
extern HALInterruptUnregister { int -- }

extern HALPlatformInterruptNext { -- int }
extern HALPlatformInterruptAcknowledge { int -- }
extern HALInterrupt { -- }

fnptr HALInterruptHandler { int -- }

externptr HALPlatformInterruptHandlers
externptr HALInterruptNested