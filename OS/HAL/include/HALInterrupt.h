extern HALInterruptRegister { handler int ipl -- }
extern HALInterruptUnregister { int -- }

extern HALPlatformInterruptNext { -- int }
extern HALPlatformInterruptAcknowledge { int -- }
fnptr HALKeInterruptF { ipl int handler -- }

fnptr HALInterruptHandler { int -- }

externptr HALPlatformInterruptHandlers