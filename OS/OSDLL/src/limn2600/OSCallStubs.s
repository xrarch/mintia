; AUTOMATICALLY GENERATED -- DO NOT EDIT

.section text

OSConsolePutCharacter:
.global OSConsolePutCharacter
	mov  t1, a0

	li   t0, 1
	sys  0

	mov  a0, t1

	ret

