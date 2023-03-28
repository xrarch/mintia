fnptr HALRTCQueryF { time -- }
fnptr HALUptimeQueryF { time -- }
fnptr HALRTCSetF { time -- ok }

extern HALRTCQuery { time -- }
extern HALUptimeQuery { time -- }
extern HALRTCSet { time -- ok }

externptr HALRTCQueryFunction
externptr HALUptimeQueryFunction
externptr HALRTCSetFunction
externptr HALRTCInterval
externptr HALRTCIsLocalTime