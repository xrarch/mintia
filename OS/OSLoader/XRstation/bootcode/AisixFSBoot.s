;this file defines block 4 of a MINTIA partition as specified by our boot
;descriptor to be the start of the boot program.
;
;it is very dumb and only understands how to load /OSLoader.a3x from an
;AisixFS volume. assumes OSLoader.a3x is inode number 2.
;=========== BOOT PROGRAM ============

.section text
.ds "ANTE"   ;magic number so a3x knows this is a valid bootloader

             ;entry pointer so a3x knows where to jump
.dl AisixFSBoot

VarArea:
	.dl 0 ;Args
	.dl 0 ;DeviceNode
	.dl 0 ;BlockBuffer
	.dl 0 ;FATStart

.struct Vars
	4 Args
	4 DeviceNode
	4 BlockBuffer
	4 FATStart
.end-struct

.struct Superblock
	4 Version
	4 Magic
	4 Dirty
	4 ReservedBlocks
	4 FATStart
	4 FATSize
	4 IStart
	4 ICount
	4 DataStart
	4 DataSize
	4 VolSize
.end-struct

.struct DirEnt
	4 INum
	60 name
.end-struct

.struct INode
	64 bye

	4 type
	4 permissions
	4 uid
	4 iparent
	4 timestamp
	4 startblock
	4 reserved2
	4 bytesize
.end-struct

.define _a3xCIC_Putc 0
.define _a3xCIC_Getc 4
.define _a3xCIC_Gets 8
.define _a3xCIC_Puts 12
.define _a3xCIC_DevTree 16
.define _a3xCIC_Malloc 20
.define _a3xCIC_Calloc 24
.define _a3xCIC_Free 28
.define _a3xCIC_DevTreeWalk 32
.define _a3xCIC_DeviceParent 36
.define _a3xCIC_DeviceSelectNode 40
.define _a3xCIC_DeviceSelect 44
.define _a3xCIC_DeviceDGetProperty 48
.define _a3xCIC_DeviceDGetMethod 52
.define _a3xCIC_DeviceDCallMethod 56
.define _a3xCIC_DeviceExit 60
.define _a3xCIC_DeviceDSetProperty 64
.define _a3xCIC_DeviceDCallMethodPtr 68
.define _a3xCIC_DevIteratorInit 72
.define _a3xCIC_DevIterate 76
.define _a3xCIC_DeviceDGetName 80
.define _a3xCIC_ConsoleUserOut 84
.define _a3xCIC_DGetCurrent 88

;arguments: api devnode args
;registers:  a2      a1   a0
AisixFSBoot:
	subi sp, sp, 36
	mov  long [sp], lr
	mov  long [sp + 4], s0
	mov  long [sp + 8], s1
	mov  long [sp + 12], s2
	mov  long [sp + 16], s3
	mov  long [sp + 20], s4
	mov  long [sp + 24], s5
	mov  long [sp + 28], s6
	mov  long [sp + 32], s7

;save the stuff a3x passed in

	la   s0, VarArea
	mov  long [s0 + Vars_Args], a0
	mov  long [s0 + Vars_DeviceNode], a1
	mov  s7, a2

;select the boot device node

	mov  a0, a1
	mov  t0, long [s7 + _a3xCIC_DeviceSelectNode]
	jalr lr, t0, 0

;get the address of our temporary disk block buffer, which should be right
;after the end of this program in memory.

	la   s1, DiskBlockBuffer
	mov  long [s0 + Vars_BlockBuffer], s1

;load the superblock

	li   a0, 0
	mov  a1, s1
	jal  a3xReadBlock

;save the FAT start block number

	mov  s5, long [s1 + Superblock_FATStart]

;load the first block of the inode table

	mov  a0, long [s1 + Superblock_IStart]
	mov  a1, s1
	jal  a3xReadBlock

;check the type number of inode 2 (should be nonzero)

	mov  t0, long [s1 + INode_type]
	beq  t0, .notfound

;get the first block number in the FAT chain

	mov  s2, long [s1 + INode_startblock]

;iterate the FAT chain until we see a 0xFFFFFFFF (-1) and load OSLoader.a3x
;starting at 0x20400.

	subi s3, zero, 1
	subi s6, zero, 1

	la   s4, 0x20400

.loadloop:

;load this block of the file
	mov  a0, s2
	mov  a1, s4
	jal  a3xReadBlock

;we have to get the next block number in the chain; if the FAT block we need
;is already loaded, then skip over that.

	rshi a0, s2, 7
	sub  t0, s6, a0
	beq  t0, .skipfat

;not already loaded, load that FAT block.

	mov  s6, a0
	add  a0, a0, s5
	mov  a1, s1
	jal  a3xReadBlock

.skipfat:
	lshi t0, s2, 2
	andi t0, t0, 511
	mov  s2, long [s1 + t0]

	addi s4, s4, 0x200
	sub  t0, s3, s2
	bne  t0, .loadloop

;reload the a3x arguments so we can chain-load OSLoader.a3x which just uses
;the a3x boot protocol.

	mov  a0, long [s0 + Vars_Args]
	mov  a1, long [s0 + Vars_DeviceNode]
	mov  a2, s7

;check for the a3x program signature

	la   t0, 0x20400

	la   t1, 0x45544E41
	mov  t2, long [t0]
	sub  t1, t1, t2
	bne  t1, .invalid

;invalidate icache

	wmb
	li   t5, 3
	mtcr icachectrl, t5

;jump to the entrypoint

	mov  t0, long [t0 + 4]
	jalr lr, t0, 0

;it returned, we're done

	b    .out

.invalid:
	la   a0, loadername
	mov  t0, long [s7 + _a3xCIC_Puts]
	jalr lr, t0, 0

	la   a0, invalidmessage
	mov  t0, long [s7 + _a3xCIC_Puts]
	jalr lr, t0, 0

	b    .errout

.notfound:
	la   a0, loadername
	mov  t0, long [s7 + _a3xCIC_Puts]
	jalr lr, t0, 0

	la   a0, notfoundmessage
	mov  t0, long [s7 + _a3xCIC_Puts]
	jalr lr, t0, 0

.errout:
	subi a0, zero, 1

.out:

	mov  lr, long [sp], lr
	mov  s0, long [sp + 4]
	mov  s1, long [sp + 8]
	mov  s2, long [sp + 12]
	mov  s3, long [sp + 16]
	mov  s4, long [sp + 20]
	mov  s5, long [sp + 24]
	mov  s6, long [sp + 28]
	mov  s7, long [sp + 32]
	addi sp, sp, 36
	ret

;a0 - blockno
;a1 - buffer
a3xReadBlock:
	subi sp, sp, 12
	mov  long [sp], lr
	mov  long [sp + 8], a1
	mov  long [sp + 4], a0

	la   a1, readblockname
	li   a0, 2

	mov  t0, long [s7 + _a3xCIC_DeviceDCallMethod]
	jalr lr, t0, 0

	mov  lr, long [sp]
	addi sp, sp, 12
	ret

readblockname:
	.ds "readBlock\0"

loadername:
	.ds "OSLoader.bin: \0"

invalidmessage:
	.ds "invalid program\n\0"

notfoundmessage:
	.ds "not found\n\0"

.align 512            ;fill rest of disk block with zeroes

.section bss

DiskBlockBuffer:
	.bytes 512 0