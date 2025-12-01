.section text

.extern Main

.dl 0x45544E41

_start:
	mov fp, 0
	jmp Main