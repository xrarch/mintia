extern HALInterruptRegister { handler int ipl -- }
extern HALInterruptUnregister { int -- }

fnptr HALInterruptHandler { int -- }