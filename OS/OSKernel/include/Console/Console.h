struct CoConsole
	4 HostFCB
	// ClientFCB is stored in the FileControlBlock field of the Console's
	// device object

	4 InputBuffer
	4 OutputBuffer

	4 OutputFunction

	4 Initialized

	4 Context
endstruct

externptr CoDispatch
externptr CoDriver

fnptr CoOutputFunction { console -- ok }