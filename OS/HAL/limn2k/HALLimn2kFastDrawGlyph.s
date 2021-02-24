.section text

;a0 - glyph addr
;a1 - fb modulo
;a2 - start addr
;a3 - height
HALCPUFastDrawGlyph:
.global HALCPUFastDrawGlyph
	li t4, 0x7FFF

.yloop:
	sub a3, a3, 1

	li t1, 8

	mov t2, byte [a0]

.xloop:
	sub t1, t1, 1

	rsh t3, t2, t1
	and t3, t3, 1
	beq t3, zero, .nopix

	mov int [a2], t4

.nopix:
	add a2, a2, 2
	bne t1, zero, .xloop

	add a0, a0, 1
	add a2, a2, a1
	bne a3, zero, .yloop

	ret