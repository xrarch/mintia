.section text

.ds "samy"

// OS label
.ds "MINTIA"
.bytes 10, 0

// boot program offset in blocks
.dl 3

// boot program length in blocks
.dl 1

// reserved
.dl 0

.align 512

// boot picker icon bitmap
.incbin "mint.bmp"