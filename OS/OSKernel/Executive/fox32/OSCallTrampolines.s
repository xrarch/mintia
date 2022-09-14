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

OSCallCount:
.global OSCallCount
	.dl 93

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
	.dl OSTOSSetSecurity                                 ;35
	.dl OSTOSFileQuery                                   ;36
	.dl OSTOSFileTruncate                                ;37
	.dl OSTOSFileSeek                                    ;38
	.dl OSTOSFileRead                                    ;39
	.dl OSTOSFileWrite                                   ;40
	.dl OSTOSFileFlush                                   ;41
	.dl OSTOSDirectoryRename                             ;42
	.dl OSTOSDirectoryUnlink                             ;43
	.dl OSTOSDirectoryRead                               ;44
	.dl OSTOSSwapFileCreate                              ;45
	.dl OSTOSSwapFileQuery                               ;46
	.dl OSTOSIOControl                                   ;47
	.dl OSTOSGetBootDevicePath                           ;48
	.dl OSTOSFilesystemMount                             ;49
	.dl OSTOSFilesystemUnmount                           ;50
	.dl OSTOSMountQueryAll                               ;51
	.dl OSTOSMountCountQuery                             ;52
	.dl OSTOSMountUpdateFlags                            ;53
	.dl OSTOSMountGetFilesystemName                      ;54
	.dl OSTOSFlushModifiedPages                          ;55
	.dl OSTOSSectionCreate                               ;56
	.dl OSTOSMapView                                     ;57
	.dl OSTOSUnmapView                                   ;58
	.dl OSTOSRemapView                                   ;59
	.dl OSTOSFlushView                                   ;60
	.dl OSTOSAllocate                                    ;61
	.dl OSTOSMemoryQuery                                 ;62
	.dl OSTOSWorkingSetPurge                             ;63
	.dl OSTOSSynchronizeIcache                           ;64
	.dl OSTOSProcessCreate                               ;65
	.dl OSTOSProcessSignal                               ;66
	.dl OSTOSProcessOpenByPID                            ;67
	.dl OSTOSProcessQuery                                ;68
	.dl OSTOSProcessQueryByPID                           ;69
	.dl OSTOSProcessReadStatus                           ;70
	.dl OSTOSProcessSetConsoleGroup                      ;71
	.dl OSTOSProcessClearConsoleGroup                    ;72
	.dl OSTOSProcessSignalActivation                     ;73
	.dl OSTOSProcessWaitForActivation                    ;74
	.dl OSTOSProcessExit                                 ;75
	.dl OSTOSProcessCountQuery                           ;76
	.dl OSTOSProcessQueryAll                             ;77
	.dl OSTOSSetQuota                                    ;78
	.dl OSTOSQuotaQuery                                  ;79
	.dl OSTOSThreadSetFilePermissions                    ;80
	.dl OSTOSThreadSleep                                 ;81
	.dl OSTOSThreadCreate                                ;82
	.dl OSTOSThreadTerminate                             ;83
	.dl OSTOSThreadSuspend                               ;84
	.dl OSTOSThreadResume                                ;85
	.dl OSTOSThreadReadStatus                            ;86
	.dl OSTOSThreadQuery                                 ;87
	.dl OSTOSThreadSignal                                ;88
	.dl OSTOSThreadMaskSignal                            ;89
	.dl OSTOSThreadUnmaskSignal                          ;90
	.dl OSTOSSetSystemConsole                            ;91
	.dl OSTOSConsoleSignal                               ;92
	.dl OSTOSAmIAdmin                                    ;93


OSTOSConsolePutCharacter:
.global OSTOSConsolePutCharacter

	mov  t0, s17
	add  t0, 4 ;t1
	mov  a0, [t0]

	call OSConsolePutCharacter


	mov  t0, s17
	add  t0, 4 ;t1
	mov  [t0], a0

	ret

OSTOSSystemAbort:
.global OSTOSSystemAbort

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

	ret

OSTOSGetSystemConsoleName:
.global OSTOSGetSystemConsoleName

	mov  t0, s17
	add  t0, 4 ;t1
	mov  a0, [t0]

	call OSGetSystemConsoleName


	mov  t0, s17
	add  t0, 4 ;t1
	mov  [t0], a0

	ret

OSTOSGetBootFlags:
.global OSTOSGetBootFlags

	call OSGetBootFlags


	mov  t0, s17
	add  t0, 4 ;t1
	mov  [t0], a0

	mov  t0, s17
	add  t0, 8 ;t2
	mov  [t0], a1

	ret

OSTOSContinue:
.global OSTOSContinue

	mov  t0, s17
	add  t0, 4 ;t1
	mov  a0, [t0]

	call OSContinue


	ret

OSTOSQueryTime:
.global OSTOSQueryTime

	call OSQueryTime


	mov  t0, s17
	add  t0, 4 ;t1
	mov  [t0], a0

	mov  t0, s17
	add  t0, 8 ;t2
	mov  [t0], a1

	ret

OSTOSQueryUptime:
.global OSTOSQueryUptime

	call OSQueryUptime


	mov  t0, s17
	add  t0, 4 ;t1
	mov  [t0], a0

	mov  t0, s17
	add  t0, 8 ;t2
	mov  [t0], a1

	ret

OSTOSShutdownSystem:
.global OSTOSShutdownSystem

	mov  t0, s17
	add  t0, 4 ;t1
	mov  a0, [t0]

	call OSShutdownSystem


	mov  t0, s17
	add  t0, 4 ;t1
	mov  [t0], a0

	ret

OSTOSVersion:
.global OSTOSVersion

	mov  t0, s17
	add  t0, 4 ;t1
	mov  a0, [t0]

	call OSVersion


	mov  t0, s17
	add  t0, 4 ;t1
	mov  [t0], a0

	ret

OSTOSEventCreate:
.global OSTOSEventCreate

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

	ret

OSTOSEventReset:
.global OSTOSEventReset

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

	ret

OSTOSEventSignal:
.global OSTOSEventSignal

	mov  t0, s17
	add  t0, 4 ;t1
	mov  a0, [t0]

	call OSEventSignal


	mov  t0, s17
	add  t0, 4 ;t1
	mov  [t0], a0

	ret

OSTOSEventPulse:
.global OSTOSEventPulse

	mov  t0, s17
	add  t0, 4 ;t1
	mov  a0, [t0]

	call OSEventPulse


	mov  t0, s17
	add  t0, 4 ;t1
	mov  [t0], a0

	ret

OSTOSEventReadState:
.global OSTOSEventReadState

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

	ret

OSTOSSemaphoreCreate:
.global OSTOSSemaphoreCreate

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

	ret

OSTOSSemaphoreRelease:
.global OSTOSSemaphoreRelease

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

	ret

OSTOSSemaphoreReadState:
.global OSTOSSemaphoreReadState

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

	ret

OSTOSMutexCreate:
.global OSTOSMutexCreate

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

	ret

OSTOSMutexRelease:
.global OSTOSMutexRelease

	mov  t0, s17
	add  t0, 4 ;t1
	mov  a0, [t0]

	call OSMutexRelease


	mov  t0, s17
	add  t0, 4 ;t1
	mov  [t0], a0

	ret

OSTOSMutexReadState:
.global OSTOSMutexReadState

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

	ret

OSTOSTimerCreate:
.global OSTOSTimerCreate

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

	ret

OSTOSTimerReset:
.global OSTOSTimerReset

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

	ret

OSTOSTimerEnqueue:
.global OSTOSTimerEnqueue

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

	ret

OSTOSTimerDequeue:
.global OSTOSTimerDequeue

	mov  t0, s17
	add  t0, 4 ;t1
	mov  a0, [t0]

	call OSTimerDequeue


	mov  t0, s17
	add  t0, 4 ;t1
	mov  [t0], a0

	ret

OSTOSTimerReadState:
.global OSTOSTimerReadState

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

	ret

OSTOSGetStatistics:
.global OSTOSGetStatistics

	mov  t0, s17
	add  t0, 4 ;t1
	mov  a0, [t0]

	call OSGetStatistics


	mov  t0, s17
	add  t0, 4 ;t1
	mov  [t0], a0

	ret

OSTOSObjectOpen:
.global OSTOSObjectOpen

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

	ret

OSTOSQuery:
.global OSTOSQuery

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

	ret

OSTOSClose:
.global OSTOSClose

	mov  t0, s17
	add  t0, 4 ;t1
	mov  a0, [t0]

	call OSClose


	mov  t0, s17
	add  t0, 4 ;t1
	mov  [t0], a0

	ret

OSTOSWaitForMultipleObjects:
.global OSTOSWaitForMultipleObjects

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

	ret

OSTOSWaitForObject:
.global OSTOSWaitForObject

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

	ret

OSTOSHandleDuplicate:
.global OSTOSHandleDuplicate

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

	ret

OSTOSDirectoryCountQuery:
.global OSTOSDirectoryCountQuery

	mov  t0, s17
	add  t0, 4 ;t1
	mov  a0, [t0]

	call OSDirectoryCountQuery


	mov  t0, s17
	add  t0, 4 ;t1
	mov  [t0], a0

	mov  t0, s17
	add  t0, 8 ;t2
	mov  [t0], a1

	ret

OSTOSDirectoryQueryAll:
.global OSTOSDirectoryQueryAll

	mov  t0, s17
	add  t0, 4 ;t1
	mov  a0, [t0]

	mov  t0, s17
	add  t0, 8 ;t2
	mov  a1, [t0]

	mov  t0, s17
	add  t0, 12 ;t3
	mov  a2, [t0]

	call OSDirectoryQueryAll


	mov  t0, s17
	add  t0, 4 ;t1
	mov  [t0], a0

	mov  t0, s17
	add  t0, 8 ;t2
	mov  [t0], a1

	ret

OSTOSSetSecurity:
.global OSTOSSetSecurity

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

	ret

OSTOSFileQuery:
.global OSTOSFileQuery

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

	ret

OSTOSFileTruncate:
.global OSTOSFileTruncate

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

	ret

OSTOSFileSeek:
.global OSTOSFileSeek

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

	ret

OSTOSFileRead:
.global OSTOSFileRead

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

	ret

OSTOSFileWrite:
.global OSTOSFileWrite

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

	ret

OSTOSFileFlush:
.global OSTOSFileFlush

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

	ret

OSTOSDirectoryRename:
.global OSTOSDirectoryRename

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

	ret

OSTOSDirectoryUnlink:
.global OSTOSDirectoryUnlink

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

	ret

OSTOSDirectoryRead:
.global OSTOSDirectoryRead

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

	ret

OSTOSSwapFileCreate:
.global OSTOSSwapFileCreate

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

	call OSSwapFileCreate


	mov  t0, s17
	add  t0, 4 ;t1
	mov  [t0], a0

	ret

OSTOSSwapFileQuery:
.global OSTOSSwapFileQuery

	mov  t0, s17
	add  t0, 4 ;t1
	mov  a0, [t0]

	mov  t0, s17
	add  t0, 8 ;t2
	mov  a1, [t0]

	call OSSwapFileQuery


	mov  t0, s17
	add  t0, 4 ;t1
	mov  [t0], a0

	ret

OSTOSIOControl:
.global OSTOSIOControl

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

	ret

OSTOSGetBootDevicePath:
.global OSTOSGetBootDevicePath

	mov  t0, s17
	add  t0, 4 ;t1
	mov  a0, [t0]

	call OSGetBootDevicePath


	mov  t0, s17
	add  t0, 4 ;t1
	mov  [t0], a0

	ret

OSTOSFilesystemMount:
.global OSTOSFilesystemMount

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

	ret

OSTOSFilesystemUnmount:
.global OSTOSFilesystemUnmount

	mov  t0, s17
	add  t0, 4 ;t1
	mov  a0, [t0]

	call OSFilesystemUnmount


	mov  t0, s17
	add  t0, 4 ;t1
	mov  [t0], a0

	ret

OSTOSMountQueryAll:
.global OSTOSMountQueryAll

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

	ret

OSTOSMountCountQuery:
.global OSTOSMountCountQuery

	call OSMountCountQuery


	mov  t0, s17
	add  t0, 4 ;t1
	mov  [t0], a0

	mov  t0, s17
	add  t0, 8 ;t2
	mov  [t0], a1

	ret

OSTOSMountUpdateFlags:
.global OSTOSMountUpdateFlags

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

	ret

OSTOSMountGetFilesystemName:
.global OSTOSMountGetFilesystemName

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

	ret

OSTOSFlushModifiedPages:
.global OSTOSFlushModifiedPages

	call OSFlushModifiedPages


	mov  t0, s17
	add  t0, 4 ;t1
	mov  [t0], a0

	ret

OSTOSSectionCreate:
.global OSTOSSectionCreate

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

	ret

OSTOSMapView:
.global OSTOSMapView

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

	ret

OSTOSUnmapView:
.global OSTOSUnmapView

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

	ret

OSTOSRemapView:
.global OSTOSRemapView

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

	ret

OSTOSFlushView:
.global OSTOSFlushView

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

	ret

OSTOSAllocate:
.global OSTOSAllocate

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

	ret

OSTOSMemoryQuery:
.global OSTOSMemoryQuery

	mov  t0, s17
	add  t0, 4 ;t1
	mov  a0, [t0]

	call OSMemoryQuery


	mov  t0, s17
	add  t0, 4 ;t1
	mov  [t0], a0

	ret

OSTOSWorkingSetPurge:
.global OSTOSWorkingSetPurge

	call OSWorkingSetPurge


	mov  t0, s17
	add  t0, 4 ;t1
	mov  [t0], a0

	ret

OSTOSSynchronizeIcache:
.global OSTOSSynchronizeIcache

	call OSSynchronizeIcache


	ret

OSTOSProcessCreate:
.global OSTOSProcessCreate

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

	call OSProcessCreate


	mov  t0, s17
	add  t0, 4 ;t1
	mov  [t0], a0

	mov  t0, s17
	add  t0, 8 ;t2
	mov  [t0], a1

	ret

OSTOSProcessSignal:
.global OSTOSProcessSignal

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

	ret

OSTOSProcessOpenByPID:
.global OSTOSProcessOpenByPID

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

	ret

OSTOSProcessQuery:
.global OSTOSProcessQuery

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

	ret

OSTOSProcessQueryByPID:
.global OSTOSProcessQueryByPID

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

	ret

OSTOSProcessReadStatus:
.global OSTOSProcessReadStatus

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

	ret

OSTOSProcessSetConsoleGroup:
.global OSTOSProcessSetConsoleGroup

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

	ret

OSTOSProcessClearConsoleGroup:
.global OSTOSProcessClearConsoleGroup

	mov  t0, s17
	add  t0, 4 ;t1
	mov  a0, [t0]

	call OSProcessClearConsoleGroup


	mov  t0, s17
	add  t0, 4 ;t1
	mov  [t0], a0

	ret

OSTOSProcessSignalActivation:
.global OSTOSProcessSignalActivation

	mov  t0, s17
	add  t0, 4 ;t1
	mov  a0, [t0]

	call OSProcessSignalActivation


	mov  t0, s17
	add  t0, 4 ;t1
	mov  [t0], a0

	ret

OSTOSProcessWaitForActivation:
.global OSTOSProcessWaitForActivation

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

	ret

OSTOSProcessExit:
.global OSTOSProcessExit

	mov  t0, s17
	add  t0, 4 ;t1
	mov  a0, [t0]

	call OSProcessExit


	ret

OSTOSProcessCountQuery:
.global OSTOSProcessCountQuery

	call OSProcessCountQuery


	mov  t0, s17
	add  t0, 4 ;t1
	mov  [t0], a0

	mov  t0, s17
	add  t0, 8 ;t2
	mov  [t0], a1

	ret

OSTOSProcessQueryAll:
.global OSTOSProcessQueryAll

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

	ret

OSTOSSetQuota:
.global OSTOSSetQuota

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

	ret

OSTOSQuotaQuery:
.global OSTOSQuotaQuery

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

	ret

OSTOSThreadSetFilePermissions:
.global OSTOSThreadSetFilePermissions

	mov  t0, s17
	add  t0, 4 ;t1
	mov  a0, [t0]

	call OSThreadSetFilePermissions


	mov  t0, s17
	add  t0, 4 ;t1
	mov  [t0], a0

	ret

OSTOSThreadSleep:
.global OSTOSThreadSleep

	mov  t0, s17
	add  t0, 4 ;t1
	mov  a0, [t0]

	call OSThreadSleep


	mov  t0, s17
	add  t0, 4 ;t1
	mov  [t0], a0

	ret

OSTOSThreadCreate:
.global OSTOSThreadCreate

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

	ret

OSTOSThreadTerminate:
.global OSTOSThreadTerminate

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

	ret

OSTOSThreadSuspend:
.global OSTOSThreadSuspend

	mov  t0, s17
	add  t0, 4 ;t1
	mov  a0, [t0]

	call OSThreadSuspend


	mov  t0, s17
	add  t0, 4 ;t1
	mov  [t0], a0

	ret

OSTOSThreadResume:
.global OSTOSThreadResume

	mov  t0, s17
	add  t0, 4 ;t1
	mov  a0, [t0]

	call OSThreadResume


	mov  t0, s17
	add  t0, 4 ;t1
	mov  [t0], a0

	ret

OSTOSThreadReadStatus:
.global OSTOSThreadReadStatus

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

	ret

OSTOSThreadQuery:
.global OSTOSThreadQuery

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

	ret

OSTOSThreadSignal:
.global OSTOSThreadSignal

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

	ret

OSTOSThreadMaskSignal:
.global OSTOSThreadMaskSignal

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

	ret

OSTOSThreadUnmaskSignal:
.global OSTOSThreadUnmaskSignal

	mov  t0, s17
	add  t0, 4 ;t1
	mov  a0, [t0]

	mov  t0, s17
	add  t0, 8 ;t2
	mov  a1, [t0]

	call OSThreadUnmaskSignal


	mov  t0, s17
	add  t0, 4 ;t1
	mov  [t0], a0

	ret

OSTOSSetSystemConsole:
.global OSTOSSetSystemConsole

	mov  t0, s17
	add  t0, 4 ;t1
	mov  a0, [t0]

	call OSSetSystemConsole


	mov  t0, s17
	add  t0, 4 ;t1
	mov  [t0], a0

	ret

OSTOSConsoleSignal:
.global OSTOSConsoleSignal

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

	ret

OSTOSAmIAdmin:
.global OSTOSAmIAdmin

	call OSAmIAdmin


	mov  t0, s17
	add  t0, 4 ;t1
	mov  [t0], a0

	ret

