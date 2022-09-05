struct CoConsoleHeader
	4 ProcessListHead
	4 Mode

	4 EchoBackspaceCount
	4 Echo
	4 EchoFSM

	2 WidthI
	2 HeightI
endstruct

externptr CoCtrl

extern CoConsoleByFileHandle { requiredaccess filehandle -- consoleobject ok }

extern CoConsoleInitialize { header -- ok }

extern CoConsoleSignal { signal console -- }

extern CoConsoleRemoveProcess { process -- ok }
extern CoConsoleInsertProcess { process consoleobject -- ok }

extern CoConsoleIOControl { arg2 arg1 access console lastmode -- ret ok }