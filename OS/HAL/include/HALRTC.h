#ifndef _HALRTC_

#define _HALRTC_

fnptr HALRTCQueryF { time -- }
fnptr HALUptimeQueryF { time -- }

extern HALRTCQuery { time -- }
extern HALUptimeQuery { time -- }

externptr HALRTCQueryFunction
externptr HALUptimeQueryFunction

#ifdef FOX32

const HALRTCINTERVAL 15

#else
#ifdef LIMNSTATION

const HALRTCINTERVAL 10

#endif
#endif

#endif