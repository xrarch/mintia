; AUTOMATICALLY GENERATED -- DO NOT EDIT

.section text

.extern OSConsolePutCharacter
.extern OSSystemAbort
.extern OSObOpen
.extern OSObQuery
.extern OSClose
.extern OSFileQuery
.extern OSFileSeek
.extern OSFileRead
.extern OSFileWrite
.extern OSSwapFileCreate
.extern OSSectionCreate
.extern OSSectionMapView
.extern OSUnmapView
.extern OSRemapView
.extern OSSetSwappiness
.extern OSThreadSleep

OSCallCount:
.global OSCallCount
	.dl 16

OSCallTable:
.global OSCallTable
	.dl 0                                                ;0
	.dl OSTOSConsolePutCharacter                         ;1
	.dl OSTOSSystemAbort                                 ;2
	.dl OSTOSObOpen                                      ;3
	.dl OSTOSObQuery                                     ;4
	.dl OSTOSClose                                       ;5
	.dl OSTOSFileQuery                                   ;6
	.dl OSTOSFileSeek                                    ;7
	.dl OSTOSFileRead                                    ;8
	.dl OSTOSFileWrite                                   ;9
	.dl OSTOSSwapFileCreate                              ;10
	.dl OSTOSSectionCreate                               ;11
	.dl OSTOSSectionMapView                              ;12
	.dl OSTOSUnmapView                                   ;13
	.dl OSTOSRemapView                                   ;14
	.dl OSTOSSetSwappiness                               ;15
	.dl OSTOSThreadSleep                                 ;16


OSTOSConsolePutCharacter:
.global OSTOSConsolePutCharacter
	subi sp, sp, 8
	mov  long [sp], zero
	mov  long [sp + 4], lr

	mov  a0, long [s18 + 4] ;t1

	jal  OSConsolePutCharacter

	mov  long [s18 + 4], a0 ;t1

	mov  lr, long [sp + 4]
	addi sp, sp, 8
	ret

OSTOSSystemAbort:
.global OSTOSSystemAbort
	subi sp, sp, 8
	mov  long [sp], zero
	mov  long [sp + 4], lr

	mov  a0, long [s18 + 4] ;t1
	mov  a1, long [s18 + 8] ;t2
	mov  a2, long [s18 + 12] ;t3

	jal  OSSystemAbort

	mov  long [s18 + 4], a0 ;t1

	mov  lr, long [sp + 4]
	addi sp, sp, 8
	ret

OSTOSObOpen:
.global OSTOSObOpen
	subi sp, sp, 8
	mov  long [sp], zero
	mov  long [sp + 4], lr

	mov  a0, long [s18 + 4] ;t1
	mov  a1, long [s18 + 8] ;t2
	mov  a2, long [s18 + 12] ;t3
	mov  a3, long [s18 + 16] ;t4

	jal  OSObOpen

	mov  long [s18 + 4], a0 ;t1
	mov  long [s18 + 8], a1 ;t2

	mov  lr, long [sp + 4]
	addi sp, sp, 8
	ret

OSTOSObQuery:
.global OSTOSObQuery
	subi sp, sp, 8
	mov  long [sp], zero
	mov  long [sp + 4], lr

	mov  a0, long [s18 + 4] ;t1
	mov  a1, long [s18 + 8] ;t2

	jal  OSObQuery

	mov  long [s18 + 4], a0 ;t1

	mov  lr, long [sp + 4]
	addi sp, sp, 8
	ret

OSTOSClose:
.global OSTOSClose
	subi sp, sp, 8
	mov  long [sp], zero
	mov  long [sp + 4], lr

	mov  a0, long [s18 + 4] ;t1

	jal  OSClose

	mov  long [s18 + 4], a0 ;t1

	mov  lr, long [sp + 4]
	addi sp, sp, 8
	ret

OSTOSFileQuery:
.global OSTOSFileQuery
	subi sp, sp, 8
	mov  long [sp], zero
	mov  long [sp + 4], lr

	mov  a0, long [s18 + 4] ;t1
	mov  a1, long [s18 + 8] ;t2

	jal  OSFileQuery

	mov  long [s18 + 4], a0 ;t1

	mov  lr, long [sp + 4]
	addi sp, sp, 8
	ret

OSTOSFileSeek:
.global OSTOSFileSeek
	subi sp, sp, 8
	mov  long [sp], zero
	mov  long [sp + 4], lr

	mov  a0, long [s18 + 4] ;t1
	mov  a1, long [s18 + 8] ;t2
	mov  a2, long [s18 + 12] ;t3

	jal  OSFileSeek

	mov  long [s18 + 4], a0 ;t1
	mov  long [s18 + 8], a1 ;t2

	mov  lr, long [sp + 4]
	addi sp, sp, 8
	ret

OSTOSFileRead:
.global OSTOSFileRead
	subi sp, sp, 12
	mov  long [sp], zero
	mov  long [sp + 4], lr

	mov  a0, long [s18 + 4] ;t1
	mov  a1, long [s18 + 8] ;t2
	mov  a2, long [s18 + 12] ;t3
	mov  a3, long [s18 + 16] ;t4

	mov  t0, long [s18 + 20] ;t5
	mov  long [sp + 8], t0

	jal  OSFileRead

	mov  long [s18 + 4], a0 ;t1
	mov  long [s18 + 8], a1 ;t2

	mov  lr, long [sp + 4]
	addi sp, sp, 12
	ret

OSTOSFileWrite:
.global OSTOSFileWrite
	subi sp, sp, 8
	mov  long [sp], zero
	mov  long [sp + 4], lr

	mov  a0, long [s18 + 4] ;t1
	mov  a1, long [s18 + 8] ;t2
	mov  a2, long [s18 + 12] ;t3
	mov  a3, long [s18 + 16] ;t4

	jal  OSFileWrite

	mov  long [s18 + 4], a0 ;t1
	mov  long [s18 + 8], a1 ;t2

	mov  lr, long [sp + 4]
	addi sp, sp, 8
	ret

OSTOSSwapFileCreate:
.global OSTOSSwapFileCreate
	subi sp, sp, 8
	mov  long [sp], zero
	mov  long [sp + 4], lr

	mov  a0, long [s18 + 4] ;t1

	jal  OSSwapFileCreate

	mov  long [s18 + 4], a0 ;t1

	mov  lr, long [sp + 4]
	addi sp, sp, 8
	ret

OSTOSSectionCreate:
.global OSTOSSectionCreate
	subi sp, sp, 12
	mov  long [sp], zero
	mov  long [sp + 4], lr

	mov  a0, long [s18 + 4] ;t1
	mov  a1, long [s18 + 8] ;t2
	mov  a2, long [s18 + 12] ;t3
	mov  a3, long [s18 + 16] ;t4

	mov  t0, long [s18 + 20] ;t5
	mov  long [sp + 8], t0

	jal  OSSectionCreate

	mov  long [s18 + 4], a0 ;t1
	mov  long [s18 + 8], a1 ;t2

	mov  lr, long [sp + 4]
	addi sp, sp, 12
	ret

OSTOSSectionMapView:
.global OSTOSSectionMapView
	subi sp, sp, 20
	mov  long [sp], zero
	mov  long [sp + 4], lr

	mov  a0, long [s18 + 4] ;t1
	mov  a1, long [s18 + 8] ;t2
	mov  a2, long [s18 + 12] ;t3
	mov  a3, long [s18 + 16] ;t4

	mov  t0, long [s18 + 20] ;t5
	mov  long [sp + 8], t0

	mov  t0, long [s18 + 24] ;a0
	mov  long [sp + 12], t0

	mov  t0, long [s18 + 28] ;a1
	mov  long [sp + 16], t0

	jal  OSSectionMapView

	mov  long [s18 + 4], a0 ;t1
	mov  long [s18 + 8], a1 ;t2

	mov  lr, long [sp + 4]
	addi sp, sp, 20
	ret

OSTOSUnmapView:
.global OSTOSUnmapView
	subi sp, sp, 8
	mov  long [sp], zero
	mov  long [sp + 4], lr

	mov  a0, long [s18 + 4] ;t1
	mov  a1, long [s18 + 8] ;t2
	mov  a2, long [s18 + 12] ;t3

	jal  OSUnmapView

	mov  long [s18 + 4], a0 ;t1

	mov  lr, long [sp + 4]
	addi sp, sp, 8
	ret

OSTOSRemapView:
.global OSTOSRemapView
	subi sp, sp, 8
	mov  long [sp], zero
	mov  long [sp + 4], lr

	mov  a0, long [s18 + 4] ;t1
	mov  a1, long [s18 + 8] ;t2
	mov  a2, long [s18 + 12] ;t3
	mov  a3, long [s18 + 16] ;t4

	jal  OSRemapView

	mov  long [s18 + 4], a0 ;t1

	mov  lr, long [sp + 4]
	addi sp, sp, 8
	ret

OSTOSSetSwappiness:
.global OSTOSSetSwappiness
	subi sp, sp, 8
	mov  long [sp], zero
	mov  long [sp + 4], lr

	mov  a0, long [s18 + 4] ;t1

	jal  OSSetSwappiness

	mov  long [s18 + 4], a0 ;t1

	mov  lr, long [sp + 4]
	addi sp, sp, 8
	ret

OSTOSThreadSleep:
.global OSTOSThreadSleep
	subi sp, sp, 8
	mov  long [sp], zero
	mov  long [sp + 4], lr

	mov  a0, long [s18 + 4] ;t1

	jal  OSThreadSleep

	mov  long [s18 + 4], a0 ;t1

	mov  lr, long [sp + 4]
	addi sp, sp, 8
	ret

