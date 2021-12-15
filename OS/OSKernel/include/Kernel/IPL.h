#include "<inc>/HALIPL.h"

extern KeIPLRaise { newipl -- oldipl }
extern KeIPLLower { newipl -- }
extern KeIPLCurrentGet { -- ipl }

extern KeInterrupt { ipl int handler -- }

const KERNELMODE 1
const USERMODE 2