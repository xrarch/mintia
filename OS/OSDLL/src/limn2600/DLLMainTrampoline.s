.extern OSExit
.extern OSThreadExit

.section text

; copy arguments table from OSPEB to stack and jump to entrypoint
; does not return

;a2 - program entry
;a1 - argv
;a0 - argc
DLLMainTrampoline:
.global DLLMainTrampoline
	mov  t0, sp
	mov  t1, a0
	mov  t3, zero

	sub  sp, sp, a0 LSH 2

.loop:
	beq  t1, .done

	mov  t2, long [a1]
	mov  long [sp + t3], t2

	addi a1, a1, 4
	addi t3, t3, 4
	subi t1, t1, 1
	b    .loop

.done:
	subi sp, sp, 4
	mov  long [sp], zero

	jalr lr, a2, 0

	j    OSExit

DLLThreadExit:
.global DLLThreadExit
	;return value is already in a0
	j    OSThreadExit
	nop
	nop

.extern DLLSignalDispatchHL

DLLSignalDispatch:
.global DLLSignalDispatch
	subi sp, sp, 4
	mov  long [sp], zero

	jal DLLSignalDispatchHL
	nop
	nop

.section data

nonsense:
	.dl 0

.section bss

nonsense2:
	.dl 0