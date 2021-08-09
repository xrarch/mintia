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

extern KeTimeSubMs { ms time -- }

// timedest = time1 + time2
extern KeTimeAdd { time1 time2 timedest -- }

// timedest = time1 - time2
extern KeTimeSub { time1 time2 timedest -- }