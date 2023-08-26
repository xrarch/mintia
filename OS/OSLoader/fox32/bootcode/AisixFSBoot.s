;this file defines block 4 of a MINTIA partition.
;
;it is very dumb and only understands how to load /OSLoader.bin from an
;AisixFS volume. assumes OSLoader.bin is inode number 2.
;=========== BOOT PROGRAM ============

.section text

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

AisixFSBoot:

;get the address of our temporary disk block buffer, which should be right
;after the end of this program in memory.

	mov  s1, DiskBlockBuffer

;load the superblock

	movz.8 a0, 0
	mov  a1, s1
	call ReadBlock

;save the FAT start block number

	mov  s5, [s1 + Superblock_FATStart]

;load the first block of the inode table

	mov  a0, [s1 + Superblock_IStart]
	mov  a1, s1
	call ReadBlock

;check the type number of inode 2 (should be nonzero)

	mov  t0, [s1 + INode_type]
	ifz jmp .notfound

;get the first block number in the FAT chain

	mov  s2, [s1 + INode_startblock]

;iterate the FAT chain until we see a 0xFFFFFFFF (-1) and load OSLoader.a3x
;starting at 0x1000.

	mov  s3, -1
	mov  s6, -1

	movz.16 s4, 0x1000

.loadloop:

;load this block of the file
	mov  a0, s2
	mov  a1, s4
	call ReadBlock

;we have to get the next block number in the chain; if the FAT block we need
;is already loaded, then skip over that.

	mov  a0, s2
	srl  a0, 7
	mov  t0, s6
	cmp  t0, a0
	ifz jmp .skipfat

;not already loaded, load that FAT block.

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

;check for the a3x program signature

	cmp  [0x1000], 0x45544E41
	ifnz jmp .invalid

;jump to the entrypoint

	call 0x1004

;it returned, we're done

	rjmp .errout

.invalid:
	.dl 0xFE
	rjmp .invalid

.notfound:
	.dl 0xFD
	rjmp .notfound

.errout:
	.dl 0xFC
	rjmp .errout

;a0 - blockno
;a1 - buffer
ReadBlock:
	add a0, 4
	mov t0, 0x80002000
	mov t1, 0x80003000 ; hardcoded as disk 0
	out t0, a1
	out t1, a0
	ret

.align 512            ;fill rest of disk block with zeroes

.section bss

DiskBlockBuffer:
	.bytes 512 0