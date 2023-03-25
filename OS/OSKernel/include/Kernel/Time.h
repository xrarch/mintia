// do NOT change this
struct KeTime
	4 SecPart
	4 MsPart
endstruct

extern KeRealTimeToLocalTime { desttime srctime -- }
extern KeLocalTimeToRealTime { desttime srctime -- }

extern KeTimeZoneSet { offset -- oldoffset }
extern KeTimeZoneGet { -- offset }

extern KeTimeQuery { time -- }