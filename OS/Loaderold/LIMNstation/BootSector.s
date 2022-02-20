.section text

.ds ANTE

;OS label
.ds "MINTIA\0\0\0\0\0\0\0\0\0\0"

;boot program offset in blocks
.dl 4
;boot program length in blocks
.dl 60

;reserved
.dl 0

.align 512

;boot picker icon bitmap
.static mint.bmp