; AUTOMATICALLY GENERATED -- DO NOT EDIT

.section text

OSConsolePutCharacter:
.global OSConsolePutCharacter
	push fp
	mov  fp, sp

	mov  t1, a0

	mov  t0, 1
	int  0x30

	mov  a0, t1

	pop  fp
	ret

OSSystemAbort:
.global OSSystemAbort
	push fp
	mov  fp, sp

	mov  t1, a0
	mov  t2, a1
	mov  t3, a2

	mov  t0, 2
	int  0x30

	mov  a0, t1

	pop  fp
	ret

OSGetSystemConsoleName:
.global OSGetSystemConsoleName
	push fp
	mov  fp, sp

	mov  t1, a0

	mov  t0, 3
	int  0x30

	mov  a0, t1

	pop  fp
	ret

OSGetBootFlags:
.global OSGetBootFlags
	push fp
	mov  fp, sp


	mov  t0, 4
	int  0x30

	mov  a1, t2
	mov  a0, t1

	pop  fp
	ret

OSContinue:
.global OSContinue
	push fp
	mov  fp, sp

	mov  t1, a0
	mov  t2, a1
	mov  t3, a2

	mov  t0, 5
	int  0x30

	mov  a0, t1

	pop  fp
	ret

OSQueryTime:
.global OSQueryTime
	push fp
	mov  fp, sp


	mov  t0, 6
	int  0x30

	mov  a1, t2
	mov  a0, t1

	pop  fp
	ret

OSQueryUptime:
.global OSQueryUptime
	push fp
	mov  fp, sp


	mov  t0, 7
	int  0x30

	mov  a1, t2
	mov  a0, t1

	pop  fp
	ret

OSTimeZoneGet:
.global OSTimeZoneGet
	push fp
	mov  fp, sp


	mov  t0, 8
	int  0x30

	mov  a1, t2
	mov  a0, t1

	pop  fp
	ret

OSTimeZoneSet:
.global OSTimeZoneSet
	push fp
	mov  fp, sp

	mov  t1, a0

	mov  t0, 9
	int  0x30

	mov  a1, t2
	mov  a0, t1

	pop  fp
	ret

OSTimeSet:
.global OSTimeSet
	push fp
	mov  fp, sp

	mov  t1, a0
	mov  t2, a1

	mov  t0, 10
	int  0x30

	mov  a0, t1

	pop  fp
	ret

OSShutdownSystem:
.global OSShutdownSystem
	push fp
	mov  fp, sp

	mov  t1, a0

	mov  t0, 11
	int  0x30

	mov  a0, t1

	pop  fp
	ret

OSVersion:
.global OSVersion
	push fp
	mov  fp, sp

	mov  t1, a0

	mov  t0, 12
	int  0x30

	mov  a0, t1

	pop  fp
	ret

OSEventCreate:
.global OSEventCreate
	push fp
	mov  fp, sp

	mov  t1, a0
	mov  t2, a1
	mov  t3, a2
	mov  t4, a3

	mov  t0, 13
	int  0x30

	mov  a1, t2
	mov  a0, t1

	pop  fp
	ret

OSEventReset:
.global OSEventReset
	push fp
	mov  fp, sp

	mov  t1, a0

	mov  t0, 14
	int  0x30

	mov  a1, t2
	mov  a0, t1

	pop  fp
	ret

OSEventSignal:
.global OSEventSignal
	push fp
	mov  fp, sp

	mov  t1, a0

	mov  t0, 15
	int  0x30

	mov  a0, t1

	pop  fp
	ret

OSEventPulse:
.global OSEventPulse
	push fp
	mov  fp, sp

	mov  t1, a0

	mov  t0, 16
	int  0x30

	mov  a0, t1

	pop  fp
	ret

OSEventReadState:
.global OSEventReadState
	push fp
	mov  fp, sp

	mov  t1, a0

	mov  t0, 17
	int  0x30

	mov  a1, t2
	mov  a0, t1

	pop  fp
	ret

OSSemaphoreCreate:
.global OSSemaphoreCreate
	push fp
	mov  fp, sp

	mov  t1, a0
	mov  t2, a1
	mov  t3, a2

	mov  t0, 18
	int  0x30

	mov  a1, t2
	mov  a0, t1

	pop  fp
	ret

OSSemaphoreRelease:
.global OSSemaphoreRelease
	push fp
	mov  fp, sp

	mov  t1, a0
	mov  t2, a1

	mov  t0, 19
	int  0x30

	mov  a0, t1

	pop  fp
	ret

OSSemaphoreReadState:
.global OSSemaphoreReadState
	push fp
	mov  fp, sp

	mov  t1, a0

	mov  t0, 20
	int  0x30

	mov  a1, t2
	mov  a0, t1

	pop  fp
	ret

OSMutexCreate:
.global OSMutexCreate
	push fp
	mov  fp, sp

	mov  t1, a0
	mov  t2, a1

	mov  t0, 21
	int  0x30

	mov  a1, t2
	mov  a0, t1

	pop  fp
	ret

OSMutexRelease:
.global OSMutexRelease
	push fp
	mov  fp, sp

	mov  t1, a0

	mov  t0, 22
	int  0x30

	mov  a0, t1

	pop  fp
	ret

OSMutexReadState:
.global OSMutexReadState
	push fp
	mov  fp, sp

	mov  t1, a0

	mov  t0, 23
	int  0x30

	mov  a1, t2
	mov  a0, t1

	pop  fp
	ret

OSTimerCreate:
.global OSTimerCreate
	push fp
	mov  fp, sp

	mov  t1, a0
	mov  t2, a1

	mov  t0, 24
	int  0x30

	mov  a1, t2
	mov  a0, t1

	pop  fp
	ret

OSTimerReset:
.global OSTimerReset
	push fp
	mov  fp, sp

	mov  t1, a0

	mov  t0, 25
	int  0x30

	mov  a1, t2
	mov  a0, t1

	pop  fp
	ret

OSTimerEnqueue:
.global OSTimerEnqueue
	push fp
	mov  fp, sp

	mov  t1, a0
	mov  t2, a1

	mov  t0, 26
	int  0x30

	mov  a0, t1

	pop  fp
	ret

OSTimerDequeue:
.global OSTimerDequeue
	push fp
	mov  fp, sp

	mov  t1, a0

	mov  t0, 27
	int  0x30

	mov  a0, t1

	pop  fp
	ret

OSTimerReadState:
.global OSTimerReadState
	push fp
	mov  fp, sp

	mov  t1, a0

	mov  t0, 28
	int  0x30

	mov  a1, t2
	mov  a0, t1

	pop  fp
	ret

OSGetStatistics:
.global OSGetStatistics
	push fp
	mov  fp, sp

	mov  t1, a0

	mov  t0, 29
	int  0x30

	mov  a0, t1

	pop  fp
	ret

OSNvramVariableQuery:
.global OSNvramVariableQuery
	push fp
	mov  fp, sp

	mov  t1, a0

	mov  t0, 30
	int  0x30

	mov  a0, t1

	pop  fp
	ret

OSNvramVariableSet:
.global OSNvramVariableSet
	push fp
	mov  fp, sp

	mov  t1, a0
	mov  t2, a1

	mov  t0, 31
	int  0x30

	mov  a0, t1

	pop  fp
	ret

OSNvramVariableRead:
.global OSNvramVariableRead
	push fp
	mov  fp, sp

	mov  t1, a0
	mov  t2, a1

	mov  t0, 32
	int  0x30

	mov  a1, t2
	mov  a0, t1

	pop  fp
	ret

OSIsComputerOn:
.global OSIsComputerOn
	push fp
	mov  fp, sp


	mov  t0, 33
	int  0x30

	mov  a1, t2
	mov  a0, t1

	pop  fp
	ret

OSIsComputerOnFire:
.global OSIsComputerOnFire
	push fp
	mov  fp, sp


	mov  t0, 34
	int  0x30

	mov  a1, t2
	mov  a0, t1

	pop  fp
	ret

OSOpenRelative:
.global OSOpenRelative
	push fp
	mov  fp, sp

	mov  t1, a0
	mov  t2, a1
	mov  t3, a2
	mov  t4, a3
	mov  r31, sp
	add  r31, 8
	mov  t6, [r31]
	add  r31, 4
	mov  t5, [r31]
	add  r31, 4

	mov  t0, 35
	int  0x30

	mov  a1, t2
	mov  a0, t1

	pop  fp
	ret

OSClose:
.global OSClose
	push fp
	mov  fp, sp

	mov  t1, a0

	mov  t0, 36
	int  0x30

	mov  a0, t1

	pop  fp
	ret

OSQuery:
.global OSQuery
	push fp
	mov  fp, sp

	mov  t1, a0
	mov  t2, a1

	mov  t0, 37
	int  0x30

	mov  a0, t1

	pop  fp
	ret

OSWaitForMultipleObjects:
.global OSWaitForMultipleObjects
	push fp
	mov  fp, sp

	mov  t1, a0
	mov  t2, a1
	mov  t3, a2
	mov  t4, a3
	mov  r31, sp
	add  r31, 8
	mov  t5, [r31]
	add  r31, 4

	mov  t0, 38
	int  0x30

	mov  a0, t1

	pop  fp
	ret

OSWaitForObject:
.global OSWaitForObject
	push fp
	mov  fp, sp

	mov  t1, a0
	mov  t2, a1
	mov  t3, a2

	mov  t0, 39
	int  0x30

	mov  a0, t1

	pop  fp
	ret

OSHandleDuplicate:
.global OSHandleDuplicate
	push fp
	mov  fp, sp

	mov  t1, a0
	mov  t2, a1
	mov  t3, a2
	mov  t4, a3

	mov  t0, 40
	int  0x30

	mov  a1, t2
	mov  a0, t1

	pop  fp
	ret

OSObjectDirectoryCountQuery:
.global OSObjectDirectoryCountQuery
	push fp
	mov  fp, sp

	mov  t1, a0

	mov  t0, 41
	int  0x30

	mov  a1, t2
	mov  a0, t1

	pop  fp
	ret

OSObjectDirectoryQueryAll:
.global OSObjectDirectoryQueryAll
	push fp
	mov  fp, sp

	mov  t1, a0
	mov  t2, a1
	mov  t3, a2

	mov  t0, 42
	int  0x30

	mov  a1, t2
	mov  a0, t1

	pop  fp
	ret

OSObjectDirectoryCreate:
.global OSObjectDirectoryCreate
	push fp
	mov  fp, sp

	mov  t1, a0
	mov  t2, a1

	mov  t0, 43
	int  0x30

	mov  a1, t2
	mov  a0, t1

	pop  fp
	ret

OSObjectDirectoryInsert:
.global OSObjectDirectoryInsert
	push fp
	mov  fp, sp

	mov  t1, a0
	mov  t2, a1

	mov  t0, 44
	int  0x30

	mov  a0, t1

	pop  fp
	ret

OSObjectDirectoryRemove:
.global OSObjectDirectoryRemove
	push fp
	mov  fp, sp

	mov  t1, a0

	mov  t0, 45
	int  0x30

	mov  a0, t1

	pop  fp
	ret

OSSetSecurity:
.global OSSetSecurity
	push fp
	mov  fp, sp

	mov  t1, a0
	mov  t2, a1
	mov  t3, a2
	mov  t4, a3

	mov  t0, 46
	int  0x30

	mov  a0, t1

	pop  fp
	ret

SysCreateRelative:
.global SysCreateRelative
	push fp
	mov  fp, sp

	mov  t1, a0
	mov  t2, a1
	mov  t3, a2
	mov  t4, a3
	mov  r31, sp
	add  r31, 8
	mov  t6, [r31]
	add  r31, 4
	mov  t5, [r31]
	add  r31, 4

	mov  t0, 47
	int  0x30

	mov  a1, t2
	mov  a0, t1

	pop  fp
	ret

OSFileQuery:
.global OSFileQuery
	push fp
	mov  fp, sp

	mov  t1, a0
	mov  t2, a1

	mov  t0, 48
	int  0x30

	mov  a0, t1

	pop  fp
	ret

OSFileTruncate:
.global OSFileTruncate
	push fp
	mov  fp, sp

	mov  t1, a0
	mov  t2, a1
	mov  t3, a2

	mov  t0, 49
	int  0x30

	mov  a1, t2
	mov  a0, t1

	pop  fp
	ret

OSFileSeek:
.global OSFileSeek
	push fp
	mov  fp, sp

	mov  t1, a0
	mov  t2, a1
	mov  t3, a2

	mov  t0, 50
	int  0x30

	mov  a1, t2
	mov  a0, t1

	pop  fp
	ret

OSFileRead:
.global OSFileRead
	push fp
	mov  fp, sp

	mov  t1, a0
	mov  t2, a1
	mov  t3, a2
	mov  t4, a3
	mov  r31, sp
	add  r31, 8
	mov  t5, [r31]
	add  r31, 4

	mov  t0, 51
	int  0x30

	mov  a1, t2
	mov  a0, t1

	pop  fp
	ret

OSFileWrite:
.global OSFileWrite
	push fp
	mov  fp, sp

	mov  t1, a0
	mov  t2, a1
	mov  t3, a2
	mov  t4, a3

	mov  t0, 52
	int  0x30

	mov  a1, t2
	mov  a0, t1

	pop  fp
	ret

OSFileFlush:
.global OSFileFlush
	push fp
	mov  fp, sp

	mov  t1, a0
	mov  t2, a1

	mov  t0, 53
	int  0x30

	mov  a0, t1

	pop  fp
	ret

OSFileSetInformation:
.global OSFileSetInformation
	push fp
	mov  fp, sp

	mov  t1, a0
	mov  t2, a1

	mov  t0, 54
	int  0x30

	mov  a0, t1

	pop  fp
	ret

OSFileReadAsync:
.global OSFileReadAsync
	push fp
	mov  fp, sp

	mov  t1, a0
	mov  t2, a1
	mov  t3, a2
	mov  t4, a3
	mov  r31, sp
	add  r31, 8
	mov  t6, [r31]
	add  r31, 4
	mov  t5, [r31]
	add  r31, 4

	mov  t0, 55
	int  0x30

	mov  a0, t1

	pop  fp
	ret

OSFileWriteAsync:
.global OSFileWriteAsync
	push fp
	mov  fp, sp

	mov  t1, a0
	mov  t2, a1
	mov  t3, a2
	mov  t4, a3
	mov  r31, sp
	add  r31, 8
	mov  t6, [r31]
	add  r31, 4
	mov  t5, [r31]
	add  r31, 4

	mov  t0, 56
	int  0x30

	mov  a0, t1

	pop  fp
	ret

OSFileCancelIO:
.global OSFileCancelIO
	push fp
	mov  fp, sp

	mov  t1, a0
	mov  t2, a1

	mov  t0, 57
	int  0x30

	mov  a0, t1

	pop  fp
	ret

OSDirectoryRename:
.global OSDirectoryRename
	push fp
	mov  fp, sp

	mov  t1, a0
	mov  t2, a1
	mov  t3, a2
	mov  t4, a3

	mov  t0, 58
	int  0x30

	mov  a0, t1

	pop  fp
	ret

OSDirectoryUnlink:
.global OSDirectoryUnlink
	push fp
	mov  fp, sp

	mov  t1, a0
	mov  t2, a1

	mov  t0, 59
	int  0x30

	mov  a0, t1

	pop  fp
	ret

OSDirectoryRead:
.global OSDirectoryRead
	push fp
	mov  fp, sp

	mov  t1, a0
	mov  t2, a1
	mov  t3, a2

	mov  t0, 60
	int  0x30

	mov  a1, t2
	mov  a0, t1

	pop  fp
	ret

OSPageFileCreateRelative:
.global OSPageFileCreateRelative
	push fp
	mov  fp, sp

	mov  t1, a0
	mov  t2, a1
	mov  t3, a2
	mov  t4, a3
	mov  r31, sp
	add  r31, 8
	mov  t5, [r31]
	add  r31, 4

	mov  t0, 61
	int  0x30

	mov  a0, t1

	pop  fp
	ret

OSPageFileQuery:
.global OSPageFileQuery
	push fp
	mov  fp, sp

	mov  t1, a0
	mov  t2, a1

	mov  t0, 62
	int  0x30

	mov  a0, t1

	pop  fp
	ret

OSIOControl:
.global OSIOControl
	push fp
	mov  fp, sp

	mov  t1, a0
	mov  t2, a1
	mov  t3, a2

	mov  t0, 63
	int  0x30

	mov  a1, t2
	mov  a0, t1

	pop  fp
	ret

OSGetBootDevicePath:
.global OSGetBootDevicePath
	push fp
	mov  fp, sp

	mov  t1, a0

	mov  t0, 64
	int  0x30

	mov  a0, t1

	pop  fp
	ret

OSFilesystemMount:
.global OSFilesystemMount
	push fp
	mov  fp, sp

	mov  t1, a0
	mov  t2, a1
	mov  t3, a2

	mov  t0, 65
	int  0x30

	mov  a0, t1

	pop  fp
	ret

OSFilesystemUnmount:
.global OSFilesystemUnmount
	push fp
	mov  fp, sp

	mov  t1, a0

	mov  t0, 66
	int  0x30

	mov  a0, t1

	pop  fp
	ret

OSMountQueryAll:
.global OSMountQueryAll
	push fp
	mov  fp, sp

	mov  t1, a0
	mov  t2, a1

	mov  t0, 67
	int  0x30

	mov  a1, t2
	mov  a0, t1

	pop  fp
	ret

OSMountCountQuery:
.global OSMountCountQuery
	push fp
	mov  fp, sp


	mov  t0, 68
	int  0x30

	mov  a1, t2
	mov  a0, t1

	pop  fp
	ret

OSMountUpdateFlags:
.global OSMountUpdateFlags
	push fp
	mov  fp, sp

	mov  t1, a0
	mov  t2, a1

	mov  t0, 69
	int  0x30

	mov  a0, t1

	pop  fp
	ret

OSMountGetFilesystemName:
.global OSMountGetFilesystemName
	push fp
	mov  fp, sp

	mov  t1, a0
	mov  t2, a1

	mov  t0, 70
	int  0x30

	mov  a0, t1

	pop  fp
	ret

OSMountSet:
.global OSMountSet
	push fp
	mov  fp, sp

	mov  t1, a0
	mov  t2, a1

	mov  t0, 71
	int  0x30

	mov  a0, t1

	pop  fp
	ret

OSFlushModifiedPages:
.global OSFlushModifiedPages
	push fp
	mov  fp, sp


	mov  t0, 72
	int  0x30

	mov  a0, t1

	pop  fp
	ret

OSSectionCreate:
.global OSSectionCreate
	push fp
	mov  fp, sp

	mov  t1, a0
	mov  t2, a1
	mov  t3, a2
	mov  t4, a3

	mov  t0, 73
	int  0x30

	mov  a1, t2
	mov  a0, t1

	pop  fp
	ret

OSMapView:
.global OSMapView
	push fp
	mov  fp, sp

	mov  t1, a0
	mov  t2, a1
	mov  t3, a2
	mov  t4, a3
	mov  r31, sp
	add  r31, 8
	mov  a0, [r31]
	add  r31, 4
	mov  t6, [r31]
	add  r31, 4
	mov  t5, [r31]
	add  r31, 4

	mov  t0, 74
	int  0x30

	mov  a1, t2
	mov  a0, t1

	pop  fp
	ret

OSUnmapView:
.global OSUnmapView
	push fp
	mov  fp, sp

	mov  t1, a0
	mov  t2, a1
	mov  t3, a2

	mov  t0, 75
	int  0x30

	mov  a0, t1

	pop  fp
	ret

OSRemapView:
.global OSRemapView
	push fp
	mov  fp, sp

	mov  t1, a0
	mov  t2, a1
	mov  t3, a2
	mov  t4, a3

	mov  t0, 76
	int  0x30

	mov  a0, t1

	pop  fp
	ret

OSFlushView:
.global OSFlushView
	push fp
	mov  fp, sp

	mov  t1, a0
	mov  t2, a1
	mov  t3, a2

	mov  t0, 77
	int  0x30

	mov  a0, t1

	pop  fp
	ret

OSAllocate:
.global OSAllocate
	push fp
	mov  fp, sp

	mov  t1, a0
	mov  t2, a1
	mov  t3, a2
	mov  t4, a3
	mov  r31, sp
	add  r31, 8
	mov  t5, [r31]
	add  r31, 4

	mov  t0, 78
	int  0x30

	mov  a1, t2
	mov  a0, t1

	pop  fp
	ret

OSMemoryQuery:
.global OSMemoryQuery
	push fp
	mov  fp, sp

	mov  t1, a0

	mov  t0, 79
	int  0x30

	mov  a0, t1

	pop  fp
	ret

OSWorkingSetPurge:
.global OSWorkingSetPurge
	push fp
	mov  fp, sp


	mov  t0, 80
	int  0x30

	mov  a0, t1

	pop  fp
	ret

OSSynchronizeIcache:
.global OSSynchronizeIcache
	push fp
	mov  fp, sp


	mov  t0, 81
	int  0x30


	pop  fp
	ret

OSProcessCreate:
.global OSProcessCreate
	push fp
	mov  fp, sp

	mov  t1, a0
	mov  t2, a1
	mov  t3, a2
	mov  t4, a3
	mov  r31, sp
	add  r31, 8
	mov  t5, [r31]
	add  r31, 4

	mov  t0, 82
	int  0x30

	mov  a1, t2
	mov  a0, t1

	pop  fp
	ret

OSProcessSignal:
.global OSProcessSignal
	push fp
	mov  fp, sp

	mov  t1, a0
	mov  t2, a1

	mov  t0, 83
	int  0x30

	mov  a0, t1

	pop  fp
	ret

OSProcessOpenByPID:
.global OSProcessOpenByPID
	push fp
	mov  fp, sp

	mov  t1, a0
	mov  t2, a1

	mov  t0, 84
	int  0x30

	mov  a1, t2
	mov  a0, t1

	pop  fp
	ret

OSProcessQuery:
.global OSProcessQuery
	push fp
	mov  fp, sp

	mov  t1, a0
	mov  t2, a1

	mov  t0, 85
	int  0x30

	mov  a0, t1

	pop  fp
	ret

OSProcessQueryByPID:
.global OSProcessQueryByPID
	push fp
	mov  fp, sp

	mov  t1, a0
	mov  t2, a1

	mov  t0, 86
	int  0x30

	mov  a0, t1

	pop  fp
	ret

OSProcessReadStatus:
.global OSProcessReadStatus
	push fp
	mov  fp, sp

	mov  t1, a0

	mov  t0, 87
	int  0x30

	mov  a1, t2
	mov  a0, t1

	pop  fp
	ret

OSProcessSetConsoleGroup:
.global OSProcessSetConsoleGroup
	push fp
	mov  fp, sp

	mov  t1, a0
	mov  t2, a1

	mov  t0, 88
	int  0x30

	mov  a0, t1

	pop  fp
	ret

OSProcessBasePrioritySet:
.global OSProcessBasePrioritySet
	push fp
	mov  fp, sp

	mov  t1, a0
	mov  t2, a1

	mov  t0, 89
	int  0x30

	mov  a0, t1

	pop  fp
	ret

OSProcessSignalActivation:
.global OSProcessSignalActivation
	push fp
	mov  fp, sp

	mov  t1, a0

	mov  t0, 90
	int  0x30

	mov  a0, t1

	pop  fp
	ret

OSProcessWaitForActivation:
.global OSProcessWaitForActivation
	push fp
	mov  fp, sp

	mov  t1, a0
	mov  t2, a1

	mov  t0, 91
	int  0x30

	mov  a1, t2
	mov  a0, t1

	pop  fp
	ret

OSProcessExit:
.global OSProcessExit
	push fp
	mov  fp, sp

	mov  t1, a0

	mov  t0, 92
	int  0x30


	pop  fp
	ret

OSProcessCountQuery:
.global OSProcessCountQuery
	push fp
	mov  fp, sp


	mov  t0, 93
	int  0x30

	mov  a1, t2
	mov  a0, t1

	pop  fp
	ret

OSProcessQueryAll:
.global OSProcessQueryAll
	push fp
	mov  fp, sp

	mov  t1, a0
	mov  t2, a1

	mov  t0, 94
	int  0x30

	mov  a1, t2
	mov  a0, t1

	pop  fp
	ret

OSSetQuota:
.global OSSetQuota
	push fp
	mov  fp, sp

	mov  t1, a0
	mov  t2, a1

	mov  t0, 95
	int  0x30

	mov  a0, t1

	pop  fp
	ret

OSQuotaQuery:
.global OSQuotaQuery
	push fp
	mov  fp, sp

	mov  t1, a0
	mov  t2, a1

	mov  t0, 96
	int  0x30

	mov  a0, t1

	pop  fp
	ret

OSThreadGetExceptionStatus:
.global OSThreadGetExceptionStatus
	push fp
	mov  fp, sp


	mov  t0, 97
	int  0x30

	mov  a0, t1

	pop  fp
	ret

OSThreadSleep:
.global OSThreadSleep
	push fp
	mov  fp, sp

	mov  t1, a0

	mov  t0, 98
	int  0x30

	mov  a0, t1

	pop  fp
	ret

OSThreadSleepEx:
.global OSThreadSleepEx
	push fp
	mov  fp, sp

	mov  t1, a0
	mov  t2, a1

	mov  t0, 99
	int  0x30

	mov  a0, t1

	pop  fp
	ret

OSThreadCreate:
.global OSThreadCreate
	push fp
	mov  fp, sp

	mov  t1, a0
	mov  t2, a1
	mov  t3, a2
	mov  t4, a3
	mov  r31, sp
	add  r31, 8
	mov  t6, [r31]
	add  r31, 4
	mov  t5, [r31]
	add  r31, 4

	mov  t0, 100
	int  0x30

	mov  a1, t2
	mov  a0, t1

	pop  fp
	ret

OSThreadTerminate:
.global OSThreadTerminate
	push fp
	mov  fp, sp

	mov  t1, a0
	mov  t2, a1

	mov  t0, 101
	int  0x30

	mov  a0, t1

	pop  fp
	ret

OSThreadSuspend:
.global OSThreadSuspend
	push fp
	mov  fp, sp

	mov  t1, a0

	mov  t0, 102
	int  0x30

	mov  a0, t1

	pop  fp
	ret

OSThreadResume:
.global OSThreadResume
	push fp
	mov  fp, sp

	mov  t1, a0

	mov  t0, 103
	int  0x30

	mov  a0, t1

	pop  fp
	ret

OSThreadReadStatus:
.global OSThreadReadStatus
	push fp
	mov  fp, sp

	mov  t1, a0

	mov  t0, 104
	int  0x30

	mov  a1, t2
	mov  a0, t1

	pop  fp
	ret

OSThreadQuery:
.global OSThreadQuery
	push fp
	mov  fp, sp

	mov  t1, a0
	mov  t2, a1

	mov  t0, 105
	int  0x30

	mov  a0, t1

	pop  fp
	ret

OSThreadSignal:
.global OSThreadSignal
	push fp
	mov  fp, sp

	mov  t1, a0
	mov  t2, a1

	mov  t0, 106
	int  0x30

	mov  a0, t1

	pop  fp
	ret

OSThreadMaskSignal:
.global OSThreadMaskSignal
	push fp
	mov  fp, sp

	mov  t1, a0
	mov  t2, a1

	mov  t0, 107
	int  0x30

	mov  a0, t1

	pop  fp
	ret

OSThreadDeliverOnWaitSignal:
.global OSThreadDeliverOnWaitSignal
	push fp
	mov  fp, sp

	mov  t1, a0
	mov  t2, a1

	mov  t0, 108
	int  0x30

	mov  a0, t1

	pop  fp
	ret

OSJobCreate:
.global OSJobCreate
	push fp
	mov  fp, sp

	mov  t1, a0
	mov  t2, a1
	mov  t3, a2
	mov  t4, a3
	mov  r31, sp
	add  r31, 8
	mov  t5, [r31]
	add  r31, 4

	mov  t0, 109
	int  0x30

	mov  a1, t2
	mov  a0, t1

	pop  fp
	ret

OSJobAddProcess:
.global OSJobAddProcess
	push fp
	mov  fp, sp

	mov  t1, a0
	mov  t2, a1

	mov  t0, 110
	int  0x30

	mov  a0, t1

	pop  fp
	ret

OSJobRemoveProcess:
.global OSJobRemoveProcess
	push fp
	mov  fp, sp

	mov  t1, a0

	mov  t0, 111
	int  0x30

	mov  a0, t1

	pop  fp
	ret

OSJobSignal:
.global OSJobSignal
	push fp
	mov  fp, sp

	mov  t1, a0
	mov  t2, a1
	mov  t3, a2

	mov  t0, 112
	int  0x30

	mov  a0, t1

	pop  fp
	ret

OSSetSystemConsole:
.global OSSetSystemConsole
	push fp
	mov  fp, sp

	mov  t1, a0

	mov  t0, 113
	int  0x30

	mov  a0, t1

	pop  fp
	ret

OSConsoleSignal:
.global OSConsoleSignal
	push fp
	mov  fp, sp

	mov  t1, a0
	mov  t2, a1

	mov  t0, 114
	int  0x30

	mov  a0, t1

	pop  fp
	ret

OSIsAConsole:
.global OSIsAConsole
	push fp
	mov  fp, sp

	mov  t1, a0

	mov  t0, 115
	int  0x30

	mov  a0, t1

	pop  fp
	ret

OSDuplexCreate:
.global OSDuplexCreate
	push fp
	mov  fp, sp

	mov  t1, a0
	mov  t2, a1
	mov  t3, a2

	mov  t0, 116
	int  0x30

	mov  a2, t3
	mov  a1, t2
	mov  a0, t1

	pop  fp
	ret

OSCheckPermission:
.global OSCheckPermission
	push fp
	mov  fp, sp

	mov  t1, a0
	mov  t2, a1

	mov  t0, 117
	int  0x30

	mov  a0, t1

	pop  fp
	ret

OSGrantPermission:
.global OSGrantPermission
	push fp
	mov  fp, sp

	mov  t1, a0
	mov  t2, a1

	mov  t0, 118
	int  0x30

	mov  a0, t1

	pop  fp
	ret

OSPortCreate:
.global OSPortCreate
	push fp
	mov  fp, sp

	mov  t1, a0
	mov  t2, a1
	mov  t3, a2
	mov  t4, a3

	mov  t0, 119
	int  0x30

	mov  a1, t2
	mov  a0, t1

	pop  fp
	ret

OSPortConnectRelative:
.global OSPortConnectRelative
	push fp
	mov  fp, sp

	mov  t1, a0
	mov  t2, a1
	mov  t3, a2
	mov  t4, a3
	mov  r31, sp
	add  r31, 8
	mov  t5, [r31]
	add  r31, 4

	mov  t0, 120
	int  0x30

	mov  a1, t2
	mov  a0, t1

	pop  fp
	ret

OSPortAccept:
.global OSPortAccept
	push fp
	mov  fp, sp

	mov  t1, a0
	mov  t2, a1
	mov  t3, a2
	mov  t4, a3

	mov  t0, 121
	int  0x30

	mov  a0, t1

	pop  fp
	ret

OSPortSendAndWaitReceive:
.global OSPortSendAndWaitReceive
	push fp
	mov  fp, sp

	mov  t1, a0
	mov  t2, a1
	mov  t3, a2
	mov  t4, a3

	mov  t0, 122
	int  0x30

	mov  a0, t1

	pop  fp
	ret

OSPortSendAndWaitReply:
.global OSPortSendAndWaitReply
	push fp
	mov  fp, sp

	mov  t1, a0
	mov  t2, a1
	mov  t3, a2
	mov  t4, a3

	mov  t0, 123
	int  0x30

	mov  a0, t1

	pop  fp
	ret

OSPortOpenProcessByClientID:
.global OSPortOpenProcessByClientID
	push fp
	mov  fp, sp

	mov  t1, a0
	mov  t2, a1
	mov  t3, a2

	mov  t0, 124
	int  0x30

	mov  a1, t2
	mov  a0, t1

	pop  fp
	ret

