; AUTOMATICALLY GENERATED -- DO NOT EDIT

.section text

.extern OSConsolePutCharacter
.extern OSSystemAbort
.extern OSGetSystemConsoleName
.extern OSGetBootFlags
.extern OSContinue
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
.extern OSFileQuery
.extern OSFileTruncate
.extern OSFileSeek
.extern OSFileRead
.extern OSFileWrite
.extern OSDirectoryRead
.extern OSSwapFileCreate
.extern OSIOControl
.extern OSGetBootDevicePath
.extern OSMountUpdateFlags
.extern OSMountGetFilesystemName
.extern OSSectionCreate
.extern OSSectionMapView
.extern OSUnmapView
.extern OSRemapView
.extern OSSetSwappiness
.extern OSMemoryQuery
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
.extern OSThreadSleep
.extern OSThreadCreate
.extern OSThreadTerminate
.extern OSThreadResume
.extern OSThreadReadStatus
.extern OSThreadQuery
.extern OSSetSystemConsole

OSCallCount:
.global OSCallCount
	.dl 63

OSCallTable:
.global OSCallTable
	.dl 0                                                ;0
	.dl OSTOSConsolePutCharacter                         ;1
	.dl OSTOSSystemAbort                                 ;2
	.dl OSTOSGetSystemConsoleName                        ;3
	.dl OSTOSGetBootFlags                                ;4
	.dl OSTOSContinue                                    ;5
	.dl OSTOSEventCreate                                 ;6
	.dl OSTOSEventReset                                  ;7
	.dl OSTOSEventSignal                                 ;8
	.dl OSTOSEventPulse                                  ;9
	.dl OSTOSEventReadState                              ;10
	.dl OSTOSSemaphoreCreate                             ;11
	.dl OSTOSSemaphoreRelease                            ;12
	.dl OSTOSSemaphoreReadState                          ;13
	.dl OSTOSMutexCreate                                 ;14
	.dl OSTOSMutexRelease                                ;15
	.dl OSTOSMutexReadState                              ;16
	.dl OSTOSObjectOpen                                  ;17
	.dl OSTOSQuery                                       ;18
	.dl OSTOSClose                                       ;19
	.dl OSTOSWaitForMultipleObjects                      ;20
	.dl OSTOSWaitForObject                               ;21
	.dl OSTOSHandleDuplicate                             ;22
	.dl OSTOSDirectoryCountQuery                         ;23
	.dl OSTOSDirectoryQueryAll                           ;24
	.dl OSTOSFileQuery                                   ;25
	.dl OSTOSFileTruncate                                ;26
	.dl OSTOSFileSeek                                    ;27
	.dl OSTOSFileRead                                    ;28
	.dl OSTOSFileWrite                                   ;29
	.dl OSTOSDirectoryRead                               ;30
	.dl OSTOSSwapFileCreate                              ;31
	.dl OSTOSIOControl                                   ;32
	.dl OSTOSGetBootDevicePath                           ;33
	.dl OSTOSMountUpdateFlags                            ;34
	.dl OSTOSMountGetFilesystemName                      ;35
	.dl OSTOSSectionCreate                               ;36
	.dl OSTOSSectionMapView                              ;37
	.dl OSTOSUnmapView                                   ;38
	.dl OSTOSRemapView                                   ;39
	.dl OSTOSSetSwappiness                               ;40
	.dl OSTOSMemoryQuery                                 ;41
	.dl OSTOSProcessCreate                               ;42
	.dl OSTOSProcessSignal                               ;43
	.dl OSTOSProcessOpenByPID                            ;44
	.dl OSTOSProcessQuery                                ;45
	.dl OSTOSProcessQueryByPID                           ;46
	.dl OSTOSProcessReadStatus                           ;47
	.dl OSTOSProcessMaskSignal                           ;48
	.dl OSTOSProcessUnmaskSignal                         ;49
	.dl OSTOSProcessSetConsoleGroup                      ;50
	.dl OSTOSProcessClearConsoleGroup                    ;51
	.dl OSTOSProcessSignalActivation                     ;52
	.dl OSTOSProcessWaitForActivation                    ;53
	.dl OSTOSProcessExit                                 ;54
	.dl OSTOSProcessCountQuery                           ;55
	.dl OSTOSProcessQueryAll                             ;56
	.dl OSTOSThreadSleep                                 ;57
	.dl OSTOSThreadCreate                                ;58
	.dl OSTOSThreadTerminate                             ;59
	.dl OSTOSThreadResume                                ;60
	.dl OSTOSThreadReadStatus                            ;61
	.dl OSTOSThreadQuery                                 ;62
	.dl OSTOSSetSystemConsole                            ;63


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

OSTOSSetSwappiness:
.global OSTOSSetSwappiness
	subi sp, sp, 4
	mov  long [sp], lr
	mov  a0, long [s18 + 4] ;t1

	jal  OSSetSwappiness

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

