extern DebugGetSymbolByAddress { address dll -- symbase symname symbol ok }
extern DebugGetSymbol { name dll -- symbol ok }
extern DebugGetSymbolAddress { name dll -- address ok }
extern DebugGetSymDLL { address -- dll symbase symname symbol ok }
extern DebugGetDLL { name -- dll }