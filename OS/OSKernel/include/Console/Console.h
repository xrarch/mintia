struct CoConsole
	4 HostFCB
	// ClientFCB is stored in the FileControlBlock field of the Console's
	// device object

	4 RawBufferAllocated

	4 RawBuffer
	4 CookedBuffer
	4 OutputBuffer

	4 OutputFunction

	4 Mode

	4 Initialized

	4 Context
endstruct

externptr CoDispatch
externptr CoDriver

fnptr CoOutputFunction { console -- ok }

extern CoConsoleOutputBufferGet { console -- outputbuffer }
extern CoConsoleRawBufferGet { console -- rawbuffer }
extern CoConsoleGetContext { console -- context }
extern CoConsoleCreateObject { outputfunc context rawbuffer quotablock name owninguser permissions permanent -- fileobject deviceobject ok }

extern CoConsoleCook { console -- }

extern CoConsoleRead { timeout flags length buffer lastmode console -- bytesread ok }
extern CoConsoleWrite { length buffer lastmode console -- byteswritten ok }