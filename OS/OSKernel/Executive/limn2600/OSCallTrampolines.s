; AUTOMATICALLY GENERATED -- DO NOT EDIT

.section text

.extern OSConsolePutCharacter
.extern OSSystemAbort
.extern OSObOpen
.extern OSObQuery
.extern OSClose
.extern OSFileQuery
.extern OSSectionCreate
.extern OSSectionMapView
.extern OSUnmapView

OSCallCount:
.global OSCallCount
	.dl 9

OSCallTable:
.global OSCallTable
	.dl 0                                                ;0
	.dl OSTOSConsolePutCharacter                         ;1
	.dl OSTOSSystemAbort                                 ;2
	.dl OSTOSObOpen                                      ;3
	.dl OSTOSObQuery                                     ;4
	.dl OSTOSClose                                       ;5
	.dl OSTOSFileQuery                                   ;6
	.dl OSTOSSectionCreate                               ;7
	.dl OSTOSSectionMapView                              ;8
	.dl OSTOSUnmapView                                   ;9


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
