; AUTOMATICALLY GENERATED -- DO NOT EDIT

.section text

OSConsolePutCharacter:
.global OSConsolePutCharacter
	mov  t1, a0

	li   t0, 1
	sys  0

	mov  a0, t1

	ret

OSSystemAbort:
.global OSSystemAbort
	mov  t1, a0
	mov  t2, a1
	mov  t3, a2

	li   t0, 2
	sys  0

	mov  a0, t1

	ret

OSGetSystemConsoleName:
.global OSGetSystemConsoleName
	mov  t1, a0

	li   t0, 3
	sys  0

	mov  a0, t1

	ret

OSEventCreate:
.global OSEventCreate
	mov  t1, a0
	mov  t2, a1
	mov  t3, a2
	mov  t4, a3

	li   t0, 4
	sys  0

	mov  a1, t2
	mov  a0, t1

	ret

OSEventReset:
.global OSEventReset
	mov  t1, a0

	li   t0, 5
	sys  0

	mov  a1, t2
	mov  a0, t1

	ret

OSEventSignal:
.global OSEventSignal
	mov  t1, a0

	li   t0, 6
	sys  0

	mov  a0, t1

	ret

OSEventPulse:
.global OSEventPulse
	mov  t1, a0

	li   t0, 7
	sys  0

	mov  a0, t1

	ret

OSEventReadState:
.global OSEventReadState
	mov  t1, a0

	li   t0, 8
	sys  0

	mov  a1, t2
	mov  a0, t1

	ret

OSSemaphoreCreate:
.global OSSemaphoreCreate
	mov  t1, a0
	mov  t2, a1
	mov  t3, a2

	li   t0, 9
	sys  0

	mov  a1, t2
	mov  a0, t1

	ret

OSSemaphoreRelease:
.global OSSemaphoreRelease
	mov  t1, a0
	mov  t2, a1

	li   t0, 10
	sys  0

	mov  a0, t1

	ret

OSSemaphoreReadState:
.global OSSemaphoreReadState
	mov  t1, a0

	li   t0, 11
	sys  0

	mov  a1, t2
	mov  a0, t1

	ret

OSMutexCreate:
.global OSMutexCreate
	mov  t1, a0
	mov  t2, a1

	li   t0, 12
	sys  0

	mov  a1, t2
	mov  a0, t1

	ret

OSMutexRelease:
.global OSMutexRelease
	mov  t1, a0

	li   t0, 13
	sys  0

	mov  a0, t1

	ret

OSMutexReadState:
.global OSMutexReadState
	mov  t1, a0

	li   t0, 14
	sys  0

	mov  a1, t2
	mov  a0, t1

	ret

OSObjectOpen:
.global OSObjectOpen
	mov  t1, a0
	mov  t2, a1
	mov  t3, a2
	mov  t4, a3

	li   t0, 15
	sys  0

	mov  a1, t2
	mov  a0, t1

	ret

OSQuery:
.global OSQuery
	mov  t1, a0
	mov  t2, a1

	li   t0, 16
	sys  0

	mov  a0, t1

	ret

OSClose:
.global OSClose
	mov  t1, a0

	li   t0, 17
	sys  0

	mov  a0, t1

	ret

OSWaitForMultipleObjects:
.global OSWaitForMultipleObjects
	mov  t1, a0
	mov  t2, a1
	mov  t3, a2
	mov  t4, a3

	li   t0, 18
	sys  0

	mov  a0, t1

	ret

OSWaitForObject:
.global OSWaitForObject
	mov  t1, a0
	mov  t2, a1

	li   t0, 19
	sys  0

	mov  a0, t1

	ret

OSFileQuery:
.global OSFileQuery
	mov  t1, a0
	mov  t2, a1

	li   t0, 20
	sys  0

	mov  a0, t1

	ret

OSFileSeek:
.global OSFileSeek
	mov  t1, a0
	mov  t2, a1
	mov  t3, a2

	li   t0, 21
	sys  0

	mov  a1, t2
	mov  a0, t1

	ret

OSFileRead:
.global OSFileRead
	mov  t1, a0
	mov  t2, a1
	mov  t3, a2
	mov  t4, a3
	mov  t5, long [sp + 4]

	li   t0, 22
	sys  0

	mov  a1, t2
	mov  a0, t1

	ret

OSFileWrite:
.global OSFileWrite
	mov  t1, a0
	mov  t2, a1
	mov  t3, a2
	mov  t4, a3

	li   t0, 23
	sys  0

	mov  a1, t2
	mov  a0, t1

	ret

OSSwapFileCreate:
.global OSSwapFileCreate
	mov  t1, a0

	li   t0, 24
	sys  0

	mov  a1, t2
	mov  a0, t1

	ret

OSIOControl:
.global OSIOControl
	mov  t1, a0
	mov  t2, a1
	mov  t3, a2

	li   t0, 25
	sys  0

	mov  a1, t2
	mov  a0, t1

	ret

OSSectionCreate:
.global OSSectionCreate
	mov  t1, a0
	mov  t2, a1
	mov  t3, a2
	mov  t4, a3
	mov  t5, long [sp + 4]

	li   t0, 26
	sys  0

	mov  a1, t2
	mov  a0, t1

	ret

OSSectionMapView:
.global OSSectionMapView
	mov  t1, a0
	mov  t2, a1
	mov  t3, a2
	mov  t4, a3
	mov  t5, long [sp + 4]
	mov  a0, long [sp + 8]
	mov  a1, long [sp + 12]

	li   t0, 27
	sys  0

	mov  a1, t2
	mov  a0, t1

	ret

OSUnmapView:
.global OSUnmapView
	mov  t1, a0
	mov  t2, a1
	mov  t3, a2

	li   t0, 28
	sys  0

	mov  a0, t1

	ret

OSRemapView:
.global OSRemapView
	mov  t1, a0
	mov  t2, a1
	mov  t3, a2
	mov  t4, a3

	li   t0, 29
	sys  0

	mov  a0, t1

	ret

OSSetSwappiness:
.global OSSetSwappiness
	mov  t1, a0

	li   t0, 30
	sys  0

	mov  a0, t1

	ret

OSThreadSleep:
.global OSThreadSleep
	mov  t1, a0

	li   t0, 31
	sys  0

	mov  a0, t1

	ret

OSProcessCreate:
.global OSProcessCreate
	mov  t1, a0
	mov  t2, a1
	mov  t3, a2
	mov  t4, a3

	li   t0, 32
	sys  0

	mov  a1, t2
	mov  a0, t1

	ret

OSProcessSignal:
.global OSProcessSignal
	mov  t1, a0
	mov  t2, a1

	li   t0, 33
	sys  0

	mov  a0, t1

	ret

OSThreadCreate:
.global OSThreadCreate
	mov  t1, a0
	mov  t2, a1
	mov  t3, a2
	mov  t4, a3
	mov  t5, long [sp + 4]
	mov  a0, long [sp + 8]

	li   t0, 34
	sys  0

	mov  a1, t2
	mov  a0, t1

	ret

OSThreadTerminate:
.global OSThreadTerminate
	mov  t1, a0
	mov  t2, a1

	li   t0, 35
	sys  0

	mov  a0, t1

	ret

OSThreadResume:
.global OSThreadResume
	mov  t1, a0

	li   t0, 36
	sys  0

	mov  a0, t1

	ret

OSThreadReadStatus:
.global OSThreadReadStatus
	mov  t1, a0

	li   t0, 37
	sys  0

	mov  a1, t2
	mov  a0, t1

	ret

OSProcessReadStatus:
.global OSProcessReadStatus
	mov  t1, a0

	li   t0, 38
	sys  0

	mov  a1, t2
	mov  a0, t1

	ret

OSSetSystemConsole:
.global OSSetSystemConsole
	mov  t1, a0

	li   t0, 39
	sys  0

	mov  a0, t1

	ret

