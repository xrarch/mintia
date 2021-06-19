.section text

;a0 - glyph addr
;a1 - fb modulo
;a2 - start addr
;a3 - height
;sp+8 - background
HALCPUFastDrawGlyph:
.global HALCPUFastDrawGlyph
	mov  t5, long [sp + 8]

.yloop:
	subi a3, a3, 1

	li   t1, 8

	mov  t2, byte [a0]

.xloop:
	subi t1, t1, 1

	mov  t4, t5

	rsh  t3, t2, t1
	andi t3, t3, 1
	beq  t3, zero, .nopix

	li   t4, 0x7FFF

.nopix:
	mov  int [a2], t4

	addi a2, a2, 2
	bne  t1, zero, .xloop

	addi a0, a0, 1
	add  a2, a2, a1
	bne  a3, zero, .yloop

	ret