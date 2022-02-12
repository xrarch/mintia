;this file defines block 4 of a MINTIA partition as specified by our boot
;descriptor to be the start of the boot program.
;is very dumb and only understands how to load /mintia/OSLoader.a3x from an
;AisixFS volume.
;=========== BOOT PROGRAM ============

.section text
.org 0x40000 ;boot program is loaded at 0x40000 by a3x
.ds "ANTE"   ;magic number so a3x knows this is a valid bootloader

             ;entry pointer so a3x knows where to jump
.dl AisixFSBoot

API:         ;variable we'll store the API table pointer in
	.dl  0

HiMsg:
	.ds "hello\n\0"

.align 4

;arguments: api devnode args
;registers:  a2      a1   a0
AisixFSBoot:
	subi sp, sp, 8
	mov  long [sp], lr     ;save link register on stack so we can return later
	mov  long [sp + 4], s0 ;save s0 so we can use it w/o murdering caller

	la   t0, API       ;get pointer to API variable
	mov  long [t0], a2 ;save API table pointer for use by a3xPuts

	la   a0, HiMsg     ;get pointer to hello message
	jal  a3xPuts       ;print message

	li   a0, 0         ;return code of zero

	mov  s0, long [sp + 4] ;retrieve s0
	mov  lr, long [sp]     ;get link register from stack
	addi sp, sp, 8
	ret                ;return to ROM

;put string
;r0 - string pointer
a3xPuts:
	li  t0, 12
	j a3xCall

;t0 - call offset
a3xCall:
	subi sp, sp, 4
	mov  long [sp], lr ;save link register on stack so we can return later

	la   t1, API       ;get pointer to API variable
	mov  t1, long [t1] ;get API table

	                   ;load a3xPuts firmware call pointer
	mov  t1, long [t1 + t0]
	jalr lr, t1, 0     ;call a3xPuts thru t0

	mov  lr, long [sp] ;get link register from stack
	addi sp, sp, 4
	ret                ;return to caller

.align 512            ;fill rest of disk block with zeroes