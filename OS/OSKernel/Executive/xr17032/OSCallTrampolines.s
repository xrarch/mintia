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
	.dl 118

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
	.dl OSTOSShutdownSystem                              ;10
	.dl OSTOSVersion                                     ;11
	.dl OSTOSEventCreate                                 ;12
	.dl OSTOSEventReset                                  ;13
	.dl OSTOSEventSignal                                 ;14
	.dl OSTOSEventPulse                                  ;15
	.dl OSTOSEventReadState                              ;16
	.dl OSTOSSemaphoreCreate                             ;17
	.dl OSTOSSemaphoreRelease                            ;18
	.dl OSTOSSemaphoreReadState                          ;19
	.dl OSTOSMutexCreate                                 ;20
	.dl OSTOSMutexRelease                                ;21
	.dl OSTOSMutexReadState                              ;22
	.dl OSTOSTimerCreate                                 ;23
	.dl OSTOSTimerReset                                  ;24
	.dl OSTOSTimerEnqueue                                ;25
	.dl OSTOSTimerDequeue                                ;26
	.dl OSTOSTimerReadState                              ;27
	.dl OSTOSGetStatistics                               ;28
	.dl OSTOSIsComputerOn                                ;29
	.dl OSTOSIsComputerOnFire                            ;30
	.dl OSTOSObjectOpen                                  ;31
	.dl OSTOSQuery                                       ;32
	.dl OSTOSClose                                       ;33
	.dl OSTOSWaitForMultipleObjects                      ;34
	.dl OSTOSWaitForObject                               ;35
	.dl OSTOSHandleDuplicate                             ;36
	.dl OSTOSObjectDirectoryCountQuery                   ;37
	.dl OSTOSObjectDirectoryQueryAll                     ;38
	.dl OSTOSObjectDirectoryCreate                       ;39
	.dl OSTOSObjectDirectoryInsert                       ;40
	.dl OSTOSObjectDirectoryRemove                       ;41
	.dl OSTOSSetSecurity                                 ;42
	.dl OSTOSFileQuery                                   ;43
	.dl OSTOSFileTruncate                                ;44
	.dl OSTOSFileSeek                                    ;45
	.dl OSTOSFileRead                                    ;46
	.dl OSTOSFileWrite                                   ;47
	.dl OSTOSFileFlush                                   ;48
	.dl OSTOSFileSetInformation                          ;49
	.dl OSTOSFileReadAsync                               ;50
	.dl OSTOSFileWriteAsync                              ;51
	.dl OSTOSFileCancelIO                                ;52
	.dl OSTOSDirectoryRename                             ;53
	.dl OSTOSDirectoryUnlink                             ;54
	.dl OSTOSDirectoryRead                               ;55
	.dl OSTOSPageFileCreate                              ;56
	.dl OSTOSPageFileQuery                               ;57
	.dl OSTOSIOControl                                   ;58
	.dl OSTOSGetBootDevicePath                           ;59
	.dl OSTOSFilesystemMount                             ;60
	.dl OSTOSFilesystemUnmount                           ;61
	.dl OSTOSMountQueryAll                               ;62
	.dl OSTOSMountCountQuery                             ;63
	.dl OSTOSMountUpdateFlags                            ;64
	.dl OSTOSMountGetFilesystemName                      ;65
	.dl OSTOSFlushModifiedPages                          ;66
	.dl OSTOSSectionCreate                               ;67
	.dl OSTOSMapView                                     ;68
	.dl OSTOSUnmapView                                   ;69
	.dl OSTOSRemapView                                   ;70
	.dl OSTOSFlushView                                   ;71
	.dl OSTOSAllocate                                    ;72
	.dl OSTOSMemoryQuery                                 ;73
	.dl OSTOSWorkingSetPurge                             ;74
	.dl OSTOSSynchronizeIcache                           ;75
	.dl OSTOSProcessCreate                               ;76
	.dl OSTOSProcessSignal                               ;77
	.dl OSTOSProcessOpenByPID                            ;78
	.dl OSTOSProcessQuery                                ;79
	.dl OSTOSProcessQueryByPID                           ;80
	.dl OSTOSProcessReadStatus                           ;81
	.dl OSTOSProcessSetConsoleGroup                      ;82
	.dl OSTOSProcessBasePrioritySet                      ;83
	.dl OSTOSProcessSignalActivation                     ;84
	.dl OSTOSProcessWaitForActivation                    ;85
	.dl OSTOSProcessExit                                 ;86
	.dl OSTOSProcessCountQuery                           ;87
	.dl OSTOSProcessQueryAll                             ;88
	.dl OSTOSSetQuota                                    ;89
	.dl OSTOSQuotaQuery                                  ;90
	.dl OSTOSThreadSetFilePermissions                    ;91
	.dl OSTOSThreadGetFilePermissions                    ;92
	.dl OSTOSThreadSleep                                 ;93
	.dl OSTOSThreadCreate                                ;94
	.dl OSTOSThreadTerminate                             ;95
	.dl OSTOSThreadSuspend                               ;96
	.dl OSTOSThreadResume                                ;97
	.dl OSTOSThreadReadStatus                            ;98
	.dl OSTOSThreadQuery                                 ;99
	.dl OSTOSThreadSignal                                ;100
	.dl OSTOSThreadMaskSignal                            ;101
	.dl OSTOSThreadDeliverOnWaitSignal                   ;102
	.dl OSTOSJobCreate                                   ;103
	.dl OSTOSJobAddProcess                               ;104
	.dl OSTOSJobRemoveProcess                            ;105
	.dl OSTOSJobSignal                                   ;106
	.dl OSTOSSetSystemConsole                            ;107
	.dl OSTOSConsoleSignal                               ;108
	.dl OSTOSIsAConsole                                  ;109
	.dl OSTOSDuplexCreate                                ;110
	.dl OSTOSCheckPermission                             ;111
	.dl OSTOSGrantPermission                             ;112
	.dl OSTOSPortCreate                                  ;113
	.dl OSTOSPortConnect                                 ;114
	.dl OSTOSPortAccept                                  ;115
	.dl OSTOSPortSendAndWaitReceive                      ;116
	.dl OSTOSPortSendAndWaitReply                        ;117
	.dl OSTOSPortOpenProcessByClientID                   ;118


OSTOSConsolePutCharacter:
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s17 + 4] ;t1

	jal  OSConsolePutCharacter

	mov  long [s17 + 4], a0 ;t1

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSSystemAbort:
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s17 + 4] ;t1
	mov  a1, long [s17 + 8] ;t2
	mov  a2, long [s17 + 12] ;t3

	jal  OSSystemAbort

	mov  long [s17 + 4], a0 ;t1

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSGetSystemConsoleName:
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s17 + 4] ;t1

	jal  OSGetSystemConsoleName

	mov  long [s17 + 4], a0 ;t1

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSGetBootFlags:
	subi sp, sp, 4
	mov  long [sp], lr

	jal  OSGetBootFlags

	mov  long [s17 + 4], a0 ;t1
	mov  long [s17 + 8], a1 ;t2

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSContinue:
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s17 + 4] ;t1
	mov  a1, long [s17 + 8] ;t2

	jal  OSContinue


	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSQueryTime:
	subi sp, sp, 4
	mov  long [sp], lr

	jal  OSQueryTime

	mov  long [s17 + 4], a0 ;t1
	mov  long [s17 + 8], a1 ;t2

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSQueryUptime:
	subi sp, sp, 4
	mov  long [sp], lr

	jal  OSQueryUptime

	mov  long [s17 + 4], a0 ;t1
	mov  long [s17 + 8], a1 ;t2

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSTimeZoneGet:
	subi sp, sp, 4
	mov  long [sp], lr

	jal  OSTimeZoneGet

	mov  long [s17 + 4], a0 ;t1
	mov  long [s17 + 8], a1 ;t2

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSTimeZoneSet:
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s17 + 4] ;t1

	jal  OSTimeZoneSet

	mov  long [s17 + 4], a0 ;t1
	mov  long [s17 + 8], a1 ;t2

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSShutdownSystem:
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s17 + 4] ;t1

	jal  OSShutdownSystem

	mov  long [s17 + 4], a0 ;t1

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSVersion:
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s17 + 4] ;t1

	jal  OSVersion

	mov  long [s17 + 4], a0 ;t1

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSEventCreate:
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s17 + 4] ;t1
	mov  a1, long [s17 + 8] ;t2
	mov  a2, long [s17 + 12] ;t3
	mov  a3, long [s17 + 16] ;t4

	jal  OSEventCreate

	mov  long [s17 + 4], a0 ;t1
	mov  long [s17 + 8], a1 ;t2

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSEventReset:
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s17 + 4] ;t1

	jal  OSEventReset

	mov  long [s17 + 4], a0 ;t1
	mov  long [s17 + 8], a1 ;t2

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSEventSignal:
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s17 + 4] ;t1

	jal  OSEventSignal

	mov  long [s17 + 4], a0 ;t1

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSEventPulse:
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s17 + 4] ;t1

	jal  OSEventPulse

	mov  long [s17 + 4], a0 ;t1

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSEventReadState:
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s17 + 4] ;t1

	jal  OSEventReadState

	mov  long [s17 + 4], a0 ;t1
	mov  long [s17 + 8], a1 ;t2

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSSemaphoreCreate:
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s17 + 4] ;t1
	mov  a1, long [s17 + 8] ;t2
	mov  a2, long [s17 + 12] ;t3

	jal  OSSemaphoreCreate

	mov  long [s17 + 4], a0 ;t1
	mov  long [s17 + 8], a1 ;t2

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSSemaphoreRelease:
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s17 + 4] ;t1
	mov  a1, long [s17 + 8] ;t2

	jal  OSSemaphoreRelease

	mov  long [s17 + 4], a0 ;t1

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSSemaphoreReadState:
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s17 + 4] ;t1

	jal  OSSemaphoreReadState

	mov  long [s17 + 4], a0 ;t1
	mov  long [s17 + 8], a1 ;t2

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSMutexCreate:
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s17 + 4] ;t1
	mov  a1, long [s17 + 8] ;t2

	jal  OSMutexCreate

	mov  long [s17 + 4], a0 ;t1
	mov  long [s17 + 8], a1 ;t2

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSMutexRelease:
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s17 + 4] ;t1

	jal  OSMutexRelease

	mov  long [s17 + 4], a0 ;t1

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSMutexReadState:
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s17 + 4] ;t1

	jal  OSMutexReadState

	mov  long [s17 + 4], a0 ;t1
	mov  long [s17 + 8], a1 ;t2

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSTimerCreate:
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s17 + 4] ;t1
	mov  a1, long [s17 + 8] ;t2

	jal  OSTimerCreate

	mov  long [s17 + 4], a0 ;t1
	mov  long [s17 + 8], a1 ;t2

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSTimerReset:
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s17 + 4] ;t1

	jal  OSTimerReset

	mov  long [s17 + 4], a0 ;t1
	mov  long [s17 + 8], a1 ;t2

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSTimerEnqueue:
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s17 + 4] ;t1
	mov  a1, long [s17 + 8] ;t2

	jal  OSTimerEnqueue

	mov  long [s17 + 4], a0 ;t1

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSTimerDequeue:
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s17 + 4] ;t1

	jal  OSTimerDequeue

	mov  long [s17 + 4], a0 ;t1

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSTimerReadState:
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s17 + 4] ;t1

	jal  OSTimerReadState

	mov  long [s17 + 4], a0 ;t1
	mov  long [s17 + 8], a1 ;t2

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSGetStatistics:
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s17 + 4] ;t1

	jal  OSGetStatistics

	mov  long [s17 + 4], a0 ;t1

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSIsComputerOn:
	subi sp, sp, 4
	mov  long [sp], lr

	jal  OSIsComputerOn

	mov  long [s17 + 4], a0 ;t1
	mov  long [s17 + 8], a1 ;t2

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSIsComputerOnFire:
	subi sp, sp, 4
	mov  long [sp], lr

	jal  OSIsComputerOnFire

	mov  long [s17 + 4], a0 ;t1
	mov  long [s17 + 8], a1 ;t2

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSObjectOpen:
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s17 + 4] ;t1
	mov  a1, long [s17 + 8] ;t2
	mov  a2, long [s17 + 12] ;t3
	mov  a3, long [s17 + 16] ;t4

	jal  OSObjectOpen

	mov  long [s17 + 4], a0 ;t1
	mov  long [s17 + 8], a1 ;t2

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSQuery:
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s17 + 4] ;t1
	mov  a1, long [s17 + 8] ;t2

	jal  OSQuery

	mov  long [s17 + 4], a0 ;t1

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSClose:
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s17 + 4] ;t1

	jal  OSClose

	mov  long [s17 + 4], a0 ;t1

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSWaitForMultipleObjects:
	subi sp, sp, 8
	mov  long [sp], lr
	mov  a0, long [s17 + 4] ;t1
	mov  a1, long [s17 + 8] ;t2
	mov  a2, long [s17 + 12] ;t3
	mov  a3, long [s17 + 16] ;t4

	mov  t0, long [s17 + 20] ;t5
	mov  long [sp + 4], t0

	jal  OSWaitForMultipleObjects

	mov  long [s17 + 4], a0 ;t1

	mov  lr, long [sp]
	addi sp, sp, 8
	ret

OSTOSWaitForObject:
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s17 + 4] ;t1
	mov  a1, long [s17 + 8] ;t2
	mov  a2, long [s17 + 12] ;t3

	jal  OSWaitForObject

	mov  long [s17 + 4], a0 ;t1

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSHandleDuplicate:
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s17 + 4] ;t1
	mov  a1, long [s17 + 8] ;t2
	mov  a2, long [s17 + 12] ;t3
	mov  a3, long [s17 + 16] ;t4

	jal  OSHandleDuplicate

	mov  long [s17 + 4], a0 ;t1
	mov  long [s17 + 8], a1 ;t2

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSObjectDirectoryCountQuery:
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s17 + 4] ;t1

	jal  OSObjectDirectoryCountQuery

	mov  long [s17 + 4], a0 ;t1
	mov  long [s17 + 8], a1 ;t2

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSObjectDirectoryQueryAll:
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s17 + 4] ;t1
	mov  a1, long [s17 + 8] ;t2
	mov  a2, long [s17 + 12] ;t3

	jal  OSObjectDirectoryQueryAll

	mov  long [s17 + 4], a0 ;t1
	mov  long [s17 + 8], a1 ;t2

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSObjectDirectoryCreate:
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s17 + 4] ;t1
	mov  a1, long [s17 + 8] ;t2

	jal  OSObjectDirectoryCreate

	mov  long [s17 + 4], a0 ;t1
	mov  long [s17 + 8], a1 ;t2

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSObjectDirectoryInsert:
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s17 + 4] ;t1
	mov  a1, long [s17 + 8] ;t2

	jal  OSObjectDirectoryInsert

	mov  long [s17 + 4], a0 ;t1

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSObjectDirectoryRemove:
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s17 + 4] ;t1

	jal  OSObjectDirectoryRemove

	mov  long [s17 + 4], a0 ;t1

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSSetSecurity:
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s17 + 4] ;t1
	mov  a1, long [s17 + 8] ;t2
	mov  a2, long [s17 + 12] ;t3
	mov  a3, long [s17 + 16] ;t4

	jal  OSSetSecurity

	mov  long [s17 + 4], a0 ;t1

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSFileQuery:
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s17 + 4] ;t1
	mov  a1, long [s17 + 8] ;t2

	jal  OSFileQuery

	mov  long [s17 + 4], a0 ;t1

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSFileTruncate:
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s17 + 4] ;t1
	mov  a1, long [s17 + 8] ;t2
	mov  a2, long [s17 + 12] ;t3

	jal  OSFileTruncate

	mov  long [s17 + 4], a0 ;t1
	mov  long [s17 + 8], a1 ;t2

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSFileSeek:
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s17 + 4] ;t1
	mov  a1, long [s17 + 8] ;t2
	mov  a2, long [s17 + 12] ;t3

	jal  OSFileSeek

	mov  long [s17 + 4], a0 ;t1
	mov  long [s17 + 8], a1 ;t2

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSFileRead:
	subi sp, sp, 8
	mov  long [sp], lr
	mov  a0, long [s17 + 4] ;t1
	mov  a1, long [s17 + 8] ;t2
	mov  a2, long [s17 + 12] ;t3
	mov  a3, long [s17 + 16] ;t4

	mov  t0, long [s17 + 20] ;t5
	mov  long [sp + 4], t0

	jal  OSFileRead

	mov  long [s17 + 4], a0 ;t1
	mov  long [s17 + 8], a1 ;t2

	mov  lr, long [sp]
	addi sp, sp, 8
	ret

OSTOSFileWrite:
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s17 + 4] ;t1
	mov  a1, long [s17 + 8] ;t2
	mov  a2, long [s17 + 12] ;t3
	mov  a3, long [s17 + 16] ;t4

	jal  OSFileWrite

	mov  long [s17 + 4], a0 ;t1
	mov  long [s17 + 8], a1 ;t2

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSFileFlush:
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s17 + 4] ;t1
	mov  a1, long [s17 + 8] ;t2

	jal  OSFileFlush

	mov  long [s17 + 4], a0 ;t1

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSFileSetInformation:
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s17 + 4] ;t1
	mov  a1, long [s17 + 8] ;t2

	jal  OSFileSetInformation

	mov  long [s17 + 4], a0 ;t1

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSFileReadAsync:
	subi sp, sp, 12
	mov  long [sp], lr
	mov  a0, long [s17 + 4] ;t1
	mov  a1, long [s17 + 8] ;t2
	mov  a2, long [s17 + 12] ;t3
	mov  a3, long [s17 + 16] ;t4

	mov  t0, long [s17 + 20] ;t5
	mov  long [sp + 4], t0

	mov  t0, long [s17 + 24] ;a0
	mov  long [sp + 8], t0

	jal  OSFileReadAsync

	mov  long [s17 + 4], a0 ;t1

	mov  lr, long [sp]
	addi sp, sp, 12
	ret

OSTOSFileWriteAsync:
	subi sp, sp, 12
	mov  long [sp], lr
	mov  a0, long [s17 + 4] ;t1
	mov  a1, long [s17 + 8] ;t2
	mov  a2, long [s17 + 12] ;t3
	mov  a3, long [s17 + 16] ;t4

	mov  t0, long [s17 + 20] ;t5
	mov  long [sp + 4], t0

	mov  t0, long [s17 + 24] ;a0
	mov  long [sp + 8], t0

	jal  OSFileWriteAsync

	mov  long [s17 + 4], a0 ;t1

	mov  lr, long [sp]
	addi sp, sp, 12
	ret

OSTOSFileCancelIO:
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s17 + 4] ;t1
	mov  a1, long [s17 + 8] ;t2

	jal  OSFileCancelIO

	mov  long [s17 + 4], a0 ;t1

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSDirectoryRename:
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s17 + 4] ;t1
	mov  a1, long [s17 + 8] ;t2
	mov  a2, long [s17 + 12] ;t3
	mov  a3, long [s17 + 16] ;t4

	jal  OSDirectoryRename

	mov  long [s17 + 4], a0 ;t1

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSDirectoryUnlink:
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s17 + 4] ;t1
	mov  a1, long [s17 + 8] ;t2

	jal  OSDirectoryUnlink

	mov  long [s17 + 4], a0 ;t1

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSDirectoryRead:
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s17 + 4] ;t1
	mov  a1, long [s17 + 8] ;t2

	jal  OSDirectoryRead

	mov  long [s17 + 4], a0 ;t1

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSPageFileCreate:
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s17 + 4] ;t1
	mov  a1, long [s17 + 8] ;t2
	mov  a2, long [s17 + 12] ;t3
	mov  a3, long [s17 + 16] ;t4

	jal  OSPageFileCreate

	mov  long [s17 + 4], a0 ;t1

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSPageFileQuery:
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s17 + 4] ;t1
	mov  a1, long [s17 + 8] ;t2

	jal  OSPageFileQuery

	mov  long [s17 + 4], a0 ;t1

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSIOControl:
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s17 + 4] ;t1
	mov  a1, long [s17 + 8] ;t2
	mov  a2, long [s17 + 12] ;t3

	jal  OSIOControl

	mov  long [s17 + 4], a0 ;t1
	mov  long [s17 + 8], a1 ;t2

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSGetBootDevicePath:
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s17 + 4] ;t1

	jal  OSGetBootDevicePath

	mov  long [s17 + 4], a0 ;t1

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSFilesystemMount:
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s17 + 4] ;t1
	mov  a1, long [s17 + 8] ;t2
	mov  a2, long [s17 + 12] ;t3

	jal  OSFilesystemMount

	mov  long [s17 + 4], a0 ;t1

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSFilesystemUnmount:
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s17 + 4] ;t1

	jal  OSFilesystemUnmount

	mov  long [s17 + 4], a0 ;t1

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSMountQueryAll:
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s17 + 4] ;t1
	mov  a1, long [s17 + 8] ;t2

	jal  OSMountQueryAll

	mov  long [s17 + 4], a0 ;t1
	mov  long [s17 + 8], a1 ;t2

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSMountCountQuery:
	subi sp, sp, 4
	mov  long [sp], lr

	jal  OSMountCountQuery

	mov  long [s17 + 4], a0 ;t1
	mov  long [s17 + 8], a1 ;t2

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSMountUpdateFlags:
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s17 + 4] ;t1
	mov  a1, long [s17 + 8] ;t2

	jal  OSMountUpdateFlags

	mov  long [s17 + 4], a0 ;t1

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSMountGetFilesystemName:
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s17 + 4] ;t1
	mov  a1, long [s17 + 8] ;t2

	jal  OSMountGetFilesystemName

	mov  long [s17 + 4], a0 ;t1

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSFlushModifiedPages:
	subi sp, sp, 4
	mov  long [sp], lr

	jal  OSFlushModifiedPages

	mov  long [s17 + 4], a0 ;t1

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSSectionCreate:
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s17 + 4] ;t1
	mov  a1, long [s17 + 8] ;t2
	mov  a2, long [s17 + 12] ;t3
	mov  a3, long [s17 + 16] ;t4

	jal  OSSectionCreate

	mov  long [s17 + 4], a0 ;t1
	mov  long [s17 + 8], a1 ;t2

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSMapView:
	subi sp, sp, 16
	mov  long [sp], lr
	mov  a0, long [s17 + 4] ;t1
	mov  a1, long [s17 + 8] ;t2
	mov  a2, long [s17 + 12] ;t3
	mov  a3, long [s17 + 16] ;t4

	mov  t0, long [s17 + 20] ;t5
	mov  long [sp + 4], t0

	mov  t0, long [s17 + 24] ;a0
	mov  long [sp + 8], t0

	mov  t0, long [s17 + 28] ;a1
	mov  long [sp + 12], t0

	jal  OSMapView

	mov  long [s17 + 4], a0 ;t1
	mov  long [s17 + 8], a1 ;t2

	mov  lr, long [sp]
	addi sp, sp, 16
	ret

OSTOSUnmapView:
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s17 + 4] ;t1
	mov  a1, long [s17 + 8] ;t2
	mov  a2, long [s17 + 12] ;t3

	jal  OSUnmapView

	mov  long [s17 + 4], a0 ;t1

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSRemapView:
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s17 + 4] ;t1
	mov  a1, long [s17 + 8] ;t2
	mov  a2, long [s17 + 12] ;t3
	mov  a3, long [s17 + 16] ;t4

	jal  OSRemapView

	mov  long [s17 + 4], a0 ;t1

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSFlushView:
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s17 + 4] ;t1
	mov  a1, long [s17 + 8] ;t2
	mov  a2, long [s17 + 12] ;t3

	jal  OSFlushView

	mov  long [s17 + 4], a0 ;t1

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSAllocate:
	subi sp, sp, 8
	mov  long [sp], lr
	mov  a0, long [s17 + 4] ;t1
	mov  a1, long [s17 + 8] ;t2
	mov  a2, long [s17 + 12] ;t3
	mov  a3, long [s17 + 16] ;t4

	mov  t0, long [s17 + 20] ;t5
	mov  long [sp + 4], t0

	jal  OSAllocate

	mov  long [s17 + 4], a0 ;t1
	mov  long [s17 + 8], a1 ;t2

	mov  lr, long [sp]
	addi sp, sp, 8
	ret

OSTOSMemoryQuery:
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s17 + 4] ;t1

	jal  OSMemoryQuery

	mov  long [s17 + 4], a0 ;t1

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSWorkingSetPurge:
	subi sp, sp, 4
	mov  long [sp], lr

	jal  OSWorkingSetPurge

	mov  long [s17 + 4], a0 ;t1

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSSynchronizeIcache:
	subi sp, sp, 4
	mov  long [sp], lr

	jal  OSSynchronizeIcache


	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSProcessCreate:
	subi sp, sp, 8
	mov  long [sp], lr
	mov  a0, long [s17 + 4] ;t1
	mov  a1, long [s17 + 8] ;t2
	mov  a2, long [s17 + 12] ;t3
	mov  a3, long [s17 + 16] ;t4

	mov  t0, long [s17 + 20] ;t5
	mov  long [sp + 4], t0

	jal  OSProcessCreate

	mov  long [s17 + 4], a0 ;t1
	mov  long [s17 + 8], a1 ;t2

	mov  lr, long [sp]
	addi sp, sp, 8
	ret

OSTOSProcessSignal:
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s17 + 4] ;t1
	mov  a1, long [s17 + 8] ;t2

	jal  OSProcessSignal

	mov  long [s17 + 4], a0 ;t1

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSProcessOpenByPID:
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s17 + 4] ;t1
	mov  a1, long [s17 + 8] ;t2

	jal  OSProcessOpenByPID

	mov  long [s17 + 4], a0 ;t1
	mov  long [s17 + 8], a1 ;t2

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSProcessQuery:
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s17 + 4] ;t1
	mov  a1, long [s17 + 8] ;t2

	jal  OSProcessQuery

	mov  long [s17 + 4], a0 ;t1

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSProcessQueryByPID:
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s17 + 4] ;t1
	mov  a1, long [s17 + 8] ;t2

	jal  OSProcessQueryByPID

	mov  long [s17 + 4], a0 ;t1

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSProcessReadStatus:
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s17 + 4] ;t1

	jal  OSProcessReadStatus

	mov  long [s17 + 4], a0 ;t1
	mov  long [s17 + 8], a1 ;t2

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSProcessSetConsoleGroup:
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s17 + 4] ;t1
	mov  a1, long [s17 + 8] ;t2

	jal  OSProcessSetConsoleGroup

	mov  long [s17 + 4], a0 ;t1

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSProcessBasePrioritySet:
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s17 + 4] ;t1
	mov  a1, long [s17 + 8] ;t2

	jal  OSProcessBasePrioritySet

	mov  long [s17 + 4], a0 ;t1

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSProcessSignalActivation:
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s17 + 4] ;t1

	jal  OSProcessSignalActivation

	mov  long [s17 + 4], a0 ;t1

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSProcessWaitForActivation:
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s17 + 4] ;t1
	mov  a1, long [s17 + 8] ;t2

	jal  OSProcessWaitForActivation

	mov  long [s17 + 4], a0 ;t1
	mov  long [s17 + 8], a1 ;t2

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSProcessExit:
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s17 + 4] ;t1

	jal  OSProcessExit


	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSProcessCountQuery:
	subi sp, sp, 4
	mov  long [sp], lr

	jal  OSProcessCountQuery

	mov  long [s17 + 4], a0 ;t1
	mov  long [s17 + 8], a1 ;t2

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSProcessQueryAll:
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s17 + 4] ;t1
	mov  a1, long [s17 + 8] ;t2

	jal  OSProcessQueryAll

	mov  long [s17 + 4], a0 ;t1
	mov  long [s17 + 8], a1 ;t2

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSSetQuota:
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s17 + 4] ;t1
	mov  a1, long [s17 + 8] ;t2

	jal  OSSetQuota

	mov  long [s17 + 4], a0 ;t1

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSQuotaQuery:
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s17 + 4] ;t1
	mov  a1, long [s17 + 8] ;t2

	jal  OSQuotaQuery

	mov  long [s17 + 4], a0 ;t1

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSThreadSetFilePermissions:
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s17 + 4] ;t1

	jal  OSThreadSetFilePermissions

	mov  long [s17 + 4], a0 ;t1

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSThreadGetFilePermissions:
	subi sp, sp, 4
	mov  long [sp], lr

	jal  OSThreadGetFilePermissions

	mov  long [s17 + 4], a0 ;t1
	mov  long [s17 + 8], a1 ;t2

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSThreadSleep:
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s17 + 4] ;t1

	jal  OSThreadSleep

	mov  long [s17 + 4], a0 ;t1

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSThreadCreate:
	subi sp, sp, 12
	mov  long [sp], lr
	mov  a0, long [s17 + 4] ;t1
	mov  a1, long [s17 + 8] ;t2
	mov  a2, long [s17 + 12] ;t3
	mov  a3, long [s17 + 16] ;t4

	mov  t0, long [s17 + 20] ;t5
	mov  long [sp + 4], t0

	mov  t0, long [s17 + 24] ;a0
	mov  long [sp + 8], t0

	jal  OSThreadCreate

	mov  long [s17 + 4], a0 ;t1
	mov  long [s17 + 8], a1 ;t2

	mov  lr, long [sp]
	addi sp, sp, 12
	ret

OSTOSThreadTerminate:
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s17 + 4] ;t1
	mov  a1, long [s17 + 8] ;t2

	jal  OSThreadTerminate

	mov  long [s17 + 4], a0 ;t1

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSThreadSuspend:
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s17 + 4] ;t1

	jal  OSThreadSuspend

	mov  long [s17 + 4], a0 ;t1

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSThreadResume:
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s17 + 4] ;t1

	jal  OSThreadResume

	mov  long [s17 + 4], a0 ;t1

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSThreadReadStatus:
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s17 + 4] ;t1

	jal  OSThreadReadStatus

	mov  long [s17 + 4], a0 ;t1
	mov  long [s17 + 8], a1 ;t2

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSThreadQuery:
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s17 + 4] ;t1
	mov  a1, long [s17 + 8] ;t2

	jal  OSThreadQuery

	mov  long [s17 + 4], a0 ;t1

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSThreadSignal:
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s17 + 4] ;t1
	mov  a1, long [s17 + 8] ;t2

	jal  OSThreadSignal

	mov  long [s17 + 4], a0 ;t1

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSThreadMaskSignal:
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s17 + 4] ;t1
	mov  a1, long [s17 + 8] ;t2

	jal  OSThreadMaskSignal

	mov  long [s17 + 4], a0 ;t1

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSThreadDeliverOnWaitSignal:
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s17 + 4] ;t1
	mov  a1, long [s17 + 8] ;t2

	jal  OSThreadDeliverOnWaitSignal

	mov  long [s17 + 4], a0 ;t1

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSJobCreate:
	subi sp, sp, 8
	mov  long [sp], lr
	mov  a0, long [s17 + 4] ;t1
	mov  a1, long [s17 + 8] ;t2
	mov  a2, long [s17 + 12] ;t3
	mov  a3, long [s17 + 16] ;t4

	mov  t0, long [s17 + 20] ;t5
	mov  long [sp + 4], t0

	jal  OSJobCreate

	mov  long [s17 + 4], a0 ;t1
	mov  long [s17 + 8], a1 ;t2

	mov  lr, long [sp]
	addi sp, sp, 8
	ret

OSTOSJobAddProcess:
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s17 + 4] ;t1
	mov  a1, long [s17 + 8] ;t2

	jal  OSJobAddProcess

	mov  long [s17 + 4], a0 ;t1

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSJobRemoveProcess:
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s17 + 4] ;t1

	jal  OSJobRemoveProcess

	mov  long [s17 + 4], a0 ;t1

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSJobSignal:
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s17 + 4] ;t1
	mov  a1, long [s17 + 8] ;t2
	mov  a2, long [s17 + 12] ;t3

	jal  OSJobSignal

	mov  long [s17 + 4], a0 ;t1

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSSetSystemConsole:
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s17 + 4] ;t1

	jal  OSSetSystemConsole

	mov  long [s17 + 4], a0 ;t1

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSConsoleSignal:
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s17 + 4] ;t1
	mov  a1, long [s17 + 8] ;t2

	jal  OSConsoleSignal

	mov  long [s17 + 4], a0 ;t1

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSIsAConsole:
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s17 + 4] ;t1

	jal  OSIsAConsole

	mov  long [s17 + 4], a0 ;t1

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSDuplexCreate:
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s17 + 4] ;t1
	mov  a1, long [s17 + 8] ;t2
	mov  a2, long [s17 + 12] ;t3

	jal  OSDuplexCreate

	mov  long [s17 + 4], a0 ;t1
	mov  long [s17 + 8], a1 ;t2
	mov  long [s17 + 12], a2 ;t3

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSCheckPermission:
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s17 + 4] ;t1
	mov  a1, long [s17 + 8] ;t2

	jal  OSCheckPermission

	mov  long [s17 + 4], a0 ;t1

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSGrantPermission:
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s17 + 4] ;t1
	mov  a1, long [s17 + 8] ;t2

	jal  OSGrantPermission

	mov  long [s17 + 4], a0 ;t1

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSPortCreate:
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s17 + 4] ;t1
	mov  a1, long [s17 + 8] ;t2
	mov  a2, long [s17 + 12] ;t3
	mov  a3, long [s17 + 16] ;t4

	jal  OSPortCreate

	mov  long [s17 + 4], a0 ;t1
	mov  long [s17 + 8], a1 ;t2

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSPortConnect:
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s17 + 4] ;t1
	mov  a1, long [s17 + 8] ;t2
	mov  a2, long [s17 + 12] ;t3
	mov  a3, long [s17 + 16] ;t4

	jal  OSPortConnect

	mov  long [s17 + 4], a0 ;t1
	mov  long [s17 + 8], a1 ;t2

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSPortAccept:
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s17 + 4] ;t1
	mov  a1, long [s17 + 8] ;t2
	mov  a2, long [s17 + 12] ;t3
	mov  a3, long [s17 + 16] ;t4

	jal  OSPortAccept

	mov  long [s17 + 4], a0 ;t1

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSPortSendAndWaitReceive:
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s17 + 4] ;t1
	mov  a1, long [s17 + 8] ;t2
	mov  a2, long [s17 + 12] ;t3
	mov  a3, long [s17 + 16] ;t4

	jal  OSPortSendAndWaitReceive

	mov  long [s17 + 4], a0 ;t1

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSPortSendAndWaitReply:
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s17 + 4] ;t1
	mov  a1, long [s17 + 8] ;t2
	mov  a2, long [s17 + 12] ;t3
	mov  a3, long [s17 + 16] ;t4

	jal  OSPortSendAndWaitReply

	mov  long [s17 + 4], a0 ;t1

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSPortOpenProcessByClientID:
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s17 + 4] ;t1
	mov  a1, long [s17 + 8] ;t2
	mov  a2, long [s17 + 12] ;t3

	jal  OSPortOpenProcessByClientID

	mov  long [s17 + 4], a0 ;t1
	mov  long [s17 + 8], a1 ;t2

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

