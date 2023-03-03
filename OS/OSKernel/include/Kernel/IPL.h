#include "<inc>/HALIPL.h"

extern KeIPLRaise { newipl -- oldipl }
extern KeIPLLower { newipl -- }
extern KeIPLCurrentGet { -- ipl }

extern KeClockTick { uptime interval trapframe -- }