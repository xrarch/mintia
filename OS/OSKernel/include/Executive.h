#include "<inc>/Executive/Boost.h"
#include "<inc>/Executive/RwLock.h"
#include "<inc>/Executive/Handle.h"
#include "<inc>/Executive/Call.h"
#include "<inc>/Executive/Event.h"
#include "<inc>/Executive/Semaphore.h"
#include "<inc>/Executive/Mutex.h"
#include "<inc>/Executive/Shutdown.h"
#include "<inc>/Executive/AvlTree.h"
#include "<inc>/Executive/Timer.h"

extern ExInitPhase0 { -- }
extern ExInitPhase1 { context1 context2 -- }

externptr ExBootFlags