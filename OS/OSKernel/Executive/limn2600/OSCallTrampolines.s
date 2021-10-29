; AUTOMATICALLY GENERATED -- DO NOT EDIT

.section text

.extern OSPrintString

OSCallCount:
.global OSCallCount
	.dl 1

OSCallTable:
.global OSCallTable
	.dl 0                                                ;0
	.dl OSTOSPrintString                                 ;1


OSTOSPrintString:
.global OSTOSPrintString
	subi sp, sp, 8
	mov  long [sp], zero
	mov  long [sp + 4], lr

	mov  a0, long [s18 + 4] ;t1
	mov  a1, long [s18 + 8] ;t2

	jal  OSPrintString


	mov  lr, long [sp + 4]
	addi sp, sp, 8
	ret

