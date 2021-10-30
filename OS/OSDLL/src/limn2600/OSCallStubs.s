; AUTOMATICALLY GENERATED -- DO NOT EDIT

.section text

OSConsolePutCharacter:
.global OSConsolePutCharacter
	mov  t1, a0

	li   t0, 1
	sys  0

	mov  a0, t1

	ret

OSSystemAbort:
.global OSSystemAbort
	mov  t1, a0
	mov  t2, a1
	mov  t3, a2

	li   t0, 2
	sys  0

	mov  a0, t1

	ret

OSObOpen:
.global OSObOpen
	mov  t1, a0
	mov  t2, a1
	mov  t3, a2
	mov  t4, a3

	li   t0, 3
	sys  0

	mov  a1, t2
	mov  a0, t1

	ret

OSObQuery:
.global OSObQuery
	mov  t1, a0
	mov  t2, a1

	li   t0, 4
	sys  0

	mov  a0, t1

	ret

OSClose:
.global OSClose
	mov  t1, a0

	li   t0, 5
	sys  0

	mov  a0, t1

	ret

OSFileQuery:
.global OSFileQuery
	mov  t1, a0
	mov  t2, a1

	li   t0, 6
	sys  0

	mov  a0, t1

	ret

