; AUTOMATICALLY GENERATED -- DO NOT EDIT

.section text

.extern OSConsolePutCharacter

OSCallCount:
.global OSCallCount
	.dl 1

OSCallTable:
.global OSCallTable
	.dl 0                                                ;0
	.dl OSTOSConsolePutCharacter                         ;1


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

