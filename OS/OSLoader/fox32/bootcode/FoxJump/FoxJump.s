// this file defines block 0 of a MINTIA disk on fox32.
// 
// it just loads the boot block of the partition and jumps there.
// =========== BOOT PROGRAM ============

.section text

start:
	jmp  PastThePartitionTable

here:
.bytes (164 - here), 0

// Note that fox32rom passes registers like this:
//   r0/t0: boot disk ID
//   r1/t1: total RAM size
//   r2/t2: usable size in r2

PastThePartitionTable:
	mov r3, 0x80002000       // command to set the location of the buffer
	or  r3, r0               // merge in the boot disk ID
	mov r4, 0x80003000       // command to read a sector from a disk
	or  r4, r0               // merge in the boot disk ID
	out r3, 0xA00            // set the memory buffer location
	out r4, 7                // read the sector into memory

	jmp 0xA00

here2:
.bytes (508 - here2), 0

// fox32 boot block identifier

.dl 0x523C334C