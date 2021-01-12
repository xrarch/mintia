struct KeMemBlock
	4 Magic
	4 Next
	4 Prev
	4 BucketIndex
	4 Tag
endstruct

const KEMEMBLOCKMAGIC 0xC4FED33D

const KEMEMBLOCKFREE 'FREE'

struct PFDBE
	4 R1
	4 PFN
	4 R3
	4 R4
	4 R5
	4 R6
	4 R7
	4 R8
endstruct

struct PFDBEFree
	4 Next
	4 PFN
	4 R2
	4 R3
	4 R4
	4 R5
	4 R6
	4 R7
endstruct

externptr KeMemPageFrameDB

externptr KeMemPageFreeListHead

externptr KeMemBuckets

externptr KeMemPageFreeCount

externptr KeMemHeapSize

externptr KeMemHeapBytesFree

externptr KeMemHeap

const BUCKETSPO2START 5 // start at 2^5=32 bytes
const BUCKETS 23 // 2^(23+5=28)=256MB heap max