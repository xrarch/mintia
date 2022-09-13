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
	ret