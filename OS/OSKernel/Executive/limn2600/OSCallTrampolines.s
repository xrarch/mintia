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
.extern OSIOControl
.extern OSGetBootDevicePath
.extern OSFilesystemMount
.extern OSFilesystemUnmount
.extern OSMountQueryAll
.extern OSMountCountQuery
.extern OSMountUpdateFlags
.extern OSMountGetFilesystemName
.extern OSFlushDirtyPages
.extern OSSectionCreate
.extern OSSectionMapView
.extern OSUnmapView
.extern OSRemapView
.extern OSMemoryQuery
.extern OSWorkingSetPurge
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
	.dl 81

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
	.dl OSTOSObjectOpen                                  ;20
	.dl OSTOSQuery                                       ;21
	.dl OSTOSClose                                       ;22
	.dl OSTOSWaitForMultipleObjects                      ;23
	.dl OSTOSWaitForObject                               ;24
	.dl OSTOSHandleDuplicate                             ;25
	.dl OSTOSDirectoryCountQuery                         ;26
	.dl OSTOSDirectoryQueryAll                           ;27
	.dl OSTOSSetSecurity                                 ;28
	.dl OSTOSFileQuery                                   ;29
	.dl OSTOSFileTruncate                                ;30
	.dl OSTOSFileSeek                                    ;31
	.dl OSTOSFileRead                                    ;32
	.dl OSTOSFileWrite                                   ;33
	.dl OSTOSDirectoryRename                             ;34
	.dl OSTOSDirectoryUnlink                             ;35
	.dl OSTOSDirectoryRead                               ;36
	.dl OSTOSSwapFileCreate                              ;37
	.dl OSTOSIOControl                                   ;38
	.dl OSTOSGetBootDevicePath                           ;39
	.dl OSTOSFilesystemMount                             ;40
	.dl OSTOSFilesystemUnmount                           ;41
	.dl OSTOSMountQueryAll                               ;42
	.dl OSTOSMountCountQuery                             ;43
	.dl OSTOSMountUpdateFlags                            ;44
	.dl OSTOSMountGetFilesystemName                      ;45
	.dl OSTOSFlushDirtyPages                             ;46
	.dl OSTOSSectionCreate                               ;47
	.dl OSTOSSectionMapView                              ;48
	.dl OSTOSUnmapView                                   ;49
	.dl OSTOSRemapView                                   ;50
	.dl OSTOSMemoryQuery                                 ;51
	.dl OSTOSWorkingSetPurge                             ;52
	.dl OSTOSProcessCreate                               ;53
	.dl OSTOSProcessSignal                               ;54
	.dl OSTOSProcessOpenByPID                            ;55
	.dl OSTOSProcessQuery                                ;56
	.dl OSTOSProcessQueryByPID                           ;57
	.dl OSTOSProcessReadStatus                           ;58
	.dl OSTOSProcessMaskSignal                           ;59
	.dl OSTOSProcessUnmaskSignal                         ;60
	.dl OSTOSProcessSetConsoleGroup                      ;61
	.dl OSTOSProcessClearConsoleGroup                    ;62
	.dl OSTOSProcessSignalActivation                     ;63
	.dl OSTOSProcessWaitForActivation                    ;64
	.dl OSTOSProcessExit                                 ;65
	.dl OSTOSProcessCountQuery                           ;66
	.dl OSTOSProcessQueryAll                             ;67
	.dl OSTOSSetQuota                                    ;68
	.dl OSTOSQuotaQuery                                  ;69
	.dl OSTOSThreadException                             ;70
	.dl OSTOSThreadSetFilePermissions                    ;71
	.dl OSTOSThreadSleep                                 ;72
	.dl OSTOSThreadCreate                                ;73
	.dl OSTOSThreadTerminate                             ;74
	.dl OSTOSThreadSuspend                               ;75
	.dl OSTOSThreadResume                                ;76
	.dl OSTOSThreadReadStatus                            ;77
	.dl OSTOSThreadQuery                                 ;78
	.dl OSTOSSetSystemConsole                            ;79
	.dl OSTOSConsoleSignal                               ;80
	.dl OSTOSAmIAdmin                                    ;81


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

	jal  OSSwapFileCreate

	mov  long [s18 + 4], a0 ;t1
	mov  long [s18 + 8], a1 ;t2

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

OSTOSFlushDirtyPages:
.global OSTOSFlushDirtyPages
	subi sp, sp, 4
	mov  long [sp], lr

	jal  OSFlushDirtyPages

	mov  long [s18 + 4], a0 ;t1

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

OSTOSSectionCreate:
.global OSTOSSectionCreate
	subi sp, sp, 8
	mov  long [sp], lr
	mov  a0, long [s18 + 4] ;t1
	mov  a1, long [s18 + 8] ;t2
	mov  a2, long [s18 + 12] ;t3
	mov  a3, long [s18 + 16] ;t4

	mov  t0, long [s18 + 20] ;t5
	mov  long [sp + 4], t0

	jal  OSSectionCreate

	mov  long [s18 + 4], a0 ;t1
	mov  long [s18 + 8], a1 ;t2

	mov  lr, long [sp]
	addi sp, sp, 8
	ret

OSTOSSectionMapView:
.global OSTOSSectionMapView
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

	jal  OSSectionMapView

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

