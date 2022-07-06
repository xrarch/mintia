; AUTOMATICALLY GENERATED -- DO NOT EDIT

.section text

.extern OSConsolePutCharacter
.extern OSSystemAbort
.extern OSGetSystemConsoleName
.extern OSGetBootFlags
.extern OSContinue
.extern OSQueryTime
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
.extern OSSectionCreate
.extern OSMapView
.extern OSUnmapView
.extern OSRemapView
.extern OSAllocate
.extern OSMemoryQuery
.extern OSWorkingSetPurge
.extern OSFlushModifiedPages
.extern OSSynchronizeIcache
.extern OSProcessCreate
.extern OSProcessSignal
.extern OSProcessOpenByPID
.extern OSProcessQuery
.extern OSProcessQueryByPID
.extern OSProcessReadStatus
.extern OSProcessMaskSignal
.extern OSProcessUnmaskSignal
.extern OSProcessSetConsoleGroup
.extern OSProcessClearConsoleGroup
.extern OSProcessSignalActivation
.extern OSProcessWaitForActivation
.extern OSProcessExit
.extern OSProcessCountQuery
.extern OSProcessQueryAll
.extern OSSetQuota
.extern OSQuotaQuery
.extern OSThreadException
.extern OSThreadSetFilePermissions
.extern OSThreadSleep
.extern OSThreadCreate
.extern OSThreadTerminate
.extern OSThreadSuspend
.extern OSThreadResume
.extern OSThreadReadStatus
.extern OSThreadQuery
.extern OSSetSystemConsole
.extern OSConsoleSignal
.extern OSAmIAdmin

OSCallCount:
.global OSCallCount
	.dl 85

OSCallTable:
.global OSCallTable
	.dl 0                                                ;0
	.dl OSTOSConsolePutCharacter                         ;1
	.dl OSTOSSystemAbort                                 ;2
	.dl OSTOSGetSystemConsoleName                        ;3
	.dl OSTOSGetBootFlags                                ;4
	.dl OSTOSContinue                                    ;5
	.dl OSTOSQueryTime                                   ;6
	.dl OSTOSShutdownSystem                              ;7
	.dl OSTOSVersion                                     ;8
	.dl OSTOSEventCreate                                 ;9
	.dl OSTOSEventReset                                  ;10
	.dl OSTOSEventSignal                                 ;11
	.dl OSTOSEventPulse                                  ;12
	.dl OSTOSEventReadState                              ;13
	.dl OSTOSSemaphoreCreate                             ;14
	.dl OSTOSSemaphoreRelease                            ;15
	.dl OSTOSSemaphoreReadState                          ;16
	.dl OSTOSMutexCreate                                 ;17
	.dl OSTOSMutexRelease                                ;18
	.dl OSTOSMutexReadState                              ;19
	.dl OSTOSGetStatistics                               ;20
	.dl OSTOSObjectOpen                                  ;21
	.dl OSTOSQuery                                       ;22
	.dl OSTOSClose                                       ;23
	.dl OSTOSWaitForMultipleObjects                      ;24
	.dl OSTOSWaitForObject                               ;25
	.dl OSTOSHandleDuplicate                             ;26
	.dl OSTOSDirectoryCountQuery                         ;27
	.dl OSTOSDirectoryQueryAll                           ;28
	.dl OSTOSSetSecurity                                 ;29
	.dl OSTOSFileQuery                                   ;30
	.dl OSTOSFileTruncate                                ;31
	.dl OSTOSFileSeek                                    ;32
	.dl OSTOSFileRead                                    ;33
	.dl OSTOSFileWrite                                   ;34
	.dl OSTOSDirectoryRename                             ;35
	.dl OSTOSDirectoryUnlink                             ;36
	.dl OSTOSDirectoryRead                               ;37
	.dl OSTOSSwapFileCreate                              ;38
	.dl OSTOSSwapFileQuery                               ;39
	.dl OSTOSIOControl                                   ;40
	.dl OSTOSGetBootDevicePath                           ;41
	.dl OSTOSFilesystemMount                             ;42
	.dl OSTOSFilesystemUnmount                           ;43
	.dl OSTOSMountQueryAll                               ;44
	.dl OSTOSMountCountQuery                             ;45
	.dl OSTOSMountUpdateFlags                            ;46
	.dl OSTOSMountGetFilesystemName                      ;47
	.dl OSTOSSectionCreate                               ;48
	.dl OSTOSMapView                                     ;49
	.dl OSTOSUnmapView                                   ;50
	.dl OSTOSRemapView                                   ;51
	.dl OSTOSAllocate                                    ;52
	.dl OSTOSMemoryQuery                                 ;53
	.dl OSTOSWorkingSetPurge                             ;54
	.dl OSTOSFlushModifiedPages                          ;55
	.dl OSTOSSynchronizeIcache                           ;56
	.dl OSTOSProcessCreate                               ;57
	.dl OSTOSProcessSignal                               ;58
	.dl OSTOSProcessOpenByPID                            ;59
	.dl OSTOSProcessQuery                                ;60
	.dl OSTOSProcessQueryByPID                           ;61
	.dl OSTOSProcessReadStatus                           ;62
	.dl OSTOSProcessMaskSignal                           ;63
	.dl OSTOSProcessUnmaskSignal                         ;64
	.dl OSTOSProcessSetConsoleGroup                      ;65
	.dl OSTOSProcessClearConsoleGroup                    ;66
	.dl OSTOSProcessSignalActivation                     ;67
	.dl OSTOSProcessWaitForActivation                    ;68
	.dl OSTOSProcessExit                                 ;69
	.dl OSTOSProcessCountQuery                           ;70
	.dl OSTOSProcessQueryAll                             ;71
	.dl OSTOSSetQuota                                    ;72
	.dl OSTOSQuotaQuery                                  ;73
	.dl OSTOSThreadException                             ;74
	.dl OSTOSThreadSetFilePermissions                    ;75
	.dl OSTOSThreadSleep                                 ;76
	.dl OSTOSThreadCreate                                ;77
	.dl OSTOSThreadTerminate                             ;78
	.dl OSTOSThreadSuspend                               ;79
	.dl OSTOSThreadResume                                ;80
	.dl OSTOSThreadReadStatus                            ;81
	.dl OSTOSThreadQuery                                 ;82
	.dl OSTOSSetSystemConsole                            ;83
	.dl OSTOSConsoleSignal                               ;84
	.dl OSTOSAmIAdmin                                    ;85


OSTOSConsolePutCharacter:
.global OSTOSConsolePutCharacter
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s18 + 4] ;t1

	jal  OSConsolePutCharacter

	mov  long [s18 + 4], a0 ;t1

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSSystemAbort:
.global OSTOSSystemAbort
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s18 + 4] ;t1
	mov  a1, long [s18 + 8] ;t2
	mov  a2, long [s18 + 12] ;t3

	jal  OSSystemAbort

	mov  long [s18 + 4], a0 ;t1

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSGetSystemConsoleName:
.global OSTOSGetSystemConsoleName
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s18 + 4] ;t1

	jal  OSGetSystemConsoleName

	mov  long [s18 + 4], a0 ;t1

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSGetBootFlags:
.global OSTOSGetBootFlags
	subi sp, sp, 4
	mov  long [sp], lr

	jal  OSGetBootFlags

	mov  long [s18 + 4], a0 ;t1
	mov  long [s18 + 8], a1 ;t2

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSContinue:
.global OSTOSContinue
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s18 + 4] ;t1

	jal  OSContinue


	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSQueryTime:
.global OSTOSQueryTime
	subi sp, sp, 4
	mov  long [sp], lr

	jal  OSQueryTime

	mov  long [s18 + 4], a0 ;t1
	mov  long [s18 + 8], a1 ;t2

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSShutdownSystem:
.global OSTOSShutdownSystem
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s18 + 4] ;t1

	jal  OSShutdownSystem

	mov  long [s18 + 4], a0 ;t1

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSVersion:
.global OSTOSVersion
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s18 + 4] ;t1

	jal  OSVersion

	mov  long [s18 + 4], a0 ;t1

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSEventCreate:
.global OSTOSEventCreate
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s18 + 4] ;t1
	mov  a1, long [s18 + 8] ;t2
	mov  a2, long [s18 + 12] ;t3
	mov  a3, long [s18 + 16] ;t4

	jal  OSEventCreate

	mov  long [s18 + 4], a0 ;t1
	mov  long [s18 + 8], a1 ;t2

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSEventReset:
.global OSTOSEventReset
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s18 + 4] ;t1

	jal  OSEventReset

	mov  long [s18 + 4], a0 ;t1
	mov  long [s18 + 8], a1 ;t2

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSEventSignal:
.global OSTOSEventSignal
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s18 + 4] ;t1

	jal  OSEventSignal

	mov  long [s18 + 4], a0 ;t1

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSEventPulse:
.global OSTOSEventPulse
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s18 + 4] ;t1

	jal  OSEventPulse

	mov  long [s18 + 4], a0 ;t1

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSEventReadState:
.global OSTOSEventReadState
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s18 + 4] ;t1

	jal  OSEventReadState

	mov  long [s18 + 4], a0 ;t1
	mov  long [s18 + 8], a1 ;t2

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSSemaphoreCreate:
.global OSTOSSemaphoreCreate
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s18 + 4] ;t1
	mov  a1, long [s18 + 8] ;t2
	mov  a2, long [s18 + 12] ;t3

	jal  OSSemaphoreCreate

	mov  long [s18 + 4], a0 ;t1
	mov  long [s18 + 8], a1 ;t2

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSSemaphoreRelease:
.global OSTOSSemaphoreRelease
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s18 + 4] ;t1
	mov  a1, long [s18 + 8] ;t2

	jal  OSSemaphoreRelease

	mov  long [s18 + 4], a0 ;t1

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSSemaphoreReadState:
.global OSTOSSemaphoreReadState
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s18 + 4] ;t1

	jal  OSSemaphoreReadState

	mov  long [s18 + 4], a0 ;t1
	mov  long [s18 + 8], a1 ;t2

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSMutexCreate:
.global OSTOSMutexCreate
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s18 + 4] ;t1
	mov  a1, long [s18 + 8] ;t2

	jal  OSMutexCreate

	mov  long [s18 + 4], a0 ;t1
	mov  long [s18 + 8], a1 ;t2

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSMutexRelease:
.global OSTOSMutexRelease
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s18 + 4] ;t1

	jal  OSMutexRelease

	mov  long [s18 + 4], a0 ;t1

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSMutexReadState:
.global OSTOSMutexReadState
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s18 + 4] ;t1

	jal  OSMutexReadState

	mov  long [s18 + 4], a0 ;t1
	mov  long [s18 + 8], a1 ;t2

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSGetStatistics:
.global OSTOSGetStatistics
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s18 + 4] ;t1

	jal  OSGetStatistics

	mov  long [s18 + 4], a0 ;t1

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSObjectOpen:
.global OSTOSObjectOpen
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s18 + 4] ;t1
	mov  a1, long [s18 + 8] ;t2
	mov  a2, long [s18 + 12] ;t3
	mov  a3, long [s18 + 16] ;t4

	jal  OSObjectOpen

	mov  long [s18 + 4], a0 ;t1
	mov  long [s18 + 8], a1 ;t2

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSQuery:
.global OSTOSQuery
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s18 + 4] ;t1
	mov  a1, long [s18 + 8] ;t2

	jal  OSQuery

	mov  long [s18 + 4], a0 ;t1

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSClose:
.global OSTOSClose
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s18 + 4] ;t1

	jal  OSClose

	mov  long [s18 + 4], a0 ;t1

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSWaitForMultipleObjects:
.global OSTOSWaitForMultipleObjects
	subi sp, sp, 8
	mov  long [sp], lr
	mov  a0, long [s18 + 4] ;t1
	mov  a1, long [s18 + 8] ;t2
	mov  a2, long [s18 + 12] ;t3
	mov  a3, long [s18 + 16] ;t4

	mov  t0, long [s18 + 20] ;t5
	mov  long [sp + 4], t0

	jal  OSWaitForMultipleObjects

	mov  long [s18 + 4], a0 ;t1

	mov  lr, long [sp]
	addi sp, sp, 8
	ret

OSTOSWaitForObject:
.global OSTOSWaitForObject
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s18 + 4] ;t1
	mov  a1, long [s18 + 8] ;t2
	mov  a2, long [s18 + 12] ;t3

	jal  OSWaitForObject

	mov  long [s18 + 4], a0 ;t1

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSHandleDuplicate:
.global OSTOSHandleDuplicate
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s18 + 4] ;t1
	mov  a1, long [s18 + 8] ;t2
	mov  a2, long [s18 + 12] ;t3
	mov  a3, long [s18 + 16] ;t4

	jal  OSHandleDuplicate

	mov  long [s18 + 4], a0 ;t1
	mov  long [s18 + 8], a1 ;t2

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSDirectoryCountQuery:
.global OSTOSDirectoryCountQuery
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s18 + 4] ;t1

	jal  OSDirectoryCountQuery

	mov  long [s18 + 4], a0 ;t1
	mov  long [s18 + 8], a1 ;t2

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSDirectoryQueryAll:
.global OSTOSDirectoryQueryAll
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s18 + 4] ;t1
	mov  a1, long [s18 + 8] ;t2
	mov  a2, long [s18 + 12] ;t3

	jal  OSDirectoryQueryAll

	mov  long [s18 + 4], a0 ;t1
	mov  long [s18 + 8], a1 ;t2

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSSetSecurity:
.global OSTOSSetSecurity
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s18 + 4] ;t1
	mov  a1, long [s18 + 8] ;t2
	mov  a2, long [s18 + 12] ;t3
	mov  a3, long [s18 + 16] ;t4

	jal  OSSetSecurity

	mov  long [s18 + 4], a0 ;t1

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSFileQuery:
.global OSTOSFileQuery
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s18 + 4] ;t1
	mov  a1, long [s18 + 8] ;t2

	jal  OSFileQuery

	mov  long [s18 + 4], a0 ;t1

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSFileTruncate:
.global OSTOSFileTruncate
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s18 + 4] ;t1
	mov  a1, long [s18 + 8] ;t2
	mov  a2, long [s18 + 12] ;t3

	jal  OSFileTruncate

	mov  long [s18 + 4], a0 ;t1
	mov  long [s18 + 8], a1 ;t2

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSFileSeek:
.global OSTOSFileSeek
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s18 + 4] ;t1
	mov  a1, long [s18 + 8] ;t2
	mov  a2, long [s18 + 12] ;t3

	jal  OSFileSeek

	mov  long [s18 + 4], a0 ;t1
	mov  long [s18 + 8], a1 ;t2

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSFileRead:
.global OSTOSFileRead
	subi sp, sp, 8
	mov  long [sp], lr
	mov  a0, long [s18 + 4] ;t1
	mov  a1, long [s18 + 8] ;t2
	mov  a2, long [s18 + 12] ;t3
	mov  a3, long [s18 + 16] ;t4

	mov  t0, long [s18 + 20] ;t5
	mov  long [sp + 4], t0

	jal  OSFileRead

	mov  long [s18 + 4], a0 ;t1
	mov  long [s18 + 8], a1 ;t2

	mov  lr, long [sp]
	addi sp, sp, 8
	ret

OSTOSFileWrite:
.global OSTOSFileWrite
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s18 + 4] ;t1
	mov  a1, long [s18 + 8] ;t2
	mov  a2, long [s18 + 12] ;t3
	mov  a3, long [s18 + 16] ;t4

	jal  OSFileWrite

	mov  long [s18 + 4], a0 ;t1
	mov  long [s18 + 8], a1 ;t2

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSDirectoryRename:
.global OSTOSDirectoryRename
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s18 + 4] ;t1
	mov  a1, long [s18 + 8] ;t2
	mov  a2, long [s18 + 12] ;t3
	mov  a3, long [s18 + 16] ;t4

	jal  OSDirectoryRename

	mov  long [s18 + 4], a0 ;t1

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSDirectoryUnlink:
.global OSTOSDirectoryUnlink
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s18 + 4] ;t1
	mov  a1, long [s18 + 8] ;t2

	jal  OSDirectoryUnlink

	mov  long [s18 + 4], a0 ;t1

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSDirectoryRead:
.global OSTOSDirectoryRead
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s18 + 4] ;t1
	mov  a1, long [s18 + 8] ;t2

	jal  OSDirectoryRead

	mov  long [s18 + 4], a0 ;t1

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSSwapFileCreate:
.global OSTOSSwapFileCreate
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s18 + 4] ;t1
	mov  a1, long [s18 + 8] ;t2
	mov  a2, long [s18 + 12] ;t3
	mov  a3, long [s18 + 16] ;t4

	jal  OSSwapFileCreate

	mov  long [s18 + 4], a0 ;t1

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSSwapFileQuery:
.global OSTOSSwapFileQuery
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s18 + 4] ;t1
	mov  a1, long [s18 + 8] ;t2

	jal  OSSwapFileQuery

	mov  long [s18 + 4], a0 ;t1

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSIOControl:
.global OSTOSIOControl
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s18 + 4] ;t1
	mov  a1, long [s18 + 8] ;t2
	mov  a2, long [s18 + 12] ;t3

	jal  OSIOControl

	mov  long [s18 + 4], a0 ;t1
	mov  long [s18 + 8], a1 ;t2

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSGetBootDevicePath:
.global OSTOSGetBootDevicePath
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s18 + 4] ;t1

	jal  OSGetBootDevicePath

	mov  long [s18 + 4], a0 ;t1

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSFilesystemMount:
.global OSTOSFilesystemMount
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s18 + 4] ;t1
	mov  a1, long [s18 + 8] ;t2
	mov  a2, long [s18 + 12] ;t3

	jal  OSFilesystemMount

	mov  long [s18 + 4], a0 ;t1

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSFilesystemUnmount:
.global OSTOSFilesystemUnmount
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s18 + 4] ;t1

	jal  OSFilesystemUnmount

	mov  long [s18 + 4], a0 ;t1

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSMountQueryAll:
.global OSTOSMountQueryAll
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s18 + 4] ;t1
	mov  a1, long [s18 + 8] ;t2

	jal  OSMountQueryAll

	mov  long [s18 + 4], a0 ;t1
	mov  long [s18 + 8], a1 ;t2

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSMountCountQuery:
.global OSTOSMountCountQuery
	subi sp, sp, 4
	mov  long [sp], lr

	jal  OSMountCountQuery

	mov  long [s18 + 4], a0 ;t1
	mov  long [s18 + 8], a1 ;t2

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSMountUpdateFlags:
.global OSTOSMountUpdateFlags
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s18 + 4] ;t1
	mov  a1, long [s18 + 8] ;t2

	jal  OSMountUpdateFlags

	mov  long [s18 + 4], a0 ;t1

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSMountGetFilesystemName:
.global OSTOSMountGetFilesystemName
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s18 + 4] ;t1
	mov  a1, long [s18 + 8] ;t2

	jal  OSMountGetFilesystemName

	mov  long [s18 + 4], a0 ;t1

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSSectionCreate:
.global OSTOSSectionCreate
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s18 + 4] ;t1
	mov  a1, long [s18 + 8] ;t2
	mov  a2, long [s18 + 12] ;t3
	mov  a3, long [s18 + 16] ;t4

	jal  OSSectionCreate

	mov  long [s18 + 4], a0 ;t1
	mov  long [s18 + 8], a1 ;t2

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSMapView:
.global OSTOSMapView
	subi sp, sp, 16
	mov  long [sp], lr
	mov  a0, long [s18 + 4] ;t1
	mov  a1, long [s18 + 8] ;t2
	mov  a2, long [s18 + 12] ;t3
	mov  a3, long [s18 + 16] ;t4

	mov  t0, long [s18 + 20] ;t5
	mov  long [sp + 4], t0

	mov  t0, long [s18 + 24] ;a0
	mov  long [sp + 8], t0

	mov  t0, long [s18 + 28] ;a1
	mov  long [sp + 12], t0

	jal  OSMapView

	mov  long [s18 + 4], a0 ;t1
	mov  long [s18 + 8], a1 ;t2

	mov  lr, long [sp]
	addi sp, sp, 16
	ret

OSTOSUnmapView:
.global OSTOSUnmapView
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s18 + 4] ;t1
	mov  a1, long [s18 + 8] ;t2
	mov  a2, long [s18 + 12] ;t3

	jal  OSUnmapView

	mov  long [s18 + 4], a0 ;t1

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSRemapView:
.global OSTOSRemapView
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s18 + 4] ;t1
	mov  a1, long [s18 + 8] ;t2
	mov  a2, long [s18 + 12] ;t3
	mov  a3, long [s18 + 16] ;t4

	jal  OSRemapView

	mov  long [s18 + 4], a0 ;t1

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSAllocate:
.global OSTOSAllocate
	subi sp, sp, 8
	mov  long [sp], lr
	mov  a0, long [s18 + 4] ;t1
	mov  a1, long [s18 + 8] ;t2
	mov  a2, long [s18 + 12] ;t3
	mov  a3, long [s18 + 16] ;t4

	mov  t0, long [s18 + 20] ;t5
	mov  long [sp + 4], t0

	jal  OSAllocate

	mov  long [s18 + 4], a0 ;t1
	mov  long [s18 + 8], a1 ;t2

	mov  lr, long [sp]
	addi sp, sp, 8
	ret

OSTOSMemoryQuery:
.global OSTOSMemoryQuery
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s18 + 4] ;t1

	jal  OSMemoryQuery

	mov  long [s18 + 4], a0 ;t1

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSWorkingSetPurge:
.global OSTOSWorkingSetPurge
	subi sp, sp, 4
	mov  long [sp], lr

	jal  OSWorkingSetPurge

	mov  long [s18 + 4], a0 ;t1

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSFlushModifiedPages:
.global OSTOSFlushModifiedPages
	subi sp, sp, 4
	mov  long [sp], lr

	jal  OSFlushModifiedPages

	mov  long [s18 + 4], a0 ;t1

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
	mov  a0, long [s18 + 4] ;t1
	mov  a1, long [s18 + 8] ;t2
	mov  a2, long [s18 + 12] ;t3
	mov  a3, long [s18 + 16] ;t4

	jal  OSProcessCreate

	mov  long [s18 + 4], a0 ;t1
	mov  long [s18 + 8], a1 ;t2

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSProcessSignal:
.global OSTOSProcessSignal
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s18 + 4] ;t1
	mov  a1, long [s18 + 8] ;t2

	jal  OSProcessSignal

	mov  long [s18 + 4], a0 ;t1

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSProcessOpenByPID:
.global OSTOSProcessOpenByPID
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s18 + 4] ;t1
	mov  a1, long [s18 + 8] ;t2

	jal  OSProcessOpenByPID

	mov  long [s18 + 4], a0 ;t1
	mov  long [s18 + 8], a1 ;t2

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSProcessQuery:
.global OSTOSProcessQuery
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s18 + 4] ;t1
	mov  a1, long [s18 + 8] ;t2

	jal  OSProcessQuery

	mov  long [s18 + 4], a0 ;t1

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSProcessQueryByPID:
.global OSTOSProcessQueryByPID
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s18 + 4] ;t1
	mov  a1, long [s18 + 8] ;t2

	jal  OSProcessQueryByPID

	mov  long [s18 + 4], a0 ;t1

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSProcessReadStatus:
.global OSTOSProcessReadStatus
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s18 + 4] ;t1

	jal  OSProcessReadStatus

	mov  long [s18 + 4], a0 ;t1
	mov  long [s18 + 8], a1 ;t2

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSProcessMaskSignal:
.global OSTOSProcessMaskSignal
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s18 + 4] ;t1
	mov  a1, long [s18 + 8] ;t2

	jal  OSProcessMaskSignal

	mov  long [s18 + 4], a0 ;t1

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSProcessUnmaskSignal:
.global OSTOSProcessUnmaskSignal
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s18 + 4] ;t1
	mov  a1, long [s18 + 8] ;t2

	jal  OSProcessUnmaskSignal

	mov  long [s18 + 4], a0 ;t1

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSProcessSetConsoleGroup:
.global OSTOSProcessSetConsoleGroup
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s18 + 4] ;t1
	mov  a1, long [s18 + 8] ;t2

	jal  OSProcessSetConsoleGroup

	mov  long [s18 + 4], a0 ;t1

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSProcessClearConsoleGroup:
.global OSTOSProcessClearConsoleGroup
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s18 + 4] ;t1

	jal  OSProcessClearConsoleGroup

	mov  long [s18 + 4], a0 ;t1

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSProcessSignalActivation:
.global OSTOSProcessSignalActivation
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s18 + 4] ;t1

	jal  OSProcessSignalActivation

	mov  long [s18 + 4], a0 ;t1

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSProcessWaitForActivation:
.global OSTOSProcessWaitForActivation
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s18 + 4] ;t1
	mov  a1, long [s18 + 8] ;t2

	jal  OSProcessWaitForActivation

	mov  long [s18 + 4], a0 ;t1
	mov  long [s18 + 8], a1 ;t2

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSProcessExit:
.global OSTOSProcessExit
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s18 + 4] ;t1

	jal  OSProcessExit


	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSProcessCountQuery:
.global OSTOSProcessCountQuery
	subi sp, sp, 4
	mov  long [sp], lr

	jal  OSProcessCountQuery

	mov  long [s18 + 4], a0 ;t1
	mov  long [s18 + 8], a1 ;t2

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSProcessQueryAll:
.global OSTOSProcessQueryAll
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s18 + 4] ;t1
	mov  a1, long [s18 + 8] ;t2

	jal  OSProcessQueryAll

	mov  long [s18 + 4], a0 ;t1
	mov  long [s18 + 8], a1 ;t2

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSSetQuota:
.global OSTOSSetQuota
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s18 + 4] ;t1
	mov  a1, long [s18 + 8] ;t2

	jal  OSSetQuota

	mov  long [s18 + 4], a0 ;t1

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSQuotaQuery:
.global OSTOSQuotaQuery
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s18 + 4] ;t1
	mov  a1, long [s18 + 8] ;t2

	jal  OSQuotaQuery

	mov  long [s18 + 4], a0 ;t1

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSThreadException:
.global OSTOSThreadException
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s18 + 4] ;t1

	jal  OSThreadException

	mov  long [s18 + 4], a0 ;t1

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSThreadSetFilePermissions:
.global OSTOSThreadSetFilePermissions
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s18 + 4] ;t1

	jal  OSThreadSetFilePermissions

	mov  long [s18 + 4], a0 ;t1

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSThreadSleep:
.global OSTOSThreadSleep
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s18 + 4] ;t1

	jal  OSThreadSleep

	mov  long [s18 + 4], a0 ;t1

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSThreadCreate:
.global OSTOSThreadCreate
	subi sp, sp, 12
	mov  long [sp], lr
	mov  a0, long [s18 + 4] ;t1
	mov  a1, long [s18 + 8] ;t2
	mov  a2, long [s18 + 12] ;t3
	mov  a3, long [s18 + 16] ;t4

	mov  t0, long [s18 + 20] ;t5
	mov  long [sp + 4], t0

	mov  t0, long [s18 + 24] ;a0
	mov  long [sp + 8], t0

	jal  OSThreadCreate

	mov  long [s18 + 4], a0 ;t1
	mov  long [s18 + 8], a1 ;t2

	mov  lr, long [sp]
	addi sp, sp, 12
	ret

OSTOSThreadTerminate:
.global OSTOSThreadTerminate
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s18 + 4] ;t1
	mov  a1, long [s18 + 8] ;t2

	jal  OSThreadTerminate

	mov  long [s18 + 4], a0 ;t1

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSThreadSuspend:
.global OSTOSThreadSuspend
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s18 + 4] ;t1

	jal  OSThreadSuspend

	mov  long [s18 + 4], a0 ;t1

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSThreadResume:
.global OSTOSThreadResume
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s18 + 4] ;t1

	jal  OSThreadResume

	mov  long [s18 + 4], a0 ;t1

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSThreadReadStatus:
.global OSTOSThreadReadStatus
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s18 + 4] ;t1

	jal  OSThreadReadStatus

	mov  long [s18 + 4], a0 ;t1
	mov  long [s18 + 8], a1 ;t2

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSThreadQuery:
.global OSTOSThreadQuery
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s18 + 4] ;t1
	mov  a1, long [s18 + 8] ;t2

	jal  OSThreadQuery

	mov  long [s18 + 4], a0 ;t1

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSSetSystemConsole:
.global OSTOSSetSystemConsole
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s18 + 4] ;t1

	jal  OSSetSystemConsole

	mov  long [s18 + 4], a0 ;t1

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSConsoleSignal:
.global OSTOSConsoleSignal
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s18 + 4] ;t1
	mov  a1, long [s18 + 8] ;t2

	jal  OSConsoleSignal

	mov  long [s18 + 4], a0 ;t1

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSAmIAdmin:
.global OSTOSAmIAdmin
	subi sp, sp, 4
	mov  long [sp], lr

	jal  OSAmIAdmin

	mov  long [s18 + 4], a0 ;t1

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

