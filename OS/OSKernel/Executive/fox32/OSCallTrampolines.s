; AUTOMATICALLY GENERATED -- DO NOT EDIT

.section PAGE$text

.extern OSConsolePutCharacter
.extern OSSystemAbort
.extern OSGetSystemConsoleName
.extern OSGetBootFlags
.extern OSContinue
.extern OSQueryTime
.extern OSQueryUptime
.extern OSTimeZoneGet
.extern OSTimeZoneSet
.extern OSTimeSet
.extern OSShutdownSystem
.extern OSVersion
.extern OSEventCreate
.extern OSEventReset
.extern OSEventSignal
.extern OSEventPulse
.extern OSEventReadState
.extern OSSemaphoreCreate
.extern OSSemaphoreRelease
.extern OSSemaphoreReadState
.extern OSMutexCreate
.extern OSMutexRelease
.extern OSMutexReadState
.extern OSTimerCreate
.extern OSTimerReset
.extern OSTimerEnqueue
.extern OSTimerDequeue
.extern OSTimerReadState
.extern OSGetStatistics
.extern OSIsComputerOn
.extern OSIsComputerOnFire
.extern OSObjectOpen
.extern OSQuery
.extern OSClose
.extern OSWaitForMultipleObjects
.extern OSWaitForObject
.extern OSHandleDuplicate
.extern OSObjectDirectoryCountQuery
.extern OSObjectDirectoryQueryAll
.extern OSObjectDirectoryCreate
.extern OSObjectDirectoryInsert
.extern OSObjectDirectoryRemove
.extern OSSetSecurity
.extern OSFileQuery
.extern OSFileTruncate
.extern OSFileSeek
.extern OSFileRead
.extern OSFileWrite
.extern OSFileFlush
.extern OSFileSetInformation
.extern OSFileReadAsync
.extern OSFileWriteAsync
.extern OSFileCancelIO
.extern OSDirectoryRename
.extern OSDirectoryUnlink
.extern OSDirectoryRead
.extern OSPageFileCreate
.extern OSPageFileQuery
.extern OSIOControl
.extern OSGetBootDevicePath
.extern OSFilesystemMount
.extern OSFilesystemUnmount
.extern OSMountQueryAll
.extern OSMountCountQuery
.extern OSMountUpdateFlags
.extern OSMountGetFilesystemName
.extern OSMountSet
.extern OSFlushModifiedPages
.extern OSSectionCreate
.extern OSMapView
.extern OSUnmapView
.extern OSRemapView
.extern OSFlushView
.extern OSAllocate
.extern OSMemoryQuery
.extern OSWorkingSetPurge
.extern OSSynchronizeIcache
.extern OSProcessCreate
.extern OSProcessSignal
.extern OSProcessOpenByPID
.extern OSProcessQuery
.extern OSProcessQueryByPID
.extern OSProcessReadStatus
.extern OSProcessSetConsoleGroup
.extern OSProcessBasePrioritySet
.extern OSProcessSignalActivation
.extern OSProcessWaitForActivation
.extern OSProcessExit
.extern OSProcessCountQuery
.extern OSProcessQueryAll
.extern OSSetQuota
.extern OSQuotaQuery
.extern OSThreadSetFilePermissions
.extern OSThreadGetFilePermissions
.extern OSThreadSleep
.extern OSThreadCreate
.extern OSThreadTerminate
.extern OSThreadSuspend
.extern OSThreadResume
.extern OSThreadReadStatus
.extern OSThreadQuery
.extern OSThreadSignal
.extern OSThreadMaskSignal
.extern OSThreadDeliverOnWaitSignal
.extern OSJobCreate
.extern OSJobAddProcess
.extern OSJobRemoveProcess
.extern OSJobSignal
.extern OSSetSystemConsole
.extern OSConsoleSignal
.extern OSIsAConsole
.extern OSDuplexCreate
.extern OSCheckPermission
.extern OSGrantPermission
.extern OSPortCreate
.extern OSPortConnect
.extern OSPortAccept
.extern OSPortSendAndWaitReceive
.extern OSPortSendAndWaitReply
.extern OSPortOpenProcessByClientID

OSCallCount:
.global OSCallCount
	.dl 120

OSCallTable:
.global OSCallTable
	.dl 0                                                ;0
	.dl OSTOSConsolePutCharacter                         ;1
	.dl OSTOSSystemAbort                                 ;2
	.dl OSTOSGetSystemConsoleName                        ;3
	.dl OSTOSGetBootFlags                                ;4
	.dl OSTOSContinue                                    ;5
	.dl OSTOSQueryTime                                   ;6
	.dl OSTOSQueryUptime                                 ;7
	.dl OSTOSTimeZoneGet                                 ;8
	.dl OSTOSTimeZoneSet                                 ;9
	.dl OSTOSTimeSet                                     ;10
	.dl OSTOSShutdownSystem                              ;11
	.dl OSTOSVersion                                     ;12
	.dl OSTOSEventCreate                                 ;13
	.dl OSTOSEventReset                                  ;14
	.dl OSTOSEventSignal                                 ;15
	.dl OSTOSEventPulse                                  ;16
	.dl OSTOSEventReadState                              ;17
	.dl OSTOSSemaphoreCreate                             ;18
	.dl OSTOSSemaphoreRelease                            ;19
	.dl OSTOSSemaphoreReadState                          ;20
	.dl OSTOSMutexCreate                                 ;21
	.dl OSTOSMutexRelease                                ;22
	.dl OSTOSMutexReadState                              ;23
	.dl OSTOSTimerCreate                                 ;24
	.dl OSTOSTimerReset                                  ;25
	.dl OSTOSTimerEnqueue                                ;26
	.dl OSTOSTimerDequeue                                ;27
	.dl OSTOSTimerReadState                              ;28
	.dl OSTOSGetStatistics                               ;29
	.dl OSTOSIsComputerOn                                ;30
	.dl OSTOSIsComputerOnFire                            ;31
	.dl OSTOSObjectOpen                                  ;32
	.dl OSTOSQuery                                       ;33
	.dl OSTOSClose                                       ;34
	.dl OSTOSWaitForMultipleObjects                      ;35
	.dl OSTOSWaitForObject                               ;36
	.dl OSTOSHandleDuplicate                             ;37
	.dl OSTOSObjectDirectoryCountQuery                   ;38
	.dl OSTOSObjectDirectoryQueryAll                     ;39
	.dl OSTOSObjectDirectoryCreate                       ;40
	.dl OSTOSObjectDirectoryInsert                       ;41
	.dl OSTOSObjectDirectoryRemove                       ;42
	.dl OSTOSSetSecurity                                 ;43
	.dl OSTOSFileQuery                                   ;44
	.dl OSTOSFileTruncate                                ;45
	.dl OSTOSFileSeek                                    ;46
	.dl OSTOSFileRead                                    ;47
	.dl OSTOSFileWrite                                   ;48
	.dl OSTOSFileFlush                                   ;49
	.dl OSTOSFileSetInformation                          ;50
	.dl OSTOSFileReadAsync                               ;51
	.dl OSTOSFileWriteAsync                              ;52
	.dl OSTOSFileCancelIO                                ;53
	.dl OSTOSDirectoryRename                             ;54
	.dl OSTOSDirectoryUnlink                             ;55
	.dl OSTOSDirectoryRead                               ;56
	.dl OSTOSPageFileCreate                              ;57
	.dl OSTOSPageFileQuery                               ;58
	.dl OSTOSIOControl                                   ;59
	.dl OSTOSGetBootDevicePath                           ;60
	.dl OSTOSFilesystemMount                             ;61
	.dl OSTOSFilesystemUnmount                           ;62
	.dl OSTOSMountQueryAll                               ;63
	.dl OSTOSMountCountQuery                             ;64
	.dl OSTOSMountUpdateFlags                            ;65
	.dl OSTOSMountGetFilesystemName                      ;66
	.dl OSTOSMountSet                                    ;67
	.dl OSTOSFlushModifiedPages                          ;68
	.dl OSTOSSectionCreate                               ;69
	.dl OSTOSMapView                                     ;70
	.dl OSTOSUnmapView                                   ;71
	.dl OSTOSRemapView                                   ;72
	.dl OSTOSFlushView                                   ;73
	.dl OSTOSAllocate                                    ;74
	.dl OSTOSMemoryQuery                                 ;75
	.dl OSTOSWorkingSetPurge                             ;76
	.dl OSTOSSynchronizeIcache                           ;77
	.dl OSTOSProcessCreate                               ;78
	.dl OSTOSProcessSignal                               ;79
	.dl OSTOSProcessOpenByPID                            ;80
	.dl OSTOSProcessQuery                                ;81
	.dl OSTOSProcessQueryByPID                           ;82
	.dl OSTOSProcessReadStatus                           ;83
	.dl OSTOSProcessSetConsoleGroup                      ;84
	.dl OSTOSProcessBasePrioritySet                      ;85
	.dl OSTOSProcessSignalActivation                     ;86
	.dl OSTOSProcessWaitForActivation                    ;87
	.dl OSTOSProcessExit                                 ;88
	.dl OSTOSProcessCountQuery                           ;89
	.dl OSTOSProcessQueryAll                             ;90
	.dl OSTOSSetQuota                                    ;91
	.dl OSTOSQuotaQuery                                  ;92
	.dl OSTOSThreadSetFilePermissions                    ;93
	.dl OSTOSThreadGetFilePermissions                    ;94
	.dl OSTOSThreadSleep                                 ;95
	.dl OSTOSThreadCreate                                ;96
	.dl OSTOSThreadTerminate                             ;97
	.dl OSTOSThreadSuspend                               ;98
	.dl OSTOSThreadResume                                ;99
	.dl OSTOSThreadReadStatus                            ;100
	.dl OSTOSThreadQuery                                 ;101
	.dl OSTOSThreadSignal                                ;102
	.dl OSTOSThreadMaskSignal                            ;103
	.dl OSTOSThreadDeliverOnWaitSignal                   ;104
	.dl OSTOSJobCreate                                   ;105
	.dl OSTOSJobAddProcess                               ;106
	.dl OSTOSJobRemoveProcess                            ;107
	.dl OSTOSJobSignal                                   ;108
	.dl OSTOSSetSystemConsole                            ;109
	.dl OSTOSConsoleSignal                               ;110
	.dl OSTOSIsAConsole                                  ;111
	.dl OSTOSDuplexCreate                                ;112
	.dl OSTOSCheckPermission                             ;113
	.dl OSTOSGrantPermission                             ;114
	.dl OSTOSPortCreate                                  ;115
	.dl OSTOSPortConnect                                 ;116
	.dl OSTOSPortAccept                                  ;117
	.dl OSTOSPortSendAndWaitReceive                      ;118
	.dl OSTOSPortSendAndWaitReply                        ;119
	.dl OSTOSPortOpenProcessByClientID                   ;120


OSTOSConsolePutCharacter:
	push fp
	mov  fp, sp

	mov  t0, s17
	add  t0, 4 ;t1
	mov  a0, [t0]

	call OSConsolePutCharacter


	mov  t0, s17
	add  t0, 4 ;t1
	mov  [t0], a0

	pop  fp
	ret

OSTOSSystemAbort:
	push fp
	mov  fp, sp

	mov  t0, s17
	add  t0, 4 ;t1
	mov  a0, [t0]

	mov  t0, s17
	add  t0, 8 ;t2
	mov  a1, [t0]

	mov  t0, s17
	add  t0, 12 ;t3
	mov  a2, [t0]

	call OSSystemAbort


	mov  t0, s17
	add  t0, 4 ;t1
	mov  [t0], a0

	pop  fp
	ret

OSTOSGetSystemConsoleName:
	push fp
	mov  fp, sp

	mov  t0, s17
	add  t0, 4 ;t1
	mov  a0, [t0]

	call OSGetSystemConsoleName


	mov  t0, s17
	add  t0, 4 ;t1
	mov  [t0], a0

	pop  fp
	ret

OSTOSGetBootFlags:
	push fp
	mov  fp, sp

	call OSGetBootFlags


	mov  t0, s17
	add  t0, 4 ;t1
	mov  [t0], a0

	mov  t0, s17
	add  t0, 8 ;t2
	mov  [t0], a1

	pop  fp
	ret

OSTOSContinue:
	push fp
	mov  fp, sp

	mov  t0, s17
	add  t0, 4 ;t1
	mov  a0, [t0]

	mov  t0, s17
	add  t0, 8 ;t2
	mov  a1, [t0]

	call OSContinue


	pop  fp
	ret

OSTOSQueryTime:
	push fp
	mov  fp, sp

	call OSQueryTime


	mov  t0, s17
	add  t0, 4 ;t1
	mov  [t0], a0

	mov  t0, s17
	add  t0, 8 ;t2
	mov  [t0], a1

	pop  fp
	ret

OSTOSQueryUptime:
	push fp
	mov  fp, sp

	call OSQueryUptime


	mov  t0, s17
	add  t0, 4 ;t1
	mov  [t0], a0

	mov  t0, s17
	add  t0, 8 ;t2
	mov  [t0], a1

	pop  fp
	ret

OSTOSTimeZoneGet:
	push fp
	mov  fp, sp

	call OSTimeZoneGet


	mov  t0, s17
	add  t0, 4 ;t1
	mov  [t0], a0

	mov  t0, s17
	add  t0, 8 ;t2
	mov  [t0], a1

	pop  fp
	ret

OSTOSTimeZoneSet:
	push fp
	mov  fp, sp

	mov  t0, s17
	add  t0, 4 ;t1
	mov  a0, [t0]

	call OSTimeZoneSet


	mov  t0, s17
	add  t0, 4 ;t1
	mov  [t0], a0

	mov  t0, s17
	add  t0, 8 ;t2
	mov  [t0], a1

	pop  fp
	ret

OSTOSTimeSet:
	push fp
	mov  fp, sp

	mov  t0, s17
	add  t0, 4 ;t1
	mov  a0, [t0]

	mov  t0, s17
	add  t0, 8 ;t2
	mov  a1, [t0]

	call OSTimeSet


	mov  t0, s17
	add  t0, 4 ;t1
	mov  [t0], a0

	pop  fp
	ret

OSTOSShutdownSystem:
	push fp
	mov  fp, sp

	mov  t0, s17
	add  t0, 4 ;t1
	mov  a0, [t0]

	call OSShutdownSystem


	mov  t0, s17
	add  t0, 4 ;t1
	mov  [t0], a0

	pop  fp
	ret

OSTOSVersion:
	push fp
	mov  fp, sp

	mov  t0, s17
	add  t0, 4 ;t1
	mov  a0, [t0]

	call OSVersion


	mov  t0, s17
	add  t0, 4 ;t1
	mov  [t0], a0

	pop  fp
	ret

OSTOSEventCreate:
	push fp
	mov  fp, sp

	mov  t0, s17
	add  t0, 4 ;t1
	mov  a0, [t0]

	mov  t0, s17
	add  t0, 8 ;t2
	mov  a1, [t0]

	mov  t0, s17
	add  t0, 12 ;t3
	mov  a2, [t0]

	mov  t0, s17
	add  t0, 16 ;t4
	mov  a3, [t0]

	call OSEventCreate


	mov  t0, s17
	add  t0, 4 ;t1
	mov  [t0], a0

	mov  t0, s17
	add  t0, 8 ;t2
	mov  [t0], a1

	pop  fp
	ret

OSTOSEventReset:
	push fp
	mov  fp, sp

	mov  t0, s17
	add  t0, 4 ;t1
	mov  a0, [t0]

	call OSEventReset


	mov  t0, s17
	add  t0, 4 ;t1
	mov  [t0], a0

	mov  t0, s17
	add  t0, 8 ;t2
	mov  [t0], a1

	pop  fp
	ret

OSTOSEventSignal:
	push fp
	mov  fp, sp

	mov  t0, s17
	add  t0, 4 ;t1
	mov  a0, [t0]

	call OSEventSignal


	mov  t0, s17
	add  t0, 4 ;t1
	mov  [t0], a0

	pop  fp
	ret

OSTOSEventPulse:
	push fp
	mov  fp, sp

	mov  t0, s17
	add  t0, 4 ;t1
	mov  a0, [t0]

	call OSEventPulse


	mov  t0, s17
	add  t0, 4 ;t1
	mov  [t0], a0

	pop  fp
	ret

OSTOSEventReadState:
	push fp
	mov  fp, sp

	mov  t0, s17
	add  t0, 4 ;t1
	mov  a0, [t0]

	call OSEventReadState


	mov  t0, s17
	add  t0, 4 ;t1
	mov  [t0], a0

	mov  t0, s17
	add  t0, 8 ;t2
	mov  [t0], a1

	pop  fp
	ret

OSTOSSemaphoreCreate:
	push fp
	mov  fp, sp

	mov  t0, s17
	add  t0, 4 ;t1
	mov  a0, [t0]

	mov  t0, s17
	add  t0, 8 ;t2
	mov  a1, [t0]

	mov  t0, s17
	add  t0, 12 ;t3
	mov  a2, [t0]

	call OSSemaphoreCreate


	mov  t0, s17
	add  t0, 4 ;t1
	mov  [t0], a0

	mov  t0, s17
	add  t0, 8 ;t2
	mov  [t0], a1

	pop  fp
	ret

OSTOSSemaphoreRelease:
	push fp
	mov  fp, sp

	mov  t0, s17
	add  t0, 4 ;t1
	mov  a0, [t0]

	mov  t0, s17
	add  t0, 8 ;t2
	mov  a1, [t0]

	call OSSemaphoreRelease


	mov  t0, s17
	add  t0, 4 ;t1
	mov  [t0], a0

	pop  fp
	ret

OSTOSSemaphoreReadState:
	push fp
	mov  fp, sp

	mov  t0, s17
	add  t0, 4 ;t1
	mov  a0, [t0]

	call OSSemaphoreReadState


	mov  t0, s17
	add  t0, 4 ;t1
	mov  [t0], a0

	mov  t0, s17
	add  t0, 8 ;t2
	mov  [t0], a1

	pop  fp
	ret

OSTOSMutexCreate:
	push fp
	mov  fp, sp

	mov  t0, s17
	add  t0, 4 ;t1
	mov  a0, [t0]

	mov  t0, s17
	add  t0, 8 ;t2
	mov  a1, [t0]

	call OSMutexCreate


	mov  t0, s17
	add  t0, 4 ;t1
	mov  [t0], a0

	mov  t0, s17
	add  t0, 8 ;t2
	mov  [t0], a1

	pop  fp
	ret

OSTOSMutexRelease:
	push fp
	mov  fp, sp

	mov  t0, s17
	add  t0, 4 ;t1
	mov  a0, [t0]

	call OSMutexRelease


	mov  t0, s17
	add  t0, 4 ;t1
	mov  [t0], a0

	pop  fp
	ret

OSTOSMutexReadState:
	push fp
	mov  fp, sp

	mov  t0, s17
	add  t0, 4 ;t1
	mov  a0, [t0]

	call OSMutexReadState


	mov  t0, s17
	add  t0, 4 ;t1
	mov  [t0], a0

	mov  t0, s17
	add  t0, 8 ;t2
	mov  [t0], a1

	pop  fp
	ret

OSTOSTimerCreate:
	push fp
	mov  fp, sp

	mov  t0, s17
	add  t0, 4 ;t1
	mov  a0, [t0]

	mov  t0, s17
	add  t0, 8 ;t2
	mov  a1, [t0]

	call OSTimerCreate


	mov  t0, s17
	add  t0, 4 ;t1
	mov  [t0], a0

	mov  t0, s17
	add  t0, 8 ;t2
	mov  [t0], a1

	pop  fp
	ret

OSTOSTimerReset:
	push fp
	mov  fp, sp

	mov  t0, s17
	add  t0, 4 ;t1
	mov  a0, [t0]

	call OSTimerReset


	mov  t0, s17
	add  t0, 4 ;t1
	mov  [t0], a0

	mov  t0, s17
	add  t0, 8 ;t2
	mov  [t0], a1

	pop  fp
	ret

OSTOSTimerEnqueue:
	push fp
	mov  fp, sp

	mov  t0, s17
	add  t0, 4 ;t1
	mov  a0, [t0]

	mov  t0, s17
	add  t0, 8 ;t2
	mov  a1, [t0]

	call OSTimerEnqueue


	mov  t0, s17
	add  t0, 4 ;t1
	mov  [t0], a0

	pop  fp
	ret

OSTOSTimerDequeue:
	push fp
	mov  fp, sp

	mov  t0, s17
	add  t0, 4 ;t1
	mov  a0, [t0]

	call OSTimerDequeue


	mov  t0, s17
	add  t0, 4 ;t1
	mov  [t0], a0

	pop  fp
	ret

OSTOSTimerReadState:
	push fp
	mov  fp, sp

	mov  t0, s17
	add  t0, 4 ;t1
	mov  a0, [t0]

	call OSTimerReadState


	mov  t0, s17
	add  t0, 4 ;t1
	mov  [t0], a0

	mov  t0, s17
	add  t0, 8 ;t2
	mov  [t0], a1

	pop  fp
	ret

OSTOSGetStatistics:
	push fp
	mov  fp, sp

	mov  t0, s17
	add  t0, 4 ;t1
	mov  a0, [t0]

	call OSGetStatistics


	mov  t0, s17
	add  t0, 4 ;t1
	mov  [t0], a0

	pop  fp
	ret

OSTOSIsComputerOn:
	push fp
	mov  fp, sp

	call OSIsComputerOn


	mov  t0, s17
	add  t0, 4 ;t1
	mov  [t0], a0

	mov  t0, s17
	add  t0, 8 ;t2
	mov  [t0], a1

	pop  fp
	ret

OSTOSIsComputerOnFire:
	push fp
	mov  fp, sp

	call OSIsComputerOnFire


	mov  t0, s17
	add  t0, 4 ;t1
	mov  [t0], a0

	mov  t0, s17
	add  t0, 8 ;t2
	mov  [t0], a1

	pop  fp
	ret

OSTOSObjectOpen:
	push fp
	mov  fp, sp

	mov  t0, s17
	add  t0, 4 ;t1
	mov  a0, [t0]

	mov  t0, s17
	add  t0, 8 ;t2
	mov  a1, [t0]

	mov  t0, s17
	add  t0, 12 ;t3
	mov  a2, [t0]

	mov  t0, s17
	add  t0, 16 ;t4
	mov  a3, [t0]

	call OSObjectOpen


	mov  t0, s17
	add  t0, 4 ;t1
	mov  [t0], a0

	mov  t0, s17
	add  t0, 8 ;t2
	mov  [t0], a1

	pop  fp
	ret

OSTOSQuery:
	push fp
	mov  fp, sp

	mov  t0, s17
	add  t0, 4 ;t1
	mov  a0, [t0]

	mov  t0, s17
	add  t0, 8 ;t2
	mov  a1, [t0]

	call OSQuery


	mov  t0, s17
	add  t0, 4 ;t1
	mov  [t0], a0

	pop  fp
	ret

OSTOSClose:
	push fp
	mov  fp, sp

	mov  t0, s17
	add  t0, 4 ;t1
	mov  a0, [t0]

	call OSClose


	mov  t0, s17
	add  t0, 4 ;t1
	mov  [t0], a0

	pop  fp
	ret

OSTOSWaitForMultipleObjects:
	push fp
	mov  fp, sp

	mov  t0, s17
	add  t0, 4 ;t1
	mov  a0, [t0]

	mov  t0, s17
	add  t0, 8 ;t2
	mov  a1, [t0]

	mov  t0, s17
	add  t0, 12 ;t3
	mov  a2, [t0]

	mov  t0, s17
	add  t0, 16 ;t4
	mov  a3, [t0]

	mov  t0, s17
	add  t0, 20 ;t5
	push [t0]

	call OSWaitForMultipleObjects


	mov  t0, s17
	add  t0, 4 ;t1
	mov  [t0], a0

	add  sp, 4
	pop  fp
	ret

OSTOSWaitForObject:
	push fp
	mov  fp, sp

	mov  t0, s17
	add  t0, 4 ;t1
	mov  a0, [t0]

	mov  t0, s17
	add  t0, 8 ;t2
	mov  a1, [t0]

	mov  t0, s17
	add  t0, 12 ;t3
	mov  a2, [t0]

	call OSWaitForObject


	mov  t0, s17
	add  t0, 4 ;t1
	mov  [t0], a0

	pop  fp
	ret

OSTOSHandleDuplicate:
	push fp
	mov  fp, sp

	mov  t0, s17
	add  t0, 4 ;t1
	mov  a0, [t0]

	mov  t0, s17
	add  t0, 8 ;t2
	mov  a1, [t0]

	mov  t0, s17
	add  t0, 12 ;t3
	mov  a2, [t0]

	mov  t0, s17
	add  t0, 16 ;t4
	mov  a3, [t0]

	call OSHandleDuplicate


	mov  t0, s17
	add  t0, 4 ;t1
	mov  [t0], a0

	mov  t0, s17
	add  t0, 8 ;t2
	mov  [t0], a1

	pop  fp
	ret

OSTOSObjectDirectoryCountQuery:
	push fp
	mov  fp, sp

	mov  t0, s17
	add  t0, 4 ;t1
	mov  a0, [t0]

	call OSObjectDirectoryCountQuery


	mov  t0, s17
	add  t0, 4 ;t1
	mov  [t0], a0

	mov  t0, s17
	add  t0, 8 ;t2
	mov  [t0], a1

	pop  fp
	ret

OSTOSObjectDirectoryQueryAll:
	push fp
	mov  fp, sp

	mov  t0, s17
	add  t0, 4 ;t1
	mov  a0, [t0]

	mov  t0, s17
	add  t0, 8 ;t2
	mov  a1, [t0]

	mov  t0, s17
	add  t0, 12 ;t3
	mov  a2, [t0]

	call OSObjectDirectoryQueryAll


	mov  t0, s17
	add  t0, 4 ;t1
	mov  [t0], a0

	mov  t0, s17
	add  t0, 8 ;t2
	mov  [t0], a1

	pop  fp
	ret

OSTOSObjectDirectoryCreate:
	push fp
	mov  fp, sp

	mov  t0, s17
	add  t0, 4 ;t1
	mov  a0, [t0]

	mov  t0, s17
	add  t0, 8 ;t2
	mov  a1, [t0]

	call OSObjectDirectoryCreate


	mov  t0, s17
	add  t0, 4 ;t1
	mov  [t0], a0

	mov  t0, s17
	add  t0, 8 ;t2
	mov  [t0], a1

	pop  fp
	ret

OSTOSObjectDirectoryInsert:
	push fp
	mov  fp, sp

	mov  t0, s17
	add  t0, 4 ;t1
	mov  a0, [t0]

	mov  t0, s17
	add  t0, 8 ;t2
	mov  a1, [t0]

	call OSObjectDirectoryInsert


	mov  t0, s17
	add  t0, 4 ;t1
	mov  [t0], a0

	pop  fp
	ret

OSTOSObjectDirectoryRemove:
	push fp
	mov  fp, sp

	mov  t0, s17
	add  t0, 4 ;t1
	mov  a0, [t0]

	call OSObjectDirectoryRemove


	mov  t0, s17
	add  t0, 4 ;t1
	mov  [t0], a0

	pop  fp
	ret

OSTOSSetSecurity:
	push fp
	mov  fp, sp

	mov  t0, s17
	add  t0, 4 ;t1
	mov  a0, [t0]

	mov  t0, s17
	add  t0, 8 ;t2
	mov  a1, [t0]

	mov  t0, s17
	add  t0, 12 ;t3
	mov  a2, [t0]

	mov  t0, s17
	add  t0, 16 ;t4
	mov  a3, [t0]

	call OSSetSecurity


	mov  t0, s17
	add  t0, 4 ;t1
	mov  [t0], a0

	pop  fp
	ret

OSTOSFileQuery:
	push fp
	mov  fp, sp

	mov  t0, s17
	add  t0, 4 ;t1
	mov  a0, [t0]

	mov  t0, s17
	add  t0, 8 ;t2
	mov  a1, [t0]

	call OSFileQuery


	mov  t0, s17
	add  t0, 4 ;t1
	mov  [t0], a0

	pop  fp
	ret

OSTOSFileTruncate:
	push fp
	mov  fp, sp

	mov  t0, s17
	add  t0, 4 ;t1
	mov  a0, [t0]

	mov  t0, s17
	add  t0, 8 ;t2
	mov  a1, [t0]

	mov  t0, s17
	add  t0, 12 ;t3
	mov  a2, [t0]

	call OSFileTruncate


	mov  t0, s17
	add  t0, 4 ;t1
	mov  [t0], a0

	mov  t0, s17
	add  t0, 8 ;t2
	mov  [t0], a1

	pop  fp
	ret

OSTOSFileSeek:
	push fp
	mov  fp, sp

	mov  t0, s17
	add  t0, 4 ;t1
	mov  a0, [t0]

	mov  t0, s17
	add  t0, 8 ;t2
	mov  a1, [t0]

	mov  t0, s17
	add  t0, 12 ;t3
	mov  a2, [t0]

	call OSFileSeek


	mov  t0, s17
	add  t0, 4 ;t1
	mov  [t0], a0

	mov  t0, s17
	add  t0, 8 ;t2
	mov  [t0], a1

	pop  fp
	ret

OSTOSFileRead:
	push fp
	mov  fp, sp

	mov  t0, s17
	add  t0, 4 ;t1
	mov  a0, [t0]

	mov  t0, s17
	add  t0, 8 ;t2
	mov  a1, [t0]

	mov  t0, s17
	add  t0, 12 ;t3
	mov  a2, [t0]

	mov  t0, s17
	add  t0, 16 ;t4
	mov  a3, [t0]

	mov  t0, s17
	add  t0, 20 ;t5
	push [t0]

	call OSFileRead


	mov  t0, s17
	add  t0, 4 ;t1
	mov  [t0], a0

	mov  t0, s17
	add  t0, 8 ;t2
	mov  [t0], a1

	add  sp, 4
	pop  fp
	ret

OSTOSFileWrite:
	push fp
	mov  fp, sp

	mov  t0, s17
	add  t0, 4 ;t1
	mov  a0, [t0]

	mov  t0, s17
	add  t0, 8 ;t2
	mov  a1, [t0]

	mov  t0, s17
	add  t0, 12 ;t3
	mov  a2, [t0]

	mov  t0, s17
	add  t0, 16 ;t4
	mov  a3, [t0]

	call OSFileWrite


	mov  t0, s17
	add  t0, 4 ;t1
	mov  [t0], a0

	mov  t0, s17
	add  t0, 8 ;t2
	mov  [t0], a1

	pop  fp
	ret

OSTOSFileFlush:
	push fp
	mov  fp, sp

	mov  t0, s17
	add  t0, 4 ;t1
	mov  a0, [t0]

	mov  t0, s17
	add  t0, 8 ;t2
	mov  a1, [t0]

	call OSFileFlush


	mov  t0, s17
	add  t0, 4 ;t1
	mov  [t0], a0

	pop  fp
	ret

OSTOSFileSetInformation:
	push fp
	mov  fp, sp

	mov  t0, s17
	add  t0, 4 ;t1
	mov  a0, [t0]

	mov  t0, s17
	add  t0, 8 ;t2
	mov  a1, [t0]

	call OSFileSetInformation


	mov  t0, s17
	add  t0, 4 ;t1
	mov  [t0], a0

	pop  fp
	ret

OSTOSFileReadAsync:
	push fp
	mov  fp, sp

	mov  t0, s17
	add  t0, 4 ;t1
	mov  a0, [t0]

	mov  t0, s17
	add  t0, 8 ;t2
	mov  a1, [t0]

	mov  t0, s17
	add  t0, 12 ;t3
	mov  a2, [t0]

	mov  t0, s17
	add  t0, 16 ;t4
	mov  a3, [t0]

	mov  t0, s17
	add  t0, 20 ;t5
	push [t0]

	mov  t0, s17
	add  t0, 24 ;t6
	push [t0]

	call OSFileReadAsync


	mov  t0, s17
	add  t0, 4 ;t1
	mov  [t0], a0

	add  sp, 8
	pop  fp
	ret

OSTOSFileWriteAsync:
	push fp
	mov  fp, sp

	mov  t0, s17
	add  t0, 4 ;t1
	mov  a0, [t0]

	mov  t0, s17
	add  t0, 8 ;t2
	mov  a1, [t0]

	mov  t0, s17
	add  t0, 12 ;t3
	mov  a2, [t0]

	mov  t0, s17
	add  t0, 16 ;t4
	mov  a3, [t0]

	mov  t0, s17
	add  t0, 20 ;t5
	push [t0]

	mov  t0, s17
	add  t0, 24 ;t6
	push [t0]

	call OSFileWriteAsync


	mov  t0, s17
	add  t0, 4 ;t1
	mov  [t0], a0

	add  sp, 8
	pop  fp
	ret

OSTOSFileCancelIO:
	push fp
	mov  fp, sp

	mov  t0, s17
	add  t0, 4 ;t1
	mov  a0, [t0]

	mov  t0, s17
	add  t0, 8 ;t2
	mov  a1, [t0]

	call OSFileCancelIO


	mov  t0, s17
	add  t0, 4 ;t1
	mov  [t0], a0

	pop  fp
	ret

OSTOSDirectoryRename:
	push fp
	mov  fp, sp

	mov  t0, s17
	add  t0, 4 ;t1
	mov  a0, [t0]

	mov  t0, s17
	add  t0, 8 ;t2
	mov  a1, [t0]

	mov  t0, s17
	add  t0, 12 ;t3
	mov  a2, [t0]

	mov  t0, s17
	add  t0, 16 ;t4
	mov  a3, [t0]

	call OSDirectoryRename


	mov  t0, s17
	add  t0, 4 ;t1
	mov  [t0], a0

	pop  fp
	ret

OSTOSDirectoryUnlink:
	push fp
	mov  fp, sp

	mov  t0, s17
	add  t0, 4 ;t1
	mov  a0, [t0]

	mov  t0, s17
	add  t0, 8 ;t2
	mov  a1, [t0]

	call OSDirectoryUnlink


	mov  t0, s17
	add  t0, 4 ;t1
	mov  [t0], a0

	pop  fp
	ret

OSTOSDirectoryRead:
	push fp
	mov  fp, sp

	mov  t0, s17
	add  t0, 4 ;t1
	mov  a0, [t0]

	mov  t0, s17
	add  t0, 8 ;t2
	mov  a1, [t0]

	call OSDirectoryRead


	mov  t0, s17
	add  t0, 4 ;t1
	mov  [t0], a0

	pop  fp
	ret

OSTOSPageFileCreate:
	push fp
	mov  fp, sp

	mov  t0, s17
	add  t0, 4 ;t1
	mov  a0, [t0]

	mov  t0, s17
	add  t0, 8 ;t2
	mov  a1, [t0]

	mov  t0, s17
	add  t0, 12 ;t3
	mov  a2, [t0]

	mov  t0, s17
	add  t0, 16 ;t4
	mov  a3, [t0]

	call OSPageFileCreate


	mov  t0, s17
	add  t0, 4 ;t1
	mov  [t0], a0

	pop  fp
	ret

OSTOSPageFileQuery:
	push fp
	mov  fp, sp

	mov  t0, s17
	add  t0, 4 ;t1
	mov  a0, [t0]

	mov  t0, s17
	add  t0, 8 ;t2
	mov  a1, [t0]

	call OSPageFileQuery


	mov  t0, s17
	add  t0, 4 ;t1
	mov  [t0], a0

	pop  fp
	ret

OSTOSIOControl:
	push fp
	mov  fp, sp

	mov  t0, s17
	add  t0, 4 ;t1
	mov  a0, [t0]

	mov  t0, s17
	add  t0, 8 ;t2
	mov  a1, [t0]

	mov  t0, s17
	add  t0, 12 ;t3
	mov  a2, [t0]

	call OSIOControl


	mov  t0, s17
	add  t0, 4 ;t1
	mov  [t0], a0

	mov  t0, s17
	add  t0, 8 ;t2
	mov  [t0], a1

	pop  fp
	ret

OSTOSGetBootDevicePath:
	push fp
	mov  fp, sp

	mov  t0, s17
	add  t0, 4 ;t1
	mov  a0, [t0]

	call OSGetBootDevicePath


	mov  t0, s17
	add  t0, 4 ;t1
	mov  [t0], a0

	pop  fp
	ret

OSTOSFilesystemMount:
	push fp
	mov  fp, sp

	mov  t0, s17
	add  t0, 4 ;t1
	mov  a0, [t0]

	mov  t0, s17
	add  t0, 8 ;t2
	mov  a1, [t0]

	mov  t0, s17
	add  t0, 12 ;t3
	mov  a2, [t0]

	call OSFilesystemMount


	mov  t0, s17
	add  t0, 4 ;t1
	mov  [t0], a0

	pop  fp
	ret

OSTOSFilesystemUnmount:
	push fp
	mov  fp, sp

	mov  t0, s17
	add  t0, 4 ;t1
	mov  a0, [t0]

	call OSFilesystemUnmount


	mov  t0, s17
	add  t0, 4 ;t1
	mov  [t0], a0

	pop  fp
	ret

OSTOSMountQueryAll:
	push fp
	mov  fp, sp

	mov  t0, s17
	add  t0, 4 ;t1
	mov  a0, [t0]

	mov  t0, s17
	add  t0, 8 ;t2
	mov  a1, [t0]

	call OSMountQueryAll


	mov  t0, s17
	add  t0, 4 ;t1
	mov  [t0], a0

	mov  t0, s17
	add  t0, 8 ;t2
	mov  [t0], a1

	pop  fp
	ret

OSTOSMountCountQuery:
	push fp
	mov  fp, sp

	call OSMountCountQuery


	mov  t0, s17
	add  t0, 4 ;t1
	mov  [t0], a0

	mov  t0, s17
	add  t0, 8 ;t2
	mov  [t0], a1

	pop  fp
	ret

OSTOSMountUpdateFlags:
	push fp
	mov  fp, sp

	mov  t0, s17
	add  t0, 4 ;t1
	mov  a0, [t0]

	mov  t0, s17
	add  t0, 8 ;t2
	mov  a1, [t0]

	call OSMountUpdateFlags


	mov  t0, s17
	add  t0, 4 ;t1
	mov  [t0], a0

	pop  fp
	ret

OSTOSMountGetFilesystemName:
	push fp
	mov  fp, sp

	mov  t0, s17
	add  t0, 4 ;t1
	mov  a0, [t0]

	mov  t0, s17
	add  t0, 8 ;t2
	mov  a1, [t0]

	call OSMountGetFilesystemName


	mov  t0, s17
	add  t0, 4 ;t1
	mov  [t0], a0

	pop  fp
	ret

OSTOSMountSet:
	push fp
	mov  fp, sp

	mov  t0, s17
	add  t0, 4 ;t1
	mov  a0, [t0]

	mov  t0, s17
	add  t0, 8 ;t2
	mov  a1, [t0]

	call OSMountSet


	mov  t0, s17
	add  t0, 4 ;t1
	mov  [t0], a0

	pop  fp
	ret

OSTOSFlushModifiedPages:
	push fp
	mov  fp, sp

	call OSFlushModifiedPages


	mov  t0, s17
	add  t0, 4 ;t1
	mov  [t0], a0

	pop  fp
	ret

OSTOSSectionCreate:
	push fp
	mov  fp, sp

	mov  t0, s17
	add  t0, 4 ;t1
	mov  a0, [t0]

	mov  t0, s17
	add  t0, 8 ;t2
	mov  a1, [t0]

	mov  t0, s17
	add  t0, 12 ;t3
	mov  a2, [t0]

	mov  t0, s17
	add  t0, 16 ;t4
	mov  a3, [t0]

	call OSSectionCreate


	mov  t0, s17
	add  t0, 4 ;t1
	mov  [t0], a0

	mov  t0, s17
	add  t0, 8 ;t2
	mov  [t0], a1

	pop  fp
	ret

OSTOSMapView:
	push fp
	mov  fp, sp

	mov  t0, s17
	add  t0, 4 ;t1
	mov  a0, [t0]

	mov  t0, s17
	add  t0, 8 ;t2
	mov  a1, [t0]

	mov  t0, s17
	add  t0, 12 ;t3
	mov  a2, [t0]

	mov  t0, s17
	add  t0, 16 ;t4
	mov  a3, [t0]

	mov  t0, s17
	add  t0, 20 ;t5
	push [t0]

	mov  t0, s17
	add  t0, 24 ;t6
	push [t0]

	mov  t0, s17
	add  t0, 28 ;a0
	push [t0]

	call OSMapView


	mov  t0, s17
	add  t0, 4 ;t1
	mov  [t0], a0

	mov  t0, s17
	add  t0, 8 ;t2
	mov  [t0], a1

	add  sp, 12
	pop  fp
	ret

OSTOSUnmapView:
	push fp
	mov  fp, sp

	mov  t0, s17
	add  t0, 4 ;t1
	mov  a0, [t0]

	mov  t0, s17
	add  t0, 8 ;t2
	mov  a1, [t0]

	mov  t0, s17
	add  t0, 12 ;t3
	mov  a2, [t0]

	call OSUnmapView


	mov  t0, s17
	add  t0, 4 ;t1
	mov  [t0], a0

	pop  fp
	ret

OSTOSRemapView:
	push fp
	mov  fp, sp

	mov  t0, s17
	add  t0, 4 ;t1
	mov  a0, [t0]

	mov  t0, s17
	add  t0, 8 ;t2
	mov  a1, [t0]

	mov  t0, s17
	add  t0, 12 ;t3
	mov  a2, [t0]

	mov  t0, s17
	add  t0, 16 ;t4
	mov  a3, [t0]

	call OSRemapView


	mov  t0, s17
	add  t0, 4 ;t1
	mov  [t0], a0

	pop  fp
	ret

OSTOSFlushView:
	push fp
	mov  fp, sp

	mov  t0, s17
	add  t0, 4 ;t1
	mov  a0, [t0]

	mov  t0, s17
	add  t0, 8 ;t2
	mov  a1, [t0]

	mov  t0, s17
	add  t0, 12 ;t3
	mov  a2, [t0]

	call OSFlushView


	mov  t0, s17
	add  t0, 4 ;t1
	mov  [t0], a0

	pop  fp
	ret

OSTOSAllocate:
	push fp
	mov  fp, sp

	mov  t0, s17
	add  t0, 4 ;t1
	mov  a0, [t0]

	mov  t0, s17
	add  t0, 8 ;t2
	mov  a1, [t0]

	mov  t0, s17
	add  t0, 12 ;t3
	mov  a2, [t0]

	mov  t0, s17
	add  t0, 16 ;t4
	mov  a3, [t0]

	mov  t0, s17
	add  t0, 20 ;t5
	push [t0]

	call OSAllocate


	mov  t0, s17
	add  t0, 4 ;t1
	mov  [t0], a0

	mov  t0, s17
	add  t0, 8 ;t2
	mov  [t0], a1

	add  sp, 4
	pop  fp
	ret

OSTOSMemoryQuery:
	push fp
	mov  fp, sp

	mov  t0, s17
	add  t0, 4 ;t1
	mov  a0, [t0]

	call OSMemoryQuery


	mov  t0, s17
	add  t0, 4 ;t1
	mov  [t0], a0

	pop  fp
	ret

OSTOSWorkingSetPurge:
	push fp
	mov  fp, sp

	call OSWorkingSetPurge


	mov  t0, s17
	add  t0, 4 ;t1
	mov  [t0], a0

	pop  fp
	ret

OSTOSSynchronizeIcache:
	push fp
	mov  fp, sp

	call OSSynchronizeIcache


	pop  fp
	ret

OSTOSProcessCreate:
	push fp
	mov  fp, sp

	mov  t0, s17
	add  t0, 4 ;t1
	mov  a0, [t0]

	mov  t0, s17
	add  t0, 8 ;t2
	mov  a1, [t0]

	mov  t0, s17
	add  t0, 12 ;t3
	mov  a2, [t0]

	mov  t0, s17
	add  t0, 16 ;t4
	mov  a3, [t0]

	mov  t0, s17
	add  t0, 20 ;t5
	push [t0]

	call OSProcessCreate


	mov  t0, s17
	add  t0, 4 ;t1
	mov  [t0], a0

	mov  t0, s17
	add  t0, 8 ;t2
	mov  [t0], a1

	add  sp, 4
	pop  fp
	ret

OSTOSProcessSignal:
	push fp
	mov  fp, sp

	mov  t0, s17
	add  t0, 4 ;t1
	mov  a0, [t0]

	mov  t0, s17
	add  t0, 8 ;t2
	mov  a1, [t0]

	call OSProcessSignal


	mov  t0, s17
	add  t0, 4 ;t1
	mov  [t0], a0

	pop  fp
	ret

OSTOSProcessOpenByPID:
	push fp
	mov  fp, sp

	mov  t0, s17
	add  t0, 4 ;t1
	mov  a0, [t0]

	mov  t0, s17
	add  t0, 8 ;t2
	mov  a1, [t0]

	call OSProcessOpenByPID


	mov  t0, s17
	add  t0, 4 ;t1
	mov  [t0], a0

	mov  t0, s17
	add  t0, 8 ;t2
	mov  [t0], a1

	pop  fp
	ret

OSTOSProcessQuery:
	push fp
	mov  fp, sp

	mov  t0, s17
	add  t0, 4 ;t1
	mov  a0, [t0]

	mov  t0, s17
	add  t0, 8 ;t2
	mov  a1, [t0]

	call OSProcessQuery


	mov  t0, s17
	add  t0, 4 ;t1
	mov  [t0], a0

	pop  fp
	ret

OSTOSProcessQueryByPID:
	push fp
	mov  fp, sp

	mov  t0, s17
	add  t0, 4 ;t1
	mov  a0, [t0]

	mov  t0, s17
	add  t0, 8 ;t2
	mov  a1, [t0]

	call OSProcessQueryByPID


	mov  t0, s17
	add  t0, 4 ;t1
	mov  [t0], a0

	pop  fp
	ret

OSTOSProcessReadStatus:
	push fp
	mov  fp, sp

	mov  t0, s17
	add  t0, 4 ;t1
	mov  a0, [t0]

	call OSProcessReadStatus


	mov  t0, s17
	add  t0, 4 ;t1
	mov  [t0], a0

	mov  t0, s17
	add  t0, 8 ;t2
	mov  [t0], a1

	pop  fp
	ret

OSTOSProcessSetConsoleGroup:
	push fp
	mov  fp, sp

	mov  t0, s17
	add  t0, 4 ;t1
	mov  a0, [t0]

	mov  t0, s17
	add  t0, 8 ;t2
	mov  a1, [t0]

	call OSProcessSetConsoleGroup


	mov  t0, s17
	add  t0, 4 ;t1
	mov  [t0], a0

	pop  fp
	ret

OSTOSProcessBasePrioritySet:
	push fp
	mov  fp, sp

	mov  t0, s17
	add  t0, 4 ;t1
	mov  a0, [t0]

	mov  t0, s17
	add  t0, 8 ;t2
	mov  a1, [t0]

	call OSProcessBasePrioritySet


	mov  t0, s17
	add  t0, 4 ;t1
	mov  [t0], a0

	pop  fp
	ret

OSTOSProcessSignalActivation:
	push fp
	mov  fp, sp

	mov  t0, s17
	add  t0, 4 ;t1
	mov  a0, [t0]

	call OSProcessSignalActivation


	mov  t0, s17
	add  t0, 4 ;t1
	mov  [t0], a0

	pop  fp
	ret

OSTOSProcessWaitForActivation:
	push fp
	mov  fp, sp

	mov  t0, s17
	add  t0, 4 ;t1
	mov  a0, [t0]

	mov  t0, s17
	add  t0, 8 ;t2
	mov  a1, [t0]

	call OSProcessWaitForActivation


	mov  t0, s17
	add  t0, 4 ;t1
	mov  [t0], a0

	mov  t0, s17
	add  t0, 8 ;t2
	mov  [t0], a1

	pop  fp
	ret

OSTOSProcessExit:
	push fp
	mov  fp, sp

	mov  t0, s17
	add  t0, 4 ;t1
	mov  a0, [t0]

	call OSProcessExit


	pop  fp
	ret

OSTOSProcessCountQuery:
	push fp
	mov  fp, sp

	call OSProcessCountQuery


	mov  t0, s17
	add  t0, 4 ;t1
	mov  [t0], a0

	mov  t0, s17
	add  t0, 8 ;t2
	mov  [t0], a1

	pop  fp
	ret

OSTOSProcessQueryAll:
	push fp
	mov  fp, sp

	mov  t0, s17
	add  t0, 4 ;t1
	mov  a0, [t0]

	mov  t0, s17
	add  t0, 8 ;t2
	mov  a1, [t0]

	call OSProcessQueryAll


	mov  t0, s17
	add  t0, 4 ;t1
	mov  [t0], a0

	mov  t0, s17
	add  t0, 8 ;t2
	mov  [t0], a1

	pop  fp
	ret

OSTOSSetQuota:
	push fp
	mov  fp, sp

	mov  t0, s17
	add  t0, 4 ;t1
	mov  a0, [t0]

	mov  t0, s17
	add  t0, 8 ;t2
	mov  a1, [t0]

	call OSSetQuota


	mov  t0, s17
	add  t0, 4 ;t1
	mov  [t0], a0

	pop  fp
	ret

OSTOSQuotaQuery:
	push fp
	mov  fp, sp

	mov  t0, s17
	add  t0, 4 ;t1
	mov  a0, [t0]

	mov  t0, s17
	add  t0, 8 ;t2
	mov  a1, [t0]

	call OSQuotaQuery


	mov  t0, s17
	add  t0, 4 ;t1
	mov  [t0], a0

	pop  fp
	ret

OSTOSThreadSetFilePermissions:
	push fp
	mov  fp, sp

	mov  t0, s17
	add  t0, 4 ;t1
	mov  a0, [t0]

	call OSThreadSetFilePermissions


	mov  t0, s17
	add  t0, 4 ;t1
	mov  [t0], a0

	pop  fp
	ret

OSTOSThreadGetFilePermissions:
	push fp
	mov  fp, sp

	call OSThreadGetFilePermissions


	mov  t0, s17
	add  t0, 4 ;t1
	mov  [t0], a0

	mov  t0, s17
	add  t0, 8 ;t2
	mov  [t0], a1

	pop  fp
	ret

OSTOSThreadSleep:
	push fp
	mov  fp, sp

	mov  t0, s17
	add  t0, 4 ;t1
	mov  a0, [t0]

	call OSThreadSleep


	mov  t0, s17
	add  t0, 4 ;t1
	mov  [t0], a0

	pop  fp
	ret

OSTOSThreadCreate:
	push fp
	mov  fp, sp

	mov  t0, s17
	add  t0, 4 ;t1
	mov  a0, [t0]

	mov  t0, s17
	add  t0, 8 ;t2
	mov  a1, [t0]

	mov  t0, s17
	add  t0, 12 ;t3
	mov  a2, [t0]

	mov  t0, s17
	add  t0, 16 ;t4
	mov  a3, [t0]

	mov  t0, s17
	add  t0, 20 ;t5
	push [t0]

	mov  t0, s17
	add  t0, 24 ;t6
	push [t0]

	call OSThreadCreate


	mov  t0, s17
	add  t0, 4 ;t1
	mov  [t0], a0

	mov  t0, s17
	add  t0, 8 ;t2
	mov  [t0], a1

	add  sp, 8
	pop  fp
	ret

OSTOSThreadTerminate:
	push fp
	mov  fp, sp

	mov  t0, s17
	add  t0, 4 ;t1
	mov  a0, [t0]

	mov  t0, s17
	add  t0, 8 ;t2
	mov  a1, [t0]

	call OSThreadTerminate


	mov  t0, s17
	add  t0, 4 ;t1
	mov  [t0], a0

	pop  fp
	ret

OSTOSThreadSuspend:
	push fp
	mov  fp, sp

	mov  t0, s17
	add  t0, 4 ;t1
	mov  a0, [t0]

	call OSThreadSuspend


	mov  t0, s17
	add  t0, 4 ;t1
	mov  [t0], a0

	pop  fp
	ret

OSTOSThreadResume:
	push fp
	mov  fp, sp

	mov  t0, s17
	add  t0, 4 ;t1
	mov  a0, [t0]

	call OSThreadResume


	mov  t0, s17
	add  t0, 4 ;t1
	mov  [t0], a0

	pop  fp
	ret

OSTOSThreadReadStatus:
	push fp
	mov  fp, sp

	mov  t0, s17
	add  t0, 4 ;t1
	mov  a0, [t0]

	call OSThreadReadStatus


	mov  t0, s17
	add  t0, 4 ;t1
	mov  [t0], a0

	mov  t0, s17
	add  t0, 8 ;t2
	mov  [t0], a1

	pop  fp
	ret

OSTOSThreadQuery:
	push fp
	mov  fp, sp

	mov  t0, s17
	add  t0, 4 ;t1
	mov  a0, [t0]

	mov  t0, s17
	add  t0, 8 ;t2
	mov  a1, [t0]

	call OSThreadQuery


	mov  t0, s17
	add  t0, 4 ;t1
	mov  [t0], a0

	pop  fp
	ret

OSTOSThreadSignal:
	push fp
	mov  fp, sp

	mov  t0, s17
	add  t0, 4 ;t1
	mov  a0, [t0]

	mov  t0, s17
	add  t0, 8 ;t2
	mov  a1, [t0]

	call OSThreadSignal


	mov  t0, s17
	add  t0, 4 ;t1
	mov  [t0], a0

	pop  fp
	ret

OSTOSThreadMaskSignal:
	push fp
	mov  fp, sp

	mov  t0, s17
	add  t0, 4 ;t1
	mov  a0, [t0]

	mov  t0, s17
	add  t0, 8 ;t2
	mov  a1, [t0]

	call OSThreadMaskSignal


	mov  t0, s17
	add  t0, 4 ;t1
	mov  [t0], a0

	pop  fp
	ret

OSTOSThreadDeliverOnWaitSignal:
	push fp
	mov  fp, sp

	mov  t0, s17
	add  t0, 4 ;t1
	mov  a0, [t0]

	mov  t0, s17
	add  t0, 8 ;t2
	mov  a1, [t0]

	call OSThreadDeliverOnWaitSignal


	mov  t0, s17
	add  t0, 4 ;t1
	mov  [t0], a0

	pop  fp
	ret

OSTOSJobCreate:
	push fp
	mov  fp, sp

	mov  t0, s17
	add  t0, 4 ;t1
	mov  a0, [t0]

	mov  t0, s17
	add  t0, 8 ;t2
	mov  a1, [t0]

	mov  t0, s17
	add  t0, 12 ;t3
	mov  a2, [t0]

	mov  t0, s17
	add  t0, 16 ;t4
	mov  a3, [t0]

	mov  t0, s17
	add  t0, 20 ;t5
	push [t0]

	call OSJobCreate


	mov  t0, s17
	add  t0, 4 ;t1
	mov  [t0], a0

	mov  t0, s17
	add  t0, 8 ;t2
	mov  [t0], a1

	add  sp, 4
	pop  fp
	ret

OSTOSJobAddProcess:
	push fp
	mov  fp, sp

	mov  t0, s17
	add  t0, 4 ;t1
	mov  a0, [t0]

	mov  t0, s17
	add  t0, 8 ;t2
	mov  a1, [t0]

	call OSJobAddProcess


	mov  t0, s17
	add  t0, 4 ;t1
	mov  [t0], a0

	pop  fp
	ret

OSTOSJobRemoveProcess:
	push fp
	mov  fp, sp

	mov  t0, s17
	add  t0, 4 ;t1
	mov  a0, [t0]

	call OSJobRemoveProcess


	mov  t0, s17
	add  t0, 4 ;t1
	mov  [t0], a0

	pop  fp
	ret

OSTOSJobSignal:
	push fp
	mov  fp, sp

	mov  t0, s17
	add  t0, 4 ;t1
	mov  a0, [t0]

	mov  t0, s17
	add  t0, 8 ;t2
	mov  a1, [t0]

	mov  t0, s17
	add  t0, 12 ;t3
	mov  a2, [t0]

	call OSJobSignal


	mov  t0, s17
	add  t0, 4 ;t1
	mov  [t0], a0

	pop  fp
	ret

OSTOSSetSystemConsole:
	push fp
	mov  fp, sp

	mov  t0, s17
	add  t0, 4 ;t1
	mov  a0, [t0]

	call OSSetSystemConsole


	mov  t0, s17
	add  t0, 4 ;t1
	mov  [t0], a0

	pop  fp
	ret

OSTOSConsoleSignal:
	push fp
	mov  fp, sp

	mov  t0, s17
	add  t0, 4 ;t1
	mov  a0, [t0]

	mov  t0, s17
	add  t0, 8 ;t2
	mov  a1, [t0]

	call OSConsoleSignal


	mov  t0, s17
	add  t0, 4 ;t1
	mov  [t0], a0

	pop  fp
	ret

OSTOSIsAConsole:
	push fp
	mov  fp, sp

	mov  t0, s17
	add  t0, 4 ;t1
	mov  a0, [t0]

	call OSIsAConsole


	mov  t0, s17
	add  t0, 4 ;t1
	mov  [t0], a0

	pop  fp
	ret

OSTOSDuplexCreate:
	push fp
	mov  fp, sp

	mov  t0, s17
	add  t0, 4 ;t1
	mov  a0, [t0]

	mov  t0, s17
	add  t0, 8 ;t2
	mov  a1, [t0]

	mov  t0, s17
	add  t0, 12 ;t3
	mov  a2, [t0]

	call OSDuplexCreate


	mov  t0, s17
	add  t0, 4 ;t1
	mov  [t0], a0

	mov  t0, s17
	add  t0, 8 ;t2
	mov  [t0], a1

	mov  t0, s17
	add  t0, 12 ;t3
	mov  [t0], a2

	pop  fp
	ret

OSTOSCheckPermission:
	push fp
	mov  fp, sp

	mov  t0, s17
	add  t0, 4 ;t1
	mov  a0, [t0]

	mov  t0, s17
	add  t0, 8 ;t2
	mov  a1, [t0]

	call OSCheckPermission


	mov  t0, s17
	add  t0, 4 ;t1
	mov  [t0], a0

	pop  fp
	ret

OSTOSGrantPermission:
	push fp
	mov  fp, sp

	mov  t0, s17
	add  t0, 4 ;t1
	mov  a0, [t0]

	mov  t0, s17
	add  t0, 8 ;t2
	mov  a1, [t0]

	call OSGrantPermission


	mov  t0, s17
	add  t0, 4 ;t1
	mov  [t0], a0

	pop  fp
	ret

OSTOSPortCreate:
	push fp
	mov  fp, sp

	mov  t0, s17
	add  t0, 4 ;t1
	mov  a0, [t0]

	mov  t0, s17
	add  t0, 8 ;t2
	mov  a1, [t0]

	mov  t0, s17
	add  t0, 12 ;t3
	mov  a2, [t0]

	mov  t0, s17
	add  t0, 16 ;t4
	mov  a3, [t0]

	call OSPortCreate


	mov  t0, s17
	add  t0, 4 ;t1
	mov  [t0], a0

	mov  t0, s17
	add  t0, 8 ;t2
	mov  [t0], a1

	pop  fp
	ret

OSTOSPortConnect:
	push fp
	mov  fp, sp

	mov  t0, s17
	add  t0, 4 ;t1
	mov  a0, [t0]

	mov  t0, s17
	add  t0, 8 ;t2
	mov  a1, [t0]

	mov  t0, s17
	add  t0, 12 ;t3
	mov  a2, [t0]

	mov  t0, s17
	add  t0, 16 ;t4
	mov  a3, [t0]

	call OSPortConnect


	mov  t0, s17
	add  t0, 4 ;t1
	mov  [t0], a0

	mov  t0, s17
	add  t0, 8 ;t2
	mov  [t0], a1

	pop  fp
	ret

OSTOSPortAccept:
	push fp
	mov  fp, sp

	mov  t0, s17
	add  t0, 4 ;t1
	mov  a0, [t0]

	mov  t0, s17
	add  t0, 8 ;t2
	mov  a1, [t0]

	mov  t0, s17
	add  t0, 12 ;t3
	mov  a2, [t0]

	mov  t0, s17
	add  t0, 16 ;t4
	mov  a3, [t0]

	call OSPortAccept


	mov  t0, s17
	add  t0, 4 ;t1
	mov  [t0], a0

	pop  fp
	ret

OSTOSPortSendAndWaitReceive:
	push fp
	mov  fp, sp

	mov  t0, s17
	add  t0, 4 ;t1
	mov  a0, [t0]

	mov  t0, s17
	add  t0, 8 ;t2
	mov  a1, [t0]

	mov  t0, s17
	add  t0, 12 ;t3
	mov  a2, [t0]

	mov  t0, s17
	add  t0, 16 ;t4
	mov  a3, [t0]

	call OSPortSendAndWaitReceive


	mov  t0, s17
	add  t0, 4 ;t1
	mov  [t0], a0

	pop  fp
	ret

OSTOSPortSendAndWaitReply:
	push fp
	mov  fp, sp

	mov  t0, s17
	add  t0, 4 ;t1
	mov  a0, [t0]

	mov  t0, s17
	add  t0, 8 ;t2
	mov  a1, [t0]

	mov  t0, s17
	add  t0, 12 ;t3
	mov  a2, [t0]

	mov  t0, s17
	add  t0, 16 ;t4
	mov  a3, [t0]

	call OSPortSendAndWaitReply


	mov  t0, s17
	add  t0, 4 ;t1
	mov  [t0], a0

	pop  fp
	ret

OSTOSPortOpenProcessByClientID:
	push fp
	mov  fp, sp

	mov  t0, s17
	add  t0, 4 ;t1
	mov  a0, [t0]

	mov  t0, s17
	add  t0, 8 ;t2
	mov  a1, [t0]

	mov  t0, s17
	add  t0, 12 ;t3
	mov  a2, [t0]

	call OSPortOpenProcessByClientID


	mov  t0, s17
	add  t0, 4 ;t1
	mov  [t0], a0

	mov  t0, s17
	add  t0, 8 ;t2
	mov  [t0], a1

	pop  fp
	ret

