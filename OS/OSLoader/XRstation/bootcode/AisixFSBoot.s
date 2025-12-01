// This file defines block 4 of a MINTIA partition as specified by our boot
// descriptor to be the start of the boot program.
//
// It is very dumb and only understands how to load loader.bin from an
// AisixFS volume. It assumes that loader.bin is inode number 2.
// =========== BOOT PROGRAM ============

.section text
.ds "ndog" // Magic number so a4x knows this is a valid bootloader.

#DEFINE Vars_Args 0
#DEFINE Vars_BootPartition 4
#DEFINE Vars_DeviceDatabase 8

#DEFINE Superblock_Version 0
#DEFINE Superblock_Magic 4
#DEFINE Superblock_Dirty 8
#DEFINE Superblock_ReservedBlocks 12
#DEFINE Superblock_FATStart 16
#DEFINE Superblock_FATSize 20
#DEFINE Superblock_IStart 24
#DEFINE Superblock_ICount 28
#DEFINE Superblock_DataStart 32
#DEFINE Superblock_DataSize 36
#DEFINE Superblock_VolSize 40

#DEFINE DirEnt_INum 0
#DEFINE DirEnt_Name 4

#DEFINE INode_Type 64
#DEFINE INode_Permissions 68
#DEFINE INode_Uid 72
#DEFINE INode_Iparent 76
#DEFINE INode_Timestamp 80
#DEFINE INode_StartBlock 84
#DEFINE INode_Reserved2 88
#DEFINE INode_ByteSize 92

#DEFINE _a4x_ReadDisk 8
#DEFINE _a4x_PutString 12

// a0 - devicedatabase
// a1 - apitable
// a2 - partition
// a3 - args
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

// save the stuff a4x passed in

	la   s0, VarArea
	mov  long [s0 + Vars_Args], a3
	mov  long [s0 + Vars_BootPartition], a2
	mov  long [s0 + Vars_DeviceDatabase], a0
	mov  s7, a1

// load address of temporary sector buffer which will be 0x3200

	li   s1, 0x3200

// load the superblock

	li   a0, 0
	mov  a1, s1
	jal  a4xReadBlock

// save the FAT start block number

	mov  s5, long [s1 + Superblock_FATStart]

// load the first block of the inode table

	mov  a0, long [s1 + Superblock_IStart]
	mov  a1, s1
	jal  a4xReadBlock

// check the type number of inode 2 (should be nonzero)

	mov  t0, long [s1 + INode_Type]
	beq  t0, .notfound

// get the first block number in the FAT chain

	mov  s2, long [s1 + INode_StartBlock]

// iterate the FAT chain until we see a 0xFFFFFFFF (-1) and load OSLoader.a4x
// starting at 0x3400.

	subi s3, zero, 1
	subi s6, zero, 1

	li   s4, 0x3400

.loadloop:

// load this block of the file
	mov  a0, s2
	mov  a1, s4
	jal  a4xReadBlock

// we have to get the next block number in the chain; if the FAT block we need
// is already loaded, then skip over that.

	rshi a0, s2, 7
	sub  t0, s6, a0
	beq  t0, .skipfat

// not already loaded, load that FAT block.

	mov  s6, a0
	add  a0, a0, s5
	mov  a1, s1
	jal  a4xReadBlock

.skipfat:
	lshi t0, s2, 2
	andi t0, t0, 511
	mov  s2, long [s1 + t0]

	addi s4, s4, 0x200
	sub  t0, s3, s2
	bne  t0, .loadloop

// reload the a4x arguments so we can chain-load OSLoader.a4x which just uses
// the a4x boot protocol.

	mov  a0, long [s0 + Vars_DeviceDatabase]
	mov  a1, s7
	mov  a2, long [s0 + Vars_BootPartition]
	mov  a3, long [s0 + Vars_Args]

// check for the a4x program signature

	li   t0, 0x3400

	la   t1, 0x676F646E
	mov  t2, long [t0]
	sub  t1, t1, t2
	bne  t1, .invalid

// invalidate icache

	wmb
	li   t5, 3
	mtcr icachectrl, t5

// jump to the entrypoint

	jalr lr, t0, 4

// it returned, we're done

	b    .out

.invalid:
	la   a0, loadername
	mov  t0, long [s7 + _a4x_PutString]
	jalr lr, t0, 0

	la   a0, invalidmessage
	mov  t0, long [s7 + _a4x_PutString]
	jalr lr, t0, 0

	b    .errout

.notfound:
	la   a0, loadername
	mov  t0, long [s7 + _a4x_PutString]
	jalr lr, t0, 0

	la   a0, notfoundmessage
	mov  t0, long [s7 + _a4x_PutString]
	jalr lr, t0, 0

.errout:
	subi a3, zero, 1

.out:

	mov  lr, long [sp]
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

VarArea:
	.dl 0 // Args
	.dl 0 // BootPartition
	.dl 0 // DeviceDatabase

// a0 - blockno
// a1 - buffer
a4xReadBlock:
	subi sp, sp, 4
	mov  long [sp], lr

	mov  a2, a0
	mov  a0, long [s0 + Vars_BootPartition]
	li   a3, 1

	mov  t0, long [s7 + _a4x_ReadDisk]
	jalr lr, t0, 0

	mov  lr, long [sp]
	addi sp, sp, 4
	ret

loadername:
	.ds "Couldn't load loader.bin: "
	.db 0

invalidmessage:
	.ds "Invalid program\n"
	.db 0

notfoundmessage:
	.ds "Not found\n"
	.db 0

.align 512            // fill rest of disk block with zeroes