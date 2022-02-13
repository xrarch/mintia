#include "<inc>/OSLoaderGlobal.h"

extern LdrMain { args -- ret }
extern LdrPanic { ... fmt -- }
extern LdrExit { ret -- }

extern LdrPlatformExit { ret -- }
extern LdrPlatformMemoryInit { -- }

extern LdrMemoryInit { -- }

externptr LdrMemoryDescriptorListHead
externptr LdrMemoryDescriptorListTail