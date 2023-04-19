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

OSGetBootFlags:
.global OSGetBootFlags

	li   t0, 4
	sys  0

	mov  a1, t2
	mov  a0, t1

	ret

OSContinue:
.global OSContinue
	mov  t1, a0
	mov  t2, a1

	li   t0, 5
	sys  0


	ret

OSQueryTime:
.global OSQueryTime

	li   t0, 6
	sys  0

	mov  a1, t2
	mov  a0, t1

	ret

OSQueryUptime:
.global OSQueryUptime

	li   t0, 7
	sys  0

	mov  a1, t2
	mov  a0, t1

	ret

OSTimeZoneGet:
.global OSTimeZoneGet

	li   t0, 8
	sys  0

	mov  a1, t2
	mov  a0, t1

	ret

OSTimeZoneSet:
.global OSTimeZoneSet
	mov  t1, a0

	li   t0, 9
	sys  0

	mov  a1, t2
	mov  a0, t1

	ret

OSTimeSet:
.global OSTimeSet
	mov  t1, a0
	mov  t2, a1

	li   t0, 10
	sys  0

	mov  a0, t1

	ret

OSShutdownSystem:
.global OSShutdownSystem
	mov  t1, a0

	li   t0, 11
	sys  0

	mov  a0, t1

	ret

OSVersion:
.global OSVersion
	mov  t1, a0

	li   t0, 12
	sys  0

	mov  a0, t1

	ret

OSEventCreate:
.global OSEventCreate
	mov  t1, a0
	mov  t2, a1
	mov  t3, a2
	mov  t4, a3

	li   t0, 13
	sys  0

	mov  a1, t2
	mov  a0, t1

	ret

OSEventReset:
.global OSEventReset
	mov  t1, a0

	li   t0, 14
	sys  0

	mov  a1, t2
	mov  a0, t1

	ret

OSEventSignal:
.global OSEventSignal
	mov  t1, a0

	li   t0, 15
	sys  0

	mov  a0, t1

	ret

OSEventPulse:
.global OSEventPulse
	mov  t1, a0

	li   t0, 16
	sys  0

	mov  a0, t1

	ret

OSEventReadState:
.global OSEventReadState
	mov  t1, a0

	li   t0, 17
	sys  0

	mov  a1, t2
	mov  a0, t1

	ret

OSSemaphoreCreate:
.global OSSemaphoreCreate
	mov  t1, a0
	mov  t2, a1
	mov  t3, a2

	li   t0, 18
	sys  0

	mov  a1, t2
	mov  a0, t1

	ret

OSSemaphoreRelease:
.global OSSemaphoreRelease
	mov  t1, a0
	mov  t2, a1

	li   t0, 19
	sys  0

	mov  a0, t1

	ret

OSSemaphoreReadState:
.global OSSemaphoreReadState
	mov  t1, a0

	li   t0, 20
	sys  0

	mov  a1, t2
	mov  a0, t1

	ret

OSMutexCreate:
.global OSMutexCreate
	mov  t1, a0
	mov  t2, a1

	li   t0, 21
	sys  0

	mov  a1, t2
	mov  a0, t1

	ret

OSMutexRelease:
.global OSMutexRelease
	mov  t1, a0

	li   t0, 22
	sys  0

	mov  a0, t1

	ret

OSMutexReadState:
.global OSMutexReadState
	mov  t1, a0

	li   t0, 23
	sys  0

	mov  a1, t2
	mov  a0, t1

	ret

OSTimerCreate:
.global OSTimerCreate
	mov  t1, a0
	mov  t2, a1

	li   t0, 24
	sys  0

	mov  a1, t2
	mov  a0, t1

	ret

OSTimerReset:
.global OSTimerReset
	mov  t1, a0

	li   t0, 25
	sys  0

	mov  a1, t2
	mov  a0, t1

	ret

OSTimerEnqueue:
.global OSTimerEnqueue
	mov  t1, a0
	mov  t2, a1

	li   t0, 26
	sys  0

	mov  a0, t1

	ret

OSTimerDequeue:
.global OSTimerDequeue
	mov  t1, a0

	li   t0, 27
	sys  0

	mov  a0, t1

	ret

OSTimerReadState:
.global OSTimerReadState
	mov  t1, a0

	li   t0, 28
	sys  0

	mov  a1, t2
	mov  a0, t1

	ret

OSGetStatistics:
.global OSGetStatistics
	mov  t1, a0

	li   t0, 29
	sys  0

	mov  a0, t1

	ret

OSNvramVariableQuery:
.global OSNvramVariableQuery
	mov  t1, a0

	li   t0, 30
	sys  0

	mov  a0, t1

	ret

OSNvramVariableSet:
.global OSNvramVariableSet
	mov  t1, a0
	mov  t2, a1

	li   t0, 31
	sys  0

	mov  a0, t1

	ret

OSNvramVariableRead:
.global OSNvramVariableRead
	mov  t1, a0
	mov  t2, a1

	li   t0, 32
	sys  0

	mov  a1, t2
	mov  a0, t1

	ret

OSIsComputerOn:
.global OSIsComputerOn

	li   t0, 33
	sys  0

	mov  a1, t2
	mov  a0, t1

	ret

OSIsComputerOnFire:
.global OSIsComputerOnFire

	li   t0, 34
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

	li   t0, 35
	sys  0

	mov  a1, t2
	mov  a0, t1

	ret

OSQuery:
.global OSQuery
	mov  t1, a0
	mov  t2, a1

	li   t0, 36
	sys  0

	mov  a0, t1

	ret

OSClose:
.global OSClose
	mov  t1, a0

	li   t0, 37
	sys  0

	mov  a0, t1

	ret

OSWaitForMultipleObjects:
.global OSWaitForMultipleObjects
	mov  t1, a0
	mov  t2, a1
	mov  t3, a2
	mov  t4, a3
	mov  t5, long [sp + 4]

	li   t0, 38
	sys  0

	mov  a0, t1

	ret

OSWaitForObject:
.global OSWaitForObject
	mov  t1, a0
	mov  t2, a1
	mov  t3, a2

	li   t0, 39
	sys  0

	mov  a0, t1

	ret

OSHandleDuplicate:
.global OSHandleDuplicate
	mov  t1, a0
	mov  t2, a1
	mov  t3, a2
	mov  t4, a3

	li   t0, 40
	sys  0

	mov  a1, t2
	mov  a0, t1

	ret

OSObjectDirectoryCountQuery:
.global OSObjectDirectoryCountQuery
	mov  t1, a0

	li   t0, 41
	sys  0

	mov  a1, t2
	mov  a0, t1

	ret

OSObjectDirectoryQueryAll:
.global OSObjectDirectoryQueryAll
	mov  t1, a0
	mov  t2, a1
	mov  t3, a2

	li   t0, 42
	sys  0

	mov  a1, t2
	mov  a0, t1

	ret

OSObjectDirectoryCreate:
.global OSObjectDirectoryCreate
	mov  t1, a0
	mov  t2, a1

	li   t0, 43
	sys  0

	mov  a1, t2
	mov  a0, t1

	ret

OSObjectDirectoryInsert:
.global OSObjectDirectoryInsert
	mov  t1, a0
	mov  t2, a1

	li   t0, 44
	sys  0

	mov  a0, t1

	ret

OSObjectDirectoryRemove:
.global OSObjectDirectoryRemove
	mov  t1, a0

	li   t0, 45
	sys  0

	mov  a0, t1

	ret

OSSetSecurity:
.global OSSetSecurity
	mov  t1, a0
	mov  t2, a1
	mov  t3, a2
	mov  t4, a3

	li   t0, 46
	sys  0

	mov  a0, t1

	ret

OSFileQuery:
.global OSFileQuery
	mov  t1, a0
	mov  t2, a1

	li   t0, 47
	sys  0

	mov  a0, t1

	ret

OSFileTruncate:
.global OSFileTruncate
	mov  t1, a0
	mov  t2, a1
	mov  t3, a2

	li   t0, 48
	sys  0

	mov  a1, t2
	mov  a0, t1

	ret

OSFileSeek:
.global OSFileSeek
	mov  t1, a0
	mov  t2, a1
	mov  t3, a2

	li   t0, 49
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

	li   t0, 50
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

	li   t0, 51
	sys  0

	mov  a1, t2
	mov  a0, t1

	ret

OSFileFlush:
.global OSFileFlush
	mov  t1, a0
	mov  t2, a1

	li   t0, 52
	sys  0

	mov  a0, t1

	ret

OSFileSetInformation:
.global OSFileSetInformation
	mov  t1, a0
	mov  t2, a1

	li   t0, 53
	sys  0

	mov  a0, t1

	ret

OSFileReadAsync:
.global OSFileReadAsync
	mov  t1, a0
	mov  t2, a1
	mov  t3, a2
	mov  t4, a3
	mov  t5, long [sp + 4]
	mov  a0, long [sp + 8]

	li   t0, 54
	sys  0

	mov  a0, t1

	ret

OSFileWriteAsync:
.global OSFileWriteAsync
	mov  t1, a0
	mov  t2, a1
	mov  t3, a2
	mov  t4, a3
	mov  t5, long [sp + 4]
	mov  a0, long [sp + 8]

	li   t0, 55
	sys  0

	mov  a0, t1

	ret

OSFileCancelIO:
.global OSFileCancelIO
	mov  t1, a0
	mov  t2, a1

	li   t0, 56
	sys  0

	mov  a0, t1

	ret

OSDirectoryRename:
.global OSDirectoryRename
	mov  t1, a0
	mov  t2, a1
	mov  t3, a2
	mov  t4, a3

	li   t0, 57
	sys  0

	mov  a0, t1

	ret

OSDirectoryUnlink:
.global OSDirectoryUnlink
	mov  t1, a0
	mov  t2, a1

	li   t0, 58
	sys  0

	mov  a0, t1

	ret

OSDirectoryRead:
.global OSDirectoryRead
	mov  t1, a0
	mov  t2, a1

	li   t0, 59
	sys  0

	mov  a0, t1

	ret

OSPageFileCreate:
.global OSPageFileCreate
	mov  t1, a0
	mov  t2, a1
	mov  t3, a2
	mov  t4, a3

	li   t0, 60
	sys  0

	mov  a0, t1

	ret

OSPageFileQuery:
.global OSPageFileQuery
	mov  t1, a0
	mov  t2, a1

	li   t0, 61
	sys  0

	mov  a0, t1

	ret

OSIOControl:
.global OSIOControl
	mov  t1, a0
	mov  t2, a1
	mov  t3, a2

	li   t0, 62
	sys  0

	mov  a1, t2
	mov  a0, t1

	ret

OSGetBootDevicePath:
.global OSGetBootDevicePath
	mov  t1, a0

	li   t0, 63
	sys  0

	mov  a0, t1

	ret

OSFilesystemMount:
.global OSFilesystemMount
	mov  t1, a0
	mov  t2, a1
	mov  t3, a2

	li   t0, 64
	sys  0

	mov  a0, t1

	ret

OSFilesystemUnmount:
.global OSFilesystemUnmount
	mov  t1, a0

	li   t0, 65
	sys  0

	mov  a0, t1

	ret

OSMountQueryAll:
.global OSMountQueryAll
	mov  t1, a0
	mov  t2, a1

	li   t0, 66
	sys  0

	mov  a1, t2
	mov  a0, t1

	ret

OSMountCountQuery:
.global OSMountCountQuery

	li   t0, 67
	sys  0

	mov  a1, t2
	mov  a0, t1

	ret

OSMountUpdateFlags:
.global OSMountUpdateFlags
	mov  t1, a0
	mov  t2, a1

	li   t0, 68
	sys  0

	mov  a0, t1

	ret

OSMountGetFilesystemName:
.global OSMountGetFilesystemName
	mov  t1, a0
	mov  t2, a1

	li   t0, 69
	sys  0

	mov  a0, t1

	ret

OSMountSet:
.global OSMountSet
	mov  t1, a0
	mov  t2, a1

	li   t0, 70
	sys  0

	mov  a0, t1

	ret

OSFlushModifiedPages:
.global OSFlushModifiedPages

	li   t0, 71
	sys  0

	mov  a0, t1

	ret

OSSectionCreate:
.global OSSectionCreate
	mov  t1, a0
	mov  t2, a1
	mov  t3, a2
	mov  t4, a3

	li   t0, 72
	sys  0

	mov  a1, t2
	mov  a0, t1

	ret

OSMapView:
.global OSMapView
	mov  t1, a0
	mov  t2, a1
	mov  t3, a2
	mov  t4, a3
	mov  t5, long [sp + 4]
	mov  a0, long [sp + 8]
	mov  a1, long [sp + 12]

	li   t0, 73
	sys  0

	mov  a1, t2
	mov  a0, t1

	ret

OSUnmapView:
.global OSUnmapView
	mov  t1, a0
	mov  t2, a1
	mov  t3, a2

	li   t0, 74
	sys  0

	mov  a0, t1

	ret

OSRemapView:
.global OSRemapView
	mov  t1, a0
	mov  t2, a1
	mov  t3, a2
	mov  t4, a3

	li   t0, 75
	sys  0

	mov  a0, t1

	ret

OSFlushView:
.global OSFlushView
	mov  t1, a0
	mov  t2, a1
	mov  t3, a2

	li   t0, 76
	sys  0

	mov  a0, t1

	ret

OSAllocate:
.global OSAllocate
	mov  t1, a0
	mov  t2, a1
	mov  t3, a2
	mov  t4, a3
	mov  t5, long [sp + 4]

	li   t0, 77
	sys  0

	mov  a1, t2
	mov  a0, t1

	ret

OSMemoryQuery:
.global OSMemoryQuery
	mov  t1, a0

	li   t0, 78
	sys  0

	mov  a0, t1

	ret

OSWorkingSetPurge:
.global OSWorkingSetPurge

	li   t0, 79
	sys  0

	mov  a0, t1

	ret

OSSynchronizeIcache:
.global OSSynchronizeIcache

	li   t0, 80
	sys  0


	ret

OSProcessCreate:
.global OSProcessCreate
	mov  t1, a0
	mov  t2, a1
	mov  t3, a2
	mov  t4, a3
	mov  t5, long [sp + 4]

	li   t0, 81
	sys  0

	mov  a1, t2
	mov  a0, t1

	ret

OSProcessSignal:
.global OSProcessSignal
	mov  t1, a0
	mov  t2, a1

	li   t0, 82
	sys  0

	mov  a0, t1

	ret

OSProcessOpenByPID:
.global OSProcessOpenByPID
	mov  t1, a0
	mov  t2, a1

	li   t0, 83
	sys  0

	mov  a1, t2
	mov  a0, t1

	ret

OSProcessQuery:
.global OSProcessQuery
	mov  t1, a0
	mov  t2, a1

	li   t0, 84
	sys  0

	mov  a0, t1

	ret

OSProcessQueryByPID:
.global OSProcessQueryByPID
	mov  t1, a0
	mov  t2, a1

	li   t0, 85
	sys  0

	mov  a0, t1

	ret

OSProcessReadStatus:
.global OSProcessReadStatus
	mov  t1, a0

	li   t0, 86
	sys  0

	mov  a1, t2
	mov  a0, t1

	ret

OSProcessSetConsoleGroup:
.global OSProcessSetConsoleGroup
	mov  t1, a0
	mov  t2, a1

	li   t0, 87
	sys  0

	mov  a0, t1

	ret

OSProcessBasePrioritySet:
.global OSProcessBasePrioritySet
	mov  t1, a0
	mov  t2, a1

	li   t0, 88
	sys  0

	mov  a0, t1

	ret

OSProcessSignalActivation:
.global OSProcessSignalActivation
	mov  t1, a0

	li   t0, 89
	sys  0

	mov  a0, t1

	ret

OSProcessWaitForActivation:
.global OSProcessWaitForActivation
	mov  t1, a0
	mov  t2, a1

	li   t0, 90
	sys  0

	mov  a1, t2
	mov  a0, t1

	ret

OSProcessExit:
.global OSProcessExit
	mov  t1, a0

	li   t0, 91
	sys  0


	ret

OSProcessCountQuery:
.global OSProcessCountQuery

	li   t0, 92
	sys  0

	mov  a1, t2
	mov  a0, t1

	ret

OSProcessQueryAll:
.global OSProcessQueryAll
	mov  t1, a0
	mov  t2, a1

	li   t0, 93
	sys  0

	mov  a1, t2
	mov  a0, t1

	ret

OSSetQuota:
.global OSSetQuota
	mov  t1, a0
	mov  t2, a1

	li   t0, 94
	sys  0

	mov  a0, t1

	ret

OSQuotaQuery:
.global OSQuotaQuery
	mov  t1, a0
	mov  t2, a1

	li   t0, 95
	sys  0

	mov  a0, t1

	ret

OSThreadSetFilePermissions:
.global OSThreadSetFilePermissions
	mov  t1, a0

	li   t0, 96
	sys  0

	mov  a0, t1

	ret

OSThreadGetFilePermissions:
.global OSThreadGetFilePermissions

	li   t0, 97
	sys  0

	mov  a1, t2
	mov  a0, t1

	ret

OSThreadSleep:
.global OSThreadSleep
	mov  t1, a0

	li   t0, 98
	sys  0

	mov  a0, t1

	ret

OSThreadSleepEx:
.global OSThreadSleepEx
	mov  t1, a0
	mov  t2, a1

	li   t0, 99
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

	li   t0, 100
	sys  0

	mov  a1, t2
	mov  a0, t1

	ret

OSThreadTerminate:
.global OSThreadTerminate
	mov  t1, a0
	mov  t2, a1

	li   t0, 101
	sys  0

	mov  a0, t1

	ret

OSThreadSuspend:
.global OSThreadSuspend
	mov  t1, a0

	li   t0, 102
	sys  0

	mov  a0, t1

	ret

OSThreadResume:
.global OSThreadResume
	mov  t1, a0

	li   t0, 103
	sys  0

	mov  a0, t1

	ret

OSThreadReadStatus:
.global OSThreadReadStatus
	mov  t1, a0

	li   t0, 104
	sys  0

	mov  a1, t2
	mov  a0, t1

	ret

OSThreadQuery:
.global OSThreadQuery
	mov  t1, a0
	mov  t2, a1

	li   t0, 105
	sys  0

	mov  a0, t1

	ret

OSThreadSignal:
.global OSThreadSignal
	mov  t1, a0
	mov  t2, a1

	li   t0, 106
	sys  0

	mov  a0, t1

	ret

OSThreadMaskSignal:
.global OSThreadMaskSignal
	mov  t1, a0
	mov  t2, a1

	li   t0, 107
	sys  0

	mov  a0, t1

	ret

OSThreadDeliverOnWaitSignal:
.global OSThreadDeliverOnWaitSignal
	mov  t1, a0
	mov  t2, a1

	li   t0, 108
	sys  0

	mov  a0, t1

	ret

OSJobCreate:
.global OSJobCreate
	mov  t1, a0
	mov  t2, a1
	mov  t3, a2
	mov  t4, a3
	mov  t5, long [sp + 4]

	li   t0, 109
	sys  0

	mov  a1, t2
	mov  a0, t1

	ret

OSJobAddProcess:
.global OSJobAddProcess
	mov  t1, a0
	mov  t2, a1

	li   t0, 110
	sys  0

	mov  a0, t1

	ret

OSJobRemoveProcess:
.global OSJobRemoveProcess
	mov  t1, a0

	li   t0, 111
	sys  0

	mov  a0, t1

	ret

OSJobSignal:
.global OSJobSignal
	mov  t1, a0
	mov  t2, a1
	mov  t3, a2

	li   t0, 112
	sys  0

	mov  a0, t1

	ret

OSSetSystemConsole:
.global OSSetSystemConsole
	mov  t1, a0

	li   t0, 113
	sys  0

	mov  a0, t1

	ret

OSConsoleSignal:
.global OSConsoleSignal
	mov  t1, a0
	mov  t2, a1

	li   t0, 114
	sys  0

	mov  a0, t1

	ret

OSIsAConsole:
.global OSIsAConsole
	mov  t1, a0

	li   t0, 115
	sys  0

	mov  a0, t1

	ret

OSDuplexCreate:
.global OSDuplexCreate
	mov  t1, a0
	mov  t2, a1
	mov  t3, a2

	li   t0, 116
	sys  0

	mov  a2, t3
	mov  a1, t2
	mov  a0, t1

	ret

OSCheckPermission:
.global OSCheckPermission
	mov  t1, a0
	mov  t2, a1

	li   t0, 117
	sys  0

	mov  a0, t1

	ret

OSGrantPermission:
.global OSGrantPermission
	mov  t1, a0
	mov  t2, a1

	li   t0, 118
	sys  0

	mov  a0, t1

	ret

OSPortCreate:
.global OSPortCreate
	mov  t1, a0
	mov  t2, a1
	mov  t3, a2
	mov  t4, a3

	li   t0, 119
	sys  0

	mov  a1, t2
	mov  a0, t1

	ret

OSPortConnect:
.global OSPortConnect
	mov  t1, a0
	mov  t2, a1
	mov  t3, a2
	mov  t4, a3

	li   t0, 120
	sys  0

	mov  a1, t2
	mov  a0, t1

	ret

OSPortAccept:
.global OSPortAccept
	mov  t1, a0
	mov  t2, a1
	mov  t3, a2
	mov  t4, a3

	li   t0, 121
	sys  0

	mov  a0, t1

	ret

OSPortSendAndWaitReceive:
.global OSPortSendAndWaitReceive
	mov  t1, a0
	mov  t2, a1
	mov  t3, a2
	mov  t4, a3

	li   t0, 122
	sys  0

	mov  a0, t1

	ret

OSPortSendAndWaitReply:
.global OSPortSendAndWaitReply
	mov  t1, a0
	mov  t2, a1
	mov  t3, a2
	mov  t4, a3

	li   t0, 123
	sys  0

	mov  a0, t1

	ret

OSPortOpenProcessByClientID:
.global OSPortOpenProcessByClientID
	mov  t1, a0
	mov  t2, a1
	mov  t3, a2

	li   t0, 124
	sys  0

	mov  a1, t2
	mov  a0, t1

	ret

