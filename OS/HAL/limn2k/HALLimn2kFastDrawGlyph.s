;a0 - glyph addr
;a1 - fb modulo
;a2 - start addr
;a3 - height
HALCPUFastDrawGlyph:
.global HALCPUFastDrawGlyph
	li t4, 0x7FFF

.yloop:
	subi a3, a3, 1

	li t1, 8

	l.b t2, a0, zero

.xloop:
	subi t1, t1, 1

	rsh t3, t2, t1
	andi t3, t3, 1
	beq t3, zero, .nopix

	s.i a2, zero, t4

.nopix:
	addi a2, a2, 2
	bne t1, zero, .xloop

	addi a0, a0, 1
	add a2, a2, a1
	bne a3, zero, .yloop

	ret