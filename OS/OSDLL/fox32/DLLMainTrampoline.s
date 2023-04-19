.extern OSExit
.extern OSThreadExit
.extern DLLMainHL

.section text

; copy arguments table from OSPEB to stack and jump to entrypoint
; does not return

DLLMain:
.global DLLMain
	call DLLMainHL
	nop

;a2 - program entry
;a1 - argv
;a0 - argc
DLLMainTrampoline:
.global DLLMainTrampoline
	mov  t0, sp
	mov  t1, a0

	mov  t3, a0
	sla  t3, 2
	sub  sp, t3
	mov  t3, sp

.loop:
	cmp  t1, 0
	ifz  jmp .done

	mov  t2, [a1]
	mov  [t3], t2

	add  a1, 4
	add  t3, 4
	sub  t1, 1
	rjmp .loop

.done:
	call a2

	jmp  OSExit

DLLThreadExit:
.global DLLThreadExit
	;return value is already in a0
	jmp  OSThreadExit
	nop
	nop

.extern DLLSignalDispatchHL
.extern DLLAPCDispatchHL

DLLSignalDispatch:
.global DLLSignalDispatch
	push 0

	call DLLSignalDispatchHL

DLLAPCDispatch:
.global DLLAPCDispatch
	push 0

	call DLLAPCDispatchHL

.section data

nonsense:
	.dl 0

.section bss

nonsense2:
	.dl 0