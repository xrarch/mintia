extern CoConsoleByFileHandle { requiredaccess filehandle -- consoleobject ok }

extern CoConsoleInitialize { header -- }

extern CoConsoleRemoveProcess { process -- ok }
extern CoConsoleInsertProcess { process consoleobject -- ok }

extern CoConsoleIOControl { arg2 arg1 access console lastmode -- ret ok }

extern CoDuplexObjectCreate { context txfunc flushfunc flags pri quotablock permanent name permissions -- duplexobject fileobject ok }
extern CoDuplexCreate { flags name permissions -- duplexhandle filehandle ok }

extern CoDuplexInputCharacter { c duplex -- ok }
extern CoDuplexReadTransmitCharacter { duplex -- c ok }
extern CoDuplexWriteCharacter { c duplex -- ok }

extern CoDuplexGetContext { duplex -- context }

fnptr CoDuplexTXFunction { c duplex -- ok }
fnptr CoDuplexFlushFunction { duplex -- }