#include "<inc>/HALIPL.h"

fnptr KeSoftwareInterruptHandlerF { -- }

extern KeIPLRaise { newipl -- oldipl }
extern KeIPLLower { newipl -- }
extern KeIPLCurrentGet { -- ipl }

extern KeInterrupt { ipl int handler -- }

extern KeSoftwareInterruptRequest { ipl -- }

externptr KePendingSoftwareInterrupts
externptr KePendingSoftwareInterruptMask
externptr KePendingSoftwareInterruptFirst