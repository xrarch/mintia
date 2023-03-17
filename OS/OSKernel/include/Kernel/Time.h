// do NOT change this
struct KeTime
	4 SecPart
	4 MsPart
endstruct

extern KeTimeAddMs { ms time -- }
extern KeTimeSubMs { ms time -- }

// timedest = time1 + time2
extern KeTimeAdd { time1 time2 timedest -- }

// timedest = time1 - time2
extern KeTimeSub { time1 time2 timedest -- }