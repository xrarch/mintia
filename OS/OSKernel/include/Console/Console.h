struct CoConsoleHeader
	4 ProcessListHead
	4 Mode

	2 WidthI
	2 HeightI
endstruct

externptr CoCtrl

extern CoConsoleByFileHandle { requiredaccess filehandle -- consoleobject ok }

extern CoConsoleInitialize { header -- }

extern CoConsoleSignal { signal console -- }

extern CoConsoleRemoveProcess { process -- ok }
extern CoConsoleInsertProcess { process consoleobject -- ok }

extern CoConsoleIOControl { arg2 arg1 access console lastmode -- ret ok }

extern CoDuplexObjectCreate { flags pri quotablock permanent name permissions -- duplexobject fileobject ok }