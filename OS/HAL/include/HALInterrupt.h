extern HALInterruptRegister { handler int ipl -- }
extern HALInterruptUnregister { int -- }

extern HALPlatformInterrupt { keint -- }
fnptr HALKeInterruptF { ipl int handler -- }

fnptr HALInterruptHandler { int -- }
fnptr HALPageFaultHandler { writing badaddr trapframe -- handled }