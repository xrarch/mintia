extern HALInterruptRegister { handler int ipl -- }
extern HALInterruptUnregister { int -- }

fnptr HALInterruptHandler { int -- }
fnptr HALPageFaultHandler { writing badaddr trapframe -- handled }