extern ExTimerCreateObject { permissions name -- timerobject ok }
extern ExTimerCreate { permissions name -- timerhandle ok }

extern ExTimerResetObject { timerobject -- signaled }
extern ExTimerReset { timerhandle -- signaled ok }

extern ExTimerEnqueueObject { interval timerobject -- ok }
extern ExTimerDequeueObject { timerobject -- ok }

extern ExTimerEnqueue { interval timerhandle -- ok }
extern ExTimerDequeue { timerhandle -- ok }

extern ExTimerReadState { timerhandle -- signaled ok }