.section text

;a0 - glyph addr
;a1 - fb modulo
;a2 - start addr
;a3 - height
;sp+4  - background
;sp+8  - width
;sp+12 - foreground
HALCPUFastDrawGlyphBackwards: ;lowest bit is leftmost
.global HALCPUFastDrawGlyphBackwards
	mov  t5, long [sp + 4]

.yloop:
	subi a3, a3, 1

	mov  t1, long [sp + 8]

	mov  t2, byte [a0]

.xloop:
	subi t1, t1, 1

	mov  t4, t5

	rshi t2, t2, 1
	andi t3, t2, 1
	beq  t3, .nopix

	mov  t4, long [sp + 12]

.nopix:
	mov  int [a2], t4

	addi a2, a2, 2
	bne  t1, .xloop

	addi a0, a0, 1
	add  a2, a2, a1
	bne  a3, .yloop

	ret

;a0 - glyph addr
;a1 - fb modulo
;a2 - start addr
;a3 - height
;sp+4  - background
;sp+8  - width
;sp+12 - foreground
HALCPUFastDrawGlyph: ;highest bit is leftmost
.global HALCPUFastDrawGlyph
	mov  t5, long [sp + 4]

.yloop:
	subi a3, a3, 1

	mov  t1, long [sp + 8]

	mov  t2, byte [a0]

.xloop:
	subi t1, t1, 1

	mov  t4, t5

	rsh  t3, t2, t1
	andi t3, t3, 1
	beq  t3, .nopix

	mov  t4, long [sp + 12]

.nopix:
	mov  int [a2], t4

	addi a2, a2, 2
	bne  t1, .xloop

	addi a0, a0, 1
	add  a2, a2, a1
	bne  a3, .yloop

	ret