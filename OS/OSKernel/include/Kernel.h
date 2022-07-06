#include "<inc>/Kernel/Crash.h"
#include "<inc>/Kernel/IPL.h"

#include "<inc>/Kernel/DPC.h"
#include "<inc>/Kernel/Time.h"
#include "<inc>/Kernel/Dispatch.h"
#include "<inc>/Kernel/Timer.h"

#include "<inc>/Kernel/Mutex.h"
#include "<inc>/Kernel/Event.h"
#include "<inc>/Kernel/Semaphore.h"

#include "<inc>/Kernel/Process.h"

externptr KeStatistics

const DEBUGCHECKS 1