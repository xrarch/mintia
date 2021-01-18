// WARNING: changing the offset of the SecPart or MsPart field may break asm routines

struct KeTime
	4 SecPart
	4 MsPart
endstruct

const TIMEEARLIER 0
const TIMEEQUALTO 1
const TIMELATER 2

extern KeTimeCompare { time1 time2 -- result }

extern KeTimeAddMs { ms time -- }