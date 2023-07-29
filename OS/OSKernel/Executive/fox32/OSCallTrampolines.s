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
.extern OSNvramVariableQuery
.extern OSNvramVariableSet
.extern OSNvramVariableRead
.extern OSIsComputerOn
.extern OSIsComputerOnFire
.extern OSOpenRelative
.extern OSClose
.extern OSQuery
.extern OSWaitForMultipleObjects
.extern OSWaitForObject
.extern OSHandleDuplicate
.extern OSObjectDirectoryCountQuery
.extern OSObjectDirectoryQueryAll
.extern OSObjectDirectoryCreate
.extern OSObjectDirectoryInsert
.extern OSObjectDirectoryRemove
.extern OSSetSecurity
.extern SysCreateRelative
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
.extern OSPageFileCreateRelative
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
.extern OSThreadGetExceptionStatus
.extern OSThreadSleep
.extern OSThreadSleepEx
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
.extern OSPortConnectRelative
.extern OSPortAccept
.extern OSPortSendAndWaitReceive
.extern OSPortSendAndWaitReply
.extern OSPortOpenProcessByClientID

OSCallCount:
.global OSCallCount
	.dl 124

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
	.dl OSTOSNvramVariableQuery                          ;30
	.dl OSTOSNvramVariableSet                            ;31
	.dl OSTOSNvramVariableRead                           ;32
	.dl OSTOSIsComputerOn                                ;33
	.dl OSTOSIsComputerOnFire                            ;34
	.dl OSTOSOpenRelative                                ;35
	.dl OSTOSClose                                       ;36
	.dl OSTOSQuery                                       ;37
	.dl OSTOSWaitForMultipleObjects                      ;38
	.dl OSTOSWaitForObject                               ;39
	.dl OSTOSHandleDuplicate                             ;40
	.dl OSTOSObjectDirectoryCountQuery                   ;41
	.dl OSTOSObjectDirectoryQueryAll                     ;42
	.dl OSTOSObjectDirectoryCreate                       ;43
	.dl OSTOSObjectDirectoryInsert                       ;44
	.dl OSTOSObjectDirectoryRemove                       ;45
	.dl OSTOSSetSecurity                                 ;46
	.dl OSTSysCreateRelative                             ;47
	.dl OSTOSFileQuery                                   ;48
	.dl OSTOSFileTruncate                                ;49
	.dl OSTOSFileSeek                                    ;50
	.dl OSTOSFileRead                                    ;51
	.dl OSTOSFileWrite                                   ;52
	.dl OSTOSFileFlush                                   ;53
	.dl OSTOSFileSetInformation                          ;54
	.dl OSTOSFileReadAsync                               ;55
	.dl OSTOSFileWriteAsync                              ;56
	.dl OSTOSFileCancelIO                                ;57
	.dl OSTOSDirectoryRename                             ;58
	.dl OSTOSDirectoryUnlink                             ;59
	.dl OSTOSDirectoryRead                               ;60
	.dl OSTOSPageFileCreateRelative                      ;61
	.dl OSTOSPageFileQuery                               ;62
	.dl OSTOSIOControl                                   ;63
	.dl OSTOSGetBootDevicePath                           ;64
	.dl OSTOSFilesystemMount                             ;65
	.dl OSTOSFilesystemUnmount                           ;66
	.dl OSTOSMountQueryAll                               ;67
	.dl OSTOSMountCountQuery                             ;68
	.dl OSTOSMountUpdateFlags                            ;69
	.dl OSTOSMountGetFilesystemName                      ;70
	.dl OSTOSMountSet                                    ;71
	.dl OSTOSFlushModifiedPages                          ;72
	.dl OSTOSSectionCreate                               ;73
	.dl OSTOSMapView                                     ;74
	.dl OSTOSUnmapView                                   ;75
	.dl OSTOSRemapView                                   ;76
	.dl OSTOSFlushView                                   ;77
	.dl OSTOSAllocate                                    ;78
	.dl OSTOSMemoryQuery                                 ;79
	.dl OSTOSWorkingSetPurge                             ;80
	.dl OSTOSSynchronizeIcache                           ;81
	.dl OSTOSProcessCreate                               ;82
	.dl OSTOSProcessSignal                               ;83
	.dl OSTOSProcessOpenByPID                            ;84
	.dl OSTOSProcessQuery                                ;85
	.dl OSTOSProcessQueryByPID                           ;86
	.dl OSTOSProcessReadStatus                           ;87
	.dl OSTOSProcessSetConsoleGroup                      ;88
	.dl OSTOSProcessBasePrioritySet                      ;89
	.dl OSTOSProcessSignalActivation                     ;90
	.dl OSTOSProcessWaitForActivation                    ;91
	.dl OSTOSProcessExit                                 ;92
	.dl OSTOSProcessCountQuery                           ;93
	.dl OSTOSProcessQueryAll                             ;94
	.dl OSTOSSetQuota                                    ;95
	.dl OSTOSQuotaQuery                                  ;96
	.dl OSTOSThreadGetExceptionStatus                    ;97
	.dl OSTOSThreadSleep                                 ;98
	.dl OSTOSThreadSleepEx                               ;99
	.dl OSTOSThreadCreate                                ;100
	.dl OSTOSThreadTerminate                             ;101
	.dl OSTOSThreadSuspend                               ;102
	.dl OSTOSThreadResume                                ;103
	.dl OSTOSThreadReadStatus                            ;104
	.dl OSTOSThreadQuery                                 ;105
	.dl OSTOSThreadSignal                                ;106
	.dl OSTOSThreadMaskSignal                            ;107
	.dl OSTOSThreadDeliverOnWaitSignal                   ;108
	.dl OSTOSJobCreate                                   ;109
	.dl OSTOSJobAddProcess                               ;110
	.dl OSTOSJobRemoveProcess                            ;111
	.dl OSTOSJobSignal                                   ;112
	.dl OSTOSSetSystemConsole                            ;113
	.dl OSTOSConsoleSignal                               ;114
	.dl OSTOSIsAConsole                                  ;115
	.dl OSTOSDuplexCreate                                ;116
	.dl OSTOSCheckPermission                             ;117
	.dl OSTOSGrantPermission                             ;118
	.dl OSTOSPortCreate                                  ;119
	.dl OSTOSPortConnectRelative                         ;120
	.dl OSTOSPortAccept                                  ;121
	.dl OSTOSPortSendAndWaitReceive                      ;122
	.dl OSTOSPortSendAndWaitReply                        ;123
	.dl OSTOSPortOpenProcessByClientID                   ;124


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

	mov  t0, s17
	add  t0, 12 ;t3
	mov  a2, [t0]

	call OSContinue


	mov  t0, s17
	add  t0, 4 ;t1
	mov  [t0], a0

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

OSTOSNvramVariableQuery:
	push fp
	mov  fp, sp

	mov  t0, s17
	add  t0, 4 ;t1
	mov  a0, [t0]

	call OSNvramVariableQuery


	mov  t0, s17
	add  t0, 4 ;t1
	mov  [t0], a0

	pop  fp
	ret

OSTOSNvramVariableSet:
	push fp
	mov  fp, sp

	mov  t0, s17
	add  t0, 4 ;t1
	mov  a0, [t0]

	mov  t0, s17
	add  t0, 8 ;t2
	mov  a1, [t0]

	call OSNvramVariableSet


	mov  t0, s17
	add  t0, 4 ;t1
	mov  [t0], a0

	pop  fp
	ret

OSTOSNvramVariableRead:
	push fp
	mov  fp, sp

	mov  t0, s17
	add  t0, 4 ;t1
	mov  a0, [t0]

	mov  t0, s17
	add  t0, 8 ;t2
	mov  a1, [t0]

	call OSNvramVariableRead


	mov  t0, s17
	add  t0, 4 ;t1
	mov  [t0], a0

	mov  t0, s17
	add  t0, 8 ;t2
	mov  [t0], a1

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

OSTOSOpenRelative:
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

	call OSOpenRelative


	mov  t0, s17
	add  t0, 4 ;t1
	mov  [t0], a0

	mov  t0, s17
	add  t0, 8 ;t2
	mov  [t0], a1

	add  sp, 8
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

OSTSysCreateRelative:
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

	call SysCreateRelative


	mov  t0, s17
	add  t0, 4 ;t1
	mov  [t0], a0

	mov  t0, s17
	add  t0, 8 ;t2
	mov  [t0], a1

	add  sp, 8
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

	mov  t0, s17
	add  t0, 12 ;t3
	mov  a2, [t0]

	call OSDirectoryRead


	mov  t0, s17
	add  t0, 4 ;t1
	mov  [t0], a0

	mov  t0, s17
	add  t0, 8 ;t2
	mov  [t0], a1

	pop  fp
	ret

OSTOSPageFileCreateRelative:
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

	call OSPageFileCreateRelative


	mov  t0, s17
	add  t0, 4 ;t1
	mov  [t0], a0

	add  sp, 4
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

OSTOSThreadGetExceptionStatus:
	push fp
	mov  fp, sp

	call OSThreadGetExceptionStatus


	mov  t0, s17
	add  t0, 4 ;t1
	mov  [t0], a0

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

OSTOSThreadSleepEx:
	push fp
	mov  fp, sp

	mov  t0, s17
	add  t0, 4 ;t1
	mov  a0, [t0]

	mov  t0, s17
	add  t0, 8 ;t2
	mov  a1, [t0]

	call OSThreadSleepEx


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

OSTOSPortConnectRelative:
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

	call OSPortConnectRelative


	mov  t0, s17
	add  t0, 4 ;t1
	mov  [t0], a0

	mov  t0, s17
	add  t0, 8 ;t2
	mov  [t0], a1

	add  sp, 4
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

