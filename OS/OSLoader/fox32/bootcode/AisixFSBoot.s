// this file defines block 4 of a MINTIA partition.
// 
// it is very dumb and only understands how to load /OSLoader.bin from an
// AisixFS volume. assumes OSLoader.bin is inode number 2.
// =========== BOOT PROGRAM ============

.section text

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

// Note that fox32rom passes registers like this:
//   r0/t0: boot disk ID
//   r1/t1: total RAM size
//   r2/t2: usable size in r2

AisixFSBoot:

	mov [BootDiskId], r0
	mov [TotalRamSize], r1
	mov [UsableRamSize], r2

// get the address of our temporary disk block buffer, which should be right
// after the end of this program in memory.

	mov  s1, DiskBlockBuffer

// load the superblock

	movz.8 a0, 0
	mov  a1, s1
	call ReadBlock

// save the FAT start block number

	mov  s5, [s1 + Superblock_FATStart]

// load the first block of the inode table

	mov  a0, [s1 + Superblock_IStart]
	mov  a1, s1
	call ReadBlock

// check the type number of inode 2 (should be nonzero)

	mov  t0, [s1 + INode_Type]
	ifz jmp .notfound

// get the first block number in the FAT chain

	mov  s2, [s1 + INode_StartBlock]

// iterate the FAT chain until we see a 0xFFFFFFFF (-1) and load loader.bin
// starting at 0x2000.

	mov  s3, -1
	mov  s6, -1

	movz.16 s4, 0x2000

.loadloop:

// load this block of the file
	mov  a0, s2
	mov  a1, s4
	call ReadBlock

// we have to get the next block number in the chain; if the FAT block we need
// is already loaded, then skip over that.

	mov  a0, s2
	srl  a0, 7
	mov  t0, s6
	cmp  t0, a0
	ifz jmp .skipfat

// not already loaded, load that FAT block.

	mov  s6, a0
	add  a0, s5
	mov  a1, s1
	call ReadBlock

.skipfat:
	mov  t0, s2
	sla  t0, 2
	and  t0, 511

	mov  s2, s1
	add  s2, t0
	mov  s2, [s2]

	add  s4, 0x200

	cmp  s3, s2
	ifnz jmp .loadloop

// check for the a4x program signature

	cmp  [0x2000], 0x676F646E
	ifnz jmp .invalid

// jump to the entrypoint

	mov  a0, [BootDiskId]
	mov  a1, [TotalRamSize]
	mov  a2, [UsableRamSize]
	call 0x2004

// it returned, we're done

	rjmp .errout

.invalid:
	mov  r0, 0xABABABAB
	rjmp .invalid

.notfound:
	mov  r0, 0xCDCDCDCD
	rjmp .notfound

.errout:
	mov  r0, 0xDFDFDFDF
	rjmp .errout

// a0 - blockno
// a1 - buffer
ReadBlock:
	add a0, 4
	mov t0, 0x80002000
	or  t0, [BootDiskId]
	mov t1, 0x80003000
	or  t1, [BootDiskId]
	out t0, a1
	out t1, a0
	ret

.align 512            // fill rest of disk block with zeroes

.section bss

DiskBlockBuffer:
	.bytes 512, 0

BootDiskId:
	.dl 0

TotalRamSize:
	.dl 0

UsableRamSize:
	.dl 0