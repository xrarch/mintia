; AUTOMATICALLY GENERATED -- DO NOT EDIT

.section PAGE$text

.extern OSConsolePutCharacter
.extern OSSystemAbort
.extern OSGetSystemConsoleName
.extern OSGetBootFlags
.extern OSContinue
.extern OSQueryTime
.extern OSQueryUptime
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
.extern OSObjectOpen
.extern OSQuery
.extern OSClose
.extern OSWaitForMultipleObjects
.extern OSWaitForObject
.extern OSHandleDuplicate
.extern OSDirectoryCountQuery
.extern OSDirectoryQueryAll
.extern OSDirectoryObjectCreate
.extern OSDirectoryInsert
.extern OSDirectoryRemove
.extern OSSetSecurity
.extern OSFileQuery
.extern OSFileTruncate
.extern OSFileSeek
.extern OSFileRead
.extern OSFileWrite
.extern OSFileFlush
.extern OSDirectoryRename
.extern OSDirectoryUnlink
.extern OSDirectoryRead
.extern OSSwapFileCreate
.extern OSSwapFileQuery
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
.extern OSProcessClearConsoleGroup
.extern OSProcessSignalActivation
.extern OSProcessWaitForActivation
.extern OSProcessExit
.extern OSProcessCountQuery
.extern OSProcessQueryAll
.extern OSSetQuota
.extern OSQuotaQuery
.extern OSThreadSetFilePermissions
.extern OSThreadSleep
.extern OSThreadCreate
.extern OSThreadTerminate
.extern OSThreadSuspend
.extern OSThreadResume
.extern OSThreadReadStatus
.extern OSThreadQuery
.extern OSThreadSignal
.extern OSThreadMaskSignal
.extern OSThreadUnmaskSignal
.extern OSSetSystemConsole
.extern OSConsoleSignal
.extern OSAmIAdmin
.extern OSPortCreate
.extern OSPortConnect
.extern OSPortAccept
.extern OSPortSendAndWaitReceive
.extern OSPortSendAndWaitReply
.extern OSPortOpenProcessByClientID

OSCallCount:
.global OSCallCount
	.dl 102

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
	.dl OSTOSShutdownSystem                              ;8
	.dl OSTOSVersion                                     ;9
	.dl OSTOSEventCreate                                 ;10
	.dl OSTOSEventReset                                  ;11
	.dl OSTOSEventSignal                                 ;12
	.dl OSTOSEventPulse                                  ;13
	.dl OSTOSEventReadState                              ;14
	.dl OSTOSSemaphoreCreate                             ;15
	.dl OSTOSSemaphoreRelease                            ;16
	.dl OSTOSSemaphoreReadState                          ;17
	.dl OSTOSMutexCreate                                 ;18
	.dl OSTOSMutexRelease                                ;19
	.dl OSTOSMutexReadState                              ;20
	.dl OSTOSTimerCreate                                 ;21
	.dl OSTOSTimerReset                                  ;22
	.dl OSTOSTimerEnqueue                                ;23
	.dl OSTOSTimerDequeue                                ;24
	.dl OSTOSTimerReadState                              ;25
	.dl OSTOSGetStatistics                               ;26
	.dl OSTOSObjectOpen                                  ;27
	.dl OSTOSQuery                                       ;28
	.dl OSTOSClose                                       ;29
	.dl OSTOSWaitForMultipleObjects                      ;30
	.dl OSTOSWaitForObject                               ;31
	.dl OSTOSHandleDuplicate                             ;32
	.dl OSTOSDirectoryCountQuery                         ;33
	.dl OSTOSDirectoryQueryAll                           ;34
	.dl OSTOSDirectoryObjectCreate                       ;35
	.dl OSTOSDirectoryInsert                             ;36
	.dl OSTOSDirectoryRemove                             ;37
	.dl OSTOSSetSecurity                                 ;38
	.dl OSTOSFileQuery                                   ;39
	.dl OSTOSFileTruncate                                ;40
	.dl OSTOSFileSeek                                    ;41
	.dl OSTOSFileRead                                    ;42
	.dl OSTOSFileWrite                                   ;43
	.dl OSTOSFileFlush                                   ;44
	.dl OSTOSDirectoryRename                             ;45
	.dl OSTOSDirectoryUnlink                             ;46
	.dl OSTOSDirectoryRead                               ;47
	.dl OSTOSSwapFileCreate                              ;48
	.dl OSTOSSwapFileQuery                               ;49
	.dl OSTOSIOControl                                   ;50
	.dl OSTOSGetBootDevicePath                           ;51
	.dl OSTOSFilesystemMount                             ;52
	.dl OSTOSFilesystemUnmount                           ;53
	.dl OSTOSMountQueryAll                               ;54
	.dl OSTOSMountCountQuery                             ;55
	.dl OSTOSMountUpdateFlags                            ;56
	.dl OSTOSMountGetFilesystemName                      ;57
	.dl OSTOSFlushModifiedPages                          ;58
	.dl OSTOSSectionCreate                               ;59
	.dl OSTOSMapView                                     ;60
	.dl OSTOSUnmapView                                   ;61
	.dl OSTOSRemapView                                   ;62
	.dl OSTOSFlushView                                   ;63
	.dl OSTOSAllocate                                    ;64
	.dl OSTOSMemoryQuery                                 ;65
	.dl OSTOSWorkingSetPurge                             ;66
	.dl OSTOSSynchronizeIcache                           ;67
	.dl OSTOSProcessCreate                               ;68
	.dl OSTOSProcessSignal                               ;69
	.dl OSTOSProcessOpenByPID                            ;70
	.dl OSTOSProcessQuery                                ;71
	.dl OSTOSProcessQueryByPID                           ;72
	.dl OSTOSProcessReadStatus                           ;73
	.dl OSTOSProcessSetConsoleGroup                      ;74
	.dl OSTOSProcessClearConsoleGroup                    ;75
	.dl OSTOSProcessSignalActivation                     ;76
	.dl OSTOSProcessWaitForActivation                    ;77
	.dl OSTOSProcessExit                                 ;78
	.dl OSTOSProcessCountQuery                           ;79
	.dl OSTOSProcessQueryAll                             ;80
	.dl OSTOSSetQuota                                    ;81
	.dl OSTOSQuotaQuery                                  ;82
	.dl OSTOSThreadSetFilePermissions                    ;83
	.dl OSTOSThreadSleep                                 ;84
	.dl OSTOSThreadCreate                                ;85
	.dl OSTOSThreadTerminate                             ;86
	.dl OSTOSThreadSuspend                               ;87
	.dl OSTOSThreadResume                                ;88
	.dl OSTOSThreadReadStatus                            ;89
	.dl OSTOSThreadQuery                                 ;90
	.dl OSTOSThreadSignal                                ;91
	.dl OSTOSThreadMaskSignal                            ;92
	.dl OSTOSThreadUnmaskSignal                          ;93
	.dl OSTOSSetSystemConsole                            ;94
	.dl OSTOSConsoleSignal                               ;95
	.dl OSTOSAmIAdmin                                    ;96
	.dl OSTOSPortCreate                                  ;97
	.dl OSTOSPortConnect                                 ;98
	.dl OSTOSPortAccept                                  ;99
	.dl OSTOSPortSendAndWaitReceive                      ;100
	.dl OSTOSPortSendAndWaitReply                        ;101
	.dl OSTOSPortOpenProcessByClientID                   ;102


OSTOSConsolePutCharacter:
.global OSTOSConsolePutCharacter
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s17 + 4] ;t1

	jal  OSConsolePutCharacter

	mov  long [s17 + 4], a0 ;t1

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSSystemAbort:
.global OSTOSSystemAbort
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
.global OSTOSGetSystemConsoleName
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s17 + 4] ;t1

	jal  OSGetSystemConsoleName

	mov  long [s17 + 4], a0 ;t1

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSGetBootFlags:
.global OSTOSGetBootFlags
	subi sp, sp, 4
	mov  long [sp], lr

	jal  OSGetBootFlags

	mov  long [s17 + 4], a0 ;t1
	mov  long [s17 + 8], a1 ;t2

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSContinue:
.global OSTOSContinue
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s17 + 4] ;t1
	mov  a1, long [s17 + 8] ;t2

	jal  OSContinue


	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSQueryTime:
.global OSTOSQueryTime
	subi sp, sp, 4
	mov  long [sp], lr

	jal  OSQueryTime

	mov  long [s17 + 4], a0 ;t1
	mov  long [s17 + 8], a1 ;t2

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSQueryUptime:
.global OSTOSQueryUptime
	subi sp, sp, 4
	mov  long [sp], lr

	jal  OSQueryUptime

	mov  long [s17 + 4], a0 ;t1
	mov  long [s17 + 8], a1 ;t2

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSShutdownSystem:
.global OSTOSShutdownSystem
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s17 + 4] ;t1

	jal  OSShutdownSystem

	mov  long [s17 + 4], a0 ;t1

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSVersion:
.global OSTOSVersion
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s17 + 4] ;t1

	jal  OSVersion

	mov  long [s17 + 4], a0 ;t1

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSEventCreate:
.global OSTOSEventCreate
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
.global OSTOSEventReset
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
.global OSTOSEventSignal
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s17 + 4] ;t1

	jal  OSEventSignal

	mov  long [s17 + 4], a0 ;t1

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSEventPulse:
.global OSTOSEventPulse
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s17 + 4] ;t1

	jal  OSEventPulse

	mov  long [s17 + 4], a0 ;t1

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSEventReadState:
.global OSTOSEventReadState
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
.global OSTOSSemaphoreCreate
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
.global OSTOSSemaphoreRelease
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
.global OSTOSSemaphoreReadState
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
.global OSTOSMutexCreate
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
.global OSTOSMutexRelease
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s17 + 4] ;t1

	jal  OSMutexRelease

	mov  long [s17 + 4], a0 ;t1

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSMutexReadState:
.global OSTOSMutexReadState
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
.global OSTOSTimerCreate
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
.global OSTOSTimerReset
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
.global OSTOSTimerEnqueue
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
.global OSTOSTimerDequeue
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s17 + 4] ;t1

	jal  OSTimerDequeue

	mov  long [s17 + 4], a0 ;t1

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSTimerReadState:
.global OSTOSTimerReadState
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
.global OSTOSGetStatistics
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s17 + 4] ;t1

	jal  OSGetStatistics

	mov  long [s17 + 4], a0 ;t1

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSObjectOpen:
.global OSTOSObjectOpen
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
.global OSTOSQuery
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
.global OSTOSClose
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s17 + 4] ;t1

	jal  OSClose

	mov  long [s17 + 4], a0 ;t1

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSWaitForMultipleObjects:
.global OSTOSWaitForMultipleObjects
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
.global OSTOSWaitForObject
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
.global OSTOSHandleDuplicate
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

OSTOSDirectoryCountQuery:
.global OSTOSDirectoryCountQuery
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s17 + 4] ;t1

	jal  OSDirectoryCountQuery

	mov  long [s17 + 4], a0 ;t1
	mov  long [s17 + 8], a1 ;t2

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSDirectoryQueryAll:
.global OSTOSDirectoryQueryAll
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s17 + 4] ;t1
	mov  a1, long [s17 + 8] ;t2
	mov  a2, long [s17 + 12] ;t3

	jal  OSDirectoryQueryAll

	mov  long [s17 + 4], a0 ;t1
	mov  long [s17 + 8], a1 ;t2

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSDirectoryObjectCreate:
.global OSTOSDirectoryObjectCreate
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s17 + 4] ;t1
	mov  a1, long [s17 + 8] ;t2

	jal  OSDirectoryObjectCreate

	mov  long [s17 + 4], a0 ;t1
	mov  long [s17 + 8], a1 ;t2

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSDirectoryInsert:
.global OSTOSDirectoryInsert
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s17 + 4] ;t1
	mov  a1, long [s17 + 8] ;t2

	jal  OSDirectoryInsert

	mov  long [s17 + 4], a0 ;t1

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSDirectoryRemove:
.global OSTOSDirectoryRemove
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s17 + 4] ;t1

	jal  OSDirectoryRemove

	mov  long [s17 + 4], a0 ;t1

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSSetSecurity:
.global OSTOSSetSecurity
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
.global OSTOSFileQuery
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
.global OSTOSFileTruncate
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
.global OSTOSFileSeek
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
.global OSTOSFileRead
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
.global OSTOSFileWrite
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
.global OSTOSFileFlush
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s17 + 4] ;t1
	mov  a1, long [s17 + 8] ;t2

	jal  OSFileFlush

	mov  long [s17 + 4], a0 ;t1

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSDirectoryRename:
.global OSTOSDirectoryRename
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
.global OSTOSDirectoryUnlink
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
.global OSTOSDirectoryRead
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s17 + 4] ;t1
	mov  a1, long [s17 + 8] ;t2

	jal  OSDirectoryRead

	mov  long [s17 + 4], a0 ;t1

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSSwapFileCreate:
.global OSTOSSwapFileCreate
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s17 + 4] ;t1
	mov  a1, long [s17 + 8] ;t2
	mov  a2, long [s17 + 12] ;t3
	mov  a3, long [s17 + 16] ;t4

	jal  OSSwapFileCreate

	mov  long [s17 + 4], a0 ;t1

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSSwapFileQuery:
.global OSTOSSwapFileQuery
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s17 + 4] ;t1
	mov  a1, long [s17 + 8] ;t2

	jal  OSSwapFileQuery

	mov  long [s17 + 4], a0 ;t1

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSIOControl:
.global OSTOSIOControl
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
.global OSTOSGetBootDevicePath
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s17 + 4] ;t1

	jal  OSGetBootDevicePath

	mov  long [s17 + 4], a0 ;t1

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSFilesystemMount:
.global OSTOSFilesystemMount
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
.global OSTOSFilesystemUnmount
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s17 + 4] ;t1

	jal  OSFilesystemUnmount

	mov  long [s17 + 4], a0 ;t1

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSMountQueryAll:
.global OSTOSMountQueryAll
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
.global OSTOSMountCountQuery
	subi sp, sp, 4
	mov  long [sp], lr

	jal  OSMountCountQuery

	mov  long [s17 + 4], a0 ;t1
	mov  long [s17 + 8], a1 ;t2

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSMountUpdateFlags:
.global OSTOSMountUpdateFlags
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
.global OSTOSMountGetFilesystemName
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
.global OSTOSFlushModifiedPages
	subi sp, sp, 4
	mov  long [sp], lr

	jal  OSFlushModifiedPages

	mov  long [s17 + 4], a0 ;t1

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSSectionCreate:
.global OSTOSSectionCreate
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
.global OSTOSMapView
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
.global OSTOSUnmapView
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
.global OSTOSRemapView
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
.global OSTOSFlushView
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
.global OSTOSAllocate
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
.global OSTOSMemoryQuery
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s17 + 4] ;t1

	jal  OSMemoryQuery

	mov  long [s17 + 4], a0 ;t1

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSWorkingSetPurge:
.global OSTOSWorkingSetPurge
	subi sp, sp, 4
	mov  long [sp], lr

	jal  OSWorkingSetPurge

	mov  long [s17 + 4], a0 ;t1

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSSynchronizeIcache:
.global OSTOSSynchronizeIcache
	subi sp, sp, 4
	mov  long [sp], lr

	jal  OSSynchronizeIcache


	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSProcessCreate:
.global OSTOSProcessCreate
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s17 + 4] ;t1
	mov  a1, long [s17 + 8] ;t2
	mov  a2, long [s17 + 12] ;t3
	mov  a3, long [s17 + 16] ;t4

	jal  OSProcessCreate

	mov  long [s17 + 4], a0 ;t1
	mov  long [s17 + 8], a1 ;t2

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSProcessSignal:
.global OSTOSProcessSignal
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
.global OSTOSProcessOpenByPID
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
.global OSTOSProcessQuery
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
.global OSTOSProcessQueryByPID
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
.global OSTOSProcessReadStatus
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
.global OSTOSProcessSetConsoleGroup
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s17 + 4] ;t1
	mov  a1, long [s17 + 8] ;t2

	jal  OSProcessSetConsoleGroup

	mov  long [s17 + 4], a0 ;t1

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSProcessClearConsoleGroup:
.global OSTOSProcessClearConsoleGroup
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s17 + 4] ;t1

	jal  OSProcessClearConsoleGroup

	mov  long [s17 + 4], a0 ;t1

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSProcessSignalActivation:
.global OSTOSProcessSignalActivation
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s17 + 4] ;t1

	jal  OSProcessSignalActivation

	mov  long [s17 + 4], a0 ;t1

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSProcessWaitForActivation:
.global OSTOSProcessWaitForActivation
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
.global OSTOSProcessExit
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s17 + 4] ;t1

	jal  OSProcessExit


	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSProcessCountQuery:
.global OSTOSProcessCountQuery
	subi sp, sp, 4
	mov  long [sp], lr

	jal  OSProcessCountQuery

	mov  long [s17 + 4], a0 ;t1
	mov  long [s17 + 8], a1 ;t2

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSProcessQueryAll:
.global OSTOSProcessQueryAll
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
.global OSTOSSetQuota
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
.global OSTOSQuotaQuery
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
.global OSTOSThreadSetFilePermissions
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s17 + 4] ;t1

	jal  OSThreadSetFilePermissions

	mov  long [s17 + 4], a0 ;t1

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSThreadSleep:
.global OSTOSThreadSleep
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s17 + 4] ;t1

	jal  OSThreadSleep

	mov  long [s17 + 4], a0 ;t1

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSThreadCreate:
.global OSTOSThreadCreate
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
.global OSTOSThreadTerminate
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
.global OSTOSThreadSuspend
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s17 + 4] ;t1

	jal  OSThreadSuspend

	mov  long [s17 + 4], a0 ;t1

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSThreadResume:
.global OSTOSThreadResume
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s17 + 4] ;t1

	jal  OSThreadResume

	mov  long [s17 + 4], a0 ;t1

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSThreadReadStatus:
.global OSTOSThreadReadStatus
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
.global OSTOSThreadQuery
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
.global OSTOSThreadSignal
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
.global OSTOSThreadMaskSignal
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s17 + 4] ;t1
	mov  a1, long [s17 + 8] ;t2

	jal  OSThreadMaskSignal

	mov  long [s17 + 4], a0 ;t1

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSThreadUnmaskSignal:
.global OSTOSThreadUnmaskSignal
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s17 + 4] ;t1
	mov  a1, long [s17 + 8] ;t2

	jal  OSThreadUnmaskSignal

	mov  long [s17 + 4], a0 ;t1

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSSetSystemConsole:
.global OSTOSSetSystemConsole
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s17 + 4] ;t1

	jal  OSSetSystemConsole

	mov  long [s17 + 4], a0 ;t1

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSConsoleSignal:
.global OSTOSConsoleSignal
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s17 + 4] ;t1
	mov  a1, long [s17 + 8] ;t2

	jal  OSConsoleSignal

	mov  long [s17 + 4], a0 ;t1

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSAmIAdmin:
.global OSTOSAmIAdmin
	subi sp, sp, 4
	mov  long [sp], lr

	jal  OSAmIAdmin

	mov  long [s17 + 4], a0 ;t1

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSPortCreate:
.global OSTOSPortCreate
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
.global OSTOSPortConnect
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
.global OSTOSPortAccept
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
.global OSTOSPortSendAndWaitReceive
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
.global OSTOSPortSendAndWaitReply
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
.global OSTOSPortOpenProcessByClientID
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

