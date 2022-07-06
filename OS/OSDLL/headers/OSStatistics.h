const OSSTATISTICSCOUNT 5

struct OSStatistics
	4 Interrupts
	4 ClockTicks
	4 Preemptions
	4 QuantumEnds
	4 SystemCalls

	80 Reserved
endstruct

extern OSStatisticsDump { diffquery query -- }